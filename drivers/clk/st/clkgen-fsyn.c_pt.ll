; ModuleID = '/llk/IR_all_yes/drivers/clk/st/clkgen-fsyn.c_pt.bc'
source_filename = "../drivers/clk/st/clkgen-fsyn.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clkgen_quadfs_data_clks = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clkgen_quadfs_data = type { i8, i8, i8, i8, i8, i8, i8, %struct.clkgen_field, %struct.clkgen_field, %struct.clkgen_field, %struct.clkgen_field, %struct.clkgen_field, [4 x %struct.clkgen_field], [4 x %struct.clkgen_field], [4 x %struct.clkgen_field], [4 x %struct.clkgen_field], [4 x %struct.clkgen_field], [4 x %struct.clkgen_field], [4 x %struct.clkgen_field], ptr, ptr, ptr }
%struct.clkgen_field = type { i32, i32, i32 }
%struct.clkgen_clk_out = type { ptr, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.st_clk_quadfs_pll = type { %struct.clk_hw, ptr, ptr, ptr, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.st_clk_quadfs_fsynth = type { %struct.clk_hw, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.stm_fs = type { i32, i32, i32, i32, i32 }

@__of_table_quadfs660C = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,quadfs-pll\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @st_of_quadfs660C_setup }, section "__clk_of_table", align 4
@__of_table_quadfs660D = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,quadfs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @st_of_quadfs660D_setup }, section "__clk_of_table", align 4
@__of_table_quadfs660D0 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,quadfs-d0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @st_of_quadfs660D0_setup }, section "__clk_of_table", align 4
@__of_table_quadfs660D2 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,quadfs-d2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @st_of_quadfs660D2_setup }, section "__clk_of_table", align 4
@__of_table_quadfs660D3 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,quadfs-d3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @st_of_quadfs660D3_setup }, section "__clk_of_table", align 4
@st_fs660c32_C_data = internal constant { %struct.clkgen_quadfs_data_clks, [24 x i8] } { %struct.clkgen_quadfs_data_clks { ptr @st_fs660c32_C, ptr @st_fs660c32_C_clks }, [24 x i8] zeroinitializer }, align 32
@st_of_quadfs_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 999, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: Failed to get base address\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"st_of_quadfs_setup\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/clk/st/clkgen-fsyn.c\00", [35 x i8] zeroinitializer }, align 32
@st_of_quadfs_setup._entry_ptr = internal global ptr @st_of_quadfs_setup._entry, section ".printk_index", align 4
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%pOFn.pll\00", [22 x i8] zeroinitializer }, align 32
@st_of_quadfs_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lock\00", [27 x i8] zeroinitializer }, align 32
@st_of_quadfs_setup.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 1, i8 0, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clkgen_fsyn\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: parent %s rate %u\0A\00", [41 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@st_of_create_quadfs_fsynths.__UNIQUE_ID_ddebug182 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.8, ptr @.str.2, ptr @.str.6, i8 0, i8 -12, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"st_of_create_quadfs_fsynths\00", [36 x i8] zeroinitializer }, align 32
@st_quadfs_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @quadfs_fsynth_enable, ptr @quadfs_fsynth_disable, ptr @quadfs_fsynth_is_enabled, ptr null, ptr null, ptr null, ptr @quadfs_recalc_rate, ptr @quadfs_round_rate, ptr null, ptr null, ptr null, ptr @quadfs_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@quadfs_fsynth_enable.__UNIQUE_ID_ddebug177 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 -113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"quadfs_fsynth_enable\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %s\0A\00", [24 x i8] zeroinitializer }, align 32
@quadfs_fsynth_disable.__UNIQUE_ID_ddebug178 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.11, ptr @.str.2, ptr @.str.10, i8 0, i8 -107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"quadfs_fsynth_disable\00", [42 x i8] zeroinitializer }, align 32
@quadfs_fsynth_is_enabled.__UNIQUE_ID_ddebug179 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 -103, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"quadfs_fsynth_is_enabled\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: %s enable bit = 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@quadfs_recalc_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 809, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s:%s error calculating rate\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"quadfs_recalc_rate\00", [45 x i8] zeroinitializer }, align 32
@quadfs_recalc_rate._entry_ptr = internal global ptr @quadfs_recalc_rate._entry, section ".printk_index", align 4
@quadfs_recalc_rate.__UNIQUE_ID_ddebug180 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 -53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s:%s rate %lu\0A\00", [16 x i8] zeroinitializer }, align 32
@quadfs_round_rate.__UNIQUE_ID_ddebug181 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 -50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"quadfs_round_rate\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s: %s new rate %ld [sdiv=0x%x,md=0x%x,pe=0x%x,nsdiv3=%u]\0A\00", [37 x i8] zeroinitializer }, align 32
@st_fs660c32_C = internal constant { %struct.clkgen_quadfs_data, [96 x i8] } { %struct.clkgen_quadfs_data { i8 0, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, %struct.clkgen_field { i32 756, i32 7, i32 16 }, %struct.clkgen_field zeroinitializer, %struct.clkgen_field zeroinitializer, %struct.clkgen_field { i32 752, i32 1, i32 12 }, %struct.clkgen_field { i32 752, i32 1, i32 24 }, [4 x %struct.clkgen_field] [%struct.clkgen_field { i32 752, i32 1, i32 0 }, %struct.clkgen_field { i32 752, i32 1, i32 1 }, %struct.clkgen_field { i32 752, i32 1, i32 2 }, %struct.clkgen_field { i32 752, i32 1, i32 3 }], [4 x %struct.clkgen_field] [%struct.clkgen_field { i32 752, i32 1, i32 8 }, %struct.clkgen_field { i32 752, i32 1, i32 9 }, %struct.clkgen_field { i32 752, i32 1, i32 10 }, %struct.clkgen_field { i32 752, i32 1, i32 11 }], [4 x %struct.clkgen_field] [%struct.clkgen_field { i32 764, i32 1, i32 0 }, %struct.clkgen_field { i32 764, i32 1, i32 1 }, %struct.clkgen_field { i32 764, i32 1, i32 2 }, %struct.clkgen_field { i32 764, i32 1, i32 3 }], [4 x %struct.clkgen_field] [%struct.clkgen_field { i32 772, i32 31, i32 15 }, %struct.clkgen_field { i32 776, i32 31, i32 15 }, %struct.clkgen_field { i32 780, i32 31, i32 15 }, %struct.clkgen_field { i32 784, i32 31, i32 15 }], [4 x %struct.clkgen_field] [%struct.clkgen_field { i32 772, i32 32767, i32 0 }, %struct.clkgen_field { i32 776, i32 32767, i32 0 }, %struct.clkgen_field { i32 780, i32 32767, i32 0 }, %struct.clkgen_field { i32 784, i32 32767, i32 0 }], [4 x %struct.clkgen_field] [%struct.clkgen_field { i32 772, i32 15, i32 20 }, %struct.clkgen_field { i32 776, i32 15, i32 20 }, %struct.clkgen_field { i32 780, i32 15, i32 20 }, %struct.clkgen_field { i32 784, i32 15, i32 20 }], [4 x %struct.clkgen_field] [%struct.clkgen_field { i32 772, i32 1, i32 24 }, %struct.clkgen_field { i32 776, i32 1, i32 24 }, %struct.clkgen_field { i32 780, i32 1, i32 24 }, %struct.clkgen_field { i32 784, i32 1, i32 24 }], ptr @st_quadfs_pll_c32_ops, ptr @clk_fs660c32_dig_get_params, ptr @clk_fs660c32_dig_get_rate }, [96 x i8] zeroinitializer }, align 32
@st_fs660c32_C_clks = internal constant { [4 x %struct.clkgen_clk_out], [32 x i8] } { [4 x %struct.clkgen_clk_out] [%struct.clkgen_clk_out { ptr @.str.24, i32 0 }, %struct.clkgen_clk_out { ptr @.str.25, i32 0 }, %struct.clkgen_clk_out { ptr @.str.26, i32 0 }, %struct.clkgen_clk_out { ptr @.str.27, i32 0 }], [32 x i8] zeroinitializer }, align 32
@st_quadfs_pll_c32_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @quadfs_pll_enable, ptr @quadfs_pll_disable, ptr @quadfs_pll_is_enabled, ptr null, ptr null, ptr null, ptr @quadfs_pll_fs660c32_recalc_rate, ptr @quadfs_pll_fs660c32_round_rate, ptr null, ptr null, ptr null, ptr @quadfs_pll_fs660c32_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@quadfs_pll_fs660c32_recalc_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.19, ptr @.str.2, i32 342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"quadfs_pll_fs660c32_recalc_rate\00", [32 x i8] zeroinitializer }, align 32
@quadfs_pll_fs660c32_recalc_rate._entry_ptr = internal global ptr @quadfs_pll_fs660c32_recalc_rate._entry, section ".printk_index", align 4
@quadfs_pll_fs660c32_round_rate.__UNIQUE_ID_ddebug175 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 97, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"quadfs_pll_fs660c32_round_rate\00", [33 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: %s new rate %ld [ndiv=%u]\0A\00", [33 x i8] zeroinitializer }, align 32
@quadfs_pll_fs660c32_set_rate.__UNIQUE_ID_ddebug176 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 104, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"quadfs_pll_fs660c32_set_rate\00", [35 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: %s new rate %ld [ndiv=0x%x]\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk-s-c0-fs0-ch0\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk-s-c0-fs0-ch1\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk-s-c0-fs0-ch2\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk-s-c0-fs0-ch3\00", [47 x i8] zeroinitializer }, align 32
@st_fs660c32_D_data = internal constant { %struct.clkgen_quadfs_data_clks, [24 x i8] } { %struct.clkgen_quadfs_data_clks { ptr @st_fs660c32_D, ptr null }, [24 x i8] zeroinitializer }, align 32
@st_fs660c32_D = internal constant { %struct.clkgen_quadfs_data, [96 x i8] } { %struct.clkgen_quadfs_data { i8 0, i8 0, i8 1, i8 1, i8 1, i8 1, i8 1, %struct.clkgen_field { i32 676, i32 7, i32 16 }, %struct.clkgen_field zeroinitializer, %struct.clkgen_field zeroinitializer, %struct.clkgen_field { i32 672, i32 1, i32 12 }, %struct.clkgen_field { i32 672, i32 1, i32 24 }, [4 x %struct.clkgen_field] [%struct.clkgen_field { i32 672, i32 1, i32 0 }, %struct.clkgen_field { i32 672, i32 1, i32 1 }, %struct.clkgen_field { i32 672, i32 1, i32 2 }, %struct.clkgen_field { i32 672, i32 1, i32 3 }], [4 x %struct.clkgen_field] [%struct.clkgen_field { i32 672, i32 1, i32 8 }, %struct.clkgen_field { i32 672, i32 1, i32 9 }, %struct.clkgen_field { i32 672, i32 1, i32 10 }, %struct.clkgen_field { i32 672, i32 1, i32 11 }], [4 x %struct.clkgen_field] [%struct.clkgen_field { i32 684, i32 1, i32 0 }, %struct.clkgen_field { i32 684, i32 1, i32 1 }, %struct.clkgen_field { i32 684, i32 1, i32 2 }, %struct.clkgen_field { i32 684, i32 1, i32 3 }], [4 x %struct.clkgen_field] [%struct.clkgen_field { i32 692, i32 31, i32 15 }, %struct.clkgen_field { i32 696, i32 31, i32 15 }, %struct.clkgen_field { i32 700, i32 31, i32 15 }, %struct.clkgen_field { i32 704, i32 31, i32 15 }], [4 x %struct.clkgen_field] [%struct.clkgen_field { i32 692, i32 32767, i32 0 }, %struct.clkgen_field { i32 696, i32 32767, i32 0 }, %struct.clkgen_field { i32 700, i32 32767, i32 0 }, %struct.clkgen_field { i32 704, i32 32767, i32 0 }], [4 x %struct.clkgen_field] [%struct.clkgen_field { i32 692, i32 15, i32 20 }, %struct.clkgen_field { i32 696, i32 15, i32 20 }, %struct.clkgen_field { i32 700, i32 15, i32 20 }, %struct.clkgen_field { i32 704, i32 15, i32 20 }], [4 x %struct.clkgen_field] [%struct.clkgen_field { i32 692, i32 1, i32 24 }, %struct.clkgen_field { i32 696, i32 1, i32 24 }, %struct.clkgen_field { i32 700, i32 1, i32 24 }, %struct.clkgen_field { i32 704, i32 1, i32 24 }], ptr @st_quadfs_pll_c32_ops, ptr @clk_fs660c32_dig_get_params, ptr @clk_fs660c32_dig_get_rate }, [96 x i8] zeroinitializer }, align 32
@st_fs660c32_D0_data = internal constant { %struct.clkgen_quadfs_data_clks, [24 x i8] } { %struct.clkgen_quadfs_data_clks { ptr @st_fs660c32_D, ptr @st_fs660c32_D0_clks }, [24 x i8] zeroinitializer }, align 32
@st_fs660c32_D0_clks = internal constant { [4 x %struct.clkgen_clk_out], [32 x i8] } { [4 x %struct.clkgen_clk_out] [%struct.clkgen_clk_out { ptr @.str.28, i32 0 }, %struct.clkgen_clk_out { ptr @.str.29, i32 0 }, %struct.clkgen_clk_out { ptr @.str.30, i32 0 }, %struct.clkgen_clk_out { ptr @.str.31, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk-s-d0-fs0-ch0\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk-s-d0-fs0-ch1\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk-s-d0-fs0-ch2\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk-s-d0-fs0-ch3\00", [47 x i8] zeroinitializer }, align 32
@st_fs660c32_D2_data = internal constant { %struct.clkgen_quadfs_data_clks, [24 x i8] } { %struct.clkgen_quadfs_data_clks { ptr @st_fs660c32_D, ptr @st_fs660c32_D2_clks }, [24 x i8] zeroinitializer }, align 32
@st_fs660c32_D2_clks = internal constant { [4 x %struct.clkgen_clk_out], [32 x i8] } { [4 x %struct.clkgen_clk_out] [%struct.clkgen_clk_out { ptr @.str.32, i32 0 }, %struct.clkgen_clk_out { ptr @.str.33, i32 0 }, %struct.clkgen_clk_out { ptr @.str.34, i32 0 }, %struct.clkgen_clk_out { ptr @.str.35, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk-s-d2-fs0-ch0\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk-s-d2-fs0-ch1\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk-s-d2-fs0-ch2\00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk-s-d2-fs0-ch3\00", [47 x i8] zeroinitializer }, align 32
@st_fs660c32_D3_data = internal constant { %struct.clkgen_quadfs_data_clks, [24 x i8] } { %struct.clkgen_quadfs_data_clks { ptr @st_fs660c32_D, ptr @st_fs660c32_D3_clks }, [24 x i8] zeroinitializer }, align 32
@st_fs660c32_D3_clks = internal constant { [4 x %struct.clkgen_clk_out], [32 x i8] } { [4 x %struct.clkgen_clk_out] [%struct.clkgen_clk_out { ptr @.str.36, i32 0 }, %struct.clkgen_clk_out { ptr @.str.37, i32 0 }, %struct.clkgen_clk_out { ptr @.str.38, i32 0 }, %struct.clkgen_clk_out { ptr @.str.39, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk-s-d3-fs0-ch0\00", [47 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk-s-d3-fs0-ch1\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk-s-d3-fs0-ch2\00", [47 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk-s-d3-fs0-ch3\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.40 = private unnamed_addr constant [19 x i8] c"st_fs660c32_C_data\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 135, i32 45 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 999, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 1008, i32 35 }
@___asan_gen_.58 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 1016, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 1023, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 951, i32 8 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 973, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant [14 x i8] c"st_quadfs_ops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 872, i32 29 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 573, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 598, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 614, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 808, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 812, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 824, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [14 x i8] c"st_fs660c32_C\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 86, i32 40 }
@___asan_gen_.115 = private unnamed_addr constant [19 x i8] c"st_fs660c32_C_clks\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 128, i32 36 }
@___asan_gen_.118 = private unnamed_addr constant [22 x i8] c"st_quadfs_pll_c32_ops\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 434, i32 29 }
@___asan_gen_.121 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 341, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 389, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 414, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 129, i32 12 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 130, i32 12 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 131, i32 12 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 132, i32 12 }
@___asan_gen_.151 = private unnamed_addr constant [19 x i8] c"st_fs660c32_D_data\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 181, i32 45 }
@___asan_gen_.154 = private unnamed_addr constant [14 x i8] c"st_fs660c32_D\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 140, i32 40 }
@___asan_gen_.157 = private unnamed_addr constant [20 x i8] c"st_fs660c32_D0_data\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 192, i32 45 }
@___asan_gen_.160 = private unnamed_addr constant [20 x i8] c"st_fs660c32_D0_clks\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 185, i32 36 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 186, i32 12 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 187, i32 12 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 188, i32 12 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 189, i32 12 }
@___asan_gen_.175 = private unnamed_addr constant [20 x i8] c"st_fs660c32_D2_data\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 204, i32 45 }
@___asan_gen_.178 = private unnamed_addr constant [20 x i8] c"st_fs660c32_D2_clks\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 197, i32 36 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 198, i32 12 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 199, i32 12 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 200, i32 12 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 201, i32 12 }
@___asan_gen_.193 = private unnamed_addr constant [20 x i8] c"st_fs660c32_D3_data\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 216, i32 45 }
@___asan_gen_.196 = private unnamed_addr constant [20 x i8] c"st_fs660c32_D3_clks\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 209, i32 36 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 210, i32 12 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 211, i32 12 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 212, i32 12 }
@___asan_gen_.208 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.209 = private constant [32 x i8] c"../drivers/clk/st/clkgen-fsyn.c\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 213, i32 12 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @__of_table_quadfs660C, ptr @__of_table_quadfs660D, ptr @__of_table_quadfs660D0, ptr @__of_table_quadfs660D2, ptr @__of_table_quadfs660D3, ptr @quadfs_pll_fs660c32_recalc_rate._entry, ptr @quadfs_pll_fs660c32_recalc_rate._entry_ptr, ptr @quadfs_recalc_rate._entry, ptr @quadfs_recalc_rate._entry_ptr, ptr @st_of_quadfs_setup._entry, ptr @st_of_quadfs_setup._entry_ptr, ptr @st_fs660c32_C_data, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @st_of_quadfs_setup.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @st_quadfs_ops, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @st_fs660c32_C, ptr @st_fs660c32_C_clks, ptr @st_quadfs_pll_c32_ops, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @st_fs660c32_D_data, ptr @st_fs660c32_D, ptr @st_fs660c32_D0_data, ptr @st_fs660c32_D0_clks, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @st_fs660c32_D2_data, ptr @st_fs660c32_D2_clks, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @st_fs660c32_D3_data, ptr @st_fs660c32_D3_clks, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_fs660c32_C_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_of_quadfs_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_of_quadfs_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_quadfs_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @quadfs_recalc_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_fs660c32_C to i32), i32 416, i32 512, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_fs660c32_C_clks to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_quadfs_pll_c32_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @quadfs_pll_fs660c32_recalc_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_fs660c32_D_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_fs660c32_D to i32), i32 416, i32 512, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_fs660c32_D0_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_fs660c32_D0_clks to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_fs660c32_D2_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_fs660c32_D2_clks to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_fs660c32_D3_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_fs660c32_D3_clks to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @st_of_quadfs660C_setup(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @st_of_quadfs_setup(ptr noundef %np, ptr noundef nonnull @st_fs660c32_C_data) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @st_of_quadfs660D_setup(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @st_of_quadfs_setup(ptr noundef %np, ptr noundef nonnull @st_fs660c32_D_data) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @st_of_quadfs660D0_setup(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @st_of_quadfs_setup(ptr noundef %np, ptr noundef nonnull @st_fs660c32_D0_data) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @st_of_quadfs660D2_setup(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @st_of_quadfs_setup(ptr noundef %np, ptr noundef nonnull @st_fs660c32_D2_data) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @st_of_quadfs660D3_setup(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @st_of_quadfs_setup(ptr noundef %np, ptr noundef nonnull @st_fs660c32_D3_data) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @st_of_quadfs_setup(ptr noundef %np, ptr nocapture noundef readonly %datac) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then:                                          ; preds = %entry
  %call1 = tail call ptr @of_get_parent(ptr noundef %np) #7
  %call2 = tail call ptr @of_iomap(ptr noundef %call1, i32 noundef 0) #7
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %reg.0 = phi ptr [ %call, %entry.if.end6_crit_edge ], [ %call2, %if.then.if.end6_crit_edge ]
  %call7 = tail call ptr @of_clk_get_parent_name(ptr noundef %np, i32 noundef 0) #7
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %call11 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.3, ptr noundef %np) #7
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 44) #12
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %if.end14.err_exit_crit_edge, label %do.body19

if.end14.err_exit_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_exit

do.body19:                                        ; preds = %if.end14
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @st_of_quadfs_setup.__key, i16 noundef signext 3) #7
  %1 = ptrtoint ptr %datac to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %datac, align 4
  %call23 = tail call fastcc ptr @st_clk_register_quadfs_pll(ptr noundef nonnull %call11, ptr noundef nonnull %call7, ptr noundef %2, ptr noundef nonnull %reg.0, ptr noundef nonnull %call7.i.i) #10
  %cmp.i = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body19.err_exit_crit_edge, label %do.body26

do.body19.err_exit_crit_edge:                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_exit

do.body26:                                        ; preds = %do.body19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st_of_quadfs_setup.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@st_of_quadfs_setup, %if.then32)) #7
          to label %if.end40 [label %if.then32], !srcloc !132

if.then32:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #9
  %call33 = tail call ptr @__clk_get_name(ptr noundef %call23) #7
  %call34 = tail call ptr @clk_get_parent(ptr noundef %call23) #7
  %call35 = tail call ptr @__clk_get_name(ptr noundef %call34) #7
  %call36 = tail call i32 @clk_get_rate(ptr noundef %call23) #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @st_of_quadfs_setup.__UNIQUE_ID_ddebug183, ptr noundef nonnull @.str.6, ptr noundef %call33, ptr noundef %call35, i32 noundef %call36) #7
  br label %if.end40

if.end40:                                         ; preds = %if.then32, %do.body26
  tail call fastcc void @st_of_create_quadfs_fsynths(ptr noundef %np, ptr noundef nonnull %call11, ptr noundef %datac, ptr noundef nonnull %reg.0, ptr noundef nonnull %call7.i.i) #10
  br label %err_exit

err_exit:                                         ; preds = %if.end40, %do.body19.err_exit_crit_edge, %if.end14.err_exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call11) #7
  br label %cleanup

cleanup:                                          ; preds = %err_exit, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @st_clk_register_quadfs_pll(ptr noundef %name, ptr noundef %parent_name, ptr noundef %quadfs, ptr noundef %reg, ptr noundef %lock) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %parent_name.addr = alloca ptr, align 4
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %parent_name, ptr %parent_name.addr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #7
  %1 = getelementptr inbounds i8, ptr %init, i32 12
  %2 = call ptr @memset(ptr %1, i32 255, i32 12)
  %tobool.not = icmp eq ptr %name, null
  %tobool1.not = icmp eq ptr %parent_name, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %do.end, label %if.end24, !prof !133

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 455, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end24:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 28) #12
  %tobool26.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool26.not, label %if.end24.cleanup_crit_edge, label %if.end29

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  %4 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %name, ptr %init, align 4
  %pll_ops = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %quadfs, i32 0, i32 19
  %5 = ptrtoint ptr %pll_ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pll_ops, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %ops, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 64, ptr %flags, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %9 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %parent_name.addr, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %10 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %num_parents, align 4
  %data = getelementptr inbounds %struct.st_clk_quadfs_pll, ptr %call7.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %quadfs, ptr %data, align 4
  %regs_base = getelementptr inbounds %struct.st_clk_quadfs_pll, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %regs_base to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %reg, ptr %regs_base, align 4
  %lock31 = getelementptr inbounds %struct.st_clk_quadfs_pll, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %lock31 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %lock, ptr %lock31, align 8
  %init32 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %init32 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %init, ptr %init32, align 8
  %call34 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #7
  %cmp.i = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then36, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then36:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %if.end29.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %call34, %if.then36 ], [ %call34, %if.end29.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end24.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #7
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @st_of_create_quadfs_fsynths(ptr noundef %np, ptr noundef %pll_name, ptr nocapture noundef readonly %quadfs, ptr noundef %reg, ptr noundef %lock) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %clk_name = alloca ptr, align 4
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 8) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup41_crit_edge, label %if.end

entry.cleanup41_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup41

if.end:                                           ; preds = %entry
  %clk_num = getelementptr inbounds %struct.clk_onecell_data, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %clk_num to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 4, ptr %clk_num, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 16) #12
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i.i, ptr %call7.i.i, align 8
  %tobool3.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool3.not, label %if.then4, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %outputs = getelementptr inbounds %struct.clkgen_quadfs_data_clks, ptr %quadfs, i32 0, i32 1
  br label %for.body

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup41

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %fschan.075 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_name) #7
  %4 = ptrtoint ptr %clk_name to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %clk_name, align 4, !annotation !134
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #7
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %flags, align 4
  %6 = ptrtoint ptr %outputs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %outputs, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.clkgen_clk_out, ptr %7, i32 %fschan.075
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %clk_name to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %clk_name, align 4
  %flags11 = getelementptr %struct.clkgen_clk_out, ptr %7, i32 %fschan.075, i32 1
  %11 = ptrtoint ptr %flags11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags11, align 4
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %flags, align 4
  br label %if.end17

