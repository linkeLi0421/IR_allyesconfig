; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/cpuidle34xx.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/cpuidle34xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpuidle_driver = type { ptr, ptr, i8, [10 x %struct.cpuidle_state], i32, i32, ptr, ptr }
%struct.cpuidle_state = type { [16 x i8], [32 x i8], i64, i64, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.omap3_idle_statedata = type { i8, i8, i8, i8 }
%struct.powerdomain = type { ptr, %union.anon, i16, i8, i8, i8, i8, [5 x i8], [5 x i8], i8, [11 x ptr], %struct.list_head, %struct.list_head, i32, [4 x i32], i32, [5 x i32], %struct.spinlock, i32, i8, i8, i32, [5 x i32], [5 x i32], [5 x i32], [5 x i32], i64, [4 x i64], i32 }
%union.anon = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mpu_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@mpu_pd = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"core_pwrdm\00", [21 x i8] zeroinitializer }, align 32
@core_pd = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"per_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@per_pd = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cam_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@cam_pd = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@omap3430_idle_driver = internal global { %struct.cpuidle_driver, [224 x i8] } { %struct.cpuidle_driver { ptr @.str.4, ptr null, i8 0, [10 x %struct.cpuidle_state] [%struct.cpuidle_state { [16 x i8] c"C1\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"MPU ON + CORE ON\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 0, i32 272, i32 0, i32 5, ptr @omap3_enter_idle_bm, ptr null, ptr null }, %struct.cpuidle_state { [16 x i8] c"C2\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"MPU ON + CORE ON\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 0, i32 286, i32 0, i32 309, ptr @omap3_enter_idle_bm, ptr null, ptr null }, %struct.cpuidle_state { [16 x i8] c"C3\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"MPU RET + CORE ON\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 0, i32 517, i32 0, i32 46057, ptr @omap3_enter_idle_bm, ptr null, ptr null }, %struct.cpuidle_state { [16 x i8] c"C4\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"MPU OFF + CORE ON\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 0, i32 3495, i32 0, i32 46057, ptr @omap3_enter_idle_bm, ptr null, ptr null }, %struct.cpuidle_state { [16 x i8] c"C5\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"MPU RET + CORE RET\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 0, i32 2001, i32 0, i32 46057, ptr @omap3_enter_idle_bm, ptr null, ptr null }, %struct.cpuidle_state { [16 x i8] c"C6\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"MPU OFF + CORE RET\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 0, i32 11714, i32 0, i32 484329, ptr @omap3_enter_idle_bm, ptr null, ptr null }, %struct.cpuidle_state { [16 x i8] c"C7\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"MPU OFF + CORE OFF\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 0, i32 22779, i32 0, i32 484329, ptr @omap3_enter_idle_bm, ptr null, ptr null }, %struct.cpuidle_state zeroinitializer, %struct.cpuidle_state zeroinitializer, %struct.cpuidle_state zeroinitializer], i32 7, i32 0, ptr null, ptr null }, [224 x i8] zeroinitializer }, align 32
@omap3_idle_driver = internal global { %struct.cpuidle_driver, [224 x i8] } { %struct.cpuidle_driver { ptr @.str.5, ptr null, i8 0, [10 x %struct.cpuidle_state] [%struct.cpuidle_state { [16 x i8] c"C1\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"MPU ON + CORE ON\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 0, i32 4, i32 0, i32 5, ptr @omap3_enter_idle_bm, ptr null, ptr null }, %struct.cpuidle_state { [16 x i8] c"C2\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"MPU ON + CORE ON\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 0, i32 20, i32 0, i32 30, ptr @omap3_enter_idle_bm, ptr null, ptr null }, %struct.cpuidle_state { [16 x i8] c"C3\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"MPU RET + CORE ON\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 0, i32 100, i32 0, i32 300, ptr @omap3_enter_idle_bm, ptr null, ptr null }, %struct.cpuidle_state { [16 x i8] c"C4\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"MPU OFF + CORE ON\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 0, i32 3300, i32 0, i32 4000, ptr @omap3_enter_idle_bm, ptr null, ptr null }, %struct.cpuidle_state { [16 x i8] c"C5\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"MPU RET + CORE RET\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 0, i32 10000, i32 0, i32 12000, ptr @omap3_enter_idle_bm, ptr null, ptr null }, %struct.cpuidle_state { [16 x i8] c"C6\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"MPU OFF + CORE RET\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 0, i32 11500, i32 0, i32 15000, ptr @omap3_enter_idle_bm, ptr null, ptr null }, %struct.cpuidle_state { [16 x i8] c"C7\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"MPU OFF + CORE OFF\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 0, i32 40000, i32 0, i32 30000, ptr @omap3_enter_idle_bm, ptr null, ptr null }, %struct.cpuidle_state zeroinitializer, %struct.cpuidle_state zeroinitializer, %struct.cpuidle_state zeroinitializer], i32 7, i32 0, ptr null, ptr null }, [224 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"omap3430_idle\00", [18 x i8] zeroinitializer }, align 32
@omap3_idle_data = internal constant { [7 x %struct.omap3_idle_statedata], [36 x i8] } { [7 x %struct.omap3_idle_statedata] [%struct.omap3_idle_statedata { i8 3, i8 3, i8 3, i8 1 }, %struct.omap3_idle_statedata { i8 3, i8 3, i8 1, i8 0 }, %struct.omap3_idle_statedata { i8 1, i8 3, i8 1, i8 0 }, %struct.omap3_idle_statedata { i8 0, i8 3, i8 1, i8 0 }, %struct.omap3_idle_statedata { i8 1, i8 1, i8 0, i8 0 }, %struct.omap3_idle_statedata { i8 0, i8 1, i8 0, i8 0 }, %struct.omap3_idle_statedata zeroinitializer], [36 x i8] zeroinitializer }, align 32
@enable_off_mode = external dso_local local_unnamed_addr global i32, align 4
@pm34xx_errata = external dso_local local_unnamed_addr global i16, align 2
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"omap3_idle\00", [21 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 394, i32 24 }
@___asan_gen_.9 = private unnamed_addr constant [7 x i8] c"mpu_pd\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 44, i32 28 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 395, i32 25 }
@___asan_gen_.15 = private unnamed_addr constant [8 x i8] c"core_pd\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 44, i32 37 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 396, i32 24 }
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"per_pd\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 44, i32 47 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 397, i32 24 }
@___asan_gen_.27 = private unnamed_addr constant [7 x i8] c"cam_pd\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 44, i32 56 }
@___asan_gen_.30 = private unnamed_addr constant [21 x i8] c"omap3430_idle_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 326, i32 30 }
@___asan_gen_.33 = private unnamed_addr constant [18 x i8] c"omap3_idle_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 263, i32 30 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 327, i32 22 }
@___asan_gen_.39 = private unnamed_addr constant [16 x i8] c"omap3_idle_data\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 61, i32 36 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private constant [37 x i8] c"../arch/arm/mach-omap2/cpuidle34xx.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 264, i32 22 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @.str, ptr @mpu_pd, ptr @.str.1, ptr @core_pd, ptr @.str.2, ptr @per_pd, ptr @.str.3, ptr @cam_pd, ptr @omap3430_idle_driver, ptr @omap3_idle_driver, ptr @.str.4, ptr @omap3_idle_data, ptr @.str.5], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu_pd to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_pd to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @per_pd to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_pd to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3430_idle_driver to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_idle_driver to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_idle_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3_idle_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pwrdm_lookup(ptr noundef nonnull @.str) #4
  store ptr %call, ptr @mpu_pd, align 4
  %call1 = tail call ptr @pwrdm_lookup(ptr noundef nonnull @.str.1) #4
  store ptr %call1, ptr @core_pd, align 4
  %call2 = tail call ptr @pwrdm_lookup(ptr noundef nonnull @.str.2) #4
  store ptr %call2, ptr @per_pd, align 4
  %call3 = tail call ptr @pwrdm_lookup(ptr noundef nonnull @.str.3) #4
  store ptr %call3, ptr @cam_pd, align 4
  %0 = load ptr, ptr @mpu_pd, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr @core_pd, align 4
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false5

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr @per_pd, align 4
  %tobool6.not = icmp eq ptr %2, null
  %tobool8.not = icmp eq ptr %call3, null
  %or.cond = select i1 %tobool6.not, i1 true, i1 %tobool8.not
  br i1 %or.cond, label %lor.lhs.false5.return_crit_edge, label %if.end

