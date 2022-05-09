; ModuleID = '/llk/IR_all_yes/arch/arm/mach-vexpress/tc2_pm.c_pt.bc'
source_filename = "../arch/arm/mach-vexpress/tc2_pm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mcpm_platform_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_tc2_pm__229_263_tc2_pm_initearly = internal global ptr @tc2_pm_init, section ".initcallearly.init", align 4
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"arm,vexpress-scc,v2p-ca15_a7\00", [35 x i8] zeroinitializer }, align 32
@scc = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@tc2_nr_cpus = internal global { [2 x i32], [24 x i8] } zeroinitializer, align 32
@tc2_pm_init.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 61, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tc2_pm\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tc2_pm_init\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"arch/arm/mach-vexpress/tc2_pm.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: cpu %u cluster %u\0A\00", [41 x i8] zeroinitializer }, align 32
@tc2_pm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: boot CPU is out of bound!\0A\00", [63 x i8] zeroinitializer }, align 32
@tc2_pm_init._entry_ptr = internal global ptr @tc2_pm_init._entry, section ".printk_index", align 4
@tc2_pm_power_ops = internal constant { %struct.mcpm_platform_ops, [56 x i8] } { %struct.mcpm_platform_ops { ptr @tc2_pm_cpu_powerup, ptr @tc2_pm_cluster_powerup, ptr @tc2_pm_cpu_suspend_prepare, ptr @tc2_pm_cpu_powerdown_prepare, ptr @tc2_pm_cluster_powerdown_prepare, ptr @tc2_pm_cpu_cache_disable, ptr @tc2_pm_cluster_cache_disable, ptr @tc2_pm_cpu_is_up, ptr @tc2_pm_cluster_is_up, ptr @tc2_pm_wait_for_powerdown }, [56 x i8] zeroinitializer }, align 32
@tc2_pm_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016TC2 power management initialized\0A\00", [60 x i8] zeroinitializer }, align 32
@tc2_pm_init._entry_ptr.8 = internal global ptr @tc2_pm_init._entry.6, section ".printk_index", align 4
@tc2_pm_cpu_powerup.__UNIQUE_ID_ddebug220 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.9, ptr @.str.3, ptr @.str.4, i8 0, i8 12, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tc2_pm_cpu_powerup\00", [45 x i8] zeroinitializer }, align 32
@tc2_pm_cluster_powerup.__UNIQUE_ID_ddebug221 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.3, ptr @.str.11, i8 0, i8 15, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tc2_pm_cluster_powerup\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: cluster %u\0A\00", [16 x i8] zeroinitializer }, align 32
@tc2_pm_cpu_powerdown_prepare.__UNIQUE_ID_ddebug222 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.12, ptr @.str.3, ptr @.str.4, i8 0, i8 17, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"tc2_pm_cpu_powerdown_prepare\00", [35 x i8] zeroinitializer }, align 32
@tc2_pm_cluster_powerdown_prepare.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.13, ptr @.str.3, ptr @.str.11, i8 0, i8 21, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"tc2_pm_cluster_powerdown_prepare\00", [63 x i8] zeroinitializer }, align 32
@tc2_pm_cpu_is_up.__UNIQUE_ID_ddebug226 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.14, ptr @.str.3, ptr @.str.4, i8 0, i8 41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tc2_pm_cpu_is_up\00", [47 x i8] zeroinitializer }, align 32
@tc2_pm_cluster_is_up.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.15, ptr @.str.3, ptr @.str.11, i8 0, i8 43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tc2_pm_cluster_is_up\00", [43 x i8] zeroinitializer }, align 32
@tc2_pm_wait_for_powerdown.__UNIQUE_ID_ddebug224 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.16, ptr @.str.3, ptr @.str.4, i8 0, i8 32, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tc2_pm_wait_for_powerdown\00", [38 x i8] zeroinitializer }, align 32
@tc2_pm_wait_for_powerdown.__UNIQUE_ID_ddebug225 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.16, ptr @.str.3, ptr @.str.17, i8 0, i8 34, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s(cpu=%u, cluster=%u): RESET_CTRL = 0x%08X\0A\00", [51 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 215, i32 4 }
@___asan_gen_.21 = private unnamed_addr constant [4 x i8] c"scc\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 41, i32 22 }
@___asan_gen_.24 = private unnamed_addr constant [12 x i8] c"tc2_nr_cpus\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 46, i32 21 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 247, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 249, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"tc2_pm_power_ops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 178, i32 39 }
@___asan_gen_.48 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 258, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 50, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 61, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 70, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 85, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 164, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 172, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 130, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.79 = private constant [35 x i8] c"../arch/arm/mach-vexpress/tc2_pm.c\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 134, i32 3 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__initcall__kmod_tc2_pm__229_263_tc2_pm_initearly, ptr @tc2_pm_init._entry, ptr @tc2_pm_init._entry.6, ptr @tc2_pm_init._entry_ptr, ptr @tc2_pm_init._entry_ptr.8, ptr @.str, ptr @scc, ptr @tc2_nr_cpus, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @tc2_pm_power_ops, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc2_nr_cpus to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc2_pm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc2_pm_power_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc2_pm_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tc2_pm_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #8
  %call1 = tail call ptr @of_iomap(ptr noundef %call, i32 noundef 0) #8
  store ptr %call1, ptr @scc, align 4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %call1, i32 1024
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !57
  %1 = lshr i32 %0, 24
  %and = and i32 %1, 15
  %2 = load ptr, ptr @scc, align 4
  %add.ptr4 = getelementptr i8, ptr %2, i32 1280
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #8, !srcloc !57
  %4 = lshr i32 %3, 24
  %and7 = and i32 %4, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp = icmp ugt i32 %and, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and7)
  %cmp8 = icmp ugt i32 %and7, 1
  %or.cond = select i1 %cmp, i1 true, i1 %cmp8
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %5 = load ptr, ptr @scc, align 4
  %add.ptr12 = getelementptr i8, ptr %5, i32 1792
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #8, !srcloc !57
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %shr = lshr i32 %7, 16
  %and15 = and i32 %shr, 15
  %arrayidx = getelementptr [2 x i32], ptr @tc2_nr_cpus, i32 0, i32 %and
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and15, ptr %arrayidx, align 4
  %shr16 = lshr i32 %7, 20
  %and17 = and i32 %shr16, 15
  %arrayidx18 = getelementptr [2 x i32], ptr @tc2_nr_cpus, i32 0, i32 %and7
  %9 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and17, ptr %arrayidx18, align 4
  %call19 = tail call i32 @irq_of_parse_and_map(ptr noundef %call, i32 noundef 0) #8
  %10 = load ptr, ptr @scc, align 4
  %add.ptr20 = getelementptr i8, ptr %10, i32 2816
  %call21 = tail call i32 @ve_spc_init(ptr noundef %add.ptr20, i32 noundef %and, i32 noundef %call19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end24:                                         ; preds = %if.end10
  %call25 = tail call zeroext i1 @cci_probed() #8
  br i1 %call25, label %if.end27, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end27:                                         ; preds = %if.end24
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 5", "=r,~{cc}"() #10, !srcloc !58
  %and30 = and i32 %11, 255
  %shr31 = lshr i32 %11, 8
  %and32 = and i32 %shr31, 255
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc2_pm_init.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc2_pm_init, %if.then38)) #8
          to label %do.end [label %if.then38], !srcloc !59