if.else:                                          ; preds = %for.body
  %call.i = call i32 @of_property_read_string_helper(ptr noundef %np, ptr noundef nonnull @.str.7, ptr noundef nonnull %clk_name, i32 noundef 1, i32 noundef %fschan.075) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool13.not = icmp sgt i32 %call.i, -1
  br i1 %tobool13.not, label %if.end15, label %cleanup.thread71

cleanup.thread71:                                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name) #7
  br label %for.end

if.end15:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = call i32 @of_clk_detect_critical(ptr noundef %np, i32 noundef %fschan.075, ptr noundef nonnull %flags) #7
  br label %if.end17

if.end17:                                         ; preds = %if.end15, %if.then7
  %14 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk_name, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp18 = icmp eq i8 %17, 0
  br i1 %cmp18, label %if.end17.cleanup.thread_crit_edge, label %if.end21

if.end17.cleanup.thread_crit_edge:                ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end21:                                         ; preds = %if.end17
  %18 = ptrtoint ptr %quadfs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %quadfs, align 4
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 4
  %call22 = call fastcc ptr @st_clk_register_quadfs_fsynth(ptr noundef %15, ptr noundef %pll_name, ptr noundef %19, ptr noundef %reg, i32 noundef %fschan.075, i32 noundef %21, ptr noundef %lock) #10
  %cmp.i = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end21.cleanup.thread_crit_edge, label %if.then24

if.end21.cleanup.thread_crit_edge:                ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.then24:                                        ; preds = %if.end21
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call7.i.i, align 8
  %arrayidx26 = getelementptr ptr, ptr %23, i32 %fschan.075
  %24 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call22, ptr %arrayidx26, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st_of_create_quadfs_fsynths.__UNIQUE_ID_ddebug182, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@st_of_create_quadfs_fsynths, %if.then31)) #7
          to label %cleanup [label %if.then31], !srcloc !132

