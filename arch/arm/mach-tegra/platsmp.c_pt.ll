; ModuleID = '/llk/IR_all_yes/arch/arm/mach-tegra/platsmp.c_pt.bc'
source_filename = "../arch/arm/mach-tegra/platsmp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.tegra_cpu_car_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@tegra_smp_ops = dso_local local_unnamed_addr constant %struct.smp_operations { ptr null, ptr @tegra_smp_prepare_cpus, ptr @tegra_secondary_init, ptr @tegra_boot_secondary, ptr @tegra_cpu_kill, ptr @tegra_cpu_die, ptr null, ptr null }, section ".init.rodata", align 4
@tegra_cpu_init_mask = internal global { %struct.cpumask, [28 x i8] } zeroinitializer, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4
@tegra_cpu_car_ops = external dso_local local_unnamed_addr global ptr, align 4
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/clk/tegra.h\00", [38 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.2 = private unnamed_addr constant [20 x i8] c"tegra_cpu_init_mask\00", align 1
@___asan_gen_.3 = private constant [33 x i8] c"../arch/arm/mach-tegra/platsmp.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 34, i32 18 }
@___asan_gen_.6 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 108, i32 2 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private unnamed_addr constant [29 x i8] c"../include/linux/clk/tegra.h\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 58, i32 6 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @tegra_cpu_init_mask, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_cpu_init_mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tegra_smp_prepare_cpus(i32 noundef %max_cpus) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not.i.i.i.not = icmp eq i32 %0, 0
  br i1 %cmp.not.i.i.i.not, label %land.rhs.i.i.i, label %entry.cpumask_set_cpu.exit_crit_edge

entry.cpumask_set_cpu.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cpumask_set_cpu.exit

land.rhs.i.i.i:                                   ; preds = %entry
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !18

land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cpumask_set_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 108, i32 noundef 9, ptr noundef null) #3
  br label %cpumask_set_cpu.exit

cpumask_set_cpu.exit:                             ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, %entry.cpumask_set_cpu.exit_crit_edge
  tail call void @_set_bit(i32 noundef 0, ptr noundef nonnull @tegra_cpu_init_mask) #3
  %1 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #6, !srcloc !19
  %and.i.i = and i32 %1, -16711696
  call void @__sanitizer_cov_trace_const_cmp4(i32 1090568336, i32 %and.i.i)
  %cmp.i = icmp eq i32 %and.i.i, 1090568336
  br i1 %cmp.i, label %if.then, label %cpumask_set_cpu.exit.if.end_crit_edge

cpumask_set_cpu.exit.if.end_crit_edge:            ; preds = %cpumask_set_cpu.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %cpumask_set_cpu.exit
  %2 = tail call i32 asm "mrc p15, 4, $0, c15, c0, 0", "=r"() #6, !srcloc !20
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612735, i32 %2)
  %cmp = icmp ugt i32 %2, 1610612735
  br i1 %cmp, label %land.lhs.true, label %cond.false14

land.lhs.true:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 1611661312, i32 %2)
  %cmp3 = icmp ult i32 %2, 1611661312
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %sub = add nsw i32 %2, -1610612736
  %add.ptr = getelementptr i8, ptr inttoptr (i32 -31457280 to ptr), i32 %sub
  br label %cond.end39

cond.false:                                       ; preds = %land.lhs.true
  %3 = and i32 %2, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 1879048192, i32 %3)
  %4 = icmp eq i32 %3, 1879048192
  br i1 %4, label %cond.true10, label %cond.false.cond.end39_crit_edge

cond.false.cond.end39_crit_edge:                  ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end39

cond.true10:                                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #5
  %sub12 = add nsw i32 %2, -1879048192
  %add.ptr13 = getelementptr i8, ptr inttoptr (i32 -33554432 to ptr), i32 %sub12
  br label %cond.end39

cond.false14:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 1342439423, i32 %2)
  %cmp16 = icmp ugt i32 %2, 1342439423
  br i1 %cmp16, label %land.lhs.true17, label %cond.false24

