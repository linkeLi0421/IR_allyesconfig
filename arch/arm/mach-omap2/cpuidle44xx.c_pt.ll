; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/cpuidle44xx.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/cpuidle44xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.idle_statedata = type { i32, i32, i32, i32 }
%struct.cpuidle_driver = type { ptr, ptr, i8, [10 x %struct.cpuidle_state], i32, i32, ptr, ptr }
%struct.cpuidle_state = type { [16 x i8], [32 x i8], i64, i64, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.cpuidle_device = type { i8, i32, i64, i32, i64, i64, i64, [10 x %struct.cpuidle_state_usage], [10 x ptr], ptr, ptr, %struct.list_head, %struct.cpumask, ptr }
%struct.cpuidle_state_usage = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.list_head = type { ptr, ptr }

@omap5_idle_data = internal global { [2 x %struct.idle_statedata], [32 x i8] } { [2 x %struct.idle_statedata] [%struct.idle_statedata { i32 3, i32 3, i32 3, i32 0 }, %struct.idle_statedata { i32 1, i32 1, i32 1, i32 0 }], [32 x i8] zeroinitializer }, align 32
@state_ptr = internal global { ptr, [28 x i8] } { ptr @omap4_idle_data, [28 x i8] zeroinitializer }, align 32
@omap4_idle_data = internal global { [3 x %struct.idle_statedata], [48 x i8] } { [3 x %struct.idle_statedata] [%struct.idle_statedata { i32 3, i32 1, i32 3, i32 0 }, %struct.idle_statedata { i32 0, i32 1, i32 1, i32 0 }, %struct.idle_statedata { i32 0, i32 0, i32 1, i32 0 }], [48 x i8] zeroinitializer }, align 32
@omap4_idle_driver = internal global { %struct.cpuidle_driver, [224 x i8] } { %struct.cpuidle_driver { ptr @.str.8, ptr null, i8 0, [10 x %struct.cpuidle_state] [%struct.cpuidle_state { [16 x i8] c"C1\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"CPUx ON, MPUSS ON\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 0, i32 4, i32 0, i32 5, ptr @omap_enter_idle_simple, ptr null, ptr null }, %struct.cpuidle_state { [16 x i8] c"C2\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"CPUx OFF, MPUSS CSWR\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 2, i32 768, i32 0, i32 960, ptr @omap_enter_idle_coupled, ptr null, ptr null }, %struct.cpuidle_state { [16 x i8] c"C3\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"CPUx OFF, MPUSS OSWR\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 2, i32 978, i32 0, i32 1100, ptr @omap_enter_idle_coupled, ptr null, ptr null }, %struct.cpuidle_state zeroinitializer, %struct.cpuidle_state zeroinitializer, %struct.cpuidle_state zeroinitializer, %struct.cpuidle_state zeroinitializer, %struct.cpuidle_state zeroinitializer, %struct.cpuidle_state zeroinitializer, %struct.cpuidle_state zeroinitializer], i32 3, i32 0, ptr null, ptr null }, [224 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mpu_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@mpu_pd = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cpu0_pwrdm\00", [21 x i8] zeroinitializer }, align 32
@cpu_pd.0 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@cpu_pd.1 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cpu1_pwrdm\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mpu0_clkdm\00", [21 x i8] zeroinitializer }, align 32
@cpu_clkdm.0 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@cpu_clkdm.1 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mpu1_clkdm\00", [21 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"omap5_idle\00", [21 x i8] zeroinitializer }, align 32
@omap5_idle_driver = internal global { { ptr, ptr, i8, [7 x i8], <{ %struct.cpuidle_state, %struct.cpuidle_state, [8 x %struct.cpuidle_state] }>, i32, i32, ptr, ptr }, [224 x i8] } { { ptr, ptr, i8, [7 x i8], <{ %struct.cpuidle_state, %struct.cpuidle_state, [8 x %struct.cpuidle_state] }>, i32, i32, ptr, ptr } { ptr @.str.5, ptr null, i8 0, [7 x i8] undef, <{ %struct.cpuidle_state, %struct.cpuidle_state, [8 x %struct.cpuidle_state] }> <{ %struct.cpuidle_state { [16 x i8] c"C1\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"CPUx WFI, MPUSS ON\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 0, i32 4, i32 0, i32 5, ptr @omap_enter_idle_simple, ptr null, ptr null }, %struct.cpuidle_state { [16 x i8] c"C2\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"CPUx CSWR, MPUSS CSWR\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 4, i32 108, i32 0, i32 100, ptr @omap_enter_idle_smp, ptr null, ptr null }, [8 x %struct.cpuidle_state] zeroinitializer }>, i32 2, i32 0, ptr null, ptr null }, [224 x i8] zeroinitializer }, align 32
@mpu_lock = internal global { %struct.raw_spinlock, [52 x i8] } { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mpu_lock\00", [23 x i8] zeroinitializer }, align 32
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"omap4_idle\00", [21 x i8] zeroinitializer }, align 32
@cpu_done = internal global { [2 x i8], [30 x i8] } zeroinitializer, align 32
@pm44xx_errata = external dso_local local_unnamed_addr global i16, align 2
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@abort_barrier = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant [16 x i8] c"omap5_idle_data\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 52, i32 30 }
@___asan_gen_.13 = private unnamed_addr constant [10 x i8] c"state_ptr\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 70, i32 31 }
@___asan_gen_.16 = private unnamed_addr constant [16 x i8] c"omap4_idle_data\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 34, i32 30 }
@___asan_gen_.19 = private unnamed_addr constant [18 x i8] c"omap4_idle_driver\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 234, i32 30 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 315, i32 24 }
@___asan_gen_.25 = private unnamed_addr constant [7 x i8] c"mpu_pd\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 65, i32 28 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 316, i32 27 }
@___asan_gen_.31 = private unnamed_addr constant [9 x i8] c"cpu_pd.0\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [9 x i8] c"cpu_pd.1\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 317, i32 27 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 321, i32 30 }
@___asan_gen_.39 = private unnamed_addr constant [12 x i8] c"cpu_clkdm.0\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [12 x i8] c"cpu_clkdm.1\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 322, i32 30 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 270, i32 13 }
@___asan_gen_.47 = private unnamed_addr constant [18 x i8] c"omap5_idle_driver\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 269, i32 30 }
@___asan_gen_.50 = private unnamed_addr constant [9 x i8] c"mpu_lock\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 71, i32 8 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 235, i32 13 }
@___asan_gen_.59 = private unnamed_addr constant [9 x i8] c"cpu_done\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 69, i32 13 }
@___asan_gen_.62 = private unnamed_addr constant [14 x i8] c"abort_barrier\00", align 1
@___asan_gen_.63 = private constant [37 x i8] c"../arch/arm/mach-omap2/cpuidle44xx.c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 68, i32 17 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 108, i32 2 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @omap5_idle_data, ptr @state_ptr, ptr @omap4_idle_data, ptr @omap4_idle_driver, ptr @.str, ptr @mpu_pd, ptr @.str.1, ptr @cpu_pd.0, ptr @cpu_pd.1, ptr @.str.2, ptr @.str.3, ptr @cpu_clkdm.0, ptr @cpu_clkdm.1, ptr @.str.4, ptr @.str.5, ptr @omap5_idle_driver, ptr @mpu_lock, ptr @.str.7, ptr @.str.8, ptr @cpu_done, ptr @abort_barrier, ptr @.str.9], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap5_idle_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @state_ptr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_idle_data to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_idle_driver to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu_pd to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu_pd.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu_pd.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu_clkdm.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu_clkdm.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap5_idle_driver to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu_done to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abort_barrier to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap4_idle_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @omap_rev() #3
  %and.i = and i32 %call.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 84, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 84
  %omap4_idle_data.omap5_idle_data = select i1 %cmp.i.not, ptr @omap5_idle_data, ptr @omap4_idle_data
  %omap4_idle_driver.omap5_idle_driver = select i1 %cmp.i.not, ptr @omap5_idle_driver, ptr @omap4_idle_driver
  store ptr %omap4_idle_data.omap5_idle_data, ptr @state_ptr, align 4
  %call1 = tail call ptr @pwrdm_lookup(ptr noundef nonnull @.str) #3
  store ptr %call1, ptr @mpu_pd, align 4
  %call2 = tail call ptr @pwrdm_lookup(ptr noundef nonnull @.str.1) #3
  store ptr %call2, ptr @cpu_pd.0, align 4
  %call3 = tail call ptr @pwrdm_lookup(ptr noundef nonnull @.str.2) #3
  store ptr %call3, ptr @cpu_pd.1, align 4
  %0 = load ptr, ptr @mpu_pd, align 4
  %tobool4.not = icmp eq ptr %0, null
  br i1 %tobool4.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr @cpu_pd.0, align 4
  %tobool5.not = icmp eq ptr %1, null
  %tobool7.not = icmp eq ptr %call3, null
  %or.cond = select i1 %tobool5.not, i1 true, i1 %tobool7.not
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end9

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  %call10 = tail call ptr @clkdm_lookup(ptr noundef nonnull @.str.3) #3
  store ptr %call10, ptr @cpu_clkdm.0, align 4
  %call11 = tail call ptr @clkdm_lookup(ptr noundef nonnull @.str.4) #3
  store ptr %call11, ptr @cpu_clkdm.1, align 4
  %2 = load ptr, ptr @cpu_clkdm.0, align 4
  %tobool12.not = icmp eq ptr %2, null
  %tobool14.not = icmp eq ptr %call11, null
  %or.cond18 = select i1 %tobool12.not, i1 true, i1 %tobool14.not
  br i1 %or.cond18, label %if.end9.cleanup_crit_edge, label %if.end16

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  %call17 = tail call i32 @cpuidle_register(ptr noundef nonnull %omap4_idle_driver.omap5_idle_driver, ptr noundef nonnull @__cpu_online_mask) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end9.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %if.end16 ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pwrdm_lookup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clkdm_lookup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpuidle_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_enter_idle_simple(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %drv, i32 noundef returned %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @omap_do_wfi() #3
  ret i32 %index
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_enter_idle_smp(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %drv, i32 noundef returned %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @state_ptr, align 4
  %add.ptr = getelementptr %struct.idle_statedata, ptr %0, i32 %index
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @mpu_lock) #3
  %mpu_state_vote = getelementptr %struct.idle_statedata, ptr %0, i32 %index, i32 3
  %1 = ptrtoint ptr %mpu_state_vote to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mpu_state_vote, align 4
  %inc = add i32 %2, 1
  store i32 %inc, ptr %mpu_state_vote, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %3 = load volatile i32, ptr @__num_online_cpus, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %3)
  %cmp3 = icmp eq i32 %inc, %3
  br i1 %cmp3, label %if.then, label %entry.do.body9_crit_edge

entry.do.body9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body9

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %4 = load ptr, ptr @mpu_pd, align 4
  %mpu_logic_state = getelementptr %struct.idle_statedata, ptr %0, i32 %index, i32 1
  %5 = ptrtoint ptr %mpu_logic_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mpu_logic_state, align 4
  %conv5 = trunc i32 %6 to i8
  %call6 = tail call i32 @pwrdm_set_logic_retst(ptr noundef %4, i8 noundef zeroext %conv5) #3
  %7 = load ptr, ptr @mpu_pd, align 4
  %mpu_state = getelementptr %struct.idle_statedata, ptr %0, i32 %index, i32 2
  %8 = ptrtoint ptr %mpu_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mpu_state, align 4
  %conv7 = trunc i32 %9 to i8
  %call8 = tail call i32 @omap_set_pwrdm_state(ptr noundef %7, i8 noundef zeroext %conv7) #3
  br label %do.body9

do.body9:                                         ; preds = %if.then, %entry.do.body9_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @mpu_lock, i32 noundef %call) #3
  %cpu = getelementptr inbounds %struct.cpuidle_device, ptr %dev, i32 0, i32 1
  %10 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu, align 4
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr, align 4
  %call17 = tail call i32 @omap4_enter_lowpower(i32 noundef %11, i32 noundef %13) #3
  %call24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @mpu_lock) #3
  %14 = ptrtoint ptr %mpu_state_vote to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mpu_state_vote, align 4
  %call.i.i.i51 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %16 = load volatile i32, ptr @__num_online_cpus, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %16)
  %cmp29 = icmp eq i32 %15, %16
  br i1 %cmp29, label %if.then31, label %do.body9.if.end33_crit_edge

