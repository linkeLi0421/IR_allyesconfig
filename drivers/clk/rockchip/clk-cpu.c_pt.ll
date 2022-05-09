; ModuleID = '/llk/IR_all_yes/drivers/clk/rockchip/clk-cpu.c_pt.bc'
source_filename = "../drivers/clk/rockchip/clk-cpu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.rockchip_cpuclk_reg_data = type { [4 x i32], [4 x i8], [4 x i32], i32, i8, i8, i8, i32 }
%struct.rockchip_cpuclk = type { %struct.clk_hw, ptr, ptr, %struct.notifier_block, i32, ptr, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.clk_notifier_data = type { ptr, i32, i32 }
%struct.rockchip_cpuclk_rate_table = type { i32, [5 x %struct.rockchip_cpuclk_clksel] }
%struct.rockchip_cpuclk_clksel = type { i32, i32 }

@rockchip_clk_register_cpuclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: needs at least two parent clocks\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rockchip_clk_register_cpuclk\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/clk/rockchip/clk-cpu.c\00", [33 x i8] zeroinitializer }, align 32
@rockchip_clk_register_cpuclk._entry_ptr = internal global ptr @rockchip_clk_register_cpuclk._entry, section ".printk_index", align 4
@rockchip_cpuclk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rockchip_cpuclk_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@rockchip_clk_register_cpuclk._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: could not lookup alternate parent: (%d)\0A\00", [49 x i8] zeroinitializer }, align 32
@rockchip_clk_register_cpuclk._entry_ptr.5 = internal global ptr @rockchip_clk_register_cpuclk._entry.3, section ".printk_index", align 4
@rockchip_clk_register_cpuclk._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: could not enable alternate parent\0A\00", [55 x i8] zeroinitializer }, align 32
@rockchip_clk_register_cpuclk._entry_ptr.8 = internal global ptr @rockchip_clk_register_cpuclk._entry.6, section ".printk_index", align 4
@rockchip_clk_register_cpuclk._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: could not lookup parent clock: (%d) %s\0A\00", [50 x i8] zeroinitializer }, align 32
@rockchip_clk_register_cpuclk._entry_ptr.11 = internal global ptr @rockchip_clk_register_cpuclk._entry.9, section ".printk_index", align 4
@rockchip_clk_register_cpuclk._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s: failed to register clock notifier for %s\0A\00", [48 x i8] zeroinitializer }, align 32
@rockchip_clk_register_cpuclk._entry_ptr.14 = internal global ptr @rockchip_clk_register_cpuclk._entry.12, section ".printk_index", align 4
@rockchip_clk_register_cpuclk._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: could not register cpuclk %s\0A\00", [60 x i8] zeroinitializer }, align 32
@rockchip_clk_register_cpuclk._entry_ptr.17 = internal global ptr @rockchip_clk_register_cpuclk._entry.15, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rockchip_cpuclk_notifier_cb.__UNIQUE_ID_ddebug169 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_rockchip\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rockchip_cpuclk_notifier_cb\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: event %lu, old_rate %lu, new_rate: %lu\0A\00", [52 x i8] zeroinitializer }, align 32
@rockchip_cpuclk_pre_rate_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: Invalid rate : %lu for cpuclk\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rockchip_cpuclk_pre_rate_change\00", [32 x i8] zeroinitializer }, align 32
@rockchip_cpuclk_pre_rate_change._entry_ptr = internal global ptr @rockchip_cpuclk_pre_rate_change._entry, section ".printk_index", align 4
@rockchip_cpuclk_pre_rate_change._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014%s: limiting alt-divider %lu to %d\0A\00", [58 x i8] zeroinitializer }, align 32
@rockchip_cpuclk_pre_rate_change._entry_ptr.25 = internal global ptr @rockchip_cpuclk_pre_rate_change._entry.23, section ".printk_index", align 4
@rockchip_cpuclk_pre_rate_change.__UNIQUE_ID_ddebug168 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.22, ptr @.str.2, ptr @.str.26, i8 0, i8 40, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: setting div %lu as alt-rate %lu > old-rate %lu\0A\00", [44 x i8] zeroinitializer }, align 32
@rockchip_cpuclk_post_rate_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.27, ptr @.str.2, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rockchip_cpuclk_post_rate_change\00", [63 x i8] zeroinitializer }, align 32
@rockchip_cpuclk_post_rate_change._entry_ptr = internal global ptr @rockchip_cpuclk_post_rate_change._entry, section ".printk_index", align 4
@rockchip_cpuclk_set_dividers.__UNIQUE_ID_ddebug167 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 0, i8 27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rockchip_cpuclk_set_dividers\00", [35 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: setting reg 0x%x to 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 259, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant [20 x i8] c"rockchip_cpuclk_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 94, i32 29 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 288, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 296, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 303, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 312, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 330, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 237, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 128, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 147, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 159, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 188, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.112 = private constant [34 x i8] c"../drivers/clk/rockchip/clk-cpu.c\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 110, i32 3 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @rockchip_clk_register_cpuclk._entry, ptr @rockchip_clk_register_cpuclk._entry.12, ptr @rockchip_clk_register_cpuclk._entry.15, ptr @rockchip_clk_register_cpuclk._entry.3, ptr @rockchip_clk_register_cpuclk._entry.6, ptr @rockchip_clk_register_cpuclk._entry.9, ptr @rockchip_clk_register_cpuclk._entry_ptr, ptr @rockchip_clk_register_cpuclk._entry_ptr.11, ptr @rockchip_clk_register_cpuclk._entry_ptr.14, ptr @rockchip_clk_register_cpuclk._entry_ptr.17, ptr @rockchip_clk_register_cpuclk._entry_ptr.5, ptr @rockchip_clk_register_cpuclk._entry_ptr.8, ptr @rockchip_cpuclk_post_rate_change._entry, ptr @rockchip_cpuclk_post_rate_change._entry_ptr, ptr @rockchip_cpuclk_pre_rate_change._entry, ptr @rockchip_cpuclk_pre_rate_change._entry.23, ptr @rockchip_cpuclk_pre_rate_change._entry_ptr, ptr @rockchip_cpuclk_pre_rate_change._entry_ptr.25, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @rockchip_cpuclk_ops, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_clk_register_cpuclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_cpuclk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_clk_register_cpuclk._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_clk_register_cpuclk._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_clk_register_cpuclk._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_clk_register_cpuclk._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_clk_register_cpuclk._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_cpuclk_pre_rate_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_cpuclk_pre_rate_change._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_cpuclk_post_rate_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rockchip_clk_register_cpuclk(ptr noundef %name, ptr noundef %parent_names, i8 noundef zeroext %num_parents, ptr noundef %reg_data, ptr noundef %rates, i32 noundef %nrates, ptr noundef %reg_base, ptr noundef %lock) local_unnamed_addr #0 align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #6
  %0 = getelementptr inbounds i8, ptr %init, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 12)
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %num_parents)
  %cmp = icmp ult i8 %num_parents, 2
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 48) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %3 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %name, ptr %init, align 4
  %mux_core_main = getelementptr inbounds %struct.rockchip_cpuclk_reg_data, ptr %reg_data, i32 0, i32 5
  %4 = ptrtoint ptr %mux_core_main to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mux_core_main, align 1
  %idxprom = zext i8 %5 to i32
  %arrayidx = getelementptr ptr, ptr %parent_names, i32 %idxprom
  %parent_names8 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %6 = ptrtoint ptr %parent_names8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %arrayidx, ptr %parent_names8, align 4
  %num_parents9 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %7 = ptrtoint ptr %num_parents9 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %num_parents9, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @rockchip_cpuclk_ops, ptr %ops, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nrates)
  %cmp10 = icmp sgt i32 %nrates, 0
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %or14 = select i1 %cmp10, i32 196, i32 192
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or14, ptr %flags, align 4
  %reg_base15 = getelementptr inbounds %struct.rockchip_cpuclk, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %reg_base15 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %reg_base, ptr %reg_base15, align 8
  %lock16 = getelementptr inbounds %struct.rockchip_cpuclk, ptr %call7.i.i, i32 0, i32 7
  %11 = ptrtoint ptr %lock16 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %lock, ptr %lock16, align 4
  %reg_data17 = getelementptr inbounds %struct.rockchip_cpuclk, ptr %call7.i.i, i32 0, i32 6
  %12 = ptrtoint ptr %reg_data17 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %reg_data, ptr %reg_data17, align 8
  %clk_nb = getelementptr inbounds %struct.rockchip_cpuclk, ptr %call7.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %clk_nb to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @rockchip_cpuclk_notifier_cb, ptr %clk_nb, align 4
  %init18 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %init18 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %init, ptr %init18, align 8
  %mux_core_alt = getelementptr inbounds %struct.rockchip_cpuclk_reg_data, ptr %reg_data, i32 0, i32 4
  %15 = ptrtoint ptr %mux_core_alt to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %mux_core_alt, align 4
  %idxprom19 = zext i8 %16 to i32
  %arrayidx20 = getelementptr ptr, ptr %parent_names, i32 %idxprom19
  %17 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx20, align 4
  %call21 = call ptr @__clk_lookup(ptr noundef %18) #6
  %alt_parent = getelementptr inbounds %struct.rockchip_cpuclk, ptr %call7.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %alt_parent to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call21, ptr %alt_parent, align 4
  %tobool23.not = icmp eq ptr %call21, null
  br i1 %tobool23.not, label %do.end27, label %if.end32

