; ModuleID = '/llk/IR_all_yes/arch/arm/mach-tegra/pm.c_pt.bc'
source_filename = "../arch/arm/mach-tegra/pm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_suspend_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_lp1_iram = type { ptr, ptr }
%struct.outer_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.tegra_cpu_car_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4
@__tegra_cpu_reset_handler_data = external dso_local global [7 x i32], align 4
@tegra_lp2_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.9 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@firmware_ops = external dso_local local_unnamed_addr global ptr, align 4
@tegra_pm_init_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013%s: unable to allocate memory for SDRAMself-refresh -- LP0/LP1 unavailable\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tegra_pm_init_suspend\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"arch/arm/mach-tegra/pm.c\00", [39 x i8] zeroinitializer }, align 32
@tegra_pm_init_suspend._entry_ptr = internal global ptr @tegra_pm_init_suspend._entry, section ".printk_index", align 4
@tegra_sleep_func = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@tegra_suspend_ops = internal constant { %struct.platform_suspend_ops, [56 x i8] } { %struct.platform_suspend_ops { ptr @suspend_valid_only_mem, ptr null, ptr null, ptr null, ptr @tegra_suspend_enter, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@tegra_lp1_iram = dso_local global { %struct.tegra_lp1_iram, [24 x i8] } zeroinitializer, align 32
@tegra_tear_down_cpu = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@tegra_sleep_core_finish = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tegra_lp2_lock\00", [17 x i8] zeroinitializer }, align 32
@tegra_cpu_car_ops = external dso_local local_unnamed_addr global ptr, align 4
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/clk/tegra.h\00", [38 x i8] zeroinitializer }, align 32
@outer_cache = external dso_local local_unnamed_addr global %struct.outer_cache_fns, align 4
@iram_save_size = internal global { i32, [28 x i8] } zeroinitializer, align 32
@iram_save_addr = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@tegra_suspend_enter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016Entering suspend state %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tegra_suspend_enter\00", [44 x i8] zeroinitializer }, align 32
@tegra_suspend_enter._entry_ptr = internal global ptr @tegra_suspend_enter._entry, section ".printk_index", align 4
@lp_state = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LP2\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LP1\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LP0\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 32, i64 48]
@__sancov_gen_cov_switch_values.11 = internal global [6 x i64] [i64 4, i64 8, i64 32, i64 48, i64 53, i64 64]
@__sancov_gen_cov_switch_values.12 = internal global [6 x i64] [i64 4, i64 8, i64 32, i64 48, i64 53, i64 64]
@__sancov_gen_cov_switch_values.13 = internal global [6 x i64] [i64 4, i64 8, i64 32, i64 48, i64 53, i64 64]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 8, i64 32, i64 48]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.17 = private unnamed_addr constant [15 x i8] c"tegra_lp2_lock\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 417, i32 4 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"tegra_sleep_func\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 46, i32 14 }
@___asan_gen_.35 = private unnamed_addr constant [18 x i8] c"tegra_suspend_ops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 401, i32 42 }
@___asan_gen_.38 = private unnamed_addr constant [15 x i8] c"tegra_lp1_iram\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 43, i32 23 }
@___asan_gen_.41 = private unnamed_addr constant [20 x i8] c"tegra_tear_down_cpu\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 44, i32 8 }
@___asan_gen_.44 = private unnamed_addr constant [24 x i8] c"tegra_sleep_core_finish\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 45, i32 8 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 40, i32 8 }
@___asan_gen_.51 = private unnamed_addr constant [29 x i8] c"../include/linux/clk/tegra.h\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 120, i32 6 }
@___asan_gen_.53 = private unnamed_addr constant [15 x i8] c"iram_save_size\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 41, i32 12 }
@___asan_gen_.56 = private unnamed_addr constant [15 x i8] c"iram_save_addr\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 42, i32 14 }
@___asan_gen_.59 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 354, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant [9 x i8] c"lp_state\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 339, i32 20 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 340, i32 25 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 341, i32 24 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 342, i32 24 }
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.81 = private constant [28 x i8] c"../arch/arm/mach-tegra/pm.c\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 343, i32 24 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @tegra_pm_init_suspend._entry, ptr @tegra_pm_init_suspend._entry_ptr, ptr @tegra_suspend_enter._entry, ptr @tegra_suspend_enter._entry_ptr, ptr @tegra_lp2_lock, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @tegra_sleep_func, ptr @tegra_suspend_ops, ptr @tegra_lp1_iram, ptr @tegra_tear_down_cpu, ptr @tegra_sleep_core_finish, ptr @.str.3, ptr @.str.4, ptr @iram_save_size, ptr @iram_save_addr, ptr @.str.5, ptr @.str.6, ptr @lp_state, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_lp2_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pm_init_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sleep_func to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_suspend_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_lp1_iram to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_tear_down_cpu to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sleep_core_finish to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iram_save_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iram_save_addr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_suspend_enter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lp_state to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra_pm_clear_cpu_in_lp2() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !40) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @tegra_lp2_lock) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr select (i1 select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), i1 true, i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1880096768)), i1 true)), ptr select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), ptr getelementptr (i8, ptr inttoptr (i32 -31457280 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736)), ptr getelementptr (i8, ptr inttoptr (i32 -33554432 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192))), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342455808)), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1074003968)), ptr null, ptr getelementptr (i8, ptr inttoptr (i32 -29360128 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824))), ptr getelementptr (i8, ptr inttoptr (i32 -29097984 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424)))) to i32))
  %6 = load i32, ptr select (i1 select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), i1 true, i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1880096768)), i1 true)), ptr select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), ptr getelementptr (i8, ptr inttoptr (i32 -31457280 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736)), ptr getelementptr (i8, ptr inttoptr (i32 -33554432 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192))), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342455808)), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1074003968)), ptr null, ptr getelementptr (i8, ptr inttoptr (i32 -29360128 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824))), ptr getelementptr (i8, ptr inttoptr (i32 -29097984 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424)))), align 4
  %shl = shl nuw i32 1, %5
  %and = and i32 %6, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body19, label %do.end24, !prof !50

