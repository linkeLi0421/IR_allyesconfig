; ModuleID = '/llk/IR_all_yes/drivers/clk/clk-stm32mp1.c_pt.bc'
source_filename = "../drivers/clk/clk-stm32mp1.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.stm32_rcc_match_data = type { ptr, i32, i32, i32, ptr }
%struct.clock_config = type { i32, ptr, ptr, ptr, i32, i32, ptr, ptr }
%struct.gate_cfg = type { i32, i8, i8 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stm32_gate_cfg = type { ptr, ptr, ptr }
%struct.div_cfg = type { i32, i8, i8, i8, ptr }
%struct.stm32_div_cfg = type { ptr, ptr }
%struct.stm32_composite_cfg = type { ptr, ptr, ptr }
%struct.fixed_factor_cfg = type { i32, i32 }
%struct.stm32_pll_cfg = type { i32, i32 }
%struct.mux_cfg = type { i32, i8, i8, i8, ptr }
%struct.clk_div_table = type { i32, i32 }
%struct.stm32_mux_cfg = type { ptr, ptr, ptr }
%struct.stm32_cktim_cfg = type { i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.stm32_mgate = type { i8, i32 }
%struct.stm32_mmux = type { i8, [2 x ptr] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.stm32_reset_data = type { %struct.spinlock, %struct.reset_controller_dev, ptr, i32 }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_gate = type { %struct.clk_hw, ptr, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.stm32_clk_mgate = type { %struct.clk_gate, ptr, i32 }
%struct.clk_mux = type { %struct.clk_hw, ptr, ptr, i32, i8, i8, ptr }
%struct.stm32_clk_mmux = type { %struct.clk_mux, ptr }
%struct.clk_divider = type { %struct.clk_hw, ptr, i8, i8, i8, ptr, ptr }
%struct.stm32_pll_obj = type { ptr, ptr, %struct.clk_hw, %struct.clk_mux }
%struct.timer_cker = type { ptr, ptr, ptr, %struct.clk_hw }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }

@__initcall__kmod_clk_stm32mp1__183_2429_stm32mp1_clocks_init1 = internal global ptr @stm32mp1_clocks_init, section ".initcall1.init", align 4
@stm32mp1_rcc_clocks_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @stm32mp1_rcc_clocks_probe, ptr @stm32mp1_rcc_clocks_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32mp1_match_data, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"stm32mp1_rcc\00", [19 x i8] zeroinitializer }, align 32
@stm32mp1_match_data = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32mp1-rcc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32mp1_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32mp1-rcc-secure\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32mp1_data_secure }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hsi\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hse\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"csi\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lsi\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lse\00", [28 x i8] zeroinitializer }, align 32
@stm32mp1_rcc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 2346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%pOFn: unable to map resource\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stm32mp1_rcc_init\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/clk/clk-stm32mp1.c\00", [37 x i8] zeroinitializer }, align 32
@stm32mp1_rcc_init._entry_ptr = internal global ptr @stm32mp1_rcc_init._entry, section ".printk_index", align 4
@stm32_rcc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.8, i32 2318, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"match data not found\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stm32_rcc_init\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stm32_rcc_init._entry_ptr = internal global ptr @stm32_rcc_init._entry, section ".printk_index", align 4
@stm32_rcc_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.10, ptr @.str.8, i32 2325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013stm32mp1 reset failed to initialize\0A\00", [57 x i8] zeroinitializer }, align 32
@stm32_rcc_init._entry_ptr.15 = internal global ptr @stm32_rcc_init._entry.13, section ".printk_index", align 4
@stm32_rcc_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.10, ptr @.str.8, i32 2332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013stm32mp1 clock failed to initialize\0A\00", [57 x i8] zeroinitializer }, align 32
@stm32_rcc_init._entry_ptr.18 = internal global ptr @stm32_rcc_init._entry.16, section ".printk_index", align 4
@stm32_rcc_reset_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&reset_data->lock\00", [46 x i8] zeroinitializer }, align 32
@stm32_reset_ops = internal constant { %struct.reset_control_ops, [16 x i8] } { %struct.reset_control_ops { ptr null, ptr @stm32_reset_assert, ptr @stm32_reset_deassert, ptr @stm32_reset_status }, [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rlock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.24, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@stm32_rcc_clock_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.8, i32 2301, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Can't register clk %s: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"stm32_rcc_clock_init\00", [43 x i8] zeroinitializer }, align 32
@stm32_rcc_clock_init._entry_ptr = internal global ptr @stm32_rcc_clock_init._entry, section ".printk_index", align 4
@stm32_register_hw_clk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.8, i32 2154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013Unable to register %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stm32_register_hw_clk\00", [42 x i8] zeroinitializer }, align 32
@stm32_register_hw_clk._entry_ptr = internal global ptr @stm32_register_hw_clk._entry, section ".printk_index", align 4
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rlock\00", [26 x i8] zeroinitializer }, align 32
@stm32mp1_data = internal global { %struct.stm32_rcc_match_data, [44 x i8] } { %struct.stm32_rcc_match_data { ptr @stm32mp1_clock_cfg, i32 210, i32 232, i32 4, ptr null }, [44 x i8] zeroinitializer }, align 32
@stm32mp1_data_secure = internal global { %struct.stm32_rcc_match_data, [44 x i8] } { %struct.stm32_rcc_match_data { ptr @stm32mp1_clock_cfg, i32 210, i32 232, i32 4, ptr @stm32_check_security }, [44 x i8] zeroinitializer }, align 32
@stm32mp1_clock_cfg = internal constant { [210 x %struct.clock_config], [1664 x i8] } { [210 x %struct.clock_config] [%struct.clock_config { i32 0, ptr @.str.25, ptr @.str.26, ptr null, i32 0, i32 0, ptr @.compoundliteral.27, ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 1, ptr @.str.28, ptr @.str.29, ptr null, i32 0, i32 2048, ptr @.compoundliteral.31, ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 4, ptr @.str.32, ptr null, ptr @.compoundliteral.34, i32 1, i32 0, ptr @.compoundliteral.39, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 2, ptr @.str.40, ptr @.str.41, ptr null, i32 0, i32 0, ptr @.compoundliteral.42, ptr @_clk_hw_register_gate }, %struct.clock_config { i32 3, ptr @.str.43, ptr @.str.44, ptr null, i32 0, i32 0, ptr @.compoundliteral.45, ptr @_clk_hw_register_gate }, %struct.clock_config { i32 5, ptr @.str.46, ptr @.str.25, ptr null, i32 0, i32 0, ptr @.compoundliteral.47, ptr @_clk_hw_register_fixed_factor }, %struct.clock_config { i32 176, ptr @.str.48, ptr null, ptr @ref12_parents, i32 2, i32 8, ptr @.compoundliteral.49, ptr @_clk_register_pll }, %struct.clock_config { i32 177, ptr @.str.50, ptr null, ptr @ref12_parents, i32 2, i32 8, ptr @.compoundliteral.51, ptr @_clk_register_pll }, %struct.clock_config { i32 178, ptr @.str.52, ptr null, ptr @ref3_parents, i32 3, i32 8, ptr @.compoundliteral.53, ptr @_clk_register_pll }, %struct.clock_config { i32 179, ptr @.str.54, ptr null, ptr @ref4_parents, i32 3, i32 8, ptr @.compoundliteral.55, ptr @_clk_register_pll }, %struct.clock_config { i32 180, ptr @.str.56, ptr null, ptr @.compoundliteral.57, i32 1, i32 0, ptr @.compoundliteral.62, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 183, ptr @.str.63, ptr null, ptr @.compoundliteral.64, i32 1, i32 0, ptr @.compoundliteral.69, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 184, ptr @.str.70, ptr null, ptr @.compoundliteral.71, i32 1, i32 0, ptr @.compoundliteral.76, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 185, ptr @.str.77, ptr null, ptr @.compoundliteral.78, i32 1, i32 2048, ptr @.compoundliteral.83, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 186, ptr @.str.84, ptr null, ptr @.compoundliteral.85, i32 1, i32 0, ptr @.compoundliteral.90, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 187, ptr @.str.91, ptr null, ptr @.compoundliteral.92, i32 1, i32 0, ptr @.compoundliteral.97, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 188, ptr @.str.98, ptr null, ptr @.compoundliteral.99, i32 1, i32 0, ptr @.compoundliteral.104, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 189, ptr @.str.105, ptr null, ptr @.compoundliteral.106, i32 1, i32 0, ptr @.compoundliteral.111, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 190, ptr @.str.112, ptr null, ptr @.compoundliteral.113, i32 1, i32 0, ptr @.compoundliteral.118, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 191, ptr @.str.119, ptr null, ptr @.compoundliteral.120, i32 1, i32 0, ptr @.compoundliteral.125, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 193, ptr @.str.126, ptr null, ptr @per_src, i32 3, i32 4096, ptr @.compoundliteral.127, ptr @_clk_hw_register_mux }, %struct.clock_config { i32 194, ptr @.str.128, ptr null, ptr @cpu_src, i32 3, i32 6144, ptr @.compoundliteral.129, ptr @_clk_hw_register_mux }, %struct.clock_config { i32 195, ptr @.str.130, ptr null, ptr @axi_src, i32 3, i32 6144, ptr @.compoundliteral.135, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 196, ptr @.str.136, ptr null, ptr @mcu_src, i32 4, i32 6144, ptr @.compoundliteral.141, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 -1, ptr @.str.142, ptr @.str.136, ptr null, i32 0, i32 8, ptr @.compoundliteral.143, ptr @_clk_hw_register_divider_table }, %struct.clock_config { i32 -1, ptr @.str.144, ptr @.str.136, ptr null, i32 0, i32 8, ptr @.compoundliteral.145, ptr @_clk_hw_register_divider_table }, %struct.clock_config { i32 -1, ptr @.str.146, ptr @.str.136, ptr null, i32 0, i32 8, ptr @.compoundliteral.147, ptr @_clk_hw_register_divider_table }, %struct.clock_config { i32 -1, ptr @.str.148, ptr @.str.130, ptr null, i32 0, i32 8, ptr @.compoundliteral.149, ptr @_clk_hw_register_divider_table }, %struct.clock_config { i32 -1, ptr @.str.150, ptr @.str.130, ptr null, i32 0, i32 8, ptr @.compoundliteral.151, ptr @_clk_hw_register_divider_table }, %struct.clock_config { i32 -1, ptr @.str.152, ptr @.str.142, ptr null, i32 0, i32 0, ptr @.compoundliteral.153, ptr @_clk_register_cktim }, %struct.clock_config { i32 -1, ptr @.str.154, ptr @.str.144, ptr null, i32 0, i32 0, ptr @.compoundliteral.155, ptr @_clk_register_cktim }, %struct.clock_config { i32 197, ptr @.str.156, ptr @.str.152, ptr null, i32 0, i32 4, ptr @.compoundliteral.158, ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 198, ptr @.str.159, ptr @.str.152, ptr null, i32 0, i32 4, ptr @.compoundliteral.161, ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 199, ptr @.str.162, ptr @.str.152, ptr null, i32 0, i32 4, ptr @.compoundliteral.164, ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 200, ptr @.str.165, ptr @.str.152, ptr null, i32 0, i32 4, ptr @.compoundliteral.167, ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 201, ptr @.str.168, ptr @.str.152, ptr null, i32 0, i32 4, ptr @.compoundliteral.170, ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 202, ptr @.str.171, ptr @.str.152, ptr null, i32 0, i32 4, ptr @.compoundliteral.173, ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 203, ptr @.str.174, ptr @.str.152, ptr null, i32 0, i32 4, ptr @.compoundliteral.176, ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 204, ptr @.str.177, ptr @.str.152, ptr null, i32 0, i32 4, ptr @.compoundliteral.179, ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 205, ptr @.str.180, ptr @.str.152, ptr null, i32 0, i32 4, ptr @.compoundliteral.182, ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 206, ptr @.str.183, ptr @.str.154, ptr null, i32 0, i32 4, ptr @.compoundliteral.185, ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 207, ptr @.str.186, ptr @.str.154, ptr null, i32 0, i32 4, ptr @.compoundliteral.188, ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 208, ptr @.str.189, ptr @.str.154, ptr null, i32 0, i32 4, ptr @.compoundliteral.191, ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 209, ptr @.str.192, ptr @.str.154, ptr null, i32 0, i32 4, ptr @.compoundliteral.194, ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 210, ptr @.str.195, ptr @.str.154, ptr null, i32 0, i32 4, ptr @.compoundliteral.197, ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 6, ptr @.str.198, ptr @.str.142, ptr null, i32 0, i32 8, ptr getelementptr (i8, ptr @per_gate_cfg, i64 588), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 7, ptr @.str.199, ptr @.str.142, ptr null, i32 0, i32 8, ptr getelementptr (i8, ptr @per_gate_cfg, i64 600), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 8, ptr @.str.200, ptr @.str.142, ptr null, i32 0, i32 8, ptr getelementptr (i8, ptr @per_gate_cfg, i64 612), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 9, ptr @.str.201, ptr @.str.142, ptr null, i32 0, i32 8, ptr getelementptr (i8, ptr @per_gate_cfg, i64 624), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 10, ptr @.str.202, ptr @.str.142, ptr null, i32 0, i32 8, ptr getelementptr (i8, ptr @per_gate_cfg, i64 636), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 11, ptr @.str.203, ptr @.str.142, ptr null, i32 0, i32 8, ptr getelementptr (i8, ptr @per_gate_cfg, i64 648), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 12, ptr @.str.204, ptr @.str.142, ptr null, i32 0, i32 8, ptr getelementptr (i8, ptr @per_gate_cfg, i64 660), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 13, ptr @.str.205, ptr @.str.142, ptr null, i32 0, i32 8, ptr getelementptr (i8, ptr @per_gate_cfg, i64 672), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 14, ptr @.str.206, ptr @.str.142, ptr null, i32 0, i32 8, ptr getelementptr (i8, ptr @per_gate_cfg, i64 684), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 15, ptr @.str.207, ptr @.str.142, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 300), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 16, ptr @.str.208, ptr @.str.142, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 60), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 17, ptr @.str.209, ptr @.str.142, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 72), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 18, ptr @.str.210, ptr @.str.142, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 204), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 19, ptr @.str.211, ptr @.str.142, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 228), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 20, ptr @.str.212, ptr @.str.142, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 216), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 21, ptr @.str.213, ptr @.str.142, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 240), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 22, ptr @.str.214, ptr @.str.142, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 276), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 23, ptr @.str.215, ptr @.str.142, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 288), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 24, ptr @.str.216, ptr @.str.142, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 132), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 25, ptr @.str.217, ptr @.str.142, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 144), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 26, ptr @.str.218, ptr @.str.142, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 156), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 27, ptr @.str.219, ptr @.str.142, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 180), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 28, ptr @.str.220, ptr @.str.142, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 120), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 29, ptr @.str.221, ptr @.str.142, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 516), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 30, ptr @.str.222, ptr @.str.142, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 504), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 31, ptr @.str.223, ptr @.str.142, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 696), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 32, ptr @.str.224, ptr @.str.144, ptr null, i32 0, i32 8, ptr getelementptr (i8, ptr @per_gate_cfg, i64 708), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 33, ptr @.str.225, ptr @.str.144, ptr null, i32 0, i32 8, ptr getelementptr (i8, ptr @per_gate_cfg, i64 720), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 34, ptr @.str.226, ptr @.str.144, ptr null, i32 0, i32 8, ptr getelementptr (i8, ptr @per_gate_cfg, i64 732), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 35, ptr @.str.227, ptr @.str.144, ptr null, i32 0, i32 8, ptr getelementptr (i8, ptr @per_gate_cfg, i64 744), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 36, ptr @.str.228, ptr @.str.144, ptr null, i32 0, i32 8, ptr getelementptr (i8, ptr @per_gate_cfg, i64 756), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 37, ptr @.str.229, ptr @.str.144, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 48), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 38, ptr @.str.230, ptr @.str.144, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 84), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 39, ptr @.str.231, ptr @.str.144, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 96), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 40, ptr @.str.232, ptr @.str.144, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 264), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 41, ptr @.str.233, ptr @.str.144, ptr null, i32 0, i32 0, ptr @per_gate_cfg, ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 42, ptr @.str.234, ptr @.str.144, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 12), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 43, ptr @.str.235, ptr @.str.144, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 24), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 44, ptr @.str.236, ptr @.str.144, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 564), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 45, ptr @.str.237, ptr @.str.144, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 492), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 46, ptr @.str.238, ptr @.str.146, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 312), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 47, ptr @.str.239, ptr @.str.146, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 324), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 48, ptr @.str.240, ptr @.str.146, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 336), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 49, ptr @.str.241, ptr @.str.146, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 348), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 50, ptr @.str.242, ptr @.str.146, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 36), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 51, ptr @.str.243, ptr @.str.146, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 768), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 52, ptr @.str.244, ptr @.str.146, ptr null, i32 0, i32 13, ptr getelementptr (i8, ptr @per_gate_cfg, i64 780), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 53, ptr @.str.245, ptr @.str.146, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 792), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 54, ptr @.str.246, ptr @.str.146, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 804), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 55, ptr @.str.247, ptr @.str.146, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 816), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 56, ptr @.str.248, ptr @.str.148, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 360), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 57, ptr @.str.249, ptr @.str.148, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 372), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 58, ptr @.str.250, ptr @.str.148, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 828), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 59, ptr @.str.251, ptr @.str.148, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 456), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 60, ptr @.str.252, ptr @.str.148, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 840), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 61, ptr @.str.253, ptr @.str.150, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 108), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 62, ptr @.str.254, ptr @.str.150, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 168), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 63, ptr @.str.255, ptr @.str.150, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 192), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 64, ptr @.str.256, ptr @.str.150, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 252), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 65, ptr @.str.257, ptr @.str.150, ptr null, i32 0, i32 2056, ptr getelementptr (i8, ptr @per_gate_cfg, i64 1188), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 66, ptr @.str.258, ptr @.str.130, ptr null, i32 0, i32 8, ptr getelementptr (i8, ptr @per_gate_cfg, i64 1200), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 113, ptr @.str.259, ptr @.str.130, ptr null, i32 0, i32 8, ptr getelementptr (i8, ptr @per_gate_cfg, i64 1212), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 67, ptr @.str.260, ptr @.str.150, ptr null, i32 0, i32 8, ptr getelementptr (i8, ptr @per_gate_cfg, i64 1224), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 68, ptr @.str.261, ptr @.str.150, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 1236), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 69, ptr @.str.262, ptr @.str.150, ptr null, i32 0, i32 8, ptr getelementptr (i8, ptr @per_gate_cfg, i64 1248), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 70, ptr @.str.263, ptr @.str.150, ptr null, i32 0, i32 8, ptr getelementptr (i8, ptr @per_gate_cfg, i64 552), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 71, ptr @.str.264, ptr @.str.136, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 852), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 72, ptr @.str.265, ptr @.str.136, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 864), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 73, ptr @.str.266, ptr @.str.136, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 876), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 74, ptr @.str.267, ptr @.str.136, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 528), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 75, ptr @.str.268, ptr @.str.136, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 444), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 76, ptr @.str.269, ptr @.str.136, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 432), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 77, ptr @.str.270, ptr @.str.136, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 888), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 78, ptr @.str.271, ptr @.str.136, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 900), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 79, ptr @.str.272, ptr @.str.136, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 912), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 80, ptr @.str.273, ptr @.str.136, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 480), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 81, ptr @.str.274, ptr @.str.136, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 924), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 82, ptr @.str.275, ptr @.str.136, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 936), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 83, ptr @.str.276, ptr @.str.136, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 948), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 84, ptr @.str.277, ptr @.str.136, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 960), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 85, ptr @.str.278, ptr @.str.136, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 972), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 86, ptr @.str.279, ptr @.str.136, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 984), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 87, ptr @.str.280, ptr @.str.136, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 996), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 88, ptr @.str.281, ptr @.str.136, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 1008), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 89, ptr @.str.282, ptr @.str.136, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 1020), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 90, ptr @.str.283, ptr @.str.136, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 1032), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 91, ptr @.str.284, ptr @.str.136, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 1044), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 92, ptr @.str.285, ptr @.str.136, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 1056), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 93, ptr @.str.286, ptr @.str.136, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 1068), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 94, ptr @.str.287, ptr @.str.136, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 1080), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 95, ptr @.str.288, ptr @.str.130, ptr null, i32 0, i32 8, ptr getelementptr (i8, ptr @per_gate_cfg, i64 1260), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 96, ptr @.str.289, ptr @.str.130, ptr null, i32 0, i32 8, ptr getelementptr (i8, ptr @per_gate_cfg, i64 1272), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 97, ptr @.str.290, ptr @.str.130, ptr null, i32 0, i32 8, ptr getelementptr (i8, ptr @per_gate_cfg, i64 1284), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 98, ptr @.str.291, ptr @.str.130, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 468), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 99, ptr @.str.292, ptr @.str.130, ptr null, i32 0, i32 8, ptr getelementptr (i8, ptr @per_gate_cfg, i64 1296), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 100, ptr @.str.293, ptr @.str.130, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 1092), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 101, ptr @.str.294, ptr @.str.130, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 540), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 103, ptr @.str.295, ptr @.str.130, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 1116), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 104, ptr @.str.296, ptr @.str.130, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 1128), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 105, ptr @.str.297, ptr @.str.130, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 1140), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 106, ptr @.str.298, ptr @.str.130, ptr null, i32 0, i32 8, ptr getelementptr (i8, ptr @per_gate_cfg, i64 396), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 107, ptr @.str.299, ptr @.str.130, ptr null, i32 0, i32 8, ptr getelementptr (i8, ptr @per_gate_cfg, i64 384), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 108, ptr @.str.300, ptr @.str.130, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 408), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 109, ptr @.str.301, ptr @.str.130, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 420), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 110, ptr @.str.302, ptr @.str.130, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 1152), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 111, ptr @.str.303, ptr @.str.130, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 1164), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 112, ptr @.str.304, ptr @.str.130, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 1176), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 231, ptr @.str.305, ptr @.str.148, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 1308), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 118, ptr @.str.306, ptr null, ptr @sdmmc12_src, i32 4, i32 4224, ptr @.compoundliteral.307, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 119, ptr @.str.308, ptr null, ptr @sdmmc12_src, i32 4, i32 4224, ptr @.compoundliteral.309, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 120, ptr @.str.310, ptr null, ptr @sdmmc3_src, i32 4, i32 4224, ptr @.compoundliteral.311, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 121, ptr @.str.312, ptr null, ptr @fmc_src, i32 4, i32 4224, ptr @.compoundliteral.313, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 122, ptr @.str.314, ptr null, ptr @qspi_src, i32 4, i32 4224, ptr @.compoundliteral.315, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 124, ptr @.str.316, ptr null, ptr @rng_src, i32 4, i32 4224, ptr @.compoundliteral.317, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 125, ptr @.str.318, ptr null, ptr @rng_src, i32 4, i32 4224, ptr @.compoundliteral.319, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 127, ptr @.str.320, ptr null, ptr @usbphy_src, i32 3, i32 4224, ptr @.compoundliteral.321, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 128, ptr @.str.322, ptr null, ptr @stgen_src, i32 2, i32 6272, ptr @.compoundliteral.323, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 129, ptr @.str.324, ptr null, ptr @spdif_src, i32 3, i32 4224, ptr @.compoundliteral.325, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 130, ptr @.str.326, ptr null, ptr @spi123_src, i32 5, i32 4224, ptr @.compoundliteral.327, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 131, ptr @.str.328, ptr null, ptr @spi123_src, i32 5, i32 4224, ptr @.compoundliteral.329, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 132, ptr @.str.330, ptr null, ptr @spi123_src, i32 5, i32 4224, ptr @.compoundliteral.331, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 133, ptr @.str.332, ptr null, ptr @spi45_src, i32 5, i32 4224, ptr @.compoundliteral.333, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 134, ptr @.str.334, ptr null, ptr @spi45_src, i32 5, i32 4224, ptr @.compoundliteral.335, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 135, ptr @.str.336, ptr null, ptr @spi6_src, i32 6, i32 4224, ptr @.compoundliteral.337, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 136, ptr @.str.338, ptr null, ptr @cec_src, i32 3, i32 4224, ptr @.compoundliteral.339, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 137, ptr @.str.340, ptr null, ptr @i2c12_src, i32 4, i32 4224, ptr @.compoundliteral.341, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 138, ptr @.str.342, ptr null, ptr @i2c12_src, i32 4, i32 4224, ptr @.compoundliteral.343, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 139, ptr @.str.344, ptr null, ptr @i2c35_src, i32 4, i32 4224, ptr @.compoundliteral.345, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 141, ptr @.str.346, ptr null, ptr @i2c35_src, i32 4, i32 4224, ptr @.compoundliteral.347, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 140, ptr @.str.348, ptr null, ptr @i2c46_src, i32 4, i32 4224, ptr @.compoundliteral.349, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 142, ptr @.str.350, ptr null, ptr @i2c46_src, i32 4, i32 4224, ptr @.compoundliteral.351, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 143, ptr @.str.352, ptr null, ptr @lptim1_src, i32 6, i32 4224, ptr @.compoundliteral.353, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 144, ptr @.str.354, ptr null, ptr @lptim23_src, i32 5, i32 4224, ptr @.compoundliteral.355, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 145, ptr @.str.356, ptr null, ptr @lptim23_src, i32 5, i32 4224, ptr @.compoundliteral.357, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 146, ptr @.str.358, ptr null, ptr @lptim45_src, i32 6, i32 4224, ptr @.compoundliteral.359, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 147, ptr @.str.360, ptr null, ptr @lptim45_src, i32 6, i32 4224, ptr @.compoundliteral.361, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 148, ptr @.str.362, ptr null, ptr @usart1_src, i32 6, i32 4224, ptr @.compoundliteral.363, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 149, ptr @.str.364, ptr null, ptr @usart234578_src, i32 5, i32 4224, ptr @.compoundliteral.365, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 150, ptr @.str.366, ptr null, ptr @usart234578_src, i32 5, i32 4224, ptr @.compoundliteral.367, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 151, ptr @.str.368, ptr null, ptr @usart234578_src, i32 5, i32 4224, ptr @.compoundliteral.369, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 152, ptr @.str.370, ptr null, ptr @usart234578_src, i32 5, i32 4224, ptr @.compoundliteral.371, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 153, ptr @.str.372, ptr null, ptr @usart6_src, i32 5, i32 4224, ptr @.compoundliteral.373, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 154, ptr @.str.374, ptr null, ptr @usart234578_src, i32 5, i32 4224, ptr @.compoundliteral.375, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 155, ptr @.str.376, ptr null, ptr @usart234578_src, i32 5, i32 4224, ptr @.compoundliteral.377, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 157, ptr @.str.378, ptr null, ptr @fdcan_src, i32 4, i32 4224, ptr @.compoundliteral.379, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 158, ptr @.str.380, ptr null, ptr @sai_src, i32 5, i32 4224, ptr @.compoundliteral.381, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 159, ptr @.str.382, ptr null, ptr @sai2_src, i32 6, i32 4224, ptr @.compoundliteral.383, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 160, ptr @.str.384, ptr null, ptr @sai_src, i32 5, i32 4224, ptr @.compoundliteral.385, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 161, ptr @.str.386, ptr null, ptr @sai_src, i32 5, i32 4224, ptr @.compoundliteral.387, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 162, ptr @.str.388, ptr null, ptr @adc12_src, i32 3, i32 4224, ptr @.compoundliteral.389, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 163, ptr @.str.390, ptr null, ptr @dsi_src, i32 2, i32 4224, ptr @.compoundliteral.391, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 165, ptr @.str.392, ptr null, ptr @sai_src, i32 5, i32 4224, ptr @.compoundliteral.393, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 166, ptr @.str.394, ptr null, ptr @usbo_src, i32 2, i32 4224, ptr @.compoundliteral.395, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 123, ptr @.str.396, ptr null, ptr @eth_src, i32 2, i32 4224, ptr @.compoundliteral.397, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 156, ptr @.str.398, ptr @.str.136, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 564), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 164, ptr @.str.399, ptr @.str.112, ptr null, i32 0, i32 4, ptr getelementptr (i8, ptr @per_gate_cfg, i64 372), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 167, ptr @.str.400, ptr @.str.112, ptr null, i32 0, i32 4, ptr getelementptr (i8, ptr @per_gate_cfg, i64 360), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 126, ptr @.str.401, ptr @.str.70, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 540), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 168, ptr @.str.402, ptr @.str.40, ptr null, i32 0, i32 0, ptr getelementptr (i8, ptr @per_gate_cfg, i64 504), ptr @_clk_stm32_register_gate }, %struct.clock_config { i32 169, ptr @.str.403, ptr null, ptr @eth_src, i32 2, i32 4224, ptr @.compoundliteral.406, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 192, ptr @.str.407, ptr null, ptr @rtc_src, i32 4, i32 4096, ptr @.compoundliteral.414, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 211, ptr @.str.415, ptr null, ptr @mco1_src, i32 5, i32 4224, ptr @.compoundliteral.422, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 212, ptr @.str.423, ptr null, ptr @mco2_src, i32 6, i32 4224, ptr @.compoundliteral.430, ptr @_clk_stm32_register_composite }, %struct.clock_config { i32 214, ptr @.str.431, ptr @.str.130, ptr null, i32 0, i32 8, ptr @.compoundliteral.432, ptr @_clk_hw_register_gate }, %struct.clock_config { i32 215, ptr @.str.433, ptr null, ptr @ck_trace_src, i32 1, i32 4096, ptr @.compoundliteral.438, ptr @_clk_stm32_register_composite }], [1664 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ck_hse\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clk-hse\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 12, i8 8, i8 0 }, [24 x i8] zeroinitializer }, align 32
@mp1_gate_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @mp1_gate_clk_enable, ptr @mp1_gate_clk_disable, ptr @clk_gate_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.compoundliteral.27 = internal global { %struct.stm32_gate_cfg, [20 x i8] } { %struct.stm32_gate_cfg { ptr @.compoundliteral, ptr null, ptr @mp1_gate_clk_ops }, [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ck_csi\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clk-csi\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 12, i8 4, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.31 = internal global { %struct.stm32_gate_cfg, [20 x i8] } { %struct.stm32_gate_cfg { ptr @.compoundliteral.30, ptr null, ptr @mp1_gate_clk_ops }, [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ck_hsi\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clk-hsi\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.34 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.33], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.35 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 12, i8 0, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal global { %struct.stm32_gate_cfg, [20 x i8] } { %struct.stm32_gate_cfg { ptr @.compoundliteral.35, ptr null, ptr @mp1_gate_clk_ops }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.37 = internal global { %struct.div_cfg, [20 x i8] } { %struct.div_cfg { i32 24, i8 0, i8 2, i8 34, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.38 = internal global { %struct.stm32_div_cfg, [24 x i8] } { %struct.stm32_div_cfg { ptr @.compoundliteral.37, ptr null }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.39 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr @.compoundliteral.36, ptr @.compoundliteral.38, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ck_lsi\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clk-lsi\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.42 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 324, i8 0, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ck_lse\00", [25 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clk-lse\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.45 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 320, i8 0, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk-hse-div2\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.47 = internal global { %struct.fixed_factor_cfg, [24 x i8] } { %struct.fixed_factor_cfg { i32 1, i32 2 }, [24 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll1\00", [27 x i8] zeroinitializer }, align 32
@ref12_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.32, ptr @.str.25], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.49 = internal global { %struct.stm32_pll_cfg, [24 x i8] } { %struct.stm32_pll_cfg { i32 128, i32 40 }, [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll2\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.51 = internal global { %struct.stm32_pll_cfg, [24 x i8] } { %struct.stm32_pll_cfg { i32 148, i32 40 }, [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll3\00", [27 x i8] zeroinitializer }, align 32
@ref3_parents = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.32, ptr @.str.25, ptr @.str.28], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.53 = internal global { %struct.stm32_pll_cfg, [24 x i8] } { %struct.stm32_pll_cfg { i32 2176, i32 2080 }, [24 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll4\00", [27 x i8] zeroinitializer }, align 32
@ref4_parents = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.32, ptr @.str.25, ptr @.str.28], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.55 = internal global { %struct.stm32_pll_cfg, [24 x i8] } { %struct.stm32_pll_cfg { i32 2196, i32 2084 }, [24 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll1_p\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.57 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.48], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.58 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 128, i8 4, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.59 = internal global { %struct.stm32_gate_cfg, [20 x i8] } { %struct.stm32_gate_cfg { ptr @.compoundliteral.58, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.60 = internal global { %struct.div_cfg, [20 x i8] } { %struct.div_cfg { i32 136, i8 0, i8 7, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.61 = internal global { %struct.stm32_div_cfg, [24 x i8] } { %struct.stm32_div_cfg { ptr @.compoundliteral.60, ptr null }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.62 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr @.compoundliteral.59, ptr @.compoundliteral.61, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll2_p\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.64 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.50], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.65 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 148, i8 4, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.66 = internal global { %struct.stm32_gate_cfg, [20 x i8] } { %struct.stm32_gate_cfg { ptr @.compoundliteral.65, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.67 = internal global { %struct.div_cfg, [20 x i8] } { %struct.div_cfg { i32 156, i8 0, i8 7, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.68 = internal global { %struct.stm32_div_cfg, [24 x i8] } { %struct.stm32_div_cfg { ptr @.compoundliteral.67, ptr null }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.69 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr @.compoundliteral.66, ptr @.compoundliteral.68, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll2_q\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.71 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.50], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.72 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 148, i8 5, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.73 = internal global { %struct.stm32_gate_cfg, [20 x i8] } { %struct.stm32_gate_cfg { ptr @.compoundliteral.72, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.74 = internal global { %struct.div_cfg, [20 x i8] } { %struct.div_cfg { i32 156, i8 8, i8 7, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.75 = internal global { %struct.stm32_div_cfg, [24 x i8] } { %struct.stm32_div_cfg { ptr @.compoundliteral.74, ptr null }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.76 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr @.compoundliteral.73, ptr @.compoundliteral.75, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll2_r\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.78 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.50], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.79 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 148, i8 6, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.80 = internal global { %struct.stm32_gate_cfg, [20 x i8] } { %struct.stm32_gate_cfg { ptr @.compoundliteral.79, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.81 = internal global { %struct.div_cfg, [20 x i8] } { %struct.div_cfg { i32 156, i8 16, i8 7, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.82 = internal global { %struct.stm32_div_cfg, [24 x i8] } { %struct.stm32_div_cfg { ptr @.compoundliteral.81, ptr null }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.83 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr @.compoundliteral.80, ptr @.compoundliteral.82, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll3_p\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.85 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.52], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.86 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2176, i8 4, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.87 = internal global { %struct.stm32_gate_cfg, [20 x i8] } { %struct.stm32_gate_cfg { ptr @.compoundliteral.86, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.88 = internal global { %struct.div_cfg, [20 x i8] } { %struct.div_cfg { i32 2184, i8 0, i8 7, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.89 = internal global { %struct.stm32_div_cfg, [24 x i8] } { %struct.stm32_div_cfg { ptr @.compoundliteral.88, ptr null }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.90 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr @.compoundliteral.87, ptr @.compoundliteral.89, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll3_q\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.92 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.52], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.93 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2176, i8 5, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.94 = internal global { %struct.stm32_gate_cfg, [20 x i8] } { %struct.stm32_gate_cfg { ptr @.compoundliteral.93, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.95 = internal global { %struct.div_cfg, [20 x i8] } { %struct.div_cfg { i32 2184, i8 8, i8 7, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.96 = internal global { %struct.stm32_div_cfg, [24 x i8] } { %struct.stm32_div_cfg { ptr @.compoundliteral.95, ptr null }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.97 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr @.compoundliteral.94, ptr @.compoundliteral.96, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll3_r\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.99 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.52], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.100 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2176, i8 6, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.101 = internal global { %struct.stm32_gate_cfg, [20 x i8] } { %struct.stm32_gate_cfg { ptr @.compoundliteral.100, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.102 = internal global { %struct.div_cfg, [20 x i8] } { %struct.div_cfg { i32 2184, i8 16, i8 7, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.103 = internal global { %struct.stm32_div_cfg, [24 x i8] } { %struct.stm32_div_cfg { ptr @.compoundliteral.102, ptr null }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.104 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr @.compoundliteral.101, ptr @.compoundliteral.103, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll4_p\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.106 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.54], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.107 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2196, i8 4, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.108 = internal global { %struct.stm32_gate_cfg, [20 x i8] } { %struct.stm32_gate_cfg { ptr @.compoundliteral.107, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.109 = internal global { %struct.div_cfg, [20 x i8] } { %struct.div_cfg { i32 2204, i8 0, i8 7, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.110 = internal global { %struct.stm32_div_cfg, [24 x i8] } { %struct.stm32_div_cfg { ptr @.compoundliteral.109, ptr null }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.111 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr @.compoundliteral.108, ptr @.compoundliteral.110, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll4_q\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.113 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.54], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.114 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2196, i8 5, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.115 = internal global { %struct.stm32_gate_cfg, [20 x i8] } { %struct.stm32_gate_cfg { ptr @.compoundliteral.114, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.116 = internal global { %struct.div_cfg, [20 x i8] } { %struct.div_cfg { i32 2204, i8 8, i8 7, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.117 = internal global { %struct.stm32_div_cfg, [24 x i8] } { %struct.stm32_div_cfg { ptr @.compoundliteral.116, ptr null }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.118 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr @.compoundliteral.115, ptr @.compoundliteral.117, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll4_r\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.120 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.54], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.121 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2196, i8 6, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.122 = internal global { %struct.stm32_gate_cfg, [20 x i8] } { %struct.stm32_gate_cfg { ptr @.compoundliteral.121, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.123 = internal global { %struct.div_cfg, [20 x i8] } { %struct.div_cfg { i32 2204, i8 16, i8 7, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.124 = internal global { %struct.stm32_div_cfg, [24 x i8] } { %struct.stm32_div_cfg { ptr @.compoundliteral.123, ptr null }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.125 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr @.compoundliteral.122, ptr @.compoundliteral.124, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ck_per\00", [25 x i8] zeroinitializer }, align 32
@per_src = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.32, ptr @.str.28, ptr @.str.25], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.127 = internal global { %struct.mux_cfg, [20 x i8] } { %struct.mux_cfg { i32 208, i8 0, i8 2, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ck_mpu\00", [25 x i8] zeroinitializer }, align 32
@cpu_src = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.32, ptr @.str.25, ptr @.str.56], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.129 = internal global { %struct.mux_cfg, [20 x i8] } { %struct.mux_cfg { i32 32, i8 0, i8 2, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ck_axi\00", [25 x i8] zeroinitializer }, align 32
@axi_src = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.32, ptr @.str.25, ptr @.str.63], [20 x i8] zeroinitializer }, align 32
@axi_div_table = internal constant { [9 x %struct.clk_div_table], [56 x i8] } { [9 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 3 }, %struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table { i32 4, i32 4 }, %struct.clk_div_table { i32 5, i32 4 }, %struct.clk_div_table { i32 6, i32 4 }, %struct.clk_div_table { i32 7, i32 4 }, %struct.clk_div_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.compoundliteral.131 = internal global { %struct.div_cfg, [20 x i8] } { %struct.div_cfg { i32 48, i8 0, i8 3, i8 0, ptr @axi_div_table }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.132 = internal global { %struct.stm32_div_cfg, [24 x i8] } { %struct.stm32_div_cfg { ptr @.compoundliteral.131, ptr null }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.133 = internal global { %struct.mux_cfg, [20 x i8] } { %struct.mux_cfg { i32 36, i8 0, i8 2, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.134 = internal global { %struct.stm32_mux_cfg, [20 x i8] } { %struct.stm32_mux_cfg { ptr @.compoundliteral.133, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.135 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr null, ptr @.compoundliteral.132, ptr @.compoundliteral.134 }, [20 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ck_mcu\00", [25 x i8] zeroinitializer }, align 32
@mcu_src = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.32, ptr @.str.25, ptr @.str.28, ptr @.str.84], [16 x i8] zeroinitializer }, align 32
@mcu_div_table = internal constant { [17 x %struct.clk_div_table], [56 x i8] } { [17 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 4 }, %struct.clk_div_table { i32 3, i32 8 }, %struct.clk_div_table { i32 4, i32 16 }, %struct.clk_div_table { i32 5, i32 32 }, %struct.clk_div_table { i32 6, i32 64 }, %struct.clk_div_table { i32 7, i32 128 }, %struct.clk_div_table { i32 8, i32 256 }, %struct.clk_div_table { i32 9, i32 512 }, %struct.clk_div_table { i32 10, i32 512 }, %struct.clk_div_table { i32 11, i32 512 }, %struct.clk_div_table { i32 12, i32 512 }, %struct.clk_div_table { i32 13, i32 512 }, %struct.clk_div_table { i32 14, i32 512 }, %struct.clk_div_table { i32 15, i32 512 }, %struct.clk_div_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.compoundliteral.137 = internal global { %struct.div_cfg, [20 x i8] } { %struct.div_cfg { i32 2096, i8 0, i8 4, i8 0, ptr @mcu_div_table }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.138 = internal global { %struct.stm32_div_cfg, [24 x i8] } { %struct.stm32_div_cfg { ptr @.compoundliteral.137, ptr null }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.139 = internal global { %struct.mux_cfg, [20 x i8] } { %struct.mux_cfg { i32 72, i8 0, i8 2, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.140 = internal global { %struct.stm32_mux_cfg, [20 x i8] } { %struct.stm32_mux_cfg { ptr @.compoundliteral.139, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.141 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr null, ptr @.compoundliteral.138, ptr @.compoundliteral.140 }, [20 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pclk1\00", [26 x i8] zeroinitializer }, align 32
@apb_div_table = internal constant { [9 x %struct.clk_div_table], [56 x i8] } { [9 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 4 }, %struct.clk_div_table { i32 3, i32 8 }, %struct.clk_div_table { i32 4, i32 16 }, %struct.clk_div_table { i32 5, i32 16 }, %struct.clk_div_table { i32 6, i32 16 }, %struct.clk_div_table { i32 7, i32 16 }, %struct.clk_div_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.compoundliteral.143 = internal global { %struct.div_cfg, [20 x i8] } { %struct.div_cfg { i32 2100, i8 0, i8 3, i8 32, ptr @apb_div_table }, [20 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pclk2\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.145 = internal global { %struct.div_cfg, [20 x i8] } { %struct.div_cfg { i32 2104, i8 0, i8 3, i8 32, ptr @apb_div_table }, [20 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pclk3\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.147 = internal global { %struct.div_cfg, [20 x i8] } { %struct.div_cfg { i32 2108, i8 0, i8 3, i8 32, ptr @apb_div_table }, [20 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pclk4\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.149 = internal global { %struct.div_cfg, [20 x i8] } { %struct.div_cfg { i32 60, i8 0, i8 3, i8 32, ptr @apb_div_table }, [20 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pclk5\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.151 = internal global { %struct.div_cfg, [20 x i8] } { %struct.div_cfg { i32 64, i8 0, i8 3, i8 32, ptr @apb_div_table }, [20 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ck1_tim\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.153 = internal global { %struct.stm32_cktim_cfg, [24 x i8] } { %struct.stm32_cktim_cfg { i32 2100, i32 2088 }, [24 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ck2_tim\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.155 = internal global { %struct.stm32_cktim_cfg, [24 x i8] } { %struct.stm32_cktim_cfg { i32 2104, i32 2092 }, [24 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tim2_k\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.157 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2560, i8 0, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.158 = internal global { %struct.stm32_gate_cfg, [20 x i8] } { %struct.stm32_gate_cfg { ptr @.compoundliteral.157, ptr null, ptr @mp1_gate_clk_ops }, [20 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tim3_k\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.160 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2560, i8 1, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.161 = internal global { %struct.stm32_gate_cfg, [20 x i8] } { %struct.stm32_gate_cfg { ptr @.compoundliteral.160, ptr null, ptr @mp1_gate_clk_ops }, [20 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tim4_k\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.163 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2560, i8 2, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.164 = internal global { %struct.stm32_gate_cfg, [20 x i8] } { %struct.stm32_gate_cfg { ptr @.compoundliteral.163, ptr null, ptr @mp1_gate_clk_ops }, [20 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tim5_k\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.166 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2560, i8 3, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.167 = internal global { %struct.stm32_gate_cfg, [20 x i8] } { %struct.stm32_gate_cfg { ptr @.compoundliteral.166, ptr null, ptr @mp1_gate_clk_ops }, [20 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tim6_k\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.169 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2560, i8 4, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.170 = internal global { %struct.stm32_gate_cfg, [20 x i8] } { %struct.stm32_gate_cfg { ptr @.compoundliteral.169, ptr null, ptr @mp1_gate_clk_ops }, [20 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tim7_k\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.172 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2560, i8 5, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.173 = internal global { %struct.stm32_gate_cfg, [20 x i8] } { %struct.stm32_gate_cfg { ptr @.compoundliteral.172, ptr null, ptr @mp1_gate_clk_ops }, [20 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tim12_k\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.175 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2560, i8 6, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.176 = internal global { %struct.stm32_gate_cfg, [20 x i8] } { %struct.stm32_gate_cfg { ptr @.compoundliteral.175, ptr null, ptr @mp1_gate_clk_ops }, [20 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tim13_k\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.178 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2560, i8 7, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.179 = internal global { %struct.stm32_gate_cfg, [20 x i8] } { %struct.stm32_gate_cfg { ptr @.compoundliteral.178, ptr null, ptr @mp1_gate_clk_ops }, [20 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tim14_k\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.181 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2560, i8 8, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.182 = internal global { %struct.stm32_gate_cfg, [20 x i8] } { %struct.stm32_gate_cfg { ptr @.compoundliteral.181, ptr null, ptr @mp1_gate_clk_ops }, [20 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tim1_k\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.184 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2568, i8 0, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.185 = internal global { %struct.stm32_gate_cfg, [20 x i8] } { %struct.stm32_gate_cfg { ptr @.compoundliteral.184, ptr null, ptr @mp1_gate_clk_ops }, [20 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tim8_k\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.187 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2568, i8 1, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.188 = internal global { %struct.stm32_gate_cfg, [20 x i8] } { %struct.stm32_gate_cfg { ptr @.compoundliteral.187, ptr null, ptr @mp1_gate_clk_ops }, [20 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tim15_k\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.190 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2568, i8 2, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.191 = internal global { %struct.stm32_gate_cfg, [20 x i8] } { %struct.stm32_gate_cfg { ptr @.compoundliteral.190, ptr null, ptr @mp1_gate_clk_ops }, [20 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tim16_k\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.193 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2568, i8 3, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.194 = internal global { %struct.stm32_gate_cfg, [20 x i8] } { %struct.stm32_gate_cfg { ptr @.compoundliteral.193, ptr null, ptr @mp1_gate_clk_ops }, [20 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tim17_k\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.196 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2568, i8 4, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.197 = internal global { %struct.stm32_gate_cfg, [20 x i8] } { %struct.stm32_gate_cfg { ptr @.compoundliteral.196, ptr null, ptr @mp1_gate_clk_ops }, [20 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tim2\00", [27 x i8] zeroinitializer }, align 32
@per_gate_cfg = internal global { [110 x %struct.stm32_gate_cfg], [344 x i8] } { [110 x %struct.stm32_gate_cfg] [%struct.stm32_gate_cfg { ptr @.compoundliteral.439, ptr @mp1_mgate, ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.440, ptr getelementptr (i8, ptr @mp1_mgate, i64 8), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.441, ptr getelementptr (i8, ptr @mp1_mgate, i64 16), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.442, ptr getelementptr (i8, ptr @mp1_mgate, i64 24), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.443, ptr getelementptr (i8, ptr @mp1_mgate, i64 32), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.444, ptr getelementptr (i8, ptr @mp1_mgate, i64 40), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.445, ptr getelementptr (i8, ptr @mp1_mgate, i64 48), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.446, ptr getelementptr (i8, ptr @mp1_mgate, i64 56), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.447, ptr getelementptr (i8, ptr @mp1_mgate, i64 64), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.448, ptr getelementptr (i8, ptr @mp1_mgate, i64 72), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.449, ptr getelementptr (i8, ptr @mp1_mgate, i64 80), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.450, ptr getelementptr (i8, ptr @mp1_mgate, i64 88), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.451, ptr getelementptr (i8, ptr @mp1_mgate, i64 96), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.452, ptr getelementptr (i8, ptr @mp1_mgate, i64 104), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.453, ptr getelementptr (i8, ptr @mp1_mgate, i64 112), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.454, ptr getelementptr (i8, ptr @mp1_mgate, i64 120), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.455, ptr getelementptr (i8, ptr @mp1_mgate, i64 128), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.456, ptr getelementptr (i8, ptr @mp1_mgate, i64 136), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.457, ptr getelementptr (i8, ptr @mp1_mgate, i64 144), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.458, ptr getelementptr (i8, ptr @mp1_mgate, i64 152), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.459, ptr getelementptr (i8, ptr @mp1_mgate, i64 160), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.460, ptr getelementptr (i8, ptr @mp1_mgate, i64 168), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.461, ptr getelementptr (i8, ptr @mp1_mgate, i64 176), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.462, ptr getelementptr (i8, ptr @mp1_mgate, i64 184), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.463, ptr getelementptr (i8, ptr @mp1_mgate, i64 192), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.464, ptr getelementptr (i8, ptr @mp1_mgate, i64 200), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.465, ptr getelementptr (i8, ptr @mp1_mgate, i64 208), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.466, ptr getelementptr (i8, ptr @mp1_mgate, i64 216), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.467, ptr getelementptr (i8, ptr @mp1_mgate, i64 224), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.468, ptr getelementptr (i8, ptr @mp1_mgate, i64 232), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.469, ptr getelementptr (i8, ptr @mp1_mgate, i64 240), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.470, ptr getelementptr (i8, ptr @mp1_mgate, i64 248), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.471, ptr getelementptr (i8, ptr @mp1_mgate, i64 256), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.472, ptr getelementptr (i8, ptr @mp1_mgate, i64 264), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.473, ptr getelementptr (i8, ptr @mp1_mgate, i64 272), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.474, ptr getelementptr (i8, ptr @mp1_mgate, i64 280), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.475, ptr getelementptr (i8, ptr @mp1_mgate, i64 288), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.476, ptr getelementptr (i8, ptr @mp1_mgate, i64 296), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.477, ptr getelementptr (i8, ptr @mp1_mgate, i64 304), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.478, ptr getelementptr (i8, ptr @mp1_mgate, i64 312), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.479, ptr getelementptr (i8, ptr @mp1_mgate, i64 320), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.480, ptr getelementptr (i8, ptr @mp1_mgate, i64 328), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.481, ptr getelementptr (i8, ptr @mp1_mgate, i64 336), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.482, ptr getelementptr (i8, ptr @mp1_mgate, i64 344), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.483, ptr getelementptr (i8, ptr @mp1_mgate, i64 352), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.484, ptr getelementptr (i8, ptr @mp1_mgate, i64 360), ptr @mp1_mgate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.485, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.486, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.487, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.488, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.489, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.490, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.491, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.492, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.493, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.494, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.495, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.496, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.497, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.498, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.499, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.500, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.501, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.502, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.503, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.504, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.505, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.506, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.507, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.508, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.509, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.510, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.511, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.512, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.513, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.514, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.515, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.516, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.517, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.518, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.519, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.520, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.521, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.522, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.523, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.524, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.525, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.526, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.527, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.528, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.529, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.530, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.531, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.532, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.533, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.534, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.535, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.536, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.537, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.538, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.539, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.540, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.541, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.542, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.543, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.544, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.545, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.546, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.547, ptr null, ptr @mp1_gate_clk_ops }, %struct.stm32_gate_cfg { ptr @.compoundliteral.548, ptr null, ptr @mp1_gate_clk_ops }], [344 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tim3\00", [27 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tim4\00", [27 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tim5\00", [27 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tim6\00", [27 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tim7\00", [27 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tim12\00", [26 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tim13\00", [26 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tim14\00", [26 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lptim1\00", [25 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"spi2\00", [27 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"spi3\00", [27 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usart2\00", [25 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usart3\00", [25 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart4\00", [26 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart5\00", [26 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart7\00", [26 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart8\00", [26 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c1\00", [27 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c2\00", [27 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c3\00", [27 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c5\00", [27 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"spdif\00", [26 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cec\00", [28 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dac12\00", [26 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mdio\00", [27 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tim1\00", [27 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tim8\00", [27 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tim15\00", [26 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tim16\00", [26 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tim17\00", [26 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"spi1\00", [27 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"spi4\00", [27 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"spi5\00", [27 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usart6\00", [25 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sai1\00", [27 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sai2\00", [27 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sai3\00", [27 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dfsdm\00", [26 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fdcan\00", [26 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lptim2\00", [25 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lptim3\00", [25 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lptim4\00", [25 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lptim5\00", [25 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sai4\00", [27 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"syscfg\00", [25 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vref\00", [27 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tmpsens\00", [24 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pmbctrl\00", [24 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hdp\00", [28 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ltdc\00", [27 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dsi\00", [28 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iwdg2\00", [26 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usbphy\00", [25 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"stgenro\00", [24 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"spi6\00", [27 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c4\00", [27 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c6\00", [27 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usart1\00", [25 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rtcapb\00", [25 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tzc1\00", [27 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tzc2\00", [27 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tzpc\00", [27 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iwdg1\00", [26 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bsec\00", [27 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stgen\00", [26 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dma1\00", [27 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dma2\00", [27 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dmamux\00", [25 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"adc12\00", [26 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"usbo\00", [27 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sdmmc3\00", [25 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dcmi\00", [27 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cryp2\00", [26 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hash2\00", [26 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rng2\00", [27 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"crc2\00", [27 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hsem\00", [27 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ipcc\00", [27 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpioa\00", [26 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpiob\00", [26 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpioc\00", [26 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpiod\00", [26 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpioe\00", [26 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpiof\00", [26 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpiog\00", [26 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpioh\00", [26 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpioi\00", [26 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpioj\00", [26 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpiok\00", [26 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpioz\00", [26 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cryp1\00", [26 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hash1\00", [26 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rng1\00", [27 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bkpsram\00", [24 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mdma\00", [27 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpu\00", [28 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ethtx\00", [26 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ethrx\00", [26 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ethmac\00", [25 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fmc\00", [28 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"qspi\00", [27 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sdmmc1\00", [25 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sdmmc2\00", [25 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"crc1\00", [27 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"usbh\00", [27 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ethstp\00", [25 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ddrperfm\00", [23 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sdmmc1_k\00", [23 x i8] zeroinitializer }, align 32
@sdmmc12_src = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.130, ptr @.str.98, ptr @.str.105, ptr @.str.32], [16 x i8] zeroinitializer }, align 32
@ker_mux_cfg = internal constant { [35 x %struct.stm32_mux_cfg], [124 x i8] } { [35 x %struct.stm32_mux_cfg] [%struct.stm32_mux_cfg { ptr @.compoundliteral.549, ptr @ker_mux, ptr @clk_mmux_ops }, %struct.stm32_mux_cfg { ptr @.compoundliteral.550, ptr null, ptr null }, %struct.stm32_mux_cfg { ptr @.compoundliteral.551, ptr null, ptr null }, %struct.stm32_mux_cfg { ptr @.compoundliteral.552, ptr null, ptr null }, %struct.stm32_mux_cfg { ptr @.compoundliteral.553, ptr null, ptr null }, %struct.stm32_mux_cfg { ptr @.compoundliteral.554, ptr null, ptr null }, %struct.stm32_mux_cfg { ptr @.compoundliteral.555, ptr null, ptr null }, %struct.stm32_mux_cfg { ptr @.compoundliteral.556, ptr null, ptr null }, %struct.stm32_mux_cfg { ptr @.compoundliteral.557, ptr null, ptr null }, %struct.stm32_mux_cfg { ptr @.compoundliteral.558, ptr null, ptr null }, %struct.stm32_mux_cfg { ptr @.compoundliteral.559, ptr null, ptr null }, %struct.stm32_mux_cfg { ptr @.compoundliteral.560, ptr getelementptr (i8, ptr @ker_mux, i64 132), ptr @clk_mmux_ops }, %struct.stm32_mux_cfg { ptr @.compoundliteral.561, ptr getelementptr (i8, ptr @ker_mux, i64 144), ptr @clk_mmux_ops }, %struct.stm32_mux_cfg { ptr @.compoundliteral.562, ptr null, ptr null }, %struct.stm32_mux_cfg { ptr @.compoundliteral.563, ptr null, ptr null }, %struct.stm32_mux_cfg { ptr @.compoundliteral.564, ptr getelementptr (i8, ptr @ker_mux, i64 180), ptr @clk_mmux_ops }, %struct.stm32_mux_cfg { ptr @.compoundliteral.565, ptr getelementptr (i8, ptr @ker_mux, i64 192), ptr @clk_mmux_ops }, %struct.stm32_mux_cfg { ptr @.compoundliteral.566, ptr getelementptr (i8, ptr @ker_mux, i64 204), ptr @clk_mmux_ops }, %struct.stm32_mux_cfg { ptr @.compoundliteral.567, ptr null, ptr null }, %struct.stm32_mux_cfg { ptr @.compoundliteral.568, ptr getelementptr (i8, ptr @ker_mux, i64 228), ptr @clk_mmux_ops }, %struct.stm32_mux_cfg { ptr @.compoundliteral.569, ptr getelementptr (i8, ptr @ker_mux, i64 240), ptr @clk_mmux_ops }, %struct.stm32_mux_cfg { ptr @.compoundliteral.570, ptr null, ptr null }, %struct.stm32_mux_cfg { ptr @.compoundliteral.571, ptr getelementptr (i8, ptr @ker_mux, i64 264), ptr @clk_mmux_ops }, %struct.stm32_mux_cfg { ptr @.compoundliteral.572, ptr getelementptr (i8, ptr @ker_mux, i64 276), ptr @clk_mmux_ops }, %struct.stm32_mux_cfg { ptr @.compoundliteral.573, ptr null, ptr null }, %struct.stm32_mux_cfg { ptr @.compoundliteral.574, ptr getelementptr (i8, ptr @ker_mux, i64 300), ptr @clk_mmux_ops }, %struct.stm32_mux_cfg { ptr @.compoundliteral.575, ptr getelementptr (i8, ptr @ker_mux, i64 312), ptr @clk_mmux_ops }, %struct.stm32_mux_cfg { ptr @.compoundliteral.576, ptr null, ptr null }, %struct.stm32_mux_cfg { ptr @.compoundliteral.577, ptr null, ptr null }, %struct.stm32_mux_cfg { ptr @.compoundliteral.578, ptr null, ptr null }, %struct.stm32_mux_cfg { ptr @.compoundliteral.579, ptr null, ptr null }, %struct.stm32_mux_cfg { ptr @.compoundliteral.580, ptr null, ptr null }, %struct.stm32_mux_cfg { ptr @.compoundliteral.581, ptr null, ptr null }, %struct.stm32_mux_cfg { ptr @.compoundliteral.582, ptr getelementptr (i8, ptr @ker_mux, i64 396), ptr @clk_mmux_ops }, %struct.stm32_mux_cfg { ptr @.compoundliteral.583, ptr null, ptr null }], [124 x i8] zeroinitializer }, align 32
@.compoundliteral.307 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 408), ptr null, ptr @ker_mux_cfg }, [20 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sdmmc2_k\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.309 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 420), ptr null, ptr @ker_mux_cfg }, [20 x i8] zeroinitializer }, align 32
@.str.310 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sdmmc3_k\00", [23 x i8] zeroinitializer }, align 32
@sdmmc3_src = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.136, ptr @.str.98, ptr @.str.105, ptr @.str.32], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.311 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 432), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 12) }, [20 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fmc_k\00", [26 x i8] zeroinitializer }, align 32
@fmc_src = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.130, ptr @.str.98, ptr @.str.105, ptr @.str.126], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.313 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 396), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 24) }, [20 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"qspi_k\00", [25 x i8] zeroinitializer }, align 32
@qspi_src = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.130, ptr @.str.98, ptr @.str.105, ptr @.str.126], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.315 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 384), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 36) }, [20 x i8] zeroinitializer }, align 32
@.str.316 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rng1_k\00", [25 x i8] zeroinitializer }, align 32
@rng_src = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.28, ptr @.str.119, ptr @.str.43, ptr @.str.40], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.317 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 468), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 48) }, [20 x i8] zeroinitializer }, align 32
@.str.318 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rng2_k\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.319 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 480), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 60) }, [20 x i8] zeroinitializer }, align 32
@.str.320 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usbphy_k\00", [23 x i8] zeroinitializer }, align 32
@usbphy_src = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.25, ptr @.str.119, ptr @.str.46], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.321 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 456), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 72) }, [20 x i8] zeroinitializer }, align 32
@.str.322 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"stgen_k\00", [24 x i8] zeroinitializer }, align 32
@stgen_src = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.32, ptr @.str.25], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.323 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 552), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 96) }, [20 x i8] zeroinitializer }, align 32
@.str.324 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spdif_k\00", [24 x i8] zeroinitializer }, align 32
@spdif_src = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.105, ptr @.str.91, ptr @.str.32], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.325 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 120), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 108) }, [20 x i8] zeroinitializer }, align 32
@.str.326 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"spi1_k\00", [25 x i8] zeroinitializer }, align 32
@spi123_src = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.105, ptr @.str.91, ptr @.str.584, ptr @.str.126, ptr @.str.98], [44 x i8] zeroinitializer }, align 32
@.compoundliteral.327 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 48), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 120) }, [20 x i8] zeroinitializer }, align 32
@.str.328 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"spi2_k\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.329 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 60), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 132) }, [20 x i8] zeroinitializer }, align 32
@.str.330 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"spi3_k\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.331 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 72), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 132) }, [20 x i8] zeroinitializer }, align 32
@.str.332 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"spi4_k\00", [25 x i8] zeroinitializer }, align 32
@spi45_src = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.144, ptr @.str.112, ptr @.str.32, ptr @.str.28, ptr @.str.25], [44 x i8] zeroinitializer }, align 32
@.compoundliteral.333 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 84), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 144) }, [20 x i8] zeroinitializer }, align 32
@.str.334 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"spi5_k\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.335 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 96), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 144) }, [20 x i8] zeroinitializer }, align 32
@.str.336 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"spi6_k\00", [25 x i8] zeroinitializer }, align 32
@spi6_src = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.150, ptr @.str.112, ptr @.str.32, ptr @.str.28, ptr @.str.25, ptr @.str.91], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.337 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 108), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 156) }, [20 x i8] zeroinitializer }, align 32
@.str.338 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cec_k\00", [26 x i8] zeroinitializer }, align 32
@cec_src = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.43, ptr @.str.40, ptr @.str.28], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.339 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 516), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 168) }, [20 x i8] zeroinitializer }, align 32
@.str.340 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i2c1_k\00", [25 x i8] zeroinitializer }, align 32
@i2c12_src = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.142, ptr @.str.119, ptr @.str.32, ptr @.str.28], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.341 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 132), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 180) }, [20 x i8] zeroinitializer }, align 32
@.str.342 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i2c2_k\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.343 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 144), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 180) }, [20 x i8] zeroinitializer }, align 32
@.str.344 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i2c3_k\00", [25 x i8] zeroinitializer }, align 32
@i2c35_src = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.142, ptr @.str.119, ptr @.str.32, ptr @.str.28], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.345 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 156), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 192) }, [20 x i8] zeroinitializer }, align 32
@.str.346 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i2c5_k\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.347 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 180), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 192) }, [20 x i8] zeroinitializer }, align 32
@.str.348 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i2c4_k\00", [25 x i8] zeroinitializer }, align 32
@i2c46_src = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.150, ptr @.str.91, ptr @.str.32, ptr @.str.28], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.349 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 168), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 204) }, [20 x i8] zeroinitializer }, align 32
@.str.350 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i2c6_k\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.351 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 192), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 204) }, [20 x i8] zeroinitializer }, align 32
@.str.352 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lptim1_k\00", [23 x i8] zeroinitializer }, align 32
@lptim1_src = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.142, ptr @.str.105, ptr @.str.91, ptr @.str.43, ptr @.str.40, ptr @.str.126], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.353 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 300), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 216) }, [20 x i8] zeroinitializer }, align 32
@.str.354 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lptim2_k\00", [23 x i8] zeroinitializer }, align 32
@lptim23_src = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.146, ptr @.str.112, ptr @.str.126, ptr @.str.43, ptr @.str.40], [44 x i8] zeroinitializer }, align 32
@.compoundliteral.355 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 312), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 228) }, [20 x i8] zeroinitializer }, align 32
@.str.356 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lptim3_k\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.357 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 324), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 228) }, [20 x i8] zeroinitializer }, align 32
@.str.358 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lptim4_k\00", [23 x i8] zeroinitializer }, align 32
@lptim45_src = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.146, ptr @.str.105, ptr @.str.91, ptr @.str.43, ptr @.str.40, ptr @.str.126], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.359 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 336), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 240) }, [20 x i8] zeroinitializer }, align 32
@.str.360 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lptim5_k\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.361 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 348), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 240) }, [20 x i8] zeroinitializer }, align 32
@.str.362 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usart1_k\00", [23 x i8] zeroinitializer }, align 32
@usart1_src = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.150, ptr @.str.91, ptr @.str.32, ptr @.str.28, ptr @.str.112, ptr @.str.25], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.363 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 252), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 252) }, [20 x i8] zeroinitializer }, align 32
@.str.364 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usart2_k\00", [23 x i8] zeroinitializer }, align 32
@usart234578_src = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.142, ptr @.str.112, ptr @.str.32, ptr @.str.28, ptr @.str.25], [44 x i8] zeroinitializer }, align 32
@.compoundliteral.365 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 204), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 264) }, [20 x i8] zeroinitializer }, align 32
@.str.366 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usart3_k\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.367 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 228), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 276) }, [20 x i8] zeroinitializer }, align 32
@.str.368 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"uart4_k\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.369 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 216), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 264) }, [20 x i8] zeroinitializer }, align 32
@.str.370 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"uart5_k\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.371 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 240), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 276) }, [20 x i8] zeroinitializer }, align 32
@.str.372 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"uart6_k\00", [24 x i8] zeroinitializer }, align 32
@usart6_src = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.144, ptr @.str.112, ptr @.str.32, ptr @.str.28, ptr @.str.25], [44 x i8] zeroinitializer }, align 32
@.compoundliteral.373 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 264), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 288) }, [20 x i8] zeroinitializer }, align 32
@.str.374 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"uart7_k\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.375 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 276), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 300) }, [20 x i8] zeroinitializer }, align 32
@.str.376 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"uart8_k\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.377 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 288), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 300) }, [20 x i8] zeroinitializer }, align 32
@.str.378 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fdcan_k\00", [24 x i8] zeroinitializer }, align 32
@fdcan_src = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.25, ptr @.str.91, ptr @.str.112, ptr @.str.119], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.379 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 492), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 372) }, [20 x i8] zeroinitializer }, align 32
@.str.380 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sai1_k\00", [25 x i8] zeroinitializer }, align 32
@sai_src = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.112, ptr @.str.91, ptr @.str.584, ptr @.str.126, ptr @.str.98], [44 x i8] zeroinitializer }, align 32
@.compoundliteral.381 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr @per_gate_cfg, ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 312) }, [20 x i8] zeroinitializer }, align 32
@.str.382 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sai2_k\00", [25 x i8] zeroinitializer }, align 32
@sai2_src = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.112, ptr @.str.91, ptr @.str.584, ptr @.str.126, ptr @.str.585, ptr @.str.98], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.383 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 12), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 324) }, [20 x i8] zeroinitializer }, align 32
@.str.384 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sai3_k\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.385 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 24), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 336) }, [20 x i8] zeroinitializer }, align 32
@.str.386 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sai4_k\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.387 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 36), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 348) }, [20 x i8] zeroinitializer }, align 32
@.str.388 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adc12_k\00", [24 x i8] zeroinitializer }, align 32
@adc12_src = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.119, ptr @.str.126, ptr @.str.91], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.389 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 528), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 384) }, [20 x i8] zeroinitializer }, align 32
@.str.390 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dsi_k\00", [26 x i8] zeroinitializer }, align 32
@dsi_src = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.586, ptr @.str.105], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.391 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 372), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 360) }, [20 x i8] zeroinitializer }, align 32
@.str.392 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"adfsdm_k\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.393 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 576), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 312) }, [20 x i8] zeroinitializer }, align 32
@.str.394 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usbo_k\00", [25 x i8] zeroinitializer }, align 32
@usbo_src = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.119, ptr @.str.587], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.395 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 444), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 84) }, [20 x i8] zeroinitializer }, align 32
@.str.396 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ethck_k\00", [24 x i8] zeroinitializer }, align 32
@eth_src = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.105, ptr @.str.91], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.397 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr getelementptr (i8, ptr @per_gate_cfg, i64 1104), ptr null, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 396) }, [20 x i8] zeroinitializer }, align 32
@.str.398 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dfsdm_k\00", [24 x i8] zeroinitializer }, align 32
@.str.399 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dsi_px\00", [25 x i8] zeroinitializer }, align 32
@.str.400 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ltdc_px\00", [24 x i8] zeroinitializer }, align 32
@.str.401 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpu_k\00", [26 x i8] zeroinitializer }, align 32
@.str.402 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dac12_k\00", [24 x i8] zeroinitializer }, align 32
@.str.403 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ethptp_k\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.404 = internal global { %struct.div_cfg, [20 x i8] } { %struct.div_cfg { i32 2300, i8 4, i8 4, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.405 = internal global { %struct.stm32_div_cfg, [24 x i8] } { %struct.stm32_div_cfg { ptr @.compoundliteral.404, ptr null }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.406 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr null, ptr @.compoundliteral.405, ptr getelementptr (i8, ptr @ker_mux_cfg, i64 396) }, [20 x i8] zeroinitializer }, align 32
@.str.407 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ck_rtc\00", [25 x i8] zeroinitializer }, align 32
@rtc_src = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.588, ptr @.str.43, ptr @.str.40, ptr @.str.25], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.408 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 320, i8 20, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.409 = internal global { %struct.stm32_gate_cfg, [20 x i8] } { %struct.stm32_gate_cfg { ptr @.compoundliteral.408, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.410 = internal global { %struct.div_cfg, [20 x i8] } { %struct.div_cfg { i32 68, i8 0, i8 6, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@rtc_div_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_divider_rtc_recalc_rate, ptr null, ptr @clk_divider_rtc_determine_rate, ptr null, ptr null, ptr @clk_divider_rtc_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.compoundliteral.411 = internal global { %struct.stm32_div_cfg, [24 x i8] } { %struct.stm32_div_cfg { ptr @.compoundliteral.410, ptr @rtc_div_clk_ops }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.412 = internal global { %struct.mux_cfg, [20 x i8] } { %struct.mux_cfg { i32 320, i8 16, i8 2, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.413 = internal global { %struct.stm32_mux_cfg, [20 x i8] } { %struct.stm32_mux_cfg { ptr @.compoundliteral.412, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.414 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr @.compoundliteral.409, ptr @.compoundliteral.411, ptr @.compoundliteral.413 }, [20 x i8] zeroinitializer }, align 32
@.str.415 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ck_mco1\00", [24 x i8] zeroinitializer }, align 32
@mco1_src = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.32, ptr @.str.25, ptr @.str.28, ptr @.str.40, ptr @.str.43], [44 x i8] zeroinitializer }, align 32
@.compoundliteral.416 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2048, i8 12, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.417 = internal global { %struct.stm32_gate_cfg, [20 x i8] } { %struct.stm32_gate_cfg { ptr @.compoundliteral.416, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.418 = internal global { %struct.div_cfg, [20 x i8] } { %struct.div_cfg { i32 2048, i8 4, i8 4, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.419 = internal global { %struct.stm32_div_cfg, [24 x i8] } { %struct.stm32_div_cfg { ptr @.compoundliteral.418, ptr null }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.420 = internal global { %struct.mux_cfg, [20 x i8] } { %struct.mux_cfg { i32 2048, i8 0, i8 3, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.421 = internal global { %struct.stm32_mux_cfg, [20 x i8] } { %struct.stm32_mux_cfg { ptr @.compoundliteral.420, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.422 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr @.compoundliteral.417, ptr @.compoundliteral.419, ptr @.compoundliteral.421 }, [20 x i8] zeroinitializer }, align 32
@.str.423 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ck_mco2\00", [24 x i8] zeroinitializer }, align 32
@mco2_src = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.128, ptr @.str.130, ptr @.str.136, ptr @.str.105, ptr @.str.25, ptr @.str.32], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.424 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2052, i8 12, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.425 = internal global { %struct.stm32_gate_cfg, [20 x i8] } { %struct.stm32_gate_cfg { ptr @.compoundliteral.424, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.426 = internal global { %struct.div_cfg, [20 x i8] } { %struct.div_cfg { i32 2052, i8 4, i8 4, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.427 = internal global { %struct.stm32_div_cfg, [24 x i8] } { %struct.stm32_div_cfg { ptr @.compoundliteral.426, ptr null }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.428 = internal global { %struct.mux_cfg, [20 x i8] } { %struct.mux_cfg { i32 2052, i8 0, i8 3, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.429 = internal global { %struct.stm32_mux_cfg, [20 x i8] } { %struct.stm32_mux_cfg { ptr @.compoundliteral.428, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.430 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr @.compoundliteral.425, ptr @.compoundliteral.427, ptr @.compoundliteral.429 }, [20 x i8] zeroinitializer }, align 32
@.str.431 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ck_sys_dbg\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.432 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2060, i8 8, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.str.433 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ck_trace\00", [23 x i8] zeroinitializer }, align 32
@ck_trace_src = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.130], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.434 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2060, i8 9, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.435 = internal global { %struct.stm32_gate_cfg, [20 x i8] } { %struct.stm32_gate_cfg { ptr @.compoundliteral.434, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@ck_trace_div_table = internal constant { [9 x %struct.clk_div_table], [56 x i8] } { [9 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 4 }, %struct.clk_div_table { i32 3, i32 8 }, %struct.clk_div_table { i32 4, i32 16 }, %struct.clk_div_table { i32 5, i32 16 }, %struct.clk_div_table { i32 6, i32 16 }, %struct.clk_div_table { i32 7, i32 16 }, %struct.clk_div_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.compoundliteral.436 = internal global { %struct.div_cfg, [20 x i8] } { %struct.div_cfg { i32 2060, i8 0, i8 3, i8 0, ptr @ck_trace_div_table }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.437 = internal global { %struct.stm32_div_cfg, [24 x i8] } { %struct.stm32_div_cfg { ptr @.compoundliteral.436, ptr null }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.438 = internal global { %struct.stm32_composite_cfg, [20 x i8] } { %struct.stm32_composite_cfg { ptr @.compoundliteral.435, ptr @.compoundliteral.437, ptr null }, [20 x i8] zeroinitializer }, align 32
@clk_gate_ops = external dso_local constant %struct.clk_ops, align 4
@clk_mux_ops = external dso_local constant %struct.clk_ops, align 4
@clk_divider_ops = external dso_local constant %struct.clk_ops, align 4
@pll_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @pll_enable, ptr @pll_disable, ptr @pll_is_enabled, ptr null, ptr null, ptr null, ptr @pll_recalc_rate, ptr null, ptr null, ptr null, ptr @pll_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@timer_ker_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @timer_ker_recalc_rate, ptr @timer_ker_round_rate, ptr null, ptr null, ptr null, ptr @timer_ker_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.compoundliteral.439 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2568, i8 16, i8 0 }, [24 x i8] zeroinitializer }, align 32
@mp1_mgate = internal global { [110 x %struct.stm32_mgate], [208 x i8] } zeroinitializer, align 32
@mp1_mgate_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @mp1_mgate_clk_enable, ptr @mp1_mgate_clk_disable, ptr @clk_gate_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.compoundliteral.440 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2568, i8 17, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.441 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2568, i8 18, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.442 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2576, i8 8, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.443 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2568, i8 8, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.444 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2560, i8 11, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.445 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2560, i8 12, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.446 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2568, i8 9, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.447 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2568, i8 10, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.448 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 520, i8 0, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.449 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2560, i8 26, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.450 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2560, i8 21, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.451 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2560, i8 22, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.452 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2560, i8 23, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.453 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 520, i8 2, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.454 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2560, i8 24, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.455 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 520, i8 3, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.456 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2560, i8 14, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.457 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2560, i8 16, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.458 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2560, i8 15, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.459 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2560, i8 17, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.460 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 520, i8 4, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.461 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2568, i8 13, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.462 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2560, i8 18, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.463 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2560, i8 19, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.464 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2560, i8 9, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.465 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2576, i8 0, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.466 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2576, i8 1, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.467 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2576, i8 2, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.468 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2576, i8 3, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.469 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 512, i8 0, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.470 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 512, i8 4, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.471 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 536, i8 14, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.472 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 536, i8 12, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.473 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 536, i8 16, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.474 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 536, i8 17, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.475 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2584, i8 16, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.476 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2584, i8 8, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.477 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 512, i8 16, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.478 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 528, i8 6, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.479 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2592, i8 6, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.480 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2568, i8 24, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.481 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2560, i8 29, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.482 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2560, i8 27, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.483 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2584, i8 5, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.484 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 536, i8 5, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.485 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 520, i8 20, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.486 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2568, i8 20, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.487 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2568, i8 21, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.488 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2560, i8 0, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.489 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2560, i8 1, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.490 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2560, i8 2, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.491 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2560, i8 3, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.492 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2560, i8 4, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.493 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2560, i8 5, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.494 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2560, i8 6, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.495 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2560, i8 7, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.496 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2560, i8 8, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.497 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2560, i8 31, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.498 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2568, i8 0, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.499 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2568, i8 1, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.500 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2568, i8 2, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.501 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2568, i8 3, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.502 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2568, i8 4, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.503 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2576, i8 11, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.504 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2576, i8 13, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.505 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2576, i8 16, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.506 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2576, i8 17, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.507 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2576, i8 20, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.508 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 512, i8 15, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.509 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 512, i8 20, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.510 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2584, i8 0, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.511 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2584, i8 1, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.512 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2584, i8 2, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.513 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2592, i8 0, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.514 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2592, i8 4, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.515 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2592, i8 5, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.516 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2592, i8 7, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.517 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2592, i8 11, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.518 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2592, i8 12, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.519 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2600, i8 0, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.520 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2600, i8 1, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.521 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2600, i8 2, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.522 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2600, i8 3, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.523 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2600, i8 4, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.524 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2600, i8 5, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.525 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2600, i8 6, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.526 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2600, i8 7, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.527 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2600, i8 8, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.528 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2600, i8 9, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.529 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 2600, i8 10, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.530 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 536, i8 0, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.531 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 536, i8 7, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.532 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 536, i8 8, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.533 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 536, i8 9, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.534 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 536, i8 10, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.535 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 536, i8 20, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.536 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 536, i8 24, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.537 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 792, i8 11, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.538 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 520, i8 8, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.539 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 520, i8 11, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.540 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 520, i8 12, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.541 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 520, i8 13, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.542 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 520, i8 15, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.543 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 520, i8 16, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.544 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 528, i8 0, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.545 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 528, i8 4, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.546 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 528, i8 5, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.547 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 528, i8 8, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.548 = internal global { %struct.gate_cfg, [24 x i8] } { %struct.gate_cfg { i32 512, i8 8, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.549 = internal global { %struct.mux_cfg, [20 x i8] } { %struct.mux_cfg { i32 2292, i8 0, i8 3, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@ker_mux = internal global { [35 x %struct.stm32_mmux], [124 x i8] } zeroinitializer, align 32
@clk_mmux_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @__clk_mux_determine_rate, ptr @clk_mmux_set_parent, ptr @clk_mmux_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.compoundliteral.550 = internal global { %struct.mux_cfg, [20 x i8] } { %struct.mux_cfg { i32 2296, i8 0, i8 3, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.551 = internal global { %struct.mux_cfg, [20 x i8] } { %struct.mux_cfg { i32 2308, i8 0, i8 2, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.552 = internal global { %struct.mux_cfg, [20 x i8] } { %struct.mux_cfg { i32 2304, i8 0, i8 2, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.553 = internal global { %struct.mux_cfg, [20 x i8] } { %struct.mux_cfg { i32 204, i8 0, i8 2, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.554 = internal global { %struct.mux_cfg, [20 x i8] } { %struct.mux_cfg { i32 2336, i8 0, i8 2, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.555 = internal global { %struct.mux_cfg, [20 x i8] } { %struct.mux_cfg { i32 2332, i8 0, i8 2, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.556 = internal global { %struct.mux_cfg, [20 x i8] } { %struct.mux_cfg { i32 2332, i8 4, i8 1, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.557 = internal global { %struct.mux_cfg, [20 x i8] } { %struct.mux_cfg { i32 212, i8 0, i8 2, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.558 = internal global { %struct.mux_cfg, [20 x i8] } { %struct.mux_cfg { i32 2324, i8 0, i8 2, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.559 = internal global { %struct.mux_cfg, [20 x i8] } { %struct.mux_cfg { i32 2264, i8 0, i8 3, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.560 = internal global { %struct.mux_cfg, [20 x i8] } { %struct.mux_cfg { i32 2268, i8 0, i8 3, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.561 = internal global { %struct.mux_cfg, [20 x i8] } { %struct.mux_cfg { i32 2272, i8 0, i8 3, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.562 = internal global { %struct.mux_cfg, [20 x i8] } { %struct.mux_cfg { i32 196, i8 0, i8 3, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.563 = internal global { %struct.mux_cfg, [20 x i8] } { %struct.mux_cfg { i32 2328, i8 0, i8 2, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.564 = internal global { %struct.mux_cfg, [20 x i8] } { %struct.mux_cfg { i32 2240, i8 0, i8 3, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.565 = internal global { %struct.mux_cfg, [20 x i8] } { %struct.mux_cfg { i32 2244, i8 0, i8 3, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.566 = internal global { %struct.mux_cfg, [20 x i8] } { %struct.mux_cfg { i32 192, i8 0, i8 3, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.567 = internal global { %struct.mux_cfg, [20 x i8] } { %struct.mux_cfg { i32 2356, i8 0, i8 3, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.568 = internal global { %struct.mux_cfg, [20 x i8] } { %struct.mux_cfg { i32 2352, i8 0, i8 3, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.569 = internal global { %struct.mux_cfg, [20 x i8] } { %struct.mux_cfg { i32 2348, i8 0, i8 3, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.570 = internal global { %struct.mux_cfg, [20 x i8] } { %struct.mux_cfg { i32 200, i8 0, i8 3, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.571 = internal global { %struct.mux_cfg, [20 x i8] } { %struct.mux_cfg { i32 2280, i8 0, i8 3, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.572 = internal global { %struct.mux_cfg, [20 x i8] } { %struct.mux_cfg { i32 2284, i8 0, i8 3, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.573 = internal global { %struct.mux_cfg, [20 x i8] } { %struct.mux_cfg { i32 2276, i8 0, i8 3, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.574 = internal global { %struct.mux_cfg, [20 x i8] } { %struct.mux_cfg { i32 2288, i8 0, i8 3, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.575 = internal global { %struct.mux_cfg, [20 x i8] } { %struct.mux_cfg { i32 2248, i8 0, i8 3, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.576 = internal global { %struct.mux_cfg, [20 x i8] } { %struct.mux_cfg { i32 2252, i8 0, i8 3, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.577 = internal global { %struct.mux_cfg, [20 x i8] } { %struct.mux_cfg { i32 2256, i8 0, i8 3, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.578 = internal global { %struct.mux_cfg, [20 x i8] } { %struct.mux_cfg { i32 2260, i8 0, i8 3, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.579 = internal global { %struct.mux_cfg, [20 x i8] } { %struct.mux_cfg { i32 2340, i8 0, i8 1, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.580 = internal global { %struct.mux_cfg, [20 x i8] } { %struct.mux_cfg { i32 2316, i8 0, i8 2, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.581 = internal global { %struct.mux_cfg, [20 x i8] } { %struct.mux_cfg { i32 2344, i8 0, i8 2, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.582 = internal global { %struct.mux_cfg, [20 x i8] } { %struct.mux_cfg { i32 2300, i8 0, i8 2, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@.compoundliteral.583 = internal global { %struct.mux_cfg, [20 x i8] } { %struct.mux_cfg { i32 208, i8 0, i8 2, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.584 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2s_ckin\00", [23 x i8] zeroinitializer }, align 32
@.str.585 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"spdif_ck_symb\00", [18 x i8] zeroinitializer }, align 32
@.str.586 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ck_dsi_phy\00", [21 x i8] zeroinitializer }, align 32
@.str.587 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ck_usbo_48m\00", [20 x i8] zeroinitializer }, align 32
@.str.588 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@stm32mp1_clock_secured = internal constant { [36 x i32], [48 x i8] } { [36 x i32] [i32 0, i32 4, i32 1, i32 2, i32 3, i32 176, i32 177, i32 180, i32 183, i32 184, i32 185, i32 194, i32 195, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 113, i32 67, i32 68, i32 69, i32 70, i32 95, i32 96, i32 97, i32 98, i32 99, i32 124, i32 128, i32 135, i32 140, i32 142, i32 148, i32 192], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967274, i64 4294967294]
@__sancov_gen_cov_switch_values.589 = internal global [4 x i64] [i64 2, i64 32, i64 4294967274, i64 4294967294]
@__sancov_gen_cov_switch_values.590 = internal global [4 x i64] [i64 2, i64 32, i64 4294967274, i64 4294967294]
@__sancov_gen_cov_switch_values.591 = internal global [4 x i64] [i64 2, i64 32, i64 4294967274, i64 4294967294]
@__sancov_gen_cov_switch_values.592 = internal global [4 x i64] [i64 2, i64 32, i64 4294967274, i64 4294967294]
@___asan_gen_.593 = private unnamed_addr constant [27 x i8] c"stm32mp1_rcc_clocks_driver\00", align 1
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 2416, i32 31 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 2418, i32 11 }
@___asan_gen_.599 = private unnamed_addr constant [20 x i8] c"stm32mp1_match_data\00", align 1
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 2127, i32 34 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 2367, i32 3 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 2367, i32 10 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 2367, i32 17 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 2367, i32 24 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 2367, i32 31 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 2346, i32 3 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 2318, i32 3 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 2325, i32 3 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 2332, i32 3 }
@___asan_gen_.656 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 2260, i32 2 }
@___asan_gen_.662 = private unnamed_addr constant [16 x i8] c"stm32_reset_ops\00", align 1
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 2244, i32 39 }
@___asan_gen_.665 = private unnamed_addr constant [6 x i8] c"rlock\00", align 1
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 2300, i32 4 }
@___asan_gen_.677 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 2154, i32 3 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 23, i32 8 }
@___asan_gen_.689 = private unnamed_addr constant [14 x i8] c"stm32mp1_data\00", align 1
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 2112, i32 36 }
@___asan_gen_.692 = private unnamed_addr constant [21 x i8] c"stm32mp1_data_secure\00", align 1
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 2119, i32 36 }
@___asan_gen_.695 = private unnamed_addr constant [19 x i8] c"stm32mp1_clock_cfg\00", align 1
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1728, i32 34 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1730, i32 2 }
@___asan_gen_.704 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.705 = private unnamed_addr constant [17 x i8] c"mp1_gate_clk_ops\00", align 1
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 469, i32 29 }
@___asan_gen_.708 = private unnamed_addr constant [20 x i8] c".compoundliteral.27\00", align 1
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1732, i32 2 }
@___asan_gen_.715 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@___asan_gen_.716 = private unnamed_addr constant [20 x i8] c".compoundliteral.31\00", align 1
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1734, i32 2 }
@___asan_gen_.723 = private unnamed_addr constant [20 x i8] c".compoundliteral.34\00", align 1
@___asan_gen_.724 = private unnamed_addr constant [20 x i8] c".compoundliteral.35\00", align 1
@___asan_gen_.725 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@___asan_gen_.726 = private unnamed_addr constant [20 x i8] c".compoundliteral.37\00", align 1
@___asan_gen_.727 = private unnamed_addr constant [20 x i8] c".compoundliteral.38\00", align 1
@___asan_gen_.728 = private unnamed_addr constant [20 x i8] c".compoundliteral.39\00", align 1
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1739, i32 2 }
@___asan_gen_.735 = private unnamed_addr constant [20 x i8] c".compoundliteral.42\00", align 1
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1740, i32 2 }
@___asan_gen_.742 = private unnamed_addr constant [20 x i8] c".compoundliteral.45\00", align 1
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1742, i32 2 }
@___asan_gen_.746 = private unnamed_addr constant [20 x i8] c".compoundliteral.47\00", align 1
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1745, i32 2 }
@___asan_gen_.750 = private unnamed_addr constant [14 x i8] c"ref12_parents\00", align 1
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 110, i32 27 }
@___asan_gen_.753 = private unnamed_addr constant [20 x i8] c".compoundliteral.49\00", align 1
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1746, i32 2 }
@___asan_gen_.757 = private unnamed_addr constant [20 x i8] c".compoundliteral.51\00", align 1
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1747, i32 2 }
@___asan_gen_.761 = private unnamed_addr constant [13 x i8] c"ref3_parents\00", align 1
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 114, i32 27 }
@___asan_gen_.764 = private unnamed_addr constant [20 x i8] c".compoundliteral.53\00", align 1
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1748, i32 2 }
@___asan_gen_.768 = private unnamed_addr constant [13 x i8] c"ref4_parents\00", align 1
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 118, i32 27 }
@___asan_gen_.771 = private unnamed_addr constant [20 x i8] c".compoundliteral.55\00", align 1
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1751, i32 2 }
@___asan_gen_.775 = private unnamed_addr constant [20 x i8] c".compoundliteral.57\00", align 1
@___asan_gen_.776 = private unnamed_addr constant [20 x i8] c".compoundliteral.58\00", align 1
@___asan_gen_.777 = private unnamed_addr constant [20 x i8] c".compoundliteral.59\00", align 1
@___asan_gen_.778 = private unnamed_addr constant [20 x i8] c".compoundliteral.60\00", align 1
@___asan_gen_.779 = private unnamed_addr constant [20 x i8] c".compoundliteral.61\00", align 1
@___asan_gen_.780 = private unnamed_addr constant [20 x i8] c".compoundliteral.62\00", align 1
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1756, i32 2 }
@___asan_gen_.784 = private unnamed_addr constant [20 x i8] c".compoundliteral.64\00", align 1
@___asan_gen_.785 = private unnamed_addr constant [20 x i8] c".compoundliteral.65\00", align 1
@___asan_gen_.786 = private unnamed_addr constant [20 x i8] c".compoundliteral.66\00", align 1
@___asan_gen_.787 = private unnamed_addr constant [20 x i8] c".compoundliteral.67\00", align 1
@___asan_gen_.788 = private unnamed_addr constant [20 x i8] c".compoundliteral.68\00", align 1
@___asan_gen_.789 = private unnamed_addr constant [20 x i8] c".compoundliteral.69\00", align 1
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1761, i32 2 }
@___asan_gen_.793 = private unnamed_addr constant [20 x i8] c".compoundliteral.71\00", align 1
@___asan_gen_.794 = private unnamed_addr constant [20 x i8] c".compoundliteral.72\00", align 1
@___asan_gen_.795 = private unnamed_addr constant [20 x i8] c".compoundliteral.73\00", align 1
@___asan_gen_.796 = private unnamed_addr constant [20 x i8] c".compoundliteral.74\00", align 1
@___asan_gen_.797 = private unnamed_addr constant [20 x i8] c".compoundliteral.75\00", align 1
@___asan_gen_.798 = private unnamed_addr constant [20 x i8] c".compoundliteral.76\00", align 1
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1766, i32 2 }
@___asan_gen_.802 = private unnamed_addr constant [20 x i8] c".compoundliteral.78\00", align 1
@___asan_gen_.803 = private unnamed_addr constant [20 x i8] c".compoundliteral.79\00", align 1
@___asan_gen_.804 = private unnamed_addr constant [20 x i8] c".compoundliteral.80\00", align 1
@___asan_gen_.805 = private unnamed_addr constant [20 x i8] c".compoundliteral.81\00", align 1
@___asan_gen_.806 = private unnamed_addr constant [20 x i8] c".compoundliteral.82\00", align 1
@___asan_gen_.807 = private unnamed_addr constant [20 x i8] c".compoundliteral.83\00", align 1
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1771, i32 2 }
@___asan_gen_.811 = private unnamed_addr constant [20 x i8] c".compoundliteral.85\00", align 1
@___asan_gen_.812 = private unnamed_addr constant [20 x i8] c".compoundliteral.86\00", align 1
@___asan_gen_.813 = private unnamed_addr constant [20 x i8] c".compoundliteral.87\00", align 1
@___asan_gen_.814 = private unnamed_addr constant [20 x i8] c".compoundliteral.88\00", align 1
@___asan_gen_.815 = private unnamed_addr constant [20 x i8] c".compoundliteral.89\00", align 1
@___asan_gen_.816 = private unnamed_addr constant [20 x i8] c".compoundliteral.90\00", align 1
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1776, i32 2 }
@___asan_gen_.820 = private unnamed_addr constant [20 x i8] c".compoundliteral.92\00", align 1
@___asan_gen_.821 = private unnamed_addr constant [20 x i8] c".compoundliteral.93\00", align 1
@___asan_gen_.822 = private unnamed_addr constant [20 x i8] c".compoundliteral.94\00", align 1
@___asan_gen_.823 = private unnamed_addr constant [20 x i8] c".compoundliteral.95\00", align 1
@___asan_gen_.824 = private unnamed_addr constant [20 x i8] c".compoundliteral.96\00", align 1
@___asan_gen_.825 = private unnamed_addr constant [20 x i8] c".compoundliteral.97\00", align 1
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1781, i32 2 }
@___asan_gen_.829 = private unnamed_addr constant [20 x i8] c".compoundliteral.99\00", align 1
@___asan_gen_.830 = private unnamed_addr constant [21 x i8] c".compoundliteral.100\00", align 1
@___asan_gen_.831 = private unnamed_addr constant [21 x i8] c".compoundliteral.101\00", align 1
@___asan_gen_.832 = private unnamed_addr constant [21 x i8] c".compoundliteral.102\00", align 1
@___asan_gen_.833 = private unnamed_addr constant [21 x i8] c".compoundliteral.103\00", align 1
@___asan_gen_.834 = private unnamed_addr constant [21 x i8] c".compoundliteral.104\00", align 1
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1786, i32 2 }
@___asan_gen_.838 = private unnamed_addr constant [21 x i8] c".compoundliteral.106\00", align 1
@___asan_gen_.839 = private unnamed_addr constant [21 x i8] c".compoundliteral.107\00", align 1
@___asan_gen_.840 = private unnamed_addr constant [21 x i8] c".compoundliteral.108\00", align 1
@___asan_gen_.841 = private unnamed_addr constant [21 x i8] c".compoundliteral.109\00", align 1
@___asan_gen_.842 = private unnamed_addr constant [21 x i8] c".compoundliteral.110\00", align 1
@___asan_gen_.843 = private unnamed_addr constant [21 x i8] c".compoundliteral.111\00", align 1
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1791, i32 2 }
@___asan_gen_.847 = private unnamed_addr constant [21 x i8] c".compoundliteral.113\00", align 1
@___asan_gen_.848 = private unnamed_addr constant [21 x i8] c".compoundliteral.114\00", align 1
@___asan_gen_.849 = private unnamed_addr constant [21 x i8] c".compoundliteral.115\00", align 1
@___asan_gen_.850 = private unnamed_addr constant [21 x i8] c".compoundliteral.116\00", align 1
@___asan_gen_.851 = private unnamed_addr constant [21 x i8] c".compoundliteral.117\00", align 1
@___asan_gen_.852 = private unnamed_addr constant [21 x i8] c".compoundliteral.118\00", align 1
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1796, i32 2 }
@___asan_gen_.856 = private unnamed_addr constant [21 x i8] c".compoundliteral.120\00", align 1
@___asan_gen_.857 = private unnamed_addr constant [21 x i8] c".compoundliteral.121\00", align 1
@___asan_gen_.858 = private unnamed_addr constant [21 x i8] c".compoundliteral.122\00", align 1
@___asan_gen_.859 = private unnamed_addr constant [21 x i8] c".compoundliteral.123\00", align 1
@___asan_gen_.860 = private unnamed_addr constant [21 x i8] c".compoundliteral.124\00", align 1
@___asan_gen_.861 = private unnamed_addr constant [21 x i8] c".compoundliteral.125\00", align 1
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1802, i32 2 }
@___asan_gen_.865 = private unnamed_addr constant [8 x i8] c"per_src\00", align 1
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 130, i32 27 }
@___asan_gen_.868 = private unnamed_addr constant [21 x i8] c".compoundliteral.127\00", align 1
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1805, i32 2 }
@___asan_gen_.872 = private unnamed_addr constant [8 x i8] c"cpu_src\00", align 1
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 122, i32 27 }
@___asan_gen_.875 = private unnamed_addr constant [21 x i8] c".compoundliteral.129\00", align 1
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1808, i32 2 }
@___asan_gen_.879 = private unnamed_addr constant [8 x i8] c"axi_src\00", align 1
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 126, i32 27 }
@___asan_gen_.882 = private unnamed_addr constant [14 x i8] c"axi_div_table\00", align 1
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 266, i32 35 }
@___asan_gen_.885 = private unnamed_addr constant [21 x i8] c".compoundliteral.131\00", align 1
@___asan_gen_.886 = private unnamed_addr constant [21 x i8] c".compoundliteral.132\00", align 1
@___asan_gen_.887 = private unnamed_addr constant [21 x i8] c".compoundliteral.133\00", align 1
@___asan_gen_.888 = private unnamed_addr constant [21 x i8] c".compoundliteral.134\00", align 1
@___asan_gen_.889 = private unnamed_addr constant [21 x i8] c".compoundliteral.135\00", align 1
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1814, i32 2 }
@___asan_gen_.893 = private unnamed_addr constant [8 x i8] c"mcu_src\00", align 1
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 134, i32 27 }
@___asan_gen_.896 = private unnamed_addr constant [14 x i8] c"mcu_div_table\00", align 1
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 272, i32 35 }
@___asan_gen_.899 = private unnamed_addr constant [21 x i8] c".compoundliteral.137\00", align 1
@___asan_gen_.900 = private unnamed_addr constant [21 x i8] c".compoundliteral.138\00", align 1
@___asan_gen_.901 = private unnamed_addr constant [21 x i8] c".compoundliteral.139\00", align 1
@___asan_gen_.902 = private unnamed_addr constant [21 x i8] c".compoundliteral.140\00", align 1
@___asan_gen_.903 = private unnamed_addr constant [21 x i8] c".compoundliteral.141\00", align 1
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1820, i32 2 }
@___asan_gen_.907 = private unnamed_addr constant [14 x i8] c"apb_div_table\00", align 1
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 280, i32 35 }
@___asan_gen_.910 = private unnamed_addr constant [21 x i8] c".compoundliteral.143\00", align 1
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1823, i32 2 }
@___asan_gen_.914 = private unnamed_addr constant [21 x i8] c".compoundliteral.145\00", align 1
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1826, i32 2 }
@___asan_gen_.918 = private unnamed_addr constant [21 x i8] c".compoundliteral.147\00", align 1
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1829, i32 2 }
@___asan_gen_.922 = private unnamed_addr constant [21 x i8] c".compoundliteral.149\00", align 1
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1832, i32 2 }
@___asan_gen_.926 = private unnamed_addr constant [21 x i8] c".compoundliteral.151\00", align 1
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1836, i32 2 }
@___asan_gen_.930 = private unnamed_addr constant [21 x i8] c".compoundliteral.153\00", align 1
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1837, i32 2 }
@___asan_gen_.934 = private unnamed_addr constant [21 x i8] c".compoundliteral.155\00", align 1
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1839, i32 2 }
@___asan_gen_.938 = private unnamed_addr constant [21 x i8] c".compoundliteral.157\00", align 1
@___asan_gen_.939 = private unnamed_addr constant [21 x i8] c".compoundliteral.158\00", align 1
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1840, i32 2 }
@___asan_gen_.943 = private unnamed_addr constant [21 x i8] c".compoundliteral.160\00", align 1
@___asan_gen_.944 = private unnamed_addr constant [21 x i8] c".compoundliteral.161\00", align 1
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1841, i32 2 }
@___asan_gen_.948 = private unnamed_addr constant [21 x i8] c".compoundliteral.163\00", align 1
@___asan_gen_.949 = private unnamed_addr constant [21 x i8] c".compoundliteral.164\00", align 1
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1842, i32 2 }
@___asan_gen_.953 = private unnamed_addr constant [21 x i8] c".compoundliteral.166\00", align 1
@___asan_gen_.954 = private unnamed_addr constant [21 x i8] c".compoundliteral.167\00", align 1
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1843, i32 2 }
@___asan_gen_.958 = private unnamed_addr constant [21 x i8] c".compoundliteral.169\00", align 1
@___asan_gen_.959 = private unnamed_addr constant [21 x i8] c".compoundliteral.170\00", align 1
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1844, i32 2 }
@___asan_gen_.963 = private unnamed_addr constant [21 x i8] c".compoundliteral.172\00", align 1
@___asan_gen_.964 = private unnamed_addr constant [21 x i8] c".compoundliteral.173\00", align 1
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1845, i32 2 }
@___asan_gen_.968 = private unnamed_addr constant [21 x i8] c".compoundliteral.175\00", align 1
@___asan_gen_.969 = private unnamed_addr constant [21 x i8] c".compoundliteral.176\00", align 1
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1846, i32 2 }
@___asan_gen_.973 = private unnamed_addr constant [21 x i8] c".compoundliteral.178\00", align 1
@___asan_gen_.974 = private unnamed_addr constant [21 x i8] c".compoundliteral.179\00", align 1
@___asan_gen_.977 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1847, i32 2 }
@___asan_gen_.978 = private unnamed_addr constant [21 x i8] c".compoundliteral.181\00", align 1
@___asan_gen_.979 = private unnamed_addr constant [21 x i8] c".compoundliteral.182\00", align 1
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1848, i32 2 }
@___asan_gen_.983 = private unnamed_addr constant [21 x i8] c".compoundliteral.184\00", align 1
@___asan_gen_.984 = private unnamed_addr constant [21 x i8] c".compoundliteral.185\00", align 1
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1849, i32 2 }
@___asan_gen_.988 = private unnamed_addr constant [21 x i8] c".compoundliteral.187\00", align 1
@___asan_gen_.989 = private unnamed_addr constant [21 x i8] c".compoundliteral.188\00", align 1
@___asan_gen_.992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1850, i32 2 }
@___asan_gen_.993 = private unnamed_addr constant [21 x i8] c".compoundliteral.190\00", align 1
@___asan_gen_.994 = private unnamed_addr constant [21 x i8] c".compoundliteral.191\00", align 1
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1851, i32 2 }
@___asan_gen_.998 = private unnamed_addr constant [21 x i8] c".compoundliteral.193\00", align 1
@___asan_gen_.999 = private unnamed_addr constant [21 x i8] c".compoundliteral.194\00", align 1
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1852, i32 2 }
@___asan_gen_.1003 = private unnamed_addr constant [21 x i8] c".compoundliteral.196\00", align 1
@___asan_gen_.1004 = private unnamed_addr constant [21 x i8] c".compoundliteral.197\00", align 1
@___asan_gen_.1007 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1855, i32 2 }
@___asan_gen_.1008 = private unnamed_addr constant [13 x i8] c"per_gate_cfg\00", align 1
@___asan_gen_.1010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1502, i32 30 }
@___asan_gen_.1013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1856, i32 2 }
@___asan_gen_.1016 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1857, i32 2 }
@___asan_gen_.1019 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1858, i32 2 }
@___asan_gen_.1022 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1859, i32 2 }
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1860, i32 2 }
@___asan_gen_.1028 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1861, i32 2 }
@___asan_gen_.1031 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1862, i32 2 }
@___asan_gen_.1034 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1863, i32 2 }
@___asan_gen_.1037 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1864, i32 2 }
@___asan_gen_.1040 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1865, i32 2 }
@___asan_gen_.1043 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1866, i32 2 }
@___asan_gen_.1046 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1867, i32 2 }
@___asan_gen_.1049 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1868, i32 2 }
@___asan_gen_.1052 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1869, i32 2 }
@___asan_gen_.1055 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1870, i32 2 }
@___asan_gen_.1058 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1871, i32 2 }
@___asan_gen_.1061 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1872, i32 2 }
@___asan_gen_.1064 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1873, i32 2 }
@___asan_gen_.1067 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1874, i32 2 }
@___asan_gen_.1070 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1875, i32 2 }
@___asan_gen_.1073 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1876, i32 2 }
@___asan_gen_.1076 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1877, i32 2 }
@___asan_gen_.1079 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1878, i32 2 }
@___asan_gen_.1082 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1879, i32 2 }
@___asan_gen_.1085 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1880, i32 2 }
@___asan_gen_.1088 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1881, i32 2 }
@___asan_gen_.1091 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1882, i32 2 }
@___asan_gen_.1094 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1883, i32 2 }
@___asan_gen_.1097 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1884, i32 2 }
@___asan_gen_.1100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1885, i32 2 }
@___asan_gen_.1103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1886, i32 2 }
@___asan_gen_.1106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1887, i32 2 }
@___asan_gen_.1109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1888, i32 2 }
@___asan_gen_.1112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1889, i32 2 }
@___asan_gen_.1115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1890, i32 2 }
@___asan_gen_.1118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1891, i32 2 }
@___asan_gen_.1121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1892, i32 2 }
@___asan_gen_.1124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1893, i32 2 }
@___asan_gen_.1127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1894, i32 2 }
@___asan_gen_.1130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1895, i32 2 }
@___asan_gen_.1133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1896, i32 2 }
@___asan_gen_.1136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1897, i32 2 }
@___asan_gen_.1139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1898, i32 2 }
@___asan_gen_.1142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1899, i32 2 }
@___asan_gen_.1145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1900, i32 2 }
@___asan_gen_.1148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1901, i32 2 }
@___asan_gen_.1151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1902, i32 2 }
@___asan_gen_.1154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1903, i32 2 }
@___asan_gen_.1157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1904, i32 2 }
@___asan_gen_.1160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1905, i32 2 }
@___asan_gen_.1163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1906, i32 2 }
@___asan_gen_.1166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1907, i32 2 }
@___asan_gen_.1169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1908, i32 2 }
@___asan_gen_.1172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1909, i32 2 }
@___asan_gen_.1175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1910, i32 2 }
@___asan_gen_.1178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1911, i32 2 }
@___asan_gen_.1181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1912, i32 2 }
@___asan_gen_.1184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1913, i32 2 }
@___asan_gen_.1187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1914, i32 2 }
@___asan_gen_.1190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1916, i32 2 }
@___asan_gen_.1193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1917, i32 2 }
@___asan_gen_.1196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1918, i32 2 }
@___asan_gen_.1199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1919, i32 2 }
@___asan_gen_.1202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1920, i32 2 }
@___asan_gen_.1205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1921, i32 2 }
@___asan_gen_.1208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1922, i32 2 }
@___asan_gen_.1211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1923, i32 2 }
@___asan_gen_.1214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1924, i32 2 }
@___asan_gen_.1217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1925, i32 2 }
@___asan_gen_.1220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1926, i32 2 }
@___asan_gen_.1223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1927, i32 2 }
@___asan_gen_.1226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1928, i32 2 }
@___asan_gen_.1229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1929, i32 2 }
@___asan_gen_.1232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1930, i32 2 }
@___asan_gen_.1235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1931, i32 2 }
@___asan_gen_.1238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1932, i32 2 }
@___asan_gen_.1241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1933, i32 2 }
@___asan_gen_.1244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1934, i32 2 }
@___asan_gen_.1247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1935, i32 2 }
@___asan_gen_.1250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1936, i32 2 }
@___asan_gen_.1253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1937, i32 2 }
@___asan_gen_.1256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1938, i32 2 }
@___asan_gen_.1259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1939, i32 2 }
@___asan_gen_.1262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1940, i32 2 }
@___asan_gen_.1265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1941, i32 2 }
@___asan_gen_.1268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1942, i32 2 }
@___asan_gen_.1271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1943, i32 2 }
@___asan_gen_.1274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1944, i32 2 }
@___asan_gen_.1277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1945, i32 2 }
@___asan_gen_.1280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1946, i32 2 }
@___asan_gen_.1283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1947, i32 2 }
@___asan_gen_.1286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1948, i32 2 }
@___asan_gen_.1289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1949, i32 2 }
@___asan_gen_.1292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1950, i32 2 }
@___asan_gen_.1295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1951, i32 2 }
@___asan_gen_.1298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1952, i32 2 }
@___asan_gen_.1301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1953, i32 2 }
@___asan_gen_.1304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1954, i32 2 }
@___asan_gen_.1307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1955, i32 2 }
@___asan_gen_.1310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1956, i32 2 }
@___asan_gen_.1313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1957, i32 2 }
@___asan_gen_.1316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1958, i32 2 }
@___asan_gen_.1319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1959, i32 2 }
@___asan_gen_.1322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1960, i32 2 }
@___asan_gen_.1325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1961, i32 2 }
@___asan_gen_.1328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1962, i32 2 }
@___asan_gen_.1331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1963, i32 2 }
@___asan_gen_.1334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1966, i32 2 }
@___asan_gen_.1335 = private unnamed_addr constant [12 x i8] c"sdmmc12_src\00", align 1
@___asan_gen_.1337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 138, i32 27 }
@___asan_gen_.1338 = private unnamed_addr constant [12 x i8] c"ker_mux_cfg\00", align 1
@___asan_gen_.1340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1687, i32 35 }
@___asan_gen_.1341 = private unnamed_addr constant [21 x i8] c".compoundliteral.307\00", align 1
@___asan_gen_.1344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1967, i32 2 }
@___asan_gen_.1345 = private unnamed_addr constant [21 x i8] c".compoundliteral.309\00", align 1
@___asan_gen_.1348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1968, i32 2 }
@___asan_gen_.1349 = private unnamed_addr constant [11 x i8] c"sdmmc3_src\00", align 1
@___asan_gen_.1351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 142, i32 27 }
@___asan_gen_.1352 = private unnamed_addr constant [21 x i8] c".compoundliteral.311\00", align 1
@___asan_gen_.1355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1969, i32 2 }
@___asan_gen_.1356 = private unnamed_addr constant [8 x i8] c"fmc_src\00", align 1
@___asan_gen_.1358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 146, i32 27 }
@___asan_gen_.1359 = private unnamed_addr constant [21 x i8] c".compoundliteral.313\00", align 1
@___asan_gen_.1362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1970, i32 2 }
@___asan_gen_.1363 = private unnamed_addr constant [9 x i8] c"qspi_src\00", align 1
@___asan_gen_.1365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 150, i32 27 }
@___asan_gen_.1366 = private unnamed_addr constant [21 x i8] c".compoundliteral.315\00", align 1
@___asan_gen_.1369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1971, i32 2 }
@___asan_gen_.1370 = private unnamed_addr constant [8 x i8] c"rng_src\00", align 1
@___asan_gen_.1372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 158, i32 27 }
@___asan_gen_.1373 = private unnamed_addr constant [21 x i8] c".compoundliteral.317\00", align 1
@___asan_gen_.1376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1972, i32 2 }
@___asan_gen_.1377 = private unnamed_addr constant [21 x i8] c".compoundliteral.319\00", align 1
@___asan_gen_.1380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1973, i32 2 }
@___asan_gen_.1381 = private unnamed_addr constant [11 x i8] c"usbphy_src\00", align 1
@___asan_gen_.1383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 162, i32 27 }
@___asan_gen_.1384 = private unnamed_addr constant [21 x i8] c".compoundliteral.321\00", align 1
@___asan_gen_.1387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1974, i32 2 }
@___asan_gen_.1388 = private unnamed_addr constant [10 x i8] c"stgen_src\00", align 1
@___asan_gen_.1390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 170, i32 27 }
@___asan_gen_.1391 = private unnamed_addr constant [21 x i8] c".compoundliteral.323\00", align 1
@___asan_gen_.1394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1975, i32 2 }
@___asan_gen_.1395 = private unnamed_addr constant [10 x i8] c"spdif_src\00", align 1
@___asan_gen_.1397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 174, i32 27 }
@___asan_gen_.1398 = private unnamed_addr constant [21 x i8] c".compoundliteral.325\00", align 1
@___asan_gen_.1401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1976, i32 2 }
@___asan_gen_.1402 = private unnamed_addr constant [11 x i8] c"spi123_src\00", align 1
@___asan_gen_.1404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 178, i32 27 }
@___asan_gen_.1405 = private unnamed_addr constant [21 x i8] c".compoundliteral.327\00", align 1
@___asan_gen_.1408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1977, i32 2 }
@___asan_gen_.1409 = private unnamed_addr constant [21 x i8] c".compoundliteral.329\00", align 1
@___asan_gen_.1412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1978, i32 2 }
@___asan_gen_.1413 = private unnamed_addr constant [21 x i8] c".compoundliteral.331\00", align 1
@___asan_gen_.1416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1979, i32 2 }
@___asan_gen_.1417 = private unnamed_addr constant [10 x i8] c"spi45_src\00", align 1
@___asan_gen_.1419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 182, i32 27 }
@___asan_gen_.1420 = private unnamed_addr constant [21 x i8] c".compoundliteral.333\00", align 1
@___asan_gen_.1423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1980, i32 2 }
@___asan_gen_.1424 = private unnamed_addr constant [21 x i8] c".compoundliteral.335\00", align 1
@___asan_gen_.1427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1981, i32 2 }
@___asan_gen_.1428 = private unnamed_addr constant [9 x i8] c"spi6_src\00", align 1
@___asan_gen_.1430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 186, i32 27 }
@___asan_gen_.1431 = private unnamed_addr constant [21 x i8] c".compoundliteral.337\00", align 1
@___asan_gen_.1434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1982, i32 2 }
@___asan_gen_.1435 = private unnamed_addr constant [8 x i8] c"cec_src\00", align 1
@___asan_gen_.1437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 190, i32 27 }
@___asan_gen_.1438 = private unnamed_addr constant [21 x i8] c".compoundliteral.339\00", align 1
@___asan_gen_.1441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1983, i32 2 }
@___asan_gen_.1442 = private unnamed_addr constant [10 x i8] c"i2c12_src\00", align 1
@___asan_gen_.1444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 194, i32 27 }
@___asan_gen_.1445 = private unnamed_addr constant [21 x i8] c".compoundliteral.341\00", align 1
@___asan_gen_.1448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1984, i32 2 }
@___asan_gen_.1449 = private unnamed_addr constant [21 x i8] c".compoundliteral.343\00", align 1
@___asan_gen_.1452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1985, i32 2 }
@___asan_gen_.1453 = private unnamed_addr constant [10 x i8] c"i2c35_src\00", align 1
@___asan_gen_.1455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 198, i32 27 }
@___asan_gen_.1456 = private unnamed_addr constant [21 x i8] c".compoundliteral.345\00", align 1
@___asan_gen_.1459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1986, i32 2 }
@___asan_gen_.1460 = private unnamed_addr constant [21 x i8] c".compoundliteral.347\00", align 1
@___asan_gen_.1463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1987, i32 2 }
@___asan_gen_.1464 = private unnamed_addr constant [10 x i8] c"i2c46_src\00", align 1
@___asan_gen_.1466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 202, i32 27 }
@___asan_gen_.1467 = private unnamed_addr constant [21 x i8] c".compoundliteral.349\00", align 1
@___asan_gen_.1470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1988, i32 2 }
@___asan_gen_.1471 = private unnamed_addr constant [21 x i8] c".compoundliteral.351\00", align 1
@___asan_gen_.1474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1989, i32 2 }
@___asan_gen_.1475 = private unnamed_addr constant [11 x i8] c"lptim1_src\00", align 1
@___asan_gen_.1477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 206, i32 27 }
@___asan_gen_.1478 = private unnamed_addr constant [21 x i8] c".compoundliteral.353\00", align 1
@___asan_gen_.1481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1990, i32 2 }
@___asan_gen_.1482 = private unnamed_addr constant [12 x i8] c"lptim23_src\00", align 1
@___asan_gen_.1484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 210, i32 27 }
@___asan_gen_.1485 = private unnamed_addr constant [21 x i8] c".compoundliteral.355\00", align 1
@___asan_gen_.1488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1991, i32 2 }
@___asan_gen_.1489 = private unnamed_addr constant [21 x i8] c".compoundliteral.357\00", align 1
@___asan_gen_.1492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1992, i32 2 }
@___asan_gen_.1493 = private unnamed_addr constant [12 x i8] c"lptim45_src\00", align 1
@___asan_gen_.1495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 214, i32 27 }
@___asan_gen_.1496 = private unnamed_addr constant [21 x i8] c".compoundliteral.359\00", align 1
@___asan_gen_.1499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1993, i32 2 }
@___asan_gen_.1500 = private unnamed_addr constant [21 x i8] c".compoundliteral.361\00", align 1
@___asan_gen_.1503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1994, i32 2 }
@___asan_gen_.1504 = private unnamed_addr constant [11 x i8] c"usart1_src\00", align 1
@___asan_gen_.1506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 218, i32 27 }
@___asan_gen_.1507 = private unnamed_addr constant [21 x i8] c".compoundliteral.363\00", align 1
@___asan_gen_.1510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1995, i32 2 }
@___asan_gen_.1511 = private unnamed_addr constant [16 x i8] c"usart234578_src\00", align 1
@___asan_gen_.1513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 222, i32 27 }
@___asan_gen_.1514 = private unnamed_addr constant [21 x i8] c".compoundliteral.365\00", align 1
@___asan_gen_.1517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1996, i32 2 }
@___asan_gen_.1518 = private unnamed_addr constant [21 x i8] c".compoundliteral.367\00", align 1
@___asan_gen_.1521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1997, i32 2 }
@___asan_gen_.1522 = private unnamed_addr constant [21 x i8] c".compoundliteral.369\00", align 1
@___asan_gen_.1525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1998, i32 2 }
@___asan_gen_.1526 = private unnamed_addr constant [21 x i8] c".compoundliteral.371\00", align 1
@___asan_gen_.1529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1999, i32 2 }
@___asan_gen_.1530 = private unnamed_addr constant [11 x i8] c"usart6_src\00", align 1
@___asan_gen_.1532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 226, i32 27 }
@___asan_gen_.1533 = private unnamed_addr constant [21 x i8] c".compoundliteral.373\00", align 1
@___asan_gen_.1536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 2000, i32 2 }
@___asan_gen_.1537 = private unnamed_addr constant [21 x i8] c".compoundliteral.375\00", align 1
@___asan_gen_.1540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 2001, i32 2 }
@___asan_gen_.1541 = private unnamed_addr constant [21 x i8] c".compoundliteral.377\00", align 1
@___asan_gen_.1544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 2002, i32 2 }
@___asan_gen_.1545 = private unnamed_addr constant [10 x i8] c"fdcan_src\00", align 1
@___asan_gen_.1547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 230, i32 27 }
@___asan_gen_.1548 = private unnamed_addr constant [21 x i8] c".compoundliteral.379\00", align 1
@___asan_gen_.1551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 2003, i32 2 }
@___asan_gen_.1552 = private unnamed_addr constant [8 x i8] c"sai_src\00", align 1
@___asan_gen_.1554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 234, i32 27 }
@___asan_gen_.1555 = private unnamed_addr constant [21 x i8] c".compoundliteral.381\00", align 1
@___asan_gen_.1558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 2004, i32 2 }
@___asan_gen_.1559 = private unnamed_addr constant [9 x i8] c"sai2_src\00", align 1
@___asan_gen_.1561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 238, i32 27 }
@___asan_gen_.1562 = private unnamed_addr constant [21 x i8] c".compoundliteral.383\00", align 1
@___asan_gen_.1565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 2005, i32 2 }
@___asan_gen_.1566 = private unnamed_addr constant [21 x i8] c".compoundliteral.385\00", align 1
@___asan_gen_.1569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 2006, i32 2 }
@___asan_gen_.1570 = private unnamed_addr constant [21 x i8] c".compoundliteral.387\00", align 1
@___asan_gen_.1573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 2007, i32 2 }
@___asan_gen_.1574 = private unnamed_addr constant [10 x i8] c"adc12_src\00", align 1
@___asan_gen_.1576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 242, i32 27 }
@___asan_gen_.1577 = private unnamed_addr constant [21 x i8] c".compoundliteral.389\00", align 1
@___asan_gen_.1580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 2008, i32 2 }
@___asan_gen_.1581 = private unnamed_addr constant [8 x i8] c"dsi_src\00", align 1
@___asan_gen_.1583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 246, i32 27 }
@___asan_gen_.1584 = private unnamed_addr constant [21 x i8] c".compoundliteral.391\00", align 1
@___asan_gen_.1587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 2009, i32 2 }
@___asan_gen_.1588 = private unnamed_addr constant [21 x i8] c".compoundliteral.393\00", align 1
@___asan_gen_.1591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 2010, i32 2 }
@___asan_gen_.1592 = private unnamed_addr constant [9 x i8] c"usbo_src\00", align 1
@___asan_gen_.1594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 166, i32 27 }
@___asan_gen_.1595 = private unnamed_addr constant [21 x i8] c".compoundliteral.395\00", align 1
@___asan_gen_.1598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 2011, i32 2 }
@___asan_gen_.1599 = private unnamed_addr constant [8 x i8] c"eth_src\00", align 1
@___asan_gen_.1601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 154, i32 27 }
@___asan_gen_.1602 = private unnamed_addr constant [21 x i8] c".compoundliteral.397\00", align 1
@___asan_gen_.1605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 2014, i32 2 }
@___asan_gen_.1608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 2015, i32 2 }
@___asan_gen_.1611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 2016, i32 2 }
@___asan_gen_.1614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 2017, i32 2 }
@___asan_gen_.1617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 2018, i32 2 }
@___asan_gen_.1620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 2020, i32 2 }
@___asan_gen_.1621 = private unnamed_addr constant [21 x i8] c".compoundliteral.404\00", align 1
@___asan_gen_.1622 = private unnamed_addr constant [21 x i8] c".compoundliteral.405\00", align 1
@___asan_gen_.1623 = private unnamed_addr constant [21 x i8] c".compoundliteral.406\00", align 1
@___asan_gen_.1626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 2027, i32 2 }
@___asan_gen_.1627 = private unnamed_addr constant [8 x i8] c"rtc_src\00", align 1
@___asan_gen_.1629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 250, i32 27 }
@___asan_gen_.1630 = private unnamed_addr constant [21 x i8] c".compoundliteral.408\00", align 1
@___asan_gen_.1631 = private unnamed_addr constant [21 x i8] c".compoundliteral.409\00", align 1
@___asan_gen_.1632 = private unnamed_addr constant [21 x i8] c".compoundliteral.410\00", align 1
@___asan_gen_.1633 = private unnamed_addr constant [16 x i8] c"rtc_div_clk_ops\00", align 1
@___asan_gen_.1635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1087, i32 29 }
@___asan_gen_.1636 = private unnamed_addr constant [21 x i8] c".compoundliteral.411\00", align 1
@___asan_gen_.1637 = private unnamed_addr constant [21 x i8] c".compoundliteral.412\00", align 1
@___asan_gen_.1638 = private unnamed_addr constant [21 x i8] c".compoundliteral.413\00", align 1
@___asan_gen_.1639 = private unnamed_addr constant [21 x i8] c".compoundliteral.414\00", align 1
@___asan_gen_.1642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 2033, i32 2 }
@___asan_gen_.1643 = private unnamed_addr constant [9 x i8] c"mco1_src\00", align 1
@___asan_gen_.1645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 254, i32 27 }
@___asan_gen_.1646 = private unnamed_addr constant [21 x i8] c".compoundliteral.416\00", align 1
@___asan_gen_.1647 = private unnamed_addr constant [21 x i8] c".compoundliteral.417\00", align 1
@___asan_gen_.1648 = private unnamed_addr constant [21 x i8] c".compoundliteral.418\00", align 1
@___asan_gen_.1649 = private unnamed_addr constant [21 x i8] c".compoundliteral.419\00", align 1
@___asan_gen_.1650 = private unnamed_addr constant [21 x i8] c".compoundliteral.420\00", align 1
@___asan_gen_.1651 = private unnamed_addr constant [21 x i8] c".compoundliteral.421\00", align 1
@___asan_gen_.1652 = private unnamed_addr constant [21 x i8] c".compoundliteral.422\00", align 1
@___asan_gen_.1655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 2039, i32 2 }
@___asan_gen_.1656 = private unnamed_addr constant [9 x i8] c"mco2_src\00", align 1
@___asan_gen_.1658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 258, i32 27 }
@___asan_gen_.1659 = private unnamed_addr constant [21 x i8] c".compoundliteral.424\00", align 1
@___asan_gen_.1660 = private unnamed_addr constant [21 x i8] c".compoundliteral.425\00", align 1
@___asan_gen_.1661 = private unnamed_addr constant [21 x i8] c".compoundliteral.426\00", align 1
@___asan_gen_.1662 = private unnamed_addr constant [21 x i8] c".compoundliteral.427\00", align 1
@___asan_gen_.1663 = private unnamed_addr constant [21 x i8] c".compoundliteral.428\00", align 1
@___asan_gen_.1664 = private unnamed_addr constant [21 x i8] c".compoundliteral.429\00", align 1
@___asan_gen_.1665 = private unnamed_addr constant [21 x i8] c".compoundliteral.430\00", align 1
@___asan_gen_.1668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 2046, i32 2 }
@___asan_gen_.1669 = private unnamed_addr constant [21 x i8] c".compoundliteral.432\00", align 1
@___asan_gen_.1672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 2049, i32 2 }
@___asan_gen_.1673 = private unnamed_addr constant [13 x i8] c"ck_trace_src\00", align 1
@___asan_gen_.1675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 262, i32 27 }
@___asan_gen_.1676 = private unnamed_addr constant [21 x i8] c".compoundliteral.434\00", align 1
@___asan_gen_.1677 = private unnamed_addr constant [21 x i8] c".compoundliteral.435\00", align 1
@___asan_gen_.1678 = private unnamed_addr constant [19 x i8] c"ck_trace_div_table\00", align 1
@___asan_gen_.1680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 286, i32 35 }
@___asan_gen_.1681 = private unnamed_addr constant [21 x i8] c".compoundliteral.436\00", align 1
@___asan_gen_.1682 = private unnamed_addr constant [21 x i8] c".compoundliteral.437\00", align 1
@___asan_gen_.1683 = private unnamed_addr constant [21 x i8] c".compoundliteral.438\00", align 1
@___asan_gen_.1684 = private unnamed_addr constant [8 x i8] c"pll_ops\00", align 1
@___asan_gen_.1686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 875, i32 29 }
@___asan_gen_.1687 = private unnamed_addr constant [14 x i8] c"timer_ker_ops\00", align 1
@___asan_gen_.1689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1013, i32 29 }
@___asan_gen_.1690 = private unnamed_addr constant [21 x i8] c".compoundliteral.439\00", align 1
@___asan_gen_.1691 = private unnamed_addr constant [10 x i8] c"mp1_mgate\00", align 1
@___asan_gen_.1693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1479, i32 27 }
@___asan_gen_.1694 = private unnamed_addr constant [18 x i8] c"mp1_mgate_clk_ops\00", align 1
@___asan_gen_.1696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 691, i32 29 }
@___asan_gen_.1697 = private unnamed_addr constant [21 x i8] c".compoundliteral.440\00", align 1
@___asan_gen_.1698 = private unnamed_addr constant [21 x i8] c".compoundliteral.441\00", align 1
@___asan_gen_.1699 = private unnamed_addr constant [21 x i8] c".compoundliteral.442\00", align 1
@___asan_gen_.1700 = private unnamed_addr constant [21 x i8] c".compoundliteral.443\00", align 1
@___asan_gen_.1701 = private unnamed_addr constant [21 x i8] c".compoundliteral.444\00", align 1
@___asan_gen_.1702 = private unnamed_addr constant [21 x i8] c".compoundliteral.445\00", align 1
@___asan_gen_.1703 = private unnamed_addr constant [21 x i8] c".compoundliteral.446\00", align 1
@___asan_gen_.1704 = private unnamed_addr constant [21 x i8] c".compoundliteral.447\00", align 1
@___asan_gen_.1705 = private unnamed_addr constant [21 x i8] c".compoundliteral.448\00", align 1
@___asan_gen_.1706 = private unnamed_addr constant [21 x i8] c".compoundliteral.449\00", align 1
@___asan_gen_.1707 = private unnamed_addr constant [21 x i8] c".compoundliteral.450\00", align 1
@___asan_gen_.1708 = private unnamed_addr constant [21 x i8] c".compoundliteral.451\00", align 1
@___asan_gen_.1709 = private unnamed_addr constant [21 x i8] c".compoundliteral.452\00", align 1
@___asan_gen_.1710 = private unnamed_addr constant [21 x i8] c".compoundliteral.453\00", align 1
@___asan_gen_.1711 = private unnamed_addr constant [21 x i8] c".compoundliteral.454\00", align 1
@___asan_gen_.1712 = private unnamed_addr constant [21 x i8] c".compoundliteral.455\00", align 1
@___asan_gen_.1713 = private unnamed_addr constant [21 x i8] c".compoundliteral.456\00", align 1
@___asan_gen_.1714 = private unnamed_addr constant [21 x i8] c".compoundliteral.457\00", align 1
@___asan_gen_.1715 = private unnamed_addr constant [21 x i8] c".compoundliteral.458\00", align 1
@___asan_gen_.1716 = private unnamed_addr constant [21 x i8] c".compoundliteral.459\00", align 1
@___asan_gen_.1717 = private unnamed_addr constant [21 x i8] c".compoundliteral.460\00", align 1
@___asan_gen_.1718 = private unnamed_addr constant [21 x i8] c".compoundliteral.461\00", align 1
@___asan_gen_.1719 = private unnamed_addr constant [21 x i8] c".compoundliteral.462\00", align 1
@___asan_gen_.1720 = private unnamed_addr constant [21 x i8] c".compoundliteral.463\00", align 1
@___asan_gen_.1721 = private unnamed_addr constant [21 x i8] c".compoundliteral.464\00", align 1
@___asan_gen_.1722 = private unnamed_addr constant [21 x i8] c".compoundliteral.465\00", align 1
@___asan_gen_.1723 = private unnamed_addr constant [21 x i8] c".compoundliteral.466\00", align 1
@___asan_gen_.1724 = private unnamed_addr constant [21 x i8] c".compoundliteral.467\00", align 1
@___asan_gen_.1725 = private unnamed_addr constant [21 x i8] c".compoundliteral.468\00", align 1
@___asan_gen_.1726 = private unnamed_addr constant [21 x i8] c".compoundliteral.469\00", align 1
@___asan_gen_.1727 = private unnamed_addr constant [21 x i8] c".compoundliteral.470\00", align 1
@___asan_gen_.1728 = private unnamed_addr constant [21 x i8] c".compoundliteral.471\00", align 1
@___asan_gen_.1729 = private unnamed_addr constant [21 x i8] c".compoundliteral.472\00", align 1
@___asan_gen_.1730 = private unnamed_addr constant [21 x i8] c".compoundliteral.473\00", align 1
@___asan_gen_.1731 = private unnamed_addr constant [21 x i8] c".compoundliteral.474\00", align 1
@___asan_gen_.1732 = private unnamed_addr constant [21 x i8] c".compoundliteral.475\00", align 1
@___asan_gen_.1733 = private unnamed_addr constant [21 x i8] c".compoundliteral.476\00", align 1
@___asan_gen_.1734 = private unnamed_addr constant [21 x i8] c".compoundliteral.477\00", align 1
@___asan_gen_.1735 = private unnamed_addr constant [21 x i8] c".compoundliteral.478\00", align 1
@___asan_gen_.1736 = private unnamed_addr constant [21 x i8] c".compoundliteral.479\00", align 1
@___asan_gen_.1737 = private unnamed_addr constant [21 x i8] c".compoundliteral.480\00", align 1
@___asan_gen_.1738 = private unnamed_addr constant [21 x i8] c".compoundliteral.481\00", align 1
@___asan_gen_.1739 = private unnamed_addr constant [21 x i8] c".compoundliteral.482\00", align 1
@___asan_gen_.1740 = private unnamed_addr constant [21 x i8] c".compoundliteral.483\00", align 1
@___asan_gen_.1741 = private unnamed_addr constant [21 x i8] c".compoundliteral.484\00", align 1
@___asan_gen_.1742 = private unnamed_addr constant [21 x i8] c".compoundliteral.485\00", align 1
@___asan_gen_.1743 = private unnamed_addr constant [21 x i8] c".compoundliteral.486\00", align 1
@___asan_gen_.1744 = private unnamed_addr constant [21 x i8] c".compoundliteral.487\00", align 1
@___asan_gen_.1745 = private unnamed_addr constant [21 x i8] c".compoundliteral.488\00", align 1
@___asan_gen_.1746 = private unnamed_addr constant [21 x i8] c".compoundliteral.489\00", align 1
@___asan_gen_.1747 = private unnamed_addr constant [21 x i8] c".compoundliteral.490\00", align 1
@___asan_gen_.1748 = private unnamed_addr constant [21 x i8] c".compoundliteral.491\00", align 1
@___asan_gen_.1749 = private unnamed_addr constant [21 x i8] c".compoundliteral.492\00", align 1
@___asan_gen_.1750 = private unnamed_addr constant [21 x i8] c".compoundliteral.493\00", align 1
@___asan_gen_.1751 = private unnamed_addr constant [21 x i8] c".compoundliteral.494\00", align 1
@___asan_gen_.1752 = private unnamed_addr constant [21 x i8] c".compoundliteral.495\00", align 1
@___asan_gen_.1753 = private unnamed_addr constant [21 x i8] c".compoundliteral.496\00", align 1
@___asan_gen_.1754 = private unnamed_addr constant [21 x i8] c".compoundliteral.497\00", align 1
@___asan_gen_.1755 = private unnamed_addr constant [21 x i8] c".compoundliteral.498\00", align 1
@___asan_gen_.1756 = private unnamed_addr constant [21 x i8] c".compoundliteral.499\00", align 1
@___asan_gen_.1757 = private unnamed_addr constant [21 x i8] c".compoundliteral.500\00", align 1
@___asan_gen_.1758 = private unnamed_addr constant [21 x i8] c".compoundliteral.501\00", align 1
@___asan_gen_.1759 = private unnamed_addr constant [21 x i8] c".compoundliteral.502\00", align 1
@___asan_gen_.1760 = private unnamed_addr constant [21 x i8] c".compoundliteral.503\00", align 1
@___asan_gen_.1761 = private unnamed_addr constant [21 x i8] c".compoundliteral.504\00", align 1
@___asan_gen_.1762 = private unnamed_addr constant [21 x i8] c".compoundliteral.505\00", align 1
@___asan_gen_.1763 = private unnamed_addr constant [21 x i8] c".compoundliteral.506\00", align 1
@___asan_gen_.1764 = private unnamed_addr constant [21 x i8] c".compoundliteral.507\00", align 1
@___asan_gen_.1765 = private unnamed_addr constant [21 x i8] c".compoundliteral.508\00", align 1
@___asan_gen_.1766 = private unnamed_addr constant [21 x i8] c".compoundliteral.509\00", align 1
@___asan_gen_.1767 = private unnamed_addr constant [21 x i8] c".compoundliteral.510\00", align 1
@___asan_gen_.1768 = private unnamed_addr constant [21 x i8] c".compoundliteral.511\00", align 1
@___asan_gen_.1769 = private unnamed_addr constant [21 x i8] c".compoundliteral.512\00", align 1
@___asan_gen_.1770 = private unnamed_addr constant [21 x i8] c".compoundliteral.513\00", align 1
@___asan_gen_.1771 = private unnamed_addr constant [21 x i8] c".compoundliteral.514\00", align 1
@___asan_gen_.1772 = private unnamed_addr constant [21 x i8] c".compoundliteral.515\00", align 1
@___asan_gen_.1773 = private unnamed_addr constant [21 x i8] c".compoundliteral.516\00", align 1
@___asan_gen_.1774 = private unnamed_addr constant [21 x i8] c".compoundliteral.517\00", align 1
@___asan_gen_.1775 = private unnamed_addr constant [21 x i8] c".compoundliteral.518\00", align 1
@___asan_gen_.1776 = private unnamed_addr constant [21 x i8] c".compoundliteral.519\00", align 1
@___asan_gen_.1777 = private unnamed_addr constant [21 x i8] c".compoundliteral.520\00", align 1
@___asan_gen_.1778 = private unnamed_addr constant [21 x i8] c".compoundliteral.521\00", align 1
@___asan_gen_.1779 = private unnamed_addr constant [21 x i8] c".compoundliteral.522\00", align 1
@___asan_gen_.1780 = private unnamed_addr constant [21 x i8] c".compoundliteral.523\00", align 1
@___asan_gen_.1781 = private unnamed_addr constant [21 x i8] c".compoundliteral.524\00", align 1
@___asan_gen_.1782 = private unnamed_addr constant [21 x i8] c".compoundliteral.525\00", align 1
@___asan_gen_.1783 = private unnamed_addr constant [21 x i8] c".compoundliteral.526\00", align 1
@___asan_gen_.1784 = private unnamed_addr constant [21 x i8] c".compoundliteral.527\00", align 1
@___asan_gen_.1785 = private unnamed_addr constant [21 x i8] c".compoundliteral.528\00", align 1
@___asan_gen_.1786 = private unnamed_addr constant [21 x i8] c".compoundliteral.529\00", align 1
@___asan_gen_.1787 = private unnamed_addr constant [21 x i8] c".compoundliteral.530\00", align 1
@___asan_gen_.1788 = private unnamed_addr constant [21 x i8] c".compoundliteral.531\00", align 1
@___asan_gen_.1789 = private unnamed_addr constant [21 x i8] c".compoundliteral.532\00", align 1
@___asan_gen_.1790 = private unnamed_addr constant [21 x i8] c".compoundliteral.533\00", align 1
@___asan_gen_.1791 = private unnamed_addr constant [21 x i8] c".compoundliteral.534\00", align 1
@___asan_gen_.1792 = private unnamed_addr constant [21 x i8] c".compoundliteral.535\00", align 1
@___asan_gen_.1793 = private unnamed_addr constant [21 x i8] c".compoundliteral.536\00", align 1
@___asan_gen_.1794 = private unnamed_addr constant [21 x i8] c".compoundliteral.537\00", align 1
@___asan_gen_.1795 = private unnamed_addr constant [21 x i8] c".compoundliteral.538\00", align 1
@___asan_gen_.1796 = private unnamed_addr constant [21 x i8] c".compoundliteral.539\00", align 1
@___asan_gen_.1797 = private unnamed_addr constant [21 x i8] c".compoundliteral.540\00", align 1
@___asan_gen_.1798 = private unnamed_addr constant [21 x i8] c".compoundliteral.541\00", align 1
@___asan_gen_.1799 = private unnamed_addr constant [21 x i8] c".compoundliteral.542\00", align 1
@___asan_gen_.1800 = private unnamed_addr constant [21 x i8] c".compoundliteral.543\00", align 1
@___asan_gen_.1801 = private unnamed_addr constant [21 x i8] c".compoundliteral.544\00", align 1
@___asan_gen_.1802 = private unnamed_addr constant [21 x i8] c".compoundliteral.545\00", align 1
@___asan_gen_.1803 = private unnamed_addr constant [21 x i8] c".compoundliteral.546\00", align 1
@___asan_gen_.1804 = private unnamed_addr constant [21 x i8] c".compoundliteral.547\00", align 1
@___asan_gen_.1805 = private unnamed_addr constant [21 x i8] c".compoundliteral.548\00", align 1
@___asan_gen_.1806 = private unnamed_addr constant [21 x i8] c".compoundliteral.549\00", align 1
@___asan_gen_.1807 = private unnamed_addr constant [8 x i8] c"ker_mux\00", align 1
@___asan_gen_.1809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 1664, i32 26 }
@___asan_gen_.1810 = private unnamed_addr constant [13 x i8] c"clk_mmux_ops\00", align 1
@___asan_gen_.1812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 725, i32 29 }
@___asan_gen_.1813 = private unnamed_addr constant [21 x i8] c".compoundliteral.550\00", align 1
@___asan_gen_.1814 = private unnamed_addr constant [21 x i8] c".compoundliteral.551\00", align 1
@___asan_gen_.1815 = private unnamed_addr constant [21 x i8] c".compoundliteral.552\00", align 1
@___asan_gen_.1816 = private unnamed_addr constant [21 x i8] c".compoundliteral.553\00", align 1
@___asan_gen_.1817 = private unnamed_addr constant [21 x i8] c".compoundliteral.554\00", align 1
@___asan_gen_.1818 = private unnamed_addr constant [21 x i8] c".compoundliteral.555\00", align 1
@___asan_gen_.1819 = private unnamed_addr constant [21 x i8] c".compoundliteral.556\00", align 1
@___asan_gen_.1820 = private unnamed_addr constant [21 x i8] c".compoundliteral.557\00", align 1
@___asan_gen_.1821 = private unnamed_addr constant [21 x i8] c".compoundliteral.558\00", align 1
@___asan_gen_.1822 = private unnamed_addr constant [21 x i8] c".compoundliteral.559\00", align 1
@___asan_gen_.1823 = private unnamed_addr constant [21 x i8] c".compoundliteral.560\00", align 1
@___asan_gen_.1824 = private unnamed_addr constant [21 x i8] c".compoundliteral.561\00", align 1
@___asan_gen_.1825 = private unnamed_addr constant [21 x i8] c".compoundliteral.562\00", align 1
@___asan_gen_.1826 = private unnamed_addr constant [21 x i8] c".compoundliteral.563\00", align 1
@___asan_gen_.1827 = private unnamed_addr constant [21 x i8] c".compoundliteral.564\00", align 1
@___asan_gen_.1828 = private unnamed_addr constant [21 x i8] c".compoundliteral.565\00", align 1
@___asan_gen_.1829 = private unnamed_addr constant [21 x i8] c".compoundliteral.566\00", align 1
@___asan_gen_.1830 = private unnamed_addr constant [21 x i8] c".compoundliteral.567\00", align 1
@___asan_gen_.1831 = private unnamed_addr constant [21 x i8] c".compoundliteral.568\00", align 1
@___asan_gen_.1832 = private unnamed_addr constant [21 x i8] c".compoundliteral.569\00", align 1
@___asan_gen_.1833 = private unnamed_addr constant [21 x i8] c".compoundliteral.570\00", align 1
@___asan_gen_.1834 = private unnamed_addr constant [21 x i8] c".compoundliteral.571\00", align 1
@___asan_gen_.1835 = private unnamed_addr constant [21 x i8] c".compoundliteral.572\00", align 1
@___asan_gen_.1836 = private unnamed_addr constant [21 x i8] c".compoundliteral.573\00", align 1
@___asan_gen_.1837 = private unnamed_addr constant [21 x i8] c".compoundliteral.574\00", align 1
@___asan_gen_.1838 = private unnamed_addr constant [21 x i8] c".compoundliteral.575\00", align 1
@___asan_gen_.1839 = private unnamed_addr constant [21 x i8] c".compoundliteral.576\00", align 1
@___asan_gen_.1840 = private unnamed_addr constant [21 x i8] c".compoundliteral.577\00", align 1
@___asan_gen_.1841 = private unnamed_addr constant [21 x i8] c".compoundliteral.578\00", align 1
@___asan_gen_.1842 = private unnamed_addr constant [21 x i8] c".compoundliteral.579\00", align 1
@___asan_gen_.1843 = private unnamed_addr constant [21 x i8] c".compoundliteral.580\00", align 1
@___asan_gen_.1844 = private unnamed_addr constant [21 x i8] c".compoundliteral.581\00", align 1
@___asan_gen_.1845 = private unnamed_addr constant [21 x i8] c".compoundliteral.582\00", align 1
@___asan_gen_.1846 = private unnamed_addr constant [21 x i8] c".compoundliteral.583\00", align 1
@___asan_gen_.1849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 179, i32 22 }
@___asan_gen_.1852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 239, i32 44 }
@___asan_gen_.1855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 247, i32 2 }
@___asan_gen_.1858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 167, i32 12 }
@___asan_gen_.1859 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 251, i32 2 }
@___asan_gen_.1862 = private unnamed_addr constant [23 x i8] c"stm32mp1_clock_secured\00", align 1
@___asan_gen_.1863 = private constant [30 x i8] c"../drivers/clk/clk-stm32mp1.c\00", align 1
@___asan_gen_.1864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1863, i32 2055, i32 18 }
@llvm.compiler.used = appending global [661 x ptr] [ptr @__initcall__kmod_clk_stm32mp1__183_2429_stm32mp1_clocks_init1, ptr @stm32_rcc_clock_init._entry, ptr @stm32_rcc_clock_init._entry_ptr, ptr @stm32_rcc_init._entry, ptr @stm32_rcc_init._entry.13, ptr @stm32_rcc_init._entry.16, ptr @stm32_rcc_init._entry_ptr, ptr @stm32_rcc_init._entry_ptr.15, ptr @stm32_rcc_init._entry_ptr.18, ptr @stm32_register_hw_clk._entry, ptr @stm32_register_hw_clk._entry_ptr, ptr @stm32mp1_rcc_init._entry, ptr @stm32mp1_rcc_init._entry_ptr, ptr @stm32mp1_rcc_clocks_driver, ptr @.str, ptr @stm32mp1_match_data, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @stm32_rcc_reset_init.__key, ptr @.str.19, ptr @stm32_reset_ops, ptr @rlock, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @stm32mp1_data, ptr @stm32mp1_data_secure, ptr @stm32mp1_clock_cfg, ptr @.str.25, ptr @.str.26, ptr @.compoundliteral, ptr @mp1_gate_clk_ops, ptr @.compoundliteral.27, ptr @.str.28, ptr @.str.29, ptr @.compoundliteral.30, ptr @.compoundliteral.31, ptr @.str.32, ptr @.str.33, ptr @.compoundliteral.34, ptr @.compoundliteral.35, ptr @.compoundliteral.36, ptr @.compoundliteral.37, ptr @.compoundliteral.38, ptr @.compoundliteral.39, ptr @.str.40, ptr @.str.41, ptr @.compoundliteral.42, ptr @.str.43, ptr @.str.44, ptr @.compoundliteral.45, ptr @.str.46, ptr @.compoundliteral.47, ptr @.str.48, ptr @ref12_parents, ptr @.compoundliteral.49, ptr @.str.50, ptr @.compoundliteral.51, ptr @.str.52, ptr @ref3_parents, ptr @.compoundliteral.53, ptr @.str.54, ptr @ref4_parents, ptr @.compoundliteral.55, ptr @.str.56, ptr @.compoundliteral.57, ptr @.compoundliteral.58, ptr @.compoundliteral.59, ptr @.compoundliteral.60, ptr @.compoundliteral.61, ptr @.compoundliteral.62, ptr @.str.63, ptr @.compoundliteral.64, ptr @.compoundliteral.65, ptr @.compoundliteral.66, ptr @.compoundliteral.67, ptr @.compoundliteral.68, ptr @.compoundliteral.69, ptr @.str.70, ptr @.compoundliteral.71, ptr @.compoundliteral.72, ptr @.compoundliteral.73, ptr @.compoundliteral.74, ptr @.compoundliteral.75, ptr @.compoundliteral.76, ptr @.str.77, ptr @.compoundliteral.78, ptr @.compoundliteral.79, ptr @.compoundliteral.80, ptr @.compoundliteral.81, ptr @.compoundliteral.82, ptr @.compoundliteral.83, ptr @.str.84, ptr @.compoundliteral.85, ptr @.compoundliteral.86, ptr @.compoundliteral.87, ptr @.compoundliteral.88, ptr @.compoundliteral.89, ptr @.compoundliteral.90, ptr @.str.91, ptr @.compoundliteral.92, ptr @.compoundliteral.93, ptr @.compoundliteral.94, ptr @.compoundliteral.95, ptr @.compoundliteral.96, ptr @.compoundliteral.97, ptr @.str.98, ptr @.compoundliteral.99, ptr @.compoundliteral.100, ptr @.compoundliteral.101, ptr @.compoundliteral.102, ptr @.compoundliteral.103, ptr @.compoundliteral.104, ptr @.str.105, ptr @.compoundliteral.106, ptr @.compoundliteral.107, ptr @.compoundliteral.108, ptr @.compoundliteral.109, ptr @.compoundliteral.110, ptr @.compoundliteral.111, ptr @.str.112, ptr @.compoundliteral.113, ptr @.compoundliteral.114, ptr @.compoundliteral.115, ptr @.compoundliteral.116, ptr @.compoundliteral.117, ptr @.compoundliteral.118, ptr @.str.119, ptr @.compoundliteral.120, ptr @.compoundliteral.121, ptr @.compoundliteral.122, ptr @.compoundliteral.123, ptr @.compoundliteral.124, ptr @.compoundliteral.125, ptr @.str.126, ptr @per_src, ptr @.compoundliteral.127, ptr @.str.128, ptr @cpu_src, ptr @.compoundliteral.129, ptr @.str.130, ptr @axi_src, ptr @axi_div_table, ptr @.compoundliteral.131, ptr @.compoundliteral.132, ptr @.compoundliteral.133, ptr @.compoundliteral.134, ptr @.compoundliteral.135, ptr @.str.136, ptr @mcu_src, ptr @mcu_div_table, ptr @.compoundliteral.137, ptr @.compoundliteral.138, ptr @.compoundliteral.139, ptr @.compoundliteral.140, ptr @.compoundliteral.141, ptr @.str.142, ptr @apb_div_table, ptr @.compoundliteral.143, ptr @.str.144, ptr @.compoundliteral.145, ptr @.str.146, ptr @.compoundliteral.147, ptr @.str.148, ptr @.compoundliteral.149, ptr @.str.150, ptr @.compoundliteral.151, ptr @.str.152, ptr @.compoundliteral.153, ptr @.str.154, ptr @.compoundliteral.155, ptr @.str.156, ptr @.compoundliteral.157, ptr @.compoundliteral.158, ptr @.str.159, ptr @.compoundliteral.160, ptr @.compoundliteral.161, ptr @.str.162, ptr @.compoundliteral.163, ptr @.compoundliteral.164, ptr @.str.165, ptr @.compoundliteral.166, ptr @.compoundliteral.167, ptr @.str.168, ptr @.compoundliteral.169, ptr @.compoundliteral.170, ptr @.str.171, ptr @.compoundliteral.172, ptr @.compoundliteral.173, ptr @.str.174, ptr @.compoundliteral.175, ptr @.compoundliteral.176, ptr @.str.177, ptr @.compoundliteral.178, ptr @.compoundliteral.179, ptr @.str.180, ptr @.compoundliteral.181, ptr @.compoundliteral.182, ptr @.str.183, ptr @.compoundliteral.184, ptr @.compoundliteral.185, ptr @.str.186, ptr @.compoundliteral.187, ptr @.compoundliteral.188, ptr @.str.189, ptr @.compoundliteral.190, ptr @.compoundliteral.191, ptr @.str.192, ptr @.compoundliteral.193, ptr @.compoundliteral.194, ptr @.str.195, ptr @.compoundliteral.196, ptr @.compoundliteral.197, ptr @.str.198, ptr @per_gate_cfg, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @.str.282, ptr @.str.283, ptr @.str.284, ptr @.str.285, ptr @.str.286, ptr @.str.287, ptr @.str.288, ptr @.str.289, ptr @.str.290, ptr @.str.291, ptr @.str.292, ptr @.str.293, ptr @.str.294, ptr @.str.295, ptr @.str.296, ptr @.str.297, ptr @.str.298, ptr @.str.299, ptr @.str.300, ptr @.str.301, ptr @.str.302, ptr @.str.303, ptr @.str.304, ptr @.str.305, ptr @.str.306, ptr @sdmmc12_src, ptr @ker_mux_cfg, ptr @.compoundliteral.307, ptr @.str.308, ptr @.compoundliteral.309, ptr @.str.310, ptr @sdmmc3_src, ptr @.compoundliteral.311, ptr @.str.312, ptr @fmc_src, ptr @.compoundliteral.313, ptr @.str.314, ptr @qspi_src, ptr @.compoundliteral.315, ptr @.str.316, ptr @rng_src, ptr @.compoundliteral.317, ptr @.str.318, ptr @.compoundliteral.319, ptr @.str.320, ptr @usbphy_src, ptr @.compoundliteral.321, ptr @.str.322, ptr @stgen_src, ptr @.compoundliteral.323, ptr @.str.324, ptr @spdif_src, ptr @.compoundliteral.325, ptr @.str.326, ptr @spi123_src, ptr @.compoundliteral.327, ptr @.str.328, ptr @.compoundliteral.329, ptr @.str.330, ptr @.compoundliteral.331, ptr @.str.332, ptr @spi45_src, ptr @.compoundliteral.333, ptr @.str.334, ptr @.compoundliteral.335, ptr @.str.336, ptr @spi6_src, ptr @.compoundliteral.337, ptr @.str.338, ptr @cec_src, ptr @.compoundliteral.339, ptr @.str.340, ptr @i2c12_src, ptr @.compoundliteral.341, ptr @.str.342, ptr @.compoundliteral.343, ptr @.str.344, ptr @i2c35_src, ptr @.compoundliteral.345, ptr @.str.346, ptr @.compoundliteral.347, ptr @.str.348, ptr @i2c46_src, ptr @.compoundliteral.349, ptr @.str.350, ptr @.compoundliteral.351, ptr @.str.352, ptr @lptim1_src, ptr @.compoundliteral.353, ptr @.str.354, ptr @lptim23_src, ptr @.compoundliteral.355, ptr @.str.356, ptr @.compoundliteral.357, ptr @.str.358, ptr @lptim45_src, ptr @.compoundliteral.359, ptr @.str.360, ptr @.compoundliteral.361, ptr @.str.362, ptr @usart1_src, ptr @.compoundliteral.363, ptr @.str.364, ptr @usart234578_src, ptr @.compoundliteral.365, ptr @.str.366, ptr @.compoundliteral.367, ptr @.str.368, ptr @.compoundliteral.369, ptr @.str.370, ptr @.compoundliteral.371, ptr @.str.372, ptr @usart6_src, ptr @.compoundliteral.373, ptr @.str.374, ptr @.compoundliteral.375, ptr @.str.376, ptr @.compoundliteral.377, ptr @.str.378, ptr @fdcan_src, ptr @.compoundliteral.379, ptr @.str.380, ptr @sai_src, ptr @.compoundliteral.381, ptr @.str.382, ptr @sai2_src, ptr @.compoundliteral.383, ptr @.str.384, ptr @.compoundliteral.385, ptr @.str.386, ptr @.compoundliteral.387, ptr @.str.388, ptr @adc12_src, ptr @.compoundliteral.389, ptr @.str.390, ptr @dsi_src, ptr @.compoundliteral.391, ptr @.str.392, ptr @.compoundliteral.393, ptr @.str.394, ptr @usbo_src, ptr @.compoundliteral.395, ptr @.str.396, ptr @eth_src, ptr @.compoundliteral.397, ptr @.str.398, ptr @.str.399, ptr @.str.400, ptr @.str.401, ptr @.str.402, ptr @.str.403, ptr @.compoundliteral.404, ptr @.compoundliteral.405, ptr @.compoundliteral.406, ptr @.str.407, ptr @rtc_src, ptr @.compoundliteral.408, ptr @.compoundliteral.409, ptr @.compoundliteral.410, ptr @rtc_div_clk_ops, ptr @.compoundliteral.411, ptr @.compoundliteral.412, ptr @.compoundliteral.413, ptr @.compoundliteral.414, ptr @.str.415, ptr @mco1_src, ptr @.compoundliteral.416, ptr @.compoundliteral.417, ptr @.compoundliteral.418, ptr @.compoundliteral.419, ptr @.compoundliteral.420, ptr @.compoundliteral.421, ptr @.compoundliteral.422, ptr @.str.423, ptr @mco2_src, ptr @.compoundliteral.424, ptr @.compoundliteral.425, ptr @.compoundliteral.426, ptr @.compoundliteral.427, ptr @.compoundliteral.428, ptr @.compoundliteral.429, ptr @.compoundliteral.430, ptr @.str.431, ptr @.compoundliteral.432, ptr @.str.433, ptr @ck_trace_src, ptr @.compoundliteral.434, ptr @.compoundliteral.435, ptr @ck_trace_div_table, ptr @.compoundliteral.436, ptr @.compoundliteral.437, ptr @.compoundliteral.438, ptr @pll_ops, ptr @timer_ker_ops, ptr @.compoundliteral.439, ptr @mp1_mgate, ptr @mp1_mgate_clk_ops, ptr @.compoundliteral.440, ptr @.compoundliteral.441, ptr @.compoundliteral.442, ptr @.compoundliteral.443, ptr @.compoundliteral.444, ptr @.compoundliteral.445, ptr @.compoundliteral.446, ptr @.compoundliteral.447, ptr @.compoundliteral.448, ptr @.compoundliteral.449, ptr @.compoundliteral.450, ptr @.compoundliteral.451, ptr @.compoundliteral.452, ptr @.compoundliteral.453, ptr @.compoundliteral.454, ptr @.compoundliteral.455, ptr @.compoundliteral.456, ptr @.compoundliteral.457, ptr @.compoundliteral.458, ptr @.compoundliteral.459, ptr @.compoundliteral.460, ptr @.compoundliteral.461, ptr @.compoundliteral.462, ptr @.compoundliteral.463, ptr @.compoundliteral.464, ptr @.compoundliteral.465, ptr @.compoundliteral.466, ptr @.compoundliteral.467, ptr @.compoundliteral.468, ptr @.compoundliteral.469, ptr @.compoundliteral.470, ptr @.compoundliteral.471, ptr @.compoundliteral.472, ptr @.compoundliteral.473, ptr @.compoundliteral.474, ptr @.compoundliteral.475, ptr @.compoundliteral.476, ptr @.compoundliteral.477, ptr @.compoundliteral.478, ptr @.compoundliteral.479, ptr @.compoundliteral.480, ptr @.compoundliteral.481, ptr @.compoundliteral.482, ptr @.compoundliteral.483, ptr @.compoundliteral.484, ptr @.compoundliteral.485, ptr @.compoundliteral.486, ptr @.compoundliteral.487, ptr @.compoundliteral.488, ptr @.compoundliteral.489, ptr @.compoundliteral.490, ptr @.compoundliteral.491, ptr @.compoundliteral.492, ptr @.compoundliteral.493, ptr @.compoundliteral.494, ptr @.compoundliteral.495, ptr @.compoundliteral.496, ptr @.compoundliteral.497, ptr @.compoundliteral.498, ptr @.compoundliteral.499, ptr @.compoundliteral.500, ptr @.compoundliteral.501, ptr @.compoundliteral.502, ptr @.compoundliteral.503, ptr @.compoundliteral.504, ptr @.compoundliteral.505, ptr @.compoundliteral.506, ptr @.compoundliteral.507, ptr @.compoundliteral.508, ptr @.compoundliteral.509, ptr @.compoundliteral.510, ptr @.compoundliteral.511, ptr @.compoundliteral.512, ptr @.compoundliteral.513, ptr @.compoundliteral.514, ptr @.compoundliteral.515, ptr @.compoundliteral.516, ptr @.compoundliteral.517, ptr @.compoundliteral.518, ptr @.compoundliteral.519, ptr @.compoundliteral.520, ptr @.compoundliteral.521, ptr @.compoundliteral.522, ptr @.compoundliteral.523, ptr @.compoundliteral.524, ptr @.compoundliteral.525, ptr @.compoundliteral.526, ptr @.compoundliteral.527, ptr @.compoundliteral.528, ptr @.compoundliteral.529, ptr @.compoundliteral.530, ptr @.compoundliteral.531, ptr @.compoundliteral.532, ptr @.compoundliteral.533, ptr @.compoundliteral.534, ptr @.compoundliteral.535, ptr @.compoundliteral.536, ptr @.compoundliteral.537, ptr @.compoundliteral.538, ptr @.compoundliteral.539, ptr @.compoundliteral.540, ptr @.compoundliteral.541, ptr @.compoundliteral.542, ptr @.compoundliteral.543, ptr @.compoundliteral.544, ptr @.compoundliteral.545, ptr @.compoundliteral.546, ptr @.compoundliteral.547, ptr @.compoundliteral.548, ptr @.compoundliteral.549, ptr @ker_mux, ptr @clk_mmux_ops, ptr @.compoundliteral.550, ptr @.compoundliteral.551, ptr @.compoundliteral.552, ptr @.compoundliteral.553, ptr @.compoundliteral.554, ptr @.compoundliteral.555, ptr @.compoundliteral.556, ptr @.compoundliteral.557, ptr @.compoundliteral.558, ptr @.compoundliteral.559, ptr @.compoundliteral.560, ptr @.compoundliteral.561, ptr @.compoundliteral.562, ptr @.compoundliteral.563, ptr @.compoundliteral.564, ptr @.compoundliteral.565, ptr @.compoundliteral.566, ptr @.compoundliteral.567, ptr @.compoundliteral.568, ptr @.compoundliteral.569, ptr @.compoundliteral.570, ptr @.compoundliteral.571, ptr @.compoundliteral.572, ptr @.compoundliteral.573, ptr @.compoundliteral.574, ptr @.compoundliteral.575, ptr @.compoundliteral.576, ptr @.compoundliteral.577, ptr @.compoundliteral.578, ptr @.compoundliteral.579, ptr @.compoundliteral.580, ptr @.compoundliteral.581, ptr @.compoundliteral.582, ptr @.compoundliteral.583, ptr @.str.584, ptr @.str.585, ptr @.str.586, ptr @.str.587, ptr @.str.588, ptr @stm32mp1_clock_secured], section "llvm.metadata"
@0 = internal global [654 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32mp1_rcc_clocks_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32mp1_match_data to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32mp1_rcc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rcc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rcc_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rcc_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rcc_reset_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_reset_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rlock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_rcc_clock_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_register_hw_clk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32mp1_data to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32mp1_data_secure to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32mp1_clock_cfg to i32), i32 6720, i32 8384, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mp1_gate_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ref12_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ref3_parents to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ref4_parents to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.57 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.64 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.67 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.71 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.73 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.74 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.78 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.79 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.80 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.83 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.85 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.86 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.87 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.88 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.89 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.90 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.92 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.93 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.94 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.95 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.96 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.97 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.99 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.100 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.101 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.102 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.103 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.104 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.106 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.107 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.108 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.109 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.110 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.111 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.113 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.114 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.115 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.116 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.117 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.118 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.120 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.121 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.122 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.123 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.124 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.125 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @per_src to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.127 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu_src to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.129 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axi_src to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axi_div_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.131 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.132 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.133 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.134 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.135 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcu_src to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcu_div_table to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.137 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.138 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.139 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.140 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.141 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apb_div_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.143 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.145 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.147 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.149 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.151 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.153 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.155 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.157 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.158 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.160 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.161 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.163 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.164 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.166 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.167 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.169 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.170 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.172 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.173 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.175 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.176 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.178 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.179 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.181 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.182 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.184 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.185 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.187 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.188 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.190 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.191 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.193 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.194 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.196 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.197 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @per_gate_cfg to i32), i32 1320, i32 1664, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdmmc12_src to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ker_mux_cfg to i32), i32 420, i32 544, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.307 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.309 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdmmc3_src to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.311 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1352 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmc_src to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1356 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.313 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qspi_src to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1363 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.315 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1366 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rng_src to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1370 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.317 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1373 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.319 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbphy_src to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1381 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.321 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stgen_src to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1388 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.323 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1391 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spdif_src to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1395 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.325 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1398 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.326 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi123_src to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1402 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.327 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.328 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.329 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1409 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.330 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.331 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1413 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.332 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi45_src to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1417 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.333 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.334 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.335 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1424 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.336 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi6_src to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1428 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.337 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.338 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cec_src to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1435 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.339 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.340 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c12_src to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1442 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.341 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1445 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.342 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.343 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.344 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c35_src to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.345 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1456 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.346 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.347 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1460 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.348 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c46_src to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.349 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1467 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.350 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.351 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.352 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lptim1_src to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1475 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.353 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.354 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lptim23_src to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1482 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.355 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1485 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.356 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.357 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1489 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.358 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lptim45_src to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.359 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1496 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.360 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.361 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1500 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.362 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usart1_src to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.363 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1507 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.364 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usart234578_src to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1511 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.365 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.366 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.367 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1518 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.368 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.369 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1522 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.370 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.371 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1526 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.372 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usart6_src to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1530 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.373 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1533 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.374 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.375 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.376 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.377 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1541 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.378 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fdcan_src to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.379 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1548 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.380 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sai_src to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1552 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.381 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1555 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.382 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sai2_src to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.383 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1562 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.384 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.385 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1566 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.386 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.387 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1570 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.388 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc12_src to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1574 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.389 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.390 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_src to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.391 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1584 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.392 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.393 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1588 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.394 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbo_src to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1592 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.395 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1595 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.396 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eth_src to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1599 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.397 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1602 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.398 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.399 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.400 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.401 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.402 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.403 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.404 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1621 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.405 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1622 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.406 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1623 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.407 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_src to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1627 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.408 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.409 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.410 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1632 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_div_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1633 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.411 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1636 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.412 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1637 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.413 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.414 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1639 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.415 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mco1_src to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.416 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1646 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.417 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1647 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.418 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1648 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.419 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1649 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.420 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1650 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.421 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1651 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.422 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1652 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.423 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mco2_src to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1656 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.424 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.425 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.426 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1661 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.427 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1662 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.428 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1663 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.429 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1664 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.430 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.431 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.432 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1669 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.433 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ck_trace_src to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1673 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.434 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1676 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.435 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ck_trace_div_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1678 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.436 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1681 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.437 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1682 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.438 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1683 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1684 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timer_ker_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1687 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.439 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1690 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mp1_mgate to i32), i32 880, i32 1088, i32 ptrtoint (ptr @___asan_gen_.1691 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mp1_mgate_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1694 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.440 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1697 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.441 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1698 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.442 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1699 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.443 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1700 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.444 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1701 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.445 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1702 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.446 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1703 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.447 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1704 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.448 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1705 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.449 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1706 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.450 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1707 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.451 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1708 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.452 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1709 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.453 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1710 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.454 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1711 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.455 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1712 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.456 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1713 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.457 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1714 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.458 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1715 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.459 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1716 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.460 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1717 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.461 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1718 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.462 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1719 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.463 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.464 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1721 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.465 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1722 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.466 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1723 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.467 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1724 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.468 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1725 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.469 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1726 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.470 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1727 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.471 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1728 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.472 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1729 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.473 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1730 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.474 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1731 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.475 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1732 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.476 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1733 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.477 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1734 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.478 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1735 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.479 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1736 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.480 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.481 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1738 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.482 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1739 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.483 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1740 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.484 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1741 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.485 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1742 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.486 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1743 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.487 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.488 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1745 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.489 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1746 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.490 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1747 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.491 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1748 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.492 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1749 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.493 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1750 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.494 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1751 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.495 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1752 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.496 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1753 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.497 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1754 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.498 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1755 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.499 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1756 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.500 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1757 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.501 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1758 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.502 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1759 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.503 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1760 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.504 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1761 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.505 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1762 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.506 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1763 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.507 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1764 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.508 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1765 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.509 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1766 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.510 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1767 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.511 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1768 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.512 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.513 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.514 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1771 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.515 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1772 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.516 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1773 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.517 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1774 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.518 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1775 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.519 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1776 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.520 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1777 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.521 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1778 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.522 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1779 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.523 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1780 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.524 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1781 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.525 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1782 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.526 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1783 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.527 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1784 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.528 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1785 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.529 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1786 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.530 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1787 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.531 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1788 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.532 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1789 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.533 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1790 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.534 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1791 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.535 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1792 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.536 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1793 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.537 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1794 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.538 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1795 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.539 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1796 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.540 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1797 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.541 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1798 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.542 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1799 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.543 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1800 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.544 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.545 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1802 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.546 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1803 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.547 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1804 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.548 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1805 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.549 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1806 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ker_mux to i32), i32 420, i32 544, i32 ptrtoint (ptr @___asan_gen_.1807 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mmux_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1810 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.550 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1813 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.551 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1814 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.552 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1815 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.553 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1816 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.554 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1817 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.555 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1818 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.556 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1819 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.557 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1820 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.558 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1821 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.559 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1822 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.560 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1823 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.561 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1824 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.562 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1825 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.563 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1826 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.564 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1827 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.565 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1828 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.566 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1829 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.567 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1830 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.568 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1831 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.569 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1832 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.570 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1833 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.571 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1834 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.572 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1835 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.573 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1836 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.574 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1837 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.575 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1838 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.576 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1839 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.577 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1840 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.578 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1841 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.579 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1842 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.580 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1843 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.581 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1844 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.582 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1845 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.583 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1846 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.584 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.585 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.586 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.587 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.588 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1859 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32mp1_clock_secured to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.1862 to i32), i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1864 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32mp1_clocks_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32mp1_rcc_clocks_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32mp1_rcc_clocks_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 20, i32 noundef 3520) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %for.cond.preheader.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.cond.preheader.i:                             ; preds = %entry
  %tobool.not.i.i = icmp eq ptr %dev1, null
  %of_node.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  br i1 %tobool.not.i.i, label %for.cond.preheader.i.dev_of_node.exit.i_crit_edge, label %if.end.i.i