do.end27:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %mux_core_alt to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %mux_core_alt, align 4
  %conv30 = zext i8 %21 to i32
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %conv30) #9
  br label %free_cpuclk

if.end32:                                         ; preds = %if.end6
  %call.i = call i32 @clk_prepare(ptr noundef nonnull %call21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end32.do.end39_crit_edge

if.end32.do.end39_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end39

if.end.i:                                         ; preds = %if.end32
  %call1.i = call i32 @clk_enable(ptr noundef nonnull %call21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end42, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unprepare(ptr noundef nonnull %call21) #6
  br label %do.end39

do.end39:                                         ; preds = %if.then3.i, %if.end32.do.end39_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end32.do.end39_crit_edge ]
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1) #9
  br label %free_cpuclk

if.end42:                                         ; preds = %if.end.i
  %22 = ptrtoint ptr %mux_core_main to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %mux_core_main, align 1
  %idxprom44 = zext i8 %23 to i32
  %arrayidx45 = getelementptr ptr, ptr %parent_names, i32 %idxprom44
  %24 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx45, align 4
  %call46 = call ptr @__clk_lookup(ptr noundef %25) #6
  %tobool47.not = icmp eq ptr %call46, null
  br i1 %tobool47.not, label %do.end51, label %if.end59

do.end51:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %mux_core_main to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %mux_core_main, align 1
  %conv54 = zext i8 %27 to i32
  %arrayidx57 = getelementptr ptr, ptr %parent_names, i32 %conv54
  %28 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx57, align 4
  %call58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef %conv54, ptr noundef %29) #9
  br label %free_alt_parent