lor.lhs.false5.return_crit_edge:                  ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 @omap_rev() #4
  %shr.mask.i = and i32 %call.i, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 875560960, i32 %shr.mask.i)
  %cmp.i.not = icmp eq i32 %shr.mask.i, 875560960
  %omap3430_idle_driver.omap3_idle_driver = select i1 %cmp.i.not, ptr @omap3430_idle_driver, ptr @omap3_idle_driver
  %call13 = tail call i32 @cpuidle_register(ptr noundef nonnull %omap3430_idle_driver.omap3_idle_driver, ptr noundef null) #4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false5.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -19, %lor.lhs.false5.return_crit_edge ], [ -19, %lor.lhs.false.return_crit_edge ], [ -19, %entry.return_crit_edge ], [ %call13, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pwrdm_lookup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpuidle_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap3_enter_idle_bm(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %drv, i32 noundef %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @cam_pd, align 4
  %call = tail call i32 @pwrdm_read_pwrst(ptr noundef %0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call)
  %cmp = icmp eq i32 %call, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %safe_state_index = getelementptr inbounds %struct.cpuidle_driver, ptr %drv, i32 0, i32 5
  %1 = ptrtoint ptr %safe_state_index to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %safe_state_index, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @enable_off_mode to i32))
  %3 = load i32, ptr @enable_off_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end3.thread.i

