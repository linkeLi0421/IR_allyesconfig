; ModuleID = '/llk/IR_all_yes/drivers/cpuidle/governors/menu.c_pt.bc'
source_filename = "../drivers/cpuidle/governors/menu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.menu_device = type { i32, i32, i64, i32, [12 x i32], [8 x i32], i32 }
%struct.cpuidle_governor = type { [16 x i8], %struct.list_head, i32, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.cpuidle_device = type { i8, i32, i64, i32, i64, i64, i64, [10 x %struct.cpuidle_state_usage], [10 x ptr], ptr, ptr, %struct.list_head, %struct.cpumask, ptr }
%struct.cpuidle_state_usage = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.cpumask = type { [1 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.cpuidle_driver = type { ptr, ptr, i8, [10 x %struct.cpuidle_state], i32, i32, ptr, ptr }
%struct.cpuidle_state = type { [16 x i8], [32 x i8], i64, i64, i32, i32, i32, i32, ptr, ptr, ptr }

@__initcall__kmod_menu__156_579_init_menu2 = internal global ptr @init_menu, section ".initcall2.init", align 4
@__pcpu_unique_menu_devices = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@menu_devices = weak dso_local global %struct.menu_device zeroinitializer, section ".data..percpu", align 8
@menu_governor = internal global { %struct.cpuidle_governor, [52 x i8] } { %struct.cpuidle_governor { [16 x i8] c"menu\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, i32 20, ptr @menu_enable_device, ptr null, ptr @menu_select, ptr @menu_reflect }, [52 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@___asan_gen_.1 = private unnamed_addr constant [14 x i8] c"menu_governor\00", align 1
@___asan_gen_.2 = private constant [36 x i8] c"../drivers/cpuidle/governors/menu.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 563, i32 32 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @__initcall__kmod_menu__156_579_init_menu2, ptr @menu_governor], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @menu_governor to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_menu() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cpuidle_register_governor(ptr noundef nonnull @menu_governor) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpuidle_register_governor(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @menu_enable_device(ptr nocapture noundef readnone %drv, ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cpu = getelementptr inbounds %struct.cpuidle_device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add = add i32 %3, ptrtoint (ptr @menu_devices to i32)
  %4 = inttoptr i32 %add to ptr
  %5 = call ptr @memset(ptr %4, i32 0, i32 104)
  %arrayidx2 = getelementptr %struct.menu_device, ptr %4, i32 0, i32 4, i32 0
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8192, ptr %arrayidx2, align 4
  %arrayidx2.1 = getelementptr %struct.menu_device, ptr %4, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 8192, ptr %arrayidx2.1, align 4
  %arrayidx2.2 = getelementptr %struct.menu_device, ptr %4, i32 0, i32 4, i32 2
  %8 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 8192, ptr %arrayidx2.2, align 4
  %arrayidx2.3 = getelementptr %struct.menu_device, ptr %4, i32 0, i32 4, i32 3
  %9 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 8192, ptr %arrayidx2.3, align 4
  %arrayidx2.4 = getelementptr %struct.menu_device, ptr %4, i32 0, i32 4, i32 4
  %10 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 8192, ptr %arrayidx2.4, align 4
  %arrayidx2.5 = getelementptr %struct.menu_device, ptr %4, i32 0, i32 4, i32 5
  %11 = ptrtoint ptr %arrayidx2.5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 8192, ptr %arrayidx2.5, align 4
  %arrayidx2.6 = getelementptr %struct.menu_device, ptr %4, i32 0, i32 4, i32 6
  %12 = ptrtoint ptr %arrayidx2.6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 8192, ptr %arrayidx2.6, align 4
  %arrayidx2.7 = getelementptr %struct.menu_device, ptr %4, i32 0, i32 4, i32 7
  %13 = ptrtoint ptr %arrayidx2.7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8192, ptr %arrayidx2.7, align 4
  %arrayidx2.8 = getelementptr %struct.menu_device, ptr %4, i32 0, i32 4, i32 8
  %14 = ptrtoint ptr %arrayidx2.8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 8192, ptr %arrayidx2.8, align 4
  %arrayidx2.9 = getelementptr %struct.menu_device, ptr %4, i32 0, i32 4, i32 9
  %15 = ptrtoint ptr %arrayidx2.9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 8192, ptr %arrayidx2.9, align 4
  %arrayidx2.10 = getelementptr %struct.menu_device, ptr %4, i32 0, i32 4, i32 10
  %16 = ptrtoint ptr %arrayidx2.10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 8192, ptr %arrayidx2.10, align 4
  %arrayidx2.11 = getelementptr %struct.menu_device, ptr %4, i32 0, i32 4, i32 11
  %17 = ptrtoint ptr %arrayidx2.11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 8192, ptr %arrayidx2.11, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @menu_select(ptr nocapture noundef readonly %drv, ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %stop_tick) #3 align 64 {
entry:
  %delta_tick = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !7) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @menu_devices to i32)
  %6 = inttoptr i32 %add to ptr
  %cpu2 = getelementptr inbounds %struct.cpuidle_device, ptr %dev, i32 0, i32 1
  %7 = ptrtoint ptr %cpu2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu2, align 4
  %call3 = tail call i64 @cpuidle_governor_latency_req(i32 noundef %8) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %delta_tick) #7
  %9 = ptrtoint ptr %delta_tick to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 -1, ptr %delta_tick, align 8, !annotation !17
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %12 = tail call i32 @llvm.read_register.i32(metadata !7) #7
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %17, ptrtoint (ptr @menu_devices to i32)
  %18 = inttoptr i32 %add.i to ptr
  %last_state_idx.i = getelementptr inbounds %struct.cpuidle_device, ptr %dev, i32 0, i32 3
  %19 = ptrtoint ptr %last_state_idx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %last_state_idx.i, align 8
  %tick_wakeup.i = getelementptr inbounds %struct.menu_device, ptr %18, i32 0, i32 1
  %21 = ptrtoint ptr %tick_wakeup.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tick_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %if.then.if.else.i_crit_edge, label %land.lhs.true.i

if.then.if.else.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then
  %next_timer_ns.i = getelementptr inbounds %struct.menu_device, ptr %18, i32 0, i32 2
  %23 = ptrtoint ptr %next_timer_ns.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %next_timer_ns.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 10000000, i64 %24)
  %cmp.i = icmp ugt i64 %24, 10000000
  br i1 %cmp.i, label %land.lhs.true.i.if.end16.i_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i.if.end16.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then.if.else.i_crit_edge
  %flags.i = getelementptr %struct.cpuidle_driver, ptr %drv, i32 0, i32 3, i32 %20, i32 4
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags.i, align 8
  %and.i257 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i257)
  %tobool5.not.i = icmp eq i32 %and.i257, 0
  br i1 %tobool5.not.i, label %if.else.i.if.else10.i_crit_edge, label %land.lhs.true6.i

if.else.i.if.else10.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else10.i

land.lhs.true6.i:                                 ; preds = %if.else.i
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load.i = load i8, ptr %dev, align 8
  %28 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool7.not.i = icmp eq i8 %28, 0
  br i1 %tobool7.not.i, label %land.lhs.true6.i.if.else10.i_crit_edge, label %if.then8.i

land.lhs.true6.i.if.else10.i_crit_edge:           ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else10.i

if.then8.i:                                       ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #9
  %next_timer_ns9.i = getelementptr inbounds %struct.menu_device, ptr %18, i32 0, i32 2
  %29 = ptrtoint ptr %next_timer_ns9.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %next_timer_ns9.i, align 8
  br label %if.end16.i