if.end59:                                         ; preds = %if.end42
  %call61 = call i32 @clk_notifier_register(ptr noundef nonnull %call46, ptr noundef %clk_nb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end69, label %do.end66

do.end66:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  %call68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, ptr noundef %name) #9
  br label %free_alt_parent

if.end69:                                         ; preds = %if.end59
  br i1 %cmp10, label %if.then72, label %if.end69.if.end78_crit_edge

if.end69.if.end78_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78

if.then72:                                        ; preds = %if.end69
  %rate_count = getelementptr inbounds %struct.rockchip_cpuclk, ptr %call7.i.i, i32 0, i32 4
  %30 = ptrtoint ptr %rate_count to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %nrates, ptr %rate_count, align 8
  %mul = mul i32 %nrates, 44
  %call73 = call ptr @kmemdup(ptr noundef %rates, i32 noundef %mul, i32 noundef 3264) #6
  %rate_table = getelementptr inbounds %struct.rockchip_cpuclk, ptr %call7.i.i, i32 0, i32 5
  %31 = ptrtoint ptr %rate_table to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call73, ptr %rate_table, align 4
  %tobool75.not = icmp eq ptr %call73, null
  br i1 %tobool75.not, label %if.then72.unregister_notifier_crit_edge, label %if.then72.if.end78_crit_edge

if.then72.if.end78_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78

if.then72.unregister_notifier_crit_edge:          ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #8
  br label %unregister_notifier

if.end78:                                         ; preds = %if.then72.if.end78_crit_edge, %if.end69.if.end78_crit_edge
  %call80 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #6
  %cmp.i = icmp ugt ptr %call80, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end85, label %if.end78.cleanup_crit_edge

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end85:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  %call87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, ptr noundef %name) #9
  %32 = ptrtoint ptr %call80 to i32
  %rate_table90 = getelementptr inbounds %struct.rockchip_cpuclk, ptr %call7.i.i, i32 0, i32 5
  %33 = ptrtoint ptr %rate_table90 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rate_table90, align 4
  call void @kfree(ptr noundef %34) #6
  br label %unregister_notifier

unregister_notifier:                              ; preds = %do.end85, %if.then72.unregister_notifier_crit_edge
  %ret.0 = phi i32 [ %32, %do.end85 ], [ -12, %if.then72.unregister_notifier_crit_edge ]
  %call92 = call i32 @clk_notifier_unregister(ptr noundef nonnull %call46, ptr noundef %clk_nb) #6
  br label %free_alt_parent

free_alt_parent:                                  ; preds = %unregister_notifier, %do.end66, %do.end51
  %ret.1 = phi i32 [ %call61, %do.end66 ], [ %ret.0, %unregister_notifier ], [ -22, %do.end51 ]
  %35 = ptrtoint ptr %alt_parent to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %alt_parent, align 4
  call void @clk_disable(ptr noundef %36) #6
  call void @clk_unprepare(ptr noundef %36) #6
  br label %free_cpuclk

