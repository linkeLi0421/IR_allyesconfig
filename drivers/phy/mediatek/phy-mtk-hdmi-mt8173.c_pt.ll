; ModuleID = '/llk/IR_all_yes/drivers/phy/mediatek/phy-mtk-hdmi-mt8173.c_pt.bc'
source_filename = "../drivers/phy/mediatek/phy-mtk-hdmi-mt8173.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mtk_hdmi_phy_conf = type { i32, i8, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mtk_hdmi_phy = type { ptr, ptr, ptr, ptr, %struct.clk_hw, i32, i8, i8, i8, i8, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }

@mtk_hdmi_phy_pll_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @mtk_hdmi_pll_prepare, ptr @mtk_hdmi_pll_unprepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_hdmi_pll_recalc_rate, ptr @mtk_hdmi_pll_round_rate, ptr null, ptr null, ptr null, ptr @mtk_hdmi_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@mtk_hdmi_phy_8173_conf = dso_local global { %struct.mtk_hdmi_phy_conf, [44 x i8] } { %struct.mtk_hdmi_phy_conf { i32 5, i8 0, ptr @mtk_hdmi_phy_pll_ops, ptr @mtk_hdmi_phy_enable_tmds, ptr @mtk_hdmi_phy_disable_tmds }, [44 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author290 = internal constant [55 x i8] c"phy_mtk_hdmi_drv.author=Jie Qiu <jie.qiu@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [61 x i8] c"phy_mtk_hdmi_drv.description=MediaTek MT8173 HDMI PHY Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [60 x i8] c"phy_mtk_hdmi_drv.file=drivers/phy/mediatek/phy-mtk-hdmi-drv\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [32 x i8] c"phy_mtk_hdmi_drv.license=GPL v2\00", section ".modinfo", align 1
@mtk_hdmi_pll_set_rate.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 41, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"phy_mtk_hdmi_drv\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mtk_hdmi_pll_set_rate\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/phy/mediatek/phy-mtk-hdmi-mt8173.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: %lu Hz, parent: %lu Hz\0A\00", [36 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [21 x i8] c"mtk_hdmi_phy_pll_ops\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 250, i32 29 }
@___asan_gen_.7 = private unnamed_addr constant [23 x i8] c"mtk_hdmi_phy_8173_conf\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 273, i32 26 }
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.20 = private constant [46 x i8] c"../drivers/phy/mediatek/phy-mtk-hdmi-mt8173.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 166, i32 2 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @mtk_hdmi_phy_pll_ops, ptr @mtk_hdmi_phy_8173_conf, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_hdmi_phy_pll_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_hdmi_phy_8173_conf to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_hdmi_phy_enable_tmds(ptr noundef %hdmi_phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mtk_hdmi_phy_set_bits(ptr noundef %hdmi_phy, i32 noundef 12, i32 noundef -15794176) #2
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_hdmi_phy_disable_tmds(ptr noundef %hdmi_phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mtk_hdmi_phy_clear_bits(ptr noundef %hdmi_phy, i32 noundef 12, i32 noundef -15794176) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_hdmi_pll_prepare(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @to_mtk_hdmi_phy(ptr noundef %hw) #2
  tail call void @mtk_hdmi_phy_set_bits(ptr noundef %call, i32 noundef 4, i32 noundef 268435456) #2
  tail call void @mtk_hdmi_phy_set_bits(ptr noundef %call, i32 noundef 0, i32 noundef 786432) #2
  tail call void @mtk_hdmi_phy_clear_bits(ptr noundef %call, i32 noundef 12, i32 noundef 256) #2
  tail call void @mtk_hdmi_phy_set_bits(ptr noundef %call, i32 noundef 4, i32 noundef 16384) #2
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #2
  tail call void @mtk_hdmi_phy_set_bits(ptr noundef %call, i32 noundef 0, i32 noundef -2147483648) #2
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #2
  tail call void @mtk_hdmi_phy_set_bits(ptr noundef %call, i32 noundef 4, i32 noundef 8192) #2
  tail call void @mtk_hdmi_phy_set_bits(ptr noundef %call, i32 noundef 4, i32 noundef 4096) #2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_hdmi_pll_unprepare(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @to_mtk_hdmi_phy(ptr noundef %hw) #2
  tail call void @mtk_hdmi_phy_clear_bits(ptr noundef %call, i32 noundef 4, i32 noundef 4096) #2
  tail call void @mtk_hdmi_phy_clear_bits(ptr noundef %call, i32 noundef 4, i32 noundef 8192) #2
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #2
  tail call void @mtk_hdmi_phy_clear_bits(ptr noundef %call, i32 noundef 0, i32 noundef -2147483648) #2
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #2
  tail call void @mtk_hdmi_phy_clear_bits(ptr noundef %call, i32 noundef 4, i32 noundef 16384) #2
  tail call void @mtk_hdmi_phy_clear_bits(ptr noundef %call, i32 noundef 0, i32 noundef 786432) #2
  tail call void @mtk_hdmi_phy_clear_bits(ptr noundef %call, i32 noundef 4, i32 noundef 268435456) #2
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_hdmi_pll_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @to_mtk_hdmi_phy(ptr noundef %hw) #2
  %pll_rate = getelementptr inbounds %struct.mtk_hdmi_phy, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %pll_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pll_rate, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_hdmi_pll_round_rate(ptr noundef %hw, i32 noundef returned %rate, ptr nocapture noundef writeonly %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @to_mtk_hdmi_phy(ptr noundef %hw) #2
  %pll_rate = getelementptr inbounds %struct.mtk_hdmi_phy, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %pll_rate to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %rate, ptr %pll_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 74250000, i32 %rate)
  %cmp = icmp ugt i32 %rate, 74250000
  %div6 = zext i1 %cmp to i32
  %storemerge = lshr i32 %rate, %div6
  %1 = ptrtoint ptr %parent_rate to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %storemerge, ptr %parent_rate, align 4
  ret i32 %rate
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_hdmi_pll_set_rate(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @to_mtk_hdmi_phy(ptr noundef %hw) #2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_hdmi_pll_set_rate.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_hdmi_pll_set_rate, %if.then)) #2
          to label %do.end [label %if.then], !srcloc !26

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %dev = getelementptr inbounds %struct.mtk_hdmi_phy, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_hdmi_pll_set_rate.__UNIQUE_ID_ddebug289, ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %rate, i32 noundef %parent_rate) #2
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 27000001, i32 %rate)
  %cmp = icmp ult i32 %rate, 27000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 74250001, i32 %rate)
  %cmp5 = icmp ult i32 %rate, 74250001
  %. = select i1 %cmp5, i32 2048, i32 1024
  %div.0 = select i1 %cmp, i32 3072, i32 %.
  %pre_div.0 = select i1 %cmp, i32 0, i32 1048576
  tail call void @mtk_hdmi_phy_mask(ptr noundef %call, i32 noundef 0, i32 noundef %pre_div.0, i32 noundef 3145728) #2
  tail call void @mtk_hdmi_phy_set_bits(ptr noundef %call, i32 noundef 0, i32 noundef 786432) #2
  tail call void @mtk_hdmi_phy_mask(ptr noundef %call, i32 noundef 0, i32 noundef 4352, i32 noundef 65280) #2
  tail call void @mtk_hdmi_phy_mask(ptr noundef %call, i32 noundef 4, i32 noundef %div.0, i32 noundef 3072) #2
  tail call void @mtk_hdmi_phy_mask(ptr noundef %call, i32 noundef 0, i32 noundef 322961408, i32 noundef 2143289344) #2
  tail call void @mtk_hdmi_phy_mask(ptr noundef %call, i32 noundef 4, i32 noundef 1073741824, i32 noundef -536870912) #2
  tail call void @mtk_hdmi_phy_mask(ptr noundef %call, i32 noundef 0, i32 noundef 198, i32 noundef 255) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 165000000, i32 %rate)
  %cmp11 = icmp ult i32 %rate, 165000000
  br i1 %cmp11, label %if.then12, label %if.else13

if.then12:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @mtk_hdmi_phy_clear_bits(ptr noundef %call, i32 noundef 12, i32 noundef 15728640) #2
  %ibias = getelementptr inbounds %struct.mtk_hdmi_phy, ptr %call, i32 0, i32 10
  br label %if.end14

if.else13:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @mtk_hdmi_phy_set_bits(ptr noundef %call, i32 noundef 12, i32 noundef 15728640) #2
  %ibias_up = getelementptr inbounds %struct.mtk_hdmi_phy, ptr %call, i32 0, i32 11
  br label %if.end14

if.end14:                                         ; preds = %if.else13, %if.then12
  %pre_ibias.0 = phi i32 [ 50529027, %if.then12 ], [ 101058054, %if.else13 ]
  %hdmi_ibias.0.in = phi ptr [ %ibias, %if.then12 ], [ %ibias_up, %if.else13 ]
  %imp_en.0 = phi i32 [ 0, %if.then12 ], [ 61440, %if.else13 ]
  %2 = ptrtoint ptr %hdmi_ibias.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %hdmi_ibias.0 = load i32, ptr %hdmi_ibias.0.in, align 4
  tail call void @mtk_hdmi_phy_mask(ptr noundef %call, i32 noundef 16, i32 noundef %pre_ibias.0, i32 noundef 252645135) #2
  tail call void @mtk_hdmi_phy_mask(ptr noundef %call, i32 noundef 12, i32 noundef %imp_en.0, i32 noundef 61440) #2
  %drv_imp_clk = getelementptr inbounds %struct.mtk_hdmi_phy, ptr %call, i32 0, i32 6
  %3 = ptrtoint ptr %drv_imp_clk to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %drv_imp_clk, align 4
  %conv = zext i8 %4 to i32
  %shl22 = shl nuw i32 %conv, 24
  %drv_imp_d2 = getelementptr inbounds %struct.mtk_hdmi_phy, ptr %call, i32 0, i32 7
  %5 = ptrtoint ptr %drv_imp_d2 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %drv_imp_d2, align 1
  %conv23 = zext i8 %6 to i32
  %shl24 = shl nuw nsw i32 %conv23, 16
  %or25 = or i32 %shl24, %shl22
  %drv_imp_d1 = getelementptr inbounds %struct.mtk_hdmi_phy, ptr %call, i32 0, i32 8
  %7 = ptrtoint ptr %drv_imp_d1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %drv_imp_d1, align 2
  %conv26 = zext i8 %8 to i32
  %shl27 = shl nuw nsw i32 %conv26, 8
  %or28 = or i32 %or25, %shl27
  %drv_imp_d0 = getelementptr inbounds %struct.mtk_hdmi_phy, ptr %call, i32 0, i32 9
  %9 = ptrtoint ptr %drv_imp_d0 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %drv_imp_d0, align 1
  %conv29 = zext i8 %10 to i32
  %or31 = or i32 %or28, %conv29
  tail call void @mtk_hdmi_phy_mask(ptr noundef %call, i32 noundef 24, i32 noundef %or31, i32 noundef 1061109567) #2
  %shl32 = shl i32 %hdmi_ibias.0, 24
  %shl33 = shl i32 %hdmi_ibias.0, 16
  %shl35 = shl i32 %hdmi_ibias.0, 8
  %or34 = or i32 %shl33, %hdmi_ibias.0
  %or36 = or i32 %or34, %shl32
  %or38 = or i32 %or36, %shl35
  tail call void @mtk_hdmi_phy_mask(ptr noundef %call, i32 noundef 20, i32 noundef %or38, i32 noundef 1061109567) #2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @to_mtk_hdmi_phy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_hdmi_phy_set_bits(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_hdmi_phy_clear_bits(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_hdmi_phy_mask(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !14, !15, !16}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @mtk_hdmi_phy_8173_conf, !1, !"mtk_hdmi_phy_8173_conf", i1 false, i1 false}
!1 = !{!"../drivers/phy/mediatek/phy-mtk-hdmi-mt8173.c", i32 273, i32 26}
!2 = !{ptr @__UNIQUE_ID_author290, !3, !"__UNIQUE_ID_author290", i1 false, i1 false}
!3 = !{!"../drivers/phy/mediatek/phy-mtk-hdmi-mt8173.c", i32 280, i32 1}
!4 = !{ptr @__UNIQUE_ID_description291, !5, !"__UNIQUE_ID_description291", i1 false, i1 false}
!5 = !{!"../drivers/phy/mediatek/phy-mtk-hdmi-mt8173.c", i32 281, i32 1}
!6 = !{ptr @__UNIQUE_ID_file292, !7, !"__UNIQUE_ID_file292", i1 false, i1 false}
!7 = !{!"../drivers/phy/mediatek/phy-mtk-hdmi-mt8173.c", i32 282, i32 1}
!8 = !{ptr @__UNIQUE_ID_license293, !7, !"__UNIQUE_ID_license293", i1 false, i1 false}
!9 = !{ptr @mtk_hdmi_phy_pll_ops, !10, !"mtk_hdmi_phy_pll_ops", i1 false, i1 false}
!10 = !{!"../drivers/phy/mediatek/phy-mtk-hdmi-mt8173.c", i32 250, i32 29}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/phy/mediatek/phy-mtk-hdmi-mt8173.c", i32 166, i32 2}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @mtk_hdmi_pll_set_rate.__UNIQUE_ID_ddebug289, !12, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{i64 2148730777, i64 2148730782, i64 2148730795, i64 2148730839, i64 2148730873, i64 2148730894}