do.body19:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-tegra/pm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 120, 0\0A.popsection", ""() #8, !srcloc !51
  unreachable

do.end24:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %neg = xor i32 %shl, -1
  %and26 = and i32 %6, %neg
  call void @__asan_store4_noabort(i32 ptrtoint (ptr select (i1 select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), i1 true, i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1880096768)), i1 true)), ptr select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), ptr getelementptr (i8, ptr inttoptr (i32 -31457280 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736)), ptr getelementptr (i8, ptr inttoptr (i32 -33554432 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192))), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342455808)), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1074003968)), ptr null, ptr getelementptr (i8, ptr inttoptr (i32 -29360128 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824))), ptr getelementptr (i8, ptr inttoptr (i32 -29097984 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424)))) to i32))
  store i32 %and26, ptr select (i1 select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), i1 true, i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1880096768)), i1 true)), ptr select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), ptr getelementptr (i8, ptr inttoptr (i32 -31457280 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736)), ptr getelementptr (i8, ptr inttoptr (i32 -33554432 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192))), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342455808)), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1074003968)), ptr null, ptr getelementptr (i8, ptr inttoptr (i32 -29360128 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824))), ptr getelementptr (i8, ptr inttoptr (i32 -29097984 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424)))), align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @tegra_lp2_lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tegra_cpu_reset_handler_start() #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra_pm_set_cpu_in_lp2() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !40) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @tegra_lp2_lock) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr select (i1 select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), i1 true, i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1880096768)), i1 true)), ptr select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), ptr getelementptr (i8, ptr inttoptr (i32 -31457280 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736)), ptr getelementptr (i8, ptr inttoptr (i32 -33554432 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192))), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342455808)), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1074003968)), ptr null, ptr getelementptr (i8, ptr inttoptr (i32 -29360128 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824))), ptr getelementptr (i8, ptr inttoptr (i32 -29097984 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424)))) to i32))
  %6 = load i32, ptr select (i1 select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), i1 true, i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1880096768)), i1 true)), ptr select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), ptr getelementptr (i8, ptr inttoptr (i32 -31457280 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736)), ptr getelementptr (i8, ptr inttoptr (i32 -33554432 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192))), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342455808)), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1074003968)), ptr null, ptr getelementptr (i8, ptr inttoptr (i32 -29360128 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824))), ptr getelementptr (i8, ptr inttoptr (i32 -29097984 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424)))), align 4
  %shl = shl nuw i32 1, %5
  %and = and i32 %6, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end23, label %do.body18, !prof !52

do.body18:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-tegra/pm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 133, 0\0A.popsection", ""() #8, !srcloc !53
  unreachable

do.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %6, %shl
  call void @__asan_store4_noabort(i32 ptrtoint (ptr select (i1 select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), i1 true, i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1880096768)), i1 true)), ptr select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), ptr getelementptr (i8, ptr inttoptr (i32 -31457280 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736)), ptr getelementptr (i8, ptr inttoptr (i32 -33554432 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192))), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342455808)), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1074003968)), ptr null, ptr getelementptr (i8, ptr inttoptr (i32 -29360128 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824))), ptr getelementptr (i8, ptr inttoptr (i32 -29097984 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424)))) to i32))
  store i32 %or, ptr select (i1 select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), i1 true, i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1880096768)), i1 true)), ptr select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), ptr getelementptr (i8, ptr inttoptr (i32 -31457280 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736)), ptr getelementptr (i8, ptr inttoptr (i32 -33554432 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192))), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342455808)), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1074003968)), ptr null, ptr getelementptr (i8, ptr inttoptr (i32 -29360128 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824))), ptr getelementptr (i8, ptr inttoptr (i32 -29097984 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424)))), align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @tegra_lp2_lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_pm_enter_lp2() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i8 @tegra_get_chip_id() #8
  %0 = zext i8 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %call.i, label %sw.default.i [
    i8 32, label %entry.tegra_pm_set.exit_crit_edge
    i8 48, label %entry.tegra_pm_set.exit_crit_edge13
  ]

entry.tegra_pm_set.exit_crit_edge13:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_pm_set.exit

entry.tegra_pm_set.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_pm_set.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = tail call i32 @flowctrl_read_cpu_csr(i32 noundef 0) #8
  %and.i = and i32 %call1.i, -12289
  %or.i = or i32 %and.i, 8192
  tail call void @flowctrl_write_cpu_csr(i32 noundef 0, i32 noundef %or.i) #8
  br label %tegra_pm_set.exit

tegra_pm_set.exit:                                ; preds = %sw.default.i, %entry.tegra_pm_set.exit_crit_edge, %entry.tegra_pm_set.exit_crit_edge13
  tail call void @tegra_pmc_enter_suspend_mode(i32 noundef 1) #8
  %call = tail call i32 @cpu_cluster_pm_enter() #8
  %1 = tail call i32 @llvm.read_register.i32(metadata !40) #8
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not.i = icmp eq i32 %4, 0
  br i1 %cmp.not.i, label %do.end8.i, label %do.body3.i, !prof !52

do.body3.i:                                       ; preds = %tegra_pm_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-tegra/pm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 101, 0\0A.popsection", ""() #8, !srcloc !54
  unreachable

do.end8.i:                                        ; preds = %tegra_pm_set.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__cpu_logical_map to i32))
  %5 = load i32, ptr @__cpu_logical_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tegra_cpu_car_ops to i32))
  %6 = load ptr, ptr @tegra_cpu_car_ops, align 4
  %suspend.i.i = getelementptr inbounds %struct.tegra_cpu_car_ops, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %suspend.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %suspend.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end23.critedge.i.i, !prof !50