free_cpuclk:                                      ; preds = %free_alt_parent, %do.end39, %do.end27
  %ret.2 = phi i32 [ %retval.0.i.ph, %do.end39 ], [ %ret.1, %free_alt_parent ], [ -22, %do.end27 ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  %37 = inttoptr i32 %ret.2 to ptr
  br label %cleanup

cleanup:                                          ; preds = %free_cpuclk, %if.end78.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %37, %free_cpuclk ], [ %call80, %if.end78.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #6
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_cpuclk_notifier_cb(ptr nocapture noundef readonly %nb, i32 noundef %event, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_cpuclk_notifier_cb.__UNIQUE_ID_ddebug169, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_cpuclk_notifier_cb, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !62

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %old_rate = getelementptr inbounds %struct.clk_notifier_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %old_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %old_rate, align 4
  %new_rate = getelementptr inbounds %struct.clk_notifier_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %new_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %new_rate, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rockchip_cpuclk_notifier_cb.__UNIQUE_ID_ddebug169, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.19, i32 noundef %event, i32 noundef %1, i32 noundef %3) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %do.end.if.end10.thread_crit_edge [
    i32 1, label %if.then4
    i32 2, label %if.then7
  ]

do.end.if.end10.thread_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.thread

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call fastcc i32 @rockchip_cpuclk_pre_rate_change(ptr noundef %add.ptr, ptr noundef %data)
  br label %if.end10

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call fastcc i32 @rockchip_cpuclk_post_rate_change(ptr noundef %add.ptr, ptr noundef %data)
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.then4
  %ret.0 = phi i32 [ %call5, %if.then4 ], [ %call8, %if.then7 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool.not.i = icmp eq i32 %ret.0, 0
  %sub.i = sub i32 1, %ret.0
  %or.i = or i32 %sub.i, 32768
  br i1 %tobool.not.i, label %if.end10.if.end10.thread_crit_edge, label %if.end10._crit_edge

if.end10._crit_edge:                              ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %5

if.end10.if.end10.thread_crit_edge:               ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.thread

if.end10.thread:                                  ; preds = %if.end10.if.end10.thread_crit_edge, %do.end.if.end10.thread_crit_edge
  br label %5

5:                                                ; preds = %if.end10.thread, %if.end10._crit_edge
  %6 = phi i32 [ 1, %if.end10.thread ], [ %or.i, %if.end10._crit_edge ]
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_lookup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_unregister(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_cpuclk_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_data1 = getelementptr inbounds %struct.rockchip_cpuclk, ptr %hw, i32 0, i32 6
  %0 = ptrtoint ptr %reg_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_data1, align 4
  %reg_base = getelementptr inbounds %struct.rockchip_cpuclk, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 %5
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #6, !srcloc !63
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %div_core_shift = getelementptr inbounds %struct.rockchip_cpuclk_reg_data, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %div_core_shift to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %div_core_shift, align 4
  %conv = zext i8 %9 to i32
  %shr = lshr i32 %7, %conv
  %div_core_mask = getelementptr inbounds %struct.rockchip_cpuclk_reg_data, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %div_core_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %div_core_mask, align 4
  %and = and i32 %shr, %11
  %add = add i32 %and, 1
  %div = udiv i32 %parent_rate, %add
  ret i32 %div
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rockchip_cpuclk_pre_rate_change(ptr nocapture noundef readonly %cpuclk, ptr nocapture noundef readonly %ndata) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_data1 = getelementptr inbounds %struct.rockchip_cpuclk, ptr %cpuclk, i32 0, i32 6
  %0 = ptrtoint ptr %reg_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_data1, align 4
  %new_rate = getelementptr inbounds %struct.clk_notifier_data, ptr %ndata, i32 0, i32 2
  %2 = ptrtoint ptr %new_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %new_rate, align 4
  %rate_table1.i = getelementptr inbounds %struct.rockchip_cpuclk, ptr %cpuclk, i32 0, i32 5
  %4 = ptrtoint ptr %rate_table1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rate_table1.i, align 4
  %rate_count.i = getelementptr inbounds %struct.rockchip_cpuclk, ptr %cpuclk, i32 0, i32 4
  %6 = ptrtoint ptr %rate_count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rate_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp10.not.i = icmp eq i32 %7, 0
  br i1 %cmp10.not.i, label %entry.do.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.cond.i.do.end_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.rockchip_cpuclk_rate_table, ptr %5, i32 %i.011.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %3)
  %cmp2.i = icmp eq i32 %9, %3
  br i1 %cmp2.i, label %rockchip_get_cpuclk_settings.exit, label %for.cond.i

rockchip_get_cpuclk_settings.exit:                ; preds = %for.body.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %rockchip_get_cpuclk_settings.exit.do.end_crit_edge, label %if.end

rockchip_get_cpuclk_settings.exit.do.end_crit_edge: ; preds = %rockchip_get_cpuclk_settings.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %rockchip_get_cpuclk_settings.exit.do.end_crit_edge, %for.cond.i.do.end_crit_edge, %entry.do.end_crit_edge
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef %3) #9
  br label %cleanup

if.end:                                           ; preds = %rockchip_get_cpuclk_settings.exit
  %alt_parent = getelementptr inbounds %struct.rockchip_cpuclk, ptr %cpuclk, i32 0, i32 1
  %10 = ptrtoint ptr %alt_parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %alt_parent, align 4
  %call4 = tail call i32 @clk_get_rate(ptr noundef %11) #6
  %lock = getelementptr inbounds %struct.rockchip_cpuclk, ptr %cpuclk, i32 0, i32 7
  %12 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lock, align 4
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #6
  %old_rate = getelementptr inbounds %struct.clk_notifier_data, ptr %ndata, i32 0, i32 1
  %14 = ptrtoint ptr %old_rate to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %old_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %15)
  %cmp14 = icmp ugt i32 %call4, %15
  br i1 %cmp14, label %if.then16, label %if.end.do.body60_crit_edge

if.end.do.body60_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body60

if.then16:                                        ; preds = %if.end
  %add = add i32 %call4, -1
  %sub = add i32 %add, %15
  %div = udiv i32 %sub, %15
  %sub19 = add i32 %div, -1
  %div_core_mask = getelementptr inbounds %struct.rockchip_cpuclk_reg_data, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %div_core_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %div_core_mask, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub19, i32 %17)
  %cmp20 = icmp ugt i32 %sub19, %17
  br i1 %cmp20, label %do.end25, label %if.then16.do.body33_crit_edge