if.then31:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  %call32 = call ptr @__clk_get_name(ptr noundef %call22) #7
  %call33 = call ptr @clk_get_parent(ptr noundef %call22) #7
  %call34 = call ptr @__clk_get_name(ptr noundef %call33) #7
  %call35 = call i32 @clk_get_rate(ptr noundef %call22) #7
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @st_of_create_quadfs_fsynths.__UNIQUE_ID_ddebug182, ptr noundef nonnull @.str.6, ptr noundef %call32, ptr noundef %call34, i32 noundef %call35) #7
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then31, %if.end21.cleanup.thread_crit_edge, %if.end17.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name) #7
  br label %for.inc

cleanup:                                          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name) #7
  br label %for.inc

for.inc:                                          ; preds = %cleanup, %cleanup.thread
  %inc = add nuw nsw i32 %fschan.075, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup.thread71
  %call40 = call i32 @of_clk_add_provider(ptr noundef %np, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %call7.i.i) #7
  br label %cleanup41

cleanup41:                                        ; preds = %for.end, %if.then4, %entry.cleanup41_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_detect_critical(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @st_clk_register_quadfs_fsynth(ptr noundef %name, ptr noundef %parent_name, ptr noundef %quadfs, ptr noundef %reg, i32 noundef %chan, i32 noundef %flags, ptr noundef %lock) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %parent_name.addr = alloca ptr, align 4
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %parent_name, ptr %parent_name.addr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #7
  %1 = getelementptr inbounds i8, ptr %init, i32 12
  %2 = call ptr @memset(ptr %1, i32 255, i32 12)
  %tobool.not = icmp eq ptr %name, null
  %tobool1.not = icmp eq ptr %parent_name, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %do.end, label %if.end24, !prof !133

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 893, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end24:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 44) #12
  %tobool26.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool26.not, label %if.end24.cleanup_crit_edge, label %if.end29

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  %4 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @st_quadfs_ops, ptr %ops, align 4
  %or = or i32 %flags, 64
  %flags31 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %6 = ptrtoint ptr %flags31 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %flags31, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %7 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %parent_name.addr, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %8 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %num_parents, align 4
  %data = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %quadfs, ptr %data, align 4
  %regs_base = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %regs_base to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %reg, ptr %regs_base, align 4
  %chan32 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %call7.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %chan32 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %chan, ptr %chan32, align 8
  %lock33 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %lock33 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %lock, ptr %lock33, align 8
  %init34 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %init34 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %init, ptr %init34, align 8
  %call36 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #7
  %cmp.i = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then38, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then38:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %if.end29.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %call36, %if.then38 ], [ %call36, %if.end29.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end24.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #7
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @quadfs_fsynth_enable(ptr noundef %hw) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @quadfs_fsynth_enable.__UNIQUE_ID_ddebug177, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@quadfs_fsynth_enable, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !132

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @quadfs_fsynth_enable.__UNIQUE_ID_ddebug177, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, ptr noundef %call4) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call fastcc void @quadfs_fsynth_program_rate(ptr noundef %hw)
  %lock = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %do.end.if.end17_crit_edge, label %do.body8

do.end.if.end17_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

do.body8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %1) #7
  br label %if.end17

if.end17:                                         ; preds = %do.body8, %do.end.if.end17_crit_edge
  %flags.0 = phi i32 [ %call12, %do.body8 ], [ 0, %do.end.if.end17_crit_edge ]
  %regs_base = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs_base, align 4
  %data = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %hw, i32 0, i32 3
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %chan = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %hw, i32 0, i32 4
  %6 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chan, align 4
  %arrayidx = getelementptr %struct.clkgen_quadfs_data, ptr %5, i32 0, i32 13, i32 %7
  %standby_polarity = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %standby_polarity to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %standby_polarity, align 4, !range !135
  %10 = xor i8 %9, 1
  %11 = zext i8 %10 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %13
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !137
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  %mask.i = getelementptr %struct.clkgen_quadfs_data, ptr %5, i32 0, i32 13, i32 %7, i32 1
  %16 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mask.i, align 4
  %shift.i = getelementptr %struct.clkgen_quadfs_data, ptr %5, i32 0, i32 13, i32 %7, i32 2
  %18 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %shift.i, align 4
  %shl.i = shl i32 %17, %19
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %15, %neg.i
  %shl3.i = shl i32 %11, %19
  %or.i = or i32 %and.i, %shl3.i
  %20 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %add.ptr5.i = getelementptr i8, ptr %3, i32 %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %20) #7, !srcloc !139
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 4
  %nrst_present = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %nrst_present to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %nrst_present, align 2, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool23.not = icmp eq i8 %26, 0
  br i1 %tobool23.not, label %if.end17.if.end29_crit_edge, label %if.then24

if.end17.if.end29_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then24:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs_base, align 4
  %29 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %chan, align 4
  %arrayidx28 = getelementptr %struct.clkgen_quadfs_data, ptr %24, i32 0, i32 12, i32 %30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  %31 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx28, align 4
  %add.ptr.i49 = getelementptr i8, ptr %28, i32 %32
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49) #7, !srcloc !137
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  %mask.i50 = getelementptr %struct.clkgen_quadfs_data, ptr %24, i32 0, i32 12, i32 %30, i32 1
  %35 = ptrtoint ptr %mask.i50 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mask.i50, align 4
  %shift.i51 = getelementptr %struct.clkgen_quadfs_data, ptr %24, i32 0, i32 12, i32 %30, i32 2
  %37 = ptrtoint ptr %shift.i51 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %shift.i51, align 4
  %shl.i52 = shl i32 %36, %38
  %neg.i53 = xor i32 %shl.i52, -1
  %and.i54 = and i32 %34, %neg.i53
  %39 = tail call i32 @llvm.bswap.i32(i32 %and.i54) #7
  %40 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx28, align 4
  %add.ptr5.i55 = getelementptr i8, ptr %28, i32 %41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i55, i32 %39) #7, !srcloc !139
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %if.end17.if.end29_crit_edge
  %42 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %lock, align 4
  %tobool31.not = icmp eq ptr %43, null
  br i1 %tobool31.not, label %if.end29.if.end34_crit_edge, label %if.then32

if.end29.if.end34_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %43, i32 noundef %flags.0) #7
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end29.if.end34_crit_edge
  %44 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs_base, align 4
  %46 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data, align 4
  %48 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %chan, align 4
  %arrayidx.i = getelementptr %struct.clkgen_quadfs_data, ptr %47, i32 0, i32 14, i32 %49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %45, i32 %51
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !137
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  %mask.i.i = getelementptr %struct.clkgen_quadfs_data, ptr %47, i32 0, i32 14, i32 %49, i32 1
  %54 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mask.i.i, align 4
  %shift.i.i = getelementptr %struct.clkgen_quadfs_data, ptr %47, i32 0, i32 14, i32 %49, i32 2
  %56 = ptrtoint ptr %shift.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %shift.i.i, align 4
  %shl.i.i = shl i32 %55, %57
  %neg.i.i = xor i32 %shl.i.i, -1
  %and.i.i = and i32 %53, %neg.i.i
  %shl3.i.i = shl nuw i32 1, %57
  %or.i.i = or i32 %and.i.i, %shl3.i.i
  %58 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #7
  %59 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %45, i32 %60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 %58) #7, !srcloc !139
  %61 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs_base, align 4
  %63 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %data, align 4
  %65 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %chan, align 4
  %arrayidx5.i = getelementptr %struct.clkgen_quadfs_data, ptr %64, i32 0, i32 14, i32 %66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  %67 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx5.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %62, i32 %68
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.i) #7, !srcloc !137
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  %mask.i12.i = getelementptr %struct.clkgen_quadfs_data, ptr %64, i32 0, i32 14, i32 %66, i32 1
  %71 = ptrtoint ptr %mask.i12.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %mask.i12.i, align 4
  %shift.i13.i = getelementptr %struct.clkgen_quadfs_data, ptr %64, i32 0, i32 14, i32 %66, i32 2
  %73 = ptrtoint ptr %shift.i13.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %shift.i13.i, align 4
  %shl.i14.i = shl i32 %72, %74
  %neg.i15.i = xor i32 %shl.i14.i, -1
  %and.i16.i = and i32 %70, %neg.i15.i
  %75 = tail call i32 @llvm.bswap.i32(i32 %and.i16.i) #7
  %76 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx5.i, align 4
  %add.ptr5.i17.i = getelementptr i8, ptr %62, i32 %77
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i17.i, i32 %75) #7, !srcloc !139
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @quadfs_fsynth_disable(ptr noundef %hw) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @quadfs_fsynth_disable.__UNIQUE_ID_ddebug178, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@quadfs_fsynth_disable, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !132

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @quadfs_fsynth_disable.__UNIQUE_ID_ddebug178, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef %call4) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %do.end.if.end17_crit_edge, label %do.body8

do.end.if.end17_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

do.body8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %1) #7
  br label %if.end17

if.end17:                                         ; preds = %do.body8, %do.end.if.end17_crit_edge
  %flags.0 = phi i32 [ %call12, %do.body8 ], [ 0, %do.end.if.end17_crit_edge ]
  %regs_base = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs_base, align 4
  %data = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %hw, i32 0, i32 3
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %chan = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %hw, i32 0, i32 4
  %6 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chan, align 4
  %arrayidx = getelementptr %struct.clkgen_quadfs_data, ptr %5, i32 0, i32 13, i32 %7
  %standby_polarity = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %standby_polarity to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %standby_polarity, align 4, !range !135
  %10 = zext i8 %9 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %12
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !137
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  %mask.i = getelementptr %struct.clkgen_quadfs_data, ptr %5, i32 0, i32 13, i32 %7, i32 1
  %15 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mask.i, align 4
  %shift.i = getelementptr %struct.clkgen_quadfs_data, ptr %5, i32 0, i32 13, i32 %7, i32 2
  %17 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %shift.i, align 4
  %shl.i = shl i32 %16, %18
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %14, %neg.i
  %shl3.i = shl nuw i32 %10, %18
  %or.i = or i32 %and.i, %shl3.i
  %19 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %add.ptr5.i = getelementptr i8, ptr %3, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %19) #7, !srcloc !139
  %22 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lock, align 4
  %tobool22.not = icmp eq ptr %23, null
  br i1 %tobool22.not, label %if.end17.if.end25_crit_edge, label %if.then23

if.end17.if.end25_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then23:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %23, i32 noundef %flags.0) #7
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end17.if.end25_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @quadfs_fsynth_is_enabled(ptr noundef %hw) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs_base = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs_base, align 4
  %data = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %chan = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %hw, i32 0, i32 4
  %4 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chan, align 4
  %arrayidx = getelementptr %struct.clkgen_quadfs_data, ptr %3, i32 0, i32 13, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !137
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !140
  %shift.i = getelementptr %struct.clkgen_quadfs_data, ptr %3, i32 0, i32 13, i32 %5, i32 2
  %10 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %shift.i, align 4
  %shr.i = lshr i32 %9, %11
  %mask.i = getelementptr %struct.clkgen_quadfs_data, ptr %3, i32 0, i32 13, i32 %5, i32 1
  %12 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mask.i, align 4
  %and.i = and i32 %shr.i, %13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @quadfs_fsynth_is_enabled.__UNIQUE_ID_ddebug179, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@quadfs_fsynth_is_enabled, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !132

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @quadfs_fsynth_is_enabled.__UNIQUE_ID_ddebug179, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, ptr noundef %call6, i32 noundef %and.i) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %standby_polarity = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %standby_polarity to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %standby_polarity, align 4, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool8.not = icmp eq i8 %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool12 = icmp ne i32 %and.i, 0
  %cond.in = select i1 %tobool8.not, i1 %tobool12, i1 %tobool9.not
  %cond = zext i1 %cond.in to i32
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @quadfs_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate) #5 align 64 {
entry:
  %rate = alloca i32, align 4
  %params = alloca %struct.stm_fs, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rate) #7
  %0 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %rate, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %params) #7
  %1 = getelementptr inbounds %struct.stm_fs, ptr %params, i32 0, i32 1
  %2 = getelementptr inbounds %struct.stm_fs, ptr %params, i32 0, i32 2
  %3 = getelementptr inbounds %struct.stm_fs, ptr %params, i32 0, i32 3
  %4 = getelementptr inbounds %struct.stm_fs, ptr %params, i32 0, i32 4
  %data = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %hw, i32 0, i32 3
  %5 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %params, align 4
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %get_rate = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %7, i32 0, i32 21
  %8 = ptrtoint ptr %get_rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_rate, align 4
  %regs_base.i = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %hw, i32 0, i32 1
  %10 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs_base.i, align 4
  %chan.i = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %hw, i32 0, i32 4
  %12 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chan.i, align 4
  %arrayidx.i = getelementptr %struct.clkgen_quadfs_data, ptr %7, i32 0, i32 15, i32 %13
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %15
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !137
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !140
  %shift.i.i = getelementptr %struct.clkgen_quadfs_data, ptr %7, i32 0, i32 15, i32 %13, i32 2
  %18 = ptrtoint ptr %shift.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %shift.i.i, align 4
  %shr.i.i = lshr i32 %17, %19
  %mask.i.i = getelementptr %struct.clkgen_quadfs_data, ptr %7, i32 0, i32 15, i32 %13, i32 1
  %20 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mask.i.i, align 4
  %and.i.i = and i32 %shr.i.i, %21
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and.i.i, ptr %1, align 4
  %23 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs_base.i, align 4
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 4
  %27 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %chan.i, align 4
  %arrayidx5.i = getelementptr %struct.clkgen_quadfs_data, ptr %26, i32 0, i32 16, i32 %28
  %29 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx5.i, align 4
  %add.ptr.i65.i = getelementptr i8, ptr %24, i32 %30
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i65.i) #7, !srcloc !137
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !140
  %shift.i66.i = getelementptr %struct.clkgen_quadfs_data, ptr %26, i32 0, i32 16, i32 %28, i32 2
  %33 = ptrtoint ptr %shift.i66.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %shift.i66.i, align 4
  %shr.i67.i = lshr i32 %32, %34
  %mask.i68.i = getelementptr %struct.clkgen_quadfs_data, ptr %26, i32 0, i32 16, i32 %28, i32 1
  %35 = ptrtoint ptr %mask.i68.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mask.i68.i, align 4
  %and.i69.i = and i32 %shr.i67.i, %36
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and.i69.i, ptr %2, align 4
  %38 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs_base.i, align 4
  %40 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data, align 4
  %42 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %chan.i, align 4
  %arrayidx11.i = getelementptr %struct.clkgen_quadfs_data, ptr %41, i32 0, i32 17, i32 %43
  %44 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx11.i, align 4
  %add.ptr.i70.i = getelementptr i8, ptr %39, i32 %45
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i70.i) #7, !srcloc !137
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !140
  %shift.i71.i = getelementptr %struct.clkgen_quadfs_data, ptr %41, i32 0, i32 17, i32 %43, i32 2
  %48 = ptrtoint ptr %shift.i71.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %shift.i71.i, align 4
  %shr.i72.i = lshr i32 %47, %49
  %mask.i73.i = getelementptr %struct.clkgen_quadfs_data, ptr %41, i32 0, i32 17, i32 %43, i32 1
  %50 = ptrtoint ptr %mask.i73.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mask.i73.i, align 4
  %and.i74.i = and i32 %shr.i72.i, %51
  %52 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %and.i74.i, ptr %3, align 4
  %53 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data, align 4
  %nsdiv_present.i = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %54, i32 0, i32 5
  %55 = ptrtoint ptr %nsdiv_present.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %nsdiv_present.i, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i = icmp eq i8 %56, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs_base.i, align 4
  %59 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %chan.i, align 4
  %arrayidx18.i = getelementptr %struct.clkgen_quadfs_data, ptr %54, i32 0, i32 18, i32 %60
  %61 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx18.i, align 4
  %add.ptr.i75.i = getelementptr i8, ptr %58, i32 %62
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i75.i) #7, !srcloc !137
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !140
  %shift.i76.i = getelementptr %struct.clkgen_quadfs_data, ptr %54, i32 0, i32 18, i32 %60, i32 2
  %65 = ptrtoint ptr %shift.i76.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %shift.i76.i, align 4
  %shr.i77.i = lshr i32 %64, %66
  %mask.i78.i = getelementptr %struct.clkgen_quadfs_data, ptr %54, i32 0, i32 18, i32 %60, i32 1
  %67 = ptrtoint ptr %mask.i78.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %mask.i78.i, align 4
  %and.i79.i = and i32 %shr.i77.i, %68
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %and.i79.sink.i = phi i32 [ %and.i79.i, %if.then.i ], [ 1, %entry.if.end.i_crit_edge ]
  %69 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %and.i79.sink.i, ptr %4, align 4
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool23.not.i = icmp eq i32 %71, 0
  br i1 %tobool23.not.i, label %land.lhs.true.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.end.i
  %72 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool25.not.i = icmp eq i32 %73, 0
  br i1 %tobool25.not.i, label %land.lhs.true26.i, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true26.i:                                ; preds = %land.lhs.true.i
  %74 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool28.not.i = icmp eq i32 %75, 0
  br i1 %tobool28.not.i, label %land.lhs.true26.i.cleanup_crit_edge, label %land.lhs.true26.i.if.end_crit_edge

