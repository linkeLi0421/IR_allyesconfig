; ModuleID = '/llk/IR_all_yes/drivers/clk/samsung/clk.c_pt.bc'
source_filename = "../drivers/clk/samsung/clk.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.samsung_clk_reg_dump = type { i32, i32 }
%struct.samsung_clk_provider = type { ptr, ptr, %struct.spinlock, %struct.clk_hw_onecell_data }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.samsung_clock_alias = type { i32, ptr, ptr }
%struct.samsung_fixed_rate_clock = type { i32, ptr, ptr, i32, i32 }
%struct.samsung_fixed_factor_clock = type { i32, ptr, ptr, i32, i32, i32 }
%struct.samsung_mux_clock = type { i32, ptr, ptr, i8, i32, i32, i8, i8, i8 }
%struct.samsung_div_clock = type { i32, ptr, ptr, i32, i32, i8, i8, i8, ptr }
%struct.samsung_gate_clock = type { i32, ptr, ptr, i32, i32, i8, i8 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.samsung_clock_reg_cache = type { %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.samsung_cmu_info = type { ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr }

@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"could not allocate clock provider context.\0A\00", [52 x i8] zeroinitializer }, align 32
@samsung_clk_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&ctx->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"could not register clk provider\0A\00", [63 x i8] zeroinitializer }, align 32
@samsung_clk_register_alias._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: clock id missing for index %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"samsung_clk_register_alias\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/clk/samsung/clk.c\00", [38 x i8] zeroinitializer }, align 32
@samsung_clk_register_alias._entry_ptr = internal global ptr @samsung_clk_register_alias._entry, section ".printk_index", align 4
@samsung_clk_register_alias._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: failed to find clock %d\0A\00", [33 x i8] zeroinitializer }, align 32
@samsung_clk_register_alias._entry_ptr.8 = internal global ptr @samsung_clk_register_alias._entry.6, section ".printk_index", align 4
@samsung_clk_register_alias._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: failed to register lookup %s\0A\00", [60 x i8] zeroinitializer }, align 32
@samsung_clk_register_alias._entry_ptr.11 = internal global ptr @samsung_clk_register_alias._entry.9, section ".printk_index", align 4
@samsung_clk_register_fixed_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.5, i32 138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: failed to register clock %s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"samsung_clk_register_fixed_rate\00", [32 x i8] zeroinitializer }, align 32
@samsung_clk_register_fixed_rate._entry_ptr = internal global ptr @samsung_clk_register_fixed_rate._entry, section ".printk_index", align 4
@samsung_clk_register_fixed_rate._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.5, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s: failed to register clock lookup for %s\00", [51 x i8] zeroinitializer }, align 32
@samsung_clk_register_fixed_rate._entry_ptr.16 = internal global ptr @samsung_clk_register_fixed_rate._entry.14, section ".printk_index", align 4
@samsung_clk_register_fixed_factor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.17, ptr @.str.5, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"samsung_clk_register_fixed_factor\00", [62 x i8] zeroinitializer }, align 32
@samsung_clk_register_fixed_factor._entry_ptr = internal global ptr @samsung_clk_register_fixed_factor._entry, section ".printk_index", align 4
@samsung_clk_register_mux._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.18, ptr @.str.5, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"samsung_clk_register_mux\00", [39 x i8] zeroinitializer }, align 32
@samsung_clk_register_mux._entry_ptr = internal global ptr @samsung_clk_register_mux._entry, section ".printk_index", align 4
@samsung_clk_register_div._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.19, ptr @.str.5, i32 220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"samsung_clk_register_div\00", [39 x i8] zeroinitializer }, align 32
@samsung_clk_register_div._entry_ptr = internal global ptr @samsung_clk_register_div._entry, section ".printk_index", align 4
@samsung_clk_register_gate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.20, ptr @.str.5, i32 242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"samsung_clk_register_gate\00", [38 x i8] zeroinitializer }, align 32
@samsung_clk_register_gate._entry_ptr = internal global ptr @samsung_clk_register_gate._entry, section ".printk_index", align 4
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"could not allocate register reg_cache.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"could not allocate register dump storage.\0A\00", [53 x i8] zeroinitializer }, align 32
@clock_reg_cache_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @clock_reg_cache_list, ptr @clock_reg_cache_list }, [24 x i8] zeroinitializer }, align 32
@samsung_clk_syscore_ops = internal global { %struct.syscore_ops, [44 x i8] } { %struct.syscore_ops { %struct.list_head zeroinitializer, ptr @samsung_clk_suspend, ptr @samsung_clk_resume, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: failed to map registers\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.samsung_cmu_register_one = private unnamed_addr constant [25 x i8] c"samsung_cmu_register_one\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 65, i32 9 }
@___asan_gen_.28 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 72, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 83, i32 10 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 105, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 112, i32 4 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 120, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 137, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 150, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 166, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 189, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 219, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 241, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 264, i32 36 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 310, i32 9 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 314, i32 9 }
@___asan_gen_.109 = private unnamed_addr constant [21 x i8] c"clock_reg_cache_list\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 21, i32 8 }
@___asan_gen_.112 = private unnamed_addr constant [24 x i8] c"samsung_clk_syscore_ops\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 294, i32 27 }
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.116 = private constant [29 x i8] c"../drivers/clk/samsung/clk.c\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 340, i32 9 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @samsung_clk_register_alias._entry, ptr @samsung_clk_register_alias._entry.6, ptr @samsung_clk_register_alias._entry.9, ptr @samsung_clk_register_alias._entry_ptr, ptr @samsung_clk_register_alias._entry_ptr.11, ptr @samsung_clk_register_alias._entry_ptr.8, ptr @samsung_clk_register_div._entry, ptr @samsung_clk_register_div._entry_ptr, ptr @samsung_clk_register_fixed_factor._entry, ptr @samsung_clk_register_fixed_factor._entry_ptr, ptr @samsung_clk_register_fixed_rate._entry, ptr @samsung_clk_register_fixed_rate._entry.14, ptr @samsung_clk_register_fixed_rate._entry_ptr, ptr @samsung_clk_register_fixed_rate._entry_ptr.16, ptr @samsung_clk_register_gate._entry, ptr @samsung_clk_register_gate._entry_ptr, ptr @samsung_clk_register_mux._entry, ptr @samsung_clk_register_mux._entry_ptr, ptr @.str, ptr @samsung_clk_init.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @clock_reg_cache_list, ptr @samsung_clk_syscore_ops, ptr @.str.24], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_clk_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_clk_register_alias._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_clk_register_alias._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_clk_register_alias._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_clk_register_fixed_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_clk_register_fixed_rate._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_clk_register_fixed_factor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_clk_register_mux._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_clk_register_div._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_clk_register_gate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clock_reg_cache_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_clk_syscore_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @samsung_clk_save(ptr noundef %base, ptr nocapture noundef %rd, i32 noundef %num_regs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_regs)
  %cmp.not5 = icmp eq i32 %num_regs, 0
  br i1 %cmp.not5, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %rd.addr.07 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %rd, %entry.for.body_crit_edge ]
  %num_regs.addr.06 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ %num_regs, %entry.for.body_crit_edge ]
  %0 = ptrtoint ptr %rd.addr.07 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rd.addr.07, align 4
  %add.ptr = getelementptr i8, ptr %base, i32 %1
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !69
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !70
  %value = getelementptr inbounds %struct.samsung_clk_reg_dump, ptr %rd.addr.07, i32 0, i32 1
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %value, align 4
  %dec = add i32 %num_regs.addr.06, -1
  %incdec.ptr = getelementptr %struct.samsung_clk_reg_dump, ptr %rd.addr.07, i32 1
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @samsung_clk_restore(ptr noundef %base, ptr nocapture noundef readonly %rd, i32 noundef %num_regs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_regs)
  %cmp.not4 = icmp eq i32 %num_regs, 0
  br i1 %cmp.not4, label %entry.for.end_crit_edge, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry.do.body_crit_edge
  %num_regs.addr.06 = phi i32 [ %dec, %do.body.do.body_crit_edge ], [ %num_regs, %entry.do.body_crit_edge ]
  %rd.addr.05 = phi ptr [ %incdec.ptr, %do.body.do.body_crit_edge ], [ %rd, %entry.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !71
  tail call void @arm_heavy_mb() #10
  %value = getelementptr inbounds %struct.samsung_clk_reg_dump, ptr %rd.addr.05, i32 0, i32 1
  %0 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %value, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = ptrtoint ptr %rd.addr.05 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rd.addr.05, align 4
  %add.ptr = getelementptr i8, ptr %base, i32 %4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #10, !srcloc !72
  %dec = add i32 %num_regs.addr.06, -1
  %incdec.ptr = getelementptr %struct.samsung_clk_reg_dump, ptr %rd.addr.05, i32 1
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %do.body.for.end_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %do.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @samsung_clk_alloc_reg_dump(ptr nocapture noundef readonly %rdump, i32 noundef %nr_rdump) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nr_rdump, i32 8) #10
  %1 = extractvalue { i32, i1 } %0, 1
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end7.i.i, !prof !73

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7.i.i:                                      ; preds = %entry
  %2 = extractvalue { i32, i1 } %0, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %2, i32 noundef 3520) #13
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_rdump)
  %cmp11.not = icmp eq i32 %nr_rdump, 0
  br i1 %cmp11.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.012 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %rdump, i32 %i.012
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr %struct.samsung_clk_reg_dump, ptr %call8.i.i, i32 %i.012
  %5 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %arrayidx1, align 8
  %inc = add nuw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, %nr_rdump
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end7.i.i.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ %call8.i.i, %for.cond.preheader.cleanup_crit_edge ], [ %call8.i.i, %for.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @samsung_clk_init(ptr nocapture readnone %np, ptr noundef %base, i32 noundef %nr_clks) local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nr_clks, i32 4) #10
  %1 = extractvalue { i32, i1 } %0, 1
  %2 = extractvalue { i32, i1 } %0, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %2, i32 56) #10
  %retval.0.i = select i1 %1, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3520) #13
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_clks)
  %cmp14.not = icmp eq i32 %nr_clks, 0
  br i1 %cmp14.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %hws = getelementptr inbounds %struct.samsung_clk_provider, ptr %call9.i.i, i32 1
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str) #14
  unreachable

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.015 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [0 x ptr], ptr %hws, i32 0, i32 %i.015
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx, align 4
  %inc = add nuw i32 %i.015, 1
  %exitcond.not = icmp eq i32 %inc, %nr_clks
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %4 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %base, ptr %call9.i.i, align 128
  %clk_data3 = getelementptr inbounds %struct.samsung_clk_provider, ptr %call9.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %clk_data3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %nr_clks, ptr %clk_data3, align 4
  %lock = getelementptr inbounds %struct.samsung_clk_provider, ptr %call9.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @samsung_clk_init.__key, i16 noundef signext 3) #10
  ret ptr %call9.i.i
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @samsung_clk_of_add_provider(ptr noundef %np, ptr noundef %ctx) local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %np, null
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then:                                          ; preds = %entry
  %clk_data = getelementptr inbounds %struct.samsung_clk_provider, ptr %ctx, i32 0, i32 3
  %call = tail call i32 @of_clk_add_hw_provider(ptr noundef nonnull %np, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef %clk_data) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.if.end3_crit_edge, label %if.then2

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.2) #14
  unreachable

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @samsung_clk_add_lookup(ptr nocapture noundef writeonly %ctx, ptr noundef %clk_hw, i32 noundef %id) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id)
  %tobool.not = icmp eq i32 %id, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %hws = getelementptr inbounds %struct.samsung_clk_provider, ptr %ctx, i32 1
  %arrayidx = getelementptr [0 x ptr], ptr %hws, i32 0, i32 %id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %clk_hw, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @samsung_clk_register_alias(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readonly %list, i32 noundef %nr_clk) local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_clk)
  %cmp31.not = icmp eq i32 %nr_clk, 0
  br i1 %cmp31.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %hws = getelementptr inbounds %struct.samsung_clk_provider, ptr %ctx, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %list.addr.033 = phi ptr [ %list, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %idx.032 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %0 = ptrtoint ptr %list.addr.033 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %list.addr.033, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %idx.032) #15
  br label %for.inc

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr [0 x ptr], ptr %hws, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %do.end6, label %if.end10

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.4, i32 noundef %1) #15
  br label %for.inc

