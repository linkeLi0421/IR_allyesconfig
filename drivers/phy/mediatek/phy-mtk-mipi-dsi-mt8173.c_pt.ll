; ModuleID = '/llk/IR_all_yes/drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8173.c_pt.bc'
source_filename = "../drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8173.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mtk_mipitx_data = type { i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mtk_mipi_tx = type { ptr, ptr, i32, i32, [5 x i32], ptr, %struct.clk_hw, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }

@mtk_mipi_tx_pll_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @mtk_mipi_tx_pll_prepare, ptr @mtk_mipi_tx_pll_unprepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_mipi_tx_pll_recalc_rate, ptr @mtk_mipi_tx_pll_round_rate, ptr null, ptr null, ptr null, ptr @mtk_mipi_tx_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@mt2701_mipitx_data = dso_local constant { %struct.mtk_mipitx_data, [16 x i8] } { %struct.mtk_mipitx_data { i32 768, ptr @mtk_mipi_tx_pll_ops, ptr @mtk_mipi_tx_power_on_signal, ptr @mtk_mipi_tx_power_off_signal }, [16 x i8] zeroinitializer }, align 32
@mt8173_mipitx_data = dso_local constant { %struct.mtk_mipitx_data, [16 x i8] } { %struct.mtk_mipitx_data { i32 0, ptr @mtk_mipi_tx_pll_ops, ptr @mtk_mipi_tx_power_on_signal, ptr @mtk_mipi_tx_power_off_signal }, [16 x i8] zeroinitializer }, align 32
@mtk_mipi_tx_pll_prepare.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 30, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"phy_mtk_mipi_dsi_drv\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mtk_mipi_tx_pll_prepare\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8173.c\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"prepare: %u Hz\0A\00", [16 x i8] zeroinitializer }, align 32
@mtk_mipi_tx_pll_unprepare.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mtk_mipi_tx_pll_unprepare\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"unprepare\0A\00", [21 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant [20 x i8] c"mtk_mipi_tx_pll_ops\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 242, i32 29 }
@___asan_gen_.9 = private unnamed_addr constant [19 x i8] c"mt2701_mipitx_data\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 276, i32 30 }
@___asan_gen_.12 = private unnamed_addr constant [19 x i8] c"mt8173_mipitx_data\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 283, i32 30 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 122, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private constant [50 x i8] c"../drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8173.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 210, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @mtk_mipi_tx_pll_ops, ptr @mt2701_mipitx_data, ptr @mt8173_mipitx_data, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mipi_tx_pll_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_mipitx_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_mipitx_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_mipi_tx_power_on_signal(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @mtk_mipi_tx_set_bits(ptr noundef %1, i32 noundef 4, i32 noundef 1) #4
  tail call void @mtk_mipi_tx_set_bits(ptr noundef %1, i32 noundef 8, i32 noundef 1) #4
  tail call void @mtk_mipi_tx_set_bits(ptr noundef %1, i32 noundef 12, i32 noundef 1) #4
  tail call void @mtk_mipi_tx_set_bits(ptr noundef %1, i32 noundef 16, i32 noundef 1) #4
  tail call void @mtk_mipi_tx_set_bits(ptr noundef %1, i32 noundef 20, i32 noundef 1) #4
  tail call void @mtk_mipi_tx_clear_bits(ptr noundef %1, i32 noundef 64, i32 noundef 2048) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_mipi_tx_power_off_signal(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @mtk_mipi_tx_set_bits(ptr noundef %1, i32 noundef 64, i32 noundef 2048) #4
  tail call void @mtk_mipi_tx_clear_bits(ptr noundef %1, i32 noundef 4, i32 noundef 1) #4
  tail call void @mtk_mipi_tx_clear_bits(ptr noundef %1, i32 noundef 8, i32 noundef 1) #4
  tail call void @mtk_mipi_tx_clear_bits(ptr noundef %1, i32 noundef 12, i32 noundef 1) #4
  tail call void @mtk_mipi_tx_clear_bits(ptr noundef %1, i32 noundef 16, i32 noundef 1) #4
  tail call void @mtk_mipi_tx_clear_bits(ptr noundef %1, i32 noundef 20, i32 noundef 1) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_mipi_tx_pll_prepare(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mtk_mipi_tx_from_clk_hw(ptr noundef %hw) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_mipi_tx_pll_prepare.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_mipi_tx_pll_prepare, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !25

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %data_rate = getelementptr inbounds %struct.mtk_mipi_tx, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %data_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_rate, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_mipi_tx_pll_prepare.__UNIQUE_ID_ddebug289, ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef %3) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %data_rate4 = getelementptr inbounds %struct.mtk_mipi_tx, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %data_rate4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_rate4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 499999999, i32 %5)
  %cmp = icmp ugt i32 %5, 499999999
  br i1 %cmp, label %do.end.if.end26_crit_edge, label %if.else

do.end.if.end26_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 249999999, i32 %5)
  %cmp7 = icmp ugt i32 %5, 249999999
  br i1 %cmp7, label %if.else.if.end26_crit_edge, label %if.else9

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.else9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 124999999, i32 %5)
  %cmp11 = icmp ugt i32 %5, 124999999
  br i1 %cmp11, label %if.else9.if.end26_crit_edge, label %if.else13

