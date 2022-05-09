; ModuleID = '/llk/IR_all_yes/drivers/clk/keystone/pll.c_pt.bc'
source_filename = "../drivers/clk/keystone/pll.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_pll_data = type { i8, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.clk_pll = type { %struct.clk_hw, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }

@__of_table_keystone_pll_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,keystone,pll-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_keystone_pll_clk_init }, section "__clk_of_table", align 4
@__of_table_keystone_main_pll_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,keystone,main-pll-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_keystone_main_pll_clk_init }, section "__clk_of_table", align 4
@__of_table_pll_divider_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,keystone,pll-divider-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_pll_div_clk_init }, section "__clk_of_table", align 4
@__of_table_pll_mux_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,keystone,pll-mux-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_pll_mux_clk_init }, section "__clk_of_table", align 4
@__UNIQUE_ID_file181 = internal constant [34 x i8] c"pll.file=drivers/clk/keystone/pll\00", section ".modinfo", align 1
@__UNIQUE_ID_license182 = internal constant [16 x i8] c"pll.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description183 = internal constant [54 x i8] c"pll.description=PLL clock driver for Keystone devices\00", section ".modinfo", align 1
@__UNIQUE_ID_author184 = internal constant [50 x i8] c"pll.author=Murali Karicheri <m-karicheri2@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author185 = internal constant [56 x i8] c"pll.author=Santosh Shilimkar <santosh.shilimkar@ti.com>\00", section ".modinfo", align 1
@_of_pll_clk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013%s: Out of memory\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"_of_pll_clk_init\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/clk/keystone/pll.c\00", [37 x i8] zeroinitializer }, align 32
@_of_pll_clk_init._entry_ptr = internal global ptr @_of_pll_clk_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fixed-postdiv\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"reg-names\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"post-divider\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"control\00", [24 x i8] zeroinitializer }, align 32
@_of_pll_clk_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013%s: ioremap failed\0A\00", [42 x i8] zeroinitializer }, align 32
@_of_pll_clk_init._entry_ptr.9 = internal global ptr @_of_pll_clk_init._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"multiplier\00", [21 x i8] zeroinitializer }, align 32
@_of_pll_clk_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: error initializing pll %pOFn\0A\00", [60 x i8] zeroinitializer }, align 32
@_of_pll_clk_init._entry_ptr.13 = internal global ptr @_of_pll_clk_init._entry.11, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@clk_pll_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_pllclk_recalc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@of_pll_div_clk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.15, ptr @.str.2, i32 259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"of_pll_div_clk_init\00", [44 x i8] zeroinitializer }, align 32
@of_pll_div_clk_init._entry_ptr = internal global ptr @of_pll_div_clk_init._entry, section ".printk_index", align 4
@of_pll_div_clk_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s: missing parent clock\0A\00", [36 x i8] zeroinitializer }, align 32
@of_pll_div_clk_init._entry_ptr.18 = internal global ptr @of_pll_div_clk_init._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bit-shift\00", [22 x i8] zeroinitializer }, align 32
@of_pll_div_clk_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.15, ptr @.str.2, i32 271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: missing 'shift' property\0A\00", [32 x i8] zeroinitializer }, align 32
@of_pll_div_clk_init._entry_ptr.22 = internal global ptr @of_pll_div_clk_init._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bit-mask\00", [23 x i8] zeroinitializer }, align 32
@of_pll_div_clk_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.15, ptr @.str.2, i32 277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: missing 'bit-mask' property\0A\00", [61 x i8] zeroinitializer }, align 32
@of_pll_div_clk_init._entry_ptr.26 = internal global ptr @of_pll_div_clk_init._entry.24, section ".printk_index", align 4
@of_pll_div_clk_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.15, ptr @.str.2, i32 287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: error registering divider %s\0A\00", [60 x i8] zeroinitializer }, align 32
@of_pll_div_clk_init._entry_ptr.29 = internal global ptr @of_pll_div_clk_init._entry.27, section ".printk_index", align 4
@of_pll_mux_clk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.30, ptr @.str.2, i32 308, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"of_pll_mux_clk_init\00", [44 x i8] zeroinitializer }, align 32
@of_pll_mux_clk_init._entry_ptr = internal global ptr @of_pll_mux_clk_init._entry, section ".printk_index", align 4
@of_pll_mux_clk_init._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.2, i32 314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: missing parent clocks\0A\00", [35 x i8] zeroinitializer }, align 32
@of_pll_mux_clk_init._entry_ptr.33 = internal global ptr @of_pll_mux_clk_init._entry.31, section ".printk_index", align 4
@of_pll_mux_clk_init._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.30, ptr @.str.2, i32 319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@of_pll_mux_clk_init._entry_ptr.35 = internal global ptr @of_pll_mux_clk_init._entry.34, section ".printk_index", align 4
@of_pll_mux_clk_init._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.30, ptr @.str.2, i32 324, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@of_pll_mux_clk_init._entry_ptr.37 = internal global ptr @of_pll_mux_clk_init._entry.36, section ".printk_index", align 4
@of_pll_mux_clk_init._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.30, ptr @.str.2, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: error registering mux %s\0A\00", [32 x i8] zeroinitializer }, align 32
@of_pll_mux_clk_init._entry_ptr.40 = internal global ptr @of_pll_mux_clk_init._entry.38, section ".printk_index", align 4
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 167, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 172, i32 33 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 181, i32 38 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 182, i32 11 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 186, i32 50 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 189, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 202, i32 51 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 218, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [12 x i8] c"clk_pll_ops\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 116, i32 29 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 256, i32 32 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 259, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 265, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 270, i32 33 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 271, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 276, i32 33 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 277, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 287, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 308, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 314, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 319, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 324, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.144 = private constant [30 x i8] c"../drivers/clk/keystone/pll.c\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 334, i32 3 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @__UNIQUE_ID_author184, ptr @__UNIQUE_ID_author185, ptr @__UNIQUE_ID_description183, ptr @__UNIQUE_ID_file181, ptr @__UNIQUE_ID_license182, ptr @__of_table_keystone_main_pll_clock, ptr @__of_table_keystone_pll_clock, ptr @__of_table_pll_divider_clock, ptr @__of_table_pll_mux_clock, ptr @_of_pll_clk_init._entry, ptr @_of_pll_clk_init._entry.11, ptr @_of_pll_clk_init._entry.7, ptr @_of_pll_clk_init._entry_ptr, ptr @_of_pll_clk_init._entry_ptr.13, ptr @_of_pll_clk_init._entry_ptr.9, ptr @of_pll_div_clk_init._entry, ptr @of_pll_div_clk_init._entry.16, ptr @of_pll_div_clk_init._entry.20, ptr @of_pll_div_clk_init._entry.24, ptr @of_pll_div_clk_init._entry.27, ptr @of_pll_div_clk_init._entry_ptr, ptr @of_pll_div_clk_init._entry_ptr.18, ptr @of_pll_div_clk_init._entry_ptr.22, ptr @of_pll_div_clk_init._entry_ptr.26, ptr @of_pll_div_clk_init._entry_ptr.29, ptr @of_pll_mux_clk_init._entry, ptr @of_pll_mux_clk_init._entry.31, ptr @of_pll_mux_clk_init._entry.34, ptr @of_pll_mux_clk_init._entry.36, ptr @of_pll_mux_clk_init._entry.38, ptr @of_pll_mux_clk_init._entry_ptr, ptr @of_pll_mux_clk_init._entry_ptr.33, ptr @of_pll_mux_clk_init._entry_ptr.35, ptr @of_pll_mux_clk_init._entry_ptr.37, ptr @of_pll_mux_clk_init._entry_ptr.40, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @clk_pll_ops, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.39], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_of_pll_clk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_of_pll_clk_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_of_pll_clk_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_pll_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_pll_div_clk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_pll_div_clk_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_pll_div_clk_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_pll_div_clk_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_pll_div_clk_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_pll_mux_clk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_pll_mux_clk_init._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_pll_mux_clk_init._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_pll_mux_clk_init._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_pll_mux_clk_init._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_keystone_pll_clk_init(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @_of_pll_clk_init(ptr noundef %node, i1 noundef zeroext false) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_keystone_main_pll_clk_init(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @_of_pll_clk_init(ptr noundef %node, i1 noundef zeroext true) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_pll_div_clk_init(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  %shift = alloca i32, align 4
  %mask = alloca i32, align 4
  %clk_name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %shift) #7
  %0 = ptrtoint ptr %shift to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %shift, align 4, !annotation !96
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #7
  %1 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %mask, align 4, !annotation !96
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_name) #7
  %2 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %node, align 4
  %4 = ptrtoint ptr %clk_name to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %clk_name, align 4
  %call = call i32 @of_property_read_string(ptr noundef %node, ptr noundef nonnull @.str.14, ptr noundef nonnull %clk_name) #7
  %call1 = call ptr @of_iomap(ptr noundef %node, i32 noundef 0) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.15) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call ptr @of_clk_get_parent_name(ptr noundef %node, i32 noundef 0) #7
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end8, label %if.end11

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15) #11
  call void @iounmap(ptr noundef nonnull %call1) #7
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.19, ptr noundef nonnull %shift, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool13.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool13.not, label %if.end20, label %do.end17

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.15) #11
  call void @iounmap(ptr noundef nonnull %call1) #7
  br label %cleanup

