; ModuleID = '/llk/IR_all_yes/drivers/clk/tegra/clk-tegra20.c_pt.bc'
source_filename = "../drivers/clk/tegra/clk-tegra20.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tegra_clk_duplicate = type { i32, %struct.clk_lookup }
%struct.clk_lookup = type { %struct.list_head, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.tegra_cpu_car_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_clk = type { i32, i8 }
%struct.tegra_clk_pll_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i32], i32, i32, i32, i32, i32, i32, i32, i8, ptr, ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_clk_pll_freq_table = type { i32, i32, i32, i32, i8, i8, i16 }
%struct.pdiv_map = type { i8, i8 }
%struct.tegra_periph_init_data = type { ptr, i32, %union.anon.43, i32, %struct.tegra_clk_periph, i32, ptr, ptr, i32 }
%union.anon.43 = type { ptr }
%struct.tegra_clk_periph = type { i32, %struct.clk_hw, %struct.clk_mux, %struct.tegra_clk_frac_div, %struct.tegra_clk_periph_gate, ptr, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_mux = type { %struct.clk_hw, ptr, ptr, i32, i8, i8, ptr }
%struct.tegra_clk_frac_div = type { %struct.clk_hw, ptr, i8, i8, i8, i8, ptr }
%struct.tegra_clk_periph_gate = type { i32, %struct.clk_hw, ptr, i8, i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_devclk = type { i32, ptr, ptr }
%struct.tegra_clk_init_table = type { i32, i32, i32, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__of_table_tegra20 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-car\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra20_of_clk_init_driver }, section "__clk_of_table", align 4
@__initcall__kmod_clk_tegra20__183_1199_tegra20_car_driver_init6 = internal global ptr @tegra20_car_driver_init, section ".initcall6.init", align 4
@clk_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@tegra20_clock_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013Can't map CAR registers\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tegra20_clock_init\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/clk/tegra/clk-tegra20.c\00", [32 x i8] zeroinitializer }, align 32
@tegra20_clock_init._entry_ptr = internal global ptr @tegra20_clock_init._entry, section ".printk_index", align 4
@pmc_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@tegra20_clock_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013Failed to find pmc node\0A\00", [37 x i8] zeroinitializer }, align 32
@tegra20_clock_init._entry_ptr.5 = internal global ptr @tegra20_clock_init._entry.3, section ".printk_index", align 4
@pmc_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@tegra20_clock_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 1135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013Can't map pmc registers\0A\00", [37 x i8] zeroinitializer }, align 32
@tegra20_clock_init._entry_ptr.8 = internal global ptr @tegra20_clock_init._entry.6, section ".printk_index", align 4
@clks = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@tegra_clk_duplicates = internal global { [5 x %struct.tegra_clk_duplicate], [52 x i8] } { [5 x %struct.tegra_clk_duplicate] [%struct.tegra_clk_duplicate { i32 22, %struct.clk_lookup { %struct.list_head zeroinitializer, ptr @.str.74, ptr null, ptr null, ptr null } }, %struct.tegra_clk_duplicate { i32 22, %struct.clk_lookup { %struct.list_head zeroinitializer, ptr @.str.75, ptr null, ptr null, ptr null } }, %struct.tegra_clk_duplicate { i32 22, %struct.clk_lookup { %struct.list_head zeroinitializer, ptr @.str.76, ptr null, ptr null, ptr null } }, %struct.tegra_clk_duplicate { i32 108, %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.77, ptr null, ptr null } }, %struct.tegra_clk_duplicate { i32 133, %struct.clk_lookup zeroinitializer }], [52 x i8] zeroinitializer }, align 32
@tegra20_cpu_car_ops = internal global { %struct.tegra_cpu_car_ops, [32 x i8] } { %struct.tegra_cpu_car_ops { ptr @tegra20_wait_cpu_in_reset, ptr @tegra20_put_cpu_in_reset, ptr @tegra20_cpu_out_of_reset, ptr @tegra20_enable_cpu_clock, ptr @tegra20_disable_cpu_clock, ptr @tegra20_cpu_rail_off_ready, ptr @tegra20_cpu_clock_suspend, ptr @tegra20_cpu_clock_resume }, [32 x i8] zeroinitializer }, align 32
@tegra_cpu_car_ops = external dso_local local_unnamed_addr global ptr, align 4
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clk_m\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pll_ref\00", [24 x i8] zeroinitializer }, align 32
@tegra20_clk_measure_input_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 599, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013Unexpected clock autodetect value %d\00", [57 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tegra20_clk_measure_input_freq\00", [33 x i8] zeroinitializer }, align 32
@tegra20_clk_measure_input_freq._entry_ptr = internal global ptr @tegra20_clk_measure_input_freq._entry, section ".printk_index", align 4
@tegra20_get_pll_ref_div._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 620, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013Invalid pll ref divider %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tegra20_get_pll_ref_div\00", [40 x i8] zeroinitializer }, align 32
@tegra20_get_pll_ref_div._entry_ptr = internal global ptr @tegra20_get_pll_ref_div._entry, section ".printk_index", align 4
@tegra20_clks = internal global <{ [273 x %struct.tegra_clk], [40 x %struct.tegra_clk] }> <{ [273 x %struct.tegra_clk] [%struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 72, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 33, i8 1 }, %struct.tegra_clk { i32 34, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 62, i8 1 }, %struct.tegra_clk { i32 63, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 105, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 52, i8 1 }, %struct.tegra_clk { i32 73, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 92, i8 1 }, %struct.tegra_clk { i32 103, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 19, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 39, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 21, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 24, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 109, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 28, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 23, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 36, i8 1 }, %struct.tegra_clk { i32 40, i8 1 }, %struct.tegra_clk { i32 76, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 50, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 60, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 13, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 42, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 71, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 110, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 121, i8 1 }, %struct.tegra_clk { i32 122, i8 1 }, %struct.tegra_clk { i32 123, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 124, i8 1 }, %struct.tegra_clk { i32 125, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 4, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 41, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 44, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 46, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 68, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 14, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 9, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 69, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 15, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 98, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 99, i8 1 }, %struct.tegra_clk { i32 5, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 53, i8 1 }, %struct.tegra_clk { i32 102, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 58, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 59, i8 1 }, %struct.tegra_clk { i32 22, i8 1 }, %struct.tegra_clk { i32 29, i8 1 }, %struct.tegra_clk { i32 61, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 97, i8 1 }, %struct.tegra_clk { i32 100, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 101, i8 1 }], [40 x %struct.tegra_clk] zeroinitializer }>, section ".init.data", align 4
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pll_c\00", [26 x i8] zeroinitializer }, align 32
@pll_c_params = internal global { %struct.tegra_clk_pll_params, [56 x i8] } { %struct.tegra_clk_pll_params { i32 2000000, i32 31000000, i32 1000000, i32 6000000, i32 20000000, i32 1400000000, i32 128, i32 140, i32 0, i32 134217728, i32 18, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1026, i32 0, i32 0, i32 300, i32 0, i8 0, ptr null, ptr null, ptr @pll_c_freq_table, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll_c_out1_div\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_c_out1\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pll_m\00", [26 x i8] zeroinitializer }, align 32
@pll_m_params = internal global { %struct.tegra_clk_pll_params, [56 x i8] } { %struct.tegra_clk_pll_params { i32 2000000, i32 31000000, i32 1000000, i32 6000000, i32 20000000, i32 1200000000, i32 144, i32 156, i32 0, i32 134217728, i32 18, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1026, i32 0, i32 0, i32 300, i32 0, i8 0, ptr null, ptr null, ptr @pll_m_freq_table, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll_m_out1_div\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_m_out1\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pll_x\00", [26 x i8] zeroinitializer }, align 32
@pll_x_params = internal global { %struct.tegra_clk_pll_params, [56 x i8] } { %struct.tegra_clk_pll_params { i32 2000000, i32 31000000, i32 1000000, i32 6000000, i32 20000000, i32 1200000000, i32 224, i32 228, i32 0, i32 134217728, i32 18, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1026, i32 0, i32 0, i32 300, i32 0, i8 0, ptr null, ptr null, ptr @pll_x_freq_table, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_cclk_pre_pllx_rate_change, ptr @tegra_cclk_post_pllx_rate_change }, [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pll_u\00", [26 x i8] zeroinitializer }, align 32
@pll_u_params = internal global { %struct.tegra_clk_pll_params, [56 x i8] } { %struct.tegra_clk_pll_params { i32 2000000, i32 40000000, i32 1000000, i32 6000000, i32 48000000, i32 960000000, i32 192, i32 204, i32 0, i32 134217728, i32 22, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1042, i32 0, i32 0, i32 1000, i32 0, i8 0, ptr @pllu_p, ptr null, ptr @pll_u_freq_table, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pll_d\00", [26 x i8] zeroinitializer }, align 32
@pll_d_params = internal global { %struct.tegra_clk_pll_params, [56 x i8] } { %struct.tegra_clk_pll_params { i32 2000000, i32 40000000, i32 1000000, i32 6000000, i32 40000000, i32 1000000000, i32 208, i32 220, i32 0, i32 134217728, i32 22, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1026, i32 0, i32 0, i32 1000, i32 0, i8 0, ptr null, ptr null, ptr @pll_d_freq_table, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_d_out0\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pll_a\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_p_out1\00", [21 x i8] zeroinitializer }, align 32
@pll_a_params = internal global { %struct.tegra_clk_pll_params, [56 x i8] } { %struct.tegra_clk_pll_params { i32 2000000, i32 31000000, i32 1000000, i32 6000000, i32 20000000, i32 1400000000, i32 176, i32 188, i32 0, i32 134217728, i32 18, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1026, i32 0, i32 0, i32 300, i32 0, i8 0, ptr null, ptr null, ptr @pll_a_freq_table, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll_a_out0_div\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_a_out0\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pll_e\00", [26 x i8] zeroinitializer }, align 32
@pll_e_params = internal global { %struct.tegra_clk_pll_params, [56 x i8] } { %struct.tegra_clk_pll_params { i32 12000000, i32 12000000, i32 0, i32 0, i32 0, i32 0, i32 232, i32 236, i32 0, i32 2048, i32 9, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1344, i32 0, i32 0, i32 0, i32 0, i8 0, ptr @plle_p, ptr null, ptr @pll_e_freq_table, i32 100000000, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@pll_c_freq_table = internal global { [5 x %struct.tegra_clk_pll_freq_table], [60 x i8] } { [5 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 12000000, i32 600000000, i32 600, i32 12, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 600000000, i32 600, i32 13, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 600000000, i32 500, i32 16, i8 1, i8 6, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 600000000, i32 600, i32 26, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], [60 x i8] zeroinitializer }, align 32
@pll_m_freq_table = internal global { [9 x %struct.tegra_clk_pll_freq_table], [44 x i8] } { [9 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 12000000, i32 666000000, i32 666, i32 12, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 666000000, i32 666, i32 13, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 666000000, i32 555, i32 16, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 666000000, i32 666, i32 26, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 600000000, i32 600, i32 12, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 600000000, i32 600, i32 13, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 600000000, i32 375, i32 12, i8 1, i8 6, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 600000000, i32 600, i32 26, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], [44 x i8] zeroinitializer }, align 32
@pll_x_freq_table = internal global { [33 x %struct.tegra_clk_pll_freq_table], [172 x i8] } { [33 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 12000000, i32 1000000000, i32 1000, i32 12, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 1000000000, i32 1000, i32 13, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 1000000000, i32 625, i32 12, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 1000000000, i32 1000, i32 26, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 912000000, i32 912, i32 12, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 912000000, i32 912, i32 13, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 912000000, i32 760, i32 16, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 912000000, i32 912, i32 26, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 816000000, i32 816, i32 12, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 816000000, i32 816, i32 13, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 816000000, i32 680, i32 16, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 816000000, i32 816, i32 26, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 760000000, i32 760, i32 12, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 760000000, i32 760, i32 13, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 760000000, i32 950, i32 24, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 760000000, i32 760, i32 26, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 750000000, i32 750, i32 12, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 750000000, i32 750, i32 13, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 750000000, i32 625, i32 16, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 750000000, i32 750, i32 26, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 608000000, i32 608, i32 12, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 608000000, i32 608, i32 13, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 608000000, i32 380, i32 12, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 608000000, i32 608, i32 26, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 456000000, i32 456, i32 12, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 456000000, i32 456, i32 13, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 456000000, i32 380, i32 16, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 456000000, i32 456, i32 26, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 312000000, i32 312, i32 12, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 312000000, i32 312, i32 13, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 312000000, i32 260, i32 16, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 312000000, i32 312, i32 26, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], [172 x i8] zeroinitializer }, align 32
@pllu_p = internal constant { [3 x %struct.pdiv_map], [26 x i8] } { [3 x %struct.pdiv_map] [%struct.pdiv_map { i8 1, i8 1 }, %struct.pdiv_map { i8 2, i8 0 }, %struct.pdiv_map zeroinitializer], [26 x i8] zeroinitializer }, align 32
@pll_u_freq_table = internal global { [5 x %struct.tegra_clk_pll_freq_table], [60 x i8] } { [5 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 12000000, i32 480000000, i32 960, i32 12, i8 1, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 480000000, i32 960, i32 13, i8 1, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 480000000, i32 200, i32 4, i8 1, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 480000000, i32 960, i32 26, i8 1, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], [60 x i8] zeroinitializer }, align 32
@pll_d_freq_table = internal global { [13 x %struct.tegra_clk_pll_freq_table], [92 x i8] } { [13 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 12000000, i32 216000000, i32 216, i32 12, i8 1, i8 4, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 216000000, i32 216, i32 13, i8 1, i8 4, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 216000000, i32 135, i32 12, i8 1, i8 3, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 216000000, i32 216, i32 26, i8 1, i8 4, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 594000000, i32 594, i32 12, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 594000000, i32 594, i32 13, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 594000000, i32 495, i32 16, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 594000000, i32 594, i32 26, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 1000000000, i32 1000, i32 12, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 1000000000, i32 1000, i32 13, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 1000000000, i32 625, i32 12, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 1000000000, i32 1000, i32 26, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], [92 x i8] zeroinitializer }, align 32
@pll_a_freq_table = internal global { [4 x %struct.tegra_clk_pll_freq_table], [48 x i8] } { [4 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 28800000, i32 56448000, i32 49, i32 25, i8 1, i8 1, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 28800000, i32 73728000, i32 64, i32 25, i8 1, i8 1, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 28800000, i32 24000000, i32 5, i32 6, i8 1, i8 1, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], [48 x i8] zeroinitializer }, align 32
@plle_p = internal constant { [2 x %struct.pdiv_map], [28 x i8] } { [2 x %struct.pdiv_map] [%struct.pdiv_map { i8 1, i8 1 }, %struct.pdiv_map zeroinitializer], [28 x i8] zeroinitializer }, align 32
@pll_e_freq_table = internal global { [2 x %struct.tegra_clk_pll_freq_table], [56 x i8] } { [2 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 12000000, i32 100000000, i32 200, i32 24, i8 1, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cclk\00", [27 x i8] zeroinitializer }, align 32
@cclk_parents = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.9, ptr @.str.16, ptr @.str.33, ptr @.str.19, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.22], [60 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"twd\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clk_32k\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pll_p\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_p_out4\00", [21 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_p_out3\00", [21 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clk_d\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ac97\00", [27 x i8] zeroinitializer }, align 32
@periph_clk_enb_refcnt = external dso_local local_unnamed_addr global ptr, align 4
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"mc\00", [29 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"emc\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dsi\00", [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pex\00", [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dev1_osc_div\00", [19 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dev2_osc_div\00", [19 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cdev1\00", [26 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cdev1_mux\00", [22 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cdev2\00", [26 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cdev2_mux\00", [22 x i8] zeroinitializer }, align 32
@tegra_periph_clk_list = internal global { [12 x %struct.tegra_periph_init_data], [448 x i8] } { [12 x %struct.tegra_periph_init_data] [%struct.tegra_periph_init_data { ptr @.str.49, i32 11, %union.anon.43 { ptr @i2s1_parents }, i32 4, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 3, i8 30, i8 0, ptr null }, %struct.tegra_clk_frac_div { %struct.clk_hw zeroinitializer, ptr null, i8 1, i8 0, i8 8, i8 1, ptr null }, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 4, i32 11, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 256, ptr null, ptr null, i32 0 }, %struct.tegra_periph_init_data { ptr @.str.50, i32 18, %union.anon.43 { ptr @i2s2_parents }, i32 4, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 3, i8 30, i8 0, ptr null }, %struct.tegra_clk_frac_div { %struct.clk_hw zeroinitializer, ptr null, i8 1, i8 0, i8 8, i8 1, ptr null }, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 4, i32 18, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 260, ptr null, ptr null, i32 0 }, %struct.tegra_periph_init_data { ptr @.str.51, i32 43, %union.anon.43 { ptr @mux_pllpcm_clkm }, i32 4, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 3, i8 30, i8 0, ptr null }, %struct.tegra_clk_frac_div { %struct.clk_hw zeroinitializer, ptr null, i8 1, i8 0, i8 8, i8 1, ptr null }, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 4, i32 43, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 276, ptr null, ptr null, i32 0 }, %struct.tegra_periph_init_data { ptr @.str.52, i32 45, %union.anon.43 { ptr @mux_pllpcm_clkm }, i32 4, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 3, i8 30, i8 0, ptr null }, %struct.tegra_clk_frac_div { %struct.clk_hw zeroinitializer, ptr null, i8 1, i8 0, i8 8, i8 1, ptr null }, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 0, i32 45, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 288, ptr null, ptr null, i32 0 }, %struct.tegra_periph_init_data { ptr @.str.53, i32 16, %union.anon.43 { ptr @mux_pllpcm_clkm }, i32 4, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 3, i8 30, i8 0, ptr null }, %struct.tegra_clk_frac_div { %struct.clk_hw zeroinitializer, ptr null, i8 1, i8 0, i8 8, i8 1, ptr null }, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 4, i32 16, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 300, ptr null, ptr null, i32 0 }, %struct.tegra_periph_init_data { ptr @.str.54, i32 25, %union.anon.43 { ptr @mux_pllpcm_clkm }, i32 4, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 3, i8 30, i8 0, ptr null }, %struct.tegra_clk_frac_div { %struct.clk_hw zeroinitializer, ptr null, i8 1, i8 0, i8 8, i8 1, ptr null }, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 0, i32 25, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 288, ptr null, ptr null, i32 0 }, %struct.tegra_periph_init_data { ptr @.str.55, i32 47, %union.anon.43 { ptr @mux_pllpcm_clkm }, i32 4, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 3, i8 30, i8 0, ptr null }, %struct.tegra_clk_frac_div { %struct.clk_hw zeroinitializer, ptr null, i8 1, i8 0, i8 16, i8 0, ptr null }, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 4, i32 47, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 296, ptr null, ptr null, i32 0 }, %struct.tegra_periph_init_data { ptr @.str.56, i32 12, %union.anon.43 { ptr @mux_pllpcm_clkm }, i32 4, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 3, i8 30, i8 0, ptr null }, %struct.tegra_clk_frac_div { %struct.clk_hw zeroinitializer, ptr null, i8 1, i8 0, i8 16, i8 0, ptr null }, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 4, i32 12, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 292, ptr null, ptr null, i32 0 }, %struct.tegra_periph_init_data { ptr @.str.57, i32 54, %union.anon.43 { ptr @mux_pllpcm_clkm }, i32 4, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 3, i8 30, i8 0, ptr null }, %struct.tegra_clk_frac_div { %struct.clk_hw zeroinitializer, ptr null, i8 1, i8 0, i8 16, i8 0, ptr null }, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 4, i32 54, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 408, ptr null, ptr null, i32 0 }, %struct.tegra_periph_init_data { ptr @.str.58, i32 67, %union.anon.43 { ptr @mux_pllpcm_clkm }, i32 4, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 3, i8 30, i8 0, ptr null }, %struct.tegra_clk_frac_div { %struct.clk_hw zeroinitializer, ptr null, i8 1, i8 0, i8 16, i8 0, ptr null }, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 4, i32 67, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 440, ptr null, ptr null, i32 0 }, %struct.tegra_periph_init_data { ptr @.str.59, i32 51, %union.anon.43 { ptr @mux_pllpdc_clkm }, i32 4, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 3, i8 30, i8 0, ptr null }, %struct.tegra_clk_frac_div { %struct.clk_hw zeroinitializer, ptr null, i8 1, i8 0, i8 8, i8 1, ptr null }, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 0, i32 51, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 396, ptr null, ptr null, i32 0 }, %struct.tegra_periph_init_data { ptr @.str.60, i32 17, %union.anon.43 { ptr @pwm_parents }, i32 5, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 7, i8 28, i8 0, ptr null }, %struct.tegra_clk_frac_div { %struct.clk_hw zeroinitializer, ptr null, i8 0, i8 0, i8 8, i8 1, ptr null }, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 4, i32 17, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 272, ptr null, ptr null, i32 0 }], [448 x i8] zeroinitializer }, align 32
@tegra_periph_nodiv_clk_list = internal global { [7 x %struct.tegra_periph_init_data], [280 x i8] } { [7 x %struct.tegra_periph_init_data] [%struct.tegra_periph_init_data { ptr @.str.63, i32 6, %union.anon.43 { ptr @mux_pllpcm_clkm }, i32 4, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 3, i8 30, i8 0, ptr null }, %struct.tegra_clk_frac_div zeroinitializer, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 4, i32 6, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 376, ptr null, ptr null, i32 0 }, %struct.tegra_periph_init_data { ptr @.str.64, i32 96, %union.anon.43 { ptr @mux_pllpcm_clkm }, i32 4, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 3, i8 30, i8 0, ptr null }, %struct.tegra_clk_frac_div zeroinitializer, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 4, i32 7, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 380, ptr null, ptr null, i32 0 }, %struct.tegra_periph_init_data { ptr @.str.65, i32 55, %union.anon.43 { ptr @mux_pllpcm_clkm }, i32 4, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 3, i8 30, i8 0, ptr null }, %struct.tegra_clk_frac_div zeroinitializer, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 4, i32 55, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 416, ptr null, ptr null, i32 0 }, %struct.tegra_periph_init_data { ptr @.str.66, i32 65, %union.anon.43 { ptr @mux_pllpcm_clkm }, i32 4, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 3, i8 30, i8 0, ptr null }, %struct.tegra_clk_frac_div zeroinitializer, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 4, i32 65, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 448, ptr null, ptr null, i32 0 }, %struct.tegra_periph_init_data { ptr @.str.67, i32 66, %union.anon.43 { ptr @mux_pllpcm_clkm }, i32 4, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 3, i8 30, i8 0, ptr null }, %struct.tegra_clk_frac_div zeroinitializer, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 4, i32 66, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 452, ptr null, ptr null, i32 0 }, %struct.tegra_periph_init_data { ptr @.str.68, i32 27, %union.anon.43 { ptr @mux_pllpdc_clkm }, i32 4, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 3, i8 30, i8 0, ptr null }, %struct.tegra_clk_frac_div zeroinitializer, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 0, i32 27, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 312, ptr null, ptr null, i32 0 }, %struct.tegra_periph_init_data { ptr @.str.69, i32 26, %union.anon.43 { ptr @mux_pllpdc_clkm }, i32 4, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 3, i8 30, i8 0, ptr null }, %struct.tegra_clk_frac_div zeroinitializer, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 0, i32 26, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 316, ptr null, ptr null, i32 0 }], [280 x i8] zeroinitializer }, align 32
@pll_p_params = internal global { %struct.tegra_clk_pll_params, [56 x i8] } { %struct.tegra_clk_pll_params { i32 2000000, i32 31000000, i32 1000000, i32 6000000, i32 20000000, i32 1400000000, i32 160, i32 172, i32 0, i32 134217728, i32 18, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1090, i32 0, i32 0, i32 300, i32 0, i8 0, ptr null, ptr null, ptr @pll_p_freq_table, i32 216000000, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2s1\00", [27 x i8] zeroinitializer }, align 32
@i2s1_parents = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.29, ptr @.str.61, ptr @.str.34, ptr @.str.9], [16 x i8] zeroinitializer }, align 32
@clk_mux_ops = external dso_local constant %struct.clk_ops, align 4
@tegra_clk_frac_div_ops = external dso_local constant %struct.clk_ops, align 4
@tegra_clk_periph_gate_ops = external dso_local constant %struct.clk_ops, align 4
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2s2\00", [27 x i8] zeroinitializer }, align 32
@i2s2_parents = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.29, ptr @.str.61, ptr @.str.34, ptr @.str.9], [16 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"spi\00", [28 x i8] zeroinitializer }, align 32
@mux_pllpcm_clkm = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.34, ptr @.str.16, ptr @.str.19, ptr @.str.9], [16 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"xio\00", [28 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"twc\00", [28 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ide\00", [28 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dvc\00", [28 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c1\00", [27 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c2\00", [27 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c3\00", [27 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hdmi\00", [27 x i8] zeroinitializer }, align 32
@mux_pllpdc_clkm = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.34, ptr @.str.25, ptr @.str.16, ptr @.str.9], [16 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pwm\00", [28 x i8] zeroinitializer }, align 32
@pwm_parents = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.34, ptr @.str.16, ptr @.str.62, ptr @.str.9, ptr @.str.33], [44 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"audio_2x\00", [23 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"audio\00", [26 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uarta\00", [26 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uartb\00", [26 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uartc\00", [26 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uartd\00", [26 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uarte\00", [26 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"disp1\00", [26 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"disp2\00", [26 x i8] zeroinitializer }, align 32
@pll_p_freq_table = internal global { [9 x %struct.tegra_clk_pll_freq_table], [44 x i8] } { [9 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 12000000, i32 216000000, i32 432, i32 12, i8 2, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 216000000, i32 432, i32 13, i8 2, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 216000000, i32 90, i32 4, i8 2, i8 1, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 216000000, i32 432, i32 26, i8 2, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 432000000, i32 432, i32 12, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 432000000, i32 432, i32 13, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 432000000, i32 90, i32 4, i8 1, i8 1, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 432000000, i32 432, i32 26, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], [44 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"audio_mux\00", [22 x i8] zeroinitializer }, align 32
@audio_parents = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.72, ptr @.str.49, ptr @.str.50, ptr @.str.73, ptr @.str.29, ptr @.str.73, ptr @.str.73, ptr @.str.73], [32 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"audio_doubler\00", [18 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spdif_in\00", [23 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"unused\00", [25 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"utmip-pad\00", [22 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tegra-ehci.0\00", [19 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tegra-otg\00", [22 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cpu\00", [28 x i8] zeroinitializer }, align 32
@tegra20_car_initialized = internal global { i1, [31 x i8] } zeroinitializer, align 32
@tegra20_cpu_clk_sctx.0 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@tegra20_cpu_clk_sctx.1 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@tegra20_cpu_clk_sctx.2 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@tegra20_cpu_clk_sctx.3 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@tegra20_cpu_clk_sctx.4 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@tegra20_car_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra20_car_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.78, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @tegra20_car_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tegra20-car\00", [20 x i8] zeroinitializer }, align 32
@tegra20_car_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-car\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sclk\00", [27 x i8] zeroinitializer }, align 32
@sclk_parents = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.9, ptr @.str.18, ptr @.str.35, ptr @.str.36, ptr @.str.80, ptr @.str.37, ptr @.str.33, ptr @.str.21], [32 x i8] zeroinitializer }, align 32
@devclks = internal global { [94 x %struct.tegra_devclk], [280 x i8] } { [94 x %struct.tegra_devclk] [%struct.tegra_devclk { i32 114, ptr null, ptr @.str.16 }, %struct.tegra_devclk { i32 115, ptr null, ptr @.str.18 }, %struct.tegra_devclk { i32 121, ptr null, ptr @.str.34 }, %struct.tegra_devclk { i32 122, ptr null, ptr @.str.27 }, %struct.tegra_devclk { i32 123, ptr null, ptr @.str.80 }, %struct.tegra_devclk { i32 124, ptr null, ptr @.str.36 }, %struct.tegra_devclk { i32 125, ptr null, ptr @.str.35 }, %struct.tegra_devclk { i32 119, ptr null, ptr @.str.19 }, %struct.tegra_devclk { i32 120, ptr null, ptr @.str.21 }, %struct.tegra_devclk { i32 128, ptr null, ptr @.str.22 }, %struct.tegra_devclk { i32 127, ptr null, ptr @.str.23 }, %struct.tegra_devclk { i32 116, ptr null, ptr @.str.24 }, %struct.tegra_devclk { i32 117, ptr null, ptr @.str.25 }, %struct.tegra_devclk { i32 112, ptr null, ptr @.str.26 }, %struct.tegra_devclk { i32 113, ptr null, ptr @.str.29 }, %struct.tegra_devclk { i32 118, ptr null, ptr @.str.30 }, %struct.tegra_devclk { i32 108, ptr null, ptr @.str.31 }, %struct.tegra_devclk { i32 107, ptr null, ptr @.str.79 }, %struct.tegra_devclk { i32 109, ptr null, ptr @.str.81 }, %struct.tegra_devclk { i32 110, ptr null, ptr @.str.82 }, %struct.tegra_devclk { i32 39, ptr null, ptr @.str.83 }, %struct.tegra_devclk { i32 132, ptr null, ptr @.str.32 }, %struct.tegra_devclk { i32 130, ptr null, ptr @.str.62 }, %struct.tegra_devclk { i32 89, ptr null, ptr @.str.61 }, %struct.tegra_devclk { i32 3, ptr @.str.84, ptr null }, %struct.tegra_devclk { i32 34, ptr @.str.85, ptr null }, %struct.tegra_devclk { i32 4, ptr @.str.86, ptr null }, %struct.tegra_devclk { i32 5, ptr @.str.87, ptr null }, %struct.tegra_devclk { i32 36, ptr @.str.88, ptr null }, %struct.tegra_devclk { i32 92, ptr @.str.89, ptr @.str.90 }, %struct.tegra_devclk { i32 29, ptr @.str.91, ptr @.str.92 }, %struct.tegra_devclk { i32 62, ptr @.str.91, ptr @.str.93 }, %struct.tegra_devclk { i32 63, ptr @.str.94, ptr @.str.95 }, %struct.tegra_devclk { i32 57, ptr null, ptr @.str.40 }, %struct.tegra_devclk { i32 22, ptr @.str.96, ptr null }, %struct.tegra_devclk { i32 58, ptr @.str.97, ptr null }, %struct.tegra_devclk { i32 59, ptr @.str.98, ptr null }, %struct.tegra_devclk { i32 48, ptr @.str.41, ptr null }, %struct.tegra_devclk { i32 52, ptr @.str.89, ptr @.str.99 }, %struct.tegra_devclk { i32 23, ptr @.str.89, ptr @.str.100 }, %struct.tegra_devclk { i32 70, ptr null, ptr @.str.42 }, %struct.tegra_devclk { i32 72, ptr null, ptr @.str.101 }, %struct.tegra_devclk { i32 94, ptr null, ptr @.str.45 }, %struct.tegra_devclk { i32 93, ptr null, ptr @.str.47 }, %struct.tegra_devclk { i32 105, ptr null, ptr @.str.33 }, %struct.tegra_devclk { i32 106, ptr null, ptr @.str.9 }, %struct.tegra_devclk { i32 131, ptr null, ptr @.str.10 }, %struct.tegra_devclk { i32 11, ptr @.str.102, ptr null }, %struct.tegra_devclk { i32 18, ptr @.str.103, ptr null }, %struct.tegra_devclk { i32 99, ptr @.str.104, ptr @.str.105 }, %struct.tegra_devclk { i32 98, ptr @.str.104, ptr @.str.72 }, %struct.tegra_devclk { i32 41, ptr @.str.106, ptr null }, %struct.tegra_devclk { i32 44, ptr @.str.107, ptr null }, %struct.tegra_devclk { i32 46, ptr @.str.108, ptr null }, %struct.tegra_devclk { i32 68, ptr @.str.109, ptr null }, %struct.tegra_devclk { i32 43, ptr @.str.51, ptr null }, %struct.tegra_devclk { i32 45, ptr @.str.52, ptr null }, %struct.tegra_devclk { i32 16, ptr @.str.53, ptr null }, %struct.tegra_devclk { i32 25, ptr @.str.54, ptr null }, %struct.tegra_devclk { i32 13, ptr @.str.110, ptr null }, %struct.tegra_devclk { i32 97, ptr @.str.111, ptr null }, %struct.tegra_devclk { i32 73, ptr @.str.112, ptr null }, %struct.tegra_devclk { i32 76, ptr @.str.113, ptr null }, %struct.tegra_devclk { i32 71, ptr @.str.114, ptr null }, %struct.tegra_devclk { i32 50, ptr @.str.115, ptr null }, %struct.tegra_devclk { i32 61, ptr @.str.116, ptr null }, %struct.tegra_devclk { i32 100, ptr @.str.89, ptr @.str.117 }, %struct.tegra_devclk { i32 19, ptr @.str.118, ptr null }, %struct.tegra_devclk { i32 60, ptr @.str.119, ptr null }, %struct.tegra_devclk { i32 28, ptr @.str.120, ptr null }, %struct.tegra_devclk { i32 24, ptr @.str.121, ptr null }, %struct.tegra_devclk { i32 21, ptr @.str.122, ptr null }, %struct.tegra_devclk { i32 42, ptr @.str.123, ptr null }, %struct.tegra_devclk { i32 14, ptr @.str.124, ptr null }, %struct.tegra_devclk { i32 9, ptr @.str.125, ptr null }, %struct.tegra_devclk { i32 69, ptr @.str.126, ptr null }, %struct.tegra_devclk { i32 15, ptr @.str.127, ptr null }, %struct.tegra_devclk { i32 103, ptr @.str.128, ptr null }, %struct.tegra_devclk { i32 102, ptr @.str.129, ptr null }, %struct.tegra_devclk { i32 53, ptr @.str.130, ptr null }, %struct.tegra_devclk { i32 101, ptr @.str.89, ptr @.str.131 }, %struct.tegra_devclk { i32 51, ptr @.str.59, ptr null }, %struct.tegra_devclk { i32 12, ptr @.str.132, ptr @.str.133 }, %struct.tegra_devclk { i32 54, ptr @.str.134, ptr @.str.133 }, %struct.tegra_devclk { i32 67, ptr @.str.135, ptr @.str.133 }, %struct.tegra_devclk { i32 47, ptr @.str.136, ptr @.str.133 }, %struct.tegra_devclk { i32 17, ptr @.str.137, ptr null }, %struct.tegra_devclk { i32 6, ptr @.str.138, ptr null }, %struct.tegra_devclk { i32 96, ptr @.str.139, ptr null }, %struct.tegra_devclk { i32 55, ptr @.str.140, ptr null }, %struct.tegra_devclk { i32 65, ptr @.str.141, ptr null }, %struct.tegra_devclk { i32 66, ptr @.str.142, ptr null }, %struct.tegra_devclk { i32 27, ptr @.str.143, ptr null }, %struct.tegra_devclk { i32 26, ptr @.str.144, ptr null }], [280 x i8] zeroinitializer }, align 32
@init_table = internal global { [34 x %struct.tegra_clk_init_table], [128 x i8] } { [34 x %struct.tegra_clk_init_table] [%struct.tegra_clk_init_table { i32 121, i32 133, i32 216000000, i32 1 }, %struct.tegra_clk_init_table { i32 122, i32 133, i32 28800000, i32 1 }, %struct.tegra_clk_init_table { i32 123, i32 133, i32 48000000, i32 1 }, %struct.tegra_clk_init_table { i32 124, i32 133, i32 72000000, i32 1 }, %struct.tegra_clk_init_table { i32 125, i32 133, i32 24000000, i32 1 }, %struct.tegra_clk_init_table { i32 114, i32 133, i32 600000000, i32 0 }, %struct.tegra_clk_init_table { i32 115, i32 133, i32 120000000, i32 0 }, %struct.tegra_clk_init_table { i32 107, i32 115, i32 120000000, i32 0 }, %struct.tegra_clk_init_table { i32 109, i32 133, i32 120000000, i32 0 }, %struct.tegra_clk_init_table { i32 110, i32 133, i32 60000000, i32 0 }, %struct.tegra_clk_init_table { i32 73, i32 133, i32 0, i32 1 }, %struct.tegra_clk_init_table { i32 108, i32 133, i32 0, i32 1 }, %struct.tegra_clk_init_table { i32 6, i32 121, i32 0, i32 0 }, %struct.tegra_clk_init_table { i32 96, i32 121, i32 0, i32 0 }, %struct.tegra_clk_init_table { i32 55, i32 121, i32 0, i32 0 }, %struct.tegra_clk_init_table { i32 65, i32 121, i32 0, i32 0 }, %struct.tegra_clk_init_table { i32 66, i32 121, i32 0, i32 0 }, %struct.tegra_clk_init_table { i32 112, i32 133, i32 56448000, i32 0 }, %struct.tegra_clk_init_table { i32 113, i32 133, i32 11289600, i32 0 }, %struct.tegra_clk_init_table { i32 11, i32 113, i32 11289600, i32 0 }, %struct.tegra_clk_init_table { i32 18, i32 113, i32 11289600, i32 0 }, %struct.tegra_clk_init_table { i32 14, i32 121, i32 48000000, i32 0 }, %struct.tegra_clk_init_table { i32 69, i32 121, i32 48000000, i32 0 }, %struct.tegra_clk_init_table { i32 15, i32 121, i32 48000000, i32 0 }, %struct.tegra_clk_init_table { i32 43, i32 121, i32 20000000, i32 0 }, %struct.tegra_clk_init_table { i32 41, i32 121, i32 100000000, i32 0 }, %struct.tegra_clk_init_table { i32 44, i32 121, i32 100000000, i32 0 }, %struct.tegra_clk_init_table { i32 46, i32 121, i32 100000000, i32 0 }, %struct.tegra_clk_init_table { i32 68, i32 121, i32 100000000, i32 0 }, %struct.tegra_clk_init_table { i32 28, i32 114, i32 150000000, i32 0 }, %struct.tegra_clk_init_table { i32 21, i32 114, i32 300000000, i32 0 }, %struct.tegra_clk_init_table { i32 24, i32 114, i32 300000000, i32 0 }, %struct.tegra_clk_init_table { i32 61, i32 114, i32 300000000, i32 0 }, %struct.tegra_clk_init_table { i32 133, i32 133, i32 0, i32 0 }], [128 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_p_out2\00", [21 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hclk\00", [27 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fuse\00", [27 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tegra20-ac97\00", [19 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tegra-apbdma\00", [19 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rtc-tegra\00", [22 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"timer\00", [26 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tegra-kbc\00", [22 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tegra_camera\00", [19 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"csus\00", [27 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tegra-avp\00", [22 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vcp\00", [28 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bsea\00", [27 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tegra-aes\00", [22 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bsev\00", [27 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fsl-tegra-udc\00", [18 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tegra-ehci.1\00", [19 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tegra-ehci.2\00", [19 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"csi\00", [28 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"isp\00", [28 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"afi\00", [28 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tegra20-i2s.0\00", [18 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tegra20-i2s.1\00", [18 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tegra20-spdif\00", [18 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spdif_out\00", [22 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spi_tegra.0\00", [20 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spi_tegra.1\00", [20 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spi_tegra.2\00", [20 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spi_tegra.3\00", [20 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tegra_nand\00", [21 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vfir\00", [27 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"csite\00", [26 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"la\00", [29 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tegra_w1\00", [23 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mipi\00", [27 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vde\00", [28 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"vi\00", [29 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"epp\00", [28 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mpe\00", [28 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"host1x\00", [25 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"3d\00", [29 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"2d\00", [29 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tegra-nor\00", [22 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sdhci-tegra.0\00", [18 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sdhci-tegra.1\00", [18 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sdhci-tegra.2\00", [18 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sdhci-tegra.3\00", [18 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cve\00", [28 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tvo\00", [28 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tvdac\00", [26 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vi_sensor\00", [22 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tegra-i2c.0\00", [20 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"div-clk\00", [24 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tegra-i2c.1\00", [20 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tegra-i2c.2\00", [20 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tegra-i2c.3\00", [20 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tegra-pwm\00", [22 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tegra_uart.0\00", [19 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tegra_uart.1\00", [19 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tegra_uart.2\00", [19 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tegra_uart.3\00", [19 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tegra_uart.4\00", [19 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tegradc.0\00", [22 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tegradc.1\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.145 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 268435456, i64 536870912]
@__sancov_gen_cov_switch_values.146 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 5, i64 132]
@__sancov_gen_cov_switch_values.147 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.148 = private unnamed_addr constant [9 x i8] c"clk_base\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 133, i32 22 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 1123, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 1129, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant [9 x i8] c"pmc_base\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 134, i32 22 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 1135, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant [5 x i8] c"clks\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 158, i32 21 }
@___asan_gen_.181 = private unnamed_addr constant [21 x i8] c"tegra_clk_duplicates\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 1056, i32 35 }
@___asan_gen_.184 = private unnamed_addr constant [20 x i8] c"tegra20_cpu_car_ops\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 1000, i32 33 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 865, i32 38 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 871, i32 40 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 598, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 620, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 631, i32 31 }
@___asan_gen_.214 = private unnamed_addr constant [13 x i8] c"pll_c_params\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 278, i32 36 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 636, i32 35 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 639, i32 35 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 645, i32 31 }
@___asan_gen_.226 = private unnamed_addr constant [13 x i8] c"pll_m_params\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 294, i32 36 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 650, i32 35 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 653, i32 35 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 659, i32 31 }
@___asan_gen_.238 = private unnamed_addr constant [13 x i8] c"pll_x_params\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 383, i32 36 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 664, i32 31 }
@___asan_gen_.244 = private unnamed_addr constant [13 x i8] c"pll_u_params\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 366, i32 36 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 669, i32 31 }
@___asan_gen_.250 = private unnamed_addr constant [13 x i8] c"pll_d_params\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 344, i32 36 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 674, i32 40 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 679, i32 31 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 679, i32 40 }
@___asan_gen_.262 = private unnamed_addr constant [13 x i8] c"pll_a_params\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 328, i32 36 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 684, i32 35 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 687, i32 35 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 693, i32 32 }
@___asan_gen_.274 = private unnamed_addr constant [13 x i8] c"pll_e_params\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 401, i32 36 }
@___asan_gen_.277 = private unnamed_addr constant [17 x i8] c"pll_c_freq_table\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 160, i32 40 }
@___asan_gen_.280 = private unnamed_addr constant [17 x i8] c"pll_m_freq_table\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 168, i32 40 }
@___asan_gen_.283 = private unnamed_addr constant [17 x i8] c"pll_x_freq_table\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 223, i32 40 }
@___asan_gen_.286 = private unnamed_addr constant [7 x i8] c"pllu_p\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 360, i32 30 }
@___asan_gen_.289 = private unnamed_addr constant [17 x i8] c"pll_u_freq_table\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 215, i32 40 }
@___asan_gen_.292 = private unnamed_addr constant [17 x i8] c"pll_d_freq_table\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 199, i32 40 }
@___asan_gen_.295 = private unnamed_addr constant [17 x i8] c"pll_a_freq_table\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 192, i32 40 }
@___asan_gen_.298 = private unnamed_addr constant [7 x i8] c"plle_p\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 267, i32 30 }
@___asan_gen_.301 = private unnamed_addr constant [17 x i8] c"pll_e_freq_table\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 272, i32 40 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 710, i32 38 }
@___asan_gen_.307 = private unnamed_addr constant [13 x i8] c"cclk_parents\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 698, i32 20 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 717, i32 40 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 698, i32 57 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 699, i32 11 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 699, i32 20 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 700, i32 11 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 700, i32 25 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 791, i32 39 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 801, i32 30 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 801, i32 36 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 806, i32 39 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 812, i32 39 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 817, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 823, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 829, i32 39 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 829, i32 48 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 834, i32 39 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 834, i32 48 }
@___asan_gen_.361 = private unnamed_addr constant [22 x i8] c"tegra_periph_clk_list\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 759, i32 38 }
@___asan_gen_.364 = private unnamed_addr constant [28 x i8] c"tegra_periph_nodiv_clk_list\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 774, i32 38 }
@___asan_gen_.367 = private unnamed_addr constant [13 x i8] c"pll_p_params\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 310, i32 36 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 760, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant [13 x i8] c"i2s1_parents\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 749, i32 20 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 761, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant [13 x i8] c"i2s2_parents\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 751, i32 20 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 762, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant [16 x i8] c"mux_pllpcm_clkm\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 755, i32 20 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 763, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 764, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 765, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 766, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 767, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 768, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 769, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 770, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant [16 x i8] c"mux_pllpdc_clkm\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 756, i32 20 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 771, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant [12 x i8] c"pwm_parents\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 753, i32 20 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 749, i32 53 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 753, i32 56 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 775, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 776, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 777, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 778, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 779, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 780, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 781, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant [17 x i8] c"pll_p_freq_table\00", align 1
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 180, i32 40 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 730, i32 8 }
@___asan_gen_.454 = private unnamed_addr constant [14 x i8] c"audio_parents\00", align 1
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 721, i32 20 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 740, i32 40 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 721, i32 40 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 721, i32 68 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 1057, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 1058, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 1059, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 1060, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant [24 x i8] c"tegra20_car_initialized\00", align 1
@___asan_gen_.479 = private unnamed_addr constant [23 x i8] c"tegra20_cpu_clk_sctx.0\00", align 1
@___asan_gen_.480 = private unnamed_addr constant [23 x i8] c"tegra20_cpu_clk_sctx.1\00", align 1
@___asan_gen_.481 = private unnamed_addr constant [23 x i8] c"tegra20_cpu_clk_sctx.2\00", align 1
@___asan_gen_.482 = private unnamed_addr constant [23 x i8] c"tegra20_cpu_clk_sctx.3\00", align 1
@___asan_gen_.483 = private unnamed_addr constant [23 x i8] c"tegra20_cpu_clk_sctx.4\00", align 1
@___asan_gen_.484 = private unnamed_addr constant [19 x i8] c"tegra20_car_driver\00", align 1
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 1191, i32 31 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 1193, i32 11 }
@___asan_gen_.490 = private unnamed_addr constant [18 x i8] c"tegra20_car_match\00", align 1
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 1186, i32 34 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 1173, i32 37 }
@___asan_gen_.496 = private unnamed_addr constant [13 x i8] c"sclk_parents\00", align 1
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 701, i32 20 }
@___asan_gen_.499 = private unnamed_addr constant [8 x i8] c"devclks\00", align 1
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 420, i32 28 }
@___asan_gen_.502 = private unnamed_addr constant [11 x i8] c"init_table\00", align 1
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 1013, i32 36 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 702, i32 25 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 439, i32 14 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 440, i32 14 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 441, i32 14 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 445, i32 14 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 446, i32 14 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 447, i32 14 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 448, i32 14 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 449, i32 14 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 450, i32 33 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 450, i32 14 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 451, i32 31 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 451, i32 14 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 452, i32 14 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 453, i32 32 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 453, i32 14 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 455, i32 14 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 456, i32 14 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 457, i32 14 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 459, i32 14 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 460, i32 14 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 462, i32 14 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 468, i32 14 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 469, i32 14 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 470, i32 37 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 470, i32 14 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 472, i32 14 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 473, i32 14 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 474, i32 14 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 475, i32 14 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 480, i32 14 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 481, i32 14 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 482, i32 14 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 483, i32 14 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 484, i32 14 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 485, i32 14 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 486, i32 14 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 487, i32 14 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 488, i32 14 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 489, i32 14 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 490, i32 14 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 491, i32 14 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 492, i32 14 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 493, i32 14 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 494, i32 14 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 495, i32 14 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 496, i32 14 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 497, i32 14 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 498, i32 14 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 499, i32 14 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 500, i32 14 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 501, i32 14 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 503, i32 35 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 503, i32 14 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 504, i32 35 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 505, i32 35 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 506, i32 35 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 507, i32 14 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 508, i32 14 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 509, i32 14 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 510, i32 14 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 511, i32 14 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 512, i32 14 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 513, i32 14 }
@___asan_gen_.697 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.698 = private constant [35 x i8] c"../drivers/clk/tegra/clk-tegra20.c\00", align 1
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.698, i32 514, i32 14 }
@llvm.compiler.used = appending global [195 x ptr] [ptr @__initcall__kmod_clk_tegra20__183_1199_tegra20_car_driver_init6, ptr @__of_table_tegra20, ptr @tegra20_clk_measure_input_freq._entry, ptr @tegra20_clk_measure_input_freq._entry_ptr, ptr @tegra20_clock_init._entry, ptr @tegra20_clock_init._entry.3, ptr @tegra20_clock_init._entry.6, ptr @tegra20_clock_init._entry_ptr, ptr @tegra20_clock_init._entry_ptr.5, ptr @tegra20_clock_init._entry_ptr.8, ptr @tegra20_get_pll_ref_div._entry, ptr @tegra20_get_pll_ref_div._entry_ptr, ptr @clk_base, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @pmc_base, ptr @.str.7, ptr @clks, ptr @tegra_clk_duplicates, ptr @tegra20_cpu_car_ops, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @pll_c_params, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @pll_m_params, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @pll_x_params, ptr @.str.23, ptr @pll_u_params, ptr @.str.24, ptr @pll_d_params, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @pll_a_params, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @pll_e_params, ptr @pll_c_freq_table, ptr @pll_m_freq_table, ptr @pll_x_freq_table, ptr @pllu_p, ptr @pll_u_freq_table, ptr @pll_d_freq_table, ptr @pll_a_freq_table, ptr @plle_p, ptr @pll_e_freq_table, ptr @.str.31, ptr @cclk_parents, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @tegra_periph_clk_list, ptr @tegra_periph_nodiv_clk_list, ptr @pll_p_params, ptr @.str.49, ptr @i2s1_parents, ptr @.str.50, ptr @i2s2_parents, ptr @.str.51, ptr @mux_pllpcm_clkm, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @mux_pllpdc_clkm, ptr @.str.60, ptr @pwm_parents, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @pll_p_freq_table, ptr @.str.70, ptr @audio_parents, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @tegra20_car_initialized, ptr @tegra20_cpu_clk_sctx.0, ptr @tegra20_cpu_clk_sctx.1, ptr @tegra20_cpu_clk_sctx.2, ptr @tegra20_cpu_clk_sctx.3, ptr @tegra20_cpu_clk_sctx.4, ptr @tegra20_car_driver, ptr @.str.78, ptr @tegra20_car_match, ptr @.str.79, ptr @sclk_parents, ptr @devclks, ptr @init_table, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144], section "llvm.metadata"
@0 = internal global [188 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_clock_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_clock_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmc_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_clock_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clks to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_clk_duplicates to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_cpu_car_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_clk_measure_input_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_get_pll_ref_div._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_c_params to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_m_params to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_x_params to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_u_params to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_d_params to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_a_params to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_e_params to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_c_freq_table to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_m_freq_table to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_x_freq_table to i32), i32 660, i32 832, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pllu_p to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_u_freq_table to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_d_freq_table to i32), i32 260, i32 352, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_a_freq_table to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plle_p to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_e_freq_table to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cclk_parents to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_periph_clk_list to i32), i32 1824, i32 2272, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_periph_nodiv_clk_list to i32), i32 1064, i32 1344, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_p_params to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s1_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s2_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mux_pllpcm_clkm to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mux_pllpdc_clkm to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_parents to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_p_freq_table to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_parents to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_car_initialized to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_cpu_clk_sctx.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_cpu_clk_sctx.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_cpu_clk_sctx.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_cpu_clk_sctx.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_cpu_clk_sctx.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_car_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra20_car_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sclk_parents to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devclks to i32), i32 1128, i32 1408, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_table to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tegra20_of_clk_init_driver(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %_flags.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %_flags.i) #5
  tail call fastcc void @tegra20_clock_init(ptr noundef %np) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra20_car_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra20_car_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra20_clock_init(ptr noundef %np) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #5
  store ptr %call, ptr @clk_base, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/tegra/clk-tegra20.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1124, 0\0A.popsection", ""() #5, !srcloc !381
  unreachable

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @pmc_match, ptr noundef null) #5
  %tobool9.not = icmp eq ptr %call.i, null
  br i1 %tobool9.not, label %do.end13, label %if.end22

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/tegra/clk-tegra20.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1130, 0\0A.popsection", ""() #5, !srcloc !382
  unreachable

if.end22:                                         ; preds = %if.end
  %call23 = tail call ptr @of_iomap(ptr noundef nonnull %call.i, i32 noundef 0) #5
  store ptr %call23, ptr @pmc_base, align 4
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %do.end28, label %if.end37

do.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/tegra/clk-tegra20.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1136, 0\0A.popsection", ""() #5, !srcloc !383
  unreachable

if.end37:                                         ; preds = %if.end22
  %0 = load ptr, ptr @clk_base, align 4
  %call38 = tail call ptr @tegra_clk_init(ptr noundef %0, i32 noundef 133, i32 noundef 3) #5
  store ptr %call38, ptr @clks, align 4
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %if.end37.cleanup_crit_edge, label %if.end41

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end41:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @tegra20_osc_clk_init() #8
  tail call void @tegra_fixed_clk_init(ptr noundef nonnull @tegra20_clks) #5
  %1 = load ptr, ptr @clk_base, align 4
  %call.i44 = tail call ptr @tegra_clk_register_pll(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.10, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef nonnull @pll_c_params, ptr noundef null) #5
  %2 = load ptr, ptr @clks, align 4
  %arrayidx.i = getelementptr ptr, ptr %2, i32 114
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i44, ptr %arrayidx.i, align 4
  %4 = load ptr, ptr @clk_base, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 132
  %call1.i = tail call ptr @tegra_clk_register_divider(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, ptr noundef %add.ptr.i, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 8, i8 noundef zeroext 8, i8 noundef zeroext 1, ptr noundef null) #5
  %5 = load ptr, ptr @clk_base, align 4
  %add.ptr2.i = getelementptr i8, ptr %5, i32 132
  %call3.i = tail call ptr @tegra_clk_register_pll_out(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, ptr noundef %add.ptr2.i, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 4, i8 noundef zeroext 0, ptr noundef null) #5
  %6 = load ptr, ptr @clks, align 4
  %arrayidx4.i = getelementptr ptr, ptr %6, i32 115
  %7 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call3.i, ptr %arrayidx4.i, align 4
  %8 = load ptr, ptr @clk_base, align 4
  %call5.i = tail call ptr @tegra_clk_register_pll(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.10, ptr noundef %8, ptr noundef null, i32 noundef 1, ptr noundef nonnull @pll_m_params, ptr noundef null) #5
  %9 = load ptr, ptr @clks, align 4
  %arrayidx6.i = getelementptr ptr, ptr %9, i32 119
  %10 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call5.i, ptr %arrayidx6.i, align 4
  %11 = load ptr, ptr @clk_base, align 4
  %add.ptr7.i = getelementptr i8, ptr %11, i32 148
  %call8.i = tail call ptr @tegra_clk_register_divider(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.19, ptr noundef %add.ptr7.i, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 8, i8 noundef zeroext 8, i8 noundef zeroext 1, ptr noundef null) #5
  %12 = load ptr, ptr @clk_base, align 4
  %add.ptr9.i = getelementptr i8, ptr %12, i32 148
  %call10.i = tail call ptr @tegra_clk_register_pll_out(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, ptr noundef %add.ptr9.i, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 4, i8 noundef zeroext 0, ptr noundef null) #5
  %13 = load ptr, ptr @clks, align 4
  %arrayidx11.i = getelementptr ptr, ptr %13, i32 120
  %14 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call10.i, ptr %arrayidx11.i, align 4
  %15 = load ptr, ptr @clk_base, align 4
  %call12.i = tail call ptr @tegra_clk_register_pll(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.10, ptr noundef %15, ptr noundef null, i32 noundef 0, ptr noundef nonnull @pll_x_params, ptr noundef null) #5
  %16 = load ptr, ptr @clks, align 4
  %arrayidx13.i = getelementptr ptr, ptr %16, i32 128
  %17 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call12.i, ptr %arrayidx13.i, align 4
  %18 = load ptr, ptr @clk_base, align 4
  %call14.i = tail call ptr @tegra_clk_register_pll(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.10, ptr noundef %18, ptr noundef null, i32 noundef 0, ptr noundef nonnull @pll_u_params, ptr noundef null) #5
  %19 = load ptr, ptr @clks, align 4
  %arrayidx15.i = getelementptr ptr, ptr %19, i32 127
  %20 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call14.i, ptr %arrayidx15.i, align 4
  %21 = load ptr, ptr @clk_base, align 4
  %call16.i = tail call ptr @tegra_clk_register_pll(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.10, ptr noundef %21, ptr noundef null, i32 noundef 0, ptr noundef nonnull @pll_d_params, ptr noundef null) #5
  %22 = load ptr, ptr @clks, align 4
  %arrayidx17.i = getelementptr ptr, ptr %22, i32 116
  %23 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call16.i, ptr %arrayidx17.i, align 4
  %call18.i = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24, i32 noundef 4, i32 noundef 1, i32 noundef 2) #5
  %24 = load ptr, ptr @clks, align 4
  %arrayidx19.i = getelementptr ptr, ptr %24, i32 117
  %25 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call18.i, ptr %arrayidx19.i, align 4
  %26 = load ptr, ptr @clk_base, align 4
  %call20.i = tail call ptr @tegra_clk_register_pll(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, ptr noundef %26, ptr noundef null, i32 noundef 0, ptr noundef nonnull @pll_a_params, ptr noundef null) #5
  %27 = load ptr, ptr @clks, align 4
  %arrayidx21.i = getelementptr ptr, ptr %27, i32 112
  %28 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call20.i, ptr %arrayidx21.i, align 4
  %29 = load ptr, ptr @clk_base, align 4
  %add.ptr22.i = getelementptr i8, ptr %29, i32 180
  %call23.i = tail call ptr @tegra_clk_register_divider(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.26, ptr noundef %add.ptr22.i, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 8, i8 noundef zeroext 8, i8 noundef zeroext 1, ptr noundef null) #5
  %30 = load ptr, ptr @clk_base, align 4
  %add.ptr24.i = getelementptr i8, ptr %30, i32 180
  %call25.i = tail call ptr @tegra_clk_register_pll_out(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, ptr noundef %add.ptr24.i, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 12, i8 noundef zeroext 0, ptr noundef null) #5
  %31 = load ptr, ptr @clks, align 4
  %arrayidx26.i = getelementptr ptr, ptr %31, i32 113
  %32 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call25.i, ptr %arrayidx26.i, align 4
  %33 = load ptr, ptr @clk_base, align 4
  %34 = load ptr, ptr @pmc_base, align 4
  %call27.i = tail call ptr @tegra_clk_register_plle(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.10, ptr noundef %33, ptr noundef %34, i32 noundef 0, ptr noundef nonnull @pll_e_params, ptr noundef null) #5
  %35 = load ptr, ptr @clks, align 4
  %arrayidx28.i = getelementptr ptr, ptr %35, i32 118
  %36 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call27.i, ptr %arrayidx28.i, align 4
  %37 = load ptr, ptr @clk_base, align 4
  %add.ptr.i45 = getelementptr i8, ptr %37, i32 32
  %call.i46 = tail call ptr @tegra_clk_register_super_cclk(ptr noundef nonnull @.str.31, ptr noundef nonnull @cclk_parents, i8 noundef zeroext 9, i32 noundef 4, ptr noundef %add.ptr.i45, i8 noundef zeroext 4, ptr noundef null) #5
  %38 = load ptr, ptr @clks, align 4
  %arrayidx.i47 = getelementptr ptr, ptr %38, i32 108
  %39 = ptrtoint ptr %arrayidx.i47 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i46, ptr %arrayidx.i47, align 4
  %call1.i48 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, i32 noundef 0, i32 noundef 1, i32 noundef 4) #5
  %40 = load ptr, ptr @clks, align 4
  %arrayidx2.i = getelementptr ptr, ptr %40, i32 132
  %41 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call1.i48, ptr %arrayidx2.i, align 4
  %42 = load ptr, ptr @clk_base, align 4
  %43 = load ptr, ptr @pmc_base, align 4
  tail call void @tegra_super_clk_gen4_init(ptr noundef %42, ptr noundef %43, ptr noundef nonnull @tegra20_clks, ptr noundef null) #5
  tail call fastcc void @tegra20_periph_clk_init() #8
  tail call fastcc void @tegra20_audio_clk_init() #8
  %44 = load ptr, ptr @clks, align 4
  tail call void @tegra_init_dup_clks(ptr noundef nonnull @tegra_clk_duplicates, ptr noundef %44, i32 noundef 133) #5
  tail call void @tegra_add_of_provider(ptr noundef %np, ptr noundef nonnull @tegra20_clk_src_onecell_get) #5
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @tegra_cpu_car_ops to i32))
  store ptr @tegra20_cpu_car_ops, ptr @tegra_cpu_car_ops, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.end37.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra20_osc_clk_init() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @clk_base, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 80
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !384
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #5
  %and1.i = and i32 %2, 805306368
  %3 = lshr i32 %2, 30
  %4 = xor i32 %3, 2
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %entry.unreachabledefault.i [
    i32 0, label %do.body.i
    i32 2, label %do.body10.i
    i32 3, label %do.body29.i
    i32 1, label %do.body48.i
  ]

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.not.i = icmp eq i32 %and1.i, 0
  br i1 %cmp.not.i, label %do.body.i.tegra20_clk_measure_input_freq.exit_crit_edge, label %do.body3.i, !prof !385

do.body.i.tegra20_clk_measure_input_freq.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tegra20_clk_measure_input_freq.exit

do.body3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/tegra/clk-tegra20.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 582, 0\0A.popsection", ""() #5, !srcloc !386
  unreachable

do.body10.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp11.not.i = icmp eq i32 %and1.i, 0
  br i1 %cmp11.not.i, label %do.body10.i.tegra20_clk_measure_input_freq.exit_crit_edge, label %do.body19.i, !prof !385

do.body10.i.tegra20_clk_measure_input_freq.exit_crit_edge: ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tegra20_clk_measure_input_freq.exit

do.body19.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/tegra/clk-tegra20.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 586, 0\0A.popsection", ""() #5, !srcloc !387
  unreachable

do.body29.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp30.not.i = icmp eq i32 %and1.i, 0
  br i1 %cmp30.not.i, label %do.body29.i.tegra20_clk_measure_input_freq.exit_crit_edge, label %do.body38.i, !prof !385

do.body29.i.tegra20_clk_measure_input_freq.exit_crit_edge: ; preds = %do.body29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tegra20_clk_measure_input_freq.exit

do.body38.i:                                      ; preds = %do.body29.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/tegra/clk-tegra20.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 590, 0\0A.popsection", ""() #5, !srcloc !388
  unreachable

do.body48.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp49.not.i = icmp eq i32 %and1.i, 0
  br i1 %cmp49.not.i, label %do.body48.i.tegra20_clk_measure_input_freq.exit_crit_edge, label %do.body57.i, !prof !385

do.body48.i.tegra20_clk_measure_input_freq.exit_crit_edge: ; preds = %do.body48.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tegra20_clk_measure_input_freq.exit

do.body57.i:                                      ; preds = %do.body48.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/tegra/clk-tegra20.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 594, 0\0A.popsection", ""() #5, !srcloc !389
  unreachable

entry.unreachabledefault.i:                       ; preds = %entry
  unreachable

tegra20_clk_measure_input_freq.exit:              ; preds = %do.body48.i.tegra20_clk_measure_input_freq.exit_crit_edge, %do.body29.i.tegra20_clk_measure_input_freq.exit_crit_edge, %do.body10.i.tegra20_clk_measure_input_freq.exit_crit_edge, %do.body.i.tegra20_clk_measure_input_freq.exit_crit_edge
  %input_freq.0.i = phi i32 [ 12000000, %do.body.i.tegra20_clk_measure_input_freq.exit_crit_edge ], [ 13000000, %do.body10.i.tegra20_clk_measure_input_freq.exit_crit_edge ], [ 19200000, %do.body29.i.tegra20_clk_measure_input_freq.exit_crit_edge ], [ 26000000, %do.body48.i.tegra20_clk_measure_input_freq.exit_crit_edge ]
  %call1 = tail call ptr @clk_register_fixed_rate(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef null, i32 noundef 8, i32 noundef %input_freq.0.i) #5
  %6 = load ptr, ptr @clks, align 4
  %arrayidx = getelementptr ptr, ptr %6, i32 106
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call1, ptr %arrayidx, align 4
  %8 = load ptr, ptr @clk_base, align 4
  %add.ptr.i6 = getelementptr i8, ptr %8, i32 80
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6) #5, !srcloc !384
  %10 = shl i32 %9, 24
  %and.i = and i32 %10, 805306368
  %11 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %and.i, label %do.end.i [
    i32 0, label %tegra20_clk_measure_input_freq.exit.tegra20_get_pll_ref_div.exit_crit_edge
    i32 268435456, label %sw.bb1.i
    i32 536870912, label %sw.bb2.i
  ]

tegra20_clk_measure_input_freq.exit.tegra20_get_pll_ref_div.exit_crit_edge: ; preds = %tegra20_clk_measure_input_freq.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %tegra20_get_pll_ref_div.exit

sw.bb1.i:                                         ; preds = %tegra20_clk_measure_input_freq.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %tegra20_get_pll_ref_div.exit

sw.bb2.i:                                         ; preds = %tegra20_clk_measure_input_freq.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %tegra20_get_pll_ref_div.exit

do.end.i:                                         ; preds = %tegra20_clk_measure_input_freq.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %and.i) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/tegra/clk-tegra20.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 621, 0\0A.popsection", ""() #5, !srcloc !390
  unreachable

tegra20_get_pll_ref_div.exit:                     ; preds = %sw.bb2.i, %sw.bb1.i, %tegra20_clk_measure_input_freq.exit.tegra20_get_pll_ref_div.exit_crit_edge
  %retval.0.i = phi i32 [ 4, %sw.bb2.i ], [ 2, %sw.bb1.i ], [ 1, %tegra20_clk_measure_input_freq.exit.tegra20_get_pll_ref_div.exit_crit_edge ]
  %call3 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, i32 noundef 4, i32 noundef 1, i32 noundef %retval.0.i) #5
  %12 = load ptr, ptr @clks, align 4
  %arrayidx4 = getelementptr ptr, ptr %12, i32 131
  %13 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call3, ptr %arrayidx4, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_fixed_clk_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_super_clk_gen4_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra20_periph_clk_init() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @clk_base, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @periph_clk_enb_refcnt to i32))
  %1 = load ptr, ptr @periph_clk_enb_refcnt, align 4
  %call = tail call ptr @tegra_clk_register_periph_gate(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.29, i8 noundef zeroext 4, ptr noundef %0, i32 noundef 0, i32 noundef 3, ptr noundef %1) #5
  %2 = load ptr, ptr @clks, align 4
  %arrayidx = getelementptr ptr, ptr %2, i32 3
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %arrayidx, align 4
  %4 = load ptr, ptr @clk_base, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 412
  %call1 = tail call ptr @tegra20_clk_register_emc(ptr noundef %add.ptr, i1 noundef zeroext false) #5
  %5 = load ptr, ptr @clks, align 4
  %arrayidx2 = getelementptr ptr, ptr %5, i32 57
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call1, ptr %arrayidx2, align 4
  %7 = load ptr, ptr @clk_base, align 4
  %add.ptr3 = getelementptr i8, ptr %7, i32 412
  %call4 = tail call ptr @tegra_clk_register_mc(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, ptr noundef %add.ptr3, ptr noundef null) #5
  %8 = load ptr, ptr @clks, align 4
  %arrayidx5 = getelementptr ptr, ptr %8, i32 32
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call4, ptr %arrayidx5, align 4
  %10 = load ptr, ptr @clk_base, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @periph_clk_enb_refcnt to i32))
  %11 = load ptr, ptr @periph_clk_enb_refcnt, align 4
  %call6 = tail call ptr @tegra_clk_register_periph_gate(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.24, i8 noundef zeroext 0, ptr noundef %10, i32 noundef 0, i32 noundef 48, ptr noundef %11) #5
  %call7 = tail call i32 @clk_register_clkdev(ptr noundef %call6, ptr noundef null, ptr noundef nonnull @.str.41) #5
  %12 = load ptr, ptr @clks, align 4
  %arrayidx8 = getelementptr ptr, ptr %12, i32 48
  %13 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call6, ptr %arrayidx8, align 4
  %14 = load ptr, ptr @clk_base, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @periph_clk_enb_refcnt to i32))
  %15 = load ptr, ptr @periph_clk_enb_refcnt, align 4
  %call9 = tail call ptr @tegra_clk_register_periph_gate(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.9, i8 noundef zeroext 0, ptr noundef %14, i32 noundef 0, i32 noundef 70, ptr noundef %15) #5
  %16 = load ptr, ptr @clks, align 4
  %arrayidx10 = getelementptr ptr, ptr %16, i32 70
  %17 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call9, ptr %arrayidx10, align 4
  %18 = load ptr, ptr @clk_base, align 4
  %add.ptr11 = getelementptr i8, ptr %18, i32 72
  %call12 = tail call ptr @clk_register_divider_table(ptr noundef null, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.9, i32 noundef 0, ptr noundef %add.ptr11, i8 noundef zeroext 22, i8 noundef zeroext 2, i8 noundef zeroext 34, ptr noundef null, ptr noundef null) #5
  %19 = load ptr, ptr @clk_base, align 4
  %add.ptr13 = getelementptr i8, ptr %19, i32 72
  %call14 = tail call ptr @clk_register_divider_table(ptr noundef null, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.9, i32 noundef 0, ptr noundef %add.ptr13, i8 noundef zeroext 20, i8 noundef zeroext 2, i8 noundef zeroext 34, ptr noundef null, ptr noundef null) #5
  %20 = load ptr, ptr @clk_base, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @periph_clk_enb_refcnt to i32))
  %21 = load ptr, ptr @periph_clk_enb_refcnt, align 4
  %call15 = tail call ptr @tegra_clk_register_periph_gate(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, i8 noundef zeroext 0, ptr noundef %20, i32 noundef 0, i32 noundef 94, ptr noundef %21) #5
  %22 = load ptr, ptr @clks, align 4
  %arrayidx16 = getelementptr ptr, ptr %22, i32 94
  %23 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call15, ptr %arrayidx16, align 4
  %24 = load ptr, ptr @clk_base, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @periph_clk_enb_refcnt to i32))
  %25 = load ptr, ptr @periph_clk_enb_refcnt, align 4
  %call17 = tail call ptr @tegra_clk_register_periph_gate(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i8 noundef zeroext 0, ptr noundef %24, i32 noundef 0, i32 noundef 93, ptr noundef %25) #5
  %26 = load ptr, ptr @clks, align 4
  %arrayidx18 = getelementptr ptr, ptr %26, i32 93
  %27 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call17, ptr %arrayidx18, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.053 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx19 = getelementptr [12 x %struct.tegra_periph_init_data], ptr @tegra_periph_clk_list, i32 0, i32 %i.053
  %28 = load ptr, ptr @clk_base, align 4
  %call20 = tail call ptr @tegra_clk_register_periph_data(ptr noundef %28, ptr noundef %arrayidx19) #5
  %29 = load ptr, ptr @clks, align 4
  %clk_id = getelementptr [12 x %struct.tegra_periph_init_data], ptr @tegra_periph_clk_list, i32 0, i32 %i.053, i32 1
  %30 = ptrtoint ptr %clk_id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %clk_id, align 4
  %arrayidx21 = getelementptr ptr, ptr %29, i32 %31
  %32 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call20, ptr %arrayidx21, align 4
  %inc = add nuw nsw i32 %i.053, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %for.body.for.body24_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.body24_crit_edge:                    ; preds = %for.body
  br label %for.body24

for.body24:                                       ; preds = %for.body24.for.body24_crit_edge, %for.body.for.body24_crit_edge
  %i.154 = phi i32 [ %inc30, %for.body24.for.body24_crit_edge ], [ 0, %for.body.for.body24_crit_edge ]
  %arrayidx25 = getelementptr [7 x %struct.tegra_periph_init_data], ptr @tegra_periph_nodiv_clk_list, i32 0, i32 %i.154
  %33 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx25, align 4
  %p = getelementptr [7 x %struct.tegra_periph_init_data], ptr @tegra_periph_nodiv_clk_list, i32 0, i32 %i.154, i32 2
  %35 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %p, align 4
  %num_parents = getelementptr [7 x %struct.tegra_periph_init_data], ptr @tegra_periph_nodiv_clk_list, i32 0, i32 %i.154, i32 3
  %37 = ptrtoint ptr %num_parents to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_parents, align 4
  %periph = getelementptr [7 x %struct.tegra_periph_init_data], ptr @tegra_periph_nodiv_clk_list, i32 0, i32 %i.154, i32 4
  %39 = load ptr, ptr @clk_base, align 4
  %offset = getelementptr [7 x %struct.tegra_periph_init_data], ptr @tegra_periph_nodiv_clk_list, i32 0, i32 %i.154, i32 5
  %40 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %offset, align 4
  %call26 = tail call ptr @tegra_clk_register_periph_nodiv(ptr noundef %34, ptr noundef %36, i32 noundef %38, ptr noundef %periph, ptr noundef %39, i32 noundef %41) #5
  %42 = load ptr, ptr @clks, align 4
  %clk_id27 = getelementptr [7 x %struct.tegra_periph_init_data], ptr @tegra_periph_nodiv_clk_list, i32 0, i32 %i.154, i32 1
  %43 = ptrtoint ptr %clk_id27 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %clk_id27, align 4
  %arrayidx28 = getelementptr ptr, ptr %42, i32 %44
  %45 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call26, ptr %arrayidx28, align 4
  %inc30 = add nuw nsw i32 %i.154, 1
  %exitcond55.not = icmp eq i32 %inc30, 7
  br i1 %exitcond55.not, label %for.end31, label %for.body24.for.body24_crit_edge

for.body24.for.body24_crit_edge:                  ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body24

for.end31:                                        ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #7
  %46 = load ptr, ptr @clk_base, align 4
  %47 = load ptr, ptr @pmc_base, align 4
  tail call void @tegra_periph_clk_init(ptr noundef %46, ptr noundef %47, ptr noundef nonnull @tegra20_clks, ptr noundef nonnull @pll_p_params) #5
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra20_audio_clk_init() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @clk_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 56
  %call = tail call ptr @clk_register_mux_table(ptr noundef null, ptr noundef nonnull @.str.70, ptr noundef nonnull @audio_parents, i8 noundef zeroext 8, i32 noundef 128, ptr noundef %add.ptr, i8 noundef zeroext 0, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef null) #5
  %1 = load ptr, ptr @clk_base, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 56
  %call2 = tail call ptr @clk_register_gate(ptr noundef null, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.70, i32 noundef 0, ptr noundef %add.ptr1, i8 noundef zeroext 4, i8 noundef zeroext 1, ptr noundef null) #5
  %2 = load ptr, ptr @clks, align 4
  %arrayidx = getelementptr ptr, ptr %2, i32 130
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2, ptr %arrayidx, align 4
  %call3 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.62, i32 noundef 4, i32 noundef 2, i32 noundef 1) #5
  %4 = load ptr, ptr @clk_base, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @periph_clk_enb_refcnt to i32))
  %5 = load ptr, ptr @periph_clk_enb_refcnt, align 4
  %call4 = tail call ptr @tegra_clk_register_periph_gate(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.71, i8 noundef zeroext 1, ptr noundef %4, i32 noundef 4, i32 noundef 89, ptr noundef %5) #5
  %6 = load ptr, ptr @clks, align 4
  %arrayidx5 = getelementptr ptr, ptr %6, i32 89
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call4, ptr %arrayidx5, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_init_dup_clks(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_add_of_provider(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tegra20_clk_src_onecell_get(ptr noundef %clkspec, ptr noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec, i32 0, i32 2
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %1, label %land.lhs.true8 [
    i32 4, label %entry.if.end_crit_edge
    i32 132, label %entry.if.end_crit_edge50
    i32 5, label %entry.if.end_crit_edge51
  ]

entry.if.end_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

entry.if.end_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true8:                                   ; preds = %entry
  %.b49 = load i1, ptr @tegra20_car_initialized, align 1
  br i1 %.b49, label %land.lhs.true8.if.end_crit_edge, label %land.lhs.true8.cleanup_crit_edge

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true8.if.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %land.lhs.true8.if.end_crit_edge, %entry.if.end_crit_edge, %entry.if.end_crit_edge50, %entry.if.end_crit_edge51
  %call9 = tail call ptr @of_clk_src_onecell_get(ptr noundef %clkspec, ptr noundef %data) #5
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %call13 = tail call ptr @__clk_get_hw(ptr noundef %call9) #5
  %3 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %args, align 4
  %.off = add i32 %4, -93
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then20, label %if.end12.if.end26_crit_edge

if.end12.if.end26_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then20:                                        ; preds = %if.end12
  %call21 = tail call ptr @clk_hw_get_parent(ptr noundef %call13) #5
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.then20.cleanup_crit_edge, label %if.end26thread-pre-split

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end26thread-pre-split:                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load i32, ptr %args, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.end26thread-pre-split, %if.end12.if.end26_crit_edge
  %6 = phi i32 [ %.pr, %if.end26thread-pre-split ], [ %4, %if.end12.if.end26_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 57, i32 %6)
  %cmp29 = icmp eq i32 %6, 57
  br i1 %cmp29, label %if.then30, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  %call31 = tail call zeroext i1 @tegra20_clk_emc_driver_available(ptr noundef %call13) #5
  %spec.select = select i1 %call31, ptr %call9, ptr inttoptr (i32 -517 to ptr)
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %if.end26.cleanup_crit_edge, %if.then20.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge
  %retval.0 = phi ptr [ %call9, %if.end.cleanup_crit_edge ], [ %call9, %if.end26.cleanup_crit_edge ], [ inttoptr (i32 -517 to ptr), %land.lhs.true8.cleanup_crit_edge ], [ inttoptr (i32 -517 to ptr), %if.then20.cleanup_crit_edge ], [ %spec.select, %if.then30 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_pll(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_divider(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_pll_out(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_plle(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_cclk_pre_pllx_rate_change() #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_cclk_post_pllx_rate_change() #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_super_cclk(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_periph_gate(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra20_clk_register_emc(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_mc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_register_clkdev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_divider_table(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_periph_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_periph_nodiv(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_periph_clk_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_mux_table(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_gate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tegra20_clk_emc_driver_available(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra20_wait_cpu_in_reset(i32 noundef %cpu) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl nuw i32 1, %cpu
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %0 = load ptr, ptr @clk_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 832
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !384
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !391
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !392
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !393
  %and = and i32 %2, %shl
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.body_crit_edge, label %do.end10

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.end10:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra20_put_cpu_in_reset(i32 noundef %cpu) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !394
  tail call void @arm_heavy_mb() #5
  %shl = shl i32 4369, %cpu
  %0 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %1 = load ptr, ptr @clk_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #5, !srcloc !395
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !396
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra20_cpu_out_of_reset(i32 noundef %cpu) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !397
  tail call void @arm_heavy_mb() #5
  %shl = shl i32 4369, %cpu
  %0 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %1 = load ptr, ptr @clk_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 836
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #5, !srcloc !395
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !398
  tail call void @arm_heavy_mb() #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra20_enable_cpu_clock(i32 noundef %cpu) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @clk_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 76
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !384
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !399
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !400
  tail call void @arm_heavy_mb() #5
  %add = add i32 %cpu, 8
  %shl = shl nuw i32 1, %add
  %neg = xor i32 %shl, -1
  %and = and i32 %2, %neg
  %3 = tail call i32 @llvm.bswap.i32(i32 %and)
  %4 = load ptr, ptr @clk_base, align 4
  %add.ptr2 = getelementptr i8, ptr %4, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %3) #5, !srcloc !395
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !401
  %5 = load ptr, ptr @clk_base, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 76
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #5, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !402
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra20_disable_cpu_clock(i32 noundef %cpu) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @clk_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 76
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !384
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !403
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !404
  tail call void @arm_heavy_mb() #5
  %add = add i32 %cpu, 8
  %shl = shl nuw i32 1, %add
  %or = or i32 %2, %shl
  %3 = tail call i32 @llvm.bswap.i32(i32 %or)
  %4 = load ptr, ptr @clk_base, align 4
  %add.ptr2 = getelementptr i8, ptr %4, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %3) #5, !srcloc !395
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @tegra20_cpu_rail_off_ready() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @clk_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 832
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !405
  %2 = and i32 %1, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool = icmp ne i32 %2, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra20_cpu_clock_suspend() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @clk_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 468
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !384
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !406
  store i32 %2, ptr @tegra20_cpu_clk_sctx.3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !407
  tail call void @arm_heavy_mb() #5
  %3 = load ptr, ptr @clk_base, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 192) #5, !srcloc !395
  %4 = load ptr, ptr @clk_base, align 4
  %add.ptr5 = getelementptr i8, ptr %4, i32 32
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #5, !srcloc !384
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !408
  store i32 %6, ptr @tegra20_cpu_clk_sctx.2, align 4
  %7 = load ptr, ptr @clk_base, align 4
  %add.ptr11 = getelementptr i8, ptr %7, i32 224
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #5, !srcloc !384
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !409
  store i32 %9, ptr @tegra20_cpu_clk_sctx.1, align 4
  %10 = load ptr, ptr @clk_base, align 4
  %add.ptr17 = getelementptr i8, ptr %10, i32 228
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #5, !srcloc !384
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !410
  store i32 %12, ptr @tegra20_cpu_clk_sctx.0, align 4
  %13 = load ptr, ptr @clk_base, align 4
  %add.ptr23 = getelementptr i8, ptr %13, i32 36
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #5, !srcloc !384
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !411
  store i32 %15, ptr @tegra20_cpu_clk_sctx.4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra20_cpu_clock_resume() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @clk_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 32
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !384
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !412
  %shr = lshr i32 %2, 28
  %3 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %shr, label %do.body [
    i32 1, label %entry.if.end12_crit_edge
    i32 2, label %if.then5
  ]

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %shr6 = lshr i32 %2, 4
  br label %if.end12

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/tegra/clk-tegra20.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 966, 0\0A.popsection", ""() #5, !srcloc !413
  unreachable

if.end12:                                         ; preds = %if.then5, %entry.if.end12_crit_edge
  %reg.0.in = phi i32 [ %shr6, %if.then5 ], [ %2, %entry.if.end12_crit_edge ]
  %reg.0 = and i32 %reg.0.in, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %reg.0)
  %cmp13.not = icmp eq i32 %reg.0, 8
  br i1 %cmp13.not, label %if.end12.do.body39_crit_edge, label %if.then14

if.end12.do.body39_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body39

if.then14:                                        ; preds = %if.end12
  %4 = load ptr, ptr @clk_base, align 4
  %add.ptr16 = getelementptr i8, ptr %4, i32 228
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #5, !srcloc !384
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = load ptr, ptr @clk_base, align 4
  %add.ptr20 = getelementptr i8, ptr %7, i32 224
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #5, !srcloc !384
  %9 = load i32, ptr @tegra20_cpu_clk_sctx.0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %9)
  %cmp23.not = icmp eq i32 %6, %9
  br i1 %cmp23.not, label %lor.lhs.false, label %if.then14.do.body26_crit_edge

if.then14.do.body26_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body26

lor.lhs.false:                                    ; preds = %if.then14
  %10 = tail call i32 @llvm.bswap.i32(i32 %8)
  %11 = load i32, ptr @tegra20_cpu_clk_sctx.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %11)
  %cmp24.not = icmp eq i32 %10, %11
  br i1 %cmp24.not, label %lor.lhs.false.do.body39_crit_edge, label %lor.lhs.false.do.body26_crit_edge

lor.lhs.false.do.body26_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body26

lor.lhs.false.do.body39_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body39

do.body26:                                        ; preds = %lor.lhs.false.do.body26_crit_edge, %if.then14.do.body26_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !414
  tail call void @arm_heavy_mb() #5
  %12 = load i32, ptr @tegra20_cpu_clk_sctx.0, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %14 = load ptr, ptr @clk_base, align 4
  %add.ptr29 = getelementptr i8, ptr %14, i32 228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %13) #5, !srcloc !395
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !415
  tail call void @arm_heavy_mb() #5
  %15 = load i32, ptr @tegra20_cpu_clk_sctx.1, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %17 = load ptr, ptr @clk_base, align 4
  %add.ptr33 = getelementptr i8, ptr %17, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %16) #5, !srcloc !395
  %18 = load i32, ptr @tegra20_cpu_clk_sctx.1, align 4
  %and34 = and i32 %18, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool.not = icmp eq i32 %and34, 0
  br i1 %tobool.not, label %do.body26.do.body39_crit_edge, label %if.then35

do.body26.do.body39_crit_edge:                    ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body39

if.then35:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 64424400) #5
  br label %do.body39

do.body39:                                        ; preds = %if.then35, %do.body26.do.body39_crit_edge, %lor.lhs.false.do.body39_crit_edge, %if.end12.do.body39_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !416
  tail call void @arm_heavy_mb() #5
  %20 = load i32, ptr @tegra20_cpu_clk_sctx.4, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %22 = load ptr, ptr @clk_base, align 4
  %add.ptr42 = getelementptr i8, ptr %22, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 %21) #5, !srcloc !395
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !417
  tail call void @arm_heavy_mb() #5
  %23 = load i32, ptr @tegra20_cpu_clk_sctx.2, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %25 = load ptr, ptr @clk_base, align 4
  %add.ptr46 = getelementptr i8, ptr %25, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 %24) #5, !srcloc !395
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !418
  tail call void @arm_heavy_mb() #5
  %26 = load i32, ptr @tegra20_cpu_clk_sctx.3, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %28 = load ptr, ptr @clk_base, align 4
  %add.ptr50 = getelementptr i8, ptr %28, i32 468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 %27) #5, !srcloc !395
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra20_car_probe(ptr nocapture noundef readnone %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @clk_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 40
  %call = tail call ptr @tegra_clk_register_super_mux(ptr noundef nonnull @.str.79, ptr noundef nonnull @sclk_parents, i8 noundef zeroext 8, i32 noundef 2052, ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef null) #5
  %1 = load ptr, ptr @clks, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 107
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %arrayidx, align 4
  tail call void @tegra_register_devclks(ptr noundef nonnull @devclks, i32 noundef 94) #5
  %3 = load ptr, ptr @clks, align 4
  tail call void @tegra_init_from_table(ptr noundef nonnull @init_table, ptr noundef %3, i32 noundef 133) #5
  store i1 true, ptr @tegra20_car_initialized, align 1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_super_mux(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_register_devclks(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_init_from_table(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 188)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 188)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !22, !24, !26, !28, !30, !32, !33, !34, !35, !37, !38, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370}
!llvm.module.flags = !{!372, !373, !374, !375, !376, !377, !378, !379}
!llvm.ident = !{!380}

!0 = !{ptr @__of_table_tegra20, !1, !"__of_table_tegra20", i1 false, i1 false}
!1 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 1158, i32 1}
!2 = !{ptr @__initcall__kmod_clk_tegra20__183_1199_tegra20_car_driver_init6, !3, !"__initcall__kmod_clk_tegra20__183_1199_tegra20_car_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 1199, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 1123, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @tegra20_clock_init._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @tegra20_clock_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 1129, i32 3}
!12 = !{ptr @tegra20_clock_init._entry.3, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @tegra20_clock_init._entry_ptr.5, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 1135, i32 3}
!16 = !{ptr @tegra20_clock_init._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @tegra20_clock_init._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @clk_base, !19, !"clk_base", i1 false, i1 false}
!19 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 133, i32 22}
!20 = !{ptr @pmc_match, !21, !"pmc_match", i1 false, i1 false}
!21 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 1065, i32 34}
!22 = !{ptr @pmc_base, !23, !"pmc_base", i1 false, i1 false}
!23 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 134, i32 22}
!24 = !{ptr @clks, !25, !"clks", i1 false, i1 false}
!25 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 158, i32 21}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 865, i32 38}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 871, i32 40}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 598, i32 3}
!32 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @tegra20_clk_measure_input_freq._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @tegra20_clk_measure_input_freq._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 620, i32 3}
!37 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @tegra20_get_pll_ref_div._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @tegra20_get_pll_ref_div._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @tegra20_clks, !41, !"tegra20_clks", i1 false, i1 false}
!41 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 517, i32 25}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 631, i32 31}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 636, i32 35}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 639, i32 35}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 645, i32 31}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 650, i32 35}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 653, i32 35}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 659, i32 31}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 664, i32 31}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 669, i32 31}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 674, i32 40}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 679, i32 31}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 679, i32 40}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 684, i32 35}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 687, i32 35}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 693, i32 32}
!72 = !{ptr @pll_c_params, !73, !"pll_c_params", i1 false, i1 false}
!73 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 278, i32 36}
!74 = !{ptr @pll_c_freq_table, !75, !"pll_c_freq_table", i1 false, i1 false}
!75 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 160, i32 40}
!76 = !{ptr @pll_m_params, !77, !"pll_m_params", i1 false, i1 false}
!77 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 294, i32 36}
!78 = !{ptr @pll_m_freq_table, !79, !"pll_m_freq_table", i1 false, i1 false}
!79 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 168, i32 40}
!80 = !{ptr @pll_x_params, !81, !"pll_x_params", i1 false, i1 false}
!81 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 383, i32 36}
!82 = !{ptr @pll_x_freq_table, !83, !"pll_x_freq_table", i1 false, i1 false}
!83 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 223, i32 40}
!84 = !{ptr @pll_u_params, !85, !"pll_u_params", i1 false, i1 false}
!85 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 366, i32 36}
!86 = !{ptr @pllu_p, !87, !"pllu_p", i1 false, i1 false}
!87 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 360, i32 30}
!88 = !{ptr @pll_u_freq_table, !89, !"pll_u_freq_table", i1 false, i1 false}
!89 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 215, i32 40}
!90 = !{ptr @pll_d_params, !91, !"pll_d_params", i1 false, i1 false}
!91 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 344, i32 36}
!92 = !{ptr @pll_d_freq_table, !93, !"pll_d_freq_table", i1 false, i1 false}
!93 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 199, i32 40}
!94 = !{ptr @pll_a_params, !95, !"pll_a_params", i1 false, i1 false}
!95 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 328, i32 36}
!96 = !{ptr @pll_a_freq_table, !97, !"pll_a_freq_table", i1 false, i1 false}
!97 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 192, i32 40}
!98 = !{ptr @pll_e_params, !99, !"pll_e_params", i1 false, i1 false}
!99 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 401, i32 36}
!100 = !{ptr @plle_p, !101, !"plle_p", i1 false, i1 false}
!101 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 267, i32 30}
!102 = !{ptr @pll_e_freq_table, !103, !"pll_e_freq_table", i1 false, i1 false}
!103 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 272, i32 40}
!104 = !{ptr @.str.31, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 710, i32 38}
!106 = !{ptr @.str.32, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 717, i32 40}
!108 = !{ptr @.str.33, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 698, i32 57}
!110 = !{ptr @.str.34, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 699, i32 11}
!112 = !{ptr @.str.35, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 699, i32 20}
!114 = !{ptr @.str.36, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 700, i32 11}
!116 = !{ptr @.str.37, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 700, i32 25}
!118 = !{ptr @cclk_parents, !119, !"cclk_parents", i1 false, i1 false}
!119 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 698, i32 20}
!120 = !{ptr @.str.38, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 791, i32 39}
!122 = !{ptr @.str.39, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 801, i32 30}
!124 = !{ptr @.str.40, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 801, i32 36}
!126 = !{ptr @.str.41, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 806, i32 39}
!128 = !{ptr @.str.42, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 812, i32 39}
!130 = !{ptr @.str.43, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 817, i32 2}
!132 = !{ptr @.str.44, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 823, i32 2}
!134 = !{ptr @.str.45, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 829, i32 39}
!136 = !{ptr @.str.46, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 829, i32 48}
!138 = !{ptr @.str.47, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 834, i32 39}
!140 = !{ptr @.str.48, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 834, i32 48}
!142 = !{ptr @.str.49, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 760, i32 2}
!144 = !{ptr @.str.50, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 761, i32 2}
!146 = !{ptr @.str.51, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 762, i32 2}
!148 = !{ptr @.str.52, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 763, i32 2}
!150 = !{ptr @.str.53, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 764, i32 2}
!152 = !{ptr @.str.54, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 765, i32 2}
!154 = !{ptr @.str.55, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 766, i32 2}
!156 = !{ptr @.str.56, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 767, i32 2}
!158 = !{ptr @.str.57, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 768, i32 2}
!160 = !{ptr @.str.58, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 769, i32 2}
!162 = !{ptr @.str.59, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 770, i32 2}
!164 = !{ptr @.str.60, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 771, i32 2}
!166 = !{ptr @tegra_periph_clk_list, !167, !"tegra_periph_clk_list", i1 false, i1 false}
!167 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 759, i32 38}
!168 = !{ptr @.str.61, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 749, i32 53}
!170 = !{ptr @i2s1_parents, !171, !"i2s1_parents", i1 false, i1 false}
!171 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 749, i32 20}
!172 = !{ptr @i2s2_parents, !173, !"i2s2_parents", i1 false, i1 false}
!173 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 751, i32 20}
!174 = !{ptr @mux_pllpcm_clkm, !175, !"mux_pllpcm_clkm", i1 false, i1 false}
!175 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 755, i32 20}
!176 = !{ptr @mux_pllpdc_clkm, !177, !"mux_pllpdc_clkm", i1 false, i1 false}
!177 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 756, i32 20}
!178 = !{ptr @.str.62, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 753, i32 56}
!180 = !{ptr @pwm_parents, !181, !"pwm_parents", i1 false, i1 false}
!181 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 753, i32 20}
!182 = !{ptr @.str.63, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 775, i32 2}
!184 = !{ptr @.str.64, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 776, i32 2}
!186 = !{ptr @.str.65, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 777, i32 2}
!188 = !{ptr @.str.66, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 778, i32 2}
!190 = !{ptr @.str.67, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 779, i32 2}
!192 = !{ptr @.str.68, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 780, i32 2}
!194 = !{ptr @.str.69, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 781, i32 2}
!196 = !{ptr @tegra_periph_nodiv_clk_list, !197, !"tegra_periph_nodiv_clk_list", i1 false, i1 false}
!197 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 774, i32 38}
!198 = !{ptr @pll_p_params, !199, !"pll_p_params", i1 false, i1 false}
!199 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 310, i32 36}
!200 = !{ptr @pll_p_freq_table, !201, !"pll_p_freq_table", i1 false, i1 false}
!201 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 180, i32 40}
!202 = !{ptr @.str.70, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 730, i32 8}
!204 = !{ptr @.str.71, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 740, i32 40}
!206 = !{ptr @.str.72, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 721, i32 40}
!208 = !{ptr @.str.73, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 721, i32 68}
!210 = !{ptr @audio_parents, !211, !"audio_parents", i1 false, i1 false}
!211 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 721, i32 20}
!212 = !{ptr @.str.74, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 1057, i32 2}
!214 = !{ptr @.str.75, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 1058, i32 2}
!216 = !{ptr @.str.76, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 1059, i32 2}
!218 = !{ptr @.str.77, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 1060, i32 2}
!220 = !{ptr @tegra_clk_duplicates, !221, !"tegra_clk_duplicates", i1 false, i1 false}
!221 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 1056, i32 35}
!222 = distinct !{null, !223, !"tegra20_car_initialized", i1 false, i1 false}
!223 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 1070, i32 13}
!224 = !{ptr @tegra20_cpu_car_ops, !225, !"tegra20_cpu_car_ops", i1 false, i1 false}
!225 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 1000, i32 33}
!226 = distinct !{null, !227, !"tegra20_cpu_clk_sctx", i1 false, i1 false}
!227 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 130, i32 3}
!228 = !{ptr @.str.78, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 1193, i32 11}
!230 = !{ptr @tegra20_car_driver, !231, !"tegra20_car_driver", i1 false, i1 false}
!231 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 1191, i32 31}
!232 = !{ptr @.str.79, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 1173, i32 37}
!234 = !{ptr @.str.80, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 702, i32 25}
!236 = !{ptr @sclk_parents, !237, !"sclk_parents", i1 false, i1 false}
!237 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 701, i32 20}
!238 = !{ptr @.str.81, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 439, i32 14}
!240 = !{ptr @.str.82, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 440, i32 14}
!242 = !{ptr @.str.83, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 441, i32 14}
!244 = !{ptr @.str.84, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 445, i32 14}
!246 = !{ptr @.str.85, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 446, i32 14}
!248 = !{ptr @.str.86, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 447, i32 14}
!250 = !{ptr @.str.87, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 448, i32 14}
!252 = !{ptr @.str.88, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 449, i32 14}
!254 = !{ptr @.str.89, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 450, i32 33}
!256 = !{ptr @.str.90, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 450, i32 14}
!258 = !{ptr @.str.91, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 451, i32 31}
!260 = !{ptr @.str.92, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 451, i32 14}
!262 = !{ptr @.str.93, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 452, i32 14}
!264 = !{ptr @.str.94, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 453, i32 32}
!266 = !{ptr @.str.95, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 453, i32 14}
!268 = !{ptr @.str.96, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 455, i32 14}
!270 = !{ptr @.str.97, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 456, i32 14}
!272 = !{ptr @.str.98, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 457, i32 14}
!274 = !{ptr @.str.99, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 459, i32 14}
!276 = !{ptr @.str.100, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 460, i32 14}
!278 = !{ptr @.str.101, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 462, i32 14}
!280 = !{ptr @.str.102, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 468, i32 14}
!282 = !{ptr @.str.103, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 469, i32 14}
!284 = !{ptr @.str.104, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 470, i32 37}
!286 = !{ptr @.str.105, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 470, i32 14}
!288 = !{ptr @.str.106, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 472, i32 14}
!290 = !{ptr @.str.107, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 473, i32 14}
!292 = !{ptr @.str.108, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 474, i32 14}
!294 = !{ptr @.str.109, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 475, i32 14}
!296 = !{ptr @.str.110, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 480, i32 14}
!298 = !{ptr @.str.111, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 481, i32 14}
!300 = !{ptr @.str.112, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 482, i32 14}
!302 = !{ptr @.str.113, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 483, i32 14}
!304 = !{ptr @.str.114, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 484, i32 14}
!306 = !{ptr @.str.115, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 485, i32 14}
!308 = !{ptr @.str.116, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 486, i32 14}
!310 = !{ptr @.str.117, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 487, i32 14}
!312 = !{ptr @.str.118, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 488, i32 14}
!314 = !{ptr @.str.119, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 489, i32 14}
!316 = !{ptr @.str.120, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 490, i32 14}
!318 = !{ptr @.str.121, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 491, i32 14}
!320 = !{ptr @.str.122, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 492, i32 14}
!322 = !{ptr @.str.123, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 493, i32 14}
!324 = !{ptr @.str.124, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 494, i32 14}
!326 = !{ptr @.str.125, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 495, i32 14}
!328 = !{ptr @.str.126, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 496, i32 14}
!330 = !{ptr @.str.127, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 497, i32 14}
!332 = !{ptr @.str.128, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 498, i32 14}
!334 = !{ptr @.str.129, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 499, i32 14}
!336 = !{ptr @.str.130, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 500, i32 14}
!338 = !{ptr @.str.131, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 501, i32 14}
!340 = !{ptr @.str.132, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 503, i32 35}
!342 = !{ptr @.str.133, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 503, i32 14}
!344 = !{ptr @.str.134, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 504, i32 35}
!346 = !{ptr @.str.135, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 505, i32 35}
!348 = !{ptr @.str.136, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 506, i32 35}
!350 = !{ptr @.str.137, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 507, i32 14}
!352 = !{ptr @.str.138, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 508, i32 14}
!354 = !{ptr @.str.139, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 509, i32 14}
!356 = !{ptr @.str.140, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 510, i32 14}
!358 = !{ptr @.str.141, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 511, i32 14}
!360 = !{ptr @.str.142, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 512, i32 14}
!362 = !{ptr @.str.143, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 513, i32 14}
!364 = !{ptr @.str.144, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 514, i32 14}
!366 = !{ptr @devclks, !367, !"devclks", i1 false, i1 false}
!367 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 420, i32 28}
!368 = !{ptr @init_table, !369, !"init_table", i1 false, i1 false}
!369 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 1013, i32 36}
!370 = !{ptr @tegra20_car_match, !371, !"tegra20_car_match", i1 false, i1 false}
!371 = !{!"../drivers/clk/tegra/clk-tegra20.c", i32 1186, i32 34}
!372 = !{i32 1, !"wchar_size", i32 2}
!373 = !{i32 1, !"min_enum_size", i32 4}
!374 = !{i32 8, !"branch-target-enforcement", i32 0}
!375 = !{i32 8, !"sign-return-address", i32 0}
!376 = !{i32 8, !"sign-return-address-all", i32 0}
!377 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!378 = !{i32 7, !"uwtable", i32 1}
!379 = !{i32 7, !"frame-pointer", i32 2}
!380 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!381 = !{i64 2153148031, i64 2153148528, i64 2153148068, i64 2153148124, i64 2153148158, i64 2153148182, i64 2153148223, i64 2153148244, i64 2153148272, i64 2153148306}
!382 = !{i64 2153151087, i64 2153151584, i64 2153151124, i64 2153151180, i64 2153151214, i64 2153151238, i64 2153151279, i64 2153151300, i64 2153151328, i64 2153151362}
!383 = !{i64 2153154131, i64 2153154628, i64 2153154168, i64 2153154224, i64 2153154258, i64 2153154282, i64 2153154323, i64 2153154344, i64 2153154372, i64 2153154406}
!384 = !{i64 725359}
!385 = !{!"branch_weights", i32 2000, i32 1}
!386 = !{i64 2153060838, i64 2153061334, i64 2153060875, i64 2153060931, i64 2153060965, i64 2153060989, i64 2153061030, i64 2153061051, i64 2153061079, i64 2153061113}
!387 = !{i64 2153062490, i64 2153062986, i64 2153062527, i64 2153062583, i64 2153062617, i64 2153062641, i64 2153062682, i64 2153062703, i64 2153062731, i64 2153062765}
!388 = !{i64 2153064142, i64 2153064638, i64 2153064179, i64 2153064235, i64 2153064269, i64 2153064293, i64 2153064334, i64 2153064355, i64 2153064383, i64 2153064417}
!389 = !{i64 2153069855, i64 2153070351, i64 2153069892, i64 2153069948, i64 2153069982, i64 2153070006, i64 2153070047, i64 2153070068, i64 2153070096, i64 2153070130}
!390 = !{i64 2153076486, i64 2153076982, i64 2153076523, i64 2153076579, i64 2153076613, i64 2153076637, i64 2153076678, i64 2153076699, i64 2153076727, i64 2153076761}
!391 = !{i64 2153131924}
!392 = !{i64 2153132199}
!393 = !{i64 2153132041}
!394 = !{i64 2153132460}
!395 = !{i64 724941}
!396 = !{i64 2153132773}
!397 = !{i64 2153133034}
!398 = !{i64 2153133410}
!399 = !{i64 2153133893}
!400 = !{i64 2153134157}
!401 = !{i64 2153134486}
!402 = !{i64 2153134923}
!403 = !{i64 2153135406}
!404 = !{i64 2153135668}
!405 = !{i64 2153136395}
!406 = !{i64 2153136883}
!407 = !{i64 2153137104}
!408 = !{i64 2153137767}
!409 = !{i64 2153138250}
!410 = !{i64 2153138733}
!411 = !{i64 2153139216}
!412 = !{i64 2153139699}
!413 = !{i64 2153139968, i64 2153140464, i64 2153140005, i64 2153140061, i64 2153140095, i64 2153140119, i64 2153140160, i64 2153140181, i64 2153140209, i64 2153140243}
!414 = !{i64 2153142110}
!415 = !{i64 2153142608}
!416 = !{i64 2153143657}
!417 = !{i64 2153144164}
!418 = !{i64 2153144668}