land.lhs.true26.i.if.end_crit_edge:               ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true26.i.cleanup_crit_edge:              ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true26.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %md.i = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %hw, i32 0, i32 5
  %76 = ptrtoint ptr %md.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %71, ptr %md.i, align 4
  %77 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %2, align 4
  %pe33.i = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %hw, i32 0, i32 6
  %79 = ptrtoint ptr %pe33.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %pe33.i, align 4
  %80 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %3, align 4
  %sdiv35.i = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %hw, i32 0, i32 7
  %82 = ptrtoint ptr %sdiv35.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %sdiv35.i, align 4
  %nsdiv37.i = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %hw, i32 0, i32 8
  %83 = ptrtoint ptr %nsdiv37.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %and.i79.sink.i, ptr %nsdiv37.i, align 4
  %call1 = call i32 %9(i32 noundef %parent_rate, ptr noundef nonnull %params, ptr noundef nonnull %rate) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.do.body8_crit_edge, label %do.end

if.end.do.body8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = call ptr @clk_hw_get_name(ptr noundef %hw) #7
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %call5, ptr noundef nonnull @.str.15) #11
  br label %do.body8

do.body8:                                         ; preds = %do.end, %if.end.do.body8_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @quadfs_recalc_rate.__UNIQUE_ID_ddebug180, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@quadfs_recalc_rate, %if.then14)) #7
          to label %do.end18 [label %if.then14], !srcloc !132

if.then14:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = call ptr @clk_hw_get_name(ptr noundef %hw) #7
  %84 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %rate, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @quadfs_recalc_rate.__UNIQUE_ID_ddebug180, ptr noundef nonnull @.str.16, ptr noundef %call15, ptr noundef nonnull @.str.15, i32 noundef %85) #7
  br label %do.end18

do.end18:                                         ; preds = %if.then14, %do.body8
  %86 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %rate, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %land.lhs.true26.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %87, %do.end18 ], [ 0, %land.lhs.true26.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %params) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @quadfs_round_rate(ptr noundef %hw, i32 noundef %rate, ptr nocapture noundef readonly %prate) #5 align 64 {
entry:
  %rate.i = alloca i32, align 4
  %params = alloca %struct.stm_fs, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %params) #7
  %0 = getelementptr inbounds %struct.stm_fs, ptr %params, i32 0, i32 1
  %1 = getelementptr inbounds %struct.stm_fs, ptr %params, i32 0, i32 2
  %2 = getelementptr inbounds %struct.stm_fs, ptr %params, i32 0, i32 3
  %3 = getelementptr inbounds %struct.stm_fs, ptr %params, i32 0, i32 4
  %4 = call ptr @memset(ptr %params, i32 255, i32 20)
  %5 = ptrtoint ptr %prate to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %prate, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rate.i) #7
  %7 = ptrtoint ptr %rate.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %rate.i, align 4
  %data.i = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %hw, i32 0, i32 3
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %get_rate.i = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %9, i32 0, i32 21
  %10 = ptrtoint ptr %get_rate.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_rate.i, align 4
  %get_params.i = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %9, i32 0, i32 20
  %12 = ptrtoint ptr %get_params.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_params.i, align 4
  %call.i = call i32 %13(i32 noundef %6, i32 noundef %rate, ptr noundef nonnull %params) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.quadfs_find_best_rate.exit_crit_edge

entry.quadfs_find_best_rate.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %quadfs_find_best_rate.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = call i32 %11(i32 noundef %6, ptr noundef nonnull %params, ptr noundef nonnull %rate.i) #7
  br label %quadfs_find_best_rate.exit

quadfs_find_best_rate.exit:                       ; preds = %if.then.i, %entry.quadfs_find_best_rate.exit_crit_edge
  %14 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rate.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @quadfs_round_rate.__UNIQUE_ID_ddebug181, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@quadfs_round_rate, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !132

if.then:                                          ; preds = %quadfs_find_best_rate.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = call ptr @clk_hw_get_name(ptr noundef %hw) #7
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %2, align 4
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %0, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %1, align 4
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %3, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @quadfs_round_rate.__UNIQUE_ID_ddebug181, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, ptr noundef %call4, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %quadfs_find_best_rate.exit
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %params) #7
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @quadfs_set_rate(ptr nocapture noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #5 align 64 {
entry:
  %rate.i = alloca i32, align 4
  %params = alloca %struct.stm_fs, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %params) #7
  %0 = getelementptr inbounds %struct.stm_fs, ptr %params, i32 0, i32 1
  %1 = getelementptr inbounds %struct.stm_fs, ptr %params, i32 0, i32 2
  %2 = getelementptr inbounds %struct.stm_fs, ptr %params, i32 0, i32 3
  %3 = getelementptr inbounds %struct.stm_fs, ptr %params, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %tobool.not = icmp eq i32 %rate, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %parent_rate)
  %tobool1.not = icmp eq i32 %parent_rate, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = call ptr @memset(ptr %params, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rate.i) #7
  %5 = ptrtoint ptr %rate.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %rate.i, align 4
  %data.i = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %hw, i32 0, i32 3
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %get_rate.i = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %7, i32 0, i32 21
  %8 = ptrtoint ptr %get_rate.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_rate.i, align 4
  %get_params.i = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %7, i32 0, i32 20
  %10 = ptrtoint ptr %get_params.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_params.i, align 4
  %call.i = call i32 %11(i32 noundef %parent_rate, i32 noundef %rate, ptr noundef nonnull %params) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.quadfs_find_best_rate.exit_crit_edge

if.end.quadfs_find_best_rate.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %quadfs_find_best_rate.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = call i32 %9(i32 noundef %parent_rate, ptr noundef nonnull %params, ptr noundef nonnull %rate.i) #7
  br label %quadfs_find_best_rate.exit

quadfs_find_best_rate.exit:                       ; preds = %if.then.i, %if.end.quadfs_find_best_rate.exit_crit_edge
  %12 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rate.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool2.not = icmp eq i32 %13, 0
  br i1 %tobool2.not, label %quadfs_find_best_rate.exit.cleanup_crit_edge, label %if.end4

quadfs_find_best_rate.exit.cleanup_crit_edge:     ; preds = %quadfs_find_best_rate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %quadfs_find_best_rate.exit
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %0, align 4
  %md.i = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %hw, i32 0, i32 5
  %16 = ptrtoint ptr %md.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %md.i, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %1, align 4
  %pe1.i = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %hw, i32 0, i32 6
  %19 = ptrtoint ptr %pe1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %pe1.i, align 4
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %2, align 4
  %sdiv2.i = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %hw, i32 0, i32 7
  %22 = ptrtoint ptr %sdiv2.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %sdiv2.i, align 4
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %3, align 4
  %nsdiv3.i = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %hw, i32 0, i32 8
  %25 = ptrtoint ptr %nsdiv3.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %nsdiv3.i, align 4
  call fastcc void @quadfs_fsynth_program_rate(ptr noundef %hw) #7
  %regs_base.i.i = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %hw, i32 0, i32 1
  %26 = ptrtoint ptr %regs_base.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs_base.i.i, align 4
  %28 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i, align 4
  %chan.i.i = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %hw, i32 0, i32 4
  %30 = ptrtoint ptr %chan.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %chan.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.clkgen_quadfs_data, ptr %29, i32 0, i32 14, i32 %31
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  call void @arm_heavy_mb() #7
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %27, i32 %33
  %34 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !137
  %35 = call i32 @llvm.bswap.i32(i32 %34) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  %mask.i.i.i = getelementptr %struct.clkgen_quadfs_data, ptr %29, i32 0, i32 14, i32 %31, i32 1
  %36 = ptrtoint ptr %mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mask.i.i.i, align 4
  %shift.i.i.i = getelementptr %struct.clkgen_quadfs_data, ptr %29, i32 0, i32 14, i32 %31, i32 2
  %38 = ptrtoint ptr %shift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %shift.i.i.i, align 4
  %shl.i.i.i = shl i32 %37, %39
  %neg.i.i.i = xor i32 %shl.i.i.i, -1
  %and.i.i.i = and i32 %35, %neg.i.i.i
  %shl3.i.i.i = shl nuw i32 1, %39
  %or.i.i.i = or i32 %and.i.i.i, %shl3.i.i.i
  %40 = call i32 @llvm.bswap.i32(i32 %or.i.i.i) #7
  %41 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i.i, align 4
  %add.ptr5.i.i.i = getelementptr i8, ptr %27, i32 %42
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i.i, i32 %40) #7, !srcloc !139
  %43 = ptrtoint ptr %regs_base.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs_base.i.i, align 4
  %45 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data.i, align 4
  %47 = ptrtoint ptr %chan.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %chan.i.i, align 4
  %arrayidx5.i.i = getelementptr %struct.clkgen_quadfs_data, ptr %46, i32 0, i32 14, i32 %48
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  call void @arm_heavy_mb() #7
  %49 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx5.i.i, align 4
  %add.ptr.i11.i.i = getelementptr i8, ptr %44, i32 %50
  %51 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.i.i) #7, !srcloc !137
  %52 = call i32 @llvm.bswap.i32(i32 %51) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  %mask.i12.i.i = getelementptr %struct.clkgen_quadfs_data, ptr %46, i32 0, i32 14, i32 %48, i32 1
  %53 = ptrtoint ptr %mask.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mask.i12.i.i, align 4
  %shift.i13.i.i = getelementptr %struct.clkgen_quadfs_data, ptr %46, i32 0, i32 14, i32 %48, i32 2
  %55 = ptrtoint ptr %shift.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %shift.i13.i.i, align 4
  %shl.i14.i.i = shl i32 %54, %56
  %neg.i15.i.i = xor i32 %shl.i14.i.i, -1
  %and.i16.i.i = and i32 %52, %neg.i15.i.i
  %57 = call i32 @llvm.bswap.i32(i32 %and.i16.i.i) #7
  %58 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx5.i.i, align 4
  %add.ptr5.i17.i.i = getelementptr i8, ptr %44, i32 %59
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i17.i.i, i32 %57) #7, !srcloc !139
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %quadfs_find_best_rate.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %quadfs_find_best_rate.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %params) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @quadfs_fsynth_program_rate(ptr nocapture noundef readonly %fs) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs_base = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %fs, i32 0, i32 1
  %0 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs_base, align 4
  %data = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %fs, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %chan = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %fs, i32 0, i32 4
  %4 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chan, align 4
  %arrayidx = getelementptr %struct.clkgen_quadfs_data, ptr %3, i32 0, i32 14, i32 %5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !137
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  %mask.i = getelementptr %struct.clkgen_quadfs_data, ptr %3, i32 0, i32 14, i32 %5, i32 1
  %10 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mask.i, align 4
  %shift.i = getelementptr %struct.clkgen_quadfs_data, ptr %3, i32 0, i32 14, i32 %5, i32 2
  %12 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %shift.i, align 4
  %shl.i = shl i32 %11, %13
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %9, %neg.i
  %14 = tail call i32 @llvm.bswap.i32(i32 %and.i) #7
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %add.ptr5.i = getelementptr i8, ptr %1, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %14) #7, !srcloc !139
  %17 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs_base, align 4
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %21 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %chan, align 4
  %arrayidx4 = getelementptr %struct.clkgen_quadfs_data, ptr %20, i32 0, i32 15, i32 %22
  %md = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %fs, i32 0, i32 5
  %23 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %md, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  %25 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx4, align 4
  %add.ptr.i57 = getelementptr i8, ptr %18, i32 %26
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i57) #7, !srcloc !137
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  %mask.i58 = getelementptr %struct.clkgen_quadfs_data, ptr %20, i32 0, i32 15, i32 %22, i32 1
  %29 = ptrtoint ptr %mask.i58 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mask.i58, align 4
  %shift.i59 = getelementptr %struct.clkgen_quadfs_data, ptr %20, i32 0, i32 15, i32 %22, i32 2
  %31 = ptrtoint ptr %shift.i59 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %shift.i59, align 4
  %shl.i60 = shl i32 %30, %32
  %neg.i61 = xor i32 %shl.i60, -1
  %and.i62 = and i32 %28, %neg.i61
  %shl3.i = shl i32 %24, %32
  %or.i = or i32 %and.i62, %shl3.i
  %33 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %34 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx4, align 4
  %add.ptr5.i63 = getelementptr i8, ptr %18, i32 %35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i63, i32 %33) #7, !srcloc !139
  %36 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs_base, align 4
  %38 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data, align 4
  %40 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %chan, align 4
  %arrayidx8 = getelementptr %struct.clkgen_quadfs_data, ptr %39, i32 0, i32 16, i32 %41
  %pe9 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %fs, i32 0, i32 6
  %42 = ptrtoint ptr %pe9 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pe9, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  %44 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx8, align 4
  %add.ptr.i64 = getelementptr i8, ptr %37, i32 %45
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i64) #7, !srcloc !137
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  %mask.i65 = getelementptr %struct.clkgen_quadfs_data, ptr %39, i32 0, i32 16, i32 %41, i32 1
  %48 = ptrtoint ptr %mask.i65 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mask.i65, align 4
  %shift.i66 = getelementptr %struct.clkgen_quadfs_data, ptr %39, i32 0, i32 16, i32 %41, i32 2
  %50 = ptrtoint ptr %shift.i66 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %shift.i66, align 4
  %shl.i67 = shl i32 %49, %51
  %neg.i68 = xor i32 %shl.i67, -1
  %and.i69 = and i32 %47, %neg.i68
  %shl3.i70 = shl i32 %43, %51
  %or.i71 = or i32 %and.i69, %shl3.i70
  %52 = tail call i32 @llvm.bswap.i32(i32 %or.i71) #7
  %53 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx8, align 4
  %add.ptr5.i72 = getelementptr i8, ptr %37, i32 %54
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i72, i32 %52) #7, !srcloc !139
  %55 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs_base, align 4
  %57 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data, align 4
  %59 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %chan, align 4
  %arrayidx13 = getelementptr %struct.clkgen_quadfs_data, ptr %58, i32 0, i32 17, i32 %60
  %sdiv14 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %fs, i32 0, i32 7
  %61 = ptrtoint ptr %sdiv14 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %sdiv14, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  %63 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx13, align 4
  %add.ptr.i73 = getelementptr i8, ptr %56, i32 %64
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i73) #7, !srcloc !137
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  %mask.i74 = getelementptr %struct.clkgen_quadfs_data, ptr %58, i32 0, i32 17, i32 %60, i32 1
  %67 = ptrtoint ptr %mask.i74 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %mask.i74, align 4
  %shift.i75 = getelementptr %struct.clkgen_quadfs_data, ptr %58, i32 0, i32 17, i32 %60, i32 2
  %69 = ptrtoint ptr %shift.i75 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %shift.i75, align 4
  %shl.i76 = shl i32 %68, %70
  %neg.i77 = xor i32 %shl.i76, -1
  %and.i78 = and i32 %66, %neg.i77
  %shl3.i79 = shl i32 %62, %70
  %or.i80 = or i32 %and.i78, %shl3.i79
  %71 = tail call i32 @llvm.bswap.i32(i32 %or.i80) #7
  %72 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx13, align 4
  %add.ptr5.i81 = getelementptr i8, ptr %56, i32 %73
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i81, i32 %71) #7, !srcloc !139
  %lock = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %fs, i32 0, i32 2
  %74 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %lock, align 4
  %tobool.not = icmp eq ptr %75, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body15

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body15:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %75) #7
  br label %if.end

