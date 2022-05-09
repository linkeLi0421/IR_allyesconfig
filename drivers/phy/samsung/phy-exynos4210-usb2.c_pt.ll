; ModuleID = '/llk/IR_all_yes/drivers/phy/samsung/phy-exynos4210-usb2.c_pt.bc'
source_filename = "../drivers/phy/samsung/phy-exynos4210-usb2.c"
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

@exynos4210_phys = internal constant { [4 x %struct.samsung_usb2_common_phy], [32 x i8] } { [4 x %struct.samsung_usb2_common_phy] [%struct.samsung_usb2_common_phy { ptr @exynos4210_power_on, ptr @exynos4210_power_off, i32 0, ptr @.str }, %struct.samsung_usb2_common_phy { ptr @exynos4210_power_on, ptr @exynos4210_power_off, i32 1, ptr @.str.1 }, %struct.samsung_usb2_common_phy { ptr @exynos4210_power_on, ptr @exynos4210_power_off, i32 2, ptr @.str.2 }, %struct.samsung_usb2_common_phy { ptr @exynos4210_power_on, ptr @exynos4210_power_off, i32 3, ptr @.str.3 }], [32 x i8] zeroinitializer }, align 32
@exynos4210_usb2_phy_config = dso_local constant { %struct.samsung_usb2_phy_config, [16 x i8] } { %struct.samsung_usb2_phy_config { ptr @exynos4210_phys, ptr @exynos4210_rate_to_clk, i32 4, i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"device\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"host\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hsic0\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hsic1\00", [26 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 12000000, i64 24000000, i64 48000000]
@__sancov_gen_cov_switch_values.4 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.7 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.8 = private unnamed_addr constant [16 x i8] c"exynos4210_phys\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 225, i32 45 }
@___asan_gen_.11 = private unnamed_addr constant [27 x i8] c"exynos4210_usb2_phy_config\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 252, i32 38 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 227, i32 13 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 233, i32 13 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 239, i32 13 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private constant [45 x i8] c"../drivers/phy/samsung/phy-exynos4210-usb2.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 245, i32 13 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @exynos4210_phys, ptr @exynos4210_usb2_phy_config, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos4210_phys to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos4210_usb2_phy_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @exynos4210_rate_to_clk(i32 noundef %rate, ptr nocapture noundef writeonly %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %rate, label %entry.return_crit_edge [
    i32 12000000, label %entry.return.sink.split_crit_edge
    i32 24000000, label %sw.bb1
    i32 48000000, label %sw.bb2
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

return.sink.split:                                ; preds = %sw.bb2, %sw.bb1, %entry.return.sink.split_crit_edge
  %.sink = phi i32 [ 3, %sw.bb1 ], [ 0, %sw.bb2 ], [ 2, %entry.return.sink.split_crit_edge ]
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %.sink, ptr %reg, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos4210_power_on(ptr nocapture noundef readonly %inst) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %drv1.i = getelementptr inbounds %struct.samsung_usb2_phy_instance, ptr %inst, i32 0, i32 2
  %0 = ptrtoint ptr %drv1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv1.i, align 4
  %2 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inst, align 4
  %id.i = getelementptr inbounds %struct.samsung_usb2_common_phy, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %5, label %entry.exynos4210_phy_pwr.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
    i32 2, label %sw.bb3.i
    i32 3, label %sw.bb4.i
  ]

entry.exynos4210_phy_pwr.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %exynos4210_phy_pwr.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %exynos4210_phy_pwr.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !21
  tail call void @arm_heavy_mb() #4
  %reg_phy.i = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %reg_phy.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_phy.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #4, !srcloc !22
  br label %exynos4210_phy_pwr.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %exynos4210_phy_pwr.exit

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %exynos4210_phy_pwr.exit

exynos4210_phy_pwr.exit:                          ; preds = %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb.i, %entry.exynos4210_phy_pwr.exit_crit_edge
  %phypwr.0.i = phi i32 [ -1, %entry.exynos4210_phy_pwr.exit_crit_edge ], [ -6145, %sw.bb4.i ], [ -1537, %sw.bb3.i ], [ -449, %sw.bb2.i ], [ -58, %sw.bb.i ]
  %rstbits.0.i = phi i32 [ 0, %entry.exynos4210_phy_pwr.exit_crit_edge ], [ 544, %sw.bb4.i ], [ 288, %sw.bb3.i ], [ 248, %sw.bb2.i ], [ 1, %sw.bb.i ]
  %reg_phy6.i = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %reg_phy6.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_phy6.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %10, i32 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #4, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  %12 = and i32 %11, -50331649
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #4
  %ref_reg_val.i = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %ref_reg_val.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ref_reg_val.i, align 4
  %or.i = or i32 %13, %15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  %16 = tail call i32 @llvm.bswap.i32(i32 %or.i) #4
  %17 = ptrtoint ptr %reg_phy6.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_phy6.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %18, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %16) #4, !srcloc !22
  %19 = ptrtoint ptr %reg_phy6.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_phy6.i, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #4, !srcloc !23
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !26
  %and21.i = and i32 %22, %phypwr.0.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  %23 = tail call i32 @llvm.bswap.i32(i32 %and21.i) #4
  %24 = ptrtoint ptr %reg_phy6.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_phy6.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #4, !srcloc !22
  %26 = ptrtoint ptr %reg_phy6.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_phy6.i, align 4
  %add.ptr30.i = getelementptr i8, ptr %27, i32 8
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30.i) #4, !srcloc !23
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !28
  %or34.i = or i32 %29, %rstbits.0.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %30 = tail call i32 @llvm.bswap.i32(i32 %or34.i) #4
  %31 = ptrtoint ptr %reg_phy6.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg_phy6.i, align 4
  %add.ptr39.i = getelementptr i8, ptr %32, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39.i, i32 %30) #4, !srcloc !22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 2147480) #4
  %neg40.i = xor i32 %rstbits.0.i, -1
  %and41.i = and i32 %29, %neg40.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  tail call void @arm_heavy_mb() #4
  %34 = tail call i32 @llvm.bswap.i32(i32 %and41.i) #4
  %35 = ptrtoint ptr %reg_phy6.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg_phy6.i, align 4
  %add.ptr46.i = getelementptr i8, ptr %36, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46.i, i32 %34) #4, !srcloc !22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 17179840) #4
  %38 = ptrtoint ptr %drv1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %drv1.i, align 4
  %40 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %inst, align 4
  %id.i3 = getelementptr inbounds %struct.samsung_usb2_common_phy, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %id.i3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %id.i3, align 4
  %44 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %43, label %exynos4210_phy_pwr.exit.exynos4210_isol.exit_crit_edge [
    i32 0, label %exynos4210_phy_pwr.exit.sw.epilog.i_crit_edge
    i32 1, label %sw.bb2.i4
  ]

