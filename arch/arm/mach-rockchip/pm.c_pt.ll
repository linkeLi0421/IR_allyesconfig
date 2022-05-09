; ModuleID = '/llk/IR_all_yes/arch/arm/mach-rockchip/pm.c_pt.bc'
source_filename = "../arch/arm/mach-rockchip/pm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rockchip_pm_data = type { ptr, ptr }
%struct.platform_suspend_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }

@rockchip_pmu_of_device_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3288-pmu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3288_pm_data }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@rockchip_suspend_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013Failed to find PMU node\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rockchip_suspend_init\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"arch/arm/mach-rockchip/pm.c\00", [36 x i8] zeroinitializer }, align 32
@rockchip_suspend_init._entry_ptr = internal global ptr @rockchip_suspend_init._entry, section ".printk_index", align 4
@rockchip_suspend_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: matches init error %d\0A\00", [35 x i8] zeroinitializer }, align 32
@rockchip_suspend_init._entry_ptr.5 = internal global ptr @rockchip_suspend_init._entry.3, section ".printk_index", align 4
@rk3288_pm_data = internal constant %struct.rockchip_pm_data { ptr @rk3288_suspend_ops, ptr @rk3288_suspend_init }, section ".init.rodata", align 4
@rk3288_suspend_ops = internal constant { %struct.platform_suspend_ops, [56 x i8] } { %struct.platform_suspend_ops { ptr @suspend_valid_only_mem, ptr null, ptr @rk3288_suspend_prepare, ptr null, ptr @rk3288_suspend_enter, ptr null, ptr @rk3288_suspend_finish, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@sgrf_regmap = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rk3288_sgrf_cpu_con0 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@rk3288_sgrf_soc_con0 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@pmu_regmap = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rk3288_pmu_pwr_mode_con = internal global { i32, [28 x i8] } zeroinitializer, align 32
@rk3288_bootram_phy = internal global { i32, [28 x i8] } zeroinitializer, align 32
@grf_regmap = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@cpu_vtable = external dso_local local_unnamed_addr global [0 x ptr], align 4
@rockchip_lpmode_enter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013%s: Failed to suspend\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rockchip_lpmode_enter\00", [42 x i8] zeroinitializer }, align 32
@rockchip_lpmode_enter._entry_ptr = internal global ptr @rockchip_lpmode_enter._entry, section ".printk_index", align 4
@rk3288_suspend_finish._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: Suspend finish failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rk3288_suspend_finish\00", [42 x i8] zeroinitializer }, align 32
@rk3288_suspend_finish._entry_ptr = internal global ptr @rk3288_suspend_finish._entry, section ".printk_index", align 4
@rk3288_suspend_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: could not find pmu regmap\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rk3288_suspend_init\00", [44 x i8] zeroinitializer }, align 32
@rk3288_suspend_init._entry_ptr = internal global ptr @rk3288_suspend_init._entry, section ".printk_index", align 4
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rockchip,rk3288-sgrf\00", [43 x i8] zeroinitializer }, align 32
@rk3288_suspend_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.2, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: could not find sgrf regmap\0A\00", [62 x i8] zeroinitializer }, align 32
@rk3288_suspend_init._entry_ptr.15 = internal global ptr @rk3288_suspend_init._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rockchip,rk3288-grf\00", [44 x i8] zeroinitializer }, align 32
@rk3288_suspend_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.11, ptr @.str.2, i32 246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: could not find grf regmap\0A\00", [63 x i8] zeroinitializer }, align 32
@rk3288_suspend_init._entry_ptr.19 = internal global ptr @rk3288_suspend_init._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rockchip,rk3288-pmu-sram\00", [39 x i8] zeroinitializer }, align 32
@rk3288_suspend_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.11, ptr @.str.2, i32 253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: could not find bootram dt node\0A\00", [58 x i8] zeroinitializer }, align 32
@rk3288_suspend_init._entry_ptr.23 = internal global ptr @rk3288_suspend_init._entry.21, section ".printk_index", align 4
@rk3288_bootram_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rk3288_suspend_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.11, ptr @.str.2, i32 259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: could not map bootram base\0A\00", [62 x i8] zeroinitializer }, align 32
@rk3288_suspend_init._entry_ptr.26 = internal global ptr @rk3288_suspend_init._entry.24, section ".printk_index", align 4
@rk3288_suspend_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.11, ptr @.str.2, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: could not get bootram phy addr\0A\00", [58 x i8] zeroinitializer }, align 32
@rk3288_suspend_init._entry_ptr.29 = internal global ptr @rk3288_suspend_init._entry.27, section ".printk_index", align 4
@rk3288_bootram_sz = external dso_local local_unnamed_addr global i32, align 4
@rkpm_bootdata_cpusp = external dso_local local_unnamed_addr global i32, align 4
@rkpm_bootdata_cpu_code = external dso_local local_unnamed_addr global i32, align 4
@rkpm_bootdata_l2ctlr_f = external dso_local local_unnamed_addr global i32, align 4
@rkpm_bootdata_l2ctlr = external dso_local local_unnamed_addr global i32, align 4
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 313, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 322, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant [19 x i8] c"rk3288_suspend_ops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 283, i32 42 }
@___asan_gen_.51 = private unnamed_addr constant [12 x i8] c"sgrf_regmap\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 38, i32 23 }
@___asan_gen_.54 = private unnamed_addr constant [21 x i8] c"rk3288_sgrf_cpu_con0\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 43, i32 12 }
@___asan_gen_.57 = private unnamed_addr constant [21 x i8] c"rk3288_sgrf_soc_con0\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 42, i32 12 }
@___asan_gen_.60 = private unnamed_addr constant [11 x i8] c"pmu_regmap\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 37, i32 23 }
@___asan_gen_.63 = private unnamed_addr constant [24 x i8] c"rk3288_pmu_pwr_mode_con\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 41, i32 12 }
@___asan_gen_.66 = private unnamed_addr constant [19 x i8] c"rk3288_bootram_phy\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 35, i32 20 }
@___asan_gen_.69 = private unnamed_addr constant [11 x i8] c"grf_regmap\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 39, i32 23 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 193, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 221, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 232, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 237, i32 5 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 239, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 244, i32 5 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 246, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 251, i32 8 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 253, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant [20 x i8] c"rk3288_bootram_base\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 34, i32 22 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 259, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.139 = private constant [31 x i8] c"../arch/arm/mach-rockchip/pm.c\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 266, i32 3 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @rk3288_suspend_finish._entry, ptr @rk3288_suspend_finish._entry_ptr, ptr @rk3288_suspend_init._entry, ptr @rk3288_suspend_init._entry.13, ptr @rk3288_suspend_init._entry.17, ptr @rk3288_suspend_init._entry.21, ptr @rk3288_suspend_init._entry.24, ptr @rk3288_suspend_init._entry.27, ptr @rk3288_suspend_init._entry_ptr, ptr @rk3288_suspend_init._entry_ptr.15, ptr @rk3288_suspend_init._entry_ptr.19, ptr @rk3288_suspend_init._entry_ptr.23, ptr @rk3288_suspend_init._entry_ptr.26, ptr @rk3288_suspend_init._entry_ptr.29, ptr @rockchip_lpmode_enter._entry, ptr @rockchip_lpmode_enter._entry_ptr, ptr @rockchip_suspend_init._entry, ptr @rockchip_suspend_init._entry.3, ptr @rockchip_suspend_init._entry_ptr, ptr @rockchip_suspend_init._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @rk3288_suspend_ops, ptr @sgrf_regmap, ptr @rk3288_sgrf_cpu_con0, ptr @rk3288_sgrf_soc_con0, ptr @pmu_regmap, ptr @rk3288_pmu_pwr_mode_con, ptr @rk3288_bootram_phy, ptr @grf_regmap, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @rk3288_bootram_base, ptr @.str.25, ptr @.str.28], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_suspend_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_suspend_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3288_suspend_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgrf_regmap to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3288_sgrf_cpu_con0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3288_sgrf_soc_con0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmu_regmap to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3288_pmu_pwr_mode_con to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3288_bootram_phy to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grf_regmap to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_lpmode_enter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3288_suspend_finish._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3288_suspend_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3288_suspend_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3288_suspend_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3288_suspend_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3288_bootram_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3288_suspend_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3288_suspend_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @rockchip_suspend_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %match = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %match) #7
  %0 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %match, align 4, !annotation !85
  %call = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @rockchip_pmu_of_device_ids, ptr noundef nonnull %match) #7
  %1 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %match, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.of_device_id, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %init = getelementptr inbounds %struct.rockchip_pm_data, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init, align 4
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %if.end.if.end14_crit_edge, label %if.then3

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then3:                                         ; preds = %if.end
  %call5 = call i32 %6(ptr noundef %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then3.if.end14_crit_edge, label %do.end10

if.then3.if.end14_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

do.end10:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %call5) #10
  br label %cleanup

if.end14:                                         ; preds = %if.then3.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  call void @suspend_set_ops(ptr noundef %8) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.end10, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %match) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @suspend_set_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rk3288_suspend_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #7
  %0 = call ptr @memset(ptr %res, i32 255, i32 32)
  %call = tail call ptr @syscon_node_to_regmap(ptr noundef %np) #7
  store ptr %call, ptr @pmu_regmap, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #10
  %1 = load ptr, ptr @pmu_regmap, align 4
  %2 = ptrtoint ptr %1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.12) #7
  store ptr %call4, ptr @sgrf_regmap, align 4
  %cmp.i58 = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i58, label %do.end9, label %if.end13

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.11) #10
  %3 = load ptr, ptr @sgrf_regmap, align 4
  %4 = ptrtoint ptr %3 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %call14 = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.16) #7
  store ptr %call14, ptr @grf_regmap, align 4
  %cmp.i59 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i59, label %do.end19, label %if.end23

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.11) #10
  %5 = load ptr, ptr @grf_regmap, align 4
  %6 = ptrtoint ptr %5 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end13
  %call24 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.20) #7
  %tobool.not = icmp eq ptr %call24, null
  br i1 %tobool.not, label %do.end28, label %if.end31

