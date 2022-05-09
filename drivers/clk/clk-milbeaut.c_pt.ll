; ModuleID = '/llk/IR_all_yes/drivers/clk/clk-milbeaut.c_pt.bc'
source_filename = "../drivers/clk/clk-milbeaut.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.m10v_clk_div_factors = type { ptr, ptr, i32, i8, i8, ptr, i32, i32 }
%struct.m10v_clk_div_fixed_data = type { ptr, ptr, i8, i8, i32 }
%struct.m10v_clk_mux_factors = type { ptr, ptr, i8, i32, i8, i8, ptr, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_div_table = type { i32, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
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
%struct.m10v_clk_divider = type { %struct.clk_hw, ptr, i8, i8, i8, ptr, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.clk_mux = type { %struct.clk_hw, ptr, ptr, i32, i8, i8, ptr }

@__initcall__kmod_clk_milbeaut__183_608_m10v_clk_driver_init6 = internal global ptr @m10v_clk_driver_init, section ".initcall6.init", align 4
@__of_table_m10v_cc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,milbeaut-m10v-ccu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @m10v_cc_of_clk_init_driver }, section "__clk_of_table", align 4
@m10v_clk_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @m10v_clk_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @m10v_clk_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"m10v-ccu\00", [23 x i8] zeroinitializer }, align 32
@m10v_clk_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,milbeaut-m10v-ccu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@m10v_div_factor_data = internal constant { [12 x %struct.m10v_clk_div_factors], [80 x i8] } { [12 x %struct.m10v_clk_div_factors] [%struct.m10v_clk_div_factors { ptr @.str.5, ptr @.str.6, i32 0, i8 28, i8 3, ptr @emmcclk_table, i32 0, i32 0 }, %struct.m10v_clk_div_factors { ptr @.str.7, ptr @.str.8, i32 36, i8 7, i8 3, ptr @mclk400_table, i32 0, i32 -1 }, %struct.m10v_clk_div_factors { ptr @.str.9, ptr @.str.8, i32 36, i8 3, i8 4, ptr @mclk200_table, i32 0, i32 -1 }, %struct.m10v_clk_div_factors { ptr @.str.10, ptr @.str.8, i32 36, i8 0, i8 3, ptr @aclk400_table, i32 0, i32 -1 }, %struct.m10v_clk_div_factors { ptr @.str.11, ptr @.str.12, i32 44, i8 0, i8 2, ptr @aclk300_table, i32 0, i32 -1 }, %struct.m10v_clk_div_factors { ptr @.str.13, ptr @.str.8, i32 32, i8 20, i8 4, ptr @aclk_table, i32 0, i32 1 }, %struct.m10v_clk_div_factors { ptr @.str.14, ptr @.str.8, i32 32, i8 16, i8 4, ptr @aclkexs_table, i32 0, i32 -1 }, %struct.m10v_clk_div_factors { ptr @.str.15, ptr @.str.8, i32 32, i8 7, i8 5, ptr @hclk_table, i32 0, i32 2 }, %struct.m10v_clk_div_factors { ptr @.str.16, ptr @.str.8, i32 32, i8 12, i8 4, ptr @hclkbmh_table, i32 0, i32 -1 }, %struct.m10v_clk_div_factors { ptr @.str.17, ptr @.str.8, i32 32, i8 0, i8 7, ptr @pclk_table, i32 0, i32 3 }, %struct.m10v_clk_div_factors { ptr @.str.18, ptr @.str.19, i32 0, i8 3, i8 5, ptr @uhs1clk0_table, i32 0, i32 -1 }, %struct.m10v_clk_div_factors { ptr @.str.20, ptr @.str.21, i32 0, i8 18, i8 4, ptr @uhs2clk_table, i32 0, i32 -1 }], [80 x i8] zeroinitializer }, align 32
@m10v_clk_data = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@m10v_div_fixed_data = internal constant { [24 x %struct.m10v_clk_div_fixed_data], [96 x i8] } { [24 x %struct.m10v_clk_div_fixed_data] [%struct.m10v_clk_div_fixed_data { ptr @.str.22, ptr null, i8 2, i8 1, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.23, ptr null, i8 20, i8 1, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.8, ptr @.str.24, i8 2, i8 1, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.12, ptr @.str.25, i8 2, i8 1, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.26, ptr @.str.27, i8 2, i8 1, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.21, ptr @.str.27, i8 3, i8 1, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.28, ptr @.str.19, i8 2, i8 1, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.29, ptr @.str.19, i8 5, i8 1, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.30, ptr @.str.12, i8 12, i8 1, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.31, ptr @.str.8, i8 16, i8 1, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.32, ptr @.str.33, i8 2, i8 1, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.34, ptr @.str.33, i8 4, i8 1, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.35, ptr @.str.28, i8 8, i8 1, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.36, ptr @.str.19, i8 4, i8 1, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.37, ptr @.str.19, i8 8, i8 1, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.38, ptr @.str.19, i8 16, i8 1, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.39, ptr @.str.19, i8 8, i8 1, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.40, ptr @.str.19, i8 16, i8 1, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.41, ptr @.str.28, i8 8, i8 1, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.42, ptr @.str.28, i8 10, i8 1, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.43, ptr @.str.28, i8 13, i8 1, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.44, ptr @.str.28, i8 16, i8 1, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.45, ptr @.str.28, i8 40, i8 1, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.46, ptr @.str.29, i8 10, i8 1, i32 -1 }], [96 x i8] zeroinitializer }, align 32
@m10v_mux_factor_data = internal constant { [4 x %struct.m10v_clk_mux_factors], [32 x i8] } { [4 x %struct.m10v_clk_mux_factors] [%struct.m10v_clk_mux_factors { ptr @.str.47, ptr @spi_mux_names, i8 3, i32 28, i8 3, i8 7, ptr @spi_mux_table, i32 0, i32 5 }, %struct.m10v_clk_mux_factors { ptr @.str.48, ptr @uhs1clk2_mux_names, i8 4, i32 0, i8 13, i8 31, ptr @uhs1clk2_mux_table, i32 0, i32 7 }, %struct.m10v_clk_mux_factors { ptr @.str.49, ptr @uhs1clk1_mux_names, i8 3, i32 0, i8 8, i8 31, ptr @uhs1clk1_mux_table, i32 0, i32 -1 }, %struct.m10v_clk_mux_factors { ptr @.str.50, ptr @nfclk_mux_names, i8 6, i32 0, i8 22, i8 127, ptr @nfclk_mux_table, i32 0, i32 6 }], [32 x i8] zeroinitializer }, align 32
@m10v_crglock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@m10v_clk_divider_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @m10v_clk_divider_recalc_rate, ptr @m10v_clk_divider_round_rate, ptr null, ptr null, ptr null, ptr @m10v_clk_divider_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/clk/clk-milbeaut.c\00", [37 x i8] zeroinitializer }, align 32
@m10v_clk_divider_set_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.1, i32 440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s:%s couldn't stabilize\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"m10v_clk_divider_set_rate\00", [38 x i8] zeroinitializer }, align 32
@m10v_clk_divider_set_rate._entry_ptr = internal global ptr @m10v_clk_divider_set_rate._entry, section ".printk_index", align 4
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"m10v_crglock\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"emmc\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pll11\00", [26 x i8] zeroinitializer }, align 32
@emmcclk_table = internal constant { [5 x %struct.clk_div_table], [56 x i8] } { [5 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 8 }, %struct.clk_div_table { i32 1, i32 9 }, %struct.clk_div_table { i32 2, i32 10 }, %struct.clk_div_table { i32 3, i32 15 }, %struct.clk_div_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mclk400\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll1-2\00", [25 x i8] zeroinitializer }, align 32
@mclk400_table = internal constant { [3 x %struct.clk_div_table], [40 x i8] } { [3 x %struct.clk_div_table] [%struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mclk200\00", [24 x i8] zeroinitializer }, align 32
@mclk200_table = internal constant { [3 x %struct.clk_div_table], [40 x i8] } { [3 x %struct.clk_div_table] [%struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table { i32 7, i32 8 }, %struct.clk_div_table zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"aclk400\00", [24 x i8] zeroinitializer }, align 32
@aclk400_table = internal constant { [3 x %struct.clk_div_table], [40 x i8] } { [3 x %struct.clk_div_table] [%struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"aclk300\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll2-2\00", [25 x i8] zeroinitializer }, align 32
@aclk300_table = internal constant { [3 x %struct.clk_div_table], [40 x i8] } { [3 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 2 }, %struct.clk_div_table { i32 1, i32 3 }, %struct.clk_div_table zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"aclk\00", [27 x i8] zeroinitializer }, align 32
@aclk_table = internal constant { [3 x %struct.clk_div_table], [40 x i8] } { [3 x %struct.clk_div_table] [%struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table { i32 7, i32 8 }, %struct.clk_div_table zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"aclkexs\00", [24 x i8] zeroinitializer }, align 32
@aclkexs_table = internal constant { [5 x %struct.clk_div_table], [56 x i8] } { [5 x %struct.clk_div_table] [%struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table { i32 4, i32 5 }, %struct.clk_div_table { i32 5, i32 6 }, %struct.clk_div_table { i32 7, i32 8 }, %struct.clk_div_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hclk\00", [27 x i8] zeroinitializer }, align 32
@hclk_table = internal constant { [3 x %struct.clk_div_table], [40 x i8] } { [3 x %struct.clk_div_table] [%struct.clk_div_table { i32 7, i32 8 }, %struct.clk_div_table { i32 15, i32 16 }, %struct.clk_div_table zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hclkbmh\00", [24 x i8] zeroinitializer }, align 32
@hclkbmh_table = internal constant { [3 x %struct.clk_div_table], [40 x i8] } { [3 x %struct.clk_div_table] [%struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table { i32 7, i32 8 }, %struct.clk_div_table zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@pclk_table = internal constant { [3 x %struct.clk_div_table], [40 x i8] } { [3 x %struct.clk_div_table] [%struct.clk_div_table { i32 15, i32 16 }, %struct.clk_div_table { i32 31, i32 32 }, %struct.clk_div_table zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uhs1clk0\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll7\00", [27 x i8] zeroinitializer }, align 32
@uhs1clk0_table = internal constant { [6 x %struct.clk_div_table], [48 x i8] } { [6 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 2 }, %struct.clk_div_table { i32 1, i32 3 }, %struct.clk_div_table { i32 2, i32 4 }, %struct.clk_div_table { i32 3, i32 8 }, %struct.clk_div_table { i32 4, i32 16 }, %struct.clk_div_table zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"uhs2clk\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll6-3\00", [25 x i8] zeroinitializer }, align 32
@uhs2clk_table = internal constant { [9 x %struct.clk_div_table], [56 x i8] } { [9 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 9 }, %struct.clk_div_table { i32 1, i32 10 }, %struct.clk_div_table { i32 2, i32 11 }, %struct.clk_div_table { i32 3, i32 12 }, %struct.clk_div_table { i32 4, i32 13 }, %struct.clk_div_table { i32 5, i32 14 }, %struct.clk_div_table { i32 6, i32 16 }, %struct.clk_div_table { i32 7, i32 18 }, %struct.clk_div_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"usb2\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pcisuppclk\00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll1\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll2\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll6-2\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll6\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll7-2\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll7-5\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ca7wd\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pclkca7wd\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spi-parent0\00", [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pll10-2\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spi-parent1\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spi-parent2\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"uhs1clk2-parent0\00", [47 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"uhs1clk2-parent1\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"uhs1clk2-parent2\00", [47 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"uhs1clk1-parent0\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"uhs1clk1-parent1\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nfclk-parent0\00", [18 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nfclk-parent1\00", [18 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nfclk-parent2\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nfclk-parent3\00", [18 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nfclk-parent4\00", [18 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nfclk-parent5\00", [18 x i8] zeroinitializer }, align 32
@m10v_mux_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @__clk_mux_determine_rate, ptr @m10v_mux_set_parent, ptr @m10v_mux_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"spi\00", [28 x i8] zeroinitializer }, align 32
@spi_mux_names = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.32, ptr @.str.34, ptr @.str.35], [20 x i8] zeroinitializer }, align 32
@spi_mux_table = internal global { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 1, i32 2], [20 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uhs1clk2\00", [23 x i8] zeroinitializer }, align 32
@uhs1clk2_mux_names = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.26], [16 x i8] zeroinitializer }, align 32
@uhs1clk2_mux_table = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 2, i32 3, i32 4, i32 8], [16 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uhs1clk1\00", [23 x i8] zeroinitializer }, align 32
@uhs1clk1_mux_names = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.39, ptr @.str.40, ptr @.str.26], [20 x i8] zeroinitializer }, align 32
@uhs1clk1_mux_table = internal global { [3 x i32], [20 x i8] } { [3 x i32] [i32 3, i32 4, i32 8], [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nfclk\00", [26 x i8] zeroinitializer }, align 32
@nfclk_mux_names = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46], [40 x i8] zeroinitializer }, align 32
@nfclk_mux_table = internal global { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 8], [40 x i8] zeroinitializer }, align 32
@m10v_pll_fixed_data = internal constant { [8 x %struct.m10v_clk_div_fixed_data], [32 x i8] } { [8 x %struct.m10v_clk_div_fixed_data] [%struct.m10v_clk_div_fixed_data { ptr @.str.24, ptr null, i8 1, i8 40, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.25, ptr null, i8 1, i8 30, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.27, ptr null, i8 1, i8 35, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.19, ptr null, i8 1, i8 40, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.52, ptr null, i8 1, i8 33, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.53, ptr null, i8 5, i8 108, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.33, ptr @.str.53, i8 2, i8 1, i32 -1 }, %struct.m10v_clk_div_fixed_data { ptr @.str.6, ptr null, i8 2, i8 75, i32 -1 }], [32 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rclk\00", [27 x i8] zeroinitializer }, align 32
@rclk_table = internal constant { [5 x %struct.clk_div_table], [56 x i8] } { [5 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 8 }, %struct.clk_div_table { i32 1, i32 16 }, %struct.clk_div_table { i32 2, i32 24 }, %struct.clk_div_table { i32 3, i32 32 }, %struct.clk_div_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll9\00", [27 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pll10\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 32, i64 36]
@___asan_gen_.54 = private unnamed_addr constant [16 x i8] c"m10v_clk_driver\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 601, i32 31 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 604, i32 11 }
@___asan_gen_.60 = private unnamed_addr constant [16 x i8] c"m10v_clk_dt_ids\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 596, i32 34 }
@___asan_gen_.63 = private unnamed_addr constant [21 x i8] c"m10v_div_factor_data\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 253, i32 42 }
@___asan_gen_.66 = private unnamed_addr constant [14 x i8] c"m10v_clk_data\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 65, i32 36 }
@___asan_gen_.69 = private unnamed_addr constant [20 x i8] c"m10v_div_fixed_data\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 226, i32 45 }
@___asan_gen_.72 = private unnamed_addr constant [21 x i8] c"m10v_mux_factor_data\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 269, i32 42 }
@___asan_gen_.75 = private unnamed_addr constant [13 x i8] c"m10v_crglock\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [21 x i8] c"m10v_clk_divider_ops\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 451, i32 29 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 437, i32 7 }
@___asan_gen_.84 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 439, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 67, i32 8 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 254, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 254, i32 11 }
@___asan_gen_.102 = private unnamed_addr constant [14 x i8] c"emmcclk_table\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 100, i32 35 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 256, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 256, i32 14 }
@___asan_gen_.111 = private unnamed_addr constant [14 x i8] c"mclk400_table\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 108, i32 35 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 257, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant [14 x i8] c"mclk200_table\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 114, i32 35 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 258, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant [14 x i8] c"aclk400_table\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 120, i32 35 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 259, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 259, i32 14 }
@___asan_gen_.132 = private unnamed_addr constant [14 x i8] c"aclk300_table\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 126, i32 35 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 260, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [11 x i8] c"aclk_table\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 132, i32 35 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 261, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [14 x i8] c"aclkexs_table\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 138, i32 35 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 262, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant [11 x i8] c"hclk_table\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 146, i32 35 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 263, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant [14 x i8] c"hclkbmh_table\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 152, i32 35 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 264, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant [11 x i8] c"pclk_table\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 158, i32 35 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 265, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 265, i32 15 }
@___asan_gen_.171 = private unnamed_addr constant [15 x i8] c"uhs1clk0_table\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 172, i32 35 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 266, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 266, i32 14 }
@___asan_gen_.180 = private unnamed_addr constant [14 x i8] c"uhs2clk_table\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 181, i32 35 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 227, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 228, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 229, i32 18 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 230, i32 18 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 231, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 231, i32 18 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 233, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 234, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 235, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 236, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 237, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 237, i32 21 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 238, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 239, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 240, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 241, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 242, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 243, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 244, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 245, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 246, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 247, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 248, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 249, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 250, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant [13 x i8] c"m10v_mux_ops\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 319, i32 29 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 270, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant [14 x i8] c"spi_mux_names\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 194, i32 27 }
@___asan_gen_.267 = private unnamed_addr constant [14 x i8] c"spi_mux_table\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 193, i32 12 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 272, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant [19 x i8] c"uhs1clk2_mux_names\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 199, i32 27 }
@___asan_gen_.276 = private unnamed_addr constant [19 x i8] c"uhs1clk2_mux_table\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 198, i32 12 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 274, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant [19 x i8] c"uhs1clk1_mux_names\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 205, i32 27 }
@___asan_gen_.285 = private unnamed_addr constant [19 x i8] c"uhs1clk1_mux_table\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 204, i32 12 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 276, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant [16 x i8] c"nfclk_mux_names\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 210, i32 27 }
@___asan_gen_.294 = private unnamed_addr constant [16 x i8] c"nfclk_mux_table\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 209, i32 12 }
@___asan_gen_.297 = private unnamed_addr constant [20 x i8] c"m10v_pll_fixed_data\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 215, i32 45 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 655, i32 42 }
@___asan_gen_.303 = private unnamed_addr constant [11 x i8] c"rclk_table\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 164, i32 35 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 220, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.310 = private constant [30 x i8] c"../drivers/clk/clk-milbeaut.c\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 221, i32 3 }
@llvm.compiler.used = appending global [89 x ptr] [ptr @__initcall__kmod_clk_milbeaut__183_608_m10v_clk_driver_init6, ptr @__of_table_m10v_cc, ptr @m10v_clk_divider_set_rate._entry, ptr @m10v_clk_divider_set_rate._entry_ptr, ptr @m10v_clk_driver, ptr @.str, ptr @m10v_clk_dt_ids, ptr @m10v_div_factor_data, ptr @m10v_clk_data, ptr @m10v_div_fixed_data, ptr @m10v_mux_factor_data, ptr @m10v_crglock, ptr @m10v_clk_divider_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @emmcclk_table, ptr @.str.7, ptr @.str.8, ptr @mclk400_table, ptr @.str.9, ptr @mclk200_table, ptr @.str.10, ptr @aclk400_table, ptr @.str.11, ptr @.str.12, ptr @aclk300_table, ptr @.str.13, ptr @aclk_table, ptr @.str.14, ptr @aclkexs_table, ptr @.str.15, ptr @hclk_table, ptr @.str.16, ptr @hclkbmh_table, ptr @.str.17, ptr @pclk_table, ptr @.str.18, ptr @.str.19, ptr @uhs1clk0_table, ptr @.str.20, ptr @.str.21, ptr @uhs2clk_table, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @m10v_mux_ops, ptr @.str.47, ptr @spi_mux_names, ptr @spi_mux_table, ptr @.str.48, ptr @uhs1clk2_mux_names, ptr @uhs1clk2_mux_table, ptr @.str.49, ptr @uhs1clk1_mux_names, ptr @uhs1clk1_mux_table, ptr @.str.50, ptr @nfclk_mux_names, ptr @nfclk_mux_table, ptr @m10v_pll_fixed_data, ptr @.str.51, ptr @rclk_table, ptr @.str.52, ptr @.str.53], section "llvm.metadata"
@0 = internal global [86 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m10v_clk_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m10v_clk_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m10v_div_factor_data to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m10v_clk_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m10v_div_fixed_data to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m10v_mux_factor_data to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m10v_crglock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m10v_clk_divider_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m10v_clk_divider_set_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emmcclk_table to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mclk400_table to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mclk200_table to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aclk400_table to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aclk300_table to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aclk_table to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aclkexs_table to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclk_table to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hclkbmh_table to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pclk_table to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uhs1clk0_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uhs2clk_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m10v_mux_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_mux_names to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_mux_table to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uhs1clk2_mux_names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uhs1clk2_mux_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uhs1clk1_mux_names to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uhs1clk1_mux_table to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfclk_mux_names to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfclk_mux_table to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m10v_pll_fixed_data to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rclk_table to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @m10v_clk_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @m10v_clk_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @m10v_cc_of_clk_init_driver(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %_flags.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %_flags.i) #7
  tail call fastcc void @m10v_cc_init(ptr noundef %np) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m10v_clk_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %init.i.i61 = alloca %struct.clk_init_data, align 4
  %parent_name.addr.i.i = alloca ptr, align 4
  %init.i.i = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %call2 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call) #7
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call ptr @of_clk_get_parent_name(ptr noundef %1, i32 noundef 0) #7
  %3 = getelementptr inbounds i8, ptr %init.i.i, i32 12
  %add.ptr.i = getelementptr i8, ptr %call2, i32 40
  %ops.i.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i.i, i32 0, i32 1
  %flags3.i.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i.i, i32 0, i32 6
  %parent_names.i.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i.i, i32 0, i32 2
  %num_parents.i.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i.i, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %m10v_reg_div_pre.exit.for.body_crit_edge, %if.end
  %id.080 = phi i32 [ 0, %if.end ], [ %inc, %m10v_reg_div_pre.exit.for.body_crit_edge ]
  %arrayidx = getelementptr [12 x %struct.m10v_clk_div_factors], ptr @m10v_div_factor_data, i32 0, i32 %id.080
  %4 = load ptr, ptr @m10v_clk_data, align 4
  %offset.i = getelementptr [12 x %struct.m10v_clk_div_factors], ptr @m10v_div_factor_data, i32 0, i32 %id.080, i32 2
  %5 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %offset.i, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %for.body.if.end.i_crit_edge [
    i32 32, label %for.body.if.then.i_crit_edge
    i32 36, label %for.body.if.then.i_crit_edge90
  ]

for.body.if.then.i_crit_edge90:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.body.if.then.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.if.then.i_crit_edge, %for.body.if.then.i_crit_edge90
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.if.end.i_crit_edge
  %write_valid_reg.0.i = phi ptr [ %add.ptr.i, %if.then.i ], [ null, %for.body.if.end.i_crit_edge ]
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %parent_name.i = getelementptr [12 x %struct.m10v_clk_div_factors], ptr @m10v_div_factor_data, i32 0, i32 %id.080, i32 1
  %10 = ptrtoint ptr %parent_name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent_name.i, align 4
  %shift.i = getelementptr [12 x %struct.m10v_clk_div_factors], ptr @m10v_div_factor_data, i32 0, i32 %id.080, i32 3
  %12 = ptrtoint ptr %shift.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %shift.i, align 4
  %width.i = getelementptr [12 x %struct.m10v_clk_div_factors], ptr @m10v_div_factor_data, i32 0, i32 %id.080, i32 4
  %14 = ptrtoint ptr %width.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %width.i, align 1
  %div_flags.i = getelementptr [12 x %struct.m10v_clk_div_factors], ptr @m10v_div_factor_data, i32 0, i32 %id.080, i32 6
  %16 = ptrtoint ptr %div_flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %div_flags.i, align 4
  %table.i = getelementptr [12 x %struct.m10v_clk_div_factors], ptr @m10v_div_factor_data, i32 0, i32 %id.080, i32 5
  %18 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %table.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name.addr.i.i) #7
  %20 = ptrtoint ptr %parent_name.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %11, ptr %parent_name.addr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i.i) #7
  %21 = call ptr @memset(ptr %3, i32 255, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 32) #11
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.m10v_clk_hw_register_divider.exit.i_crit_edge, label %if.end.i.i

if.end.i.m10v_clk_hw_register_divider.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %m10v_clk_hw_register_divider.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  %conv.i = trunc i32 %17 to i8
  %add.ptr4.i = getelementptr i8, ptr %call2, i32 %6
  %23 = ptrtoint ptr %init.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %9, ptr %init.i.i, align 4
  %24 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @m10v_clk_divider_ops, ptr %ops.i.i, align 4
  %25 = ptrtoint ptr %flags3.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4, ptr %flags3.i.i, align 4
  %26 = ptrtoint ptr %parent_names.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %parent_name.addr.i.i, ptr %parent_names.i.i, align 4
  %27 = ptrtoint ptr %num_parents.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %num_parents.i.i, align 4
  %reg4.i.i = getelementptr inbounds %struct.m10v_clk_divider, ptr %call7.i.i.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %reg4.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr4.i, ptr %reg4.i.i, align 4
  %shift5.i.i = getelementptr inbounds %struct.m10v_clk_divider, ptr %call7.i.i.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %shift5.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %13, ptr %shift5.i.i, align 8
  %width6.i.i = getelementptr inbounds %struct.m10v_clk_divider, ptr %call7.i.i.i.i, i32 0, i32 3
  %30 = ptrtoint ptr %width6.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %15, ptr %width6.i.i, align 1
  %flags7.i.i = getelementptr inbounds %struct.m10v_clk_divider, ptr %call7.i.i.i.i, i32 0, i32 4
  %31 = ptrtoint ptr %flags7.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv.i, ptr %flags7.i.i, align 2
  %lock8.i.i = getelementptr inbounds %struct.m10v_clk_divider, ptr %call7.i.i.i.i, i32 0, i32 6
  %32 = ptrtoint ptr %lock8.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @m10v_crglock, ptr %lock8.i.i, align 8
  %init10.i.i = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %init10.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %init.i.i, ptr %init10.i.i, align 8
  %table11.i.i = getelementptr inbounds %struct.m10v_clk_divider, ptr %call7.i.i.i.i, i32 0, i32 5
  %34 = ptrtoint ptr %table11.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %19, ptr %table11.i.i, align 4
  %write_valid_reg12.i.i = getelementptr inbounds %struct.m10v_clk_divider, ptr %call7.i.i.i.i, i32 0, i32 7
  %35 = ptrtoint ptr %write_valid_reg12.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %write_valid_reg.0.i, ptr %write_valid_reg12.i.i, align 4
  %call14.i.i = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %tobool15.not.i.i = icmp eq i32 %call14.i.i, 0
  br i1 %tobool15.not.i.i, label %if.end.i.i.m10v_clk_hw_register_divider.exit.i_crit_edge, label %if.then16.i.i

if.end.i.i.m10v_clk_hw_register_divider.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %m10v_clk_hw_register_divider.exit.i

if.then16.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #7
  %36 = inttoptr i32 %call14.i.i to ptr
  br label %m10v_clk_hw_register_divider.exit.i

m10v_clk_hw_register_divider.exit.i:              ; preds = %if.then16.i.i, %if.end.i.i.m10v_clk_hw_register_divider.exit.i_crit_edge, %if.end.i.m10v_clk_hw_register_divider.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %36, %if.then16.i.i ], [ %call7.i.i.i.i, %if.end.i.i.m10v_clk_hw_register_divider.exit.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.m10v_clk_hw_register_divider.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.addr.i.i) #7
  %37 = lshr i32 673, %id.080
  %38 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp5.i.not = icmp eq i32 %38, 0
  br i1 %cmp5.i.not, label %m10v_clk_hw_register_divider.exit.i.m10v_reg_div_pre.exit_crit_edge, label %if.then7.i

m10v_clk_hw_register_divider.exit.i.m10v_reg_div_pre.exit_crit_edge: ; preds = %m10v_clk_hw_register_divider.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %m10v_reg_div_pre.exit

if.then7.i:                                       ; preds = %m10v_clk_hw_register_divider.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %onecell_idx.i = getelementptr [12 x %struct.m10v_clk_div_factors], ptr @m10v_div_factor_data, i32 0, i32 %id.080, i32 7
  %39 = ptrtoint ptr %onecell_idx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %onecell_idx.i, align 4
  %arrayidx.i = getelementptr %struct.clk_hw_onecell_data, ptr %4, i32 0, i32 1, i32 %40
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %retval.0.i.i, ptr %arrayidx.i, align 4
  br label %m10v_reg_div_pre.exit

m10v_reg_div_pre.exit:                            ; preds = %if.then7.i, %m10v_clk_hw_register_divider.exit.i.m10v_reg_div_pre.exit_crit_edge
  %inc = add nuw nsw i32 %id.080, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %m10v_reg_div_pre.exit.for.body8_crit_edge, label %m10v_reg_div_pre.exit.for.body_crit_edge

m10v_reg_div_pre.exit.for.body_crit_edge:         ; preds = %m10v_reg_div_pre.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

m10v_reg_div_pre.exit.for.body8_crit_edge:        ; preds = %m10v_reg_div_pre.exit
  br label %for.body8

for.cond13.preheader:                             ; preds = %for.body8
  %42 = getelementptr inbounds i8, ptr %init.i.i61, i32 12
  %ops.i.i69 = getelementptr inbounds %struct.clk_init_data, ptr %init.i.i61, i32 0, i32 1
  %flags3.i.i70 = getelementptr inbounds %struct.clk_init_data, ptr %init.i.i61, i32 0, i32 6
  %parent_names4.i.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i.i61, i32 0, i32 2
  %num_parents5.i.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i.i61, i32 0, i32 5
  br label %for.body15

for.body8:                                        ; preds = %for.body8.for.body8_crit_edge, %m10v_reg_div_pre.exit.for.body8_crit_edge
  %id.182 = phi i32 [ %inc11, %for.body8.for.body8_crit_edge ], [ 0, %m10v_reg_div_pre.exit.for.body8_crit_edge ]
  %arrayidx9 = getelementptr [24 x %struct.m10v_clk_div_fixed_data], ptr @m10v_div_fixed_data, i32 0, i32 %id.182
  %parent_name1.i = getelementptr [24 x %struct.m10v_clk_div_fixed_data], ptr @m10v_div_fixed_data, i32 0, i32 %id.182, i32 1
  %43 = ptrtoint ptr %parent_name1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %parent_name1.i, align 4
  %45 = and i32 %id.182, 268435454
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %46 = icmp eq i32 %45, 0
  %parent_name..i = select i1 %46, ptr %call5, ptr %44
  %47 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx9, align 4
  %mult.i = getelementptr [24 x %struct.m10v_clk_div_fixed_data], ptr @m10v_div_fixed_data, i32 0, i32 %id.182, i32 3
  %49 = ptrtoint ptr %mult.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %mult.i, align 1
  %conv.i55 = zext i8 %50 to i32
  %div.i = getelementptr [24 x %struct.m10v_clk_div_fixed_data], ptr @m10v_div_fixed_data, i32 0, i32 %id.182, i32 2
  %51 = ptrtoint ptr %div.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %div.i, align 4
  %conv3.i = zext i8 %52 to i32
  %call.i = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef %48, ptr noundef %parent_name..i, i32 noundef 0, i32 noundef %conv.i55, i32 noundef %conv3.i) #7
  %inc11 = add nuw nsw i32 %id.182, 1
  %exitcond87.not = icmp eq i32 %inc11, 24
  br i1 %exitcond87.not, label %for.cond13.preheader, label %for.body8.for.body8_crit_edge

for.body8.for.body8_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body8

for.cond20.preheader:                             ; preds = %m10v_reg_mux_pre.exit
  %53 = load ptr, ptr @m10v_clk_data, align 4
  %arrayidx23 = getelementptr %struct.clk_hw_onecell_data, ptr %53, i32 0, i32 1, i32 0
  %54 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx23, align 4
  %cmp.i79 = icmp ugt ptr %55, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i79, label %for.cond20.preheader.if.then25_crit_edge, label %for.cond20

for.cond20.preheader.if.then25_crit_edge:         ; preds = %for.cond20.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25

for.body15:                                       ; preds = %m10v_reg_mux_pre.exit.for.body15_crit_edge, %for.cond13.preheader
  %id.283 = phi i32 [ 0, %for.cond13.preheader ], [ %inc18, %m10v_reg_mux_pre.exit.for.body15_crit_edge ]
  %arrayidx16 = getelementptr [4 x %struct.m10v_clk_mux_factors], ptr @m10v_mux_factor_data, i32 0, i32 %id.283
  %56 = load ptr, ptr @m10v_clk_data, align 4
  %57 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx16, align 4
  %parent_names.i = getelementptr [4 x %struct.m10v_clk_mux_factors], ptr @m10v_mux_factor_data, i32 0, i32 %id.283, i32 1
  %59 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %parent_names.i, align 4
  %num_parents.i = getelementptr [4 x %struct.m10v_clk_mux_factors], ptr @m10v_mux_factor_data, i32 0, i32 %id.283, i32 2
  %61 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %num_parents.i, align 4
  %offset.i62 = getelementptr [4 x %struct.m10v_clk_mux_factors], ptr @m10v_mux_factor_data, i32 0, i32 %id.283, i32 3
  %63 = ptrtoint ptr %offset.i62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %offset.i62, align 4
  %shift.i63 = getelementptr [4 x %struct.m10v_clk_mux_factors], ptr @m10v_mux_factor_data, i32 0, i32 %id.283, i32 4
  %65 = ptrtoint ptr %shift.i63 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %shift.i63, align 4
  %mask.i = getelementptr [4 x %struct.m10v_clk_mux_factors], ptr @m10v_mux_factor_data, i32 0, i32 %id.283, i32 5
  %67 = ptrtoint ptr %mask.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %mask.i, align 1
  %mux_flags.i = getelementptr [4 x %struct.m10v_clk_mux_factors], ptr @m10v_mux_factor_data, i32 0, i32 %id.283, i32 7
  %69 = ptrtoint ptr %mux_flags.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %mux_flags.i, align 4
  %table.i64 = getelementptr [4 x %struct.m10v_clk_mux_factors], ptr @m10v_mux_factor_data, i32 0, i32 %id.283, i32 6
  %71 = ptrtoint ptr %table.i64 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %table.i64, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i.i61) #7
  %73 = call ptr @memset(ptr %42, i32 255, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %74 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i65 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %74, i32 noundef 3520, i32 noundef 32) #11
  %tobool.not.i.i66 = icmp eq ptr %call7.i.i.i.i65, null
  br i1 %tobool.not.i.i66, label %for.body15.m10v_clk_hw_register_mux.exit.i_crit_edge, label %if.end.i.i72

for.body15.m10v_clk_hw_register_mux.exit.i_crit_edge: ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #9
  br label %m10v_clk_hw_register_mux.exit.i

if.end.i.i72:                                     ; preds = %for.body15
  %conv1.i = trunc i32 %70 to i8
  %conv.i67 = zext i8 %68 to i32
  %add.ptr.i68 = getelementptr i8, ptr %call2, i32 %64
  %75 = ptrtoint ptr %init.i.i61 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %58, ptr %init.i.i61, align 4
  %76 = ptrtoint ptr %ops.i.i69 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @m10v_mux_ops, ptr %ops.i.i69, align 4
  %77 = ptrtoint ptr %flags3.i.i70 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 4, ptr %flags3.i.i70, align 4
  %78 = ptrtoint ptr %parent_names4.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %60, ptr %parent_names4.i.i, align 4
  %79 = ptrtoint ptr %num_parents5.i.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %62, ptr %num_parents5.i.i, align 4
  %reg6.i.i = getelementptr inbounds %struct.clk_mux, ptr %call7.i.i.i.i65, i32 0, i32 1
  %80 = ptrtoint ptr %reg6.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %add.ptr.i68, ptr %reg6.i.i, align 4
  %shift7.i.i = getelementptr inbounds %struct.clk_mux, ptr %call7.i.i.i.i65, i32 0, i32 4
  %81 = ptrtoint ptr %shift7.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %66, ptr %shift7.i.i, align 8
  %mask8.i.i = getelementptr inbounds %struct.clk_mux, ptr %call7.i.i.i.i65, i32 0, i32 3
  %82 = ptrtoint ptr %mask8.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %conv.i67, ptr %mask8.i.i, align 4
  %flags9.i.i = getelementptr inbounds %struct.clk_mux, ptr %call7.i.i.i.i65, i32 0, i32 5
  %83 = ptrtoint ptr %flags9.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv1.i, ptr %flags9.i.i, align 1
  %lock10.i.i = getelementptr inbounds %struct.clk_mux, ptr %call7.i.i.i.i65, i32 0, i32 6
  %84 = ptrtoint ptr %lock10.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @m10v_crglock, ptr %lock10.i.i, align 4
  %table11.i.i71 = getelementptr inbounds %struct.clk_mux, ptr %call7.i.i.i.i65, i32 0, i32 2
  %85 = ptrtoint ptr %table11.i.i71 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %72, ptr %table11.i.i71, align 8
  %init13.i.i = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i.i.i65, i32 0, i32 2
  %86 = ptrtoint ptr %init13.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %init.i.i61, ptr %init13.i.i, align 8
  %call15.i.i = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i.i.i65) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %tobool16.not.i.i = icmp eq i32 %call15.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end.i.i72.m10v_clk_hw_register_mux.exit.i_crit_edge, label %if.then17.i.i

if.end.i.i72.m10v_clk_hw_register_mux.exit.i_crit_edge: ; preds = %if.end.i.i72
  call void @__sanitizer_cov_trace_pc() #9
  br label %m10v_clk_hw_register_mux.exit.i

if.then17.i.i:                                    ; preds = %if.end.i.i72
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i65) #7
  %87 = inttoptr i32 %call15.i.i to ptr
  br label %m10v_clk_hw_register_mux.exit.i

m10v_clk_hw_register_mux.exit.i:                  ; preds = %if.then17.i.i, %if.end.i.i72.m10v_clk_hw_register_mux.exit.i_crit_edge, %for.body15.m10v_clk_hw_register_mux.exit.i_crit_edge
  %retval.0.i.i73 = phi ptr [ %87, %if.then17.i.i ], [ %call7.i.i.i.i65, %if.end.i.i72.m10v_clk_hw_register_mux.exit.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %for.body15.m10v_clk_hw_register_mux.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i.i61) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %id.283)
  %cmp.i75.not = icmp eq i32 %id.283, 2
  br i1 %cmp.i75.not, label %m10v_clk_hw_register_mux.exit.i.m10v_reg_mux_pre.exit_crit_edge, label %if.then.i77