exynos4210_phy_pwr.exit.sw.epilog.i_crit_edge:    ; preds = %exynos4210_phy_pwr.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

exynos4210_phy_pwr.exit.exynos4210_isol.exit_crit_edge: ; preds = %exynos4210_phy_pwr.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %exynos4210_isol.exit

sw.bb2.i4:                                        ; preds = %exynos4210_phy_pwr.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb2.i4, %exynos4210_phy_pwr.exit.sw.epilog.i_crit_edge
  %offset.0.i = phi i32 [ 1800, %sw.bb2.i4 ], [ 1796, %exynos4210_phy_pwr.exit.sw.epilog.i_crit_edge ]
  %reg_pmu.i = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %39, i32 0, i32 8
  %45 = ptrtoint ptr %reg_pmu.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg_pmu.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef %offset.0.i, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %exynos4210_isol.exit

exynos4210_isol.exit:                             ; preds = %sw.epilog.i, %exynos4210_phy_pwr.exit.exynos4210_isol.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos4210_power_off(ptr nocapture noundef readonly %inst) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %drv1.i = getelementptr inbounds %struct.samsung_usb2_phy_instance, ptr %inst, i32 0, i32 2
  %0 = ptrtoint ptr %drv1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv1.i, align 4
  %2 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inst, align 4
  %id.i = getelementptr inbounds %struct.samsung_usb2_common_phy, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %5, label %entry.exynos4210_isol.exit_crit_edge [
    i32 0, label %entry.sw.epilog.i_crit_edge
    i32 1, label %sw.bb2.i
  ]