land.lhs.true17:                                  ; preds = %cond.false14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1342455808, i32 %2)
  %cmp19 = icmp ult i32 %2, 1342455808
  br i1 %cmp19, label %cond.true20, label %land.lhs.true17.cond.end39_crit_edge

land.lhs.true17.cond.end39_crit_edge:             ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end39

cond.true20:                                      ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #5
  %sub22 = add nsw i32 %2, -1342439424
  %add.ptr23 = getelementptr i8, ptr inttoptr (i32 -29097984 to ptr), i32 %sub22
  br label %cond.end39

cond.false24:                                     ; preds = %cond.false14
  %5 = and i32 %2, -262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %5)
  %6 = icmp eq i32 %5, 1073741824
  br i1 %6, label %cond.true30, label %cond.false24.cond.end39_crit_edge

cond.false24.cond.end39_crit_edge:                ; preds = %cond.false24
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end39

cond.true30:                                      ; preds = %cond.false24
  call void @__sanitizer_cov_trace_pc() #5
  %sub32 = add nsw i32 %2, -1073741824
  %add.ptr33 = getelementptr i8, ptr inttoptr (i32 -29360128 to ptr), i32 %sub32
  br label %cond.end39

cond.end39:                                       ; preds = %cond.true30, %cond.false24.cond.end39_crit_edge, %cond.true20, %land.lhs.true17.cond.end39_crit_edge, %cond.true10, %cond.false.cond.end39_crit_edge, %cond.true
  %cond40 = phi ptr [ %add.ptr, %cond.true ], [ %add.ptr13, %cond.true10 ], [ %add.ptr23, %cond.true20 ], [ %add.ptr33, %cond.true30 ], [ null, %cond.false24.cond.end39_crit_edge ], [ null, %cond.false.cond.end39_crit_edge ], [ null, %land.lhs.true17.cond.end39_crit_edge ]
  tail call void @scu_enable(ptr noundef %cond40) #3
  br label %if.end

if.end:                                           ; preds = %cond.end39, %cpumask_set_cpu.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_secondary_init(i32 noundef %cpu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %cpu)
  %cmp.not.i.i.i = icmp ugt i32 %0, %cpu
  br i1 %cmp.not.i.i.i, label %entry.cpumask_set_cpu.exit_crit_edge, label %land.rhs.i.i.i

entry.cpumask_set_cpu.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cpumask_set_cpu.exit

land.rhs.i.i.i:                                   ; preds = %entry
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !18

land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cpumask_set_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 108, i32 noundef 9, ptr noundef null) #3
  br label %cpumask_set_cpu.exit

cpumask_set_cpu.exit:                             ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_set_cpu.exit_crit_edge, %entry.cpumask_set_cpu.exit_crit_edge
  tail call void @_set_bit(i32 noundef %cpu, ptr noundef nonnull @tegra_cpu_init_mask) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_boot_secondary(i32 noundef %cpu, ptr nocapture noundef readnone %idle) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i8 @tegra_get_chip_id() #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %call)
  %cmp = icmp eq i8 %call, 32
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arrayidx.i = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tegra_cpu_car_ops to i32))
  %2 = load ptr, ptr @tegra_cpu_car_ops, align 4
  %put_in_reset.i.i = getelementptr inbounds %struct.tegra_cpu_car_ops, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %put_in_reset.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %put_in_reset.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end23.critedge.i.i, !prof !21

do.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 58, i32 noundef 9, ptr noundef null) #3
  br label %tegra_put_cpu_in_reset.exit.i

if.end23.critedge.i.i:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %4(i32 noundef %1) #3
  br label %tegra_put_cpu_in_reset.exit.i