if.else10.i:                                      ; preds = %land.lhs.true6.i.if.else10.i_crit_edge, %if.else.i.if.else10.i_crit_edge
  %last_residency_ns.i = getelementptr inbounds %struct.cpuidle_device, ptr %dev, i32 0, i32 4
  %31 = ptrtoint ptr %last_residency_ns.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %last_residency_ns.i, align 8
  %exit_latency_ns.i = getelementptr %struct.cpuidle_driver, ptr %drv, i32 0, i32 3, i32 %20, i32 2
  %33 = ptrtoint ptr %exit_latency_ns.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %exit_latency_ns.i, align 8
  %mul.i = shl i64 %34, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %32, i64 %mul.i)
  %cmp11.i = icmp ugt i64 %32, %mul.i
  br i1 %cmp11.i, label %if.then12.i, label %if.else14.i

if.then12.i:                                      ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = sub i64 %32, %34
  br label %if.end16.i

if.else14.i:                                      ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #9
  %div81.i = lshr i64 %32, 1
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.else14.i, %if.then12.i, %if.then8.i, %land.lhs.true.i.if.end16.i_crit_edge
  %measured_ns.0.i = phi i64 [ %30, %if.then8.i ], [ %sub.i, %if.then12.i ], [ %div81.i, %if.else14.i ], [ 45000000, %land.lhs.true.i.if.end16.i_crit_edge ]
  %next_timer_ns17.i = getelementptr inbounds %struct.menu_device, ptr %18, i32 0, i32 2
  %35 = ptrtoint ptr %next_timer_ns17.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %next_timer_ns17.i, align 8
  %37 = tail call i64 @llvm.umin.i64(i64 %measured_ns.0.i, i64 %36) #7
  %bucket.i = getelementptr inbounds %struct.menu_device, ptr %18, i32 0, i32 3
  %38 = ptrtoint ptr %bucket.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bucket.i, align 8
  %arrayidx22.i = getelementptr %struct.menu_device, ptr %18, i32 0, i32 4, i32 %39
  %40 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx22.i, align 4
  %div2382.i = lshr i32 %41, 3
  %sub24.i = sub i32 %41, %div2382.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %36)
  %cmp26.not.i = icmp ne i64 %36, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 50000000, i64 %37)
  %cmp28.i = icmp ult i64 %37, 50000000
  %or.cond.i = select i1 %cmp26.not.i, i1 %cmp28.i, i1 false
  br i1 %or.cond.i, label %if.then29.i, label %if.end16.i.if.end37.i_crit_edge

if.end16.i.if.end37.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.i

if.then29.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul30.i = shl nuw nsw i64 %37, 10
  %call32.i = tail call i64 @div64_u64(i64 noundef %mul30.i, i64 noundef %36) #7
  %42 = trunc i64 %call32.i to i32
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then29.i, %if.end16.i.if.end37.i_crit_edge
  %.pn.i = phi i32 [ %42, %if.then29.i ], [ 1024, %if.end16.i.if.end37.i_crit_edge ]
  %new_factor.0.i = add i32 %sub24.i, %.pn.i
  %43 = ptrtoint ptr %bucket.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bucket.i, align 8
  %arrayidx40.i = getelementptr %struct.menu_device, ptr %18, i32 0, i32 4, i32 %44
  %45 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %new_factor.0.i, ptr %arrayidx40.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %37)
  %cmp8.i.i.i = icmp slt i64 %37, 0
  %46 = tail call i64 @llvm.abs.i64(i64 %37, i1 false) #7
  %47 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %46, i32 0) #10, !srcloc !18
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %47, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %47, 1
  %48 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %46, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #10, !srcloc !19
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %48, 0
  %tmp.0.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %sub210.i.i.i = sub nsw i64 0, %tmp.0.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %tmp.0.i.i.i
  %conv42.i = trunc i64 %cond213.i.i.i to i32
  %interval_ptr.i = getelementptr inbounds %struct.menu_device, ptr %18, i32 0, i32 6
  %49 = ptrtoint ptr %interval_ptr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %interval_ptr.i, align 4
  %inc.i = add i32 %50, 1
  store i32 %inc.i, ptr %interval_ptr.i, align 4
  %arrayidx43.i = getelementptr %struct.menu_device, ptr %18, i32 0, i32 5, i32 %50
  %51 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv42.i, ptr %arrayidx43.i, align 4
  %52 = load i32, ptr %interval_ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %52)
  %cmp45.i = icmp ugt i32 %52, 7
  br i1 %cmp45.i, label %if.then47.i, label %if.end37.i.menu_update.exit_crit_edge

if.end37.i.menu_update.exit_crit_edge:            ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %menu_update.exit

if.then47.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %interval_ptr.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %interval_ptr.i, align 4
  br label %menu_update.exit

menu_update.exit:                                 ; preds = %if.then47.i, %if.end37.i.menu_update.exit_crit_edge
  %54 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %6, align 8
  br label %if.end

if.end:                                           ; preds = %menu_update.exit, %entry.if.end_crit_edge
  %call5 = call i64 @tick_nohz_get_sleep_length(ptr noundef nonnull %delta_tick) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call5)
  %cmp = icmp slt i64 %call5, 0
  br i1 %cmp, label %if.then8, label %if.end.if.end9_crit_edge, !prof !20

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %delta_tick to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 0, ptr %delta_tick, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end.if.end9_crit_edge
  %delta.0 = phi i64 [ 0, %if.then8 ], [ %call5, %if.end.if.end9_crit_edge ]
  %next_timer_ns = getelementptr inbounds %struct.menu_device, ptr %6, i32 0, i32 2
  %56 = ptrtoint ptr %next_timer_ns to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %delta.0, ptr %next_timer_ns, align 8
  %57 = ptrtoint ptr %cpu2 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cpu2, align 4
  %call11 = call i32 @nr_iowait_cpu(i32 noundef %58) #7
  %59 = ptrtoint ptr %next_timer_ns to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %next_timer_ns, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not.i258 = icmp eq i32 %call11, 0
  %spec.store.select.i = select i1 %tobool.not.i258, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp8(i64 10000, i64 %60)
  %cmp.i259 = icmp ult i64 %60, 10000
  br i1 %cmp.i259, label %if.end9.which_bucket.exit_crit_edge, label %if.end2.i

if.end9.which_bucket.exit_crit_edge:              ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %which_bucket.exit

if.end2.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp8(i64 100000, i64 %60)
  %cmp3.i = icmp ult i64 %60, 100000
  br i1 %cmp3.i, label %if.then4.i, label %if.end5.i

if.then4.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i260 = or i32 %spec.store.select.i, 1
  br label %which_bucket.exit

if.end5.i:                                        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 1000000, i64 %60)
  %cmp6.i = icmp ult i64 %60, 1000000
  br i1 %cmp6.i, label %if.then7.i, label %if.end9.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %add8.i = add nuw nsw i32 %spec.store.select.i, 2
  br label %which_bucket.exit

if.end9.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 10000000, i64 %60)
  %cmp10.i = icmp ult i64 %60, 10000000
  br i1 %cmp10.i, label %if.then11.i, label %if.end13.i

if.then11.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  %add12.i = add nuw nsw i32 %spec.store.select.i, 3
  br label %which_bucket.exit

if.end13.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 100000000, i64 %60)
  %cmp14.i = icmp ult i64 %60, 100000000
  br i1 %cmp14.i, label %if.then15.i, label %if.end17.i

if.then15.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  %add16.i = add nuw nsw i32 %spec.store.select.i, 4
  br label %which_bucket.exit

if.end17.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  %add18.i = add nuw nsw i32 %spec.store.select.i, 5
  br label %which_bucket.exit

which_bucket.exit:                                ; preds = %if.end17.i, %if.then15.i, %if.then11.i, %if.then7.i, %if.then4.i, %if.end9.which_bucket.exit_crit_edge
  %retval.0.i = phi i32 [ %add.i260, %if.then4.i ], [ %add8.i, %if.then7.i ], [ %add12.i, %if.then11.i ], [ %add16.i, %if.then15.i ], [ %add18.i, %if.end17.i ], [ %spec.store.select.i, %if.end9.which_bucket.exit_crit_edge ]
  %bucket = getelementptr inbounds %struct.menu_device, ptr %6, i32 0, i32 3
  %61 = ptrtoint ptr %bucket to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %retval.0.i, ptr %bucket, align 8
  %state_count = getelementptr inbounds %struct.cpuidle_driver, ptr %drv, i32 0, i32 4
  %62 = ptrtoint ptr %state_count to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %state_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %63)
  %cmp14 = icmp slt i32 %63, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call3)
  %cmp15 = icmp eq i64 %call3, 0
  %spec.select = select i1 %cmp14, i1 true, i1 %cmp15, !prof !20
  br i1 %spec.select, label %which_bucket.exit.if.then31_crit_edge, label %lor.lhs.false, !prof !20