for.cond.preheader.i.dev_of_node.exit.i_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_of_node.exit.i

if.end.i.i:                                       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node.i.i, align 8
  br label %dev_of_node.exit.i

dev_of_node.exit.i:                               ; preds = %if.end.i.i, %for.cond.preheader.i.dev_of_node.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %1, %if.end.i.i ], [ null, %for.cond.preheader.i.dev_of_node.exit.i_crit_edge ]
  %call2.i = tail call ptr @of_clk_get_by_name(ptr noundef %retval.0.i.i, ptr noundef nonnull @.str.1) #8
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %dev_of_node.exit.i
  %magicptr.i = ptrtoint ptr %call2.i to i32
  %2 = zext i32 %magicptr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %magicptr.i, label %if.then4.i.if.end_crit_edge [
    i32 -22, label %if.then4.i.for.inc.i_crit_edge
    i32 -2, label %if.then4.i.for.inc.i_crit_edge20
  ]

if.then4.i.for.inc.i_crit_edge20:                 ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then4.i.for.inc.i_crit_edge:                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then4.i.if.end_crit_edge:                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.else.i:                                        ; preds = %dev_of_node.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call12.i = tail call ptr @__clk_get_name(ptr noundef %call2.i) #8
  %call13.i = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef %call12.i) #8
  %3 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call13.i, ptr %call.i.i, align 4
  tail call void @clk_put(ptr noundef %call2.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then4.i.for.inc.i_crit_edge, %if.then4.i.for.inc.i_crit_edge20
  br i1 %tobool.not.i.i, label %for.inc.i.dev_of_node.exit.1.i_crit_edge, label %if.end.i.1.i

for.inc.i.dev_of_node.exit.1.i_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_of_node.exit.1.i

if.end.i.1.i:                                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node.i.i, align 8
  br label %dev_of_node.exit.1.i

dev_of_node.exit.1.i:                             ; preds = %if.end.i.1.i, %for.inc.i.dev_of_node.exit.1.i_crit_edge
  %retval.0.i.1.i = phi ptr [ %5, %if.end.i.1.i ], [ null, %for.inc.i.dev_of_node.exit.1.i_crit_edge ]
  %call2.1.i = tail call ptr @of_clk_get_by_name(ptr noundef %retval.0.i.1.i, ptr noundef nonnull @.str.2) #8
  %cmp.i.1.i = icmp ugt ptr %call2.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i, label %if.then4.1.i, label %if.else.1.i

if.else.1.i:                                      ; preds = %dev_of_node.exit.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %call12.1.i = tail call ptr @__clk_get_name(ptr noundef %call2.1.i) #8
  %call13.1.i = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef %call12.1.i) #8
  %arrayidx14.1.i = getelementptr ptr, ptr %call.i.i, i32 1
  %6 = ptrtoint ptr %arrayidx14.1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call13.1.i, ptr %arrayidx14.1.i, align 4
  tail call void @clk_put(ptr noundef %call2.1.i) #8
  br label %for.inc.1.i