do.body9.if.end33_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end33

if.then31:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #5
  %17 = load ptr, ptr @mpu_pd, align 4
  %call32 = tail call i32 @omap_set_pwrdm_state(ptr noundef %17, i8 noundef zeroext 3) #3
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %do.body9.if.end33_crit_edge
  %18 = ptrtoint ptr %mpu_state_vote to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mpu_state_vote, align 4
  %dec = add i32 %19, -1
  store i32 %dec, ptr %mpu_state_vote, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @mpu_lock, i32 noundef %call24) #3
  ret i32 %index
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_do_wfi() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_set_logic_retst(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_set_pwrdm_state(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4_enter_lowpower(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_enter_idle_coupled(ptr noundef %dev, ptr nocapture noundef readnone %drv, i32 noundef %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @state_ptr, align 4
  %add.ptr = getelementptr %struct.idle_statedata, ptr %0, i32 %index
  %cpu = getelementptr inbounds %struct.cpuidle_device, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cpu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11

land.lhs.true:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i.i.i = icmp ult i32 %3, 2
  br i1 %cmp.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.cpumask_test_cpu.exit_crit_edge

land.lhs.true.cpumask_test_cpu.exit_crit_edge:    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cpumask_test_cpu.exit

land.rhs.i.i.i:                                   ; preds = %land.lhs.true
  %.b1.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !49

land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge:   ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cpumask_test_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #3
  br label %cpumask_test_cpu.exit

cpumask_test_cpu.exit:                            ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, %land.lhs.true.cpumask_test_cpu.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__cpu_online_mask to i32))
  %4 = load volatile i32, ptr @__cpu_online_mask, align 4
  %5 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %cpumask_test_cpu.exit.if.end11_crit_edge, label %cpumask_test_cpu.exit.while.cond_crit_edge

cpumask_test_cpu.exit.while.cond_crit_edge:       ; preds = %cpumask_test_cpu.exit
  br label %while.cond

cpumask_test_cpu.exit.if.end11_crit_edge:         ; preds = %cpumask_test_cpu.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11

while.cond:                                       ; preds = %do.end.while.cond_crit_edge, %cpumask_test_cpu.exit.while.cond_crit_edge
  %6 = load ptr, ptr @cpu_pd.1, align 4
  %call1 = tail call i32 @pwrdm_read_pwrst(ptr noundef %6) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %while.cond.if.end11_crit_edge, label %do.end

while.cond.if.end11_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11

do.end:                                           ; preds = %while.cond
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !50
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #3, !srcloc !51
  %7 = load i8, ptr getelementptr inbounds ([2 x i8], ptr @cpu_done, i32 0, i32 1), align 1, !range !52
  %tobool9.not = icmp eq i8 %7, 0
  br i1 %tobool9.not, label %do.end.while.cond_crit_edge, label %do.end.fail_crit_edge

do.end.fail_crit_edge:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %fail

do.end.while.cond_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond

if.end11:                                         ; preds = %while.cond.if.end11_crit_edge, %cpumask_test_cpu.exit.if.end11_crit_edge, %entry.if.end11_crit_edge
  %mpu_state = getelementptr %struct.idle_statedata, ptr %0, i32 %index, i32 2
  %8 = ptrtoint ptr %mpu_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mpu_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp12 = icmp eq i32 %9, 1
  br i1 %cmp12, label %land.rhs, label %if.end11.land.end_crit_edge

if.end11.land.end_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.end

land.rhs:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  %mpu_logic_state = getelementptr %struct.idle_statedata, ptr %0, i32 %index, i32 1
  %10 = ptrtoint ptr %mpu_logic_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mpu_logic_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp13 = icmp eq i32 %11, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end11.land.end_crit_edge
  %12 = phi i1 [ false, %if.end11.land.end_crit_edge ], [ %cmp13, %land.rhs ]
  tail call void @rcu_irq_enter_irqson() #3
  tail call void @tick_broadcast_control(i32 noundef 1) #3
  tail call void @rcu_irq_exit_irqson() #3
  tail call void @rcu_irq_enter_irqson() #3
  %call.i = tail call i32 @tick_broadcast_oneshot_control(i32 noundef 1) #3
  tail call void @rcu_irq_exit_irqson() #3
  %call27 = tail call i32 @cpu_pm_enter() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %land.end.do.body131_crit_edge

land.end.do.body131_crit_edge:                    ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body131

if.end30:                                         ; preds = %land.end
  %13 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp32 = icmp eq i32 %14, 0
  br i1 %cmp32, label %if.then33, label %if.end30.if.end65_crit_edge

if.end30.if.end65_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end65

if.then33:                                        ; preds = %if.end30
  %15 = load ptr, ptr @mpu_pd, align 4
  %mpu_logic_state34 = getelementptr %struct.idle_statedata, ptr %0, i32 %index, i32 1
  %16 = ptrtoint ptr %mpu_logic_state34 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mpu_logic_state34, align 4
  %conv = trunc i32 %17 to i8
  %call35 = tail call i32 @pwrdm_set_logic_retst(ptr noundef %15, i8 noundef zeroext %conv) #3
  tail call void @rcu_irq_enter_irqson() #3
  %18 = load ptr, ptr @mpu_pd, align 4
  %19 = ptrtoint ptr %mpu_state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mpu_state, align 4
  %conv39 = trunc i32 %20 to i8
  %call40 = tail call i32 @omap_set_pwrdm_state(ptr noundef %18, i8 noundef zeroext %conv39) #3
  tail call void @rcu_irq_exit_irqson() #3
  br i1 %12, label %if.then46, label %if.then33.if.end65_crit_edge

if.then33.if.end65_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end65

if.then46:                                        ; preds = %if.then33
  %call47 = tail call i32 @cpu_cluster_pm_enter() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.then46.if.end65_crit_edge, label %if.then49

if.then46.if.end65_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end65

if.then49:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #5
  %21 = load ptr, ptr @state_ptr, align 4
  %22 = load ptr, ptr @mpu_pd, align 4
  %mpu_logic_state51 = getelementptr inbounds %struct.idle_statedata, ptr %21, i32 0, i32 1
  %23 = ptrtoint ptr %mpu_logic_state51 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mpu_logic_state51, align 4
  %conv52 = trunc i32 %24 to i8
  %call53 = tail call i32 @pwrdm_set_logic_retst(ptr noundef %22, i8 noundef zeroext %conv52) #3
  tail call void @rcu_irq_enter_irqson() #3
  %25 = load ptr, ptr @mpu_pd, align 4
  %mpu_state56 = getelementptr inbounds %struct.idle_statedata, ptr %21, i32 0, i32 2
  %26 = ptrtoint ptr %mpu_state56 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mpu_state56, align 4
  %conv57 = trunc i32 %27 to i8
  %call58 = tail call i32 @omap_set_pwrdm_state(ptr noundef %25, i8 noundef zeroext %conv57) #3
  tail call void @rcu_irq_exit_irqson() #3
  br label %if.end65

if.end65:                                         ; preds = %if.then49, %if.then46.if.end65_crit_edge, %if.then33.if.end65_crit_edge, %if.end30.if.end65_crit_edge
  %index.addr.0 = phi i32 [ 0, %if.then49 ], [ %index, %if.then46.if.end65_crit_edge ], [ %index, %if.then33.if.end65_crit_edge ], [ %index, %if.end30.if.end65_crit_edge ]
  %cx.0 = phi ptr [ %21, %if.then49 ], [ %add.ptr, %if.then46.if.end65_crit_edge ], [ %add.ptr, %if.then33.if.end65_crit_edge ], [ %add.ptr, %if.end30.if.end65_crit_edge ]
  %mpuss_can_lose_context.0.shrunk = phi i1 [ false, %if.then49 ], [ true, %if.then46.if.end65_crit_edge ], [ false, %if.then33.if.end65_crit_edge ], [ %12, %if.end30.if.end65_crit_edge ]
  %28 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu, align 4
  %30 = ptrtoint ptr %cx.0 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cx.0, align 4
  %call67 = tail call i32 @omap4_enter_lowpower(i32 noundef %29, i32 noundef %31) #3
  %32 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [2 x i8], ptr @cpu_done, i32 0, i32 %33
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp70 = icmp eq i32 %33, 0
  br i1 %cmp70, label %land.lhs.true72, label %if.end65.if.end121_crit_edge

if.end65.if.end121_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end121

land.lhs.true72:                                  ; preds = %if.end65
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %35 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %cmp.i.i.i162 = icmp ult i32 %35, 2
  br i1 %cmp.i.i.i162, label %land.rhs.i.i.i164, label %land.lhs.true72.cpumask_test_cpu.exit168_crit_edge

land.lhs.true72.cpumask_test_cpu.exit168_crit_edge: ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #5
  br label %cpumask_test_cpu.exit168

land.rhs.i.i.i164:                                ; preds = %land.lhs.true72
  %.b1.i.i.i163 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b1.i.i.i163, label %land.rhs.i.i.i164.cpumask_test_cpu.exit168_crit_edge, label %if.then.i.i.i165, !prof !49

land.rhs.i.i.i164.cpumask_test_cpu.exit168_crit_edge: ; preds = %land.rhs.i.i.i164
  call void @__sanitizer_cov_trace_pc() #5
  br label %cpumask_test_cpu.exit168

if.then.i.i.i165:                                 ; preds = %land.rhs.i.i.i164
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 108, i32 noundef 9, ptr noundef null) #3
  br label %cpumask_test_cpu.exit168

cpumask_test_cpu.exit168:                         ; preds = %if.then.i.i.i165, %land.rhs.i.i.i164.cpumask_test_cpu.exit168_crit_edge, %land.lhs.true72.cpumask_test_cpu.exit168_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__cpu_online_mask to i32))
  %36 = load volatile i32, ptr @__cpu_online_mask, align 4
  %37 = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool74.not = icmp eq i32 %37, 0
  br i1 %tobool74.not, label %cpumask_test_cpu.exit168.if.end121_crit_edge, label %if.then75

