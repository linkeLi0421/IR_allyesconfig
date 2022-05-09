; ModuleID = '/llk/IR_all_yes/drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c_pt.bc'
source_filename = "../drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mtk_hdmi_phy_conf = type { i32, i8, ptr, ptr, ptr }

@mtk_hdmi_phy_pll_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @mtk_hdmi_pll_prepare, ptr @mtk_hdmi_pll_unprepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_hdmi_pll_recalc_rate, ptr @mtk_hdmi_pll_round_rate, ptr null, ptr null, ptr null, ptr @mtk_hdmi_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@mtk_hdmi_phy_2701_conf = dso_local global { %struct.mtk_hdmi_phy_conf, [44 x i8] } { %struct.mtk_hdmi_phy_conf { i32 1, i8 1, ptr @mtk_hdmi_phy_pll_ops, ptr @mtk_hdmi_phy_enable_tmds, ptr @mtk_hdmi_phy_disable_tmds }, [44 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author289 = internal constant [63 x i8] c"phy_mtk_hdmi_drv.author=Chunhui Dai <chunhui.dai@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [54 x i8] c"phy_mtk_hdmi_drv.description=MediaTek HDMI PHY Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [60 x i8] c"phy_mtk_hdmi_drv.file=drivers/phy/mediatek/phy-mtk-hdmi-drv\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [32 x i8] c"phy_mtk_hdmi_drv.license=GPL v2\00", section ".modinfo", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.1 = private unnamed_addr constant [21 x i8] c"mtk_hdmi_phy_pll_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 195, i32 29 }
@___asan_gen_.4 = private unnamed_addr constant [23 x i8] c"mtk_hdmi_phy_2701_conf\00", align 1
@___asan_gen_.5 = private constant [46 x i8] c"../drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 239, i32 26 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @mtk_hdmi_phy_pll_ops, ptr @mtk_hdmi_phy_2701_conf], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_hdmi_phy_pll_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_hdmi_phy_2701_conf to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_hdmi_phy_enable_tmds(ptr noundef %hdmi_phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mtk_hdmi_phy_set_bits(ptr noundef %hdmi_phy, i32 noundef 28, i32 noundef 8388608) #3
  tail call void @mtk_hdmi_phy_clear_bits(ptr noundef %hdmi_phy, i32 noundef 24, i32 noundef 4194304) #3
  tail call void @mtk_hdmi_phy_set_bits(ptr noundef %hdmi_phy, i32 noundef 24, i32 noundef 196608) #3
  tail call void @mtk_hdmi_phy_set_bits(ptr noundef %hdmi_phy, i32 noundef 8, i32 noundef 64) #3
  tail call void @usleep_range_state(i32 noundef 80, i32 noundef 100, i32 noundef 2) #3
  tail call void @mtk_hdmi_phy_set_bits(ptr noundef %hdmi_phy, i32 noundef 24, i32 noundef -2147483648) #3
  tail call void @mtk_hdmi_phy_set_bits(ptr noundef %hdmi_phy, i32 noundef 8, i32 noundef 1) #3
  tail call void @mtk_hdmi_phy_set_bits(ptr noundef %hdmi_phy, i32 noundef 0, i32 noundef 983040) #3
  tail call void @usleep_range_state(i32 noundef 80, i32 noundef 100, i32 noundef 2) #3
  tail call void @mtk_hdmi_phy_set_bits(ptr noundef %hdmi_phy, i32 noundef 8, i32 noundef 128) #3
  tail call void @mtk_hdmi_phy_set_bits(ptr noundef %hdmi_phy, i32 noundef 0, i32 noundef 61440) #3
  tail call void @mtk_hdmi_phy_set_bits(ptr noundef %hdmi_phy, i32 noundef 0, i32 noundef 15728640) #3
  tail call void @mtk_hdmi_phy_set_bits(ptr noundef %hdmi_phy, i32 noundef 0, i32 noundef -268435456) #3
  tail call void @usleep_range_state(i32 noundef 80, i32 noundef 100, i32 noundef 2) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_hdmi_phy_disable_tmds(ptr noundef %hdmi_phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mtk_hdmi_phy_clear_bits(ptr noundef %hdmi_phy, i32 noundef 0, i32 noundef -268435456) #3
  tail call void @mtk_hdmi_phy_clear_bits(ptr noundef %hdmi_phy, i32 noundef 0, i32 noundef 15728640) #3
  tail call void @mtk_hdmi_phy_clear_bits(ptr noundef %hdmi_phy, i32 noundef 0, i32 noundef 61440) #3
  tail call void @mtk_hdmi_phy_clear_bits(ptr noundef %hdmi_phy, i32 noundef 8, i32 noundef 128) #3
  tail call void @usleep_range_state(i32 noundef 80, i32 noundef 100, i32 noundef 2) #3
  tail call void @mtk_hdmi_phy_clear_bits(ptr noundef %hdmi_phy, i32 noundef 0, i32 noundef 983040) #3
  tail call void @mtk_hdmi_phy_clear_bits(ptr noundef %hdmi_phy, i32 noundef 8, i32 noundef 1) #3
  tail call void @mtk_hdmi_phy_clear_bits(ptr noundef %hdmi_phy, i32 noundef 24, i32 noundef -2147483648) #3
  tail call void @usleep_range_state(i32 noundef 80, i32 noundef 100, i32 noundef 2) #3
  tail call void @mtk_hdmi_phy_clear_bits(ptr noundef %hdmi_phy, i32 noundef 8, i32 noundef 64) #3
  tail call void @mtk_hdmi_phy_clear_bits(ptr noundef %hdmi_phy, i32 noundef 24, i32 noundef 196608) #3
  tail call void @mtk_hdmi_phy_clear_bits(ptr noundef %hdmi_phy, i32 noundef 24, i32 noundef 4194304) #3
  tail call void @mtk_hdmi_phy_clear_bits(ptr noundef %hdmi_phy, i32 noundef 28, i32 noundef 8388608) #3
  tail call void @usleep_range_state(i32 noundef 80, i32 noundef 100, i32 noundef 2) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_hdmi_pll_prepare(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @to_mtk_hdmi_phy(ptr noundef %hw) #3
  tail call void @mtk_hdmi_phy_set_bits(ptr noundef %call, i32 noundef 28, i32 noundef 8388608) #3
  tail call void @mtk_hdmi_phy_clear_bits(ptr noundef %call, i32 noundef 24, i32 noundef 4194304) #3
  tail call void @mtk_hdmi_phy_set_bits(ptr noundef %call, i32 noundef 24, i32 noundef 196608) #3
  tail call void @mtk_hdmi_phy_set_bits(ptr noundef %call, i32 noundef 8, i32 noundef 64) #3
  tail call void @usleep_range_state(i32 noundef 80, i32 noundef 100, i32 noundef 2) #3
  tail call void @mtk_hdmi_phy_set_bits(ptr noundef %call, i32 noundef 24, i32 noundef -2147483648) #3
  tail call void @mtk_hdmi_phy_set_bits(ptr noundef %call, i32 noundef 8, i32 noundef 1) #3
  tail call void @mtk_hdmi_phy_set_bits(ptr noundef %call, i32 noundef 0, i32 noundef 983040) #3
  tail call void @usleep_range_state(i32 noundef 80, i32 noundef 100, i32 noundef 2) #3
  tail call void @mtk_hdmi_phy_set_bits(ptr noundef %call, i32 noundef 8, i32 noundef 128) #3
  tail call void @mtk_hdmi_phy_set_bits(ptr noundef %call, i32 noundef 0, i32 noundef 61440) #3
  tail call void @mtk_hdmi_phy_set_bits(ptr noundef %call, i32 noundef 0, i32 noundef 15728640) #3
  tail call void @mtk_hdmi_phy_set_bits(ptr noundef %call, i32 noundef 0, i32 noundef -268435456) #3
  tail call void @usleep_range_state(i32 noundef 80, i32 noundef 100, i32 noundef 2) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_hdmi_pll_unprepare(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @to_mtk_hdmi_phy(ptr noundef %hw) #3
  tail call void @mtk_hdmi_phy_clear_bits(ptr noundef %call, i32 noundef 0, i32 noundef -268435456) #3
  tail call void @mtk_hdmi_phy_clear_bits(ptr noundef %call, i32 noundef 0, i32 noundef 15728640) #3
  tail call void @mtk_hdmi_phy_clear_bits(ptr noundef %call, i32 noundef 0, i32 noundef 61440) #3
  tail call void @mtk_hdmi_phy_clear_bits(ptr noundef %call, i32 noundef 8, i32 noundef 128) #3
  tail call void @usleep_range_state(i32 noundef 80, i32 noundef 100, i32 noundef 2) #3
  tail call void @mtk_hdmi_phy_clear_bits(ptr noundef %call, i32 noundef 0, i32 noundef 983040) #3
  tail call void @mtk_hdmi_phy_clear_bits(ptr noundef %call, i32 noundef 8, i32 noundef 1) #3
  tail call void @mtk_hdmi_phy_clear_bits(ptr noundef %call, i32 noundef 24, i32 noundef -2147483648) #3
  tail call void @usleep_range_state(i32 noundef 80, i32 noundef 100, i32 noundef 2) #3
  tail call void @mtk_hdmi_phy_clear_bits(ptr noundef %call, i32 noundef 8, i32 noundef 64) #3
  tail call void @mtk_hdmi_phy_clear_bits(ptr noundef %call, i32 noundef 24, i32 noundef 196608) #3
  tail call void @mtk_hdmi_phy_clear_bits(ptr noundef %call, i32 noundef 24, i32 noundef 4194304) #3
  tail call void @mtk_hdmi_phy_clear_bits(ptr noundef %call, i32 noundef 28, i32 noundef 8388608) #3
  tail call void @usleep_range_state(i32 noundef 80, i32 noundef 100, i32 noundef 2) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_hdmi_pll_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @to_mtk_hdmi_phy(ptr noundef %hw) #3
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !21
  %3 = lshr i32 %2, 10
  %shr = and i32 %3, 3
  %4 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr, label %sw.default [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %div44 = lshr i32 %parent_rate, 1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %div445 = lshr i32 %parent_rate, 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %entry.sw.epilog_crit_edge
  %out_rate.0 = phi i32 [ %div445, %sw.default ], [ %div44, %sw.bb3 ], [ %parent_rate, %entry.sw.epilog_crit_edge ]
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %add.ptr8 = getelementptr i8, ptr %6, i32 24
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #3, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  %and12 = shl i32 %7, 1
  %add = and i32 %and12, 254
  %mul = add nuw nsw i32 %add, 2
  %mul14 = mul i32 %mul, %out_rate.0
  %8 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call, align 4
  %add.ptr18 = getelementptr i8, ptr %9, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #3, !srcloc !20
  %11 = lshr i32 %10, 27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  %and22 = and i32 %11, 3
  %shr24 = lshr i32 %mul14, %and22
  %12 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call, align 4
  %add.ptr28 = getelementptr i8, ptr %13, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #3, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !24
  %15 = and i32 %14, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  %div33 = udiv i32 %shr24, 5
  %spec.select = select i1 %tobool.not, i32 %shr24, i32 %div33
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mtk_hdmi_pll_round_rate(ptr nocapture noundef readnone %hw, i32 noundef returned %rate, ptr nocapture noundef readnone %parent_rate) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 %rate
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_hdmi_pll_set_rate(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @to_mtk_hdmi_phy(ptr noundef %hw) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 64000001, i32 %rate)
  %cmp = icmp ult i32 %rate, 64000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 128000001, i32 %rate)
  %cmp1 = icmp ult i32 %rate, 128000001
  %. = select i1 %cmp1, i32 16, i32 8
  %pos_div.0 = select i1 %cmp, i32 24, i32 %.
  tail call void @mtk_hdmi_phy_set_bits(ptr noundef %call, i32 noundef 24, i32 noundef 786432) #3
  tail call void @mtk_hdmi_phy_set_bits(ptr noundef %call, i32 noundef 24, i32 noundef 196608) #3
  tail call void @mtk_hdmi_phy_set_bits(ptr noundef %call, i32 noundef 8, i32 noundef 2) #3
  tail call void @mtk_hdmi_phy_mask(ptr noundef %call, i32 noundef 24, i32 noundef 4096, i32 noundef 61440) #3
  tail call void @mtk_hdmi_phy_mask(ptr noundef %call, i32 noundef 24, i32 noundef 256, i32 noundef 3840) #3
  tail call void @mtk_hdmi_phy_mask(ptr noundef %call, i32 noundef 8, i32 noundef %pos_div.0, i32 noundef 24) #3
  tail call void @mtk_hdmi_phy_mask(ptr noundef %call, i32 noundef 24, i32 noundef 1048576, i32 noundef 3145728) #3
  tail call void @mtk_hdmi_phy_mask(ptr noundef %call, i32 noundef 24, i32 noundef 318767104, i32 noundef 2130706432) #3
  tail call void @mtk_hdmi_phy_mask(ptr noundef %call, i32 noundef 28, i32 noundef 536870912, i32 noundef 1879048192) #3
  tail call void @mtk_hdmi_phy_mask(ptr noundef %call, i32 noundef 24, i32 noundef 192, i32 noundef 240) #3
  tail call void @mtk_hdmi_phy_mask(ptr noundef %call, i32 noundef 24, i32 noundef 8, i32 noundef 12) #3
  tail call void @mtk_hdmi_phy_mask(ptr noundef %call, i32 noundef 24, i32 noundef 1, i32 noundef 3) #3
  tail call void @mtk_hdmi_phy_clear_bits(ptr noundef %call, i32 noundef 4, i32 noundef 4194304) #3
  tail call void @mtk_hdmi_phy_mask(ptr noundef %call, i32 noundef 4, i32 noundef 786432, i32 noundef 3932160) #3
  tail call void @mtk_hdmi_phy_clear_bits(ptr noundef %call, i32 noundef 0, i32 noundef 251658240) #3
  tail call void @mtk_hdmi_phy_mask(ptr noundef %call, i32 noundef 4, i32 noundef -1610612736, i32 noundef -67108864) #3
  tail call void @mtk_hdmi_phy_mask(ptr noundef %call, i32 noundef 16, i32 noundef 40, i32 noundef -1) #3
  tail call void @mtk_hdmi_phy_mask(ptr noundef %call, i32 noundef 0, i32 noundef 10, i32 noundef 63) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @to_mtk_hdmi_phy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_hdmi_phy_set_bits(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_hdmi_phy_clear_bits(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_hdmi_phy_mask(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @mtk_hdmi_phy_2701_conf, !1, !"mtk_hdmi_phy_2701_conf", i1 false, i1 false}
!1 = !{!"../drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c", i32 239, i32 26}
!2 = !{ptr @__UNIQUE_ID_author289, !3, !"__UNIQUE_ID_author289", i1 false, i1 false}
!3 = !{!"../drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c", i32 247, i32 1}
!4 = !{ptr @__UNIQUE_ID_description290, !5, !"__UNIQUE_ID_description290", i1 false, i1 false}
!5 = !{!"../drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c", i32 248, i32 1}
!6 = !{ptr @__UNIQUE_ID_file291, !7, !"__UNIQUE_ID_file291", i1 false, i1 false}
!7 = !{!"../drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c", i32 249, i32 1}
!8 = !{ptr @__UNIQUE_ID_license292, !7, !"__UNIQUE_ID_license292", i1 false, i1 false}
!9 = !{ptr @mtk_hdmi_phy_pll_ops, !10, !"mtk_hdmi_phy_pll_ops", i1 false, i1 false}
!10 = !{!"../drivers/phy/mediatek/phy-mtk-hdmi-mt2701.c", i32 195, i32 29}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{i64 4590309}
!21 = !{i64 2155158892}
!22 = !{i64 2155159415}
!23 = !{i64 2155159938}
!24 = !{i64 2155160459}