do.end.i.i:                                       ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 120, i32 noundef 9, ptr noundef null) #8
  br label %suspend_cpu_complex.exit

if.end23.critedge.i.i:                            ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %8() #8
  br label %suspend_cpu_complex.exit

suspend_cpu_complex.exit:                         ; preds = %if.end23.critedge.i.i, %do.end.i.i
  tail call void @flowctrl_cpu_suspend_enter(i32 noundef %5) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %9 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %shl = shl i32 %9, 12
  %sub = add i32 %shl, 1073741824
  %call1 = tail call i32 @cpu_suspend(i32 noundef %sub, ptr noundef nonnull @tegra_sleep_cpu) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 6) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 6), align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %suspend_cpu_complex.exit.outer_resume.exit_crit_edge, label %if.then.i

suspend_cpu_complex.exit.outer_resume.exit_crit_edge: ; preds = %suspend_cpu_complex.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %outer_resume.exit

if.then.i:                                        ; preds = %suspend_cpu_complex.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %10() #8
  br label %outer_resume.exit

outer_resume.exit:                                ; preds = %if.then.i, %suspend_cpu_complex.exit.outer_resume.exit_crit_edge
  %11 = tail call i32 @llvm.read_register.i32(metadata !40) #8
  %and.i.i5 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i5 to ptr
  %cpu1.i6 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu1.i6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu1.i6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.not.i7 = icmp eq i32 %14, 0
  br i1 %cmp.not.i7, label %do.end8.i10, label %do.body3.i8, !prof !52

do.body3.i8:                                      ; preds = %outer_resume.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-tegra/pm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #8, !srcloc !55
  unreachable

do.end8.i10:                                      ; preds = %outer_resume.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__cpu_logical_map to i32))
  %15 = load i32, ptr @__cpu_logical_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tegra_cpu_car_ops to i32))
  %16 = load ptr, ptr @tegra_cpu_car_ops, align 4
  %resume.i.i = getelementptr inbounds %struct.tegra_cpu_car_ops, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %resume.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %resume.i.i, align 4
  %tobool.not.i.i9 = icmp eq ptr %18, null
  br i1 %tobool.not.i.i9, label %do.end.i.i11, label %if.end23.critedge.i.i12, !prof !50

do.end.i.i11:                                     ; preds = %do.end8.i10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 128, i32 noundef 9, ptr noundef null) #8
  br label %restore_cpu_complex.exit

if.end23.critedge.i.i12:                          ; preds = %do.end8.i10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %18() #8
  br label %restore_cpu_complex.exit

restore_cpu_complex.exit:                         ; preds = %if.end23.critedge.i.i12, %do.end.i.i11
  tail call void @flowctrl_cpu_suspend_exit(i32 noundef %15) #8
  %call2 = tail call i32 @cpu_cluster_pm_exit() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @firmware_ops to i32))
  %19 = load ptr, ptr @firmware_ops, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %restore_cpu_complex.exit.cond.end_crit_edge, label %cond.true

restore_cpu_complex.exit.cond.end_crit_edge:      ; preds = %restore_cpu_complex.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %restore_cpu_complex.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 %21(i32 noundef 5) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %restore_cpu_complex.exit.cond.end_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_cluster_pm_enter() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_suspend(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_sleep_cpu(i32 noundef %v2p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tegra_cpu_car_ops to i32))
  %0 = load ptr, ptr @tegra_cpu_car_ops, align 4
  %rail_off_ready = getelementptr inbounds %struct.tegra_cpu_car_ops, ptr %0, i32 0, i32 5
  %1 = ptrtoint ptr %rail_off_ready to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rail_off_ready, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end23_crit_edge, label %tegra_cpu_rail_off_ready.exit

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

tegra_cpu_rail_off_ready.exit:                    ; preds = %entry
  %call.i = tail call zeroext i1 %2() #8
  br i1 %call.i, label %tegra_cpu_rail_off_ready.exit.if.end23_crit_edge, label %do.end, !prof !52

tegra_cpu_rail_off_ready.exit.if.end23_crit_edge: ; preds = %tegra_cpu_rail_off_ready.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

do.end:                                           ; preds = %tegra_cpu_rail_off_ready.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 142, i32 noundef 9, ptr noundef null) #8
  ret i32 -16

if.end23:                                         ; preds = %tegra_cpu_rail_off_ready.exit.if.end23_crit_edge, %entry.if.end23_crit_edge
  %call24 = tail call zeroext i1 @trusted_foundations_registered() #8
  br i1 %call24, label %land.lhs.true25, label %if.end23.if.end28_crit_edge

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

land.lhs.true25:                                  ; preds = %if.end23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 4) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 4), align 4
  %tobool26.not = icmp eq ptr %3, null
  br i1 %tobool26.not, label %land.lhs.true25.if.end28_crit_edge, label %if.then27

land.lhs.true25.if.end28_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then27:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %3() #8
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %land.lhs.true25.if.end28_crit_edge, %if.end23.if.end28_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @firmware_ops to i32))
  %4 = load ptr, ptr @firmware_ops, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %tobool29.not = icmp eq ptr %6, null
  br i1 %tobool29.not, label %if.end28.cond.end_crit_edge, label %cond.true

if.end28.cond.end_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %call31 = tail call i32 %6(i32 noundef 3) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end28.cond.end_crit_edge
  tail call void @setup_mm_for_reboot() #8
  %call32 = tail call i32 @tegra_sleep_cpu_finish(i32 noundef %v2p) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-tegra/pm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 172, 0\0A.popsection", ""() #8, !srcloc !56
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_cluster_pm_exit() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @tegra_pm_validate_suspend_mode(i32 noundef %mode) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.umin.i32(i32 %mode, i32 2)
  ret i32 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra_pm_init_suspend() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tegra_pmc_get_suspend_mode() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call zeroext i8 @tegra_get_chip_id() #8
  %0 = zext i8 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.11)
  switch i8 %call.i, label %if.end.tegra_tear_down_cpu_init.exit_crit_edge [
    i8 32, label %if.end.sw.epilog.sink.split.i_crit_edge
    i8 48, label %if.end.sw.bb1.i_crit_edge
    i8 53, label %if.end.sw.bb1.i_crit_edge24
    i8 64, label %if.end.sw.bb1.i_crit_edge25
  ]