if.then4.1.i:                                     ; preds = %dev_of_node.exit.1.i
  %magicptr.1.i = ptrtoint ptr %call2.1.i to i32
  %7 = zext i32 %magicptr.1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.589)
  switch i32 %magicptr.1.i, label %if.then4.1.i.if.end_crit_edge [
    i32 -22, label %if.then4.1.i.for.inc.1.i_crit_edge
    i32 -2, label %if.then4.1.i.for.inc.1.i_crit_edge21
  ]

if.then4.1.i.for.inc.1.i_crit_edge21:             ; preds = %if.then4.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.i

if.then4.1.i.for.inc.1.i_crit_edge:               ; preds = %if.then4.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.i

if.then4.1.i.if.end_crit_edge:                    ; preds = %if.then4.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.inc.1.i:                                      ; preds = %if.then4.1.i.for.inc.1.i_crit_edge, %if.then4.1.i.for.inc.1.i_crit_edge21, %if.else.1.i
  br i1 %tobool.not.i.i, label %for.inc.1.i.dev_of_node.exit.2.i_crit_edge, label %if.end.i.2.i

for.inc.1.i.dev_of_node.exit.2.i_crit_edge:       ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_of_node.exit.2.i

if.end.i.2.i:                                     ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node.i.i, align 8
  br label %dev_of_node.exit.2.i

