; ModuleID = '/llk/IR_all_yes/drivers/clk/tegra/clk-tegra30.c_pt.bc'
source_filename = "../drivers/clk/tegra/clk-tegra30.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tegra_audio_clk_info = type { ptr, ptr, i32, ptr }
%struct.tegra_clk_duplicate = type { i32, %struct.clk_lookup }
%struct.clk_lookup = type { %struct.list_head, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.tegra_cpu_car_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_clk = type { i32, i8 }
%struct.tegra_clk_pll_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i32], i32, i32, i32, i32, i32, i32, i32, i8, ptr, ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.div_nmp = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__of_table_tegra30 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-car\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra30_of_clk_init_driver }, section "__clk_of_table", align 4
@__initcall__kmod_clk_tegra30__183_1420_tegra30_car_init2 = internal global ptr @tegra30_car_init, section ".initcall2.init", align 4
@clk_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@tegra30_clock_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1312, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013ioremap tegra30 CAR failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tegra30_clock_init\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/clk/tegra/clk-tegra30.c\00", [32 x i8] zeroinitializer }, align 32
@tegra30_clock_init._entry_ptr = internal global ptr @tegra30_clock_init._entry, section ".printk_index", align 4
@pmc_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@tegra30_clock_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013Failed to find pmc node\0A\00", [37 x i8] zeroinitializer }, align 32
@tegra30_clock_init._entry_ptr.5 = internal global ptr @tegra30_clock_init._entry.3, section ".printk_index", align 4
@pmc_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@tegra30_clock_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 1324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013Can't map pmc registers\0A\00", [37 x i8] zeroinitializer }, align 32
@tegra30_clock_init._entry_ptr.8 = internal global ptr @tegra30_clock_init._entry.6, section ".printk_index", align 4
@clks = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@tegra30_input_freq = internal global { [13 x i32], [44 x i8] } { [13 x i32] [i32 13000000, i32 16800000, i32 0, i32 0, i32 19200000, i32 38400000, i32 0, i32 0, i32 12000000, i32 48000000, i32 0, i32 0, i32 26000000], [44 x i8] zeroinitializer }, align 32
@input_freq = internal global { i32, [28 x i8] } zeroinitializer, align 32
@tegra30_audio_plls = internal global { [1 x %struct.tegra_audio_clk_info], [16 x i8] } { [1 x %struct.tegra_audio_clk_info] [%struct.tegra_audio_clk_info { ptr @.str.62, ptr @pll_a_params, i32 137, ptr @.str.63 }], [16 x i8] zeroinitializer }, align 32
@tegra_clk_duplicates = internal global { [12 x %struct.tegra_clk_duplicate], [80 x i8] } { [12 x %struct.tegra_clk_duplicate] [%struct.tegra_clk_duplicate { i32 22, %struct.clk_lookup { %struct.list_head zeroinitializer, ptr @.str.64, ptr null, ptr null, ptr null } }, %struct.tegra_clk_duplicate { i32 22, %struct.clk_lookup { %struct.list_head zeroinitializer, ptr @.str.65, ptr null, ptr null, ptr null } }, %struct.tegra_clk_duplicate { i32 22, %struct.clk_lookup { %struct.list_head zeroinitializer, ptr @.str.66, ptr null, ptr null, ptr null } }, %struct.tegra_clk_duplicate { i32 63, %struct.clk_lookup { %struct.list_head zeroinitializer, ptr @.str.67, ptr @.str.68, ptr null, ptr null } }, %struct.tegra_clk_duplicate { i32 63, %struct.clk_lookup { %struct.list_head zeroinitializer, ptr @.str.69, ptr @.str.68, ptr null, ptr null } }, %struct.tegra_clk_duplicate { i32 61, %struct.clk_lookup { %struct.list_head zeroinitializer, ptr @.str.70, ptr @.str.71, ptr null, ptr null } }, %struct.tegra_clk_duplicate { i32 62, %struct.clk_lookup { %struct.list_head zeroinitializer, ptr @.str.70, ptr @.str.72, ptr null, ptr null } }, %struct.tegra_clk_duplicate { i32 62, %struct.clk_lookup { %struct.list_head zeroinitializer, ptr @.str.69, ptr @.str.72, ptr null, ptr null } }, %struct.tegra_clk_duplicate { i32 216, %struct.clk_lookup { %struct.list_head zeroinitializer, ptr @.str.73, ptr null, ptr null, ptr null } }, %struct.tegra_clk_duplicate { i32 215, %struct.clk_lookup { %struct.list_head zeroinitializer, ptr @.str.74, ptr @.str.75, ptr null, ptr null } }, %struct.tegra_clk_duplicate { i32 29, %struct.clk_lookup { %struct.list_head zeroinitializer, ptr @.str.69, ptr @.str.76, ptr null, ptr null } }, %struct.tegra_clk_duplicate { i32 309, %struct.clk_lookup zeroinitializer }], [80 x i8] zeroinitializer }, align 32
@tegra30_cpu_car_ops = internal global { %struct.tegra_cpu_car_ops, [32 x i8] } { %struct.tegra_cpu_car_ops { ptr @tegra30_wait_cpu_in_reset, ptr @tegra30_put_cpu_in_reset, ptr @tegra30_cpu_out_of_reset, ptr @tegra30_enable_cpu_clock, ptr @tegra30_disable_cpu_clock, ptr @tegra30_cpu_rail_off_ready, ptr @tegra30_cpu_clock_suspend, ptr @tegra30_cpu_clock_resume }, [32 x i8] zeroinitializer }, align 32
@tegra_cpu_car_ops = external dso_local local_unnamed_addr global ptr, align 4
@tegra30_clks = internal global <{ [297 x %struct.tegra_clk], [16 x %struct.tegra_clk] }> <{ [297 x %struct.tegra_clk] [%struct.tegra_clk { i32 119, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 33, i8 1 }, %struct.tegra_clk { i32 34, i8 1 }, %struct.tegra_clk { i32 107, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 201, i8 1 }, %struct.tegra_clk { i32 113, i8 1 }, %struct.tegra_clk { i32 303, i8 1 }, %struct.tegra_clk { i32 202, i8 1 }, %struct.tegra_clk { i32 114, i8 1 }, %struct.tegra_clk { i32 304, i8 1 }, %struct.tegra_clk { i32 203, i8 1 }, %struct.tegra_clk { i32 115, i8 1 }, %struct.tegra_clk { i32 305, i8 1 }, %struct.tegra_clk { i32 204, i8 1 }, %struct.tegra_clk { i32 116, i8 1 }, %struct.tegra_clk { i32 306, i8 1 }, %struct.tegra_clk { i32 205, i8 1 }, %struct.tegra_clk { i32 117, i8 1 }, %struct.tegra_clk { i32 307, i8 1 }, %struct.tegra_clk { i32 62, i8 1 }, %struct.tegra_clk { i32 63, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 170, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 171, i8 1 }, %struct.tegra_clk { i32 220, i8 1 }, %struct.tegra_clk { i32 172, i8 1 }, %struct.tegra_clk { i32 173, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 52, i8 1 }, %struct.tegra_clk { i32 73, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 92, i8 1 }, %struct.tegra_clk { i32 168, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 27, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 26, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 79, i8 1 }, %struct.tegra_clk { i32 57, i8 0 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 19, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 120, i8 1 }, %struct.tegra_clk { i32 121, i8 1 }, %struct.tegra_clk { i32 122, i8 1 }, %struct.tegra_clk { i32 166, i8 1 }, %struct.tegra_clk { i32 167, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 21, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 24, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 217, i8 1 }, %struct.tegra_clk { i32 125, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 111, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 128, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 28, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 12, i8 1 }, %struct.tegra_clk { i32 54, i8 1 }, %struct.tegra_clk { i32 67, i8 1 }, %struct.tegra_clk { i32 103, i8 1 }, %struct.tegra_clk { i32 47, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 81, i8 1 }, %struct.tegra_clk { i32 30, i8 1 }, %struct.tegra_clk { i32 195, i8 1 }, %struct.tegra_clk { i32 11, i8 1 }, %struct.tegra_clk { i32 196, i8 1 }, %struct.tegra_clk { i32 18, i8 1 }, %struct.tegra_clk { i32 197, i8 1 }, %struct.tegra_clk { i32 101, i8 1 }, %struct.tegra_clk { i32 198, i8 1 }, %struct.tegra_clk { i32 102, i8 1 }, %struct.tegra_clk { i32 199, i8 1 }, %struct.tegra_clk { i32 23, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 36, i8 1 }, %struct.tegra_clk { i32 40, i8 1 }, %struct.tegra_clk { i32 76, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 50, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 60, i8 1 }, %struct.tegra_clk { i32 99, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 13, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 80, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 42, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 71, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 218, i8 1 }, %struct.tegra_clk { i32 184, i8 1 }, %struct.tegra_clk { i32 185, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 179, i8 1 }, %struct.tegra_clk { i32 180, i8 1 }, %struct.tegra_clk { i32 181, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 182, i8 1 }, %struct.tegra_clk { i32 183, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 174, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 4, i8 1 }, %struct.tegra_clk { i32 124, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 129, i8 1 }, %struct.tegra_clk { i32 123, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 41, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 44, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 46, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 68, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 104, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 105, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 14, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 9, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 69, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 15, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 206, i8 1 }, %struct.tegra_clk { i32 118, i8 1 }, %struct.tegra_clk { i32 162, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 194, i8 1 }, %struct.tegra_clk { i32 308, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 5, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 100, i8 1 }, %struct.tegra_clk { i32 53, i8 1 }, %struct.tegra_clk { i32 169, i8 1 }, %struct.tegra_clk { i32 6, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 160, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 55, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 65, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 66, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 58, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 59, i8 1 }, %struct.tegra_clk { i32 22, i8 1 }, %struct.tegra_clk { i32 29, i8 1 }, %struct.tegra_clk { i32 61, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 161, i8 1 }, %struct.tegra_clk { i32 164, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 200, i8 1 }, %struct.tegra_clk { i32 165, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 136, i8 1 }], [16 x %struct.tegra_clk] zeroinitializer }>, section ".init.data", align 4
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll_c_out1_div\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pll_c\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_c_out1\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll_m_out1_div\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pll_m\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_m_out1\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pll_x\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pll_ref\00", [24 x i8] zeroinitializer }, align 32
@pll_x_params = internal global %struct.tegra_clk_pll_params { i32 2000000, i32 31000000, i32 1000000, i32 6000000, i32 20000000, i32 1700000000, i32 224, i32 228, i32 0, i32 134217728, i32 18, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1035, i32 0, i32 0, i32 300, i32 0, i8 0, ptr null, ptr null, ptr @pll_x_freq_table, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_cclk_pre_pllx_rate_change, ptr @tegra_cclk_post_pllx_rate_change }, section ".data..ro_after_init", align 4
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_x_out0\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pll_u\00", [26 x i8] zeroinitializer }, align 32
@pll_u_params = internal global %struct.tegra_clk_pll_params { i32 2000000, i32 40000000, i32 1000000, i32 6000000, i32 48000000, i32 960000000, i32 192, i32 204, i32 0, i32 134217728, i32 22, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1046, i32 0, i32 0, i32 1000, i32 0, i8 0, ptr @pllu_p, ptr null, ptr @pll_u_freq_table, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..ro_after_init", align 4
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pll_d\00", [26 x i8] zeroinitializer }, align 32
@pll_d_params = internal global %struct.tegra_clk_pll_params { i32 2000000, i32 40000000, i32 1000000, i32 6000000, i32 40000000, i32 1000000000, i32 208, i32 220, i32 0, i32 134217728, i32 22, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1031, i32 0, i32 0, i32 1000, i32 0, i8 0, ptr null, ptr null, ptr @pll_d_freq_table, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..ro_after_init", align 4
@pll_d_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.25, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_d_out0\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll_d2\00", [25 x i8] zeroinitializer }, align 32
@pll_d2_params = internal global %struct.tegra_clk_pll_params { i32 2000000, i32 40000000, i32 1000000, i32 6000000, i32 40000000, i32 1000000000, i32 1208, i32 1212, i32 0, i32 134217728, i32 22, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1031, i32 0, i32 0, i32 1000, i32 0, i8 0, ptr null, ptr null, ptr @pll_d_freq_table, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..ro_after_init", align 4
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll_d2_out0\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pll_e_mux\00", [22 x i8] zeroinitializer }, align 32
@pll_e_parents = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.17, ptr @.str.26], [24 x i8] zeroinitializer }, align 32
@pll_x_freq_table = internal global { [41 x %struct.tegra_clk_pll_freq_table], [204 x i8] } { [41 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 12000000, i32 1700000000, i32 850, i32 6, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 1700000000, i32 915, i32 7, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 1700000000, i32 708, i32 7, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 1700000000, i32 885, i32 10, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 1700000000, i32 850, i32 13, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 1600000000, i32 800, i32 6, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 1600000000, i32 738, i32 6, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 1600000000, i32 857, i32 9, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 1600000000, i32 500, i32 6, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 1600000000, i32 800, i32 13, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 1500000000, i32 750, i32 6, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 1500000000, i32 923, i32 8, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 1500000000, i32 625, i32 7, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 1500000000, i32 625, i32 8, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 1500000000, i32 750, i32 13, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 1400000000, i32 700, i32 6, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 1400000000, i32 969, i32 9, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 1400000000, i32 1000, i32 12, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 1400000000, i32 875, i32 12, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 1400000000, i32 700, i32 13, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 1300000000, i32 975, i32 9, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 1300000000, i32 1000, i32 10, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 1300000000, i32 928, i32 12, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 1300000000, i32 812, i32 12, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 1300000000, i32 650, i32 13, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 1200000000, i32 1000, i32 10, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 1200000000, i32 923, i32 10, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 1200000000, i32 1000, i32 14, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 1200000000, i32 1000, i32 16, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 1200000000, i32 600, i32 13, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 1100000000, i32 825, i32 9, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 1100000000, i32 846, i32 10, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 1100000000, i32 982, i32 15, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 1100000000, i32 859, i32 15, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 1100000000, i32 550, i32 13, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 1000000000, i32 1000, i32 12, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 1000000000, i32 1000, i32 13, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 1000000000, i32 833, i32 14, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 1000000000, i32 625, i32 12, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 1000000000, i32 1000, i32 26, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], [204 x i8] zeroinitializer }, align 32
@pllu_p = internal constant { [3 x %struct.pdiv_map], [26 x i8] } { [3 x %struct.pdiv_map] [%struct.pdiv_map { i8 1, i8 1 }, %struct.pdiv_map { i8 2, i8 0 }, %struct.pdiv_map zeroinitializer], [26 x i8] zeroinitializer }, align 32
@pll_u_freq_table = internal global { [6 x %struct.tegra_clk_pll_freq_table], [40 x i8] } { [6 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 12000000, i32 480000000, i32 960, i32 12, i8 2, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 480000000, i32 960, i32 13, i8 2, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 480000000, i32 400, i32 7, i8 2, i8 5, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 480000000, i32 200, i32 4, i8 2, i8 3, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 480000000, i32 960, i32 26, i8 2, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], [40 x i8] zeroinitializer }, align 32
@pll_d_freq_table = internal global { [15 x %struct.tegra_clk_pll_freq_table], [84 x i8] } { [15 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 12000000, i32 216000000, i32 216, i32 12, i8 1, i8 4, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 216000000, i32 216, i32 13, i8 1, i8 4, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 216000000, i32 180, i32 14, i8 1, i8 4, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 216000000, i32 180, i32 16, i8 1, i8 4, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 216000000, i32 216, i32 26, i8 1, i8 4, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 594000000, i32 594, i32 12, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 594000000, i32 594, i32 13, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 594000000, i32 495, i32 14, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 594000000, i32 495, i32 16, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 594000000, i32 594, i32 26, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 1000000000, i32 1000, i32 12, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 1000000000, i32 1000, i32 13, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 1000000000, i32 625, i32 12, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 1000000000, i32 1000, i32 26, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], [84 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_d_lock\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pll_p\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll_p_cclkg\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pll_p_out3_cclkg\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_p_out3\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pll_p_out4_cclkg\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_p_out4\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cclk_g\00", [25 x i8] zeroinitializer }, align 32
@cclk_g_parents = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.38, ptr @.str.11, ptr @.str.39, ptr @.str.14, ptr @.str.27, ptr @.str.30, ptr @.str.28, ptr @.str.40, ptr @.str.16], [60 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pll_p_cclklp\00", [19 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pll_p_out3_cclklp\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pll_p_out4_cclklp\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cclk_lp\00", [24 x i8] zeroinitializer }, align 32
@cclk_lp_parents = internal global { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @.str.38, ptr @.str.11, ptr @.str.39, ptr @.str.14, ptr @.str.33, ptr @.str.35, ptr @.str.34, ptr @.str.40, ptr @.str.16, ptr @.str.18], [56 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"twd\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clk_m\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clk_32k\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"unused\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dsia\00", [27 x i8] zeroinitializer }, align 32
@periph_clk_enb_refcnt = external dso_local local_unnamed_addr global ptr, align 4
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pcie\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"afi\00", [28 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"mc\00", [29 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"emc\00", [28 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cml0\00", [27 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pll_e\00", [26 x i8] zeroinitializer }, align 32
@cml_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.49, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cml1\00", [27 x i8] zeroinitializer }, align 32
@tegra_periph_clk_list = internal global { [9 x %struct.tegra_periph_init_data], [328 x i8] } { [9 x %struct.tegra_periph_init_data] [%struct.tegra_periph_init_data { ptr @.str.50, i32 163, %union.anon.43 { ptr @spdif_out_parents }, i32 4, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 3, i8 30, i8 0, ptr null }, %struct.tegra_clk_frac_div { %struct.clk_hw zeroinitializer, ptr null, i8 1, i8 0, i8 8, i8 1, ptr null }, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 4, i32 10, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 264, ptr null, ptr null, i32 0 }, %struct.tegra_periph_init_data { ptr @.str.51, i32 106, %union.anon.43 { ptr @mux_pllacp_clkm }, i32 4, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 3, i8 30, i8 0, ptr null }, %struct.tegra_clk_frac_div { %struct.clk_hw zeroinitializer, ptr null, i8 1, i8 0, i8 8, i8 1, ptr null }, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 0, i32 106, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 976, ptr null, ptr null, i32 0 }, %struct.tegra_periph_init_data { ptr @.str.52, i32 108, %union.anon.43 { ptr @mux_pllacp_clkm }, i32 4, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 3, i8 30, i8 0, ptr null }, %struct.tegra_clk_frac_div { %struct.clk_hw zeroinitializer, ptr null, i8 1, i8 0, i8 8, i8 1, ptr null }, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 0, i32 108, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 984, ptr null, ptr null, i32 0 }, %struct.tegra_periph_init_data { ptr @.str.53, i32 109, %union.anon.43 { ptr @mux_pllacp_clkm }, i32 4, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 3, i8 30, i8 0, ptr null }, %struct.tegra_clk_frac_div { %struct.clk_hw zeroinitializer, ptr null, i8 1, i8 0, i8 8, i8 1, ptr null }, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 0, i32 109, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 988, ptr null, ptr null, i32 0 }, %struct.tegra_periph_init_data { ptr @.str.54, i32 110, %union.anon.43 { ptr @mux_pllacp_clkm }, i32 4, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 3, i8 30, i8 0, ptr null }, %struct.tegra_clk_frac_div { %struct.clk_hw zeroinitializer, ptr null, i8 1, i8 0, i8 8, i8 1, ptr null }, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 0, i32 110, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 992, ptr null, ptr null, i32 0 }, %struct.tegra_periph_init_data { ptr @.str.55, i32 98, %union.anon.43 { ptr @mux_pllmcpa }, i32 4, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 3, i8 30, i8 0, ptr null }, %struct.tegra_clk_frac_div { %struct.clk_hw zeroinitializer, ptr null, i8 5, i8 0, i8 8, i8 1, ptr null }, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 0, i32 98, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 944, ptr null, ptr null, i32 0 }, %struct.tegra_periph_init_data { ptr @.str.56, i32 127, %union.anon.43 { ptr @mux_pllpcm_clkm }, i32 4, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 3, i8 30, i8 0, ptr null }, %struct.tegra_clk_frac_div { %struct.clk_hw zeroinitializer, ptr null, i8 5, i8 0, i8 8, i8 1, ptr null }, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 0, i32 127, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 1068, ptr null, ptr null, i32 0 }, %struct.tegra_periph_init_data { ptr @.str.57, i32 51, %union.anon.43 { ptr @mux_pllpmdacd2_clkm }, i32 7, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 7, i8 29, i8 0, ptr null }, %struct.tegra_clk_frac_div { %struct.clk_hw zeroinitializer, ptr null, i8 1, i8 0, i8 8, i8 1, ptr null }, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 0, i32 51, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 396, ptr null, ptr null, i32 0 }, %struct.tegra_periph_init_data { ptr @.str.58, i32 17, %union.anon.43 { ptr @pwm_parents }, i32 4, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 3, i8 28, i8 0, ptr null }, %struct.tegra_clk_frac_div { %struct.clk_hw zeroinitializer, ptr null, i8 0, i8 0, i8 8, i8 1, ptr null }, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 4, i32 17, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 272, ptr null, ptr null, i32 0 }], [328 x i8] zeroinitializer }, align 32
@tegra_periph_nodiv_clk_list = internal global { [1 x %struct.tegra_periph_init_data], [40 x i8] } { [1 x %struct.tegra_periph_init_data] [%struct.tegra_periph_init_data { ptr @.str.61, i32 82, %union.anon.43 { ptr @mux_plld_out0_plld2_out0 }, i32 2, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 1, i8 25, i8 0, ptr null }, %struct.tegra_clk_frac_div zeroinitializer, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 0, i32 82, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 208, ptr null, ptr null, i32 0 }], [40 x i8] zeroinitializer }, align 32
@pll_p_params = internal global %struct.tegra_clk_pll_params { i32 2000000, i32 31000000, i32 1000000, i32 6000000, i32 20000000, i32 1400000000, i32 160, i32 172, i32 0, i32 134217728, i32 18, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1091, i32 0, i32 0, i32 300, i32 0, i8 0, ptr null, ptr null, ptr @pll_p_freq_table, i32 408000000, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..ro_after_init", align 4
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cml_lock\00", [23 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spdif_out\00", [22 x i8] zeroinitializer }, align 32
@spdif_out_parents = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.59, ptr @.str.60, ptr @.str.26, ptr @.str.38], [16 x i8] zeroinitializer }, align 32
@clk_mux_ops = external dso_local constant %struct.clk_ops, align 4
@tegra_clk_frac_div_ops = external dso_local constant %struct.clk_ops, align 4
@tegra_clk_periph_gate_ops = external dso_local constant %struct.clk_ops, align 4
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"d_audio\00", [24 x i8] zeroinitializer }, align 32
@mux_pllacp_clkm = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.59, ptr @.str.40, ptr @.str.26, ptr @.str.38], [16 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dam0\00", [27 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dam1\00", [27 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dam2\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"3d2\00", [28 x i8] zeroinitializer }, align 32
@mux_pllmcpa = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.14, ptr @.str.11, ptr @.str.26, ptr @.str.59], [16 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"se\00", [29 x i8] zeroinitializer }, align 32
@mux_pllpcm_clkm = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.26, ptr @.str.11, ptr @.str.14, ptr @.str.38], [16 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hdmi\00", [27 x i8] zeroinitializer }, align 32
@mux_pllpmdacd2_clkm = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.26, ptr @.str.14, ptr @.str.21, ptr @.str.59, ptr @.str.11, ptr @.str.23, ptr @.str.38], [36 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pwm\00", [28 x i8] zeroinitializer }, align 32
@pwm_parents = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.26, ptr @.str.11, ptr @.str.39, ptr @.str.38], [16 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_a_out0\00", [21 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spdif_2x\00", [23 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dsib\00", [27 x i8] zeroinitializer }, align 32
@mux_plld_out0_plld2_out0 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.21, ptr @.str.23], [24 x i8] zeroinitializer }, align 32
@pll_p_freq_table = internal global { [6 x %struct.tegra_clk_pll_freq_table], [40 x i8] } { [6 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 12000000, i32 216000000, i32 432, i32 12, i8 2, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 216000000, i32 432, i32 13, i8 2, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 216000000, i32 360, i32 14, i8 2, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 216000000, i32 360, i32 16, i8 2, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 216000000, i32 432, i32 26, i8 2, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pll_a\00", [26 x i8] zeroinitializer }, align 32
@pll_a_params = internal global { %struct.tegra_clk_pll_params, [56 x i8] } { %struct.tegra_clk_pll_params { i32 2000000, i32 31000000, i32 1000000, i32 6000000, i32 20000000, i32 1400000000, i32 176, i32 188, i32 0, i32 134217728, i32 18, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1027, i32 0, i32 0, i32 300, i32 0, i8 0, ptr null, ptr null, ptr @pll_a_freq_table, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_p_out1\00", [21 x i8] zeroinitializer }, align 32
@pll_a_freq_table = internal global { [7 x %struct.tegra_clk_pll_freq_table], [52 x i8] } { [7 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 9600000, i32 564480000, i32 294, i32 5, i8 1, i8 4, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 9600000, i32 552960000, i32 288, i32 5, i8 1, i8 4, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 9600000, i32 24000000, i32 5, i32 2, i8 1, i8 1, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 28800000, i32 56448000, i32 49, i32 25, i8 1, i8 1, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 28800000, i32 73728000, i32 64, i32 25, i8 1, i8 1, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 28800000, i32 24000000, i32 5, i32 6, i8 1, i8 1, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], [52 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"utmip-pad\00", [22 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tegra-ehci.0\00", [19 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tegra-otg\00", [22 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tegra-avp\00", [22 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bsev\00", [27 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nvavp\00", [26 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tegra-aes\00", [22 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vde\00", [28 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bsea\00", [27 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tegra_sata_cml\00", [17 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tegra_pcie\00", [21 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cml\00", [28 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vcp\00", [28 x i8] zeroinitializer }, align 32
@tegra30_car_initialized = internal global { i1, [31 x i8] } zeroinitializer, align 32
@tegra30_cpu_clk_sctx.0 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@tegra30_cpu_clk_sctx.1 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@tegra30_cpu_clk_sctx.2 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@tegra30_cpu_clk_sctx.3 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@tegra30_cpu_clk_sctx.4 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@tegra30_car_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra30_car_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.77, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @tegra30_car_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tegra30-car\00", [20 x i8] zeroinitializer }, align 32
@tegra30_car_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-car\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@pll_c_params = internal global %struct.tegra_clk_pll_params { i32 2000000, i32 31000000, i32 1000000, i32 6000000, i32 20000000, i32 1400000000, i32 128, i32 140, i32 0, i32 134217728, i32 18, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1027, i32 0, i32 0, i32 300, i32 0, i8 0, ptr null, ptr null, ptr @pll_c_freq_table, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..ro_after_init", align 4
@pll_e_params = internal global %struct.tegra_clk_pll_params { i32 12000000, i32 216000000, i32 12000000, i32 12000000, i32 1200000000, i32 -1894967296, i32 232, i32 236, i32 0, i32 2048, i32 9, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1472, i32 0, i32 0, i32 300, i32 0, i8 0, ptr @plle_p, ptr null, ptr @pll_e_freq_table, i32 100000000, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..ro_after_init", align 4
@pll_m_params = internal global %struct.tegra_clk_pll_params { i32 2000000, i32 31000000, i32 1000000, i32 6000000, i32 20000000, i32 1200000000, i32 144, i32 156, i32 0, i32 134217728, i32 18, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] zeroinitializer, i32 476, i32 476, i32 1131, i32 0, i32 0, i32 300, i32 0, i8 0, ptr null, ptr @pllm_nmp, ptr @pll_m_freq_table, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..ro_after_init", align 4
@.str.78 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sclk\00", [27 x i8] zeroinitializer }, align 32
@sclk_parents = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.38, ptr @.str.12, ptr @.str.31, ptr @.str.29, ptr @.str.79, ptr @.str.40, ptr @.str.39, ptr @.str.15], [32 x i8] zeroinitializer }, align 32
@devclks = internal global { [147 x %struct.tegra_devclk], [444 x i8] } { [147 x %struct.tegra_devclk] [%struct.tegra_devclk { i32 175, ptr null, ptr @.str.11 }, %struct.tegra_devclk { i32 176, ptr null, ptr @.str.12 }, %struct.tegra_devclk { i32 179, ptr null, ptr @.str.26 }, %struct.tegra_devclk { i32 180, ptr null, ptr @.str.63 }, %struct.tegra_devclk { i32 181, ptr null, ptr @.str.79 }, %struct.tegra_devclk { i32 182, ptr null, ptr @.str.29 }, %struct.tegra_devclk { i32 183, ptr null, ptr @.str.31 }, %struct.tegra_devclk { i32 177, ptr null, ptr @.str.14 }, %struct.tegra_devclk { i32 178, ptr null, ptr @.str.15 }, %struct.tegra_devclk { i32 191, ptr null, ptr @.str.16 }, %struct.tegra_devclk { i32 192, ptr null, ptr @.str.18 }, %struct.tegra_devclk { i32 190, ptr null, ptr @.str.19 }, %struct.tegra_devclk { i32 186, ptr null, ptr @.str.20 }, %struct.tegra_devclk { i32 187, ptr null, ptr @.str.21 }, %struct.tegra_devclk { i32 188, ptr null, ptr @.str.22 }, %struct.tegra_devclk { i32 189, ptr null, ptr @.str.23 }, %struct.tegra_devclk { i32 184, ptr null, ptr @.str.62 }, %struct.tegra_devclk { i32 185, ptr null, ptr @.str.59 }, %struct.tegra_devclk { i32 193, ptr null, ptr @.str.47 }, %struct.tegra_devclk { i32 194, ptr null, ptr @.str.80 }, %struct.tegra_devclk { i32 195, ptr null, ptr @.str.81 }, %struct.tegra_devclk { i32 196, ptr null, ptr @.str.82 }, %struct.tegra_devclk { i32 197, ptr null, ptr @.str.83 }, %struct.tegra_devclk { i32 198, ptr null, ptr @.str.84 }, %struct.tegra_devclk { i32 199, ptr null, ptr @.str.85 }, %struct.tegra_devclk { i32 200, ptr null, ptr @.str.86 }, %struct.tegra_devclk { i32 201, ptr null, ptr @.str.87 }, %struct.tegra_devclk { i32 202, ptr null, ptr @.str.88 }, %struct.tegra_devclk { i32 203, ptr null, ptr @.str.89 }, %struct.tegra_devclk { i32 204, ptr null, ptr @.str.90 }, %struct.tegra_devclk { i32 205, ptr null, ptr @.str.91 }, %struct.tegra_devclk { i32 206, ptr null, ptr @.str.92 }, %struct.tegra_devclk { i32 113, ptr null, ptr @.str.93 }, %struct.tegra_devclk { i32 114, ptr null, ptr @.str.94 }, %struct.tegra_devclk { i32 115, ptr null, ptr @.str.95 }, %struct.tegra_devclk { i32 116, ptr null, ptr @.str.96 }, %struct.tegra_devclk { i32 117, ptr null, ptr @.str.97 }, %struct.tegra_devclk { i32 118, ptr null, ptr @.str.60 }, %struct.tegra_devclk { i32 120, ptr null, ptr @.str.98 }, %struct.tegra_devclk { i32 121, ptr null, ptr @.str.99 }, %struct.tegra_devclk { i32 122, ptr null, ptr @.str.100 }, %struct.tegra_devclk { i32 212, ptr null, ptr @.str.32 }, %struct.tegra_devclk { i32 213, ptr null, ptr @.str.36 }, %struct.tegra_devclk { i32 210, ptr null, ptr @.str.78 }, %struct.tegra_devclk { i32 217, ptr null, ptr @.str.101 }, %struct.tegra_devclk { i32 218, ptr null, ptr @.str.102 }, %struct.tegra_devclk { i32 214, ptr null, ptr @.str.37 }, %struct.tegra_devclk { i32 57, ptr null, ptr @.str.45 }, %struct.tegra_devclk { i32 170, ptr null, ptr @.str.39 }, %struct.tegra_devclk { i32 220, ptr null, ptr @.str.103 }, %struct.tegra_devclk { i32 172, ptr null, ptr @.str.104 }, %struct.tegra_devclk { i32 173, ptr null, ptr @.str.105 }, %struct.tegra_devclk { i32 215, ptr null, ptr @.str.46 }, %struct.tegra_devclk { i32 216, ptr null, ptr @.str.48 }, %struct.tegra_devclk { i32 171, ptr null, ptr @.str.38 }, %struct.tegra_devclk { i32 174, ptr null, ptr @.str.17 }, %struct.tegra_devclk { i32 92, ptr @.str.106, ptr @.str.107 }, %struct.tegra_devclk { i32 29, ptr @.str.67, ptr @.str.76 }, %struct.tegra_devclk { i32 62, ptr @.str.67, ptr @.str.72 }, %struct.tegra_devclk { i32 63, ptr @.str.70, ptr @.str.68 }, %struct.tegra_devclk { i32 48, ptr @.str.108, ptr @.str.41 }, %struct.tegra_devclk { i32 52, ptr @.str.109, ptr @.str.110 }, %struct.tegra_devclk { i32 23, ptr @.str.109, ptr @.str.111 }, %struct.tegra_devclk { i32 70, ptr @.str.112, ptr @.str.42 }, %struct.tegra_devclk { i32 72, ptr @.str.112, ptr @.str.43 }, %struct.tegra_devclk { i32 166, ptr null, ptr @.str.113 }, %struct.tegra_devclk { i32 167, ptr @.str.114, ptr @.str.115 }, %struct.tegra_devclk { i32 107, ptr @.str.116, ptr @.str.117 }, %struct.tegra_devclk { i32 128, ptr @.str.118, ptr @.str.119 }, %struct.tegra_devclk { i32 34, ptr @.str.120, ptr null }, %struct.tegra_devclk { i32 4, ptr @.str.121, ptr null }, %struct.tegra_devclk { i32 5, ptr @.str.122, ptr null }, %struct.tegra_devclk { i32 36, ptr @.str.123, ptr null }, %struct.tegra_devclk { i32 22, ptr @.str.124, ptr null }, %struct.tegra_devclk { i32 58, ptr @.str.125, ptr null }, %struct.tegra_devclk { i32 58, ptr @.str.126, ptr null }, %struct.tegra_devclk { i32 40, ptr @.str.127, ptr null }, %struct.tegra_devclk { i32 129, ptr @.str.128, ptr null }, %struct.tegra_devclk { i32 79, ptr @.str.129, ptr null }, %struct.tegra_devclk { i32 30, ptr @.str.130, ptr null }, %struct.tegra_devclk { i32 11, ptr @.str.131, ptr null }, %struct.tegra_devclk { i32 18, ptr @.str.132, ptr null }, %struct.tegra_devclk { i32 101, ptr @.str.133, ptr null }, %struct.tegra_devclk { i32 102, ptr @.str.134, ptr null }, %struct.tegra_devclk { i32 163, ptr @.str.135, ptr @.str.50 }, %struct.tegra_devclk { i32 162, ptr @.str.135, ptr @.str.136 }, %struct.tegra_devclk { i32 106, ptr @.str.116, ptr @.str.51 }, %struct.tegra_devclk { i32 108, ptr @.str.137, ptr null }, %struct.tegra_devclk { i32 109, ptr @.str.138, ptr null }, %struct.tegra_devclk { i32 110, ptr @.str.139, ptr null }, %struct.tegra_devclk { i32 125, ptr @.str.118, ptr @.str.140 }, %struct.tegra_devclk { i32 111, ptr @.str.118, ptr @.str.141 }, %struct.tegra_devclk { i32 41, ptr @.str.142, ptr null }, %struct.tegra_devclk { i32 44, ptr @.str.143, ptr null }, %struct.tegra_devclk { i32 46, ptr @.str.144, ptr null }, %struct.tegra_devclk { i32 68, ptr @.str.145, ptr null }, %struct.tegra_devclk { i32 104, ptr @.str.146, ptr null }, %struct.tegra_devclk { i32 105, ptr @.str.147, ptr null }, %struct.tegra_devclk { i32 123, ptr @.str.148, ptr null }, %struct.tegra_devclk { i32 124, ptr @.str.149, ptr null }, %struct.tegra_devclk { i32 13, ptr @.str.150, ptr null }, %struct.tegra_devclk { i32 80, ptr @.str.151, ptr null }, %struct.tegra_devclk { i32 161, ptr @.str.152, ptr null }, %struct.tegra_devclk { i32 73, ptr @.str.153, ptr null }, %struct.tegra_devclk { i32 76, ptr @.str.154, ptr null }, %struct.tegra_devclk { i32 71, ptr @.str.155, ptr null }, %struct.tegra_devclk { i32 50, ptr @.str.156, ptr null }, %struct.tegra_devclk { i32 100, ptr @.str.157, ptr null }, %struct.tegra_devclk { i32 81, ptr @.str.158, ptr null }, %struct.tegra_devclk { i32 61, ptr @.str.71, ptr null }, %struct.tegra_devclk { i32 164, ptr @.str.109, ptr @.str.159 }, %struct.tegra_devclk { i32 19, ptr @.str.160, ptr null }, %struct.tegra_devclk { i32 60, ptr @.str.161, ptr null }, %struct.tegra_devclk { i32 28, ptr @.str.162, ptr null }, %struct.tegra_devclk { i32 24, ptr @.str.163, ptr null }, %struct.tegra_devclk { i32 98, ptr @.str.55, ptr null }, %struct.tegra_devclk { i32 21, ptr @.str.164, ptr null }, %struct.tegra_devclk { i32 127, ptr @.str.56, ptr null }, %struct.tegra_devclk { i32 99, ptr @.str.165, ptr null }, %struct.tegra_devclk { i32 42, ptr @.str.166, ptr null }, %struct.tegra_devclk { i32 14, ptr @.str.167, ptr null }, %struct.tegra_devclk { i32 9, ptr @.str.168, ptr null }, %struct.tegra_devclk { i32 69, ptr @.str.169, ptr null }, %struct.tegra_devclk { i32 15, ptr @.str.170, ptr null }, %struct.tegra_devclk { i32 168, ptr @.str.171, ptr null }, %struct.tegra_devclk { i32 169, ptr @.str.172, ptr null }, %struct.tegra_devclk { i32 53, ptr @.str.173, ptr null }, %struct.tegra_devclk { i32 119, ptr @.str.174, ptr null }, %struct.tegra_devclk { i32 165, ptr @.str.109, ptr @.str.175 }, %struct.tegra_devclk { i32 12, ptr @.str.176, ptr @.str.177 }, %struct.tegra_devclk { i32 54, ptr @.str.178, ptr @.str.177 }, %struct.tegra_devclk { i32 67, ptr @.str.179, ptr @.str.177 }, %struct.tegra_devclk { i32 103, ptr @.str.180, ptr @.str.177 }, %struct.tegra_devclk { i32 47, ptr @.str.181, ptr @.str.177 }, %struct.tegra_devclk { i32 6, ptr @.str.182, ptr null }, %struct.tegra_devclk { i32 160, ptr @.str.183, ptr null }, %struct.tegra_devclk { i32 55, ptr @.str.184, ptr null }, %struct.tegra_devclk { i32 65, ptr @.str.185, ptr null }, %struct.tegra_devclk { i32 66, ptr @.str.186, ptr null }, %struct.tegra_devclk { i32 51, ptr @.str.57, ptr null }, %struct.tegra_devclk { i32 120, ptr @.str.98, ptr null }, %struct.tegra_devclk { i32 121, ptr @.str.99, ptr null }, %struct.tegra_devclk { i32 122, ptr @.str.100, ptr null }, %struct.tegra_devclk { i32 17, ptr @.str.58, ptr null }, %struct.tegra_devclk { i32 27, ptr @.str.108, ptr null }, %struct.tegra_devclk { i32 26, ptr @.str.187, ptr null }, %struct.tegra_devclk { i32 82, ptr @.str.187, ptr null }], [444 x i8] zeroinitializer }, align 32
@init_table = internal global { [41 x %struct.tegra_clk_init_table], [176 x i8] } { [41 x %struct.tegra_clk_init_table] [%struct.tegra_clk_init_table { i32 6, i32 179, i32 408000000, i32 0 }, %struct.tegra_clk_init_table { i32 160, i32 179, i32 408000000, i32 0 }, %struct.tegra_clk_init_table { i32 55, i32 179, i32 408000000, i32 0 }, %struct.tegra_clk_init_table { i32 65, i32 179, i32 408000000, i32 0 }, %struct.tegra_clk_init_table { i32 66, i32 179, i32 408000000, i32 0 }, %struct.tegra_clk_init_table { i32 184, i32 309, i32 564480000, i32 0 }, %struct.tegra_clk_init_table { i32 185, i32 309, i32 11289600, i32 0 }, %struct.tegra_clk_init_table { i32 30, i32 185, i32 11289600, i32 0 }, %struct.tegra_clk_init_table { i32 11, i32 185, i32 11289600, i32 0 }, %struct.tegra_clk_init_table { i32 18, i32 185, i32 11289600, i32 0 }, %struct.tegra_clk_init_table { i32 101, i32 185, i32 11289600, i32 0 }, %struct.tegra_clk_init_table { i32 102, i32 185, i32 11289600, i32 0 }, %struct.tegra_clk_init_table { i32 14, i32 179, i32 48000000, i32 0 }, %struct.tegra_clk_init_table { i32 9, i32 179, i32 48000000, i32 0 }, %struct.tegra_clk_init_table { i32 69, i32 179, i32 48000000, i32 0 }, %struct.tegra_clk_init_table { i32 73, i32 309, i32 0, i32 1 }, %struct.tegra_clk_init_table { i32 99, i32 309, i32 0, i32 1 }, %struct.tegra_clk_init_table { i32 41, i32 179, i32 100000000, i32 0 }, %struct.tegra_clk_init_table { i32 44, i32 179, i32 100000000, i32 0 }, %struct.tegra_clk_init_table { i32 46, i32 179, i32 100000000, i32 0 }, %struct.tegra_clk_init_table { i32 68, i32 179, i32 100000000, i32 0 }, %struct.tegra_clk_init_table { i32 104, i32 179, i32 100000000, i32 0 }, %struct.tegra_clk_init_table { i32 105, i32 179, i32 100000000, i32 0 }, %struct.tegra_clk_init_table { i32 175, i32 309, i32 600000000, i32 0 }, %struct.tegra_clk_init_table { i32 28, i32 175, i32 150000000, i32 0 }, %struct.tegra_clk_init_table { i32 214, i32 309, i32 0, i32 1 }, %struct.tegra_clk_init_table { i32 21, i32 175, i32 300000000, i32 0 }, %struct.tegra_clk_init_table { i32 24, i32 175, i32 300000000, i32 0 }, %struct.tegra_clk_init_table { i32 98, i32 175, i32 300000000, i32 0 }, %struct.tegra_clk_init_table { i32 190, i32 309, i32 480000000, i32 0 }, %struct.tegra_clk_init_table { i32 61, i32 175, i32 300000000, i32 0 }, %struct.tegra_clk_init_table { i32 194, i32 309, i32 24000000, i32 0 }, %struct.tegra_clk_init_table { i32 195, i32 309, i32 24000000, i32 0 }, %struct.tegra_clk_init_table { i32 196, i32 309, i32 24000000, i32 0 }, %struct.tegra_clk_init_table { i32 197, i32 309, i32 24000000, i32 0 }, %struct.tegra_clk_init_table { i32 198, i32 309, i32 24000000, i32 0 }, %struct.tegra_clk_init_table { i32 199, i32 309, i32 24000000, i32 0 }, %struct.tegra_clk_init_table { i32 200, i32 309, i32 24000000, i32 0 }, %struct.tegra_clk_init_table { i32 125, i32 179, i32 102000000, i32 0 }, %struct.tegra_clk_init_table { i32 111, i32 179, i32 48000000, i32 0 }, %struct.tegra_clk_init_table { i32 309, i32 309, i32 0, i32 0 }], [176 x i8] zeroinitializer }, align 32
@pll_c_freq_table = internal global { [31 x %struct.tegra_clk_pll_freq_table], [148 x i8] } { [31 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 12000000, i32 1040000000, i32 520, i32 6, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 1040000000, i32 480, i32 6, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 1040000000, i32 495, i32 8, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 1040000000, i32 325, i32 6, i8 1, i8 6, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 1040000000, i32 520, i32 13, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 832000000, i32 416, i32 6, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 832000000, i32 832, i32 13, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 832000000, i32 396, i32 8, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 832000000, i32 260, i32 6, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 832000000, i32 416, i32 13, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 624000000, i32 624, i32 12, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 624000000, i32 624, i32 13, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 600000000, i32 520, i32 14, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 624000000, i32 520, i32 16, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 624000000, i32 624, i32 26, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 600000000, i32 600, i32 12, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 600000000, i32 600, i32 13, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 600000000, i32 500, i32 14, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 600000000, i32 375, i32 12, i8 1, i8 6, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 600000000, i32 600, i32 26, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 520000000, i32 520, i32 12, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 520000000, i32 520, i32 13, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 520000000, i32 495, i32 16, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 520000000, i32 325, i32 12, i8 1, i8 6, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 520000000, i32 520, i32 26, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 416000000, i32 416, i32 12, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 416000000, i32 416, i32 13, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 416000000, i32 396, i32 16, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 416000000, i32 260, i32 12, i8 1, i8 6, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 416000000, i32 416, i32 26, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], [148 x i8] zeroinitializer }, align 32
@plle_p = internal constant { [3 x %struct.pdiv_map], [26 x i8] } { [3 x %struct.pdiv_map] [%struct.pdiv_map { i8 18, i8 18 }, %struct.pdiv_map { i8 24, i8 24 }, %struct.pdiv_map zeroinitializer], [26 x i8] zeroinitializer }, align 32
@pll_e_freq_table = internal global { [3 x %struct.tegra_clk_pll_freq_table], [36 x i8] } { [3 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 12000000, i32 100000000, i32 150, i32 1, i8 18, i8 11, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 216000000, i32 100000000, i32 200, i32 18, i8 24, i8 13, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], [36 x i8] zeroinitializer }, align 32
@pllm_nmp = internal global { %struct.div_nmp, [23 x i8] } { %struct.div_nmp { i8 8, i8 10, i8 0, i8 5, i8 20, i8 3, i8 5, i8 0, i8 15 }, [23 x i8] zeroinitializer }, align 32
@pll_m_freq_table = internal global { [11 x %struct.tegra_clk_pll_freq_table], [36 x i8] } { [11 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 12000000, i32 666000000, i32 666, i32 12, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 666000000, i32 666, i32 13, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 666000000, i32 555, i32 14, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 666000000, i32 555, i32 16, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 666000000, i32 666, i32 26, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 600000000, i32 600, i32 12, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 600000000, i32 600, i32 13, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 600000000, i32 500, i32 14, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 600000000, i32 375, i32 12, i8 1, i8 6, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 600000000, i32 600, i32 26, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_p_out2\00", [21 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"spdif_in_sync\00", [18 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2s0_sync\00", [22 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2s1_sync\00", [22 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2s2_sync\00", [22 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2s3_sync\00", [22 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2s4_sync\00", [22 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vimclk_sync\00", [20 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"audio0\00", [25 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"audio1\00", [25 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"audio2\00", [25 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"audio3\00", [25 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"audio4\00", [25 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"spdif\00", [26 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"audio0_2x\00", [22 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"audio1_2x\00", [22 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"audio2_2x\00", [22 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"audio3_2x\00", [22 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"audio4_2x\00", [22 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"extern1\00", [24 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"extern2\00", [24 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"extern3\00", [24 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hclk\00", [27 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"osc\00", [28 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"osc_div2\00", [23 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"osc_div4\00", [23 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tengra_camera\00", [18 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"csus\00", [27 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tegradc.0\00", [22 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tegra_camera\00", [19 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"csi\00", [28 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"isp\00", [28 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tegra-pcie\00", [21 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fuse\00", [27 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fuse-tegra\00", [21 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fuse_burn\00", [22 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tegra30-ahub\00", [19 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"apbif\00", [26 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tegra30-hda\00", [20 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hda2hdmi\00", [23 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tegra-apbdma\00", [19 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rtc-tegra\00", [22 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"timer\00", [26 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tegra-kbc\00", [22 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fsl-tegra-udc\00", [18 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tegra-ehci.1\00", [19 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tegra-ehci.2\00", [19 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"kfuse-tegra\00", [20 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tegra_sata_cold\00", [16 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dtv\00", [28 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tegra30-i2s.0\00", [18 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tegra30-i2s.1\00", [18 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tegra30-i2s.2\00", [18 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tegra30-i2s.3\00", [18 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tegra30-i2s.4\00", [18 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tegra30-spdif\00", [18 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spdif_in\00", [23 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tegra30-dam.0\00", [18 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tegra30-dam.1\00", [18 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tegra30-dam.2\00", [18 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hda\00", [28 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hda2codec_2x\00", [19 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spi_tegra.0\00", [20 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spi_tegra.1\00", [20 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spi_tegra.2\00", [20 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spi_tegra.3\00", [20 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spi_tegra.4\00", [20 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spi_tegra.5\00", [20 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tegra_sata_oob\00", [17 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tegra_sata\00", [21 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tegra_nand\00", [21 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tegra_nand_speed\00", [47 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vfir\00", [27 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"csite\00", [26 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"la\00", [29 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tegra_w1\00", [23 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mipi\00", [27 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tegra-tsensor\00", [18 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2cslow\00", [24 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"vi\00", [29 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"epp\00", [28 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mpe\00", [28 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"host1x\00", [25 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"3d\00", [29 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"2d\00", [29 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mselect\00", [24 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tegra-nor\00", [22 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sdhci-tegra.0\00", [18 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sdhci-tegra.1\00", [18 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sdhci-tegra.2\00", [18 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sdhci-tegra.3\00", [18 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cve\00", [28 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tvo\00", [28 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tvdac\00", [26 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"actmon\00", [25 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vi_sensor\00", [22 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tegra-i2c.0\00", [20 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"div-clk\00", [24 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tegra-i2c.1\00", [20 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tegra-i2c.2\00", [20 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tegra-i2c.3\00", [20 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tegra-i2c.4\00", [20 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tegra_uart.0\00", [19 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tegra_uart.1\00", [19 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tegra_uart.2\00", [19 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tegra_uart.3\00", [19 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tegra_uart.4\00", [19 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tegradc.1\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 5, i64 214]
@__sancov_gen_cov_switch_values.188 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.189 = private unnamed_addr constant [9 x i8] c"clk_base\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 151, i32 22 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 1312, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 1318, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant [9 x i8] c"pmc_base\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 152, i32 22 }
@___asan_gen_.213 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 1324, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant [5 x i8] c"clks\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 185, i32 21 }
@___asan_gen_.222 = private unnamed_addr constant [19 x i8] c"tegra30_input_freq\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 528, i32 22 }
@___asan_gen_.225 = private unnamed_addr constant [11 x i8] c"input_freq\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 153, i32 22 }
@___asan_gen_.228 = private unnamed_addr constant [19 x i8] c"tegra30_audio_plls\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 1270, i32 36 }
@___asan_gen_.231 = private unnamed_addr constant [21 x i8] c"tegra_clk_duplicates\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 1249, i32 35 }
@___asan_gen_.234 = private unnamed_addr constant [20 x i8] c"tegra30_cpu_car_ops\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 1186, i32 33 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 819, i32 35 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 819, i32 53 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 822, i32 35 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 828, i32 35 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 828, i32 53 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 831, i32 35 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 837, i32 31 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 837, i32 40 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 842, i32 40 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 847, i32 32 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 852, i32 31 }
@___asan_gen_.270 = private unnamed_addr constant [11 x i8] c"pll_d_lock\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 857, i32 40 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 862, i32 31 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 867, i32 40 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 872, i32 8 }
@___asan_gen_.285 = private unnamed_addr constant [14 x i8] c"pll_e_parents\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 812, i32 20 }
@___asan_gen_.288 = private unnamed_addr constant [17 x i8] c"pll_x_freq_table\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 287, i32 40 }
@___asan_gen_.291 = private unnamed_addr constant [7 x i8] c"pllu_p\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 272, i32 30 }
@___asan_gen_.294 = private unnamed_addr constant [17 x i8] c"pll_u_freq_table\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 278, i32 40 }
@___asan_gen_.297 = private unnamed_addr constant [17 x i8] c"pll_d_freq_table\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 254, i32 40 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 156, i32 8 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 812, i32 51 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 897, i32 35 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 906, i32 35 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 906, i32 55 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 915, i32 35 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 915, i32 55 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 921, i32 38 }
@___asan_gen_.324 = private unnamed_addr constant [15 x i8] c"cclk_g_parents\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 878, i32 20 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 932, i32 35 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 941, i32 35 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 950, i32 35 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 956, i32 37 }
@___asan_gen_.339 = private unnamed_addr constant [16 x i8] c"cclk_lp_parents\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 881, i32 20 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 965, i32 40 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 878, i32 41 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 878, i32 59 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 880, i32 26 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 1008, i32 39 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 1013, i32 39 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 1018, i32 39 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 1027, i32 30 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 1027, i32 36 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 1032, i32 32 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 1032, i32 40 }
@___asan_gen_.375 = private unnamed_addr constant [9 x i8] c"cml_lock\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 1037, i32 32 }
@___asan_gen_.381 = private unnamed_addr constant [22 x i8] c"tegra_periph_clk_list\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 985, i32 38 }
@___asan_gen_.384 = private unnamed_addr constant [28 x i8] c"tegra_periph_nodiv_clk_list\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 997, i32 38 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 155, i32 8 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 986, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant [18 x i8] c"spdif_out_parents\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 975, i32 20 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 987, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant [16 x i8] c"mux_pllacp_clkm\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 972, i32 20 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 988, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 989, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 990, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 991, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant [12 x i8] c"mux_pllmcpa\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 977, i32 20 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 992, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant [16 x i8] c"mux_pllpcm_clkm\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 974, i32 20 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 993, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant [20 x i8] c"mux_pllpmdacd2_clkm\00", align 1
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 978, i32 20 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 994, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant [12 x i8] c"pwm_parents\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 983, i32 20 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 975, i32 44 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 975, i32 58 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 998, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant [25 x i8] c"mux_plld_out0_plld2_out0\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 981, i32 20 }
@___asan_gen_.447 = private unnamed_addr constant [17 x i8] c"pll_p_freq_table\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 235, i32 40 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 1271, i32 4 }
@___asan_gen_.453 = private unnamed_addr constant [13 x i8] c"pll_a_params\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 421, i32 36 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 1271, i32 45 }
@___asan_gen_.459 = private unnamed_addr constant [17 x i8] c"pll_a_freq_table\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 244, i32 40 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 1250, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 1251, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 1252, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 1253, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 1254, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 1255, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 1256, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 1258, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 1259, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 1260, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant [24 x i8] c"tegra30_car_initialized\00", align 1
@___asan_gen_.502 = private unnamed_addr constant [23 x i8] c"tegra30_cpu_clk_sctx.0\00", align 1
@___asan_gen_.503 = private unnamed_addr constant [23 x i8] c"tegra30_cpu_clk_sctx.1\00", align 1
@___asan_gen_.504 = private unnamed_addr constant [23 x i8] c"tegra30_cpu_clk_sctx.2\00", align 1
@___asan_gen_.505 = private unnamed_addr constant [23 x i8] c"tegra30_cpu_clk_sctx.3\00", align 1
@___asan_gen_.506 = private unnamed_addr constant [23 x i8] c"tegra30_cpu_clk_sctx.4\00", align 1
@___asan_gen_.507 = private unnamed_addr constant [19 x i8] c"tegra30_car_driver\00", align 1
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 1402, i32 31 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 1404, i32 11 }
@___asan_gen_.513 = private unnamed_addr constant [18 x i8] c"tegra30_car_match\00", align 1
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 1397, i32 34 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 1383, i32 37 }
@___asan_gen_.519 = private unnamed_addr constant [13 x i8] c"sclk_parents\00", align 1
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 885, i32 20 }
@___asan_gen_.522 = private unnamed_addr constant [8 x i8] c"devclks\00", align 1
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 538, i32 28 }
@___asan_gen_.525 = private unnamed_addr constant [11 x i8] c"init_table\00", align 1
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 1199, i32 36 }
@___asan_gen_.528 = private unnamed_addr constant [17 x i8] c"pll_c_freq_table\00", align 1
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 187, i32 40 }
@___asan_gen_.531 = private unnamed_addr constant [7 x i8] c"plle_p\00", align 1
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 339, i32 30 }
@___asan_gen_.534 = private unnamed_addr constant [17 x i8] c"pll_e_freq_table\00", align 1
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 345, i32 40 }
@___asan_gen_.537 = private unnamed_addr constant [9 x i8] c"pllm_nmp\00", align 1
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 370, i32 23 }
@___asan_gen_.540 = private unnamed_addr constant [17 x i8] c"pll_m_freq_table\00", align 1
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 221, i32 40 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 886, i32 25 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 558, i32 14 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 559, i32 14 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 560, i32 14 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 561, i32 14 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 562, i32 14 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 563, i32 14 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 564, i32 14 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 565, i32 14 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 566, i32 14 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 567, i32 14 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 568, i32 14 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 569, i32 14 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 570, i32 14 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 571, i32 14 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 572, i32 14 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 573, i32 14 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 574, i32 14 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 575, i32 14 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 577, i32 14 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 578, i32 14 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 579, i32 14 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 583, i32 14 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 584, i32 14 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 588, i32 14 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 589, i32 14 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 590, i32 14 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 595, i32 32 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 595, i32 14 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 599, i32 32 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 600, i32 31 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 600, i32 14 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 601, i32 14 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 602, i32 32 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 604, i32 14 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 605, i32 37 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 605, i32 14 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 606, i32 33 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 606, i32 14 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 607, i32 36 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 607, i32 14 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 608, i32 14 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 609, i32 14 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 610, i32 14 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 611, i32 14 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 612, i32 14 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 613, i32 14 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 614, i32 14 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 615, i32 14 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 616, i32 14 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 617, i32 14 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 618, i32 14 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 619, i32 14 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 620, i32 14 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 621, i32 14 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 622, i32 14 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 623, i32 37 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 624, i32 14 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 626, i32 14 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 627, i32 14 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 628, i32 14 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 629, i32 14 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 630, i32 14 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 631, i32 14 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 632, i32 14 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 633, i32 14 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 634, i32 14 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 635, i32 14 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 636, i32 14 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 637, i32 14 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 638, i32 14 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 639, i32 14 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 640, i32 14 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 641, i32 14 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 642, i32 14 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 643, i32 14 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 644, i32 14 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 645, i32 14 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 646, i32 14 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 647, i32 14 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 649, i32 14 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 650, i32 14 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 651, i32 14 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 652, i32 14 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 653, i32 14 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 655, i32 14 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 657, i32 14 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 658, i32 14 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 659, i32 14 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 660, i32 14 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 661, i32 14 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 662, i32 14 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 663, i32 14 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 664, i32 14 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 665, i32 14 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 666, i32 14 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 667, i32 14 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 668, i32 35 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 668, i32 14 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 669, i32 35 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 670, i32 35 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 671, i32 35 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 672, i32 35 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 673, i32 14 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 674, i32 14 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 675, i32 14 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 676, i32 14 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 677, i32 14 }
@___asan_gen_.867 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.868 = private constant [35 x i8] c"../drivers/clk/tegra/clk-tegra30.c\00", align 1
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.868, i32 684, i32 14 }
@llvm.compiler.used = appending global [236 x ptr] [ptr @__initcall__kmod_clk_tegra30__183_1420_tegra30_car_init2, ptr @__of_table_tegra30, ptr @tegra30_clock_init._entry, ptr @tegra30_clock_init._entry.3, ptr @tegra30_clock_init._entry.6, ptr @tegra30_clock_init._entry_ptr, ptr @tegra30_clock_init._entry_ptr.5, ptr @tegra30_clock_init._entry_ptr.8, ptr @clk_base, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @pmc_base, ptr @.str.7, ptr @clks, ptr @tegra30_input_freq, ptr @input_freq, ptr @tegra30_audio_plls, ptr @tegra_clk_duplicates, ptr @tegra30_cpu_car_ops, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @pll_d_lock, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @pll_e_parents, ptr @pll_x_freq_table, ptr @pllu_p, ptr @pll_u_freq_table, ptr @pll_d_freq_table, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @cclk_g_parents, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @cclk_lp_parents, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @cml_lock, ptr @.str.48, ptr @tegra_periph_clk_list, ptr @tegra_periph_nodiv_clk_list, ptr @.str.49, ptr @.str.50, ptr @spdif_out_parents, ptr @.str.51, ptr @mux_pllacp_clkm, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @mux_pllmcpa, ptr @.str.56, ptr @mux_pllpcm_clkm, ptr @.str.57, ptr @mux_pllpmdacd2_clkm, ptr @.str.58, ptr @pwm_parents, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @mux_plld_out0_plld2_out0, ptr @pll_p_freq_table, ptr @.str.62, ptr @pll_a_params, ptr @.str.63, ptr @pll_a_freq_table, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @tegra30_car_initialized, ptr @tegra30_cpu_clk_sctx.0, ptr @tegra30_cpu_clk_sctx.1, ptr @tegra30_cpu_clk_sctx.2, ptr @tegra30_cpu_clk_sctx.3, ptr @tegra30_cpu_clk_sctx.4, ptr @tegra30_car_driver, ptr @.str.77, ptr @tegra30_car_match, ptr @.str.78, ptr @sclk_parents, ptr @devclks, ptr @init_table, ptr @pll_c_freq_table, ptr @plle_p, ptr @pll_e_freq_table, ptr @pllm_nmp, ptr @pll_m_freq_table, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187], section "llvm.metadata"
@0 = internal global [231 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_clock_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_clock_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmc_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_clock_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clks to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_input_freq to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @input_freq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_audio_plls to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_clk_duplicates to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_cpu_car_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_d_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_e_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_x_freq_table to i32), i32 820, i32 1024, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pllu_p to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_u_freq_table to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_d_freq_table to i32), i32 300, i32 384, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cclk_g_parents to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cclk_lp_parents to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cml_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_periph_clk_list to i32), i32 1368, i32 1696, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_periph_nodiv_clk_list to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spdif_out_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mux_pllacp_clkm to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mux_pllmcpa to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mux_pllpcm_clkm to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mux_pllpmdacd2_clkm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mux_plld_out0_plld2_out0 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_p_freq_table to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_a_params to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_a_freq_table to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_car_initialized to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_cpu_clk_sctx.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_cpu_clk_sctx.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_cpu_clk_sctx.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_cpu_clk_sctx.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_cpu_clk_sctx.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_car_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra30_car_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sclk_parents to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devclks to i32), i32 1764, i32 2208, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_table to i32), i32 656, i32 832, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_c_freq_table to i32), i32 620, i32 768, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plle_p to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_e_freq_table to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pllm_nmp to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_m_freq_table to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tegra30_of_clk_init_driver(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %_flags.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %_flags.i) #5
  tail call fastcc void @tegra30_clock_init(ptr noundef %np) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra30_car_init() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra30_car_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra30_clock_init(ptr noundef %np) unnamed_addr #0 section ".init.text" align 64 {
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
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @pmc_match, ptr noundef null) #5
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %do.end7, label %if.end16

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/tegra/clk-tegra30.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1319, 0\0A.popsection", ""() #5, !srcloc !480
  unreachable

if.end16:                                         ; preds = %if.end
  %call17 = tail call ptr @of_iomap(ptr noundef nonnull %call.i, i32 noundef 0) #5
  store ptr %call17, ptr @pmc_base, align 4
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %do.end22, label %if.end31

do.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/tegra/clk-tegra30.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1325, 0\0A.popsection", ""() #5, !srcloc !481
  unreachable

if.end31:                                         ; preds = %if.end16
  %0 = load ptr, ptr @clk_base, align 4
  %call32 = tail call ptr @tegra_clk_init(ptr noundef %0, i32 noundef 309, i32 noundef 5) #5
  store ptr %call32, ptr @clks, align 4
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %if.end31.cleanup_crit_edge, label %if.end35

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end35:                                         ; preds = %if.end31
  %1 = load ptr, ptr @clk_base, align 4
  %call36 = tail call i32 @tegra_osc_clk_init(ptr noundef %1, ptr noundef nonnull @tegra30_clks, ptr noundef nonnull @tegra30_input_freq, i32 noundef 13, i32 noundef 1, ptr noundef nonnull @input_freq, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp = icmp slt i32 %call36, 0
  br i1 %cmp, label %if.end35.cleanup_crit_edge, label %if.end38

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end38:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @tegra_fixed_clk_init(ptr noundef nonnull @tegra30_clks) #5
  tail call fastcc void @tegra30_pll_init() #8
  tail call fastcc void @tegra30_super_clk_init() #8
  tail call fastcc void @tegra30_periph_clk_init() #8
  %2 = load ptr, ptr @clk_base, align 4
  %3 = load ptr, ptr @pmc_base, align 4
  tail call void @tegra_audio_clk_init(ptr noundef %2, ptr noundef %3, ptr noundef nonnull @tegra30_clks, ptr noundef nonnull @tegra30_audio_plls, i32 noundef 1, i32 noundef 24000000) #5
  %4 = load ptr, ptr @clks, align 4
  tail call void @tegra_init_dup_clks(ptr noundef nonnull @tegra_clk_duplicates, ptr noundef %4, i32 noundef 309) #5
  tail call void @tegra_add_of_provider(ptr noundef %np, ptr noundef nonnull @tegra30_clk_src_onecell_get) #5
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @tegra_cpu_car_ops to i32))
  store ptr @tegra30_cpu_car_ops, ptr @tegra_cpu_car_ops, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.end35.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_osc_clk_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_fixed_clk_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra30_pll_init() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @clk_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 132
  %call = tail call ptr @tegra_clk_register_divider(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef %add.ptr, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 8, i8 noundef zeroext 8, i8 noundef zeroext 1, ptr noundef null) #5
  %1 = load ptr, ptr @clk_base, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 132
  %call2 = tail call ptr @tegra_clk_register_pll_out(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, ptr noundef %add.ptr1, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 4, i8 noundef zeroext 0, ptr noundef null) #5
  %2 = load ptr, ptr @clks, align 4
  %arrayidx = getelementptr ptr, ptr %2, i32 176
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2, ptr %arrayidx, align 4
  %4 = load ptr, ptr @clk_base, align 4
  %add.ptr3 = getelementptr i8, ptr %4, i32 148
  %call4 = tail call ptr @tegra_clk_register_divider(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef %add.ptr3, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 8, i8 noundef zeroext 8, i8 noundef zeroext 1, ptr noundef null) #5
  %5 = load ptr, ptr @clk_base, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 148
  %call6 = tail call ptr @tegra_clk_register_pll_out(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13, ptr noundef %add.ptr5, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 4, i8 noundef zeroext 0, ptr noundef null) #5
  %6 = load ptr, ptr @clks, align 4
  %arrayidx7 = getelementptr ptr, ptr %6, i32 178
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call6, ptr %arrayidx7, align 4
  %8 = load ptr, ptr @clk_base, align 4
  %9 = load ptr, ptr @pmc_base, align 4
  %call8 = tail call ptr @tegra_clk_register_pll(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef %8, ptr noundef %9, i32 noundef 0, ptr noundef nonnull @pll_x_params, ptr noundef null) #5
  %10 = load ptr, ptr @clks, align 4
  %arrayidx9 = getelementptr ptr, ptr %10, i32 191
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call8, ptr %arrayidx9, align 4
  %call10 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, i32 noundef 4, i32 noundef 1, i32 noundef 2) #5
  %12 = load ptr, ptr @clks, align 4
  %arrayidx11 = getelementptr ptr, ptr %12, i32 192
  %13 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call10, ptr %arrayidx11, align 4
  %14 = load ptr, ptr @clk_base, align 4
  %call12 = tail call ptr @tegra_clk_register_pllu(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, ptr noundef %14, i32 noundef 0, ptr noundef nonnull @pll_u_params, ptr noundef null) #5
  %15 = load ptr, ptr @clks, align 4
  %arrayidx13 = getelementptr ptr, ptr %15, i32 190
  %16 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call12, ptr %arrayidx13, align 4
  %17 = load ptr, ptr @clk_base, align 4
  %18 = load ptr, ptr @pmc_base, align 4
  %call14 = tail call ptr @tegra_clk_register_pll(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.17, ptr noundef %17, ptr noundef %18, i32 noundef 0, ptr noundef nonnull @pll_d_params, ptr noundef nonnull @pll_d_lock) #5
  %19 = load ptr, ptr @clks, align 4
  %arrayidx15 = getelementptr ptr, ptr %19, i32 186
  %20 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call14, ptr %arrayidx15, align 4
  %call16 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i32 noundef 4, i32 noundef 1, i32 noundef 2) #5
  %21 = load ptr, ptr @clks, align 4
  %arrayidx17 = getelementptr ptr, ptr %21, i32 187
  %22 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call16, ptr %arrayidx17, align 4
  %23 = load ptr, ptr @clk_base, align 4
  %24 = load ptr, ptr @pmc_base, align 4
  %call18 = tail call ptr @tegra_clk_register_pll(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.17, ptr noundef %23, ptr noundef %24, i32 noundef 0, ptr noundef nonnull @pll_d2_params, ptr noundef null) #5
  %25 = load ptr, ptr @clks, align 4
  %arrayidx19 = getelementptr ptr, ptr %25, i32 188
  %26 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call18, ptr %arrayidx19, align 4
  %call20 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, i32 noundef 4, i32 noundef 1, i32 noundef 2) #5
  %27 = load ptr, ptr @clks, align 4
  %arrayidx21 = getelementptr ptr, ptr %27, i32 189
  %28 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call20, ptr %arrayidx21, align 4
  %29 = load ptr, ptr @clk_base, align 4
  %add.ptr22 = getelementptr i8, ptr %29, i32 1164
  %call23 = tail call ptr @clk_register_mux_table(ptr noundef null, ptr noundef nonnull @.str.24, ptr noundef nonnull @pll_e_parents, i8 noundef zeroext 2, i32 noundef 128, ptr noundef %add.ptr22, i8 noundef zeroext 2, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef null) #5
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra30_super_clk_init() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @clk_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 876
  %call = tail call ptr @tegra_clk_register_divider(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.26, ptr noundef %add.ptr, i32 noundef 0, i8 noundef zeroext 4, i8 noundef zeroext 16, i8 noundef zeroext 8, i8 noundef zeroext 1, ptr noundef null) #5
  %call1 = tail call i32 @clk_register_clkdev(ptr noundef %call, ptr noundef nonnull @.str.27, ptr noundef null) #5
  %1 = load ptr, ptr @clk_base, align 4
  %add.ptr2 = getelementptr i8, ptr %1, i32 876
  %call3 = tail call ptr @tegra_clk_register_divider(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, ptr noundef %add.ptr2, i32 noundef 0, i8 noundef zeroext 4, i8 noundef zeroext 16, i8 noundef zeroext 8, i8 noundef zeroext 1, ptr noundef null) #5
  %call4 = tail call i32 @clk_register_clkdev(ptr noundef %call3, ptr noundef nonnull @.str.28, ptr noundef null) #5
  %2 = load ptr, ptr @clk_base, align 4
  %add.ptr5 = getelementptr i8, ptr %2, i32 876
  %call6 = tail call ptr @tegra_clk_register_divider(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, ptr noundef %add.ptr5, i32 noundef 0, i8 noundef zeroext 4, i8 noundef zeroext 16, i8 noundef zeroext 8, i8 noundef zeroext 1, ptr noundef null) #5
  %call7 = tail call i32 @clk_register_clkdev(ptr noundef %call6, ptr noundef nonnull @.str.30, ptr noundef null) #5
  %3 = load ptr, ptr @clk_base, align 4
  %add.ptr8 = getelementptr i8, ptr %3, i32 872
  %call9 = tail call ptr @tegra_clk_register_super_cclk(ptr noundef nonnull @.str.32, ptr noundef nonnull @cclk_g_parents, i8 noundef zeroext 9, i32 noundef 68, ptr noundef %add.ptr8, i8 noundef zeroext 0, ptr noundef null) #5
  %4 = load ptr, ptr @clks, align 4
  %arrayidx = getelementptr ptr, ptr %4, i32 212
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call9, ptr %arrayidx, align 4
  %6 = load ptr, ptr @clk_base, align 4
  %add.ptr10 = getelementptr i8, ptr %6, i32 884
  %call11 = tail call ptr @tegra_clk_register_divider(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.26, ptr noundef %add.ptr10, i32 noundef 0, i8 noundef zeroext 4, i8 noundef zeroext 16, i8 noundef zeroext 8, i8 noundef zeroext 1, ptr noundef null) #5
  %call12 = tail call i32 @clk_register_clkdev(ptr noundef %call11, ptr noundef nonnull @.str.33, ptr noundef null) #5
  %7 = load ptr, ptr @clk_base, align 4
  %add.ptr13 = getelementptr i8, ptr %7, i32 884
  %call14 = tail call ptr @tegra_clk_register_divider(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.29, ptr noundef %add.ptr13, i32 noundef 0, i8 noundef zeroext 4, i8 noundef zeroext 16, i8 noundef zeroext 8, i8 noundef zeroext 1, ptr noundef null) #5
  %call15 = tail call i32 @clk_register_clkdev(ptr noundef %call14, ptr noundef nonnull @.str.34, ptr noundef null) #5
  %8 = load ptr, ptr @clk_base, align 4
  %add.ptr16 = getelementptr i8, ptr %8, i32 884
  %call17 = tail call ptr @tegra_clk_register_divider(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.31, ptr noundef %add.ptr16, i32 noundef 0, i8 noundef zeroext 4, i8 noundef zeroext 16, i8 noundef zeroext 8, i8 noundef zeroext 1, ptr noundef null) #5
  %call18 = tail call i32 @clk_register_clkdev(ptr noundef %call17, ptr noundef nonnull @.str.35, ptr noundef null) #5
  %9 = load ptr, ptr @clk_base, align 4
  %add.ptr19 = getelementptr i8, ptr %9, i32 880
  %call20 = tail call ptr @tegra_clk_register_super_mux(ptr noundef nonnull @.str.36, ptr noundef nonnull @cclk_lp_parents, i8 noundef zeroext 10, i32 noundef 4, ptr noundef %add.ptr19, i8 noundef zeroext 1, i8 noundef zeroext 4, i8 noundef zeroext 8, i8 noundef zeroext 9, ptr noundef null) #5
  %10 = load ptr, ptr @clks, align 4
  %arrayidx21 = getelementptr ptr, ptr %10, i32 213
  %11 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call20, ptr %arrayidx21, align 4
  %call22 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.32, i32 noundef 4, i32 noundef 1, i32 noundef 2) #5
  %12 = load ptr, ptr @clks, align 4
  %arrayidx23 = getelementptr ptr, ptr %12, i32 214
  %13 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call22, ptr %arrayidx23, align 4
  %14 = load ptr, ptr @clk_base, align 4
  %15 = load ptr, ptr @pmc_base, align 4
  tail call void @tegra_super_clk_gen4_init(ptr noundef %14, ptr noundef %15, ptr noundef nonnull @tegra30_clks, ptr noundef null) #5
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra30_periph_clk_init() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @clk_base, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @periph_clk_enb_refcnt to i32))
  %1 = load ptr, ptr @periph_clk_enb_refcnt, align 4
  %call = tail call ptr @tegra_clk_register_periph_gate(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.21, i8 noundef zeroext 0, ptr noundef %0, i32 noundef 0, i32 noundef 48, ptr noundef %1) #5
  %2 = load ptr, ptr @clks, align 4
  %arrayidx = getelementptr ptr, ptr %2, i32 48
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %arrayidx, align 4
  %4 = load ptr, ptr @clk_base, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @periph_clk_enb_refcnt to i32))
  %5 = load ptr, ptr @periph_clk_enb_refcnt, align 4
  %call1 = tail call ptr @tegra_clk_register_periph_gate(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.38, i8 noundef zeroext 0, ptr noundef %4, i32 noundef 0, i32 noundef 70, ptr noundef %5) #5
  %6 = load ptr, ptr @clks, align 4
  %arrayidx2 = getelementptr ptr, ptr %6, i32 70
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call1, ptr %arrayidx2, align 4
  %8 = load ptr, ptr @clk_base, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @periph_clk_enb_refcnt to i32))
  %9 = load ptr, ptr @periph_clk_enb_refcnt, align 4
  %call3 = tail call ptr @tegra_clk_register_periph_gate(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.38, i8 noundef zeroext 0, ptr noundef %8, i32 noundef 0, i32 noundef 72, ptr noundef %9) #5
  %10 = load ptr, ptr @clks, align 4
  %arrayidx4 = getelementptr ptr, ptr %10, i32 72
  %11 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call3, ptr %arrayidx4, align 4
  %12 = load ptr, ptr @clk_base, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 412
  %call5 = tail call ptr @tegra20_clk_register_emc(ptr noundef %add.ptr, i1 noundef zeroext true) #5
  %13 = load ptr, ptr @clks, align 4
  %arrayidx6 = getelementptr ptr, ptr %13, i32 57
  %14 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call5, ptr %arrayidx6, align 4
  %15 = load ptr, ptr @clk_base, align 4
  %add.ptr7 = getelementptr i8, ptr %15, i32 412
  %call8 = tail call ptr @tegra_clk_register_mc(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, ptr noundef %add.ptr7, ptr noundef null) #5
  %16 = load ptr, ptr @clks, align 4
  %arrayidx9 = getelementptr ptr, ptr %16, i32 32
  %17 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call8, ptr %arrayidx9, align 4
  %18 = load ptr, ptr @clk_base, align 4
  %add.ptr10 = getelementptr i8, ptr %18, i32 1164
  %call11 = tail call ptr @clk_register_gate(ptr noundef null, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 0, ptr noundef %add.ptr10, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull @cml_lock) #5
  %19 = load ptr, ptr @clks, align 4
  %arrayidx12 = getelementptr ptr, ptr %19, i32 215
  %20 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call11, ptr %arrayidx12, align 4
  %21 = load ptr, ptr @clk_base, align 4
  %add.ptr13 = getelementptr i8, ptr %21, i32 1164
  %call14 = tail call ptr @clk_register_gate(ptr noundef null, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.47, i32 noundef 0, ptr noundef %add.ptr13, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull @cml_lock) #5
  %22 = load ptr, ptr @clks, align 4
  %arrayidx15 = getelementptr ptr, ptr %22, i32 216
  %23 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call14, ptr %arrayidx15, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.049 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx16 = getelementptr [9 x %struct.tegra_periph_init_data], ptr @tegra_periph_clk_list, i32 0, i32 %i.049
  %24 = load ptr, ptr @clk_base, align 4
  %call17 = tail call ptr @tegra_clk_register_periph_data(ptr noundef %24, ptr noundef %arrayidx16) #5
  %25 = load ptr, ptr @clks, align 4
  %clk_id = getelementptr [9 x %struct.tegra_periph_init_data], ptr @tegra_periph_clk_list, i32 0, i32 %i.049, i32 1
  %26 = ptrtoint ptr %clk_id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %clk_id, align 4
  %arrayidx18 = getelementptr ptr, ptr %25, i32 %27
  %28 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call17, ptr %arrayidx18, align 4
  %inc = add nuw nsw i32 %i.049, 1
  %exitcond.not = icmp eq i32 %inc, 9
  br i1 %exitcond.not, label %for.body21, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body21:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %29 = load ptr, ptr @tegra_periph_nodiv_clk_list, align 4
  %30 = load ptr, ptr getelementptr inbounds ([1 x %struct.tegra_periph_init_data], ptr @tegra_periph_nodiv_clk_list, i32 0, i32 0, i32 2), align 4
  %31 = load i32, ptr getelementptr inbounds ([1 x %struct.tegra_periph_init_data], ptr @tegra_periph_nodiv_clk_list, i32 0, i32 0, i32 3), align 4
  %32 = load ptr, ptr @clk_base, align 4
  %33 = load i32, ptr getelementptr inbounds ([1 x %struct.tegra_periph_init_data], ptr @tegra_periph_nodiv_clk_list, i32 0, i32 0, i32 5), align 4
  %call23 = tail call ptr @tegra_clk_register_periph_nodiv(ptr noundef %29, ptr noundef %30, i32 noundef %31, ptr noundef getelementptr inbounds ([1 x %struct.tegra_periph_init_data], ptr @tegra_periph_nodiv_clk_list, i32 0, i32 0, i32 4), ptr noundef %32, i32 noundef %33) #5
  %34 = load ptr, ptr @clks, align 4
  %35 = load i32, ptr getelementptr inbounds ([1 x %struct.tegra_periph_init_data], ptr @tegra_periph_nodiv_clk_list, i32 0, i32 0, i32 1), align 4
  %arrayidx25 = getelementptr ptr, ptr %34, i32 %35
  %36 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call23, ptr %arrayidx25, align 4
  %37 = load ptr, ptr @clk_base, align 4
  %38 = load ptr, ptr @pmc_base, align 4
  tail call void @tegra_periph_clk_init(ptr noundef %37, ptr noundef %38, ptr noundef nonnull @tegra30_clks, ptr noundef nonnull @pll_p_params) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_audio_clk_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_init_dup_clks(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_add_of_provider(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tegra30_clk_src_onecell_get(ptr noundef %clkspec, ptr noundef %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec, i32 0, i32 2
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %land.lhs.true8 [
    i32 4, label %entry.if.end_crit_edge
    i32 214, label %entry.if.end_crit_edge32
    i32 5, label %entry.if.end_crit_edge33
  ]

entry.if.end_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

entry.if.end_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true8:                                   ; preds = %entry
  %.b31 = load i1, ptr @tegra30_car_initialized, align 1
  br i1 %.b31, label %land.lhs.true8.if.end_crit_edge, label %land.lhs.true8.cleanup_crit_edge

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true8.if.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %land.lhs.true8.if.end_crit_edge, %entry.if.end_crit_edge, %entry.if.end_crit_edge32, %entry.if.end_crit_edge33
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 57, i32 %4)
  %cmp16 = icmp eq i32 %4, 57
  br i1 %cmp16, label %if.then17, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %call18 = tail call zeroext i1 @tegra20_clk_emc_driver_available(ptr noundef %call13) #5
  %spec.select = select i1 %call18, ptr %call9, ptr inttoptr (i32 -517 to ptr)
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge
  %retval.0 = phi ptr [ %call9, %if.end.cleanup_crit_edge ], [ %call9, %if.end12.cleanup_crit_edge ], [ inttoptr (i32 -517 to ptr), %land.lhs.true8.cleanup_crit_edge ], [ %spec.select, %if.then17 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_divider(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_pll_out(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_pll(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_pllu(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_mux_table(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_cclk_pre_pllx_rate_change() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_cclk_post_pllx_rate_change() #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_register_clkdev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_super_cclk(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_super_mux(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_super_clk_gen4_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_periph_gate(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra20_clk_register_emc(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_mc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_gate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_periph_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_periph_nodiv(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_periph_clk_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tegra20_clk_emc_driver_available(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra30_wait_cpu_in_reset(i32 noundef %cpu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl nuw i32 1, %cpu
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %0 = load ptr, ptr @clk_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 1136
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !482
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !483
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !484
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !485
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
define internal void @tegra30_put_cpu_in_reset(i32 noundef %cpu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !486
  tail call void @arm_heavy_mb() #5
  %shl = shl i32 4369, %cpu
  %0 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %1 = load ptr, ptr @clk_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #5, !srcloc !487
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !488
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra30_cpu_out_of_reset(i32 noundef %cpu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !489
  tail call void @arm_heavy_mb() #5
  %shl = shl i32 4369, %cpu
  %0 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %1 = load ptr, ptr @clk_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 836
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #5, !srcloc !487
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !490
  tail call void @arm_heavy_mb() #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra30_enable_cpu_clock(i32 noundef %cpu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !491
  tail call void @arm_heavy_mb() #5
  %add = add i32 %cpu, 8
  %shl = shl nuw i32 1, %add
  %0 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %1 = load ptr, ptr @clk_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 844
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #5, !srcloc !487
  %2 = load ptr, ptr @clk_base, align 4
  %add.ptr1 = getelementptr i8, ptr %2, i32 844
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #5, !srcloc !482
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !492
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra30_disable_cpu_clock(i32 noundef %cpu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @clk_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 76
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !482
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !493
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !494
  tail call void @arm_heavy_mb() #5
  %add = add i32 %cpu, 8
  %shl = shl nuw i32 1, %add
  %or = or i32 %2, %shl
  %3 = tail call i32 @llvm.bswap.i32(i32 %or)
  %4 = load ptr, ptr @clk_base, align 4
  %add.ptr2 = getelementptr i8, ptr %4, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %3) #5, !srcloc !487
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @tegra30_cpu_rail_off_ready() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @clk_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 1136
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !482
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !495
  %call2 = tail call zeroext i1 @tegra_pmc_cpu_is_powered(i32 noundef 1) #5
  br i1 %call2, label %entry.lor.end_crit_edge, label %lor.lhs.false

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end

lor.lhs.false:                                    ; preds = %entry
  %call3 = tail call zeroext i1 @tegra_pmc_cpu_is_powered(i32 noundef 2) #5
  br i1 %call3, label %lor.lhs.false.lor.end_crit_edge, label %lor.rhs

lor.lhs.false.lor.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call zeroext i1 @tegra_pmc_cpu_is_powered(i32 noundef 3) #5
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.lor.end_crit_edge, %entry.lor.end_crit_edge
  %2 = phi i1 [ true, %lor.lhs.false.lor.end_crit_edge ], [ true, %entry.lor.end_crit_edge ], [ %call4, %lor.rhs ]
  %3 = and i32 %1, 234881024
  call void @__sanitizer_cov_trace_const_cmp4(i32 234881024, i32 %3)
  %cmp.not = icmp ne i32 %3, 234881024
  %brmerge = select i1 %cmp.not, i1 true, i1 %2
  %not.brmerge = xor i1 %brmerge, true
  ret i1 %not.brmerge
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra30_cpu_clock_suspend() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @clk_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 468
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !482
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !496
  store i32 %2, ptr @tegra30_cpu_clk_sctx.3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !497
  tail call void @arm_heavy_mb() #5
  %3 = load ptr, ptr @clk_base, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 192) #5, !srcloc !487
  %4 = load ptr, ptr @clk_base, align 4
  %add.ptr5 = getelementptr i8, ptr %4, i32 32
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #5, !srcloc !482
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !498
  store i32 %6, ptr @tegra30_cpu_clk_sctx.2, align 4
  %7 = load ptr, ptr @clk_base, align 4
  %add.ptr11 = getelementptr i8, ptr %7, i32 224
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #5, !srcloc !482
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !499
  store i32 %9, ptr @tegra30_cpu_clk_sctx.1, align 4
  %10 = load ptr, ptr @clk_base, align 4
  %add.ptr17 = getelementptr i8, ptr %10, i32 228
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #5, !srcloc !482
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !500
  store i32 %12, ptr @tegra30_cpu_clk_sctx.0, align 4
  %13 = load ptr, ptr @clk_base, align 4
  %add.ptr23 = getelementptr i8, ptr %13, i32 36
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #5, !srcloc !482
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !501
  store i32 %15, ptr @tegra30_cpu_clk_sctx.4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra30_cpu_clock_resume() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @clk_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 32
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !482
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !502
  %shr = lshr i32 %2, 28
  %3 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.188)
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
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/tegra/clk-tegra30.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1152, 0\0A.popsection", ""() #5, !srcloc !503
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
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #5, !srcloc !482
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = load ptr, ptr @clk_base, align 4
  %add.ptr20 = getelementptr i8, ptr %7, i32 224
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #5, !srcloc !482
  %9 = load i32, ptr @tegra30_cpu_clk_sctx.0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %9)
  %cmp23.not = icmp eq i32 %6, %9
  br i1 %cmp23.not, label %lor.lhs.false, label %if.then14.do.body26_crit_edge

if.then14.do.body26_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body26

lor.lhs.false:                                    ; preds = %if.then14
  %10 = tail call i32 @llvm.bswap.i32(i32 %8)
  %11 = load i32, ptr @tegra30_cpu_clk_sctx.1, align 4
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !504
  tail call void @arm_heavy_mb() #5
  %12 = load i32, ptr @tegra30_cpu_clk_sctx.0, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %14 = load ptr, ptr @clk_base, align 4
  %add.ptr29 = getelementptr i8, ptr %14, i32 228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %13) #5, !srcloc !487
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !505
  tail call void @arm_heavy_mb() #5
  %15 = load i32, ptr @tegra30_cpu_clk_sctx.1, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %17 = load ptr, ptr @clk_base, align 4
  %add.ptr33 = getelementptr i8, ptr %17, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %16) #5, !srcloc !487
  %18 = load i32, ptr @tegra30_cpu_clk_sctx.1, align 4
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !506
  tail call void @arm_heavy_mb() #5
  %20 = load i32, ptr @tegra30_cpu_clk_sctx.4, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %22 = load ptr, ptr @clk_base, align 4
  %add.ptr42 = getelementptr i8, ptr %22, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 %21) #5, !srcloc !487
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !507
  tail call void @arm_heavy_mb() #5
  %23 = load i32, ptr @tegra30_cpu_clk_sctx.2, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %25 = load ptr, ptr @clk_base, align 4
  %add.ptr46 = getelementptr i8, ptr %25, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 %24) #5, !srcloc !487
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !508
  tail call void @arm_heavy_mb() #5
  %26 = load i32, ptr @tegra30_cpu_clk_sctx.3, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %28 = load ptr, ptr @clk_base, align 4
  %add.ptr50 = getelementptr i8, ptr %28, i32 468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 %27) #5, !srcloc !487
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tegra_pmc_cpu_is_powered(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra30_car_probe(ptr nocapture noundef readnone %pdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @clk_base, align 4
  %1 = load ptr, ptr @pmc_base, align 4
  %call = tail call ptr @tegra_clk_register_pll(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.17, ptr noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef nonnull @pll_c_params, ptr noundef null) #5
  %2 = load ptr, ptr @clks, align 4
  %arrayidx = getelementptr ptr, ptr %2, i32 175
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %arrayidx, align 4
  %4 = load ptr, ptr @clk_base, align 4
  %5 = load ptr, ptr @pmc_base, align 4
  %call1 = tail call ptr @tegra_clk_register_plle(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.24, ptr noundef %4, ptr noundef %5, i32 noundef 64, ptr noundef nonnull @pll_e_params, ptr noundef null) #5
  %6 = load ptr, ptr @clks, align 4
  %arrayidx2 = getelementptr ptr, ptr %6, i32 193
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call1, ptr %arrayidx2, align 4
  %8 = load ptr, ptr @clk_base, align 4
  %9 = load ptr, ptr @pmc_base, align 4
  %call3 = tail call ptr @tegra_clk_register_pll(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.17, ptr noundef %8, ptr noundef %9, i32 noundef 1, ptr noundef nonnull @pll_m_params, ptr noundef null) #5
  %10 = load ptr, ptr @clks, align 4
  %arrayidx4 = getelementptr ptr, ptr %10, i32 177
  %11 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call3, ptr %arrayidx4, align 4
  %12 = load ptr, ptr @clk_base, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 40
  %call5 = tail call ptr @tegra_clk_register_super_mux(ptr noundef nonnull @.str.78, ptr noundef nonnull @sclk_parents, i8 noundef zeroext 8, i32 noundef 2052, ptr noundef %add.ptr, i8 noundef zeroext 0, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef null) #5
  %13 = load ptr, ptr @clks, align 4
  %arrayidx6 = getelementptr ptr, ptr %13, i32 210
  %14 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call5, ptr %arrayidx6, align 4
  tail call void @tegra_register_devclks(ptr noundef nonnull @devclks, i32 noundef 147) #5
  %15 = load ptr, ptr @clks, align 4
  tail call void @tegra_init_from_table(ptr noundef nonnull @init_table, ptr noundef %15, i32 noundef 309) #5
  store i1 true, ptr @tegra30_car_initialized, align 1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_plle(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_register_devclks(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_init_from_table(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 231)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 231)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !201, !203, !205, !206, !208, !210, !212, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !459, !461, !463, !465, !467, !469}
!llvm.module.flags = !{!471, !472, !473, !474, !475, !476, !477, !478}
!llvm.ident = !{!479}

!0 = !{ptr @__of_table_tegra30, !1, !"__of_table_tegra30", i1 false, i1 false}
!1 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 1352, i32 1}
!2 = !{ptr @__initcall__kmod_clk_tegra30__183_1420_tegra30_car_init2, !3, !"__initcall__kmod_clk_tegra30__183_1420_tegra30_car_init2", i1 false, i1 false}
!3 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 1420, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 1312, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @tegra30_clock_init._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @tegra30_clock_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 1318, i32 3}
!12 = !{ptr @tegra30_clock_init._entry.3, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @tegra30_clock_init._entry_ptr.5, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 1324, i32 3}
!16 = !{ptr @tegra30_clock_init._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @tegra30_clock_init._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @clk_base, !19, !"clk_base", i1 false, i1 false}
!19 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 151, i32 22}
!20 = !{ptr @pmc_match, !21, !"pmc_match", i1 false, i1 false}
!21 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 1265, i32 34}
!22 = !{ptr @pmc_base, !23, !"pmc_base", i1 false, i1 false}
!23 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 152, i32 22}
!24 = !{ptr @clks, !25, !"clks", i1 false, i1 false}
!25 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 185, i32 21}
!26 = !{ptr @tegra30_clks, !27, !"tegra30_clks", i1 false, i1 false}
!27 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 688, i32 25}
!28 = !{ptr @tegra30_input_freq, !29, !"tegra30_input_freq", i1 false, i1 false}
!29 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 528, i32 22}
!30 = !{ptr @input_freq, !31, !"input_freq", i1 false, i1 false}
!31 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 153, i32 22}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 819, i32 35}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 819, i32 53}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 822, i32 35}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 828, i32 35}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 828, i32 53}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 831, i32 35}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 837, i32 31}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 837, i32 40}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 842, i32 40}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 847, i32 32}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 852, i32 31}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 857, i32 40}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 862, i32 31}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 867, i32 40}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 872, i32 8}
!62 = !{ptr @pll_x_params, !63, !"pll_x_params", i1 false, i1 false}
!63 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 490, i32 36}
!64 = !{ptr @pll_x_freq_table, !65, !"pll_x_freq_table", i1 false, i1 false}
!65 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 287, i32 40}
!66 = !{ptr @pll_u_params, !67, !"pll_u_params", i1 false, i1 false}
!67 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 472, i32 36}
!68 = !{ptr @pllu_p, !69, !"pllu_p", i1 false, i1 false}
!69 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 272, i32 30}
!70 = !{ptr @pll_u_freq_table, !71, !"pll_u_freq_table", i1 false, i1 false}
!71 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 278, i32 40}
!72 = !{ptr @pll_d_params, !73, !"pll_d_params", i1 false, i1 false}
!73 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 438, i32 36}
!74 = !{ptr @pll_d_freq_table, !75, !"pll_d_freq_table", i1 false, i1 false}
!75 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 254, i32 40}
!76 = !{ptr @.str.25, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 156, i32 8}
!78 = !{ptr @pll_d_lock, !77, !"pll_d_lock", i1 false, i1 false}
!79 = !{ptr @pll_d2_params, !80, !"pll_d2_params", i1 false, i1 false}
!80 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 455, i32 36}
!81 = !{ptr @.str.26, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 812, i32 51}
!83 = !{ptr @pll_e_parents, !84, !"pll_e_parents", i1 false, i1 false}
!84 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 812, i32 20}
!85 = !{ptr @.str.27, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 897, i32 35}
!87 = !{ptr @.str.28, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 906, i32 35}
!89 = !{ptr @.str.29, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 906, i32 55}
!91 = !{ptr @.str.30, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 915, i32 35}
!93 = !{ptr @.str.31, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 915, i32 55}
!95 = !{ptr @.str.32, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 921, i32 38}
!97 = !{ptr @.str.33, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 932, i32 35}
!99 = !{ptr @.str.34, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 941, i32 35}
!101 = !{ptr @.str.35, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 950, i32 35}
!103 = !{ptr @.str.36, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 956, i32 37}
!105 = !{ptr @.str.37, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 965, i32 40}
!107 = !{ptr @.str.38, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 878, i32 41}
!109 = !{ptr @.str.39, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 878, i32 59}
!111 = !{ptr @.str.40, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 880, i32 26}
!113 = !{ptr @cclk_g_parents, !114, !"cclk_g_parents", i1 false, i1 false}
!114 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 878, i32 20}
!115 = !{ptr @cclk_lp_parents, !116, !"cclk_lp_parents", i1 false, i1 false}
!116 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 881, i32 20}
!117 = !{ptr @.str.41, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 1008, i32 39}
!119 = !{ptr @.str.42, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 1013, i32 39}
!121 = !{ptr @.str.43, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 1018, i32 39}
!123 = !{ptr @.str.44, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 1027, i32 30}
!125 = !{ptr @.str.45, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 1027, i32 36}
!127 = !{ptr @.str.46, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 1032, i32 32}
!129 = !{ptr @.str.47, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 1032, i32 40}
!131 = !{ptr @.str.48, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 1037, i32 32}
!133 = !{ptr @.str.49, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 155, i32 8}
!135 = !{ptr @cml_lock, !134, !"cml_lock", i1 false, i1 false}
!136 = !{ptr @.str.50, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 986, i32 2}
!138 = !{ptr @.str.51, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 987, i32 2}
!140 = !{ptr @.str.52, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 988, i32 2}
!142 = !{ptr @.str.53, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 989, i32 2}
!144 = !{ptr @.str.54, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 990, i32 2}
!146 = !{ptr @.str.55, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 991, i32 2}
!148 = !{ptr @.str.56, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 992, i32 2}
!150 = !{ptr @.str.57, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 993, i32 2}
!152 = !{ptr @.str.58, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 994, i32 2}
!154 = !{ptr @tegra_periph_clk_list, !155, !"tegra_periph_clk_list", i1 false, i1 false}
!155 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 985, i32 38}
!156 = !{ptr @.str.59, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 975, i32 44}
!158 = !{ptr @.str.60, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 975, i32 58}
!160 = !{ptr @spdif_out_parents, !161, !"spdif_out_parents", i1 false, i1 false}
!161 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 975, i32 20}
!162 = !{ptr @mux_pllacp_clkm, !163, !"mux_pllacp_clkm", i1 false, i1 false}
!163 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 972, i32 20}
!164 = !{ptr @mux_pllmcpa, !165, !"mux_pllmcpa", i1 false, i1 false}
!165 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 977, i32 20}
!166 = !{ptr @mux_pllpcm_clkm, !167, !"mux_pllpcm_clkm", i1 false, i1 false}
!167 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 974, i32 20}
!168 = !{ptr @mux_pllpmdacd2_clkm, !169, !"mux_pllpmdacd2_clkm", i1 false, i1 false}
!169 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 978, i32 20}
!170 = !{ptr @pwm_parents, !171, !"pwm_parents", i1 false, i1 false}
!171 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 983, i32 20}
!172 = !{ptr @.str.61, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 998, i32 2}
!174 = !{ptr @tegra_periph_nodiv_clk_list, !175, !"tegra_periph_nodiv_clk_list", i1 false, i1 false}
!175 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 997, i32 38}
!176 = !{ptr @mux_plld_out0_plld2_out0, !177, !"mux_plld_out0_plld2_out0", i1 false, i1 false}
!177 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 981, i32 20}
!178 = !{ptr @pll_p_params, !179, !"pll_p_params", i1 false, i1 false}
!179 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 403, i32 36}
!180 = !{ptr @pll_p_freq_table, !181, !"pll_p_freq_table", i1 false, i1 false}
!181 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 235, i32 40}
!182 = !{ptr @.str.62, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 1271, i32 4}
!184 = !{ptr @.str.63, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 1271, i32 45}
!186 = !{ptr @tegra30_audio_plls, !187, !"tegra30_audio_plls", i1 false, i1 false}
!187 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 1270, i32 36}
!188 = !{ptr @pll_a_params, !189, !"pll_a_params", i1 false, i1 false}
!189 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 421, i32 36}
!190 = !{ptr @pll_a_freq_table, !191, !"pll_a_freq_table", i1 false, i1 false}
!191 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 244, i32 40}
!192 = !{ptr @.str.64, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 1250, i32 2}
!194 = !{ptr @.str.65, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 1251, i32 2}
!196 = !{ptr @.str.66, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 1252, i32 2}
!198 = !{ptr @.str.67, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 1253, i32 2}
!200 = !{ptr @.str.68, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @.str.69, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 1254, i32 2}
!203 = !{ptr @.str.70, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 1255, i32 2}
!205 = !{ptr @.str.71, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @.str.72, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 1256, i32 2}
!208 = !{ptr @.str.73, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 1258, i32 2}
!210 = !{ptr @.str.74, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 1259, i32 2}
!212 = !{ptr @.str.75, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @.str.76, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 1260, i32 2}
!215 = !{ptr @tegra_clk_duplicates, !216, !"tegra_clk_duplicates", i1 false, i1 false}
!216 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 1249, i32 35}
!217 = distinct !{null, !218, !"tegra30_car_initialized", i1 false, i1 false}
!218 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 1274, i32 13}
!219 = !{ptr @tegra30_cpu_car_ops, !220, !"tegra30_cpu_car_ops", i1 false, i1 false}
!220 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 1186, i32 33}
!221 = distinct !{null, !222, !"tegra30_cpu_clk_sctx", i1 false, i1 false}
!222 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 148, i32 3}
!223 = !{ptr @.str.77, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 1404, i32 11}
!225 = !{ptr @tegra30_car_driver, !226, !"tegra30_car_driver", i1 false, i1 false}
!226 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 1402, i32 31}
!227 = !{ptr @.str.78, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 1383, i32 37}
!229 = !{ptr @pll_c_params, !230, !"pll_c_params", i1 false, i1 false}
!230 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 353, i32 36}
!231 = !{ptr @pll_c_freq_table, !232, !"pll_c_freq_table", i1 false, i1 false}
!232 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 187, i32 40}
!233 = !{ptr @pll_e_params, !234, !"pll_e_params", i1 false, i1 false}
!234 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 509, i32 36}
!235 = !{ptr @plle_p, !236, !"plle_p", i1 false, i1 false}
!236 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 339, i32 30}
!237 = !{ptr @pll_e_freq_table, !238, !"pll_e_freq_table", i1 false, i1 false}
!238 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 345, i32 40}
!239 = !{ptr @pll_m_params, !240, !"pll_m_params", i1 false, i1 false}
!240 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 382, i32 36}
!241 = !{ptr @pllm_nmp, !242, !"pllm_nmp", i1 false, i1 false}
!242 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 370, i32 23}
!243 = !{ptr @pll_m_freq_table, !244, !"pll_m_freq_table", i1 false, i1 false}
!244 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 221, i32 40}
!245 = !{ptr @.str.79, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 886, i32 25}
!247 = !{ptr @sclk_parents, !248, !"sclk_parents", i1 false, i1 false}
!248 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 885, i32 20}
!249 = !{ptr @.str.80, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 558, i32 14}
!251 = !{ptr @.str.81, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 559, i32 14}
!253 = !{ptr @.str.82, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 560, i32 14}
!255 = !{ptr @.str.83, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 561, i32 14}
!257 = !{ptr @.str.84, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 562, i32 14}
!259 = !{ptr @.str.85, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 563, i32 14}
!261 = !{ptr @.str.86, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 564, i32 14}
!263 = !{ptr @.str.87, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 565, i32 14}
!265 = !{ptr @.str.88, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 566, i32 14}
!267 = !{ptr @.str.89, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 567, i32 14}
!269 = !{ptr @.str.90, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 568, i32 14}
!271 = !{ptr @.str.91, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 569, i32 14}
!273 = !{ptr @.str.92, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 570, i32 14}
!275 = !{ptr @.str.93, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 571, i32 14}
!277 = !{ptr @.str.94, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 572, i32 14}
!279 = !{ptr @.str.95, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 573, i32 14}
!281 = !{ptr @.str.96, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 574, i32 14}
!283 = !{ptr @.str.97, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 575, i32 14}
!285 = !{ptr @.str.98, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 577, i32 14}
!287 = !{ptr @.str.99, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 578, i32 14}
!289 = !{ptr @.str.100, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 579, i32 14}
!291 = !{ptr @.str.101, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 583, i32 14}
!293 = !{ptr @.str.102, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 584, i32 14}
!295 = !{ptr @.str.103, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 588, i32 14}
!297 = !{ptr @.str.104, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 589, i32 14}
!299 = !{ptr @.str.105, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 590, i32 14}
!301 = !{ptr @.str.106, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 595, i32 32}
!303 = !{ptr @.str.107, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 595, i32 14}
!305 = !{ptr @.str.108, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 599, i32 32}
!307 = !{ptr @.str.109, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 600, i32 31}
!309 = !{ptr @.str.110, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 600, i32 14}
!311 = !{ptr @.str.111, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 601, i32 14}
!313 = !{ptr @.str.112, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 602, i32 32}
!315 = !{ptr @.str.113, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 604, i32 14}
!317 = !{ptr @.str.114, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 605, i32 37}
!319 = !{ptr @.str.115, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 605, i32 14}
!321 = !{ptr @.str.116, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 606, i32 33}
!323 = !{ptr @.str.117, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 606, i32 14}
!325 = !{ptr @.str.118, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 607, i32 36}
!327 = !{ptr @.str.119, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 607, i32 14}
!329 = !{ptr @.str.120, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 608, i32 14}
!331 = !{ptr @.str.121, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 609, i32 14}
!333 = !{ptr @.str.122, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 610, i32 14}
!335 = !{ptr @.str.123, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 611, i32 14}
!337 = !{ptr @.str.124, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 612, i32 14}
!339 = !{ptr @.str.125, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 613, i32 14}
!341 = !{ptr @.str.126, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 614, i32 14}
!343 = !{ptr @.str.127, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 615, i32 14}
!345 = !{ptr @.str.128, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 616, i32 14}
!347 = !{ptr @.str.129, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 617, i32 14}
!349 = !{ptr @.str.130, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 618, i32 14}
!351 = !{ptr @.str.131, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 619, i32 14}
!353 = !{ptr @.str.132, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 620, i32 14}
!355 = !{ptr @.str.133, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 621, i32 14}
!357 = !{ptr @.str.134, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 622, i32 14}
!359 = !{ptr @.str.135, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 623, i32 37}
!361 = !{ptr @.str.136, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 624, i32 14}
!363 = !{ptr @.str.137, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 626, i32 14}
!365 = !{ptr @.str.138, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 627, i32 14}
!367 = !{ptr @.str.139, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 628, i32 14}
!369 = !{ptr @.str.140, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 629, i32 14}
!371 = !{ptr @.str.141, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 630, i32 14}
!373 = !{ptr @.str.142, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 631, i32 14}
!375 = !{ptr @.str.143, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 632, i32 14}
!377 = !{ptr @.str.144, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 633, i32 14}
!379 = !{ptr @.str.145, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 634, i32 14}
!381 = !{ptr @.str.146, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 635, i32 14}
!383 = !{ptr @.str.147, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 636, i32 14}
!385 = !{ptr @.str.148, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 637, i32 14}
!387 = !{ptr @.str.149, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 638, i32 14}
!389 = !{ptr @.str.150, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 639, i32 14}
!391 = !{ptr @.str.151, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 640, i32 14}
!393 = !{ptr @.str.152, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 641, i32 14}
!395 = !{ptr @.str.153, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 642, i32 14}
!397 = !{ptr @.str.154, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 643, i32 14}
!399 = !{ptr @.str.155, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 644, i32 14}
!401 = !{ptr @.str.156, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 645, i32 14}
!403 = !{ptr @.str.157, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 646, i32 14}
!405 = !{ptr @.str.158, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 647, i32 14}
!407 = !{ptr @.str.159, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 649, i32 14}
!409 = !{ptr @.str.160, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 650, i32 14}
!411 = !{ptr @.str.161, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 651, i32 14}
!413 = !{ptr @.str.162, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 652, i32 14}
!415 = !{ptr @.str.163, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 653, i32 14}
!417 = !{ptr @.str.164, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 655, i32 14}
!419 = !{ptr @.str.165, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 657, i32 14}
!421 = !{ptr @.str.166, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 658, i32 14}
!423 = !{ptr @.str.167, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 659, i32 14}
!425 = !{ptr @.str.168, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 660, i32 14}
!427 = !{ptr @.str.169, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 661, i32 14}
!429 = !{ptr @.str.170, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 662, i32 14}
!431 = !{ptr @.str.171, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 663, i32 14}
!433 = !{ptr @.str.172, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 664, i32 14}
!435 = !{ptr @.str.173, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 665, i32 14}
!437 = !{ptr @.str.174, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 666, i32 14}
!439 = !{ptr @.str.175, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 667, i32 14}
!441 = !{ptr @.str.176, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 668, i32 35}
!443 = !{ptr @.str.177, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 668, i32 14}
!445 = !{ptr @.str.178, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 669, i32 35}
!447 = !{ptr @.str.179, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 670, i32 35}
!449 = !{ptr @.str.180, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 671, i32 35}
!451 = !{ptr @.str.181, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 672, i32 35}
!453 = !{ptr @.str.182, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 673, i32 14}
!455 = !{ptr @.str.183, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 674, i32 14}
!457 = !{ptr @.str.184, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 675, i32 14}
!459 = !{ptr @.str.185, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 676, i32 14}
!461 = !{ptr @.str.186, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 677, i32 14}
!463 = !{ptr @.str.187, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 684, i32 14}
!465 = !{ptr @devclks, !466, !"devclks", i1 false, i1 false}
!466 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 538, i32 28}
!467 = !{ptr @init_table, !468, !"init_table", i1 false, i1 false}
!468 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 1199, i32 36}
!469 = !{ptr @tegra30_car_match, !470, !"tegra30_car_match", i1 false, i1 false}
!470 = !{!"../drivers/clk/tegra/clk-tegra30.c", i32 1397, i32 34}
!471 = !{i32 1, !"wchar_size", i32 2}
!472 = !{i32 1, !"min_enum_size", i32 4}
!473 = !{i32 8, !"branch-target-enforcement", i32 0}
!474 = !{i32 8, !"sign-return-address", i32 0}
!475 = !{i32 8, !"sign-return-address-all", i32 0}
!476 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!477 = !{i32 7, !"uwtable", i32 1}
!478 = !{i32 7, !"frame-pointer", i32 2}
!479 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!480 = !{i64 2153143619, i64 2153144116, i64 2153143656, i64 2153143712, i64 2153143746, i64 2153143770, i64 2153143811, i64 2153143832, i64 2153143860, i64 2153143894}
!481 = !{i64 2153146663, i64 2153147160, i64 2153146700, i64 2153146756, i64 2153146790, i64 2153146814, i64 2153146855, i64 2153146876, i64 2153146904, i64 2153146938}
!482 = !{i64 737964}
!483 = !{i64 2153121455}
!484 = !{i64 2153121730}
!485 = !{i64 2153121572}
!486 = !{i64 2153121991}
!487 = !{i64 737546}
!488 = !{i64 2153122304}
!489 = !{i64 2153122565}
!490 = !{i64 2153122941}
!491 = !{i64 2153123199}
!492 = !{i64 2153123909}
!493 = !{i64 2153124392}
!494 = !{i64 2153124654}
!495 = !{i64 2153125381}
!496 = !{i64 2153125869}
!497 = !{i64 2153126092}
!498 = !{i64 2153126761}
!499 = !{i64 2153127244}
!500 = !{i64 2153127727}
!501 = !{i64 2153128210}
!502 = !{i64 2153128693}
!503 = !{i64 2153128964, i64 2153129461, i64 2153129001, i64 2153129057, i64 2153129091, i64 2153129115, i64 2153129156, i64 2153129177, i64 2153129205, i64 2153129239}
!504 = !{i64 2153131107}
!505 = !{i64 2153131605}
!506 = !{i64 2153132654}
!507 = !{i64 2153133161}
!508 = !{i64 2153133665}
