; ModuleID = '/llk/IR_all_yes/drivers/memory/tegra/tegra210-emc-cc-r21021.c_pt.bc'
source_filename = "../drivers/memory/tegra/tegra210-emc-cc-r21021.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tegra210_emc_sequence = type { i8, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.tegra210_emc = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.spinlock, ptr, [2 x ptr], i32, i32, i32, ptr, ptr, i32, %struct.timer_list, i32, i32, %struct.timer_list, i32, %struct.atomic_t, i64, i32, i32, %struct.anon.70, %struct.tegra210_clk_emc_provider }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.70 = type { ptr, i32, i32, i32 }
%struct.tegra210_clk_emc_provider = type { ptr, ptr, ptr, i32, ptr }
%struct.tegra210_emc_timing = type { i32, [60 x i8], i32, i32, i32, [32 x i8], i32, i32, i32, i32, i32, [8 x i32], [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i32], [221 x i32], [8 x i32], [221 x i32], [221 x i32], [221 x i32], [138 x i32], [10 x i32], [4 x i32], [5 x i32], [20 x i32], [12 x i32], [33 x i32], [24 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tegra210_emc_table_register_offsets = type { [221 x i16], [138 x i16], [33 x i16], [24 x i16], [8 x %struct.tegra210_emc_per_channel_regs], [10 x %struct.tegra210_emc_per_channel_regs], [4 x %struct.tegra210_emc_per_channel_regs] }
%struct.tegra210_emc_per_channel_regs = type { i16, i16 }
%struct.tegra_mc = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.reset_controller_dev, %struct.icc_provider, %struct.spinlock, %struct.anon.69 }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.icc_provider = type { %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr }
%struct.anon.69 = type { ptr }

@tegra210_emc_r21021 = dso_local constant { %struct.tegra210_emc_sequence, [20 x i8] } { %struct.tegra210_emc_sequence { i8 7, ptr @tegra210_emc_r21021_set_clock, ptr @tegra210_emc_r21021_periodic_compensation }, [20 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.fsp_for_next_freq = internal global { i8, [31 x i8] } zeroinitializer, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tegra210_emc\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tegra210_emc_r21021_set_clock\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/memory/tegra/tegra210-emc-cc-r21021.c\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Running clock change.\0A\00", [41 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 -87, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Clock change version: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 -87, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DRAM type = %d\0A\00", [16 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 -87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DRAM dev #: %u\0A\00", [16 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 -87, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Next EMC clksrc: 0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.8, i8 0, i8 -86, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DLL clksrc:      0x%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.9, i8 0, i8 -86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"last rate: %u, next rate %u\0A\00", [35 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.10, i8 0, i8 -85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"last period: %u, next period: %u\0A\00", [62 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.11, i8 0, i8 -85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"  shared_zq_resistor: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.12, i8 0, i8 -85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"  num_channels: %u\0A\00", [44 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.13, i8 0, i8 -85, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"  opt_dll_mode: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.14, i8 0, i8 -83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Step 1\0A\00", [24 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.15, i8 0, i8 -83, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Step 1.1: Disable DLL temporarily.\0A\00", [60 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.16, i8 0, i8 -80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Step 1.2: Disable AUTOCAL temporarily.\0A\00", [56 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.17, i8 0, i8 -77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Step 1.3: Disable other power features.\0A\00", [55 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.18, i8 0, i8 -50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Step 2\0A\00", [24 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.19, i8 0, i8 -49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Prelock enabled for target frequency.\0A\00", [57 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.20, i8 0, i8 -49, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DLL out: 0x%03x\0A\00", [47 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.21, i8 0, i8 -48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Disabling DLL for target frequency.\0A\00", [59 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.22, i8 0, i8 -46, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Step 3\0A\00", [24 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.23, i8 0, i8 -41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Step 4\0A\00", [24 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.24, i8 0, i8 -38, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Step 5\0A\00", [24 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.25, i8 0, i8 -34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Step 6\0A\00", [24 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.26, i8 0, i8 -33, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Step 7\0A\00", [24 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.27, i8 0, i8 -32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Step 7.1: Bug 200024907 - Patch RP R2P\00", [57 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.28, i8 0, i8 -24, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tRTM = %u, EMC_RP = %u\0A\00", [40 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.29, i8 0, i8 -11, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Skipped WAR\0A\00", [19 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.30, i8 0, i8 -6, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Step 8\0A\00", [24 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.31, i8 0, i8 -6, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Writing burst_regs\0A\00", [44 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.32, i8 1, i8 14, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Writing burst_regs_per_ch\0A\00", [37 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.33, i8 1, i8 21, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"(%u) 0x%08x => 0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.34, i8 1, i8 23, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Writing vref_regs\0A\00", [45 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.33, i8 1, i8 26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.35, i8 1, i8 27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Writing trim_regs\0A\00", [45 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.33, i8 1, i8 33, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.36, i8 1, i8 33, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"0x%08x <= 0x%08x\0A\00", [46 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.33, i8 1, i8 34, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.37, i8 1, i8 36, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Writing trim_regs_per_ch\0A\00", [38 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.33, i8 1, i8 43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.36, i8 1, i8 43, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.33, i8 1, i8 44, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.38, i8 1, i8 46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Writing burst_mc_regs\0A\00", [41 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.33, i8 1, i8 47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.39, i8 1, i8 49, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Writing la_scale_regs\0A\00", [41 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.33, i8 1, i8 50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.40, i8 1, i8 53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Step 9\0A\00", [24 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.41, i8 1, i8 59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Step 10\0A\00", [23 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.42, i8 1, i8 83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Step 11\0A\00", [23 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.43, i8 1, i8 86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Step 12\0A\00", [23 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.44, i8 1, i8 89, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Step 13\0A\00", [23 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.45, i8 1, i8 91, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Step 14\0A\00", [23 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.46, i8 1, i8 95, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Step 15\0A\00", [23 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.47, i8 1, i8 98, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tZQCAL_lpddr4_fc_adj = %u\0A\00", [37 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.48, i8 1, i8 99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dst_clk_period = %u\0A\00", [43 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.49, i8 1, i8 99, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"next->dram_timings[T_PDEX] = %u\0A\00", [63 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.50, i8 1, i8 100, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"zq_latch_dvfs_wait_time = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.51, i8 1, i8 118, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Step 17\0A\00", [23 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.52, i8 1, i8 120, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Step 18\0A\00", [23 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.53, i8 1, i8 125, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Step 19\0A\00", [23 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.54, i8 1, i8 -116, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Step 20\0A\00", [23 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.55, i8 1, i8 -112, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Step 21\0A\00", [23 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.56, i8 1, i8 -107, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Step 22\0A\00", [23 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.57, i8 1, i8 -102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Step 23\0A\00", [23 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.58, i8 1, i8 -97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Step 25\0A\00", [23 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.59, i8 1, i8 -93, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Step 26\0A\00", [23 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.60, i8 1, i8 -86, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Step 27\0A\00", [23 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.61, i8 1, i8 -83, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Step 28\0A\00", [23 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.62, i8 1, i8 -80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Step 29\0A\00", [23 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.63, i8 1, i8 -75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Step 30: Re-enable DLL and AUTOCAL\0A\00", [60 x i8] zeroinitializer }, align 32
@update_clock_tree_delay.__UNIQUE_ID_ddebug225 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.2, ptr @.str.65, i8 0, i8 41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"update_clock_tree_delay\00", [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: (s=%lu) EMA: %u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"C0D0U0\00", [25 x i8] zeroinitializer }, align 32
@update_clock_tree_delay.__UNIQUE_ID_ddebug226 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.2, ptr @.str.65, i8 0, i8 47, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"C0D0U1\00", [25 x i8] zeroinitializer }, align 32
@update_clock_tree_delay.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.2, ptr @.str.65, i8 0, i8 54, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"C1D0U0\00", [25 x i8] zeroinitializer }, align 32
@update_clock_tree_delay.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.2, ptr @.str.65, i8 0, i8 61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"C1D0U1\00", [25 x i8] zeroinitializer }, align 32
@update_clock_tree_delay.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.2, ptr @.str.65, i8 0, i8 75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"C0D1U0\00", [25 x i8] zeroinitializer }, align 32
@update_clock_tree_delay.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.2, ptr @.str.65, i8 0, i8 81, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"C0D1U1\00", [25 x i8] zeroinitializer }, align 32
@update_clock_tree_delay.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.2, ptr @.str.65, i8 0, i8 88, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"C1D1U0\00", [25 x i8] zeroinitializer }, align 32
@update_clock_tree_delay.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.2, ptr @.str.65, i8 0, i8 95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"C1D1U1\00", [25 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_periodic_compensation.list = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 1600, i32 1604, i32 1608, i32 1612, i32 1632, i32 1636, i32 1640, i32 1644, i32 1416, i32 1420], [56 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_periodic_compensation.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.74, ptr @.str.2, ptr @.str.75, i8 0, i8 124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"tegra210_emc_r21021_periodic_compensation\00", [54 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Periodic training starting\0A\00", [36 x i8] zeroinitializer }, align 32
@tegra210_emc_r21021_periodic_compensation.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.74, ptr @.str.2, ptr @.str.36, i8 0, i8 -116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 16, i64 1188, i64 1192, i64 1196, i64 1200, i64 1204, i64 1208, i64 1212, i64 1216, i64 1220, i64 1232, i64 3588]
@__sancov_gen_cov_switch_values.76 = internal global [9 x i64] [i64 7, i64 16, i64 12, i64 736, i64 816, i64 3168, i64 3172, i64 3176, i64 3192]
@__sancov_gen_cov_switch_values.77 = internal global [12 x i64] [i64 10, i64 16, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 11]
@__sancov_gen_cov_switch_values.78 = internal global [12 x i64] [i64 10, i64 16, i64 1416, i64 1420, i64 1600, i64 1604, i64 1608, i64 1612, i64 1632, i64 1636, i64 1640, i64 1644]
@__sancov_gen_cov_switch_values.79 = internal global [12 x i64] [i64 10, i64 16, i64 1416, i64 1420, i64 1600, i64 1604, i64 1608, i64 1612, i64 1632, i64 1636, i64 1640, i64 1644]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 14]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 14]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 14]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 14]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 14]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 14]
@___asan_gen_.86 = private unnamed_addr constant [20 x i8] c"tegra210_emc_r21021\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1770, i32 36 }
@___asan_gen_.89 = private unnamed_addr constant [18 x i8] c"fsp_for_next_freq\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 588, i32 14 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 624, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 675, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 677, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 678, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 679, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 680, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 681, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 683, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 685, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 686, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 687, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 693, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 694, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 706, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 717, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 825, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 829, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 831, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 833, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 841, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 861, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 872, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 889, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 895, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 896, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 929, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 980, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1002, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1003, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1082, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1108, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1116, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1135, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1157, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1168, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1208, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1223, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1239, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1260, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1357, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1371, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1381, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1390, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1407, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1419, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1420, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1422, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1424, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1496, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1505, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1526, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1586, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1600, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1620, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1640, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1662, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1676, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1705, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1718, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1730, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1751, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 165, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 190, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 218, i32 4 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 245, i32 4 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 300, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 327, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 355, i32 4 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 382, i32 4 }
@___asan_gen_.314 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 481, i32 19 }
@___asan_gen_.320 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.321 = private constant [49 x i8] c"../drivers/memory/tegra/tegra210-emc-cc-r21021.c\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 498, i32 3 }
@llvm.compiler.used = appending global [79 x ptr] [ptr @tegra210_emc_r21021, ptr @tegra210_emc_r21021_set_clock.fsp_for_next_freq, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @tegra210_emc_r21021_periodic_compensation.list, ptr @.str.74, ptr @.str.75], section "llvm.metadata"
@0 = internal global [79 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_emc_r21021 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_emc_r21021_set_clock.fsp_for_next_freq to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_emc_r21021_periodic_compensation.list to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra210_emc_r21021_set_clock(ptr noundef %emc, i32 noundef %clksrc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %last1 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 15
  %0 = ptrtoint ptr %last1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %last1, align 8
  %next2 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 16
  %2 = ptrtoint ptr %next2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %next2, align 4
  %arrayidx = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 33, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %mul = mul i32 %5, 1000
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !249

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug235, ptr noundef %7, ptr noundef nonnull @.str.3) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %rate = getelementptr inbounds %struct.tegra210_emc_timing, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rate, align 4
  %mul5 = mul i32 %9, 1000
  %call6 = tail call ptr @tegra210_emc_find_timing(ptr noundef %emc, i32 noundef %mul5) #4
  %10 = load i8, ptr @tegra210_emc_r21021_set_clock.fsp_for_next_freq, align 1, !range !250
  %11 = xor i8 %10, 1
  store i8 %11, ptr @tegra210_emc_r21021_set_clock.fsp_for_next_freq, align 1
  %regs.i = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 10
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %13, i32 260
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !251
  %15 = lshr i32 %14, 24
  %and = and i32 %15, 3
  %arrayidx12 = getelementptr %struct.tegra210_emc_timing, ptr %1, i32 0, i32 25, i32 140
  %16 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %tobool14.not = icmp sgt i32 %17, -1
  %18 = xor i1 %tobool14.not, true
  %arrayidx18 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 25, i32 139
  %19 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.not = icmp eq i32 %20, 0
  br i1 %cmp.not, label %lor.lhs.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end
  %arrayidx20 = getelementptr %struct.tegra210_emc_timing, ptr %1, i32 0, i32 25, i32 139
  %21 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp21 = icmp eq i32 %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp22 = icmp eq i32 %and, 1
  %or.cond = select i1 %cmp21, i1 true, i1 %cmp22
  br i1 %or.cond, label %land.lhs.true.if.then23_crit_edge, label %land.lhs.true.if.end24_crit_edge

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

land.lhs.true.if.then23_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then23

lor.lhs.false:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp22.old = icmp eq i32 %and, 1
  br i1 %cmp22.old, label %lor.lhs.false.if.then23_crit_edge, label %lor.lhs.false.if.end24_crit_edge

lor.lhs.false.if.end24_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

lor.lhs.false.if.then23_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then23

if.then23:                                        ; preds = %lor.lhs.false.if.then23_crit_edge, %land.lhs.true.if.then23_crit_edge
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %lor.lhs.false.if.end24_crit_edge, %land.lhs.true.if.end24_crit_edge
  %opt_zcal_en_cc.0.off0 = phi i1 [ true, %if.then23 ], [ false, %lor.lhs.false.if.end24_crit_edge ], [ false, %land.lhs.true.if.end24_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp25 = icmp eq i32 %and, 0
  br i1 %cmp25, label %if.then26, label %if.end24.if.end28_crit_edge

if.end24.if.end28_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  %call27 = tail call i32 @tegra210_emc_get_dll_state(ptr noundef %3) #4
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end24.if.end28_crit_edge
  %opt_dll_mode.0 = phi i32 [ %call27, %if.then26 ], [ 0, %if.end24.if.end28_crit_edge ]
  %arrayidx30 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 25, i32 65
  %23 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx30, align 4
  %and31 = and i32 %24, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp ne i32 %and31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %cmp34 = icmp eq i32 %and, 2
  %or.cond3255 = select i1 %tobool32.not, i1 %cmp34, i1 false
  %25 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3479 = getelementptr i8, ptr %26, i32 12
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3479) #4, !srcloc !251
  %28 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3481 = getelementptr i8, ptr %29, i32 676
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3481) #4, !srcloc !251
  %31 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rate, align 4
  %div = udiv i32 1000000000, %32
  %rate40 = getelementptr inbounds %struct.tegra210_emc_timing, ptr %3, i32 0, i32 2
  %33 = ptrtoint ptr %rate40 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rate40, align 4
  %div41 = udiv i32 1000000000, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 416493, i32 %34)
  %cmp42 = icmp ugt i32 %34, 416493
  %sub = sub i32 1000000, %mul
  %tZQCAL_lpddr4_fc_adj.0 = select i1 %cmp42, i32 %sub, i32 1000000
  %div45 = udiv i32 %tZQCAL_lpddr4_fc_adj.0, %div41
  %35 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3483 = getelementptr i8, ptr %36, i32 8
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3483) #4, !srcloc !251
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #4
  %39 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3485 = getelementptr i8, ptr %40, i32 36
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3485) #4, !srcloc !251
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #4
  %43 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3487 = getelementptr i8, ptr %44, i32 1368
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3487) #4, !srcloc !251
  %arrayidx50 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 25, i32 148
  %46 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx50, align 4
  %and51 = and i32 %47, 268435455
  %emc_sel_dpd_ctrl52 = getelementptr inbounds %struct.tegra210_emc_timing, ptr %3, i32 0, i32 56
  %48 = ptrtoint ptr %emc_sel_dpd_ctrl52 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %emc_sel_dpd_ctrl52, align 4
  %and53 = and i32 %49, -317
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then66)) #4
          to label %do.body71 [label %if.then66], !srcloc !249

if.then66:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  %dev67 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %50 = ptrtoint ptr %dev67 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev67, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug236, ptr noundef %51, ptr noundef nonnull @.str.4, i32 noundef 21021) #4
  br label %do.body71

do.body71:                                        ; preds = %if.then66, %if.end28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then83)) #4
          to label %do.body88 [label %if.then83], !srcloc !249

if.then83:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #6
  %dev84 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %52 = ptrtoint ptr %dev84 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev84, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug237, ptr noundef %53, ptr noundef nonnull @.str.5, i32 noundef %and) #4
  br label %do.body88

do.body88:                                        ; preds = %if.then83, %do.body71
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then100)) #4
          to label %do.body105 [label %if.then100], !srcloc !249

if.then100:                                       ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #6
  %dev101 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %54 = ptrtoint ptr %dev101 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev101, align 4
  %num_devices = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 13
  %56 = ptrtoint ptr %num_devices to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_devices, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug238, ptr noundef %55, ptr noundef nonnull @.str.6, i32 noundef %57) #4
  br label %do.body105

do.body105:                                       ; preds = %if.then100, %do.body88
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then117)) #4
          to label %do.body122 [label %if.then117], !srcloc !249

if.then117:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #6
  %dev118 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %58 = ptrtoint ptr %dev118 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev118, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug239, ptr noundef %59, ptr noundef nonnull @.str.7, i32 noundef %clksrc) #4
  br label %do.body122

do.body122:                                       ; preds = %if.then117, %do.body105
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then134)) #4
          to label %do.body139 [label %if.then134], !srcloc !249

if.then134:                                       ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #6
  %dev135 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %60 = ptrtoint ptr %dev135 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev135, align 4
  %dll_clk_src = getelementptr inbounds %struct.tegra210_emc_timing, ptr %3, i32 0, i32 58
  %62 = ptrtoint ptr %dll_clk_src to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dll_clk_src, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug240, ptr noundef %61, ptr noundef nonnull @.str.8, i32 noundef %63) #4
  br label %do.body139

do.body139:                                       ; preds = %if.then134, %do.body122
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then151)) #4
          to label %do.body158 [label %if.then151], !srcloc !249

if.then151:                                       ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #6
  %dev152 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %64 = ptrtoint ptr %dev152 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev152, align 4
  %66 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rate, align 4
  %68 = ptrtoint ptr %rate40 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %rate40, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug241, ptr noundef %65, ptr noundef nonnull @.str.9, i32 noundef %67, i32 noundef %69) #4
  br label %do.body158

do.body158:                                       ; preds = %if.then151, %do.body139
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then170)) #4
          to label %do.body175 [label %if.then170], !srcloc !249

if.then170:                                       ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #6
  %dev171 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %70 = ptrtoint ptr %dev171 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev171, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug242, ptr noundef %71, ptr noundef nonnull @.str.10, i32 noundef %div, i32 noundef %div41) #4
  br label %do.body175

do.body175:                                       ; preds = %if.then170, %do.body158
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then187)) #4
          to label %do.body197 [label %if.then187], !srcloc !249

if.then187:                                       ; preds = %do.body175
  call void @__sanitizer_cov_trace_pc() #6
  %dev188 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %72 = ptrtoint ptr %dev188 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev188, align 4
  %lnot.ext193 = zext i1 %18 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug243, ptr noundef %73, ptr noundef nonnull @.str.11, i32 noundef %lnot.ext193) #4
  br label %do.body197

do.body197:                                       ; preds = %if.then187, %do.body175
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then209)) #4
          to label %do.body214 [label %if.then209], !srcloc !249

if.then209:                                       ; preds = %do.body197
  call void @__sanitizer_cov_trace_pc() #6
  %dev210 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %74 = ptrtoint ptr %dev210 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev210, align 4
  %num_channels = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 12
  %76 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %num_channels, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug244, ptr noundef %75, ptr noundef nonnull @.str.12, i32 noundef %77) #4
  br label %do.body214

do.body214:                                       ; preds = %if.then209, %do.body197
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then226)) #4
          to label %do.body231 [label %if.then226], !srcloc !249

if.then226:                                       ; preds = %do.body214
  call void @__sanitizer_cov_trace_pc() #6
  %dev227 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %78 = ptrtoint ptr %dev227 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev227, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug245, ptr noundef %79, ptr noundef nonnull @.str.13, i32 noundef %opt_dll_mode.0) #4
  br label %do.body231

do.body231:                                       ; preds = %if.then226, %do.body214
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then243)) #4
          to label %do.body248 [label %if.then243], !srcloc !249

if.then243:                                       ; preds = %do.body231
  call void @__sanitizer_cov_trace_pc() #6
  %dev244 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %80 = ptrtoint ptr %dev244 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev244, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug246, ptr noundef %81, ptr noundef nonnull @.str.14) #4
  br label %do.body248

do.body248:                                       ; preds = %if.then243, %do.body231
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then260)) #4
          to label %do.end264 [label %if.then260], !srcloc !249

if.then260:                                       ; preds = %do.body248
  call void @__sanitizer_cov_trace_pc() #6
  %dev261 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %82 = ptrtoint ptr %dev261 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev261, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug247, ptr noundef %83, ptr noundef nonnull @.str.15) #4
  br label %do.end264

do.end264:                                        ; preds = %if.then260, %do.body248
  %84 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3489 = getelementptr i8, ptr %85, i32 700
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3489) #4, !srcloc !251
  %87 = and i32 %86, -16777217
  %88 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3491 = getelementptr i8, ptr %89, i32 700
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3491, i32 %87) #4, !srcloc !252
  tail call void @tegra210_emc_timing_update(ptr noundef %emc) #4
  %num_channels267 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 12
  %90 = ptrtoint ptr %num_channels267 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %num_channels267, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp2683956.not = icmp eq i32 %91, 0
  br i1 %cmp2683956.not, label %do.end264.do.body270_crit_edge, label %do.end264.for.body_crit_edge

do.end264.for.body_crit_edge:                     ; preds = %do.end264
  br label %for.body

do.end264.do.body270_crit_edge:                   ; preds = %do.end264
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body270

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end264.for.body_crit_edge
  %i.03957 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.end264.for.body_crit_edge ]
  %call269 = tail call i32 @tegra210_emc_wait_for_update(ptr noundef %emc, i32 noundef %i.03957, i32 noundef 700, i32 noundef 1, i1 noundef zeroext false) #4
  %inc = add nuw i32 %i.03957, 1
  %92 = ptrtoint ptr %num_channels267 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %num_channels267, align 4
  %cmp268 = icmp ult i32 %inc, %93
  br i1 %cmp268, label %for.body.for.body_crit_edge, label %for.body.do.body270_crit_edge

for.body.do.body270_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body270

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

do.body270:                                       ; preds = %for.body.do.body270_crit_edge, %do.end264.do.body270_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then282)) #4
          to label %do.end286 [label %if.then282], !srcloc !249

if.then282:                                       ; preds = %do.body270
  call void @__sanitizer_cov_trace_pc() #6
  %dev283 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %94 = ptrtoint ptr %dev283 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev283, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug248, ptr noundef %95, ptr noundef nonnull @.str.16) #4
  br label %do.end286

do.end286:                                        ; preds = %if.then282, %do.body270
  %emc_auto_cal_config287 = getelementptr inbounds %struct.tegra210_emc_timing, ptr %3, i32 0, i32 47
  %96 = ptrtoint ptr %emc_auto_cal_config287 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %emc_auto_cal_config287, align 4
  %and288 = and i32 %97, 536870912
  %or290 = and i32 %97, 2147482111
  %or291 = or i32 %or290, 1536
  %98 = tail call i32 @llvm.bswap.i32(i32 %or291) #4
  %99 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3493 = getelementptr i8, ptr %100, i32 676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3493, i32 %98) #4, !srcloc !252
  %101 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3495 = getelementptr i8, ptr %102, i32 676
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3495) #4, !srcloc !251
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then305)) #4
          to label %do.end309 [label %if.then305], !srcloc !249

if.then305:                                       ; preds = %do.end286
  call void @__sanitizer_cov_trace_pc() #6
  %dev306 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %104 = ptrtoint ptr %dev306 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev306, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug249, ptr noundef %105, ptr noundef nonnull @.str.17) #4
  br label %do.end309

do.end309:                                        ; preds = %if.then305, %do.end286
  tail call void @tegra210_emc_set_shadow_bypass(ptr noundef %emc, i32 noundef 1) #4
  %106 = tail call i32 @llvm.bswap.i32(i32 %and51) #4
  %107 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3497 = getelementptr i8, ptr %108, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3497, i32 %106) #4, !srcloc !252
  %109 = tail call i32 @llvm.bswap.i32(i32 %and53) #4
  %110 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3499 = getelementptr i8, ptr %111, i32 984
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3499, i32 %109) #4, !srcloc !252
  tail call void @tegra210_emc_set_shadow_bypass(ptr noundef %emc, i32 noundef 0) #4
  %periodic_training = getelementptr inbounds %struct.tegra210_emc_timing, ptr %3, i32 0, i32 10
  %112 = ptrtoint ptr %periodic_training to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %periodic_training, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool310.not = icmp eq i32 %113, 0
  br i1 %tobool310.not, label %do.end309.if.end358_crit_edge, label %if.then311

do.end309.if.end358_crit_edge:                    ; preds = %do.end309
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end358

if.then311:                                       ; preds = %do.end309
  tail call void @tegra210_emc_reset_dram_clktree_values(ptr noundef %3) #4
  %114 = ptrtoint ptr %num_channels267 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %num_channels267, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %cmp3143958.not = icmp eq i32 %115, 0
  br i1 %cmp3143958.not, label %if.then311.for.end327_crit_edge, label %if.then311.for.body315_crit_edge

if.then311.for.body315_crit_edge:                 ; preds = %if.then311
  br label %for.body315

if.then311.for.end327_crit_edge:                  ; preds = %if.then311
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end327

for.cond320.preheader:                            ; preds = %for.body315
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %cmp3223960.not = icmp eq i32 %117, 0
  br i1 %cmp3223960.not, label %for.cond320.preheader.for.end327_crit_edge, label %for.cond320.preheader.for.body323_crit_edge

for.cond320.preheader.for.body323_crit_edge:      ; preds = %for.cond320.preheader
  br label %for.body323

for.cond320.preheader.for.end327_crit_edge:       ; preds = %for.cond320.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end327

for.body315:                                      ; preds = %for.body315.for.body315_crit_edge, %if.then311.for.body315_crit_edge
  %i.13959 = phi i32 [ %inc318, %for.body315.for.body315_crit_edge ], [ 0, %if.then311.for.body315_crit_edge ]
  %call316 = tail call i32 @tegra210_emc_wait_for_update(ptr noundef %emc, i32 noundef %i.13959, i32 noundef 692, i32 noundef 48, i1 noundef zeroext false) #4
  %inc318 = add nuw i32 %i.13959, 1
  %116 = ptrtoint ptr %num_channels267 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %num_channels267, align 4
  %cmp314 = icmp ult i32 %inc318, %117
  br i1 %cmp314, label %for.body315.for.body315_crit_edge, label %for.cond320.preheader

for.body315.for.body315_crit_edge:                ; preds = %for.body315
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body315

for.body323:                                      ; preds = %for.body323.for.body323_crit_edge, %for.cond320.preheader.for.body323_crit_edge
  %i.23961 = phi i32 [ %inc326, %for.body323.for.body323_crit_edge ], [ 0, %for.cond320.preheader.for.body323_crit_edge ]
  %call324 = tail call i32 @tegra210_emc_wait_for_update(ptr noundef %emc, i32 noundef %i.23961, i32 noundef 692, i32 noundef 768, i1 noundef zeroext false) #4
  %inc326 = add nuw i32 %i.23961, 1
  %118 = ptrtoint ptr %num_channels267 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %num_channels267, align 4
  %cmp322 = icmp ult i32 %inc326, %119
  br i1 %cmp322, label %for.body323.for.body323_crit_edge, label %for.body323.for.end327_crit_edge

for.body323.for.end327_crit_edge:                 ; preds = %for.body323
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end327

for.body323.for.body323_crit_edge:                ; preds = %for.body323
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body323

for.end327:                                       ; preds = %for.body323.for.end327_crit_edge, %for.cond320.preheader.for.end327_crit_edge, %if.then311.for.end327_crit_edge
  tail call void @tegra210_emc_start_periodic_compensation(ptr noundef %emc) #4
  %run_clocks = getelementptr inbounds %struct.tegra210_emc_timing, ptr %1, i32 0, i32 13
  %120 = ptrtoint ptr %run_clocks to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %run_clocks, align 4
  %call328 = tail call i32 @tegra210_emc_actual_osc_clocks(i32 noundef %121) #4
  %mul329 = mul i32 %call328, 1000
  %122 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %rate, align 4
  %div331 = udiv i32 %mul329, %123
  %add = add i32 %div331, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %124 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %124(i32 noundef %add) #4
  %ptfv_list.i = getelementptr inbounds %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24
  %arrayidx.i = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24, i32 9
  %125 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx.i, align 4
  %run_clocks.i = getelementptr inbounds %struct.tegra210_emc_timing, ptr %call6, i32 0, i32 13
  %127 = ptrtoint ptr %run_clocks.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %run_clocks.i, align 4
  %call.i = tail call i32 @tegra210_emc_actual_osc_clocks(i32 noundef %128) #4
  %mul.i = mul i32 %call.i, 1000
  %rate.i = getelementptr inbounds %struct.tegra210_emc_timing, ptr %call6, i32 0, i32 2
  %129 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %rate.i, align 4
  %div.i = udiv i32 %mul.i, %130
  %add.i = add i32 %div.i, 2
  %131 = ptrtoint ptr %periodic_training to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %periodic_training, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool.not.i = icmp eq i32 %132, 0
  br i1 %tobool.not.i, label %for.end327.if.end358_crit_edge, label %if.end.i

for.end327.if.end358_crit_edge:                   ; preds = %for.end327
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end358

if.end.i:                                         ; preds = %for.end327
  %periodic_training2.i = getelementptr inbounds %struct.tegra210_emc_timing, ptr %call6, i32 0, i32 10
  %133 = ptrtoint ptr %periodic_training2.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %periodic_training2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool3.not.i = icmp eq i32 %134, 0
  br i1 %tobool3.not.i, label %if.end.i.if.else.i_crit_edge, label %land.lhs.true.i

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %arrayidx5.i = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24, i32 11
  %135 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx5.i, align 4
  %and.i = and i32 %136, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then7.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else.i

if.then7.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %ptfv_list8.i = getelementptr inbounds %struct.tegra210_emc_timing, ptr %call6, i32 0, i32 24
  %137 = ptrtoint ptr %ptfv_list8.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %ptfv_list8.i, align 4
  %139 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx.i, align 4
  %mul12.i = mul i32 %140, %138
  %141 = ptrtoint ptr %ptfv_list.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %mul12.i, ptr %ptfv_list.i, align 4
  %arrayidx17.i = getelementptr %struct.tegra210_emc_timing, ptr %call6, i32 0, i32 24, i32 1
  %142 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx17.i, align 4
  %mul20.i = mul i32 %143, %140
  %arrayidx22.i = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24, i32 1
  %144 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %mul20.i, ptr %arrayidx22.i, align 4
  %arrayidx25.i = getelementptr %struct.tegra210_emc_timing, ptr %call6, i32 0, i32 24, i32 4
  %145 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %arrayidx25.i, align 4
  %mul28.i = mul i32 %146, %140
  %arrayidx30.i = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24, i32 4
  %147 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %mul28.i, ptr %arrayidx30.i, align 4
  %arrayidx33.i = getelementptr %struct.tegra210_emc_timing, ptr %call6, i32 0, i32 24, i32 5
  %148 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx33.i, align 4
  %mul36.i = mul i32 %149, %140
  %arrayidx38.i = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24, i32 5
  %150 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %mul36.i, ptr %arrayidx38.i, align 4
  %arrayidx41.i = getelementptr %struct.tegra210_emc_timing, ptr %call6, i32 0, i32 24, i32 2
  %151 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %arrayidx41.i, align 4
  %mul44.i = mul i32 %152, %140
  %arrayidx46.i = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24, i32 2
  %153 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %mul44.i, ptr %arrayidx46.i, align 4
  %arrayidx49.i = getelementptr %struct.tegra210_emc_timing, ptr %call6, i32 0, i32 24, i32 3
  %154 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx49.i, align 4
  %mul52.i = mul i32 %155, %140
  %arrayidx54.i = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24, i32 3
  %156 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %mul52.i, ptr %arrayidx54.i, align 4
  %arrayidx57.i = getelementptr %struct.tegra210_emc_timing, ptr %call6, i32 0, i32 24, i32 6
  %157 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx57.i, align 4
  %mul60.i = mul i32 %158, %140
  %arrayidx62.i = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24, i32 6
  %159 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %mul60.i, ptr %arrayidx62.i, align 4
  %arrayidx65.i = getelementptr %struct.tegra210_emc_timing, ptr %call6, i32 0, i32 24, i32 7
  %160 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx65.i, align 4
  %mul68.i = mul i32 %161, %140
  %arrayidx70.i = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24, i32 7
  %162 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %mul68.i, ptr %arrayidx70.i, align 4
  br label %periodic_compensation_handler.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.i.if.else.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %cmp87163.not.i = icmp eq i32 %126, 0
  %163 = call ptr @memset(ptr %ptfv_list.i, i32 0, i32 32)
  br i1 %cmp87163.not.i, label %if.else.i.periodic_compensation_handler.exit_crit_edge, label %if.else.i.for.body.i_crit_edge