dev_of_node.exit.2.i:                             ; preds = %if.end.i.2.i, %for.inc.1.i.dev_of_node.exit.2.i_crit_edge
  %retval.0.i.2.i = phi ptr [ %9, %if.end.i.2.i ], [ null, %for.inc.1.i.dev_of_node.exit.2.i_crit_edge ]
  %call2.2.i = tail call ptr @of_clk_get_by_name(ptr noundef %retval.0.i.2.i, ptr noundef nonnull @.str.3) #8
  %cmp.i.2.i = icmp ugt ptr %call2.2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2.i, label %if.then4.2.i, label %if.else.2.i

if.else.2.i:                                      ; preds = %dev_of_node.exit.2.i
  call void @__sanitizer_cov_trace_pc() #10
  %call12.2.i = tail call ptr @__clk_get_name(ptr noundef %call2.2.i) #8
  %call13.2.i = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef %call12.2.i) #8
  %arrayidx14.2.i = getelementptr ptr, ptr %call.i.i, i32 2
  %10 = ptrtoint ptr %arrayidx14.2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call13.2.i, ptr %arrayidx14.2.i, align 4
  tail call void @clk_put(ptr noundef %call2.2.i) #8
  br label %for.inc.2.i

if.then4.2.i:                                     ; preds = %dev_of_node.exit.2.i
  %magicptr.2.i = ptrtoint ptr %call2.2.i to i32
  %11 = zext i32 %magicptr.2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.590)
  switch i32 %magicptr.2.i, label %if.then4.2.i.if.end_crit_edge [
    i32 -22, label %if.then4.2.i.for.inc.2.i_crit_edge
    i32 -2, label %if.then4.2.i.for.inc.2.i_crit_edge22
  ]