if.end10:                                         ; preds = %if.end
  %alias = getelementptr inbounds %struct.samsung_clock_alias, ptr %list.addr.033, i32 0, i32 2
  %4 = ptrtoint ptr %alias to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %alias, align 4
  %dev_name = getelementptr inbounds %struct.samsung_clock_alias, ptr %list.addr.033, i32 0, i32 1
  %6 = ptrtoint ptr %dev_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_name, align 4
  %call11 = tail call i32 @clk_hw_register_clkdev(ptr noundef nonnull %3, ptr noundef %5, ptr noundef %7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end10.for.inc_crit_edge, label %do.end16

if.end10.for.inc_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %alias to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %alias, align 4
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.4, ptr noundef %9) #15
  br label %for.inc

for.inc:                                          ; preds = %do.end16, %if.end10.for.inc_crit_edge, %do.end6, %do.end
  %inc = add nuw i32 %idx.032, 1
  %incdec.ptr = getelementptr %struct.samsung_clock_alias, ptr %list.addr.033, i32 1
  %exitcond.not = icmp eq i32 %inc, %nr_clk
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register_clkdev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @samsung_clk_register_fixed_rate(ptr nocapture noundef %ctx, ptr nocapture noundef readonly %list, i32 noundef %nr_clk) local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_clk)
  %cmp26.not = icmp eq i32 %nr_clk, 0
  br i1 %cmp26.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dev = getelementptr inbounds %struct.samsung_clk_provider, ptr %ctx, i32 0, i32 1
  %hws.i = getelementptr inbounds %struct.samsung_clk_provider, ptr %ctx, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %list.addr.028 = phi ptr [ %list, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %idx.027 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.samsung_fixed_rate_clock, ptr %list.addr.028, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %parent_name = getelementptr inbounds %struct.samsung_fixed_rate_clock, ptr %list.addr.028, i32 0, i32 2
  %4 = ptrtoint ptr %parent_name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent_name, align 4
  %flags = getelementptr inbounds %struct.samsung_fixed_rate_clock, ptr %list.addr.028, i32 0, i32 3
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %fixed_rate = getelementptr inbounds %struct.samsung_fixed_rate_clock, ptr %list.addr.028, i32 0, i32 4
  %8 = ptrtoint ptr %fixed_rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fixed_rate, align 4
  %call = tail call ptr @__clk_hw_register_fixed_rate(ptr noundef %1, ptr noundef null, ptr noundef %3, ptr noundef %5, ptr noundef null, ptr noundef null, i32 noundef %7, i32 noundef %9, i32 noundef 0, i32 noundef 0) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %for.body.for.inc.sink.split_crit_edge, label %if.end

for.body.for.inc.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split

if.end:                                           ; preds = %for.body
  %10 = ptrtoint ptr %list.addr.028 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %list.addr.028, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.end.samsung_clk_add_lookup.exit_crit_edge, label %if.then.i

if.end.samsung_clk_add_lookup.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %samsung_clk_add_lookup.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr [0 x ptr], ptr %hws.i, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call, ptr %arrayidx.i, align 4
  br label %samsung_clk_add_lookup.exit

samsung_clk_add_lookup.exit:                      ; preds = %if.then.i, %if.end.samsung_clk_add_lookup.exit_crit_edge
  %13 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name, align 4
  %call5 = tail call i32 @clk_hw_register_clkdev(ptr noundef %call, ptr noundef %14, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %samsung_clk_add_lookup.exit.for.inc_crit_edge, label %samsung_clk_add_lookup.exit.for.inc.sink.split_crit_edge

samsung_clk_add_lookup.exit.for.inc.sink.split_crit_edge: ; preds = %samsung_clk_add_lookup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split

samsung_clk_add_lookup.exit.for.inc_crit_edge:    ; preds = %samsung_clk_add_lookup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc.sink.split:                               ; preds = %samsung_clk_add_lookup.exit.for.inc.sink.split_crit_edge, %for.body.for.inc.sink.split_crit_edge
  %.str.15.sink = phi ptr [ @.str.12, %for.body.for.inc.sink.split_crit_edge ], [ @.str.15, %samsung_clk_add_lookup.exit.for.inc.sink.split_crit_edge ]
  %15 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name, align 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.15.sink, ptr noundef nonnull @.str.13, ptr noundef %16) #15
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %samsung_clk_add_lookup.exit.for.inc_crit_edge
  %inc = add nuw i32 %idx.027, 1
  %incdec.ptr = getelementptr %struct.samsung_fixed_rate_clock, ptr %list.addr.028, i32 1
  %exitcond.not = icmp eq i32 %inc, %nr_clk
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @samsung_clk_register_fixed_factor(ptr nocapture noundef %ctx, ptr nocapture noundef readonly %list, i32 noundef %nr_clk) local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_clk)
  %cmp14.not = icmp eq i32 %nr_clk, 0
  br i1 %cmp14.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dev = getelementptr inbounds %struct.samsung_clk_provider, ptr %ctx, i32 0, i32 1
  %hws.i = getelementptr inbounds %struct.samsung_clk_provider, ptr %ctx, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %list.addr.016 = phi ptr [ %list, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %idx.015 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.samsung_fixed_factor_clock, ptr %list.addr.016, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %parent_name = getelementptr inbounds %struct.samsung_fixed_factor_clock, ptr %list.addr.016, i32 0, i32 2
  %4 = ptrtoint ptr %parent_name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent_name, align 4
  %flags = getelementptr inbounds %struct.samsung_fixed_factor_clock, ptr %list.addr.016, i32 0, i32 5
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %mult = getelementptr inbounds %struct.samsung_fixed_factor_clock, ptr %list.addr.016, i32 0, i32 3
  %8 = ptrtoint ptr %mult to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mult, align 4
  %div = getelementptr inbounds %struct.samsung_fixed_factor_clock, ptr %list.addr.016, i32 0, i32 4
  %10 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %div, align 4
  %call = tail call ptr @clk_hw_register_fixed_factor(ptr noundef %1, ptr noundef %3, ptr noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.17, ptr noundef %13) #15
  br label %for.inc

if.end:                                           ; preds = %for.body
  %14 = ptrtoint ptr %list.addr.016 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %list.addr.016, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %if.end.for.inc_crit_edge, label %if.then.i

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr [0 x ptr], ptr %hws.i, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call, ptr %arrayidx.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then.i, %if.end.for.inc_crit_edge, %do.end
  %inc = add nuw i32 %idx.015, 1
  %incdec.ptr = getelementptr %struct.samsung_fixed_factor_clock, ptr %list.addr.016, i32 1
  %exitcond.not = icmp eq i32 %inc, %nr_clk
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @samsung_clk_register_mux(ptr noundef %ctx, ptr nocapture noundef readonly %list, i32 noundef %nr_clk) local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_clk)
  %cmp19.not = icmp eq i32 %nr_clk, 0
  br i1 %cmp19.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dev = getelementptr inbounds %struct.samsung_clk_provider, ptr %ctx, i32 0, i32 1
  %lock = getelementptr inbounds %struct.samsung_clk_provider, ptr %ctx, i32 0, i32 2
  %hws.i = getelementptr inbounds %struct.samsung_clk_provider, ptr %ctx, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %list.addr.021 = phi ptr [ %list, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %idx.020 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.samsung_mux_clock, ptr %list.addr.021, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %num_parents = getelementptr inbounds %struct.samsung_mux_clock, ptr %list.addr.021, i32 0, i32 3
  %4 = ptrtoint ptr %num_parents to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_parents, align 4
  %parent_names = getelementptr inbounds %struct.samsung_mux_clock, ptr %list.addr.021, i32 0, i32 2
  %6 = ptrtoint ptr %parent_names to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent_names, align 4
  %flags = getelementptr inbounds %struct.samsung_mux_clock, ptr %list.addr.021, i32 0, i32 4
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %10 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx, align 4
  %offset = getelementptr inbounds %struct.samsung_mux_clock, ptr %list.addr.021, i32 0, i32 5
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 %13
  %shift = getelementptr inbounds %struct.samsung_mux_clock, ptr %list.addr.021, i32 0, i32 6
  %14 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %shift, align 4
  %width = getelementptr inbounds %struct.samsung_mux_clock, ptr %list.addr.021, i32 0, i32 7
  %16 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %width, align 1
  %conv = zext i8 %17 to i32
  %notmask = shl nsw i32 -1, %conv
  %sub = xor i32 %notmask, -1
  %mux_flags = getelementptr inbounds %struct.samsung_mux_clock, ptr %list.addr.021, i32 0, i32 8
  %18 = ptrtoint ptr %mux_flags to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %mux_flags, align 2
  %call = tail call ptr @__clk_hw_register_mux(ptr noundef %1, ptr noundef null, ptr noundef %3, i8 noundef zeroext %5, ptr noundef %7, ptr noundef null, ptr noundef null, i32 noundef %9, ptr noundef %add.ptr, i8 noundef zeroext %15, i32 noundef %sub, i8 noundef zeroext %19, ptr noundef null, ptr noundef %lock) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.18, ptr noundef %21) #15
  br label %for.inc