which_bucket.exit.if.then31_crit_edge:            ; preds = %which_bucket.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then31

lor.lhs.false:                                    ; preds = %which_bucket.exit
  %target_residency_ns = getelementptr %struct.cpuidle_driver, ptr %drv, i32 0, i32 3, i32 1, i32 3
  %64 = ptrtoint ptr %target_residency_ns to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %target_residency_ns, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %60, i64 %65)
  %cmp24 = icmp ult i64 %60, %65
  br i1 %cmp24, label %lor.lhs.false.land.lhs.true_crit_edge, label %lor.lhs.false25

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

lor.lhs.false25:                                  ; preds = %lor.lhs.false
  %exit_latency_ns = getelementptr %struct.cpuidle_driver, ptr %drv, i32 0, i32 3, i32 1, i32 2
  %66 = ptrtoint ptr %exit_latency_ns to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %exit_latency_ns, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call3, i64 %67)
  %cmp28 = icmp slt i64 %call3, %67
  br i1 %cmp28, label %lor.lhs.false25.land.lhs.true_crit_edge, label %lor.lhs.false25.if.end37_crit_edge

lor.lhs.false25.if.end37_crit_edge:               ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

lor.lhs.false25.land.lhs.true_crit_edge:          ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false25.land.lhs.true_crit_edge, %lor.lhs.false.land.lhs.true_crit_edge
  %states_usage = getelementptr inbounds %struct.cpuidle_device, ptr %dev, i32 0, i32 7
  %68 = ptrtoint ptr %states_usage to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %states_usage, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %69)
  %tobool30.not = icmp eq i64 %69, 0
  br i1 %tobool30.not, label %land.lhs.true.if.then31_crit_edge, label %land.lhs.true.if.end37_crit_edge

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

land.lhs.true.if.then31_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then31

if.then31:                                        ; preds = %land.lhs.true.if.then31_crit_edge, %which_bucket.exit.if.then31_crit_edge
  %flags = getelementptr inbounds %struct.cpuidle_driver, ptr %drv, i32 0, i32 3, i32 0, i32 4
  %70 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %flags, align 8
  %72 = trunc i32 %71 to i8
  %73 = and i8 %72, 1
  %74 = xor i8 %73, 1
  %75 = ptrtoint ptr %stop_tick to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %stop_tick, align 1
  br label %cleanup173

if.end37:                                         ; preds = %land.lhs.true.if.end37_crit_edge, %lor.lhs.false25.if.end37_crit_edge
  %arrayidx40 = getelementptr %struct.menu_device, ptr %6, i32 0, i32 4, i32 %retval.0.i
  %76 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx40, align 4
  %conv = zext i32 %77 to i64
  %mul = mul i64 %60, %conv
  %add41 = add i64 %mul, 4096000
  %78 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %add41, i32 0) #10, !srcloc !18
  %asmresult.i.i.i = extractvalue { i64, i32 } %78, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %78, 1
  %79 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %add41, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #10, !srcloc !19
  %asmresult10.i.i.i = extractvalue { i64, i32 } %79, 0
  %div158.i.i286 = lshr i64 %asmresult10.i.i.i, 22
  %conv43 = trunc i64 %div158.i.i286 to i32
  %arrayidx.i261 = getelementptr %struct.menu_device, ptr %6, i32 0, i32 5, i32 0
  %80 = ptrtoint ptr %arrayidx.i261 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx.i261, align 4
  %conv.i = zext i32 %81 to i64
  %arrayidx.1.i = getelementptr %struct.menu_device, ptr %6, i32 0, i32 5, i32 1
  %82 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx.1.i, align 4
  %conv.1.i = zext i32 %83 to i64
  %arrayidx.2.i = getelementptr %struct.menu_device, ptr %6, i32 0, i32 5, i32 2
  %84 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx.2.i, align 4
  %conv.2.i = zext i32 %85 to i64
  %arrayidx.3.i = getelementptr %struct.menu_device, ptr %6, i32 0, i32 5, i32 3
  %86 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx.3.i, align 4
  %conv.3.i = zext i32 %87 to i64
  %arrayidx.4.i = getelementptr %struct.menu_device, ptr %6, i32 0, i32 5, i32 4
  %88 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx.4.i, align 4
  %conv.4.i = zext i32 %89 to i64
  %arrayidx.5.i = getelementptr %struct.menu_device, ptr %6, i32 0, i32 5, i32 5
  %90 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx.5.i, align 4
  %conv.5.i = zext i32 %91 to i64
  %arrayidx.6.i = getelementptr %struct.menu_device, ptr %6, i32 0, i32 5, i32 6
  %92 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx.6.i, align 4
  %conv.6.i = zext i32 %93 to i64
  %arrayidx.7.i = getelementptr %struct.menu_device, ptr %6, i32 0, i32 5, i32 7
  %94 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx.7.i, align 4
  %conv.7.i = zext i32 %95 to i64
  br label %again.i

again.i:                                          ; preds = %if.end257.i.again.i_crit_edge, %if.end37
  %thresh.0.i = phi i32 [ 2147483647, %if.end37 ], [ %sub263.i, %if.end257.i.again.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %thresh.0.i)
  %cmp1.not.i = icmp ugt i32 %81, %thresh.0.i
  br i1 %cmp1.not.i, label %again.i.if.end9.i262_crit_edge, label %if.then.i

again.i.if.end9.i262_crit_edge:                   ; preds = %again.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i262

if.then.i:                                        ; preds = %again.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i262

if.end9.i262:                                     ; preds = %if.then.i, %again.i.if.end9.i262_crit_edge
  %min.1.i = phi i32 [ -1, %again.i.if.end9.i262_crit_edge ], [ %81, %if.then.i ]
  %max.2.i = phi i32 [ 0, %again.i.if.end9.i262_crit_edge ], [ %81, %if.then.i ]
  %sum.1.i = phi i64 [ 0, %again.i.if.end9.i262_crit_edge ], [ %conv.i, %if.then.i ]
  %divisor.1.i = phi i32 [ 0, %again.i.if.end9.i262_crit_edge ], [ 1, %if.then.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %thresh.0.i)
  %cmp1.not.1.i = icmp ugt i32 %83, %thresh.0.i
  br i1 %cmp1.not.1.i, label %if.end9.i262.if.end9.1.i_crit_edge, label %if.then.1.i

if.end9.i262.if.end9.1.i_crit_edge:               ; preds = %if.end9.i262
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.1.i

if.then.1.i:                                      ; preds = %if.end9.i262
  call void @__sanitizer_cov_trace_pc() #9
  %add.1.i = add nuw nsw i64 %sum.1.i, %conv.1.i
  %inc.1.i = add nuw nsw i32 %divisor.1.i, 1
  %96 = call i32 @llvm.umax.i32(i32 %83, i32 %max.2.i) #7
  %97 = call i32 @llvm.umin.i32(i32 %83, i32 %min.1.i) #7
  br label %if.end9.1.i

if.end9.1.i:                                      ; preds = %if.then.1.i, %if.end9.i262.if.end9.1.i_crit_edge
  %min.1.1.i = phi i32 [ %min.1.i, %if.end9.i262.if.end9.1.i_crit_edge ], [ %97, %if.then.1.i ]
  %max.2.1.i = phi i32 [ %max.2.i, %if.end9.i262.if.end9.1.i_crit_edge ], [ %96, %if.then.1.i ]
  %sum.1.1.i = phi i64 [ %sum.1.i, %if.end9.i262.if.end9.1.i_crit_edge ], [ %add.1.i, %if.then.1.i ]
  %divisor.1.1.i = phi i32 [ %divisor.1.i, %if.end9.i262.if.end9.1.i_crit_edge ], [ %inc.1.i, %if.then.1.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %thresh.0.i)
  %cmp1.not.2.i = icmp ugt i32 %85, %thresh.0.i
  br i1 %cmp1.not.2.i, label %if.end9.1.i.if.end9.2.i_crit_edge, label %if.then.2.i