do.end28:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.11) #10
  br label %cleanup

if.end31:                                         ; preds = %if.end23
  %call32 = tail call ptr @of_iomap(ptr noundef nonnull %call24, i32 noundef 0) #7
  store ptr %call32, ptr @rk3288_bootram_base, align 4
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %do.end37, label %if.end40

do.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.11) #10
  tail call void @of_node_put(ptr noundef nonnull %call24) #7
  br label %cleanup

if.end40:                                         ; preds = %if.end31
  %call41 = call i32 @of_address_to_resource(ptr noundef nonnull %call24, i32 noundef 0, ptr noundef nonnull %res) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end49, label %do.end46

do.end46:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %call48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.11) #10
  call void @of_node_put(ptr noundef nonnull %call24) #7
  br label %cleanup

if.end49:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %res, align 4
  store i32 %8, ptr @rk3288_bootram_phy, align 4
  call void @of_node_put(ptr noundef nonnull %call24) #7
  %9 = load i32, ptr @rk3288_bootram_phy, align 4
  %add.i = add i32 %9, 4088
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @rkpm_bootdata_cpusp to i32))
  store i32 %add.i, ptr @rkpm_bootdata_cpusp, align 4
  %call.i = call i32 @__phys_addr_symbol(i32 noundef ptrtoint (ptr @cpu_resume to i32)) #7
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @rkpm_bootdata_cpu_code to i32))
  store i32 %call.i, ptr @rkpm_bootdata_cpu_code, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @rkpm_bootdata_l2ctlr_f to i32))
  store i32 1, ptr @rkpm_bootdata_l2ctlr_f, align 4
  %10 = tail call i32 asm "mrc p15, 1, $0, c9, c0, 2", "=r"() #11, !srcloc !86
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @rkpm_bootdata_l2ctlr to i32))
  store i32 %10, ptr @rkpm_bootdata_l2ctlr, align 4
  %11 = load ptr, ptr @rk3288_bootram_base, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rk3288_bootram_sz to i32))
  %12 = load i32, ptr @rk3288_bootram_sz, align 4
  %13 = call ptr @memcpy(ptr %11, ptr @rockchip_slp_cpu_resume, i32 %12)
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %do.end46, %do.end37, %do.end28, %do.end19, %do.end9, %do.end
  %retval.0 = phi i32 [ %2, %do.end ], [ %4, %do.end9 ], [ %6, %do.end19 ], [ %call41, %do.end46 ], [ 0, %if.end49 ], [ -12, %do.end37 ], [ -19, %do.end28 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @suspend_valid_only_mem(i32 noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rk3288_suspend_prepare() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk3288_suspend_enter(i32 noundef %state) #5 align 64 {
entry:
  %reg.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "cpsid f\09@ __clf", "~{memory},~{cc}"() #7, !srcloc !87
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i) #7
  %0 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg.i.i, align 4, !annotation !85
  %1 = load ptr, ptr @grf_regmap, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %1, i32 noundef 800, ptr noundef nonnull %reg.i.i) #7
  %2 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg.i.i, align 4
  %and.i.i = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.rk3288_slp_mode_set.exit_crit_edge, label %for.cond.i.i