if.then16.do.body33_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body33

do.end25:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i32 noundef %sub19, i32 noundef %17) #9
  %18 = ptrtoint ptr %div_core_mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %div_core_mask, align 4
  br label %do.body33

do.body33:                                        ; preds = %do.end25, %if.then16.do.body33_crit_edge
  %alt_div.0 = phi i32 [ %19, %do.end25 ], [ %sub19, %if.then16.do.body33_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_cpuclk_pre_rate_change.__UNIQUE_ID_ddebug168, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_cpuclk_pre_rate_change, %if.then39)) #6
          to label %do.end43 [label %if.then39], !srcloc !62

if.then39:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %old_rate to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %old_rate, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rockchip_cpuclk_pre_rate_change.__UNIQUE_ID_ddebug168, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.22, i32 noundef %alt_div.0, i32 noundef %call4, i32 noundef %21) #6
  br label %do.end43

do.end43:                                         ; preds = %if.then39, %do.body33
  %num_cores = getelementptr inbounds %struct.rockchip_cpuclk_reg_data, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %num_cores to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_cores, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp44120 = icmp sgt i32 %23, 0
  br i1 %cmp44120, label %do.body46.lr.ph, label %do.end43.do.body60_crit_edge

do.end43.do.body60_crit_edge:                     ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body60

do.body46.lr.ph:                                  ; preds = %do.end43
  %reg_base = getelementptr inbounds %struct.rockchip_cpuclk, ptr %cpuclk, i32 0, i32 2
  br label %do.body46

do.body46:                                        ; preds = %do.body46.do.body46_crit_edge, %do.body46.lr.ph
  %i.0121 = phi i32 [ 0, %do.body46.lr.ph ], [ %inc, %do.body46.do.body46_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  tail call void @arm_heavy_mb() #6
  %arrayidx49 = getelementptr %struct.rockchip_cpuclk_reg_data, ptr %1, i32 0, i32 1, i32 %i.0121
  %24 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx49, align 1
  %conv50 = zext i8 %25 to i32
  %shl = shl i32 %alt_div.0, %conv50
  %arrayidx52 = getelementptr %struct.rockchip_cpuclk_reg_data, ptr %1, i32 0, i32 2, i32 %i.0121
  %26 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx52, align 4
  %add56 = add nuw nsw i32 %conv50, 16
  %shl57 = shl i32 %27, %add56
  %or = or i32 %shl57, %shl
  %28 = tail call i32 @llvm.bswap.i32(i32 %or)
  %29 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg_base, align 4
  %arrayidx58 = getelementptr [4 x i32], ptr %1, i32 0, i32 %i.0121
  %31 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx58, align 4
  %add.ptr = getelementptr i8, ptr %30, i32 %32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %28) #6, !srcloc !65
  %inc = add nuw nsw i32 %i.0121, 1
  %33 = ptrtoint ptr %num_cores to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_cores, align 4
  %cmp44 = icmp slt i32 %inc, %34
  br i1 %cmp44, label %do.body46.do.body46_crit_edge, label %do.body46.do.body60_crit_edge

do.body46.do.body60_crit_edge:                    ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body60

do.body46.do.body46_crit_edge:                    ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body46

do.body60:                                        ; preds = %do.body46.do.body60_crit_edge, %do.end43.do.body60_crit_edge, %if.end.do.body60_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %mux_core_alt = getelementptr inbounds %struct.rockchip_cpuclk_reg_data, ptr %1, i32 0, i32 4
  %35 = ptrtoint ptr %mux_core_alt to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %mux_core_alt, align 4
  %conv63 = zext i8 %36 to i32
  %mux_core_shift = getelementptr inbounds %struct.rockchip_cpuclk_reg_data, ptr %1, i32 0, i32 6
  %37 = ptrtoint ptr %mux_core_shift to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %mux_core_shift, align 2
  %conv64 = zext i8 %38 to i32
  %shl65 = shl i32 %conv63, %conv64
  %mux_core_mask = getelementptr inbounds %struct.rockchip_cpuclk_reg_data, ptr %1, i32 0, i32 7
  %39 = ptrtoint ptr %mux_core_mask to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mux_core_mask, align 4
  %add68 = add nuw nsw i32 %conv64, 16
  %shl69 = shl i32 %40, %add68
  %or70 = or i32 %shl69, %shl65
  %41 = tail call i32 @llvm.bswap.i32(i32 %or70)
  %reg_base71 = getelementptr inbounds %struct.rockchip_cpuclk, ptr %cpuclk, i32 0, i32 2
  %42 = ptrtoint ptr %reg_base71 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg_base71, align 4
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %1, align 4
  %add.ptr74 = getelementptr i8, ptr %43, i32 %45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74, i32 %41) #6, !srcloc !65
  %46 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %47, i32 noundef %call9) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body60, %do.end
  %retval.0 = phi i32 [ 0, %do.body60 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rockchip_cpuclk_post_rate_change(ptr nocapture noundef readonly %cpuclk, ptr nocapture noundef readonly %ndata) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_data1 = getelementptr inbounds %struct.rockchip_cpuclk, ptr %cpuclk, i32 0, i32 6
  %0 = ptrtoint ptr %reg_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_data1, align 4
  %new_rate = getelementptr inbounds %struct.clk_notifier_data, ptr %ndata, i32 0, i32 2
  %2 = ptrtoint ptr %new_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %new_rate, align 4
  %rate_table1.i = getelementptr inbounds %struct.rockchip_cpuclk, ptr %cpuclk, i32 0, i32 5
  %4 = ptrtoint ptr %rate_table1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rate_table1.i, align 4
  %rate_count.i = getelementptr inbounds %struct.rockchip_cpuclk, ptr %cpuclk, i32 0, i32 4
  %6 = ptrtoint ptr %rate_count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rate_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp10.not.i = icmp eq i32 %7, 0
  br i1 %cmp10.not.i, label %entry.do.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.cond.i.do.end_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.rockchip_cpuclk_rate_table, ptr %5, i32 %i.011.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %3)
  %cmp2.i = icmp eq i32 %9, %3
  br i1 %cmp2.i, label %rockchip_get_cpuclk_settings.exit, label %for.cond.i