tegra_put_cpu_in_reset.exit.i:                    ; preds = %if.end23.critedge.i.i, %do.end.i.i
  tail call void @flowctrl_write_cpu_halt(i32 noundef %1, i32 noundef 0) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tegra_cpu_car_ops to i32))
  %5 = load ptr, ptr @tegra_cpu_car_ops, align 4
  %enable_clock.i.i = getelementptr inbounds %struct.tegra_cpu_car_ops, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %enable_clock.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enable_clock.i.i, align 4
  %tobool.not.i1.i = icmp eq ptr %7, null
  br i1 %tobool.not.i1.i, label %do.end.i2.i, label %if.end23.critedge.i3.i, !prof !21

do.end.i2.i:                                      ; preds = %tegra_put_cpu_in_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 74, i32 noundef 9, ptr noundef null) #3
  br label %tegra_enable_cpu_clock.exit.i

if.end23.critedge.i3.i:                           ; preds = %tegra_put_cpu_in_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %7(i32 noundef %1) #3
  br label %tegra_enable_cpu_clock.exit.i

tegra_enable_cpu_clock.exit.i:                    ; preds = %if.end23.critedge.i3.i, %do.end.i2.i
  tail call void @flowctrl_write_cpu_csr(i32 noundef %1, i32 noundef 0) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tegra_cpu_car_ops to i32))
  %8 = load ptr, ptr @tegra_cpu_car_ops, align 4
  %out_of_reset.i.i = getelementptr inbounds %struct.tegra_cpu_car_ops, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %out_of_reset.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %out_of_reset.i.i, align 4
  %tobool.not.i4.i = icmp eq ptr %10, null
  br i1 %tobool.not.i4.i, label %do.end.i5.i, label %if.end23.critedge.i6.i, !prof !21

do.end.i5.i:                                      ; preds = %tegra_enable_cpu_clock.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 66, i32 noundef 9, ptr noundef null) #3
  br label %return

if.end23.critedge.i6.i:                           ; preds = %tegra_enable_cpu_clock.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %10(i32 noundef %1) #3
  br label %return

if.end:                                           ; preds = %entry
  %call3 = tail call zeroext i8 @tegra_get_chip_id() #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %call3)
  %cmp5 = icmp eq i8 %call3, 48
  br i1 %cmp5, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %arrayidx.i30 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %cpu
  %11 = ptrtoint ptr %arrayidx.i30 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i30, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tegra_cpu_car_ops to i32))
  %13 = load ptr, ptr @tegra_cpu_car_ops, align 4
  %put_in_reset.i.i31 = getelementptr inbounds %struct.tegra_cpu_car_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %put_in_reset.i.i31 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %put_in_reset.i.i31, align 4
  %tobool.not.i.i32 = icmp eq ptr %15, null
  br i1 %tobool.not.i.i32, label %do.end.i.i33, label %if.end23.critedge.i.i34, !prof !21

do.end.i.i33:                                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 58, i32 noundef 9, ptr noundef null) #3
  br label %tegra_put_cpu_in_reset.exit.i35

if.end23.critedge.i.i34:                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %15(i32 noundef %12) #3
  br label %tegra_put_cpu_in_reset.exit.i35

tegra_put_cpu_in_reset.exit.i35:                  ; preds = %if.end23.critedge.i.i34, %do.end.i.i33
  tail call void @flowctrl_write_cpu_halt(i32 noundef %12, i32 noundef 0) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %12)
  %cmp.not.i.i.i.i = icmp ugt i32 %16, %12
  br i1 %cmp.not.i.i.i.i, label %tegra_put_cpu_in_reset.exit.i35.cpumask_test_cpu.exit.i_crit_edge, label %land.rhs.i.i.i.i

tegra_put_cpu_in_reset.exit.i35.cpumask_test_cpu.exit.i_crit_edge: ; preds = %tegra_put_cpu_in_reset.exit.i35
  call void @__sanitizer_cov_trace_pc() #5
  br label %cpumask_test_cpu.exit.i

land.rhs.i.i.i.i:                                 ; preds = %tegra_put_cpu_in_reset.exit.i35
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpumask_test_cpu.exit.i_crit_edge, label %if.then.i.i.i.i, !prof !18