m10v_clk_hw_register_mux.exit.i.m10v_reg_mux_pre.exit_crit_edge: ; preds = %m10v_clk_hw_register_mux.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %m10v_reg_mux_pre.exit

if.then.i77:                                      ; preds = %m10v_clk_hw_register_mux.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %onecell_idx.i74 = getelementptr [4 x %struct.m10v_clk_mux_factors], ptr @m10v_mux_factor_data, i32 0, i32 %id.283, i32 8
  %88 = ptrtoint ptr %onecell_idx.i74 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %onecell_idx.i74, align 4
  %arrayidx.i76 = getelementptr %struct.clk_hw_onecell_data, ptr %56, i32 0, i32 1, i32 %89
  %90 = ptrtoint ptr %arrayidx.i76 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %retval.0.i.i73, ptr %arrayidx.i76, align 4
  br label %m10v_reg_mux_pre.exit

m10v_reg_mux_pre.exit:                            ; preds = %if.then.i77, %m10v_clk_hw_register_mux.exit.i.m10v_reg_mux_pre.exit_crit_edge
  %inc18 = add nuw nsw i32 %id.283, 1
  %exitcond88.not = icmp eq i32 %inc18, 4
  br i1 %exitcond88.not, label %for.cond20.preheader, label %m10v_reg_mux_pre.exit.for.body15_crit_edge

