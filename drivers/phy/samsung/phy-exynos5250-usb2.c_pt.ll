; ModuleID = '/llk/IR_all_yes/drivers/phy/samsung/phy-exynos5250-usb2.c_pt.bc'
source_filename = "../drivers/phy/samsung/phy-exynos5250-usb2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.samsung_usb2_common_phy = type { ptr, ptr, i32, ptr }
%struct.samsung_usb2_phy_config = type { ptr, ptr, i32, i8, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.samsung_usb2_phy_instance = type { ptr, ptr, ptr, i32, i32 }
%struct.samsung_usb2_phy_driver = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, %struct.spinlock, [0 x %struct.samsung_usb2_phy_instance] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@exynos5250_phys = internal constant { [4 x %struct.samsung_usb2_common_phy], [32 x i8] } { [4 x %struct.samsung_usb2_common_phy] [%struct.samsung_usb2_common_phy { ptr @exynos5250_power_on, ptr @exynos5250_power_off, i32 0, ptr @.str }, %struct.samsung_usb2_common_phy { ptr @exynos5250_power_on, ptr @exynos5250_power_off, i32 1, ptr @.str.1 }, %struct.samsung_usb2_common_phy { ptr @exynos5250_power_on, ptr @exynos5250_power_off, i32 2, ptr @.str.2 }, %struct.samsung_usb2_common_phy { ptr @exynos5250_power_on, ptr @exynos5250_power_off, i32 3, ptr @.str.3 }], [32 x i8] zeroinitializer }, align 32
@exynos5250_usb2_phy_config = dso_local constant { %struct.samsung_usb2_phy_config, [16 x i8] } { %struct.samsung_usb2_phy_config { ptr @exynos5250_phys, ptr @exynos5250_rate_to_clk, i32 4, i8 1, i8 0 }, [16 x i8] zeroinitializer }, align 32
@exynos5420_phys = internal constant { [2 x %struct.samsung_usb2_common_phy], [32 x i8] } { [2 x %struct.samsung_usb2_common_phy] [%struct.samsung_usb2_common_phy { ptr @exynos5250_power_on, ptr @exynos5250_power_off, i32 1, ptr @.str.1 }, %struct.samsung_usb2_common_phy { ptr @exynos5250_power_on, ptr @exynos5250_power_off, i32 2, ptr @.str.4 }], [32 x i8] zeroinitializer }, align 32
@exynos5420_usb2_phy_config = dso_local constant { %struct.samsung_usb2_phy_config, [16 x i8] } { %struct.samsung_usb2_phy_config { ptr @exynos5420_phys, ptr @exynos5250_rate_to_clk, i32 2, i8 1, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"device\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"host\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hsic0\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hsic1\00", [26 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hsic\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 9600000, i64 10000000, i64 12000000, i64 19200000, i64 20000000, i64 24000000, i64 50000000]
@__sancov_gen_cov_switch_values.5 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.8 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.9 = private unnamed_addr constant [16 x i8] c"exynos5250_phys\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 364, i32 45 }
@___asan_gen_.12 = private unnamed_addr constant [27 x i8] c"exynos5250_usb2_phy_config\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 406, i32 38 }
@___asan_gen_.15 = private unnamed_addr constant [16 x i8] c"exynos5420_phys\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 391, i32 45 }
@___asan_gen_.18 = private unnamed_addr constant [27 x i8] c"exynos5420_usb2_phy_config\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 413, i32 38 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 366, i32 13 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 372, i32 13 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 378, i32 13 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 384, i32 13 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private constant [45 x i8] c"../drivers/phy/samsung/phy-exynos5250-usb2.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 399, i32 13 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @exynos5250_phys, ptr @exynos5250_usb2_phy_config, ptr @exynos5420_phys, ptr @exynos5420_usb2_phy_config, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5250_phys to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5250_usb2_phy_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5420_phys to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos5420_usb2_phy_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @exynos5250_rate_to_clk(i32 noundef %rate, ptr nocapture noundef writeonly %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %rate, label %entry.return_crit_edge [
    i32 9600000, label %entry.return.sink.split_crit_edge
    i32 10000000, label %sw.bb1
    i32 12000000, label %sw.bb2
    i32 19200000, label %sw.bb3
    i32 20000000, label %sw.bb4
    i32 24000000, label %sw.bb5
    i32 50000000, label %sw.bb6
  ]

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return.sink.split

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return.sink.split

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return.sink.split

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return.sink.split

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return.sink.split

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return.sink.split

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return.sink.split_crit_edge
  %.sink = phi i32 [ 1, %sw.bb1 ], [ 2, %sw.bb2 ], [ 3, %sw.bb3 ], [ 4, %sw.bb4 ], [ 5, %sw.bb5 ], [ 7, %sw.bb6 ], [ 0, %entry.return.sink.split_crit_edge ]
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %.sink, ptr %reg, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos5250_power_on(ptr nocapture noundef readonly %inst) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %drv1 = getelementptr inbounds %struct.samsung_usb2_phy_instance, ptr %inst, i32 0, i32 2
  %0 = ptrtoint ptr %drv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv1, align 4
  %2 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inst, align 4
  %id = getelementptr inbounds %struct.samsung_usb2_common_phy, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %5, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.bb16_crit_edge
    i32 2, label %entry.sw.bb16_crit_edge158
    i32 3, label %entry.sw.bb16_crit_edge159
  ]

entry.sw.bb16_crit_edge159:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb16

entry.sw.bb16_crit_edge158:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb16

entry.sw.bb16_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb16

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %reg_sys = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %reg_sys to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_sys, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 560, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %reg_phy = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %reg_phy to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_phy, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 56
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !28
  %ref_reg_val = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %ref_reg_val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ref_reg_val, align 4
  %shl = shl i32 %13, 4
  %14 = and i32 %11, -989855745
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %and4 = or i32 %shl, %15
  %or5 = and i32 %and4, -30224
  %or7 = or i32 %or5, 29700
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %16 = tail call i32 @llvm.bswap.i32(i32 %or7)
  %17 = ptrtoint ptr %reg_phy to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_phy, align 4
  %add.ptr9 = getelementptr i8, ptr %18, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %16) #4, !srcloc !30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 21474800) #4
  %and10 = or i32 %or5, 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %20 = tail call i32 @llvm.bswap.i32(i32 %and10)
  %21 = ptrtoint ptr %reg_phy to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_phy, align 4
  %add.ptr15 = getelementptr i8, ptr %22, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %20) #4, !srcloc !30
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry.sw.bb16_crit_edge, %entry.sw.bb16_crit_edge158, %entry.sw.bb16_crit_edge159
  %reg_phy19 = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %1, i32 0, i32 7
  %23 = ptrtoint ptr %reg_phy19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_phy19, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #4, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  %26 = and i32 %25, -1793
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %ref_reg_val25 = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %1, i32 0, i32 5
  %28 = ptrtoint ptr %ref_reg_val25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ref_reg_val25, align 4
  %shl26 = shl i32 %29, 16
  %or27 = or i32 %shl26, %27
  %and28 = and i32 %or27, 2147483016
  %or29 = or i32 %and28, 518
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  tail call void @arm_heavy_mb() #4
  %30 = tail call i32 @llvm.bswap.i32(i32 %or29)
  %31 = ptrtoint ptr %reg_phy19 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg_phy19, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #4, !srcloc !30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 2147480) #4
  %and35 = or i32 %and28, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  %34 = tail call i32 @llvm.bswap.i32(i32 %and35)
  %35 = ptrtoint ptr %reg_phy19 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg_phy19, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #4, !srcloc !30
  %37 = ptrtoint ptr %reg_phy19 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg_phy19, align 4
  %add.ptr44 = getelementptr i8, ptr %38, i32 56
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr44) #4, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  %40 = ptrtoint ptr %ref_reg_val25 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ref_reg_val25, align 4
  %shl50 = shl i32 %41, 4
  %42 = and i32 %39, -989855745
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  %and52 = or i32 %shl50, %43
  %or53 = and i32 %and52, -30224
  %or55 = or i32 %or53, 29700
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  tail call void @arm_heavy_mb() #4
  %44 = tail call i32 @llvm.bswap.i32(i32 %or55)
  %45 = ptrtoint ptr %reg_phy19 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg_phy19, align 4
  %add.ptr60 = getelementptr i8, ptr %46, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 %44) #4, !srcloc !30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 2147480) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !37
  tail call void @arm_heavy_mb() #4
  %48 = ptrtoint ptr %reg_phy19 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reg_phy19, align 4
  %add.ptr66 = getelementptr i8, ptr %49, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66, i32 16786433) #4, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !38
  tail call void @arm_heavy_mb() #4
  %50 = ptrtoint ptr %reg_phy19 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %reg_phy19, align 4
  %add.ptr71 = getelementptr i8, ptr %51, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71, i32 16786433) #4, !srcloc !30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 2147480) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  tail call void @arm_heavy_mb() #4
  %53 = ptrtoint ptr %reg_phy19 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %reg_phy19, align 4
  %add.ptr77 = getelementptr i8, ptr %54, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77, i32 9217) #4, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %55 = ptrtoint ptr %reg_phy19 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %reg_phy19, align 4
  %add.ptr82 = getelementptr i8, ptr %56, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82, i32 9217) #4, !srcloc !30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 17179840) #4
  %58 = ptrtoint ptr %reg_phy19 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %reg_phy19, align 4
  %add.ptr86 = getelementptr i8, ptr %59, i32 48
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr86) #4, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !41
  %61 = or i32 %60, 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %62 = ptrtoint ptr %reg_phy19 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %reg_phy19, align 4
  %add.ptr95 = getelementptr i8, ptr %63, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr95, i32 %61) #4, !srcloc !30
  %64 = ptrtoint ptr %reg_phy19 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %reg_phy19, align 4
  %add.ptr99 = getelementptr i8, ptr %65, i32 52
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr99) #4, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !43
  %67 = or i32 %66, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !44
  tail call void @arm_heavy_mb() #4
  %68 = ptrtoint ptr %reg_phy19 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %reg_phy19, align 4
  %add.ptr108 = getelementptr i8, ptr %69, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr108, i32 %67) #4, !srcloc !30
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb16, %sw.bb, %entry.sw.epilog_crit_edge
  %70 = ptrtoint ptr %drv1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %drv1, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %cmp.i = icmp eq ptr %73, @exynos5250_usb2_phy_config
  br i1 %cmp.i, label %land.lhs.true.i, label %if.else11.i