if.end:                                           ; preds = %for.body
  %22 = ptrtoint ptr %list.addr.021 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %list.addr.021, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i, label %if.end.for.inc_crit_edge, label %if.then.i

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr [0 x ptr], ptr %hws.i, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call, ptr %arrayidx.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then.i, %if.end.for.inc_crit_edge, %do.end
  %inc = add nuw i32 %idx.020, 1
  %incdec.ptr = getelementptr %struct.samsung_mux_clock, ptr %list.addr.021, i32 1
  %exitcond.not = icmp eq i32 %inc, %nr_clk
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_mux(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @samsung_clk_register_div(ptr noundef %ctx, ptr nocapture noundef readonly %list, i32 noundef %nr_clk) local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_clk)
  %cmp45.not = icmp eq i32 %nr_clk, 0
  br i1 %cmp45.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dev = getelementptr inbounds %struct.samsung_clk_provider, ptr %ctx, i32 0, i32 1
  %lock = getelementptr inbounds %struct.samsung_clk_provider, ptr %ctx, i32 0, i32 2
  %hws.i = getelementptr inbounds %struct.samsung_clk_provider, ptr %ctx, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %list.addr.047 = phi ptr [ %list, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %idx.046 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %table = getelementptr inbounds %struct.samsung_div_clock, ptr %list.addr.047, i32 0, i32 8
  %0 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %table, align 4
  %tobool.not = icmp eq ptr %1, null
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %name3 = getelementptr inbounds %struct.samsung_div_clock, ptr %list.addr.047, i32 0, i32 1
  %4 = ptrtoint ptr %name3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name3, align 4
  %parent_name4 = getelementptr inbounds %struct.samsung_div_clock, ptr %list.addr.047, i32 0, i32 2
  %6 = ptrtoint ptr %parent_name4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent_name4, align 4
  %flags5 = getelementptr inbounds %struct.samsung_div_clock, ptr %list.addr.047, i32 0, i32 3
  %8 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags5, align 4
  %10 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx, align 4
  %offset7 = getelementptr inbounds %struct.samsung_div_clock, ptr %list.addr.047, i32 0, i32 4
  %12 = ptrtoint ptr %offset7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset7, align 4
  %add.ptr8 = getelementptr i8, ptr %11, i32 %13
  %shift9 = getelementptr inbounds %struct.samsung_div_clock, ptr %list.addr.047, i32 0, i32 5
  %14 = ptrtoint ptr %shift9 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %shift9, align 4
  %width10 = getelementptr inbounds %struct.samsung_div_clock, ptr %list.addr.047, i32 0, i32 6
  %16 = ptrtoint ptr %width10 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %width10, align 1
  %div_flags11 = getelementptr inbounds %struct.samsung_div_clock, ptr %list.addr.047, i32 0, i32 7
  %18 = ptrtoint ptr %div_flags11 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %div_flags11, align 2
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call ptr @__clk_hw_register_divider(ptr noundef %3, ptr noundef null, ptr noundef %5, ptr noundef %7, ptr noundef null, ptr noundef null, i32 noundef %9, ptr noundef %add.ptr8, i8 noundef zeroext %15, i8 noundef zeroext %17, i8 noundef zeroext %19, ptr noundef nonnull %1, ptr noundef %lock) #10
  br label %if.end

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %call13 = tail call ptr @__clk_hw_register_divider(ptr noundef %3, ptr noundef null, ptr noundef %5, ptr noundef %7, ptr noundef null, ptr noundef null, i32 noundef %9, ptr noundef %add.ptr8, i8 noundef zeroext %15, i8 noundef zeroext %17, i8 noundef zeroext %19, ptr noundef null, ptr noundef %lock) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %clk_hw.0 = phi ptr [ %call, %if.then ], [ %call13, %if.else ]
  %cmp.i = icmp ugt ptr %clk_hw.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end18

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %name16 = getelementptr inbounds %struct.samsung_div_clock, ptr %list.addr.047, i32 0, i32 1
  %20 = ptrtoint ptr %name16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name16, align 4
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.19, ptr noundef %21) #15
  br label %for.inc

