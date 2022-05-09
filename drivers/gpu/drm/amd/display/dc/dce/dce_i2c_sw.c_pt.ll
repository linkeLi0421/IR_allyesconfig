; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/dce/dce_i2c_sw.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_i2c_sw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.dce_i2c_sw = type { ptr, ptr, i32, i32 }
%struct.i2c_command = type { ptr, i8, i32, i32 }
%struct.i2c_payload = type { i8, i8, i32, ptr }
%struct.ddc = type { ptr, ptr, %struct.gpio_ddc_hw_info, ptr }
%struct.gpio_ddc_hw_info = type { i8, i32 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@dce_i2c_sw_engine_set_speed.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_i2c_sw.c\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 4, i64 5]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 16]
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private constant [61 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_i2c_sw.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 346, i32 2 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @dce_i2c_sw_construct(ptr nocapture noundef writeonly %dce_i2c_sw, ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx1 = getelementptr inbounds %struct.dce_i2c_sw, ptr %dce_i2c_sw, i32 0, i32 1
  %0 = ptrtoint ptr %ctx1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ctx, ptr %ctx1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dce_i2c_engine_acquire_sw(ptr nocapture noundef writeonly %dce_i2c_sw, ptr noundef %ddc_handle) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @dal_ddc_open(ptr noundef %ddc_handle, i32 noundef 2, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %entry.dce_i2c_sw_engine_acquire_engine.exit.thread_crit_edge, label %if.end

entry.dce_i2c_sw_engine_acquire_engine.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %dce_i2c_sw_engine_acquire_engine.exit.thread

dce_i2c_sw_engine_acquire_engine.exit.thread:     ; preds = %if.end.dce_i2c_sw_engine_acquire_engine.exit.thread_crit_edge, %entry.dce_i2c_sw_engine_acquire_engine.exit.thread_crit_edge
  %0 = ptrtoint ptr %dce_i2c_sw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ddc_handle, ptr %dce_i2c_sw, align 4
  br label %do.end

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 2147480) #4
  %call.i.1 = tail call i32 @dal_ddc_open(ptr noundef %ddc_handle, i32 noundef 2, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %cmp.not.i.1 = icmp eq i32 %call.i.1, 0
  br i1 %cmp.not.i.1, label %if.end.dce_i2c_sw_engine_acquire_engine.exit.thread_crit_edge, label %if.end.1

if.end.dce_i2c_sw_engine_acquire_engine.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %dce_i2c_sw_engine_acquire_engine.exit.thread

if.end.1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 2147480) #4
  br label %do.end

do.end:                                           ; preds = %if.end.1, %dce_i2c_sw_engine_acquire_engine.exit.thread
  %cmp.not.i7 = phi i1 [ false, %if.end.1 ], [ true, %dce_i2c_sw_engine_acquire_engine.exit.thread ]
  ret i1 %cmp.not.i7
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dce_i2c_submit_command_sw(ptr nocapture noundef readnone %pool, ptr nocapture noundef readnone %ddc, ptr nocapture noundef readonly %cmd, ptr nocapture noundef %dce_i2c_sw) local_unnamed_addr #1 align 64 {
entry:
  %value.i.i64.i.i = alloca i32, align 4
  %value.i.i.i65.i.i = alloca i32, align 4
  %value.i.i19.i.i.i.i = alloca i32, align 4
  %value.i.i.i50.i.i = alloca i32, align 4
  %value.i.i.i.i.i.i = alloca i32, align 4
  %value.i.i.i.i.i = alloca i32, align 4
  %value.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %speed = getelementptr inbounds %struct.i2c_command, ptr %cmd, i32 0, i32 3
  %0 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %do.end42.i

land.rhs.i:                                       ; preds = %entry
  %.b58.i = load i1, ptr @dce_i2c_sw_engine_set_speed.__already_done, align 1
  br i1 %.b58.i, label %land.rhs.i.do.end42.thread.i_crit_edge, label %if.then.i, !prof !12

land.rhs.i.do.end42.thread.i_crit_edge:           ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end42.thread.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @dce_i2c_sw_engine_set_speed.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 346, i32 noundef 9, ptr noundef null) #4
  br label %do.end42.thread.i

do.end42.thread.i:                                ; preds = %if.then.i, %land.rhs.i.do.end42.thread.i_crit_edge
  tail call void @kgdb_breakpoint() #4
  %speed4461.i = getelementptr inbounds %struct.dce_i2c_sw, ptr %dce_i2c_sw, i32 0, i32 3
  %2 = ptrtoint ptr %speed4461.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 50, ptr %speed4461.i, align 4
  br label %dce_i2c_sw_engine_set_speed.exit

do.end42.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %speed44.i = getelementptr inbounds %struct.dce_i2c_sw, ptr %dce_i2c_sw, i32 0, i32 3
  %3 = ptrtoint ptr %speed44.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %1, ptr %speed44.i, align 4
  %div.i = udiv i32 1000, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 83, i32 %1)
  %cmp.i = icmp ugt i32 %1, 83
  %spec.select.i = select i1 %cmp.i, i32 12, i32 %div.i
  br label %dce_i2c_sw_engine_set_speed.exit

dce_i2c_sw_engine_set_speed.exit:                 ; preds = %do.end42.i, %do.end42.thread.i
  %4 = phi i32 [ 20, %do.end42.thread.i ], [ %spec.select.i, %do.end42.i ]
  %clock_delay.i = getelementptr inbounds %struct.dce_i2c_sw, ptr %dce_i2c_sw, i32 0, i32 2
  %5 = ptrtoint ptr %clock_delay.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %clock_delay.i, align 4
  %number_of_payloads = getelementptr inbounds %struct.i2c_command, ptr %cmd, i32 0, i32 1
  %6 = ptrtoint ptr %number_of_payloads to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %number_of_payloads, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp39.not = icmp eq i8 %7, 0
  br i1 %cmp39.not, label %dce_i2c_sw_engine_set_speed.exit.while.end_crit_edge, label %dce_i2c_sw_engine_set_speed.exit.while.body_crit_edge

dce_i2c_sw_engine_set_speed.exit.while.body_crit_edge: ; preds = %dce_i2c_sw_engine_set_speed.exit
  br label %while.body