if.then38:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tc2_pm_init.__UNIQUE_ID_ddebug228, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef %and30, i32 noundef %and32) #8
  br label %do.end

do.end:                                           ; preds = %if.then38, %if.end27
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and32)
  %cmp40 = icmp ugt i32 %and32, 1
  br i1 %cmp40, label %do.end.do.end47_crit_edge, label %lor.lhs.false41

do.end.do.end47_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end47

lor.lhs.false41:                                  ; preds = %do.end
  %arrayidx42 = getelementptr [2 x i32], ptr @tc2_nr_cpus, i32 0, i32 %and32
  %12 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx42, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and30, i32 %13)
  %cmp43.not = icmp ult i32 %and30, %13
  br i1 %cmp43.not, label %if.end50, label %lor.lhs.false41.do.end47_crit_edge

lor.lhs.false41.do.end47_crit_edge:               ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end47

do.end47:                                         ; preds = %lor.lhs.false41.do.end47_crit_edge, %do.end.do.end47_crit_edge
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end50:                                         ; preds = %lor.lhs.false41
  %call51 = tail call i32 @mcpm_platform_register(ptr noundef nonnull @tc2_pm_power_ops) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.then53, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then53:                                        ; preds = %if.end50
  %call54 = tail call i32 @mcpm_sync_init(ptr noundef nonnull @tc2_pm_power_up_setup) #9
  %call56 = tail call i32 @mcpm_loopback(ptr noundef nonnull @tc2_pm_cluster_cache_disable) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57.not = icmp eq i32 %call56, 0
  br i1 %cmp57.not, label %do.end76, label %do.body65, !prof !60