if.end18:                                         ; preds = %if.end
  %22 = ptrtoint ptr %list.addr.047 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %list.addr.047, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i, label %if.end18.for.inc_crit_edge, label %if.then.i

if.end18.for.inc_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr [0 x ptr], ptr %hws.i, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %clk_hw.0, ptr %arrayidx.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then.i, %if.end18.for.inc_crit_edge, %do.end
  %inc = add nuw i32 %idx.046, 1
  %incdec.ptr = getelementptr %struct.samsung_div_clock, ptr %list.addr.047, i32 1
  %exitcond.not = icmp eq i32 %inc, %nr_clk
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_divider(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @samsung_clk_register_gate(ptr noundef %ctx, ptr nocapture noundef readonly %list, i32 noundef %nr_clk) local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_clk)
  %cmp17.not = icmp eq i32 %nr_clk, 0
  br i1 %cmp17.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dev = getelementptr inbounds %struct.samsung_clk_provider, ptr %ctx, i32 0, i32 1
  %lock = getelementptr inbounds %struct.samsung_clk_provider, ptr %ctx, i32 0, i32 2
  %hws.i = getelementptr inbounds %struct.samsung_clk_provider, ptr %ctx, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %list.addr.019 = phi ptr [ %list, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %idx.018 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.samsung_gate_clock, ptr %list.addr.019, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %parent_name = getelementptr inbounds %struct.samsung_gate_clock, ptr %list.addr.019, i32 0, i32 2
  %4 = ptrtoint ptr %parent_name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent_name, align 4
  %flags = getelementptr inbounds %struct.samsung_gate_clock, ptr %list.addr.019, i32 0, i32 3
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx, align 4
  %offset = getelementptr inbounds %struct.samsung_gate_clock, ptr %list.addr.019, i32 0, i32 4
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %11
  %bit_idx = getelementptr inbounds %struct.samsung_gate_clock, ptr %list.addr.019, i32 0, i32 5
  %12 = ptrtoint ptr %bit_idx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bit_idx, align 4
  %gate_flags = getelementptr inbounds %struct.samsung_gate_clock, ptr %list.addr.019, i32 0, i32 6
  %14 = ptrtoint ptr %gate_flags to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %gate_flags, align 1
  %call = tail call ptr @__clk_hw_register_gate(ptr noundef %1, ptr noundef null, ptr noundef %3, ptr noundef %5, ptr noundef null, ptr noundef null, i32 noundef %7, ptr noundef %add.ptr, i8 noundef zeroext %13, i8 noundef zeroext %15, ptr noundef %lock) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.20, ptr noundef %17) #15
  br label %for.inc

