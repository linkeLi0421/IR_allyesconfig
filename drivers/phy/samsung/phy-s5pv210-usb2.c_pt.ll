; ModuleID = '/llk/IR_all_yes/drivers/phy/samsung/phy-s5pv210-usb2.c_pt.bc'
source_filename = "../drivers/phy/samsung/phy-s5pv210-usb2.c"
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

@s5pv210_phys = internal constant { [2 x %struct.samsung_usb2_common_phy], [32 x i8] } { [2 x %struct.samsung_usb2_common_phy] [%struct.samsung_usb2_common_phy { ptr @s5pv210_power_on, ptr @s5pv210_power_off, i32 0, ptr @.str }, %struct.samsung_usb2_common_phy { ptr @s5pv210_power_on, ptr @s5pv210_power_off, i32 1, ptr @.str.1 }], [32 x i8] zeroinitializer }, align 32
@s5pv210_usb2_phy_config = dso_local constant { %struct.samsung_usb2_phy_config, [16 x i8] } { %struct.samsung_usb2_phy_config { ptr @s5pv210_phys, ptr @s5pv210_rate_to_clk, i32 2, i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"device\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"host\00", [27 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 12000000, i64 24000000, i64 48000000]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.5 = private unnamed_addr constant [13 x i8] c"s5pv210_phys\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 169, i32 45 }
@___asan_gen_.8 = private unnamed_addr constant [24 x i8] c"s5pv210_usb2_phy_config\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 184, i32 38 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 171, i32 13 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.15 = private constant [42 x i8] c"../drivers/phy/samsung/phy-s5pv210-usb2.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 177, i32 13 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @s5pv210_phys, ptr @s5pv210_usb2_phy_config, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5pv210_phys to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5pv210_usb2_phy_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @s5pv210_rate_to_clk(i32 noundef %rate, ptr nocapture noundef writeonly %reg) #0 align 64 {
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
define internal i32 @s5pv210_power_on(ptr nocapture noundef readonly %inst) #1 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %5, label %entry.s5pv210_isol.exit_crit_edge [
    i32 0, label %entry.sw.epilog.i_crit_edge
    i32 1, label %sw.bb2.i
  ]

entry.sw.epilog.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

entry.s5pv210_isol.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %s5pv210_isol.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb2.i, %entry.sw.epilog.i_crit_edge
  %mask.0.i = phi i32 [ 2, %sw.bb2.i ], [ 1, %entry.sw.epilog.i_crit_edge ]
  %reg_pmu.i = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %reg_pmu.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_pmu.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 26636, i32 noundef %mask.0.i, i32 noundef %mask.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %s5pv210_isol.exit

s5pv210_isol.exit:                                ; preds = %sw.epilog.i, %entry.s5pv210_isol.exit_crit_edge
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
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %14, label %s5pv210_isol.exit.s5pv210_phy_pwr.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i4
  ]

s5pv210_isol.exit.s5pv210_phy_pwr.exit_crit_edge: ; preds = %s5pv210_isol.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %s5pv210_phy_pwr.exit

sw.bb.i:                                          ; preds = %s5pv210_isol.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %s5pv210_phy_pwr.exit

sw.bb2.i4:                                        ; preds = %s5pv210_isol.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %s5pv210_phy_pwr.exit