cpumask_test_cpu.exit168.if.end121_crit_edge:     ; preds = %cpumask_test_cpu.exit168
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end121

if.then75:                                        ; preds = %cpumask_test_cpu.exit168
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @pm44xx_errata to i32))
  %38 = load i16, ptr @pm44xx_errata, align 2
  %39 = and i16 %38, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool77.not = icmp eq i16 %39, 0
  %mpuss_can_lose_context.0.shrunk.not = xor i1 %mpuss_can_lose_context.0.shrunk, true
  %brmerge = select i1 %tobool77.not, i1 true, i1 %mpuss_can_lose_context.0.shrunk.not
  br i1 %brmerge, label %if.then75.do.body82_crit_edge, label %if.then80

if.then75.do.body82_crit_edge:                    ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body82

if.then80:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @gic_dist_disable() #3
  br label %do.body82

do.body82:                                        ; preds = %if.then80, %if.then75.do.body82_crit_edge
  tail call void @rcu_irq_enter_irqson() #3
  %40 = load ptr, ptr @cpu_clkdm.1, align 4
  tail call void @clkdm_deny_idle(ptr noundef %40) #3
  tail call void @rcu_irq_exit_irqson() #3
  tail call void @rcu_irq_enter_irqson() #3
  %41 = load ptr, ptr @cpu_pd.1, align 4
  %call90 = tail call i32 @omap_set_pwrdm_state(ptr noundef %41, i8 noundef zeroext 3) #3
  tail call void @rcu_irq_exit_irqson() #3
  tail call void @rcu_irq_enter_irqson() #3
  %42 = load ptr, ptr @cpu_clkdm.1, align 4
  tail call void @clkdm_allow_idle(ptr noundef %42) #3
  tail call void @rcu_irq_exit_irqson() #3
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @pm44xx_errata to i32))
  %43 = load i16, ptr @pm44xx_errata, align 2
  %44 = and i16 %43, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool103.not = icmp eq i16 %44, 0
  %brmerge159 = select i1 %tobool103.not, i1 true, i1 %mpuss_can_lose_context.0.shrunk.not
  br i1 %brmerge159, label %do.body82.if.end121_crit_edge, label %while.cond107.preheader