m10v_reg_mux_pre.exit.for.body15_crit_edge:       ; preds = %m10v_reg_mux_pre.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body15

for.cond20:                                       ; preds = %for.cond20.preheader
  %arrayidx23.1 = getelementptr %struct.clk_hw_onecell_data, ptr %53, i32 0, i32 1, i32 1
  %91 = ptrtoint ptr %arrayidx23.1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx23.1, align 4
  %cmp.i79.1 = icmp ugt ptr %92, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i79.1, label %for.cond20.if.then25_crit_edge, label %for.cond20.1

for.cond20.if.then25_crit_edge:                   ; preds = %for.cond20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25

for.cond20.1:                                     ; preds = %for.cond20
  %arrayidx23.2 = getelementptr %struct.clk_hw_onecell_data, ptr %53, i32 0, i32 1, i32 2
  %93 = ptrtoint ptr %arrayidx23.2 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx23.2, align 4
  %cmp.i79.2 = icmp ugt ptr %94, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i79.2, label %for.cond20.1.if.then25_crit_edge, label %for.cond20.2

for.cond20.1.if.then25_crit_edge:                 ; preds = %for.cond20.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25

for.cond20.2:                                     ; preds = %for.cond20.1
  %arrayidx23.3 = getelementptr %struct.clk_hw_onecell_data, ptr %53, i32 0, i32 1, i32 3
  %95 = ptrtoint ptr %arrayidx23.3 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx23.3, align 4
  %cmp.i79.3 = icmp ugt ptr %96, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i79.3, label %for.cond20.2.if.then25_crit_edge, label %for.cond20.3