if.else.i.for.body.i_crit_edge:                   ; preds = %if.else.i
  br label %for.body.i

if.else.i.periodic_compensation_handler.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %periodic_compensation_handler.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.else.i.for.body.i_crit_edge
  %i.0164.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.else.i.for.body.i_crit_edge ]
  tail call void @tegra210_emc_start_periodic_compensation(ptr noundef %emc) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %164 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %164(i32 noundef %add.i) #4
  %call93.i = tail call fastcc i32 @update_clock_tree_delay(ptr noundef %emc, i32 noundef 10) #4
  %inc.i = add nuw i32 %i.0164.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %126
  br i1 %exitcond.not.i, label %for.body.i.periodic_compensation_handler.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.body.i.periodic_compensation_handler.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %periodic_compensation_handler.exit

periodic_compensation_handler.exit:               ; preds = %for.body.i.periodic_compensation_handler.exit_crit_edge, %if.else.i.periodic_compensation_handler.exit_crit_edge, %if.then7.i
  %call95.i = tail call fastcc i32 @update_clock_tree_delay(ptr noundef %emc, i32 noundef 11) #4
  %165 = ptrtoint ptr %periodic_training to i32
  call void @__asan_load4_noabort(i32 %165)
  %.pr = load i32, ptr %periodic_training, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool353.not = icmp eq i32 %.pr, 0
  br i1 %tobool353.not, label %periodic_compensation_handler.exit.if.end358_crit_edge, label %land.lhs.true354

periodic_compensation_handler.exit.if.end358_crit_edge: ; preds = %periodic_compensation_handler.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end358

land.lhs.true354:                                 ; preds = %periodic_compensation_handler.exit
  call void @__sanitizer_cov_trace_pc() #6
  %mul347 = shl i32 %call95.i, 7
  %166 = ptrtoint ptr %rate40 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %rate40, align 4
  %mul349 = mul i32 %mul347, %167
  %div351 = udiv i32 %mul349, 1000000000
  %tree_margin = getelementptr inbounds %struct.tegra210_emc_timing, ptr %3, i32 0, i32 14
  %168 = ptrtoint ptr %tree_margin to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %tree_margin, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div351, i32 %169)
  %cmp355 = icmp ugt i32 %div351, %169
  br label %if.end358

if.end358:                                        ; preds = %land.lhs.true354, %periodic_compensation_handler.exit.if.end358_crit_edge, %for.end327.if.end358_crit_edge, %do.end309.if.end358_crit_edge
  %compensate_trimmer_applicable.0.off0 = phi i1 [ false, %periodic_compensation_handler.exit.if.end358_crit_edge ], [ false, %do.end309.if.end358_crit_edge ], [ %cmp355, %land.lhs.true354 ], [ false, %for.end327.if.end358_crit_edge ]
  %170 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %regs.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %171, i32 268435456) #4, !srcloc !252
  tail call void @tegra210_emc_set_shadow_bypass(ptr noundef %emc, i32 noundef 1) #4
  %172 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3503 = getelementptr i8, ptr %173, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3503, i32 %106) #4, !srcloc !252
  %174 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3505 = getelementptr i8, ptr %175, i32 984
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3505, i32 %109) #4, !srcloc !252
  %176 = or i32 %45, 16777216
  %177 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3507 = getelementptr i8, ptr %178, i32 1368
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3507, i32 %176) #4, !srcloc !252
  %emc_fdpd_ctrl_cmd_no_ramp = getelementptr inbounds %struct.tegra210_emc_timing, ptr %3, i32 0, i32 57
  %179 = ptrtoint ptr %emc_fdpd_ctrl_cmd_no_ramp to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %emc_fdpd_ctrl_cmd_no_ramp, align 4
  %and360 = and i32 %180, -2
  %181 = tail call i32 @llvm.bswap.i32(i32 %and360) #4
  %182 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3509 = getelementptr i8, ptr %183, i32 1240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3509, i32 %181) #4, !srcloc !252
  %arrayidx362 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 25, i32 171
  %184 = ptrtoint ptr %arrayidx362 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %arrayidx362, align 4
  %arrayidx365 = getelementptr %struct.tegra210_emc_timing, ptr %1, i32 0, i32 25, i32 171
  %186 = ptrtoint ptr %arrayidx365 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %arrayidx365, align 4
  %and3633253 = xor i32 %187, %185
  %188 = and i32 %and3633253, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %.not = icmp eq i32 %188, 0
  %and378 = and i32 %185, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and378)
  %cmp379 = icmp eq i32 %and378, 0
  %and382 = and i32 %185, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and382)
  %cmp383 = icmp eq i32 %and382, 0
  br i1 %.not, label %if.end358.if.end399_crit_edge, label %if.then386

if.end358.if.end399_crit_edge:                    ; preds = %if.end358
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end399

if.then386:                                       ; preds = %if.end358
  br i1 %cmp383, label %if.then388, label %if.then386.if.end392_crit_edge

if.then386.if.end392_crit_edge:                   ; preds = %if.then386
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end392

if.then388:                                       ; preds = %if.then386
  call void @__sanitizer_cov_trace_pc() #6
  %and391 = and i32 %187, -2
  %189 = tail call i32 @llvm.bswap.i32(i32 %and391) #4
  %190 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3511 = getelementptr i8, ptr %191, i32 3132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3511, i32 %189) #4, !srcloc !252
  br label %if.end392

if.end392:                                        ; preds = %if.then388, %if.then386.if.end392_crit_edge
  br i1 %cmp379, label %if.then394, label %if.end392.if.end399_crit_edge

if.end392.if.end399_crit_edge:                    ; preds = %if.end392
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end399

if.then394:                                       ; preds = %if.end392
  call void @__sanitizer_cov_trace_pc() #6
  %192 = ptrtoint ptr %arrayidx365 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %arrayidx365, align 4
  %and397 = and i32 %193, -5
  %194 = tail call i32 @llvm.bswap.i32(i32 %and397) #4
  %195 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3513 = getelementptr i8, ptr %196, i32 3132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3513, i32 %194) #4, !srcloc !252
  br label %if.end399

if.end399:                                        ; preds = %if.then394, %if.end392.if.end399_crit_edge, %if.end358.if.end399_crit_edge
  %arrayidx401 = getelementptr %struct.tegra210_emc_timing, ptr %1, i32 0, i32 25, i32 162
  %197 = ptrtoint ptr %arrayidx401 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %arrayidx401, align 4
  %and402 = and i32 %198, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and402)
  %cmp403 = icmp eq i32 %and402, 0
  br i1 %cmp403, label %land.lhs.true405, label %if.end399.lor.lhs.false411_crit_edge

if.end399.lor.lhs.false411_crit_edge:             ; preds = %if.end399
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false411

land.lhs.true405:                                 ; preds = %if.end399
  %arrayidx407 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 25, i32 162
  %199 = ptrtoint ptr %arrayidx407 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %arrayidx407, align 4
  %and408 = and i32 %200, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and408)
  %cmp409.not = icmp eq i32 %and408, 0
  br i1 %cmp409.not, label %land.lhs.true405.lor.lhs.false411_crit_edge, label %land.lhs.true405.if.then423_crit_edge

land.lhs.true405.if.then423_crit_edge:            ; preds = %land.lhs.true405
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then423

land.lhs.true405.lor.lhs.false411_crit_edge:      ; preds = %land.lhs.true405
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false411

lor.lhs.false411:                                 ; preds = %land.lhs.true405.lor.lhs.false411_crit_edge, %if.end399.lor.lhs.false411_crit_edge
  %and414 = and i32 %198, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and414)
  %cmp415 = icmp eq i32 %and414, 0
  br i1 %cmp415, label %land.lhs.true417, label %lor.lhs.false411.if.else434_crit_edge

lor.lhs.false411.if.else434_crit_edge:            ; preds = %lor.lhs.false411
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else434

land.lhs.true417:                                 ; preds = %lor.lhs.false411
  %arrayidx419 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 25, i32 162
  %201 = ptrtoint ptr %arrayidx419 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %arrayidx419, align 4
  %and420 = and i32 %202, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and420)
  %cmp421.not = icmp eq i32 %and420, 0
  br i1 %cmp421.not, label %land.lhs.true417.if.else434_crit_edge, label %land.lhs.true417.if.then423_crit_edge

land.lhs.true417.if.then423_crit_edge:            ; preds = %land.lhs.true417
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then423

land.lhs.true417.if.else434_crit_edge:            ; preds = %land.lhs.true417
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else434

if.then423:                                       ; preds = %land.lhs.true417.if.then423_crit_edge, %land.lhs.true405.if.then423_crit_edge
  %arrayidx425 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 25, i32 162
  %203 = ptrtoint ptr %arrayidx425 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %arrayidx425, align 4
  %and428 = and i32 %204, 256
  %and429 = and i32 %204, 1
  %and431 = and i32 %198, -258
  %or432 = or i32 %and429, %and431
  %or433 = or i32 %or432, %and428
  %205 = tail call i32 @llvm.bswap.i32(i32 %or433) #4
  %206 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3515 = getelementptr i8, ptr %207, i32 3172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3515, i32 %205) #4, !srcloc !252
  br label %if.end438.sink.split

if.else434:                                       ; preds = %land.lhs.true417.if.else434_crit_edge, %lor.lhs.false411.if.else434_crit_edge
  br i1 %.not, label %if.else434.if.end438_crit_edge, label %if.else434.if.end438.sink.split_crit_edge

if.else434.if.end438.sink.split_crit_edge:        ; preds = %if.else434
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end438.sink.split

if.else434.if.end438_crit_edge:                   ; preds = %if.else434
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end438

if.end438.sink.split:                             ; preds = %if.else434.if.end438.sink.split_crit_edge, %if.then423
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %208 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %208(i32 noundef 214748) #4
  br label %if.end438

if.end438:                                        ; preds = %if.end438.sink.split, %if.else434.if.end438_crit_edge
  tail call void @tegra210_emc_set_shadow_bypass(ptr noundef %emc, i32 noundef 0) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then451)) #4
          to label %do.end455 [label %if.then451], !srcloc !249

if.then451:                                       ; preds = %if.end438
  call void @__sanitizer_cov_trace_pc() #6
  %dev452 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %209 = ptrtoint ptr %dev452 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %dev452, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug250, ptr noundef %210, ptr noundef nonnull @.str.18) #4
  br label %do.end455

do.end455:                                        ; preds = %if.then451, %if.end438
  %arrayidx457 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 25, i32 67
  %211 = ptrtoint ptr %arrayidx457 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %arrayidx457, align 4
  %and458 = and i32 %212, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and458)
  %tobool459.not = icmp eq i32 %and458, 0
  br i1 %tobool459.not, label %do.body497, label %do.body461

do.body461:                                       ; preds = %do.end455
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then473)) #4
          to label %do.end477 [label %if.then473], !srcloc !249

if.then473:                                       ; preds = %do.body461
  call void @__sanitizer_cov_trace_pc() #6
  %dev474 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %213 = ptrtoint ptr %dev474 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %dev474, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug251, ptr noundef %214, ptr noundef nonnull @.str.19) #4
  br label %do.end477

do.end477:                                        ; preds = %if.then473, %do.body461
  %call478 = tail call i32 @tegra210_emc_dll_prelock(ptr noundef %emc, i32 noundef %clksrc) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then491)) #4
          to label %do.body515 [label %if.then491], !srcloc !249

if.then491:                                       ; preds = %do.end477
  call void @__sanitizer_cov_trace_pc() #6
  %dev492 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %215 = ptrtoint ptr %dev492 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %dev492, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug252, ptr noundef %216, ptr noundef nonnull @.str.20, i32 noundef %call478) #4
  br label %do.body515

do.body497:                                       ; preds = %do.end455
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then509)) #4
          to label %do.end513 [label %if.then509], !srcloc !249

if.then509:                                       ; preds = %do.body497
  call void @__sanitizer_cov_trace_pc() #6
  %dev510 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %217 = ptrtoint ptr %dev510 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %dev510, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug253, ptr noundef %218, ptr noundef nonnull @.str.21) #4
  br label %do.end513

do.end513:                                        ; preds = %if.then509, %do.body497
  tail call void @tegra210_emc_dll_disable(ptr noundef %emc) #4
  br label %do.body515

do.body515:                                       ; preds = %do.end513, %if.then491, %do.end477
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then527)) #4
          to label %do.end531 [label %if.then527], !srcloc !249

if.then527:                                       ; preds = %do.body515
  call void @__sanitizer_cov_trace_pc() #6
  %dev528 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %219 = ptrtoint ptr %dev528 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %dev528, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug254, ptr noundef %220, ptr noundef nonnull @.str.22) #4
  br label %do.end531

do.end531:                                        ; preds = %if.then527, %do.body515
  tail call void @tegra210_emc_set_shadow_bypass(ptr noundef %emc, i32 noundef 1) #4
  %emc_auto_cal_config2 = getelementptr inbounds %struct.tegra210_emc_timing, ptr %3, i32 0, i32 48
  %221 = ptrtoint ptr %emc_auto_cal_config2 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %emc_auto_cal_config2, align 4
  %223 = tail call i32 @llvm.bswap.i32(i32 %222) #4
  %224 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3517 = getelementptr i8, ptr %225, i32 1112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3517, i32 %223) #4, !srcloc !252
  %emc_auto_cal_config3 = getelementptr inbounds %struct.tegra210_emc_timing, ptr %3, i32 0, i32 49
  %226 = ptrtoint ptr %emc_auto_cal_config3 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %emc_auto_cal_config3, align 4
  %228 = tail call i32 @llvm.bswap.i32(i32 %227) #4
  %229 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3519 = getelementptr i8, ptr %230, i32 1116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3519, i32 %228) #4, !srcloc !252
  %emc_auto_cal_config4 = getelementptr inbounds %struct.tegra210_emc_timing, ptr %3, i32 0, i32 50
  %231 = ptrtoint ptr %emc_auto_cal_config4 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %emc_auto_cal_config4, align 4
  %233 = tail call i32 @llvm.bswap.i32(i32 %232) #4
  %234 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3521 = getelementptr i8, ptr %235, i32 1456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3521, i32 %233) #4, !srcloc !252
  %emc_auto_cal_config5 = getelementptr inbounds %struct.tegra210_emc_timing, ptr %3, i32 0, i32 51
  %236 = ptrtoint ptr %emc_auto_cal_config5 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %emc_auto_cal_config5, align 4
  %238 = tail call i32 @llvm.bswap.i32(i32 %237) #4
  %239 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3523 = getelementptr i8, ptr %240, i32 1460
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3523, i32 %238) #4, !srcloc !252
  %emc_auto_cal_config6 = getelementptr inbounds %struct.tegra210_emc_timing, ptr %3, i32 0, i32 52
  %241 = ptrtoint ptr %emc_auto_cal_config6 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %emc_auto_cal_config6, align 4
  %243 = tail call i32 @llvm.bswap.i32(i32 %242) #4
  %244 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3525 = getelementptr i8, ptr %245, i32 1484
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3525, i32 %243) #4, !srcloc !252
  %emc_auto_cal_config7 = getelementptr inbounds %struct.tegra210_emc_timing, ptr %3, i32 0, i32 53
  %246 = ptrtoint ptr %emc_auto_cal_config7 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %emc_auto_cal_config7, align 4
  %248 = tail call i32 @llvm.bswap.i32(i32 %247) #4
  %249 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3527 = getelementptr i8, ptr %250, i32 1396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3527, i32 %248) #4, !srcloc !252
  %emc_auto_cal_config8 = getelementptr inbounds %struct.tegra210_emc_timing, ptr %3, i32 0, i32 54
  %251 = ptrtoint ptr %emc_auto_cal_config8 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %emc_auto_cal_config8, align 4
  %253 = tail call i32 @llvm.bswap.i32(i32 %252) #4
  %254 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3529 = getelementptr i8, ptr %255, i32 732
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3529, i32 %253) #4, !srcloc !252
  tail call void @tegra210_emc_set_shadow_bypass(ptr noundef %emc, i32 noundef 0) #4
  %or532 = or i32 %and288, %or291
  %or533 = or i32 %or532, 1
  %256 = tail call i32 @llvm.bswap.i32(i32 %or533) #4
  %257 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3531 = getelementptr i8, ptr %258, i32 676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3531, i32 %256) #4, !srcloc !252
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then546)) #4
          to label %do.end550 [label %if.then546], !srcloc !249

if.then546:                                       ; preds = %do.end531
  call void @__sanitizer_cov_trace_pc() #6
  %dev547 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %259 = ptrtoint ptr %dev547 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %dev547, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug255, ptr noundef %260, ptr noundef nonnull @.str.23) #4
  br label %do.end550

do.end550:                                        ; preds = %if.then546, %do.end531
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %32)
  %cmp551 = icmp ult i32 %32, 20000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp554 = icmp eq i32 %and, 1
  %or.cond3256 = select i1 %cmp551, i1 %cmp554, i1 false
  br i1 %or.cond3256, label %if.then556, label %if.else557

if.then556:                                       ; preds = %do.end550
  call void @__sanitizer_cov_trace_pc() #6
  %261 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3533 = getelementptr i8, ptr %262, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3533, i32 16777216) #4, !srcloc !252
  %263 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i = getelementptr i8, ptr %264, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 -536870784) #4, !srcloc !252
  br label %do.body559

if.else557:                                       ; preds = %do.end550
  call void @__sanitizer_cov_trace_pc() #6
  %emc_cfg_2 = getelementptr inbounds %struct.tegra210_emc_timing, ptr %3, i32 0, i32 55
  %265 = ptrtoint ptr %emc_cfg_2 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %emc_cfg_2, align 4
  %267 = tail call i32 @llvm.bswap.i32(i32 %266) #4
  %268 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3535 = getelementptr i8, ptr %269, i32 696
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3535, i32 %267) #4, !srcloc !252
  br label %do.body559

do.body559:                                       ; preds = %if.else557, %if.then556
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then571)) #4
          to label %do.end575 [label %if.then571], !srcloc !249

if.then571:                                       ; preds = %do.body559
  call void @__sanitizer_cov_trace_pc() #6
  %dev572 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %270 = ptrtoint ptr %dev572 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %dev572, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug256, ptr noundef %271, ptr noundef nonnull @.str.24) #4
  br label %do.end575

do.end575:                                        ; preds = %if.then571, %do.body559
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then631)) #4
          to label %do.body636 [label %if.then631], !srcloc !249

if.then631:                                       ; preds = %do.end575
  call void @__sanitizer_cov_trace_pc() #6
  %dev632 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %272 = ptrtoint ptr %dev632 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %dev632, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug263, ptr noundef %273, ptr noundef nonnull @.str.25) #4
  br label %do.body636

do.body636:                                       ; preds = %if.then631, %do.end575
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then648)) #4
          to label %do.body653 [label %if.then648], !srcloc !249

if.then648:                                       ; preds = %do.body636
  call void @__sanitizer_cov_trace_pc() #6
  %dev649 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %274 = ptrtoint ptr %dev649 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %dev649, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug264, ptr noundef %275, ptr noundef nonnull @.str.26) #4
  br label %do.body653

do.body653:                                       ; preds = %if.then648, %do.body636
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then665)) #4
          to label %do.end669 [label %if.then665], !srcloc !249

if.then665:                                       ; preds = %do.body653
  call void @__sanitizer_cov_trace_pc() #6
  %dev666 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %276 = ptrtoint ptr %dev666 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %dev666, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug265, ptr noundef %277, ptr noundef nonnull @.str.27) #4
  br label %do.end669

do.end669:                                        ; preds = %if.then665, %do.body653
  br i1 %cmp554, label %if.then672, label %do.end669.if.end835_crit_edge

do.end669.if.end835_crit_edge:                    ; preds = %do.end669
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end835

if.then672:                                       ; preds = %do.end669
  call void @__sanitizer_cov_trace_const_cmp4(i32 1869159, i32 %32)
  %cmp673 = icmp ult i32 %32, 1869159
  call void @__sanitizer_cov_trace_const_cmp4(i32 1600001, i32 %32)
  %cmp677 = icmp ult i32 %32, 1600001
  call void @__sanitizer_cov_trace_const_cmp4(i32 1333334, i32 %32)
  %cmp681 = icmp ult i32 %32, 1333334
  call void @__sanitizer_cov_trace_const_cmp4(i32 1066099, i32 %32)
  %cmp685 = icmp ult i32 %32, 1066099
  %div.i3550 = udiv i32 7500, %div
  %mul.i3551 = mul i32 %div.i3550, %div
  call void @__sanitizer_cov_trace_const_cmp4(i32 7500, i32 %mul.i3551)
  %cmp.i3552 = icmp ult i32 %mul.i3551, 7500
  %add.i3553 = zext i1 %cmp.i3552 to i32
  %retval.0.i3554 = add nuw nsw i32 %div.i3550, %add.i3553
  %278 = tail call i32 @llvm.umax.i32(i32 %retval.0.i3554, i32 8)
  %emc_mrw = getelementptr inbounds %struct.tegra210_emc_timing, ptr %1, i32 0, i32 39
  %279 = ptrtoint ptr %emc_mrw to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %emc_mrw, align 4
  %and697 = lshr i32 %280, 7
  %shr698 = and i32 %and697, 1
  %arrayidx700 = getelementptr %struct.tegra210_emc_timing, ptr %call6, i32 0, i32 33, i32 4
  %281 = ptrtoint ptr %arrayidx700 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %arrayidx700, align 4
  %div.i3555 = udiv i32 3600, %div
  %mul.i3556 = mul i32 %div.i3555, %div
  call void @__sanitizer_cov_trace_const_cmp4(i32 3600, i32 %mul.i3556)
  %cmp.i3557 = icmp ult i32 %mul.i3556, 3600
  %add.i3558 = zext i1 %cmp.i3557 to i32
  %spec.store.select.op = select i1 %cmp673, i32 15, i32 17
  %spec.store.select2464.op = select i1 %cmp677, i32 13, i32 %spec.store.select.op
  %spec.store.select2465.op = select i1 %cmp681, i32 11, i32 %spec.store.select2464.op
  %retval.0.i3559 = select i1 %cmp685, i32 9, i32 %spec.store.select2465.op
  %add702 = add i32 %retval.0.i3559, %282
  %add711 = add i32 %add702, %div.i3555
  %add712 = add i32 %add711, %shr698
  %add713 = add i32 %add712, %278
  %add714 = add i32 %add713, %add.i3558
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then727)) #4
          to label %do.end733 [label %if.then727], !srcloc !249

if.then727:                                       ; preds = %if.then672
  call void @__sanitizer_cov_trace_pc() #6
  %dev728 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %283 = ptrtoint ptr %dev728 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %dev728, align 4
  %arrayidx730 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 25, i32 6
  %285 = ptrtoint ptr %arrayidx730 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %arrayidx730, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug270, ptr noundef %284, ptr noundef nonnull @.str.28, i32 noundef %add714, i32 noundef %286) #4
  br label %do.end733

do.end733:                                        ; preds = %if.then727, %if.then672
  %arrayidx735 = getelementptr %struct.tegra210_emc_timing, ptr %1, i32 0, i32 25, i32 6
  %287 = ptrtoint ptr %arrayidx735 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %arrayidx735, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add714, i32 %288)
  %cmp736 = icmp ugt i32 %add714, %288
  br i1 %cmp736, label %if.then738, label %do.body817

if.then738:                                       ; preds = %do.end733
  %arrayidx740 = getelementptr %struct.tegra210_emc_timing, ptr %1, i32 0, i32 25, i32 9
  %289 = ptrtoint ptr %arrayidx740 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %arrayidx740, align 4
  %add743 = add i32 %290, %288
  call void @__sanitizer_cov_trace_cmp4(i32 %add714, i32 %add743)
  %cmp744 = icmp ugt i32 %add714, %add743
  br i1 %cmp744, label %if.then746, label %if.else766

if.then746:                                       ; preds = %if.then738
  %sub749 = sub i32 %add714, %288
  %arrayidx753 = getelementptr %struct.tegra210_emc_timing, ptr %1, i32 0, i32 25, i32 59
  %291 = ptrtoint ptr %arrayidx753 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %arrayidx753, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %sub749)
  %cmp754 = icmp ugt i32 %sub749, 63
  br i1 %cmp754, label %if.then756, label %if.then746.if.end773_crit_edge

if.then746.if.end773_crit_edge:                   ; preds = %if.then746
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end773

if.then756:                                       ; preds = %if.then746
  call void @__sanitizer_cov_trace_pc() #6
  %sub760 = add i32 %add714, -63
  %293 = tail call i32 @llvm.umax.i32(i32 %292, i32 %sub760)
  br label %if.end773

if.else766:                                       ; preds = %if.then738
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx772 = getelementptr %struct.tegra210_emc_timing, ptr %1, i32 0, i32 25, i32 59
  %294 = ptrtoint ptr %arrayidx772 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %arrayidx772, align 4
  br label %if.end773

if.end773:                                        ; preds = %if.else766, %if.then756, %if.then746.if.end773_crit_edge
  %TRPab_war.1 = phi i32 [ %293, %if.then756 ], [ %292, %if.then746.if.end773_crit_edge ], [ %295, %if.else766 ]
  %R2P_war.0 = phi i32 [ 63, %if.then756 ], [ %sub749, %if.then746.if.end773_crit_edge ], [ %290, %if.else766 ]
  %RP_war.0 = phi i32 [ %sub760, %if.then756 ], [ %288, %if.then746.if.end773_crit_edge ], [ %288, %if.else766 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %RP_war.0, i32 %278)
  %cmp774 = icmp ult i32 %RP_war.0, %278
  %arrayidx778 = getelementptr %struct.tegra210_emc_timing, ptr %1, i32 0, i32 25, i32 10
  %296 = ptrtoint ptr %arrayidx778 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %arrayidx778, align 4
  br i1 %cmp774, label %if.then776, label %if.end773.if.end794_crit_edge

if.end773.if.end794_crit_edge:                    ; preds = %if.end773
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end794

if.then776:                                       ; preds = %if.end773
  %add779 = add i32 %297, %278
  %sub780 = sub i32 %add779, %RP_war.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %sub780)
  %cmp781 = icmp ugt i32 %sub780, 63
  br i1 %cmp781, label %if.then783, label %if.then776.if.end794_crit_edge

if.then776.if.end794_crit_edge:                   ; preds = %if.then776
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end794

if.then783:                                       ; preds = %if.then776
  call void @__sanitizer_cov_trace_pc() #6
  %sub785 = add i32 %add779, -63
  %298 = tail call i32 @llvm.umax.i32(i32 %TRPab_war.1, i32 %sub785)
  br label %if.end794

if.end794:                                        ; preds = %if.then783, %if.then776.if.end794_crit_edge, %if.end773.if.end794_crit_edge
  %W2P_war.0 = phi i32 [ 63, %if.then783 ], [ %sub780, %if.then776.if.end794_crit_edge ], [ %297, %if.end773.if.end794_crit_edge ]
  %TRPab_war.3 = phi i32 [ %298, %if.then783 ], [ %TRPab_war.1, %if.then776.if.end794_crit_edge ], [ %TRPab_war.1, %if.end773.if.end794_crit_edge ]
  %RP_war.1 = phi i32 [ %sub785, %if.then783 ], [ %RP_war.0, %if.then776.if.end794_crit_edge ], [ %RP_war.0, %if.end773.if.end794_crit_edge ]
  %arrayidx796 = getelementptr %struct.tegra210_emc_timing, ptr %1, i32 0, i32 25, i32 10
  %299 = ptrtoint ptr %arrayidx796 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %arrayidx796, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %300, i32 %W2P_war.0)
  %tobool798.not = icmp eq i32 %300, %W2P_war.0
  call void @__sanitizer_cov_trace_cmp4(i32 %290, i32 %R2P_war.0)
  %tobool803.not = icmp eq i32 %290, %R2P_war.0
  %or.cond3954 = select i1 %tobool798.not, i1 %tobool803.not, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %288, i32 %RP_war.1)
  %tobool808.not = icmp eq i32 %288, %RP_war.1
  %or.cond3955 = select i1 %or.cond3954, i1 %tobool808.not, i1 false
  br i1 %or.cond3955, label %lor.lhs.false809, label %if.end794.if.then814_crit_edge

if.end794.if.then814_crit_edge:                   ; preds = %if.end794
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then814

lor.lhs.false809:                                 ; preds = %if.end794
  %arrayidx811 = getelementptr %struct.tegra210_emc_timing, ptr %1, i32 0, i32 25, i32 59
  %301 = ptrtoint ptr %arrayidx811 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %arrayidx811, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %302, i32 %TRPab_war.3)
  %tobool813.not = icmp eq i32 %302, %TRPab_war.3
  br i1 %tobool813.not, label %lor.lhs.false809.if.end815_crit_edge, label %lor.lhs.false809.if.then814_crit_edge

lor.lhs.false809.if.then814_crit_edge:            ; preds = %lor.lhs.false809
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then814

lor.lhs.false809.if.end815_crit_edge:             ; preds = %lor.lhs.false809
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end815

if.then814:                                       ; preds = %lor.lhs.false809.if.then814_crit_edge, %if.end794.if.then814_crit_edge
  %303 = tail call i32 @llvm.bswap.i32(i32 %RP_war.1) #4
  %304 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3566 = getelementptr i8, ptr %305, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3566, i32 %303) #4, !srcloc !252
  %306 = tail call i32 @llvm.bswap.i32(i32 %R2P_war.0) #4
  %307 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3568 = getelementptr i8, ptr %308, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3568, i32 %306) #4, !srcloc !252
  %309 = tail call i32 @llvm.bswap.i32(i32 %W2P_war.0) #4
  %310 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3570 = getelementptr i8, ptr %311, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3570, i32 %309) #4, !srcloc !252
  %312 = tail call i32 @llvm.bswap.i32(i32 %TRPab_war.3) #4
  %313 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3572 = getelementptr i8, ptr %314, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3572, i32 %312) #4, !srcloc !252
  br label %if.end815

if.end815:                                        ; preds = %if.then814, %lor.lhs.false809.if.end815_crit_edge
  tail call void @tegra210_emc_timing_update(ptr noundef %emc) #4
  br label %if.end835

do.body817:                                       ; preds = %do.end733
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then829)) #4
          to label %if.end835 [label %if.then829], !srcloc !249

if.then829:                                       ; preds = %do.body817
  call void @__sanitizer_cov_trace_pc() #6
  %dev830 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %315 = ptrtoint ptr %dev830 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %dev830, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug271, ptr noundef %316, ptr noundef nonnull @.str.29) #4
  br label %if.end835

if.end835:                                        ; preds = %if.then829, %do.body817, %if.end815, %do.end669.if.end835_crit_edge
  %317 = load i8, ptr @tegra210_emc_r21021_set_clock.fsp_for_next_freq, align 1, !range !250
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %317)
  %tobool836.not = icmp eq i8 %317, 0
  %emc_mrw3 = getelementptr inbounds %struct.tegra210_emc_timing, ptr %3, i32 0, i32 41
  %318 = ptrtoint ptr %emc_mrw3 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %emc_mrw3, align 4
  %and838 = and i32 %319, -193
  %masksel = select i1 %tobool836.not, i32 0, i32 192
  %mr13_flip_fspop.0 = or i32 %and838, %masksel
  %mr13_flip_fspwr.0.v = select i1 %tobool836.not, i32 128, i32 64
  %mr13_flip_fspwr.0 = or i32 %and838, %mr13_flip_fspwr.0.v
  br i1 %cmp554, label %if.then853, label %if.end835.do.body856_crit_edge

if.end835.do.body856_crit_edge:                   ; preds = %if.end835
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body856

if.then853:                                       ; preds = %if.end835
  call void @__sanitizer_cov_trace_pc() #6
  %320 = tail call i32 @llvm.bswap.i32(i32 %mr13_flip_fspwr.0) #4
  %321 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3574 = getelementptr i8, ptr %322, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3574, i32 %320) #4, !srcloc !252
  %emc_mrw854 = getelementptr inbounds %struct.tegra210_emc_timing, ptr %3, i32 0, i32 39
  %323 = ptrtoint ptr %emc_mrw854 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %emc_mrw854, align 4
  %325 = tail call i32 @llvm.bswap.i32(i32 %324) #4
  %326 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3576 = getelementptr i8, ptr %327, i32 232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3576, i32 %325) #4, !srcloc !252
  %emc_mrw2 = getelementptr inbounds %struct.tegra210_emc_timing, ptr %3, i32 0, i32 40
  %328 = ptrtoint ptr %emc_mrw2 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %emc_mrw2, align 4
  %330 = tail call i32 @llvm.bswap.i32(i32 %329) #4
  %331 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3578 = getelementptr i8, ptr %332, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3578, i32 %330) #4, !srcloc !252
  br label %do.body856

do.body856:                                       ; preds = %if.then853, %if.end835.do.body856_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then868)) #4
          to label %do.body873 [label %if.then868], !srcloc !249