if.then4.2.i.for.inc.2.i_crit_edge22:             ; preds = %if.then4.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.i

if.then4.2.i.for.inc.2.i_crit_edge:               ; preds = %if.then4.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.i

if.then4.2.i.if.end_crit_edge:                    ; preds = %if.then4.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.inc.2.i:                                      ; preds = %if.then4.2.i.for.inc.2.i_crit_edge, %if.then4.2.i.for.inc.2.i_crit_edge22, %if.else.2.i
  br i1 %tobool.not.i.i, label %for.inc.2.i.dev_of_node.exit.3.i_crit_edge, label %if.end.i.3.i

for.inc.2.i.dev_of_node.exit.3.i_crit_edge:       ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_of_node.exit.3.i

if.end.i.3.i:                                     ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node.i.i, align 8
  br label %dev_of_node.exit.3.i

dev_of_node.exit.3.i:                             ; preds = %if.end.i.3.i, %for.inc.2.i.dev_of_node.exit.3.i_crit_edge
  %retval.0.i.3.i = phi ptr [ %13, %if.end.i.3.i ], [ null, %for.inc.2.i.dev_of_node.exit.3.i_crit_edge ]
  %call2.3.i = tail call ptr @of_clk_get_by_name(ptr noundef %retval.0.i.3.i, ptr noundef nonnull @.str.4) #8
  %cmp.i.3.i = icmp ugt ptr %call2.3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.3.i, label %if.then4.3.i, label %if.else.3.i

if.else.3.i:                                      ; preds = %dev_of_node.exit.3.i
  call void @__sanitizer_cov_trace_pc() #10
  %call12.3.i = tail call ptr @__clk_get_name(ptr noundef %call2.3.i) #8
  %call13.3.i = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef %call12.3.i) #8
  %arrayidx14.3.i = getelementptr ptr, ptr %call.i.i, i32 3
  %14 = ptrtoint ptr %arrayidx14.3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call13.3.i, ptr %arrayidx14.3.i, align 4
  tail call void @clk_put(ptr noundef %call2.3.i) #8
  br label %for.inc.3.i

if.then4.3.i:                                     ; preds = %dev_of_node.exit.3.i
  %magicptr.3.i = ptrtoint ptr %call2.3.i to i32
  %15 = zext i32 %magicptr.3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.591)
  switch i32 %magicptr.3.i, label %if.then4.3.i.if.end_crit_edge [
    i32 -22, label %if.then4.3.i.for.inc.3.i_crit_edge
    i32 -2, label %if.then4.3.i.for.inc.3.i_crit_edge23
  ]

if.then4.3.i.for.inc.3.i_crit_edge23:             ; preds = %if.then4.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3.i

if.then4.3.i.for.inc.3.i_crit_edge:               ; preds = %if.then4.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3.i

if.then4.3.i.if.end_crit_edge:                    ; preds = %if.then4.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.inc.3.i:                                      ; preds = %if.then4.3.i.for.inc.3.i_crit_edge, %if.then4.3.i.for.inc.3.i_crit_edge23, %if.else.3.i
  br i1 %tobool.not.i.i, label %for.inc.3.i.dev_of_node.exit.4.i_crit_edge, label %if.end.i.4.i

for.inc.3.i.dev_of_node.exit.4.i_crit_edge:       ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_of_node.exit.4.i

if.end.i.4.i:                                     ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node.i.i, align 8
  br label %dev_of_node.exit.4.i

dev_of_node.exit.4.i:                             ; preds = %if.end.i.4.i, %for.inc.3.i.dev_of_node.exit.4.i_crit_edge
  %retval.0.i.4.i = phi ptr [ %17, %if.end.i.4.i ], [ null, %for.inc.3.i.dev_of_node.exit.4.i_crit_edge ]
  %call2.4.i = tail call ptr @of_clk_get_by_name(ptr noundef %retval.0.i.4.i, ptr noundef nonnull @.str.5) #8
  %cmp.i.4.i = icmp ugt ptr %call2.4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.4.i, label %if.then4.4.i, label %if.else.4.i

if.else.4.i:                                      ; preds = %dev_of_node.exit.4.i
  call void @__sanitizer_cov_trace_pc() #10
  %call12.4.i = tail call ptr @__clk_get_name(ptr noundef %call2.4.i) #8
  %call13.4.i = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef %call12.4.i) #8
  %arrayidx14.4.i = getelementptr ptr, ptr %call.i.i, i32 4
  %18 = ptrtoint ptr %arrayidx14.4.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call13.4.i, ptr %arrayidx14.4.i, align 4
  tail call void @clk_put(ptr noundef %call2.4.i) #8
  br label %if.then

if.then4.4.i:                                     ; preds = %dev_of_node.exit.4.i
  %magicptr.4.i = ptrtoint ptr %call2.4.i to i32
  %19 = zext i32 %magicptr.4.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.592)
  switch i32 %magicptr.4.i, label %if.then4.4.i.if.end_crit_edge [
    i32 -22, label %if.then4.4.i.if.then_crit_edge
    i32 -2, label %if.then4.4.i.if.then_crit_edge24
  ]

if.then4.4.i.if.then_crit_edge24:                 ; preds = %if.then4.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then4.4.i.if.then_crit_edge:                   ; preds = %if.then4.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then4.4.i.if.end_crit_edge:                    ; preds = %if.then4.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %if.then4.4.i.if.then_crit_edge, %if.then4.4.i.if.then_crit_edge24, %if.else.4.i
  br i1 %tobool.not.i.i, label %dev_of_node.exit.i7, label %dev_of_node.exit.thread.i

dev_of_node.exit.i7:                              ; preds = %if.then
  %call1.i = tail call ptr @of_iomap(ptr noundef null, i32 noundef 0) #8
  %tobool.not.i6 = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i6, label %dev_of_node.exit.i7.if.then6.thread67.i_crit_edge, label %dev_of_node.exit.i7.dev_of_node.exit.i.i_crit_edge

dev_of_node.exit.i7.dev_of_node.exit.i.i_crit_edge: ; preds = %dev_of_node.exit.i7
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_of_node.exit.i.i

dev_of_node.exit.i7.if.then6.thread67.i_crit_edge: ; preds = %dev_of_node.exit.i7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6.thread67.i

dev_of_node.exit.thread.i:                        ; preds = %if.then
  %20 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_node.i.i, align 8
  %call133.i = tail call ptr @of_iomap(ptr noundef %21, i32 noundef 0) #8
  %tobool.not34.i = icmp eq ptr %call133.i, null
  %22 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node.i.i, align 8
  br i1 %tobool.not34.i, label %dev_of_node.exit.thread.i.if.then6.thread67.i_crit_edge, label %dev_of_node.exit.thread.i.dev_of_node.exit.i.i_crit_edge

dev_of_node.exit.thread.i.dev_of_node.exit.i.i_crit_edge: ; preds = %dev_of_node.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_of_node.exit.i.i

dev_of_node.exit.thread.i.if.then6.thread67.i_crit_edge: ; preds = %dev_of_node.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6.thread67.i

if.then6.thread67.i:                              ; preds = %dev_of_node.exit.thread.i.if.then6.thread67.i_crit_edge, %dev_of_node.exit.i7.if.then6.thread67.i_crit_edge
  %retval.0.i22.i = phi ptr [ null, %dev_of_node.exit.i7.if.then6.thread67.i_crit_edge ], [ %23, %dev_of_node.exit.thread.i.if.then6.thread67.i_crit_edge ]
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %retval.0.i22.i) #11
  br label %if.end9.i

dev_of_node.exit.i.i:                             ; preds = %dev_of_node.exit.thread.i.dev_of_node.exit.i.i_crit_edge, %dev_of_node.exit.i7.dev_of_node.exit.i.i_crit_edge
  %call13652.i = phi ptr [ %call1.i, %dev_of_node.exit.i7.dev_of_node.exit.i.i_crit_edge ], [ %call133.i, %dev_of_node.exit.thread.i.dev_of_node.exit.i.i_crit_edge ]
  %retval.0.i.i.i = phi ptr [ null, %dev_of_node.exit.i7.dev_of_node.exit.i.i_crit_edge ], [ %23, %dev_of_node.exit.thread.i.dev_of_node.exit.i.i_crit_edge ]
  %call1.i.i = tail call ptr @of_match_node(ptr noundef nonnull @stm32mp1_match_data, ptr noundef %retval.0.i.i.i) #8
  %tobool.not.i24.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not.i24.i, label %do.end.i.i, label %if.end.i25.i

do.end.i.i:                                       ; preds = %dev_of_node.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #11
  br label %if.then8.i