for.cond20.2.if.then25_crit_edge:                 ; preds = %for.cond20.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25

for.cond20.3:                                     ; preds = %for.cond20.2
  %arrayidx23.4 = getelementptr %struct.clk_hw_onecell_data, ptr %53, i32 0, i32 1, i32 4
  %97 = ptrtoint ptr %arrayidx23.4 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx23.4, align 4
  %cmp.i79.4 = icmp ugt ptr %98, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i79.4, label %for.cond20.3.if.then25_crit_edge, label %for.cond20.4

for.cond20.3.if.then25_crit_edge:                 ; preds = %for.cond20.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25

for.cond20.4:                                     ; preds = %for.cond20.3
  %arrayidx23.5 = getelementptr %struct.clk_hw_onecell_data, ptr %53, i32 0, i32 1, i32 5
  %99 = ptrtoint ptr %arrayidx23.5 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx23.5, align 4
  %cmp.i79.5 = icmp ugt ptr %100, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i79.5, label %for.cond20.4.if.then25_crit_edge, label %for.cond20.5

for.cond20.4.if.then25_crit_edge:                 ; preds = %for.cond20.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25

for.cond20.5:                                     ; preds = %for.cond20.4
  %arrayidx23.6 = getelementptr %struct.clk_hw_onecell_data, ptr %53, i32 0, i32 1, i32 6
  %101 = ptrtoint ptr %arrayidx23.6 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx23.6, align 4
  %cmp.i79.6 = icmp ugt ptr %102, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i79.6, label %for.cond20.5.if.then25_crit_edge, label %for.cond20.6