rockchip_get_cpuclk_settings.exit:                ; preds = %for.body.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %rockchip_get_cpuclk_settings.exit.do.end_crit_edge, label %do.body5

rockchip_get_cpuclk_settings.exit.do.end_crit_edge: ; preds = %rockchip_get_cpuclk_settings.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %rockchip_get_cpuclk_settings.exit.do.end_crit_edge, %for.cond.i.do.end_crit_edge, %entry.do.end_crit_edge
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.27, i32 noundef %3) #9
  br label %cleanup

do.body5:                                         ; preds = %rockchip_get_cpuclk_settings.exit
  %lock = getelementptr inbounds %struct.rockchip_cpuclk, ptr %cpuclk, i32 0, i32 7
  %10 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lock, align 4
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #6
  %old_rate = getelementptr inbounds %struct.clk_notifier_data, ptr %ndata, i32 0, i32 1
  %12 = ptrtoint ptr %old_rate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %old_rate, align 4
  %14 = ptrtoint ptr %new_rate to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %new_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp14 = icmp ult i32 %13, %15
  br i1 %cmp14, label %if.then16, label %do.body5.do.body18_crit_edge

do.body5.do.body18_crit_edge:                     ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body18

if.then16:                                        ; preds = %do.body5
  %reg_base.i = getelementptr inbounds %struct.rockchip_cpuclk, ptr %cpuclk, i32 0, i32 2
  br label %for.body.i84

for.body.i84:                                     ; preds = %cleanup.i.for.body.i84_crit_edge, %if.then16
  %i.019.i = phi i32 [ 0, %if.then16 ], [ %inc.i85, %cleanup.i.for.body.i84_crit_edge ]
  %arrayidx.i83 = getelementptr %struct.rockchip_cpuclk_rate_table, ptr %5, i32 %i.011.i, i32 1, i32 %i.019.i
  %16 = ptrtoint ptr %arrayidx.i83 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i83, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %for.body.i84.cleanup.i_crit_edge, label %do.body.i

for.body.i84.cleanup.i_crit_edge:                 ; preds = %for.body.i84
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

do.body.i:                                        ; preds = %for.body.i84
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_cpuclk_set_dividers.__UNIQUE_ID_ddebug167, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_cpuclk_post_rate_change, %if.then4.i)) #6
          to label %do.body7.i [label %if.then4.i], !srcloc !62

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %arrayidx.i83 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i83, align 4
  %val.i = getelementptr %struct.rockchip_cpuclk_rate_table, ptr %5, i32 %i.011.i, i32 1, i32 %i.019.i, i32 1
  %20 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rockchip_cpuclk_set_dividers.__UNIQUE_ID_ddebug167, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, i32 noundef %19, i32 noundef %21) #6
  br label %do.body7.i

do.body7.i:                                       ; preds = %if.then4.i, %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %val10.i = getelementptr %struct.rockchip_cpuclk_rate_table, ptr %5, i32 %i.011.i, i32 1, i32 %i.019.i, i32 1
  %22 = ptrtoint ptr %val10.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val10.i, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #6
  %25 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg_base.i, align 4
  %27 = ptrtoint ptr %arrayidx.i83 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i83, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 %28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %24) #6, !srcloc !65
  br label %cleanup.i

cleanup.i:                                        ; preds = %do.body7.i, %for.body.i84.cleanup.i_crit_edge
  %inc.i85 = add nuw nsw i32 %i.019.i, 1
  %exitcond.not.i86 = icmp eq i32 %inc.i85, 5
  br i1 %exitcond.not.i86, label %cleanup.i.do.body18_crit_edge, label %cleanup.i.for.body.i84_crit_edge

cleanup.i.for.body.i84_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i84

cleanup.i.do.body18_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body18