if.end20:                                         ; preds = %if.end11
  %call.i.i59 = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.23, ptr noundef nonnull %mask, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i59)
  %tobool22.not = icmp sgt i32 %call.i.i59, -1
  br i1 %tobool22.not, label %if.end29, label %do.end26

do.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.15) #11
  call void @iounmap(ptr noundef nonnull %call1) #7
  br label %cleanup

if.end29:                                         ; preds = %if.end20
  %5 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk_name, align 4
  %7 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %shift, align 4
  %conv = trunc i32 %8 to i8
  %9 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mask, align 4
  %conv30 = trunc i32 %10 to i8
  %call31 = call ptr @clk_register_divider_table(ptr noundef null, ptr noundef %6, ptr noundef nonnull %call3, i32 noundef 0, ptr noundef nonnull %call1, i8 noundef zeroext %conv, i8 noundef zeroext %conv30, i8 noundef zeroext 0, ptr noundef null, ptr noundef null) #7
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %do.end37, label %if.then33

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %call34 = call i32 @of_clk_add_provider(ptr noundef %node, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef nonnull %call31) #7
  br label %cleanup

do.end37:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk_name, align 4
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.15, ptr noundef %12) #11
  call void @iounmap(ptr noundef nonnull %call1) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %if.then33, %do.end26, %do.end17, %do.end8, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %shift) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_pll_mux_clk_init(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  %shift = alloca i32, align 4
  %mask = alloca i32, align 4
  %parents = alloca [2 x ptr], align 4
  %clk_name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %shift) #7
  %0 = ptrtoint ptr %shift to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %shift, align 4, !annotation !96
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #7
  %1 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %mask, align 4, !annotation !96
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %parents) #7
  %2 = ptrtoint ptr %parents to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %parents, align 4, !annotation !96
  %3 = getelementptr inbounds [2 x ptr], ptr %parents, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !96
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_name) #7
  %5 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %node, align 4
  %7 = ptrtoint ptr %clk_name to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %clk_name, align 4
  %call = call i32 @of_property_read_string(ptr noundef %node, ptr noundef nonnull @.str.14, ptr noundef nonnull %clk_name) #7
  %call1 = call ptr @of_iomap(ptr noundef %node, i32 noundef 0) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.30) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 @of_clk_parent_fill(ptr noundef %node, ptr noundef nonnull %parents, i32 noundef 2) #7
  %8 = ptrtoint ptr %parents to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parents, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %if.end.do.end10_crit_edge, label %lor.lhs.false