if.else9.if.end26_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.else13:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_const_cmp4(i32 62000000, i32 %5)
  %cmp15 = icmp ugt i32 %5, 62000000
  br i1 %cmp15, label %if.else13.if.end26_crit_edge, label %if.else17

if.else13.if.end26_crit_edge:                     ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.else17:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_const_cmp4(i32 49999999, i32 %5)
  %cmp19 = icmp ugt i32 %5, 49999999
  br i1 %cmp19, label %if.else17.if.end26_crit_edge, label %if.else17.cleanup_crit_edge

if.else17.cleanup_crit_edge:                      ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.else17.if.end26_crit_edge:                     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.end26:                                         ; preds = %if.else17.if.end26_crit_edge, %if.else13.if.end26_crit_edge, %if.else9.if.end26_crit_edge, %if.else.if.end26_crit_edge, %do.end.if.end26_crit_edge
  %txdiv.0 = phi i8 [ 1, %do.end.if.end26_crit_edge ], [ 2, %if.else.if.end26_crit_edge ], [ 4, %if.else9.if.end26_crit_edge ], [ 8, %if.else13.if.end26_crit_edge ], [ 16, %if.else17.if.end26_crit_edge ]
  %txdiv0.0 = phi i32 [ 0, %do.end.if.end26_crit_edge ], [ 8, %if.else.if.end26_crit_edge ], [ 16, %if.else9.if.end26_crit_edge ], [ 16, %if.else13.if.end26_crit_edge ], [ 16, %if.else17.if.end26_crit_edge ]
  %txdiv1.0 = phi i32 [ 0, %do.end.if.end26_crit_edge ], [ 0, %if.else.if.end26_crit_edge ], [ 0, %if.else9.if.end26_crit_edge ], [ 32, %if.else13.if.end26_crit_edge ], [ 64, %if.else17.if.end26_crit_edge ]
  tail call void @mtk_mipi_tx_update_bits(ptr noundef %call, i32 noundef 68, i32 noundef 8388579, i32 noundef 4793475) #4
  tail call void @usleep_range_state(i32 noundef 30, i32 noundef 100, i32 noundef 2) #4
  tail call void @mtk_mipi_tx_update_bits(ptr noundef %call, i32 noundef 64, i32 noundef 242, i32 noundef 130) #4
  tail call void @mtk_mipi_tx_set_bits(ptr noundef %call, i32 noundef 0, i32 noundef 3) #4
  tail call void @mtk_mipi_tx_update_bits(ptr noundef %call, i32 noundef 104, i32 noundef 3, i32 noundef 1) #4
  tail call void @mtk_mipi_tx_clear_bits(ptr noundef %call, i32 noundef 80, i32 noundef 1) #4
  %or = or i32 %txdiv1.0, %txdiv0.0
  tail call void @mtk_mipi_tx_update_bits(ptr noundef %call, i32 noundef 80, i32 noundef 126, i32 noundef %or) #4
  %6 = ptrtoint ptr %data_rate4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_rate4, align 4
  %conv30 = zext i32 %7 to i64
  %conv31 = zext i8 %txdiv.0 to i64
  %mul32 = shl nuw nsw i64 %conv31, 25
  %shl33 = mul nuw nsw i64 %mul32, %conv30
  %8 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6543474465196279742, i64 %shl33, i32 0) #7, !srcloc !26
  %asmresult.i.i.i = extractvalue { i64, i32 } %8, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %8, 1
  %9 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6543474465196279742, i64 %shl33, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #7, !srcloc !27
  %asmresult10.i.i.i = extractvalue { i64, i32 } %9, 0
  %div1581.i.i = lshr i64 %asmresult10.i.i.i, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !28
  tail call void @arm_heavy_mb() #4
  %conv38 = trunc i64 %div1581.i.i to i32
  %10 = tail call i32 @llvm.bswap.i32(i32 %conv38)
  %regs = getelementptr inbounds %struct.mtk_mipi_tx, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #4, !srcloc !29
  tail call void @mtk_mipi_tx_set_bits(ptr noundef %call, i32 noundef 84, i32 noundef 1) #4
  tail call void @mtk_mipi_tx_set_bits(ptr noundef %call, i32 noundef 80, i32 noundef 1) #4
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 100, i32 noundef 2) #4
  tail call void @mtk_mipi_tx_clear_bits(ptr noundef %call, i32 noundef 84, i32 noundef 4) #4
  %driver_data = getelementptr inbounds %struct.mtk_mipi_tx, ptr %call, i32 0, i32 5
  %13 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_data, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  tail call void @mtk_mipi_tx_update_bits(ptr noundef %call, i32 noundef 100, i32 noundef 65280, i32 noundef %16) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.else17.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end26 ], [ -22, %if.else17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_mipi_tx_pll_unprepare(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mtk_mipi_tx_from_clk_hw(ptr noundef %hw) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_mipi_tx_pll_unprepare.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_mipi_tx_pll_unprepare, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !25

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_mipi_tx_pll_unprepare.__UNIQUE_ID_ddebug290, ptr noundef %1, ptr noundef nonnull @.str.5) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @mtk_mipi_tx_clear_bits(ptr noundef %call, i32 noundef 80, i32 noundef 1) #4
  tail call void @mtk_mipi_tx_update_bits(ptr noundef %call, i32 noundef 100, i32 noundef 65280, i32 noundef 0) #4
  tail call void @mtk_mipi_tx_update_bits(ptr noundef %call, i32 noundef 104, i32 noundef 3, i32 noundef 2) #4
  tail call void @mtk_mipi_tx_clear_bits(ptr noundef %call, i32 noundef 64, i32 noundef 2) #4
  tail call void @mtk_mipi_tx_clear_bits(ptr noundef %call, i32 noundef 0, i32 noundef 3) #4
  tail call void @mtk_mipi_tx_clear_bits(ptr noundef %call, i32 noundef 68, i32 noundef 3) #4
  tail call void @mtk_mipi_tx_clear_bits(ptr noundef %call, i32 noundef 80, i32 noundef 1022) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_mipi_tx_pll_recalc_rate(ptr noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mtk_mipi_tx_pll_round_rate(ptr nocapture noundef readnone %hw, i32 noundef %rate, ptr nocapture noundef readnone %prate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.umax.i32(i32 %rate, i32 50000000)
  %1 = tail call i32 @llvm.umin.i32(i32 %0, i32 1250000000)
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_mipi_tx_pll_set_rate(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mtk_mipi_tx_from_clk_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_mipi_tx_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_mipi_tx_set_bits(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_mipi_tx_clear_bits(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @mt2701_mipitx_data, !1, !"mt2701_mipitx_data", i1 false, i1 false}
!1 = !{!"../drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8173.c", i32 276, i32 30}
!2 = !{ptr @mt8173_mipitx_data, !3, !"mt8173_mipitx_data", i1 false, i1 false}
!3 = !{!"../drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8173.c", i32 283, i32 30}
!4 = !{ptr @mtk_mipi_tx_pll_ops, !5, !"mtk_mipi_tx_pll_ops", i1 false, i1 false}
!5 = !{!"../drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8173.c", i32 242, i32 29}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8173.c", i32 122, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @mtk_mipi_tx_pll_prepare.__UNIQUE_ID_ddebug289, !7, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8173.c", i32 210, i32 2}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @mtk_mipi_tx_pll_unprepare.__UNIQUE_ID_ddebug290, !13, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{i64 2148729963, i64 2148729968, i64 2148729981, i64 2148730025, i64 2148730059, i64 2148730080}
!26 = !{i64 1153138, i64 1153165, i64 1153187, i64 1153215}
!27 = !{i64 1153546, i64 1153573, i64 1153606, i64 1153627, i64 1153654, i64 1153680}
!28 = !{i64 2155171466}
!29 = !{i64 4589368}