dce_i2c_sw_engine_set_speed.exit.while.end_crit_edge: ; preds = %dce_i2c_sw_engine_set_speed.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %dce_i2c_sw_engine_set_speed.exit.while.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %while.cond.while.body_crit_edge ], [ 0, %dce_i2c_sw_engine_set_speed.exit.while.body_crit_edge ]
  %8 = phi i8 [ %201, %while.cond.while.body_crit_edge ], [ %7, %dce_i2c_sw_engine_set_speed.exit.while.body_crit_edge ]
  %conv1 = zext i8 %8 to i32
  %sub = add nsw i32 %conv1, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %indvars.iv)
  %cmp6.not = icmp eq i32 %sub, %indvars.iv
  %9 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cmd, align 4
  %add.ptr = getelementptr %struct.i2c_payload, ptr %10, i32 %indvars.iv
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %add.ptr, align 4, !range !13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i24 = icmp eq i8 %12, 0
  %cond.i = select i1 %cmp6.not, i32 16, i32 80
  %cond3.i = select i1 %cmp6.not, i32 0, i32 64
  %storemerge.i = select i1 %tobool.not.i24, i32 %cond.i, i32 %cond3.i
  %address.i = getelementptr %struct.i2c_payload, ptr %10, i32 %indvars.iv, i32 1
  %13 = ptrtoint ptr %address.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %address.i, align 1
  %shl.i = shl i8 %14, 1
  %15 = or i8 %shl.i, %12
  %or.i = xor i8 %15, 1
  %length.i = getelementptr %struct.i2c_payload, ptr %10, i32 %indvars.iv, i32 2
  %16 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length.i, align 4
  %data.i = getelementptr %struct.i2c_payload, ptr %10, i32 %indvars.iv, i32 3
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i, align 4
  %20 = ptrtoint ptr %dce_i2c_sw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dce_i2c_sw, align 4
  %22 = ptrtoint ptr %clock_delay.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %clock_delay.i, align 4
  %shr.i.i = lshr i32 %23, 2
  %conv.i.i = trunc i32 %shr.i.i to i16
  %pin_clock.i.i.i.i = getelementptr inbounds %struct.ddc, ptr %21, i32 0, i32 1
  %24 = ptrtoint ptr %pin_clock.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pin_clock.i.i.i.i, align 4
  %call3.i.i.i.i = call i32 @dal_gpio_set_value(ptr noundef %25, i32 noundef 1) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %conv5.i.i.i = and i32 %shr.i.i, 65535
  call void %26(i32 noundef %conv5.i.i.i) #4
  %27 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %21, align 4
  %call3.i3.i.i.i = call i32 @dal_gpio_set_value(ptr noundef %28, i32 noundef 1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i.i.i) #4
  %29 = ptrtoint ptr %value.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %value.i.i.i.i, align 4
  %30 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %21, align 4
  %call1.i.i.i.i = call i32 @dal_gpio_get_value(ptr noundef %31, ptr noundef nonnull %value.i.i.i.i) #4
  %32 = ptrtoint ptr %value.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %value.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i.not.i.i.i = icmp eq i32 %33, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i.i.i) #4
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %while.body.cond.false5.i.i.i.i_crit_edge

while.body.cond.false5.i.i.i.i_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false5.i.i.i.i

if.then.i.i.i:                                    ; preds = %while.body
  %34 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %21, align 4
  %call3.i3.1.i.i.i = call i32 @dal_gpio_set_value(ptr noundef %35, i32 noundef 1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i.i.i) #4
  %36 = ptrtoint ptr %value.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %value.i.i.i.i, align 4
  %37 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %21, align 4
  %call1.i.1.i.i.i = call i32 @dal_gpio_get_value(ptr noundef %38, ptr noundef nonnull %value.i.i.i.i) #4
  %39 = ptrtoint ptr %value.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %value.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.i.not.1.i.i.i = icmp eq i32 %40, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i.i.i) #4
  br i1 %cmp.i.not.1.i.i.i, label %if.then.1.i.i.i, label %if.then.i.i.i.cond.false5.i.i.i.i_crit_edge

if.then.i.i.i.cond.false5.i.i.i.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false5.i.i.i.i

if.then.1.i.i.i:                                  ; preds = %if.then.i.i.i
  %41 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %21, align 4
  %call3.i3.2.i.i.i = call i32 @dal_gpio_set_value(ptr noundef %42, i32 noundef 1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i.i.i) #4
  %43 = ptrtoint ptr %value.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %value.i.i.i.i, align 4
  %44 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %21, align 4
  %call1.i.2.i.i.i = call i32 @dal_gpio_get_value(ptr noundef %45, ptr noundef nonnull %value.i.i.i.i) #4
  %46 = ptrtoint ptr %value.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %value.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp.i.not.2.i.i.i = icmp eq i32 %47, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i.i.i) #4
  br i1 %cmp.i.not.2.i.i.i, label %if.then.2.i.i.i, label %if.then.1.i.i.i.cond.false5.i.i.i.i_crit_edge

if.then.1.i.i.i.cond.false5.i.i.i.i_crit_edge:    ; preds = %if.then.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false5.i.i.i.i

if.then.2.i.i.i:                                  ; preds = %if.then.1.i.i.i
  %48 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %21, align 4
  %call3.i3.3.i.i.i = call i32 @dal_gpio_set_value(ptr noundef %49, i32 noundef 1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i.i.i) #4
  %50 = ptrtoint ptr %value.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %value.i.i.i.i, align 4
  %51 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %21, align 4
  %call1.i.3.i.i.i = call i32 @dal_gpio_get_value(ptr noundef %52, ptr noundef nonnull %value.i.i.i.i) #4
  %53 = ptrtoint ptr %value.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %value.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp.i.not.3.i.i.i = icmp eq i32 %54, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i.i.i) #4
  br i1 %cmp.i.not.3.i.i.i, label %if.then.3.i.i.i, label %if.then.2.i.i.i.cond.false5.i.i.i.i_crit_edge

if.then.2.i.i.i.cond.false5.i.i.i.i_crit_edge:    ; preds = %if.then.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false5.i.i.i.i

if.then.3.i.i.i:                                  ; preds = %if.then.2.i.i.i
  %55 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %21, align 4
  %call3.i3.4.i.i.i = call i32 @dal_gpio_set_value(ptr noundef %56, i32 noundef 1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i.i.i) #4
  %57 = ptrtoint ptr %value.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %value.i.i.i.i, align 4
  %58 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %21, align 4
  %call1.i.4.i.i.i = call i32 @dal_gpio_get_value(ptr noundef %59, ptr noundef nonnull %value.i.i.i.i) #4
  %60 = ptrtoint ptr %value.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %value.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp.i.not.4.i.i.i = icmp eq i32 %61, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i.i.i) #4
  br i1 %cmp.i.not.4.i.i.i, label %if.then.4.i.i.i, label %if.then.3.i.i.i.cond.false5.i.i.i.i_crit_edge

if.then.3.i.i.i.cond.false5.i.i.i.i_crit_edge:    ; preds = %if.then.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false5.i.i.i.i

if.then.4.i.i.i:                                  ; preds = %if.then.3.i.i.i
  %62 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %21, align 4
  %call3.i3.5.i.i.i = call i32 @dal_gpio_set_value(ptr noundef %63, i32 noundef 1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i.i.i) #4
  %64 = ptrtoint ptr %value.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %value.i.i.i.i, align 4
  %65 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %21, align 4
  %call1.i.5.i.i.i = call i32 @dal_gpio_get_value(ptr noundef %66, ptr noundef nonnull %value.i.i.i.i) #4
  %67 = ptrtoint ptr %value.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %value.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp.i.not.5.i.i.i = icmp eq i32 %68, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i.i.i) #4
  br i1 %cmp.i.not.5.i.i.i, label %if.then.5.i.i.i, label %if.then.4.i.i.i.cond.false5.i.i.i.i_crit_edge