if.end.sw.bb1.i_crit_edge25:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i

if.end.sw.bb1.i_crit_edge24:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i

if.end.sw.bb1.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i

if.end.sw.epilog.sink.split.i_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i

if.end.tegra_tear_down_cpu_init.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_tear_down_cpu_init.exit

sw.bb1.i:                                         ; preds = %if.end.sw.bb1.i_crit_edge, %if.end.sw.bb1.i_crit_edge24, %if.end.sw.bb1.i_crit_edge25
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb1.i, %if.end.sw.epilog.sink.split.i_crit_edge
  %tegra30_tear_down_cpu.sink.i = phi ptr [ @tegra30_tear_down_cpu, %sw.bb1.i ], [ @tegra20_tear_down_cpu, %if.end.sw.epilog.sink.split.i_crit_edge ]
  store ptr %tegra30_tear_down_cpu.sink.i, ptr @tegra_tear_down_cpu, align 4
  br label %tegra_tear_down_cpu_init.exit

tegra_tear_down_cpu_init.exit:                    ; preds = %sw.epilog.sink.split.i, %if.end.tegra_tear_down_cpu_init.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp1.not = icmp eq i32 %call, 1
  br i1 %cmp1.not, label %tegra_tear_down_cpu_init.exit.sw.epilog.sink.split_crit_edge, label %if.then2

tegra_tear_down_cpu_init.exit.sw.epilog.sink.split_crit_edge: ; preds = %tegra_tear_down_cpu_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

if.then2:                                         ; preds = %tegra_tear_down_cpu_init.exit
  %call.i12 = tail call zeroext i8 @tegra_get_chip_id() #8
  %1 = zext i8 %call.i12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.12)
  switch i8 %call.i12, label %if.then2.sw.epilog.i_crit_edge [
    i8 32, label %sw.bb.i
    i8 48, label %if.then2.sw.bb1.i13_crit_edge
    i8 53, label %if.then2.sw.bb1.i13_crit_edge26
    i8 64, label %if.then2.sw.bb1.i13_crit_edge27
  ]

if.then2.sw.bb1.i13_crit_edge27:                  ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i13

if.then2.sw.bb1.i13_crit_edge26:                  ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i13

if.then2.sw.bb1.i13_crit_edge:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i13

if.then2.sw.epilog.i_crit_edge:                   ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @tegra20_lp1_iram_hook() #8
  br label %sw.epilog.i

sw.bb1.i13:                                       ; preds = %if.then2.sw.bb1.i13_crit_edge, %if.then2.sw.bb1.i13_crit_edge26, %if.then2.sw.bb1.i13_crit_edge27
  tail call void @tegra30_lp1_iram_hook() #8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb1.i13, %sw.bb.i, %if.then2.sw.epilog.i_crit_edge
  %2 = load ptr, ptr @tegra_lp1_iram, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %sw.epilog.i.do.end_crit_edge, label %lor.lhs.false.i

sw.epilog.i.do.end_crit_edge:                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false.i:                                  ; preds = %sw.epilog.i
  %3 = load ptr, ptr getelementptr inbounds (%struct.tegra_lp1_iram, ptr @tegra_lp1_iram, i32 0, i32 1), align 4
  %tobool2.not.i = icmp eq ptr %3, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.do.end_crit_edge, label %if.end.i

lor.lhs.false.i.do.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i:                                         ; preds = %lor.lhs.false.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %2 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  store i32 %sub.ptr.sub.i, ptr @iram_save_size, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %sub.ptr.sub.i, i32 noundef 3264) #11
  store ptr %call9.i.i, ptr @iram_save_addr, align 4
  %tobool4.not.i.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool4.not.i.not, label %if.end.i.do.end_crit_edge, label %lor.lhs.false

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end.i
  %call.i14 = tail call zeroext i8 @tegra_get_chip_id() #8
  %4 = zext i8 %call.i14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.13)
  switch i8 %call.i14, label %lor.lhs.false.tegra_sleep_core_init.exit_crit_edge [
    i8 32, label %sw.bb.i15
    i8 48, label %lor.lhs.false.sw.bb1.i16_crit_edge
    i8 53, label %lor.lhs.false.sw.bb1.i16_crit_edge28
    i8 64, label %lor.lhs.false.sw.bb1.i16_crit_edge29
  ]

lor.lhs.false.sw.bb1.i16_crit_edge29:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i16

lor.lhs.false.sw.bb1.i16_crit_edge28:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i16

lor.lhs.false.sw.bb1.i16_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i16

lor.lhs.false.tegra_sleep_core_init.exit_crit_edge: ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_sleep_core_init.exit

sw.bb.i15:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @tegra20_sleep_core_init() #8
  br label %tegra_sleep_core_init.exit

sw.bb1.i16:                                       ; preds = %lor.lhs.false.sw.bb1.i16_crit_edge, %lor.lhs.false.sw.bb1.i16_crit_edge28, %lor.lhs.false.sw.bb1.i16_crit_edge29
  tail call void @tegra30_sleep_core_init() #8
  br label %tegra_sleep_core_init.exit

tegra_sleep_core_init.exit:                       ; preds = %sw.bb1.i16, %sw.bb.i15, %lor.lhs.false.tegra_sleep_core_init.exit_crit_edge
  %5 = load ptr, ptr @tegra_sleep_core_finish, align 4
  %tobool.not.i17.not = icmp eq ptr %5, null
  br i1 %tobool.not.i17.not, label %tegra_sleep_core_init.exit.do.end_crit_edge, label %if.end8