if.end:                                           ; preds = %do.body15, %entry.if.end_crit_edge
  %flags.0 = phi i32 [ %call17, %do.body15 ], [ 0, %entry.if.end_crit_edge ]
  %76 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %data, align 4
  %nsdiv_present = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %77, i32 0, i32 5
  %78 = ptrtoint ptr %nsdiv_present to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %nsdiv_present, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool21.not = icmp eq i8 %79, 0
  br i1 %tobool21.not, label %if.end.if.end28_crit_edge, label %if.then22

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regs_base, align 4
  %82 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %chan, align 4
  %arrayidx26 = getelementptr %struct.clkgen_quadfs_data, ptr %77, i32 0, i32 18, i32 %83
  %nsdiv27 = getelementptr inbounds %struct.st_clk_quadfs_fsynth, ptr %fs, i32 0, i32 8
  %84 = ptrtoint ptr %nsdiv27 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %nsdiv27, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  %86 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx26, align 4
  %add.ptr.i82 = getelementptr i8, ptr %81, i32 %87
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i82) #7, !srcloc !137
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  %mask.i83 = getelementptr %struct.clkgen_quadfs_data, ptr %77, i32 0, i32 18, i32 %83, i32 1
  %90 = ptrtoint ptr %mask.i83 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %mask.i83, align 4
  %shift.i84 = getelementptr %struct.clkgen_quadfs_data, ptr %77, i32 0, i32 18, i32 %83, i32 2
  %92 = ptrtoint ptr %shift.i84 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %shift.i84, align 4
  %shl.i85 = shl i32 %91, %93
  %neg.i86 = xor i32 %shl.i85, -1
  %and.i87 = and i32 %89, %neg.i86
  %shl3.i88 = shl i32 %85, %93
  %or.i89 = or i32 %and.i87, %shl3.i88
  %94 = tail call i32 @llvm.bswap.i32(i32 %or.i89) #7
  %95 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx26, align 4
  %add.ptr5.i90 = getelementptr i8, ptr %81, i32 %96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i90, i32 %94) #7, !srcloc !139
  br label %if.end28

if.end28:                                         ; preds = %if.then22, %if.end.if.end28_crit_edge
  %97 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %lock, align 4
  %tobool30.not = icmp eq ptr %98, null
  br i1 %tobool30.not, label %if.end28.if.end33_crit_edge, label %if.then31

if.end28.if.end33_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %98, i32 noundef %flags.0) #7
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end28.if.end33_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_fs660c32_dig_get_params(i32 noundef %input, i32 noundef %output, ptr nocapture noundef %fs) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i = zext i32 %output to i64
  %conv1.i = sext i32 %input to i64
  %mul.i = shl nsw i64 %conv1.i, 20
  %conv8.i.i = zext i32 %input to i64
  %mul10.i.i = shl nuw nsw i64 %conv8.i.i, 25
  %mdiv15.i = getelementptr inbounds %struct.stm_fs, ptr %fs, i32 0, i32 1
  %pe17.i = getelementptr inbounds %struct.stm_fs, ptr %fs, i32 0, i32 2
  %sdiv18.i = getelementptr inbounds %struct.stm_fs, ptr %fs, i32 0, i32 3
  %nsdiv19.i = getelementptr inbounds %struct.stm_fs, ptr %fs, i32 0, i32 4
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc13.land.rhs_crit_edge, %entry
  %si.0184 = phi i32 [ 0, %entry ], [ %inc14, %for.inc13.land.rhs_crit_edge ]
  %deviation.0183 = phi i32 [ -1, %entry ], [ %deviation.5, %for.inc13.land.rhs_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %deviation.0183)
  %tobool.not = icmp eq i32 %deviation.0183, 0
  br i1 %tobool.not, label %land.rhs.if.end54_crit_edge, label %for.body

land.rhs.if.end54_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

for.body:                                         ; preds = %land.rhs
  %sh_prom.i = zext i32 %si.0184 to i64
  %shl.i = shl i64 %conv.i, %sh_prom.i
  %mul4.neg.i = mul i64 %shl.i, -1048576
  %sub.i = add i64 %mul4.neg.i, %mul.i
  %call.i = tail call i64 @div64_u64(i64 noundef %sub.i, i64 noundef %shl.i) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 32767, i64 %call.i)
  %cmp.i = icmp ugt i64 %call.i, 32767
  br i1 %cmp.i, label %for.body.clk_fs660c32_get_pe.exit_crit_edge, label %if.end.i

for.body.clk_fs660c32_get_pe.exit_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_fs660c32_get_pe.exit

if.end.i:                                         ; preds = %for.body
  %conv6.i = trunc i64 %call.i to i32
  %shl.i.i = shl nuw nsw i32 1, %si.0184
  %mul1.i.i = shl nuw nsw i32 %conv6.i, 5
  %conv2.i.i = zext i32 %mul1.i.i to i64
  %add3.i.i = add nuw nsw i64 %conv2.i.i, 33554432
  %conv4.i.i = zext i32 %shl.i.i to i64
  %mul7.i.i = mul nuw nsw i64 %add3.i.i, %conv4.i.i
  %call.i.i = tail call i64 @div64_u64(i64 noundef %mul10.i.i, i64 noundef %mul7.i.i) #7
  %conv11.i.i = trunc i64 %call.i.i to i32
  %sub8.i = sub i32 %output, %conv11.i.i
  %0 = tail call i32 @llvm.abs.i32(i32 %sub8.i, i1 false) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %deviation.0183)
  %cmp12.i = icmp ult i32 %0, %deviation.0183
  br i1 %cmp12.i, label %if.then14.i, label %if.end.i.clk_fs660c32_get_pe.exit_crit_edge

if.end.i.clk_fs660c32_get_pe.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_fs660c32_get_pe.exit

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %mdiv15.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %mdiv15.i, align 4
  %2 = ptrtoint ptr %pe17.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv6.i, ptr %pe17.i, align 4
  %3 = ptrtoint ptr %sdiv18.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %si.0184, ptr %sdiv18.i, align 4
  %4 = ptrtoint ptr %nsdiv19.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %nsdiv19.i, align 4
  br label %clk_fs660c32_get_pe.exit

clk_fs660c32_get_pe.exit:                         ; preds = %if.then14.i, %if.end.i.clk_fs660c32_get_pe.exit_crit_edge, %for.body.clk_fs660c32_get_pe.exit_crit_edge
  %deviation.1 = phi i32 [ %deviation.0183, %for.body.clk_fs660c32_get_pe.exit_crit_edge ], [ %0, %if.then14.i ], [ %deviation.0183, %if.end.i.clk_fs660c32_get_pe.exit_crit_edge ]
  %mul4.neg.i97 = mul i64 %shl.i, -2064384
  %sub.i98 = add i64 %mul4.neg.i97, %mul.i
  %call.i99 = tail call i64 @div64_u64(i64 noundef %sub.i98, i64 noundef %shl.i) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 32767, i64 %call.i99)
  %cmp.i100 = icmp ugt i64 %call.i99, 32767
  br i1 %cmp.i100, label %clk_fs660c32_get_pe.exit122, label %if.end.i114

if.end.i114:                                      ; preds = %clk_fs660c32_get_pe.exit
  %conv6.i101 = trunc i64 %call.i99 to i32
  %shl.i.i102 = shl nuw i32 1, %si.0184
  %mul1.i.i103 = shl nuw nsw i32 %conv6.i101, 5
  %conv2.i.i104 = zext i32 %mul1.i.i103 to i64
  %add3.i.i105 = add nuw nsw i64 %conv2.i.i104, 66060288
  %conv4.i.i106 = zext i32 %shl.i.i102 to i64
  %mul7.i.i107 = mul nuw nsw i64 %add3.i.i105, %conv4.i.i106
  %call.i.i110 = tail call i64 @div64_u64(i64 noundef %mul10.i.i, i64 noundef %mul7.i.i107) #7
  %conv11.i.i111 = trunc i64 %call.i.i110 to i32
  %sub8.i112 = sub i32 %output, %conv11.i.i111
  %5 = tail call i32 @llvm.abs.i32(i32 %sub8.i112, i1 false) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %deviation.1)
  %cmp12.i113 = icmp ult i32 %5, %deviation.1
  br i1 %cmp12.i113, label %if.then14.i120, label %if.end.i114.if.end_crit_edge

if.end.i114.if.end_crit_edge:                     ; preds = %if.end.i114
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then14.i120:                                   ; preds = %if.end.i114
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %mdiv15.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 31, ptr %mdiv15.i, align 4
  %7 = ptrtoint ptr %pe17.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv6.i101, ptr %pe17.i, align 4
  %8 = ptrtoint ptr %sdiv18.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %si.0184, ptr %sdiv18.i, align 4
  %9 = ptrtoint ptr %nsdiv19.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %nsdiv19.i, align 4
  br label %if.end

clk_fs660c32_get_pe.exit122:                      ; preds = %clk_fs660c32_get_pe.exit
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %call.i99)
  %cmp5 = icmp ugt i64 %call.i, %call.i99
  %or.cond177 = select i1 %cmp.i, i1 %cmp5, i1 false
  br i1 %or.cond177, label %clk_fs660c32_get_pe.exit122.for.inc13_crit_edge, label %clk_fs660c32_get_pe.exit122.if.end_crit_edge

