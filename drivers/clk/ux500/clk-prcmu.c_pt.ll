; ModuleID = '/llk/IR_all_yes/drivers/clk/ux500/clk-prcmu.c_pt.bc'
source_filename = "../drivers/clk/ux500/clk-prcmu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_prcmu = type { %struct.clk_hw, i8, i32, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }

@clk_prcmu_scalable_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @clk_prcmu_prepare, ptr @clk_prcmu_unprepare, ptr @clk_prcmu_is_prepared, ptr null, ptr @clk_prcmu_enable, ptr @clk_prcmu_disable, ptr @clk_prcmu_is_enabled, ptr null, ptr null, ptr null, ptr @clk_prcmu_recalc_rate, ptr @clk_prcmu_round_rate, ptr null, ptr null, ptr null, ptr @clk_prcmu_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@clk_prcmu_gate_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @clk_prcmu_prepare, ptr @clk_prcmu_unprepare, ptr @clk_prcmu_is_prepared, ptr null, ptr @clk_prcmu_enable, ptr @clk_prcmu_disable, ptr @clk_prcmu_is_enabled, ptr null, ptr null, ptr null, ptr @clk_prcmu_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@clk_prcmu_scalable_rate_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_prcmu_is_enabled, ptr null, ptr null, ptr null, ptr @clk_prcmu_recalc_rate, ptr @clk_prcmu_round_rate, ptr null, ptr null, ptr null, ptr @clk_prcmu_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@clk_prcmu_rate_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_prcmu_is_enabled, ptr null, ptr null, ptr null, ptr @clk_prcmu_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@clk_prcmu_opp_gate_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @clk_prcmu_opp_prepare, ptr @clk_prcmu_opp_unprepare, ptr @clk_prcmu_is_prepared, ptr null, ptr @clk_prcmu_enable, ptr @clk_prcmu_disable, ptr @clk_prcmu_is_enabled, ptr null, ptr null, ptr null, ptr @clk_prcmu_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@clk_prcmu_opp_volt_scalable_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @clk_prcmu_opp_volt_prepare, ptr @clk_prcmu_opp_volt_unprepare, ptr @clk_prcmu_is_prepared, ptr null, ptr @clk_prcmu_enable, ptr @clk_prcmu_disable, ptr @clk_prcmu_is_enabled, ptr null, ptr null, ptr null, ptr @clk_prcmu_recalc_rate, ptr @clk_prcmu_round_rate, ptr null, ptr null, ptr null, ptr @clk_prcmu_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@clk_reg_prcmu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013clk_prcmu: %s invalid arguments passed\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_reg_prcmu\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/clk/ux500/clk-prcmu.c\00", [34 x i8] zeroinitializer }, align 32
@clk_reg_prcmu._entry_ptr = internal global ptr @clk_reg_prcmu._entry, section ".printk_index", align 4
@clk_reg_prcmu._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013clk_prcmu: %s failed to register clk\0A\00", [56 x i8] zeroinitializer }, align 32
@clk_reg_prcmu._entry_ptr.5 = internal global ptr @clk_reg_prcmu._entry.3, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@clk_prcmu_unprepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 45, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013clk_prcmu: %s failed to disable %s.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clk_prcmu_unprepare\00", [44 x i8] zeroinitializer }, align 32
@clk_prcmu_unprepare._entry_ptr = internal global ptr @clk_prcmu_unprepare._entry, section ".printk_index", align 4
@clk_prcmu_opp_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013clk_prcmu: %s fail req APE OPP for %s.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"clk_prcmu_opp_prepare\00", [42 x i8] zeroinitializer }, align 32
@clk_prcmu_opp_prepare._entry_ptr = internal global ptr @clk_prcmu_opp_prepare._entry, section ".printk_index", align 4
@clk_prcmu_opp_unprepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.10, ptr @.str.2, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"clk_prcmu_opp_unprepare\00", [40 x i8] zeroinitializer }, align 32
@clk_prcmu_opp_unprepare._entry_ptr = internal global ptr @clk_prcmu_opp_unprepare._entry, section ".printk_index", align 4
@clk_prcmu_opp_volt_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013clk_prcmu: %s fail req APE OPP VOLT for %s.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"clk_prcmu_opp_volt_prepare\00", [37 x i8] zeroinitializer }, align 32
@clk_prcmu_opp_volt_prepare._entry_ptr = internal global ptr @clk_prcmu_opp_volt_prepare._entry, section ".printk_index", align 4
@clk_prcmu_opp_volt_unprepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.13, ptr @.str.2, i32 176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"clk_prcmu_opp_volt_unprepare\00", [35 x i8] zeroinitializer }, align 32
@clk_prcmu_opp_volt_unprepare._entry_ptr = internal global ptr @clk_prcmu_opp_volt_unprepare._entry, section ".printk_index", align 4
@___asan_gen_.14 = private unnamed_addr constant [23 x i8] c"clk_prcmu_scalable_ops\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 188, i32 29 }
@___asan_gen_.17 = private unnamed_addr constant [19 x i8] c"clk_prcmu_gate_ops\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 200, i32 29 }
@___asan_gen_.20 = private unnamed_addr constant [28 x i8] c"clk_prcmu_scalable_rate_ops\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 210, i32 29 }
@___asan_gen_.23 = private unnamed_addr constant [19 x i8] c"clk_prcmu_rate_ops\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 217, i32 29 }
@___asan_gen_.26 = private unnamed_addr constant [23 x i8] c"clk_prcmu_opp_gate_ops\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 222, i32 29 }
@___asan_gen_.29 = private unnamed_addr constant [32 x i8] c"clk_prcmu_opp_volt_scalable_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 232, i32 29 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 256, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 287, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 44, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 106, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 130, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 152, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.87 = private constant [33 x i8] c"../drivers/clk/ux500/clk-prcmu.c\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 175, i32 3 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @clk_prcmu_opp_prepare._entry, ptr @clk_prcmu_opp_prepare._entry_ptr, ptr @clk_prcmu_opp_unprepare._entry, ptr @clk_prcmu_opp_unprepare._entry_ptr, ptr @clk_prcmu_opp_volt_prepare._entry, ptr @clk_prcmu_opp_volt_prepare._entry_ptr, ptr @clk_prcmu_opp_volt_unprepare._entry, ptr @clk_prcmu_opp_volt_unprepare._entry_ptr, ptr @clk_prcmu_unprepare._entry, ptr @clk_prcmu_unprepare._entry_ptr, ptr @clk_reg_prcmu._entry, ptr @clk_reg_prcmu._entry.3, ptr @clk_reg_prcmu._entry_ptr, ptr @clk_reg_prcmu._entry_ptr.5, ptr @clk_prcmu_scalable_ops, ptr @clk_prcmu_gate_ops, ptr @clk_prcmu_scalable_rate_ops, ptr @clk_prcmu_rate_ops, ptr @clk_prcmu_opp_gate_ops, ptr @clk_prcmu_opp_volt_scalable_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_prcmu_scalable_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_prcmu_gate_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_prcmu_scalable_rate_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_prcmu_rate_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_prcmu_opp_gate_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_prcmu_opp_volt_scalable_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_reg_prcmu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_reg_prcmu._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_prcmu_unprepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_prcmu_opp_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_prcmu_opp_unprepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_prcmu_opp_volt_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_prcmu_opp_volt_unprepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @clk_reg_prcmu_scalable(ptr noundef %name, ptr noundef %parent_name, i8 noundef zeroext %cg_sel, i32 noundef %rate, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @clk_reg_prcmu(ptr noundef %name, ptr noundef %parent_name, i8 noundef zeroext %cg_sel, i32 noundef %rate, i32 noundef %flags, ptr noundef nonnull @clk_prcmu_scalable_ops)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @clk_reg_prcmu(ptr noundef %name, ptr noundef %parent_name, i8 noundef zeroext %cg_sel, i32 noundef %rate, i32 noundef %flags, ptr noundef %clk_prcmu_ops) unnamed_addr #0 align 64 {
entry:
  %parent_name.addr = alloca ptr, align 4
  %clk_prcmu_init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %parent_name, ptr %parent_name.addr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %clk_prcmu_init) #7
  %1 = getelementptr inbounds i8, ptr %clk_prcmu_init, i32 12
  %2 = call ptr @memset(ptr %1, i32 255, i32 12)
  %tobool.not = icmp eq ptr %name, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 28) #11
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %cg_sel7 = getelementptr inbounds %struct.clk_prcmu, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %cg_sel7 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %cg_sel, ptr %cg_sel7, align 4
  %is_prepared = getelementptr inbounds %struct.clk_prcmu, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %is_prepared to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %is_prepared, align 8
  %is_enabled = getelementptr inbounds %struct.clk_prcmu, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %is_enabled to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %is_enabled, align 4
  %opp_requested = getelementptr inbounds %struct.clk_prcmu, ptr %call7.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %opp_requested to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %opp_requested, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %tobool8.not = icmp eq i32 %rate, 0
  br i1 %tobool8.not, label %if.end6.if.end11_crit_edge, label %if.then9

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = tail call i32 @prcmu_set_clock_rate(i8 noundef zeroext %cg_sel, i32 noundef %rate) #7
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end6.if.end11_crit_edge
  %8 = ptrtoint ptr %clk_prcmu_init to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %name, ptr %clk_prcmu_init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %clk_prcmu_init, i32 0, i32 1
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %clk_prcmu_ops, ptr %ops, align 4
  %flags13 = getelementptr inbounds %struct.clk_init_data, ptr %clk_prcmu_init, i32 0, i32 6
  %10 = ptrtoint ptr %flags13 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %flags, ptr %flags13, align 4
  %11 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent_name.addr, align 4
  %tobool14.not = icmp eq ptr %12, null
  %parent_name.addr. = select i1 %tobool14.not, ptr null, ptr %parent_name.addr
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %clk_prcmu_init, i32 0, i32 2
  %13 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %parent_name.addr., ptr %parent_names, align 4
  %tobool15.not = icmp ne ptr %12, null
  %conv = zext i1 %tobool15.not to i8
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %clk_prcmu_init, i32 0, i32 5
  %14 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %num_parents, align 4
  %init = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %clk_prcmu_init, ptr %init, align 8
  %call18 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #7
  %tobool.not.i = icmp eq ptr %call18, null
  %cmp.i = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %free_clk, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