for.cond20.5.if.then25_crit_edge:                 ; preds = %for.cond20.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25

for.cond20.6:                                     ; preds = %for.cond20.5
  %arrayidx23.7 = getelementptr %struct.clk_hw_onecell_data, ptr %53, i32 0, i32 1, i32 7
  %103 = ptrtoint ptr %arrayidx23.7 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx23.7, align 4
  %cmp.i79.7 = icmp ugt ptr %104, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i79.7, label %for.cond20.6.if.then25_crit_edge, label %for.cond20.6.cleanup_crit_edge

for.cond20.6.cleanup_crit_edge:                   ; preds = %for.cond20.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond20.6.if.then25_crit_edge:                 ; preds = %for.cond20.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25

if.then25:                                        ; preds = %for.cond20.6.if.then25_crit_edge, %for.cond20.5.if.then25_crit_edge, %for.cond20.4.if.then25_crit_edge, %for.cond20.3.if.then25_crit_edge, %for.cond20.2.if.then25_crit_edge, %for.cond20.1.if.then25_crit_edge, %for.cond20.if.then25_crit_edge, %for.cond20.preheader.if.then25_crit_edge
  %.lcssa = phi ptr [ %55, %for.cond20.preheader.if.then25_crit_edge ], [ %92, %for.cond20.if.then25_crit_edge ], [ %94, %for.cond20.1.if.then25_crit_edge ], [ %96, %for.cond20.2.if.then25_crit_edge ], [ %98, %for.cond20.3.if.then25_crit_edge ], [ %100, %for.cond20.4.if.then25_crit_edge ], [ %102, %for.cond20.5.if.then25_crit_edge ], [ %104, %for.cond20.6.if.then25_crit_edge ]
  %105 = ptrtoint ptr %.lcssa to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %for.cond20.6.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %105, %if.then25 ], [ 0, %for.cond20.6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m10v_clk_divider_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.m10v_clk_divider, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !183
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !184
  %shift = getelementptr inbounds %struct.m10v_clk_divider, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %shift, align 4
  %conv = zext i8 %5 to i32
  %shr = lshr i32 %3, %conv
  %width = getelementptr inbounds %struct.m10v_clk_divider, ptr %hw, i32 0, i32 3
  %6 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %width, align 1
  %conv3 = zext i8 %7 to i32
  %notmask = shl nsw i32 -1, %conv3
  %sub = xor i32 %notmask, -1
  %and = and i32 %shr, %sub
  %table = getelementptr inbounds %struct.m10v_clk_divider, ptr %hw, i32 0, i32 5
  %8 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %table, align 4
  %flags = getelementptr inbounds %struct.m10v_clk_divider, ptr %hw, i32 0, i32 4
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %flags, align 2
  %conv4 = zext i8 %11 to i32
  %call7 = tail call i32 @divider_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate, i32 noundef %and, ptr noundef %9, i32 noundef %conv4, i32 noundef %conv3) #7
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m10v_clk_divider_round_rate(ptr noundef %hw, i32 noundef %rate, ptr noundef %prate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.m10v_clk_divider, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 2
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %reg = getelementptr inbounds %struct.m10v_clk_divider, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !183
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !185
  %shift = getelementptr inbounds %struct.m10v_clk_divider, ptr %hw, i32 0, i32 2
  %6 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %shift, align 4
  %conv3 = zext i8 %7 to i32
  %shr = lshr i32 %5, %conv3
  %width = getelementptr inbounds %struct.m10v_clk_divider, ptr %hw, i32 0, i32 3
  %8 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %width, align 1
  %conv4 = zext i8 %9 to i32
  %notmask = shl nsw i32 -1, %conv4
  %sub = xor i32 %notmask, -1
  %and5 = and i32 %shr, %sub
  %table = getelementptr inbounds %struct.m10v_clk_divider, ptr %hw, i32 0, i32 5
  %10 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %table, align 4
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flags, align 2
  %conv8 = zext i8 %13 to i32
  %call.i = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #7
  %call1.i = tail call i32 @divider_ro_round_rate_parent(ptr noundef %hw, ptr noundef %call.i, i32 noundef %rate, ptr noundef %prate, ptr noundef %11, i8 noundef zeroext %9, i32 noundef %conv8, i32 noundef %and5) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %table10 = getelementptr inbounds %struct.m10v_clk_divider, ptr %hw, i32 0, i32 5
  %14 = ptrtoint ptr %table10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %table10, align 4
  %width11 = getelementptr inbounds %struct.m10v_clk_divider, ptr %hw, i32 0, i32 3
  %16 = ptrtoint ptr %width11 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %width11, align 1
  %call.i29 = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #7
  %call1.i30 = tail call i32 @divider_round_rate_parent(ptr noundef %hw, ptr noundef %call.i29, i32 noundef %rate, ptr noundef %prate, ptr noundef %15, i8 noundef zeroext %17, i32 noundef %conv) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call1.i, %if.then ], [ %call1.i30, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m10v_clk_divider_set_rate(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %width = getelementptr inbounds %struct.m10v_clk_divider, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %width, align 1
  %conv = zext i8 %1 to i32
  %sub = add nsw i32 %conv, -1
  %shl = shl nuw i32 1, %sub
  %table = getelementptr inbounds %struct.m10v_clk_divider, ptr %hw, i32 0, i32 5
  %2 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %table, align 4
  %flags2 = getelementptr inbounds %struct.m10v_clk_divider, ptr %hw, i32 0, i32 4
  %4 = ptrtoint ptr %flags2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %flags2, align 2
  %conv3 = zext i8 %5 to i32
  %call = tail call i32 @divider_get_val(i32 noundef %rate, i32 noundef %parent_rate, ptr noundef %3, i8 noundef zeroext %1, i32 noundef %conv3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.m10v_clk_divider, ptr %hw, i32 0, i32 6
  %6 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.if.end15_crit_edge, label %do.body6

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

do.body6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %7) #7
  br label %if.end15

if.end15:                                         ; preds = %do.body6, %if.end.if.end15_crit_edge
  %flags.0 = phi i32 [ %call12, %do.body6 ], [ 0, %if.end.if.end15_crit_edge ]
  %reg = getelementptr inbounds %struct.m10v_clk_divider, ptr %hw, i32 0, i32 1
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #7, !srcloc !183
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  %12 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %width, align 1
  %conv20 = zext i8 %13 to i32
  %notmask = shl nsw i32 -1, %conv20
  %sub22 = xor i32 %notmask, -1
  %shift = getelementptr inbounds %struct.m10v_clk_divider, ptr %hw, i32 0, i32 2
  %14 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %shift, align 4
  %conv23 = zext i8 %15 to i32
  %shl24 = shl i32 %sub22, %conv23
  %neg = xor i32 %shl24, -1
  %and = and i32 %11, %neg
  %or = or i32 %call, %shl
  %shl27 = shl i32 %or, %conv23
  %or28 = or i32 %and, %shl27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !187
  tail call void @arm_heavy_mb() #7
  %16 = tail call i32 @llvm.bswap.i32(i32 %or28)
  %17 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #7, !srcloc !188
  %write_valid_reg = getelementptr inbounds %struct.m10v_clk_divider, ptr %hw, i32 0, i32 7
  %19 = ptrtoint ptr %write_valid_reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write_valid_reg, align 4
  %tobool33.not = icmp eq ptr %20, null
  br i1 %tobool33.not, label %if.end15.if.end90_crit_edge, label %do.body35

if.end15.if.end90_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90

do.body35:                                        ; preds = %if.end15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  tail call void @arm_heavy_mb() #7
  %21 = ptrtoint ptr %write_valid_reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_valid_reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 16777216) #7, !srcloc !188
  %call39 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call39, 250000
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 438) #7
  %23 = ptrtoint ptr %write_valid_reg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write_valid_reg, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #7, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !190
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool60.not129 = icmp eq i32 %25, 0
  br i1 %tobool60.not129, label %do.body35.if.end90_crit_edge, label %do.body35.land.lhs.true_crit_edge