if.end9.1.i.if.end9.2.i_crit_edge:                ; preds = %if.end9.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.2.i

if.then.2.i:                                      ; preds = %if.end9.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.2.i = add nuw nsw i64 %sum.1.1.i, %conv.2.i
  %inc.2.i = add nuw nsw i32 %divisor.1.1.i, 1
  %98 = call i32 @llvm.umax.i32(i32 %85, i32 %max.2.1.i) #7
  %99 = call i32 @llvm.umin.i32(i32 %85, i32 %min.1.1.i) #7
  br label %if.end9.2.i

if.end9.2.i:                                      ; preds = %if.then.2.i, %if.end9.1.i.if.end9.2.i_crit_edge
  %min.1.2.i = phi i32 [ %min.1.1.i, %if.end9.1.i.if.end9.2.i_crit_edge ], [ %99, %if.then.2.i ]
  %max.2.2.i = phi i32 [ %max.2.1.i, %if.end9.1.i.if.end9.2.i_crit_edge ], [ %98, %if.then.2.i ]
  %sum.1.2.i = phi i64 [ %sum.1.1.i, %if.end9.1.i.if.end9.2.i_crit_edge ], [ %add.2.i, %if.then.2.i ]
  %divisor.1.2.i = phi i32 [ %divisor.1.1.i, %if.end9.1.i.if.end9.2.i_crit_edge ], [ %inc.2.i, %if.then.2.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %thresh.0.i)
  %cmp1.not.3.i = icmp ugt i32 %87, %thresh.0.i
  br i1 %cmp1.not.3.i, label %if.end9.2.i.if.end9.3.i_crit_edge, label %if.then.3.i

if.end9.2.i.if.end9.3.i_crit_edge:                ; preds = %if.end9.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.3.i

if.then.3.i:                                      ; preds = %if.end9.2.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.3.i = add nuw nsw i64 %sum.1.2.i, %conv.3.i
  %inc.3.i = add nuw nsw i32 %divisor.1.2.i, 1
  %100 = call i32 @llvm.umax.i32(i32 %87, i32 %max.2.2.i) #7
  %101 = call i32 @llvm.umin.i32(i32 %87, i32 %min.1.2.i) #7
  br label %if.end9.3.i

if.end9.3.i:                                      ; preds = %if.then.3.i, %if.end9.2.i.if.end9.3.i_crit_edge
  %min.1.3.i = phi i32 [ %min.1.2.i, %if.end9.2.i.if.end9.3.i_crit_edge ], [ %101, %if.then.3.i ]
  %max.2.3.i = phi i32 [ %max.2.2.i, %if.end9.2.i.if.end9.3.i_crit_edge ], [ %100, %if.then.3.i ]
  %sum.1.3.i = phi i64 [ %sum.1.2.i, %if.end9.2.i.if.end9.3.i_crit_edge ], [ %add.3.i, %if.then.3.i ]
  %divisor.1.3.i = phi i32 [ %divisor.1.2.i, %if.end9.2.i.if.end9.3.i_crit_edge ], [ %inc.3.i, %if.then.3.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %thresh.0.i)
  %cmp1.not.4.i = icmp ugt i32 %89, %thresh.0.i
  br i1 %cmp1.not.4.i, label %if.end9.3.i.if.end9.4.i_crit_edge, label %if.then.4.i

if.end9.3.i.if.end9.4.i_crit_edge:                ; preds = %if.end9.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.4.i

if.then.4.i:                                      ; preds = %if.end9.3.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.4.i = add nuw nsw i64 %sum.1.3.i, %conv.4.i
  %inc.4.i = add nuw nsw i32 %divisor.1.3.i, 1
  %102 = call i32 @llvm.umax.i32(i32 %89, i32 %max.2.3.i) #7
  %103 = call i32 @llvm.umin.i32(i32 %89, i32 %min.1.3.i) #7
  br label %if.end9.4.i

if.end9.4.i:                                      ; preds = %if.then.4.i, %if.end9.3.i.if.end9.4.i_crit_edge
  %min.1.4.i = phi i32 [ %min.1.3.i, %if.end9.3.i.if.end9.4.i_crit_edge ], [ %103, %if.then.4.i ]
  %max.2.4.i = phi i32 [ %max.2.3.i, %if.end9.3.i.if.end9.4.i_crit_edge ], [ %102, %if.then.4.i ]
  %sum.1.4.i = phi i64 [ %sum.1.3.i, %if.end9.3.i.if.end9.4.i_crit_edge ], [ %add.4.i, %if.then.4.i ]
  %divisor.1.4.i = phi i32 [ %divisor.1.3.i, %if.end9.3.i.if.end9.4.i_crit_edge ], [ %inc.4.i, %if.then.4.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %thresh.0.i)
  %cmp1.not.5.i = icmp ugt i32 %91, %thresh.0.i
  br i1 %cmp1.not.5.i, label %if.end9.4.i.if.end9.5.i_crit_edge, label %if.then.5.i

if.end9.4.i.if.end9.5.i_crit_edge:                ; preds = %if.end9.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.5.i

if.then.5.i:                                      ; preds = %if.end9.4.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.5.i = add nuw nsw i64 %sum.1.4.i, %conv.5.i
  %inc.5.i = add nuw nsw i32 %divisor.1.4.i, 1
  %104 = call i32 @llvm.umax.i32(i32 %91, i32 %max.2.4.i) #7
  %105 = call i32 @llvm.umin.i32(i32 %91, i32 %min.1.4.i) #7
  br label %if.end9.5.i

if.end9.5.i:                                      ; preds = %if.then.5.i, %if.end9.4.i.if.end9.5.i_crit_edge
  %min.1.5.i = phi i32 [ %min.1.4.i, %if.end9.4.i.if.end9.5.i_crit_edge ], [ %105, %if.then.5.i ]
  %max.2.5.i = phi i32 [ %max.2.4.i, %if.end9.4.i.if.end9.5.i_crit_edge ], [ %104, %if.then.5.i ]
  %sum.1.5.i = phi i64 [ %sum.1.4.i, %if.end9.4.i.if.end9.5.i_crit_edge ], [ %add.5.i, %if.then.5.i ]
  %divisor.1.5.i = phi i32 [ %divisor.1.4.i, %if.end9.4.i.if.end9.5.i_crit_edge ], [ %inc.5.i, %if.then.5.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %thresh.0.i)
  %cmp1.not.6.i = icmp ugt i32 %93, %thresh.0.i
  br i1 %cmp1.not.6.i, label %if.end9.5.i.if.end9.6.i_crit_edge, label %if.then.6.i

if.end9.5.i.if.end9.6.i_crit_edge:                ; preds = %if.end9.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.6.i

if.then.6.i:                                      ; preds = %if.end9.5.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.6.i = add nuw nsw i64 %sum.1.5.i, %conv.6.i
  %inc.6.i = add nuw nsw i32 %divisor.1.5.i, 1
  %106 = call i32 @llvm.umax.i32(i32 %93, i32 %max.2.5.i) #7
  %107 = call i32 @llvm.umin.i32(i32 %93, i32 %min.1.5.i) #7
  br label %if.end9.6.i