do.body82.if.end121_crit_edge:                    ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end121

while.cond107.preheader:                          ; preds = %do.body82
  %call108170 = tail call zeroext i1 @gic_dist_disabled() #3
  br i1 %call108170, label %while.cond107.preheader.while.body109_crit_edge, label %while.cond107.preheader.while.end119_crit_edge

while.cond107.preheader.while.end119_crit_edge:   ; preds = %while.cond107.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end119

while.cond107.preheader.while.body109_crit_edge:  ; preds = %while.cond107.preheader
  br label %while.body109

while.body109:                                    ; preds = %while.body109.while.body109_crit_edge, %while.cond107.preheader.while.body109_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !53
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #3, !srcloc !54
  %call108 = tail call zeroext i1 @gic_dist_disabled() #3
  br i1 %call108, label %while.body109.while.body109_crit_edge, label %while.body109.while.end119_crit_edge

while.body109.while.end119_crit_edge:             ; preds = %while.body109
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end119

while.body109.while.body109_crit_edge:            ; preds = %while.body109
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body109

while.end119:                                     ; preds = %while.body109.while.end119_crit_edge, %while.cond107.preheader.while.end119_crit_edge
  tail call void @gic_timer_retrigger() #3
  br label %if.end121

if.end121:                                        ; preds = %while.end119, %do.body82.if.end121_crit_edge, %cpumask_test_cpu.exit168.if.end121_crit_edge, %if.end65.if.end121_crit_edge
  %46 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cpu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp123 = icmp ne i32 %47, 0
  %mpuss_can_lose_context.0.shrunk.not160 = xor i1 %mpuss_can_lose_context.0.shrunk, true
  %brmerge161 = select i1 %cmp123, i1 true, i1 %mpuss_can_lose_context.0.shrunk.not160
  br i1 %brmerge161, label %if.end121.if.end129_crit_edge, label %if.then127