clk_fs660c32_get_pe.exit122.for.inc13_crit_edge:  ; preds = %clk_fs660c32_get_pe.exit122
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc13

clk_fs660c32_get_pe.exit122.if.end_crit_edge:     ; preds = %clk_fs660c32_get_pe.exit122
  call void @__sanitizer_cov_trace_pc() #9
  %.pre = shl nuw i32 1, %si.0184
  %.pre192 = zext i32 %.pre to i64
  br label %if.end

if.end:                                           ; preds = %clk_fs660c32_get_pe.exit122.if.end_crit_edge, %if.then14.i120, %if.end.i114.if.end_crit_edge
  %conv4.i.i137.pre-phi = phi i64 [ %.pre192, %clk_fs660c32_get_pe.exit122.if.end_crit_edge ], [ %conv4.i.i106, %if.end.i114.if.end_crit_edge ], [ %conv4.i.i106, %if.then14.i120 ]
  %deviation.2176 = phi i32 [ %deviation.1, %clk_fs660c32_get_pe.exit122.if.end_crit_edge ], [ %deviation.1, %if.end.i114.if.end_crit_edge ], [ %5, %if.then14.i120 ]
  br label %land.rhs8

land.rhs8:                                        ; preds = %clk_fs660c32_get_pe.exit153.land.rhs8_crit_edge, %if.end
  %m.0181 = phi i32 [ 1, %if.end ], [ %inc, %clk_fs660c32_get_pe.exit153.land.rhs8_crit_edge ]
  %deviation.3180 = phi i32 [ %deviation.2176, %if.end ], [ %deviation.4, %clk_fs660c32_get_pe.exit153.land.rhs8_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %deviation.3180)
  %tobool9.not = icmp eq i32 %deviation.3180, 0
  br i1 %tobool9.not, label %land.rhs8.for.inc13_crit_edge, label %for.body11

land.rhs8.for.inc13_crit_edge:                    ; preds = %land.rhs8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc13

for.body11:                                       ; preds = %land.rhs8
  %conv2.i = zext i32 %m.0181 to i64
  %.neg.i = mul nsw i64 %conv2.i, -32768
  %mul3.neg.i = add nsw i64 %.neg.i, -1048576
  %mul4.neg.i128 = mul i64 %mul3.neg.i, %shl.i
  %sub.i129 = add i64 %mul4.neg.i128, %mul.i
  %call.i130 = tail call i64 @div64_u64(i64 noundef %sub.i129, i64 noundef %shl.i) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 32767, i64 %call.i130)
  %cmp.i131 = icmp ugt i64 %call.i130, 32767
  br i1 %cmp.i131, label %for.body11.clk_fs660c32_get_pe.exit153_crit_edge, label %if.end.i145

for.body11.clk_fs660c32_get_pe.exit153_crit_edge: ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_fs660c32_get_pe.exit153

if.end.i145:                                      ; preds = %for.body11
  %conv6.i132 = trunc i64 %call.i130 to i32
  %add.i.i = add nuw nsw i32 %m.0181, 32
  %conv.i.i = zext i32 %add.i.i to i64
  %mul.i.i = shl nuw nsw i64 %conv.i.i, 20
  %mul1.i.i134 = shl nuw nsw i32 %conv6.i132, 5
  %conv2.i.i135 = zext i32 %mul1.i.i134 to i64
  %add3.i.i136 = add nuw nsw i64 %mul.i.i, %conv2.i.i135
  %mul7.i.i138 = mul i64 %add3.i.i136, %conv4.i.i137.pre-phi
  %call.i.i141 = tail call i64 @div64_u64(i64 noundef %mul10.i.i, i64 noundef %mul7.i.i138) #7
  %conv11.i.i142 = trunc i64 %call.i.i141 to i32
  %sub8.i143 = sub i32 %output, %conv11.i.i142
  %10 = tail call i32 @llvm.abs.i32(i32 %sub8.i143, i1 false) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %deviation.3180)
  %cmp12.i144 = icmp ult i32 %10, %deviation.3180
  br i1 %cmp12.i144, label %if.then14.i151, label %if.end.i145.clk_fs660c32_get_pe.exit153_crit_edge

if.end.i145.clk_fs660c32_get_pe.exit153_crit_edge: ; preds = %if.end.i145
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_fs660c32_get_pe.exit153

if.then14.i151:                                   ; preds = %if.end.i145
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %mdiv15.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %m.0181, ptr %mdiv15.i, align 4
  %12 = ptrtoint ptr %pe17.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv6.i132, ptr %pe17.i, align 4
  %13 = ptrtoint ptr %sdiv18.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %si.0184, ptr %sdiv18.i, align 4
  %14 = ptrtoint ptr %nsdiv19.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %nsdiv19.i, align 4
  br label %clk_fs660c32_get_pe.exit153

clk_fs660c32_get_pe.exit153:                      ; preds = %if.then14.i151, %if.end.i145.clk_fs660c32_get_pe.exit153_crit_edge, %for.body11.clk_fs660c32_get_pe.exit153_crit_edge
  %deviation.4 = phi i32 [ %deviation.3180, %for.body11.clk_fs660c32_get_pe.exit153_crit_edge ], [ %10, %if.then14.i151 ], [ %deviation.3180, %if.end.i145.clk_fs660c32_get_pe.exit153_crit_edge ]
  %inc = add nuw nsw i32 %m.0181, 1
  %exitcond.not = icmp eq i32 %inc, 31
  br i1 %exitcond.not, label %clk_fs660c32_get_pe.exit153.for.inc13_crit_edge, label %clk_fs660c32_get_pe.exit153.land.rhs8_crit_edge

clk_fs660c32_get_pe.exit153.land.rhs8_crit_edge:  ; preds = %clk_fs660c32_get_pe.exit153
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs8

clk_fs660c32_get_pe.exit153.for.inc13_crit_edge:  ; preds = %clk_fs660c32_get_pe.exit153
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc13

for.inc13:                                        ; preds = %clk_fs660c32_get_pe.exit153.for.inc13_crit_edge, %land.rhs8.for.inc13_crit_edge, %clk_fs660c32_get_pe.exit122.for.inc13_crit_edge
  %deviation.5 = phi i32 [ %deviation.1, %clk_fs660c32_get_pe.exit122.for.inc13_crit_edge ], [ %deviation.4, %clk_fs660c32_get_pe.exit153.for.inc13_crit_edge ], [ 0, %land.rhs8.for.inc13_crit_edge ]
  %inc14 = add nuw nsw i32 %si.0184, 1
  %exitcond191.not = icmp eq i32 %inc14, 9
  br i1 %exitcond191.not, label %for.end15, label %for.inc13.land.rhs_crit_edge

for.inc13.land.rhs_crit_edge:                     ; preds = %for.inc13
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

for.end15:                                        ; preds = %for.inc13
  %15 = zext i32 %deviation.5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %deviation.5, label %if.then20 [
    i32 -1, label %for.end15.cleanup_crit_edge
    i32 0, label %for.end15.if.end54_crit_edge
  ]

for.end15.if.end54_crit_edge:                     ; preds = %for.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

for.end15.cleanup_crit_edge:                      ; preds = %for.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then20:                                        ; preds = %for.end15
  %16 = ptrtoint ptr %pe17.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pe17.i, align 4
  %18 = tail call i32 @llvm.usub.sat.i32(i32 %17, i32 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %18)
  %cmp29187 = icmp ult i32 %18, 32768
  br i1 %cmp29187, label %land.rhs31.lr.ph, label %if.then20.if.end54_crit_edge

if.then20.if.end54_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

land.rhs31.lr.ph:                                 ; preds = %if.then20
  %spec.select = zext i32 %18 to i64
  %19 = ptrtoint ptr %nsdiv19.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nsdiv19.i, align 4
  %21 = ptrtoint ptr %sdiv18.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sdiv18.i, align 4
  %23 = ptrtoint ptr %mdiv15.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mdiv15.i, align 4
  %shl.i154 = shl nuw i32 1, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp.i155 = icmp eq i32 %20, 1
  %cond.i = select i1 %cmp.i155, i32 1, i32 3
  %add.i = add i32 %24, 32
  %conv.i156 = zext i32 %add.i to i64
  %mul.i157 = shl nuw nsw i64 %conv.i156, 20
  %conv4.i = zext i32 %shl.i154 to i64
  %conv6.i159 = zext i32 %cond.i to i64
  %mul5.i = mul nuw nsw i64 %conv6.i159, %conv4.i
  br label %land.rhs31

land.rhs31:                                       ; preds = %for.inc51.land.rhs31_crit_edge, %land.rhs31.lr.ph
  %storemerge91189 = phi i64 [ %spec.select, %land.rhs31.lr.ph ], [ %inc52, %for.inc51.land.rhs31_crit_edge ]
  %deviation.6188 = phi i32 [ %deviation.5, %land.rhs31.lr.ph ], [ %deviation.7, %for.inc51.land.rhs31_crit_edge ]
  %25 = ptrtoint ptr %pe17.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pe17.i, align 4
  %add = add i32 %26, 2
  %conv33 = zext i32 %add to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %storemerge91189, i64 %conv33)
  %cmp34.not = icmp ugt i64 %storemerge91189, %conv33
  br i1 %cmp34.not, label %land.rhs31.if.end54_crit_edge, label %for.body37

land.rhs31.if.end54_crit_edge:                    ; preds = %land.rhs31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

for.body37:                                       ; preds = %land.rhs31
  %conv38 = trunc i64 %storemerge91189 to i32
  %mul1.i = shl nuw nsw i32 %conv38, 5
  %conv2.i158 = zext i32 %mul1.i to i64
  %add3.i = add nuw nsw i64 %mul.i157, %conv2.i158
  %mul7.i = mul i64 %mul5.i, %add3.i
  %call.i160 = tail call i64 @div64_u64(i64 noundef %mul10.i.i, i64 noundef %mul7.i) #7
  %conv11.i = trunc i64 %call.i160 to i32
  %sub41 = sub i32 %output, %conv11.i
  %27 = tail call i32 @llvm.abs.i32(i32 %sub41, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %deviation.6188)
  %cmp45 = icmp ult i32 %27, %deviation.6188
  br i1 %cmp45, label %if.then47, label %for.body37.for.inc51_crit_edge

for.body37.for.inc51_crit_edge:                   ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc51

if.then47:                                        ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %pe17.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv38, ptr %pe17.i, align 4
  br label %for.inc51

for.inc51:                                        ; preds = %if.then47, %for.body37.for.inc51_crit_edge
  %deviation.7 = phi i32 [ %27, %if.then47 ], [ %deviation.6188, %for.body37.for.inc51_crit_edge ]
  %inc52 = add nuw nsw i64 %storemerge91189, 1
  %cmp29 = icmp ult i64 %storemerge91189, 32767
  br i1 %cmp29, label %for.inc51.land.rhs31_crit_edge, label %for.inc51.if.end54_crit_edge

for.inc51.if.end54_crit_edge:                     ; preds = %for.inc51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

for.inc51.land.rhs31_crit_edge:                   ; preds = %for.inc51
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs31