if.then.4.i.i.i.cond.false5.i.i.i.i_crit_edge:    ; preds = %if.then.4.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false5.i.i.i.i

if.then.5.i.i.i:                                  ; preds = %if.then.4.i.i.i
  %69 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %21, align 4
  %call3.i3.6.i.i.i = call i32 @dal_gpio_set_value(ptr noundef %70, i32 noundef 1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i.i.i) #4
  %71 = ptrtoint ptr %value.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %value.i.i.i.i, align 4
  %72 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %21, align 4
  %call1.i.6.i.i.i = call i32 @dal_gpio_get_value(ptr noundef %73, ptr noundef nonnull %value.i.i.i.i) #4
  %74 = ptrtoint ptr %value.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %value.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp.i.not.6.i.i.i = icmp eq i32 %75, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i.i.i) #4
  br i1 %cmp.i.not.6.i.i.i, label %if.then.6.i.i.i, label %if.then.5.i.i.i.cond.false5.i.i.i.i_crit_edge

if.then.5.i.i.i.cond.false5.i.i.i.i_crit_edge:    ; preds = %if.then.5.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false5.i.i.i.i

if.then.6.i.i.i:                                  ; preds = %if.then.5.i.i.i
  %76 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %21, align 4
  %call3.i3.7.i.i.i = call i32 @dal_gpio_set_value(ptr noundef %77, i32 noundef 1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i.i.i) #4
  %78 = ptrtoint ptr %value.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %value.i.i.i.i, align 4
  %79 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %21, align 4
  %call1.i.7.i.i.i = call i32 @dal_gpio_get_value(ptr noundef %80, ptr noundef nonnull %value.i.i.i.i) #4
  %81 = ptrtoint ptr %value.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %value.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp.i.not.7.i.i.i = icmp eq i32 %82, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i.i.i) #4
  br i1 %cmp.i.not.7.i.i.i, label %if.then.7.i.i.i, label %if.then.6.i.i.i.cond.false5.i.i.i.i_crit_edge

if.then.6.i.i.i.cond.false5.i.i.i.i_crit_edge:    ; preds = %if.then.6.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false5.i.i.i.i

if.then.7.i.i.i:                                  ; preds = %if.then.6.i.i.i
  %83 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %21, align 4
  %call3.i3.8.i.i.i = call i32 @dal_gpio_set_value(ptr noundef %84, i32 noundef 1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i.i.i) #4
  %85 = ptrtoint ptr %value.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %value.i.i.i.i, align 4
  %86 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %21, align 4
  %call1.i.8.i.i.i = call i32 @dal_gpio_get_value(ptr noundef %87, ptr noundef nonnull %value.i.i.i.i) #4
  %88 = ptrtoint ptr %value.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %value.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp.i.not.8.i.i.i = icmp eq i32 %89, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i.i.i) #4
  br i1 %cmp.i.not.8.i.i.i, label %if.then.8.i.i.i, label %if.then.7.i.i.i.cond.false5.i.i.i.i_crit_edge

if.then.7.i.i.i.cond.false5.i.i.i.i_crit_edge:    ; preds = %if.then.7.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false5.i.i.i.i

if.then.8.i.i.i:                                  ; preds = %if.then.7.i.i.i
  %90 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %21, align 4
  %call3.i3.9.i.i.i = call i32 @dal_gpio_set_value(ptr noundef %91, i32 noundef 1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i.i.i) #4
  %92 = ptrtoint ptr %value.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %value.i.i.i.i, align 4
  %93 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %21, align 4
  %call1.i.9.i.i.i = call i32 @dal_gpio_get_value(ptr noundef %94, ptr noundef nonnull %value.i.i.i.i) #4
  %95 = ptrtoint ptr %value.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %value.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp.i.not.9.i.i.i = icmp eq i32 %96, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i.i.i) #4
  br i1 %cmp.i.not.9.i.i.i, label %if.then.9.i.i.i, label %if.then.8.i.i.i.cond.false5.i.i.i.i_crit_edge

if.then.8.i.i.i.cond.false5.i.i.i.i_crit_edge:    ; preds = %if.then.8.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false5.i.i.i.i

if.then.9.i.i.i:                                  ; preds = %if.then.8.i.i.i
  %97 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %21, align 4
  %call3.i3.10.i.i.i = call i32 @dal_gpio_set_value(ptr noundef %98, i32 noundef 1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i.i.i) #4
  %99 = ptrtoint ptr %value.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %value.i.i.i.i, align 4
  %100 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %21, align 4
  %call1.i.10.i.i.i = call i32 @dal_gpio_get_value(ptr noundef %101, ptr noundef nonnull %value.i.i.i.i) #4
  %102 = ptrtoint ptr %value.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %value.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp.i.not.10.i.i.i = icmp eq i32 %103, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i.i.i) #4
  br i1 %cmp.i.not.10.i.i.i, label %if.then.9.i.i.i.if.then19.i.i_crit_edge, label %if.then.9.i.i.i.cond.false5.i.i.i.i_crit_edge

if.then.9.i.i.i.cond.false5.i.i.i.i_crit_edge:    ; preds = %if.then.9.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false5.i.i.i.i

if.then.9.i.i.i.if.then19.i.i_crit_edge:          ; preds = %if.then.9.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then19.i.i

cond.false5.i.i.i.i:                              ; preds = %if.then.9.i.i.i.cond.false5.i.i.i.i_crit_edge, %if.then.8.i.i.i.cond.false5.i.i.i.i_crit_edge, %if.then.7.i.i.i.cond.false5.i.i.i.i_crit_edge, %if.then.6.i.i.i.cond.false5.i.i.i.i_crit_edge, %if.then.5.i.i.i.cond.false5.i.i.i.i_crit_edge, %if.then.4.i.i.i.cond.false5.i.i.i.i_crit_edge, %if.then.3.i.i.i.cond.false5.i.i.i.i_crit_edge, %if.then.2.i.i.i.cond.false5.i.i.i.i_crit_edge, %if.then.1.i.i.i.cond.false5.i.i.i.i_crit_edge, %if.then.i.i.i.cond.false5.i.i.i.i_crit_edge, %while.body.cond.false5.i.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %104 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %conv17.i.i.i = and i32 %shr.i.i, 65535
  call void %104(i32 noundef %conv17.i.i.i) #4
  %105 = ptrtoint ptr %pin_clock.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %pin_clock.i.i.i.i, align 4
  %call3.i6.i.i.i = call i32 @dal_gpio_set_value(ptr noundef %106, i32 noundef 1) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %107 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %107(i32 noundef %conv17.i.i.i) #4
  %div1.i23.i.i.i = udiv i16 3000, %conv.i.i
  %narrow.i.i.i.i = add nuw nsw i16 %div1.i23.i.i.i, 1
  %108 = zext i16 %narrow.i.i.i.i to i32
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %cond.false17.i.i.i.i.do.body.i.i.i.i_crit_edge, %cond.false5.i.i.i.i
  %scl_retry.0.i.i.i.i = phi i32 [ 0, %cond.false5.i.i.i.i ], [ %inc.i.i.i.i, %cond.false17.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i.i.i.i) #4
  %109 = ptrtoint ptr %value.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %value.i.i.i.i.i, align 4
  %110 = ptrtoint ptr %pin_clock.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pin_clock.i.i.i.i, align 4
  %call1.i.i.i.i.i = call i32 @dal_gpio_get_value(ptr noundef %111, ptr noundef nonnull %value.i.i.i.i.i) #4
  %112 = ptrtoint ptr %value.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %value.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %cmp.i.not.i.i.i.i = icmp eq i32 %113, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i.i.i.i) #4
  br i1 %cmp.i.not.i.i.i.i, label %cond.false17.i.i.i.i, label %if.end21.i.i.i