tegra_sleep_core_init.exit.do.end_crit_edge:      ; preds = %tegra_sleep_core_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %tegra_sleep_core_init.exit.do.end_crit_edge, %if.end.i.do.end_crit_edge, %lor.lhs.false.i.do.end_crit_edge, %sw.epilog.i.do.end_crit_edge
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #12
  tail call void @tegra_pmc_set_suspend_mode(i32 noundef 1) #8
  br label %sw.epilog.sink.split

if.end8:                                          ; preds = %tegra_sleep_core_init.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cond = icmp eq i32 %call, 2
  br i1 %cond, label %if.end8.sw.epilog.sink.split_crit_edge, label %if.end8.sw.epilog_crit_edge

if.end8.sw.epilog_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end8.sw.epilog.sink.split_crit_edge:           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.end8.sw.epilog.sink.split_crit_edge, %do.end, %tegra_tear_down_cpu_init.exit.sw.epilog.sink.split_crit_edge
  %tegra_sleep_cpu.sink = phi ptr [ @tegra_sleep_core, %if.end8.sw.epilog.sink.split_crit_edge ], [ @tegra_sleep_cpu, %tegra_tear_down_cpu_init.exit.sw.epilog.sink.split_crit_edge ], [ @tegra_sleep_cpu, %do.end ]
  store ptr %tegra_sleep_cpu.sink, ptr @tegra_sleep_func, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end8.sw.epilog_crit_edge
  tail call void @suspend_set_ops(ptr noundef nonnull @tegra_suspend_ops) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_pmc_get_suspend_mode() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_pmc_set_suspend_mode(i32 noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_sleep_core(i32 noundef %v2p) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @trusted_foundations_registered() #8
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @outer_disable() #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @firmware_ops to i32))
  %0 = load ptr, ptr @firmware_ops, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end.cond.end_crit_edge, label %cond.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 %2(i32 noundef 1) #8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  tail call void @setup_mm_for_reboot() #8
  %3 = load ptr, ptr @tegra_sleep_core_finish, align 4
  tail call void %3(i32 noundef %v2p) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-tegra/pm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 251, 0\0A.popsection", ""() #8, !srcloc !57
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @suspend_set_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_pm_park_secondary_cpu(i32 noundef %cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cpu)
  %cmp.not = icmp eq i32 %cpu, 0
  br i1 %cmp.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then:                                          ; preds = %entry
  tail call void @tegra_disable_clean_inv_dcache(i32 noundef 0) #8
  %call = tail call zeroext i8 @tegra_get_chip_id() #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %call)
  %cmp1 = icmp eq i8 %call, 32
  br i1 %cmp1, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @tegra20_hotplug_shutdown() #8
  br label %if.end4

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @tegra30_hotplug_shutdown() #8
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then3, %entry.if.end4_crit_edge
  ret i32 -22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_disable_clean_inv_dcache(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @tegra_get_chip_id() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra20_hotplug_shutdown() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra30_hotplug_shutdown() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @flowctrl_read_cpu_csr(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flowctrl_write_cpu_csr(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_pmc_enter_suspend_mode(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flowctrl_cpu_suspend_enter(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @trusted_foundations_registered() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @setup_mm_for_reboot() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_sleep_cpu_finish(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flowctrl_cpu_suspend_exit(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra20_tear_down_cpu() #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra30_tear_down_cpu() #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra20_lp1_iram_hook() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra30_lp1_iram_hook() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra20_sleep_core_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra30_sleep_core_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @outer_disable() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @suspend_valid_only_mem(i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_suspend_enter(i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tegra_pmc_get_suspend_mode() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call)
  %cmp1 = icmp ugt i32 %call, 3
  br i1 %cmp1, label %do.end, label %do.end25, !prof !50

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 351, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

do.end25:                                         ; preds = %entry
  %arrayidx = getelementptr [4 x ptr], ptr @lp_state, i32 0, i32 %call
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %1) #12
  %call.i = tail call zeroext i8 @tegra_get_chip_id() #8
  %2 = zext i8 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.14)
  switch i8 %call.i, label %sw.default.i [
    i8 32, label %do.end25.tegra_pm_set.exit_crit_edge
    i8 48, label %do.end25.tegra_pm_set.exit_crit_edge61
  ]

do.end25.tegra_pm_set.exit_crit_edge61:           ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_pm_set.exit

do.end25.tegra_pm_set.exit_crit_edge:             ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_pm_set.exit

sw.default.i:                                     ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = tail call i32 @flowctrl_read_cpu_csr(i32 noundef 0) #8
  %and.i = and i32 %call1.i, -12289
  %or.i = or i32 %and.i, 8192
  tail call void @flowctrl_write_cpu_csr(i32 noundef 0, i32 noundef %or.i) #8
  br label %tegra_pm_set.exit

tegra_pm_set.exit:                                ; preds = %sw.default.i, %do.end25.tegra_pm_set.exit_crit_edge, %do.end25.tegra_pm_set.exit_crit_edge61
  tail call void @tegra_pmc_enter_suspend_mode(i32 noundef %call) #8
  tail call void asm sideeffect "cpsid f\09@ __clf", "~{memory},~{cc}"() #8, !srcloc !58
  %3 = tail call i32 @llvm.read_register.i32(metadata !40) #8
  %and.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not.i = icmp eq i32 %6, 0
  br i1 %cmp.not.i, label %do.end8.i, label %do.body3.i, !prof !52

do.body3.i:                                       ; preds = %tegra_pm_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-tegra/pm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 101, 0\0A.popsection", ""() #8, !srcloc !54
  unreachable

do.end8.i:                                        ; preds = %tegra_pm_set.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__cpu_logical_map to i32))
  %7 = load i32, ptr @__cpu_logical_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tegra_cpu_car_ops to i32))
  %8 = load ptr, ptr @tegra_cpu_car_ops, align 4
  %suspend.i.i = getelementptr inbounds %struct.tegra_cpu_car_ops, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %suspend.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %suspend.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end23.critedge.i.i, !prof !50

do.end.i.i:                                       ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 120, i32 noundef 9, ptr noundef null) #8
  br label %suspend_cpu_complex.exit

if.end23.critedge.i.i:                            ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %10() #8
  br label %suspend_cpu_complex.exit

suspend_cpu_complex.exit:                         ; preds = %if.end23.critedge.i.i, %do.end.i.i
  tail call void @flowctrl_cpu_suspend_enter(i32 noundef %7) #8
  %11 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %call, label %suspend_cpu_complex.exit.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb28
  ]