do.body18:                                        ; preds = %cleanup.i.do.body18_crit_edge, %do.body5.do.body18_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  tail call void @arm_heavy_mb() #6
  %mux_core_main = getelementptr inbounds %struct.rockchip_cpuclk_reg_data, ptr %1, i32 0, i32 5
  %29 = ptrtoint ptr %mux_core_main to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %mux_core_main, align 1
  %conv21 = zext i8 %30 to i32
  %mux_core_shift = getelementptr inbounds %struct.rockchip_cpuclk_reg_data, ptr %1, i32 0, i32 6
  %31 = ptrtoint ptr %mux_core_shift to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %mux_core_shift, align 2
  %conv22 = zext i8 %32 to i32
  %shl = shl i32 %conv21, %conv22
  %mux_core_mask = getelementptr inbounds %struct.rockchip_cpuclk_reg_data, ptr %1, i32 0, i32 7
  %33 = ptrtoint ptr %mux_core_mask to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mux_core_mask, align 4
  %add = add nuw nsw i32 %conv22, 16
  %shl25 = shl i32 %34, %add
  %or = or i32 %shl25, %shl
  %35 = tail call i32 @llvm.bswap.i32(i32 %or)
  %reg_base = getelementptr inbounds %struct.rockchip_cpuclk, ptr %cpuclk, i32 0, i32 2
  %36 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reg_base, align 4
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %37, i32 %39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %35) #6, !srcloc !65
  %num_cores = getelementptr inbounds %struct.rockchip_cpuclk_reg_data, ptr %1, i32 0, i32 3
  %40 = ptrtoint ptr %num_cores to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_cores, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp26108 = icmp sgt i32 %41, 0
  br i1 %cmp26108, label %do.body18.do.body28_crit_edge, label %do.body18.for.end_crit_edge

do.body18.for.end_crit_edge:                      ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

do.body18.do.body28_crit_edge:                    ; preds = %do.body18
  br label %do.body28

do.body28:                                        ; preds = %do.body28.do.body28_crit_edge, %do.body18.do.body28_crit_edge
  %i.0109 = phi i32 [ %inc, %do.body28.do.body28_crit_edge ], [ 0, %do.body18.do.body28_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %arrayidx31 = getelementptr %struct.rockchip_cpuclk_reg_data, ptr %1, i32 0, i32 1, i32 %i.0109
  %42 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %43 to i32
  %arrayidx34 = getelementptr %struct.rockchip_cpuclk_reg_data, ptr %1, i32 0, i32 2, i32 %i.0109
  %44 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx34, align 4
  %add38 = add nuw nsw i32 %conv32, 16
  %shl39 = shl i32 %45, %add38
  %46 = tail call i32 @llvm.bswap.i32(i32 %shl39)
  %47 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reg_base, align 4
  %arrayidx43 = getelementptr [4 x i32], ptr %1, i32 0, i32 %i.0109
  %49 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx43, align 4
  %add.ptr44 = getelementptr i8, ptr %48, i32 %50
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 %46) #6, !srcloc !65
  %inc = add nuw nsw i32 %i.0109, 1
  %51 = ptrtoint ptr %num_cores to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_cores, align 4
  %cmp26 = icmp slt i32 %inc, %52
  br i1 %cmp26, label %do.body28.do.body28_crit_edge, label %do.body28.for.end_crit_edge

do.body28.for.end_crit_edge:                      ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

do.body28.do.body28_crit_edge:                    ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body28

for.end:                                          ; preds = %do.body28.for.end_crit_edge, %do.body18.for.end_crit_edge
  %53 = ptrtoint ptr %old_rate to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %old_rate, align 4
  %55 = ptrtoint ptr %new_rate to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %new_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %56)
  %cmp47 = icmp ugt i32 %54, %56
  br i1 %cmp47, label %for.end.for.body.i91_crit_edge, label %for.end.if.end50_crit_edge

for.end.if.end50_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

for.end.for.body.i91_crit_edge:                   ; preds = %for.end
  br label %for.body.i91

for.body.i91:                                     ; preds = %cleanup.i100.for.body.i91_crit_edge, %for.end.for.body.i91_crit_edge
  %i.019.i88 = phi i32 [ %inc.i98, %cleanup.i100.for.body.i91_crit_edge ], [ 0, %for.end.for.body.i91_crit_edge ]
  %arrayidx.i89 = getelementptr %struct.rockchip_cpuclk_rate_table, ptr %5, i32 %i.011.i, i32 1, i32 %i.019.i88
  %57 = ptrtoint ptr %arrayidx.i89 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.i89, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i90 = icmp eq i32 %58, 0
  br i1 %tobool.not.i90, label %for.body.i91.cleanup.i100_crit_edge, label %do.body.i92

for.body.i91.cleanup.i100_crit_edge:              ; preds = %for.body.i91
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i100

do.body.i92:                                      ; preds = %for.body.i91
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rockchip_cpuclk_set_dividers.__UNIQUE_ID_ddebug167, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rockchip_cpuclk_post_rate_change, %if.then4.i94)) #6
          to label %do.body7.i97 [label %if.then4.i94], !srcloc !62

