; ModuleID = '/llk/IR_all_yes/arch/arm/mach-exynos/mcpm-exynos.c_pt.bc'
source_filename = "../arch/arm/mach-exynos/mcpm-exynos.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mcpm_platform_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }

@__initcall__kmod_mcpm_exynos__232_312_exynos_mcpm_initearly = internal global ptr @exynos_mcpm_init, section ".initcallearly.init", align 4
@exynos_dt_mcpm_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5420\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5800\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"samsung,exynos4210-sysram-ns\00", [35 x i8] zeroinitializer }, align 32
@ns_sram_base_addr = internal unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@exynos_mcpm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013failed to map non-secure iRAM base address\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"exynos_mcpm_init\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"arch/arm/mach-exynos/mcpm-exynos.c\00", [61 x i8] zeroinitializer }, align 32
@exynos_mcpm_init._entry_ptr = internal global ptr @exynos_mcpm_init._entry, section ".printk_index", align 4
@secure_firmware = internal unnamed_addr global i8 0, section ".data..ro_after_init", align 1
@exynos_power_ops = internal constant { %struct.mcpm_platform_ops, [56 x i8] } { %struct.mcpm_platform_ops { ptr @exynos_cpu_powerup, ptr @exynos_cluster_powerup, ptr null, ptr @exynos_cpu_powerdown_prepare, ptr @exynos_cluster_powerdown_prepare, ptr @exynos_cpu_cache_disable, ptr @exynos_cluster_cache_disable, ptr @exynos_cpu_is_up, ptr null, ptr @exynos_wait_for_powerdown }, [56 x i8] zeroinitializer }, align 32
@exynos_mcpm_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016Exynos MCPM support installed\0A\00", [63 x i8] zeroinitializer }, align 32
@exynos_mcpm_init._entry_ptr.6 = internal global ptr @exynos_mcpm_init._entry.4, section ".printk_index", align 4
@exynos_mcpm_syscore_ops = internal global { %struct.syscore_ops, [44 x i8] } { %struct.syscore_ops { %struct.list_head zeroinitializer, ptr null, ptr @exynos_mcpm_setup_entry_point, ptr null }, [44 x i8] zeroinitializer }, align 32
@pmu_base_addr = external dso_local local_unnamed_addr global ptr, align 4
@exynos_cpu_powerup.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.3, ptr @.str.9, i8 0, i8 16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mcpm_exynos\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"exynos_cpu_powerup\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: cpu %u cluster %u\0A\00", [41 x i8] zeroinitializer }, align 32
@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@exynos_cpu_powerup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.3, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013cpu %u cluster %u powerup failed\0A\00", [60 x i8] zeroinitializer }, align 32
@exynos_cpu_powerup._entry_ptr = internal global ptr @exynos_cpu_powerup._entry, section ".printk_index", align 4
@exynos_cluster_powerup.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.11, ptr @.str.3, ptr @.str.12, i8 0, i8 27, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"exynos_cluster_powerup\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: cluster %u\0A\00", [16 x i8] zeroinitializer }, align 32
@exynos_cpu_powerdown_prepare.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.13, ptr @.str.3, ptr @.str.9, i8 0, i8 30, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"exynos_cpu_powerdown_prepare\00", [35 x i8] zeroinitializer }, align 32
@exynos_cluster_powerdown_prepare.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.14, ptr @.str.3, ptr @.str.12, i8 0, i8 32, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"exynos_cluster_powerdown_prepare\00", [63 x i8] zeroinitializer }, align 32
@exynos_wait_for_powerdown.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.15, ptr @.str.3, ptr @.str.9, i8 0, i8 42, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"exynos_wait_for_powerdown\00", [38 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant [21 x i8] c"exynos_dt_mcpm_match\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 214, i32 34 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 252, i32 4 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 259, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"exynos_power_ops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 192, i32 39 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 283, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [24 x i8] c"exynos_mcpm_syscore_ops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 233, i32 27 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 64, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 94, i32 5 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 110, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 122, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 130, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.74 = private constant [38 x i8] c"../arch/arm/mach-exynos/mcpm-exynos.c\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 170, i32 2 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__initcall__kmod_mcpm_exynos__232_312_exynos_mcpm_initearly, ptr @exynos_cpu_powerup._entry, ptr @exynos_cpu_powerup._entry_ptr, ptr @exynos_mcpm_init._entry, ptr @exynos_mcpm_init._entry.4, ptr @exynos_mcpm_init._entry_ptr, ptr @exynos_mcpm_init._entry_ptr.6, ptr @exynos_dt_mcpm_match, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @exynos_power_ops, ptr @.str.5, ptr @exynos_mcpm_syscore_ops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_dt_mcpm_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_mcpm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_power_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_mcpm_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_mcpm_syscore_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_cpu_powerup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_mcpm_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @exynos_dt_mcpm_match, ptr noundef null) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @of_node_put(ptr noundef nonnull %call.i) #6
  %call1 = tail call zeroext i1 @cci_probed() #6
  br i1 %call1, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #6
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %call8 = tail call ptr @of_iomap(ptr noundef nonnull %call4, i32 noundef 0) #6
  store ptr %call8, ptr @ns_sram_base_addr, align 4
  tail call void @of_node_put(ptr noundef nonnull %call4) #6
  %0 = load ptr, ptr @ns_sram_base_addr, align 4
  %tobool9.not = icmp eq ptr %0, null
  br i1 %tobool9.not, label %do.end, label %if.end12

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %call13 = tail call zeroext i1 @exynos_secure_firmware_available() #9
  %frombool = zext i1 %call13 to i8
  store i8 %frombool, ptr @secure_firmware, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %1 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 50331648) #6, !srcloc !55
  %call14 = tail call i32 @mcpm_platform_register(ptr noundef nonnull @exynos_power_ops) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end18, label %if.end12.if.then24_crit_edge