if.then868:                                       ; preds = %do.body856
  call void @__sanitizer_cov_trace_pc() #6
  %dev869 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %333 = ptrtoint ptr %dev869 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %dev869, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug272, ptr noundef %334, ptr noundef nonnull @.str.30) #4
  br label %do.body873

do.body873:                                       ; preds = %if.then868, %do.body856
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then885)) #4
          to label %do.end889 [label %if.then885], !srcloc !249

if.then885:                                       ; preds = %do.body873
  call void @__sanitizer_cov_trace_pc() #6
  %dev886 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %335 = ptrtoint ptr %dev886 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %dev886, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug273, ptr noundef %336, ptr noundef nonnull @.str.31) #4
  br label %do.end889

do.end889:                                        ; preds = %if.then885, %do.body873
  %num_burst = getelementptr inbounds %struct.tegra210_emc_timing, ptr %3, i32 0, i32 15
  %337 = ptrtoint ptr %num_burst to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %num_burst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %338)
  %cmp8913962.not = icmp eq i32 %338, 0
  br i1 %cmp8913962.not, label %do.end889.for.end1045_crit_edge, label %for.body893.lr.ph

do.end889.for.end1045_crit_edge:                  ; preds = %do.end889
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end1045

for.body893.lr.ph:                                ; preds = %do.end889
  %offsets894 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 7
  %spec.select3259.v = select i1 %cmp554, i32 268435455, i32 -805306369
  br label %for.body893

for.body893:                                      ; preds = %cleanup.for.body893_crit_edge, %for.body893.lr.ph
  %i.33963 = phi i32 [ 0, %for.body893.lr.ph ], [ %inc1044, %cleanup.for.body893_crit_edge ]
  %339 = ptrtoint ptr %offsets894 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %offsets894, align 4
  %arrayidx895 = getelementptr i16, ptr %340, i32 %i.33963
  %341 = ptrtoint ptr %arrayidx895 to i32
  call void @__asan_load2_noabort(i32 %341)
  %342 = load i16, ptr %arrayidx895, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %342)
  %tobool896.not = icmp eq i16 %342, 0
  br i1 %tobool896.not, label %for.body893.cleanup_crit_edge, label %if.end898

for.body893.cleanup_crit_edge:                    ; preds = %for.body893
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end898:                                        ; preds = %for.body893
  %arrayidx900 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 25, i32 %i.33963
  %343 = ptrtoint ptr %arrayidx900 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %arrayidx900, align 4
  br i1 %cmp554, label %if.end898.if.end949_crit_edge, label %land.lhs.true904

if.end898.if.end949_crit_edge:                    ; preds = %if.end898
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end949

land.lhs.true904:                                 ; preds = %if.end898
  %345 = zext i16 %342 to i64
  call void @__sanitizer_cov_trace_switch(i64 %345, ptr @__sancov_gen_cov_switch_values)
  switch i16 %342, label %land.lhs.true904.if.end949_crit_edge [
    i16 1188, label %land.lhs.true904.cleanup_crit_edge
    i16 1192, label %land.lhs.true904.cleanup_crit_edge3993
    i16 1196, label %land.lhs.true904.cleanup_crit_edge3994
    i16 1200, label %land.lhs.true904.cleanup_crit_edge3995
    i16 1204, label %land.lhs.true904.cleanup_crit_edge3996
    i16 1208, label %land.lhs.true904.cleanup_crit_edge3997
    i16 1212, label %land.lhs.true904.cleanup_crit_edge3998
    i16 1216, label %land.lhs.true904.cleanup_crit_edge3999
    i16 1220, label %land.lhs.true904.cleanup_crit_edge4000
    i16 1232, label %land.lhs.true904.cleanup_crit_edge4001
    i16 3588, label %land.lhs.true904.cleanup_crit_edge4002
  ]

land.lhs.true904.cleanup_crit_edge4002:           ; preds = %land.lhs.true904
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true904.cleanup_crit_edge4001:           ; preds = %land.lhs.true904
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true904.cleanup_crit_edge4000:           ; preds = %land.lhs.true904
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true904.cleanup_crit_edge3999:           ; preds = %land.lhs.true904
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true904.cleanup_crit_edge3998:           ; preds = %land.lhs.true904
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true904.cleanup_crit_edge3997:           ; preds = %land.lhs.true904
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true904.cleanup_crit_edge3996:           ; preds = %land.lhs.true904
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true904.cleanup_crit_edge3995:           ; preds = %land.lhs.true904
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true904.cleanup_crit_edge3994:           ; preds = %land.lhs.true904
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true904.cleanup_crit_edge3993:           ; preds = %land.lhs.true904
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true904.cleanup_crit_edge:               ; preds = %land.lhs.true904
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true904.if.end949_crit_edge:             ; preds = %land.lhs.true904
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end949

if.end949:                                        ; preds = %land.lhs.true904.if.end949_crit_edge, %if.end898.if.end949_crit_edge
  %conv950 = zext i16 %342 to i32
  %346 = zext i16 %342 to i64
  call void @__sanitizer_cov_trace_switch(i64 %346, ptr @__sancov_gen_cov_switch_values.76)
  switch i16 %342, label %if.end949.if.end1040_crit_edge [
    i16 12, label %if.then953
    i16 736, label %land.lhs.true997
    i16 3192, label %if.then1005
    i16 3172, label %if.then1011
    i16 3168, label %if.then1017
    i16 816, label %if.then1024
    i16 3176, label %if.then1030
  ]

if.end949.if.end1040_crit_edge:                   ; preds = %if.end949
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1040

if.then953:                                       ; preds = %if.end949
  call void @__sanitizer_cov_trace_pc() #6
  %spec.select3259 = and i32 %344, %spec.select3259.v
  br label %if.end1040

land.lhs.true997:                                 ; preds = %if.end949
  call void @__sanitizer_cov_trace_pc() #6
  %spec.select = select i1 %opt_zcal_en_cc.0.off0, i32 0, i32 %344
  br label %if.end1040

if.then1005:                                      ; preds = %if.end949
  call void @__sanitizer_cov_trace_pc() #6
  %or1006 = or i32 %344, 65536
  br label %if.end1040

if.then1011:                                      ; preds = %if.end949
  call void @__sanitizer_cov_trace_pc() #6
  %and1012 = and i32 %344, -16843267
  br label %if.end1040

if.then1017:                                      ; preds = %if.end949
  call void @__sanitizer_cov_trace_pc() #6
  %or1018 = and i32 %344, -83952131
  %and1019 = or i32 %or1018, 67108864
  br label %if.end1040

if.then1024:                                      ; preds = %if.end949
  call void @__sanitizer_cov_trace_pc() #6
  %and1025 = and i32 %344, -134154240
  br label %if.end1040

if.then1030:                                      ; preds = %if.end949
  call void @__sanitizer_cov_trace_pc() #6
  %and1031 = and i32 %344, -16
  br label %if.end1040

if.end1040:                                       ; preds = %if.then1030, %if.then1024, %if.then1017, %if.then1011, %if.then1005, %land.lhs.true997, %if.then953, %if.end949.if.end1040_crit_edge
  %value.0 = phi i32 [ %or1006, %if.then1005 ], [ %and1012, %if.then1011 ], [ %and1019, %if.then1017 ], [ %and1025, %if.then1024 ], [ %and1031, %if.then1030 ], [ %spec.select3259, %if.then953 ], [ %344, %if.end949.if.end1040_crit_edge ], [ %spec.select, %land.lhs.true997 ]
  %347 = tail call i32 @llvm.bswap.i32(i32 %value.0) #4
  %348 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3580 = getelementptr i8, ptr %349, i32 %conv950
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3580, i32 %347) #4, !srcloc !252
  br label %cleanup

cleanup:                                          ; preds = %if.end1040, %land.lhs.true904.cleanup_crit_edge, %land.lhs.true904.cleanup_crit_edge3993, %land.lhs.true904.cleanup_crit_edge3994, %land.lhs.true904.cleanup_crit_edge3995, %land.lhs.true904.cleanup_crit_edge3996, %land.lhs.true904.cleanup_crit_edge3997, %land.lhs.true904.cleanup_crit_edge3998, %land.lhs.true904.cleanup_crit_edge3999, %land.lhs.true904.cleanup_crit_edge4000, %land.lhs.true904.cleanup_crit_edge4001, %land.lhs.true904.cleanup_crit_edge4002, %for.body893.cleanup_crit_edge
  %inc1044 = add nuw i32 %i.33963, 1
  %350 = ptrtoint ptr %num_burst to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %num_burst, align 4
  %cmp891 = icmp ult i32 %inc1044, %351
  br i1 %cmp891, label %cleanup.for.body893_crit_edge, label %cleanup.for.end1045_crit_edge

cleanup.for.end1045_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end1045

cleanup.for.body893_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body893

for.end1045:                                      ; preds = %cleanup.for.end1045_crit_edge, %do.end889.for.end1045_crit_edge
  tail call void @tegra210_emc_adjust_timing(ptr noundef %emc, ptr noundef %3) #4
  br i1 %cmp554, label %if.then1048, label %for.end1045.do.body1053_crit_edge

for.end1045.do.body1053_crit_edge:                ; preds = %for.end1045
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body1053

if.then1048:                                      ; preds = %for.end1045
  call void @__sanitizer_cov_trace_pc() #6
  %run_clocks1049 = getelementptr inbounds %struct.tegra210_emc_timing, ptr %3, i32 0, i32 13
  %352 = ptrtoint ptr %run_clocks1049 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %run_clocks1049, align 4
  %and1050 = and i32 %353, 255
  %or1051 = or i32 %and1050, 1507328
  %354 = tail call i32 @llvm.bswap.i32(i32 %or1051) #4
  %355 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3582 = getelementptr i8, ptr %356, i32 232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3582, i32 %354) #4, !srcloc !252
  br label %do.body1053

do.body1053:                                      ; preds = %if.then1048, %for.end1045.do.body1053_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then1065)) #4
          to label %do.end1069 [label %if.then1065], !srcloc !249

if.then1065:                                      ; preds = %do.body1053
  call void @__sanitizer_cov_trace_pc() #6
  %dev1066 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %357 = ptrtoint ptr %dev1066 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %dev1066, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug274, ptr noundef %358, ptr noundef nonnull @.str.32) #4
  br label %do.end1069

do.end1069:                                       ; preds = %if.then1065, %do.body1053
  %num_burst_per_ch = getelementptr inbounds %struct.tegra210_emc_timing, ptr %3, i32 0, i32 16
  %359 = ptrtoint ptr %num_burst_per_ch to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %num_burst_per_ch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %360)
  %cmp10713965.not = icmp eq i32 %360, 0
  br i1 %cmp10713965.not, label %do.end1069.do.body1191_crit_edge, label %for.body1073.lr.ph

do.end1069.do.body1191_crit_edge:                 ; preds = %do.end1069
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body1191

for.body1073.lr.ph:                               ; preds = %do.end1069
  %offsets1075 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 7
  %dev1169 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  br label %for.body1073

for.body1073:                                     ; preds = %cleanup1185.for.body1073_crit_edge, %for.body1073.lr.ph
  %i.43966 = phi i32 [ 0, %for.body1073.lr.ph ], [ %inc1189, %cleanup1185.for.body1073_crit_edge ]
  %361 = ptrtoint ptr %offsets1075 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %offsets1075, align 4
  %burst_per_channel = getelementptr inbounds %struct.tegra210_emc_table_register_offsets, ptr %362, i32 0, i32 4
  %arrayidx1077 = getelementptr %struct.tegra210_emc_per_channel_regs, ptr %burst_per_channel, i32 %i.43966
  %offset1078 = getelementptr %struct.tegra210_emc_per_channel_regs, ptr %burst_per_channel, i32 %i.43966, i32 1
  %363 = ptrtoint ptr %offset1078 to i32
  call void @__asan_load2_noabort(i32 %363)
  %364 = load i16, ptr %offset1078, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %364)
  %tobool1079.not = icmp eq i16 %364, 0
  br i1 %tobool1079.not, label %for.body1073.cleanup1185_crit_edge, label %if.end1081

for.body1073.cleanup1185_crit_edge:               ; preds = %for.body1073
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup1185

if.end1081:                                       ; preds = %for.body1073
  br i1 %cmp554, label %if.end1081.if.end1145_crit_edge, label %land.lhs.true1084

if.end1081.if.end1145_crit_edge:                  ; preds = %if.end1081
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1145

land.lhs.true1084:                                ; preds = %if.end1081
  %365 = add i16 %364, -1188
  %366 = tail call i16 @llvm.fshl.i16(i16 %365, i16 %365, i16 14)
  %367 = zext i16 %366 to i64
  call void @__sanitizer_cov_trace_switch(i64 %367, ptr @__sancov_gen_cov_switch_values.77)
  switch i16 %366, label %land.lhs.true1084.if.end1145_crit_edge [
    i16 0, label %land.lhs.true1084.cleanup1185_crit_edge
    i16 1, label %land.lhs.true1084.cleanup1185_crit_edge4003
    i16 2, label %land.lhs.true1084.cleanup1185_crit_edge4004
    i16 3, label %land.lhs.true1084.cleanup1185_crit_edge4005
    i16 4, label %land.lhs.true1084.cleanup1185_crit_edge4006
    i16 5, label %land.lhs.true1084.cleanup1185_crit_edge4007
    i16 6, label %land.lhs.true1084.cleanup1185_crit_edge4008
    i16 7, label %land.lhs.true1084.cleanup1185_crit_edge4009
    i16 8, label %land.lhs.true1084.cleanup1185_crit_edge4010
    i16 11, label %land.lhs.true1084.cleanup1185_crit_edge4011
  ]

land.lhs.true1084.cleanup1185_crit_edge4011:      ; preds = %land.lhs.true1084
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup1185

land.lhs.true1084.cleanup1185_crit_edge4010:      ; preds = %land.lhs.true1084
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup1185

land.lhs.true1084.cleanup1185_crit_edge4009:      ; preds = %land.lhs.true1084
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup1185

land.lhs.true1084.cleanup1185_crit_edge4008:      ; preds = %land.lhs.true1084
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup1185

land.lhs.true1084.cleanup1185_crit_edge4007:      ; preds = %land.lhs.true1084
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup1185

land.lhs.true1084.cleanup1185_crit_edge4006:      ; preds = %land.lhs.true1084
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup1185

land.lhs.true1084.cleanup1185_crit_edge4005:      ; preds = %land.lhs.true1084
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup1185

land.lhs.true1084.cleanup1185_crit_edge4004:      ; preds = %land.lhs.true1084
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup1185

land.lhs.true1084.cleanup1185_crit_edge4003:      ; preds = %land.lhs.true1084
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup1185

land.lhs.true1084.cleanup1185_crit_edge:          ; preds = %land.lhs.true1084
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup1185

land.lhs.true1084.if.end1145_crit_edge:           ; preds = %land.lhs.true1084
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1145

if.end1145:                                       ; preds = %land.lhs.true1084.if.end1145_crit_edge, %if.end1081.if.end1145_crit_edge
  %368 = ptrtoint ptr %num_channels267 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %num_channels267, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %369)
  %cmp1147 = icmp ult i32 %369, 2
  br i1 %cmp1147, label %land.lhs.true1149, label %if.end1145.do.body1156_crit_edge

if.end1145.do.body1156_crit_edge:                 ; preds = %if.end1145
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body1156

land.lhs.true1149:                                ; preds = %if.end1145
  %370 = ptrtoint ptr %arrayidx1077 to i32
  call void @__asan_load2_noabort(i32 %370)
  %371 = load i16, ptr %arrayidx1077, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %371)
  %cmp1152.not = icmp eq i16 %371, 0
  br i1 %cmp1152.not, label %land.lhs.true1149.do.body1156_crit_edge, label %land.lhs.true1149.cleanup1185_crit_edge

land.lhs.true1149.cleanup1185_crit_edge:          ; preds = %land.lhs.true1149
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup1185

land.lhs.true1149.do.body1156_crit_edge:          ; preds = %land.lhs.true1149
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body1156

do.body1156:                                      ; preds = %land.lhs.true1149.do.body1156_crit_edge, %if.end1145.do.body1156_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then1168)) #4
          to label %do.end1176 [label %if.then1168], !srcloc !249

if.then1168:                                      ; preds = %do.body1156
  call void @__sanitizer_cov_trace_pc() #6
  %372 = ptrtoint ptr %dev1169 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %dev1169, align 4
  %arrayidx1170 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 26, i32 %i.43966
  %374 = ptrtoint ptr %arrayidx1170 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %arrayidx1170, align 4
  %376 = ptrtoint ptr %offset1078 to i32
  call void @__asan_load2_noabort(i32 %376)
  %377 = load i16, ptr %offset1078, align 2
  %conv1173 = zext i16 %377 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug275, ptr noundef %373, ptr noundef nonnull @.str.33, i32 noundef %i.43966, i32 noundef %375, i32 noundef %conv1173) #4
  br label %do.end1176

do.end1176:                                       ; preds = %if.then1168, %do.body1156
  %378 = ptrtoint ptr %arrayidx1077 to i32
  call void @__asan_load2_noabort(i32 %378)
  %379 = load i16, ptr %arrayidx1077, align 2
  %conv1179 = zext i16 %379 to i32
  %arrayidx1181 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 26, i32 %i.43966
  %380 = ptrtoint ptr %arrayidx1181 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %arrayidx1181, align 4
  %382 = ptrtoint ptr %offset1078 to i32
  call void @__asan_load2_noabort(i32 %382)
  %383 = load i16, ptr %offset1078, align 2
  %conv1184 = zext i16 %383 to i32
  %384 = tail call i32 @llvm.bswap.i32(i32 %381) #4
  %arrayidx.i3583 = getelementptr %struct.tegra210_emc, ptr %emc, i32 0, i32 11, i32 %conv1179
  %385 = ptrtoint ptr %arrayidx.i3583 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %arrayidx.i3583, align 4
  %add.ptr.i3584 = getelementptr i8, ptr %386, i32 %conv1184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3584, i32 %384) #4, !srcloc !252
  br label %cleanup1185

cleanup1185:                                      ; preds = %do.end1176, %land.lhs.true1149.cleanup1185_crit_edge, %land.lhs.true1084.cleanup1185_crit_edge, %land.lhs.true1084.cleanup1185_crit_edge4003, %land.lhs.true1084.cleanup1185_crit_edge4004, %land.lhs.true1084.cleanup1185_crit_edge4005, %land.lhs.true1084.cleanup1185_crit_edge4006, %land.lhs.true1084.cleanup1185_crit_edge4007, %land.lhs.true1084.cleanup1185_crit_edge4008, %land.lhs.true1084.cleanup1185_crit_edge4009, %land.lhs.true1084.cleanup1185_crit_edge4010, %land.lhs.true1084.cleanup1185_crit_edge4011, %for.body1073.cleanup1185_crit_edge
  %inc1189 = add nuw i32 %i.43966, 1
  %387 = ptrtoint ptr %num_burst_per_ch to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %num_burst_per_ch, align 4
  %cmp1071 = icmp ult i32 %inc1189, %388
  br i1 %cmp1071, label %cleanup1185.for.body1073_crit_edge, label %cleanup1185.do.body1191_crit_edge

cleanup1185.do.body1191_crit_edge:                ; preds = %cleanup1185
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body1191

cleanup1185.for.body1073_crit_edge:               ; preds = %cleanup1185
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body1073

do.body1191:                                      ; preds = %cleanup1185.do.body1191_crit_edge, %do.end1069.do.body1191_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then1203)) #4
          to label %do.end1207 [label %if.then1203], !srcloc !249

if.then1203:                                      ; preds = %do.body1191
  call void @__sanitizer_cov_trace_pc() #6
  %dev1204 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %389 = ptrtoint ptr %dev1204 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %dev1204, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug276, ptr noundef %390, ptr noundef nonnull @.str.34) #4
  br label %do.end1207

do.end1207:                                       ; preds = %if.then1203, %do.body1191
  %vref_num = getelementptr inbounds %struct.tegra210_emc_timing, ptr %3, i32 0, i32 21
  %391 = ptrtoint ptr %vref_num to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %vref_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %392)
  %cmp12093969.not = icmp eq i32 %392, 0
  br i1 %cmp12093969.not, label %do.end1207.do.body1265_crit_edge, label %for.body1211.lr.ph

do.end1207.do.body1265_crit_edge:                 ; preds = %do.end1207
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body1265

for.body1211.lr.ph:                               ; preds = %do.end1207
  %offsets1212 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 7
  %dev1243 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  br label %for.body1211

for.body1211:                                     ; preds = %cleanup1259.for.body1211_crit_edge, %for.body1211.lr.ph
  %i.53970 = phi i32 [ 0, %for.body1211.lr.ph ], [ %inc1263, %cleanup1259.for.body1211_crit_edge ]
  %393 = ptrtoint ptr %offsets1212 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %offsets1212, align 4
  %vref_per_channel = getelementptr inbounds %struct.tegra210_emc_table_register_offsets, ptr %394, i32 0, i32 6
  %arrayidx1214 = getelementptr %struct.tegra210_emc_per_channel_regs, ptr %vref_per_channel, i32 %i.53970
  %offset1215 = getelementptr %struct.tegra210_emc_per_channel_regs, ptr %vref_per_channel, i32 %i.53970, i32 1
  %395 = ptrtoint ptr %offset1215 to i32
  call void @__asan_load2_noabort(i32 %395)
  %396 = load i16, ptr %offset1215, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %396)
  %tobool1216.not = icmp eq i16 %396, 0
  br i1 %tobool1216.not, label %for.body1211.cleanup1259_crit_edge, label %if.end1218

for.body1211.cleanup1259_crit_edge:               ; preds = %for.body1211
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup1259

if.end1218:                                       ; preds = %for.body1211
  %397 = ptrtoint ptr %num_channels267 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load i32, ptr %num_channels267, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %398)
  %cmp1220 = icmp ult i32 %398, 2
  br i1 %cmp1220, label %land.lhs.true1222, label %if.end1218.do.body1230_crit_edge

if.end1218.do.body1230_crit_edge:                 ; preds = %if.end1218
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body1230

land.lhs.true1222:                                ; preds = %if.end1218
  %399 = ptrtoint ptr %arrayidx1214 to i32
  call void @__asan_load2_noabort(i32 %399)
  %400 = load i16, ptr %arrayidx1214, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %400)
  %cmp1226.not = icmp eq i16 %400, 0
  br i1 %cmp1226.not, label %land.lhs.true1222.do.body1230_crit_edge, label %land.lhs.true1222.cleanup1259_crit_edge

land.lhs.true1222.cleanup1259_crit_edge:          ; preds = %land.lhs.true1222
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup1259

land.lhs.true1222.do.body1230_crit_edge:          ; preds = %land.lhs.true1222
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body1230

do.body1230:                                      ; preds = %land.lhs.true1222.do.body1230_crit_edge, %if.end1218.do.body1230_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then1242)) #4
          to label %do.end1250 [label %if.then1242], !srcloc !249

if.then1242:                                      ; preds = %do.body1230
  call void @__sanitizer_cov_trace_pc() #6
  %401 = ptrtoint ptr %dev1243 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %dev1243, align 4
  %arrayidx1244 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 32, i32 %i.53970
  %403 = ptrtoint ptr %arrayidx1244 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %arrayidx1244, align 4
  %405 = ptrtoint ptr %offset1215 to i32
  call void @__asan_load2_noabort(i32 %405)
  %406 = load i16, ptr %offset1215, align 2
  %conv1247 = zext i16 %406 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug277, ptr noundef %402, ptr noundef nonnull @.str.33, i32 noundef %i.53970, i32 noundef %404, i32 noundef %conv1247) #4
  br label %do.end1250

do.end1250:                                       ; preds = %if.then1242, %do.body1230
  %407 = ptrtoint ptr %arrayidx1214 to i32
  call void @__asan_load2_noabort(i32 %407)
  %408 = load i16, ptr %arrayidx1214, align 2
  %conv1253 = zext i16 %408 to i32
  %arrayidx1255 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 32, i32 %i.53970
  %409 = ptrtoint ptr %arrayidx1255 to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load i32, ptr %arrayidx1255, align 4
  %411 = ptrtoint ptr %offset1215 to i32
  call void @__asan_load2_noabort(i32 %411)
  %412 = load i16, ptr %offset1215, align 2
  %conv1258 = zext i16 %412 to i32
  %413 = tail call i32 @llvm.bswap.i32(i32 %410) #4
  %arrayidx.i3585 = getelementptr %struct.tegra210_emc, ptr %emc, i32 0, i32 11, i32 %conv1253
  %414 = ptrtoint ptr %arrayidx.i3585 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %arrayidx.i3585, align 4
  %add.ptr.i3586 = getelementptr i8, ptr %415, i32 %conv1258
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3586, i32 %413) #4, !srcloc !252
  br label %cleanup1259

cleanup1259:                                      ; preds = %do.end1250, %land.lhs.true1222.cleanup1259_crit_edge, %for.body1211.cleanup1259_crit_edge
  %inc1263 = add nuw i32 %i.53970, 1
  %416 = ptrtoint ptr %vref_num to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %vref_num, align 4
  %cmp1209 = icmp ult i32 %inc1263, %417
  br i1 %cmp1209, label %cleanup1259.for.body1211_crit_edge, label %cleanup1259.do.body1265_crit_edge

cleanup1259.do.body1265_crit_edge:                ; preds = %cleanup1259
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body1265

cleanup1259.for.body1211_crit_edge:               ; preds = %cleanup1259
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body1211

do.body1265:                                      ; preds = %cleanup1259.do.body1265_crit_edge, %do.end1207.do.body1265_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then1277)) #4
          to label %do.end1281 [label %if.then1277], !srcloc !249

if.then1277:                                      ; preds = %do.body1265
  call void @__sanitizer_cov_trace_pc() #6
  %dev1278 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %418 = ptrtoint ptr %dev1278 to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %dev1278, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug278, ptr noundef %419, ptr noundef nonnull @.str.35) #4
  br label %do.end1281

do.end1281:                                       ; preds = %if.then1277, %do.body1265
  %num_trim = getelementptr inbounds %struct.tegra210_emc_timing, ptr %3, i32 0, i32 17
  %420 = ptrtoint ptr %num_trim to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %num_trim, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %421)
  %cmp12833973.not = icmp eq i32 %421, 0
  br i1 %cmp12833973.not, label %do.end1281.do.body1422_crit_edge, label %for.body1285.lr.ph

do.end1281.do.body1422_crit_edge:                 ; preds = %do.end1281
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body1422

for.body1285.lr.ph:                               ; preds = %do.end1281
  %offsets1287 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 7
  %dev1362 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  br label %for.body1285

for.body1285:                                     ; preds = %cleanup1416.for.body1285_crit_edge, %for.body1285.lr.ph
  %i.63974 = phi i32 [ 0, %for.body1285.lr.ph ], [ %inc1420, %cleanup1416.for.body1285_crit_edge ]
  %422 = ptrtoint ptr %offsets1287 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %offsets1287, align 4
  %trim = getelementptr inbounds %struct.tegra210_emc_table_register_offsets, ptr %423, i32 0, i32 1
  %arrayidx1289 = getelementptr i16, ptr %trim, i32 %i.63974
  %424 = ptrtoint ptr %arrayidx1289 to i32
  call void @__asan_load2_noabort(i32 %424)
  %425 = load i16, ptr %arrayidx1289, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %425)
  %tobool1290.not = icmp eq i16 %425, 0
  br i1 %tobool1290.not, label %for.body1285.cleanup1416_crit_edge, label %if.end1292

for.body1285.cleanup1416_crit_edge:               ; preds = %for.body1285
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup1416

if.end1292:                                       ; preds = %for.body1285
  br i1 %compensate_trimmer_applicable.0.off0, label %land.lhs.true1295, label %if.end1292.do.body1391_crit_edge

if.end1292.do.body1391_crit_edge:                 ; preds = %if.end1292
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body1391

land.lhs.true1295:                                ; preds = %if.end1292
  %426 = zext i16 %425 to i64
  call void @__sanitizer_cov_trace_switch(i64 %426, ptr @__sancov_gen_cov_switch_values.78)
  switch i16 %425, label %land.lhs.true1295.do.body1391_crit_edge [
    i16 1600, label %land.lhs.true1295.if.then1345_crit_edge
    i16 1604, label %land.lhs.true1295.if.then1345_crit_edge4012
    i16 1608, label %land.lhs.true1295.if.then1345_crit_edge4013
    i16 1612, label %land.lhs.true1295.if.then1345_crit_edge4014
    i16 1632, label %land.lhs.true1295.if.then1345_crit_edge4015
    i16 1636, label %land.lhs.true1295.if.then1345_crit_edge4016
    i16 1640, label %land.lhs.true1295.if.then1345_crit_edge4017
    i16 1644, label %land.lhs.true1295.if.then1345_crit_edge4018
    i16 1416, label %land.lhs.true1295.if.then1345_crit_edge4019
    i16 1420, label %land.lhs.true1295.if.then1345_crit_edge4020
  ]

land.lhs.true1295.if.then1345_crit_edge4020:      ; preds = %land.lhs.true1295
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then1345

land.lhs.true1295.if.then1345_crit_edge4019:      ; preds = %land.lhs.true1295
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then1345

land.lhs.true1295.if.then1345_crit_edge4018:      ; preds = %land.lhs.true1295
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then1345

land.lhs.true1295.if.then1345_crit_edge4017:      ; preds = %land.lhs.true1295
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then1345

land.lhs.true1295.if.then1345_crit_edge4016:      ; preds = %land.lhs.true1295
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then1345

land.lhs.true1295.if.then1345_crit_edge4015:      ; preds = %land.lhs.true1295
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then1345

land.lhs.true1295.if.then1345_crit_edge4014:      ; preds = %land.lhs.true1295
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then1345

land.lhs.true1295.if.then1345_crit_edge4013:      ; preds = %land.lhs.true1295
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then1345

land.lhs.true1295.if.then1345_crit_edge4012:      ; preds = %land.lhs.true1295
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then1345

land.lhs.true1295.if.then1345_crit_edge:          ; preds = %land.lhs.true1295
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then1345

land.lhs.true1295.do.body1391_crit_edge:          ; preds = %land.lhs.true1295
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body1391

if.then1345:                                      ; preds = %land.lhs.true1295.if.then1345_crit_edge, %land.lhs.true1295.if.then1345_crit_edge4012, %land.lhs.true1295.if.then1345_crit_edge4013, %land.lhs.true1295.if.then1345_crit_edge4014, %land.lhs.true1295.if.then1345_crit_edge4015, %land.lhs.true1295.if.then1345_crit_edge4016, %land.lhs.true1295.if.then1345_crit_edge4017, %land.lhs.true1295.if.then1345_crit_edge4018, %land.lhs.true1295.if.then1345_crit_edge4019, %land.lhs.true1295.if.then1345_crit_edge4020
  %conv1347 = zext i16 %425 to i32
  %call1348 = tail call i32 @tegra210_emc_compensate(ptr noundef %3, i32 noundef %conv1347) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then1361)) #4
          to label %do.body1368 [label %if.then1361], !srcloc !249

if.then1361:                                      ; preds = %if.then1345
  call void @__sanitizer_cov_trace_pc() #6
  %427 = ptrtoint ptr %dev1362 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %dev1362, align 4
  %429 = ptrtoint ptr %arrayidx1289 to i32
  call void @__asan_load2_noabort(i32 %429)
  %430 = load i16, ptr %arrayidx1289, align 2
  %conv1364 = zext i16 %430 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug279, ptr noundef %428, ptr noundef nonnull @.str.33, i32 noundef %i.63974, i32 noundef %call1348, i32 noundef %conv1364) #4
  br label %do.body1368

do.body1368:                                      ; preds = %if.then1361, %if.then1345
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then1380)) #4
          to label %do.end1387 [label %if.then1380], !srcloc !249

if.then1380:                                      ; preds = %do.body1368
  call void @__sanitizer_cov_trace_pc() #6
  %431 = ptrtoint ptr %dev1362 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %dev1362, align 4
  %433 = ptrtoint ptr %arrayidx1289 to i32
  call void @__asan_load2_noabort(i32 %433)
  %434 = load i16, ptr %arrayidx1289, align 2
  %conv1384 = zext i16 %434 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug280, ptr noundef %432, ptr noundef nonnull @.str.36, i32 noundef %conv1384, i32 noundef %call1348) #4
  br label %do.end1387

do.end1387:                                       ; preds = %if.then1380, %do.body1368
  %435 = ptrtoint ptr %arrayidx1289 to i32
  call void @__asan_load2_noabort(i32 %435)
  %436 = load i16, ptr %arrayidx1289, align 2
  %conv1389 = zext i16 %436 to i32
  %437 = tail call i32 @llvm.bswap.i32(i32 %call1348) #4
  %438 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3588 = getelementptr i8, ptr %439, i32 %conv1389
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3588, i32 %437) #4, !srcloc !252
  br label %cleanup1416

do.body1391:                                      ; preds = %land.lhs.true1295.do.body1391_crit_edge, %if.end1292.do.body1391_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then1403)) #4
          to label %do.end1410 [label %if.then1403], !srcloc !249

if.then1403:                                      ; preds = %do.body1391
  call void @__sanitizer_cov_trace_pc() #6
  %440 = ptrtoint ptr %dev1362 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %dev1362, align 4
  %arrayidx1405 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 30, i32 %i.63974
  %442 = ptrtoint ptr %arrayidx1405 to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load i32, ptr %arrayidx1405, align 4
  %444 = ptrtoint ptr %arrayidx1289 to i32
  call void @__asan_load2_noabort(i32 %444)
  %445 = load i16, ptr %arrayidx1289, align 2
  %conv1407 = zext i16 %445 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug281, ptr noundef %441, ptr noundef nonnull @.str.33, i32 noundef %i.63974, i32 noundef %443, i32 noundef %conv1407) #4
  br label %do.end1410