do.body35.land.lhs.true_crit_edge:                ; preds = %do.body35
  br label %land.lhs.true

do.body35.if.end90_crit_edge:                     ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90

land.lhs.true:                                    ; preds = %if.then77.land.lhs.true_crit_edge, %do.body35.land.lhs.true_crit_edge
  %call64 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call64, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call64, %add.i
  br i1 %cmp3.i, label %if.then68, label %if.then77

if.then68:                                        ; preds = %land.lhs.true
  %26 = ptrtoint ptr %write_valid_reg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write_valid_reg, align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #7, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !191
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %phi.cmp = icmp eq i32 %28, 0
  br i1 %phi.cmp, label %if.then68.if.end90_crit_edge, label %do.end85

if.then68.if.end90_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90

if.then77:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #7
  %29 = ptrtoint ptr %write_valid_reg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write_valid_reg, align 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #7, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !190
  %tobool60.not = icmp eq i32 %31, 0
  br i1 %tobool60.not, label %if.then77.if.end90_crit_edge, label %if.then77.land.lhs.true_crit_edge

if.then77.land.lhs.true_crit_edge:                ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.then77.if.end90_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90

do.end85:                                         ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #9
  %call87 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #7
  %call88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %call87) #12
  br label %if.end90

if.end90:                                         ; preds = %do.end85, %if.then77.if.end90_crit_edge, %if.then68.if.end90_crit_edge, %do.body35.if.end90_crit_edge, %if.end15.if.end90_crit_edge
  %32 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %lock, align 4
  %tobool92.not = icmp eq ptr %33, null
  br i1 %tobool92.not, label %if.end90.cleanup_crit_edge, label %if.then93

