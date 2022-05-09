; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/irq/irq_service.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/irq/irq_service.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.irq_source_info = type { i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, ptr }
%struct.irq_service = type { ptr, ptr, ptr }
%struct.irq_source_info_funcs = type { ptr, ptr }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s():%d\0A\00", [23 x i8] zeroinitializer }, align 32
@__func__.dal_irq_service_construct = private unnamed_addr constant [26 x i8] c"dal_irq_service_construct\00", align 1
@__func__.dal_irq_service_destroy = private unnamed_addr constant [24 x i8] c"dal_irq_service_destroy\00", align 1
@__func__.dal_irq_service_set_generic = private unnamed_addr constant [28 x i8] c"dal_irq_service_set_generic\00", align 1
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: cannot find irq info table entry for %d\0A\00", [51 x i8] zeroinitializer }, align 32
@__func__.dal_irq_service_set = private unnamed_addr constant [20 x i8] c"dal_irq_service_set\00", align 1
@__func__.dal_irq_service_ack_generic = private unnamed_addr constant [28 x i8] c"dal_irq_service_ack_generic\00", align 1
@__func__.dal_irq_service_ack = private unnamed_addr constant [20 x i8] c"dal_irq_service_ack\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 63, i32 3 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [62 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/irq/irq_service.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 114, i32 3 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dal_irq_service_construct(ptr nocapture noundef writeonly %irq_service, ptr noundef readonly %init_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %init_data, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %init_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_data, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.do.body_crit_edge, label %if.end

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dal_irq_service_construct, i32 noundef 63) #2
  tail call void @kgdb_breakpoint() #2
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  %2 = ptrtoint ptr %irq_service to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %irq_service, align 4
  br label %return

return:                                           ; preds = %if.end, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dal_irq_service_destroy(ptr noundef %irq_service) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %irq_service, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %irq_service to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %irq_service, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.do.body_crit_edge, label %if.end

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dal_irq_service_destroy, i32 noundef 73) #2
  tail call void @kgdb_breakpoint() #2
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @kfree(ptr noundef nonnull %1) #2
  %2 = ptrtoint ptr %irq_service to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %irq_service, align 4
  br label %return