cond.false17.i.i.i.i:                             ; preds = %do.body.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %114 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %114(i32 noundef %conv17.i.i.i) #4
  %inc.i.i.i.i = add nuw nsw i32 %scl_retry.0.i.i.i.i, 1
  %exitcond.i.i.i.i = icmp eq i32 %inc.i.i.i.i, %108
  br i1 %exitcond.i.i.i.i, label %cond.false17.i.i.i.i.if.then19.i.i_crit_edge, label %cond.false17.i.i.i.i.do.body.i.i.i.i_crit_edge

cond.false17.i.i.i.i.do.body.i.i.i.i_crit_edge:   ; preds = %cond.false17.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.i.i.i

cond.false17.i.i.i.i.if.then19.i.i_crit_edge:     ; preds = %cond.false17.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then19.i.i

if.end21.i.i.i:                                   ; preds = %do.body.i.i.i.i
  %115 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %21, align 4
  %call3.i9.i.i.i = call i32 @dal_gpio_set_value(ptr noundef %116, i32 noundef 0) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %117 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %117(i32 noundef %conv17.i.i.i) #4
  %118 = ptrtoint ptr %pin_clock.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %pin_clock.i.i.i.i, align 4
  %call3.i15.i.i.i = call i32 @dal_gpio_set_value(ptr noundef %119, i32 noundef 0) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %120 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %120(i32 noundef %conv17.i.i.i) #4
  %121 = lshr exact i32 %storemerge.i, 4
  %122 = zext i32 %121 to i64
  call void @__sanitizer_cov_trace_switch(i64 %122, ptr @__sancov_gen_cov_switch_values)
  switch i32 %121, label %if.then.i.unreachabledefault.i [
    i32 0, label %if.end21.i.i.i.sw.bb.i.i_crit_edge
    i32 4, label %if.end21.i.i.i.sw.bb.i.i_crit_edge65
    i32 1, label %if.end21.i.i.i.sw.bb5.i.i_crit_edge
    i32 5, label %if.end21.i.i.i.sw.bb5.i.i_crit_edge66
  ]

if.end21.i.i.i.sw.bb5.i.i_crit_edge66:            ; preds = %if.end21.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb5.i.i

if.end21.i.i.i.sw.bb5.i.i_crit_edge:              ; preds = %if.end21.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb5.i.i

if.end21.i.i.i.sw.bb.i.i_crit_edge65:             ; preds = %if.end21.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i.i

if.end21.i.i.i.sw.bb.i.i_crit_edge:               ; preds = %if.end21.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i.i

sw.bb.i.i:                                        ; preds = %if.end21.i.i.i.sw.bb.i.i_crit_edge, %if.end21.i.i.i.sw.bb.i.i_crit_edge65
  %call.i.i.i = call fastcc zeroext i1 @write_byte_sw(ptr noundef %21, i16 noundef zeroext %conv.i.i, i8 noundef zeroext %or.i) #4
  br i1 %call.i.i.i, label %while.cond.preheader.i.i.i, label %sw.bb.i.i.if.then19.i.i_crit_edge

sw.bb.i.i.if.then19.i.i_crit_edge:                ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then19.i.i

while.cond.preheader.i.i.i:                       ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp1.not.i.i.i = icmp eq i32 %17, 0
  br i1 %cmp1.not.i.i.i, label %while.cond.preheader.i.i.i.lor.lhs.false.i.i_crit_edge, label %while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge

while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i
  br label %while.body.i.i.i

while.cond.preheader.i.i.i.lor.lhs.false.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false.i.i

while.cond.i.i.i:                                 ; preds = %while.body.i.i.i
  %inc.i.i.i = add nuw i32 %i.02.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %17
  br i1 %exitcond.not.i.i.i, label %while.cond.i.i.i.lor.lhs.false.i.i_crit_edge, label %while.cond.i.i.i.while.body.i.i.i_crit_edge

while.cond.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i.i.i

while.cond.i.i.i.lor.lhs.false.i.i_crit_edge:     ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false.i.i

while.body.i.i.i:                                 ; preds = %while.cond.i.i.i.while.body.i.i.i_crit_edge, %while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge
  %i.02.i.i.i = phi i32 [ %inc.i.i.i, %while.cond.i.i.i.while.body.i.i.i_crit_edge ], [ 0, %while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr i8, ptr %19, i32 %i.02.i.i.i
  %123 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx.i.i.i, align 1
  %call1.i.i.i = call fastcc zeroext i1 @write_byte_sw(ptr noundef %21, i16 noundef zeroext %conv.i.i, i8 noundef zeroext %124) #4
  br i1 %call1.i.i.i, label %while.cond.i.i.i, label %while.body.i.i.i.if.then19.i.i_crit_edge

while.body.i.i.i.if.then19.i.i_crit_edge:         ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then19.i.i

sw.bb5.i.i:                                       ; preds = %if.end21.i.i.i.sw.bb5.i.i_crit_edge, %if.end21.i.i.i.sw.bb5.i.i_crit_edge66
  %call.i51.i.i = call fastcc zeroext i1 @write_byte_sw(ptr noundef %21, i16 noundef zeroext %conv.i.i, i8 noundef zeroext %or.i) #4
  br i1 %call.i51.i.i, label %while.cond.preheader.i52.i.i, label %sw.bb5.i.i.if.then19.i.i_crit_edge

sw.bb5.i.i.if.then19.i.i_crit_edge:               ; preds = %sw.bb5.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then19.i.i

while.cond.preheader.i52.i.i:                     ; preds = %sw.bb5.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp7.not.i.i.i = icmp eq i32 %17, 0
  br i1 %cmp7.not.i.i.i, label %while.cond.preheader.i52.i.i.lor.lhs.false.i.i_crit_edge, label %while.body.lr.ph.i.i.i

while.cond.preheader.i52.i.i.lor.lhs.false.i.i_crit_edge: ; preds = %while.cond.preheader.i52.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false.i.i

while.body.lr.ph.i.i.i:                           ; preds = %while.cond.preheader.i52.i.i
  %sub.i.i.i = add i32 %17, -1
  %conv.i.i.i.i.i = and i32 %shr.i.i, 65535
  %shl6.i.i.i.i = shl nuw nsw i32 %conv.i.i.i.i.i, 1
  br label %while.body.i54.i.i

while.body.i54.i.i:                               ; preds = %if.end45.i.i.i.i.while.body.i54.i.i_crit_edge, %while.body.lr.ph.i.i.i
  %i.08.i.i.i = phi i32 [ 0, %while.body.lr.ph.i.i.i ], [ %inc.i61.i.i, %if.end45.i.i.i.i.while.body.i54.i.i_crit_edge ]
  %add.ptr.i.i.i = getelementptr i8, ptr %19, i32 %i.08.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %i.08.i.i.i, i32 %sub.i.i.i)
  %cmp1.i.i.i = icmp uge i32 %i.08.i.i.i, %sub.i.i.i
  br label %do.body.i.i55.i.i