if.end:                                           ; preds = %for.body
  %18 = ptrtoint ptr %list.addr.019 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %list.addr.019, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %if.end.for.inc_crit_edge, label %if.then.i

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i = getelementptr [0 x ptr], ptr %hws.i, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call, ptr %arrayidx.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then.i, %if.end.for.inc_crit_edge, %do.end
  %inc = add nuw i32 %idx.018, 1
  %incdec.ptr = getelementptr %struct.samsung_gate_clock, ptr %list.addr.019, i32 1
  %exitcond.not = icmp eq i32 %inc, %nr_clk
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_gate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @samsung_clk_of_register_fixed_ext(ptr nocapture noundef %ctx, ptr nocapture noundef %fixed_rate_clk, i32 noundef %nr_fixed_rate_clk, ptr noundef %clk_matches) local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  %match = alloca ptr, align 4
  %freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %match) #10
  %0 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %match, align 4, !annotation !74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %freq) #10
  %1 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %freq, align 4, !annotation !74
  %call = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef %clk_matches, ptr noundef nonnull %match) #10
  %tobool.not8 = icmp eq ptr %call, null
  br i1 %tobool.not8, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %clk_np.09 = phi ptr [ %call3, %for.inc.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %clk_np.09, ptr noundef nonnull @.str.21, ptr noundef nonnull %freq, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool2.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool2.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %freq, align 4
  %4 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %match, align 4
  %data = getelementptr inbounds %struct.of_device_id, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %8 = ptrtoint ptr %7 to i32
  %fixed_rate = getelementptr %struct.samsung_fixed_rate_clock, ptr %fixed_rate_clk, i32 %8, i32 4
  %9 = ptrtoint ptr %fixed_rate to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %3, ptr %fixed_rate, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %call3 = call ptr @of_find_matching_node_and_match(ptr noundef nonnull %clk_np.09, ptr noundef %clk_matches, ptr noundef nonnull %match) #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @samsung_clk_register_fixed_rate(ptr noundef %ctx, ptr noundef %fixed_rate_clk, i32 noundef %nr_fixed_rate_clk) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %match) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @samsung_clk_extended_sleep_init(ptr noundef %reg_base, ptr nocapture noundef readonly %rdump, i32 noundef %nr_rdump, ptr noundef %rsuspend, i32 noundef %nr_rsuspend) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 28) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.22) #14
  unreachable

if.end:                                           ; preds = %entry
  %1 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nr_rdump, i32 8) #10
  %2 = extractvalue { i32, i1 } %1, 1
  br i1 %2, label %if.end.samsung_clk_alloc_reg_dump.exit.thread_crit_edge, label %if.end7.i.i.i, !prof !73

if.end.samsung_clk_alloc_reg_dump.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %samsung_clk_alloc_reg_dump.exit.thread

if.end7.i.i.i:                                    ; preds = %if.end
  %3 = extractvalue { i32, i1 } %1, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3520) #13
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i, label %if.end7.i.i.i.samsung_clk_alloc_reg_dump.exit.thread_crit_edge, label %for.cond.preheader.i

if.end7.i.i.i.samsung_clk_alloc_reg_dump.exit.thread_crit_edge: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %samsung_clk_alloc_reg_dump.exit.thread

for.cond.preheader.i:                             ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_rdump)
  %cmp11.not.i = icmp eq i32 %nr_rdump, 0
  br i1 %cmp11.not.i, label %for.cond.preheader.i.samsung_clk_alloc_reg_dump.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.samsung_clk_alloc_reg_dump.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %samsung_clk_alloc_reg_dump.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %rdump, i32 %i.012.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr %struct.samsung_clk_reg_dump, ptr %call8.i.i.i, i32 %i.012.i
  %6 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %arrayidx1.i, align 8
  %inc.i = add nuw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %nr_rdump
  br i1 %exitcond.not.i, label %for.body.i.samsung_clk_alloc_reg_dump.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.samsung_clk_alloc_reg_dump.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %samsung_clk_alloc_reg_dump.exit

samsung_clk_alloc_reg_dump.exit.thread:           ; preds = %if.end7.i.i.i.samsung_clk_alloc_reg_dump.exit.thread_crit_edge, %if.end.samsung_clk_alloc_reg_dump.exit.thread_crit_edge
  %rdump222 = getelementptr inbounds %struct.samsung_clock_reg_cache, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %rdump222 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %rdump222, align 4
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.23) #14
  unreachable

samsung_clk_alloc_reg_dump.exit:                  ; preds = %for.body.i.samsung_clk_alloc_reg_dump.exit_crit_edge, %for.cond.preheader.i.samsung_clk_alloc_reg_dump.exit_crit_edge
  %rdump2 = getelementptr inbounds %struct.samsung_clock_reg_cache, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %rdump2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call8.i.i.i, ptr %rdump2, align 4
  %9 = load volatile ptr, ptr @clock_reg_cache_list, align 4
  %cmp.i.not = icmp eq ptr %9, @clock_reg_cache_list
  br i1 %cmp.i.not, label %if.then9, label %samsung_clk_alloc_reg_dump.exit.if.end10_crit_edge