do.body65:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-vexpress/tc2_pm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 257, 0\0A.popsection", ""() #8, !srcloc !61
  unreachable

do.end76:                                         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #7
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end76, %if.end50.cleanup_crit_edge, %do.end47, %if.end24.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end47 ], [ -19, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call21, %if.end10.cleanup_crit_edge ], [ -19, %if.end24.cleanup_crit_edge ], [ 0, %do.end76 ], [ %call51, %if.end50.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @ve_spc_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cci_probed() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @mcpm_platform_register(ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @mcpm_sync_init(ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: naked noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tc2_pm_power_up_setup(i32 noundef %0) #4 align 64 {
entry:
  tail call void asm sideeffect " \0A\09cmp\09r0, #1 \0A\09bxne\09lr \0A\09b\09cci_enable_port_for_self ", ""() #8, !srcloc !62
  unreachable
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @mcpm_loopback(ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tc2_pm_cluster_cache_disable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #10, !srcloc !63
  %and.i = and i32 %0, -16711696
  call void @__sanitizer_cov_trace_const_cmp4(i32 1090568432, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 1090568432
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr\09p15, 1, $0, c15, c0, 3 \0A\09isb\09\0A\09dsb\09", "r"(i32 1024) #8, !srcloc !64
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void asm sideeffect ".arch\09armv7-a \0A\09stmfd\09sp!, {fp, ip} \0A\09mrc\09p15, 0, r0, c1, c0, 0\09@ get SCTLR \0A\09bic\09r0, r0, #(1 << 2) \0A\09mcr\09p15, 0, r0, c1, c0, 0\09@ set SCTLR \0A\09isb\09\0A\09bl\09v7_flush_dcache_all \0A\09mrc\09p15, 0, r0, c1, c0, 1\09@ get ACTLR \0A\09bic\09r0, r0, #(1 << 6)\09@ disable local coherency \0A\09mcr\09p15, 0, r0, c1, c0, 1\09@ set ACTLR \0A\09isb\09\0A\09dsb\09\0A\09ldmfd\09sp!, {fp, ip}", "~{r0},~{r1},~{r2},~{r3},~{r4},~{r5},~{r6},~{r7},~{r9},~{r10},~{lr},~{memory}"() #8, !srcloc !65
  %1 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 5", "=r,~{cc}"() #10, !srcloc !58
  %conv = zext i32 %1 to i64
  %call2 = tail call i32 @cci_disable_port_by_cpu(i64 noundef %conv) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc2_pm_cpu_powerup(i32 noundef %cpu, i32 noundef %cluster) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc2_pm_cpu_powerup.__UNIQUE_ID_ddebug220, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc2_pm_cpu_powerup, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !59

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tc2_pm_cpu_powerup.__UNIQUE_ID_ddebug220, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.9, i32 noundef %cpu, i32 noundef %cluster) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cluster)
  %cmp = icmp ugt i32 %cluster, 1
  br i1 %cmp, label %do.end.return_crit_edge, label %lor.lhs.false

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

lor.lhs.false:                                    ; preds = %do.end
  %arrayidx = getelementptr [2 x i32], ptr @tc2_nr_cpus, i32 0, i32 %cluster
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %cpu)
  %cmp3.not = icmp ugt i32 %1, %cpu
  br i1 %cmp3.not, label %if.end5, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end5:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = tail call i32 @__phys_addr_symbol(i32 noundef ptrtoint (ptr @mcpm_entry_point to i32)) #8
  tail call void @ve_spc_set_resume_addr(i32 noundef %cluster, i32 noundef %cpu, i32 noundef %call7) #8
  tail call void @ve_spc_cpu_wakeup_irq(i32 noundef %cluster, i32 noundef %cpu, i1 noundef zeroext true) #8
  br label %return

return:                                           ; preds = %if.end5, %lor.lhs.false.return_crit_edge, %do.end.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %do.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc2_pm_cluster_powerup(i32 noundef %cluster) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc2_pm_cluster_powerup.__UNIQUE_ID_ddebug221, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc2_pm_cluster_powerup, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !59

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tc2_pm_cluster_powerup.__UNIQUE_ID_ddebug221, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, i32 noundef %cluster) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cluster)
  %cmp = icmp ugt i32 %cluster, 1
  br i1 %cmp, label %do.end.return_crit_edge, label %if.end4

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end4:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ve_spc_powerdown(i32 noundef %cluster, i1 noundef zeroext false) #8
  br label %return