land.lhs.true.i:                                  ; preds = %sw.epilog
  %74 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %inst, align 4
  %id.i = getelementptr inbounds %struct.samsung_usb2_common_phy, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %id.i, align 4
  %78 = zext i32 %77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %77, label %land.lhs.true.i.exynos5250_isol.exit_crit_edge [
    i32 0, label %land.lhs.true.i.if.end21.i_crit_edge
    i32 1, label %if.end21.i.fold.split
  ]

land.lhs.true.i.if.end21.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21.i

land.lhs.true.i.exynos5250_isol.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %exynos5250_isol.exit

if.else11.i:                                      ; preds = %sw.epilog
  %cmp13.i = icmp eq ptr %73, @exynos5420_usb2_phy_config
  br i1 %cmp13.i, label %land.lhs.true14.i, label %if.else11.i.exynos5250_isol.exit_crit_edge

if.else11.i.exynos5250_isol.exit_crit_edge:       ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %exynos5250_isol.exit

land.lhs.true14.i:                                ; preds = %if.else11.i
  %79 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %inst, align 4
  %id16.i = getelementptr inbounds %struct.samsung_usb2_common_phy, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %id16.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %id16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %82)
  %cmp17.i = icmp eq i32 %82, 1
  br i1 %cmp17.i, label %land.lhs.true14.i.if.end21.i_crit_edge, label %land.lhs.true14.i.exynos5250_isol.exit_crit_edge