if.end9.6.i:                                      ; preds = %if.then.6.i, %if.end9.5.i.if.end9.6.i_crit_edge
  %min.1.6.i = phi i32 [ %min.1.5.i, %if.end9.5.i.if.end9.6.i_crit_edge ], [ %107, %if.then.6.i ]
  %max.2.6.i = phi i32 [ %max.2.5.i, %if.end9.5.i.if.end9.6.i_crit_edge ], [ %106, %if.then.6.i ]
  %sum.1.6.i = phi i64 [ %sum.1.5.i, %if.end9.5.i.if.end9.6.i_crit_edge ], [ %add.6.i, %if.then.6.i ]
  %divisor.1.6.i = phi i32 [ %divisor.1.5.i, %if.end9.5.i.if.end9.6.i_crit_edge ], [ %inc.6.i, %if.then.6.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %thresh.0.i)
  %cmp1.not.7.i = icmp ugt i32 %95, %thresh.0.i
  br i1 %cmp1.not.7.i, label %if.end9.6.i.if.end9.7.i_crit_edge, label %if.then.7.i

if.end9.6.i.if.end9.7.i_crit_edge:                ; preds = %if.end9.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.7.i

if.then.7.i:                                      ; preds = %if.end9.6.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.7.i = add nuw nsw i64 %sum.1.6.i, %conv.7.i
  %inc.7.i = add nuw nsw i32 %divisor.1.6.i, 1
  %108 = call i32 @llvm.umax.i32(i32 %95, i32 %max.2.6.i) #7
  %109 = call i32 @llvm.umin.i32(i32 %95, i32 %min.1.6.i) #7
  br label %if.end9.7.i

if.end9.7.i:                                      ; preds = %if.then.7.i, %if.end9.6.i.if.end9.7.i_crit_edge
  %min.1.7.i = phi i32 [ %min.1.6.i, %if.end9.6.i.if.end9.7.i_crit_edge ], [ %109, %if.then.7.i ]
  %max.2.7.i = phi i32 [ %max.2.6.i, %if.end9.6.i.if.end9.7.i_crit_edge ], [ %108, %if.then.7.i ]
  %sum.1.7.i = phi i64 [ %sum.1.6.i, %if.end9.6.i.if.end9.7.i_crit_edge ], [ %add.7.i, %if.then.7.i ]
  %divisor.1.7.i = phi i32 [ %divisor.1.6.i, %if.end9.6.i.if.end9.7.i_crit_edge ], [ %inc.7.i, %if.then.7.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %min.1.7.i, i32 %conv43)
  %cmp11.not.i = icmp ult i32 %min.1.7.i, %conv43
  br i1 %cmp11.not.i, label %if.end14.i, label %if.end9.7.i.get_typical_interval.exit_crit_edge

if.end9.7.i.get_typical_interval.exit_crit_edge:  ; preds = %if.end9.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_typical_interval.exit

if.end14.i:                                       ; preds = %if.end9.7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %divisor.1.7.i)
  %cmp15.i = icmp eq i32 %divisor.1.7.i, 8
  br i1 %cmp15.i, label %if.then17.i, label %if.else162.i.i.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i = lshr i64 %sum.1.7.i, 3
  %conv18.i = trunc i64 %shr.i to i32
  br label %if.end20.i

if.else162.i.i.i:                                 ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sum.1.7.i)
  %cmp164.i.i.i = icmp ult i64 %sum.1.7.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !21

if.then168.i.i.i:                                 ; preds = %if.else162.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i.i = trunc i64 %sum.1.7.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %divisor.1.7.i
  br label %if.end20.i

if.else174.i.i.i:                                 ; preds = %if.else162.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %110 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %divisor.1.7.i, i64 %sum.1.7.i) #10, !srcloc !22
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %110, 1
  %extract.t414.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.else174.i.i.i, %if.then168.i.i.i, %if.then17.i
  %avg.0.i = phi i32 [ %conv18.i, %if.then17.i ], [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t414.i, %if.else174.i.i.i ]
  %conv32.i = zext i32 %avg.0.i to i64
  %sub.i267 = sub nsw i64 %conv.i, %conv32.i
  %mul.i268 = mul i64 %sub.i267, %sub.i267
  %variance.1.i = select i1 %cmp1.not.i, i64 0, i64 %mul.i268
  br i1 %cmp1.not.1.i, label %if.end20.i.if.end34.1.i_crit_edge, label %if.then30.1.i

if.end20.i.if.end34.1.i_crit_edge:                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.1.i

if.then30.1.i:                                    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.1.i = sub nsw i64 %conv.1.i, %conv32.i
  %mul.1.i = mul i64 %sub.1.i, %sub.1.i
  %add33.1.i = add i64 %variance.1.i, %mul.1.i
  br label %if.end34.1.i

if.end34.1.i:                                     ; preds = %if.then30.1.i, %if.end20.i.if.end34.1.i_crit_edge
  %variance.1.1.i = phi i64 [ %variance.1.i, %if.end20.i.if.end34.1.i_crit_edge ], [ %add33.1.i, %if.then30.1.i ]
  br i1 %cmp1.not.2.i, label %if.end34.1.i.if.end34.2.i_crit_edge, label %if.then30.2.i

if.end34.1.i.if.end34.2.i_crit_edge:              ; preds = %if.end34.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.2.i

if.then30.2.i:                                    ; preds = %if.end34.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.2.i = sub nsw i64 %conv.2.i, %conv32.i
  %mul.2.i = mul i64 %sub.2.i, %sub.2.i
  %add33.2.i = add i64 %variance.1.1.i, %mul.2.i
  br label %if.end34.2.i

if.end34.2.i:                                     ; preds = %if.then30.2.i, %if.end34.1.i.if.end34.2.i_crit_edge
  %variance.1.2.i = phi i64 [ %variance.1.1.i, %if.end34.1.i.if.end34.2.i_crit_edge ], [ %add33.2.i, %if.then30.2.i ]
  br i1 %cmp1.not.3.i, label %if.end34.2.i.if.end34.3.i_crit_edge, label %if.then30.3.i

if.end34.2.i.if.end34.3.i_crit_edge:              ; preds = %if.end34.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.3.i

if.then30.3.i:                                    ; preds = %if.end34.2.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.3.i = sub nsw i64 %conv.3.i, %conv32.i
  %mul.3.i = mul i64 %sub.3.i, %sub.3.i
  %add33.3.i = add i64 %variance.1.2.i, %mul.3.i
  br label %if.end34.3.i

if.end34.3.i:                                     ; preds = %if.then30.3.i, %if.end34.2.i.if.end34.3.i_crit_edge
  %variance.1.3.i = phi i64 [ %variance.1.2.i, %if.end34.2.i.if.end34.3.i_crit_edge ], [ %add33.3.i, %if.then30.3.i ]
  br i1 %cmp1.not.4.i, label %if.end34.3.i.if.end34.4.i_crit_edge, label %if.then30.4.i

if.end34.3.i.if.end34.4.i_crit_edge:              ; preds = %if.end34.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.4.i

if.then30.4.i:                                    ; preds = %if.end34.3.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.4.i = sub nsw i64 %conv.4.i, %conv32.i
  %mul.4.i = mul i64 %sub.4.i, %sub.4.i
  %add33.4.i = add i64 %variance.1.3.i, %mul.4.i
  br label %if.end34.4.i

if.end34.4.i:                                     ; preds = %if.then30.4.i, %if.end34.3.i.if.end34.4.i_crit_edge
  %variance.1.4.i = phi i64 [ %variance.1.3.i, %if.end34.3.i.if.end34.4.i_crit_edge ], [ %add33.4.i, %if.then30.4.i ]
  br i1 %cmp1.not.5.i, label %if.end34.4.i.if.end34.5.i_crit_edge, label %if.then30.5.i

if.end34.4.i.if.end34.5.i_crit_edge:              ; preds = %if.end34.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.5.i

if.then30.5.i:                                    ; preds = %if.end34.4.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.5.i = sub nsw i64 %conv.5.i, %conv32.i
  %mul.5.i = mul i64 %sub.5.i, %sub.5.i
  %add33.5.i = add i64 %variance.1.4.i, %mul.5.i
  br label %if.end34.5.i