suspend_cpu_complex.exit.sw.epilog_crit_edge:     ; preds = %suspend_cpu_complex.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %suspend_cpu_complex.exit
  call void @__sanitizer_cov_trace_pc() #10
  %12 = load ptr, ptr @iram_save_addr, align 4
  %13 = load i32, ptr @iram_save_size, align 4
  %14 = call ptr @memcpy(ptr %12, ptr inttoptr (i32 -29356032 to ptr), i32 %13)
  %15 = load ptr, ptr @tegra_lp1_iram, align 4
  %16 = call ptr @memcpy(ptr inttoptr (i32 -29356032 to ptr), ptr %15, i32 %13)
  call void @__asan_store4_noabort(i32 ptrtoint (ptr select (i1 select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), i1 true, i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1880096768)), i1 true)), ptr select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), ptr getelementptr (i8, ptr inttoptr (i32 -31457280 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736)), ptr getelementptr (i8, ptr inttoptr (i32 -33554432 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192))), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342455808)), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1074003968)), ptr null, ptr getelementptr (i8, ptr inttoptr (i32 -29360128 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824))), ptr getelementptr (i8, ptr inttoptr (i32 -29097984 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424)))) to i32))
  store i32 1, ptr select (i1 select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), i1 true, i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1880096768)), i1 true)), ptr select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), ptr getelementptr (i8, ptr inttoptr (i32 -31457280 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736)), ptr getelementptr (i8, ptr inttoptr (i32 -33554432 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192))), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342455808)), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1074003968)), ptr null, ptr getelementptr (i8, ptr inttoptr (i32 -29360128 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824))), ptr getelementptr (i8, ptr inttoptr (i32 -29097984 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424)))), align 4
  br label %sw.epilog

sw.bb28:                                          ; preds = %suspend_cpu_complex.exit
  %17 = tail call i32 @llvm.read_register.i32(metadata !40) #8
  %and.i.i43 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i43 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @tegra_lp2_lock) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr select (i1 select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), i1 true, i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1880096768)), i1 true)), ptr select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), ptr getelementptr (i8, ptr inttoptr (i32 -31457280 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736)), ptr getelementptr (i8, ptr inttoptr (i32 -33554432 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192))), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342455808)), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1074003968)), ptr null, ptr getelementptr (i8, ptr inttoptr (i32 -29360128 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824))), ptr getelementptr (i8, ptr inttoptr (i32 -29097984 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424)))) to i32))
  %23 = load i32, ptr select (i1 select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), i1 true, i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1880096768)), i1 true)), ptr select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), ptr getelementptr (i8, ptr inttoptr (i32 -31457280 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736)), ptr getelementptr (i8, ptr inttoptr (i32 -33554432 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192))), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342455808)), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1074003968)), ptr null, ptr getelementptr (i8, ptr inttoptr (i32 -29360128 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824))), ptr getelementptr (i8, ptr inttoptr (i32 -29097984 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424)))), align 4
  %shl.i = shl nuw i32 1, %22
  %and.i44 = and i32 %23, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i44)
  %tobool.not.i = icmp eq i32 %and.i44, 0
  br i1 %tobool.not.i, label %tegra_pm_set_cpu_in_lp2.exit, label %do.body18.i, !prof !52

do.body18.i:                                      ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-tegra/pm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 133, 0\0A.popsection", ""() #8, !srcloc !53
  unreachable

tegra_pm_set_cpu_in_lp2.exit:                     ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #10
  %or.i45 = or i32 %23, %shl.i
  call void @__asan_store4_noabort(i32 ptrtoint (ptr select (i1 select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), i1 true, i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1880096768)), i1 true)), ptr select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), ptr getelementptr (i8, ptr inttoptr (i32 -31457280 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736)), ptr getelementptr (i8, ptr inttoptr (i32 -33554432 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192))), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342455808)), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1074003968)), ptr null, ptr getelementptr (i8, ptr inttoptr (i32 -29360128 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824))), ptr getelementptr (i8, ptr inttoptr (i32 -29097984 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424)))) to i32))
  store i32 %or.i45, ptr select (i1 select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), i1 true, i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1880096768)), i1 true)), ptr select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), ptr getelementptr (i8, ptr inttoptr (i32 -31457280 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736)), ptr getelementptr (i8, ptr inttoptr (i32 -33554432 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192))), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342455808)), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1074003968)), ptr null, ptr getelementptr (i8, ptr inttoptr (i32 -29360128 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824))), ptr getelementptr (i8, ptr inttoptr (i32 -29097984 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424)))), align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @tegra_lp2_lock) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %tegra_pm_set_cpu_in_lp2.exit, %sw.bb, %suspend_cpu_complex.exit.sw.epilog_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %24 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %shl = shl i32 %24, 12
  %sub = add i32 %shl, 1073741824
  %25 = load ptr, ptr @tegra_sleep_func, align 4
  %call29 = tail call i32 @cpu_suspend(i32 noundef %sub, ptr noundef %25) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 6) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 6), align 4
  %tobool.not.i46 = icmp eq ptr %26, null
  br i1 %tobool.not.i46, label %sw.epilog.outer_resume.exit_crit_edge, label %if.then.i