samsung_clk_alloc_reg_dump.exit.if.end10_crit_edge: ; preds = %samsung_clk_alloc_reg_dump.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then9:                                         ; preds = %samsung_clk_alloc_reg_dump.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @register_syscore_ops(ptr noundef nonnull @samsung_clk_syscore_ops) #10
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %samsung_clk_alloc_reg_dump.exit.if.end10_crit_edge
  %reg_base11 = getelementptr inbounds %struct.samsung_clock_reg_cache, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %reg_base11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %reg_base, ptr %reg_base11, align 8
  %rd_num = getelementptr inbounds %struct.samsung_clock_reg_cache, ptr %call7.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %rd_num to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %nr_rdump, ptr %rd_num, align 8
  %rsuspend12 = getelementptr inbounds %struct.samsung_clock_reg_cache, ptr %call7.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %rsuspend12 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %rsuspend, ptr %rsuspend12, align 4
  %rsuspend_num = getelementptr inbounds %struct.samsung_clock_reg_cache, ptr %call7.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %rsuspend_num to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %nr_rsuspend, ptr %rsuspend_num, align 8
  %14 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @clock_reg_cache_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %14, ptr noundef nonnull @clock_reg_cache_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end10.list_add_tail.exit_crit_edge

if.end10.list_add_tail.exit_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  store ptr %call7.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @clock_reg_cache_list, i32 0, i32 1), align 4
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @clock_reg_cache_list, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %14, ptr %prev3.i.i, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %call7.i.i, ptr %14, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end10.list_add_tail.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @samsung_cmu_register_one(ptr noundef %np, ptr nocapture noundef readonly %cmu) local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.samsung_cmu_register_one) #14
  unreachable

if.end:                                           ; preds = %entry
  %nr_clk_ids = getelementptr inbounds %struct.samsung_cmu_info, ptr %cmu, i32 0, i32 12
  %0 = ptrtoint ptr %nr_clk_ids to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_clk_ids, align 4
  %call1 = tail call ptr @samsung_clk_init(ptr undef, ptr noundef nonnull %call, i32 noundef %1) #16
  %2 = ptrtoint ptr %cmu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmu, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %nr_pll_clks = getelementptr inbounds %struct.samsung_cmu_info, ptr %cmu, i32 0, i32 1
  %4 = ptrtoint ptr %nr_pll_clks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_pll_clks, align 4
  tail call void @samsung_clk_register_pll(ptr noundef %call1, ptr noundef nonnull %3, i32 noundef %5, ptr noundef nonnull %call) #10
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %mux_clks = getelementptr inbounds %struct.samsung_cmu_info, ptr %cmu, i32 0, i32 2
  %6 = ptrtoint ptr %mux_clks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mux_clks, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %if.end5.if.end9_crit_edge, label %if.then7

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %nr_mux_clks = getelementptr inbounds %struct.samsung_cmu_info, ptr %cmu, i32 0, i32 3
  %8 = ptrtoint ptr %nr_mux_clks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_mux_clks, align 4
  tail call void @samsung_clk_register_mux(ptr noundef %call1, ptr noundef nonnull %7, i32 noundef %9) #16
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5.if.end9_crit_edge
  %div_clks = getelementptr inbounds %struct.samsung_cmu_info, ptr %cmu, i32 0, i32 4
  %10 = ptrtoint ptr %div_clks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %div_clks, align 4
  %tobool10.not = icmp eq ptr %11, null
  br i1 %tobool10.not, label %if.end9.if.end13_crit_edge, label %if.then11

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %nr_div_clks = getelementptr inbounds %struct.samsung_cmu_info, ptr %cmu, i32 0, i32 5
  %12 = ptrtoint ptr %nr_div_clks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_div_clks, align 4
  tail call void @samsung_clk_register_div(ptr noundef %call1, ptr noundef nonnull %11, i32 noundef %13) #16
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9.if.end13_crit_edge
  %gate_clks = getelementptr inbounds %struct.samsung_cmu_info, ptr %cmu, i32 0, i32 6
  %14 = ptrtoint ptr %gate_clks to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gate_clks, align 4
  %tobool14.not = icmp eq ptr %15, null
  br i1 %tobool14.not, label %if.end13.if.end17_crit_edge, label %if.then15

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %nr_gate_clks = getelementptr inbounds %struct.samsung_cmu_info, ptr %cmu, i32 0, i32 7
  %16 = ptrtoint ptr %nr_gate_clks to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr_gate_clks, align 4
  tail call void @samsung_clk_register_gate(ptr noundef %call1, ptr noundef nonnull %15, i32 noundef %17) #16
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end13.if.end17_crit_edge
  %fixed_clks = getelementptr inbounds %struct.samsung_cmu_info, ptr %cmu, i32 0, i32 8
  %18 = ptrtoint ptr %fixed_clks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fixed_clks, align 4
  %tobool18.not = icmp eq ptr %19, null
  br i1 %tobool18.not, label %if.end17.if.end21_crit_edge, label %if.then19

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %nr_fixed_clks = getelementptr inbounds %struct.samsung_cmu_info, ptr %cmu, i32 0, i32 9
  %20 = ptrtoint ptr %nr_fixed_clks to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr_fixed_clks, align 4
  tail call void @samsung_clk_register_fixed_rate(ptr noundef %call1, ptr noundef nonnull %19, i32 noundef %21) #16
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end17.if.end21_crit_edge
  %fixed_factor_clks = getelementptr inbounds %struct.samsung_cmu_info, ptr %cmu, i32 0, i32 10
  %22 = ptrtoint ptr %fixed_factor_clks to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fixed_factor_clks, align 4
  %tobool22.not = icmp eq ptr %23, null
  br i1 %tobool22.not, label %if.end21.if.end25_crit_edge, label %if.then23

if.end21.if.end25_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %nr_fixed_factor_clks = getelementptr inbounds %struct.samsung_cmu_info, ptr %cmu, i32 0, i32 11
  %24 = ptrtoint ptr %nr_fixed_factor_clks to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nr_fixed_factor_clks, align 4
  tail call void @samsung_clk_register_fixed_factor(ptr noundef %call1, ptr noundef nonnull %23, i32 noundef %25) #16
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end21.if.end25_crit_edge
  %clk_regs = getelementptr inbounds %struct.samsung_cmu_info, ptr %cmu, i32 0, i32 15
  %26 = ptrtoint ptr %clk_regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clk_regs, align 4
  %tobool26.not = icmp eq ptr %27, null
  br i1 %tobool26.not, label %if.end25.if.end29_crit_edge, label %if.then27