if.end.do.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

lor.lhs.false:                                    ; preds = %if.end
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %tobool6.not = icmp eq ptr %11, null
  br i1 %tobool6.not, label %lor.lhs.false.do.end10_crit_edge, label %if.end13

lor.lhs.false.do.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

do.end10:                                         ; preds = %lor.lhs.false.do.end10_crit_edge, %if.end.do.end10_crit_edge
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30) #11
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.19, ptr noundef nonnull %shift, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool15.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool15.not, label %if.end22, label %do.end19

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.30) #11
  br label %cleanup

if.end22:                                         ; preds = %if.end13
  %call.i.i55 = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.23, ptr noundef nonnull %mask, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i55)
  %tobool24.not = icmp sgt i32 %call.i.i55, -1
  br i1 %tobool24.not, label %if.end31, label %do.end28

do.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.30) #11
  br label %cleanup

if.end31:                                         ; preds = %if.end22
  %12 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk_name, align 4
  %14 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %shift, align 4
  %conv = trunc i32 %15 to i8
  %16 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mask, align 4
  %notmask = shl nsw i32 -1, %17
  %sub = xor i32 %notmask, -1
  %call32 = call ptr @clk_register_mux_table(ptr noundef null, ptr noundef %13, ptr noundef nonnull %parents, i8 noundef zeroext 2, i32 noundef 0, ptr noundef nonnull %call1, i8 noundef zeroext %conv, i32 noundef %sub, i8 noundef zeroext 0, ptr noundef null, ptr noundef null) #7
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %do.end38, label %if.then34

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %call35 = call i32 @of_clk_add_provider(ptr noundef %node, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef nonnull %call32) #7
  br label %cleanup