s5pv210_phy_pwr.exit:                             ; preds = %sw.bb2.i4, %sw.bb.i, %s5pv210_isol.exit.s5pv210_phy_pwr.exit_crit_edge
  %phypwr.0.i = phi i32 [ -1, %s5pv210_isol.exit.s5pv210_phy_pwr.exit_crit_edge ], [ -193, %sw.bb2.i4 ], [ -26, %sw.bb.i ]
  %rstbits.0.i = phi i32 [ 0, %s5pv210_isol.exit.s5pv210_phy_pwr.exit_crit_edge ], [ 24, %sw.bb2.i4 ], [ 1, %sw.bb.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  %ref_reg_val.i = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %10, i32 0, i32 5
  %16 = ptrtoint ptr %ref_reg_val.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ref_reg_val.i, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #4
  %reg_phy.i = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %10, i32 0, i32 7
  %19 = ptrtoint ptr %reg_phy.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_phy.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %18) #4, !srcloc !18
  %21 = ptrtoint ptr %reg_phy.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_phy.i, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #4, !srcloc !19
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  %and.i = and i32 %24, %phypwr.0.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !21
  tail call void @arm_heavy_mb() #4
  %25 = tail call i32 @llvm.bswap.i32(i32 %and.i) #4
  %26 = ptrtoint ptr %reg_phy.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_phy.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #4, !srcloc !18
  %28 = ptrtoint ptr %reg_phy.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_phy.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %29, i32 8
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i) #4, !srcloc !19
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  %or.i = or i32 %31, %rstbits.0.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %32 = tail call i32 @llvm.bswap.i32(i32 %or.i) #4
  %33 = ptrtoint ptr %reg_phy.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg_phy.i, align 4
  %add.ptr22.i = getelementptr i8, ptr %34, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 %32) #4, !srcloc !18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 2147480) #4
  %neg23.i = xor i32 %rstbits.0.i, -1
  %and24.i = and i32 %31, %neg23.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %36 = tail call i32 @llvm.bswap.i32(i32 %and24.i) #4
  %37 = ptrtoint ptr %reg_phy.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg_phy.i, align 4
  %add.ptr29.i = getelementptr i8, ptr %38, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i, i32 %36) #4, !srcloc !18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 17179840) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5pv210_power_off(ptr nocapture noundef readonly %inst) #1 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %switch.selectcmp = icmp eq i32 %5, 1
  %switch.select = select i1 %switch.selectcmp, i32 192, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %switch.selectcmp5 = icmp eq i32 %5, 0
  %switch.select6 = select i1 %switch.selectcmp5, i32 25, i32 %switch.select
  %reg_phy32.i = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %reg_phy32.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_phy32.i, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #4, !srcloc !19
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  %or37.i = or i32 %9, %switch.select6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !26
  tail call void @arm_heavy_mb() #4
  %10 = tail call i32 @llvm.bswap.i32(i32 %or37.i) #4
  %11 = ptrtoint ptr %reg_phy32.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_phy32.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #4, !srcloc !18
  %13 = ptrtoint ptr %drv1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %drv1.i, align 4
  %15 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %inst, align 4
  %id.i3 = getelementptr inbounds %struct.samsung_usb2_common_phy, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %id.i3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id.i3, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %18, label %entry.s5pv210_isol.exit_crit_edge [
    i32 0, label %entry.sw.epilog.i_crit_edge
    i32 1, label %sw.bb2.i4
  ]

entry.sw.epilog.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

entry.s5pv210_isol.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %s5pv210_isol.exit

sw.bb2.i4:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb2.i4, %entry.sw.epilog.i_crit_edge
  %mask.0.i = phi i32 [ 2, %sw.bb2.i4 ], [ 1, %entry.sw.epilog.i_crit_edge ]
  %reg_pmu.i = getelementptr inbounds %struct.samsung_usb2_phy_driver, ptr %14, i32 0, i32 8
  %20 = ptrtoint ptr %reg_pmu.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_pmu.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 26636, i32 noundef %mask.0.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %s5pv210_isol.exit

s5pv210_isol.exit:                                ; preds = %sw.epilog.i, %entry.s5pv210_isol.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @s5pv210_usb2_phy_config, !1, !"s5pv210_usb2_phy_config", i1 false, i1 false}
!1 = !{!"../drivers/phy/samsung/phy-s5pv210-usb2.c", i32 184, i32 38}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/phy/samsung/phy-s5pv210-usb2.c", i32 171, i32 13}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/phy/samsung/phy-s5pv210-usb2.c", i32 177, i32 13}
!6 = !{ptr @s5pv210_phys, !7, !"s5pv210_phys", i1 false, i1 false}
!7 = !{!"../drivers/phy/samsung/phy-s5pv210-usb2.c", i32 169, i32 45}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i64 2155114974}
!18 = !{i64 2978456}
!19 = !{i64 2978874}
!20 = !{i64 2155115683}
!21 = !{i64 2155115902}
!22 = !{i64 2155116572}
!23 = !{i64 2155116791}
!24 = !{i64 2155117728}
!25 = !{i64 2155118940}
!26 = !{i64 2155119159}