if.end25.if.end29_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %nr_clk_regs = getelementptr inbounds %struct.samsung_cmu_info, ptr %cmu, i32 0, i32 16
  %28 = ptrtoint ptr %nr_clk_regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nr_clk_regs, align 4
  %suspend_regs = getelementptr inbounds %struct.samsung_cmu_info, ptr %cmu, i32 0, i32 17
  %30 = ptrtoint ptr %suspend_regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %suspend_regs, align 4
  %nr_suspend_regs = getelementptr inbounds %struct.samsung_cmu_info, ptr %cmu, i32 0, i32 18
  %32 = ptrtoint ptr %nr_suspend_regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nr_suspend_regs, align 4
  tail call void @samsung_clk_extended_sleep_init(ptr noundef nonnull %call, ptr noundef nonnull %27, i32 noundef %29, ptr noundef %31, i32 noundef %33)
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end25.if.end29_crit_edge
  %cpu_clks = getelementptr inbounds %struct.samsung_cmu_info, ptr %cmu, i32 0, i32 13
  %34 = ptrtoint ptr %cpu_clks to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cpu_clks, align 4
  %tobool30.not = icmp eq ptr %35, null
  br i1 %tobool30.not, label %if.end29.if.end33_crit_edge, label %if.then31

if.end29.if.end33_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %nr_cpu_clks = getelementptr inbounds %struct.samsung_cmu_info, ptr %cmu, i32 0, i32 14
  %36 = ptrtoint ptr %nr_cpu_clks to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nr_cpu_clks, align 4
  tail call void @samsung_clk_register_cpu(ptr noundef %call1, ptr noundef nonnull %35, i32 noundef %37) #10
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end29.if.end33_crit_edge
  tail call void @samsung_clk_of_add_provider(ptr noundef %np, ptr noundef %call1) #16
  ret ptr %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_register_pll(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_register_cpu(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_clk_suspend() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_cache.019 = load ptr, ptr @clock_reg_cache_list, align 4
  %cmp.not20 = icmp eq ptr %reg_cache.019, @clock_reg_cache_list
  br i1 %cmp.not20, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %samsung_clk_restore.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %reg_cache.021 = phi ptr [ %reg_cache.0, %samsung_clk_restore.exit.for.body_crit_edge ], [ %reg_cache.019, %entry.for.body_crit_edge ]
  %reg_base = getelementptr inbounds %struct.samsung_clock_reg_cache, ptr %reg_cache.021, i32 0, i32 1
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %rd_num = getelementptr inbounds %struct.samsung_clock_reg_cache, ptr %reg_cache.021, i32 0, i32 3
  %2 = ptrtoint ptr %rd_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rd_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not5.i = icmp eq i32 %3, 0
  br i1 %cmp.not5.i, label %for.body.samsung_clk_save.exit_crit_edge, label %for.body.i.preheader

for.body.samsung_clk_save.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %samsung_clk_save.exit

for.body.i.preheader:                             ; preds = %for.body
  %rdump = getelementptr inbounds %struct.samsung_clock_reg_cache, ptr %reg_cache.021, i32 0, i32 2
  %4 = ptrtoint ptr %rdump to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rdump, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %rd.addr.07.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %5, %for.body.i.preheader ]
  %num_regs.addr.06.i = phi i32 [ %dec.i, %for.body.i.for.body.i_crit_edge ], [ %3, %for.body.i.preheader ]
  %6 = ptrtoint ptr %rd.addr.07.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rd.addr.07.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !69
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !70
  %value.i = getelementptr inbounds %struct.samsung_clk_reg_dump, ptr %rd.addr.07.i, i32 0, i32 1
  %10 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %value.i, align 4
  %dec.i = add i32 %num_regs.addr.06.i, -1
  %incdec.ptr.i = getelementptr %struct.samsung_clk_reg_dump, ptr %rd.addr.07.i, i32 1
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %for.body.i.samsung_clk_save.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.samsung_clk_save.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %samsung_clk_save.exit

samsung_clk_save.exit:                            ; preds = %for.body.i.samsung_clk_save.exit_crit_edge, %for.body.samsung_clk_save.exit_crit_edge
  %11 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_base, align 4
  %rsuspend_num = getelementptr inbounds %struct.samsung_clock_reg_cache, ptr %reg_cache.021, i32 0, i32 5
  %13 = ptrtoint ptr %rsuspend_num to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rsuspend_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.not4.i = icmp eq i32 %14, 0
  br i1 %cmp.not4.i, label %samsung_clk_save.exit.samsung_clk_restore.exit_crit_edge, label %do.body.i.preheader

samsung_clk_save.exit.samsung_clk_restore.exit_crit_edge: ; preds = %samsung_clk_save.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %samsung_clk_restore.exit

do.body.i.preheader:                              ; preds = %samsung_clk_save.exit
  %rsuspend = getelementptr inbounds %struct.samsung_clock_reg_cache, ptr %reg_cache.021, i32 0, i32 4
  %15 = ptrtoint ptr %rsuspend to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rsuspend, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.i.preheader
  %num_regs.addr.06.i13 = phi i32 [ %dec.i16, %do.body.i.do.body.i_crit_edge ], [ %14, %do.body.i.preheader ]
  %rd.addr.05.i = phi ptr [ %incdec.ptr.i17, %do.body.i.do.body.i_crit_edge ], [ %16, %do.body.i.preheader ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !71
  tail call void @arm_heavy_mb() #10
  %value.i14 = getelementptr inbounds %struct.samsung_clk_reg_dump, ptr %rd.addr.05.i, i32 0, i32 1
  %17 = ptrtoint ptr %value.i14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %value.i14, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #10
  %20 = ptrtoint ptr %rd.addr.05.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rd.addr.05.i, align 4
  %add.ptr.i15 = getelementptr i8, ptr %12, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 %19) #10, !srcloc !72
  %dec.i16 = add i32 %num_regs.addr.06.i13, -1
  %incdec.ptr.i17 = getelementptr %struct.samsung_clk_reg_dump, ptr %rd.addr.05.i, i32 1
  %cmp.not.i18 = icmp eq i32 %dec.i16, 0
  br i1 %cmp.not.i18, label %do.body.i.samsung_clk_restore.exit_crit_edge, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.body.i.samsung_clk_restore.exit_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %samsung_clk_restore.exit

samsung_clk_restore.exit:                         ; preds = %do.body.i.samsung_clk_restore.exit_crit_edge, %samsung_clk_save.exit.samsung_clk_restore.exit_crit_edge
  %22 = ptrtoint ptr %reg_cache.021 to i32
  call void @__asan_load4_noabort(i32 %22)
  %reg_cache.0 = load ptr, ptr %reg_cache.021, align 4
  %cmp.not = icmp eq ptr %reg_cache.0, @clock_reg_cache_list
  br i1 %cmp.not, label %samsung_clk_restore.exit.for.end_crit_edge, label %samsung_clk_restore.exit.for.body_crit_edge

samsung_clk_restore.exit.for.body_crit_edge:      ; preds = %samsung_clk_restore.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

samsung_clk_restore.exit.for.end_crit_edge:       ; preds = %samsung_clk_restore.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %samsung_clk_restore.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @samsung_clk_resume() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_cache.09 = load ptr, ptr @clock_reg_cache_list, align 4
  %cmp.not10 = icmp eq ptr %reg_cache.09, @clock_reg_cache_list
  br i1 %cmp.not10, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %samsung_clk_restore.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %reg_cache.011 = phi ptr [ %reg_cache.0, %samsung_clk_restore.exit.for.body_crit_edge ], [ %reg_cache.09, %entry.for.body_crit_edge ]
  %reg_base = getelementptr inbounds %struct.samsung_clock_reg_cache, ptr %reg_cache.011, i32 0, i32 1
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %rd_num = getelementptr inbounds %struct.samsung_clock_reg_cache, ptr %reg_cache.011, i32 0, i32 3
  %2 = ptrtoint ptr %rd_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rd_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not4.i = icmp eq i32 %3, 0
  br i1 %cmp.not4.i, label %for.body.samsung_clk_restore.exit_crit_edge, label %do.body.i.preheader

for.body.samsung_clk_restore.exit_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %samsung_clk_restore.exit

do.body.i.preheader:                              ; preds = %for.body
  %rdump = getelementptr inbounds %struct.samsung_clock_reg_cache, ptr %reg_cache.011, i32 0, i32 2
  %4 = ptrtoint ptr %rdump to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rdump, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.i.preheader
  %num_regs.addr.06.i = phi i32 [ %dec.i, %do.body.i.do.body.i_crit_edge ], [ %3, %do.body.i.preheader ]
  %rd.addr.05.i = phi ptr [ %incdec.ptr.i, %do.body.i.do.body.i_crit_edge ], [ %5, %do.body.i.preheader ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !71
  tail call void @arm_heavy_mb() #10
  %value.i = getelementptr inbounds %struct.samsung_clk_reg_dump, ptr %rd.addr.05.i, i32 0, i32 1
  %6 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value.i, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #10
  %9 = ptrtoint ptr %rd.addr.05.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rd.addr.05.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #10, !srcloc !72
  %dec.i = add i32 %num_regs.addr.06.i, -1
  %incdec.ptr.i = getelementptr %struct.samsung_clk_reg_dump, ptr %rd.addr.05.i, i32 1
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %do.body.i.samsung_clk_restore.exit_crit_edge, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.body.i.samsung_clk_restore.exit_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %samsung_clk_restore.exit

samsung_clk_restore.exit:                         ; preds = %do.body.i.samsung_clk_restore.exit_crit_edge, %for.body.samsung_clk_restore.exit_crit_edge
  %11 = ptrtoint ptr %reg_cache.011 to i32
  call void @__asan_load4_noabort(i32 %11)
  %reg_cache.0 = load ptr, ptr %reg_cache.011, align 4
  %cmp.not = icmp eq ptr %reg_cache.0, @clock_reg_cache_list
  br i1 %cmp.not, label %samsung_clk_restore.exit.for.end_crit_edge, label %samsung_clk_restore.exit.for.body_crit_edge

samsung_clk_restore.exit.for.body_crit_edge:      ; preds = %samsung_clk_restore.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

samsung_clk_restore.exit.for.end_crit_edge:       ; preds = %samsung_clk_restore.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %samsung_clk_restore.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { cold }
attributes #17 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !50, !52, !54, !56, !58}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/samsung/clk.c", i32 65, i32 9}
!2 = !{ptr @samsung_clk_init.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/clk/samsung/clk.c", i32 72, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/clk/samsung/clk.c", i32 83, i32 10}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/clk/samsung/clk.c", i32 105, i32 4}
!9 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @samsung_clk_register_alias._entry, !8, !"_entry", i1 false, i1 false}
!12 = !{ptr @samsung_clk_register_alias._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/clk/samsung/clk.c", i32 112, i32 4}
!15 = !{ptr @samsung_clk_register_alias._entry.6, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @samsung_clk_register_alias._entry_ptr.8, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/clk/samsung/clk.c", i32 120, i32 4}
!19 = !{ptr @samsung_clk_register_alias._entry.9, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @samsung_clk_register_alias._entry_ptr.11, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/samsung/clk.c", i32 137, i32 4}
!23 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @samsung_clk_register_fixed_rate._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @samsung_clk_register_fixed_rate._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/samsung/clk.c", i32 150, i32 4}
!28 = !{ptr @samsung_clk_register_fixed_rate._entry.14, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @samsung_clk_register_fixed_rate._entry_ptr.16, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/samsung/clk.c", i32 166, i32 4}
!32 = !{ptr @samsung_clk_register_fixed_factor._entry, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @samsung_clk_register_fixed_factor._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/samsung/clk.c", i32 189, i32 4}
!36 = !{ptr @samsung_clk_register_mux._entry, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @samsung_clk_register_mux._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/samsung/clk.c", i32 219, i32 4}
!40 = !{ptr @samsung_clk_register_div._entry, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @samsung_clk_register_div._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/samsung/clk.c", i32 241, i32 4}
!44 = !{ptr @samsung_clk_register_gate._entry, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @samsung_clk_register_gate._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/samsung/clk.c", i32 264, i32 36}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/samsung/clk.c", i32 310, i32 9}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/samsung/clk.c", i32 314, i32 9}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/samsung/clk.c", i32 340, i32 9}
!54 = !{ptr @__func__.samsung_cmu_register_one, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/samsung/clk.c", i32 340, i32 42}
!56 = !{ptr @clock_reg_cache_list, !57, !"clock_reg_cache_list", i1 false, i1 false}
!57 = !{!"../drivers/clk/samsung/clk.c", i32 21, i32 8}
!58 = !{ptr @samsung_clk_syscore_ops, !59, !"samsung_clk_syscore_ops", i1 false, i1 false}
!59 = !{!"../drivers/clk/samsung/clk.c", i32 294, i32 27}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{i64 4988482}
!70 = !{i64 2152578850}
!71 = !{i64 2152579070}
!72 = !{i64 4988064}
!73 = !{!"branch_weights", i32 1, i32 2000}
!74 = !{!"auto-init"}