do.end38:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk_name, align 4
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.30, ptr noundef %19) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end38, %if.then34, %do.end28, %do.end19, %do.end10, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %parents) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %shift) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_of_pll_clk_init(ptr noundef %node, i1 noundef zeroext %pllctrl) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %parent_name.addr.i = alloca ptr, align 4
  %init.i = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %pllctrl to i8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 52) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_clk_get_parent_name(ptr noundef %node, i32 noundef 0) #7
  %postdiv = getelementptr inbounds %struct.clk_pll_data, ptr %call7.i.i, i32 0, i32 12
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.3, ptr noundef %postdiv, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool4.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool4.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %clkod_mask = getelementptr inbounds %struct.clk_pll_data, ptr %call7.i.i, i32 0, i32 10
  %1 = ptrtoint ptr %clkod_mask to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 7864320, ptr %clkod_mask, align 8
  %clkod_shift = getelementptr inbounds %struct.clk_pll_data, ptr %call7.i.i, i32 0, i32 11
  %2 = ptrtoint ptr %clkod_shift to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 19, ptr %clkod_shift, align 4
  %call6 = tail call i32 @of_property_match_string(ptr noundef %node, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #7
  %call7 = tail call ptr @of_iomap(ptr noundef %node, i32 noundef %call6) #7
  %pllod = getelementptr inbounds %struct.clk_pll_data, ptr %call7.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %pllod to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7, ptr %pllod, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %call9 = tail call i32 @of_property_match_string(ptr noundef %node, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.6) #7
  %call10 = tail call ptr @of_iomap(ptr noundef %node, i32 noundef %call9) #7
  %pll_ctl0 = getelementptr inbounds %struct.clk_pll_data, ptr %call7.i.i, i32 0, i32 5
  %4 = ptrtoint ptr %pll_ctl0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call10, ptr %pll_ctl0, align 4
  %tobool12.not = icmp eq ptr %call10, null
  br i1 %tobool12.not, label %do.end16, label %if.end20

do.end16:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1) #11
  %pllod19 = getelementptr inbounds %struct.clk_pll_data, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %pllod19 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pllod19, align 8
  tail call void @iounmap(ptr noundef %6) #7
  br label %do.end43

if.end20:                                         ; preds = %if.end8
  %pllm_lower_mask = getelementptr inbounds %struct.clk_pll_data, ptr %call7.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %pllm_lower_mask to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 63, ptr %pllm_lower_mask, align 8
  %pllm_upper_shift = getelementptr inbounds %struct.clk_pll_data, ptr %call7.i.i, i32 0, i32 8
  %8 = ptrtoint ptr %pllm_upper_shift to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 6, ptr %pllm_upper_shift, align 8
  %plld_mask = getelementptr inbounds %struct.clk_pll_data, ptr %call7.i.i, i32 0, i32 9
  %9 = ptrtoint ptr %plld_mask to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 63, ptr %plld_mask, align 4
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool, ptr %call7.i.i, align 8
  %pllm_upper_mask26 = getelementptr inbounds %struct.clk_pll_data, ptr %call7.i.i, i32 0, i32 7
  br i1 %pllctrl, label %if.else, label %if.then25

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %pllm_upper_mask26 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 524224, ptr %pllm_upper_mask26, align 4
  br label %if.end35

if.else:                                          ; preds = %if.end20
  %12 = ptrtoint ptr %pllm_upper_mask26 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 520192, ptr %pllm_upper_mask26, align 4
  %call27 = tail call i32 @of_property_match_string(ptr noundef %node, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.10) #7
  %call28 = tail call ptr @of_iomap(ptr noundef %node, i32 noundef %call27) #7
  %pllm = getelementptr inbounds %struct.clk_pll_data, ptr %call7.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %pllm to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call28, ptr %pllm, align 4
  %tobool30.not = icmp eq ptr %call28, null
  br i1 %tobool30.not, label %if.then31, label %if.else.if.end35_crit_edge