if.end12.if.then24_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24

if.end18:                                         ; preds = %if.end12
  %call17 = tail call i32 @mcpm_sync_init(ptr noundef nonnull @exynos_pm_power_up_setup) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool19.not = icmp eq i32 %call17, 0
  br i1 %tobool19.not, label %if.end22, label %if.end18.if.then24_crit_edge

if.end18.if.then24_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24

if.end22:                                         ; preds = %if.end18
  %call21 = tail call i32 @mcpm_loopback(ptr noundef nonnull @exynos_cluster_cache_disable) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool23.not = icmp eq i32 %call21, 0
  br i1 %tobool23.not, label %if.end25, label %if.end22.if.then24_crit_edge

if.end22.if.then24_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24

if.then24:                                        ; preds = %if.end22.if.then24_crit_edge, %if.end18.if.then24_crit_edge, %if.end12.if.then24_crit_edge
  %ret.157 = phi i32 [ %call21, %if.end22.if.then24_crit_edge ], [ %call17, %if.end18.if.then24_crit_edge ], [ %call14, %if.end12.if.then24_crit_edge ]
  %2 = load ptr, ptr @ns_sram_base_addr, align 4
  tail call void @iounmap(ptr noundef %2) #6
  br label %cleanup

if.end25:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mcpm_smp_set_ops() #9
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %3 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i51 = getelementptr i8, ptr %3, i32 9480
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51) #6, !srcloc !56
  %5 = or i32 %4, 131168
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %6 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i52 = getelementptr i8, ptr %6, i32 9480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52, i32 %5) #6, !srcloc !55
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %7 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i51.c = getelementptr i8, ptr %7, i32 9608
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51.c) #6, !srcloc !56
  %9 = or i32 %8, 131168
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %10 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i52.c = getelementptr i8, ptr %10, i32 9608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52.c, i32 %9) #6, !srcloc !55
  tail call void @exynos_mcpm_setup_entry_point()
  tail call void @register_syscore_ops(ptr noundef nonnull @exynos_mcpm_syscore_ops) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then24, %do.end, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.157, %if.then24 ], [ 0, %if.end25 ], [ -12, %do.end ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cci_probed() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local zeroext i1 @exynos_secure_firmware_available() local_unnamed_addr #2 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @mcpm_platform_register(ptr noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @mcpm_sync_init(ptr noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: naked noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_pm_power_up_setup(i32 noundef %0) #3 align 64 {
entry:
  tail call void asm sideeffect "\0Acmp\09r0, #1\0Abxne\09lr\0Ab\09cci_enable_port_for_self", ""() #6, !srcloc !57
  unreachable
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @mcpm_loopback(ptr noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_cluster_cache_disable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #10, !srcloc !58
  %and.i = and i32 %0, -16711696
  call void @__sanitizer_cov_trace_const_cmp4(i32 1090568432, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 1090568432
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr\09p15, 1, $0, c15, c0, 3\0A\09isb\0A\09dsb", "r"(i32 1024) #6, !srcloc !59
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %1 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 2048
  tail call void asm sideeffect "stmfd\09sp!, {fp, ip}\0A\09mrc\09p15, 0, r0, c1, c0, 0\09@ get SCTLR\0A\09bic\09r0, r0, #(1 << 2)\0A\09mcr\09p15, 0, r0, c1, c0, 0\09@ set SCTLR\0A\09isb\0A\09bl\09v7_flush_dcache_all\0A\09mrc\09p15, 0, r0, c1, c0, 1\09@ get ACTLR\0A\09bic\09r0, r0, #(1 << 6)\09@ disable local coherency\0A\09ldr\09r4, [$0]\0A\09and\09r4, r4, #0\0A\09orr\09r0, r0, r4\0A\09mcr\09p15, 0, r0, c1, c0, 1\09@ set ACTLR\0A\09isb\0A\09dsb\0A\09ldmfd\09sp!, {fp, ip}", "Ir,~{r0},~{r1},~{r2},~{r3},~{r4},~{r5},~{r6},~{r7},~{r9},~{r10},~{lr},~{memory}"(ptr %add.ptr) #6, !srcloc !60
  %2 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 5", "=r,~{cc}"() #10, !srcloc !61
  %conv = zext i32 %2 to i64
  %call2 = tail call i32 @cci_disable_port_by_cpu(i64 noundef %conv) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @mcpm_smp_set_ops() local_unnamed_addr #2 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_mcpm_setup_entry_point() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ns_sram_base_addr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %0, i32 -442564608) #6, !srcloc !55
  %1 = load ptr, ptr @ns_sram_base_addr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -516948208) #6, !srcloc !55
  %call = tail call i32 @__phys_addr_symbol(i32 noundef ptrtoint (ptr @mcpm_entry_point to i32)) #6
  %2 = load ptr, ptr @ns_sram_base_addr, align 4
  %add.ptr1 = getelementptr i8, ptr %2, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %call) #6, !srcloc !55
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_cpu_powerup(i32 noundef %cpu, i32 noundef %cluster) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %cluster, 2
  %add = add i32 %mul, %cpu
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exynos_cpu_powerup.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@exynos_cpu_powerup, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !62

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @exynos_cpu_powerup.__UNIQUE_ID_ddebug227, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, i32 noundef %cpu, i32 noundef %cluster) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cpu)
  %cmp = icmp ugt i32 %cpu, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cluster)
  %cmp3 = icmp ugt i32 %cluster, 1
  %or.cond = or i1 %cmp, %cmp3
  br i1 %or.cond, label %do.end.cleanup31_crit_edge, label %if.end5