if.end54:                                         ; preds = %for.inc51.if.end54_crit_edge, %land.rhs31.if.end54_crit_edge, %if.then20.if.end54_crit_edge, %for.end15.if.end54_crit_edge, %land.rhs.if.end54_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %for.end15.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end54 ], [ %deviation.5, %for.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_fs660c32_dig_get_rate(i32 noundef %input, ptr nocapture noundef readonly %fs, ptr nocapture noundef writeonly %rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sdiv = getelementptr inbounds %struct.stm_fs, ptr %fs, i32 0, i32 3
  %0 = ptrtoint ptr %sdiv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sdiv, align 4
  %shl = shl nuw i32 1, %1
  %nsdiv = getelementptr inbounds %struct.stm_fs, ptr %fs, i32 0, i32 4
  %2 = ptrtoint ptr %nsdiv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nsdiv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  %cond = select i1 %cmp, i32 1, i32 3
  %mdiv = getelementptr inbounds %struct.stm_fs, ptr %fs, i32 0, i32 1
  %4 = ptrtoint ptr %mdiv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdiv, align 4
  %add = add i32 %5, 32
  %conv = zext i32 %add to i64
  %mul = shl nuw nsw i64 %conv, 20
  %pe = getelementptr inbounds %struct.stm_fs, ptr %fs, i32 0, i32 2
  %6 = ptrtoint ptr %pe to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pe, align 4
  %mul1 = shl i32 %7, 5
  %conv2 = zext i32 %mul1 to i64
  %add3 = add nuw nsw i64 %mul, %conv2
  %conv4 = zext i32 %shl to i64
  %conv6 = zext i32 %cond to i64
  %mul5 = mul nuw nsw i64 %conv6, %conv4
  %mul7 = mul i64 %mul5, %add3
  %conv8 = zext i32 %input to i64
  %mul10 = shl nuw nsw i64 %conv8, 25
  %call = tail call i64 @div64_u64(i64 noundef %mul10, i64 noundef %mul7) #7
  %conv11 = trunc i64 %call to i32
  %8 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv11, ptr %rate, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @quadfs_pll_enable(ptr nocapture noundef readonly %hw) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 1
  %lock = getelementptr inbounds %struct.st_clk_quadfs_pll, ptr %hw, i32 0, i32 2
  %1 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lock, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body1

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %2) #7
  br label %if.end

if.end:                                           ; preds = %do.body1, %entry.if.end_crit_edge
  %flags.0 = phi i32 [ %call5, %do.body1 ], [ 0, %entry.if.end_crit_edge ]
  %data = getelementptr inbounds %struct.st_clk_quadfs_pll, ptr %hw, i32 0, i32 3
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 4, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool8.not = icmp eq i8 %6, 0
  br i1 %tobool8.not, label %if.end.if.end11_crit_edge, label %if.then9

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %regs_base = getelementptr inbounds %struct.st_clk_quadfs_pll, ptr %hw, i32 0, i32 1
  %7 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs_base, align 4
  %nreset = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %4, i32 0, i32 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %nreset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nreset, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 %10
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !137
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  %mask.i = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %4, i32 0, i32 9, i32 1
  %13 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mask.i, align 4
  %shift.i = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %4, i32 0, i32 9, i32 2
  %15 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %shift.i, align 4
  %shl.i = shl i32 %14, %16
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %12, %neg.i
  %shl3.i = shl nuw i32 1, %16
  %or.i = or i32 %and.i, %shl3.i
  %17 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %18 = ptrtoint ptr %nreset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nreset, align 4
  %add.ptr5.i = getelementptr i8, ptr %8, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %17) #7, !srcloc !139
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end.if.end11_crit_edge
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %bwfilter_present = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %bwfilter_present to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bwfilter_present, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool13.not = icmp eq i8 %23, 0
  br i1 %tobool13.not, label %if.end11.if.end17_crit_edge, label %if.then14

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %regs_base15 = getelementptr inbounds %struct.st_clk_quadfs_pll, ptr %hw, i32 0, i32 1
  %24 = ptrtoint ptr %regs_base15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs_base15, align 4
  %ref_bw = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %21, i32 0, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  %26 = ptrtoint ptr %ref_bw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ref_bw, align 4
  %add.ptr.i73 = getelementptr i8, ptr %25, i32 %27
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i73) #7, !srcloc !137
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  %mask.i74 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %21, i32 0, i32 8, i32 1
  %30 = ptrtoint ptr %mask.i74 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mask.i74, align 4
  %shift.i75 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %21, i32 0, i32 8, i32 2
  %32 = ptrtoint ptr %shift.i75 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %shift.i75, align 4
  %shl.i76 = shl i32 %31, %33
  %neg.i77 = xor i32 %shl.i76, -1
  %and.i78 = and i32 %29, %neg.i77
  %34 = tail call i32 @llvm.bswap.i32(i32 %and.i78) #7
  %35 = ptrtoint ptr %ref_bw to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ref_bw, align 4
  %add.ptr5.i79 = getelementptr i8, ptr %25, i32 %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i79, i32 %34) #7, !srcloc !139
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end11.if.end17_crit_edge
  %regs_base18 = getelementptr inbounds %struct.st_clk_quadfs_pll, ptr %hw, i32 0, i32 1
  %37 = ptrtoint ptr %regs_base18 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs_base18, align 4
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data, align 4
  %ndiv = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %40, i32 0, i32 7
  %ndiv20 = getelementptr inbounds %struct.st_clk_quadfs_pll, ptr %hw, i32 0, i32 4
  %41 = ptrtoint ptr %ndiv20 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ndiv20, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  %43 = ptrtoint ptr %ndiv to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ndiv, align 4
  %add.ptr.i80 = getelementptr i8, ptr %38, i32 %44
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i80) #7, !srcloc !137
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  %mask.i81 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %40, i32 0, i32 7, i32 1
  %47 = ptrtoint ptr %mask.i81 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mask.i81, align 4
  %shift.i82 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %40, i32 0, i32 7, i32 2
  %49 = ptrtoint ptr %shift.i82 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %shift.i82, align 4
  %shl.i83 = shl i32 %48, %50
  %neg.i84 = xor i32 %shl.i83, -1
  %and.i85 = and i32 %46, %neg.i84
  %shl3.i86 = shl i32 %42, %50
  %or.i87 = or i32 %and.i85, %shl3.i86
  %51 = tail call i32 @llvm.bswap.i32(i32 %or.i87) #7
  %52 = ptrtoint ptr %ndiv to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ndiv, align 4
  %add.ptr5.i88 = getelementptr i8, ptr %38, i32 %53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i88, i32 %51) #7, !srcloc !139
  %54 = ptrtoint ptr %regs_base18 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs_base18, align 4
  %56 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data, align 4
  %npda = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %57, i32 0, i32 10
  %powerup_polarity = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %powerup_polarity to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %powerup_polarity, align 1, !range !135
  %60 = xor i8 %59, 1
  %61 = zext i8 %60 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  %62 = ptrtoint ptr %npda to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %npda, align 4
  %add.ptr.i89 = getelementptr i8, ptr %55, i32 %63
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i89) #7, !srcloc !137
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  %mask.i90 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %57, i32 0, i32 10, i32 1
  %66 = ptrtoint ptr %mask.i90 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %mask.i90, align 4
  %shift.i91 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %57, i32 0, i32 10, i32 2
  %68 = ptrtoint ptr %shift.i91 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %shift.i91, align 4
  %shl.i92 = shl i32 %67, %69
  %neg.i93 = xor i32 %shl.i92, -1
  %and.i94 = and i32 %65, %neg.i93
  %shl3.i95 = shl i32 %61, %69
  %or.i96 = or i32 %and.i94, %shl3.i95
  %70 = tail call i32 @llvm.bswap.i32(i32 %or.i96) #7
  %71 = ptrtoint ptr %npda to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %npda, align 4
  %add.ptr5.i97 = getelementptr i8, ptr %55, i32 %72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i97, i32 %70) #7, !srcloc !139
  %73 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %lock, align 4
  %tobool26.not = icmp eq ptr %74, null
  br i1 %tobool26.not, label %if.end17.if.end29_crit_edge, label %if.then27

if.end17.if.end29_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then27:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %74, i32 noundef %flags.0) #7
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end17.if.end29_crit_edge
  %75 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %data, align 4
  %lockstatus_present = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %lockstatus_present to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %lockstatus_present, align 2, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool31.not = icmp eq i8 %78, 0
  br i1 %tobool31.not, label %if.end29.cleanup_crit_edge, label %while.cond.preheader

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end29
  %79 = ptrtoint ptr %regs_base18 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regs_base18, align 4
  %81 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %data, align 4
  %lock_status102 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %82, i32 0, i32 11
  %83 = ptrtoint ptr %lock_status102 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %lock_status102, align 4
  %add.ptr.i98103 = getelementptr i8, ptr %80, i32 %84
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i98103) #7, !srcloc !137
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !140
  %shift.i99104 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %82, i32 0, i32 11, i32 2
  %87 = ptrtoint ptr %shift.i99104 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %shift.i99104, align 4
  %shr.i105 = lshr i32 %86, %88
  %mask.i100106 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %82, i32 0, i32 11, i32 1
  %89 = ptrtoint ptr %mask.i100106 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %mask.i100106, align 4
  %and.i101107 = and i32 %shr.i105, %90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i101107)
  %tobool36.not108 = icmp eq i32 %and.i101107, 0
  br i1 %tobool36.not108, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.cleanup_crit_edge

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %do.end47.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %91 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp39 = icmp slt i32 %sub, 0
  br i1 %cmp39, label %while.body.cleanup_crit_edge, label %do.end47

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end47:                                         ; preds = %while.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !141
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !142
  %92 = ptrtoint ptr %regs_base18 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs_base18, align 4
  %94 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %data, align 4
  %lock_status = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %95, i32 0, i32 11
  %96 = ptrtoint ptr %lock_status to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %lock_status, align 4
  %add.ptr.i98 = getelementptr i8, ptr %93, i32 %97
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i98) #7, !srcloc !137
  %99 = tail call i32 @llvm.bswap.i32(i32 %98) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !140
  %shift.i99 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %95, i32 0, i32 11, i32 2
  %100 = ptrtoint ptr %shift.i99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %shift.i99, align 4
  %shr.i = lshr i32 %99, %101
  %mask.i100 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %95, i32 0, i32 11, i32 1
  %102 = ptrtoint ptr %mask.i100 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %mask.i100, align 4
  %and.i101 = and i32 %shr.i, %103
  %tobool36.not = icmp eq i32 %and.i101, 0
  br i1 %tobool36.not, label %do.end47.while.body_crit_edge, label %do.end47.cleanup_crit_edge

do.end47.cleanup_crit_edge:                       ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end47.while.body_crit_edge:                    ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

cleanup:                                          ; preds = %do.end47.cleanup_crit_edge, %while.body.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %if.end29.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end29.cleanup_crit_edge ], [ 0, %while.cond.preheader.cleanup_crit_edge ], [ -110, %while.body.cleanup_crit_edge ], [ 0, %do.end47.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @quadfs_pll_disable(ptr nocapture noundef readonly %hw) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.st_clk_quadfs_pll, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body1

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %1) #7
  br label %if.end

if.end:                                           ; preds = %do.body1, %entry.if.end_crit_edge
  %flags.0 = phi i32 [ %call4, %do.body1 ], [ 0, %entry.if.end_crit_edge ]
  %regs_base = getelementptr inbounds %struct.st_clk_quadfs_pll, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs_base, align 4
  %data = getelementptr inbounds %struct.st_clk_quadfs_pll, ptr %hw, i32 0, i32 3
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %npda = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %5, i32 0, i32 10
  %powerup_polarity = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %powerup_polarity to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %powerup_polarity, align 1, !range !135
  %8 = zext i8 %7 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %npda to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %npda, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %10
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !137
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  %mask.i = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %5, i32 0, i32 10, i32 1
  %13 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mask.i, align 4
  %shift.i = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %5, i32 0, i32 10, i32 2
  %15 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %shift.i, align 4
  %shl.i = shl i32 %14, %16
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %12, %neg.i
  %shl3.i = shl nuw i32 %8, %16
  %or.i = or i32 %and.i, %shl3.i
  %17 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %18 = ptrtoint ptr %npda to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %npda, align 4
  %add.ptr5.i = getelementptr i8, ptr %3, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %17) #7, !srcloc !139
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 4, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool11.not = icmp eq i8 %23, 0
  br i1 %tobool11.not, label %if.end.if.end15_crit_edge, label %if.then12

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs_base, align 4
  %nreset = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %21, i32 0, i32 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  %26 = ptrtoint ptr %nreset to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nreset, align 4
  %add.ptr.i30 = getelementptr i8, ptr %25, i32 %27
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i30) #7, !srcloc !137
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  %mask.i31 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %21, i32 0, i32 9, i32 1
  %30 = ptrtoint ptr %mask.i31 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mask.i31, align 4
  %shift.i32 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %21, i32 0, i32 9, i32 2
  %32 = ptrtoint ptr %shift.i32 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %shift.i32, align 4
  %shl.i33 = shl i32 %31, %33
  %neg.i34 = xor i32 %shl.i33, -1
  %and.i35 = and i32 %29, %neg.i34
  %34 = tail call i32 @llvm.bswap.i32(i32 %and.i35) #7
  %35 = ptrtoint ptr %nreset to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nreset, align 4
  %add.ptr5.i36 = getelementptr i8, ptr %25, i32 %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i36, i32 %34) #7, !srcloc !139
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end.if.end15_crit_edge
  %37 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %lock, align 4
  %tobool17.not = icmp eq ptr %38, null
  br i1 %tobool17.not, label %if.end15.if.end20_crit_edge, label %if.then18

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %38, i32 noundef %flags.0) #7
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end15.if.end20_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @quadfs_pll_is_enabled(ptr nocapture noundef readonly %hw) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs_base = getelementptr inbounds %struct.st_clk_quadfs_pll, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs_base, align 4
  %data = getelementptr inbounds %struct.st_clk_quadfs_pll, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %npda1 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %npda1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %npda1, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %5
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !137
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !140
  %shift.i = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %3, i32 0, i32 10, i32 2
  %8 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %shift.i, align 4
  %shr.i = lshr i32 %7, %9
  %mask.i = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %3, i32 0, i32 10, i32 1
  %10 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mask.i, align 4
  %and.i = and i32 %shr.i, %11
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %powerup_polarity = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %powerup_polarity to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %powerup_polarity, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4 = icmp ne i32 %and.i, 0
  %cond.in = select i1 %tobool.not, i1 %tobool4, i1 %tobool3.not
  %cond = zext i1 %cond.in to i32
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @quadfs_pll_fs660c32_recalc_rate(ptr nocapture noundef %hw, i32 noundef %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs_base = getelementptr inbounds %struct.st_clk_quadfs_pll, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs_base, align 4
  %data = getelementptr inbounds %struct.st_clk_quadfs_pll, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %ndiv = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %ndiv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ndiv, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %5
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !137
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !140
  %shift.i = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %3, i32 0, i32 7, i32 2
  %8 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %shift.i, align 4
  %shr.i = lshr i32 %7, %9
  %mask.i = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %3, i32 0, i32 7, i32 1
  %10 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mask.i, align 4
  %and.i = and i32 %shr.i, %11
  %add.i = add i32 %and.i, 16
  %mul.i = mul i32 %add.i, %parent_rate
  %ndiv7 = getelementptr inbounds %struct.st_clk_quadfs_pll, ptr %hw, i32 0, i32 4
  %12 = ptrtoint ptr %ndiv7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and.i, ptr %ndiv7, align 4
  ret i32 %mul.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @quadfs_pll_fs660c32_round_rate(ptr noundef %hw, i32 noundef %rate, ptr nocapture noundef readonly %prate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %prate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prate, align 4
  %2 = add i32 %rate, -660000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -276000001, i32 %2)
  %3 = icmp ult i32 %2, -276000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 40000000, i32 %1)
  %cmp2.i = icmp ugt i32 %1, 40000000
  %or.cond17.i = or i1 %3, %cmp2.i
  br i1 %or.cond17.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %div.i = udiv i32 %1, 1000
  %div5.i = udiv i32 %rate, 1000
  %div6.i = udiv i32 %div5.i, %div.i
  %4 = tail call i32 @llvm.umax.i32(i32 %div6.i, i32 16) #7
  %mul.i = mul i32 %4, %1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @quadfs_pll_fs660c32_round_rate.__UNIQUE_ID_ddebug175, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@quadfs_pll_fs660c32_round_rate, %if.then6)) #7
          to label %cleanup [label %if.then6], !srcloc !132

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = add nsw i32 %4, -16
  %call7 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @quadfs_pll_fs660c32_round_rate.__UNIQUE_ID_ddebug175, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, ptr noundef %call7, i32 noundef %mul.i, i32 noundef %sub.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end, %entry.cleanup_crit_edge
  %rate.addr.0 = phi i32 [ %mul.i, %if.then6 ], [ %rate, %entry.cleanup_crit_edge ], [ %mul.i, %if.end ]
  ret i32 %rate.addr.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @quadfs_pll_fs660c32_set_rate(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %tobool.not = icmp eq i32 %rate, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %parent_rate)
  %tobool1.not = icmp eq i32 %parent_rate, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = add i32 %rate, -660000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -276000001, i32 %0)
  %1 = icmp ult i32 %0, -276000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 40000000, i32 %parent_rate)
  %cmp2.i = icmp ugt i32 %parent_rate, 40000000
  %or.cond17.i = or i1 %cmp2.i, %1
  br i1 %or.cond17.i, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %div.i = udiv i32 %parent_rate, 1000
  %div5.i = udiv i32 %rate, 1000
  %div6.i = udiv i32 %div5.i, %div.i
  %2 = tail call i32 @llvm.umax.i32(i32 %div6.i, i32 16) #7
  %sub.i = add nsw i32 %2, -16
  %mul.i = mul i32 %2, %parent_rate
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @quadfs_pll_fs660c32_set_rate.__UNIQUE_ID_ddebug176, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@quadfs_pll_fs660c32_set_rate, %if.then11)) #7
          to label %do.end [label %if.then11], !srcloc !132