return:                                           ; preds = %if.end4, %do.end.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -22, %do.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tc2_pm_cpu_suspend_prepare(i32 noundef %cpu, i32 noundef %cluster) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @__phys_addr_symbol(i32 noundef ptrtoint (ptr @mcpm_entry_point to i32)) #8
  tail call void @ve_spc_set_resume_addr(i32 noundef %cluster, i32 noundef %cpu, i32 noundef %call) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tc2_pm_cpu_powerdown_prepare(i32 noundef %cpu, i32 noundef %cluster) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc2_pm_cpu_powerdown_prepare.__UNIQUE_ID_ddebug222, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc2_pm_cpu_powerdown_prepare, %if.then)) #8
          to label %do.body3 [label %if.then], !srcloc !59

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tc2_pm_cpu_powerdown_prepare.__UNIQUE_ID_ddebug222, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.12, i32 noundef %cpu, i32 noundef %cluster) #8
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cluster)
  %cmp = icmp ugt i32 %cluster, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cpu)
  %cmp4 = icmp ugt i32 %cpu, 2
  %spec.select = or i1 %cmp4, %cmp
  br i1 %spec.select, label %do.body12, label %do.end17, !prof !66

do.body12:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-vexpress/tc2_pm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 71, 0\0A.popsection", ""() #8, !srcloc !67
  unreachable

do.end17:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ve_spc_cpu_wakeup_irq(i32 noundef %cluster, i32 noundef %cpu, i1 noundef zeroext true) #8
  %call18 = tail call i32 @gic_cpu_if_down(i32 noundef 0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tc2_pm_cluster_powerdown_prepare(i32 noundef %cluster) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc2_pm_cluster_powerdown_prepare.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc2_pm_cluster_powerdown_prepare, %if.then)) #8
          to label %do.body3 [label %if.then], !srcloc !59

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tc2_pm_cluster_powerdown_prepare.__UNIQUE_ID_ddebug223, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.13, i32 noundef %cluster) #8
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cluster)
  %cmp = icmp ugt i32 %cluster, 1
  br i1 %cmp, label %do.body11, label %do.end16, !prof !66

do.body11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-vexpress/tc2_pm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 86, 0\0A.popsection", ""() #8, !srcloc !68
  unreachable