do.body.i.i55.i.i:                                ; preds = %if.end.i.i57.i.i.do.body.i.i55.i.i_crit_edge, %while.body.i54.i.i
  %shift.0.i.i.i.i = phi i32 [ 7, %while.body.i54.i.i ], [ %dec.i.i.i.i, %if.end.i.i57.i.i.do.body.i.i55.i.i_crit_edge ]
  %data.0.i.i.i.i = phi i8 [ 0, %while.body.i54.i.i ], [ %data.1.i.i.i.i, %if.end.i.i57.i.i.do.body.i.i55.i.i_crit_edge ]
  %125 = ptrtoint ptr %pin_clock.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %pin_clock.i.i.i.i, align 4
  %call3.i.i.i.i.i = call i32 @dal_gpio_set_value(ptr noundef %126, i32 noundef 1) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %127 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %127(i32 noundef %conv.i.i.i.i.i) #4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %cond.false17.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %do.body.i.i55.i.i
  %scl_retry.0.i.i.i.i.i = phi i32 [ 0, %do.body.i.i55.i.i ], [ %inc.i.i.i.i.i, %cond.false17.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i.i.i.i.i) #4
  %128 = ptrtoint ptr %value.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 0, ptr %value.i.i.i.i.i.i, align 4
  %129 = ptrtoint ptr %pin_clock.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %pin_clock.i.i.i.i, align 4
  %call1.i.i.i.i.i.i = call i32 @dal_gpio_get_value(ptr noundef %130, ptr noundef nonnull %value.i.i.i.i.i.i) #4
  %131 = ptrtoint ptr %value.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %value.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %cmp.i.not.i.i.i.i.i = icmp eq i32 %132, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i.i.i.i.i) #4
  br i1 %cmp.i.not.i.i.i.i.i, label %cond.false17.i.i.i.i.i, label %if.end.i.i57.i.i

cond.false17.i.i.i.i.i:                           ; preds = %do.body.i.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %133 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %133(i32 noundef %conv.i.i.i.i.i) #4
  %inc.i.i.i.i.i = add nuw nsw i32 %scl_retry.0.i.i.i.i.i, 1
  %exitcond.i.i.i.i.i = icmp eq i32 %inc.i.i.i.i.i, %108
  br i1 %exitcond.i.i.i.i.i, label %cond.false17.i.i.i.i.i.if.then19.i.i_crit_edge, label %cond.false17.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

cond.false17.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %cond.false17.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.i.i.i.i

cond.false17.i.i.i.i.i.if.then19.i.i_crit_edge:   ; preds = %cond.false17.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then19.i.i

if.end.i.i57.i.i:                                 ; preds = %do.body.i.i.i.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i.i50.i.i) #4
  %134 = ptrtoint ptr %value.i.i.i50.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 0, ptr %value.i.i.i50.i.i, align 4
  %135 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %21, align 4
  %call1.i.i.i56.i.i = call i32 @dal_gpio_get_value(ptr noundef %136, ptr noundef nonnull %value.i.i.i50.i.i) #4
  %137 = ptrtoint ptr %value.i.i.i50.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %value.i.i.i50.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %cmp.i6.not.i.i.i.i = icmp eq i32 %138, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i.i50.i.i) #4
  %shl.i.i.i.i = shl nuw i32 1, %shift.0.i.i.i.i
  %139 = trunc i32 %shl.i.i.i.i to i8
  %conv3.i.i.i.i = select i1 %cmp.i6.not.i.i.i.i, i8 0, i8 %139
  %data.1.i.i.i.i = or i8 %conv3.i.i.i.i, %data.0.i.i.i.i
  %140 = ptrtoint ptr %pin_clock.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %pin_clock.i.i.i.i, align 4
  %call3.i8.i.i.i.i = call i32 @dal_gpio_set_value(ptr noundef %141, i32 noundef 0) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %142 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %142(i32 noundef %shl6.i.i.i.i) #4
  %dec.i.i.i.i = add nsw i32 %shift.0.i.i.i.i, -1
  %cmp17.i.not.i.i.i = icmp eq i32 %shift.0.i.i.i.i, 0
  br i1 %cmp17.i.not.i.i.i, label %do.end.i.i.i.i, label %if.end.i.i57.i.i.do.body.i.i55.i.i_crit_edge

if.end.i.i57.i.i.do.body.i.i55.i.i_crit_edge:     ; preds = %if.end.i.i57.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.i55.i.i

do.end.i.i.i.i:                                   ; preds = %if.end.i.i57.i.i
  %143 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %data.1.i.i.i.i, ptr %add.ptr.i.i.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %144 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %144(i32 noundef %conv.i.i.i.i.i) #4
  %cond.i14.i.i.i.i = zext i1 %cmp1.i.i.i to i32
  %145 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %21, align 4
  %call3.i16.i.i.i.i = call i32 @dal_gpio_set_value(ptr noundef %146, i32 noundef %cond.i14.i.i.i.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %147 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %147(i32 noundef %conv.i.i.i.i.i) #4
  %148 = ptrtoint ptr %pin_clock.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %pin_clock.i.i.i.i, align 4
  %call3.i18.i.i.i.i = call i32 @dal_gpio_set_value(ptr noundef %149, i32 noundef 1) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %150 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %150(i32 noundef %conv.i.i.i.i.i) #4
  br label %do.body.i36.i.i.i.i

do.body.i36.i.i.i.i:                              ; preds = %cond.false17.i41.i.i.i.i.do.body.i36.i.i.i.i_crit_edge, %do.end.i.i.i.i
  %scl_retry.0.i33.i.i.i.i = phi i32 [ 0, %do.end.i.i.i.i ], [ %inc.i42.i.i.i.i, %cond.false17.i41.i.i.i.i.do.body.i36.i.i.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i19.i.i.i.i) #4
  %151 = ptrtoint ptr %value.i.i19.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 0, ptr %value.i.i19.i.i.i.i, align 4
  %152 = ptrtoint ptr %pin_clock.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %pin_clock.i.i.i.i, align 4
  %call1.i.i34.i.i.i.i = call i32 @dal_gpio_get_value(ptr noundef %153, ptr noundef nonnull %value.i.i19.i.i.i.i) #4
  %154 = ptrtoint ptr %value.i.i19.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %value.i.i19.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %cmp.i.not.i35.i.i.i.i = icmp eq i32 %155, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i19.i.i.i.i) #4
  br i1 %cmp.i.not.i35.i.i.i.i, label %cond.false17.i41.i.i.i.i, label %if.end45.i.i.i.i