do.end1410:                                       ; preds = %if.then1403, %do.body1391
  %arrayidx1412 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 30, i32 %i.63974
  %446 = ptrtoint ptr %arrayidx1412 to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load i32, ptr %arrayidx1412, align 4
  %448 = ptrtoint ptr %arrayidx1289 to i32
  call void @__asan_load2_noabort(i32 %448)
  %449 = load i16, ptr %arrayidx1289, align 2
  %conv1414 = zext i16 %449 to i32
  %450 = tail call i32 @llvm.bswap.i32(i32 %447) #4
  %451 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3590 = getelementptr i8, ptr %452, i32 %conv1414
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3590, i32 %450) #4, !srcloc !252
  br label %cleanup1416

cleanup1416:                                      ; preds = %do.end1410, %do.end1387, %for.body1285.cleanup1416_crit_edge
  %inc1420 = add nuw i32 %i.63974, 1
  %453 = ptrtoint ptr %num_trim to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load i32, ptr %num_trim, align 4
  %cmp1283 = icmp ult i32 %inc1420, %454
  br i1 %cmp1283, label %cleanup1416.for.body1285_crit_edge, label %cleanup1416.do.body1422_crit_edge

cleanup1416.do.body1422_crit_edge:                ; preds = %cleanup1416
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body1422

cleanup1416.for.body1285_crit_edge:               ; preds = %cleanup1416
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body1285

do.body1422:                                      ; preds = %cleanup1416.do.body1422_crit_edge, %do.end1281.do.body1422_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then1434)) #4
          to label %do.end1438 [label %if.then1434], !srcloc !249

if.then1434:                                      ; preds = %do.body1422
  call void @__sanitizer_cov_trace_pc() #6
  %dev1435 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %455 = ptrtoint ptr %dev1435 to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %dev1435, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug282, ptr noundef %456, ptr noundef nonnull @.str.37) #4
  br label %do.end1438

do.end1438:                                       ; preds = %if.then1434, %do.body1422
  %num_trim_per_ch = getelementptr inbounds %struct.tegra210_emc_timing, ptr %3, i32 0, i32 18
  %457 = ptrtoint ptr %num_trim_per_ch to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load i32, ptr %num_trim_per_ch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %458)
  %cmp14403978.not = icmp eq i32 %458, 0
  br i1 %cmp14403978.not, label %do.end1438.do.body1569_crit_edge, label %for.body1442.lr.ph

do.end1438.do.body1569_crit_edge:                 ; preds = %do.end1438
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body1569

for.body1442.lr.ph:                               ; preds = %do.end1438
  %offsets1444 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 7
  %dev1513 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  br label %for.body1442

for.body1442:                                     ; preds = %cleanup1562.for.body1442_crit_edge, %for.body1442.lr.ph
  %i.73979 = phi i32 [ 0, %for.body1442.lr.ph ], [ %inc1567, %cleanup1562.for.body1442_crit_edge ]
  %459 = ptrtoint ptr %offsets1444 to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %offsets1444, align 4
  %trim_per_channel = getelementptr inbounds %struct.tegra210_emc_table_register_offsets, ptr %460, i32 0, i32 5
  %arrayidx1447 = getelementptr %struct.tegra210_emc_per_channel_regs, ptr %trim_per_channel, i32 %i.73979
  %offset1448 = getelementptr %struct.tegra210_emc_per_channel_regs, ptr %trim_per_channel, i32 %i.73979, i32 1
  %461 = ptrtoint ptr %offset1448 to i32
  call void @__asan_load2_noabort(i32 %461)
  %462 = load i16, ptr %offset1448, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %462)
  %tobool1449.not = icmp eq i16 %462, 0
  br i1 %tobool1449.not, label %for.body1442.cleanup1562_crit_edge, label %if.end1451

for.body1442.cleanup1562_crit_edge:               ; preds = %for.body1442
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup1562

if.end1451:                                       ; preds = %for.body1442
  %463 = ptrtoint ptr %num_channels267 to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load i32, ptr %num_channels267, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %464)
  %cmp1453 = icmp ult i32 %464, 2
  br i1 %cmp1453, label %land.lhs.true1455, label %if.end1451.if.end1462_crit_edge

if.end1451.if.end1462_crit_edge:                  ; preds = %if.end1451
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1462

land.lhs.true1455:                                ; preds = %if.end1451
  %465 = ptrtoint ptr %arrayidx1447 to i32
  call void @__asan_load2_noabort(i32 %465)
  %466 = load i16, ptr %arrayidx1447, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %466)
  %cmp1459.not = icmp eq i16 %466, 0
  br i1 %cmp1459.not, label %land.lhs.true1455.if.end1462_crit_edge, label %land.lhs.true1455.cleanup1562_crit_edge

land.lhs.true1455.cleanup1562_crit_edge:          ; preds = %land.lhs.true1455
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup1562

land.lhs.true1455.if.end1462_crit_edge:           ; preds = %land.lhs.true1455
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1462

if.end1462:                                       ; preds = %land.lhs.true1455.if.end1462_crit_edge, %if.end1451.if.end1462_crit_edge
  %conv1465 = zext i16 %462 to i32
  br i1 %compensate_trimmer_applicable.0.off0, label %land.lhs.true1468, label %if.end1462.do.body1538_crit_edge

if.end1462.do.body1538_crit_edge:                 ; preds = %if.end1462
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body1538

land.lhs.true1468:                                ; preds = %if.end1462
  %467 = zext i16 %462 to i64
  call void @__sanitizer_cov_trace_switch(i64 %467, ptr @__sancov_gen_cov_switch_values.79)
  switch i16 %462, label %land.lhs.true1468.do.body1538_crit_edge [
    i16 1600, label %land.lhs.true1468.if.then1498_crit_edge
    i16 1604, label %land.lhs.true1468.if.then1498_crit_edge4021
    i16 1608, label %land.lhs.true1468.if.then1498_crit_edge4022
    i16 1612, label %land.lhs.true1468.if.then1498_crit_edge4023
    i16 1632, label %land.lhs.true1468.if.then1498_crit_edge4024
    i16 1636, label %land.lhs.true1468.if.then1498_crit_edge4025
    i16 1640, label %land.lhs.true1468.if.then1498_crit_edge4026
    i16 1644, label %land.lhs.true1468.if.then1498_crit_edge4027
    i16 1416, label %land.lhs.true1468.if.then1498_crit_edge4028
    i16 1420, label %land.lhs.true1468.if.then1498_crit_edge4029
  ]

land.lhs.true1468.if.then1498_crit_edge4029:      ; preds = %land.lhs.true1468
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then1498

land.lhs.true1468.if.then1498_crit_edge4028:      ; preds = %land.lhs.true1468
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then1498

land.lhs.true1468.if.then1498_crit_edge4027:      ; preds = %land.lhs.true1468
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then1498

land.lhs.true1468.if.then1498_crit_edge4026:      ; preds = %land.lhs.true1468
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then1498

land.lhs.true1468.if.then1498_crit_edge4025:      ; preds = %land.lhs.true1468
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then1498

land.lhs.true1468.if.then1498_crit_edge4024:      ; preds = %land.lhs.true1468
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then1498

land.lhs.true1468.if.then1498_crit_edge4023:      ; preds = %land.lhs.true1468
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then1498

land.lhs.true1468.if.then1498_crit_edge4022:      ; preds = %land.lhs.true1468
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then1498

land.lhs.true1468.if.then1498_crit_edge4021:      ; preds = %land.lhs.true1468
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then1498

land.lhs.true1468.if.then1498_crit_edge:          ; preds = %land.lhs.true1468
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then1498

land.lhs.true1468.do.body1538_crit_edge:          ; preds = %land.lhs.true1468
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body1538

if.then1498:                                      ; preds = %land.lhs.true1468.if.then1498_crit_edge, %land.lhs.true1468.if.then1498_crit_edge4021, %land.lhs.true1468.if.then1498_crit_edge4022, %land.lhs.true1468.if.then1498_crit_edge4023, %land.lhs.true1468.if.then1498_crit_edge4024, %land.lhs.true1468.if.then1498_crit_edge4025, %land.lhs.true1468.if.then1498_crit_edge4026, %land.lhs.true1468.if.then1498_crit_edge4027, %land.lhs.true1468.if.then1498_crit_edge4028, %land.lhs.true1468.if.then1498_crit_edge4029
  %call1499 = tail call i32 @tegra210_emc_compensate(ptr noundef %3, i32 noundef %conv1465) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then1512)) #4
          to label %do.body1517 [label %if.then1512], !srcloc !249

if.then1512:                                      ; preds = %if.then1498
  call void @__sanitizer_cov_trace_pc() #6
  %468 = ptrtoint ptr %dev1513 to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %dev1513, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug283, ptr noundef %469, ptr noundef nonnull @.str.33, i32 noundef %i.73979, i32 noundef %call1499, i32 noundef %conv1465) #4
  br label %do.body1517

do.body1517:                                      ; preds = %if.then1512, %if.then1498
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then1529)) #4
          to label %do.end1533 [label %if.then1529], !srcloc !249

if.then1529:                                      ; preds = %do.body1517
  call void @__sanitizer_cov_trace_pc() #6
  %470 = ptrtoint ptr %dev1513 to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %dev1513, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug284, ptr noundef %471, ptr noundef nonnull @.str.36, i32 noundef %conv1465, i32 noundef %call1499) #4
  br label %do.end1533

do.end1533:                                       ; preds = %if.then1529, %do.body1517
  %472 = ptrtoint ptr %arrayidx1447 to i32
  call void @__asan_load2_noabort(i32 %472)
  %473 = load i16, ptr %arrayidx1447, align 2
  %conv1536 = zext i16 %473 to i32
  %474 = tail call i32 @llvm.bswap.i32(i32 %call1499) #4
  %arrayidx.i3591 = getelementptr %struct.tegra210_emc, ptr %emc, i32 0, i32 11, i32 %conv1536
  %475 = ptrtoint ptr %arrayidx.i3591 to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %arrayidx.i3591, align 4
  %add.ptr.i3592 = getelementptr i8, ptr %476, i32 %conv1465
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3592, i32 %474) #4, !srcloc !252
  br label %cleanup1562

do.body1538:                                      ; preds = %land.lhs.true1468.do.body1538_crit_edge, %if.end1462.do.body1538_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then1550)) #4
          to label %do.end1555 [label %if.then1550], !srcloc !249

if.then1550:                                      ; preds = %do.body1538
  call void @__sanitizer_cov_trace_pc() #6
  %477 = ptrtoint ptr %dev1513 to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %dev1513, align 4
  %arrayidx1552 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 31, i32 %i.73979
  %479 = ptrtoint ptr %arrayidx1552 to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load i32, ptr %arrayidx1552, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug285, ptr noundef %478, ptr noundef nonnull @.str.33, i32 noundef %i.73979, i32 noundef %480, i32 noundef %conv1465) #4
  br label %do.end1555

do.end1555:                                       ; preds = %if.then1550, %do.body1538
  %481 = ptrtoint ptr %arrayidx1447 to i32
  call void @__asan_load2_noabort(i32 %481)
  %482 = load i16, ptr %arrayidx1447, align 2
  %conv1558 = zext i16 %482 to i32
  %arrayidx1560 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 31, i32 %i.73979
  %483 = ptrtoint ptr %arrayidx1560 to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load i32, ptr %arrayidx1560, align 4
  %485 = tail call i32 @llvm.bswap.i32(i32 %484) #4
  %arrayidx.i3593 = getelementptr %struct.tegra210_emc, ptr %emc, i32 0, i32 11, i32 %conv1558
  %486 = ptrtoint ptr %arrayidx.i3593 to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %arrayidx.i3593, align 4
  %add.ptr.i3594 = getelementptr i8, ptr %487, i32 %conv1465
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3594, i32 %485) #4, !srcloc !252
  br label %cleanup1562

cleanup1562:                                      ; preds = %do.end1555, %do.end1533, %land.lhs.true1455.cleanup1562_crit_edge, %for.body1442.cleanup1562_crit_edge
  %inc1567 = add nuw i32 %i.73979, 1
  %488 = ptrtoint ptr %num_trim_per_ch to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load i32, ptr %num_trim_per_ch, align 4
  %cmp1440 = icmp ult i32 %inc1567, %489
  br i1 %cmp1440, label %cleanup1562.for.body1442_crit_edge, label %cleanup1562.do.body1569_crit_edge

cleanup1562.do.body1569_crit_edge:                ; preds = %cleanup1562
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body1569

cleanup1562.for.body1442_crit_edge:               ; preds = %cleanup1562
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body1442

do.body1569:                                      ; preds = %cleanup1562.do.body1569_crit_edge, %do.end1438.do.body1569_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then1581)) #4
          to label %do.end1585 [label %if.then1581], !srcloc !249

if.then1581:                                      ; preds = %do.body1569
  call void @__sanitizer_cov_trace_pc() #6
  %dev1582 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %490 = ptrtoint ptr %dev1582 to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load ptr, ptr %dev1582, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug286, ptr noundef %491, ptr noundef nonnull @.str.38) #4
  br label %do.end1585

do.end1585:                                       ; preds = %if.then1581, %do.body1569
  %num_mc_regs = getelementptr inbounds %struct.tegra210_emc_timing, ptr %3, i32 0, i32 19
  %492 = ptrtoint ptr %num_mc_regs to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load i32, ptr %num_mc_regs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %493)
  %cmp15873983.not = icmp eq i32 %493, 0
  br i1 %cmp15873983.not, label %do.end1585.for.end1619_crit_edge, label %for.body1589.lr.ph

do.end1585.for.end1619_crit_edge:                 ; preds = %do.end1585
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end1619

for.body1589.lr.ph:                               ; preds = %do.end1585
  %offsets1591 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 7
  %burst_mc_regs = getelementptr inbounds %struct.tegra210_emc_timing, ptr %3, i32 0, i32 36
  %dev1607 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  br label %for.body1589

for.body1589:                                     ; preds = %do.end1613.for.body1589_crit_edge, %for.body1589.lr.ph
  %i.83984 = phi i32 [ 0, %for.body1589.lr.ph ], [ %inc1618, %do.end1613.for.body1589_crit_edge ]
  %494 = ptrtoint ptr %offsets1591 to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %offsets1591, align 4
  %burst_mc = getelementptr inbounds %struct.tegra210_emc_table_register_offsets, ptr %495, i32 0, i32 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then1606)) #4
          to label %do.end1613 [label %if.then1606], !srcloc !249

if.then1606:                                      ; preds = %for.body1589
  call void @__sanitizer_cov_trace_pc() #6
  %496 = ptrtoint ptr %dev1607 to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %dev1607, align 4
  %arrayidx1608 = getelementptr i32, ptr %burst_mc_regs, i32 %i.83984
  %498 = ptrtoint ptr %arrayidx1608 to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load i32, ptr %arrayidx1608, align 4
  %arrayidx1609 = getelementptr i16, ptr %burst_mc, i32 %i.83984
  %500 = ptrtoint ptr %arrayidx1609 to i32
  call void @__asan_load2_noabort(i32 %500)
  %501 = load i16, ptr %arrayidx1609, align 2
  %conv1610 = zext i16 %501 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug287, ptr noundef %497, ptr noundef nonnull @.str.33, i32 noundef %i.83984, i32 noundef %499, i32 noundef %conv1610) #4
  br label %do.end1613

do.end1613:                                       ; preds = %if.then1606, %for.body1589
  %502 = ptrtoint ptr %emc to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %emc, align 8
  %arrayidx1614 = getelementptr i32, ptr %burst_mc_regs, i32 %i.83984
  %504 = ptrtoint ptr %arrayidx1614 to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load i32, ptr %arrayidx1614, align 4
  %arrayidx1615 = getelementptr i16, ptr %burst_mc, i32 %i.83984
  %506 = ptrtoint ptr %arrayidx1615 to i32
  call void @__asan_load2_noabort(i32 %506)
  %507 = load i16, ptr %arrayidx1615, align 2
  %conv1616 = zext i16 %507 to i32
  %508 = tail call i32 @llvm.bswap.i32(i32 %505) #4
  %regs.i3595 = getelementptr inbounds %struct.tegra_mc, ptr %503, i32 0, i32 3
  %509 = ptrtoint ptr %regs.i3595 to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %regs.i3595, align 4
  %add.ptr.i3596 = getelementptr i8, ptr %510, i32 %conv1616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3596, i32 %508) #4, !srcloc !252
  %inc1618 = add nuw i32 %i.83984, 1
  %511 = ptrtoint ptr %num_mc_regs to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load i32, ptr %num_mc_regs, align 4
  %cmp1587 = icmp ult i32 %inc1618, %512
  br i1 %cmp1587, label %do.end1613.for.body1589_crit_edge, label %do.end1613.for.end1619_crit_edge

do.end1613.for.end1619_crit_edge:                 ; preds = %do.end1613
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end1619

do.end1613.for.body1589_crit_edge:                ; preds = %do.end1613
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body1589

for.end1619:                                      ; preds = %do.end1613.for.end1619_crit_edge, %do.end1585.for.end1619_crit_edge
  %513 = ptrtoint ptr %rate40 to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load i32, ptr %rate40, align 4
  %515 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load i32, ptr %rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %514, i32 %516)
  %cmp1622 = icmp ult i32 %514, %516
  br i1 %cmp1622, label %if.then1624, label %for.end1619.if.end1676_crit_edge

for.end1619.if.end1676_crit_edge:                 ; preds = %for.end1619
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1676

if.then1624:                                      ; preds = %for.end1619
  %offsets1625 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 7
  %517 = ptrtoint ptr %offsets1625 to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load ptr, ptr %offsets1625, align 4
  %la_scale = getelementptr inbounds %struct.tegra210_emc_table_register_offsets, ptr %518, i32 0, i32 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then1639)) #4
          to label %do.end1643 [label %if.then1639], !srcloc !249

if.then1639:                                      ; preds = %if.then1624
  call void @__sanitizer_cov_trace_pc() #6
  %dev1640 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %519 = ptrtoint ptr %dev1640 to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load ptr, ptr %dev1640, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug288, ptr noundef %520, ptr noundef nonnull @.str.39) #4
  br label %do.end1643

do.end1643:                                       ; preds = %if.then1639, %if.then1624
  %num_up_down = getelementptr inbounds %struct.tegra210_emc_timing, ptr %3, i32 0, i32 20
  %521 = ptrtoint ptr %num_up_down to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load i32, ptr %num_up_down, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %522)
  %cmp16453986.not = icmp eq i32 %522, 0
  br i1 %cmp16453986.not, label %do.end1643.if.end1676_crit_edge, label %do.body1648.lr.ph

do.end1643.if.end1676_crit_edge:                  ; preds = %do.end1643
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1676

do.body1648.lr.ph:                                ; preds = %do.end1643
  %dev1661 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  br label %do.body1648

do.body1648:                                      ; preds = %do.end1667.do.body1648_crit_edge, %do.body1648.lr.ph
  %i.93987 = phi i32 [ 0, %do.body1648.lr.ph ], [ %inc1674, %do.end1667.do.body1648_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then1660)) #4
          to label %do.end1667 [label %if.then1660], !srcloc !249

if.then1660:                                      ; preds = %do.body1648
  call void @__sanitizer_cov_trace_pc() #6
  %523 = ptrtoint ptr %dev1661 to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load ptr, ptr %dev1661, align 4
  %arrayidx1662 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 37, i32 %i.93987
  %525 = ptrtoint ptr %arrayidx1662 to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load i32, ptr %arrayidx1662, align 4
  %arrayidx1663 = getelementptr i16, ptr %la_scale, i32 %i.93987
  %527 = ptrtoint ptr %arrayidx1663 to i32
  call void @__asan_load2_noabort(i32 %527)
  %528 = load i16, ptr %arrayidx1663, align 2
  %conv1664 = zext i16 %528 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug289, ptr noundef %524, ptr noundef nonnull @.str.33, i32 noundef %i.93987, i32 noundef %526, i32 noundef %conv1664) #4
  br label %do.end1667

do.end1667:                                       ; preds = %if.then1660, %do.body1648
  %529 = ptrtoint ptr %emc to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load ptr, ptr %emc, align 8
  %arrayidx1670 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 37, i32 %i.93987
  %531 = ptrtoint ptr %arrayidx1670 to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load i32, ptr %arrayidx1670, align 4
  %arrayidx1671 = getelementptr i16, ptr %la_scale, i32 %i.93987
  %533 = ptrtoint ptr %arrayidx1671 to i32
  call void @__asan_load2_noabort(i32 %533)
  %534 = load i16, ptr %arrayidx1671, align 2
  %conv1672 = zext i16 %534 to i32
  %535 = tail call i32 @llvm.bswap.i32(i32 %532) #4
  %regs.i3597 = getelementptr inbounds %struct.tegra_mc, ptr %530, i32 0, i32 3
  %536 = ptrtoint ptr %regs.i3597 to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %regs.i3597, align 4
  %add.ptr.i3598 = getelementptr i8, ptr %537, i32 %conv1672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3598, i32 %535) #4, !srcloc !252
  %inc1674 = add nuw i32 %i.93987, 1
  %538 = ptrtoint ptr %num_up_down to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load i32, ptr %num_up_down, align 4
  %cmp1645 = icmp ult i32 %inc1674, %539
  br i1 %cmp1645, label %do.end1667.do.body1648_crit_edge, label %do.end1667.if.end1676_crit_edge

do.end1667.if.end1676_crit_edge:                  ; preds = %do.end1667
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1676

do.end1667.do.body1648_crit_edge:                 ; preds = %do.end1667
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body1648

if.end1676:                                       ; preds = %do.end1667.if.end1676_crit_edge, %do.end1643.if.end1676_crit_edge, %for.end1619.if.end1676_crit_edge
  %540 = ptrtoint ptr %emc to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %emc, align 8
  %regs.i3599 = getelementptr inbounds %struct.tegra_mc, ptr %541, i32 0, i32 3
  %542 = ptrtoint ptr %regs.i3599 to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %regs.i3599, align 4
  %add.ptr.i3600 = getelementptr i8, ptr %543, i32 84
  %544 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3600) #4, !srcloc !251
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then1691)) #4
          to label %do.end1695 [label %if.then1691], !srcloc !249

if.then1691:                                      ; preds = %if.end1676
  call void @__sanitizer_cov_trace_pc() #6
  %dev1692 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %545 = ptrtoint ptr %dev1692 to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load ptr, ptr %dev1692, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug290, ptr noundef %546, ptr noundef nonnull @.str.40) #4
  br label %do.end1695

do.end1695:                                       ; preds = %if.then1691, %if.end1676
  %arrayidx1697 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 25, i32 140
  br i1 %cmp554, label %if.then1701, label %do.end1695.do.body1704_crit_edge

do.end1695.do.body1704_crit_edge:                 ; preds = %do.end1695
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body1704

if.then1701:                                      ; preds = %do.end1695
  call void @__sanitizer_cov_trace_pc() #6
  %547 = ptrtoint ptr %arrayidx1697 to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load i32, ptr %arrayidx1697, align 4
  %and1698 = and i32 %548, -2048
  %549 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3602 = getelementptr i8, ptr %550, i32 736
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3602, i32 0) #4, !srcloc !252
  %551 = tail call i32 @llvm.bswap.i32(i32 %and1698) #4
  %552 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3604 = getelementptr i8, ptr %553, i32 740
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3604, i32 %551) #4, !srcloc !252
  %or1702 = or i32 %38, 1073741826
  %554 = tail call i32 @llvm.bswap.i32(i32 %or1702) #4
  %555 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3606 = getelementptr i8, ptr %556, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3606, i32 %554) #4, !srcloc !252
  %557 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3608 = getelementptr i8, ptr %558, i32 736
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3608, i32 0) #4, !srcloc !252
  %559 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3610 = getelementptr i8, ptr %560, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3610, i32 %37) #4, !srcloc !252
  br label %do.body1704

do.body1704:                                      ; preds = %if.then1701, %do.end1695.do.body1704_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then1716)) #4
          to label %do.end1720 [label %if.then1716], !srcloc !249

if.then1716:                                      ; preds = %do.body1704
  call void @__sanitizer_cov_trace_pc() #6
  %dev1717 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %561 = ptrtoint ptr %dev1717 to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load ptr, ptr %dev1717, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug291, ptr noundef %562, ptr noundef nonnull @.str.41) #4
  br label %do.end1720

do.end1720:                                       ; preds = %if.then1716, %do.body1704
  %563 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3612 = getelementptr i8, ptr %564, i32 1004
  br i1 %cmp554, label %if.then1723, label %if.then1797

if.then1723:                                      ; preds = %do.end1720
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3612, i32 16842752) #4, !srcloc !252
  %565 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3613 = getelementptr i8, ptr %566, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3613, i32 -536870784) #4, !srcloc !252
  br i1 %cmp42, label %if.then1731, label %if.then1723.if.then1792.critedge3268_crit_edge

if.then1723.if.then1792.critedge3268_crit_edge:   ; preds = %if.then1723
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then1792.critedge3268

if.then1731:                                      ; preds = %if.then1723
  %xor1732 = xor i32 %mr13_flip_fspwr.0, 64
  %567 = tail call i32 @llvm.bswap.i32(i32 %xor1732) #4
  %568 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3618 = getelementptr i8, ptr %569, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3618, i32 %567) #4, !srcloc !252
  %570 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3619 = getelementptr i8, ptr %571, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3619, i32 939589760) #4, !srcloc !252
  %arrayidx1734 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 25, i32 31
  %572 = ptrtoint ptr %arrayidx1734 to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load i32, ptr %arrayidx1734, align 4
  %and1735 = and i32 %573, -49345
  %arrayidx1737 = getelementptr %struct.tegra210_emc_timing, ptr %1, i32 0, i32 25, i32 31
  %574 = ptrtoint ptr %arrayidx1737 to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load i32, ptr %arrayidx1737, align 4
  %and1738 = and i32 %575, 49344
  %or1739 = or i32 %and1738, %and1735
  %576 = tail call i32 @llvm.bswap.i32(i32 %or1739) #4
  %577 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3621 = getelementptr i8, ptr %578, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3621, i32 %576) #4, !srcloc !252
  %579 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3622 = getelementptr i8, ptr %580, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3622, i32 -1543241600) #4, !srcloc !252
  %arrayidx1741 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 25, i32 199
  %581 = ptrtoint ptr %arrayidx1741 to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load i32, ptr %arrayidx1741, align 4
  %and1742 = and i32 %582, -63737
  %arrayidx1744 = getelementptr %struct.tegra210_emc_timing, ptr %1, i32 0, i32 25, i32 199
  %583 = ptrtoint ptr %arrayidx1744 to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load i32, ptr %arrayidx1744, align 4
  %and1745 = and i32 %584, 14392
  %or1746 = or i32 %and1745, %and1742
  %585 = tail call i32 @llvm.bswap.i32(i32 %or1746) #4
  %586 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3624 = getelementptr i8, ptr %587, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3624, i32 %585) #4, !srcloc !252
  %588 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3625 = getelementptr i8, ptr %589, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3625, i32 -1006370688) #4, !srcloc !252
  %num_devices1747 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 13
  %590 = ptrtoint ptr %num_devices1747 to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load i32, ptr %num_devices1747, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %591)
  %cmp1748 = icmp ugt i32 %591, 1
  br i1 %cmp1748, label %if.then1750, label %if.then1731.if.end1765_crit_edge

if.then1731.if.end1765_crit_edge:                 ; preds = %if.then1731
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1765

if.then1750:                                      ; preds = %if.then1731
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx1752 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 25, i32 62
  %592 = ptrtoint ptr %arrayidx1752 to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load i32, ptr %arrayidx1752, align 4
  %and1753 = and i32 %593, -49345
  %arrayidx1755 = getelementptr %struct.tegra210_emc_timing, ptr %1, i32 0, i32 25, i32 62
  %594 = ptrtoint ptr %arrayidx1755 to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load i32, ptr %arrayidx1755, align 4
  %and1756 = and i32 %595, 49344
  %or1757 = or i32 %and1756, %and1753
  %596 = tail call i32 @llvm.bswap.i32(i32 %or1757) #4
  %597 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3627 = getelementptr i8, ptr %598, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3627, i32 %596) #4, !srcloc !252
  %599 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3628 = getelementptr i8, ptr %600, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3628, i32 -1476132736) #4, !srcloc !252
  %arrayidx1759 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 25, i32 220
  %601 = ptrtoint ptr %arrayidx1759 to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load i32, ptr %arrayidx1759, align 4
  %and1760 = and i32 %602, -63737
  %arrayidx1762 = getelementptr %struct.tegra210_emc_timing, ptr %1, i32 0, i32 25, i32 220
  %603 = ptrtoint ptr %arrayidx1762 to i32
  call void @__asan_load4_noabort(i32 %603)
  %604 = load i32, ptr %arrayidx1762, align 4
  %and1763 = and i32 %604, 14392
  %or1764 = or i32 %and1763, %and1760
  %605 = tail call i32 @llvm.bswap.i32(i32 %or1764) #4
  %606 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3630 = getelementptr i8, ptr %607, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3630, i32 %605) #4, !srcloc !252
  %608 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3631 = getelementptr i8, ptr %609, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3631, i32 -805044096) #4, !srcloc !252
  br label %if.end1765

if.end1765:                                       ; preds = %if.then1750, %if.then1731.if.end1765_crit_edge
  br i1 %opt_zcal_en_cc.0.off0, label %if.then1767, label %if.then1792.critedge

if.then1767:                                      ; preds = %if.end1765
  %610 = ptrtoint ptr %num_devices1747 to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load i32, ptr %num_devices1747, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %611)
  %cmp1769 = icmp ult i32 %611, 2
  %612 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3633 = getelementptr i8, ptr %613, i32 1004
  br i1 %cmp1769, label %if.then1771, label %if.else1772

if.then1771:                                      ; preds = %if.then1767
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3633, i32 16777344) #4, !srcloc !252
  %614 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3634 = getelementptr i8, ptr %615, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3634, i32 -335413120) #4, !srcloc !252
  br label %if.then1792.critedge3268

if.else1772:                                      ; preds = %if.then1767
  br i1 %tobool14.not, label %if.else1775, label %if.then1774

if.then1774:                                      ; preds = %if.else1772
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3633, i32 16777344) #4, !srcloc !252
  %616 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3637 = getelementptr i8, ptr %617, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3637, i32 -335413120) #4, !srcloc !252
  br label %if.then1792.critedge3268

if.else1775:                                      ; preds = %if.else1772
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3633, i32 16777216) #4, !srcloc !252
  %618 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3640 = getelementptr i8, ptr %619, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3640, i32 -335413120) #4, !srcloc !252
  br label %if.then1792.critedge3268

if.then1792.critedge:                             ; preds = %if.end1765
  call void @__sanitizer_cov_trace_pc() #6
  %dram_timings1783.c = getelementptr inbounds %struct.tegra210_emc_timing, ptr %call6, i32 0, i32 33
  %620 = ptrtoint ptr %dram_timings1783.c to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load i32, ptr %dram_timings1783.c, align 4
  %mul1785.c = mul i32 %621, 1000
  %div1786.c = udiv i32 %mul1785.c, %div
  %or1787.c = or i32 %mr13_flip_fspop.0, 8
  %622 = tail call i32 @llvm.bswap.i32(i32 %or1787.c) #4
  %623 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %623)
  %624 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3642 = getelementptr i8, ptr %624, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3642, i32 %622) #4, !srcloc !252
  %and.i3643 = shl i32 %div1786.c, 16
  %or2.i = or i32 %and.i3643, -2147483336
  %625 = tail call i32 @llvm.bswap.i32(i32 %or2.i) #4
  %626 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3644 = getelementptr i8, ptr %627, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3644, i32 %625) #4, !srcloc !252
  %div1788.c = udiv i32 %mul, %div
  %628 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3646 = getelementptr i8, ptr %629, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3646, i32 0) #4, !srcloc !252
  %and.i3647 = shl i32 %div1788.c, 16
  %or2.i3648 = or i32 %and.i3647, -2147483648
  %630 = tail call i32 @llvm.bswap.i32(i32 %or2.i3648) #4
  %631 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %631)
  %632 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3649 = getelementptr i8, ptr %632, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3649, i32 %630) #4, !srcloc !252
  br label %if.end1794.thread

if.then1792.critedge3268:                         ; preds = %if.else1775, %if.then1774, %if.then1771, %if.then1723.if.then1792.critedge3268_crit_edge
  %dram_timings1783.c3269 = getelementptr inbounds %struct.tegra210_emc_timing, ptr %call6, i32 0, i32 33
  %633 = ptrtoint ptr %dram_timings1783.c3269 to i32
  call void @__asan_load4_noabort(i32 %633)
  %634 = load i32, ptr %dram_timings1783.c3269, align 4
  %mul1785.c3270 = mul i32 %634, 1000
  %div1786.c3271 = udiv i32 %mul1785.c3270, %div
  %or1787.c3272 = or i32 %mr13_flip_fspop.0, 8
  %635 = tail call i32 @llvm.bswap.i32(i32 %or1787.c3272) #4
  %636 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3651 = getelementptr i8, ptr %637, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3651, i32 %635) #4, !srcloc !252
  %and.i3652 = shl i32 %div1786.c3271, 16
  %or2.i3654 = or i32 %and.i3652, -2147483336
  %638 = tail call i32 @llvm.bswap.i32(i32 %or2.i3654) #4
  %639 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %639)
  %640 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3655 = getelementptr i8, ptr %640, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3655, i32 %638) #4, !srcloc !252
  %div1788.c3273 = udiv i32 %mul, %div
  %641 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %641)
  %642 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3657 = getelementptr i8, ptr %642, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3657, i32 0) #4, !srcloc !252
  %and.i3658 = shl i32 %div1788.c3273, 16
  %or2.i3659 = or i32 %and.i3658, -2147483648
  %643 = tail call i32 @llvm.bswap.i32(i32 %or2.i3659) #4
  %644 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %644)
  %645 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3660 = getelementptr i8, ptr %645, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3660, i32 %643) #4, !srcloc !252
  br label %if.end1794.thread