if.end3.thread.i:                                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @pm34xx_errata to i32))
  %4 = load i16, ptr @pm34xx_errata, align 2
  %5 = lshr i16 %4, 1
  %.lobit.i = and i16 %5, 1
  %6 = zext i16 %.lobit.i to i32
  br label %land.lhs.true.i

if.end3.i:                                        ; preds = %if.else
  %arrayidx.i = getelementptr [7 x %struct.omap3_idle_statedata], ptr @omap3_idle_data, i32 0, i32 %index
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp.not.i = icmp eq i8 %8, 0
  br i1 %cmp.not.i, label %if.end3.i.if.end10.i_crit_edge, label %if.end3.i.land.lhs.true.i_crit_edge

if.end3.i.land.lhs.true.i_crit_edge:              ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i

if.end3.i.if.end10.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10.i

land.lhs.true.i:                                  ; preds = %if.end3.i.land.lhs.true.i_crit_edge, %if.end3.thread.i
  %core_deepest_state.07.i = phi i32 [ %6, %if.end3.thread.i ], [ 1, %if.end3.i.land.lhs.true.i_crit_edge ]
  %mpu_deepest_state.05.i = phi i32 [ 0, %if.end3.thread.i ], [ 1, %if.end3.i.land.lhs.true.i_crit_edge ]
  %core_state.i = getelementptr [7 x %struct.omap3_idle_statedata], ptr @omap3_idle_data, i32 0, i32 %index, i32 1
  %9 = ptrtoint ptr %core_state.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %core_state.i, align 1
  %conv6.i = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %core_deepest_state.07.i, i32 %conv6.i)
  %cmp7.not.i = icmp ugt i32 %core_deepest_state.07.i, %conv6.i
  br i1 %cmp7.not.i, label %land.lhs.true.i.if.end10.i_crit_edge, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.i.if.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10.i

if.end10.i:                                       ; preds = %land.lhs.true.i.if.end10.i_crit_edge, %if.end3.i.if.end10.i_crit_edge
  %mpu_deepest_state.06.i = phi i32 [ %mpu_deepest_state.05.i, %land.lhs.true.i.if.end10.i_crit_edge ], [ 1, %if.end3.i.if.end10.i_crit_edge ]
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end10.i
  %idx.0.in.i = phi i32 [ %index, %if.end10.i ], [ %idx.0.i, %for.body.i.for.cond.i_crit_edge ]
  %idx.0.i = add i32 %idx.0.in.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %idx.0.i)
  %cmp11.i = icmp sgt i32 %idx.0.i, -1
  br i1 %cmp11.i, label %for.body.i, label %for.cond.i.if.end_crit_edge

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx13.i = getelementptr [7 x %struct.omap3_idle_statedata], ptr @omap3_idle_data, i32 0, i32 %idx.0.i
  %11 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx13.i, align 1
  %conv15.i = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %mpu_deepest_state.06.i, i32 %conv15.i)
  %cmp16.not.i = icmp ugt i32 %mpu_deepest_state.06.i, %conv15.i
  %13 = and i32 %idx.0.i, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %13)
  %cmp21.not.i = icmp eq i32 %13, 6
  %or.cond.i = select i1 %cmp16.not.i, i1 true, i1 %cmp21.not.i
  br i1 %or.cond.i, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.if.end_crit_edge

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i