if.then4.i94:                                     ; preds = %do.body.i92
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %arrayidx.i89 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i89, align 4
  %val.i93 = getelementptr %struct.rockchip_cpuclk_rate_table, ptr %5, i32 %i.011.i, i32 1, i32 %i.019.i88, i32 1
  %61 = ptrtoint ptr %val.i93 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %val.i93, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rockchip_cpuclk_set_dividers.__UNIQUE_ID_ddebug167, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, i32 noundef %60, i32 noundef %62) #6
  br label %do.body7.i97

do.body7.i97:                                     ; preds = %if.then4.i94, %do.body.i92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %val10.i95 = getelementptr %struct.rockchip_cpuclk_rate_table, ptr %5, i32 %i.011.i, i32 1, i32 %i.019.i88, i32 1
  %63 = ptrtoint ptr %val10.i95 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %val10.i95, align 4
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #6
  %66 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %reg_base, align 4
  %68 = ptrtoint ptr %arrayidx.i89 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.i89, align 4
  %add.ptr.i96 = getelementptr i8, ptr %67, i32 %69
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i96, i32 %65) #6, !srcloc !65
  br label %cleanup.i100

cleanup.i100:                                     ; preds = %do.body7.i97, %for.body.i91.cleanup.i100_crit_edge
  %inc.i98 = add nuw nsw i32 %i.019.i88, 1
  %exitcond.not.i99 = icmp eq i32 %inc.i98, 5
  br i1 %exitcond.not.i99, label %cleanup.i100.if.end50_crit_edge, label %cleanup.i100.for.body.i91_crit_edge

cleanup.i100.for.body.i91_crit_edge:              ; preds = %cleanup.i100
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i91

cleanup.i100.if.end50_crit_edge:                  ; preds = %cleanup.i100
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.end50:                                         ; preds = %cleanup.i100.if.end50_crit_edge, %for.end.if.end50_crit_edge
  %70 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %71, i32 noundef %call8) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %do.end
  %retval.0 = phi i32 [ 0, %if.end50 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !47, !48, !49, !51, !52}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/rockchip/clk-cpu.c", i32 259, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @rockchip_clk_register_cpuclk._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @rockchip_clk_register_cpuclk._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/rockchip/clk-cpu.c", i32 288, i32 3}
!8 = !{ptr @rockchip_clk_register_cpuclk._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @rockchip_clk_register_cpuclk._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/rockchip/clk-cpu.c", i32 296, i32 3}
!12 = !{ptr @rockchip_clk_register_cpuclk._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @rockchip_clk_register_cpuclk._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/rockchip/clk-cpu.c", i32 303, i32 3}
!16 = !{ptr @rockchip_clk_register_cpuclk._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @rockchip_clk_register_cpuclk._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/rockchip/clk-cpu.c", i32 312, i32 3}
!20 = !{ptr @rockchip_clk_register_cpuclk._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @rockchip_clk_register_cpuclk._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/rockchip/clk-cpu.c", i32 330, i32 3}
!24 = !{ptr @rockchip_clk_register_cpuclk._entry.15, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @rockchip_clk_register_cpuclk._entry_ptr.17, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @rockchip_cpuclk_ops, !27, !"rockchip_cpuclk_ops", i1 false, i1 false}
!27 = !{!"../drivers/clk/rockchip/clk-cpu.c", i32 94, i32 29}
!28 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/rockchip/clk-cpu.c", i32 237, i32 2}
!30 = !{ptr @.str.19, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.20, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @rockchip_cpuclk_notifier_cb.__UNIQUE_ID_ddebug169, !29, !"__UNIQUE_ID_ddebug169", i1 false, i1 false}
!33 = !{ptr @.str.21, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/clk/rockchip/clk-cpu.c", i32 128, i32 3}
!35 = !{ptr @.str.22, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @rockchip_cpuclk_pre_rate_change._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @rockchip_cpuclk_pre_rate_change._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.24, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/rockchip/clk-cpu.c", i32 147, i32 4}
!40 = !{ptr @rockchip_cpuclk_pre_rate_change._entry.23, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @rockchip_cpuclk_pre_rate_change._entry_ptr.25, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.26, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/rockchip/clk-cpu.c", i32 159, i32 3}
!44 = !{ptr @rockchip_cpuclk_pre_rate_change.__UNIQUE_ID_ddebug168, !43, !"__UNIQUE_ID_ddebug168", i1 false, i1 false}
!45 = !{ptr @.str.27, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/clk/rockchip/clk-cpu.c", i32 188, i32 3}
!47 = !{ptr @rockchip_cpuclk_post_rate_change._entry, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @rockchip_cpuclk_post_rate_change._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.28, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/clk/rockchip/clk-cpu.c", i32 110, i32 3}
!51 = !{ptr @.str.29, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @rockchip_cpuclk_set_dividers.__UNIQUE_ID_ddebug167, !50, !"__UNIQUE_ID_ddebug167", i1 false, i1 false}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{i64 2148866925, i64 2148866930, i64 2148866943, i64 2148866987, i64 2148867021, i64 2148867042}
!63 = !{i64 4896018}
!64 = !{i64 2152575867}
!65 = !{i64 4895600}
!66 = !{i64 2152576931}
!67 = !{i64 2152568611}
!68 = !{i64 2152580057}
!69 = !{i64 2152581118}