land.lhs.true14.i.exynos5250_isol.exit_crit_edge: ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %exynos5250_isol.exit

land.lhs.true14.i.if.end21.i_crit_edge:           ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21.i

if.end21.i.fold.split:                            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.end21.i.fold.split, %land.lhs.true14.i.if.end21.i_crit_edge, %land.lhs.true.i.if.end21.i_crit_edge
  %offset.0.i = phi i32 [ 1796, %land.lhs.true.i.if.end21.i_crit_edge ], [ 1804, %land.lhs.true14.i.if.end21.i_crit_edge ], [ 1800, %if.end21.i.fold.split ]
  %reg_pmu.i = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %71, i32 0, i32 8
  %83 = ptrtoint ptr %reg_pmu.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %reg_pmu.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %84, i32 noundef %offset.0.i, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %exynos5250_isol.exit

exynos5250_isol.exit:                             ; preds = %if.end21.i, %land.lhs.true14.i.exynos5250_isol.exit_crit_edge, %if.else11.i.exynos5250_isol.exit_crit_edge, %land.lhs.true.i.exynos5250_isol.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos5250_power_off(ptr nocapture noundef readonly %inst) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %drv1 = getelementptr inbounds %struct.samsung_usb2_phy_instance, ptr %inst, i32 0, i32 2
  %0 = ptrtoint ptr %drv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cmp.i = icmp eq ptr %3, @exynos5250_usb2_phy_config
  br i1 %cmp.i, label %land.lhs.true.i, label %if.else11.i