do.end16:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ve_spc_powerdown(i32 noundef %cluster, i1 noundef zeroext true) #8
  tail call void @ve_spc_global_wakeup_irq(i1 noundef zeroext true) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tc2_pm_cpu_cache_disable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect ".arch\09armv7-a \0A\09stmfd\09sp!, {fp, ip} \0A\09mrc\09p15, 0, r0, c1, c0, 0\09@ get SCTLR \0A\09bic\09r0, r0, #(1 << 2) \0A\09mcr\09p15, 0, r0, c1, c0, 0\09@ set SCTLR \0A\09isb\09\0A\09bl\09v7_flush_dcache_louis \0A\09mrc\09p15, 0, r0, c1, c0, 1\09@ get ACTLR \0A\09bic\09r0, r0, #(1 << 6)\09@ disable local coherency \0A\09mcr\09p15, 0, r0, c1, c0, 1\09@ set ACTLR \0A\09isb\09\0A\09dsb\09\0A\09ldmfd\09sp!, {fp, ip}", "~{r0},~{r1},~{r2},~{r3},~{r4},~{r5},~{r6},~{r7},~{r9},~{r10},~{lr},~{memory}"() #8, !srcloc !69
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tc2_pm_cpu_is_up(i32 noundef %cpu, i32 noundef %cluster) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc2_pm_cpu_is_up.__UNIQUE_ID_ddebug226, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc2_pm_cpu_is_up, %if.then)) #8
          to label %do.body3 [label %if.then], !srcloc !59

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tc2_pm_cpu_is_up.__UNIQUE_ID_ddebug226, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.14, i32 noundef %cpu, i32 noundef %cluster) #8
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cluster)
  %cmp = icmp ugt i32 %cluster, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cpu)
  %cmp4 = icmp ugt i32 %cpu, 2
  %spec.select = or i1 %cmp4, %cmp
  br i1 %spec.select, label %do.body12, label %do.end17, !prof !66

do.body12:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-vexpress/tc2_pm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 165, 0\0A.popsection", ""() #8, !srcloc !70
  unreachable

do.end17:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ve_spc_cpu_wakeup_irq(i32 noundef %cluster, i32 noundef %cpu, i1 noundef zeroext false) #8
  tail call void @ve_spc_set_resume_addr(i32 noundef %cluster, i32 noundef %cpu, i32 noundef 0) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tc2_pm_cluster_is_up(i32 noundef %cluster) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc2_pm_cluster_is_up.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc2_pm_cluster_is_up, %if.then)) #8
          to label %do.body3 [label %if.then], !srcloc !59

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tc2_pm_cluster_is_up.__UNIQUE_ID_ddebug227, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.15, i32 noundef %cluster) #8
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cluster)
  %cmp = icmp ugt i32 %cluster, 1
  br i1 %cmp, label %do.body11, label %do.end16, !prof !66

do.body11:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-vexpress/tc2_pm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 173, 0\0A.popsection", ""() #8, !srcloc !71
  unreachable

do.end16:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ve_spc_powerdown(i32 noundef %cluster, i1 noundef zeroext false) #8
  tail call void @ve_spc_global_wakeup_irq(i1 noundef zeroext false) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc2_pm_wait_for_powerdown(i32 noundef %cpu, i32 noundef %cluster) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc2_pm_wait_for_powerdown.__UNIQUE_ID_ddebug224, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc2_pm_wait_for_powerdown, %if.then)) #8
          to label %do.body3 [label %if.then], !srcloc !59

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tc2_pm_wait_for_powerdown.__UNIQUE_ID_ddebug224, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.16, i32 noundef %cpu, i32 noundef %cluster) #8
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cluster)
  %cmp = icmp ugt i32 %cluster, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cpu)
  %cmp4 = icmp ugt i32 %cpu, 2
  %spec.select = or i1 %cmp4, %cmp
  br i1 %spec.select, label %do.body12, label %for.cond.preheader, !prof !66

for.cond.preheader:                               ; preds = %do.body3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cluster)
  %tobool.not.i = icmp eq i32 %cluster, 0
  %add.pn.v.i = select i1 %tobool.not.i, i32 2, i32 16
  %add.pn.i = add nuw nsw i32 %add.pn.v.i, %cpu
  %0 = shl nuw nsw i32 1, %add.pn.i
  br label %do.body22