cond.false17.i41.i.i.i.i:                         ; preds = %do.body.i36.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %156 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %156(i32 noundef %conv.i.i.i.i.i) #4
  %inc.i42.i.i.i.i = add nuw nsw i32 %scl_retry.0.i33.i.i.i.i, 1
  %exitcond.i43.i.i.i.i = icmp eq i32 %inc.i42.i.i.i.i, %108
  br i1 %exitcond.i43.i.i.i.i, label %cond.false17.i41.i.i.i.i.if.then19.i.i_crit_edge, label %cond.false17.i41.i.i.i.i.do.body.i36.i.i.i.i_crit_edge

cond.false17.i41.i.i.i.i.do.body.i36.i.i.i.i_crit_edge: ; preds = %cond.false17.i41.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i36.i.i.i.i

cond.false17.i41.i.i.i.i.if.then19.i.i_crit_edge: ; preds = %cond.false17.i41.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then19.i.i

if.end45.i.i.i.i:                                 ; preds = %do.body.i36.i.i.i.i
  %157 = ptrtoint ptr %pin_clock.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %pin_clock.i.i.i.i, align 4
  %call3.i47.i.i.i.i = call i32 @dal_gpio_set_value(ptr noundef %158, i32 noundef 0) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %159 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %159(i32 noundef %conv.i.i.i.i.i) #4
  %160 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %21, align 4
  %call3.i53.i.i.i.i = call i32 @dal_gpio_set_value(ptr noundef %161, i32 noundef 1) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %162 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %162(i32 noundef %conv.i.i.i.i.i) #4
  %inc.i61.i.i = add nuw i32 %i.08.i.i.i, 1
  %exitcond.not.i62.i.i = icmp eq i32 %inc.i61.i.i, %17
  br i1 %exitcond.not.i62.i.i, label %if.end45.i.i.i.i.lor.lhs.false.i.i_crit_edge, label %if.end45.i.i.i.i.while.body.i54.i.i_crit_edge

if.end45.i.i.i.i.while.body.i54.i.i_crit_edge:    ; preds = %if.end45.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i54.i.i

if.end45.i.i.i.i.lor.lhs.false.i.i_crit_edge:     ; preds = %if.end45.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false.i.i

lor.lhs.false.i.i:                                ; preds = %if.end45.i.i.i.i.lor.lhs.false.i.i_crit_edge, %while.cond.preheader.i52.i.i.lor.lhs.false.i.i_crit_edge, %while.cond.i.i.i.lor.lhs.false.i.i_crit_edge, %while.cond.preheader.i.i.i.lor.lhs.false.i.i_crit_edge
  %163 = zext i32 %storemerge.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %163, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %storemerge.i, label %lor.lhs.false.i.i.while.cond_crit_edge [
    i32 0, label %lor.lhs.false.i.i.if.then19.i.i_crit_edge
    i32 16, label %lor.lhs.false.i.i.if.then19.i.i_crit_edge67
  ]

lor.lhs.false.i.i.if.then19.i.i_crit_edge67:      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then19.i.i

lor.lhs.false.i.i.if.then19.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then19.i.i

lor.lhs.false.i.i.while.cond_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

if.then.i.unreachabledefault.i:                   ; preds = %if.end21.i.i.i
  unreachable

if.then19.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then19.i.i_crit_edge, %lor.lhs.false.i.i.if.then19.i.i_crit_edge67, %cond.false17.i41.i.i.i.i.if.then19.i.i_crit_edge, %cond.false17.i.i.i.i.i.if.then19.i.i_crit_edge, %sw.bb5.i.i.if.then19.i.i_crit_edge, %while.body.i.i.i.if.then19.i.i_crit_edge, %sw.bb.i.i.if.then19.i.i_crit_edge, %cond.false17.i.i.i.i.if.then19.i.i_crit_edge, %if.then.9.i.i.i.if.then19.i.i_crit_edge
  %result.0.shrunk112.i.i = phi i1 [ true, %lor.lhs.false.i.i.if.then19.i.i_crit_edge ], [ true, %lor.lhs.false.i.i.if.then19.i.i_crit_edge67 ], [ false, %if.then.9.i.i.i.if.then19.i.i_crit_edge ], [ false, %sw.bb.i.i.if.then19.i.i_crit_edge ], [ false, %sw.bb5.i.i.if.then19.i.i_crit_edge ], [ false, %cond.false17.i.i.i.i.i.if.then19.i.i_crit_edge ], [ false, %cond.false17.i41.i.i.i.i.if.then19.i.i_crit_edge ], [ false, %while.body.i.i.i.if.then19.i.i_crit_edge ], [ false, %cond.false17.i.i.i.i.if.then19.i.i_crit_edge ]
  %164 = ptrtoint ptr %pin_clock.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %pin_clock.i.i.i.i, align 4
  %call3.i.i67.i.i = call i32 @dal_gpio_set_value(ptr noundef %165, i32 noundef 0) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %166 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %conv5.i82.i.i = and i32 %shr.i.i, 65535
  call void %166(i32 noundef %conv5.i82.i.i) #4
  %167 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %21, align 4
  %call3.i7.i.i.i = call i32 @dal_gpio_set_value(ptr noundef %168, i32 noundef 0) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %169 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %169(i32 noundef %conv5.i82.i.i) #4
  %170 = ptrtoint ptr %pin_clock.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %pin_clock.i.i.i.i, align 4
  %call3.i9.i83.i.i = call i32 @dal_gpio_set_value(ptr noundef %171, i32 noundef 1) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %172 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %172(i32 noundef %conv5.i82.i.i) #4
  %div1.i21.i.i.i = udiv i16 3000, %conv.i.i
  %narrow.i.i87.i.i = add nuw nsw i16 %div1.i21.i.i.i, 1
  %173 = zext i16 %narrow.i.i87.i.i to i32
  br label %do.body.i.i92.i.i

