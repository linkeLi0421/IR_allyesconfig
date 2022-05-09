; ModuleID = '/llk/IR_all_yes/drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8183.c_pt.bc'
source_filename = "../drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8183.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mtk_mipitx_data = type { i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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

@mtk_mipi_tx_pll_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @mtk_mipi_tx_pll_enable, ptr @mtk_mipi_tx_pll_disable, ptr null, ptr null, ptr null, ptr null, ptr @mtk_mipi_tx_pll_recalc_rate, ptr @mtk_mipi_tx_pll_round_rate, ptr null, ptr null, ptr null, ptr @mtk_mipi_tx_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@mt8183_mipitx_data = dso_local constant { %struct.mtk_mipitx_data, [16 x i8] } { %struct.mtk_mipitx_data { i32 0, ptr @mtk_mipi_tx_pll_ops, ptr @mtk_mipi_tx_power_on_signal, ptr @mtk_mipi_tx_power_off_signal }, [16 x i8] zeroinitializer }, align 32
@mtk_mipi_tx_pll_enable.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 13, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"phy_mtk_mipi_dsi_drv\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mtk_mipi_tx_pll_enable\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8183.c\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"enable: %u bps\0A\00", [16 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.4 = private unnamed_addr constant [20 x i8] c"mtk_mipi_tx_pll_ops\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 104, i32 29 }
@___asan_gen_.7 = private unnamed_addr constant [19 x i8] c"mt8183_mipitx_data\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 173, i32 30 }
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.20 = private constant [50 x i8] c"../drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8183.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 52, i32 2 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @mtk_mipi_tx_pll_ops, ptr @mt8183_mipitx_data, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mipi_tx_pll_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_mipitx_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }]
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  %regs = getelementptr inbounds %struct.mtk_mipi_tx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -2147418112) #4, !srcloc !20
  tail call void @usleep_range_state(i32 noundef 30, i32 noundef 100, i32 noundef 2) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !21
  tail call void @arm_heavy_mb() #4
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 -1073741824) #4, !srcloc !20
  tail call void @mtk_mipi_tx_clear_bits(ptr noundef %1, i32 noundef 580, i32 noundef 1) #4
  tail call void @mtk_mipi_tx_clear_bits(ptr noundef %1, i32 noundef 1092, i32 noundef 1) #4
  tail call void @mtk_mipi_tx_clear_bits(ptr noundef %1, i32 noundef 324, i32 noundef 1) #4
  tail call void @mtk_mipi_tx_clear_bits(ptr noundef %1, i32 noundef 1348, i32 noundef 1) #4
  tail call void @mtk_mipi_tx_clear_bits(ptr noundef %1, i32 noundef 836, i32 noundef 1) #4
  %mipitx_drive = getelementptr inbounds %struct.mtk_mipi_tx, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %mipitx_drive to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mipitx_drive, align 4
  %sub = add i32 %7, -3000
  %div = udiv i32 %sub, 200
  %shl = shl nuw nsw i32 %div, 6
  tail call void @mtk_mipi_tx_update_bits(ptr noundef %1, i32 noundef 16, i32 noundef 960, i32 noundef %shl) #4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end12.i.for.body.i_crit_edge, %entry
  %i.041.i = phi i32 [ 0, %entry ], [ %inc23.i, %if.end12.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mtk_mipi_tx, ptr %1, i32 0, i32 4, i32 %i.041.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %9, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp1.i = icmp eq i32 %and.i, 0
  br i1 %cmp1.i, label %if.then.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %or.i = or i32 %9, 16
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or.i, ptr %arrayidx.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %13 = and i32 %12, 992
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp7.i = icmp eq i32 %13, 0
  br i1 %cmp7.i, label %if.then8.i, label %if.end.i.if.end12.i_crit_edge

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %or11.i = or i32 %12, 512
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or11.i, ptr %arrayidx.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then8.i, %if.end.i.if.end12.i_crit_edge
  %add.i = shl i32 %i.041.i, 8
  %mul.i = add nuw nsw i32 %add.i, 256
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  %and21.i = and i32 %16, 1
  tail call void @mtk_mipi_tx_update_bits(ptr noundef %1, i32 noundef %mul.i, i32 noundef 1, i32 noundef %and21.i) #4
  %add17.1.i = add nuw nsw i32 %add.i, 260
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  %shr20.1.i = lshr i32 %18, 1
  %and21.1.i = and i32 %shr20.1.i, 1
  tail call void @mtk_mipi_tx_update_bits(ptr noundef %1, i32 noundef %add17.1.i, i32 noundef 1, i32 noundef %and21.1.i) #4
  %add17.2.i = add nuw nsw i32 %add.i, 264
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i, align 4
  %shr20.2.i = lshr i32 %20, 2
  %and21.2.i = and i32 %shr20.2.i, 1
  tail call void @mtk_mipi_tx_update_bits(ptr noundef %1, i32 noundef %add17.2.i, i32 noundef 1, i32 noundef %and21.2.i) #4
  %add17.3.i = add nuw nsw i32 %add.i, 268
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  %shr20.3.i = lshr i32 %22, 3
  %and21.3.i = and i32 %shr20.3.i, 1
  tail call void @mtk_mipi_tx_update_bits(ptr noundef %1, i32 noundef %add17.3.i, i32 noundef 1, i32 noundef %and21.3.i) #4
  %add17.4.i = add nuw nsw i32 %add.i, 272
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i, align 4
  %shr20.4.i = lshr i32 %24, 4
  %and21.4.i = and i32 %shr20.4.i, 1
  tail call void @mtk_mipi_tx_update_bits(ptr noundef %1, i32 noundef %add17.4.i, i32 noundef 1, i32 noundef %and21.4.i) #4
  %add17.5.i = add nuw nsw i32 %add.i, 276
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i, align 4
  %shr20.5.i = lshr i32 %26, 5
  %and21.5.i = and i32 %shr20.5.i, 1
  tail call void @mtk_mipi_tx_update_bits(ptr noundef %1, i32 noundef %add17.5.i, i32 noundef 1, i32 noundef %and21.5.i) #4
  %add17.6.i = add nuw nsw i32 %add.i, 280
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i, align 4
  %shr20.6.i = lshr i32 %28, 6
  %and21.6.i = and i32 %shr20.6.i, 1
  tail call void @mtk_mipi_tx_update_bits(ptr noundef %1, i32 noundef %add17.6.i, i32 noundef 1, i32 noundef %and21.6.i) #4
  %add17.7.i = add nuw nsw i32 %add.i, 284
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i, align 4
  %shr20.7.i = lshr i32 %30, 7
  %and21.7.i = and i32 %shr20.7.i, 1
  tail call void @mtk_mipi_tx_update_bits(ptr noundef %1, i32 noundef %add17.7.i, i32 noundef 1, i32 noundef %and21.7.i) #4
  %add17.8.i = add nuw nsw i32 %add.i, 288
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i, align 4
  %shr20.8.i = lshr i32 %32, 8
  %and21.8.i = and i32 %shr20.8.i, 1
  tail call void @mtk_mipi_tx_update_bits(ptr noundef %1, i32 noundef %add17.8.i, i32 noundef 1, i32 noundef %and21.8.i) #4
  %add17.9.i = add nuw nsw i32 %add.i, 292
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i, align 4
  %shr20.9.i = lshr i32 %34, 9
  %and21.9.i = and i32 %shr20.9.i, 1
  tail call void @mtk_mipi_tx_update_bits(ptr noundef %1, i32 noundef %add17.9.i, i32 noundef 1, i32 noundef %and21.9.i) #4
  %inc23.i = add nuw nsw i32 %i.041.i, 1
  %exitcond.not.i = icmp eq i32 %inc23.i, 5
  br i1 %exitcond.not.i, label %mtk_mipi_tx_config_calibration_data.exit, label %if.end12.i.for.body.i_crit_edge

if.end12.i.for.body.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

mtk_mipi_tx_config_calibration_data.exit:         ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mtk_mipi_tx_set_bits(ptr noundef %1, i32 noundef 808, i32 noundef 1) #4
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
  tail call void @mtk_mipi_tx_set_bits(ptr noundef %1, i32 noundef 580, i32 noundef 1) #4
  tail call void @mtk_mipi_tx_set_bits(ptr noundef %1, i32 noundef 1092, i32 noundef 1) #4
  tail call void @mtk_mipi_tx_set_bits(ptr noundef %1, i32 noundef 324, i32 noundef 1) #4
  tail call void @mtk_mipi_tx_set_bits(ptr noundef %1, i32 noundef 1348, i32 noundef 1) #4
  tail call void @mtk_mipi_tx_set_bits(ptr noundef %1, i32 noundef 836, i32 noundef 1) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  %regs = getelementptr inbounds %struct.mtk_mipi_tx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -2147418112) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 65536) #4, !srcloc !20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_mipi_tx_pll_enable(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mtk_mipi_tx_from_clk_hw(ptr noundef %hw) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_mipi_tx_pll_enable.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_mipi_tx_pll_enable, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !24

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %data_rate = getelementptr inbounds %struct.mtk_mipi_tx, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %data_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_rate, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_mipi_tx_pll_enable.__UNIQUE_ID_ddebug289, ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef %3) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %data_rate4 = getelementptr inbounds %struct.mtk_mipi_tx, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %data_rate4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_rate4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1999999999, i32 %5)
  %cmp = icmp ugt i32 %5, 1999999999
  br i1 %cmp, label %do.end.if.end26_crit_edge, label %if.else