if.end.i25.i:                                     ; preds = %dev_of_node.exit.i.i
  %data1.i.i.i = getelementptr inbounds %struct.of_device_id, ptr %call1.i.i, i32 0, i32 3
  %24 = ptrtoint ptr %data1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data1.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 96) #12
  %tobool.not.i1.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i1.i.i, label %if.end.i25.i.do.end7.i.i_crit_edge, label %do.body.i.i.i

if.end.i25.i.do.end7.i.i_crit_edge:               ; preds = %if.end.i25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i.i

do.body.i.i.i:                                    ; preds = %if.end.i25.i
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i.i.i.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @stm32_rcc_reset_init.__key, i16 noundef signext 3) #8
  %membase.i.i.i = getelementptr inbounds %struct.stm32_reset_data, ptr %call7.i.i.i.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %membase.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call13652.i, ptr %membase.i.i.i, align 8
  %rcdev.i.i.i = getelementptr inbounds %struct.stm32_reset_data, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %owner.i.i.i = getelementptr inbounds %struct.stm32_reset_data, ptr %call7.i.i.i.i.i, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %owner.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %owner.i.i.i, align 8
  %29 = ptrtoint ptr %rcdev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @stm32_reset_ops, ptr %rcdev.i.i.i, align 4
  br i1 %tobool.not.i.i, label %do.body.i.i.i.stm32_rcc_reset_init.exit.i.i_crit_edge, label %if.end.i.i.i.i

do.body.i.i.i.stm32_rcc_reset_init.exit.i.i_crit_edge: ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stm32_rcc_reset_init.exit.i.i

if.end.i.i.i.i:                                   ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %of_node.i.i, align 8
  br label %stm32_rcc_reset_init.exit.i.i

stm32_rcc_reset_init.exit.i.i:                    ; preds = %if.end.i.i.i.i, %do.body.i.i.i.stm32_rcc_reset_init.exit.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %31, %if.end.i.i.i.i ], [ null, %do.body.i.i.i.stm32_rcc_reset_init.exit.i.i_crit_edge ]
  %of_node.i2.i.i = getelementptr inbounds %struct.stm32_reset_data, ptr %call7.i.i.i.i.i, i32 0, i32 1, i32 5
  %32 = ptrtoint ptr %of_node.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %retval.0.i.i.i.i, ptr %of_node.i2.i.i, align 8
  %nr_resets.i.i.i = getelementptr inbounds %struct.stm32_reset_data, ptr %call7.i.i.i.i.i, i32 0, i32 1, i32 8
  %33 = ptrtoint ptr %nr_resets.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 65535, ptr %nr_resets.i.i.i, align 4
  %clear_offset.i.i.i = getelementptr inbounds %struct.stm32_rcc_match_data, ptr %25, i32 0, i32 3
  %34 = ptrtoint ptr %clear_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %clear_offset.i.i.i, align 4
  %clear_offset7.i.i.i = getelementptr inbounds %struct.stm32_reset_data, ptr %call7.i.i.i.i.i, i32 0, i32 3
  %36 = ptrtoint ptr %clear_offset7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %clear_offset7.i.i.i, align 4
  %call9.i.i.i = tail call i32 @reset_controller_register(ptr noundef %rcdev.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i.i)
  %tobool3.not.i.i = icmp eq i32 %call9.i.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end9.i.i, label %stm32_rcc_reset_init.exit.i.i.do.end7.i.i_crit_edge

stm32_rcc_reset_init.exit.i.i.do.end7.i.i_crit_edge: ; preds = %stm32_rcc_reset_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i.i

do.end7.i.i:                                      ; preds = %stm32_rcc_reset_init.exit.i.i.do.end7.i.i_crit_edge, %if.end.i25.i.do.end7.i.i_crit_edge
  %retval.0.i315.i.i = phi i32 [ %call9.i.i.i, %stm32_rcc_reset_init.exit.i.i.do.end7.i.i_crit_edge ], [ -12, %if.end.i25.i.do.end7.i.i_crit_edge ]
  %call8.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #11
  br label %if.then8.i

if.end9.i.i:                                      ; preds = %stm32_rcc_reset_init.exit.i.i
  %37 = ptrtoint ptr %data1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data1.i.i.i, align 4
  %maxbinding.i.i.i = getelementptr inbounds %struct.stm32_rcc_match_data, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %maxbinding.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %maxbinding.i.i.i, align 4
  %41 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %40, i32 4) #8
  %42 = extractvalue { i32, i1 } %41, 1
  %43 = extractvalue { i32, i1 } %41, 0
  %spec.select.i.i.i.i = tail call i32 @llvm.uadd.sat.i32(i32 %43, i32 4) #8
  %retval.0.i.i5.i.i = select i1 %42, i32 -1, i32 %spec.select.i.i.i.i
  %call.i.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %retval.0.i.i5.i.i, i32 noundef 3520) #8
  %tobool.not.i6.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i6.i.i, label %if.then6.thread71.i, label %if.end.i7.i.i

if.then6.thread71.i:                              ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call17.i73.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #11
  br label %if.then8.i

if.end.i7.i.i:                                    ; preds = %if.end9.i.i
  %44 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %40, ptr %call.i.i.i.i, align 4
  %hws3.i.i.i = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %call.i.i.i.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp64.i.i.i = icmp sgt i32 %40, 0
  br i1 %cmp64.i.i.i, label %if.end.i7.i.i.for.body.i.i.i_crit_edge, label %if.end.i7.i.i.for.cond5.preheader.i.i.i_crit_edge

if.end.i7.i.i.for.cond5.preheader.i.i.i_crit_edge: ; preds = %if.end.i7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond5.preheader.i.i.i

if.end.i7.i.i.for.body.i.i.i_crit_edge:           ; preds = %if.end.i7.i.i
  br label %for.body.i.i.i

for.cond5.preheader.i.i.i:                        ; preds = %for.body.i.i.i.for.cond5.preheader.i.i.i_crit_edge, %if.end.i7.i.i.for.cond5.preheader.i.i.i_crit_edge
  %num6.i.i.i = getelementptr inbounds %struct.stm32_rcc_match_data, ptr %38, i32 0, i32 1
  %45 = ptrtoint ptr %num6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num6.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp766.not.i.i.i = icmp eq i32 %46, 0
  br i1 %cmp766.not.i.i.i, label %for.cond5.preheader.i.i.i.for.end25.i.i.i_crit_edge, label %for.body8.lr.ph.i.i.i

for.cond5.preheader.i.i.i.for.end25.i.i.i_crit_edge: ; preds = %for.cond5.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end25.i.i.i

for.body8.lr.ph.i.i.i:                            ; preds = %for.cond5.preheader.i.i.i
  %check_security.i.i.i = getelementptr inbounds %struct.stm32_rcc_match_data, ptr %38, i32 0, i32 4
  br label %for.body8.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.end.i7.i.i.for.body.i.i.i_crit_edge
  %n.065.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end.i7.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr ptr, ptr %hws3.i.i.i, i32 %n.065.i.i.i
  %47 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.i.i.i, align 4
  %inc.i.i.i = add nuw nsw i32 %n.065.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %40
  br i1 %exitcond.not.i.i.i, label %for.body.i.i.i.for.cond5.preheader.i.i.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

for.body.i.i.i.for.cond5.preheader.i.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond5.preheader.i.i.i

for.body8.i.i.i:                                  ; preds = %for.inc23.i.i.i.for.body8.i.i.i_crit_edge, %for.body8.lr.ph.i.i.i
  %n.167.i.i.i = phi i32 [ 0, %for.body8.lr.ph.i.i.i ], [ %inc24.i.i.i, %for.inc23.i.i.i.for.body8.i.i.i_crit_edge ]
  %48 = ptrtoint ptr %check_security.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %check_security.i.i.i, align 4
  %tobool9.not.i.i.i = icmp eq ptr %49, null
  br i1 %tobool9.not.i.i.i, label %for.body8.i.i.i.if.end14.i.i.i_crit_edge, label %land.lhs.true.i.i.i

for.body8.i.i.i.if.end14.i.i.i_crit_edge:         ; preds = %for.body8.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body8.i.i.i
  %50 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %38, align 4
  %arrayidx11.i.i.i = getelementptr %struct.clock_config, ptr %51, i32 %n.167.i.i.i
  %call12.i.i.i = tail call zeroext i1 %49(ptr noundef %arrayidx11.i.i.i) #8
  br i1 %call12.i.i.i, label %land.lhs.true.i.i.i.for.inc23.i.i.i_crit_edge, label %land.lhs.true.i.i.i.if.end14.i.i.i_crit_edge

land.lhs.true.i.i.i.if.end14.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i.i.i

land.lhs.true.i.i.i.for.inc23.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc23.i.i.i

if.end14.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.if.end14.i.i.i_crit_edge, %for.body8.i.i.i.if.end14.i.i.i_crit_edge
  %52 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %38, align 4
  %arrayidx16.i.i.i = getelementptr %struct.clock_config, ptr %53, i32 %n.167.i.i.i
  %func.i.i.i.i = getelementptr %struct.clock_config, ptr %53, i32 %n.167.i.i.i, i32 7
  %54 = ptrtoint ptr %func.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %func.i.i.i.i, align 4
  %tobool.not.i.i8.i.i = icmp eq ptr %55, null
  br i1 %tobool.not.i.i8.i.i, label %if.end14.i.i.i.stm32_register_hw_clk.exit.i.i.i_crit_edge, label %if.end.i.i9.i.i

if.end14.i.i.i.stm32_register_hw_clk.exit.i.i.i_crit_edge: ; preds = %if.end14.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stm32_register_hw_clk.exit.i.i.i

if.end.i.i9.i.i:                                  ; preds = %if.end14.i.i.i
  %call3.i.i.i.i = tail call ptr %55(ptr noundef %dev1, ptr noundef nonnull %call.i.i.i.i, ptr noundef %call13652.i, ptr noundef nonnull @rlock, ptr noundef %arrayidx16.i.i.i) #8
  %cmp.i.i.i.i.i = icmp ugt ptr %call3.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i.i, label %if.end.i.i9.i.i.stm32_register_hw_clk.exit.i.i.i_crit_edge, label %if.end8.i.i.i.i

if.end.i.i9.i.i.stm32_register_hw_clk.exit.i.i.i_crit_edge: ; preds = %if.end.i.i9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stm32_register_hw_clk.exit.i.i.i

if.end8.i.i.i.i:                                  ; preds = %if.end.i.i9.i.i
  %56 = ptrtoint ptr %arrayidx16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx16.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %57)
  %cmp.not.i.i.i.i = icmp eq i32 %57, -1
  br i1 %cmp.not.i.i.i.i, label %if.end8.i.i.i.i.for.inc23.i.i.i_crit_edge, label %if.then9.i.i.i.i

if.end8.i.i.i.i.for.inc23.i.i.i_crit_edge:        ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc23.i.i.i

if.then9.i.i.i.i:                                 ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i.i.i = getelementptr ptr, ptr %hws3.i.i.i, i32 %57
  %58 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call3.i.i.i.i, ptr %arrayidx.i.i.i.i, align 4
  br label %for.inc23.i.i.i

stm32_register_hw_clk.exit.i.i.i:                 ; preds = %if.end.i.i9.i.i.stm32_register_hw_clk.exit.i.i.i_crit_edge, %if.end14.i.i.i.stm32_register_hw_clk.exit.i.i.i_crit_edge
  %hw.03.i.i.i.i = phi ptr [ %call3.i.i.i.i, %if.end.i.i9.i.i.stm32_register_hw_clk.exit.i.i.i_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.end14.i.i.i.stm32_register_hw_clk.exit.i.i.i_crit_edge ]
  %name.i.i.i.i = getelementptr %struct.clock_config, ptr %53, i32 %n.167.i.i.i, i32 1
  %59 = ptrtoint ptr %name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %name.i.i.i.i, align 4
  %call6.i.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %60) #11
  %tobool18.not.i.i.i = icmp eq ptr %hw.03.i.i.i.i, null
  br i1 %tobool18.not.i.i.i, label %stm32_register_hw_clk.exit.i.i.i.for.inc23.i.i.i_crit_edge, label %do.end.i.i.i

stm32_register_hw_clk.exit.i.i.i.for.inc23.i.i.i_crit_edge: ; preds = %stm32_register_hw_clk.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc23.i.i.i

do.end.i.i.i:                                     ; preds = %stm32_register_hw_clk.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %hw.03.i.i.i.i to i32
  %62 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %38, align 4
  %name.i.i.i = getelementptr %struct.clock_config, ptr %63, i32 %n.167.i.i.i, i32 1
  %64 = ptrtoint ptr %name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %name.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20, ptr noundef %65, i32 noundef %61) #11
  br label %stm32_rcc_clock_init.exit.i.i

for.inc23.i.i.i:                                  ; preds = %stm32_register_hw_clk.exit.i.i.i.for.inc23.i.i.i_crit_edge, %if.then9.i.i.i.i, %if.end8.i.i.i.i.for.inc23.i.i.i_crit_edge, %land.lhs.true.i.i.i.for.inc23.i.i.i_crit_edge
  %inc24.i.i.i = add nuw i32 %n.167.i.i.i, 1
  %66 = ptrtoint ptr %num6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num6.i.i.i, align 4
  %cmp7.i.i.i = icmp ult i32 %inc24.i.i.i, %67
  br i1 %cmp7.i.i.i, label %for.inc23.i.i.i.for.body8.i.i.i_crit_edge, label %for.inc23.i.i.i.for.end25.i.i.i_crit_edge

for.inc23.i.i.i.for.end25.i.i.i_crit_edge:        ; preds = %for.inc23.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end25.i.i.i

for.inc23.i.i.i.for.body8.i.i.i_crit_edge:        ; preds = %for.inc23.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body8.i.i.i

for.end25.i.i.i:                                  ; preds = %for.inc23.i.i.i.for.end25.i.i.i_crit_edge, %for.cond5.preheader.i.i.i.for.end25.i.i.i_crit_edge
  br i1 %tobool.not.i.i, label %for.end25.i.i.i.dev_of_node.exit.i11.i.i_crit_edge, label %if.end.i59.i.i.i

for.end25.i.i.i.dev_of_node.exit.i11.i.i_crit_edge: ; preds = %for.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_of_node.exit.i11.i.i

if.end.i59.i.i.i:                                 ; preds = %for.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %of_node.i.i, align 8
  br label %dev_of_node.exit.i11.i.i

dev_of_node.exit.i11.i.i:                         ; preds = %if.end.i59.i.i.i, %for.end25.i.i.i.dev_of_node.exit.i11.i.i_crit_edge
  %retval.0.i60.i.i.i = phi ptr [ %69, %if.end.i59.i.i.i ], [ null, %for.end25.i.i.i.dev_of_node.exit.i11.i.i_crit_edge ]
  %call27.i.i.i = tail call i32 @of_clk_add_hw_provider(ptr noundef %retval.0.i60.i.i.i, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef nonnull %call.i.i.i.i) #8
  br label %stm32_rcc_clock_init.exit.i.i

stm32_rcc_clock_init.exit.i.i:                    ; preds = %dev_of_node.exit.i11.i.i, %do.end.i.i.i
  %retval.0.i12.i.i = phi i32 [ %61, %do.end.i.i.i ], [ %call27.i.i.i, %dev_of_node.exit.i11.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i12.i.i)
  %tobool11.not.i.i = icmp eq i32 %retval.0.i12.i.i, 0
  br i1 %tobool11.not.i.i, label %stm32_rcc_clock_init.exit.i.i.if.end_crit_edge, label %if.then6.i

stm32_rcc_clock_init.exit.i.i.if.end_crit_edge:   ; preds = %stm32_rcc_clock_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then6.i:                                       ; preds = %stm32_rcc_clock_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call17.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #11
  br label %if.then8.i

if.then8.i:                                       ; preds = %if.then6.i, %if.then6.thread71.i, %do.end7.i.i, %do.end.i.i
  %ret.0.ph65.i = phi i32 [ %retval.0.i12.i.i, %if.then6.i ], [ -12, %if.then6.thread71.i ], [ %retval.0.i315.i.i, %do.end7.i.i ], [ -19, %do.end.i.i ]
  tail call void @iounmap(ptr noundef nonnull %call13652.i) #8
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then8.i, %if.then6.thread67.i
  %ret.0.ph66.i = phi i32 [ %ret.0.ph65.i, %if.then8.i ], [ -12, %if.then6.thread67.i ]
  br i1 %tobool.not.i.i, label %if.end9.i.dev_of_node.exit31.i_crit_edge, label %if.end.i29.i

if.end9.i.dev_of_node.exit31.i_crit_edge:         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_of_node.exit31.i

if.end.i29.i:                                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %of_node.i.i, align 8
  br label %dev_of_node.exit31.i

dev_of_node.exit31.i:                             ; preds = %if.end.i29.i, %if.end9.i.dev_of_node.exit31.i_crit_edge
  %retval.0.i30.i = phi ptr [ %71, %if.end.i29.i ], [ null, %if.end9.i.dev_of_node.exit31.i_crit_edge ]
  tail call void @of_node_put(ptr noundef %retval.0.i30.i) #8
  br label %if.end

if.end:                                           ; preds = %dev_of_node.exit31.i, %stm32_rcc_clock_init.exit.i.i.if.end_crit_edge, %if.then4.4.i.if.end_crit_edge, %if.then4.3.i.if.end_crit_edge, %if.then4.2.i.if.end_crit_edge, %if.then4.1.i.if.end_crit_edge, %if.then4.i.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %ret.0.ph66.i, %dev_of_node.exit31.i ], [ 0, %stm32_rcc_clock_init.exit.i.i.if.end_crit_edge ], [ -12, %entry.if.end_crit_edge ], [ %magicptr.4.i, %if.then4.4.i.if.end_crit_edge ], [ %magicptr.3.i, %if.then4.3.i.if.end_crit_edge ], [ %magicptr.2.i, %if.then4.2.i.if.end_crit_edge ], [ %magicptr.1.i, %if.then4.1.i.if.end_crit_edge ], [ %magicptr.i, %if.then4.i.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32mp1_rcc_clocks_remove(ptr noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %tobool.not.i = icmp eq ptr %dev1, null
  br i1 %tobool.not.i, label %entry.dev_of_node.exit_crit_edge, label %if.end.i

entry.dev_of_node.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_of_node.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node.i, align 8
  br label %dev_of_node.exit

dev_of_node.exit:                                 ; preds = %if.end.i, %entry.dev_of_node.exit_crit_edge
  %retval.0.i = phi ptr [ %1, %if.end.i ], [ null, %entry.dev_of_node.exit_crit_edge ]
  %call2 = tail call ptr @of_get_next_available_child(ptr noundef %retval.0.i, ptr noundef null) #8
  %cmp.not7 = icmp eq ptr %call2, null
  br i1 %cmp.not7, label %dev_of_node.exit.for.end_crit_edge, label %dev_of_node.exit.for.body_crit_edge

dev_of_node.exit.for.body_crit_edge:              ; preds = %dev_of_node.exit
  br label %for.body

dev_of_node.exit.for.end_crit_edge:               ; preds = %dev_of_node.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %dev_of_node.exit.for.body_crit_edge
  %child.08 = phi ptr [ %call3, %for.body.for.body_crit_edge ], [ %call2, %dev_of_node.exit.for.body_crit_edge ]
  tail call void @of_clk_del_provider(ptr noundef nonnull %child.08) #8
  %call3 = tail call ptr @of_get_next_available_child(ptr noundef %retval.0.i, ptr noundef nonnull %child.08) #8
  %cmp.not = icmp eq ptr %call3, null
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %dev_of_node.exit.for.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_controller_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_reset_assert(ptr noundef %rcdev, i32 noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @stm32_reset_update(ptr noundef %rcdev, i32 noundef %id, i1 noundef zeroext true)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_reset_deassert(ptr noundef %rcdev, i32 noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @stm32_reset_update(ptr noundef %rcdev, i32 noundef %id, i1 noundef zeroext false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_reset_status(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rem = and i32 %id, 31
  %membase = getelementptr i8, ptr %rcdev, i32 44
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %2 = lshr i32 %id, 3
  %mul2 = and i32 %2, 536870908
  %add.ptr = getelementptr i8, ptr %1, i32 %mul2
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !617
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !618
  %5 = lshr i32 %4, %rem
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stm32_reset_update(ptr noundef %rcdev, i32 noundef %id, i1 noundef zeroext %assert) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %div1 = lshr i32 %id, 5
  %rem = and i32 %id, 31
  %clear_offset = getelementptr i8, ptr %rcdev, i32 48
  %0 = ptrtoint ptr %clear_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clear_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %membase = getelementptr i8, ptr %rcdev, i32 44
  %2 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase, align 4
  %mul2 = shl nuw nsw i32 %div1, 2
  %add.ptr = getelementptr i8, ptr %3, i32 %mul2
  %spec.select.idx = select i1 %assert, i32 0, i32 %1
  %spec.select = getelementptr i8, ptr %add.ptr, i32 %spec.select.idx
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !619
  tail call void @arm_heavy_mb() #8
  %shl = shl nuw i32 1, %rem
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %spec.select, i32 %4) #8, !srcloc !620
  br label %if.end34

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %rcdev, i32 -44
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr.i) #8
  %membase15 = getelementptr i8, ptr %rcdev, i32 44
  %5 = ptrtoint ptr %membase15 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase15, align 4
  %mul16 = shl nuw nsw i32 %div1, 2
  %add.ptr17 = getelementptr i8, ptr %6, i32 %mul16
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #8, !srcloc !617
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !621
  %shl23 = shl nuw i32 1, %rem
  %or = or i32 %8, %shl23
  %neg = xor i32 %shl23, -1
  %and = and i32 %8, %neg
  %reg.0 = select i1 %assert, i32 %or, i32 %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !622
  tail call void @arm_heavy_mb() #8
  %9 = tail call i32 @llvm.bswap.i32(i32 %reg.0)
  %10 = ptrtoint ptr %membase15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase15, align 4
  %add.ptr32 = getelementptr i8, ptr %11, i32 %mul16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %9) #8, !srcloc !620
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr.i, i32 noundef %call10) #8
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @_clk_stm32_register_gate(ptr noundef %dev, ptr nocapture noundef readnone %clk_data, ptr noundef %base, ptr noundef %lock, ptr nocapture noundef readonly %cfg) #2 align 64 {
entry:
  %parent_name.addr.i = alloca ptr, align 4
  %init.i = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.clock_config, ptr %cfg, i32 0, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %parent_name = getelementptr inbounds %struct.clock_config, ptr %cfg, i32 0, i32 2
  %2 = ptrtoint ptr %parent_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent_name, align 4
  %flags = getelementptr inbounds %struct.clock_config, ptr %cfg, i32 0, i32 5
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %cfg1 = getelementptr inbounds %struct.clock_config, ptr %cfg, i32 0, i32 6
  %6 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name.addr.i)
  %8 = ptrtoint ptr %parent_name.addr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %3, ptr %parent_name.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #8
  %9 = getelementptr inbounds i8, ptr %init.i, i32 12
  %10 = call ptr @memset(ptr %9, i32 0, i32 12)
  %11 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %1, ptr %init.i, align 4
  %parent_names.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %12 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %parent_name.addr.i, ptr %parent_names.i, align 4
  %num_parents.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %13 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %num_parents.i, align 4
  %flags2.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %14 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %5, ptr %flags2.i, align 4
  %ops.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %ops3.i = getelementptr inbounds %struct.stm32_gate_cfg, ptr %7, i32 0, i32 2
  %15 = ptrtoint ptr %ops3.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops3.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  %spec.store.select.i = select i1 %tobool.not.i, ptr @clk_gate_ops, ptr %16
  %17 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %spec.store.select.i, ptr %ops.i, align 4
  %mgate1.i.i = getelementptr inbounds %struct.stm32_gate_cfg, ptr %7, i32 0, i32 1
  %18 = ptrtoint ptr %mgate1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mgate1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  %call.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #8
  %tobool2.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool2.not.i.i, label %if.then.i.i.clk_stm32_register_gate_ops.exit_crit_edge, label %if.end.i.i

if.then.i.i.clk_stm32_register_gate_ops.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_stm32_register_gate_ops.exit

if.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %7, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %add.ptr.i.i = getelementptr i8, ptr %base, i32 %23
  %reg.i.i = getelementptr inbounds %struct.clk_gate, ptr %call.i.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr.i.i, ptr %reg.i.i, align 4
  %bit_idx.i.i = getelementptr inbounds %struct.gate_cfg, ptr %21, i32 0, i32 1
  %25 = ptrtoint ptr %bit_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bit_idx.i.i, align 4
  %bit_idx9.i.i = getelementptr inbounds %struct.clk_gate, ptr %call.i.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %bit_idx9.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %bit_idx9.i.i, align 4
  %gate_flags.i.i = getelementptr inbounds %struct.gate_cfg, ptr %21, i32 0, i32 2
  %28 = ptrtoint ptr %gate_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %gate_flags.i.i, align 1
  %flags.i.i = getelementptr inbounds %struct.clk_gate, ptr %call.i.i.i, i32 0, i32 3
  %30 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %flags.i.i, align 1
  %lock13.i.i = getelementptr inbounds %struct.clk_gate, ptr %call.i.i.i, i32 0, i32 4
  %31 = ptrtoint ptr %lock13.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %lock, ptr %lock13.i.i, align 4
  %32 = ptrtoint ptr %mgate1.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mgate1.i.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %33, align 4
  %inc.i.i = add i8 %35, 1
  store i8 %inc.i.i, ptr %33, align 4
  %conv.i.i = zext i8 %35 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %mask.i.i = getelementptr inbounds %struct.stm32_clk_mgate, ptr %call.i.i.i, i32 0, i32 2
  %36 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %shl.i.i, ptr %mask.i.i, align 4
  %37 = load ptr, ptr %mgate1.i.i, align 4
  %mgate16.i.i = getelementptr inbounds %struct.stm32_clk_mgate, ptr %call.i.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %mgate16.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %mgate16.i.i, align 4
  br label %_get_stm32_gate.exit.i

if.else.i.i:                                      ; preds = %entry
  %call.i61.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 24, i32 noundef 3520) #8
  %tobool19.not.i.i = icmp eq ptr %call.i61.i.i, null
  br i1 %tobool19.not.i.i, label %if.else.i.i.clk_stm32_register_gate_ops.exit_crit_edge, label %if.end22.i.i

if.else.i.i.clk_stm32_register_gate_ops.exit_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_stm32_register_gate_ops.exit

if.end22.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %7, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %add.ptr25.i.i = getelementptr i8, ptr %base, i32 %42
  %reg26.i.i = getelementptr inbounds %struct.clk_gate, ptr %call.i61.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %reg26.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %add.ptr25.i.i, ptr %reg26.i.i, align 4
  %bit_idx28.i.i = getelementptr inbounds %struct.gate_cfg, ptr %40, i32 0, i32 1
  %44 = ptrtoint ptr %bit_idx28.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %bit_idx28.i.i, align 4
  %bit_idx29.i.i = getelementptr inbounds %struct.clk_gate, ptr %call.i61.i.i, i32 0, i32 2
  %46 = ptrtoint ptr %bit_idx29.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %bit_idx29.i.i, align 4
  %gate_flags31.i.i = getelementptr inbounds %struct.gate_cfg, ptr %40, i32 0, i32 2
  %47 = ptrtoint ptr %gate_flags31.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %gate_flags31.i.i, align 1
  %flags32.i.i = getelementptr inbounds %struct.clk_gate, ptr %call.i61.i.i, i32 0, i32 3
  %49 = ptrtoint ptr %flags32.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %flags32.i.i, align 1
  %lock33.i.i = getelementptr inbounds %struct.clk_gate, ptr %call.i61.i.i, i32 0, i32 4
  %50 = ptrtoint ptr %lock33.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %lock, ptr %lock33.i.i, align 4
  br label %_get_stm32_gate.exit.i

_get_stm32_gate.exit.i:                           ; preds = %if.end22.i.i, %if.end.i.i
  %retval.0.i.i = phi ptr [ %call.i.i.i, %if.end.i.i ], [ %call.i61.i.i, %if.end22.i.i ]
  %cmp.i.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %_get_stm32_gate.exit.i.clk_stm32_register_gate_ops.exit_crit_edge, label %if.end9.i

_get_stm32_gate.exit.i.clk_stm32_register_gate_ops.exit_crit_edge: ; preds = %_get_stm32_gate.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_stm32_register_gate_ops.exit

if.end9.i:                                        ; preds = %_get_stm32_gate.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %init10.i = getelementptr inbounds %struct.clk_hw, ptr %retval.0.i.i, i32 0, i32 2
  %51 = ptrtoint ptr %init10.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %init.i, ptr %init10.i, align 4
  %call11.i = call i32 @clk_hw_register(ptr noundef %dev, ptr noundef nonnull %retval.0.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  %52 = inttoptr i32 %call11.i to ptr
  %spec.select.i = select i1 %tobool12.not.i, ptr %retval.0.i.i, ptr %52
  br label %clk_stm32_register_gate_ops.exit

clk_stm32_register_gate_ops.exit:                 ; preds = %if.end9.i, %_get_stm32_gate.exit.i.clk_stm32_register_gate_ops.exit_crit_edge, %if.else.i.i.clk_stm32_register_gate_ops.exit_crit_edge, %if.then.i.i.clk_stm32_register_gate_ops.exit_crit_edge
  %retval.0.i = phi ptr [ inttoptr (i32 -12 to ptr), %_get_stm32_gate.exit.i.clk_stm32_register_gate_ops.exit_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then.i.i.clk_stm32_register_gate_ops.exit_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.else.i.i.clk_stm32_register_gate_ops.exit_crit_edge ], [ %spec.select.i, %if.end9.i ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.addr.i)
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @_clk_stm32_register_composite(ptr noundef %dev, ptr nocapture noundef readnone %clk_data, ptr noundef %base, ptr noundef %lock, ptr nocapture noundef readonly %cfg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.clock_config, ptr %cfg, i32 0, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %parent_names = getelementptr inbounds %struct.clock_config, ptr %cfg, i32 0, i32 3
  %2 = ptrtoint ptr %parent_names to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clock_config, ptr %cfg, i32 0, i32 4
  %4 = ptrtoint ptr %num_parents to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_parents, align 4
  %cfg1 = getelementptr inbounds %struct.clock_config, ptr %cfg, i32 0, i32 6
  %6 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg1, align 4
  %flags = getelementptr inbounds %struct.clock_config, ptr %cfg, i32 0, i32 5
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %mux.i = getelementptr inbounds %struct.stm32_composite_cfg, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %mux.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mux.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %entry.if.end10.i_crit_edge, label %if.then.i

entry.if.end10.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

if.then.i:                                        ; preds = %entry
  %mmux1.i.i = getelementptr inbounds %struct.stm32_mux_cfg, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %mmux1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmux1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i
  %call.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 36, i32 noundef 3520) #8
  %tobool2.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool2.not.i.i, label %if.then.i.i.if.end10.i_crit_edge, label %if.end.i.i

if.then.i.i.if.end10.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

if.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %add.ptr.i.i = getelementptr i8, ptr %base, i32 %17
  %reg.i.i = getelementptr inbounds %struct.clk_mux, ptr %call.i.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr.i.i, ptr %reg.i.i, align 4
  %shift.i.i = getelementptr inbounds %struct.mux_cfg, ptr %15, i32 0, i32 1
  %19 = ptrtoint ptr %shift.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %shift.i.i, align 4
  %shift9.i.i = getelementptr inbounds %struct.clk_mux, ptr %call.i.i.i, i32 0, i32 4
  %21 = ptrtoint ptr %shift9.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %shift9.i.i, align 4
  %width.i.i = getelementptr inbounds %struct.mux_cfg, ptr %15, i32 0, i32 2
  %22 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %width.i.i, align 1
  %conv.i.i = zext i8 %23 to i32
  %notmask85.i.i = shl nsw i32 -1, %conv.i.i
  %sub.i.i = xor i32 %notmask85.i.i, -1
  %mask.i.i = getelementptr inbounds %struct.clk_mux, ptr %call.i.i.i, i32 0, i32 3
  %24 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub.i.i, ptr %mask.i.i, align 4
  %mux_flags.i.i = getelementptr inbounds %struct.mux_cfg, ptr %15, i32 0, i32 3
  %25 = ptrtoint ptr %mux_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %mux_flags.i.i, align 2
  %flags.i.i = getelementptr inbounds %struct.clk_mux, ptr %call.i.i.i, i32 0, i32 5
  %27 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %flags.i.i, align 1
  %table.i.i = getelementptr inbounds %struct.mux_cfg, ptr %15, i32 0, i32 4
  %28 = ptrtoint ptr %table.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %table.i.i, align 4
  %table16.i.i = getelementptr inbounds %struct.clk_mux, ptr %call.i.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %table16.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %table16.i.i, align 4
  %lock18.i.i = getelementptr inbounds %struct.clk_mux, ptr %call.i.i.i, i32 0, i32 6
  %31 = ptrtoint ptr %lock18.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %lock, ptr %lock18.i.i, align 4
  %32 = ptrtoint ptr %mmux1.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmux1.i.i, align 4
  %mmux20.i.i = getelementptr inbounds %struct.stm32_clk_mmux, ptr %call.i.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %mmux20.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %mmux20.i.i, align 4
  %35 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %33, align 4
  %inc.i.i = add i8 %36, 1
  store i8 %inc.i.i, ptr %33, align 4
  %idxprom.i.i = zext i8 %36 to i32
  %arrayidx.i.i = getelementptr %struct.stm32_mmux, ptr %33, i32 0, i32 1, i32 %idxprom.i.i
  %37 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i.i.i, ptr %arrayidx.i.i, align 4
  br label %_get_stm32_mux.exit.i

if.else.i.i:                                      ; preds = %if.then.i
  %call.i86.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #8
  %tobool25.not.i.i = icmp eq ptr %call.i86.i.i, null
  br i1 %tobool25.not.i.i, label %if.else.i.i.if.end10.i_crit_edge, label %if.end28.i.i

if.else.i.i.if.end10.i_crit_edge:                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

if.end28.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %11, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %add.ptr31.i.i = getelementptr i8, ptr %base, i32 %41
  %reg32.i.i = getelementptr inbounds %struct.clk_mux, ptr %call.i86.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %reg32.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr31.i.i, ptr %reg32.i.i, align 4
  %shift34.i.i = getelementptr inbounds %struct.mux_cfg, ptr %39, i32 0, i32 1
  %43 = ptrtoint ptr %shift34.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %shift34.i.i, align 4
  %shift35.i.i = getelementptr inbounds %struct.clk_mux, ptr %call.i86.i.i, i32 0, i32 4
  %45 = ptrtoint ptr %shift35.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %shift35.i.i, align 4
  %width37.i.i = getelementptr inbounds %struct.mux_cfg, ptr %39, i32 0, i32 2
  %46 = ptrtoint ptr %width37.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %width37.i.i, align 1
  %conv38.i.i = zext i8 %47 to i32
  %notmask.i.i = shl nsw i32 -1, %conv38.i.i
  %sub40.i.i = xor i32 %notmask.i.i, -1
  %mask41.i.i = getelementptr inbounds %struct.clk_mux, ptr %call.i86.i.i, i32 0, i32 3
  %48 = ptrtoint ptr %mask41.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %sub40.i.i, ptr %mask41.i.i, align 4
  %mux_flags43.i.i = getelementptr inbounds %struct.mux_cfg, ptr %39, i32 0, i32 3
  %49 = ptrtoint ptr %mux_flags43.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %mux_flags43.i.i, align 2
  %flags44.i.i = getelementptr inbounds %struct.clk_mux, ptr %call.i86.i.i, i32 0, i32 5
  %51 = ptrtoint ptr %flags44.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %flags44.i.i, align 1
  %table46.i.i = getelementptr inbounds %struct.mux_cfg, ptr %39, i32 0, i32 4
  %52 = ptrtoint ptr %table46.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %table46.i.i, align 4
  %table47.i.i = getelementptr inbounds %struct.clk_mux, ptr %call.i86.i.i, i32 0, i32 2
  %54 = ptrtoint ptr %table47.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %table47.i.i, align 4
  %lock48.i.i = getelementptr inbounds %struct.clk_mux, ptr %call.i86.i.i, i32 0, i32 6
  %55 = ptrtoint ptr %lock48.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %lock, ptr %lock48.i.i, align 4
  br label %_get_stm32_mux.exit.i

_get_stm32_mux.exit.i:                            ; preds = %if.end28.i.i, %if.end.i.i
  %retval.0.i.i = phi ptr [ %call.i.i.i, %if.end.i.i ], [ %call.i86.i.i, %if.end28.i.i ]
  %cmp.i.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %_get_stm32_mux.exit.i.if.end10.i_crit_edge, label %if.then3.i

_get_stm32_mux.exit.i.if.end10.i_crit_edge:       ; preds = %_get_stm32_mux.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

if.then3.i:                                       ; preds = %_get_stm32_mux.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %mux.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mux.i, align 4
  %ops.i = getelementptr inbounds %struct.stm32_mux_cfg, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops.i, align 4
  %tobool5.not.i = icmp eq ptr %59, null
  %spec.select.i = select i1 %tobool5.not.i, ptr @clk_mux_ops, ptr %59
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then3.i, %_get_stm32_mux.exit.i.if.end10.i_crit_edge, %if.else.i.i.if.end10.i_crit_edge, %if.then.i.i.if.end10.i_crit_edge, %entry.if.end10.i_crit_edge
  %mux_ops.0.i = phi ptr [ null, %_get_stm32_mux.exit.i.if.end10.i_crit_edge ], [ null, %entry.if.end10.i_crit_edge ], [ %spec.select.i, %if.then3.i ], [ null, %if.then.i.i.if.end10.i_crit_edge ], [ null, %if.else.i.i.if.end10.i_crit_edge ]
  %mux_hw.0.i = phi ptr [ %retval.0.i.i, %_get_stm32_mux.exit.i.if.end10.i_crit_edge ], [ null, %entry.if.end10.i_crit_edge ], [ %retval.0.i.i, %if.then3.i ], [ inttoptr (i32 -12 to ptr), %if.then.i.i.if.end10.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.else.i.i.if.end10.i_crit_edge ]
  %div.i = getelementptr inbounds %struct.stm32_composite_cfg, ptr %7, i32 0, i32 1
  %60 = ptrtoint ptr %div.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %div.i, align 4
  %tobool11.not.i = icmp eq ptr %61, null
  br i1 %tobool11.not.i, label %if.end10.i.if.end25.i_crit_edge, label %if.then12.i

if.end10.i.if.end25.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i

if.then12.i:                                      ; preds = %if.end10.i
  %call.i.i70.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 28, i32 noundef 3520) #8
  %tobool.not.i71.i = icmp eq ptr %call.i.i70.i, null
  br i1 %tobool.not.i71.i, label %if.then12.i.if.end25.i_crit_edge, label %_get_stm32_div.exit.i