free_clk:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #10
  br label %cleanup

cleanup:                                          ; preds = %free_clk, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %free_clk ], [ inttoptr (i32 -22 to ptr), %do.end ], [ %call18, %if.end11.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %clk_prcmu_init) #7
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @clk_reg_prcmu_gate(ptr noundef %name, ptr noundef %parent_name, i8 noundef zeroext %cg_sel, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @clk_reg_prcmu(ptr noundef %name, ptr noundef %parent_name, i8 noundef zeroext %cg_sel, i32 noundef 0, i32 noundef %flags, ptr noundef nonnull @clk_prcmu_gate_ops)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @clk_reg_prcmu_scalable_rate(ptr noundef %name, ptr noundef %parent_name, i8 noundef zeroext %cg_sel, i32 noundef %rate, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @clk_reg_prcmu(ptr noundef %name, ptr noundef %parent_name, i8 noundef zeroext %cg_sel, i32 noundef %rate, i32 noundef %flags, ptr noundef nonnull @clk_prcmu_scalable_rate_ops)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @clk_reg_prcmu_rate(ptr noundef %name, ptr noundef %parent_name, i8 noundef zeroext %cg_sel, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @clk_reg_prcmu(ptr noundef %name, ptr noundef %parent_name, i8 noundef zeroext %cg_sel, i32 noundef 0, i32 noundef %flags, ptr noundef nonnull @clk_prcmu_rate_ops)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @clk_reg_prcmu_opp_gate(ptr noundef %name, ptr noundef %parent_name, i8 noundef zeroext %cg_sel, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @clk_reg_prcmu(ptr noundef %name, ptr noundef %parent_name, i8 noundef zeroext %cg_sel, i32 noundef 0, i32 noundef %flags, ptr noundef nonnull @clk_prcmu_opp_gate_ops)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @clk_reg_prcmu_opp_volt_scalable(ptr noundef %name, ptr noundef %parent_name, i8 noundef zeroext %cg_sel, i32 noundef %rate, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @clk_reg_prcmu(ptr noundef %name, ptr noundef %parent_name, i8 noundef zeroext %cg_sel, i32 noundef %rate, i32 noundef %flags, ptr noundef nonnull @clk_prcmu_opp_volt_scalable_ops)
  ret ptr %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prcmu_set_clock_rate(i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_prcmu_prepare(ptr nocapture noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_sel = getelementptr inbounds %struct.clk_prcmu, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %cg_sel to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cg_sel, align 4
  %call.i = tail call i32 @db8500_prcmu_request_clock(i8 noundef zeroext %1, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %is_prepared = getelementptr inbounds %struct.clk_prcmu, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %is_prepared to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %is_prepared, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_prcmu_unprepare(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_sel = getelementptr inbounds %struct.clk_prcmu, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %cg_sel to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cg_sel, align 4
  %call.i = tail call i32 @db8500_prcmu_request_clock(i8 noundef zeroext %1, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #7
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef %call2) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %is_prepared = getelementptr inbounds %struct.clk_prcmu, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %is_prepared to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %is_prepared, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @clk_prcmu_is_prepared(ptr nocapture noundef readonly %hw) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %is_prepared = getelementptr inbounds %struct.clk_prcmu, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %is_prepared to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %is_prepared, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @clk_prcmu_enable(ptr nocapture noundef writeonly %hw) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %is_enabled = getelementptr inbounds %struct.clk_prcmu, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %is_enabled to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %is_enabled, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @clk_prcmu_disable(ptr nocapture noundef writeonly %hw) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %is_enabled = getelementptr inbounds %struct.clk_prcmu, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %is_enabled to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %is_enabled, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @clk_prcmu_is_enabled(ptr nocapture noundef readonly %hw) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %is_enabled = getelementptr inbounds %struct.clk_prcmu, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %is_enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %is_enabled, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_prcmu_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_sel = getelementptr inbounds %struct.clk_prcmu, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %cg_sel to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cg_sel, align 4
  %call = tail call i32 @prcmu_clock_rate(i8 noundef zeroext %1) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_prcmu_round_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, ptr nocapture noundef readnone %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_sel = getelementptr inbounds %struct.clk_prcmu, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %cg_sel to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cg_sel, align 4
  %call = tail call i32 @prcmu_round_clock_rate(i8 noundef zeroext %1, i32 noundef %rate) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_prcmu_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_sel = getelementptr inbounds %struct.clk_prcmu, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %cg_sel to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cg_sel, align 4
  %call = tail call i32 @prcmu_set_clock_rate(i8 noundef zeroext %1, i32 noundef %rate) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @db8500_prcmu_request_clock(i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prcmu_clock_rate(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prcmu_round_clock_rate(i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_prcmu_opp_prepare(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %opp_requested = getelementptr inbounds %struct.clk_prcmu, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %opp_requested to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %opp_requested, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call ptr @clk_hw_get_name(ptr noundef %hw) #7
  %2 = ptrtoint ptr %opp_requested to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %opp_requested, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then, %entry.if.end8_crit_edge
  %cg_sel = getelementptr inbounds %struct.clk_prcmu, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %cg_sel to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %cg_sel, align 4
  %call.i = tail call i32 @db8500_prcmu_request_clock(i8 noundef zeroext %4, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not = icmp eq i32 %call.i, 0
  br i1 %tobool10.not, label %if.end14, label %if.then11

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #7
  %5 = ptrtoint ptr %opp_requested to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %opp_requested, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %is_prepared = getelementptr inbounds %struct.clk_prcmu, ptr %hw, i32 0, i32 2
  %6 = ptrtoint ptr %is_prepared to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %is_prepared, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then11
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_prcmu_opp_unprepare(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_sel = getelementptr inbounds %struct.clk_prcmu, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %cg_sel to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cg_sel, align 4
  %call.i = tail call i32 @db8500_prcmu_request_clock(i8 noundef zeroext %1, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #7
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.10, ptr noundef %call2) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %opp_requested = getelementptr inbounds %struct.clk_prcmu, ptr %hw, i32 0, i32 4
  %2 = ptrtoint ptr %opp_requested to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %opp_requested, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool4.not = icmp eq i32 %3, 0
  br i1 %tobool4.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #7
  %4 = ptrtoint ptr %opp_requested to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %opp_requested, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %is_prepared = getelementptr inbounds %struct.clk_prcmu, ptr %hw, i32 0, i32 2
  %5 = ptrtoint ptr %is_prepared to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %is_prepared, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_prcmu_opp_volt_prepare(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %opp_requested = getelementptr inbounds %struct.clk_prcmu, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %opp_requested to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %opp_requested, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @db8500_prcmu_request_ape_opp_100_voltage(i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not = icmp eq i32 %call.i, 0
  br i1 %tobool1.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #7
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef %call4) #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %opp_requested to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %opp_requested, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry.if.end7_crit_edge
  %cg_sel = getelementptr inbounds %struct.clk_prcmu, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %cg_sel to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %cg_sel, align 4
  %call.i23 = tail call i32 @db8500_prcmu_request_clock(i8 noundef zeroext %4, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %tobool9.not = icmp eq i32 %call.i23, 0
  br i1 %tobool9.not, label %if.end13, label %if.then10

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %call.i24 = tail call i32 @db8500_prcmu_request_ape_opp_100_voltage(i1 noundef zeroext false) #7
  %5 = ptrtoint ptr %opp_requested to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %opp_requested, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %is_prepared = getelementptr inbounds %struct.clk_prcmu, ptr %hw, i32 0, i32 2
  %6 = ptrtoint ptr %is_prepared to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %is_prepared, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then10, %do.end
  %retval.0 = phi i32 [ %call.i23, %if.then10 ], [ 0, %if.end13 ], [ %call.i, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_prcmu_opp_volt_unprepare(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cg_sel = getelementptr inbounds %struct.clk_prcmu, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %cg_sel to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cg_sel, align 4
  %call.i = tail call i32 @db8500_prcmu_request_clock(i8 noundef zeroext %1, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #7
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.13, ptr noundef %call2) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %opp_requested = getelementptr inbounds %struct.clk_prcmu, ptr %hw, i32 0, i32 4
  %2 = ptrtoint ptr %opp_requested to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %opp_requested, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool4.not = icmp eq i32 %3, 0
  br i1 %tobool4.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i13 = tail call i32 @db8500_prcmu_request_ape_opp_100_voltage(i1 noundef zeroext false) #7
  %4 = ptrtoint ptr %opp_requested to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %opp_requested, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %is_prepared = getelementptr inbounds %struct.clk_prcmu, ptr %hw, i32 0, i32 2
  %5 = ptrtoint ptr %is_prepared to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %is_prepared, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @db8500_prcmu_request_ape_opp_100_voltage(i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !15, !16, !17, !19, !21, !23, !25, !27, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40, !41, !43, !44}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/ux500/clk-prcmu.c", i32 256, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @clk_reg_prcmu._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @clk_reg_prcmu._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/ux500/clk-prcmu.c", i32 287, i32 2}
!8 = !{ptr @clk_reg_prcmu._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @clk_reg_prcmu._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @clk_prcmu_scalable_ops, !11, !"clk_prcmu_scalable_ops", i1 false, i1 false}
!11 = !{!"../drivers/clk/ux500/clk-prcmu.c", i32 188, i32 29}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/ux500/clk-prcmu.c", i32 44, i32 3}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @clk_prcmu_unprepare._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @clk_prcmu_unprepare._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @clk_prcmu_gate_ops, !18, !"clk_prcmu_gate_ops", i1 false, i1 false}
!18 = !{!"../drivers/clk/ux500/clk-prcmu.c", i32 200, i32 29}
!19 = !{ptr @clk_prcmu_scalable_rate_ops, !20, !"clk_prcmu_scalable_rate_ops", i1 false, i1 false}
!20 = !{!"../drivers/clk/ux500/clk-prcmu.c", i32 210, i32 29}
!21 = !{ptr @clk_prcmu_rate_ops, !22, !"clk_prcmu_rate_ops", i1 false, i1 false}
!22 = !{!"../drivers/clk/ux500/clk-prcmu.c", i32 217, i32 29}
!23 = !{ptr @clk_prcmu_opp_gate_ops, !24, !"clk_prcmu_opp_gate_ops", i1 false, i1 false}
!24 = !{!"../drivers/clk/ux500/clk-prcmu.c", i32 222, i32 29}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clk/ux500/clk-prcmu.c", i32 106, i32 4}
!27 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @clk_prcmu_opp_prepare._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @clk_prcmu_opp_prepare._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/ux500/clk-prcmu.c", i32 130, i32 3}
!32 = !{ptr @clk_prcmu_opp_unprepare._entry, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @clk_prcmu_opp_unprepare._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @clk_prcmu_opp_volt_scalable_ops, !35, !"clk_prcmu_opp_volt_scalable_ops", i1 false, i1 false}
!35 = !{!"../drivers/clk/ux500/clk-prcmu.c", i32 232, i32 29}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/ux500/clk-prcmu.c", i32 152, i32 4}
!38 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @clk_prcmu_opp_volt_prepare._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @clk_prcmu_opp_volt_prepare._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/clk/ux500/clk-prcmu.c", i32 175, i32 3}
!43 = !{ptr @clk_prcmu_opp_volt_unprepare._entry, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @clk_prcmu_opp_volt_unprepare._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