entry.sw.epilog.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

entry.exynos4210_isol.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %exynos4210_isol.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb2.i, %entry.sw.epilog.i_crit_edge
  %offset.0.i = phi i32 [ 1800, %sw.bb2.i ], [ 1796, %entry.sw.epilog.i_crit_edge ]
  %reg_pmu.i = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %reg_pmu.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_pmu.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef %offset.0.i, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %exynos4210_isol.exit

exynos4210_isol.exit:                             ; preds = %sw.epilog.i, %entry.exynos4210_isol.exit_crit_edge
  %9 = ptrtoint ptr %drv1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %drv1.i, align 4
  %11 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %inst, align 4
  %id.i3 = getelementptr inbounds %struct.samsung_usb2_common_phy, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %id.i3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id.i3, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %14, label %exynos4210_isol.exit.exynos4210_phy_pwr.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i4
    i32 2, label %sw.bb3.i
    i32 3, label %sw.bb4.i
  ]

exynos4210_isol.exit.exynos4210_phy_pwr.exit_crit_edge: ; preds = %exynos4210_isol.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %exynos4210_phy_pwr.exit

sw.bb.i:                                          ; preds = %exynos4210_isol.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %exynos4210_phy_pwr.exit

sw.bb2.i4:                                        ; preds = %exynos4210_isol.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !21
  tail call void @arm_heavy_mb() #4
  %reg_phy.i = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %10, i32 0, i32 7
  %16 = ptrtoint ptr %reg_phy.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_phy.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #4, !srcloc !22
  br label %exynos4210_phy_pwr.exit

sw.bb3.i:                                         ; preds = %exynos4210_isol.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %exynos4210_phy_pwr.exit

sw.bb4.i:                                         ; preds = %exynos4210_isol.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %exynos4210_phy_pwr.exit

exynos4210_phy_pwr.exit:                          ; preds = %sw.bb4.i, %sw.bb3.i, %sw.bb2.i4, %sw.bb.i, %exynos4210_isol.exit.exynos4210_phy_pwr.exit_crit_edge
  %phypwr.0.i = phi i32 [ 0, %exynos4210_isol.exit.exynos4210_phy_pwr.exit_crit_edge ], [ 6144, %sw.bb4.i ], [ 1536, %sw.bb3.i ], [ 448, %sw.bb2.i4 ], [ 57, %sw.bb.i ]
  %reg_phy6.i = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %10, i32 0, i32 7
  %18 = ptrtoint ptr %reg_phy6.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_phy6.i, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #4, !srcloc !23
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  %or54.i = or i32 %21, %phypwr.0.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  %22 = tail call i32 @llvm.bswap.i32(i32 %or54.i) #4
  %23 = ptrtoint ptr %reg_phy6.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_phy6.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #4, !srcloc !22
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @exynos4210_usb2_phy_config, !1, !"exynos4210_usb2_phy_config", i1 false, i1 false}
!1 = !{!"../drivers/phy/samsung/phy-exynos4210-usb2.c", i32 252, i32 38}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/phy/samsung/phy-exynos4210-usb2.c", i32 227, i32 13}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/phy/samsung/phy-exynos4210-usb2.c", i32 233, i32 13}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/phy/samsung/phy-exynos4210-usb2.c", i32 239, i32 13}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/phy/samsung/phy-exynos4210-usb2.c", i32 245, i32 13}
!10 = !{ptr @exynos4210_phys, !11, !"exynos4210_phys", i1 false, i1 false}
!11 = !{!"../drivers/phy/samsung/phy-exynos4210-usb2.c", i32 225, i32 45}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{i64 2155118067}
!22 = !{i64 2981054}
!23 = !{i64 2981472}
!24 = !{i64 2155119551}
!25 = !{i64 2155119783}
!26 = !{i64 2155120453}
!27 = !{i64 2155120672}
!28 = !{i64 2155121342}
!29 = !{i64 2155121561}
!30 = !{i64 2155122498}
!31 = !{i64 2155123710}
!32 = !{i64 2155123929}