if.then12.i.if.end25.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i

_get_stm32_div.exit.i:                            ; preds = %if.then12.i
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 4
  %add.ptr.i72.i = getelementptr i8, ptr %base, i32 %65
  %reg.i73.i = getelementptr inbounds %struct.clk_divider, ptr %call.i.i70.i, i32 0, i32 1
  %66 = ptrtoint ptr %reg.i73.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %add.ptr.i72.i, ptr %reg.i73.i, align 4
  %shift.i74.i = getelementptr inbounds %struct.div_cfg, ptr %63, i32 0, i32 1
  %67 = ptrtoint ptr %shift.i74.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %shift.i74.i, align 4
  %shift4.i.i = getelementptr inbounds %struct.clk_divider, ptr %call.i.i70.i, i32 0, i32 2
  %69 = ptrtoint ptr %shift4.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %shift4.i.i, align 4
  %width.i75.i = getelementptr inbounds %struct.div_cfg, ptr %63, i32 0, i32 2
  %70 = ptrtoint ptr %width.i75.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %width.i75.i, align 1
  %width6.i.i = getelementptr inbounds %struct.clk_divider, ptr %call.i.i70.i, i32 0, i32 3
  %72 = ptrtoint ptr %width6.i.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %width6.i.i, align 1
  %div_flags.i.i = getelementptr inbounds %struct.div_cfg, ptr %63, i32 0, i32 3
  %73 = ptrtoint ptr %div_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %div_flags.i.i, align 2
  %flags.i76.i = getelementptr inbounds %struct.clk_divider, ptr %call.i.i70.i, i32 0, i32 4
  %75 = ptrtoint ptr %flags.i76.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %flags.i76.i, align 2
  %table.i77.i = getelementptr inbounds %struct.div_cfg, ptr %63, i32 0, i32 4
  %76 = ptrtoint ptr %table.i77.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %table.i77.i, align 4
  %table9.i.i = getelementptr inbounds %struct.clk_divider, ptr %call.i.i70.i, i32 0, i32 5
  %78 = ptrtoint ptr %table9.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %77, ptr %table9.i.i, align 4
  %lock10.i.i = getelementptr inbounds %struct.clk_divider, ptr %call.i.i70.i, i32 0, i32 6
  %79 = ptrtoint ptr %lock10.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %lock, ptr %lock10.i.i, align 4
  %cmp.i80.i = icmp ugt ptr %call.i.i70.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i80.i, label %_get_stm32_div.exit.i.if.end25.i_crit_edge, label %if.then16.i

_get_stm32_div.exit.i.if.end25.i_crit_edge:       ; preds = %_get_stm32_div.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i

if.then16.i:                                      ; preds = %_get_stm32_div.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %80 = ptrtoint ptr %div.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %div.i, align 4
  %ops18.i = getelementptr inbounds %struct.stm32_div_cfg, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %ops18.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ops18.i, align 4
  %tobool19.not.i = icmp eq ptr %83, null
  %spec.select68.i = select i1 %tobool19.not.i, ptr @clk_divider_ops, ptr %83
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then16.i, %_get_stm32_div.exit.i.if.end25.i_crit_edge, %if.then12.i.if.end25.i_crit_edge, %if.end10.i.if.end25.i_crit_edge
  %div_ops.0.i = phi ptr [ null, %_get_stm32_div.exit.i.if.end25.i_crit_edge ], [ null, %if.end10.i.if.end25.i_crit_edge ], [ %spec.select68.i, %if.then16.i ], [ null, %if.then12.i.if.end25.i_crit_edge ]
  %div_hw.0.i = phi ptr [ %call.i.i70.i, %_get_stm32_div.exit.i.if.end25.i_crit_edge ], [ null, %if.end10.i.if.end25.i_crit_edge ], [ %call.i.i70.i, %if.then16.i ], [ inttoptr (i32 -12 to ptr), %if.then12.i.if.end25.i_crit_edge ]
  %84 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %7, align 4
  %tobool26.not.i = icmp eq ptr %85, null
  br i1 %tobool26.not.i, label %if.end25.i.clk_stm32_register_composite.exit_crit_edge, label %if.then27.i

if.end25.i.clk_stm32_register_composite.exit_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_stm32_register_composite.exit

if.then27.i:                                      ; preds = %if.end25.i
  %mgate1.i.i = getelementptr inbounds %struct.stm32_gate_cfg, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %mgate1.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mgate1.i.i, align 4
  %tobool.not.i81.i = icmp eq ptr %87, null
  br i1 %tobool.not.i81.i, label %if.else.i92.i, label %if.then.i84.i

if.then.i84.i:                                    ; preds = %if.then27.i
  %call.i.i82.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #8
  %tobool2.not.i83.i = icmp eq ptr %call.i.i82.i, null
  br i1 %tobool2.not.i83.i, label %if.then.i84.i.clk_stm32_register_composite.exit_crit_edge, label %if.end.i91.i

if.then.i84.i.clk_stm32_register_composite.exit_crit_edge: ; preds = %if.then.i84.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_stm32_register_composite.exit

if.end.i91.i:                                     ; preds = %if.then.i84.i
  call void @__sanitizer_cov_trace_pc() #10
  %88 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %85, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %89, align 4
  %add.ptr.i85.i = getelementptr i8, ptr %base, i32 %91
  %reg.i86.i = getelementptr inbounds %struct.clk_gate, ptr %call.i.i82.i, i32 0, i32 1
  %92 = ptrtoint ptr %reg.i86.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %add.ptr.i85.i, ptr %reg.i86.i, align 4
  %bit_idx.i.i = getelementptr inbounds %struct.gate_cfg, ptr %89, i32 0, i32 1
  %93 = ptrtoint ptr %bit_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %bit_idx.i.i, align 4
  %bit_idx9.i.i = getelementptr inbounds %struct.clk_gate, ptr %call.i.i82.i, i32 0, i32 2
  %95 = ptrtoint ptr %bit_idx9.i.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %94, ptr %bit_idx9.i.i, align 4
  %gate_flags.i.i = getelementptr inbounds %struct.gate_cfg, ptr %89, i32 0, i32 2
  %96 = ptrtoint ptr %gate_flags.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %gate_flags.i.i, align 1
  %flags.i87.i = getelementptr inbounds %struct.clk_gate, ptr %call.i.i82.i, i32 0, i32 3
  %98 = ptrtoint ptr %flags.i87.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %97, ptr %flags.i87.i, align 1
  %lock13.i.i = getelementptr inbounds %struct.clk_gate, ptr %call.i.i82.i, i32 0, i32 4
  %99 = ptrtoint ptr %lock13.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %lock, ptr %lock13.i.i, align 4
  %100 = ptrtoint ptr %mgate1.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %mgate1.i.i, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %101, align 4
  %inc.i88.i = add i8 %103, 1
  store i8 %inc.i88.i, ptr %101, align 4
  %conv.i89.i = zext i8 %103 to i32
  %shl.i.i = shl nuw i32 1, %conv.i89.i
  %mask.i90.i = getelementptr inbounds %struct.stm32_clk_mgate, ptr %call.i.i82.i, i32 0, i32 2
  %104 = ptrtoint ptr %mask.i90.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %shl.i.i, ptr %mask.i90.i, align 4
  %105 = load ptr, ptr %mgate1.i.i, align 4
  %mgate16.i.i = getelementptr inbounds %struct.stm32_clk_mgate, ptr %call.i.i82.i, i32 0, i32 1
  %106 = ptrtoint ptr %mgate16.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %105, ptr %mgate16.i.i, align 4
  br label %_get_stm32_gate.exit.i

if.else.i92.i:                                    ; preds = %if.then27.i
  %call.i61.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 24, i32 noundef 3520) #8
  %tobool19.not.i.i = icmp eq ptr %call.i61.i.i, null
  br i1 %tobool19.not.i.i, label %if.else.i92.i.clk_stm32_register_composite.exit_crit_edge, label %if.end22.i.i

if.else.i92.i.clk_stm32_register_composite.exit_crit_edge: ; preds = %if.else.i92.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_stm32_register_composite.exit

if.end22.i.i:                                     ; preds = %if.else.i92.i
  call void @__sanitizer_cov_trace_pc() #10
  %107 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %85, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %108, align 4
  %add.ptr25.i.i = getelementptr i8, ptr %base, i32 %110
  %reg26.i.i = getelementptr inbounds %struct.clk_gate, ptr %call.i61.i.i, i32 0, i32 1
  %111 = ptrtoint ptr %reg26.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %add.ptr25.i.i, ptr %reg26.i.i, align 4
  %bit_idx28.i.i = getelementptr inbounds %struct.gate_cfg, ptr %108, i32 0, i32 1
  %112 = ptrtoint ptr %bit_idx28.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %bit_idx28.i.i, align 4
  %bit_idx29.i.i = getelementptr inbounds %struct.clk_gate, ptr %call.i61.i.i, i32 0, i32 2
  %114 = ptrtoint ptr %bit_idx29.i.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %113, ptr %bit_idx29.i.i, align 4
  %gate_flags31.i.i = getelementptr inbounds %struct.gate_cfg, ptr %108, i32 0, i32 2
  %115 = ptrtoint ptr %gate_flags31.i.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %gate_flags31.i.i, align 1
  %flags32.i.i = getelementptr inbounds %struct.clk_gate, ptr %call.i61.i.i, i32 0, i32 3
  %117 = ptrtoint ptr %flags32.i.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %116, ptr %flags32.i.i, align 1
  %lock33.i.i = getelementptr inbounds %struct.clk_gate, ptr %call.i61.i.i, i32 0, i32 4
  %118 = ptrtoint ptr %lock33.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %lock, ptr %lock33.i.i, align 4
  br label %_get_stm32_gate.exit.i

_get_stm32_gate.exit.i:                           ; preds = %if.end22.i.i, %if.end.i91.i
  %retval.0.i93.i = phi ptr [ %call.i.i82.i, %if.end.i91.i ], [ %call.i61.i.i, %if.end22.i.i ]
  %cmp.i94.i = icmp ugt ptr %retval.0.i93.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i94.i, label %_get_stm32_gate.exit.i.clk_stm32_register_composite.exit_crit_edge, label %if.then31.i

_get_stm32_gate.exit.i.clk_stm32_register_composite.exit_crit_edge: ; preds = %_get_stm32_gate.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_stm32_register_composite.exit

if.then31.i:                                      ; preds = %_get_stm32_gate.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %119 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %7, align 4
  %ops33.i = getelementptr inbounds %struct.stm32_gate_cfg, ptr %120, i32 0, i32 2
  %121 = ptrtoint ptr %ops33.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ops33.i, align 4
  %tobool34.not.i = icmp eq ptr %122, null
  %spec.select69.i = select i1 %tobool34.not.i, ptr @clk_gate_ops, ptr %122
  br label %clk_stm32_register_composite.exit

clk_stm32_register_composite.exit:                ; preds = %if.then31.i, %_get_stm32_gate.exit.i.clk_stm32_register_composite.exit_crit_edge, %if.else.i92.i.clk_stm32_register_composite.exit_crit_edge, %if.then.i84.i.clk_stm32_register_composite.exit_crit_edge, %if.end25.i.clk_stm32_register_composite.exit_crit_edge
  %gate_ops.0.i = phi ptr [ null, %_get_stm32_gate.exit.i.clk_stm32_register_composite.exit_crit_edge ], [ null, %if.end25.i.clk_stm32_register_composite.exit_crit_edge ], [ %spec.select69.i, %if.then31.i ], [ null, %if.then.i84.i.clk_stm32_register_composite.exit_crit_edge ], [ null, %if.else.i92.i.clk_stm32_register_composite.exit_crit_edge ]
  %gate_hw.0.i = phi ptr [ %retval.0.i93.i, %_get_stm32_gate.exit.i.clk_stm32_register_composite.exit_crit_edge ], [ null, %if.end25.i.clk_stm32_register_composite.exit_crit_edge ], [ %retval.0.i93.i, %if.then31.i ], [ inttoptr (i32 -12 to ptr), %if.then.i84.i.clk_stm32_register_composite.exit_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.else.i92.i.clk_stm32_register_composite.exit_crit_edge ]
  %call41.i = tail call ptr @clk_hw_register_composite(ptr noundef %dev, ptr noundef %1, ptr noundef %3, i32 noundef %5, ptr noundef %mux_hw.0.i, ptr noundef %mux_ops.0.i, ptr noundef %div_hw.0.i, ptr noundef %div_ops.0.i, ptr noundef %gate_hw.0.i, ptr noundef %gate_ops.0.i, i32 noundef %9) #8
  ret ptr %call41.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @_clk_hw_register_gate(ptr noundef %dev, ptr nocapture noundef readnone %clk_data, ptr noundef %base, ptr noundef %lock, ptr nocapture noundef readonly %cfg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg1 = getelementptr inbounds %struct.clock_config, ptr %cfg, i32 0, i32 6
  %0 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg1, align 4
  %name = getelementptr inbounds %struct.clock_config, ptr %cfg, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %parent_name = getelementptr inbounds %struct.clock_config, ptr %cfg, i32 0, i32 2
  %4 = ptrtoint ptr %parent_name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent_name, align 4
  %flags = getelementptr inbounds %struct.clock_config, ptr %cfg, i32 0, i32 5
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %base, i32 %9
  %bit_idx = getelementptr inbounds %struct.gate_cfg, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %bit_idx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bit_idx, align 4
  %gate_flags = getelementptr inbounds %struct.gate_cfg, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %gate_flags to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %gate_flags, align 1
  %call = tail call ptr @__clk_hw_register_gate(ptr noundef %dev, ptr noundef null, ptr noundef %3, ptr noundef %5, ptr noundef null, ptr noundef null, i32 noundef %7, ptr noundef %add.ptr, i8 noundef zeroext %11, i8 noundef zeroext %13, ptr noundef %lock) #8
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @_clk_hw_register_fixed_factor(ptr noundef %dev, ptr nocapture noundef readnone %clk_data, ptr nocapture noundef readnone %base, ptr nocapture noundef readnone %lock, ptr nocapture noundef readonly %cfg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg1 = getelementptr inbounds %struct.clock_config, ptr %cfg, i32 0, i32 6
  %0 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg1, align 4
  %name = getelementptr inbounds %struct.clock_config, ptr %cfg, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %parent_name = getelementptr inbounds %struct.clock_config, ptr %cfg, i32 0, i32 2
  %4 = ptrtoint ptr %parent_name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent_name, align 4
  %flags = getelementptr inbounds %struct.clock_config, ptr %cfg, i32 0, i32 5
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  %div = getelementptr inbounds %struct.fixed_factor_cfg, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %div, align 4
  %call = tail call ptr @clk_hw_register_fixed_factor(ptr noundef %dev, ptr noundef %3, ptr noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11) #8
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @_clk_register_pll(ptr noundef %dev, ptr nocapture noundef readnone %clk_data, ptr noundef %base, ptr noundef %lock, ptr nocapture noundef readonly %cfg) #2 align 64 {
entry:
  %init.i = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg1 = getelementptr inbounds %struct.clock_config, ptr %cfg, i32 0, i32 6
  %0 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg1, align 4
  %name = getelementptr inbounds %struct.clock_config, ptr %cfg, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %parent_names = getelementptr inbounds %struct.clock_config, ptr %cfg, i32 0, i32 3
  %4 = ptrtoint ptr %parent_names to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clock_config, ptr %cfg, i32 0, i32 4
  %6 = ptrtoint ptr %num_parents to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_parents, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  %muxoff = getelementptr inbounds %struct.stm32_pll_cfg, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %muxoff to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %muxoff, align 4
  %flags = getelementptr inbounds %struct.clock_config, ptr %cfg, i32 0, i32 5
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #8
  %14 = getelementptr inbounds i8, ptr %init.i, i32 12
  %15 = call ptr @memset(ptr %14, i32 255, i32 12)
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 52, i32 noundef 3520) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.clk_register_pll.exit_crit_edge, label %if.end.i

entry.clk_register_pll.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_register_pll.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr2 = getelementptr i8, ptr %base, i32 %11
  %add.ptr = getelementptr i8, ptr %base, i32 %9
  %16 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %3, ptr %init.i, align 4
  %ops.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %17 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @pll_ops, ptr %ops.i, align 4
  %flags3.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %18 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %13, ptr %flags3.i, align 4
  %parent_names4.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %19 = ptrtoint ptr %parent_names4.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %5, ptr %parent_names4.i, align 4
  %conv.i = trunc i32 %7 to i8
  %num_parents5.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %20 = ptrtoint ptr %num_parents5.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv.i, ptr %num_parents5.i, align 4
  %lock6.i = getelementptr inbounds %struct.stm32_pll_obj, ptr %call.i.i, i32 0, i32 3, i32 6
  %21 = ptrtoint ptr %lock6.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %lock, ptr %lock6.i, align 4
  %reg8.i = getelementptr inbounds %struct.stm32_pll_obj, ptr %call.i.i, i32 0, i32 3, i32 1
  %shift.i = getelementptr inbounds %struct.stm32_pll_obj, ptr %call.i.i, i32 0, i32 3, i32 4
  %22 = ptrtoint ptr %shift.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %shift.i, align 4
  %mask.i = getelementptr inbounds %struct.stm32_pll_obj, ptr %call.i.i, i32 0, i32 3, i32 3
  %23 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 3, ptr %mask.i, align 4
  %flags12.i = getelementptr inbounds %struct.stm32_pll_obj, ptr %call.i.i, i32 0, i32 3, i32 5
  %24 = ptrtoint ptr %flags12.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 8, ptr %flags12.i, align 1
  %25 = ptrtoint ptr %reg8.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr2, ptr %reg8.i, align 4
  %hw15.i = getelementptr inbounds %struct.stm32_pll_obj, ptr %call.i.i, i32 0, i32 2
  %init16.i = getelementptr inbounds %struct.stm32_pll_obj, ptr %call.i.i, i32 0, i32 2, i32 2
  %26 = ptrtoint ptr %init16.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %init.i, ptr %init16.i, align 4
  %reg17.i = getelementptr inbounds %struct.stm32_pll_obj, ptr %call.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %reg17.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr, ptr %reg17.i, align 4
  %28 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %lock, ptr %call.i.i, align 4
  %call20.i = call i32 @clk_hw_register(ptr noundef %dev, ptr noundef %hw15.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  %29 = inttoptr i32 %call20.i to ptr
  %spec.select.i = select i1 %tobool21.not.i, ptr %hw15.i, ptr %29
  br label %clk_register_pll.exit

clk_register_pll.exit:                            ; preds = %if.end.i, %entry.clk_register_pll.exit_crit_edge
  %retval.0.i = phi ptr [ inttoptr (i32 -12 to ptr), %entry.clk_register_pll.exit_crit_edge ], [ %spec.select.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #8
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @_clk_hw_register_mux(ptr noundef %dev, ptr nocapture noundef readnone %clk_data, ptr noundef %base, ptr noundef %lock, ptr nocapture noundef readonly %cfg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg1 = getelementptr inbounds %struct.clock_config, ptr %cfg, i32 0, i32 6
  %0 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg1, align 4
  %name = getelementptr inbounds %struct.clock_config, ptr %cfg, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %num_parents = getelementptr inbounds %struct.clock_config, ptr %cfg, i32 0, i32 4
  %4 = ptrtoint ptr %num_parents to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_parents, align 4
  %conv = trunc i32 %5 to i8
  %parent_names = getelementptr inbounds %struct.clock_config, ptr %cfg, i32 0, i32 3
  %6 = ptrtoint ptr %parent_names to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent_names, align 4
  %flags = getelementptr inbounds %struct.clock_config, ptr %cfg, i32 0, i32 5
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %base, i32 %11
  %shift = getelementptr inbounds %struct.mux_cfg, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %shift, align 4
  %width = getelementptr inbounds %struct.mux_cfg, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %width, align 1
  %conv2 = zext i8 %15 to i32
  %notmask = shl nsw i32 -1, %conv2
  %sub = xor i32 %notmask, -1
  %mux_flags = getelementptr inbounds %struct.mux_cfg, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %mux_flags to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %mux_flags, align 2
  %call = tail call ptr @__clk_hw_register_mux(ptr noundef %dev, ptr noundef null, ptr noundef %3, i8 noundef zeroext %conv, ptr noundef %7, ptr noundef null, ptr noundef null, i32 noundef %9, ptr noundef %add.ptr, i8 noundef zeroext %13, i32 noundef %sub, i8 noundef zeroext %17, ptr noundef null, ptr noundef %lock) #8
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @_clk_hw_register_divider_table(ptr noundef %dev, ptr nocapture noundef readnone %clk_data, ptr noundef %base, ptr noundef %lock, ptr nocapture noundef readonly %cfg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg1 = getelementptr inbounds %struct.clock_config, ptr %cfg, i32 0, i32 6
  %0 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg1, align 4
  %name = getelementptr inbounds %struct.clock_config, ptr %cfg, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %parent_name = getelementptr inbounds %struct.clock_config, ptr %cfg, i32 0, i32 2
  %4 = ptrtoint ptr %parent_name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent_name, align 4
  %flags = getelementptr inbounds %struct.clock_config, ptr %cfg, i32 0, i32 5
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %base, i32 %9
  %shift = getelementptr inbounds %struct.div_cfg, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %shift, align 4
  %width = getelementptr inbounds %struct.div_cfg, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %width, align 1
  %div_flags = getelementptr inbounds %struct.div_cfg, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %div_flags to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %div_flags, align 2
  %table = getelementptr inbounds %struct.div_cfg, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %table, align 4
  %call = tail call ptr @__clk_hw_register_divider(ptr noundef %dev, ptr noundef null, ptr noundef %3, ptr noundef %5, ptr noundef null, ptr noundef null, i32 noundef %7, ptr noundef %add.ptr, i8 noundef zeroext %11, i8 noundef zeroext %13, i8 noundef zeroext %15, ptr noundef %17, ptr noundef %lock) #8
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @_clk_register_cktim(ptr noundef %dev, ptr nocapture noundef readnone %clk_data, ptr noundef %base, ptr noundef %lock, ptr nocapture noundef readonly %cfg) #2 align 64 {
entry:
  %parent_name.addr.i = alloca ptr, align 4
  %init.i = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg1 = getelementptr inbounds %struct.clock_config, ptr %cfg, i32 0, i32 6
  %0 = ptrtoint ptr %cfg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg1, align 4
  %name = getelementptr inbounds %struct.clock_config, ptr %cfg, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %parent_name = getelementptr inbounds %struct.clock_config, ptr %cfg, i32 0, i32 2
  %4 = ptrtoint ptr %parent_name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent_name, align 4
  %flags = getelementptr inbounds %struct.clock_config, ptr %cfg, i32 0, i32 5
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  %offset_timpre = getelementptr inbounds %struct.stm32_cktim_cfg, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %offset_timpre to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset_timpre, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name.addr.i)
  %12 = ptrtoint ptr %parent_name.addr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %5, ptr %parent_name.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #8
  %13 = getelementptr inbounds i8, ptr %init.i, i32 12
  %14 = call ptr @memset(ptr %13, i32 255, i32 12)
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 24, i32 noundef 3520) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.clk_register_cktim.exit_crit_edge, label %if.end.i

entry.clk_register_cktim.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_register_cktim.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr2 = getelementptr i8, ptr %base, i32 %11
  %add.ptr = getelementptr i8, ptr %base, i32 %9
  %15 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %3, ptr %init.i, align 4
  %ops.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @timer_ker_ops, ptr %ops.i, align 4
  %flags3.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %17 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %7, ptr %flags3.i, align 4
  %parent_names.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %18 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %parent_name.addr.i, ptr %parent_names.i, align 4
  %num_parents.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %19 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %num_parents.i, align 4
  %hw4.i = getelementptr inbounds %struct.timer_cker, ptr %call.i.i, i32 0, i32 3
  %init5.i = getelementptr inbounds %struct.timer_cker, ptr %call.i.i, i32 0, i32 3, i32 2
  %20 = ptrtoint ptr %init5.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %init.i, ptr %init5.i, align 4
  %21 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %lock, ptr %call.i.i, align 4
  %apbdiv7.i = getelementptr inbounds %struct.timer_cker, ptr %call.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %apbdiv7.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr, ptr %apbdiv7.i, align 4
  %timpre8.i = getelementptr inbounds %struct.timer_cker, ptr %call.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %timpre8.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr2, ptr %timpre8.i, align 4
  %call10.i = call i32 @clk_hw_register(ptr noundef %dev, ptr noundef %hw4.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  %24 = inttoptr i32 %call10.i to ptr
  %spec.select.i = select i1 %tobool11.not.i, ptr %hw4.i, ptr %24
  br label %clk_register_cktim.exit

clk_register_cktim.exit:                          ; preds = %if.end.i, %entry.clk_register_cktim.exit_crit_edge
  %retval.0.i = phi ptr [ inttoptr (i32 -12 to ptr), %entry.clk_register_cktim.exit_crit_edge ], [ %spec.select.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.addr.i)
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mp1_gate_clk_enable(ptr noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 6) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 6), align 4
  %call = tail call i32 %0(ptr noundef %hw) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 4) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 4), align 4
  %call1 = tail call i32 %1(ptr noundef %hw) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mp1_gate_clk_disable(ptr noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 6) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 6), align 4
  %call = tail call i32 %0(ptr noundef %hw) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body1

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %lock = getelementptr inbounds %struct.clk_gate, ptr %hw, i32 0, i32 4
  %1 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lock, align 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #8
  %bit_idx = getelementptr inbounds %struct.clk_gate, ptr %hw, i32 0, i32 2
  %3 = ptrtoint ptr %bit_idx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bit_idx, align 4
  %conv7 = zext i8 %4 to i32
  %shl = shl nuw i32 1, %conv7
  %5 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %reg = getelementptr inbounds %struct.clk_gate, ptr %hw, i32 0, i32 1
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg, align 4
  %add.ptr8 = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %5) #8, !srcloc !620
  %8 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %call4) #8
  br label %if.end

if.end:                                           ; preds = %do.body1, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_gate_is_enabled(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_composite(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_gate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pll_enable(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #8
  %reg.i = getelementptr i8, ptr %hw, i32 -4
  %2 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !617
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.unlock_crit_edge

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg.i, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !617
  %9 = or i32 %8, 16777216
  %10 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #8, !srcloc !620
  %12 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg.i, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8, !srcloc !617
  %15 = and i32 %14, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool16.not = icmp eq i32 %15, 0
  br i1 %tobool16.not, label %if.then18, label %if.end.unlock.loopexit_crit_edge

if.end.unlock.loopexit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock.loopexit

if.then18:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 25769760) #8
  %17 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg.i, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #8, !srcloc !617
  %20 = and i32 %19, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool16.not.1 = icmp eq i32 %20, 0
  br i1 %tobool16.not.1, label %if.then18.1, label %if.then18.unlock.loopexit_crit_edge

if.then18.unlock.loopexit_crit_edge:              ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock.loopexit

if.then18.1:                                      ; preds = %if.then18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 25769760) #8
  %22 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg.i, align 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #8, !srcloc !617
  %25 = and i32 %24, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool16.not.2 = icmp eq i32 %25, 0
  br i1 %tobool16.not.2, label %if.then18.2, label %if.then18.1.unlock.loopexit_crit_edge

if.then18.1.unlock.loopexit_crit_edge:            ; preds = %if.then18.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock.loopexit

if.then18.2:                                      ; preds = %if.then18.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 25769760) #8
  %27 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg.i, align 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #8, !srcloc !617
  %30 = and i32 %29, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool16.not.3 = icmp eq i32 %30, 0
  br i1 %tobool16.not.3, label %if.then18.3, label %if.then18.2.unlock.loopexit_crit_edge

if.then18.2.unlock.loopexit_crit_edge:            ; preds = %if.then18.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock.loopexit

if.then18.3:                                      ; preds = %if.then18.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 25769760) #8
  %32 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg.i, align 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #8, !srcloc !617
  %35 = and i32 %34, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool16.not.4 = icmp eq i32 %35, 0
  br i1 %tobool16.not.4, label %if.then18.4, label %if.then18.3.unlock.loopexit_crit_edge

if.then18.3.unlock.loopexit_crit_edge:            ; preds = %if.then18.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock.loopexit

if.then18.4:                                      ; preds = %if.then18.3
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 25769760) #8
  br label %unlock.loopexit

unlock.loopexit:                                  ; preds = %if.then18.4, %if.then18.3.unlock.loopexit_crit_edge, %if.then18.2.unlock.loopexit_crit_edge, %if.then18.1.unlock.loopexit_crit_edge, %if.then18.unlock.loopexit_crit_edge, %if.end.unlock.loopexit_crit_edge
  %.lcssa = phi i32 [ %15, %if.end.unlock.loopexit_crit_edge ], [ %20, %if.then18.unlock.loopexit_crit_edge ], [ %25, %if.then18.1.unlock.loopexit_crit_edge ], [ %30, %if.then18.2.unlock.loopexit_crit_edge ], [ %35, %if.then18.3.unlock.loopexit_crit_edge ], [ 0, %if.then18.4 ]
  %.lobit.le = lshr exact i32 %.lcssa, 25
  %37 = xor i32 %.lobit.le, 1
  br label %unlock

unlock:                                           ; preds = %unlock.loopexit, %entry.unlock_crit_edge
  %bit_status.0 = phi i32 [ 0, %entry.unlock_crit_edge ], [ %37, %unlock.loopexit ]
  %38 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %39, i32 noundef %call3) #8
  ret i32 %bit_status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pll_disable(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #8
  %reg6 = getelementptr i8, ptr %hw, i32 -4
  %2 = ptrtoint ptr %reg6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg6, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !617
  %5 = and i32 %4, -16777217
  %6 = ptrtoint ptr %reg6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg6, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #8, !srcloc !620
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %call3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pll_is_enabled(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #8
  %reg.i = getelementptr i8, ptr %hw, i32 -4
  %2 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !617
  %5 = lshr i32 %4, 24
  %and.i = and i32 %5, 1
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %call3) #8
  ret i32 %and.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pll_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reg1 = getelementptr i8, ptr %hw, i32 -4
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg1, align 4
  %add.ptr2 = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #8, !srcloc !617
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %shr = lshr i32 %3, 16
  %and = and i32 %shr, 63
  %add = add nuw nsw i32 %and, 1
  %and5 = and i32 %3, 511
  %add6 = add nuw nsw i32 %and5, 1
  %conv = zext i32 %parent_rate to i64
  %conv7 = zext i32 %add6 to i64
  %mul = mul nuw nsw i64 %conv7, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp179 = icmp ult i64 %mul, 4294967296
  br i1 %cmp179, label %if.then183, label %if.else189, !prof !623

if.then183:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv184 = trunc i64 %mul to i32
  %div187 = udiv i32 %conv184, %add
  %conv188 = zext i32 %div187 to i64
  br label %if.end193

if.else189:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add, i64 %mul) #13, !srcloc !624
  %asmresult1.i = extractvalue { i64, i64 } %4, 1
  br label %if.end193

if.end193:                                        ; preds = %if.else189, %if.then183
  %rate.0 = phi i64 [ %conv188, %if.then183 ], [ %asmresult1.i, %if.else189 ]
  %5 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg1, align 4
  %add.ptr2.i = getelementptr i8, ptr %6, i32 12
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #8, !srcloc !617
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  %and.i592 = and i32 %8, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i592)
  %tobool.not.i = icmp eq i32 %and.i592, 0
  %shr.i = lshr i32 %8, 3
  %and4.i = and i32 %shr.i, 8191
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool196.not660 = icmp eq i32 %and4.i, 0
  %tobool196.not = select i1 %tobool.not.i, i1 true, i1 %tobool196.not660
  br i1 %tobool196.not, label %if.end193.if.end423_crit_edge, label %if.then197

if.end193.if.end423_crit_edge:                    ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end423

if.then197:                                       ; preds = %if.end193
  %conv199 = zext i32 %and4.i to i64
  %mul200 = mul nuw nsw i64 %conv199, %conv
  %mul202 = shl nuw nsw i32 %add, 13
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul200)
  %cmp403 = icmp ult i64 %mul200, 4294967296
  br i1 %cmp403, label %if.then411, label %if.else417, !prof !623

if.then411:                                       ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #10
  %conv412 = trunc i64 %mul200 to i32
  %div415 = udiv i32 %conv412, %mul202
  %conv416 = zext i32 %div415 to i64
  br label %if.end423

if.else417:                                       ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul202, i64 %mul200) #13, !srcloc !624
  %asmresult1.i614 = extractvalue { i64, i64 } %9, 1
  br label %if.end423

if.end423:                                        ; preds = %if.else417, %if.then411, %if.end193.if.end423_crit_edge
  %rate_frac.0 = phi i64 [ 0, %if.end193.if.end423_crit_edge ], [ %conv416, %if.then411 ], [ %asmresult1.i614, %if.else417 ]
  %add424 = add i64 %rate_frac.0, %rate.0
  %conv425 = trunc i64 %add424 to i32
  ret i32 %conv425
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @pll_get_parent(ptr noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mux = getelementptr i8, ptr %hw, i32 12
  %clk.i = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk.i, align 4
  %clk1.i = getelementptr i8, ptr %hw, i32 16
  %2 = ptrtoint ptr %clk1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %clk1.i, align 4
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
  %5 = ptrtoint ptr %mux to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %mux, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_mux_ops, i32 0, i32 14) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_mux_ops, i32 0, i32 14), align 4
  %call = tail call zeroext i8 %6(ptr noundef %mux) #8
  ret i8 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_mux(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_divider(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timer_ker_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %apbdiv = getelementptr i8, ptr %hw, i32 -8
  %0 = ptrtoint ptr %apbdiv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %apbdiv, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !617
  %timpre3 = getelementptr i8, ptr %hw, i32 -4
  %3 = ptrtoint ptr %timpre3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %timpre3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !617
  %6 = and i32 %2, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %7 = lshr i32 %5, 23
  %add = and i32 %7, 2
  %mul7 = add nuw nsw i32 %add, 2
  %mul8 = select i1 %tobool.not, i32 1, i32 %mul7
  %retval.0 = mul i32 %mul8, %parent_rate
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timer_ker_round_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, ptr nocapture noundef readonly %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent_rate, align 4
  %apbdiv.i = getelementptr i8, ptr %hw, i32 -8
  %2 = ptrtoint ptr %apbdiv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %apbdiv.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !617
  %5 = and i32 %4, 100663296
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %entry.__bestmult.exit_crit_edge, label %if.end.i

entry.__bestmult.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__bestmult.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %div.i = udiv i32 %rate, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %div.i)
  %cmp2.inv.i = icmp ult i32 %div.i, 4
  %spec.store.select.i = select i1 %cmp2.inv.i, i32 2, i32 4
  br label %__bestmult.exit

__bestmult.exit:                                  ; preds = %if.end.i, %entry.__bestmult.exit_crit_edge
  %retval.0.i = phi i32 [ %spec.store.select.i, %if.end.i ], [ 1, %entry.__bestmult.exit_crit_edge ]
  %6 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %parent_rate, align 4
  %mul = mul i32 %7, %retval.0.i
  ret i32 %mul
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timer_ker_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -12
  %apbdiv.i = getelementptr i8, ptr %hw, i32 -8
  %0 = ptrtoint ptr %apbdiv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %apbdiv.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !617
  %3 = and i32 %2, 100663296
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %__bestmult.exit.thread, label %if.end.i

__bestmult.exit.thread:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %call415 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #8
  br label %sw.epilog

if.end.i:                                         ; preds = %entry
  %div.i = udiv i32 %rate, %parent_rate
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %div.i)
  %cmp2.inv.i = icmp ult i32 %div.i, 4
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  %call419 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #8
  %timpre = getelementptr i8, ptr %hw, i32 -4
  %8 = ptrtoint ptr %timpre to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %timpre, align 4
  br i1 %cmp2.inv.i, label %sw.bb, label %sw.bb7