do.body.i.i92.i.i:                                ; preds = %cond.false17.i.i97.i.i.do.body.i.i92.i.i_crit_edge, %if.then19.i.i
  %scl_retry.0.i.i89.i.i = phi i32 [ 0, %if.then19.i.i ], [ %inc.i.i98.i.i, %cond.false17.i.i97.i.i.do.body.i.i92.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i.i65.i.i) #4
  %174 = ptrtoint ptr %value.i.i.i65.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 0, ptr %value.i.i.i65.i.i, align 4
  %175 = ptrtoint ptr %pin_clock.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %pin_clock.i.i.i.i, align 4
  %call1.i.i.i90.i.i = call i32 @dal_gpio_get_value(ptr noundef %176, ptr noundef nonnull %value.i.i.i65.i.i) #4
  %177 = ptrtoint ptr %value.i.i.i65.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %value.i.i.i65.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %cmp.i.not.i.i91.i.i = icmp eq i32 %178, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i.i65.i.i) #4
  br i1 %cmp.i.not.i.i91.i.i, label %cond.false17.i.i97.i.i, label %if.end.i102.i.i

cond.false17.i.i97.i.i:                           ; preds = %do.body.i.i92.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %179 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %179(i32 noundef %conv5.i82.i.i) #4
  %inc.i.i98.i.i = add nuw nsw i32 %scl_retry.0.i.i89.i.i, 1
  %exitcond.i.i99.i.i = icmp eq i32 %inc.i.i98.i.i, %173
  br i1 %exitcond.i.i99.i.i, label %cond.false17.i.i97.i.i.while.end_crit_edge, label %cond.false17.i.i97.i.i.do.body.i.i92.i.i_crit_edge

cond.false17.i.i97.i.i.do.body.i.i92.i.i_crit_edge: ; preds = %cond.false17.i.i97.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.i92.i.i

cond.false17.i.i97.i.i.while.end_crit_edge:       ; preds = %cond.false17.i.i97.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end.i102.i.i:                                  ; preds = %do.body.i.i92.i.i
  %180 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %21, align 4
  %call3.i11.i101.i.i = call i32 @dal_gpio_set_value(ptr noundef %181, i32 noundef 1) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %182 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %182(i32 noundef %conv5.i82.i.i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i64.i.i) #4
  %183 = ptrtoint ptr %value.i.i64.i.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 0, ptr %value.i.i64.i.i, align 4
  %184 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %21, align 4
  %call1.i.i103.i.i = call i32 @dal_gpio_get_value(ptr noundef %185, ptr noundef nonnull %value.i.i64.i.i) #4
  %186 = ptrtoint ptr %value.i.i64.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %value.i.i64.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %187)
  %cmp.i13.not.i.i.i = icmp eq i32 %187, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i64.i.i) #4
  br i1 %cmp.i13.not.i.i.i, label %cond.false28.1.i.i.i, label %if.end.i102.i.i.dce_i2c_sw_engine_submit_channel_request.exit.i_crit_edge

if.end.i102.i.i.dce_i2c_sw_engine_submit_channel_request.exit.i_crit_edge: ; preds = %if.end.i102.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dce_i2c_sw_engine_submit_channel_request.exit.i

cond.false28.1.i.i.i:                             ; preds = %if.end.i102.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %188 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %188(i32 noundef %conv5.i82.i.i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i64.i.i) #4
  %189 = ptrtoint ptr %value.i.i64.i.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 0, ptr %value.i.i64.i.i, align 4
  %190 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %21, align 4
  %call1.i.1.i104.i.i = call i32 @dal_gpio_get_value(ptr noundef %191, ptr noundef nonnull %value.i.i64.i.i) #4
  %192 = ptrtoint ptr %value.i.i64.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %value.i.i64.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %cmp.i13.not.1.i.i.i = icmp eq i32 %193, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i64.i.i) #4
  br i1 %cmp.i13.not.1.i.i.i, label %cond.false28.2.i.i.i, label %cond.false28.1.i.i.i.dce_i2c_sw_engine_submit_channel_request.exit.i_crit_edge

cond.false28.1.i.i.i.dce_i2c_sw_engine_submit_channel_request.exit.i_crit_edge: ; preds = %cond.false28.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dce_i2c_sw_engine_submit_channel_request.exit.i

cond.false28.2.i.i.i:                             ; preds = %cond.false28.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %194 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %194(i32 noundef %conv5.i82.i.i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i64.i.i) #4
  %195 = ptrtoint ptr %value.i.i64.i.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 0, ptr %value.i.i64.i.i, align 4
  %196 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %21, align 4
  %call1.i.2.i105.i.i = call i32 @dal_gpio_get_value(ptr noundef %197, ptr noundef nonnull %value.i.i64.i.i) #4
  %198 = ptrtoint ptr %value.i.i64.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %value.i.i64.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %199)
  %cmp.i13.not.2.i.i.i = icmp ne i32 %199, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i64.i.i) #4
  br label %dce_i2c_sw_engine_submit_channel_request.exit.i

dce_i2c_sw_engine_submit_channel_request.exit.i:  ; preds = %cond.false28.2.i.i.i, %cond.false28.1.i.i.i.dce_i2c_sw_engine_submit_channel_request.exit.i_crit_edge, %if.end.i102.i.i.dce_i2c_sw_engine_submit_channel_request.exit.i_crit_edge
  %retval.0.i106.i.i = phi i1 [ true, %if.end.i102.i.i.dce_i2c_sw_engine_submit_channel_request.exit.i_crit_edge ], [ true, %cond.false28.1.i.i.i.dce_i2c_sw_engine_submit_channel_request.exit.i_crit_edge ], [ %cmp.i13.not.2.i.i.i, %cond.false28.2.i.i.i ]
  %spec.select.i.i = and i1 %result.0.shrunk112.i.i, %retval.0.i106.i.i
  br i1 %spec.select.i.i, label %dce_i2c_sw_engine_submit_channel_request.exit.i.while.cond_crit_edge, label %dce_i2c_sw_engine_submit_channel_request.exit.i.while.end_crit_edge

dce_i2c_sw_engine_submit_channel_request.exit.i.while.end_crit_edge: ; preds = %dce_i2c_sw_engine_submit_channel_request.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

dce_i2c_sw_engine_submit_channel_request.exit.i.while.cond_crit_edge: ; preds = %dce_i2c_sw_engine_submit_channel_request.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