land.lhs.true.i:                                  ; preds = %entry
  %4 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %inst, align 4
  %id.i = getelementptr inbounds %struct.samsung_usb2_common_phy, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %7, label %land.lhs.true.i.exynos5250_isol.exit_crit_edge [
    i32 0, label %land.lhs.true.i.if.end21.i_crit_edge
    i32 1, label %if.end21.i.fold.split
  ]

land.lhs.true.i.if.end21.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21.i

land.lhs.true.i.exynos5250_isol.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %exynos5250_isol.exit

if.else11.i:                                      ; preds = %entry
  %cmp13.i = icmp eq ptr %3, @exynos5420_usb2_phy_config
  br i1 %cmp13.i, label %land.lhs.true14.i, label %if.else11.i.exynos5250_isol.exit_crit_edge

if.else11.i.exynos5250_isol.exit_crit_edge:       ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %exynos5250_isol.exit

land.lhs.true14.i:                                ; preds = %if.else11.i
  %9 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %inst, align 4
  %id16.i = getelementptr inbounds %struct.samsung_usb2_common_phy, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %id16.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp17.i = icmp eq i32 %12, 1
  br i1 %cmp17.i, label %land.lhs.true14.i.if.end21.i_crit_edge, label %land.lhs.true14.i.exynos5250_isol.exit_crit_edge

land.lhs.true14.i.exynos5250_isol.exit_crit_edge: ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %exynos5250_isol.exit

land.lhs.true14.i.if.end21.i_crit_edge:           ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21.i

if.end21.i.fold.split:                            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.end21.i.fold.split, %land.lhs.true14.i.if.end21.i_crit_edge, %land.lhs.true.i.if.end21.i_crit_edge
  %offset.0.i = phi i32 [ 1796, %land.lhs.true.i.if.end21.i_crit_edge ], [ 1804, %land.lhs.true14.i.if.end21.i_crit_edge ], [ 1800, %if.end21.i.fold.split ]
  %reg_pmu.i = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %reg_pmu.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_pmu.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef %offset.0.i, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %exynos5250_isol.exit

exynos5250_isol.exit:                             ; preds = %if.end21.i, %land.lhs.true14.i.exynos5250_isol.exit_crit_edge, %if.else11.i.exynos5250_isol.exit_crit_edge, %land.lhs.true.i.exynos5250_isol.exit_crit_edge
  %15 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %inst, align 4
  %id = getelementptr inbounds %struct.samsung_usb2_common_phy, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %18, label %exynos5250_isol.exit.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
    i32 2, label %exynos5250_isol.exit.sw.bb19_crit_edge
    i32 3, label %exynos5250_isol.exit.sw.bb19_crit_edge40
  ]

exynos5250_isol.exit.sw.bb19_crit_edge40:         ; preds = %exynos5250_isol.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb19

exynos5250_isol.exit.sw.bb19_crit_edge:           ; preds = %exynos5250_isol.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb19