sw.bb:                                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #8, !srcloc !620
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 16777216) #8, !srcloc !620
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb, %__bestmult.exit.thread
  %call416 = phi i32 [ %call419, %sw.bb7 ], [ %call419, %sw.bb ], [ %call415, %__bestmult.exit.thread ]
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %call416) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mp1_mgate_clk_enable(ptr noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mask = getelementptr inbounds %struct.stm32_clk_mgate, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mask, align 4
  %mgate = getelementptr inbounds %struct.stm32_clk_mgate, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %mgate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mgate, align 4
  %flag = getelementptr inbounds %struct.stm32_mgate, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flag, align 4
  %or = or i32 %5, %1
  store i32 %or, ptr %flag, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 6) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 6), align 4
  %call.i = tail call i32 %6(ptr noundef %hw) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.mp1_gate_clk_enable.exit_crit_edge

entry.mp1_gate_clk_enable.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mp1_gate_clk_enable.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 4) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 4), align 4
  %call1.i = tail call i32 %7(ptr noundef %hw) #8
  br label %mp1_gate_clk_enable.exit

mp1_gate_clk_enable.exit:                         ; preds = %if.then.i, %entry.mp1_gate_clk_enable.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mp1_mgate_clk_disable(ptr noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mask = getelementptr inbounds %struct.stm32_clk_mgate, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mask, align 4
  %neg = xor i32 %1, -1
  %mgate = getelementptr inbounds %struct.stm32_clk_mgate, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %mgate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mgate, align 4
  %flag = getelementptr inbounds %struct.stm32_mgate, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flag, align 4
  %and = and i32 %5, %neg
  store i32 %and, ptr %flag, align 4
  %6 = load ptr, ptr %mgate, align 4
  %flag5 = getelementptr inbounds %struct.stm32_mgate, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %flag5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flag5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 6) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 6), align 4
  %call.i = tail call i32 %9(ptr noundef %hw) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %do.body1.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.body1.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %lock.i = getelementptr inbounds %struct.clk_gate, ptr %hw, i32 0, i32 4
  %10 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lock.i, align 4
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #8
  %bit_idx.i = getelementptr inbounds %struct.clk_gate, ptr %hw, i32 0, i32 2
  %12 = ptrtoint ptr %bit_idx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bit_idx.i, align 4
  %conv7.i = zext i8 %13 to i32
  %shl.i = shl nuw i32 1, %conv7.i
  %14 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #8
  %reg.i = getelementptr inbounds %struct.clk_gate, ptr %hw, i32 0, i32 1
  %15 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %16, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %14) #8, !srcloc !620
  %17 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lock.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %call4.i) #8
  br label %if.end

if.end:                                           ; preds = %do.body1.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clk_mux_determine_rate(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_mmux_set_parent(ptr noundef %hw, i8 noundef zeroext %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_mux_ops, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_mux_ops, i32 0, i32 13), align 4
  %call = tail call i32 %0(ptr noundef %hw, i8 noundef zeroext %index) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #8
  %mmux = getelementptr inbounds %struct.stm32_clk_mmux, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %mmux to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mmux, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp28.not = icmp eq i8 %4, 0
  br i1 %cmp28.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %5 = phi ptr [ %9, %for.inc.for.body_crit_edge ], [ %2, %if.end.for.body_crit_edge ]
  %n.029 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.stm32_mmux, ptr %5, i32 0, i32 1, i32 %n.029
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %cmp7.not = icmp eq ptr %7, %hw
  br i1 %cmp7.not, label %for.body.for.inc_crit_edge, label %if.then9

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then9:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_hw_reparent(ptr noundef %7, ptr noundef %call4) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then9, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %n.029, 1
  %8 = ptrtoint ptr %mmux to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmux, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 4
  %conv = zext i8 %11 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @clk_mmux_get_parent(ptr noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_mux_ops, i32 0, i32 14) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_mux_ops, i32 0, i32 14), align 4
  %call = tail call zeroext i8 %0(ptr noundef %hw) #8
  ret i8 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_reparent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_divider_rtc_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #8
  %call1 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %hw, i32 noundef 3) #8
  %cmp = icmp eq ptr %call, %call1
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_divider_ops, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_divider_ops, i32 0, i32 10), align 4
  %call2 = tail call i32 %0(ptr noundef %hw, i32 noundef %parent_rate) #8
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then ], [ %parent_rate, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_divider_rtc_determine_rate(ptr noundef %hw, ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %best_parent_hw = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 4
  %0 = ptrtoint ptr %best_parent_hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %best_parent_hw, align 4
  %call = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %hw, i32 noundef 3) #8
  %cmp = icmp eq ptr %1, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_divider_ops, i32 0, i32 12) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_divider_ops, i32 0, i32 12), align 4
  %call1 = tail call i32 %2(ptr noundef %hw, ptr noundef %req) #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %best_parent_rate = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 3
  %3 = ptrtoint ptr %best_parent_rate to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %best_parent_rate, align 4
  %5 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %req, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_divider_rtc_set_rate(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #8
  %call1 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %hw, i32 noundef 3) #8
  %cmp = icmp eq ptr %call, %call1
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_divider_ops, i32 0, i32 15) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_divider_ops, i32 0, i32 15), align 4
  %call2 = tail call i32 %0(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #8
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then ], [ %parent_rate, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent_by_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @stm32_check_security(ptr nocapture noundef readonly %cfg) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp16 = icmp eq i32 %1, 0
  br i1 %cmp16, label %entry.cleanup_crit_edge, label %entry.for.cond_crit_edge

entry.for.cond_crit_edge:                         ; preds = %entry
  br label %for.cond

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry.for.cond_crit_edge
  %i.047 = phi i32 [ %inc, %for.body.for.cond_crit_edge ], [ 0, %entry.for.cond_crit_edge ]
  %inc = add nuw nsw i32 %i.047, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 36
  br i1 %exitcond.not, label %for.cond.cleanup.loopexit_crit_edge, label %for.body

for.cond.cleanup.loopexit_crit_edge:              ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.loopexit

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr [36 x i32], ptr @stm32mp1_clock_secured, i32 0, i32 %inc
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %cmp1 = icmp eq i32 %1, %3
  br i1 %cmp1, label %for.body.cleanup.loopexit_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.body.cleanup.loopexit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.loopexit

cleanup.loopexit:                                 ; preds = %for.body.cleanup.loopexit_crit_edge, %for.cond.cleanup.loopexit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %i.047)
  %cmp.le = icmp ult i32 %i.047, 35
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %entry.cleanup_crit_edge
  %cmp.lcssa = phi i1 [ true, %entry.cleanup_crit_edge ], [ %cmp.le, %cleanup.loopexit ]
  ret i1 %cmp.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 654)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 654)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !26, !27, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !44, !46, !47, !48, !49, !51, !52, !53, !54, !56, !57, !59, !61, !63, !64, !66, !67, !69, !70, !72, !73, !75, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488, !490, !492, !494, !496, !498, !500, !502, !504, !506, !508, !510, !512, !514, !516, !518, !520, !522, !524, !526, !528, !530, !532, !534, !536, !538, !540, !542, !544, !546, !548, !550, !552, !554, !556, !558, !560, !562, !564, !566, !568, !570, !572, !574, !576, !578, !580, !582, !584, !586, !588, !590, !592, !594, !596, !598, !600, !602, !604, !606}
!llvm.module.flags = !{!608, !609, !610, !611, !612, !613, !614, !615}
!llvm.ident = !{!616}

!0 = !{ptr @__initcall__kmod_clk_stm32mp1__183_2429_stm32mp1_clocks_init1, !1, !"__initcall__kmod_clk_stm32mp1__183_2429_stm32mp1_clocks_init1", i1 false, i1 false}
!1 = !{!"../drivers/clk/clk-stm32mp1.c", i32 2429, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/clk-stm32mp1.c", i32 2418, i32 11}
!4 = !{ptr @stm32mp1_rcc_clocks_driver, !5, !"stm32mp1_rcc_clocks_driver", i1 false, i1 false}
!5 = !{!"../drivers/clk/clk-stm32mp1.c", i32 2416, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/clk-stm32mp1.c", i32 2367, i32 3}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/clk-stm32mp1.c", i32 2367, i32 10}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/clk-stm32mp1.c", i32 2367, i32 17}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/clk-stm32mp1.c", i32 2367, i32 24}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/clk-stm32mp1.c", i32 2367, i32 31}
!16 = distinct !{null, !17, !"clock_deps_name", i1 false, i1 false}
!17 = !{!"../drivers/clk/clk-stm32mp1.c", i32 2366, i32 28}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/clk-stm32mp1.c", i32 2346, i32 3}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @stm32mp1_rcc_init._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @stm32mp1_rcc_init._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/clk-stm32mp1.c", i32 2318, i32 3}
!26 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @stm32_rcc_init._entry, !25, !"_entry", i1 false, i1 false}
!30 = !{ptr @stm32_rcc_init._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clk/clk-stm32mp1.c", i32 2325, i32 3}
!33 = !{ptr @stm32_rcc_init._entry.13, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @stm32_rcc_init._entry_ptr.15, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/clk-stm32mp1.c", i32 2332, i32 3}
!37 = !{ptr @stm32_rcc_init._entry.16, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @stm32_rcc_init._entry_ptr.18, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @stm32_rcc_reset_init.__key, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/clk/clk-stm32mp1.c", i32 2260, i32 2}
!41 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @stm32_reset_ops, !43, !"stm32_reset_ops", i1 false, i1 false}
!43 = !{!"../drivers/clk/clk-stm32mp1.c", i32 2244, i32 39}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/clk-stm32mp1.c", i32 2300, i32 4}
!46 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @stm32_rcc_clock_init._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @stm32_rcc_clock_init._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/clk/clk-stm32mp1.c", i32 2154, i32 3}
!51 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @stm32_register_hw_clk._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @stm32_register_hw_clk._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/clk-stm32mp1.c", i32 23, i32 8}
!56 = !{ptr @rlock, !55, !"rlock", i1 false, i1 false}
!57 = !{ptr @stm32mp1_match_data, !58, !"stm32mp1_match_data", i1 false, i1 false}
!58 = !{!"../drivers/clk/clk-stm32mp1.c", i32 2127, i32 34}
!59 = !{ptr @stm32mp1_data, !60, !"stm32mp1_data", i1 false, i1 false}
!60 = !{!"../drivers/clk/clk-stm32mp1.c", i32 2112, i32 36}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1730, i32 2}
!63 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1732, i32 2}
!66 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1734, i32 2}
!69 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.40, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1739, i32 2}
!72 = !{ptr @.str.41, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.43, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1740, i32 2}
!75 = !{ptr @.str.44, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.46, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1742, i32 2}
!78 = !{ptr @.str.48, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1745, i32 2}
!80 = !{ptr @.str.50, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1746, i32 2}
!82 = !{ptr @.str.52, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1747, i32 2}
!84 = !{ptr @.str.54, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1748, i32 2}
!86 = !{ptr @.str.56, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1751, i32 2}
!88 = !{ptr @.str.63, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1756, i32 2}
!90 = !{ptr @.str.70, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1761, i32 2}
!92 = !{ptr @.str.77, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1766, i32 2}
!94 = !{ptr @.str.84, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1771, i32 2}
!96 = !{ptr @.str.91, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1776, i32 2}
!98 = !{ptr @.str.98, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1781, i32 2}
!100 = !{ptr @.str.105, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1786, i32 2}
!102 = !{ptr @.str.112, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1791, i32 2}
!104 = !{ptr @.str.119, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1796, i32 2}
!106 = !{ptr @.str.126, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1802, i32 2}
!108 = !{ptr @.str.128, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1805, i32 2}
!110 = !{ptr @.str.130, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1808, i32 2}
!112 = !{ptr @.str.136, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1814, i32 2}
!114 = !{ptr @.str.142, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1820, i32 2}
!116 = !{ptr @.str.144, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1823, i32 2}
!118 = !{ptr @.str.146, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1826, i32 2}
!120 = !{ptr @.str.148, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1829, i32 2}
!122 = !{ptr @.str.150, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1832, i32 2}
!124 = !{ptr @.str.152, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1836, i32 2}
!126 = !{ptr @.str.154, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1837, i32 2}
!128 = !{ptr @.str.156, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1839, i32 2}
!130 = !{ptr @.str.159, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1840, i32 2}
!132 = !{ptr @.str.162, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1841, i32 2}
!134 = !{ptr @.str.165, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1842, i32 2}
!136 = !{ptr @.str.168, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1843, i32 2}
!138 = !{ptr @.str.171, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1844, i32 2}
!140 = !{ptr @.str.174, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1845, i32 2}
!142 = !{ptr @.str.177, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1846, i32 2}
!144 = !{ptr @.str.180, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1847, i32 2}
!146 = !{ptr @.str.183, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1848, i32 2}
!148 = !{ptr @.str.186, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1849, i32 2}
!150 = !{ptr @.str.189, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1850, i32 2}
!152 = !{ptr @.str.192, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1851, i32 2}
!154 = !{ptr @.str.195, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1852, i32 2}
!156 = !{ptr @.str.198, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1855, i32 2}
!158 = !{ptr @.str.199, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1856, i32 2}
!160 = !{ptr @.str.200, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1857, i32 2}
!162 = !{ptr @.str.201, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1858, i32 2}
!164 = !{ptr @.str.202, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1859, i32 2}
!166 = !{ptr @.str.203, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1860, i32 2}
!168 = !{ptr @.str.204, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1861, i32 2}
!170 = !{ptr @.str.205, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1862, i32 2}
!172 = !{ptr @.str.206, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1863, i32 2}
!174 = !{ptr @.str.207, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1864, i32 2}
!176 = !{ptr @.str.208, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1865, i32 2}
!178 = !{ptr @.str.209, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1866, i32 2}
!180 = !{ptr @.str.210, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1867, i32 2}
!182 = !{ptr @.str.211, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1868, i32 2}
!184 = !{ptr @.str.212, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1869, i32 2}
!186 = !{ptr @.str.213, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1870, i32 2}
!188 = !{ptr @.str.214, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1871, i32 2}
!190 = !{ptr @.str.215, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1872, i32 2}
!192 = !{ptr @.str.216, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1873, i32 2}
!194 = !{ptr @.str.217, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1874, i32 2}
!196 = !{ptr @.str.218, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1875, i32 2}
!198 = !{ptr @.str.219, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1876, i32 2}
!200 = !{ptr @.str.220, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1877, i32 2}
!202 = !{ptr @.str.221, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1878, i32 2}
!204 = !{ptr @.str.222, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1879, i32 2}
!206 = !{ptr @.str.223, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1880, i32 2}
!208 = !{ptr @.str.224, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1881, i32 2}
!210 = !{ptr @.str.225, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1882, i32 2}
!212 = !{ptr @.str.226, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1883, i32 2}
!214 = !{ptr @.str.227, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1884, i32 2}
!216 = !{ptr @.str.228, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1885, i32 2}
!218 = !{ptr @.str.229, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1886, i32 2}
!220 = !{ptr @.str.230, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1887, i32 2}
!222 = !{ptr @.str.231, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1888, i32 2}
!224 = !{ptr @.str.232, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1889, i32 2}
!226 = !{ptr @.str.233, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1890, i32 2}
!228 = !{ptr @.str.234, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1891, i32 2}
!230 = !{ptr @.str.235, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1892, i32 2}
!232 = !{ptr @.str.236, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1893, i32 2}
!234 = !{ptr @.str.237, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1894, i32 2}
!236 = !{ptr @.str.238, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1895, i32 2}
!238 = !{ptr @.str.239, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1896, i32 2}
!240 = !{ptr @.str.240, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1897, i32 2}
!242 = !{ptr @.str.241, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1898, i32 2}
!244 = !{ptr @.str.242, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1899, i32 2}
!246 = !{ptr @.str.243, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1900, i32 2}
!248 = !{ptr @.str.244, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1901, i32 2}
!250 = !{ptr @.str.245, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1902, i32 2}
!252 = !{ptr @.str.246, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1903, i32 2}
!254 = !{ptr @.str.247, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1904, i32 2}
!256 = !{ptr @.str.248, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1905, i32 2}
!258 = !{ptr @.str.249, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1906, i32 2}
!260 = !{ptr @.str.250, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1907, i32 2}
!262 = !{ptr @.str.251, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1908, i32 2}
!264 = !{ptr @.str.252, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1909, i32 2}
!266 = !{ptr @.str.253, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1910, i32 2}
!268 = !{ptr @.str.254, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1911, i32 2}
!270 = !{ptr @.str.255, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1912, i32 2}
!272 = !{ptr @.str.256, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1913, i32 2}
!274 = !{ptr @.str.257, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1914, i32 2}
!276 = !{ptr @.str.258, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1916, i32 2}
!278 = !{ptr @.str.259, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1917, i32 2}
!280 = !{ptr @.str.260, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1918, i32 2}
!282 = !{ptr @.str.261, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1919, i32 2}
!284 = !{ptr @.str.262, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1920, i32 2}
!286 = !{ptr @.str.263, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1921, i32 2}
!288 = !{ptr @.str.264, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1922, i32 2}
!290 = !{ptr @.str.265, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1923, i32 2}
!292 = !{ptr @.str.266, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1924, i32 2}
!294 = !{ptr @.str.267, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1925, i32 2}
!296 = !{ptr @.str.268, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1926, i32 2}
!298 = !{ptr @.str.269, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1927, i32 2}
!300 = !{ptr @.str.270, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1928, i32 2}
!302 = !{ptr @.str.271, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1929, i32 2}
!304 = !{ptr @.str.272, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1930, i32 2}
!306 = !{ptr @.str.273, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1931, i32 2}
!308 = !{ptr @.str.274, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1932, i32 2}
!310 = !{ptr @.str.275, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1933, i32 2}
!312 = !{ptr @.str.276, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1934, i32 2}
!314 = !{ptr @.str.277, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1935, i32 2}
!316 = !{ptr @.str.278, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1936, i32 2}
!318 = !{ptr @.str.279, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1937, i32 2}
!320 = !{ptr @.str.280, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1938, i32 2}
!322 = !{ptr @.str.281, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1939, i32 2}
!324 = !{ptr @.str.282, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1940, i32 2}
!326 = !{ptr @.str.283, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1941, i32 2}
!328 = !{ptr @.str.284, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1942, i32 2}
!330 = !{ptr @.str.285, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1943, i32 2}
!332 = !{ptr @.str.286, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1944, i32 2}
!334 = !{ptr @.str.287, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1945, i32 2}
!336 = !{ptr @.str.288, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1946, i32 2}
!338 = !{ptr @.str.289, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1947, i32 2}
!340 = !{ptr @.str.290, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1948, i32 2}
!342 = !{ptr @.str.291, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1949, i32 2}
!344 = !{ptr @.str.292, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1950, i32 2}
!346 = !{ptr @.str.293, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1951, i32 2}
!348 = !{ptr @.str.294, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1952, i32 2}
!350 = !{ptr @.str.295, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1953, i32 2}
!352 = !{ptr @.str.296, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1954, i32 2}
!354 = !{ptr @.str.297, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1955, i32 2}
!356 = !{ptr @.str.298, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1956, i32 2}
!358 = !{ptr @.str.299, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1957, i32 2}
!360 = !{ptr @.str.300, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1958, i32 2}
!362 = !{ptr @.str.301, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1959, i32 2}
!364 = !{ptr @.str.302, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1960, i32 2}
!366 = !{ptr @.str.303, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1961, i32 2}
!368 = !{ptr @.str.304, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1962, i32 2}
!370 = !{ptr @.str.305, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1963, i32 2}
!372 = !{ptr @.str.306, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1966, i32 2}
!374 = !{ptr @.str.308, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1967, i32 2}
!376 = !{ptr @.str.310, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1968, i32 2}
!378 = !{ptr @.str.312, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1969, i32 2}
!380 = !{ptr @.str.314, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1970, i32 2}
!382 = !{ptr @.str.316, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1971, i32 2}
!384 = !{ptr @.str.318, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1972, i32 2}
!386 = !{ptr @.str.320, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1973, i32 2}
!388 = !{ptr @.str.322, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1974, i32 2}
!390 = !{ptr @.str.324, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1975, i32 2}
!392 = !{ptr @.str.326, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1976, i32 2}
!394 = !{ptr @.str.328, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1977, i32 2}
!396 = !{ptr @.str.330, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1978, i32 2}
!398 = !{ptr @.str.332, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1979, i32 2}
!400 = !{ptr @.str.334, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1980, i32 2}
!402 = !{ptr @.str.336, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1981, i32 2}
!404 = !{ptr @.str.338, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1982, i32 2}
!406 = !{ptr @.str.340, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1983, i32 2}
!408 = !{ptr @.str.342, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1984, i32 2}
!410 = !{ptr @.str.344, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1985, i32 2}
!412 = !{ptr @.str.346, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1986, i32 2}
!414 = !{ptr @.str.348, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1987, i32 2}
!416 = !{ptr @.str.350, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1988, i32 2}
!418 = !{ptr @.str.352, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1989, i32 2}
!420 = !{ptr @.str.354, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1990, i32 2}
!422 = !{ptr @.str.356, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1991, i32 2}
!424 = !{ptr @.str.358, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1992, i32 2}
!426 = !{ptr @.str.360, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1993, i32 2}
!428 = !{ptr @.str.362, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1994, i32 2}
!430 = !{ptr @.str.364, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1995, i32 2}
!432 = !{ptr @.str.366, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1996, i32 2}
!434 = !{ptr @.str.368, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1997, i32 2}
!436 = !{ptr @.str.370, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1998, i32 2}
!438 = !{ptr @.str.372, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1999, i32 2}
!440 = !{ptr @.str.374, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/clk/clk-stm32mp1.c", i32 2000, i32 2}
!442 = !{ptr @.str.376, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/clk/clk-stm32mp1.c", i32 2001, i32 2}
!444 = !{ptr @.str.378, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/clk/clk-stm32mp1.c", i32 2002, i32 2}
!446 = !{ptr @.str.380, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/clk/clk-stm32mp1.c", i32 2003, i32 2}
!448 = !{ptr @.str.382, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/clk/clk-stm32mp1.c", i32 2004, i32 2}
!450 = !{ptr @.str.384, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/clk/clk-stm32mp1.c", i32 2005, i32 2}
!452 = !{ptr @.str.386, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/clk/clk-stm32mp1.c", i32 2006, i32 2}
!454 = !{ptr @.str.388, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/clk/clk-stm32mp1.c", i32 2007, i32 2}
!456 = !{ptr @.str.390, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/clk/clk-stm32mp1.c", i32 2008, i32 2}
!458 = !{ptr @.str.392, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/clk/clk-stm32mp1.c", i32 2009, i32 2}
!460 = !{ptr @.str.394, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/clk/clk-stm32mp1.c", i32 2010, i32 2}
!462 = !{ptr @.str.396, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/clk/clk-stm32mp1.c", i32 2011, i32 2}
!464 = !{ptr @.str.398, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/clk/clk-stm32mp1.c", i32 2014, i32 2}
!466 = !{ptr @.str.399, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/clk/clk-stm32mp1.c", i32 2015, i32 2}
!468 = !{ptr @.str.400, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../drivers/clk/clk-stm32mp1.c", i32 2016, i32 2}
!470 = !{ptr @.str.401, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../drivers/clk/clk-stm32mp1.c", i32 2017, i32 2}
!472 = !{ptr @.str.402, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../drivers/clk/clk-stm32mp1.c", i32 2018, i32 2}
!474 = !{ptr @.str.403, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../drivers/clk/clk-stm32mp1.c", i32 2020, i32 2}
!476 = !{ptr @.str.407, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../drivers/clk/clk-stm32mp1.c", i32 2027, i32 2}
!478 = !{ptr @.str.415, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../drivers/clk/clk-stm32mp1.c", i32 2033, i32 2}
!480 = !{ptr @.str.423, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../drivers/clk/clk-stm32mp1.c", i32 2039, i32 2}
!482 = !{ptr @.str.431, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../drivers/clk/clk-stm32mp1.c", i32 2046, i32 2}
!484 = !{ptr @.str.433, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../drivers/clk/clk-stm32mp1.c", i32 2049, i32 2}
!486 = !{ptr @stm32mp1_clock_cfg, !487, !"stm32mp1_clock_cfg", i1 false, i1 false}
!487 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1728, i32 34}
!488 = !{ptr @mp1_gate_clk_ops, !489, !"mp1_gate_clk_ops", i1 false, i1 false}
!489 = !{!"../drivers/clk/clk-stm32mp1.c", i32 469, i32 29}
!490 = !{ptr @ref12_parents, !491, !"ref12_parents", i1 false, i1 false}
!491 = !{!"../drivers/clk/clk-stm32mp1.c", i32 110, i32 27}
!492 = !{ptr @pll_ops, !493, !"pll_ops", i1 false, i1 false}
!493 = !{!"../drivers/clk/clk-stm32mp1.c", i32 875, i32 29}
!494 = !{ptr @ref3_parents, !495, !"ref3_parents", i1 false, i1 false}
!495 = !{!"../drivers/clk/clk-stm32mp1.c", i32 114, i32 27}
!496 = !{ptr @ref4_parents, !497, !"ref4_parents", i1 false, i1 false}
!497 = !{!"../drivers/clk/clk-stm32mp1.c", i32 118, i32 27}
!498 = !{ptr @per_src, !499, !"per_src", i1 false, i1 false}
!499 = !{!"../drivers/clk/clk-stm32mp1.c", i32 130, i32 27}
!500 = !{ptr @cpu_src, !501, !"cpu_src", i1 false, i1 false}
!501 = !{!"../drivers/clk/clk-stm32mp1.c", i32 122, i32 27}
!502 = !{ptr @axi_src, !503, !"axi_src", i1 false, i1 false}
!503 = !{!"../drivers/clk/clk-stm32mp1.c", i32 126, i32 27}
!504 = !{ptr @axi_div_table, !505, !"axi_div_table", i1 false, i1 false}
!505 = !{!"../drivers/clk/clk-stm32mp1.c", i32 266, i32 35}
!506 = !{ptr @mcu_src, !507, !"mcu_src", i1 false, i1 false}
!507 = !{!"../drivers/clk/clk-stm32mp1.c", i32 134, i32 27}
!508 = !{ptr @mcu_div_table, !509, !"mcu_div_table", i1 false, i1 false}
!509 = !{!"../drivers/clk/clk-stm32mp1.c", i32 272, i32 35}
!510 = !{ptr @apb_div_table, !511, !"apb_div_table", i1 false, i1 false}
!511 = !{!"../drivers/clk/clk-stm32mp1.c", i32 280, i32 35}
!512 = !{ptr @timer_ker_ops, !513, !"timer_ker_ops", i1 false, i1 false}
!513 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1013, i32 29}
!514 = !{ptr @per_gate_cfg, !515, !"per_gate_cfg", i1 false, i1 false}
!515 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1502, i32 30}
!516 = !{ptr @mp1_mgate, !517, !"mp1_mgate", i1 false, i1 false}
!517 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1479, i32 27}
!518 = !{ptr @mp1_mgate_clk_ops, !519, !"mp1_mgate_clk_ops", i1 false, i1 false}
!519 = !{!"../drivers/clk/clk-stm32mp1.c", i32 691, i32 29}
!520 = !{ptr @sdmmc12_src, !521, !"sdmmc12_src", i1 false, i1 false}
!521 = !{!"../drivers/clk/clk-stm32mp1.c", i32 138, i32 27}
!522 = !{ptr @ker_mux_cfg, !523, !"ker_mux_cfg", i1 false, i1 false}
!523 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1687, i32 35}
!524 = !{ptr @ker_mux, !525, !"ker_mux", i1 false, i1 false}
!525 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1664, i32 26}
!526 = !{ptr @clk_mmux_ops, !527, !"clk_mmux_ops", i1 false, i1 false}
!527 = !{!"../drivers/clk/clk-stm32mp1.c", i32 725, i32 29}
!528 = !{ptr @sdmmc3_src, !529, !"sdmmc3_src", i1 false, i1 false}
!529 = !{!"../drivers/clk/clk-stm32mp1.c", i32 142, i32 27}
!530 = !{ptr @fmc_src, !531, !"fmc_src", i1 false, i1 false}
!531 = !{!"../drivers/clk/clk-stm32mp1.c", i32 146, i32 27}
!532 = !{ptr @qspi_src, !533, !"qspi_src", i1 false, i1 false}
!533 = !{!"../drivers/clk/clk-stm32mp1.c", i32 150, i32 27}
!534 = !{ptr @rng_src, !535, !"rng_src", i1 false, i1 false}
!535 = !{!"../drivers/clk/clk-stm32mp1.c", i32 158, i32 27}
!536 = !{ptr @usbphy_src, !537, !"usbphy_src", i1 false, i1 false}
!537 = !{!"../drivers/clk/clk-stm32mp1.c", i32 162, i32 27}
!538 = !{ptr @stgen_src, !539, !"stgen_src", i1 false, i1 false}
!539 = !{!"../drivers/clk/clk-stm32mp1.c", i32 170, i32 27}
!540 = !{ptr @spdif_src, !541, !"spdif_src", i1 false, i1 false}
!541 = !{!"../drivers/clk/clk-stm32mp1.c", i32 174, i32 27}
!542 = !{ptr @.str.584, !543, !"<string literal>", i1 false, i1 false}
!543 = !{!"../drivers/clk/clk-stm32mp1.c", i32 179, i32 22}
!544 = !{ptr @spi123_src, !545, !"spi123_src", i1 false, i1 false}
!545 = !{!"../drivers/clk/clk-stm32mp1.c", i32 178, i32 27}
!546 = !{ptr @spi45_src, !547, !"spi45_src", i1 false, i1 false}
!547 = !{!"../drivers/clk/clk-stm32mp1.c", i32 182, i32 27}
!548 = !{ptr @spi6_src, !549, !"spi6_src", i1 false, i1 false}
!549 = !{!"../drivers/clk/clk-stm32mp1.c", i32 186, i32 27}
!550 = !{ptr @cec_src, !551, !"cec_src", i1 false, i1 false}
!551 = !{!"../drivers/clk/clk-stm32mp1.c", i32 190, i32 27}
!552 = !{ptr @i2c12_src, !553, !"i2c12_src", i1 false, i1 false}
!553 = !{!"../drivers/clk/clk-stm32mp1.c", i32 194, i32 27}
!554 = !{ptr @i2c35_src, !555, !"i2c35_src", i1 false, i1 false}
!555 = !{!"../drivers/clk/clk-stm32mp1.c", i32 198, i32 27}
!556 = !{ptr @i2c46_src, !557, !"i2c46_src", i1 false, i1 false}
!557 = !{!"../drivers/clk/clk-stm32mp1.c", i32 202, i32 27}
!558 = !{ptr @lptim1_src, !559, !"lptim1_src", i1 false, i1 false}
!559 = !{!"../drivers/clk/clk-stm32mp1.c", i32 206, i32 27}
!560 = !{ptr @lptim23_src, !561, !"lptim23_src", i1 false, i1 false}
!561 = !{!"../drivers/clk/clk-stm32mp1.c", i32 210, i32 27}
!562 = !{ptr @lptim45_src, !563, !"lptim45_src", i1 false, i1 false}
!563 = !{!"../drivers/clk/clk-stm32mp1.c", i32 214, i32 27}
!564 = !{ptr @usart1_src, !565, !"usart1_src", i1 false, i1 false}
!565 = !{!"../drivers/clk/clk-stm32mp1.c", i32 218, i32 27}
!566 = !{ptr @usart234578_src, !567, !"usart234578_src", i1 false, i1 false}
!567 = !{!"../drivers/clk/clk-stm32mp1.c", i32 222, i32 27}
!568 = !{ptr @usart6_src, !569, !"usart6_src", i1 false, i1 false}
!569 = !{!"../drivers/clk/clk-stm32mp1.c", i32 226, i32 27}
!570 = !{ptr @fdcan_src, !571, !"fdcan_src", i1 false, i1 false}
!571 = !{!"../drivers/clk/clk-stm32mp1.c", i32 230, i32 27}
!572 = !{ptr @sai_src, !573, !"sai_src", i1 false, i1 false}
!573 = !{!"../drivers/clk/clk-stm32mp1.c", i32 234, i32 27}
!574 = !{ptr @.str.585, !575, !"<string literal>", i1 false, i1 false}
!575 = !{!"../drivers/clk/clk-stm32mp1.c", i32 239, i32 44}
!576 = !{ptr @sai2_src, !577, !"sai2_src", i1 false, i1 false}
!577 = !{!"../drivers/clk/clk-stm32mp1.c", i32 238, i32 27}
!578 = !{ptr @adc12_src, !579, !"adc12_src", i1 false, i1 false}
!579 = !{!"../drivers/clk/clk-stm32mp1.c", i32 242, i32 27}
!580 = !{ptr @.str.586, !581, !"<string literal>", i1 false, i1 false}
!581 = !{!"../drivers/clk/clk-stm32mp1.c", i32 247, i32 2}
!582 = !{ptr @dsi_src, !583, !"dsi_src", i1 false, i1 false}
!583 = !{!"../drivers/clk/clk-stm32mp1.c", i32 246, i32 27}
!584 = !{ptr @.str.587, !585, !"<string literal>", i1 false, i1 false}
!585 = !{!"../drivers/clk/clk-stm32mp1.c", i32 167, i32 12}
!586 = !{ptr @usbo_src, !587, !"usbo_src", i1 false, i1 false}
!587 = !{!"../drivers/clk/clk-stm32mp1.c", i32 166, i32 27}
!588 = !{ptr @eth_src, !589, !"eth_src", i1 false, i1 false}
!589 = !{!"../drivers/clk/clk-stm32mp1.c", i32 154, i32 27}
!590 = !{ptr @.str.588, !591, !"<string literal>", i1 false, i1 false}
!591 = !{!"../drivers/clk/clk-stm32mp1.c", i32 251, i32 2}
!592 = !{ptr @rtc_src, !593, !"rtc_src", i1 false, i1 false}
!593 = !{!"../drivers/clk/clk-stm32mp1.c", i32 250, i32 27}
!594 = !{ptr @rtc_div_clk_ops, !595, !"rtc_div_clk_ops", i1 false, i1 false}
!595 = !{!"../drivers/clk/clk-stm32mp1.c", i32 1087, i32 29}
!596 = !{ptr @mco1_src, !597, !"mco1_src", i1 false, i1 false}
!597 = !{!"../drivers/clk/clk-stm32mp1.c", i32 254, i32 27}
!598 = !{ptr @mco2_src, !599, !"mco2_src", i1 false, i1 false}
!599 = !{!"../drivers/clk/clk-stm32mp1.c", i32 258, i32 27}
!600 = !{ptr @ck_trace_src, !601, !"ck_trace_src", i1 false, i1 false}
!601 = !{!"../drivers/clk/clk-stm32mp1.c", i32 262, i32 27}
!602 = !{ptr @ck_trace_div_table, !603, !"ck_trace_div_table", i1 false, i1 false}
!603 = !{!"../drivers/clk/clk-stm32mp1.c", i32 286, i32 35}
!604 = !{ptr @stm32mp1_data_secure, !605, !"stm32mp1_data_secure", i1 false, i1 false}
!605 = !{!"../drivers/clk/clk-stm32mp1.c", i32 2119, i32 36}
!606 = !{ptr @stm32mp1_clock_secured, !607, !"stm32mp1_clock_secured", i1 false, i1 false}
!607 = !{!"../drivers/clk/clk-stm32mp1.c", i32 2055, i32 18}
!608 = !{i32 1, !"wchar_size", i32 2}
!609 = !{i32 1, !"min_enum_size", i32 4}
!610 = !{i32 8, !"branch-target-enforcement", i32 0}
!611 = !{i32 8, !"sign-return-address", i32 0}
!612 = !{i32 8, !"sign-return-address-all", i32 0}
!613 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!614 = !{i32 7, !"uwtable", i32 1}
!615 = !{i32 7, !"frame-pointer", i32 2}
!616 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!617 = !{i64 4642374}
!618 = !{i64 2153294302}
!619 = !{i64 2153292004}
!620 = !{i64 4641956}
!621 = !{i64 2153293161}
!622 = !{i64 2153293552}
!623 = !{!"branch_weights", i32 2000, i32 1}
!624 = !{i64 2148691270, i64 2148691550, i64 2148691884, i64 2148692218}
