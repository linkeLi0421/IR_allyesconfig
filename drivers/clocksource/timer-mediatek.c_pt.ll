; ModuleID = '/llk/IR_all_yes/drivers/clocksource/timer-mediatek.c_pt.bc'
source_filename = "../drivers/clocksource/timer-mediatek.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.timer_of = type { i32, ptr, [120 x i8], %struct.clock_event_device, %struct.of_timer_base, %struct.of_timer_irq, %struct.of_timer_clk, ptr, [68 x i8] }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [124 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.of_timer_base = type { ptr, ptr, i32 }
%struct.of_timer_irq = type { i32, i32, i32, ptr, i32, ptr }
%struct.of_timer_clk = type { ptr, ptr, i32, i32, i32 }
%struct.cpumask = type { [1 x i32] }

@__of_table_mtk_mt6577 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6577-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_gpt_init }, section "__timer_of_table", align 4
@__of_table_mtk_mt6765 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6765-timer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_syst_init }, section "__timer_of_table", align 4
@to = internal global %struct.timer_of { i32 7, ptr null, [120 x i8] undef, %struct.clock_event_device { ptr null, ptr null, ptr null, i64 0, i64 0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr @.str, i32 300, i32 0, i32 0, ptr @__cpu_possible_mask, %struct.list_head zeroinitializer, ptr null, [124 x i8] undef }, %struct.of_timer_base zeroinitializer, %struct.of_timer_irq { i32 0, i32 0, i32 0, ptr null, i32 86528, ptr null }, %struct.of_timer_clk zeroinitializer, ptr null, [68 x i8] undef }, align 128
@gpt_sched_reg = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mtk-clkevt\00", [21 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [40 x i8] c"../drivers/clocksource/timer-mediatek.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 274, i32 11 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @__of_table_mtk_mt6577, ptr @__of_table_mtk_mt6765, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_gpt_init(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 3, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 3, i32 9), align 4
  store ptr @mtk_gpt_clkevt_shutdown, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 3, i32 14), align 8
  store ptr @mtk_gpt_clkevt_set_periodic, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 3, i32 11), align 4
  store ptr @mtk_gpt_clkevt_shutdown, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 3, i32 12), align 64
  store ptr @mtk_gpt_clkevt_shutdown, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 3, i32 15), align 4
  store ptr @mtk_gpt_clkevt_next_event, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 3, i32 1), align 4
  store ptr @mtk_gpt_suspend, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 3, i32 17), align 4
  store ptr @mtk_gpt_resume, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 3, i32 18), align 8
  store ptr @mtk_gpt_interrupt, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 5, i32 5), align 32
  %call = tail call i32 @timer_of_init(ptr noundef %node, ptr noundef nonnull @to) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @mtk_gpt_setup(i8 noundef zeroext 2, i8 noundef zeroext 3) #10
  %0 = load ptr, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 4), align 128
  %add.ptr = getelementptr i8, ptr %0, i32 40
  %1 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %node, align 4
  %3 = load i32, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 6, i32 3), align 16
  %call3 = tail call i32 @clocksource_mmio_init(ptr noundef %add.ptr, ptr noundef %2, i32 noundef %3, i32 noundef 300, i32 noundef 32, ptr noundef nonnull @clocksource_mmio_readl_up) #6
  %4 = load ptr, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 4), align 128
  %add.ptr5 = getelementptr i8, ptr %4, i32 40
  store ptr %add.ptr5, ptr @gpt_sched_reg, align 4
  %5 = load i32, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 6, i32 3), align 16
  tail call void @sched_clock_register(ptr noundef nonnull @mtk_gpt_read_sched_clock, i32 noundef 32, i32 noundef %5) #6
  tail call fastcc void @mtk_gpt_setup(i8 noundef zeroext 1, i8 noundef zeroext 1) #10
  %6 = load i32, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 6, i32 3), align 16
  tail call void @clockevents_config_and_register(ptr noundef getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 3), i32 noundef %6, i32 noundef 3, i32 noundef -1) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !19
  tail call void @arm_heavy_mb() #6
  %7 = load ptr, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 4), align 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #6, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !21
  tail call void @arm_heavy_mb() #6
  %8 = load ptr, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 4), align 128
  %add.ptr5.i = getelementptr i8, ptr %8, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 1056964608) #6, !srcloc !20
  %9 = load ptr, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 4), align 128
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !24
  tail call void @arm_heavy_mb() #6
  %11 = or i32 %10, 16777216
  %12 = load ptr, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 4), align 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %11) #6, !srcloc !20
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_syst_init(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 34, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 3, i32 9), align 4
  store ptr @mtk_syst_clkevt_shutdown, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 3, i32 14), align 8
  store ptr @mtk_syst_clkevt_oneshot, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 3, i32 12), align 64
  store ptr @mtk_syst_clkevt_resume, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 3, i32 15), align 4
  store ptr @mtk_syst_clkevt_next_event, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 3, i32 1), align 4
  store ptr @mtk_syst_handler, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 5, i32 5), align 32
  %call = tail call i32 @timer_of_init(ptr noundef %node, ptr noundef nonnull @to) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = load i32, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 6, i32 3), align 16
  tail call void @clockevents_config_and_register(ptr noundef getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 3), i32 noundef %0, i32 noundef 3, i32 noundef -1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_gpt_clkevt_shutdown(ptr nocapture noundef readonly %clk) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %of_base.i.i = getelementptr i8, ptr %clk, i32 256
  %0 = ptrtoint ptr %of_base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_base.i.i, align 128
  %add.ptr.i1 = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1) #6, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !26
  tail call void @arm_heavy_mb() #6
  %3 = and i32 %2, -16777217
  %4 = ptrtoint ptr %of_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_base.i.i, align 128
  %add.ptr6.i = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %3) #6, !srcloc !20
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_gpt_clkevt_set_periodic(ptr nocapture noundef readonly %clk) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %of_base.i.i = getelementptr i8, ptr %clk, i32 256
  %0 = ptrtoint ptr %of_base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_base.i.i, align 128
  %add.ptr.i4 = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4) #6, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !26
  tail call void @arm_heavy_mb() #6
  %3 = and i32 %2, -16777217
  %4 = ptrtoint ptr %of_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_base.i.i, align 128
  %add.ptr6.i = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %3) #6, !srcloc !20
  %period = getelementptr i8, ptr %clk, i32 308
  %6 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %period, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  tail call void @arm_heavy_mb() #6
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #6
  %9 = ptrtoint ptr %of_base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_base.i.i, align 128
  %add.ptr.i6 = getelementptr i8, ptr %10, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 %8) #6, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !28
  tail call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %of_base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_base.i.i, align 128
  %add.ptr.i8 = getelementptr i8, ptr %12, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 16777216) #6, !srcloc !20
  %13 = ptrtoint ptr %of_base.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_base.i.i, align 128
  %add.ptr3.i = getelementptr i8, ptr %14, i32 16
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #6, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  %16 = and i32 %15, -855638017
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !30
  tail call void @arm_heavy_mb() #6
  %17 = or i32 %16, 318767104
  %18 = ptrtoint ptr %of_base.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_base.i.i, align 128
  %add.ptr15.i = getelementptr i8, ptr %19, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %17) #6, !srcloc !20
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_gpt_clkevt_next_event(i32 noundef %event, ptr nocapture noundef readonly %clk) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %of_base.i.i = getelementptr i8, ptr %clk, i32 256
  %0 = ptrtoint ptr %of_base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_base.i.i, align 128
  %add.ptr.i3 = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3) #6, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !26
  tail call void @arm_heavy_mb() #6
  %3 = and i32 %2, -16777217
  %4 = ptrtoint ptr %of_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_base.i.i, align 128
  %add.ptr6.i = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %3) #6, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  tail call void @arm_heavy_mb() #6
  %6 = tail call i32 @llvm.bswap.i32(i32 %event) #6
  %7 = ptrtoint ptr %of_base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_base.i.i, align 128
  %add.ptr.i5 = getelementptr i8, ptr %8, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %6) #6, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !28
  tail call void @arm_heavy_mb() #6
  %9 = ptrtoint ptr %of_base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_base.i.i, align 128
  %add.ptr.i7 = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 16777216) #6, !srcloc !20
  %11 = ptrtoint ptr %of_base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_base.i.i, align 128
  %add.ptr3.i = getelementptr i8, ptr %12, i32 16
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #6, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  %14 = and i32 %13, -855638017
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !30
  tail call void @arm_heavy_mb() #6
  %15 = or i32 %14, 50331648
  %16 = ptrtoint ptr %of_base.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_base.i.i, align 128
  %add.ptr15.i = getelementptr i8, ptr %17, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %15) #6, !srcloc !20
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_gpt_suspend(ptr nocapture noundef readonly %clk) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  %of_base.i = getelementptr i8, ptr %clk, i32 256
  %0 = ptrtoint ptr %of_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_base.i, align 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 0) #6, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !32
  tail call void @arm_heavy_mb() #6
  %2 = ptrtoint ptr %of_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_base.i, align 128
  %add.ptr6 = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 1056964608) #6, !srcloc !20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_gpt_resume(ptr nocapture noundef readonly %clk) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !19
  tail call void @arm_heavy_mb() #6
  %of_base.i.i = getelementptr i8, ptr %clk, i32 256
  %0 = ptrtoint ptr %of_base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_base.i.i, align 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 0) #6, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !21
  tail call void @arm_heavy_mb() #6
  %2 = ptrtoint ptr %of_base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_base.i.i, align 128
  %add.ptr5.i = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 1056964608) #6, !srcloc !20
  %4 = ptrtoint ptr %of_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_base.i.i, align 128
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !24
  tail call void @arm_heavy_mb() #6
  %7 = or i32 %6, 16777216
  %8 = ptrtoint ptr %of_base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_base.i.i, align 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #6, !srcloc !20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_gpt_interrupt(i32 noundef %irq, ptr noundef %dev_id) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !33
  tail call void @arm_heavy_mb() #6
  %of_base.i = getelementptr i8, ptr %dev_id, i32 256
  %0 = ptrtoint ptr %of_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_base.i, align 128
  %add.ptr = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #6, !srcloc !20
  %2 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_id, align 128
  tail call void %3(ptr noundef %dev_id) #6
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @timer_of_init(ptr noundef, ptr noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_gpt_setup(i8 noundef zeroext %timer, i8 noundef zeroext %option) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %0 = load ptr, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 4), align 128
  %conv = zext i8 %timer to i32
  %mul = shl nuw nsw i32 %conv, 4
  %add.ptr = getelementptr i8, ptr %0, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 33554432) #6, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !35
  tail call void @arm_heavy_mb() #6
  %1 = load ptr, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 4), align 128
  %add = or i32 %mul, 4
  %add.ptr6 = getelementptr i8, ptr %1, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 0) #6, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  tail call void @arm_heavy_mb() #6
  %2 = load ptr, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 4), align 128
  %add12 = or i32 %mul, 12
  %add.ptr13 = getelementptr i8, ptr %2, i32 %add12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 0) #6, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  tail call void @arm_heavy_mb() #6
  %3 = shl i8 %option, 4
  %4 = and i8 %3, 48
  %5 = or i8 %4, 1
  %or = zext i8 %5 to i32
  %6 = shl nuw nsw i32 %or, 24
  %7 = load ptr, ptr getelementptr inbounds (%struct.timer_of, ptr @to, i32 0, i32 4), align 128
  %add.ptr20 = getelementptr i8, ptr %7, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %6) #6, !srcloc !20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clocksource_mmio_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clocksource_mmio_readl_up(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mtk_gpt_read_sched_clock() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = load ptr, ptr @gpt_sched_reg, align 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #6, !srcloc !22
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %conv = zext i32 %2 to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_syst_clkevt_shutdown(ptr nocapture noundef readonly %clkevt) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %of_base.i.i = getelementptr i8, ptr %clkevt, i32 256
  %0 = ptrtoint ptr %of_base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_base.i.i, align 128
  %add.ptr.i4 = getelementptr i8, ptr %1, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 16777216) #6, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %2 = ptrtoint ptr %of_base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_base.i.i, align 128
  %add.ptr4.i = getelementptr i8, ptr %3, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 285212672) #6, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %of_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_base.i.i, align 128
  %add.ptr = getelementptr i8, ptr %5, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !20
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mtk_syst_clkevt_oneshot(ptr nocapture noundef readnone %clkevt) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_syst_clkevt_resume(ptr nocapture noundef readonly %clkevt) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %of_base.i.i.i = getelementptr i8, ptr %clkevt, i32 256
  %0 = ptrtoint ptr %of_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_base.i.i.i, align 128
  %add.ptr.i4.i = getelementptr i8, ptr %1, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 16777216) #6, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %2 = ptrtoint ptr %of_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_base.i.i.i, align 128
  %add.ptr4.i.i = getelementptr i8, ptr %3, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 285212672) #6, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %of_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_base.i.i.i, align 128
  %add.ptr.i = getelementptr i8, ptr %5, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !20
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_syst_clkevt_next_event(i32 noundef %ticks, ptr nocapture noundef readonly %clkevt) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  tail call void @arm_heavy_mb() #6
  %of_base.i = getelementptr i8, ptr %clkevt, i32 256
  %0 = ptrtoint ptr %of_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_base.i, align 128
  %add.ptr = getelementptr i8, ptr %1, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #6, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !42
  tail call void @arm_heavy_mb() #6
  %2 = tail call i32 @llvm.bswap.i32(i32 %ticks)
  %3 = ptrtoint ptr %of_base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_base.i, align 128
  %add.ptr6 = getelementptr i8, ptr %4, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %2) #6, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !43
  tail call void @arm_heavy_mb() #6
  %5 = ptrtoint ptr %of_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_base.i, align 128
  %add.ptr11 = getelementptr i8, ptr %6, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 50331648) #6, !srcloc !20
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_syst_handler(i32 noundef %irq, ptr noundef %dev_id) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  tail call void @arm_heavy_mb() #6
  %of_base.i.i = getelementptr i8, ptr %dev_id, i32 256
  %0 = ptrtoint ptr %of_base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_base.i.i, align 128
  %add.ptr.i3 = getelementptr i8, ptr %1, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3, i32 16777216) #6, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %2 = ptrtoint ptr %of_base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_base.i.i, align 128
  %add.ptr4.i = getelementptr i8, ptr %3, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 285212672) #6, !srcloc !20
  %4 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_id, align 128
  tail call void %5(ptr noundef %dev_id) #6
  ret i32 1
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @__of_table_mtk_mt6577, !1, !"__of_table_mtk_mt6577", i1 false, i1 false}
!1 = !{!"../drivers/clocksource/timer-mediatek.c", i32 340, i32 1}
!2 = !{ptr @__of_table_mtk_mt6765, !3, !"__of_table_mtk_mt6765", i1 false, i1 false}
!3 = !{!"../drivers/clocksource/timer-mediatek.c", i32 341, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clocksource/timer-mediatek.c", i32 274, i32 11}
!6 = !{ptr @to, !7, !"to", i1 false, i1 false}
!7 = !{!"../drivers/clocksource/timer-mediatek.c", i32 270, i32 24}
!8 = !{ptr @gpt_sched_reg, !9, !"gpt_sched_reg", i1 false, i1 false}
!9 = !{!"../drivers/clocksource/timer-mediatek.c", i32 73, i32 22}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i64 2152726986}
!20 = !{i64 3988819}
!21 = !{i64 2152727395}
!22 = !{i64 3989237}
!23 = !{i64 2152728099}
!24 = !{i64 2152728475}
!25 = !{i64 2152720890}
!26 = !{i64 2152721158}
!27 = !{i64 2152721654}
!28 = !{i64 2152722235}
!29 = !{i64 2152723116}
!30 = !{i64 2152723475}
!31 = !{i64 2152729013}
!32 = !{i64 2152729422}
!33 = !{i64 2152724103}
!34 = !{i64 2152724849}
!35 = !{i64 2152725399}
!36 = !{i64 2152725959}
!37 = !{i64 2152726480}
!38 = !{i64 2152716217}
!39 = !{i64 2152717001}
!40 = !{i64 2152719737}
!41 = !{i64 2152717763}
!42 = !{i64 2152718331}
!43 = !{i64 2152719049}