exynos5250_isol.exit.sw.epilog_crit_edge:         ; preds = %exynos5250_isol.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %exynos5250_isol.exit
  call void @__sanitizer_cov_trace_pc() #6
  %reg_phy = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %1, i32 0, i32 7
  %20 = ptrtoint ptr %reg_phy to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_phy, align 4
  %add.ptr = getelementptr i8, ptr %21, i32 56
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !45
  %23 = or i32 %22, 184549376
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  tail call void @arm_heavy_mb() #4
  %24 = ptrtoint ptr %reg_phy to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_phy, align 4
  %add.ptr4 = getelementptr i8, ptr %25, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %23) #4, !srcloc !30
  br label %sw.epilog

sw.bb5:                                           ; preds = %exynos5250_isol.exit
  call void @__sanitizer_cov_trace_pc() #6
  %reg_phy8 = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %1, i32 0, i32 7
  %26 = ptrtoint ptr %reg_phy8 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_phy8, align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #4, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !47
  %29 = or i32 %28, 1895825536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !48
  tail call void @arm_heavy_mb() #4
  %30 = ptrtoint ptr %reg_phy8 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_phy8, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #4, !srcloc !30
  br label %sw.epilog

sw.bb19:                                          ; preds = %exynos5250_isol.exit.sw.bb19_crit_edge, %exynos5250_isol.exit.sw.bb19_crit_edge40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !49
  tail call void @arm_heavy_mb() #4
  %reg_phy23 = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %1, i32 0, i32 7
  %32 = ptrtoint ptr %reg_phy23 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg_phy23, align 4
  %add.ptr24 = getelementptr i8, ptr %33, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 1879057409) #4, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !50
  tail call void @arm_heavy_mb() #4
  %34 = ptrtoint ptr %reg_phy23 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg_phy23, align 4
  %add.ptr29 = getelementptr i8, ptr %35, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 1879057409) #4, !srcloc !30
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb19, %sw.bb5, %sw.bb, %exynos5250_isol.exit.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @exynos5250_usb2_phy_config, !1, !"exynos5250_usb2_phy_config", i1 false, i1 false}
!1 = !{!"../drivers/phy/samsung/phy-exynos5250-usb2.c", i32 406, i32 38}
!2 = !{ptr @exynos5420_usb2_phy_config, !3, !"exynos5420_usb2_phy_config", i1 false, i1 false}
!3 = !{!"../drivers/phy/samsung/phy-exynos5250-usb2.c", i32 413, i32 38}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/phy/samsung/phy-exynos5250-usb2.c", i32 366, i32 13}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/phy/samsung/phy-exynos5250-usb2.c", i32 372, i32 13}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/phy/samsung/phy-exynos5250-usb2.c", i32 378, i32 13}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/phy/samsung/phy-exynos5250-usb2.c", i32 384, i32 13}
!12 = !{ptr @exynos5250_phys, !13, !"exynos5250_phys", i1 false, i1 false}
!13 = !{!"../drivers/phy/samsung/phy-exynos5250-usb2.c", i32 364, i32 45}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/phy/samsung/phy-exynos5250-usb2.c", i32 399, i32 13}
!16 = !{ptr @exynos5420_phys, !17, !"exynos5420_phys", i1 false, i1 false}
!17 = !{!"../drivers/phy/samsung/phy-exynos5250-usb2.c", i32 391, i32 45}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{i64 2988067}
!28 = !{i64 2155123602}
!29 = !{i64 2155124504}
!30 = !{i64 2987649}
!31 = !{i64 2155125784}
!32 = !{i64 2155126455}
!33 = !{i64 2155127385}
!34 = !{i64 2155128494}
!35 = !{i64 2155129175}
!36 = !{i64 2155130077}
!37 = !{i64 2155131377}
!38 = !{i64 2155131779}
!39 = !{i64 2155132805}
!40 = !{i64 2155133207}
!41 = !{i64 2155134428}
!42 = !{i64 2155134986}
!43 = !{i64 2155135665}
!44 = !{i64 2155135887}
!45 = !{i64 2155136566}
!46 = !{i64 2155137033}
!47 = !{i64 2155137704}
!48 = !{i64 2155138337}
!49 = !{i64 2155139012}
!50 = !{i64 2155139414}