land.rhs.i.i.i.i.cpumask_test_cpu.exit.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cpumask_test_cpu.exit.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 108, i32 noundef 9, ptr noundef null) #3
  br label %cpumask_test_cpu.exit.i

cpumask_test_cpu.exit.i:                          ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpumask_test_cpu.exit.i_crit_edge, %tegra_put_cpu_in_reset.exit.i35.cpumask_test_cpu.exit.i_crit_edge
  %div1.i.i.i = lshr i32 %12, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @tegra_cpu_init_mask, i32 %div1.i.i.i
  %17 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %12, 31
  %19 = shl nuw i32 1, %and.i.i.i
  %20 = and i32 %18, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %cpumask_test_cpu.exit.i.if.end4.i_crit_edge, label %if.then.i

cpumask_test_cpu.exit.i.if.end4.i_crit_edge:      ; preds = %cpumask_test_cpu.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4.i

if.then.i:                                        ; preds = %cpumask_test_cpu.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -5, %21
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %if.then.i
  %call2.i = tail call zeroext i1 @tegra_pmc_cpu_is_powered(i32 noundef %12) #3
  br i1 %call2.i, label %do.body.i.remove_clamps.i_crit_edge, label %if.end.i

do.body.i.remove_clamps.i_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %remove_clamps.i

if.end.i:                                         ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 2147480) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %23
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.end.i.do.body.i_crit_edge, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4.i

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i

if.end4.i:                                        ; preds = %if.end.i.if.end4.i_crit_edge, %cpumask_test_cpu.exit.i.if.end4.i_crit_edge
  %call5.i = tail call i32 @tegra_pmc_cpu_power_on(i32 noundef %12) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end4.i.remove_clamps.i_crit_edge, label %if.end4.i.return_crit_edge

if.end4.i.return_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end4.i.remove_clamps.i_crit_edge:              ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %remove_clamps.i

remove_clamps.i:                                  ; preds = %if.end4.i.remove_clamps.i_crit_edge, %do.body.i.remove_clamps.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tegra_cpu_car_ops to i32))
  %24 = load ptr, ptr @tegra_cpu_car_ops, align 4
  %enable_clock.i.i36 = getelementptr inbounds %struct.tegra_cpu_car_ops, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %enable_clock.i.i36 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %enable_clock.i.i36, align 4
  %tobool.not.i1.i37 = icmp eq ptr %26, null
  br i1 %tobool.not.i1.i37, label %do.end.i2.i38, label %if.end23.critedge.i3.i39, !prof !21

do.end.i2.i38:                                    ; preds = %remove_clamps.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 74, i32 noundef 9, ptr noundef null) #3
  br label %tegra_enable_cpu_clock.exit.i40

if.end23.critedge.i3.i39:                         ; preds = %remove_clamps.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %26(i32 noundef %12) #3
  br label %tegra_enable_cpu_clock.exit.i40

tegra_enable_cpu_clock.exit.i40:                  ; preds = %if.end23.critedge.i3.i39, %do.end.i2.i38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 2147480) #3
  %call9.i = tail call i32 @tegra_pmc_cpu_remove_clamping(i32 noundef %12) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %tegra_enable_cpu_clock.exit.i40.return_crit_edge

tegra_enable_cpu_clock.exit.i40.return_crit_edge: ; preds = %tegra_enable_cpu_clock.exit.i40
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end12.i:                                       ; preds = %tegra_enable_cpu_clock.exit.i40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 2147480) #3
  tail call void @flowctrl_write_cpu_csr(i32 noundef %12, i32 noundef 0) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tegra_cpu_car_ops to i32))
  %29 = load ptr, ptr @tegra_cpu_car_ops, align 4
  %out_of_reset.i.i41 = getelementptr inbounds %struct.tegra_cpu_car_ops, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %out_of_reset.i.i41 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %out_of_reset.i.i41, align 4
  %tobool.not.i4.i42 = icmp eq ptr %31, null
  br i1 %tobool.not.i4.i42, label %do.end.i5.i43, label %if.end23.critedge.i6.i44, !prof !21