return:                                           ; preds = %if.end, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dal_irq_service_set_generic(ptr nocapture noundef readonly %irq_service, ptr nocapture noundef readonly %info, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %enable_reg = getelementptr inbounds %struct.irq_source_info, ptr %info, i32 0, i32 2
  %0 = ptrtoint ptr %enable_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enable_reg, align 4
  %2 = ptrtoint ptr %irq_service to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_service, align 4
  %call = tail call i32 @dm_read_reg_func(ptr noundef %3, i32 noundef %1, ptr noundef nonnull @__func__.dal_irq_service_set_generic) #2
  %enable_mask = getelementptr inbounds %struct.irq_source_info, ptr %info, i32 0, i32 3
  %4 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %enable_mask, align 4
  %neg = xor i32 %5, -1
  %and = and i32 %call, %neg
  %not.enable = xor i1 %enable, true
  %cond = zext i1 %not.enable to i32
  %arrayidx = getelementptr %struct.irq_source_info, ptr %info, i32 0, i32 4, i32 %cond
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %and2 = and i32 %7, %5
  %or = or i32 %and2, %and
  %8 = ptrtoint ptr %irq_service to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_service, align 4
  tail call void @dm_write_reg_func(ptr noundef %9, i32 noundef %1, i32 noundef %or, ptr noundef nonnull @__func__.dal_irq_service_set_generic) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_read_reg_func(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_write_reg_func(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dal_irq_service_set(ptr noundef %irq_service, i32 noundef %source, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 98, i32 %source)
  %cmp.i = icmp ugt i32 %source, 98
  br i1 %cmp.i, label %entry.if.then_crit_edge, label %find_irq_source_info.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then

find_irq_source_info.exit:                        ; preds = %entry
  %info.i = getelementptr inbounds %struct.irq_service, ptr %irq_service, i32 0, i32 1
  %0 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info.i, align 4
  %arrayidx.i = getelementptr %struct.irq_source_info, ptr %1, i32 %source
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %find_irq_source_info.exit.if.then_crit_edge, label %if.end

find_irq_source_info.exit.if.then_crit_edge:      ; preds = %find_irq_source_info.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then

if.then:                                          ; preds = %find_irq_source_info.exit.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dal_irq_service_set, i32 noundef %source) #2
  br label %cleanup

if.end:                                           ; preds = %find_irq_source_info.exit
  %call1 = tail call zeroext i1 @dal_irq_service_ack(ptr noundef %irq_service, i32 noundef %source)
  %funcs = getelementptr %struct.irq_source_info, ptr %1, i32 %source, i32 9
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end10_crit_edge, label %land.lhs.true

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %land.lhs.true.if.end10_crit_edge, label %if.then5

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end10

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  %call9 = tail call zeroext i1 %5(ptr noundef %irq_service, ptr noundef nonnull %arrayidx.i, i1 noundef zeroext %enable) #2
  br label %cleanup

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %enable_reg.i = getelementptr %struct.irq_source_info, ptr %1, i32 %source, i32 2
  %6 = ptrtoint ptr %enable_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %enable_reg.i, align 4
  %8 = ptrtoint ptr %irq_service to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_service, align 4
  %call.i = tail call i32 @dm_read_reg_func(ptr noundef %9, i32 noundef %7, ptr noundef nonnull @__func__.dal_irq_service_set_generic) #2
  %enable_mask.i = getelementptr %struct.irq_source_info, ptr %1, i32 %source, i32 3
  %10 = ptrtoint ptr %enable_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %enable_mask.i, align 4
  %neg.i = xor i32 %11, -1
  %and.i = and i32 %call.i, %neg.i
  %not.enable.i = xor i1 %enable, true
  %cond.i = zext i1 %not.enable.i to i32
  %arrayidx.i24 = getelementptr %struct.irq_source_info, ptr %1, i32 %source, i32 4, i32 %cond.i
  %12 = ptrtoint ptr %arrayidx.i24 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i24, align 4
  %and2.i = and i32 %13, %11
  %or.i = or i32 %and2.i, %and.i
  %14 = ptrtoint ptr %irq_service to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %irq_service, align 4
  tail call void @dm_write_reg_func(ptr noundef %15, i32 noundef %7, i32 noundef %or.i, ptr noundef nonnull @__func__.dal_irq_service_set_generic) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then5, %if.then
  %retval.0 = phi i1 [ %call9, %if.then5 ], [ true, %if.end10 ], [ false, %if.then ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dal_irq_service_ack(ptr noundef %irq_service, i32 noundef %source) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 98, i32 %source)
  %cmp.i = icmp ugt i32 %source, 98
  br i1 %cmp.i, label %entry.if.then_crit_edge, label %find_irq_source_info.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then

find_irq_source_info.exit:                        ; preds = %entry
  %info.i = getelementptr inbounds %struct.irq_service, ptr %irq_service, i32 0, i32 1
  %0 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info.i, align 4
  %arrayidx.i = getelementptr %struct.irq_source_info, ptr %1, i32 %source
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %find_irq_source_info.exit.if.then_crit_edge, label %if.end

find_irq_source_info.exit.if.then_crit_edge:      ; preds = %find_irq_source_info.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then

if.then:                                          ; preds = %find_irq_source_info.exit.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.dal_irq_service_ack, i32 noundef %source) #2
  br label %cleanup

if.end:                                           ; preds = %find_irq_source_info.exit
  %funcs = getelementptr %struct.irq_source_info, ptr %1, i32 %source, i32 9
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end8_crit_edge, label %land.lhs.true

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %ack = getelementptr inbounds %struct.irq_source_info_funcs, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ack to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ack, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %land.lhs.true.if.end8_crit_edge, label %if.then4

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end8

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  %call7 = tail call zeroext i1 %5(ptr noundef %irq_service, ptr noundef nonnull %arrayidx.i) #2
  br label %cleanup

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %ack_reg.i = getelementptr %struct.irq_source_info, ptr %1, i32 %source, i32 5
  %6 = ptrtoint ptr %ack_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ack_reg.i, align 4
  %8 = ptrtoint ptr %irq_service to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_service, align 4
  %call.i = tail call i32 @dm_read_reg_func(ptr noundef %9, i32 noundef %7, ptr noundef nonnull @__func__.dal_irq_service_ack_generic) #2
  %ack_mask.i = getelementptr %struct.irq_source_info, ptr %1, i32 %source, i32 6
  %10 = ptrtoint ptr %ack_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ack_mask.i, align 4
  %neg.i = xor i32 %11, -1
  %and.i = and i32 %call.i, %neg.i
  %ack_value.i = getelementptr %struct.irq_source_info, ptr %1, i32 %source, i32 7
  %12 = ptrtoint ptr %ack_value.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ack_value.i, align 4
  %and2.i = and i32 %13, %11
  %or.i = or i32 %and2.i, %and.i
  %14 = ptrtoint ptr %irq_service to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %irq_service, align 4
  tail call void @dm_write_reg_func(ptr noundef %15, i32 noundef %7, i32 noundef %or.i, ptr noundef nonnull @__func__.dal_irq_service_ack_generic) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then4, %if.then
  %retval.0 = phi i1 [ %call7, %if.then4 ], [ true, %if.end8 ], [ false, %if.then ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dal_irq_service_ack_generic(ptr nocapture noundef readonly %irq_service, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %ack_reg = getelementptr inbounds %struct.irq_source_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %ack_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ack_reg, align 4
  %2 = ptrtoint ptr %irq_service to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_service, align 4
  %call = tail call i32 @dm_read_reg_func(ptr noundef %3, i32 noundef %1, ptr noundef nonnull @__func__.dal_irq_service_ack_generic) #2
  %ack_mask = getelementptr inbounds %struct.irq_source_info, ptr %info, i32 0, i32 6
  %4 = ptrtoint ptr %ack_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ack_mask, align 4
  %neg = xor i32 %5, -1
  %and = and i32 %call, %neg
  %ack_value = getelementptr inbounds %struct.irq_source_info, ptr %info, i32 0, i32 7
  %6 = ptrtoint ptr %ack_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ack_value, align 4
  %and2 = and i32 %7, %5
  %or = or i32 %and2, %and
  %8 = ptrtoint ptr %irq_service to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_service, align 4
  tail call void @dm_write_reg_func(ptr noundef %9, i32 noundef %1, i32 noundef %or, ptr noundef nonnull @__func__.dal_irq_service_ack_generic) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dal_irq_service_to_irq_source(ptr noundef %irq_service, i32 noundef %src_id, i32 noundef %ext_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %funcs = getelementptr inbounds %struct.irq_service, ptr %irq_service, i32 0, i32 2
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %funcs, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 %3(ptr noundef %irq_service, i32 noundef %src_id, i32 noundef %ext_id) #2
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/irq/irq_service.c", i32 63, i32 3}
!2 = !{ptr @__func__.dal_irq_service_construct, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__func__.dal_irq_service_destroy, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/irq/irq_service.c", i32 73, i32 3}
!5 = !{ptr @__func__.dal_irq_service_set_generic, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/irq/irq_service.c", i32 98, i32 19}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/irq/irq_service.c", i32 114, i32 3}
!9 = !{ptr @__func__.dal_irq_service_set, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__func__.dal_irq_service_ack_generic, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/irq/irq_service.c", i32 135, i32 19}
!12 = !{ptr @__func__.dal_irq_service_ack, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/irq/irq_service.c", i32 150, i32 3}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