if.else.if.end35_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then31:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %pll_ctl0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pll_ctl0, align 4
  tail call void @iounmap(ptr noundef %15) #7
  %pllod33 = getelementptr inbounds %struct.clk_pll_data, ptr %call7.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %pllod33 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pllod33, align 8
  tail call void @iounmap(ptr noundef %17) #7
  br label %do.end43

if.end35:                                         ; preds = %if.else.if.end35_crit_edge, %if.then25
  %18 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %node, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name.addr.i)
  %20 = ptrtoint ptr %parent_name.addr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call2, ptr %parent_name.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #7
  %21 = getelementptr inbounds i8, ptr %init.i, i32 12
  %22 = call ptr @memset(ptr %21, i32 255, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 16) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %clk_register_pll.exit.thread84, label %if.end.i

clk_register_pll.exit.thread84:                   ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.addr.i)
  br label %if.then38

if.end.i:                                         ; preds = %if.end35
  %24 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %19, ptr %init.i, align 4
  %ops.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %25 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @clk_pll_ops, ptr %ops.i, align 4
  %flags.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %26 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %flags.i, align 4
  %27 = ptrtoint ptr %parent_name.addr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %parent_name.addr.i, align 4
  %tobool3.not.i = icmp eq ptr %28, null
  %parent_name.addr..i = select i1 %tobool3.not.i, ptr null, ptr %parent_name.addr.i
  %parent_names.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %29 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %parent_name.addr..i, ptr %parent_names.i, align 4
  %tobool4.not.i = icmp ne ptr %28, null
  %conv.i = zext i1 %tobool4.not.i to i8
  %num_parents.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %30 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv.i, ptr %num_parents.i, align 4
  %pll_data6.i = getelementptr inbounds %struct.clk_pll, ptr %call7.i.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %pll_data6.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i.i, ptr %pll_data6.i, align 4
  %init7.i = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i.i, i32 0, i32 2
  %32 = ptrtoint ptr %init7.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %init.i, ptr %init7.i, align 8
  %call9.i = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %call7.i.i.i) #7
  %cmp.i.i = icmp ugt ptr %call9.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %clk_register_pll.exit.thread, label %clk_register_pll.exit

clk_register_pll.exit.thread:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.addr.i)
  br label %do.end43

clk_register_pll.exit:                            ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.addr.i)
  %tobool37.not = icmp eq ptr %call9.i, null
  br i1 %tobool37.not, label %clk_register_pll.exit.do.end43_crit_edge, label %clk_register_pll.exit.if.then38_crit_edge

clk_register_pll.exit.if.then38_crit_edge:        ; preds = %clk_register_pll.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38

clk_register_pll.exit.do.end43_crit_edge:         ; preds = %clk_register_pll.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end43

if.then38:                                        ; preds = %clk_register_pll.exit.if.then38_crit_edge, %clk_register_pll.exit.thread84
  %retval.0.i87 = phi ptr [ inttoptr (i32 -12 to ptr), %clk_register_pll.exit.thread84 ], [ %call9.i, %clk_register_pll.exit.if.then38_crit_edge ]
  %call39 = call i32 @of_clk_add_provider(ptr noundef %node, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef nonnull %retval.0.i87) #7
  br label %cleanup