if.end90.cleanup_crit_edge:                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then93:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %33, i32 noundef %flags.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then93, %if.end90.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end90.cleanup_crit_edge ], [ 0, %if.then93 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_recalc_rate(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_ro_round_rate_parent(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_round_rate_parent(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_get_val(i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clk_mux_determine_rate(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m10v_mux_set_parent(ptr nocapture noundef readonly %hw, i8 noundef zeroext %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %table = getelementptr inbounds %struct.clk_mux, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %table, align 4
  %flags = getelementptr inbounds %struct.clk_mux, ptr %hw, i32 0, i32 5
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flags, align 1
  %conv = zext i8 %3 to i32
  %call = tail call i32 @clk_mux_index_to_val(ptr noundef %1, i32 noundef %conv, i8 noundef zeroext %index) #7
  %mask = getelementptr inbounds %struct.clk_mux, ptr %hw, i32 0, i32 3
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask, align 4
  %6 = tail call i32 @llvm.ctlz.i32(i32 %5, i1 true) #7, !range !192
  %sub.i.op = xor i32 %6, 31
  %sub.i.op.op = shl nuw i32 1, %sub.i.op
  %lock = getelementptr inbounds %struct.clk_mux, ptr %hw, i32 0, i32 6
  %7 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lock, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body3

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %8) #7
  br label %if.end

if.end:                                           ; preds = %do.body3, %entry.if.end_crit_edge
  %flags1.0 = phi i32 [ %call8, %do.body3 ], [ 0, %entry.if.end_crit_edge ]
  %reg11 = getelementptr inbounds %struct.clk_mux, ptr %hw, i32 0, i32 1
  %9 = ptrtoint ptr %reg11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg11, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !183
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  %13 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mask, align 4
  %shift = getelementptr inbounds %struct.clk_mux, ptr %hw, i32 0, i32 4
  %15 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %shift, align 4
  %conv16 = zext i8 %16 to i32
  %shl17 = shl i32 %14, %conv16
  %neg = xor i32 %shl17, -1
  %and = and i32 %12, %neg
  %or = or i32 %sub.i.op.op, %call
  %shl20 = shl i32 %or, %conv16
  %or21 = or i32 %and, %shl20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !194
  tail call void @arm_heavy_mb() #7
  %17 = tail call i32 @llvm.bswap.i32(i32 %or21)
  %18 = ptrtoint ptr %reg11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg11, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #7, !srcloc !188
  %20 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lock, align 4
  %tobool27.not = icmp eq ptr %21, null
  br i1 %tobool27.not, label %if.end.if.end31_crit_edge, label %if.then28

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then28:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %21, i32 noundef %flags1.0) #7
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end.if.end31_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @m10v_mux_get_parent(ptr noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.clk_mux, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !183
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !195
  %shift = getelementptr inbounds %struct.clk_mux, ptr %hw, i32 0, i32 4
  %4 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %shift, align 4
  %conv = zext i8 %5 to i32
  %shr = lshr i32 %3, %conv
  %mask = getelementptr inbounds %struct.clk_mux, ptr %hw, i32 0, i32 3
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mask, align 4
  %and = and i32 %shr, %7
  %table = getelementptr inbounds %struct.clk_mux, ptr %hw, i32 0, i32 2
  %8 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %table, align 4
  %flags = getelementptr inbounds %struct.clk_mux, ptr %hw, i32 0, i32 5
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %flags, align 1
  %conv3 = zext i8 %11 to i32
  %call4 = tail call i32 @clk_mux_val_to_index(ptr noundef %hw, ptr noundef %9, i32 noundef %conv3, i32 noundef %and) #7
  %conv5 = trunc i32 %call4 to i8
  ret i8 %conv5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_mux_index_to_val(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_mux_val_to_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @m10v_cc_init(ptr noundef %np) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %parent_name.addr.i = alloca ptr, align 4
  %init.i = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 36) #11
  store ptr %call7.i.i, ptr @m10v_clk_data, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #7
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %1 = load ptr, ptr @m10v_clk_data, align 4
  tail call void @kfree(ptr noundef %1) #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @of_clk_get_parent_name(ptr noundef %np, i32 noundef 0) #7
  %tobool7.not = icmp eq ptr %call6, null
  %2 = load ptr, ptr @m10v_clk_data, align 4
  br i1 %tobool7.not, label %if.then8, label %if.end5.for.body_crit_edge

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  br label %for.body

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef %2) #7
  tail call void @iounmap(ptr noundef nonnull %call2) #7
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end5.for.body_crit_edge
  %id.036 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end5.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.clk_hw_onecell_data, ptr %2, i32 0, i32 1, i32 %id.036
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -517 to ptr), ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %id.036, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.body.for.body13_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.body13_crit_edge:                    ; preds = %for.body
  br label %for.body13

for.body13:                                       ; preds = %for.body13.for.body13_crit_edge, %for.body.for.body13_crit_edge
  %id.137 = phi i32 [ %inc16, %for.body13.for.body13_crit_edge ], [ 0, %for.body.for.body13_crit_edge ]
  %arrayidx14 = getelementptr [8 x %struct.m10v_clk_div_fixed_data], ptr @m10v_pll_fixed_data, i32 0, i32 %id.137
  %parent_name1.i = getelementptr [8 x %struct.m10v_clk_div_fixed_data], ptr @m10v_pll_fixed_data, i32 0, i32 %id.137, i32 1
  %4 = ptrtoint ptr %parent_name1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent_name1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %id.137)
  %tobool.not.i.not = icmp eq i32 %id.137, 6
  %parent_name..i = select i1 %tobool.not.i.not, ptr %5, ptr %call6
  %6 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx14, align 4
  %mult.i = getelementptr [8 x %struct.m10v_clk_div_fixed_data], ptr @m10v_pll_fixed_data, i32 0, i32 %id.137, i32 3
  %8 = ptrtoint ptr %mult.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mult.i, align 1
  %conv.i = zext i8 %9 to i32
  %div.i = getelementptr [8 x %struct.m10v_clk_div_fixed_data], ptr @m10v_pll_fixed_data, i32 0, i32 %id.137, i32 2
  %10 = ptrtoint ptr %div.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %div.i, align 4
  %conv3.i = zext i8 %11 to i32
  %call.i = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef %7, ptr noundef %parent_name..i, i32 noundef 0, i32 noundef %conv.i, i32 noundef %conv3.i) #7
  %inc16 = add nuw nsw i32 %id.137, 1
  %exitcond38.not = icmp eq i32 %inc16, 8
  br i1 %exitcond38.not, label %for.end17, label %for.body13.for.body13_crit_edge

for.body13.for.body13_crit_edge:                  ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body13

for.end17:                                        ; preds = %for.body13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name.addr.i)
  %12 = ptrtoint ptr %parent_name.addr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.33, ptr %parent_name.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #7
  %13 = getelementptr inbounds i8, ptr %init.i, i32 12
  %14 = call ptr @memset(ptr %13, i32 255, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 32) #11
  %tobool.not.i35 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i35, label %for.end17.m10v_clk_hw_register_divider.exit_crit_edge, label %if.end.i

for.end17.m10v_clk_hw_register_divider.exit_crit_edge: ; preds = %for.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %m10v_clk_hw_register_divider.exit

if.end.i:                                         ; preds = %for.end17
  %16 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.51, ptr %init.i, align 4
  %ops.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %17 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @m10v_clk_divider_ops, ptr %ops.i, align 4
  %flags3.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %18 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %flags3.i, align 4
  %parent_names.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %19 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %parent_name.addr.i, ptr %parent_names.i, align 4
  %num_parents.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %20 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %num_parents.i, align 4
  %reg4.i = getelementptr inbounds %struct.m10v_clk_divider, ptr %call7.i.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %reg4.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call2, ptr %reg4.i, align 4
  %shift5.i = getelementptr inbounds %struct.m10v_clk_divider, ptr %call7.i.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %shift5.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %shift5.i, align 8
  %width6.i = getelementptr inbounds %struct.m10v_clk_divider, ptr %call7.i.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %width6.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 3, ptr %width6.i, align 1
  %flags7.i = getelementptr inbounds %struct.m10v_clk_divider, ptr %call7.i.i.i, i32 0, i32 4
  %24 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %flags7.i, align 2
  %lock8.i = getelementptr inbounds %struct.m10v_clk_divider, ptr %call7.i.i.i, i32 0, i32 6
  %25 = ptrtoint ptr %lock8.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @m10v_crglock, ptr %lock8.i, align 8
  %init10.i = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %init10.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %init.i, ptr %init10.i, align 8
  %table11.i = getelementptr inbounds %struct.m10v_clk_divider, ptr %call7.i.i.i, i32 0, i32 5
  %27 = ptrtoint ptr %table11.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @rclk_table, ptr %table11.i, align 4
  %write_valid_reg12.i = getelementptr inbounds %struct.m10v_clk_divider, ptr %call7.i.i.i, i32 0, i32 7
  %28 = ptrtoint ptr %write_valid_reg12.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %write_valid_reg12.i, align 4
  %call14.i = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end.i.m10v_clk_hw_register_divider.exit_crit_edge, label %if.then16.i

if.end.i.m10v_clk_hw_register_divider.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %m10v_clk_hw_register_divider.exit

if.then16.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  %29 = inttoptr i32 %call14.i to ptr
  br label %m10v_clk_hw_register_divider.exit

m10v_clk_hw_register_divider.exit:                ; preds = %if.then16.i, %if.end.i.m10v_clk_hw_register_divider.exit_crit_edge, %for.end17.m10v_clk_hw_register_divider.exit_crit_edge
  %retval.0.i = phi ptr [ %29, %if.then16.i ], [ %call7.i.i.i, %if.end.i.m10v_clk_hw_register_divider.exit_crit_edge ], [ inttoptr (i32 -12 to ptr), %for.end17.m10v_clk_hw_register_divider.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.addr.i)
  %30 = load ptr, ptr @m10v_clk_data, align 4
  %arrayidx20 = getelementptr %struct.clk_hw_onecell_data, ptr %30, i32 5
  %31 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %retval.0.i, ptr %arrayidx20, align 4
  %32 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 8, ptr %30, align 4
  %call21 = call i32 @of_clk_add_hw_provider(ptr noundef %np, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef %30) #7
  br label %cleanup

cleanup:                                          ; preds = %m10v_clk_hw_register_divider.exit, %if.then8, %if.then4, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !19, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172}
!llvm.module.flags = !{!174, !175, !176, !177, !178, !179, !180, !181}
!llvm.ident = !{!182}