do.end.i5.i43:                                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 66, i32 noundef 9, ptr noundef null) #3
  br label %return

if.end23.critedge.i6.i44:                         ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %31(i32 noundef %12) #3
  br label %return

if.end9:                                          ; preds = %if.end
  %call10 = tail call zeroext i8 @tegra_get_chip_id() #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 53, i8 %call10)
  %cmp12 = icmp eq i8 %call10, 53
  br i1 %cmp12, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end9
  %arrayidx.i45 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %cpu
  %32 = ptrtoint ptr %arrayidx.i45 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i45, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %34 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %33)
  %cmp.not.i.i.i.i46 = icmp ugt i32 %34, %33
  br i1 %cmp.not.i.i.i.i46, label %if.then14.cpumask_test_cpu.exit.i54_crit_edge, label %land.rhs.i.i.i.i48

if.then14.cpumask_test_cpu.exit.i54_crit_edge:    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #5
  br label %cpumask_test_cpu.exit.i54

land.rhs.i.i.i.i48:                               ; preds = %if.then14
  %.b37.i.i.i.i47 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i47, label %land.rhs.i.i.i.i48.cpumask_test_cpu.exit.i54_crit_edge, label %if.then.i.i.i.i49, !prof !18

land.rhs.i.i.i.i48.cpumask_test_cpu.exit.i54_crit_edge: ; preds = %land.rhs.i.i.i.i48
  call void @__sanitizer_cov_trace_pc() #5
  br label %cpumask_test_cpu.exit.i54

if.then.i.i.i.i49:                                ; preds = %land.rhs.i.i.i.i48
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 108, i32 noundef 9, ptr noundef null) #3
  br label %cpumask_test_cpu.exit.i54

cpumask_test_cpu.exit.i54:                        ; preds = %if.then.i.i.i.i49, %land.rhs.i.i.i.i48.cpumask_test_cpu.exit.i54_crit_edge, %if.then14.cpumask_test_cpu.exit.i54_crit_edge
  %div1.i.i.i50 = lshr i32 %33, 5
  %arrayidx.i.i.i51 = getelementptr i32, ptr @tegra_cpu_init_mask, i32 %div1.i.i.i50
  %35 = ptrtoint ptr %arrayidx.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %arrayidx.i.i.i51, align 4
  %and.i.i.i52 = and i32 %33, 31
  %37 = shl nuw i32 1, %and.i.i.i52
  %38 = and i32 %36, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i53 = icmp eq i32 %38, 0
  br i1 %tobool.not.i53, label %if.else.i, label %if.then.i55

if.then.i55:                                      ; preds = %cpumask_test_cpu.exit.i54
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @flowctrl_write_cpu_csr(i32 noundef %33, i32 noundef 1) #3
  tail call void @flowctrl_write_cpu_halt(i32 noundef %33, i32 noundef 1207959552) #3
  br label %return

if.else.i:                                        ; preds = %cpumask_test_cpu.exit.i54
  call void @__sanitizer_cov_trace_pc() #5
  %call1.i = tail call i32 @tegra_pmc_cpu_power_on(i32 noundef %33) #3
  br label %return

if.end16:                                         ; preds = %if.end9
  %call17 = tail call zeroext i8 @tegra_get_chip_id() #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %call17)
  %cmp19 = icmp eq i8 %call17, 64
  br i1 %cmp19, label %if.then21, label %if.end16.return_crit_edge

if.end16.return_crit_edge:                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then21:                                        ; preds = %if.end16
  %arrayidx.i57 = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %cpu
  %39 = ptrtoint ptr %arrayidx.i57 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i57, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %41 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %40)
  %cmp.not.i.i.i.i58 = icmp ugt i32 %41, %40
  br i1 %cmp.not.i.i.i.i58, label %if.then21.cpumask_test_cpu.exit.i66_crit_edge, label %land.rhs.i.i.i.i60

if.then21.cpumask_test_cpu.exit.i66_crit_edge:    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #5
  br label %cpumask_test_cpu.exit.i66