do.end.cleanup31_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup31

if.end5:                                          ; preds = %do.end
  %call6 = tail call i32 @exynos_cpu_power_state(i32 noundef %add) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  tail call void @exynos_cpu_power_up(i32 noundef %add) #6
  br i1 %tobool7.not, label %land.lhs.true, label %if.end5.cleanup31_crit_edge

if.end5.cleanup31_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup31

land.lhs.true:                                    ; preds = %if.end5
  %0 = load i8, ptr @secure_firmware, align 1, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool10.not = icmp eq i8 %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cluster)
  %tobool12.not = icmp eq i32 %cluster, 0
  %or.cond46 = or i1 %tobool12.not, %tobool10.not
  br i1 %or.cond46, label %land.lhs.true.cleanup31_crit_edge, label %land.lhs.true13

land.lhs.true.cleanup31_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup31

land.lhs.true13:                                  ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__cpu_logical_map to i32))
  %1 = load i32, ptr @__cpu_logical_map, align 4
  %2 = and i32 %1, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %2)
  %cmp14 = icmp eq i32 %2, 256
  br i1 %cmp14, label %land.rhs.preheader, label %land.lhs.true13.cleanup31_crit_edge

land.lhs.true13.cleanup31_crit_edge:              ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup31

land.rhs.preheader:                               ; preds = %land.lhs.true13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %3 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 2312
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool18.not = icmp eq i32 %4, 0
  br i1 %tobool18.not, label %while.body, label %land.rhs.preheader.if.end28_crit_edge