entry.rk3288_slp_mode_set.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rk3288_slp_mode_set.exit

for.cond.i.i:                                     ; preds = %entry
  %4 = load ptr, ptr @grf_regmap, align 4
  %call.1.i.i = call i32 @regmap_read(ptr noundef %4, i32 noundef 820, ptr noundef nonnull %reg.i.i) #7
  %5 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg.i.i, align 4
  %and.1.i.i = and i32 %6, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i)
  %tobool.not.1.i.i = icmp eq i32 %and.1.i.i, 0
  br i1 %tobool.not.1.i.i, label %for.cond.i.i.rk3288_slp_mode_set.exit_crit_edge, label %for.cond.1.i.i

for.cond.i.i.rk3288_slp_mode_set.exit_crit_edge:  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rk3288_slp_mode_set.exit

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %7 = load ptr, ptr @grf_regmap, align 4
  %call.2.i.i = call i32 @regmap_read(ptr noundef %7, i32 noundef 840, ptr noundef nonnull %reg.i.i) #7
  br label %rk3288_slp_mode_set.exit

rk3288_slp_mode_set.exit:                         ; preds = %for.cond.1.i.i, %for.cond.i.i.rk3288_slp_mode_set.exit_crit_edge, %entry.rk3288_slp_mode_set.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #7
  %8 = load ptr, ptr @sgrf_regmap, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %8, i32 noundef 64, ptr noundef nonnull @rk3288_sgrf_cpu_con0) #7
  %9 = load ptr, ptr @sgrf_regmap, align 4
  %call2.i = call i32 @regmap_read(ptr noundef %9, i32 noundef 0, ptr noundef nonnull @rk3288_sgrf_soc_con0) #7
  %10 = load ptr, ptr @pmu_regmap, align 4
  %call3.i = call i32 @regmap_read(ptr noundef %10, i32 noundef 24, ptr noundef nonnull @rk3288_pmu_pwr_mode_con) #7
  %11 = load ptr, ptr @sgrf_regmap, align 4
  %call4.i = call i32 @regmap_write(ptr noundef %11, i32 noundef 0, i32 noundef 20971840) #7
  %12 = load ptr, ptr @sgrf_regmap, align 4
  %call5.i = call i32 @regmap_write(ptr noundef %12, i32 noundef 64, i32 noundef 65536) #7
  %13 = load ptr, ptr @sgrf_regmap, align 4
  %14 = load i32, ptr @rk3288_bootram_phy, align 4
  %call6.i = call i32 @regmap_write(ptr noundef %13, i32 noundef 288, i32 noundef %14) #7
  %15 = load ptr, ptr @pmu_regmap, align 4
  %call15.i = call i32 @regmap_write(ptr noundef %15, i32 noundef 4, i32 noundef 9) #7
  %16 = load ptr, ptr @pmu_regmap, align 4
  %call16.i = call i32 @regmap_write(ptr noundef %16, i32 noundef 40, i32 noundef 720000) #7
  %17 = load ptr, ptr @pmu_regmap, align 4
  %call17.i = call i32 @regmap_write(ptr noundef %17, i32 noundef 32, i32 noundef 0) #7
  %18 = load ptr, ptr @pmu_regmap, align 4
  %call19.i = call i32 @regmap_write(ptr noundef %18, i32 noundef 24, i32 noundef 1671503) #7
  %19 = load ptr, ptr @pmu_regmap, align 4
  %call20.i = call i32 @regmap_write(ptr noundef %19, i32 noundef 144, i32 noundef 6) #7
  %call = call i32 @cpu_suspend(i32 noundef 0, ptr noundef nonnull @rockchip_lpmode_enter) #7
  %20 = load ptr, ptr @sgrf_regmap, align 4
  %21 = load i32, ptr @rk3288_sgrf_cpu_con0, align 4
  %or.i = or i32 %21, 65536
  %call.i = call i32 @regmap_write(ptr noundef %20, i32 noundef 64, i32 noundef %or.i) #7
  %22 = load ptr, ptr @pmu_regmap, align 4
  %23 = load i32, ptr @rk3288_pmu_pwr_mode_con, align 4
  %call1.i1 = call i32 @regmap_write(ptr noundef %22, i32 noundef 24, i32 noundef %23) #7
  %24 = load ptr, ptr @sgrf_regmap, align 4
  %25 = load i32, ptr @rk3288_sgrf_soc_con0, align 4
  %or3.i = or i32 %25, 20971520
  %call4.i2 = call i32 @regmap_write(ptr noundef %24, i32 noundef 0, i32 noundef %or3.i) #7
  call void asm sideeffect "cpsie f\09@ __stf", "~{memory},~{cc}"() #7, !srcloc !88
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rk3288_suspend_finish() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_suspend(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rockchip_lpmode_enter(i32 noundef %arg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %0() #7
  %1 = tail call i32 @llvm.read_register.i32(metadata !75) #7
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [0 x ptr], ptr @cpu_vtable, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %_do_idle = getelementptr inbounds %struct.processor, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %_do_idle to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %_do_idle, align 4
  %call1 = tail call i32 %8() #7
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #10
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rockchip_slp_cpu_resume() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__phys_addr_symbol(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_resume() #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !47, !49, !51, !52, !53, !55, !57, !58, !59, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73}
!llvm.named.register.sp = !{!75}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-rockchip/pm.c", i32 313, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @rockchip_suspend_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @rockchip_suspend_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-rockchip/pm.c", i32 322, i32 4}
!8 = !{ptr @rockchip_suspend_init._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @rockchip_suspend_init._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @rockchip_pmu_of_device_ids, !11, !"rockchip_pmu_of_device_ids", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-rockchip/pm.c", i32 295, i32 34}
!12 = !{ptr @rk3288_pm_data, !13, !"rk3288_pm_data", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-rockchip/pm.c", i32 290, i32 38}
!14 = !{ptr @rk3288_suspend_ops, !15, !"rk3288_suspend_ops", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-rockchip/pm.c", i32 283, i32 42}
!16 = distinct !{null, !17, !"reg_offset", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-rockchip/pm.c", i32 69, i32 19}
!18 = !{ptr @grf_regmap, !19, !"grf_regmap", i1 false, i1 false}
!19 = !{!"../arch/arm/mach-rockchip/pm.c", i32 39, i32 23}
!20 = !{ptr @sgrf_regmap, !21, !"sgrf_regmap", i1 false, i1 false}
!21 = !{!"../arch/arm/mach-rockchip/pm.c", i32 38, i32 23}
!22 = !{ptr @rk3288_sgrf_cpu_con0, !23, !"rk3288_sgrf_cpu_con0", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-rockchip/pm.c", i32 43, i32 12}
!24 = !{ptr @rk3288_sgrf_soc_con0, !25, !"rk3288_sgrf_soc_con0", i1 false, i1 false}
!25 = !{!"../arch/arm/mach-rockchip/pm.c", i32 42, i32 12}
!26 = !{ptr @pmu_regmap, !27, !"pmu_regmap", i1 false, i1 false}
!27 = !{!"../arch/arm/mach-rockchip/pm.c", i32 37, i32 23}
!28 = !{ptr @rk3288_pmu_pwr_mode_con, !29, !"rk3288_pmu_pwr_mode_con", i1 false, i1 false}
!29 = !{!"../arch/arm/mach-rockchip/pm.c", i32 41, i32 12}
!30 = !{ptr @rk3288_bootram_phy, !31, !"rk3288_bootram_phy", i1 false, i1 false}
!31 = !{!"../arch/arm/mach-rockchip/pm.c", i32 35, i32 20}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../arch/arm/mach-rockchip/pm.c", i32 193, i32 2}
!34 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @rockchip_lpmode_enter._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @rockchip_lpmode_enter._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../arch/arm/mach-rockchip/pm.c", i32 221, i32 3}
!39 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @rk3288_suspend_finish._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @rk3288_suspend_finish._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../arch/arm/mach-rockchip/pm.c", i32 232, i32 3}
!44 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @rk3288_suspend_init._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @rk3288_suspend_init._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.12, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../arch/arm/mach-rockchip/pm.c", i32 237, i32 5}
!49 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../arch/arm/mach-rockchip/pm.c", i32 239, i32 3}
!51 = !{ptr @rk3288_suspend_init._entry.13, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @rk3288_suspend_init._entry_ptr.15, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../arch/arm/mach-rockchip/pm.c", i32 244, i32 5}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../arch/arm/mach-rockchip/pm.c", i32 246, i32 3}
!57 = !{ptr @rk3288_suspend_init._entry.17, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @rk3288_suspend_init._entry_ptr.19, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../arch/arm/mach-rockchip/pm.c", i32 251, i32 8}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../arch/arm/mach-rockchip/pm.c", i32 253, i32 3}
!63 = !{ptr @rk3288_suspend_init._entry.21, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @rk3288_suspend_init._entry_ptr.23, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../arch/arm/mach-rockchip/pm.c", i32 259, i32 3}
!67 = !{ptr @rk3288_suspend_init._entry.24, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @rk3288_suspend_init._entry_ptr.26, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../arch/arm/mach-rockchip/pm.c", i32 266, i32 3}
!71 = !{ptr @rk3288_suspend_init._entry.27, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @rk3288_suspend_init._entry_ptr.29, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @rk3288_bootram_base, !74, !"rk3288_bootram_base", i1 false, i1 false}
!74 = !{!"../arch/arm/mach-rockchip/pm.c", i32 34, i32 22}
!75 = !{!"sp"}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{!"auto-init"}
!86 = !{i64 1086}
!87 = !{i64 2155062718}
!88 = !{i64 2155062766}