if.end121.if.end129_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end129

if.then127:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #5
  %call128 = tail call i32 @cpu_cluster_pm_exit() #3
  br label %if.end129

if.end129:                                        ; preds = %if.then127, %if.end121.if.end129_crit_edge
  %call130 = tail call i32 @cpu_pm_exit() #3
  br label %do.body131

do.body131:                                       ; preds = %if.end129, %land.end.do.body131_crit_edge
  %index.addr.1 = phi i32 [ %index, %land.end.do.body131_crit_edge ], [ %index.addr.0, %if.end129 ]
  tail call void @rcu_irq_enter_irqson() #3
  %call.i169 = tail call i32 @tick_broadcast_oneshot_control(i32 noundef 0) #3
  tail call void @rcu_irq_exit_irqson() #3
  br label %fail

fail:                                             ; preds = %do.body131, %do.end.fail_crit_edge
  %index.addr.2 = phi i32 [ %index.addr.1, %do.body131 ], [ %index, %do.end.fail_crit_edge ]
  tail call void @cpuidle_coupled_parallel_barrier(ptr noundef %dev, ptr noundef nonnull @abort_barrier) #3
  %48 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cpu, align 4
  %arrayidx138 = getelementptr [2 x i8], ptr @cpu_done, i32 0, i32 %49
  %50 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %arrayidx138, align 1
  ret i32 %index.addr.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_read_pwrst(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_irq_enter_irqson() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_irq_exit_irqson() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_enter() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_cluster_pm_enter() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gic_dist_disable() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clkdm_deny_idle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clkdm_allow_idle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @gic_dist_disabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gic_timer_retrigger() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_cluster_pm_exit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_exit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpuidle_coupled_parallel_barrier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_broadcast_control(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tick_broadcast_oneshot_control(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !29, !31, !33, !35, !36, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/cpuidle44xx.c", i32 315, i32 24}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-omap2/cpuidle44xx.c", i32 316, i32 27}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-omap2/cpuidle44xx.c", i32 317, i32 27}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-omap2/cpuidle44xx.c", i32 321, i32 30}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-omap2/cpuidle44xx.c", i32 322, i32 30}
!10 = !{ptr @mpu_pd, !11, !"mpu_pd", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-omap2/cpuidle44xx.c", i32 65, i32 28}
!12 = distinct !{null, !13, !"cpu_pd", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-omap2/cpuidle44xx.c", i32 65, i32 37}
!14 = distinct !{null, !15, !"cpu_clkdm", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-omap2/cpuidle44xx.c", i32 66, i32 28}
!16 = !{ptr @omap5_idle_data, !17, !"omap5_idle_data", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-omap2/cpuidle44xx.c", i32 52, i32 30}
!18 = !{ptr @state_ptr, !19, !"state_ptr", i1 false, i1 false}
!19 = !{!"../arch/arm/mach-omap2/cpuidle44xx.c", i32 70, i32 31}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../arch/arm/mach-omap2/cpuidle44xx.c", i32 270, i32 13}
!22 = !{ptr @omap5_idle_driver, !23, !"omap5_idle_driver", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-omap2/cpuidle44xx.c", i32 269, i32 30}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../arch/arm/mach-omap2/cpuidle44xx.c", i32 71, i32 8}
!26 = !{ptr @mpu_lock, !25, !"mpu_lock", i1 false, i1 false}
!27 = !{ptr @omap4_idle_data, !28, !"omap4_idle_data", i1 false, i1 false}
!28 = !{!"../arch/arm/mach-omap2/cpuidle44xx.c", i32 34, i32 30}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../arch/arm/mach-omap2/cpuidle44xx.c", i32 235, i32 13}
!31 = !{ptr @omap4_idle_driver, !32, !"omap4_idle_driver", i1 false, i1 false}
!32 = !{!"../arch/arm/mach-omap2/cpuidle44xx.c", i32 234, i32 30}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!35 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @cpu_done, !37, !"cpu_done", i1 false, i1 false}
!37 = !{!"../arch/arm/mach-omap2/cpuidle44xx.c", i32 69, i32 13}
!38 = !{ptr @abort_barrier, !39, !"abort_barrier", i1 false, i1 false}
!39 = !{!"../arch/arm/mach-omap2/cpuidle44xx.c", i32 68, i32 17}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{!"branch_weights", i32 2000, i32 1}
!50 = !{i64 2155911837}
!51 = !{i64 2155911679}
!52 = !{i8 0, i8 2}
!53 = !{i64 2155913721}
!54 = !{i64 2155913563}