sw.epilog.outer_resume.exit_crit_edge:            ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %outer_resume.exit

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %26() #8
  br label %outer_resume.exit

outer_resume.exit:                                ; preds = %if.then.i, %sw.epilog.outer_resume.exit_crit_edge
  %27 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %call, label %outer_resume.exit.sw.epilog33_crit_edge [
    i32 2, label %sw.bb30
    i32 1, label %sw.bb31
  ]

outer_resume.exit.sw.epilog33_crit_edge:          ; preds = %outer_resume.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog33

sw.bb30:                                          ; preds = %outer_resume.exit
  call void @__sanitizer_cov_trace_pc() #10
  %28 = load ptr, ptr @iram_save_addr, align 4
  %29 = load i32, ptr @iram_save_size, align 4
  %30 = call ptr @memcpy(ptr inttoptr (i32 -29356032 to ptr), ptr %28, i32 %29)
  call void @__asan_store4_noabort(i32 ptrtoint (ptr select (i1 select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), i1 true, i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1880096768)), i1 true)), ptr select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), ptr getelementptr (i8, ptr inttoptr (i32 -31457280 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736)), ptr getelementptr (i8, ptr inttoptr (i32 -33554432 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192))), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342455808)), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1074003968)), ptr null, ptr getelementptr (i8, ptr inttoptr (i32 -29360128 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824))), ptr getelementptr (i8, ptr inttoptr (i32 -29097984 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424)))) to i32))
  store i32 0, ptr select (i1 select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), i1 true, i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1880096768)), i1 true)), ptr select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), ptr getelementptr (i8, ptr inttoptr (i32 -31457280 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736)), ptr getelementptr (i8, ptr inttoptr (i32 -33554432 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192))), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342455808)), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1074003968)), ptr null, ptr getelementptr (i8, ptr inttoptr (i32 -29360128 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824))), ptr getelementptr (i8, ptr inttoptr (i32 -29097984 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 1) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424)))), align 4
  br label %sw.epilog33

sw.bb31:                                          ; preds = %outer_resume.exit
  %31 = tail call i32 @llvm.read_register.i32(metadata !40) #8
  %and.i.i47 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i47 to ptr
  %cpu.i48 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %cpu.i48 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cpu.i48, align 4
  %arrayidx.i49 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %34
  %35 = ptrtoint ptr %arrayidx.i49 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i49, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @tegra_lp2_lock) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr select (i1 select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), i1 true, i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1880096768)), i1 true)), ptr select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), ptr getelementptr (i8, ptr inttoptr (i32 -31457280 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736)), ptr getelementptr (i8, ptr inttoptr (i32 -33554432 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192))), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342455808)), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1074003968)), ptr null, ptr getelementptr (i8, ptr inttoptr (i32 -29360128 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824))), ptr getelementptr (i8, ptr inttoptr (i32 -29097984 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424)))) to i32))
  %37 = load i32, ptr select (i1 select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), i1 true, i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1880096768)), i1 true)), ptr select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), ptr getelementptr (i8, ptr inttoptr (i32 -31457280 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736)), ptr getelementptr (i8, ptr inttoptr (i32 -33554432 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192))), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342455808)), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1074003968)), ptr null, ptr getelementptr (i8, ptr inttoptr (i32 -29360128 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824))), ptr getelementptr (i8, ptr inttoptr (i32 -29097984 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424)))), align 4
  %shl.i50 = shl nuw i32 1, %36
  %and.i51 = and i32 %37, %shl.i50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i51)
  %tobool.not.i52 = icmp eq i32 %and.i51, 0
  br i1 %tobool.not.i52, label %do.body19.i, label %tegra_pm_clear_cpu_in_lp2.exit, !prof !50

do.body19.i:                                      ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-tegra/pm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 120, 0\0A.popsection", ""() #8, !srcloc !51
  unreachable

tegra_pm_clear_cpu_in_lp2.exit:                   ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #10
  %neg.i = xor i32 %shl.i50, -1
  %and26.i = and i32 %37, %neg.i
  call void @__asan_store4_noabort(i32 ptrtoint (ptr select (i1 select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), i1 true, i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1880096768)), i1 true)), ptr select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), ptr getelementptr (i8, ptr inttoptr (i32 -31457280 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736)), ptr getelementptr (i8, ptr inttoptr (i32 -33554432 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192))), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342455808)), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1074003968)), ptr null, ptr getelementptr (i8, ptr inttoptr (i32 -29360128 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824))), ptr getelementptr (i8, ptr inttoptr (i32 -29097984 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424)))) to i32))
  store i32 %and26.i, ptr select (i1 select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), i1 true, i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1880096768)), i1 true)), ptr select (i1 xor (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1611661312)), i1 true), ptr getelementptr (i8, ptr inttoptr (i32 -31457280 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1610612736)), ptr getelementptr (i8, ptr inttoptr (i32 -33554432 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1879048192))), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342455808)), ptr select (i1 select (i1 icmp ult (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824), i1 true, i1 icmp uge (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1074003968)), ptr null, ptr getelementptr (i8, ptr inttoptr (i32 -29360128 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1073741824))), ptr getelementptr (i8, ptr inttoptr (i32 -29097984 to ptr), i32 sub (i32 add (i32 sub (i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 2) to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824), i32 1342439424)))), align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @tegra_lp2_lock) #8
  br label %sw.epilog33

sw.epilog33:                                      ; preds = %tegra_pm_clear_cpu_in_lp2.exit, %sw.bb30, %outer_resume.exit.sw.epilog33_crit_edge
  %38 = tail call i32 @llvm.read_register.i32(metadata !40) #8
  %and.i.i53 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i53 to ptr
  %cpu1.i54 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %cpu1.i54 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cpu1.i54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp.not.i55 = icmp eq i32 %41, 0
  br i1 %cmp.not.i55, label %do.end8.i58, label %do.body3.i56, !prof !52