if.end1794.thread:                                ; preds = %if.then1792.critedge3268, %if.then1792.critedge
  %and1793 = and i32 %42, -8
  %646 = tail call i32 @llvm.bswap.i32(i32 %and1793) #4
  %647 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %647)
  %648 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3662 = getelementptr i8, ptr %648, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3662, i32 %646) #4, !srcloc !252
  %649 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %649)
  %650 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3663 = getelementptr i8, ptr %650, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3663, i32 603987584) #4, !srcloc !252
  br label %do.body1811

if.then1797:                                      ; preds = %do.end1720
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3612, i32 16777216) #4, !srcloc !252
  %651 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %651)
  %652 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3616 = getelementptr i8, ptr %652, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3616, i32 -536870784) #4, !srcloc !252
  %dram_timings1798 = getelementptr inbounds %struct.tegra210_emc_timing, ptr %call6, i32 0, i32 33
  %653 = ptrtoint ptr %dram_timings1798 to i32
  call void @__asan_load4_noabort(i32 %653)
  %654 = load i32, ptr %dram_timings1798, align 4
  %mul1800 = mul i32 %654, 1000
  %div1801 = udiv i32 %mul1800, %div
  %arrayidx1803 = getelementptr %struct.tegra210_emc_timing, ptr %call6, i32 0, i32 33, i32 2
  %655 = ptrtoint ptr %arrayidx1803 to i32
  call void @__asan_load4_noabort(i32 %655)
  %656 = load i32, ptr %arrayidx1803, align 4
  %mul1804 = mul i32 %656, 1000
  %div1805 = udiv i32 %mul1804, %div
  %add1806 = add i32 %div1801, 20
  %add1808 = add i32 %add1806, %div1805
  br label %do.body1811

do.body1811:                                      ; preds = %if.then1797, %if.end1794.thread
  %delay.0 = phi i32 [ %add1808, %if.then1797 ], [ 0, %if.end1794.thread ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then1823)) #4
          to label %do.end1827 [label %if.then1823], !srcloc !249

if.then1823:                                      ; preds = %do.body1811
  call void @__sanitizer_cov_trace_pc() #6
  %dev1824 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %657 = ptrtoint ptr %dev1824 to i32
  call void @__asan_load4_noabort(i32 %657)
  %658 = load ptr, ptr %dev1824, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug292, ptr noundef %658, ptr noundef nonnull @.str.42) #4
  br label %do.end1827

do.end1827:                                       ; preds = %if.then1823, %do.body1811
  %659 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %659)
  %660 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3665 = getelementptr i8, ptr %660, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3665, i32 0) #4, !srcloc !252
  %and.i3666 = shl i32 %delay.0, 16
  %or2.i3668 = or i32 %and.i3666, -2147482412
  %661 = tail call i32 @llvm.bswap.i32(i32 %or2.i3668) #4
  %662 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %662)
  %663 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3669 = getelementptr i8, ptr %663, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3669, i32 %661) #4, !srcloc !252
  %or1828 = or i32 %38, 2
  %or1829 = or i32 %38, 1073741826
  %664 = tail call i32 @llvm.bswap.i32(i32 %or1829) #4
  %665 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %665)
  %666 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3671 = getelementptr i8, ptr %666, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3671, i32 %664) #4, !srcloc !252
  %667 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %667)
  %668 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3672 = getelementptr i8, ptr %668, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3672, i32 134217856) #4, !srcloc !252
  %call1830 = tail call i32 @tegra210_emc_dvfs_power_ramp_down(ptr noundef %emc, i32 noundef %div, i1 noundef zeroext false) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then1843)) #4
          to label %do.end1847 [label %if.then1843], !srcloc !249

if.then1843:                                      ; preds = %do.end1827
  call void @__sanitizer_cov_trace_pc() #6
  %dev1844 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %669 = ptrtoint ptr %dev1844 to i32
  call void @__asan_load4_noabort(i32 %669)
  %670 = load ptr, ptr %dev1844, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug293, ptr noundef %670, ptr noundef nonnull @.str.43) #4
  br label %do.end1847

do.end1847:                                       ; preds = %if.then1843, %do.end1827
  %671 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %671)
  %672 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3674 = getelementptr i8, ptr %672, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3674, i32 16777216) #4, !srcloc !252
  %673 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %673)
  %674 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3675 = getelementptr i8, ptr %674, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3675, i32 -872218496) #4, !srcloc !252
  %and1848 = and i32 %or1829, -1073741825
  %675 = tail call i32 @llvm.bswap.i32(i32 %and1848) #4
  %676 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %676)
  %677 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3677 = getelementptr i8, ptr %677, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3677, i32 %675) #4, !srcloc !252
  %678 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %678)
  %679 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3678 = getelementptr i8, ptr %679, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3678, i32 134217856) #4, !srcloc !252
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then1861)) #4
          to label %do.end1865 [label %if.then1861], !srcloc !249

if.then1861:                                      ; preds = %do.end1847
  call void @__sanitizer_cov_trace_pc() #6
  %dev1862 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %680 = ptrtoint ptr %dev1862 to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load ptr, ptr %dev1862, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug294, ptr noundef %681, ptr noundef nonnull @.str.44) #4
  br label %do.end1865

do.end1865:                                       ; preds = %if.then1861, %do.end1847
  %call1866 = tail call i32 @tegra210_emc_dvfs_power_ramp_up(ptr noundef %emc, i32 noundef %div41, i1 noundef zeroext false) #4
  %682 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %682)
  %683 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3680 = getelementptr i8, ptr %683, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3680, i32 %37) #4, !srcloc !252
  %684 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %684)
  %685 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3681 = getelementptr i8, ptr %685, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3681, i32 134217856) #4, !srcloc !252
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then1879)) #4
          to label %do.end1883 [label %if.then1879], !srcloc !249

if.then1879:                                      ; preds = %do.end1865
  call void @__sanitizer_cov_trace_pc() #6
  %dev1880 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %686 = ptrtoint ptr %dev1880 to i32
  call void @__asan_load4_noabort(i32 %686)
  %687 = load ptr, ptr %dev1880, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug295, ptr noundef %687, ptr noundef nonnull @.str.45) #4
  br label %do.end1883

do.end1883:                                       ; preds = %if.then1879, %do.end1865
  br i1 %cmp554, label %if.then1886, label %do.end1883.do.body1897_crit_edge

do.end1883.do.body1897_crit_edge:                 ; preds = %do.end1883
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body1897

if.then1886:                                      ; preds = %do.end1883
  call void @__sanitizer_cov_trace_pc() #6
  %num_devices1888 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 13
  %688 = ptrtoint ptr %num_devices1888 to i32
  call void @__asan_load4_noabort(i32 %688)
  %689 = load i32, ptr %num_devices1888, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %689)
  %cmp1889 = icmp ult i32 %689, 2
  %or1887 = and i32 %42, -8
  %and1892 = or i32 %or1887, 1
  %or1894 = or i32 %42, 7
  %value.1 = select i1 %cmp1889, i32 %and1892, i32 %or1894
  %690 = tail call i32 @llvm.bswap.i32(i32 %value.1) #4
  %691 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %691)
  %692 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3683 = getelementptr i8, ptr %692, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3683, i32 %690) #4, !srcloc !252
  %693 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %693)
  %694 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3684 = getelementptr i8, ptr %694, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3684, i32 603979904) #4, !srcloc !252
  br label %do.body1897

do.body1897:                                      ; preds = %if.then1886, %do.end1883.do.body1897_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then1909)) #4
          to label %do.end1913 [label %if.then1909], !srcloc !249

if.then1909:                                      ; preds = %do.body1897
  call void @__sanitizer_cov_trace_pc() #6
  %dev1910 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %695 = ptrtoint ptr %dev1910 to i32
  call void @__asan_load4_noabort(i32 %695)
  %696 = load ptr, ptr %dev1910, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug296, ptr noundef %696, ptr noundef nonnull @.str.46) #4
  br label %do.end1913

do.end1913:                                       ; preds = %if.then1909, %do.body1897
  br i1 %cmp42, label %if.then1916, label %if.else1920

if.then1916:                                      ; preds = %do.end1913
  call void @__sanitizer_cov_trace_pc() #6
  %add1917 = add i32 %call1866, %call1830
  %div1918 = sdiv i32 %add1917, %div41
  br label %do.body1927

if.else1920:                                      ; preds = %do.end1913
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx1922 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 33, i32 3
  %697 = ptrtoint ptr %arrayidx1922 to i32
  call void @__asan_load4_noabort(i32 %697)
  %698 = load i32, ptr %arrayidx1922, align 4
  %mul1923 = mul i32 %698, 1000
  %div.i3685 = udiv i32 %mul1923, %div41
  %mul.i3686 = mul i32 %div.i3685, %div41
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i3686, i32 %mul1923)
  %cmp.i3687 = icmp ult i32 %mul.i3686, %mul1923
  %add.i3688 = zext i1 %cmp.i3687 to i32
  %retval.0.i3689 = add i32 %div.i3685, %add.i3688
  br label %do.body1927

do.body1927:                                      ; preds = %if.else1920, %if.then1916
  %div1918.pn = phi i32 [ %div1918, %if.then1916 ], [ %retval.0.i3689, %if.else1920 ]
  %zq_latch_dvfs_wait_time.0 = sub i32 %div45, %div1918.pn
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then1939)) #4
          to label %do.body1944 [label %if.then1939], !srcloc !249

if.then1939:                                      ; preds = %do.body1927
  call void @__sanitizer_cov_trace_pc() #6
  %dev1940 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %699 = ptrtoint ptr %dev1940 to i32
  call void @__asan_load4_noabort(i32 %699)
  %700 = load ptr, ptr %dev1940, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug297, ptr noundef %700, ptr noundef nonnull @.str.47, i32 noundef %div45) #4
  br label %do.body1944

do.body1944:                                      ; preds = %if.then1939, %do.body1927
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then1956)) #4
          to label %do.body1961 [label %if.then1956], !srcloc !249

if.then1956:                                      ; preds = %do.body1944
  call void @__sanitizer_cov_trace_pc() #6
  %dev1957 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %701 = ptrtoint ptr %dev1957 to i32
  call void @__asan_load4_noabort(i32 %701)
  %702 = load ptr, ptr %dev1957, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug298, ptr noundef %702, ptr noundef nonnull @.str.48, i32 noundef %div41) #4
  br label %do.body1961

do.body1961:                                      ; preds = %if.then1956, %do.body1944
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then1973)) #4
          to label %do.body1980 [label %if.then1973], !srcloc !249

if.then1973:                                      ; preds = %do.body1961
  call void @__sanitizer_cov_trace_pc() #6
  %dev1974 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %703 = ptrtoint ptr %dev1974 to i32
  call void @__asan_load4_noabort(i32 %703)
  %704 = load ptr, ptr %dev1974, align 4
  %arrayidx1976 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 33, i32 3
  %705 = ptrtoint ptr %arrayidx1976 to i32
  call void @__asan_load4_noabort(i32 %705)
  %706 = load i32, ptr %arrayidx1976, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug299, ptr noundef %704, ptr noundef nonnull @.str.49, i32 noundef %706) #4
  br label %do.body1980

do.body1980:                                      ; preds = %if.then1973, %do.body1961
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then1992)) #4
          to label %do.end2003 [label %if.then1992], !srcloc !249

if.then1992:                                      ; preds = %do.body1980
  call void @__sanitizer_cov_trace_pc() #6
  %dev1993 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %707 = ptrtoint ptr %dev1993 to i32
  call void @__asan_load4_noabort(i32 %707)
  %708 = load ptr, ptr %dev1993, align 4
  %709 = tail call i32 @llvm.smax.i32(i32 %zq_latch_dvfs_wait_time.0, i32 0)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug302, ptr noundef %708, ptr noundef nonnull @.str.50, i32 noundef %709) #4
  br label %do.end2003

do.end2003:                                       ; preds = %if.then1992, %do.body1980
  %opt_zcal_en_cc.0.off0.not = xor i1 %opt_zcal_en_cc.0.off0, true
  %710 = and i1 %cmp554, %opt_zcal_en_cc.0.off0
  br i1 %710, label %if.then2009, label %do.end2003.if.end2065_crit_edge

do.end2003.if.end2065_crit_edge:                  ; preds = %do.end2003
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end2065

if.then2009:                                      ; preds = %do.end2003
  %arrayidx2011 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 33, i32 3
  %711 = ptrtoint ptr %arrayidx2011 to i32
  call void @__asan_load4_noabort(i32 %711)
  %712 = load i32, ptr %arrayidx2011, align 4
  %mul2012 = mul i32 %712, 1000
  %div.i3690 = udiv i32 %mul2012, %div41
  %mul.i3691 = mul i32 %div.i3690, %div41
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i3691, i32 %mul2012)
  %cmp.i3692 = icmp ult i32 %mul.i3691, %mul2012
  %add.i3693 = zext i1 %cmp.i3692 to i32
  %retval.0.i3694 = add i32 %div.i3690, %add.i3693
  %num_devices2014 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 13
  %713 = ptrtoint ptr %num_devices2014 to i32
  call void @__asan_load4_noabort(i32 %713)
  %714 = load i32, ptr %num_devices2014, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %714)
  %cmp2015 = icmp ult i32 %714, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 416494, i32 %34)
  %cmp2018 = icmp ult i32 %34, 416494
  br i1 %cmp2015, label %if.then2017, label %if.else2031

if.then2017:                                      ; preds = %if.then2009
  br i1 %cmp2018, label %if.then2020, label %if.then2017.if.end2021_crit_edge

if.then2017.if.end2021_crit_edge:                 ; preds = %if.then2017
  call void @__sanitizer_cov_trace_pc() #6
  %.pre = shl i32 %retval.0.i3694, 16
  br label %if.end2021

if.then2020:                                      ; preds = %if.then2017
  call void @__sanitizer_cov_trace_pc() #6
  %715 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %715)
  %716 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3696 = getelementptr i8, ptr %716, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3696, i32 16777344) #4, !srcloc !252
  %and.i3697 = shl i32 %retval.0.i3694, 16
  %or2.i3699 = or i32 %and.i3697, -2147482900
  %717 = tail call i32 @llvm.bswap.i32(i32 %or2.i3699) #4
  %718 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %718)
  %719 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3700 = getelementptr i8, ptr %719, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3700, i32 %717) #4, !srcloc !252
  br label %if.end2021

if.end2021:                                       ; preds = %if.then2020, %if.then2017.if.end2021_crit_edge
  %and.i3703.pre-phi = phi i32 [ %.pre, %if.then2017.if.end2021_crit_edge ], [ %and.i3697, %if.then2020 ]
  %and2022 = and i32 %mr13_flip_fspop.0, -201326601
  %or2023 = or i32 %and2022, 201326592
  %720 = tail call i32 @llvm.bswap.i32(i32 %or2023) #4
  %721 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %721)
  %722 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3702 = getelementptr i8, ptr %722, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3702, i32 %720) #4, !srcloc !252
  %or2.i3705 = or i32 %and.i3703.pre-phi, -2147483336
  %723 = tail call i32 @llvm.bswap.i32(i32 %or2.i3705) #4
  %724 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %724)
  %725 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3706 = getelementptr i8, ptr %725, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3706, i32 %723) #4, !srcloc !252
  %726 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %726)
  %727 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3708 = getelementptr i8, ptr %727, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3708, i32 0) #4, !srcloc !252
  %728 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %728)
  %729 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3709 = getelementptr i8, ptr %729, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3709, i32 -536870784) #4, !srcloc !252
  %730 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %730)
  %731 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3711 = getelementptr i8, ptr %731, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3711, i32 0) #4, !srcloc !252
  %732 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %732)
  %733 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3712 = getelementptr i8, ptr %733, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3712, i32 -738197376) #4, !srcloc !252
  %734 = tail call i32 @llvm.smax.i32(i32 %zq_latch_dvfs_wait_time.0, i32 0)
  %735 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %735)
  %736 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3714 = getelementptr i8, ptr %736, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3714, i32 33554560) #4, !srcloc !252
  %and.i3715 = shl i32 %734, 16
  %or2.i3717 = or i32 %and.i3715, -2147482900
  %737 = tail call i32 @llvm.bswap.i32(i32 %or2.i3717) #4
  %738 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %738)
  %739 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3718 = getelementptr i8, ptr %739, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3718, i32 %737) #4, !srcloc !252
  br label %if.end2065

if.else2031:                                      ; preds = %if.then2009
  br i1 %tobool14.not, label %if.else2049, label %if.then2033

if.then2033:                                      ; preds = %if.else2031
  br i1 %cmp2018, label %if.then2036, label %if.then2033.if.end2037_crit_edge

if.then2033.if.end2037_crit_edge:                 ; preds = %if.then2033
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end2037

if.then2036:                                      ; preds = %if.then2033
  call void @__sanitizer_cov_trace_pc() #6
  %740 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %740)
  %741 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3720 = getelementptr i8, ptr %741, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3720, i32 16777344) #4, !srcloc !252
  %and.i3721 = shl i32 %retval.0.i3694, 16
  %or2.i3723 = or i32 %and.i3721, -2147482900
  %742 = tail call i32 @llvm.bswap.i32(i32 %or2.i3723) #4
  %743 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %743)
  %744 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3724 = getelementptr i8, ptr %744, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3724, i32 %742) #4, !srcloc !252
  br label %if.end2037

if.end2037:                                       ; preds = %if.then2036, %if.then2033.if.end2037_crit_edge
  %745 = tail call i32 @llvm.smax.i32(i32 %zq_latch_dvfs_wait_time.0, i32 0)
  %add2045 = add i32 %retval.0.i3694, %745
  %746 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %746)
  %747 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3726 = getelementptr i8, ptr %747, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3726, i32 33554560) #4, !srcloc !252
  %and.i3727 = shl i32 %add2045, 16
  %or2.i3729 = or i32 %and.i3727, -2147482900
  %748 = tail call i32 @llvm.bswap.i32(i32 %or2.i3729) #4
  %749 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %749)
  %750 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3730 = getelementptr i8, ptr %750, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3730, i32 %748) #4, !srcloc !252
  %751 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %751)
  %752 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3732 = getelementptr i8, ptr %752, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3732, i32 33554496) #4, !srcloc !252
  %753 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %753)
  %754 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3733 = getelementptr i8, ptr %754, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3733, i32 -335413120) #4, !srcloc !252
  %and2046 = and i32 %mr13_flip_fspop.0, -201326601
  %or2047 = or i32 %and2046, 201326592
  %755 = tail call i32 @llvm.bswap.i32(i32 %or2047) #4
  %756 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %756)
  %757 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3735 = getelementptr i8, ptr %757, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3735, i32 %755) #4, !srcloc !252
  %758 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %758)
  %759 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3736 = getelementptr i8, ptr %759, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3736, i32 939589760) #4, !srcloc !252
  %760 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %760)
  %761 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3738 = getelementptr i8, ptr %761, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3738, i32 0) #4, !srcloc !252
  %762 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %762)
  %763 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3739 = getelementptr i8, ptr %763, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3739, i32 -536870784) #4, !srcloc !252
  %764 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %764)
  %765 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3741 = getelementptr i8, ptr %765, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3741, i32 0) #4, !srcloc !252
  %766 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %766)
  %767 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3742 = getelementptr i8, ptr %767, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3742, i32 -738197376) #4, !srcloc !252
  %div2048 = udiv i32 1000000, %div41
  %768 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %768)
  %769 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3744 = getelementptr i8, ptr %769, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3744, i32 33554496) #4, !srcloc !252
  %and.i3745 = shl i32 %div2048, 16
  %or2.i3747 = or i32 %and.i3745, -2147482900
  %770 = tail call i32 @llvm.bswap.i32(i32 %or2.i3747) #4
  %771 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %771)
  %772 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3748 = getelementptr i8, ptr %772, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3748, i32 %770) #4, !srcloc !252
  br label %if.end2065

if.else2049:                                      ; preds = %if.else2031
  br i1 %cmp2018, label %if.then2052, label %if.else2049.if.end2053_crit_edge

if.else2049.if.end2053_crit_edge:                 ; preds = %if.else2049
  call void @__sanitizer_cov_trace_pc() #6
  %.pre3991 = shl i32 %retval.0.i3694, 16
  br label %if.end2053

if.then2052:                                      ; preds = %if.else2049
  call void @__sanitizer_cov_trace_pc() #6
  %773 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %773)
  %774 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3750 = getelementptr i8, ptr %774, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3750, i32 16777216) #4, !srcloc !252
  %and.i3751 = shl i32 %retval.0.i3694, 16
  %or2.i3753 = or i32 %and.i3751, -2147482900
  %775 = tail call i32 @llvm.bswap.i32(i32 %or2.i3753) #4
  %776 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %776)
  %777 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3754 = getelementptr i8, ptr %777, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3754, i32 %775) #4, !srcloc !252
  br label %if.end2053

if.end2053:                                       ; preds = %if.then2052, %if.else2049.if.end2053_crit_edge
  %and.i3757.pre-phi = phi i32 [ %.pre3991, %if.else2049.if.end2053_crit_edge ], [ %and.i3751, %if.then2052 ]
  %and2054 = and i32 %mr13_flip_fspop.0, -201326601
  %or2055 = or i32 %and2054, 201326592
  %778 = tail call i32 @llvm.bswap.i32(i32 %or2055) #4
  %779 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %779)
  %780 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3756 = getelementptr i8, ptr %780, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3756, i32 %778) #4, !srcloc !252
  %or2.i3759 = or i32 %and.i3757.pre-phi, -2147483336
  %781 = tail call i32 @llvm.bswap.i32(i32 %or2.i3759) #4
  %782 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %782)
  %783 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3760 = getelementptr i8, ptr %783, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3760, i32 %781) #4, !srcloc !252
  %784 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %784)
  %785 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3762 = getelementptr i8, ptr %785, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3762, i32 0) #4, !srcloc !252
  %786 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %786)
  %787 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3763 = getelementptr i8, ptr %787, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3763, i32 -536870784) #4, !srcloc !252
  %788 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %788)
  %789 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3765 = getelementptr i8, ptr %789, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3765, i32 0) #4, !srcloc !252
  %790 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %790)
  %791 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3766 = getelementptr i8, ptr %791, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3766, i32 -738197376) #4, !srcloc !252
  %792 = tail call i32 @llvm.smax.i32(i32 %zq_latch_dvfs_wait_time.0, i32 0)
  %793 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %793)
  %794 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3768 = getelementptr i8, ptr %794, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3768, i32 33554432) #4, !srcloc !252
  %and.i3769 = shl i32 %792, 16
  %or2.i3771 = or i32 %and.i3769, -2147482900
  %795 = tail call i32 @llvm.bswap.i32(i32 %or2.i3771) #4
  %796 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %796)
  %797 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3772 = getelementptr i8, ptr %797, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3772, i32 %795) #4, !srcloc !252
  br label %if.end2065

if.end2065:                                       ; preds = %if.end2053, %if.end2037, %if.end2021, %do.end2003.if.end2065_crit_edge
  %798 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %798)
  %799 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3774 = getelementptr i8, ptr %799, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3774, i32 0) #4, !srcloc !252
  %800 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %800)
  %801 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3775 = getelementptr i8, ptr %801, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3775, i32 2688) #4, !srcloc !252
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then2078)) #4
          to label %do.end2082 [label %if.then2078], !srcloc !249

if.then2078:                                      ; preds = %if.end2065
  call void @__sanitizer_cov_trace_pc() #6
  %dev2079 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %802 = ptrtoint ptr %dev2079 to i32
  call void @__asan_load4_noabort(i32 %802)
  %803 = load ptr, ptr %dev2079, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug309, ptr noundef %803, ptr noundef nonnull @.str.51) #4
  br label %do.end2082

do.end2082:                                       ; preds = %if.then2078, %if.end2065
  br i1 %cmp554, label %do.end2082.do.body2087_crit_edge, label %if.then2085

do.end2082.do.body2087_crit_edge:                 ; preds = %do.end2082
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body2087

if.then2085:                                      ; preds = %do.end2082
  call void @__sanitizer_cov_trace_pc() #6
  %804 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %804)
  %805 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3777 = getelementptr i8, ptr %805, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3777, i32 0) #4, !srcloc !252
  %806 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %806)
  %807 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3778 = getelementptr i8, ptr %807, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3778, i32 -536870784) #4, !srcloc !252
  br label %do.body2087

do.body2087:                                      ; preds = %if.then2085, %do.end2082.do.body2087_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then2099)) #4
          to label %do.end2103 [label %if.then2099], !srcloc !249

if.then2099:                                      ; preds = %do.body2087
  call void @__sanitizer_cov_trace_pc() #6
  %dev2100 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %808 = ptrtoint ptr %dev2100 to i32
  call void @__asan_load4_noabort(i32 %808)
  %809 = load ptr, ptr %dev2100, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug310, ptr noundef %809, ptr noundef nonnull @.str.52) #4
  br label %do.end2103

do.end2103:                                       ; preds = %if.then2099, %do.body2087
  br i1 %cmp34, label %if.then2106, label %if.else2112

if.then2106:                                      ; preds = %do.end2103
  %emc_mrw22107 = getelementptr inbounds %struct.tegra210_emc_timing, ptr %3, i32 0, i32 40
  %810 = ptrtoint ptr %emc_mrw22107 to i32
  call void @__asan_load4_noabort(i32 %810)
  %811 = load i32, ptr %emc_mrw22107, align 4
  %812 = tail call i32 @llvm.bswap.i32(i32 %811) #4
  %813 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %813)
  %814 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3780 = getelementptr i8, ptr %814, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3780, i32 %812) #4, !srcloc !252
  %815 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %815)
  %816 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3781 = getelementptr i8, ptr %816, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3781, i32 872480896) #4, !srcloc !252
  %emc_mrw2108 = getelementptr inbounds %struct.tegra210_emc_timing, ptr %3, i32 0, i32 39
  %817 = ptrtoint ptr %emc_mrw2108 to i32
  call void @__asan_load4_noabort(i32 %817)
  %818 = load i32, ptr %emc_mrw2108, align 4
  %819 = tail call i32 @llvm.bswap.i32(i32 %818) #4
  %820 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %820)
  %821 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3783 = getelementptr i8, ptr %821, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3783, i32 %819) #4, !srcloc !252
  %822 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %822)
  %823 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3784 = getelementptr i8, ptr %823, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3784, i32 -402653056) #4, !srcloc !252
  br i1 %or.cond3255, label %if.then2110, label %if.then2106.do.body2124_crit_edge

if.then2106.do.body2124_crit_edge:                ; preds = %if.then2106
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body2124

if.then2110:                                      ; preds = %if.then2106
  call void @__sanitizer_cov_trace_pc() #6
  %emc_mrw4 = getelementptr inbounds %struct.tegra210_emc_timing, ptr %3, i32 0, i32 42
  %824 = ptrtoint ptr %emc_mrw4 to i32
  call void @__asan_load4_noabort(i32 %824)
  %825 = load i32, ptr %emc_mrw4, align 4
  %826 = tail call i32 @llvm.bswap.i32(i32 %825) #4
  %827 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %827)
  %828 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3786 = getelementptr i8, ptr %828, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3786, i32 %826) #4, !srcloc !252
  %829 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %829)
  %830 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3787 = getelementptr i8, ptr %830, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3787, i32 1006698624) #4, !srcloc !252
  br label %do.body2124

if.else2112:                                      ; preds = %do.end2103
  br i1 %cmp25, label %if.then2115, label %if.else2112.do.body2124_crit_edge

if.else2112.do.body2124_crit_edge:                ; preds = %if.else2112
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body2124

if.then2115:                                      ; preds = %if.else2112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %opt_dll_mode.0)
  %tobool2116.not = icmp eq i32 %opt_dll_mode.0, 0
  br i1 %tobool2116.not, label %if.then2115.if.end2119_crit_edge, label %if.then2117

if.then2115.if.end2119_crit_edge:                 ; preds = %if.then2115
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end2119

if.then2117:                                      ; preds = %if.then2115
  call void @__sanitizer_cov_trace_pc() #6
  %emc_emrs = getelementptr inbounds %struct.tegra210_emc_timing, ptr %3, i32 0, i32 45
  %831 = ptrtoint ptr %emc_emrs to i32
  call void @__asan_load4_noabort(i32 %831)
  %832 = load i32, ptr %emc_emrs, align 4
  %and2118 = and i32 %832, -67108865
  %833 = tail call i32 @llvm.bswap.i32(i32 %and2118) #4
  %834 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %834)
  %835 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3789 = getelementptr i8, ptr %835, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3789, i32 %833) #4, !srcloc !252
  %836 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %836)
  %837 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3790 = getelementptr i8, ptr %837, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3790, i32 -805306240) #4, !srcloc !252
  br label %if.end2119

if.end2119:                                       ; preds = %if.then2117, %if.then2115.if.end2119_crit_edge
  %emc_emrs2 = getelementptr inbounds %struct.tegra210_emc_timing, ptr %3, i32 0, i32 46
  %838 = ptrtoint ptr %emc_emrs2 to i32
  call void @__asan_load4_noabort(i32 %838)
  %839 = load i32, ptr %emc_emrs2, align 4
  %and2120 = and i32 %839, -67108865
  %840 = tail call i32 @llvm.bswap.i32(i32 %and2120) #4
  %841 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %841)
  %842 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3792 = getelementptr i8, ptr %842, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3792, i32 %840) #4, !srcloc !252
  %843 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %843)
  %844 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3793 = getelementptr i8, ptr %844, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3793, i32 738263168) #4, !srcloc !252
  %emc_mrs = getelementptr inbounds %struct.tegra210_emc_timing, ptr %3, i32 0, i32 44
  %845 = ptrtoint ptr %emc_mrs to i32
  call void @__asan_load4_noabort(i32 %845)
  %846 = load i32, ptr %emc_mrs, align 4
  %or2121 = or i32 %846, 67108864
  %847 = tail call i32 @llvm.bswap.i32(i32 %or2121) #4
  %848 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %848)
  %849 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3795 = getelementptr i8, ptr %849, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3795, i32 %847) #4, !srcloc !252
  %850 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %850)
  %851 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3796 = getelementptr i8, ptr %851, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3796, i32 -872415104) #4, !srcloc !252
  br label %do.body2124

do.body2124:                                      ; preds = %if.end2119, %if.else2112.do.body2124_crit_edge, %if.then2110, %if.then2106.do.body2124_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then2136)) #4
          to label %do.end2140 [label %if.then2136], !srcloc !249

if.then2136:                                      ; preds = %do.body2124
  call void @__sanitizer_cov_trace_pc() #6
  %dev2137 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %852 = ptrtoint ptr %dev2137 to i32
  call void @__asan_load4_noabort(i32 %852)
  %853 = load ptr, ptr %dev2137, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug311, ptr noundef %853, ptr noundef nonnull @.str.53) #4
  br label %do.end2140

do.end2140:                                       ; preds = %if.then2136, %do.body2124
  br i1 %opt_zcal_en_cc.0.off0, label %if.then2142, label %do.end2140.if.end2174_crit_edge

do.end2140.if.end2174_crit_edge:                  ; preds = %do.end2140
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end2174

if.then2142:                                      ; preds = %do.end2140
  br i1 %cmp34, label %if.then2145, label %if.else2159

if.then2145:                                      ; preds = %if.then2142
  %div.i3797 = udiv i32 90000, %div41
  %mul.i3798 = mul i32 %div.i3797, %div41
  call void @__sanitizer_cov_trace_const_cmp4(i32 90000, i32 %mul.i3798)
  %cmp.i3799 = icmp ult i32 %mul.i3798, 90000
  %add.i3800 = zext i1 %cmp.i3799 to i32
  %retval.0.i3801 = add nuw nsw i32 %div.i3797, %add.i3800
  %shl2147 = shl i32 %retval.0.i3801, 16
  %or2149 = or i32 %shl2147, %retval.0.i3801
  %854 = tail call i32 @llvm.bswap.i32(i32 %or2149) #4
  %855 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %855)
  %856 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3803 = getelementptr i8, ptr %856, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3803, i32 %854) #4, !srcloc !252
  %857 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %857)
  %858 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3804 = getelementptr i8, ptr %858, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3804, i32 -1006632832) #4, !srcloc !252
  %859 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %859)
  %860 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3806 = getelementptr i8, ptr %860, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3806, i32 1593838208) #4, !srcloc !252
  %861 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %861)
  %862 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3807 = getelementptr i8, ptr %862, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3807, i32 -402653056) #4, !srcloc !252
  %num_devices2152 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 13
  %863 = ptrtoint ptr %num_devices2152 to i32
  call void @__asan_load4_noabort(i32 %863)
  %864 = load i32, ptr %num_devices2152, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %864)
  %cmp2153 = icmp ugt i32 %864, 1
  br i1 %cmp2153, label %if.then2155, label %if.then2145.if.end2174_crit_edge

if.then2145.if.end2174_crit_edge:                 ; preds = %if.then2145
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end2174