land.rhs.preheader.if.end28_crit_edge:            ; preds = %land.rhs.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

while.body:                                       ; preds = %land.rhs.preheader
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 2147480) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %6 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %6, i32 2312
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1) #6, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool18.not.1 = icmp eq i32 %7, 0
  br i1 %tobool18.not.1, label %while.body.1, label %while.body.if.end28_crit_edge

while.body.if.end28_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

while.body.1:                                     ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 2147480) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %9 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %9, i32 2312
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2) #6, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool18.not.2 = icmp eq i32 %10, 0
  br i1 %tobool18.not.2, label %while.body.2, label %while.body.1.if.end28_crit_edge

while.body.1.if.end28_crit_edge:                  ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

while.body.2:                                     ; preds = %while.body.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 2147480) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %12 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %12, i32 2312
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3) #6, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool18.not.3 = icmp eq i32 %13, 0
  br i1 %tobool18.not.3, label %while.body.3, label %while.body.2.if.end28_crit_edge

while.body.2.if.end28_crit_edge:                  ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

while.body.3:                                     ; preds = %while.body.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 2147480) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %15 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i.4 = getelementptr i8, ptr %15, i32 2312
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.4) #6, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool18.not.4 = icmp eq i32 %16, 0
  br i1 %tobool18.not.4, label %while.body.4, label %while.body.3.if.end28_crit_edge

while.body.3.if.end28_crit_edge:                  ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

while.body.4:                                     ; preds = %while.body.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 2147480) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %18 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i.5 = getelementptr i8, ptr %18, i32 2312
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.5) #6, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool18.not.5 = icmp eq i32 %19, 0
  br i1 %tobool18.not.5, label %while.body.5, label %while.body.4.if.end28_crit_edge

while.body.4.if.end28_crit_edge:                  ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

while.body.5:                                     ; preds = %while.body.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 2147480) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %21 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i.6 = getelementptr i8, ptr %21, i32 2312
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.6) #6, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool18.not.6 = icmp eq i32 %22, 0
  br i1 %tobool18.not.6, label %while.body.6, label %while.body.5.if.end28_crit_edge

while.body.5.if.end28_crit_edge:                  ; preds = %while.body.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

while.body.6:                                     ; preds = %while.body.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 2147480) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %24 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i.7 = getelementptr i8, ptr %24, i32 2312
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.7) #6, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool18.not.7 = icmp eq i32 %25, 0
  br i1 %tobool18.not.7, label %while.body.7, label %while.body.6.if.end28_crit_edge

while.body.6.if.end28_crit_edge:                  ; preds = %while.body.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