do.body12:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-vexpress/tc2_pm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 131, 0\0A.popsection", ""() #8, !srcloc !72
  unreachable

do.body22:                                        ; preds = %if.end45.do.body22_crit_edge, %for.cond.preheader
  %tries.060 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %if.end45.do.body22_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc2_pm_wait_for_powerdown.__UNIQUE_ID_ddebug225, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc2_pm_wait_for_powerdown, %if.then34)) #8
          to label %do.end39 [label %if.then34], !srcloc !59

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #7
  %1 = load ptr, ptr @scc, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !57
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tc2_pm_wait_for_powerdown.__UNIQUE_ID_ddebug225, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i32 noundef %cpu, i32 noundef %cluster, i32 noundef %3) #8
  br label %do.end39

do.end39:                                         ; preds = %if.then34, %do.body22
  %4 = load ptr, ptr @scc, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 24
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !57
  %6 = xor i32 %5, -1
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  %8 = and i32 %7, %0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool41.not = icmp eq i32 %8, 0
  br i1 %tobool41.not, label %lor.lhs.false, label %do.end39.cleanup_crit_edge

do.end39.cleanup_crit_edge:                       ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end39
  %call42 = tail call i32 @ve_spc_cpu_in_wfi(i32 noundef %cpu, i32 noundef %cluster) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end45:                                         ; preds = %lor.lhs.false
  tail call void @msleep(i32 noundef 10) #8
  %inc = add nuw nsw i32 %tries.060, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %if.end45.cleanup_crit_edge, label %if.end45.do.body22_crit_edge