if.then11:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @quadfs_pll_fs660c32_set_rate.__UNIQUE_ID_ddebug176, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, ptr noundef %call12, i32 noundef %mul.i, i32 noundef %sub.i) #7
  br label %do.end

do.end:                                           ; preds = %if.then11, %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %tobool14.not = icmp eq i32 %mul.i, 0
  br i1 %tobool14.not, label %do.end.cleanup_crit_edge, label %if.end16

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %do.end
  %ndiv18 = getelementptr inbounds %struct.st_clk_quadfs_pll, ptr %hw, i32 0, i32 4
  %3 = ptrtoint ptr %ndiv18 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %sub.i, ptr %ndiv18, align 4
  %lock = getelementptr inbounds %struct.st_clk_quadfs_pll, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lock, align 4
  %tobool19.not = icmp eq ptr %5, null
  br i1 %tobool19.not, label %if.end16.if.end31_crit_edge, label %do.body22

if.end16.if.end31_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

do.body22:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %call26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %5) #7
  br label %if.end31

if.end31:                                         ; preds = %do.body22, %if.end16.if.end31_crit_edge
  %flags.0 = phi i32 [ %call26, %do.body22 ], [ 0, %if.end16.if.end31_crit_edge ]
  %regs_base = getelementptr inbounds %struct.st_clk_quadfs_pll, ptr %hw, i32 0, i32 1
  %6 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs_base, align 4
  %data = getelementptr inbounds %struct.st_clk_quadfs_pll, ptr %hw, i32 0, i32 3
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %ndiv32 = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %ndiv18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ndiv18, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %ndiv32 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ndiv32, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %13
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !137
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  %mask.i = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %9, i32 0, i32 7, i32 1
  %16 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mask.i, align 4
  %shift.i = getelementptr inbounds %struct.clkgen_quadfs_data, ptr %9, i32 0, i32 7, i32 2
  %18 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %shift.i, align 4
  %shl.i = shl i32 %17, %19
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %15, %neg.i
  %shl3.i = shl i32 %11, %19
  %or.i = or i32 %and.i, %shl3.i
  %20 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %21 = ptrtoint ptr %ndiv32 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ndiv32, align 4
  %add.ptr5.i = getelementptr i8, ptr %7, i32 %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %20) #7, !srcloc !139
  %23 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lock, align 4
  %tobool35.not = icmp eq ptr %24, null
  br i1 %tobool35.not, label %if.end31.cleanup_crit_edge, label %if.then36

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then36:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %24, i32 noundef %flags.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %if.end31.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ], [ 0, %if.then36 ], [ 0, %if.end31.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !18, !20, !21, !23, !24, !25, !27, !29, !30, !32, !34, !35, !36, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50, !51, !53, !54, !55, !57, !59, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121}
!llvm.module.flags = !{!123, !124, !125, !126, !127, !128, !129, !130}
!llvm.ident = !{!131}

!0 = !{ptr @__of_table_quadfs660C, !1, !"__of_table_quadfs660C", i1 false, i1 false}
!1 = !{!"../drivers/clk/st/clkgen-fsyn.c", i32 1039, i32 1}
!2 = !{ptr @__of_table_quadfs660D, !3, !"__of_table_quadfs660D", i1 false, i1 false}
!3 = !{!"../drivers/clk/st/clkgen-fsyn.c", i32 1046, i32 1}
!4 = !{ptr @__of_table_quadfs660D0, !5, !"__of_table_quadfs660D0", i1 false, i1 false}
!5 = !{!"../drivers/clk/st/clkgen-fsyn.c", i32 1053, i32 1}
!6 = !{ptr @__of_table_quadfs660D2, !7, !"__of_table_quadfs660D2", i1 false, i1 false}
!7 = !{!"../drivers/clk/st/clkgen-fsyn.c", i32 1060, i32 1}
!8 = !{ptr @__of_table_quadfs660D3, !9, !"__of_table_quadfs660D3", i1 false, i1 false}
!9 = !{!"../drivers/clk/st/clkgen-fsyn.c", i32 1067, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/st/clkgen-fsyn.c", i32 999, i32 4}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @st_of_quadfs_setup._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @st_of_quadfs_setup._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/st/clkgen-fsyn.c", i32 1008, i32 35}
!18 = !{ptr @st_of_quadfs_setup.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/clk/st/clkgen-fsyn.c", i32 1016, i32 2}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/st/clkgen-fsyn.c", i32 1023, i32 3}
!23 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @st_of_quadfs_setup.__UNIQUE_ID_ddebug183, !22, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clk/st/clkgen-fsyn.c", i32 951, i32 8}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clk/st/clkgen-fsyn.c", i32 973, i32 4}
!29 = !{ptr @st_of_create_quadfs_fsynths.__UNIQUE_ID_ddebug182, !28, !"__UNIQUE_ID_ddebug182", i1 false, i1 false}
!30 = !{ptr @st_quadfs_ops, !31, !"st_quadfs_ops", i1 false, i1 false}
!31 = !{!"../drivers/clk/st/clkgen-fsyn.c", i32 872, i32 29}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/st/clkgen-fsyn.c", i32 573, i32 2}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @quadfs_fsynth_enable.__UNIQUE_ID_ddebug177, !33, !"__UNIQUE_ID_ddebug177", i1 false, i1 false}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/st/clkgen-fsyn.c", i32 598, i32 2}
!38 = !{ptr @quadfs_fsynth_disable.__UNIQUE_ID_ddebug178, !37, !"__UNIQUE_ID_ddebug178", i1 false, i1 false}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/clk/st/clkgen-fsyn.c", i32 614, i32 2}
!41 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @quadfs_fsynth_is_enabled.__UNIQUE_ID_ddebug179, !40, !"__UNIQUE_ID_ddebug179", i1 false, i1 false}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/clk/st/clkgen-fsyn.c", i32 808, i32 3}
!45 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @quadfs_recalc_rate._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @quadfs_recalc_rate._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/st/clkgen-fsyn.c", i32 812, i32 2}
!50 = !{ptr @quadfs_recalc_rate.__UNIQUE_ID_ddebug180, !49, !"__UNIQUE_ID_ddebug180", i1 false, i1 false}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/clk/st/clkgen-fsyn.c", i32 824, i32 2}
!53 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @quadfs_round_rate.__UNIQUE_ID_ddebug181, !52, !"__UNIQUE_ID_ddebug181", i1 false, i1 false}
!55 = !{ptr @st_fs660c32_C_data, !56, !"st_fs660c32_C_data", i1 false, i1 false}
!56 = !{!"../drivers/clk/st/clkgen-fsyn.c", i32 135, i32 45}
!57 = !{ptr @st_fs660c32_C, !58, !"st_fs660c32_C", i1 false, i1 false}
!58 = !{!"../drivers/clk/st/clkgen-fsyn.c", i32 86, i32 40}
!59 = !{ptr @st_quadfs_pll_c32_ops, !60, !"st_quadfs_pll_c32_ops", i1 false, i1 false}
!60 = !{!"../drivers/clk/st/clkgen-fsyn.c", i32 434, i32 29}
!61 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/clk/st/clkgen-fsyn.c", i32 341, i32 3}
!63 = !{ptr @quadfs_pll_fs660c32_recalc_rate._entry, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @quadfs_pll_fs660c32_recalc_rate._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.20, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/clk/st/clkgen-fsyn.c", i32 389, i32 2}
!67 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @quadfs_pll_fs660c32_round_rate.__UNIQUE_ID_ddebug175, !66, !"__UNIQUE_ID_ddebug175", i1 false, i1 false}
!69 = !{ptr @.str.22, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/clk/st/clkgen-fsyn.c", i32 414, i32 2}
!71 = !{ptr @.str.23, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @quadfs_pll_fs660c32_set_rate.__UNIQUE_ID_ddebug176, !70, !"__UNIQUE_ID_ddebug176", i1 false, i1 false}
!73 = !{ptr @.str.24, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/clk/st/clkgen-fsyn.c", i32 129, i32 12}
!75 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/clk/st/clkgen-fsyn.c", i32 130, i32 12}
!77 = !{ptr @.str.26, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/clk/st/clkgen-fsyn.c", i32 131, i32 12}
!79 = !{ptr @.str.27, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/clk/st/clkgen-fsyn.c", i32 132, i32 12}
!81 = !{ptr @st_fs660c32_C_clks, !82, !"st_fs660c32_C_clks", i1 false, i1 false}
!82 = !{!"../drivers/clk/st/clkgen-fsyn.c", i32 128, i32 36}
!83 = !{ptr @st_fs660c32_D_data, !84, !"st_fs660c32_D_data", i1 false, i1 false}
!84 = !{!"../drivers/clk/st/clkgen-fsyn.c", i32 181, i32 45}
!85 = !{ptr @st_fs660c32_D, !86, !"st_fs660c32_D", i1 false, i1 false}
!86 = !{!"../drivers/clk/st/clkgen-fsyn.c", i32 140, i32 40}
!87 = !{ptr @st_fs660c32_D0_data, !88, !"st_fs660c32_D0_data", i1 false, i1 false}
!88 = !{!"../drivers/clk/st/clkgen-fsyn.c", i32 192, i32 45}
!89 = !{ptr @.str.28, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/clk/st/clkgen-fsyn.c", i32 186, i32 12}
!91 = !{ptr @.str.29, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/clk/st/clkgen-fsyn.c", i32 187, i32 12}
!93 = !{ptr @.str.30, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/clk/st/clkgen-fsyn.c", i32 188, i32 12}
!95 = !{ptr @.str.31, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/clk/st/clkgen-fsyn.c", i32 189, i32 12}
!97 = !{ptr @st_fs660c32_D0_clks, !98, !"st_fs660c32_D0_clks", i1 false, i1 false}
!98 = !{!"../drivers/clk/st/clkgen-fsyn.c", i32 185, i32 36}
!99 = !{ptr @st_fs660c32_D2_data, !100, !"st_fs660c32_D2_data", i1 false, i1 false}
!100 = !{!"../drivers/clk/st/clkgen-fsyn.c", i32 204, i32 45}
!101 = !{ptr @.str.32, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/clk/st/clkgen-fsyn.c", i32 198, i32 12}
!103 = !{ptr @.str.33, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/clk/st/clkgen-fsyn.c", i32 199, i32 12}
!105 = !{ptr @.str.34, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/clk/st/clkgen-fsyn.c", i32 200, i32 12}
!107 = !{ptr @.str.35, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/clk/st/clkgen-fsyn.c", i32 201, i32 12}
!109 = !{ptr @st_fs660c32_D2_clks, !110, !"st_fs660c32_D2_clks", i1 false, i1 false}
!110 = !{!"../drivers/clk/st/clkgen-fsyn.c", i32 197, i32 36}
!111 = !{ptr @st_fs660c32_D3_data, !112, !"st_fs660c32_D3_data", i1 false, i1 false}
!112 = !{!"../drivers/clk/st/clkgen-fsyn.c", i32 216, i32 45}
!113 = !{ptr @.str.36, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/clk/st/clkgen-fsyn.c", i32 210, i32 12}
!115 = !{ptr @.str.37, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/clk/st/clkgen-fsyn.c", i32 211, i32 12}
!117 = !{ptr @.str.38, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/clk/st/clkgen-fsyn.c", i32 212, i32 12}
!119 = !{ptr @.str.39, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/clk/st/clkgen-fsyn.c", i32 213, i32 12}
!121 = !{ptr @st_fs660c32_D3_clks, !122, !"st_fs660c32_D3_clks", i1 false, i1 false}
!122 = !{!"../drivers/clk/st/clkgen-fsyn.c", i32 209, i32 36}
!123 = !{i32 1, !"wchar_size", i32 2}
!124 = !{i32 1, !"min_enum_size", i32 4}
!125 = !{i32 8, !"branch-target-enforcement", i32 0}
!126 = !{i32 8, !"sign-return-address", i32 0}
!127 = !{i32 8, !"sign-return-address-all", i32 0}
!128 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!129 = !{i32 7, !"uwtable", i32 1}
!130 = !{i32 7, !"frame-pointer", i32 2}
!131 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!132 = !{i64 2148226595, i64 2148226600, i64 2148226613, i64 2148226657, i64 2148226691, i64 2148226712}
!133 = !{!"branch_weights", i32 2002, i32 2000}
!134 = !{!"auto-init"}
!135 = !{i8 0, i8 2}
!136 = !{i64 2152581558}
!137 = !{i64 4936279}
!138 = !{i64 2152582603}
!139 = !{i64 4935861}
!140 = !{i64 2152580359}
!141 = !{i64 2152591079}
!142 = !{i64 2152590921}