while.body.7:                                     ; preds = %while.body.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 2147480) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %27 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i.8 = getelementptr i8, ptr %27, i32 2312
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.8) #6, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool18.not.8 = icmp eq i32 %28, 0
  br i1 %tobool18.not.8, label %while.body.8, label %while.body.7.if.end28_crit_edge

while.body.7.if.end28_crit_edge:                  ; preds = %while.body.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

while.body.8:                                     ; preds = %while.body.7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 2147480) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %30 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i.9 = getelementptr i8, ptr %30, i32 2312
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.9) #6, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool18.not.9 = icmp eq i32 %31, 0
  br i1 %tobool18.not.9, label %while.body.9, label %while.body.8.if.end28_crit_edge

while.body.8.if.end28_crit_edge:                  ; preds = %while.body.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

while.body.9:                                     ; preds = %while.body.8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 2147480) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %33 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i.10 = getelementptr i8, ptr %33, i32 2312
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.10) #6, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool18.not.10 = icmp eq i32 %34, 0
  br i1 %tobool18.not.10, label %while.body.10, label %while.body.9.if.end28_crit_edge

while.body.9.if.end28_crit_edge:                  ; preds = %while.body.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

while.body.10:                                    ; preds = %while.body.9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 2147480) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %36 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i.11 = getelementptr i8, ptr %36, i32 2312
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.11) #6, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool18.not.11 = icmp eq i32 %37, 0
  br i1 %tobool18.not.11, label %while.body.11, label %while.body.10.if.end28_crit_edge

while.body.10.if.end28_crit_edge:                 ; preds = %while.body.10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

while.body.11:                                    ; preds = %while.body.10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 2147480) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %39 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i.12 = getelementptr i8, ptr %39, i32 2312
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.12) #6, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool18.not.12 = icmp eq i32 %40, 0
  br i1 %tobool18.not.12, label %while.body.12, label %while.body.11.if.end28_crit_edge

while.body.11.if.end28_crit_edge:                 ; preds = %while.body.11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

while.body.12:                                    ; preds = %while.body.11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 2147480) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %42 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i.13 = getelementptr i8, ptr %42, i32 2312
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.13) #6, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool18.not.13 = icmp eq i32 %43, 0
  br i1 %tobool18.not.13, label %while.body.13, label %while.body.12.if.end28_crit_edge

while.body.12.if.end28_crit_edge:                 ; preds = %while.body.12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

while.body.13:                                    ; preds = %while.body.12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 2147480) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %45 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i.14 = getelementptr i8, ptr %45, i32 2312
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.14) #6, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool18.not.14 = icmp eq i32 %46, 0
  br i1 %tobool18.not.14, label %while.body.14, label %while.body.13.if.end28_crit_edge

while.body.13.if.end28_crit_edge:                 ; preds = %while.body.13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

while.body.14:                                    ; preds = %while.body.13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 2147480) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %48 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i.15 = getelementptr i8, ptr %48, i32 2312
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.15) #6, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool18.not.15 = icmp eq i32 %49, 0
  br i1 %tobool18.not.15, label %while.body.15, label %while.body.14.if.end28_crit_edge

while.body.14.if.end28_crit_edge:                 ; preds = %while.body.14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

while.body.15:                                    ; preds = %while.body.14
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 2147480) #6
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %cpu, i32 noundef 1) #9
  tail call void @exynos_cpu_power_down(i32 noundef %add) #6
  br label %cleanup31