if.end45.do.body22_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body22

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %if.end45.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %do.end39.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %do.end39.cleanup_crit_edge ], [ -110, %if.end45.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ve_spc_set_resume_addr(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__phys_addr_symbol(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mcpm_entry_point() #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ve_spc_cpu_wakeup_irq(i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ve_spc_powerdown(i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gic_cpu_if_down(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ve_spc_global_wakeup_irq(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ve_spc_cpu_in_wfi(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cci_disable_port_by_cpu(i64 noundef) local_unnamed_addr #1

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { naked noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind uwtable(sync) }
attributes #7 = { nomerge }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !22, !24, !26, !27, !29, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !48}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @__initcall__kmod_tc2_pm__229_263_tc2_pm_initearly, !1, !"__initcall__kmod_tc2_pm__229_263_tc2_pm_initearly", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-vexpress/tc2_pm.c", i32 263, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-vexpress/tc2_pm.c", i32 215, i32 4}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-vexpress/tc2_pm.c", i32 247, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @tc2_pm_init.__UNIQUE_ID_ddebug228, !5, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-vexpress/tc2_pm.c", i32 249, i32 3}
!12 = !{ptr @tc2_pm_init._entry, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @tc2_pm_init._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-vexpress/tc2_pm.c", i32 258, i32 3}
!16 = !{ptr @tc2_pm_init._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @tc2_pm_init._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @scc, !19, !"scc", i1 false, i1 false}
!19 = !{!"../arch/arm/mach-vexpress/tc2_pm.c", i32 41, i32 22}
!20 = !{ptr @tc2_nr_cpus, !21, !"tc2_nr_cpus", i1 false, i1 false}
!21 = !{!"../arch/arm/mach-vexpress/tc2_pm.c", i32 46, i32 21}
!22 = !{ptr @tc2_pm_power_ops, !23, !"tc2_pm_power_ops", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-vexpress/tc2_pm.c", i32 178, i32 39}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../arch/arm/mach-vexpress/tc2_pm.c", i32 50, i32 2}
!26 = !{ptr @tc2_pm_cpu_powerup.__UNIQUE_ID_ddebug220, !25, !"__UNIQUE_ID_ddebug220", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../arch/arm/mach-vexpress/tc2_pm.c", i32 61, i32 2}
!29 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @tc2_pm_cluster_powerup.__UNIQUE_ID_ddebug221, !28, !"__UNIQUE_ID_ddebug221", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../arch/arm/mach-vexpress/tc2_pm.c", i32 70, i32 2}
!33 = !{ptr @tc2_pm_cpu_powerdown_prepare.__UNIQUE_ID_ddebug222, !32, !"__UNIQUE_ID_ddebug222", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../arch/arm/mach-vexpress/tc2_pm.c", i32 85, i32 2}
!36 = !{ptr @tc2_pm_cluster_powerdown_prepare.__UNIQUE_ID_ddebug223, !35, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../arch/arm/mach-vexpress/tc2_pm.c", i32 164, i32 2}
!39 = !{ptr @tc2_pm_cpu_is_up.__UNIQUE_ID_ddebug226, !38, !"__UNIQUE_ID_ddebug226", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../arch/arm/mach-vexpress/tc2_pm.c", i32 172, i32 2}
!42 = !{ptr @tc2_pm_cluster_is_up.__UNIQUE_ID_ddebug227, !41, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../arch/arm/mach-vexpress/tc2_pm.c", i32 130, i32 2}
!45 = !{ptr @tc2_pm_wait_for_powerdown.__UNIQUE_ID_ddebug224, !44, !"__UNIQUE_ID_ddebug224", i1 false, i1 false}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../arch/arm/mach-vexpress/tc2_pm.c", i32 134, i32 3}
!48 = !{ptr @tc2_pm_wait_for_powerdown.__UNIQUE_ID_ddebug225, !47, !"__UNIQUE_ID_ddebug225", i1 false, i1 false}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{i64 2981824}
!58 = !{i64 2153763969}
!59 = !{i64 2148762149, i64 2148762154, i64 2148762167, i64 2148762211, i64 2148762245, i64 2148762266}
!60 = !{!"branch_weights", i32 2000, i32 1}
!61 = !{i64 2153807716, i64 2153808212, i64 2153807753, i64 2153807809, i64 2153807843, i64 2153807867, i64 2153807908, i64 2153807929, i64 2153807957, i64 2153807991}
!62 = !{i64 5425, i64 5432, i64 5449, i64 5463}
!63 = !{i64 2153761355}
!64 = !{i64 2743, i64 2773, i64 2786}
!65 = !{i64 2153786030, i64 2153786047, i64 2153786077, i64 2153786125, i64 2153786168, i64 2153786216, i64 2153786230, i64 2153786280, i64 2153786328, i64 2153786386, i64 2153786434, i64 2153786448, i64 2153786462}
!66 = !{!"branch_weights", i32 1, i32 2000}
!67 = !{i64 2153780193, i64 2153780688, i64 2153780230, i64 2153780286, i64 2153780320, i64 2153780344, i64 2153780385, i64 2153780406, i64 2153780434, i64 2153780468}
!68 = !{i64 2153784031, i64 2153784526, i64 2153784068, i64 2153784124, i64 2153784158, i64 2153784182, i64 2153784223, i64 2153784244, i64 2153784272, i64 2153784306}
!69 = !{i64 2153785366, i64 2153785383, i64 2153785413, i64 2153785461, i64 2153785504, i64 2153785552, i64 2153785566, i64 2153785616, i64 2153785664, i64 2153785722, i64 2153785770, i64 2153785784, i64 2153785798}
!70 = !{i64 2153796830, i64 2153797326, i64 2153796867, i64 2153796923, i64 2153796957, i64 2153796981, i64 2153797022, i64 2153797043, i64 2153797071, i64 2153797105}
!71 = !{i64 2153800672, i64 2153801168, i64 2153800709, i64 2153800765, i64 2153800799, i64 2153800823, i64 2153800864, i64 2153800885, i64 2153800913, i64 2153800947}
!72 = !{i64 2153789648, i64 2153790144, i64 2153789685, i64 2153789741, i64 2153789775, i64 2153789799, i64 2153789840, i64 2153789861, i64 2153789889, i64 2153789923}