do.body3.i56:                                     ; preds = %sw.epilog33
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-tegra/pm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #8, !srcloc !55
  unreachable

do.end8.i58:                                      ; preds = %sw.epilog33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__cpu_logical_map to i32))
  %42 = load i32, ptr @__cpu_logical_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tegra_cpu_car_ops to i32))
  %43 = load ptr, ptr @tegra_cpu_car_ops, align 4
  %resume.i.i = getelementptr inbounds %struct.tegra_cpu_car_ops, ptr %43, i32 0, i32 7
  %44 = ptrtoint ptr %resume.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %resume.i.i, align 4
  %tobool.not.i.i57 = icmp eq ptr %45, null
  br i1 %tobool.not.i.i57, label %do.end.i.i59, label %if.end23.critedge.i.i60, !prof !50

do.end.i.i59:                                     ; preds = %do.end8.i58
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 128, i32 noundef 9, ptr noundef null) #8
  br label %restore_cpu_complex.exit

if.end23.critedge.i.i60:                          ; preds = %do.end8.i58
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %45() #8
  br label %restore_cpu_complex.exit

restore_cpu_complex.exit:                         ; preds = %if.end23.critedge.i.i60, %do.end.i.i59
  tail call void @flowctrl_cpu_suspend_exit(i32 noundef %42) #8
  tail call void asm sideeffect "cpsie f\09@ __stf", "~{memory},~{cc}"() #8, !srcloc !59
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @firmware_ops to i32))
  %46 = load ptr, ptr @firmware_ops, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %tobool34.not = icmp eq ptr %48, null
  br i1 %tobool34.not, label %restore_cpu_complex.exit.cleanup_crit_edge, label %cond.true

restore_cpu_complex.exit.cleanup_crit_edge:       ; preds = %restore_cpu_complex.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cond.true:                                        ; preds = %restore_cpu_complex.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call36 = tail call i32 %48(i32 noundef 5) #8
  br label %cleanup

cleanup:                                          ; preds = %cond.true, %restore_cpu_complex.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %restore_cpu_complex.exit.cleanup_crit_edge ], [ 0, %cond.true ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !28, !29, !30, !32, !34, !36, !38}
!llvm.named.register.sp = !{!40}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-tegra/pm.c", i32 417, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @tegra_pm_init_suspend._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @tegra_pm_init_suspend._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @tegra_lp1_iram, !7, !"tegra_lp1_iram", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-tegra/pm.c", i32 43, i32 23}
!8 = !{ptr @tegra_tear_down_cpu, !9, !"tegra_tear_down_cpu", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-tegra/pm.c", i32 44, i32 8}
!10 = !{ptr @tegra_sleep_core_finish, !11, !"tegra_sleep_core_finish", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-tegra/pm.c", i32 45, i32 8}
!12 = !{ptr @tegra_sleep_func, !13, !"tegra_sleep_func", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-tegra/pm.c", i32 46, i32 14}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-tegra/pm.c", i32 40, i32 8}
!16 = !{ptr @tegra_lp2_lock, !15, !"tegra_lp2_lock", i1 false, i1 false}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../include/linux/clk/tegra.h", i32 120, i32 6}
!19 = !{ptr @iram_save_size, !20, !"iram_save_size", i1 false, i1 false}
!20 = !{!"../arch/arm/mach-tegra/pm.c", i32 41, i32 12}
!21 = !{ptr @iram_save_addr, !22, !"iram_save_addr", i1 false, i1 false}
!22 = !{!"../arch/arm/mach-tegra/pm.c", i32 42, i32 14}
!23 = !{ptr @tegra_suspend_ops, !24, !"tegra_suspend_ops", i1 false, i1 false}
!24 = !{!"../arch/arm/mach-tegra/pm.c", i32 401, i32 42}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../arch/arm/mach-tegra/pm.c", i32 354, i32 2}
!27 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @tegra_suspend_enter._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @tegra_suspend_enter._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../arch/arm/mach-tegra/pm.c", i32 340, i32 25}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../arch/arm/mach-tegra/pm.c", i32 341, i32 24}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../arch/arm/mach-tegra/pm.c", i32 342, i32 24}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../arch/arm/mach-tegra/pm.c", i32 343, i32 24}
!38 = !{ptr @lp_state, !39, !"lp_state", i1 false, i1 false}
!39 = !{!"../arch/arm/mach-tegra/pm.c", i32 339, i32 20}
!40 = !{!"sp"}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{!"branch_weights", i32 1, i32 2000}
!51 = !{i64 2155056078, i64 2155056567, i64 2155056115, i64 2155056171, i64 2155056205, i64 2155056229, i64 2155056270, i64 2155056291, i64 2155056319, i64 2155056353}
!52 = !{!"branch_weights", i32 2000, i32 1}
!53 = !{i64 2155062046, i64 2155062535, i64 2155062083, i64 2155062139, i64 2155062173, i64 2155062197, i64 2155062238, i64 2155062259, i64 2155062287, i64 2155062321}
!54 = !{i64 2155050165, i64 2155050654, i64 2155050202, i64 2155050258, i64 2155050292, i64 2155050316, i64 2155050357, i64 2155050378, i64 2155050406, i64 2155050440}
!55 = !{i64 2155048478, i64 2155048966, i64 2155048515, i64 2155048571, i64 2155048605, i64 2155048629, i64 2155048670, i64 2155048691, i64 2155048719, i64 2155048753}
!56 = !{i64 2155064239, i64 2155064728, i64 2155064276, i64 2155064332, i64 2155064366, i64 2155064390, i64 2155064431, i64 2155064452, i64 2155064480, i64 2155064514}
!57 = !{i64 2155066231, i64 2155066720, i64 2155066268, i64 2155066324, i64 2155066358, i64 2155066382, i64 2155066423, i64 2155066444, i64 2155066472, i64 2155066506}
!58 = !{i64 2155088817}
!59 = !{i64 2155089054}