if.end28:                                         ; preds = %while.body.14.if.end28_crit_edge, %while.body.13.if.end28_crit_edge, %while.body.12.if.end28_crit_edge, %while.body.11.if.end28_crit_edge, %while.body.10.if.end28_crit_edge, %while.body.9.if.end28_crit_edge, %while.body.8.if.end28_crit_edge, %while.body.7.if.end28_crit_edge, %while.body.6.if.end28_crit_edge, %while.body.5.if.end28_crit_edge, %while.body.4.if.end28_crit_edge, %while.body.3.if.end28_crit_edge, %while.body.2.if.end28_crit_edge, %while.body.1.if.end28_crit_edge, %while.body.if.end28_crit_edge, %land.rhs.preheader.if.end28_crit_edge
  %shl = shl nuw nsw i32 1048832, %cpu
  %51 = tail call i32 @llvm.bswap.i32(i32 %shl) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %52 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr.i47 = getelementptr i8, ptr %52, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47, i32 %51) #6, !srcloc !55
  br label %cleanup31

cleanup31:                                        ; preds = %if.end28, %while.body.15, %land.lhs.true13.cleanup31_crit_edge, %land.lhs.true.cleanup31_crit_edge, %if.end5.cleanup31_crit_edge, %do.end.cleanup31_crit_edge
  %retval.1 = phi i32 [ -22, %do.end.cleanup31_crit_edge ], [ -110, %while.body.15 ], [ 0, %if.end28 ], [ 0, %land.lhs.true13.cleanup31_crit_edge ], [ 0, %land.lhs.true.cleanup31_crit_edge ], [ 0, %if.end5.cleanup31_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_cluster_powerup(i32 noundef %cluster) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exynos_cluster_powerup.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@exynos_cluster_powerup, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !62

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @exynos_cluster_powerup.__UNIQUE_ID_ddebug228, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, i32 noundef %cluster) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cluster)
  %cmp = icmp ugt i32 %cluster, 1
  br i1 %cmp, label %do.end.return_crit_edge, label %if.end4

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end4:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @exynos_cluster_power_up(i32 noundef %cluster) #6
  br label %return

return:                                           ; preds = %if.end4, %do.end.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -22, %do.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_cpu_powerdown_prepare(i32 noundef %cpu, i32 noundef %cluster) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exynos_cpu_powerdown_prepare.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@exynos_cpu_powerdown_prepare, %if.then)) #6
          to label %do.body3 [label %if.then], !srcloc !62

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @exynos_cpu_powerdown_prepare.__UNIQUE_ID_ddebug229, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.13, i32 noundef %cpu, i32 noundef %cluster) #6
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cpu)
  %cmp = icmp ugt i32 %cpu, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cluster)
  %cmp4 = icmp ugt i32 %cluster, 1
  %spec.select = or i1 %cmp, %cmp4
  br i1 %spec.select, label %do.body12, label %do.end20, !prof !64

do.body12:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-exynos/mcpm-exynos.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 124, 0\0A.popsection", ""() #6, !srcloc !65
  unreachable

do.end20:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  %mul = shl nuw nsw i32 %cluster, 2
  %add = add nuw nsw i32 %mul, %cpu
  tail call void @exynos_cpu_power_down(i32 noundef %add) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_cluster_powerdown_prepare(i32 noundef %cluster) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exynos_cluster_powerdown_prepare.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@exynos_cluster_powerdown_prepare, %if.then)) #6
          to label %do.body3 [label %if.then], !srcloc !62

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @exynos_cluster_powerdown_prepare.__UNIQUE_ID_ddebug230, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.14, i32 noundef %cluster) #6
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cluster)
  %cmp = icmp ugt i32 %cluster, 1
  br i1 %cmp, label %do.body11, label %do.end16, !prof !64

do.body11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-exynos/mcpm-exynos.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 131, 0\0A.popsection", ""() #6, !srcloc !66
  unreachable