land.rhs.i.i.i.i60:                               ; preds = %if.then21
  %.b37.i.i.i.i59 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i59, label %land.rhs.i.i.i.i60.cpumask_test_cpu.exit.i66_crit_edge, label %if.then.i.i.i.i61, !prof !18

land.rhs.i.i.i.i60.cpumask_test_cpu.exit.i66_crit_edge: ; preds = %land.rhs.i.i.i.i60
  call void @__sanitizer_cov_trace_pc() #5
  br label %cpumask_test_cpu.exit.i66

if.then.i.i.i.i61:                                ; preds = %land.rhs.i.i.i.i60
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 108, i32 noundef 9, ptr noundef null) #3
  br label %cpumask_test_cpu.exit.i66

cpumask_test_cpu.exit.i66:                        ; preds = %if.then.i.i.i.i61, %land.rhs.i.i.i.i60.cpumask_test_cpu.exit.i66_crit_edge, %if.then21.cpumask_test_cpu.exit.i66_crit_edge
  %div1.i.i.i62 = lshr i32 %40, 5
  %arrayidx.i.i.i63 = getelementptr i32, ptr @tegra_cpu_init_mask, i32 %div1.i.i.i62
  %42 = ptrtoint ptr %arrayidx.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %arrayidx.i.i.i63, align 4
  %and.i.i.i64 = and i32 %40, 31
  %44 = shl nuw i32 1, %and.i.i.i64
  %45 = and i32 %43, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i65 = icmp eq i32 %45, 0
  br i1 %tobool.not.i65, label %if.else.i69, label %if.then.i67

if.then.i67:                                      ; preds = %cpumask_test_cpu.exit.i66
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @flowctrl_write_cpu_csr(i32 noundef %40, i32 noundef 1) #3
  tail call void @flowctrl_write_cpu_halt(i32 noundef %40, i32 noundef 1207959552) #3
  br label %return

if.else.i69:                                      ; preds = %cpumask_test_cpu.exit.i66
  call void @__sanitizer_cov_trace_pc() #5
  %call1.i68 = tail call i32 @tegra_pmc_cpu_power_on(i32 noundef %40) #3
  br label %return

return:                                           ; preds = %if.else.i69, %if.then.i67, %if.end16.return_crit_edge, %if.else.i, %if.then.i55, %if.end23.critedge.i6.i44, %do.end.i5.i43, %tegra_enable_cpu_clock.exit.i40.return_crit_edge, %if.end4.i.return_crit_edge, %if.end23.critedge.i6.i, %do.end.i5.i
  %retval.0 = phi i32 [ -22, %if.end16.return_crit_edge ], [ 0, %do.end.i5.i ], [ 0, %if.end23.critedge.i6.i ], [ %call5.i, %if.end4.i.return_crit_edge ], [ %call9.i, %tegra_enable_cpu_clock.exit.i40.return_crit_edge ], [ 0, %do.end.i5.i43 ], [ 0, %if.end23.critedge.i6.i44 ], [ 0, %if.then.i55 ], [ %call1.i, %if.else.i ], [ 0, %if.then.i67 ], [ %call1.i68, %if.else.i69 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_cpu_kill(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_cpu_die(i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scu_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @tegra_get_chip_id() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flowctrl_write_cpu_halt(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flowctrl_write_cpu_csr(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tegra_pmc_cpu_is_powered(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_pmc_cpu_power_on(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_pmc_cpu_remove_clamping(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @tegra_smp_ops, !1, !"tegra_smp_ops", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-tegra/platsmp.c", i32 182, i32 29}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @tegra_cpu_init_mask, !6, !"tegra_cpu_init_mask", i1 false, i1 false}
!6 = !{!"../arch/arm/mach-tegra/platsmp.c", i32 34, i32 18}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../include/linux/clk/tegra.h", i32 58, i32 6}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{i64 2154071551}
!20 = !{i64 6593666}
!21 = !{!"branch_weights", i32 1, i32 2000}