if.then2155:                                      ; preds = %if.then2145
  call void @__sanitizer_cov_trace_pc() #6
  %865 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %865)
  %866 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3809 = getelementptr i8, ptr %866, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3809, i32 1593838144) #4, !srcloc !252
  %867 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %867)
  %868 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3810 = getelementptr i8, ptr %868, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3810, i32 -402653056) #4, !srcloc !252
  br label %if.end2174

if.else2159:                                      ; preds = %if.then2142
  br i1 %cmp25, label %if.then2162, label %if.else2159.if.end2174_crit_edge

if.else2159.if.end2174_crit_edge:                 ; preds = %if.else2159
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end2174

if.then2162:                                      ; preds = %if.else2159
  %869 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %869)
  %870 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3812 = getelementptr i8, ptr %870, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3812, i32 16777344) #4, !srcloc !252
  %871 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %871)
  %872 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3813 = getelementptr i8, ptr %872, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3813, i32 -335413120) #4, !srcloc !252
  %num_devices2165 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 13
  %873 = ptrtoint ptr %num_devices2165 to i32
  call void @__asan_load4_noabort(i32 %873)
  %874 = load i32, ptr %num_devices2165, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %874)
  %cmp2166 = icmp ugt i32 %874, 1
  br i1 %cmp2166, label %if.then2168, label %if.then2162.if.end2174_crit_edge

if.then2162.if.end2174_crit_edge:                 ; preds = %if.then2162
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end2174

if.then2168:                                      ; preds = %if.then2162
  call void @__sanitizer_cov_trace_pc() #6
  %875 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %875)
  %876 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3815 = getelementptr i8, ptr %876, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3815, i32 16777280) #4, !srcloc !252
  %877 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %877)
  %878 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3816 = getelementptr i8, ptr %878, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3816, i32 -335413120) #4, !srcloc !252
  br label %if.end2174

if.end2174:                                       ; preds = %if.then2168, %if.then2162.if.end2174_crit_edge, %if.else2159.if.end2174_crit_edge, %if.then2155, %if.then2145.if.end2174_crit_edge, %do.end2140.if.end2174_crit_edge
  br i1 %.not, label %if.end2174.do.body2187_crit_edge, label %if.then2176

if.end2174.do.body2187_crit_edge:                 ; preds = %if.end2174
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body2187

if.then2176:                                      ; preds = %if.end2174
  tail call void @tegra210_emc_set_shadow_bypass(ptr noundef %emc, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1250001, i32 %call1866)
  %cmp2177 = icmp ult i32 %call1866, 1250001
  br i1 %cmp2177, label %if.then2179, label %if.then2176.if.end2183_crit_edge

if.then2176.if.end2183_crit_edge:                 ; preds = %if.then2176
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end2183

if.then2179:                                      ; preds = %if.then2176
  call void @__sanitizer_cov_trace_pc() #6
  %sub2180 = sub nuw nsw i32 1250000, %call1866
  %div2181 = udiv i32 %sub2180, %div41
  br label %if.end2183

if.end2183:                                       ; preds = %if.then2179, %if.then2176.if.end2183_crit_edge
  %delay.1 = phi i32 [ %div2181, %if.then2179 ], [ 0, %if.then2176.if.end2183_crit_edge ]
  %879 = ptrtoint ptr %arrayidx362 to i32
  call void @__asan_load4_noabort(i32 %879)
  %880 = load i32, ptr %arrayidx362, align 4
  %881 = tail call i32 @llvm.bswap.i32(i32 %880) #4
  %882 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %882)
  %883 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3818 = getelementptr i8, ptr %883, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3818, i32 %881) #4, !srcloc !252
  %and.i3819 = shl i32 %delay.1, 16
  %or2.i3821 = or i32 %and.i3819, -2147480516
  %884 = tail call i32 @llvm.bswap.i32(i32 %or2.i3821) #4
  %885 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %885)
  %886 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3822 = getelementptr i8, ptr %886, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3822, i32 %884) #4, !srcloc !252
  tail call void @tegra210_emc_set_shadow_bypass(ptr noundef %emc, i32 noundef 0) #4
  br label %do.body2187

do.body2187:                                      ; preds = %if.end2183, %if.end2174.do.body2187_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then2199)) #4
          to label %do.end2203 [label %if.then2199], !srcloc !249

if.then2199:                                      ; preds = %do.body2187
  call void @__sanitizer_cov_trace_pc() #6
  %dev2200 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %887 = ptrtoint ptr %dev2200 to i32
  call void @__asan_load4_noabort(i32 %887)
  %888 = load ptr, ptr %dev2200, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug312, ptr noundef %888, ptr noundef nonnull @.str.54) #4
  br label %do.end2203

do.end2203:                                       ; preds = %if.then2199, %do.body2187
  br i1 %cmp554, label %do.end2203.if.end2207_crit_edge, label %if.then2206

do.end2203.if.end2207_crit_edge:                  ; preds = %do.end2203
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end2207

if.then2206:                                      ; preds = %do.end2203
  call void @__sanitizer_cov_trace_pc() #6
  %889 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %889)
  %890 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3824 = getelementptr i8, ptr %890, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3824, i32 0) #4, !srcloc !252
  %891 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %891)
  %892 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3825 = getelementptr i8, ptr %892, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3825, i32 -738197376) #4, !srcloc !252
  br label %if.end2207

if.end2207:                                       ; preds = %if.then2206, %do.end2203.if.end2207_crit_edge
  %893 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %893)
  %894 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3827 = getelementptr i8, ptr %894, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3827, i32 16777216) #4, !srcloc !252
  %895 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %895)
  %896 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3828 = getelementptr i8, ptr %896, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3828, i32 671350912) #4, !srcloc !252
  %897 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %897)
  %898 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3830 = getelementptr i8, ptr %898, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3830, i32 0) #4, !srcloc !252
  %899 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %899)
  %900 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3831 = getelementptr i8, ptr %900, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3831, i32 671351424) #4, !srcloc !252
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then2220)) #4
          to label %do.end2224 [label %if.then2220], !srcloc !249

if.then2220:                                      ; preds = %if.end2207
  call void @__sanitizer_cov_trace_pc() #6
  %dev2221 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %901 = ptrtoint ptr %dev2221 to i32
  call void @__asan_load4_noabort(i32 %901)
  %902 = load ptr, ptr %dev2221, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug313, ptr noundef %902, ptr noundef nonnull @.str.55) #4
  br label %do.end2224

do.end2224:                                       ; preds = %if.then2220, %if.end2207
  %903 = tail call i32 @llvm.bswap.i32(i32 %or1828) #4
  %904 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %904)
  %905 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3833 = getelementptr i8, ptr %905, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3833, i32 %903) #4, !srcloc !252
  %906 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %906)
  %907 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3834 = getelementptr i8, ptr %907, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3834, i32 134217856) #4, !srcloc !252
  %brmerge3266 = select i1 %opt_zcal_en_cc.0.off0.not, i1 true, i1 %cmp554
  br i1 %brmerge3266, label %do.end2224.if.end2234_crit_edge, label %if.then2231

do.end2224.if.end2234_crit_edge:                  ; preds = %do.end2224
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end2234

if.then2231:                                      ; preds = %do.end2224
  call void @__sanitizer_cov_trace_pc() #6
  %908 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %908)
  %909 = load i32, ptr %arrayidx18, align 4
  %910 = tail call i32 @llvm.bswap.i32(i32 %909) #4
  %911 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %911)
  %912 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3836 = getelementptr i8, ptr %912, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3836, i32 %910) #4, !srcloc !252
  %913 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %913)
  %914 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3837 = getelementptr i8, ptr %914, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3837, i32 -536739712) #4, !srcloc !252
  br label %if.end2234

if.end2234:                                       ; preds = %if.then2231, %do.end2224.if.end2234_crit_edge
  %915 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %915)
  %916 = load i32, ptr %arrayidx50, align 4
  %and2237 = and i32 %916, -268435457
  %917 = tail call i32 @llvm.bswap.i32(i32 %and2237) #4
  %918 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %918)
  %919 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3839 = getelementptr i8, ptr %919, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3839, i32 %917) #4, !srcloc !252
  %920 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %920)
  %921 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3840 = getelementptr i8, ptr %921, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3840, i32 201326720) #4, !srcloc !252
  %922 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %922)
  %923 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3842 = getelementptr i8, ptr %923, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3842, i32 %37) #4, !srcloc !252
  %924 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %924)
  %925 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3843 = getelementptr i8, ptr %925, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3843, i32 134217856) #4, !srcloc !252
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then2250)) #4
          to label %do.end2254 [label %if.then2250], !srcloc !249

if.then2250:                                      ; preds = %if.end2234
  call void @__sanitizer_cov_trace_pc() #6
  %dev2251 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %926 = ptrtoint ptr %dev2251 to i32
  call void @__asan_load4_noabort(i32 %926)
  %927 = load ptr, ptr %dev2251, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug314, ptr noundef %927, ptr noundef nonnull @.str.56) #4
  br label %do.end2254

do.end2254:                                       ; preds = %if.then2250, %if.end2234
  %928 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %928)
  %929 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3845 = getelementptr i8, ptr %929, i32 1004
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3845, i32 %45) #4, !srcloc !252
  %930 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %930)
  %931 = load ptr, ptr %regs.i, align 8
  %add.ptr4.i3846 = getelementptr i8, ptr %931, i32 1000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3846, i32 1476722816) #4, !srcloc !252
  br i1 %.not, label %do.end2254.do.body2268_crit_edge, label %if.then2256

do.end2254.do.body2268_crit_edge:                 ; preds = %do.end2254
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body2268

if.then2256:                                      ; preds = %do.end2254
  %932 = ptrtoint ptr %arrayidx362 to i32
  call void @__asan_load4_noabort(i32 %932)
  %933 = load i32, ptr %arrayidx362, align 4
  br i1 %cmp383, label %if.then2258, label %if.else2262

if.then2258:                                      ; preds = %if.then2256
  call void @__sanitizer_cov_trace_pc() #6
  %and2261 = and i32 %933, -5
  %934 = tail call i32 @llvm.bswap.i32(i32 %and2261) #4
  %935 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %935)
  %936 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3848 = getelementptr i8, ptr %936, i32 3132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3848, i32 %934) #4, !srcloc !252
  br label %do.body2268

if.else2262:                                      ; preds = %if.then2256
  call void @__sanitizer_cov_trace_pc() #6
  %and2265 = and i32 %933, -2
  %937 = tail call i32 @llvm.bswap.i32(i32 %and2265) #4
  %938 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %938)
  %939 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3850 = getelementptr i8, ptr %939, i32 3132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3850, i32 %937) #4, !srcloc !252
  br label %do.body2268

do.body2268:                                      ; preds = %if.else2262, %if.then2258, %do.end2254.do.body2268_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then2280)) #4
          to label %do.end2284 [label %if.then2280], !srcloc !249

if.then2280:                                      ; preds = %do.body2268
  call void @__sanitizer_cov_trace_pc() #6
  %dev2281 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %940 = ptrtoint ptr %dev2281 to i32
  call void @__asan_load4_noabort(i32 %940)
  %941 = load ptr, ptr %dev2281, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug315, ptr noundef %941, ptr noundef nonnull @.str.57) #4
  br label %do.end2284

do.end2284:                                       ; preds = %if.then2280, %do.body2268
  %942 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %942)
  %943 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3852 = getelementptr i8, ptr %943, i32 700
  %944 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3852) #4, !srcloc !251
  %945 = and i32 %944, 620756991
  %946 = or i32 %945, -2013265920
  %947 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %947)
  %948 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3854 = getelementptr i8, ptr %948, i32 700
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3854, i32 %946) #4, !srcloc !252
  tail call void @tegra210_emc_do_clock_change(ptr noundef %emc, i32 noundef %clksrc) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then2304)) #4
          to label %do.end2308 [label %if.then2304], !srcloc !249

if.then2304:                                      ; preds = %do.end2284
  call void @__sanitizer_cov_trace_pc() #6
  %dev2305 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %949 = ptrtoint ptr %dev2305 to i32
  call void @__asan_load4_noabort(i32 %949)
  %950 = load ptr, ptr %dev2305, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug316, ptr noundef %950, ptr noundef nonnull @.str.58) #4
  br label %do.end2308

do.end2308:                                       ; preds = %if.then2304, %do.end2284
  %951 = ptrtoint ptr %rate40 to i32
  call void @__asan_load4_noabort(i32 %951)
  %952 = load i32, ptr %rate40, align 4
  %953 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %953)
  %954 = load i32, ptr %rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %952, i32 %954)
  %cmp2311 = icmp ugt i32 %952, %954
  br i1 %cmp2311, label %for.cond2314.preheader, label %do.end2308.do.body2330_crit_edge

do.end2308.do.body2330_crit_edge:                 ; preds = %do.end2308
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body2330

for.cond2314.preheader:                           ; preds = %do.end2308
  %num_up_down2315 = getelementptr inbounds %struct.tegra210_emc_timing, ptr %3, i32 0, i32 20
  %955 = ptrtoint ptr %num_up_down2315 to i32
  call void @__asan_load4_noabort(i32 %955)
  %956 = load i32, ptr %num_up_down2315, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %956)
  %cmp23163989.not = icmp eq i32 %956, 0
  br i1 %cmp23163989.not, label %for.cond2314.preheader.for.end2328_crit_edge, label %for.body2318.lr.ph

for.cond2314.preheader.for.end2328_crit_edge:     ; preds = %for.cond2314.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end2328

for.body2318.lr.ph:                               ; preds = %for.cond2314.preheader
  %offsets2322 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 7
  br label %for.body2318

for.body2318:                                     ; preds = %for.body2318.for.body2318_crit_edge, %for.body2318.lr.ph
  %i.103990 = phi i32 [ 0, %for.body2318.lr.ph ], [ %inc2327, %for.body2318.for.body2318_crit_edge ]
  %957 = ptrtoint ptr %emc to i32
  call void @__asan_load4_noabort(i32 %957)
  %958 = load ptr, ptr %emc, align 8
  %arrayidx2321 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 37, i32 %i.103990
  %959 = ptrtoint ptr %arrayidx2321 to i32
  call void @__asan_load4_noabort(i32 %959)
  %960 = load i32, ptr %arrayidx2321, align 4
  %961 = ptrtoint ptr %offsets2322 to i32
  call void @__asan_load4_noabort(i32 %961)
  %962 = load ptr, ptr %offsets2322, align 4
  %arrayidx2324 = getelementptr %struct.tegra210_emc_table_register_offsets, ptr %962, i32 0, i32 3, i32 %i.103990
  %963 = ptrtoint ptr %arrayidx2324 to i32
  call void @__asan_load2_noabort(i32 %963)
  %964 = load i16, ptr %arrayidx2324, align 2
  %conv2325 = zext i16 %964 to i32
  %965 = tail call i32 @llvm.bswap.i32(i32 %960) #4
  %regs.i3855 = getelementptr inbounds %struct.tegra_mc, ptr %958, i32 0, i32 3
  %966 = ptrtoint ptr %regs.i3855 to i32
  call void @__asan_load4_noabort(i32 %966)
  %967 = load ptr, ptr %regs.i3855, align 4
  %add.ptr.i3856 = getelementptr i8, ptr %967, i32 %conv2325
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3856, i32 %965) #4, !srcloc !252
  %inc2327 = add nuw i32 %i.103990, 1
  %968 = ptrtoint ptr %num_up_down2315 to i32
  call void @__asan_load4_noabort(i32 %968)
  %969 = load i32, ptr %num_up_down2315, align 4
  %cmp2316 = icmp ult i32 %inc2327, %969
  br i1 %cmp2316, label %for.body2318.for.body2318_crit_edge, label %for.body2318.for.end2328_crit_edge

for.body2318.for.end2328_crit_edge:               ; preds = %for.body2318
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end2328

for.body2318.for.body2318_crit_edge:              ; preds = %for.body2318
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body2318

for.end2328:                                      ; preds = %for.body2318.for.end2328_crit_edge, %for.cond2314.preheader.for.end2328_crit_edge
  tail call void @tegra210_emc_timing_update(ptr noundef %emc) #4
  br label %do.body2330

do.body2330:                                      ; preds = %for.end2328, %do.end2308.do.body2330_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then2342)) #4
          to label %do.end2346 [label %if.then2342], !srcloc !249

if.then2342:                                      ; preds = %do.body2330
  call void @__sanitizer_cov_trace_pc() #6
  %dev2343 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %970 = ptrtoint ptr %dev2343 to i32
  call void @__asan_load4_noabort(i32 %970)
  %971 = load ptr, ptr %dev2343, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug317, ptr noundef %971, ptr noundef nonnull @.str.59) #4
  br label %do.end2346

do.end2346:                                       ; preds = %if.then2342, %do.body2330
  br i1 %cmp554, label %if.then2349, label %do.end2346.if.end2354_crit_edge

do.end2346.if.end2354_crit_edge:                  ; preds = %do.end2346
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end2354

if.then2349:                                      ; preds = %do.end2346
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @tegra210_emc_set_shadow_bypass(ptr noundef %emc, i32 noundef 1) #4
  %972 = ptrtoint ptr %arrayidx1697 to i32
  call void @__asan_load4_noabort(i32 %972)
  %973 = load i32, ptr %arrayidx1697, align 4
  %974 = tail call i32 @llvm.bswap.i32(i32 %973) #4
  %975 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %975)
  %976 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3858 = getelementptr i8, ptr %976, i32 740
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3858, i32 %974) #4, !srcloc !252
  %977 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %977)
  %978 = load i32, ptr %arrayidx18, align 4
  %979 = tail call i32 @llvm.bswap.i32(i32 %978) #4
  %980 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %980)
  %981 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3860 = getelementptr i8, ptr %981, i32 736
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3860, i32 %979) #4, !srcloc !252
  tail call void @tegra210_emc_set_shadow_bypass(ptr noundef %emc, i32 noundef 0) #4
  br label %if.end2354

if.end2354:                                       ; preds = %if.then2349, %do.end2346.if.end2354_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then2388)) #4
          to label %do.end2392 [label %if.then2388], !srcloc !249

if.then2388:                                      ; preds = %if.end2354
  call void @__sanitizer_cov_trace_pc() #6
  %dev2389 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %982 = ptrtoint ptr %dev2389 to i32
  call void @__asan_load4_noabort(i32 %982)
  %983 = load ptr, ptr %dev2389, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug318, ptr noundef %983, ptr noundef nonnull @.str.60) #4
  br label %do.end2392

do.end2392:                                       ; preds = %if.then2388, %if.end2354
  tail call void @tegra210_emc_set_shadow_bypass(ptr noundef %emc, i32 noundef 1) #4
  %984 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %984)
  %985 = load i32, ptr %arrayidx50, align 4
  %986 = tail call i32 @llvm.bswap.i32(i32 %985) #4
  %987 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %987)
  %988 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3862 = getelementptr i8, ptr %988, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3862, i32 %986) #4, !srcloc !252
  tail call void @tegra210_emc_set_shadow_bypass(ptr noundef %emc, i32 noundef 0) #4
  %989 = ptrtoint ptr %emc_fdpd_ctrl_cmd_no_ramp to i32
  call void @__asan_load4_noabort(i32 %989)
  %990 = load i32, ptr %emc_fdpd_ctrl_cmd_no_ramp, align 4
  %991 = tail call i32 @llvm.bswap.i32(i32 %990) #4
  %992 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %992)
  %993 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3864 = getelementptr i8, ptr %993, i32 1240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3864, i32 %991) #4, !srcloc !252
  %994 = ptrtoint ptr %emc_sel_dpd_ctrl52 to i32
  call void @__asan_load4_noabort(i32 %994)
  %995 = load i32, ptr %emc_sel_dpd_ctrl52, align 4
  %996 = tail call i32 @llvm.bswap.i32(i32 %995) #4
  %997 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %997)
  %998 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3866 = getelementptr i8, ptr %998, i32 984
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3866, i32 %996) #4, !srcloc !252
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then2409)) #4
          to label %do.end2413 [label %if.then2409], !srcloc !249

if.then2409:                                      ; preds = %do.end2392
  call void @__sanitizer_cov_trace_pc() #6
  %dev2410 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %999 = ptrtoint ptr %dev2410 to i32
  call void @__asan_load4_noabort(i32 %999)
  %1000 = load ptr, ptr %dev2410, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug319, ptr noundef %1000, ptr noundef nonnull @.str.61) #4
  br label %do.end2413

do.end2413:                                       ; preds = %if.then2409, %do.end2392
  tail call void @tegra210_emc_set_shadow_bypass(ptr noundef %emc, i32 noundef 1) #4
  %arrayidx2415 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 25, i32 146
  %1001 = ptrtoint ptr %arrayidx2415 to i32
  call void @__asan_load4_noabort(i32 %1001)
  %1002 = load i32, ptr %arrayidx2415, align 4
  %1003 = tail call i32 @llvm.bswap.i32(i32 %1002) #4
  %1004 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %1004)
  %1005 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3868 = getelementptr i8, ptr %1005, i32 3192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3868, i32 %1003) #4, !srcloc !252
  tail call void @tegra210_emc_set_shadow_bypass(ptr noundef %emc, i32 noundef 0) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then2428)) #4
          to label %do.end2432 [label %if.then2428], !srcloc !249

if.then2428:                                      ; preds = %do.end2413
  call void @__sanitizer_cov_trace_pc() #6
  %dev2429 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %1006 = ptrtoint ptr %dev2429 to i32
  call void @__asan_load4_noabort(i32 %1006)
  %1007 = load ptr, ptr %dev2429, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug320, ptr noundef %1007, ptr noundef nonnull @.str.62) #4
  br label %do.end2432

do.end2432:                                       ; preds = %if.then2428, %do.end2413
  %1008 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %1008)
  %1009 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3870 = getelementptr i8, ptr %1009, i32 3120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3870, i32 65280) #4, !srcloc !252
  %1010 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %1010)
  %1011 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3872 = getelementptr i8, ptr %1011, i32 3320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3872, i32 134217728) #4, !srcloc !252
  %1012 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %1012)
  %1013 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3874 = getelementptr i8, ptr %1013, i32 3324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3874, i32 134217728) #4, !srcloc !252
  %1014 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %1014)
  %1015 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3876 = getelementptr i8, ptr %1015, i32 3120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3876, i32 0) #4, !srcloc !252
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_set_clock, %if.then2445)) #4
          to label %do.end2449 [label %if.then2445], !srcloc !249

if.then2445:                                      ; preds = %do.end2432
  call void @__sanitizer_cov_trace_pc() #6
  %dev2446 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %1016 = ptrtoint ptr %dev2446 to i32
  call void @__asan_load4_noabort(i32 %1016)
  %1017 = load ptr, ptr %dev2446, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug321, ptr noundef %1017, ptr noundef nonnull @.str.63) #4
  br label %do.end2449

do.end2449:                                       ; preds = %if.then2445, %do.end2432
  %1018 = ptrtoint ptr %arrayidx457 to i32
  call void @__asan_load4_noabort(i32 %1018)
  %1019 = load i32, ptr %arrayidx457, align 4
  %and2452 = and i32 %1019, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2452)
  %tobool2453.not = icmp eq i32 %and2452, 0
  br i1 %tobool2453.not, label %do.end2449.if.end2462_crit_edge, label %if.then2454

do.end2449.if.end2462_crit_edge:                  ; preds = %do.end2449
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end2462

if.then2454:                                      ; preds = %do.end2449
  call void @__sanitizer_cov_trace_pc() #6
  %1020 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %1020)
  %1021 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3878 = getelementptr i8, ptr %1021, i32 700
  %1022 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3878) #4, !srcloc !251
  %1023 = and i32 %1022, 620756991
  %1024 = or i32 %1023, -1996488704
  %1025 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %1025)
  %1026 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3880 = getelementptr i8, ptr %1026, i32 700
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3880, i32 %1024) #4, !srcloc !252
  tail call void @tegra210_emc_timing_update(ptr noundef %emc) #4
  br label %if.end2462

if.end2462:                                       ; preds = %if.then2454, %do.end2449.if.end2462_crit_edge
  %1027 = ptrtoint ptr %emc_auto_cal_config287 to i32
  call void @__asan_load4_noabort(i32 %1027)
  %1028 = load i32, ptr %emc_auto_cal_config287, align 4
  %1029 = tail call i32 @llvm.bswap.i32(i32 %1028) #4
  %1030 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %1030)
  %1031 = load ptr, ptr %regs.i, align 8
  %add.ptr.i3882 = getelementptr i8, ptr %1031, i32 676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3882, i32 %1029) #4, !srcloc !252
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra210_emc_r21021_periodic_compensation(ptr noundef %emc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %last1 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 15
  %0 = ptrtoint ptr %last1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %last1, align 8
  %periodic_training = getelementptr inbounds %struct.tegra210_emc_timing, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %periodic_training to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %periodic_training, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end60_crit_edge, label %do.body

entry.if.end60_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_periodic_compensation.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_periodic_compensation, %if.then5)) #4
          to label %do.end [label %if.then5], !srcloc !249

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_periodic_compensation.__UNIQUE_ID_ddebug233, ptr noundef %5, ptr noundef nonnull @.str.75) #4
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %regs.i = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 10
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !251
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 8
  %add.ptr.i111 = getelementptr i8, ptr %10, i32 12
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i111) #4, !srcloc !251
  %12 = and i32 %11, -177
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 8
  %add.ptr.i113 = getelementptr i8, ptr %14, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i113, i32 %12) #4, !srcloc !252
  tail call void @tegra210_emc_dll_disable(ptr noundef %emc) #4
  %num_channels = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 12
  %15 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp127.not = icmp eq i32 %16, 0
  br i1 %cmp127.not, label %do.end.for.end16_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end16_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end16

for.cond9.preheader:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp11129.not = icmp eq i32 %18, 0
  br i1 %cmp11129.not, label %for.cond9.preheader.for.end16_crit_edge, label %for.cond9.preheader.for.body12_crit_edge

for.cond9.preheader.for.body12_crit_edge:         ; preds = %for.cond9.preheader
  br label %for.body12

for.cond9.preheader.for.end16_crit_edge:          ; preds = %for.cond9.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end16

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %i.0128 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %call8 = tail call i32 @tegra210_emc_wait_for_update(ptr noundef %emc, i32 noundef %i.0128, i32 noundef 692, i32 noundef 48, i1 noundef zeroext false) #4
  %inc = add nuw i32 %i.0128, 1
  %17 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_channels, align 4
  %cmp = icmp ult i32 %inc, %18
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.cond9.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body12:                                       ; preds = %for.body12.for.body12_crit_edge, %for.cond9.preheader.for.body12_crit_edge
  %i.1130 = phi i32 [ %inc15, %for.body12.for.body12_crit_edge ], [ 0, %for.cond9.preheader.for.body12_crit_edge ]
  %call13 = tail call i32 @tegra210_emc_wait_for_update(ptr noundef %emc, i32 noundef %i.1130, i32 noundef 692, i32 noundef 768, i1 noundef zeroext false) #4
  %inc15 = add nuw i32 %i.1130, 1
  %19 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_channels, align 4
  %cmp11 = icmp ult i32 %inc15, %20
  br i1 %cmp11, label %for.body12.for.body12_crit_edge, label %for.body12.for.end16_crit_edge

for.body12.for.end16_crit_edge:                   ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end16

for.body12.for.body12_crit_edge:                  ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body12

for.end16:                                        ; preds = %for.body12.for.end16_crit_edge, %for.cond9.preheader.for.end16_crit_edge, %do.end.for.end16_crit_edge
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i, align 8
  %add.ptr.i115 = getelementptr i8, ptr %22, i32 1524
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i115) #4, !srcloc !251
  %24 = and i32 %23, -393217
  %25 = or i32 %24, 262144
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 8
  %add.ptr.i117 = getelementptr i8, ptr %27, i32 1524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i117, i32 %25) #4, !srcloc !252
  tail call void @tegra210_emc_start_periodic_compensation(ptr noundef %emc) #4
  %run_clocks = getelementptr inbounds %struct.tegra210_emc_timing, ptr %1, i32 0, i32 13
  %28 = ptrtoint ptr %run_clocks to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %run_clocks, align 4
  %call19 = tail call i32 @tegra210_emc_actual_osc_clocks(i32 noundef %29) #4
  %rate = getelementptr inbounds %struct.tegra210_emc_timing, ptr %1, i32 0, i32 2
  %mul = mul i32 %call19, 1000
  %30 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rate, align 4
  %add = add i32 %31, 1
  %div = udiv i32 %mul, %add
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %32(i32 noundef %div) #4
  %33 = ptrtoint ptr %run_clocks to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %run_clocks, align 4
  %call.i = tail call i32 @tegra210_emc_actual_osc_clocks(i32 noundef %34) #4
  %35 = ptrtoint ptr %periodic_training to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %periodic_training, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i, label %for.end16.periodic_compensation_handler.exit_crit_edge, label %if.end.i

for.end16.periodic_compensation_handler.exit_crit_edge: ; preds = %for.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %periodic_compensation_handler.exit

if.end.i:                                         ; preds = %for.end16
  call void @__sanitizer_cov_trace_pc() #6
  %mul.i = mul i32 %call.i, 1000
  %37 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rate, align 4
  %div.i = udiv i32 %mul.i, %38
  %add.i = add i32 %div.i, 2
  tail call void @tegra210_emc_start_periodic_compensation(ptr noundef %emc) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %39(i32 noundef %add.i) #4
  %call107.i = tail call fastcc i32 @update_clock_tree_delay(ptr noundef %emc, i32 noundef 14) #4
  %phi.bo = shl i32 %call107.i, 7
  br label %periodic_compensation_handler.exit

periodic_compensation_handler.exit:               ; preds = %if.end.i, %for.end16.periodic_compensation_handler.exit_crit_edge
  %retval.0.i118 = phi i32 [ 0, %for.end16.periodic_compensation_handler.exit_crit_edge ], [ %phi.bo, %if.end.i ]
  %tree_margin = getelementptr inbounds %struct.tegra210_emc_timing, ptr %1, i32 0, i32 14
  %40 = ptrtoint ptr %tree_margin to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tree_margin, align 4
  %42 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rate, align 4
  %div28 = udiv i32 %43, 1000
  %mul29 = mul i32 %div28, %retval.0.i118
  %div30 = udiv i32 %mul29, 1000000
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %div30)
  %cmp31 = icmp ult i32 %41, %div30
  br i1 %cmp31, label %for.cond33.preheader, label %periodic_compensation_handler.exit.if.end59_crit_edge

periodic_compensation_handler.exit.if.end59_crit_edge: ; preds = %periodic_compensation_handler.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end59

for.cond33.preheader:                             ; preds = %periodic_compensation_handler.exit
  %dev50 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  br label %for.body35

for.body35:                                       ; preds = %do.end54.for.body35_crit_edge, %for.cond33.preheader
  %i.2131 = phi i32 [ 0, %for.cond33.preheader ], [ %inc57, %do.end54.for.body35_crit_edge ]
  %arrayidx = getelementptr [10 x i32], ptr @tegra210_emc_r21021_periodic_compensation.list, i32 0, i32 %i.2131
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx, align 4
  %call36 = tail call i32 @tegra210_emc_compensate(ptr noundef %1, i32 noundef %45) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra210_emc_r21021_periodic_compensation.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra210_emc_r21021_periodic_compensation, %if.then49)) #4
          to label %do.end54 [label %if.then49], !srcloc !249

if.then49:                                        ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #6
  %46 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev50, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra210_emc_r21021_periodic_compensation.__UNIQUE_ID_ddebug234, ptr noundef %47, ptr noundef nonnull @.str.36, i32 noundef %45, i32 noundef %call36) #4
  br label %do.end54

do.end54:                                         ; preds = %if.then49, %for.body35
  %48 = tail call i32 @llvm.bswap.i32(i32 %call36) #4
  %49 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs.i, align 8
  %add.ptr.i120 = getelementptr i8, ptr %50, i32 %45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i120, i32 %48) #4, !srcloc !252
  %inc57 = add nuw nsw i32 %i.2131, 1
  %exitcond.not = icmp eq i32 %inc57, 10
  br i1 %exitcond.not, label %do.end54.if.end59_crit_edge, label %do.end54.for.body35_crit_edge

do.end54.for.body35_crit_edge:                    ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body35

do.end54.if.end59_crit_edge:                      ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end59