if.end:                                           ; preds = %for.body.i.if.end_crit_edge, %for.cond.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %if.then
  %new_state_idx.0 = phi i32 [ %2, %if.then ], [ %index, %land.lhs.true.i.if.end_crit_edge ], [ 0, %for.cond.i.if.end_crit_edge ], [ %idx.0.i, %for.body.i.if.end_crit_edge ]
  %14 = load ptr, ptr @per_pd, align 4
  %call2 = tail call i32 @pwrdm_read_next_pwrst(ptr noundef %14) #4
  %conv = trunc i32 %call2 to i8
  %conv3 = and i32 %call2, 255
  %per_min_state = getelementptr [7 x %struct.omap3_idle_statedata], ptr @omap3_idle_data, i32 0, i32 %new_state_idx.0, i32 2
  %15 = ptrtoint ptr %per_min_state to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %per_min_state, align 1
  %conv4 = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3, i32 %conv4)
  %cmp5 = icmp ult i32 %conv3, %conv4
  br i1 %cmp5, label %if.then7, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %17 = load ptr, ptr @per_pd, align 4
  %call9 = tail call i32 @pwrdm_set_next_pwrst(ptr noundef %17, i8 noundef zeroext %16) #4
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end.if.end10_crit_edge
  %per_next_state.0 = phi i8 [ %16, %if.then7 ], [ %conv, %if.end.if.end10_crit_edge ]
  %arrayidx.i28 = getelementptr [7 x %struct.omap3_idle_statedata], ptr @omap3_idle_data, i32 0, i32 %new_state_idx.0
  %call.i = tail call i32 @omap_irq_pending() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i29 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i29, label %lor.lhs.false.i, label %if.end10.omap3_enter_idle.exit_crit_edge

if.end10.omap3_enter_idle.exit_crit_edge:         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %omap3_enter_idle.exit

lor.lhs.false.i:                                  ; preds = %if.end10
  %18 = tail call i32 @llvm.read_register.i32(metadata !26) #4
  %and.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 16384
  %22 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.i.not.i = icmp eq i32 %22, 0
  br i1 %tobool.i.not.i, label %if.end.i, label %lor.lhs.false.i.omap3_enter_idle.exit_crit_edge

lor.lhs.false.i.omap3_enter_idle.exit_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %omap3_enter_idle.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %23 = and i32 %new_state_idx.0, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool2.not.not.i = icmp eq i32 %23, 0
  %24 = load ptr, ptr @mpu_pd, align 4
  br i1 %tobool2.not.not.i, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %pwrdm_clkdms.i = getelementptr inbounds %struct.powerdomain, ptr %24, i32 0, i32 10
  %25 = ptrtoint ptr %pwrdm_clkdms.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pwrdm_clkdms.i, align 4
  tail call void @clkdm_deny_idle(ptr noundef %26) #4
  br label %if.end7.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %arrayidx.i28 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i28, align 1
  %call5.i = tail call i32 @pwrdm_set_next_pwrst(ptr noundef %24, i8 noundef zeroext %28) #4
  %29 = load ptr, ptr @core_pd, align 4
  %core_state.i30 = getelementptr [7 x %struct.omap3_idle_statedata], ptr @omap3_idle_data, i32 0, i32 %new_state_idx.0, i32 1
  %30 = ptrtoint ptr %core_state.i30 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %core_state.i30, align 1
  %call6.i = tail call i32 @pwrdm_set_next_pwrst(ptr noundef %29, i8 noundef zeroext %31) #4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.else.i, %if.then3.i
  %32 = ptrtoint ptr %arrayidx.i28 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp.i = icmp eq i8 %33, 0
  br i1 %cmp.i, label %if.then11.i, label %if.end16.i

if.then11.i:                                      ; preds = %if.end7.i
  %call12.i = tail call i32 @cpu_pm_enter() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %land.lhs.true.i31, label %if.then11.i.out_clkdm_set.i_crit_edge

if.then11.i.out_clkdm_set.i_crit_edge:            ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_clkdm_set.i

if.end16.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @omap_sram_idle() #4
  br label %out_clkdm_set.i

land.lhs.true.i31:                                ; preds = %if.then11.i
  tail call void @omap_sram_idle() #4
  %34 = load ptr, ptr @mpu_pd, align 4
  %call21.i = tail call i32 @pwrdm_read_prev_pwrst(ptr noundef %34) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp22.i = icmp eq i32 %call21.i, 0
  br i1 %cmp22.i, label %if.then24.i, label %land.lhs.true.i31.out_clkdm_set.i_crit_edge