do.end16:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @exynos_cluster_power_down(i32 noundef %cluster) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_cpu_cache_disable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pmu_base_addr to i32))
  %0 = load ptr, ptr @pmu_base_addr, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 2048
  tail call void asm sideeffect "stmfd\09sp!, {fp, ip}\0A\09mrc\09p15, 0, r0, c1, c0, 0\09@ get SCTLR\0A\09bic\09r0, r0, #(1 << 2)\0A\09mcr\09p15, 0, r0, c1, c0, 0\09@ set SCTLR\0A\09isb\0A\09bl\09v7_flush_dcache_louis\0A\09mrc\09p15, 0, r0, c1, c0, 1\09@ get ACTLR\0A\09bic\09r0, r0, #(1 << 6)\09@ disable local coherency\0A\09ldr\09r4, [$0]\0A\09and\09r4, r4, #0\0A\09orr\09r0, r0, r4\0A\09mcr\09p15, 0, r0, c1, c0, 1\09@ set ACTLR\0A\09isb\0A\09dsb\0A\09ldmfd\09sp!, {fp, ip}", "Ir,~{r0},~{r1},~{r2},~{r3},~{r4},~{r5},~{r6},~{r7},~{r9},~{r10},~{lr},~{memory}"(ptr %add.ptr) #6, !srcloc !67
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exynos_cpu_is_up(i32 noundef %cpu, i32 noundef %cluster) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @exynos_cpu_powerup(i32 noundef %cpu, i32 noundef %cluster)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_wait_for_powerdown(i32 noundef %cpu, i32 noundef %cluster) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %cluster, 2
  %add = add i32 %mul, %cpu
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exynos_wait_for_powerdown.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@exynos_wait_for_powerdown, %if.then)) #6
          to label %do.body3 [label %if.then], !srcloc !62

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @exynos_wait_for_powerdown.__UNIQUE_ID_ddebug231, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.15, i32 noundef %cpu, i32 noundef %cluster) #6
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cpu)
  %cmp = icmp ugt i32 %cpu, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cluster)
  %cmp4 = icmp ugt i32 %cluster, 1
  %spec.select = or i1 %cmp, %cmp4
  br i1 %spec.select, label %do.body12, label %do.body3.while.body_crit_edge, !prof !64

do.body3.while.body_crit_edge:                    ; preds = %do.body3
  br label %while.body

do.body12:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-exynos/mcpm-exynos.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 172, 0\0A.popsection", ""() #6, !srcloc !68
  unreachable

while.body:                                       ; preds = %if.end25.while.body_crit_edge, %do.body3.while.body_crit_edge
  %dec32 = phi i32 [ %dec, %if.end25.while.body_crit_edge ], [ 99, %do.body3.while.body_crit_edge ]
  %call22 = tail call i32 @exynos_cpu_power_state(i32 noundef %add) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %while.body.cleanup_crit_edge, label %if.end25

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %while.body
  tail call void @msleep(i32 noundef 1) #6
  %dec = add nsw i32 %dec32, -1
  %tobool21.not = icmp eq i32 %dec32, 0
  br i1 %tobool21.not, label %if.end25.cleanup_crit_edge, label %if.end25.while.body_crit_edge