if.end59:                                         ; preds = %do.end54.if.end59_crit_edge, %periodic_compensation_handler.exit.if.end59_crit_edge
  %51 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs.i, align 8
  %add.ptr.i122 = getelementptr i8, ptr %52, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i122, i32 %11) #4, !srcloc !252
  tail call void @tegra210_emc_timing_update(ptr noundef %emc) #4
  %53 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs.i, align 8
  %add.ptr.i124 = getelementptr i8, ptr %54, i32 1524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i124, i32 %23) #4, !srcloc !252
  tail call void @tegra210_emc_dll_enable(ptr noundef %emc) #4
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %entry.if.end60_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra210_emc_find_timing(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra210_emc_get_dll_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra210_emc_timing_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra210_emc_wait_for_update(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra210_emc_set_shadow_bypass(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra210_emc_reset_dram_clktree_values(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra210_emc_start_periodic_compensation(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra210_emc_actual_osc_clocks(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra210_emc_dll_prelock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra210_emc_dll_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra210_emc_adjust_timing(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra210_emc_compensate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra210_emc_dvfs_power_ramp_down(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra210_emc_dvfs_power_ramp_up(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra210_emc_do_clock_change(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @update_clock_tree_delay(ptr noundef %emc, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  %temp = alloca [2 x [2 x i32]], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %type)
  %cmp = icmp eq i32 %type, 14
  %last1 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 15
  %0 = ptrtoint ptr %last1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %last1, align 8
  %next2 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 16
  %2 = ptrtoint ptr %next2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %next2, align 4
  %rate = getelementptr inbounds %struct.tegra210_emc_timing, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rate, align 4
  %div = udiv i32 %5, 1000
  %rate3 = getelementptr inbounds %struct.tegra210_emc_timing, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %rate3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rate3, align 4
  %div4 = udiv i32 %7, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %type)
  %cmp5 = icmp eq i32 %type, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %type)
  %cmp7 = icmp eq i32 %type, 10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %temp) #4
  %8 = getelementptr inbounds [2 x i32], ptr %temp, i32 0, i32 1
  %9 = getelementptr inbounds [2 x [2 x i32]], ptr %temp, i32 0, i32 1
  %10 = getelementptr inbounds [2 x [2 x i32]], ptr %temp, i32 0, i32 1, i32 1
  %11 = call ptr @memset(ptr %temp, i32 255, i32 16)
  %12 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %type, label %entry.if.end44_crit_edge [
    i32 14, label %entry.if.then_crit_edge
    i32 10, label %entry.if.then_crit_edge1469
  ]

entry.if.then_crit_edge1469:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

entry.if.end44_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end44

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge1469
  %call = tail call i32 @tegra210_emc_mrr_read(ptr noundef %emc, i32 noundef 2, i32 noundef 19) #4
  %num_channels = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 12
  %13 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp101384.not = icmp eq i32 %14, 0
  br i1 %cmp101384.not, label %if.then.for.end_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then.for.body_crit_edge
  %value.01386 = phi i32 [ %shr, %for.body.for.body_crit_edge ], [ %call, %if.then.for.body_crit_edge ]
  %i.01385 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then.for.body_crit_edge ]
  %and = shl i32 %value.01386, 8
  %shl = and i32 %and, 65280
  %arrayidx = getelementptr [2 x [2 x i32]], ptr %temp, i32 0, i32 %i.01385
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %shl, ptr %arrayidx, align 4
  %and12 = and i32 %value.01386, 65280
  %arrayidx15 = getelementptr [2 x [2 x i32]], ptr %temp, i32 0, i32 %i.01385, i32 1
  %16 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and12, ptr %arrayidx15, align 4
  %shr = lshr i32 %value.01386, 16
  %inc = add nuw i32 %i.01385, 1
  %exitcond.not = icmp eq i32 %inc, %14
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then.for.end_crit_edge
  %call16 = tail call i32 @tegra210_emc_mrr_read(ptr noundef %emc, i32 noundef 2, i32 noundef 18) #4
  %17 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp191387.not = icmp eq i32 %18, 0
  br i1 %cmp191387.not, label %for.end.if.end_crit_edge, label %for.end.for.body20_crit_edge

for.end.for.body20_crit_edge:                     ; preds = %for.end
  br label %for.body20

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

for.body20:                                       ; preds = %for.body20.for.body20_crit_edge, %for.end.for.body20_crit_edge
  %value.11389 = phi i32 [ %shr30, %for.body20.for.body20_crit_edge ], [ %call16, %for.end.for.body20_crit_edge ]
  %i.11388 = phi i32 [ %inc32, %for.body20.for.body20_crit_edge ], [ 0, %for.end.for.body20_crit_edge ]
  %and21 = and i32 %value.11389, 255
  %arrayidx23 = getelementptr [2 x [2 x i32]], ptr %temp, i32 0, i32 %i.11388
  %19 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx23, align 4
  %or = or i32 %20, %and21
  store i32 %or, ptr %arrayidx23, align 4
  %and25 = lshr i32 %value.11389, 8
  %shr26 = and i32 %and25, 255
  %arrayidx28 = getelementptr [2 x [2 x i32]], ptr %temp, i32 0, i32 %i.11388, i32 1
  %21 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx28, align 4
  %or29 = or i32 %22, %shr26
  store i32 %or29, ptr %arrayidx28, align 4
  %shr30 = lshr i32 %value.11389, 16
  %inc32 = add nuw i32 %i.11388, 1
  %exitcond1396.not = icmp eq i32 %inc32, %18
  br i1 %exitcond1396.not, label %for.body20.if.end_crit_edge, label %for.body20.for.body20_crit_edge

for.body20.for.body20_crit_edge:                  ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body20

for.body20.if.end_crit_edge:                      ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %for.body20.if.end_crit_edge, %for.end.if.end_crit_edge
  %23 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %type, label %if.end.if.end44_crit_edge [
    i32 14, label %if.end.if.then37_crit_edge
    i32 10, label %if.end.if.then37_crit_edge1470
  ]

if.end.if.then37_crit_edge1470:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then37

if.end.if.then37_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then37

if.end.if.end44_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end44

if.then37:                                        ; preds = %if.end.if.then37_crit_edge, %if.end.if.then37_crit_edge1470
  %run_clocks = getelementptr inbounds %struct.tegra210_emc_timing, ptr %1, i32 0, i32 13
  %24 = ptrtoint ptr %run_clocks to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %run_clocks, align 4
  %call38 = tail call i32 @tegra210_emc_actual_osc_clocks(i32 noundef %25) #4
  %mul = mul i32 %call38, 1000000
  %mul39 = shl nuw nsw i32 %div, 1
  %26 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %temp, align 4
  %mul42 = mul i32 %mul39, %27
  %div43 = udiv i32 %mul, %mul42
  br label %if.end44

if.end44:                                         ; preds = %if.then37, %if.end.if.end44_crit_edge, %entry.if.end44_crit_edge
  %cval.0 = phi i32 [ %div43, %if.then37 ], [ 0, %if.end.if.end44_crit_edge ], [ 0, %entry.if.end44_crit_edge ]
  br i1 %cmp7, label %if.end112.thread, label %if.else

if.end112.thread:                                 ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  %mul47 = mul i32 %cval.0, 100
  %ptfv_list = getelementptr inbounds %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24
  %28 = ptrtoint ptr %ptfv_list to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ptfv_list, align 4
  %add = add i32 %29, %mul47
  store i32 %add, ptr %ptfv_list, align 4
  br label %if.end125

if.else:                                          ; preds = %if.end44
  br i1 %cmp5, label %if.then50, label %if.else59

if.then50:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %ptfv_list52 = getelementptr inbounds %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24
  %30 = ptrtoint ptr %ptfv_list52 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ptfv_list52, align 4
  %arrayidx55 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24, i32 9
  %32 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx55, align 4
  %div56 = udiv i32 %31, %33
  store i32 %div56, ptr %ptfv_list52, align 4
  br label %if.then94

if.else59:                                        ; preds = %if.else
  br i1 %cmp, label %do.body, label %if.else59.if.end218_crit_edge

if.else59.if.end218_crit_edge:                    ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end218

do.body:                                          ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #6
  %mul62 = mul i32 %cval.0, 100
  %ptfv_list63 = getelementptr inbounds %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24
  %34 = ptrtoint ptr %ptfv_list63 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ptfv_list63, align 4
  %arrayidx66 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24, i32 10
  %36 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx66, align 4
  %mul67 = mul i32 %37, %35
  %add68 = add i32 %mul67, %mul62
  %add71 = add i32 %37, 1
  %div72 = udiv i32 %add68, %add71
  store i32 %div72, ptr %ptfv_list63, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_clock_tree_delay.__UNIQUE_ID_ddebug225, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@update_clock_tree_delay, %if.then82)) #4
          to label %if.then94 [label %if.then82], !srcloc !249

if.then82:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 4
  %40 = ptrtoint ptr %ptfv_list63 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ptfv_list63, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @update_clock_tree_delay.__UNIQUE_ID_ddebug225, ptr noundef %39, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, i32 noundef %cval.0, i32 noundef %41) #4
  br label %if.then94

if.then94:                                        ; preds = %if.then82, %do.body, %if.then50
  %current_dram_clktree = getelementptr inbounds %struct.tegra210_emc_timing, ptr %3, i32 0, i32 12
  %42 = ptrtoint ptr %current_dram_clktree to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %current_dram_clktree, align 4
  %ptfv_list96 = getelementptr inbounds %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24
  %44 = ptrtoint ptr %ptfv_list96 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ptfv_list96, align 4
  %div98 = udiv i32 %45, 100
  %sub = sub i32 %43, %div98
  %46 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  %mul101 = shl nuw nsw i32 %div4, 7
  %mul102 = mul i32 %mul101, %46
  %div103 = udiv i32 %mul102, 1000000
  %tree_margin = getelementptr inbounds %struct.tegra210_emc_timing, ptr %3, i32 0, i32 14
  %47 = ptrtoint ptr %tree_margin to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tree_margin, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div103, i32 %48)
  %cmp104 = icmp ugt i32 %div103, %48
  br i1 %cmp104, label %if.then105, label %if.then94.if.end112_crit_edge

if.then94.if.end112_crit_edge:                    ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end112

if.then105:                                       ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #6
  %49 = ptrtoint ptr %current_dram_clktree to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %div98, ptr %current_dram_clktree, align 4
  br label %if.end112

if.end112:                                        ; preds = %if.then105, %if.then94.if.end112_crit_edge
  br i1 %cmp, label %if.end112.if.end125_crit_edge, label %if.else133.thread1409

if.end112.if.end125_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end125

if.end125:                                        ; preds = %if.end112.if.end125_crit_edge, %if.end112.thread
  %adel.01333 = phi i32 [ 0, %if.end112.thread ], [ %46, %if.end112.if.end125_crit_edge ]
  %run_clocks117 = getelementptr inbounds %struct.tegra210_emc_timing, ptr %1, i32 0, i32 13
  %50 = ptrtoint ptr %run_clocks117 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %run_clocks117, align 4
  %call118 = tail call i32 @tegra210_emc_actual_osc_clocks(i32 noundef %51) #4
  %mul119 = mul i32 %call118, 1000000
  %mul120 = shl nuw nsw i32 %div, 1
  %52 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %8, align 4
  %mul123 = mul i32 %mul120, %53
  %div124 = udiv i32 %mul119, %mul123
  br i1 %cmp7, label %if.then127, label %if.else133

if.then127:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #6
  %mul129 = mul i32 %div124, 100
  %arrayidx131 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24, i32 1
  %54 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx131, align 4
  %add132 = add i32 %55, %mul129
  store i32 %add132, ptr %arrayidx131, align 4
  br label %if.end218

if.else133:                                       ; preds = %if.end125
  br i1 %cmp5, label %if.else133.if.then135_crit_edge, label %if.else144

if.else133.if.then135_crit_edge:                  ; preds = %if.else133
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then135

if.else133.thread1409:                            ; preds = %if.end112
  br i1 %cmp5, label %if.else133.thread1409.if.then135_crit_edge, label %if.else133.thread1409.if.end218_crit_edge

if.else133.thread1409.if.end218_crit_edge:        ; preds = %if.else133.thread1409
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end218

if.else133.thread1409.if.then135_crit_edge:       ; preds = %if.else133.thread1409
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then135

if.then135:                                       ; preds = %if.else133.thread1409.if.then135_crit_edge, %if.else133.if.then135_crit_edge
  %adel.0133413381413 = phi i32 [ %46, %if.else133.thread1409.if.then135_crit_edge ], [ %adel.01333, %if.else133.if.then135_crit_edge ]
  %cval.113401412 = phi i32 [ %cval.0, %if.else133.thread1409.if.then135_crit_edge ], [ %div124, %if.else133.if.then135_crit_edge ]
  %arrayidx138 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24, i32 1
  %56 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx138, align 4
  %arrayidx140 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24, i32 9
  %58 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx140, align 4
  %div141 = udiv i32 %57, %59
  store i32 %div141, ptr %arrayidx138, align 4
  br label %if.then190

if.else144:                                       ; preds = %if.else133
  br i1 %cmp, label %do.body147, label %if.else144.if.end218_crit_edge

if.else144.if.end218_crit_edge:                   ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end218

do.body147:                                       ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #6
  %mul150 = mul i32 %div124, 100
  %arrayidx152 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24, i32 1
  %60 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx152, align 4
  %arrayidx154 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24, i32 10
  %62 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx154, align 4
  %mul155 = mul i32 %63, %61
  %add156 = add i32 %mul155, %mul150
  %add159 = add i32 %63, 1
  %div160 = udiv i32 %add156, %add159
  store i32 %div160, ptr %arrayidx152, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_clock_tree_delay.__UNIQUE_ID_ddebug226, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@update_clock_tree_delay, %if.then175)) #4
          to label %if.then190 [label %if.then175], !srcloc !249

if.then175:                                       ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #6
  %dev176 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %64 = ptrtoint ptr %dev176 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev176, align 4
  %66 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx152, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @update_clock_tree_delay.__UNIQUE_ID_ddebug226, ptr noundef %65, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.67, i32 noundef %div124, i32 noundef %67) #4
  br label %if.then190

if.then190:                                       ; preds = %if.then175, %do.body147, %if.then135
  %adel.0133413381406 = phi i32 [ %adel.01333, %do.body147 ], [ %adel.01333, %if.then175 ], [ %adel.0133413381413, %if.then135 ]
  %cval.113401404 = phi i32 [ %div124, %do.body147 ], [ %div124, %if.then175 ], [ %cval.113401412, %if.then135 ]
  %arrayidx192 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 12, i32 1
  %68 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx192, align 4
  %arrayidx194 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24, i32 1
  %70 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx194, align 4
  %div195 = udiv i32 %71, 100
  %sub196 = sub i32 %69, %div195
  %72 = tail call i32 @llvm.abs.i32(i32 %sub196, i1 false)
  %73 = tail call i32 @llvm.smax.i32(i32 %72, i32 %adel.0133413381406)
  %mul206 = shl nuw nsw i32 %div4, 7
  %mul207 = mul i32 %mul206, %72
  %div208 = udiv i32 %mul207, 1000000
  %tree_margin209 = getelementptr inbounds %struct.tegra210_emc_timing, ptr %3, i32 0, i32 14
  %74 = ptrtoint ptr %tree_margin209 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tree_margin209, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div208, i32 %75)
  %cmp210 = icmp ugt i32 %div208, %75
  br i1 %cmp210, label %if.then211, label %if.then190.if.end218_crit_edge

if.then190.if.end218_crit_edge:                   ; preds = %if.then190
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end218

if.then211:                                       ; preds = %if.then190
  call void @__sanitizer_cov_trace_pc() #6
  %76 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %div195, ptr %arrayidx192, align 4
  br label %if.end218

if.end218:                                        ; preds = %if.then211, %if.then190.if.end218_crit_edge, %if.else144.if.end218_crit_edge, %if.else133.thread1409.if.end218_crit_edge, %if.then127, %if.else59.if.end218_crit_edge
  %cval.11342 = phi i32 [ %cval.113401404, %if.then211 ], [ %cval.113401404, %if.then190.if.end218_crit_edge ], [ %div124, %if.then127 ], [ %div124, %if.else144.if.end218_crit_edge ], [ %cval.0, %if.else59.if.end218_crit_edge ], [ %cval.0, %if.else133.thread1409.if.end218_crit_edge ]
  %adel.2 = phi i32 [ %73, %if.then211 ], [ %73, %if.then190.if.end218_crit_edge ], [ %adel.01333, %if.then127 ], [ %adel.01333, %if.else144.if.end218_crit_edge ], [ 0, %if.else59.if.end218_crit_edge ], [ %46, %if.else133.thread1409.if.end218_crit_edge ]
  %num_channels219 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 12
  %77 = ptrtoint ptr %num_channels219 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %num_channels219, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %78)
  %cmp220 = icmp ugt i32 %78, 1
  br i1 %cmp220, label %if.then221, label %if.end218.if.end434_crit_edge

if.end218.if.end434_crit_edge:                    ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end434

if.then221:                                       ; preds = %if.end218
  %79 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %type, label %if.then221.if.end234_crit_edge [
    i32 14, label %if.then221.if.then225_crit_edge
    i32 10, label %if.then221.if.then225_crit_edge1471
  ]

if.then221.if.then225_crit_edge1471:              ; preds = %if.then221
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then225

if.then221.if.then225_crit_edge:                  ; preds = %if.then221
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then225

if.then221.if.end234_crit_edge:                   ; preds = %if.then221
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end234

if.then225:                                       ; preds = %if.then221.if.then225_crit_edge, %if.then221.if.then225_crit_edge1471
  %run_clocks226 = getelementptr inbounds %struct.tegra210_emc_timing, ptr %1, i32 0, i32 13
  %80 = ptrtoint ptr %run_clocks226 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %run_clocks226, align 4
  %call227 = tail call i32 @tegra210_emc_actual_osc_clocks(i32 noundef %81) #4
  %mul228 = mul i32 %call227, 1000000
  %mul229 = shl nuw nsw i32 %div, 1
  %82 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %9, align 4
  %mul232 = mul i32 %mul229, %83
  %div233 = udiv i32 %mul228, %mul232
  br label %if.end234

if.end234:                                        ; preds = %if.then225, %if.then221.if.end234_crit_edge
  %cval.2 = phi i32 [ %div233, %if.then225 ], [ %cval.11342, %if.then221.if.end234_crit_edge ]
  br i1 %cmp7, label %if.end327.thread, label %if.else242

if.end327.thread:                                 ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #6
  %mul238 = mul i32 %cval.2, 100
  %arrayidx240 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24, i32 4
  %84 = ptrtoint ptr %arrayidx240 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx240, align 4
  %add241 = add i32 %85, %mul238
  store i32 %add241, ptr %arrayidx240, align 4
  br label %if.end340

if.else242:                                       ; preds = %if.end234
  br i1 %cmp5, label %if.then244, label %if.else253

if.then244:                                       ; preds = %if.else242
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx247 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24, i32 4
  %86 = ptrtoint ptr %arrayidx247 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx247, align 4
  %arrayidx249 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24, i32 9
  %88 = ptrtoint ptr %arrayidx249 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx249, align 4
  %div250 = udiv i32 %87, %89
  store i32 %div250, ptr %arrayidx247, align 4
  br label %if.then299

if.else253:                                       ; preds = %if.else242
  br i1 %cmp, label %do.body256, label %if.else253.if.end434_crit_edge

if.else253.if.end434_crit_edge:                   ; preds = %if.else253
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end434

do.body256:                                       ; preds = %if.else253
  call void @__sanitizer_cov_trace_pc() #6
  %mul259 = mul i32 %cval.2, 100
  %arrayidx261 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24, i32 4
  %90 = ptrtoint ptr %arrayidx261 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx261, align 4
  %arrayidx263 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24, i32 10
  %92 = ptrtoint ptr %arrayidx263 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx263, align 4
  %mul264 = mul i32 %93, %91
  %add265 = add i32 %mul264, %mul259
  %add268 = add i32 %93, 1
  %div269 = udiv i32 %add265, %add268
  store i32 %div269, ptr %arrayidx261, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_clock_tree_delay.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@update_clock_tree_delay, %if.then284)) #4
          to label %if.then299 [label %if.then284], !srcloc !249

if.then284:                                       ; preds = %do.body256
  call void @__sanitizer_cov_trace_pc() #6
  %dev285 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %94 = ptrtoint ptr %dev285 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev285, align 4
  %96 = ptrtoint ptr %arrayidx261 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx261, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @update_clock_tree_delay.__UNIQUE_ID_ddebug227, ptr noundef %95, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.68, i32 noundef %cval.2, i32 noundef %97) #4
  br label %if.then299

if.then299:                                       ; preds = %if.then284, %do.body256, %if.then244
  %arrayidx301 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 12, i32 4
  %98 = ptrtoint ptr %arrayidx301 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx301, align 4
  %arrayidx303 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24, i32 4
  %100 = ptrtoint ptr %arrayidx303 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx303, align 4
  %div304 = udiv i32 %101, 100
  %sub305 = sub i32 %99, %div304
  %102 = tail call i32 @llvm.abs.i32(i32 %sub305, i1 false)
  %103 = tail call i32 @llvm.smax.i32(i32 %102, i32 %adel.2)
  %mul315 = shl nuw nsw i32 %div4, 7
  %mul316 = mul i32 %mul315, %102
  %div317 = udiv i32 %mul316, 1000000
  %tree_margin318 = getelementptr inbounds %struct.tegra210_emc_timing, ptr %3, i32 0, i32 14
  %104 = ptrtoint ptr %tree_margin318 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %tree_margin318, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div317, i32 %105)
  %cmp319 = icmp ugt i32 %div317, %105
  br i1 %cmp319, label %if.then320, label %if.then299.if.end327_crit_edge

if.then299.if.end327_crit_edge:                   ; preds = %if.then299
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end327

if.then320:                                       ; preds = %if.then299
  call void @__sanitizer_cov_trace_pc() #6
  %106 = ptrtoint ptr %arrayidx301 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %div304, ptr %arrayidx301, align 4
  br label %if.end327

if.end327:                                        ; preds = %if.then320, %if.then299.if.end327_crit_edge
  br i1 %cmp, label %if.end327.if.end340_crit_edge, label %if.else348.thread1427

if.end327.if.end340_crit_edge:                    ; preds = %if.end327
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end340

if.end340:                                        ; preds = %if.end327.if.end340_crit_edge, %if.end327.thread
  %adel.41346 = phi i32 [ %adel.2, %if.end327.thread ], [ %103, %if.end327.if.end340_crit_edge ]
  %run_clocks332 = getelementptr inbounds %struct.tegra210_emc_timing, ptr %1, i32 0, i32 13
  %107 = ptrtoint ptr %run_clocks332 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %run_clocks332, align 4
  %call333 = tail call i32 @tegra210_emc_actual_osc_clocks(i32 noundef %108) #4
  %mul334 = mul i32 %call333, 1000000
  %mul335 = shl nuw nsw i32 %div, 1
  %109 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %10, align 4
  %mul338 = mul i32 %mul335, %110
  %div339 = udiv i32 %mul334, %mul338
  br i1 %cmp7, label %if.then342, label %if.else348

if.then342:                                       ; preds = %if.end340
  call void @__sanitizer_cov_trace_pc() #6
  %mul344 = mul i32 %div339, 100
  %arrayidx346 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24, i32 5
  %111 = ptrtoint ptr %arrayidx346 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx346, align 4
  %add347 = add i32 %112, %mul344
  store i32 %add347, ptr %arrayidx346, align 4
  br label %if.end434

if.else348:                                       ; preds = %if.end340
  br i1 %cmp5, label %if.else348.if.then350_crit_edge, label %if.else359

if.else348.if.then350_crit_edge:                  ; preds = %if.else348
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then350

if.else348.thread1427:                            ; preds = %if.end327
  br i1 %cmp5, label %if.else348.thread1427.if.then350_crit_edge, label %if.else348.thread1427.if.end434_crit_edge

if.else348.thread1427.if.end434_crit_edge:        ; preds = %if.else348.thread1427
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end434

if.else348.thread1427.if.then350_crit_edge:       ; preds = %if.else348.thread1427
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then350

if.then350:                                       ; preds = %if.else348.thread1427.if.then350_crit_edge, %if.else348.if.then350_crit_edge
  %adel.4134713511431 = phi i32 [ %103, %if.else348.thread1427.if.then350_crit_edge ], [ %adel.41346, %if.else348.if.then350_crit_edge ]
  %cval.313531430 = phi i32 [ %cval.2, %if.else348.thread1427.if.then350_crit_edge ], [ %div339, %if.else348.if.then350_crit_edge ]
  %arrayidx353 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24, i32 5
  %113 = ptrtoint ptr %arrayidx353 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx353, align 4
  %arrayidx355 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24, i32 9
  %115 = ptrtoint ptr %arrayidx355 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx355, align 4
  %div356 = udiv i32 %114, %116
  store i32 %div356, ptr %arrayidx353, align 4
  br label %if.then405

if.else359:                                       ; preds = %if.else348
  br i1 %cmp, label %do.body362, label %if.else359.if.end434_crit_edge

if.else359.if.end434_crit_edge:                   ; preds = %if.else359
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end434

do.body362:                                       ; preds = %if.else359
  call void @__sanitizer_cov_trace_pc() #6
  %mul365 = mul i32 %div339, 100
  %arrayidx367 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24, i32 5
  %117 = ptrtoint ptr %arrayidx367 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx367, align 4
  %arrayidx369 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24, i32 10
  %119 = ptrtoint ptr %arrayidx369 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx369, align 4
  %mul370 = mul i32 %120, %118
  %add371 = add i32 %mul370, %mul365
  %add374 = add i32 %120, 1
  %div375 = udiv i32 %add371, %add374
  store i32 %div375, ptr %arrayidx367, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_clock_tree_delay.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@update_clock_tree_delay, %if.then390)) #4
          to label %if.then405 [label %if.then390], !srcloc !249

if.then390:                                       ; preds = %do.body362
  call void @__sanitizer_cov_trace_pc() #6
  %dev391 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %121 = ptrtoint ptr %dev391 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dev391, align 4
  %123 = ptrtoint ptr %arrayidx367 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx367, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @update_clock_tree_delay.__UNIQUE_ID_ddebug228, ptr noundef %122, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.69, i32 noundef %div339, i32 noundef %124) #4
  br label %if.then405

if.then405:                                       ; preds = %if.then390, %do.body362, %if.then350
  %adel.4134713511424 = phi i32 [ %adel.41346, %do.body362 ], [ %adel.41346, %if.then390 ], [ %adel.4134713511431, %if.then350 ]
  %cval.313531422 = phi i32 [ %div339, %do.body362 ], [ %div339, %if.then390 ], [ %cval.313531430, %if.then350 ]
  %arrayidx407 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 12, i32 5
  %125 = ptrtoint ptr %arrayidx407 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx407, align 4
  %arrayidx409 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24, i32 5
  %127 = ptrtoint ptr %arrayidx409 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx409, align 4
  %div410 = udiv i32 %128, 100
  %sub411 = sub i32 %126, %div410
  %129 = tail call i32 @llvm.abs.i32(i32 %sub411, i1 false)
  %130 = tail call i32 @llvm.smax.i32(i32 %129, i32 %adel.4134713511424)
  %mul421 = shl nuw nsw i32 %div4, 7
  %mul422 = mul i32 %mul421, %129
  %div423 = udiv i32 %mul422, 1000000
  %tree_margin424 = getelementptr inbounds %struct.tegra210_emc_timing, ptr %3, i32 0, i32 14
  %131 = ptrtoint ptr %tree_margin424 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %tree_margin424, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div423, i32 %132)
  %cmp425 = icmp ugt i32 %div423, %132
  br i1 %cmp425, label %if.then426, label %if.then405.if.end434_crit_edge

if.then405.if.end434_crit_edge:                   ; preds = %if.then405
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end434

if.then426:                                       ; preds = %if.then405
  call void @__sanitizer_cov_trace_pc() #6
  %133 = ptrtoint ptr %arrayidx407 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %div410, ptr %arrayidx407, align 4
  br label %if.end434

if.end434:                                        ; preds = %if.then426, %if.then405.if.end434_crit_edge, %if.else359.if.end434_crit_edge, %if.else348.thread1427.if.end434_crit_edge, %if.then342, %if.else253.if.end434_crit_edge, %if.end218.if.end434_crit_edge
  %cval.4 = phi i32 [ %cval.313531422, %if.then426 ], [ %cval.313531422, %if.then405.if.end434_crit_edge ], [ %cval.11342, %if.end218.if.end434_crit_edge ], [ %div339, %if.then342 ], [ %div339, %if.else359.if.end434_crit_edge ], [ %cval.2, %if.else253.if.end434_crit_edge ], [ %cval.2, %if.else348.thread1427.if.end434_crit_edge ]
  %adel.6 = phi i32 [ %130, %if.then426 ], [ %130, %if.then405.if.end434_crit_edge ], [ %adel.2, %if.end218.if.end434_crit_edge ], [ %adel.41346, %if.then342 ], [ %adel.41346, %if.else359.if.end434_crit_edge ], [ %adel.2, %if.else253.if.end434_crit_edge ], [ %103, %if.else348.thread1427.if.end434_crit_edge ]
  %num_devices = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 13
  %134 = ptrtoint ptr %num_devices to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %num_devices, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %135)
  %cmp435 = icmp ult i32 %135, 2
  br i1 %cmp435, label %if.end434.done_crit_edge, label %if.end437

if.end434.done_crit_edge:                         ; preds = %if.end434
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

if.end437:                                        ; preds = %if.end434
  %136 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %136, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %type, label %if.end437.if.end491_crit_edge [
    i32 14, label %if.end437.if.then441_crit_edge
    i32 10, label %if.end437.if.then441_crit_edge1472
  ]

if.end437.if.then441_crit_edge1472:               ; preds = %if.end437
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then441

if.end437.if.then441_crit_edge:                   ; preds = %if.end437
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then441

if.end437.if.end491_crit_edge:                    ; preds = %if.end437
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end491

if.then441:                                       ; preds = %if.end437.if.then441_crit_edge, %if.end437.if.then441_crit_edge1472
  %call442 = tail call i32 @tegra210_emc_mrr_read(ptr noundef %emc, i32 noundef 1, i32 noundef 19) #4
  %137 = ptrtoint ptr %num_channels219 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %num_channels219, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %cmp4451390.not = icmp eq i32 %138, 0
  br i1 %cmp4451390.not, label %if.then441.for.end458_crit_edge, label %if.then441.for.body446_crit_edge

if.then441.for.body446_crit_edge:                 ; preds = %if.then441
  br label %for.body446

if.then441.for.end458_crit_edge:                  ; preds = %if.then441
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end458

for.body446:                                      ; preds = %for.body446.for.body446_crit_edge, %if.then441.for.body446_crit_edge
  %value.21392 = phi i32 [ %shr455, %for.body446.for.body446_crit_edge ], [ %call442, %if.then441.for.body446_crit_edge ]
  %i.21391 = phi i32 [ %inc457, %for.body446.for.body446_crit_edge ], [ 0, %if.then441.for.body446_crit_edge ]
  %and447 = shl i32 %value.21392, 8
  %shl448 = and i32 %and447, 65280
  %arrayidx449 = getelementptr [2 x [2 x i32]], ptr %temp, i32 0, i32 %i.21391
  %139 = ptrtoint ptr %arrayidx449 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %shl448, ptr %arrayidx449, align 4
  %and451 = and i32 %value.21392, 65280
  %arrayidx454 = getelementptr [2 x [2 x i32]], ptr %temp, i32 0, i32 %i.21391, i32 1
  %140 = ptrtoint ptr %arrayidx454 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %and451, ptr %arrayidx454, align 4
  %shr455 = lshr i32 %value.21392, 16
  %inc457 = add nuw i32 %i.21391, 1
  %exitcond1397.not = icmp eq i32 %inc457, %138
  br i1 %exitcond1397.not, label %for.body446.for.end458_crit_edge, label %for.body446.for.body446_crit_edge

for.body446.for.body446_crit_edge:                ; preds = %for.body446
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body446

for.body446.for.end458_crit_edge:                 ; preds = %for.body446
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end458

for.end458:                                       ; preds = %for.body446.for.end458_crit_edge, %if.then441.for.end458_crit_edge
  %call459 = tail call i32 @tegra210_emc_mrr_read(ptr noundef %emc, i32 noundef 2, i32 noundef 18) #4
  %141 = ptrtoint ptr %num_channels219 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %num_channels219, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %cmp4621393.not = icmp eq i32 %142, 0
  br i1 %cmp4621393.not, label %for.end458.if.end478_crit_edge, label %for.end458.for.body463_crit_edge

for.end458.for.body463_crit_edge:                 ; preds = %for.end458
  br label %for.body463

for.end458.if.end478_crit_edge:                   ; preds = %for.end458
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end478

for.body463:                                      ; preds = %for.body463.for.body463_crit_edge, %for.end458.for.body463_crit_edge
  %value.31395 = phi i32 [ %shr474, %for.body463.for.body463_crit_edge ], [ %call459, %for.end458.for.body463_crit_edge ]
  %i.31394 = phi i32 [ %inc476, %for.body463.for.body463_crit_edge ], [ 0, %for.end458.for.body463_crit_edge ]
  %and464 = and i32 %value.31395, 255
  %arrayidx466 = getelementptr [2 x [2 x i32]], ptr %temp, i32 0, i32 %i.31394
  %143 = ptrtoint ptr %arrayidx466 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %arrayidx466, align 4
  %or468 = or i32 %144, %and464
  store i32 %or468, ptr %arrayidx466, align 4
  %and469 = lshr i32 %value.31395, 8
  %shr470 = and i32 %and469, 255
  %arrayidx472 = getelementptr [2 x [2 x i32]], ptr %temp, i32 0, i32 %i.31394, i32 1
  %145 = ptrtoint ptr %arrayidx472 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %arrayidx472, align 4
  %or473 = or i32 %146, %shr470
  store i32 %or473, ptr %arrayidx472, align 4
  %shr474 = lshr i32 %value.31395, 16
  %inc476 = add nuw i32 %i.31394, 1
  %exitcond1398.not = icmp eq i32 %inc476, %142
  br i1 %exitcond1398.not, label %for.body463.if.end478_crit_edge, label %for.body463.for.body463_crit_edge

for.body463.for.body463_crit_edge:                ; preds = %for.body463
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body463

for.body463.if.end478_crit_edge:                  ; preds = %for.body463
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end478

if.end478:                                        ; preds = %for.body463.if.end478_crit_edge, %for.end458.if.end478_crit_edge
  %147 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %147, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %type, label %if.end478.if.end491_crit_edge [
    i32 14, label %if.end478.if.then482_crit_edge
    i32 10, label %if.end478.if.then482_crit_edge1473
  ]

if.end478.if.then482_crit_edge1473:               ; preds = %if.end478
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then482

if.end478.if.then482_crit_edge:                   ; preds = %if.end478
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then482