!0 = !{ptr @__initcall__kmod_clk_milbeaut__183_608_m10v_clk_driver_init6, !1, !"__initcall__kmod_clk_milbeaut__183_608_m10v_clk_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/clk-milbeaut.c", i32 608, i32 1}
!2 = !{ptr @__of_table_m10v_cc, !3, !"__of_table_m10v_cc", i1 false, i1 false}
!3 = !{!"../drivers/clk/clk-milbeaut.c", i32 663, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/clk-milbeaut.c", i32 604, i32 11}
!6 = !{ptr @m10v_clk_driver, !7, !"m10v_clk_driver", i1 false, i1 false}
!7 = !{!"../drivers/clk/clk-milbeaut.c", i32 601, i32 31}
!8 = !{ptr @m10v_clk_divider_ops, !9, !"m10v_clk_divider_ops", i1 false, i1 false}
!9 = !{!"../drivers/clk/clk-milbeaut.c", i32 451, i32 29}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/clk-milbeaut.c", i32 437, i32 7}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/clk-milbeaut.c", i32 439, i32 4}
!14 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @m10v_clk_divider_set_rate._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @m10v_clk_divider_set_rate._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/clk/clk-milbeaut.c", i32 67, i32 8}
!19 = !{ptr @m10v_crglock, !18, !"m10v_crglock", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/clk-milbeaut.c", i32 254, i32 3}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/clk-milbeaut.c", i32 254, i32 11}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/clk-milbeaut.c", i32 256, i32 3}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/clk-milbeaut.c", i32 256, i32 14}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/clk-milbeaut.c", i32 257, i32 3}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/clk-milbeaut.c", i32 258, i32 3}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/clk-milbeaut.c", i32 259, i32 3}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/clk-milbeaut.c", i32 259, i32 14}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/clk-milbeaut.c", i32 260, i32 3}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/clk-milbeaut.c", i32 261, i32 3}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/clk-milbeaut.c", i32 262, i32 3}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/clk-milbeaut.c", i32 263, i32 3}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/clk-milbeaut.c", i32 264, i32 3}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/clk-milbeaut.c", i32 265, i32 3}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/clk-milbeaut.c", i32 265, i32 15}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/clk-milbeaut.c", i32 266, i32 3}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/clk-milbeaut.c", i32 266, i32 14}
!54 = !{ptr @m10v_div_factor_data, !55, !"m10v_div_factor_data", i1 false, i1 false}
!55 = !{!"../drivers/clk/clk-milbeaut.c", i32 253, i32 42}
!56 = !{ptr @emmcclk_table, !57, !"emmcclk_table", i1 false, i1 false}
!57 = !{!"../drivers/clk/clk-milbeaut.c", i32 100, i32 35}
!58 = !{ptr @mclk400_table, !59, !"mclk400_table", i1 false, i1 false}
!59 = !{!"../drivers/clk/clk-milbeaut.c", i32 108, i32 35}
!60 = !{ptr @mclk200_table, !61, !"mclk200_table", i1 false, i1 false}
!61 = !{!"../drivers/clk/clk-milbeaut.c", i32 114, i32 35}
!62 = !{ptr @aclk400_table, !63, !"aclk400_table", i1 false, i1 false}
!63 = !{!"../drivers/clk/clk-milbeaut.c", i32 120, i32 35}
!64 = !{ptr @aclk300_table, !65, !"aclk300_table", i1 false, i1 false}
!65 = !{!"../drivers/clk/clk-milbeaut.c", i32 126, i32 35}
!66 = !{ptr @aclk_table, !67, !"aclk_table", i1 false, i1 false}
!67 = !{!"../drivers/clk/clk-milbeaut.c", i32 132, i32 35}
!68 = !{ptr @aclkexs_table, !69, !"aclkexs_table", i1 false, i1 false}
!69 = !{!"../drivers/clk/clk-milbeaut.c", i32 138, i32 35}
!70 = !{ptr @hclk_table, !71, !"hclk_table", i1 false, i1 false}
!71 = !{!"../drivers/clk/clk-milbeaut.c", i32 146, i32 35}
!72 = !{ptr @hclkbmh_table, !73, !"hclkbmh_table", i1 false, i1 false}
!73 = !{!"../drivers/clk/clk-milbeaut.c", i32 152, i32 35}
!74 = !{ptr @pclk_table, !75, !"pclk_table", i1 false, i1 false}
!75 = !{!"../drivers/clk/clk-milbeaut.c", i32 158, i32 35}
!76 = !{ptr @uhs1clk0_table, !77, !"uhs1clk0_table", i1 false, i1 false}
!77 = !{!"../drivers/clk/clk-milbeaut.c", i32 172, i32 35}
!78 = !{ptr @uhs2clk_table, !79, !"uhs2clk_table", i1 false, i1 false}
!79 = !{!"../drivers/clk/clk-milbeaut.c", i32 181, i32 35}
!80 = !{ptr @m10v_clk_data, !81, !"m10v_clk_data", i1 false, i1 false}
!81 = !{!"../drivers/clk/clk-milbeaut.c", i32 65, i32 36}
!82 = !{ptr @.str.22, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/clk-milbeaut.c", i32 227, i32 3}
!84 = !{ptr @.str.23, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/clk-milbeaut.c", i32 228, i32 3}
!86 = !{ptr @.str.24, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/clk-milbeaut.c", i32 229, i32 18}
!88 = !{ptr @.str.25, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/clk-milbeaut.c", i32 230, i32 18}
!90 = !{ptr @.str.26, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clk/clk-milbeaut.c", i32 231, i32 3}
!92 = !{ptr @.str.27, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/clk/clk-milbeaut.c", i32 231, i32 18}
!94 = !{ptr @.str.28, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/clk/clk-milbeaut.c", i32 233, i32 3}
!96 = !{ptr @.str.29, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/clk/clk-milbeaut.c", i32 234, i32 3}
!98 = !{ptr @.str.30, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/clk/clk-milbeaut.c", i32 235, i32 3}
!100 = !{ptr @.str.31, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/clk/clk-milbeaut.c", i32 236, i32 3}
!102 = !{ptr @.str.32, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/clk/clk-milbeaut.c", i32 237, i32 3}
!104 = !{ptr @.str.33, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/clk/clk-milbeaut.c", i32 237, i32 21}
!106 = !{ptr @.str.34, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/clk/clk-milbeaut.c", i32 238, i32 3}
!108 = !{ptr @.str.35, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/clk/clk-milbeaut.c", i32 239, i32 3}
!110 = !{ptr @.str.36, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/clk/clk-milbeaut.c", i32 240, i32 3}
!112 = !{ptr @.str.37, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/clk/clk-milbeaut.c", i32 241, i32 3}
!114 = !{ptr @.str.38, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/clk/clk-milbeaut.c", i32 242, i32 3}
!116 = !{ptr @.str.39, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/clk/clk-milbeaut.c", i32 243, i32 3}
!118 = !{ptr @.str.40, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/clk/clk-milbeaut.c", i32 244, i32 3}
!120 = !{ptr @.str.41, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/clk/clk-milbeaut.c", i32 245, i32 3}
!122 = !{ptr @.str.42, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/clk/clk-milbeaut.c", i32 246, i32 3}
!124 = !{ptr @.str.43, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/clk/clk-milbeaut.c", i32 247, i32 3}
!126 = !{ptr @.str.44, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/clk/clk-milbeaut.c", i32 248, i32 3}
!128 = !{ptr @.str.45, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/clk/clk-milbeaut.c", i32 249, i32 3}
!130 = !{ptr @.str.46, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/clk/clk-milbeaut.c", i32 250, i32 3}
!132 = !{ptr @m10v_div_fixed_data, !133, !"m10v_div_fixed_data", i1 false, i1 false}
!133 = !{!"../drivers/clk/clk-milbeaut.c", i32 226, i32 45}
!134 = !{ptr @m10v_mux_ops, !135, !"m10v_mux_ops", i1 false, i1 false}
!135 = !{!"../drivers/clk/clk-milbeaut.c", i32 319, i32 29}
!136 = !{ptr @.str.47, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/clk/clk-milbeaut.c", i32 270, i32 3}
!138 = !{ptr @.str.48, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/clk/clk-milbeaut.c", i32 272, i32 3}
!140 = !{ptr @.str.49, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/clk/clk-milbeaut.c", i32 274, i32 3}
!142 = !{ptr @.str.50, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/clk/clk-milbeaut.c", i32 276, i32 3}
!144 = !{ptr @m10v_mux_factor_data, !145, !"m10v_mux_factor_data", i1 false, i1 false}
!145 = !{!"../drivers/clk/clk-milbeaut.c", i32 269, i32 42}
!146 = !{ptr @spi_mux_names, !147, !"spi_mux_names", i1 false, i1 false}
!147 = !{!"../drivers/clk/clk-milbeaut.c", i32 194, i32 27}
!148 = !{ptr @spi_mux_table, !149, !"spi_mux_table", i1 false, i1 false}
!149 = !{!"../drivers/clk/clk-milbeaut.c", i32 193, i32 12}
!150 = !{ptr @uhs1clk2_mux_names, !151, !"uhs1clk2_mux_names", i1 false, i1 false}
!151 = !{!"../drivers/clk/clk-milbeaut.c", i32 199, i32 27}
!152 = !{ptr @uhs1clk2_mux_table, !153, !"uhs1clk2_mux_table", i1 false, i1 false}
!153 = !{!"../drivers/clk/clk-milbeaut.c", i32 198, i32 12}
!154 = !{ptr @uhs1clk1_mux_names, !155, !"uhs1clk1_mux_names", i1 false, i1 false}
!155 = !{!"../drivers/clk/clk-milbeaut.c", i32 205, i32 27}
!156 = !{ptr @uhs1clk1_mux_table, !157, !"uhs1clk1_mux_table", i1 false, i1 false}
!157 = !{!"../drivers/clk/clk-milbeaut.c", i32 204, i32 12}
!158 = !{ptr @nfclk_mux_names, !159, !"nfclk_mux_names", i1 false, i1 false}
!159 = !{!"../drivers/clk/clk-milbeaut.c", i32 210, i32 27}
!160 = !{ptr @nfclk_mux_table, !161, !"nfclk_mux_table", i1 false, i1 false}
!161 = !{!"../drivers/clk/clk-milbeaut.c", i32 209, i32 12}
!162 = !{ptr @m10v_clk_dt_ids, !163, !"m10v_clk_dt_ids", i1 false, i1 false}
!163 = !{!"../drivers/clk/clk-milbeaut.c", i32 596, i32 34}
!164 = !{ptr @.str.51, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/clk/clk-milbeaut.c", i32 655, i32 42}
!166 = !{ptr @.str.52, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/clk/clk-milbeaut.c", i32 220, i32 3}
!168 = !{ptr @.str.53, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/clk/clk-milbeaut.c", i32 221, i32 3}
!170 = !{ptr @m10v_pll_fixed_data, !171, !"m10v_pll_fixed_data", i1 false, i1 false}
!171 = !{!"../drivers/clk/clk-milbeaut.c", i32 215, i32 45}
!172 = !{ptr @rclk_table, !173, !"rclk_table", i1 false, i1 false}
!173 = !{!"../drivers/clk/clk-milbeaut.c", i32 164, i32 35}
!174 = !{i32 1, !"wchar_size", i32 2}
!175 = !{i32 1, !"min_enum_size", i32 4}
!176 = !{i32 8, !"branch-target-enforcement", i32 0}
!177 = !{i32 8, !"sign-return-address", i32 0}
!178 = !{i32 8, !"sign-return-address-all", i32 0}
!179 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!180 = !{i32 7, !"uwtable", i32 1}
!181 = !{i32 7, !"frame-pointer", i32 2}
!182 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!183 = !{i64 4042625}
!184 = !{i64 2152946904}
!185 = !{i64 2152948711}
!186 = !{i64 2152950894}
!187 = !{i64 2152951139}
!188 = !{i64 4042207}
!189 = !{i64 2152951530}
!190 = !{i64 2152953286}
!191 = !{i64 2152953800}
!192 = !{i32 0, i32 33}
!193 = !{i64 2152944652}
!194 = !{i64 2152944857}
!195 = !{i64 2152942619}