while.cond:                                       ; preds = %dce_i2c_sw_engine_submit_channel_request.exit.i.while.cond_crit_edge, %lor.lhs.false.i.i.while.cond_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %200 = ptrtoint ptr %number_of_payloads to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %number_of_payloads, align 4
  %202 = zext i8 %201 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %202
  br i1 %cmp, label %while.cond.while.body_crit_edge, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %dce_i2c_sw_engine_submit_channel_request.exit.i.while.end_crit_edge, %cond.false17.i.i97.i.i.while.end_crit_edge, %dce_i2c_sw_engine_set_speed.exit.while.end_crit_edge
  %cmp38 = phi i1 [ true, %dce_i2c_sw_engine_set_speed.exit.while.end_crit_edge ], [ false, %cond.false17.i.i97.i.i.while.end_crit_edge ], [ true, %while.cond.while.end_crit_edge ], [ false, %dce_i2c_sw_engine_submit_channel_request.exit.i.while.end_crit_edge ]
  %203 = ptrtoint ptr %dce_i2c_sw to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %dce_i2c_sw, align 4
  call void @dal_ddc_close(ptr noundef %204) #4
  %205 = ptrtoint ptr %dce_i2c_sw to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr null, ptr %dce_i2c_sw, align 4
  ret i1 %cmp38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dal_ddc_open(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dal_gpio_set_value(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dal_gpio_get_value(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @write_byte_sw(ptr noundef readonly %ddc_handle, i16 noundef zeroext %clock_delay_div_4, i8 noundef zeroext %byte) unnamed_addr #1 align 64 {
entry:
  %value.i = alloca i32, align 4
  %value.i.i26 = alloca i32, align 4
  %value.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv5 = zext i16 %clock_delay_div_4 to i32
  %conv7.c4 = zext i8 %byte to i32
  %pin_clock.i14 = getelementptr inbounds %struct.ddc, ptr %ddc_handle, i32 0, i32 1
  br label %cond.false5.i

cond.false5.i:                                    ; preds = %if.end.cond.false5.i_crit_edge, %entry
  %shift.0 = phi i32 [ 7, %entry ], [ %dec, %if.end.cond.false5.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %0(i32 noundef %conv5) #4
  %1 = lshr i32 %conv7.c4, %shift.0
  %2 = and i32 %1, 1
  %3 = ptrtoint ptr %ddc_handle to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ddc_handle, align 4
  %call3.i13 = call i32 @dal_gpio_set_value(ptr noundef %4, i32 noundef %2) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %5(i32 noundef %conv5) #4
  %6 = ptrtoint ptr %pin_clock.i14 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pin_clock.i14, align 4
  %call3.i15 = call i32 @dal_gpio_set_value(ptr noundef %7, i32 noundef 1) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %8(i32 noundef %conv5) #4
  %div1.i91 = udiv i16 3000, %clock_delay_div_4
  %narrow.i = add nuw nsw i16 %div1.i91, 1
  %9 = zext i16 %narrow.i to i32
  br label %do.body.i

do.body.i:                                        ; preds = %cond.false17.i.do.body.i_crit_edge, %cond.false5.i
  %scl_retry.0.i = phi i32 [ 0, %cond.false5.i ], [ %inc.i, %cond.false17.i.do.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i) #4
  %10 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %value.i.i, align 4
  %11 = ptrtoint ptr %pin_clock.i14 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pin_clock.i14, align 4
  %call1.i.i = call i32 @dal_gpio_get_value(ptr noundef %12, ptr noundef nonnull %value.i.i) #4
  %13 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %value.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i.not.i = icmp eq i32 %14, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i) #4
  br i1 %cmp.i.not.i, label %cond.false17.i, label %if.end

cond.false17.i:                                   ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %15(i32 noundef %conv5) #4
  %inc.i = add nuw nsw i32 %scl_retry.0.i, 1
  %exitcond.i = icmp eq i32 %inc.i, %9
  br i1 %exitcond.i, label %cond.false17.i.cleanup_crit_edge, label %cond.false17.i.do.body.i_crit_edge

cond.false17.i.do.body.i_crit_edge:               ; preds = %cond.false17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

cond.false17.i.cleanup_crit_edge:                 ; preds = %cond.false17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %do.body.i
  %16 = ptrtoint ptr %pin_clock.i14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pin_clock.i14, align 4
  %call3.i17 = call i32 @dal_gpio_set_value(ptr noundef %17, i32 noundef 0) #4
  %dec = add nsw i32 %shift.0, -1
  %cmp20 = icmp sgt i32 %shift.0, 0
  br i1 %cmp20, label %if.end.cond.false5.i_crit_edge, label %cond.false5.i34

if.end.cond.false5.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false5.i

cond.false5.i34:                                  ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %18(i32 noundef %conv5) #4
  %19 = ptrtoint ptr %ddc_handle to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ddc_handle, align 4
  %call3.i23 = call i32 @dal_gpio_set_value(ptr noundef %20, i32 noundef 1) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %21(i32 noundef %conv5) #4
  %22 = ptrtoint ptr %pin_clock.i14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pin_clock.i14, align 4
  %call3.i25 = call i32 @dal_gpio_set_value(ptr noundef %23, i32 noundef 1) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %24(i32 noundef %conv5) #4
  br label %do.body.i43

do.body.i43:                                      ; preds = %cond.false17.i48.do.body.i43_crit_edge, %cond.false5.i34
  %scl_retry.0.i40 = phi i32 [ 0, %cond.false5.i34 ], [ %inc.i49, %cond.false17.i48.do.body.i43_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i26) #4
  %25 = ptrtoint ptr %value.i.i26 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %value.i.i26, align 4
  %26 = ptrtoint ptr %pin_clock.i14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pin_clock.i14, align 4
  %call1.i.i41 = call i32 @dal_gpio_get_value(ptr noundef %27, ptr noundef nonnull %value.i.i26) #4
  %28 = ptrtoint ptr %value.i.i26 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %value.i.i26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i.not.i42 = icmp eq i32 %29, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i26) #4
  br i1 %cmp.i.not.i42, label %cond.false17.i48, label %if.end48

cond.false17.i48:                                 ; preds = %do.body.i43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %30(i32 noundef %conv5) #4
  %inc.i49 = add nuw nsw i32 %scl_retry.0.i40, 1
  %exitcond.i50 = icmp eq i32 %inc.i49, %9
  br i1 %exitcond.i50, label %cond.false17.i48.cleanup_crit_edge, label %cond.false17.i48.do.body.i43_crit_edge

cond.false17.i48.do.body.i43_crit_edge:           ; preds = %cond.false17.i48
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i43

cond.false17.i48.cleanup_crit_edge:               ; preds = %cond.false17.i48
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end48:                                         ; preds = %do.body.i43
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #4
  %31 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %value.i, align 4
  %32 = ptrtoint ptr %ddc_handle to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ddc_handle, align 4
  %call1.i = call i32 @dal_gpio_get_value(ptr noundef %33, ptr noundef nonnull %value.i) #4
  %34 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %value.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #4
  %shl = shl nuw nsw i32 %conv5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.i54.not = icmp eq i32 %35, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %36(i32 noundef %shl) #4
  %37 = ptrtoint ptr %pin_clock.i14 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pin_clock.i14, align 4
  %call3.i60 = call i32 @dal_gpio_set_value(ptr noundef %38, i32 noundef 0) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %39(i32 noundef %shl) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %cond.false17.i48.cleanup_crit_edge, %cond.false17.i.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp.i54.not, %if.end48 ], [ false, %cond.false17.i48.cleanup_crit_edge ], [ false, %cond.false17.i.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dal_ddc_close(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_i2c_sw.c", i32 346, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 1, !"min_enum_size", i32 4}
!5 = !{i32 8, !"branch-target-enforcement", i32 0}
!6 = !{i32 8, !"sign-return-address", i32 0}
!7 = !{i32 8, !"sign-return-address-all", i32 0}
!8 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i8 0, i8 2}