if.end34.5.i:                                     ; preds = %if.then30.5.i, %if.end34.4.i.if.end34.5.i_crit_edge
  %variance.1.5.i = phi i64 [ %variance.1.4.i, %if.end34.4.i.if.end34.5.i_crit_edge ], [ %add33.5.i, %if.then30.5.i ]
  br i1 %cmp1.not.6.i, label %if.end34.5.i.if.end34.6.i_crit_edge, label %if.then30.6.i

if.end34.5.i.if.end34.6.i_crit_edge:              ; preds = %if.end34.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.6.i

if.then30.6.i:                                    ; preds = %if.end34.5.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.6.i = sub nsw i64 %conv.6.i, %conv32.i
  %mul.6.i = mul i64 %sub.6.i, %sub.6.i
  %add33.6.i = add i64 %variance.1.5.i, %mul.6.i
  br label %if.end34.6.i

if.end34.6.i:                                     ; preds = %if.then30.6.i, %if.end34.5.i.if.end34.6.i_crit_edge
  %variance.1.6.i = phi i64 [ %variance.1.5.i, %if.end34.5.i.if.end34.6.i_crit_edge ], [ %add33.6.i, %if.then30.6.i ]
  br i1 %cmp1.not.7.i, label %if.end34.6.i.if.end34.7.i_crit_edge, label %if.then30.7.i

if.end34.6.i.if.end34.7.i_crit_edge:              ; preds = %if.end34.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.7.i

if.then30.7.i:                                    ; preds = %if.end34.6.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.7.i = sub nsw i64 %conv.7.i, %conv32.i
  %mul.7.i = mul i64 %sub.7.i, %sub.7.i
  %add33.7.i = add i64 %variance.1.6.i, %mul.7.i
  br label %if.end34.7.i

if.end34.7.i:                                     ; preds = %if.then30.7.i, %if.end34.6.i.if.end34.7.i_crit_edge
  %variance.1.7.i = phi i64 [ %variance.1.6.i, %if.end34.6.i.if.end34.7.i_crit_edge ], [ %add33.7.i, %if.then30.7.i ]
  br i1 %cmp15.i, label %if.then40.i, label %if.else215.i

if.then40.i:                                      ; preds = %if.end34.7.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr41.i = lshr i64 %variance.1.7.i, 3
  br label %if.end233.i

if.else215.i:                                     ; preds = %if.end34.7.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %variance.1.7.i)
  %cmp217.i = icmp ult i64 %variance.1.7.i, 4294967296
  br i1 %cmp217.i, label %if.end233.thread.i, label %if.else227.i, !prof !21

if.end233.thread.i:                               ; preds = %if.else215.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv222.i = trunc i64 %variance.1.7.i to i32
  %div225.i = udiv i32 %conv222.i, %divisor.1.7.i
  %conv226.i = zext i32 %div225.i to i64
  br label %if.then242.i

if.else227.i:                                     ; preds = %if.else215.i
  call void @__sanitizer_cov_trace_pc() #9
  %111 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %divisor.1.7.i, i64 %variance.1.7.i) #10, !srcloc !22
  %asmresult1.i.i = extractvalue { i64, i64 } %111, 1
  br label %if.end233.i

if.end233.i:                                      ; preds = %if.else227.i, %if.then40.i
  %variance.2.i = phi i64 [ %shr41.i, %if.then40.i ], [ %asmresult1.i.i, %if.else227.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 512409557603043101, i64 %variance.2.i)
  %cmp234.i = icmp ult i64 %variance.2.i, 512409557603043101
  br i1 %cmp234.i, label %if.end233.i.if.then242.i_crit_edge, label %if.end233.i.if.end257.i_crit_edge, !prof !21

if.end233.i.if.end257.i_crit_edge:                ; preds = %if.end233.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end257.i

if.end233.i.if.then242.i_crit_edge:               ; preds = %if.end233.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then242.i

if.then242.i:                                     ; preds = %if.end233.i.if.then242.i_crit_edge, %if.end233.thread.i
  %variance.2410.i = phi i64 [ %conv226.i, %if.end233.thread.i ], [ %variance.2.i, %if.end233.i.if.then242.i_crit_edge ]
  %mul245.i = mul nuw i64 %conv32.i, %conv32.i
  %mul246.i = mul nuw i64 %variance.2410.i, 36
  call void @__sanitizer_cov_trace_cmp8(i64 %mul245.i, i64 %mul246.i)
  %cmp247.i = icmp ugt i64 %mul245.i, %mul246.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %divisor.1.7.i)
  %cmp251.i = icmp ugt i32 %divisor.1.7.i, 5
  %or.cond.i271 = select i1 %cmp247.i, i1 %cmp251.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp8(i64 401, i64 %variance.2410.i)
  %cmp253.i = icmp ult i64 %variance.2410.i, 401
  %or.cond412.i = select i1 %or.cond.i271, i1 true, i1 %cmp253.i
  br i1 %or.cond412.i, label %if.then242.i.get_typical_interval.exit_crit_edge, label %if.then242.i.if.end257.i_crit_edge

if.then242.i.if.end257.i_crit_edge:               ; preds = %if.then242.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end257.i

if.then242.i.get_typical_interval.exit_crit_edge: ; preds = %if.then242.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_typical_interval.exit

if.end257.i:                                      ; preds = %if.then242.i.if.end257.i_crit_edge, %if.end233.i.if.end257.i_crit_edge
  %cmp259.i = icmp ult i32 %divisor.1.7.i, 7
  %sub263.i = add i32 %max.2.7.i, -1
  br i1 %cmp259.i, label %if.end257.i.get_typical_interval.exit_crit_edge, label %if.end257.i.again.i_crit_edge

if.end257.i.again.i_crit_edge:                    ; preds = %if.end257.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %again.i

if.end257.i.get_typical_interval.exit_crit_edge:  ; preds = %if.end257.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_typical_interval.exit

get_typical_interval.exit:                        ; preds = %if.end257.i.get_typical_interval.exit_crit_edge, %if.then242.i.get_typical_interval.exit_crit_edge, %if.end9.7.i.get_typical_interval.exit_crit_edge
  %retval.0.i272 = phi i32 [ -1, %if.end9.7.i.get_typical_interval.exit_crit_edge ], [ %avg.0.i, %if.then242.i.get_typical_interval.exit_crit_edge ], [ -1, %if.end257.i.get_typical_interval.exit_crit_edge ]
  %112 = call i32 @llvm.umin.i32(i32 %retval.0.i272, i32 %conv43)
  %conv48 = zext i32 %112 to i64
  %mul49 = mul nuw nsw i64 %conv48, 1000
  %call50 = call zeroext i1 @tick_nohz_tick_stopped() #7
  br i1 %call50, label %if.then51, label %if.else

if.then51:                                        ; preds = %get_typical_interval.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 10000000, i64 %mul49)
  %cmp52 = icmp ult i64 %mul49, 10000000
  br i1 %cmp52, label %if.then54, label %if.then51.if.end64_crit_edge

if.then51.if.end64_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

if.then54:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  %113 = ptrtoint ptr %next_timer_ns to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %next_timer_ns, align 8
  br label %if.end64

if.else:                                          ; preds = %get_typical_interval.exit
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i273 = mul i32 %call11, 10
  %add.i274 = or i32 %mul.i273, 1
  %conv58 = sext i32 %add.i274 to i64
  %call59 = call i64 @div64_u64(i64 noundef %mul49, i64 noundef %conv58) #7
  %115 = call i64 @llvm.umin.i64(i64 %call3, i64 %call59)
  br label %if.end64

if.end64:                                         ; preds = %if.else, %if.then54, %if.then51.if.end64_crit_edge
  %latency_req.0 = phi i64 [ %call3, %if.then54 ], [ %call3, %if.then51.if.end64_crit_edge ], [ %115, %if.else ]
  %predicted_ns.0 = phi i64 [ %114, %if.then54 ], [ %mul49, %if.then51.if.end64_crit_edge ], [ %mul49, %if.else ]
  %116 = ptrtoint ptr %state_count to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %state_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %cmp66298 = icmp sgt i32 %117, 0
  br i1 %cmp66298, label %if.end64.for.body_crit_edge, label %if.end64.for.end.thread321_crit_edge