do.end43:                                         ; preds = %clk_register_pll.exit.do.end43_crit_edge, %clk_register_pll.exit.thread, %if.then31, %do.end16
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, ptr noundef %node) #11
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end43, %if.then38, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pllclk_recalc(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pll_data1 = getelementptr inbounds %struct.clk_pll, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %pll_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pll_data1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pllm = getelementptr inbounds %struct.clk_pll_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %pllm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pllm, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !98
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !99
  %pllm_lower_mask = getelementptr inbounds %struct.clk_pll_data, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %pllm_lower_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pllm_lower_mask, align 4
  %and = and i32 %9, %7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mult.0 = phi i32 [ %and, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %pll_ctl0 = getelementptr inbounds %struct.clk_pll_data, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %pll_ctl0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pll_ctl0, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #7, !srcloc !98
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !100
  %pllm_upper_mask = getelementptr inbounds %struct.clk_pll_data, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %pllm_upper_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pllm_upper_mask, align 4
  %pllm_upper_shift = getelementptr inbounds %struct.clk_pll_data, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %pllm_upper_shift to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pllm_upper_shift, align 4
  %plld_mask = getelementptr inbounds %struct.clk_pll_data, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %plld_mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %plld_mask, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %1, align 4, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool12.not = icmp eq i8 %21, 0
  br i1 %tobool12.not, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %clkod_mask = getelementptr inbounds %struct.clk_pll_data, ptr %1, i32 0, i32 10
  %22 = ptrtoint ptr %clkod_mask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %clkod_mask, align 4
  %and14 = and i32 %23, %13
  %clkod_shift = getelementptr inbounds %struct.clk_pll_data, ptr %1, i32 0, i32 11
  %24 = ptrtoint ptr %clkod_shift to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %clkod_shift, align 4
  %shr15 = lshr i32 %and14, %25
  %add = add i32 %shr15, 1
  br label %if.end32

if.else:                                          ; preds = %if.end
  %pllod = getelementptr inbounds %struct.clk_pll_data, ptr %1, i32 0, i32 4
  %26 = ptrtoint ptr %pllod to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pllod, align 4
  %tobool16.not = icmp eq ptr %27, null
  br i1 %tobool16.not, label %if.else29, label %if.then17

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %27) #7, !srcloc !98
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  %clkod_mask24 = getelementptr inbounds %struct.clk_pll_data, ptr %1, i32 0, i32 10
  %30 = ptrtoint ptr %clkod_mask24 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %clkod_mask24, align 4
  %and25 = and i32 %31, %29
  %clkod_shift26 = getelementptr inbounds %struct.clk_pll_data, ptr %1, i32 0, i32 11
  %32 = ptrtoint ptr %clkod_shift26 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %clkod_shift26, align 4
  %shr27 = lshr i32 %and25, %33
  %add28 = add i32 %shr27, 1
  br label %if.end32

if.else29:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %postdiv30 = getelementptr inbounds %struct.clk_pll_data, ptr %1, i32 0, i32 12
  %34 = ptrtoint ptr %postdiv30 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %postdiv30, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.else29, %if.then17, %if.then13
  %postdiv.0 = phi i32 [ %add28, %if.then17 ], [ %35, %if.else29 ], [ %add, %if.then13 ]
  %and10 = and i32 %19, %13
  %and9 = and i32 %15, %13
  %shr = lshr i32 %and9, %17
  %or = or i32 %shr, %mult.0
  %add33 = add i32 %and10, 1
  %div = udiv i32 %parent_rate, %add33
  %add34 = add i32 %or, 1
  %mul = mul i32 %div, %add34
  %div35 = udiv i32 %mul, %postdiv.0
  ret i32 %div35
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_divider_table(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_parent_fill(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_mux_table(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !25, !27, !29, !31, !33, !34, !35, !37, !39, !40, !41, !43, !45, !47, !48, !49, !51, !52, !53, !55, !57, !58, !59, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !82, !83, !85, !86}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !{ptr @__of_table_keystone_pll_clock, !1, !"__of_table_keystone_pll_clock", i1 false, i1 false}
!1 = !{!"../drivers/clk/keystone/pll.c", i32 230, i32 1}
!2 = !{ptr @__of_table_keystone_main_pll_clock, !3, !"__of_table_keystone_main_pll_clock", i1 false, i1 false}
!3 = !{!"../drivers/clk/keystone/pll.c", i32 241, i32 1}
!4 = !{ptr @__of_table_pll_divider_clock, !5, !"__of_table_pll_divider_clock", i1 false, i1 false}
!5 = !{!"../drivers/clk/keystone/pll.c", i32 291, i32 1}
!6 = !{ptr @__of_table_pll_mux_clock, !7, !"__of_table_pll_mux_clock", i1 false, i1 false}
!7 = !{!"../drivers/clk/keystone/pll.c", i32 336, i32 1}
!8 = !{ptr @__UNIQUE_ID_file181, !9, !"__UNIQUE_ID_file181", i1 false, i1 false}
!9 = !{!"../drivers/clk/keystone/pll.c", i32 338, i32 1}
!10 = !{ptr @__UNIQUE_ID_license182, !9, !"__UNIQUE_ID_license182", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_description183, !12, !"__UNIQUE_ID_description183", i1 false, i1 false}
!12 = !{!"../drivers/clk/keystone/pll.c", i32 339, i32 1}
!13 = !{ptr @__UNIQUE_ID_author184, !14, !"__UNIQUE_ID_author184", i1 false, i1 false}
!14 = !{!"../drivers/clk/keystone/pll.c", i32 340, i32 1}
!15 = !{ptr @__UNIQUE_ID_author185, !16, !"__UNIQUE_ID_author185", i1 false, i1 false}
!16 = !{!"../drivers/clk/keystone/pll.c", i32 341, i32 1}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/clk/keystone/pll.c", i32 167, i32 3}
!19 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @_of_pll_clk_init._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @_of_pll_clk_init._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/clk/keystone/pll.c", i32 172, i32 33}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clk/keystone/pll.c", i32 181, i32 38}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clk/keystone/pll.c", i32 182, i32 11}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/clk/keystone/pll.c", i32 186, i32 50}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clk/keystone/pll.c", i32 189, i32 3}
!33 = !{ptr @_of_pll_clk_init._entry.7, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @_of_pll_clk_init._entry_ptr.9, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/keystone/pll.c", i32 202, i32 51}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/clk/keystone/pll.c", i32 218, i32 2}
!39 = !{ptr @_of_pll_clk_init._entry.11, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @_of_pll_clk_init._entry_ptr.13, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @clk_pll_ops, !42, !"clk_pll_ops", i1 false, i1 false}
!42 = !{!"../drivers/clk/keystone/pll.c", i32 116, i32 29}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/clk/keystone/pll.c", i32 256, i32 32}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/clk/keystone/pll.c", i32 259, i32 3}
!47 = !{ptr @of_pll_div_clk_init._entry, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @of_pll_div_clk_init._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/clk/keystone/pll.c", i32 265, i32 3}
!51 = !{ptr @of_pll_div_clk_init._entry.16, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @of_pll_div_clk_init._entry_ptr.18, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/clk/keystone/pll.c", i32 270, i32 33}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/clk/keystone/pll.c", i32 271, i32 3}
!57 = !{ptr @of_pll_div_clk_init._entry.20, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @of_pll_div_clk_init._entry_ptr.22, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/clk/keystone/pll.c", i32 276, i32 33}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/clk/keystone/pll.c", i32 277, i32 3}
!63 = !{ptr @of_pll_div_clk_init._entry.24, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @of_pll_div_clk_init._entry_ptr.26, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/clk/keystone/pll.c", i32 287, i32 3}
!67 = !{ptr @of_pll_div_clk_init._entry.27, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @of_pll_div_clk_init._entry_ptr.29, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/clk/keystone/pll.c", i32 308, i32 3}
!71 = !{ptr @of_pll_mux_clk_init._entry, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @of_pll_mux_clk_init._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/clk/keystone/pll.c", i32 314, i32 3}
!75 = !{ptr @of_pll_mux_clk_init._entry.31, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @of_pll_mux_clk_init._entry_ptr.33, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @of_pll_mux_clk_init._entry.34, !78, !"_entry", i1 false, i1 false}
!78 = !{!"../drivers/clk/keystone/pll.c", i32 319, i32 3}
!79 = !{ptr @of_pll_mux_clk_init._entry_ptr.35, !78, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @of_pll_mux_clk_init._entry.36, !81, !"_entry", i1 false, i1 false}
!81 = !{!"../drivers/clk/keystone/pll.c", i32 324, i32 3}
!82 = !{ptr @of_pll_mux_clk_init._entry_ptr.37, !81, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/clk/keystone/pll.c", i32 334, i32 3}
!85 = !{ptr @of_pll_mux_clk_init._entry.38, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @of_pll_mux_clk_init._entry_ptr.40, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"min_enum_size", i32 4}
!89 = !{i32 8, !"branch-target-enforcement", i32 0}
!90 = !{i32 8, !"sign-return-address", i32 0}
!91 = !{i32 8, !"sign-return-address-all", i32 0}
!92 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!96 = !{!"auto-init"}
!97 = !{i8 0, i8 2}
!98 = !{i64 4034231}
!99 = !{i64 2152690907}
!100 = !{i64 2152691397}
!101 = !{i64 2152691875}