land.lhs.true.i31.out_clkdm_set.i_crit_edge:      ; preds = %land.lhs.true.i31
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_clkdm_set.i

if.then24.i:                                      ; preds = %land.lhs.true.i31
  call void @__sanitizer_cov_trace_pc() #6
  %call25.i = tail call i32 @cpu_pm_exit() #4
  br label %out_clkdm_set.i

out_clkdm_set.i:                                  ; preds = %if.then24.i, %land.lhs.true.i31.out_clkdm_set.i_crit_edge, %if.end16.i, %if.then11.i.out_clkdm_set.i_crit_edge
  br i1 %tobool2.not.not.i, label %if.then31.i, label %out_clkdm_set.i.omap3_enter_idle.exit_crit_edge

out_clkdm_set.i.omap3_enter_idle.exit_crit_edge:  ; preds = %out_clkdm_set.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %omap3_enter_idle.exit

if.then31.i:                                      ; preds = %out_clkdm_set.i
  call void @__sanitizer_cov_trace_pc() #6
  %35 = load ptr, ptr @mpu_pd, align 4
  %pwrdm_clkdms32.i = getelementptr inbounds %struct.powerdomain, ptr %35, i32 0, i32 10
  %36 = ptrtoint ptr %pwrdm_clkdms32.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pwrdm_clkdms32.i, align 4
  tail call void @clkdm_allow_idle(ptr noundef %37) #4
  br label %omap3_enter_idle.exit

omap3_enter_idle.exit:                            ; preds = %if.then31.i, %out_clkdm_set.i.omap3_enter_idle.exit_crit_edge, %lor.lhs.false.i.omap3_enter_idle.exit_crit_edge, %if.end10.omap3_enter_idle.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp1(i8 %per_next_state.0, i8 %conv)
  %cmp14.not = icmp eq i8 %per_next_state.0, %conv
  br i1 %cmp14.not, label %omap3_enter_idle.exit.if.end18_crit_edge, label %if.then16

omap3_enter_idle.exit.if.end18_crit_edge:         ; preds = %omap3_enter_idle.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.then16:                                        ; preds = %omap3_enter_idle.exit
  call void @__sanitizer_cov_trace_pc() #6
  %38 = load ptr, ptr @per_pd, align 4
  %call17 = tail call i32 @pwrdm_set_next_pwrst(ptr noundef %38, i8 noundef zeroext %conv) #4
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %omap3_enter_idle.exit.if.end18_crit_edge
  ret i32 %new_state_idx.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_read_pwrst(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_read_next_pwrst(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_set_next_pwrst(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_irq_pending() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clkdm_deny_idle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_enter() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_sram_idle() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_read_prev_pwrst(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_exit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clkdm_allow_idle(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24}
!llvm.named.register.sp = !{!26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/cpuidle34xx.c", i32 394, i32 24}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-omap2/cpuidle34xx.c", i32 395, i32 25}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-omap2/cpuidle34xx.c", i32 396, i32 24}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-omap2/cpuidle34xx.c", i32 397, i32 24}
!8 = !{ptr @mpu_pd, !9, !"mpu_pd", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-omap2/cpuidle34xx.c", i32 44, i32 28}
!10 = !{ptr @core_pd, !11, !"core_pd", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-omap2/cpuidle34xx.c", i32 44, i32 37}
!12 = !{ptr @per_pd, !13, !"per_pd", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-omap2/cpuidle34xx.c", i32 44, i32 47}
!14 = !{ptr @cam_pd, !15, !"cam_pd", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-omap2/cpuidle34xx.c", i32 44, i32 56}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-omap2/cpuidle34xx.c", i32 327, i32 22}
!18 = !{ptr @omap3430_idle_driver, !19, !"omap3430_idle_driver", i1 false, i1 false}
!19 = !{!"../arch/arm/mach-omap2/cpuidle34xx.c", i32 326, i32 30}
!20 = !{ptr @omap3_idle_data, !21, !"omap3_idle_data", i1 false, i1 false}
!21 = !{!"../arch/arm/mach-omap2/cpuidle34xx.c", i32 61, i32 36}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-omap2/cpuidle34xx.c", i32 264, i32 22}
!24 = !{ptr @omap3_idle_driver, !25, !"omap3_idle_driver", i1 false, i1 false}
!25 = !{!"../arch/arm/mach-omap2/cpuidle34xx.c", i32 263, i32 30}
!26 = !{!"sp"}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