if.end64.for.end.thread321_crit_edge:             ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread321

if.end64.for.body_crit_edge:                      ; preds = %if.end64
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end64.for.body_crit_edge
  %idx.0301 = phi i32 [ %idx.3, %for.inc.for.body_crit_edge ], [ -1, %if.end64.for.body_crit_edge ]
  %i.0299 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end64.for.body_crit_edge ]
  %arrayidx71 = getelementptr %struct.cpuidle_device, ptr %dev, i32 0, i32 7, i32 %i.0299
  %118 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %arrayidx71, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %119)
  %tobool73.not = icmp eq i64 %119, 0
  br i1 %tobool73.not, label %if.end75, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end75:                                         ; preds = %for.body
  %target_residency_ns80 = getelementptr %struct.cpuidle_driver, ptr %drv, i32 0, i32 3, i32 %i.0299, i32 3
  %120 = ptrtoint ptr %target_residency_ns80 to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %target_residency_ns80, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %121, i64 %predicted_ns.0)
  %cmp81 = icmp ugt i64 %121, %predicted_ns.0
  br i1 %cmp81, label %if.then83, label %if.end122

if.then83:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %idx.0301)
  %cmp76.le = icmp eq i32 %idx.0301, -1
  %spec.select254.le291 = select i1 %cmp76.le, i32 %i.0299, i32 %idx.0301
  %flags86 = getelementptr %struct.cpuidle_driver, ptr %drv, i32 0, i32 3, i32 %spec.select254.le291, i32 4
  %122 = ptrtoint ptr %flags86 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %flags86, align 8
  %and87 = and i32 %123, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %if.then83.if.end100_crit_edge, label %land.lhs.true89

if.then83.if.end100_crit_edge:                    ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

land.lhs.true89:                                  ; preds = %if.then83
  %exit_latency_ns90 = getelementptr %struct.cpuidle_driver, ptr %drv, i32 0, i32 3, i32 %i.0299, i32 2
  %124 = ptrtoint ptr %exit_latency_ns90 to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %exit_latency_ns90, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %125, i64 %latency_req.0)
  %cmp91.not = icmp sgt i64 %125, %latency_req.0
  br i1 %cmp91.not, label %land.lhs.true89.if.end100_crit_edge, label %land.lhs.true93

land.lhs.true89.if.end100_crit_edge:              ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

land.lhs.true93:                                  ; preds = %land.lhs.true89
  %126 = ptrtoint ptr %next_timer_ns to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %next_timer_ns, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %121, i64 %127)
  %cmp96.not = icmp ugt i64 %121, %127
  br i1 %cmp96.not, label %land.lhs.true93.if.end100_crit_edge, label %land.lhs.true93.for.end.thread_crit_edge

land.lhs.true93.for.end.thread_crit_edge:         ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

land.lhs.true93.if.end100_crit_edge:              ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

if.end100:                                        ; preds = %land.lhs.true93.if.end100_crit_edge, %land.lhs.true89.if.end100_crit_edge, %if.then83.if.end100_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 10000000, i64 %predicted_ns.0)
  %cmp101 = icmp ult i64 %predicted_ns.0, 10000000
  br i1 %cmp101, label %if.end100.land.lhs.true140_crit_edge, label %if.end104

if.end100.land.lhs.true140_crit_edge:             ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true140

if.end104:                                        ; preds = %if.end100
  %call105 = call zeroext i1 @tick_nohz_tick_stopped() #7
  %target_residency_ns113 = getelementptr %struct.cpuidle_driver, ptr %drv, i32 0, i32 3, i32 %spec.select254.le291, i32 3
  %128 = ptrtoint ptr %target_residency_ns113 to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %target_residency_ns113, align 8
  br i1 %call105, label %if.end110, label %if.end104.for.end.thread_crit_edge

if.end104.for.end.thread_crit_edge:               ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

if.end110:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_const_cmp8(i64 10000000, i64 %129)
  %cmp114 = icmp slt i64 %129, 10000000
  br i1 %cmp114, label %land.lhs.true116, label %if.end110.cleanup173_crit_edge

if.end110.cleanup173_crit_edge:                   ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup173

land.lhs.true116:                                 ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #9
  %130 = ptrtoint ptr %target_residency_ns80 to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %target_residency_ns80, align 8
  %132 = ptrtoint ptr %delta_tick to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %delta_tick, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %131, i64 %133)
  %cmp118.not = icmp sgt i64 %131, %133
  %spec.select255 = select i1 %cmp118.not, i32 %spec.select254.le291, i32 %i.0299
  br label %cleanup173

if.end122:                                        ; preds = %if.end75
  %exit_latency_ns123 = getelementptr %struct.cpuidle_driver, ptr %drv, i32 0, i32 3, i32 %i.0299, i32 2
  %134 = ptrtoint ptr %exit_latency_ns123 to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %exit_latency_ns123, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %135, i64 %latency_req.0)
  %cmp124 = icmp sgt i64 %135, %latency_req.0
  br i1 %cmp124, label %for.end.loopexit.split.loop.exit289, label %if.end122.for.inc_crit_edge

if.end122.for.inc_crit_edge:                      ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %if.end122.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %idx.3 = phi i32 [ %idx.0301, %for.body.for.inc_crit_edge ], [ %i.0299, %if.end122.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0299, 1
  %exitcond.not = icmp eq i32 %inc, %117
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end.loopexit.split.loop.exit289:              ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %idx.0301)
  %cmp76.le296 = icmp eq i32 %idx.0301, -1
  %spec.select254.le = select i1 %cmp76.le296, i32 %i.0299, i32 %idx.0301
  br label %for.end.thread

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %idx.3)
  %cmp128 = icmp eq i32 %idx.3, -1
  br i1 %cmp128, label %for.end.for.end.thread321_crit_edge, label %for.end.for.end.thread_crit_edge

for.end.for.end.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

for.end.for.end.thread321_crit_edge:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread321

for.end.thread321:                                ; preds = %for.end.for.end.thread321_crit_edge, %if.end64.for.end.thread321_crit_edge
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.thread321, %for.end.for.end.thread_crit_edge, %for.end.loopexit.split.loop.exit289, %if.end104.for.end.thread_crit_edge, %land.lhs.true93.for.end.thread_crit_edge
  %idx.4320 = phi i32 [ -1, %for.end.thread321 ], [ %idx.3, %for.end.for.end.thread_crit_edge ], [ %spec.select254.le, %for.end.loopexit.split.loop.exit289 ], [ %i.0299, %land.lhs.true93.for.end.thread_crit_edge ], [ %spec.select254.le291, %if.end104.for.end.thread_crit_edge ]
  %predicted_ns.3319 = phi i64 [ %predicted_ns.0, %for.end.thread321 ], [ %predicted_ns.0, %for.end.for.end.thread_crit_edge ], [ %predicted_ns.0, %for.end.loopexit.split.loop.exit289 ], [ %121, %land.lhs.true93.for.end.thread_crit_edge ], [ %129, %if.end104.for.end.thread_crit_edge ]
  %136 = phi i32 [ 0, %for.end.thread321 ], [ %idx.3, %for.end.for.end.thread_crit_edge ], [ %spec.select254.le, %for.end.loopexit.split.loop.exit289 ], [ %i.0299, %land.lhs.true93.for.end.thread_crit_edge ], [ %spec.select254.le291, %if.end104.for.end.thread_crit_edge ]
  %flags134 = getelementptr %struct.cpuidle_driver, ptr %drv, i32 0, i32 3, i32 %136, i32 4
  %137 = ptrtoint ptr %flags134 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %flags134, align 8
  %and135 = and i32 %138, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135)
  %tobool136.not = icmp ne i32 %and135, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 10000000, i64 %predicted_ns.3319)
  %cmp138 = icmp ult i64 %predicted_ns.3319, 10000000
  %or.cond = select i1 %tobool136.not, i1 true, i1 %cmp138
  br i1 %or.cond, label %for.end.thread.land.lhs.true140_crit_edge, label %for.end.thread.cleanup173_crit_edge