do.end.if.end26_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999999, i32 %5)
  %cmp7 = icmp ugt i32 %5, 999999999
  br i1 %cmp7, label %if.else.if.end26_crit_edge, label %if.else9

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.else9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 499999999, i32 %5)
  %cmp11 = icmp ugt i32 %5, 499999999
  br i1 %cmp11, label %if.else9.if.end26_crit_edge, label %if.else13

if.else9.if.end26_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.else13:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000000, i32 %5)
  %cmp15 = icmp ugt i32 %5, 250000000
  br i1 %cmp15, label %if.else13.if.end26_crit_edge, label %if.else17

if.else13.if.end26_crit_edge:                     ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.else17:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_const_cmp4(i32 124999999, i32 %5)
  %cmp19 = icmp ugt i32 %5, 124999999
  br i1 %cmp19, label %if.else17.if.end26_crit_edge, label %if.else17.cleanup_crit_edge

if.else17.cleanup_crit_edge:                      ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.else17.if.end26_crit_edge:                     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.end26:                                         ; preds = %if.else17.if.end26_crit_edge, %if.else13.if.end26_crit_edge, %if.else9.if.end26_crit_edge, %if.else.if.end26_crit_edge, %do.end.if.end26_crit_edge
  %txdiv.0 = phi i32 [ 16777216, %do.end.if.end26_crit_edge ], [ 33554432, %if.else.if.end26_crit_edge ], [ 67108864, %if.else9.if.end26_crit_edge ], [ 134217728, %if.else13.if.end26_crit_edge ], [ 268435456, %if.else17.if.end26_crit_edge ]
  %txdiv0.0 = phi i32 [ 0, %do.end.if.end26_crit_edge ], [ 256, %if.else.if.end26_crit_edge ], [ 512, %if.else9.if.end26_crit_edge ], [ 768, %if.else13.if.end26_crit_edge ], [ 1024, %if.else17.if.end26_crit_edge ]
  tail call void @mtk_mipi_tx_clear_bits(ptr noundef %call, i32 noundef 60, i32 noundef 3072) #4
  tail call void @mtk_mipi_tx_set_bits(ptr noundef %call, i32 noundef 40, i32 noundef 1) #4
  tail call void @mtk_mipi_tx_clear_bits(ptr noundef %call, i32 noundef 48, i32 noundef 16) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #4
  tail call void @mtk_mipi_tx_clear_bits(ptr noundef %call, i32 noundef 40, i32 noundef 2) #4
  %7 = ptrtoint ptr %data_rate4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_rate4, align 4
  %conv = zext i32 %8 to i64
  %mul = zext i32 %txdiv.0 to i64
  %shl = mul nuw nsw i64 %mul, %conv
  %9 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6543474465196279742, i64 %shl, i32 0) #7, !srcloc !25
  %asmresult.i.i.i = extractvalue { i64, i32 } %9, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %9, 1
  %10 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6543474465196279742, i64 %shl, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #7, !srcloc !26
  %asmresult10.i.i.i = extractvalue { i64, i32 } %10, 0
  %div1581.i.i = lshr i64 %asmresult10.i.i.i, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  %conv33 = trunc i64 %div1581.i.i to i32
  %11 = tail call i32 @llvm.bswap.i32(i32 %conv33)
  %regs = getelementptr inbounds %struct.mtk_mipi_tx, ptr %call, i32 0, i32 1
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %11) #4, !srcloc !20
  tail call void @mtk_mipi_tx_update_bits(ptr noundef %call, i32 noundef 48, i32 noundef 1792, i32 noundef %txdiv0.0) #4
  tail call void @mtk_mipi_tx_set_bits(ptr noundef %call, i32 noundef 48, i32 noundef 16) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.else17.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end26 ], [ -22, %if.else17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_mipi_tx_pll_disable(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mtk_mipi_tx_from_clk_hw(ptr noundef %hw) #4
  tail call void @mtk_mipi_tx_clear_bits(ptr noundef %call, i32 noundef 48, i32 noundef 16) #4
  tail call void @mtk_mipi_tx_set_bits(ptr noundef %call, i32 noundef 40, i32 noundef 2) #4
  tail call void @mtk_mipi_tx_clear_bits(ptr noundef %call, i32 noundef 40, i32 noundef 1) #4
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
  %1 = tail call i32 @llvm.umin.i32(i32 %0, i32 1600000000)
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_mipi_tx_pll_set_rate(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mtk_mipi_tx_from_clk_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_mipi_tx_clear_bits(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_mipi_tx_set_bits(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_mipi_tx_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @mt8183_mipitx_data, !1, !"mt8183_mipitx_data", i1 false, i1 false}
!1 = !{!"../drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8183.c", i32 173, i32 30}
!2 = !{ptr @mtk_mipi_tx_pll_ops, !3, !"mtk_mipi_tx_pll_ops", i1 false, i1 false}
!3 = !{!"../drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8183.c", i32 104, i32 29}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/phy/mediatek/phy-mtk-mipi-dsi-mt8183.c", i32 52, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @mtk_mipi_tx_pll_enable.__UNIQUE_ID_ddebug289, !5, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i64 2155183427}
!20 = !{i64 4586355}
!21 = !{i64 2155184213}
!22 = !{i64 2155185996}
!23 = !{i64 2155186670}
!24 = !{i64 2148726950, i64 2148726955, i64 2148726968, i64 2148727012, i64 2148727046, i64 2148727067}
!25 = !{i64 1150125, i64 1150152, i64 1150174, i64 1150202}
!26 = !{i64 1150533, i64 1150560, i64 1150593, i64 1150614, i64 1150641, i64 1150667}
!27 = !{i64 2155168209}