if.end25.while.body_crit_edge:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end25.cleanup_crit_edge, %while.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.body.cleanup_crit_edge ], [ -110, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exynos_cpu_power_state(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_cpu_power_up(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_cpu_power_down(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_cluster_power_up(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_cluster_power_down(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cci_disable_port_by_cpu(i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__phys_addr_symbol(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mcpm_entry_point() #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { naked noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !18, !20, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !40, !41, !43, !44}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @__initcall__kmod_mcpm_exynos__232_312_exynos_mcpm_initearly, !1, !"__initcall__kmod_mcpm_exynos__232_312_exynos_mcpm_initearly", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-exynos/mcpm-exynos.c", i32 312, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-exynos/mcpm-exynos.c", i32 252, i32 4}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-exynos/mcpm-exynos.c", i32 259, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @exynos_mcpm_init._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @exynos_mcpm_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-exynos/mcpm-exynos.c", i32 283, i32 2}
!12 = !{ptr @exynos_mcpm_init._entry.4, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @exynos_mcpm_init._entry_ptr.6, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @exynos_dt_mcpm_match, !15, !"exynos_dt_mcpm_match", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-exynos/mcpm-exynos.c", i32 214, i32 34}
!16 = !{ptr @ns_sram_base_addr, !17, !"ns_sram_base_addr", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-exynos/mcpm-exynos.c", i32 28, i32 22}
!18 = !{ptr @secure_firmware, !19, !"secure_firmware", i1 false, i1 false}
!19 = !{!"../arch/arm/mach-exynos/mcpm-exynos.c", i32 29, i32 13}
!20 = !{ptr @exynos_power_ops, !21, !"exynos_power_ops", i1 false, i1 false}
!21 = !{!"../arch/arm/mach-exynos/mcpm-exynos.c", i32 192, i32 39}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-exynos/mcpm-exynos.c", i32 64, i32 2}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @exynos_cpu_powerup.__UNIQUE_ID_ddebug227, !23, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../arch/arm/mach-exynos/mcpm-exynos.c", i32 94, i32 5}
!29 = !{ptr @exynos_cpu_powerup._entry, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @exynos_cpu_powerup._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../arch/arm/mach-exynos/mcpm-exynos.c", i32 110, i32 2}
!33 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @exynos_cluster_powerup.__UNIQUE_ID_ddebug228, !32, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../arch/arm/mach-exynos/mcpm-exynos.c", i32 122, i32 2}
!37 = !{ptr @exynos_cpu_powerdown_prepare.__UNIQUE_ID_ddebug229, !36, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../arch/arm/mach-exynos/mcpm-exynos.c", i32 130, i32 2}
!40 = !{ptr @exynos_cluster_powerdown_prepare.__UNIQUE_ID_ddebug230, !39, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../arch/arm/mach-exynos/mcpm-exynos.c", i32 170, i32 2}
!43 = !{ptr @exynos_wait_for_powerdown.__UNIQUE_ID_ddebug231, !42, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!44 = !{ptr @exynos_mcpm_syscore_ops, !45, !"exynos_mcpm_syscore_ops", i1 false, i1 false}
!45 = !{!"../arch/arm/mach-exynos/mcpm-exynos.c", i32 233, i32 27}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{i64 5833791}
!56 = !{i64 5834209}
!57 = !{i64 5855, i64 5862, i64 5878, i64 5891}
!58 = !{i64 2153615683}
!59 = !{i64 4188, i64 4217, i64 4229}
!60 = !{i64 2154021357, i64 2154021379, i64 2154021425, i64 2154021467, i64 2154021514, i64 2154021527, i64 2154021575, i64 2154021622, i64 2154021679, i64 2154021766, i64 2154021790, i64 2154021814, i64 2154021861, i64 2154021874, i64 2154021887}
!61 = !{i64 2153618297}
!62 = !{i64 2148302420, i64 2148302425, i64 2148302438, i64 2148302482, i64 2148302516, i64 2148302537}
!63 = !{i8 0, i8 2}
!64 = !{!"branch_weights", i32 1, i32 2000}
!65 = !{i64 2154015344, i64 2154015843, i64 2154015381, i64 2154015437, i64 2154015471, i64 2154015495, i64 2154015536, i64 2154015557, i64 2154015585, i64 2154015619}
!66 = !{i64 2154019203, i64 2154019702, i64 2154019240, i64 2154019296, i64 2154019330, i64 2154019354, i64 2154019395, i64 2154019416, i64 2154019444, i64 2154019478}
!67 = !{i64 2154020542, i64 2154020564, i64 2154020610, i64 2154020652, i64 2154020699, i64 2154020712, i64 2154020760, i64 2154020807, i64 2154020864, i64 2154020951, i64 2154020975, i64 2154020999, i64 2154021046, i64 2154021059, i64 2154021072}
!68 = !{i64 2154024792, i64 2154025291, i64 2154024829, i64 2154024885, i64 2154024919, i64 2154024943, i64 2154024984, i64 2154025005, i64 2154025033, i64 2154025067}