if.end478.if.end491_crit_edge:                    ; preds = %if.end478
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end491

if.then482:                                       ; preds = %if.end478.if.then482_crit_edge, %if.end478.if.then482_crit_edge1473
  %run_clocks483 = getelementptr inbounds %struct.tegra210_emc_timing, ptr %1, i32 0, i32 13
  %148 = ptrtoint ptr %run_clocks483 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %run_clocks483, align 4
  %call484 = tail call i32 @tegra210_emc_actual_osc_clocks(i32 noundef %149) #4
  %mul485 = mul i32 %call484, 1000000
  %mul486 = shl nuw nsw i32 %div, 1
  %150 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %temp, align 4
  %mul489 = mul i32 %mul486, %151
  %div490 = udiv i32 %mul485, %mul489
  br label %if.end491

if.end491:                                        ; preds = %if.then482, %if.end478.if.end491_crit_edge, %if.end437.if.end491_crit_edge
  %cval.5 = phi i32 [ %div490, %if.then482 ], [ %cval.4, %if.end478.if.end491_crit_edge ], [ %cval.4, %if.end437.if.end491_crit_edge ]
  br i1 %cmp7, label %if.end584.thread, label %if.else499

if.end584.thread:                                 ; preds = %if.end491
  call void @__sanitizer_cov_trace_pc() #6
  %mul495 = mul i32 %cval.5, 100
  %arrayidx497 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24, i32 2
  %152 = ptrtoint ptr %arrayidx497 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx497, align 4
  %add498 = add i32 %153, %mul495
  store i32 %add498, ptr %arrayidx497, align 4
  br label %if.end597

if.else499:                                       ; preds = %if.end491
  br i1 %cmp5, label %if.then501, label %if.else510

if.then501:                                       ; preds = %if.else499
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx504 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24, i32 2
  %154 = ptrtoint ptr %arrayidx504 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx504, align 4
  %arrayidx506 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24, i32 9
  %156 = ptrtoint ptr %arrayidx506 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx506, align 4
  %div507 = udiv i32 %155, %157
  store i32 %div507, ptr %arrayidx504, align 4
  br label %if.then556

if.else510:                                       ; preds = %if.else499
  br i1 %cmp, label %do.body513, label %if.else510.if.end690_crit_edge

if.else510.if.end690_crit_edge:                   ; preds = %if.else510
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end690

do.body513:                                       ; preds = %if.else510
  call void @__sanitizer_cov_trace_pc() #6
  %mul516 = mul i32 %cval.5, 100
  %arrayidx518 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24, i32 2
  %158 = ptrtoint ptr %arrayidx518 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx518, align 4
  %arrayidx520 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24, i32 10
  %160 = ptrtoint ptr %arrayidx520 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx520, align 4
  %mul521 = mul i32 %161, %159
  %add522 = add i32 %mul521, %mul516
  %add525 = add i32 %161, 1
  %div526 = udiv i32 %add522, %add525
  store i32 %div526, ptr %arrayidx518, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_clock_tree_delay.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@update_clock_tree_delay, %if.then541)) #4
          to label %if.then556 [label %if.then541], !srcloc !249

if.then541:                                       ; preds = %do.body513
  call void @__sanitizer_cov_trace_pc() #6
  %dev542 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %162 = ptrtoint ptr %dev542 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %dev542, align 4
  %164 = ptrtoint ptr %arrayidx518 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %arrayidx518, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @update_clock_tree_delay.__UNIQUE_ID_ddebug229, ptr noundef %163, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.70, i32 noundef %cval.5, i32 noundef %165) #4
  br label %if.then556

if.then556:                                       ; preds = %if.then541, %do.body513, %if.then501
  %arrayidx558 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 12, i32 2
  %166 = ptrtoint ptr %arrayidx558 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %arrayidx558, align 4
  %arrayidx560 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24, i32 2
  %168 = ptrtoint ptr %arrayidx560 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %arrayidx560, align 4
  %div561 = udiv i32 %169, 100
  %sub562 = sub i32 %167, %div561
  %170 = tail call i32 @llvm.abs.i32(i32 %sub562, i1 false)
  %171 = tail call i32 @llvm.smax.i32(i32 %170, i32 %adel.6)
  %mul572 = shl nuw nsw i32 %div4, 7
  %mul573 = mul i32 %mul572, %170
  %div574 = udiv i32 %mul573, 1000000
  %tree_margin575 = getelementptr inbounds %struct.tegra210_emc_timing, ptr %3, i32 0, i32 14
  %172 = ptrtoint ptr %tree_margin575 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %tree_margin575, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div574, i32 %173)
  %cmp576 = icmp ugt i32 %div574, %173
  br i1 %cmp576, label %if.then577, label %if.then556.if.end584_crit_edge

if.then556.if.end584_crit_edge:                   ; preds = %if.then556
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end584

if.then577:                                       ; preds = %if.then556
  call void @__sanitizer_cov_trace_pc() #6
  %174 = ptrtoint ptr %arrayidx558 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %div561, ptr %arrayidx558, align 4
  br label %if.end584

if.end584:                                        ; preds = %if.then577, %if.then556.if.end584_crit_edge
  br i1 %cmp, label %if.end584.if.end597_crit_edge, label %if.else605.thread1445

if.end584.if.end597_crit_edge:                    ; preds = %if.end584
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end597

if.end597:                                        ; preds = %if.end584.if.end597_crit_edge, %if.end584.thread
  %adel.81358 = phi i32 [ %adel.6, %if.end584.thread ], [ %171, %if.end584.if.end597_crit_edge ]
  %run_clocks589 = getelementptr inbounds %struct.tegra210_emc_timing, ptr %1, i32 0, i32 13
  %175 = ptrtoint ptr %run_clocks589 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %run_clocks589, align 4
  %call590 = tail call i32 @tegra210_emc_actual_osc_clocks(i32 noundef %176) #4
  %mul591 = mul i32 %call590, 1000000
  %mul592 = shl nuw nsw i32 %div, 1
  %177 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %8, align 4
  %mul595 = mul i32 %mul592, %178
  %div596 = udiv i32 %mul591, %mul595
  br i1 %cmp7, label %if.then599, label %if.else605

if.then599:                                       ; preds = %if.end597
  call void @__sanitizer_cov_trace_pc() #6
  %mul601 = mul i32 %div596, 100
  %arrayidx603 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24, i32 3
  %179 = ptrtoint ptr %arrayidx603 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %arrayidx603, align 4
  %add604 = add i32 %180, %mul601
  store i32 %add604, ptr %arrayidx603, align 4
  br label %if.end690

if.else605:                                       ; preds = %if.end597
  br i1 %cmp5, label %if.else605.if.then607_crit_edge, label %if.else616

if.else605.if.then607_crit_edge:                  ; preds = %if.else605
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then607

if.else605.thread1445:                            ; preds = %if.end584
  br i1 %cmp5, label %if.else605.thread1445.if.then607_crit_edge, label %if.else605.thread1445.if.end690_crit_edge

if.else605.thread1445.if.end690_crit_edge:        ; preds = %if.else605.thread1445
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end690

if.else605.thread1445.if.then607_crit_edge:       ; preds = %if.else605.thread1445
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then607

if.then607:                                       ; preds = %if.else605.thread1445.if.then607_crit_edge, %if.else605.if.then607_crit_edge
  %adel.8135913631449 = phi i32 [ %171, %if.else605.thread1445.if.then607_crit_edge ], [ %adel.81358, %if.else605.if.then607_crit_edge ]
  %cval.613651448 = phi i32 [ %cval.5, %if.else605.thread1445.if.then607_crit_edge ], [ %div596, %if.else605.if.then607_crit_edge ]
  %arrayidx610 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24, i32 3
  %181 = ptrtoint ptr %arrayidx610 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %arrayidx610, align 4
  %arrayidx612 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24, i32 9
  %183 = ptrtoint ptr %arrayidx612 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %arrayidx612, align 4
  %div613 = udiv i32 %182, %184
  store i32 %div613, ptr %arrayidx610, align 4
  br label %if.then662

if.else616:                                       ; preds = %if.else605
  br i1 %cmp, label %do.body619, label %if.else616.if.end690_crit_edge

if.else616.if.end690_crit_edge:                   ; preds = %if.else616
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end690

do.body619:                                       ; preds = %if.else616
  call void @__sanitizer_cov_trace_pc() #6
  %mul622 = mul i32 %div596, 100
  %arrayidx624 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24, i32 3
  %185 = ptrtoint ptr %arrayidx624 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %arrayidx624, align 4
  %arrayidx626 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24, i32 10
  %187 = ptrtoint ptr %arrayidx626 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %arrayidx626, align 4
  %mul627 = mul i32 %188, %186
  %add628 = add i32 %mul627, %mul622
  %add631 = add i32 %188, 1
  %div632 = udiv i32 %add628, %add631
  store i32 %div632, ptr %arrayidx624, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_clock_tree_delay.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@update_clock_tree_delay, %if.then647)) #4
          to label %if.then662 [label %if.then647], !srcloc !249

if.then647:                                       ; preds = %do.body619
  call void @__sanitizer_cov_trace_pc() #6
  %dev648 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %189 = ptrtoint ptr %dev648 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %dev648, align 4
  %191 = ptrtoint ptr %arrayidx624 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %arrayidx624, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @update_clock_tree_delay.__UNIQUE_ID_ddebug230, ptr noundef %190, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.71, i32 noundef %div596, i32 noundef %192) #4
  br label %if.then662

if.then662:                                       ; preds = %if.then647, %do.body619, %if.then607
  %adel.8135913631442 = phi i32 [ %adel.81358, %do.body619 ], [ %adel.81358, %if.then647 ], [ %adel.8135913631449, %if.then607 ]
  %cval.613651440 = phi i32 [ %div596, %do.body619 ], [ %div596, %if.then647 ], [ %cval.613651448, %if.then607 ]
  %arrayidx664 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 12, i32 3
  %193 = ptrtoint ptr %arrayidx664 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %arrayidx664, align 4
  %arrayidx666 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24, i32 3
  %195 = ptrtoint ptr %arrayidx666 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %arrayidx666, align 4
  %div667 = udiv i32 %196, 100
  %sub668 = sub i32 %194, %div667
  %197 = tail call i32 @llvm.abs.i32(i32 %sub668, i1 false)
  %198 = tail call i32 @llvm.smax.i32(i32 %197, i32 %adel.8135913631442)
  %mul678 = shl nuw nsw i32 %div4, 7
  %mul679 = mul i32 %mul678, %197
  %div680 = udiv i32 %mul679, 1000000
  %tree_margin681 = getelementptr inbounds %struct.tegra210_emc_timing, ptr %3, i32 0, i32 14
  %199 = ptrtoint ptr %tree_margin681 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %tree_margin681, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div680, i32 %200)
  %cmp682 = icmp ugt i32 %div680, %200
  br i1 %cmp682, label %if.then683, label %if.then662.if.end690_crit_edge

if.then662.if.end690_crit_edge:                   ; preds = %if.then662
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end690

if.then683:                                       ; preds = %if.then662
  call void @__sanitizer_cov_trace_pc() #6
  %201 = ptrtoint ptr %arrayidx664 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %div667, ptr %arrayidx664, align 4
  br label %if.end690

if.end690:                                        ; preds = %if.then683, %if.then662.if.end690_crit_edge, %if.else616.if.end690_crit_edge, %if.else605.thread1445.if.end690_crit_edge, %if.then599, %if.else510.if.end690_crit_edge
  %cval.61367 = phi i32 [ %cval.613651440, %if.then683 ], [ %cval.613651440, %if.then662.if.end690_crit_edge ], [ %div596, %if.then599 ], [ %div596, %if.else616.if.end690_crit_edge ], [ %cval.5, %if.else510.if.end690_crit_edge ], [ %cval.5, %if.else605.thread1445.if.end690_crit_edge ]
  %adel.10 = phi i32 [ %198, %if.then683 ], [ %198, %if.then662.if.end690_crit_edge ], [ %adel.81358, %if.then599 ], [ %adel.81358, %if.else616.if.end690_crit_edge ], [ %adel.6, %if.else510.if.end690_crit_edge ], [ %171, %if.else605.thread1445.if.end690_crit_edge ]
  %202 = ptrtoint ptr %num_channels219 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %num_channels219, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %203)
  %cmp692 = icmp ugt i32 %203, 1
  br i1 %cmp692, label %if.then693, label %if.end690.done_crit_edge

if.end690.done_crit_edge:                         ; preds = %if.end690
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

if.then693:                                       ; preds = %if.end690
  %204 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %204, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %type, label %if.then693.if.end706_crit_edge [
    i32 14, label %if.then693.if.then697_crit_edge
    i32 10, label %if.then693.if.then697_crit_edge1474
  ]

if.then693.if.then697_crit_edge1474:              ; preds = %if.then693
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then697

if.then693.if.then697_crit_edge:                  ; preds = %if.then693
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then697

if.then693.if.end706_crit_edge:                   ; preds = %if.then693
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end706

if.then697:                                       ; preds = %if.then693.if.then697_crit_edge, %if.then693.if.then697_crit_edge1474
  %run_clocks698 = getelementptr inbounds %struct.tegra210_emc_timing, ptr %1, i32 0, i32 13
  %205 = ptrtoint ptr %run_clocks698 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %run_clocks698, align 4
  %call699 = tail call i32 @tegra210_emc_actual_osc_clocks(i32 noundef %206) #4
  %mul700 = mul i32 %call699, 1000000
  %mul701 = shl nuw nsw i32 %div, 1
  %207 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %9, align 4
  %mul704 = mul i32 %mul701, %208
  %div705 = udiv i32 %mul700, %mul704
  br label %if.end706

if.end706:                                        ; preds = %if.then697, %if.then693.if.end706_crit_edge
  %cval.7 = phi i32 [ %div705, %if.then697 ], [ %cval.61367, %if.then693.if.end706_crit_edge ]
  br i1 %cmp7, label %if.end799.thread, label %if.else714

if.end799.thread:                                 ; preds = %if.end706
  call void @__sanitizer_cov_trace_pc() #6
  %mul710 = mul i32 %cval.7, 100
  %arrayidx712 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24, i32 6
  %209 = ptrtoint ptr %arrayidx712 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %arrayidx712, align 4
  %add713 = add i32 %210, %mul710
  store i32 %add713, ptr %arrayidx712, align 4
  br label %if.end812

if.else714:                                       ; preds = %if.end706
  br i1 %cmp5, label %if.then716, label %if.else725

if.then716:                                       ; preds = %if.else714
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx719 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24, i32 6
  %211 = ptrtoint ptr %arrayidx719 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %arrayidx719, align 4
  %arrayidx721 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24, i32 9
  %213 = ptrtoint ptr %arrayidx721 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %arrayidx721, align 4
  %div722 = udiv i32 %212, %214
  store i32 %div722, ptr %arrayidx719, align 4
  br label %if.then771

if.else725:                                       ; preds = %if.else714
  br i1 %cmp, label %do.body728, label %if.else725.done_crit_edge

if.else725.done_crit_edge:                        ; preds = %if.else725
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

do.body728:                                       ; preds = %if.else725
  call void @__sanitizer_cov_trace_pc() #6
  %mul731 = mul i32 %cval.7, 100
  %arrayidx733 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24, i32 6
  %215 = ptrtoint ptr %arrayidx733 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %arrayidx733, align 4
  %arrayidx735 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24, i32 10
  %217 = ptrtoint ptr %arrayidx735 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %arrayidx735, align 4
  %mul736 = mul i32 %218, %216
  %add737 = add i32 %mul736, %mul731
  %add740 = add i32 %218, 1
  %div741 = udiv i32 %add737, %add740
  store i32 %div741, ptr %arrayidx733, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_clock_tree_delay.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@update_clock_tree_delay, %if.then756)) #4
          to label %if.then771 [label %if.then756], !srcloc !249

if.then756:                                       ; preds = %do.body728
  call void @__sanitizer_cov_trace_pc() #6
  %dev757 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %219 = ptrtoint ptr %dev757 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %dev757, align 4
  %221 = ptrtoint ptr %arrayidx733 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %arrayidx733, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @update_clock_tree_delay.__UNIQUE_ID_ddebug231, ptr noundef %220, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.72, i32 noundef %cval.7, i32 noundef %222) #4
  br label %if.then771

if.then771:                                       ; preds = %if.then756, %do.body728, %if.then716
  %arrayidx773 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 12, i32 6
  %223 = ptrtoint ptr %arrayidx773 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %arrayidx773, align 4
  %arrayidx775 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24, i32 6
  %225 = ptrtoint ptr %arrayidx775 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %arrayidx775, align 4
  %div776 = udiv i32 %226, 100
  %sub777 = sub i32 %224, %div776
  %227 = tail call i32 @llvm.abs.i32(i32 %sub777, i1 false)
  %228 = tail call i32 @llvm.smax.i32(i32 %227, i32 %adel.10)
  %mul787 = shl nuw nsw i32 %div4, 7
  %mul788 = mul i32 %mul787, %227
  %div789 = udiv i32 %mul788, 1000000
  %tree_margin790 = getelementptr inbounds %struct.tegra210_emc_timing, ptr %3, i32 0, i32 14
  %229 = ptrtoint ptr %tree_margin790 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %tree_margin790, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div789, i32 %230)
  %cmp791 = icmp ugt i32 %div789, %230
  br i1 %cmp791, label %if.then792, label %if.then771.if.end799_crit_edge

if.then771.if.end799_crit_edge:                   ; preds = %if.then771
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end799

if.then792:                                       ; preds = %if.then771
  call void @__sanitizer_cov_trace_pc() #6
  %231 = ptrtoint ptr %arrayidx773 to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %div776, ptr %arrayidx773, align 4
  br label %if.end799

if.end799:                                        ; preds = %if.then792, %if.then771.if.end799_crit_edge
  br i1 %cmp, label %if.end799.if.end812_crit_edge, label %if.else820.thread1462

if.end799.if.end812_crit_edge:                    ; preds = %if.end799
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end812

if.end812:                                        ; preds = %if.end799.if.end812_crit_edge, %if.end799.thread
  %adel.121371 = phi i32 [ %adel.10, %if.end799.thread ], [ %228, %if.end799.if.end812_crit_edge ]
  %run_clocks804 = getelementptr inbounds %struct.tegra210_emc_timing, ptr %1, i32 0, i32 13
  %232 = ptrtoint ptr %run_clocks804 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %run_clocks804, align 4
  %call805 = tail call i32 @tegra210_emc_actual_osc_clocks(i32 noundef %233) #4
  %mul806 = mul i32 %call805, 1000000
  %mul807 = shl nuw nsw i32 %div, 1
  %234 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %10, align 4
  %mul810 = mul i32 %mul807, %235
  %div811 = udiv i32 %mul806, %mul810
  br i1 %cmp7, label %if.then814, label %if.else820

if.then814:                                       ; preds = %if.end812
  call void @__sanitizer_cov_trace_pc() #6
  %mul816 = mul i32 %div811, 100
  %arrayidx818 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24, i32 7
  %236 = ptrtoint ptr %arrayidx818 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %arrayidx818, align 4
  %add819 = add i32 %237, %mul816
  store i32 %add819, ptr %arrayidx818, align 4
  br label %done

if.else820:                                       ; preds = %if.end812
  br i1 %cmp5, label %if.else820.if.then822_crit_edge, label %if.else831

if.else820.if.then822_crit_edge:                  ; preds = %if.else820
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then822

if.else820.thread1462:                            ; preds = %if.end799
  br i1 %cmp5, label %if.else820.thread1462.if.then822_crit_edge, label %if.else820.thread1462.done_crit_edge

if.else820.thread1462.done_crit_edge:             ; preds = %if.else820.thread1462
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

if.else820.thread1462.if.then822_crit_edge:       ; preds = %if.else820.thread1462
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then822

if.then822:                                       ; preds = %if.else820.thread1462.if.then822_crit_edge, %if.else820.if.then822_crit_edge
  %adel.12137213761465 = phi i32 [ %228, %if.else820.thread1462.if.then822_crit_edge ], [ %adel.121371, %if.else820.if.then822_crit_edge ]
  %arrayidx825 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24, i32 7
  %238 = ptrtoint ptr %arrayidx825 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %arrayidx825, align 4
  %arrayidx827 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24, i32 9
  %240 = ptrtoint ptr %arrayidx827 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %arrayidx827, align 4
  %div828 = udiv i32 %239, %241
  store i32 %div828, ptr %arrayidx825, align 4
  br label %if.then877

if.else831:                                       ; preds = %if.else820
  br i1 %cmp, label %do.body834, label %if.else831.done_crit_edge

if.else831.done_crit_edge:                        ; preds = %if.else831
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

do.body834:                                       ; preds = %if.else831
  call void @__sanitizer_cov_trace_pc() #6
  %mul837 = mul i32 %div811, 100
  %arrayidx839 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24, i32 7
  %242 = ptrtoint ptr %arrayidx839 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %arrayidx839, align 4
  %arrayidx841 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24, i32 10
  %244 = ptrtoint ptr %arrayidx841 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %arrayidx841, align 4
  %mul842 = mul i32 %245, %243
  %add843 = add i32 %mul842, %mul837
  %add846 = add i32 %245, 1
  %div847 = udiv i32 %add843, %add846
  store i32 %div847, ptr %arrayidx839, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @update_clock_tree_delay.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@update_clock_tree_delay, %if.then862)) #4
          to label %if.then877 [label %if.then862], !srcloc !249

if.then862:                                       ; preds = %do.body834
  call void @__sanitizer_cov_trace_pc() #6
  %dev863 = getelementptr inbounds %struct.tegra210_emc, ptr %emc, i32 0, i32 1
  %246 = ptrtoint ptr %dev863 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %dev863, align 4
  %248 = ptrtoint ptr %arrayidx839 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %arrayidx839, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @update_clock_tree_delay.__UNIQUE_ID_ddebug232, ptr noundef %247, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.73, i32 noundef %div811, i32 noundef %249) #4
  br label %if.then877

if.then877:                                       ; preds = %if.then862, %do.body834, %if.then822
  %adel.12137213761459 = phi i32 [ %adel.121371, %do.body834 ], [ %adel.121371, %if.then862 ], [ %adel.12137213761465, %if.then822 ]
  %arrayidx879 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 12, i32 7
  %250 = ptrtoint ptr %arrayidx879 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %arrayidx879, align 4
  %arrayidx881 = getelementptr %struct.tegra210_emc_timing, ptr %3, i32 0, i32 24, i32 7
  %252 = ptrtoint ptr %arrayidx881 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %arrayidx881, align 4
  %div882 = udiv i32 %253, 100
  %sub883 = sub i32 %251, %div882
  %254 = tail call i32 @llvm.abs.i32(i32 %sub883, i1 false)
  %255 = tail call i32 @llvm.smax.i32(i32 %254, i32 %adel.12137213761459)
  %mul893 = shl nuw nsw i32 %div4, 7
  %mul894 = mul i32 %mul893, %254
  %div895 = udiv i32 %mul894, 1000000
  %tree_margin896 = getelementptr inbounds %struct.tegra210_emc_timing, ptr %3, i32 0, i32 14
  %256 = ptrtoint ptr %tree_margin896 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %tree_margin896, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div895, i32 %257)
  %cmp897 = icmp ugt i32 %div895, %257
  br i1 %cmp897, label %if.then898, label %if.then877.done_crit_edge

if.then877.done_crit_edge:                        ; preds = %if.then877
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

if.then898:                                       ; preds = %if.then877
  call void @__sanitizer_cov_trace_pc() #6
  %258 = ptrtoint ptr %arrayidx879 to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 %div882, ptr %arrayidx879, align 4
  br label %done

done:                                             ; preds = %if.then898, %if.then877.done_crit_edge, %if.else831.done_crit_edge, %if.else820.thread1462.done_crit_edge, %if.then814, %if.else725.done_crit_edge, %if.end690.done_crit_edge, %if.end434.done_crit_edge
  %adel.14 = phi i32 [ %adel.6, %if.end434.done_crit_edge ], [ %255, %if.then898 ], [ %255, %if.then877.done_crit_edge ], [ %adel.10, %if.end690.done_crit_edge ], [ %adel.121371, %if.then814 ], [ %adel.121371, %if.else831.done_crit_edge ], [ %adel.10, %if.else725.done_crit_edge ], [ %228, %if.else820.thread1462.done_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %temp) #4
  ret i32 %adel.14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra210_emc_mrr_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra210_emc_dll_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.fshl.i16(i16, i16, i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !15, !16, !18, !19, !21, !22, !24, !25, !27, !28, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !75, !76, !78, !79, !81, !82, !84, !85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !105, !107, !108, !110, !112, !113, !115, !117, !118, !120, !122, !124, !126, !127, !129, !131, !132, !134, !136, !137, !139, !140, !142, !143, !145, !146, !148, !149, !151, !152, !154, !155, !157, !158, !160, !161, !163, !164, !166, !167, !169, !170, !172, !173, !175, !176, !178, !179, !181, !182, !184, !185, !187, !188, !190, !191, !193, !194, !196, !197, !199, !200, !202, !203, !205, !206, !208, !209, !210, !211, !213, !214, !216, !217, !219, !220, !222, !223, !225, !226, !228, !229, !231, !232, !234, !236, !237, !238}
!llvm.module.flags = !{!240, !241, !242, !243, !244, !245, !246, !247}
!llvm.ident = !{!248}

!0 = !{ptr @tegra210_emc_r21021, !1, !"tegra210_emc_r21021", i1 false, i1 false}
!1 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 1770, i32 36}
!2 = !{ptr @tegra210_emc_r21021_set_clock.fsp_for_next_freq, !3, !"fsp_for_next_freq", i1 false, i1 false}
!3 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 588, i32 14}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 624, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug235, !5, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 675, i32 2}
!12 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug236, !11, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 677, i32 2}
!15 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug237, !14, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 678, i32 2}
!18 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug238, !17, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 679, i32 2}
!21 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug239, !20, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 680, i32 2}
!24 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug240, !23, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 681, i32 2}
!27 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug241, !26, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 683, i32 2}
!30 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug242, !29, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 685, i32 2}
!33 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug243, !32, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 686, i32 2}
!36 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug244, !35, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 687, i32 2}
!39 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug245, !38, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 693, i32 2}
!42 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug246, !41, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 694, i32 2}
!45 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug247, !44, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 706, i32 2}
!48 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug248, !47, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 717, i32 2}
!51 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug249, !50, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 825, i32 2}
!54 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug250, !53, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 829, i32 3}
!57 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug251, !56, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 831, i32 3}
!60 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug252, !59, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!61 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 833, i32 3}
!63 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug253, !62, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!64 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 841, i32 2}
!66 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug254, !65, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 861, i32 2}
!69 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug255, !68, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!70 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 872, i32 2}
!72 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug256, !71, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!73 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 889, i32 2}
!75 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug263, !74, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!76 = !{ptr @.str.26, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 895, i32 2}
!78 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug264, !77, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!79 = !{ptr @.str.27, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 896, i32 2}
!81 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug265, !80, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!82 = !{ptr @.str.28, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 929, i32 3}
!84 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug270, !83, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!85 = !{ptr @.str.29, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 980, i32 4}
!87 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug271, !86, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!88 = !{ptr @.str.30, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 1002, i32 2}
!90 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug272, !89, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!91 = !{ptr @.str.31, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 1003, i32 2}
!93 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug273, !92, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!94 = !{ptr @.str.32, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 1082, i32 2}
!96 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug274, !95, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!97 = !{ptr @.str.33, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 1108, i32 3}
!99 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug275, !98, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!100 = !{ptr @.str.34, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 1116, i32 2}
!102 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug276, !101, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!103 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug277, !104, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!104 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 1128, i32 3}
!105 = !{ptr @.str.35, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 1135, i32 2}
!107 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug278, !106, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!108 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug279, !109, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!109 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 1155, i32 4}
!110 = !{ptr @.str.36, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 1157, i32 4}
!112 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug280, !111, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!113 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug281, !114, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!114 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 1161, i32 4}
!115 = !{ptr @.str.37, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 1168, i32 2}
!117 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug282, !116, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!118 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug283, !119, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!119 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 1195, i32 4}
!120 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug284, !121, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!121 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 1197, i32 4}
!122 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug285, !123, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!123 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 1201, i32 4}
!124 = !{ptr @.str.38, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 1208, i32 2}
!126 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug286, !125, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!127 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug287, !128, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!128 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 1214, i32 3}
!129 = !{ptr @.str.39, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 1223, i32 3}
!131 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug288, !130, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!132 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug289, !133, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!133 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 1226, i32 4}
!134 = !{ptr @.str.40, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 1239, i32 2}
!136 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug290, !135, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!137 = !{ptr @.str.41, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 1260, i32 2}
!139 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug291, !138, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!140 = !{ptr @.str.42, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 1357, i32 2}
!142 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug292, !141, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!143 = !{ptr @.str.43, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 1371, i32 2}
!145 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug293, !144, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!146 = !{ptr @.str.44, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 1381, i32 2}
!148 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug294, !147, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!149 = !{ptr @.str.45, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 1390, i32 2}
!151 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug295, !150, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!152 = !{ptr @.str.46, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 1407, i32 2}
!154 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug296, !153, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!155 = !{ptr @.str.47, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 1419, i32 2}
!157 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug297, !156, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!158 = !{ptr @.str.48, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 1420, i32 2}
!160 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug298, !159, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!161 = !{ptr @.str.49, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 1422, i32 2}
!163 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug299, !162, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!164 = !{ptr @.str.50, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 1424, i32 2}
!166 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug302, !165, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!167 = !{ptr @.str.51, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 1496, i32 2}
!169 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug309, !168, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!170 = !{ptr @.str.52, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 1505, i32 2}
!172 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug310, !171, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!173 = !{ptr @.str.53, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 1526, i32 2}
!175 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug311, !174, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!176 = !{ptr @.str.54, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 1586, i32 2}
!178 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug312, !177, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!179 = !{ptr @.str.55, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 1600, i32 2}
!181 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug313, !180, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!182 = !{ptr @.str.56, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 1620, i32 2}
!184 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug314, !183, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!185 = !{ptr @.str.57, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 1640, i32 2}
!187 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug315, !186, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!188 = !{ptr @.str.58, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 1662, i32 2}
!190 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug316, !189, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!191 = !{ptr @.str.59, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 1676, i32 2}
!193 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug317, !192, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!194 = !{ptr @.str.60, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 1705, i32 2}
!196 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug318, !195, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!197 = !{ptr @.str.61, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 1718, i32 2}
!199 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug319, !198, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!200 = !{ptr @.str.62, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 1730, i32 2}
!202 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug320, !201, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!203 = !{ptr @.str.63, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 1751, i32 2}
!205 = !{ptr @tegra210_emc_r21021_set_clock.__UNIQUE_ID_ddebug321, !204, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!206 = !{ptr @.str.64, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 165, i32 3}
!208 = !{ptr @.str.65, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @update_clock_tree_delay.__UNIQUE_ID_ddebug225, !207, !"__UNIQUE_ID_ddebug225", i1 false, i1 false}
!210 = !{ptr @.str.66, !207, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @update_clock_tree_delay.__UNIQUE_ID_ddebug226, !212, !"__UNIQUE_ID_ddebug226", i1 false, i1 false}
!212 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 190, i32 3}
!213 = !{ptr @.str.67, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @update_clock_tree_delay.__UNIQUE_ID_ddebug227, !215, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!215 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 218, i32 4}
!216 = !{ptr @.str.68, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @update_clock_tree_delay.__UNIQUE_ID_ddebug228, !218, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!218 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 245, i32 4}
!219 = !{ptr @.str.69, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @update_clock_tree_delay.__UNIQUE_ID_ddebug229, !221, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!221 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 300, i32 3}
!222 = !{ptr @.str.70, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @update_clock_tree_delay.__UNIQUE_ID_ddebug230, !224, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!224 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 327, i32 3}
!225 = !{ptr @.str.71, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @update_clock_tree_delay.__UNIQUE_ID_ddebug231, !227, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!227 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 355, i32 4}
!228 = !{ptr @.str.72, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @update_clock_tree_delay.__UNIQUE_ID_ddebug232, !230, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!230 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 382, i32 4}
!231 = !{ptr @.str.73, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @tegra210_emc_r21021_periodic_compensation.list, !233, !"list", i1 false, i1 false}
!233 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 481, i32 19}
!234 = !{ptr @.str.74, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 498, i32 3}
!236 = !{ptr @.str.75, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @tegra210_emc_r21021_periodic_compensation.__UNIQUE_ID_ddebug233, !235, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!238 = !{ptr @tegra210_emc_r21021_periodic_compensation.__UNIQUE_ID_ddebug234, !239, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!239 = !{!"../drivers/memory/tegra/tegra210-emc-cc-r21021.c", i32 559, i32 5}
!240 = !{i32 1, !"wchar_size", i32 2}
!241 = !{i32 1, !"min_enum_size", i32 4}
!242 = !{i32 8, !"branch-target-enforcement", i32 0}
!243 = !{i32 8, !"sign-return-address", i32 0}
!244 = !{i32 8, !"sign-return-address-all", i32 0}
!245 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!246 = !{i32 7, !"uwtable", i32 1}
!247 = !{i32 7, !"frame-pointer", i32 2}
!248 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!249 = !{i64 2148742040, i64 2148742045, i64 2148742058, i64 2148742102, i64 2148742136, i64 2148742157}
!250 = !{i8 0, i8 2}
!251 = !{i64 1296786}
!252 = !{i64 1296368}