for.end.thread.cleanup173_crit_edge:              ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup173

for.end.thread.land.lhs.true140_crit_edge:        ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true140

land.lhs.true140:                                 ; preds = %for.end.thread.land.lhs.true140_crit_edge, %if.end100.land.lhs.true140_crit_edge
  %139 = phi i32 [ %136, %for.end.thread.land.lhs.true140_crit_edge ], [ %spec.select254.le291, %if.end100.land.lhs.true140_crit_edge ]
  %idx.4320334 = phi i32 [ %idx.4320, %for.end.thread.land.lhs.true140_crit_edge ], [ %spec.select254.le291, %if.end100.land.lhs.true140_crit_edge ]
  %call141 = call zeroext i1 @tick_nohz_tick_stopped() #7
  br i1 %call141, label %land.lhs.true140.cleanup173_crit_edge, label %if.then142

land.lhs.true140.cleanup173_crit_edge:            ; preds = %land.lhs.true140
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup173

if.then142:                                       ; preds = %land.lhs.true140
  %140 = ptrtoint ptr %stop_tick to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 0, ptr %stop_tick, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %cmp143 = icmp sgt i32 %139, 0
  br i1 %cmp143, label %land.lhs.true145, label %if.then142.cleanup173_crit_edge

if.then142.cleanup173_crit_edge:                  ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup173

land.lhs.true145:                                 ; preds = %if.then142
  %target_residency_ns148 = getelementptr %struct.cpuidle_driver, ptr %drv, i32 0, i32 3, i32 %139, i32 3
  %141 = ptrtoint ptr %target_residency_ns148 to i32
  call void @__asan_load8_noabort(i32 %141)
  %142 = load i64, ptr %target_residency_ns148, align 8
  %143 = ptrtoint ptr %delta_tick to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %delta_tick, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %142, i64 %144)
  %cmp149 = icmp sgt i64 %142, %144
  %i.1302 = add i32 %idx.4320334, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.1302)
  %cmp153303 = icmp sgt i32 %i.1302, -1
  %or.cond309 = select i1 %cmp149, i1 %cmp153303, i1 false
  br i1 %or.cond309, label %land.lhs.true145.for.body155_crit_edge, label %land.lhs.true145.cleanup173_crit_edge

land.lhs.true145.cleanup173_crit_edge:            ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup173

land.lhs.true145.for.body155_crit_edge:           ; preds = %land.lhs.true145
  br label %for.body155

for.body155:                                      ; preds = %for.inc169.for.body155_crit_edge, %land.lhs.true145.for.body155_crit_edge
  %i.1305 = phi i32 [ %i.1, %for.inc169.for.body155_crit_edge ], [ %i.1302, %land.lhs.true145.for.body155_crit_edge ]
  %idx.6304 = phi i32 [ %idx.7, %for.inc169.for.body155_crit_edge ], [ %idx.4320334, %land.lhs.true145.for.body155_crit_edge ]
  %arrayidx157 = getelementptr %struct.cpuidle_device, ptr %dev, i32 0, i32 7, i32 %i.1305
  %145 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %arrayidx157, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %146)
  %tobool159.not = icmp eq i64 %146, 0
  br i1 %tobool159.not, label %if.end161, label %for.body155.for.inc169_crit_edge

for.body155.for.inc169_crit_edge:                 ; preds = %for.body155
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc169

if.end161:                                        ; preds = %for.body155
  %target_residency_ns164 = getelementptr %struct.cpuidle_driver, ptr %drv, i32 0, i32 3, i32 %i.1305, i32 3
  %147 = ptrtoint ptr %target_residency_ns164 to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %target_residency_ns164, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %148, i64 %144)
  %cmp165.not = icmp sgt i64 %148, %144
  br i1 %cmp165.not, label %if.end161.for.inc169_crit_edge, label %if.end161.cleanup173_crit_edge

if.end161.cleanup173_crit_edge:                   ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup173

if.end161.for.inc169_crit_edge:                   ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc169

for.inc169:                                       ; preds = %if.end161.for.inc169_crit_edge, %for.body155.for.inc169_crit_edge
  %idx.7 = phi i32 [ %idx.6304, %for.body155.for.inc169_crit_edge ], [ %i.1305, %if.end161.for.inc169_crit_edge ]
  %i.1 = add i32 %i.1305, -1
  %cmp153 = icmp sgt i32 %i.1, -1
  br i1 %cmp153, label %for.inc169.for.body155_crit_edge, label %for.inc169.cleanup173_crit_edge

for.inc169.cleanup173_crit_edge:                  ; preds = %for.inc169
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup173

for.inc169.for.body155_crit_edge:                 ; preds = %for.inc169
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body155

cleanup173:                                       ; preds = %for.inc169.cleanup173_crit_edge, %if.end161.cleanup173_crit_edge, %land.lhs.true145.cleanup173_crit_edge, %if.then142.cleanup173_crit_edge, %land.lhs.true140.cleanup173_crit_edge, %for.end.thread.cleanup173_crit_edge, %land.lhs.true116, %if.end110.cleanup173_crit_edge, %if.then31
  %retval.2 = phi i32 [ 0, %if.then31 ], [ %139, %land.lhs.true140.cleanup173_crit_edge ], [ %idx.4320334, %land.lhs.true145.cleanup173_crit_edge ], [ %139, %if.then142.cleanup173_crit_edge ], [ %136, %for.end.thread.cleanup173_crit_edge ], [ %spec.select255, %land.lhs.true116 ], [ %spec.select254.le291, %if.end110.cleanup173_crit_edge ], [ %i.1305, %if.end161.cleanup173_crit_edge ], [ %idx.7, %for.inc169.cleanup173_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %delta_tick) #7
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @menu_reflect(ptr nocapture noundef writeonly %dev, i32 noundef %index) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !7) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @menu_devices to i32)
  %6 = inttoptr i32 %add to ptr
  %last_state_idx = getelementptr inbounds %struct.cpuidle_device, ptr %dev, i32 0, i32 3
  %7 = ptrtoint ptr %last_state_idx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %index, ptr %last_state_idx, align 8
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %6, align 8
  %call2 = tail call zeroext i1 @tick_nohz_idle_got_tick() #7
  %conv = zext i1 %call2 to i32
  %tick_wakeup = getelementptr inbounds %struct.menu_device, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %tick_wakeup to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %tick_wakeup, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @cpuidle_governor_latency_req(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @tick_nohz_get_sleep_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nr_iowait_cpu(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tick_nohz_tick_stopped() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tick_nohz_idle_got_tick() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5}
!llvm.named.register.sp = !{!7}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @__initcall__kmod_menu__156_579_init_menu2, !1, !"__initcall__kmod_menu__156_579_init_menu2", i1 false, i1 false}
!1 = !{!"../drivers/cpuidle/governors/menu.c", i32 579, i32 1}
!2 = !{ptr @__pcpu_unique_menu_devices, !3, !"__pcpu_unique_menu_devices", i1 false, i1 false}
!3 = !{!"../drivers/cpuidle/governors/menu.c", i32 159, i32 8}
!4 = !{ptr @menu_devices, !3, !"menu_devices", i1 false, i1 false}
!5 = !{ptr @menu_governor, !6, !"menu_governor", i1 false, i1 false}
!6 = !{!"../drivers/cpuidle/governors/menu.c", i32 563, i32 32}
!7 = !{!"sp"}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{!"auto-init"}
!18 = !{i64 1131007, i64 1131034, i64 1131056, i64 1131084}
!19 = !{i64 1131415, i64 1131442, i64 1131475, i64 1131496, i64 1131523, i64 1131549}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = !{!"branch_weights", i32 2000, i32 1}
!22 = !{i64 2148616551, i64 2148616831, i64 2148617165, i64 2148617499}
