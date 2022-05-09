; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/modules/hdcp/hdcp1_transition.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp1_transition.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mod_hdcp = type { %struct.mod_hdcp_config, %struct.mod_hdcp_connection, [6 x %struct.mod_hdcp_display], %struct.mod_hdcp_authentication, %struct.mod_hdcp_state, [2025 x i8] }
%struct.mod_hdcp_config = type { %struct.mod_hdcp_psp, %struct.mod_hdcp_ddc, i8 }
%struct.mod_hdcp_psp = type { ptr, ptr, %struct.mod_hdcp_psp_caps }
%struct.mod_hdcp_psp_caps = type { i8 }
%struct.mod_hdcp_ddc = type { ptr, %struct.anon }
%struct.anon = type { ptr, ptr, ptr, ptr }
%struct.mod_hdcp_connection = type { %struct.mod_hdcp_link, i8, i8, i8, i8, %struct.mod_hdcp_trace, i8, i8 }
%struct.mod_hdcp_link = type { i32, i8, i8, i8, i8, i8, i8, %union.anon, %struct.mod_hdcp_link_adjustment }
%union.anon = type { %struct.mod_hdcp_displayport }
%struct.mod_hdcp_displayport = type { i8, i8, i8, i8 }
%struct.mod_hdcp_link_adjustment = type { i8, %struct.mod_hdcp_link_adjustment_hdcp1, %struct.mod_hdcp_link_adjustment_hdcp2 }
%struct.mod_hdcp_link_adjustment_hdcp1 = type { i8 }
%struct.mod_hdcp_link_adjustment_hdcp2 = type { i8 }
%struct.mod_hdcp_trace = type { [10 x %struct.mod_hdcp_error], i8 }
%struct.mod_hdcp_error = type { i32, i8 }
%struct.mod_hdcp_display = type { i32, i8, i8, i8, i8, %union.anon.0, %struct.mod_hdcp_display_adjustment }
%union.anon.0 = type { i8 }
%struct.mod_hdcp_display_adjustment = type { i8 }
%struct.mod_hdcp_authentication = type { i32, %union.mod_hdcp_message, %union.mod_hdcp_transition_input, %struct.mod_hdcp_auth_counters }
%union.mod_hdcp_message = type { %struct.mod_hdcp_message_hdcp2 }
%struct.mod_hdcp_message_hdcp2 = type { i8, [3 x i8], [2 x i8], [12 x i8], [534 x i8], [129 x i8], [33 x i8], [33 x i8], [17 x i8], [9 x i8], [33 x i8], [25 x i8], [177 x i8], i16, [17 x i8], [68 x i8], i16, [33 x i8], i8, [2 x i8] }
%union.mod_hdcp_transition_input = type { %struct.mod_hdcp_transition_input_hdcp2 }
%struct.mod_hdcp_transition_input_hdcp2 = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mod_hdcp_auth_counters = type { i8 }
%struct.mod_hdcp_state = type { i8, i32 }
%struct.mod_hdcp_transition_input_hdcp1 = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mod_hdcp_output = type { i8, i8, i8, i8, i16, i16, i8 }

@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[Link %d] > %s with %d ms watchdog\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"[Link %d] > %s\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.2 = internal global [9 x i64] [i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15]
@___asan_gen_ = private constant [73 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp1_transition.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.7 = private unnamed_addr constant [61 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp.h\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 421, i32 2 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_hdcp1_transition(ptr noundef %hdcp, ptr nocapture noundef readonly %event_ctx, ptr noundef readonly %input, ptr noundef %output) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 4
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %state.i, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %sw.default [
    i8 3, label %sw.bb
    i8 4, label %sw.bb8
    i8 5, label %sw.bb36
    i8 6, label %sw.bb64
    i8 7, label %sw.bb70
    i8 8, label %sw.bb85
  ]

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %input to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %input, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp.not = icmp eq i8 %4, 1
  br i1 %cmp.not, label %lor.lhs.false, label %sw.bb.if.then_crit_edge

sw.bb.if.then_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

lor.lhs.false:                                    ; preds = %sw.bb
  %bcaps_read = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 6
  %5 = ptrtoint ptr %bcaps_read to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bcaps_read, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp6.not = icmp eq i8 %6, 1
  br i1 %cmp6.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %sw.bb.if.then_crit_edge
  %7 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %output, align 2
  %callback_delay.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %8 = ptrtoint ptr %callback_delay.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 500, ptr %callback_delay.i, align 2
  %stay_count.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %stay_count.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %stay_count.i, align 4
  %inc.i = add i32 %10, 1
  store i32 %inc.i, ptr %stay_count.i, align 4
  br label %sw.epilog

if.end:                                           ; preds = %lor.lhs.false
  %11 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %output, align 2
  %callback_delay.i183 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %12 = ptrtoint ptr %callback_delay.i183 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %callback_delay.i183, align 2
  %13 = ptrtoint ptr %state.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 288230376151711744, ptr %state.i, align 4
  %callback_stop.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 1
  %14 = ptrtoint ptr %callback_stop.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %callback_stop.i, align 1
  %watchdog_timer_stop.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 3
  %15 = ptrtoint ptr %watchdog_timer_stop.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %watchdog_timer_stop.i, align 1
  %watchdog_timer_needed.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %16 = ptrtoint ptr %watchdog_timer_needed.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %watchdog_timer_needed.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  %index6.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %18 = ptrtoint ptr %index6.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %index6.i, align 4
  %conv7.i = zext i8 %19 to i32
  %call9.i = tail call ptr @mod_hdcp_state_id_to_str(i32 noundef 4) #3
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %watchdog_timer_delay.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %20 = ptrtoint ptr %watchdog_timer_delay.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %watchdog_timer_delay.i, align 2
  %conv4.i = zext i16 %21 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %conv7.i, ptr noundef %call9.i, i32 noundef %conv4.i) #3
  br label %sw.epilog

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %conv7.i, ptr noundef %call9.i) #3
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %create_session = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 2
  %22 = ptrtoint ptr %create_session to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %create_session, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %23)
  %cmp10.not = icmp eq i8 %23, 1
  br i1 %cmp10.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #5
  %hdcp1 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 0, i32 8, i32 1
  %24 = ptrtoint ptr %hdcp1 to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load = load i8, ptr %hdcp1, align 1
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %hdcp1, align 1
  %25 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %output, align 2
  %callback_delay.i185 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %26 = ptrtoint ptr %callback_delay.i185 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %callback_delay.i185, align 2
  %watchdog_timer_needed.i186 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %27 = ptrtoint ptr %watchdog_timer_needed.i186 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %watchdog_timer_needed.i186, align 2
  %watchdog_timer_delay.i187 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %28 = ptrtoint ptr %watchdog_timer_delay.i187 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %watchdog_timer_delay.i187, align 2
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb8
  %an_write = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 3
  %29 = ptrtoint ptr %an_write to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %an_write, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %30)
  %cmp14.not = icmp eq i8 %30, 1
  br i1 %cmp14.not, label %lor.lhs.false16, label %if.else.if.then33_crit_edge

if.else.if.then33_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then33

lor.lhs.false16:                                  ; preds = %if.else
  %aksv_write = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 4
  %31 = ptrtoint ptr %aksv_write to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %aksv_write, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %32)
  %cmp18.not = icmp eq i8 %32, 1
  br i1 %cmp18.not, label %lor.lhs.false20, label %lor.lhs.false16.if.then33_crit_edge

lor.lhs.false16.if.then33_crit_edge:              ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then33

lor.lhs.false20:                                  ; preds = %lor.lhs.false16
  %33 = ptrtoint ptr %input to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %input, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %34)
  %cmp23.not = icmp eq i8 %34, 1
  br i1 %cmp23.not, label %lor.lhs.false25, label %lor.lhs.false20.if.then33_crit_edge

lor.lhs.false20.if.then33_crit_edge:              ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then33

lor.lhs.false25:                                  ; preds = %lor.lhs.false20
  %bksv_validation = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 1
  %35 = ptrtoint ptr %bksv_validation to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bksv_validation, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %36)
  %cmp27.not = icmp eq i8 %36, 1
  br i1 %cmp27.not, label %lor.lhs.false29, label %lor.lhs.false25.if.then33_crit_edge

lor.lhs.false25.if.then33_crit_edge:              ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then33

lor.lhs.false29:                                  ; preds = %lor.lhs.false25
  %ainfo_write = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 5
  %37 = ptrtoint ptr %ainfo_write to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ainfo_write, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %38)
  %cmp31 = icmp eq i8 %38, 2
  br i1 %cmp31, label %lor.lhs.false29.if.then33_crit_edge, label %if.end35

lor.lhs.false29.if.then33_crit_edge:              ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then33

if.then33:                                        ; preds = %lor.lhs.false29.if.then33_crit_edge, %lor.lhs.false25.if.then33_crit_edge, %lor.lhs.false20.if.then33_crit_edge, %lor.lhs.false16.if.then33_crit_edge, %if.else.if.then33_crit_edge
  %39 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %output, align 2
  %callback_delay.i188 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %40 = ptrtoint ptr %callback_delay.i188 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %callback_delay.i188, align 2
  %watchdog_timer_needed.i189 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %41 = ptrtoint ptr %watchdog_timer_needed.i189 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %watchdog_timer_needed.i189, align 2
  %watchdog_timer_delay.i190 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %42 = ptrtoint ptr %watchdog_timer_delay.i190 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %watchdog_timer_delay.i190, align 2
  br label %sw.epilog

if.end35:                                         ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #5
  %43 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %output, align 2
  %callback_delay.i191 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %44 = ptrtoint ptr %callback_delay.i191 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 300, ptr %callback_delay.i191, align 2
  tail call fastcc void @set_state_id(ptr noundef %hdcp, ptr noundef %output, i8 noundef zeroext 5)
  br label %sw.epilog

sw.bb36:                                          ; preds = %entry
  %bcaps_read37 = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 6
  %45 = ptrtoint ptr %bcaps_read37 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %bcaps_read37, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %46)
  %cmp39.not = icmp eq i8 %46, 1
  br i1 %cmp39.not, label %lor.lhs.false41, label %sw.bb36.if.then45_crit_edge

sw.bb36.if.then45_crit_edge:                      ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then45

lor.lhs.false41:                                  ; preds = %sw.bb36
  %r0p_read = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 7
  %47 = ptrtoint ptr %r0p_read to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %r0p_read, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %48)
  %cmp43.not = icmp eq i8 %48, 1
  br i1 %cmp43.not, label %if.else46, label %lor.lhs.false41.if.then45_crit_edge

lor.lhs.false41.if.then45_crit_edge:              ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then45

if.then45:                                        ; preds = %lor.lhs.false41.if.then45_crit_edge, %sw.bb36.if.then45_crit_edge
  %49 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %output, align 2
  %callback_delay.i192 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %50 = ptrtoint ptr %callback_delay.i192 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %callback_delay.i192, align 2
  %watchdog_timer_needed.i193 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %51 = ptrtoint ptr %watchdog_timer_needed.i193 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %watchdog_timer_needed.i193, align 2
  %watchdog_timer_delay.i194 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %52 = ptrtoint ptr %watchdog_timer_delay.i194 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 0, ptr %watchdog_timer_delay.i194, align 2
  br label %sw.epilog

if.else46:                                        ; preds = %lor.lhs.false41
  %rx_validation = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 8
  %53 = ptrtoint ptr %rx_validation to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %rx_validation, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %54)
  %cmp48.not = icmp eq i8 %54, 1
  br i1 %cmp48.not, label %if.else51, label %if.then50

if.then50:                                        ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #5
  %55 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %output, align 2
  %callback_delay.i195 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %56 = ptrtoint ptr %callback_delay.i195 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 1000, ptr %callback_delay.i195, align 2
  %watchdog_timer_needed.i196 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %57 = ptrtoint ptr %watchdog_timer_needed.i196 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %watchdog_timer_needed.i196, align 2
  %watchdog_timer_delay.i197 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %58 = ptrtoint ptr %watchdog_timer_delay.i197 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 0, ptr %watchdog_timer_delay.i197, align 2
  br label %sw.epilog

if.else51:                                        ; preds = %if.else46
  %is_repeater = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 1
  %59 = ptrtoint ptr %is_repeater to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %is_repeater, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.not = icmp eq i8 %60, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.then61

land.lhs.true:                                    ; preds = %if.else51
  %encryption = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 9
  %61 = ptrtoint ptr %encryption to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %encryption, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %62)
  %cmp53.not = icmp eq i8 %62, 1
  %63 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %output, align 2
  %callback_delay.i204 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %64 = ptrtoint ptr %callback_delay.i204 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 0, ptr %callback_delay.i204, align 2
  br i1 %cmp53.not, label %if.else62, label %if.then55

if.then55:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %watchdog_timer_needed.i199 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %65 = ptrtoint ptr %watchdog_timer_needed.i199 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %watchdog_timer_needed.i199, align 2
  %watchdog_timer_delay.i200 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %66 = ptrtoint ptr %watchdog_timer_delay.i200 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 0, ptr %watchdog_timer_delay.i200, align 2
  br label %sw.epilog

if.then61:                                        ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #5
  %67 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %output, align 2
  %callback_delay.i201 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %68 = ptrtoint ptr %callback_delay.i201 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 0, ptr %callback_delay.i201, align 2
  %watchdog_timer_needed.i202 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %69 = ptrtoint ptr %watchdog_timer_needed.i202 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %watchdog_timer_needed.i202, align 2
  %watchdog_timer_delay.i203 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %70 = ptrtoint ptr %watchdog_timer_delay.i203 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 5000, ptr %watchdog_timer_delay.i203, align 2
  tail call fastcc void @set_state_id(ptr noundef %hdcp, ptr noundef %output, i8 noundef zeroext 7)
  br label %sw.epilog

if.else62:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @set_state_id(ptr noundef %hdcp, ptr noundef %output, i8 noundef zeroext 6)
  %auth_complete.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 6
  %71 = ptrtoint ptr %auth_complete.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %auth_complete.i, align 2
  tail call void @mod_hdcp_log_ddc_trace(ptr noundef %hdcp) #3
  br label %sw.epilog

sw.bb64:                                          ; preds = %entry
  %link_maintenance = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 10
  %72 = ptrtoint ptr %link_maintenance to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %link_maintenance, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %73)
  %cmp66 = icmp eq i8 %73, 2
  %74 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %output, align 2
  %callback_delay.i205 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  br i1 %cmp66, label %if.then68, label %if.end69

if.then68:                                        ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #5
  %75 = ptrtoint ptr %callback_delay.i205 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 0, ptr %callback_delay.i205, align 2
  %watchdog_timer_needed.i206 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %76 = ptrtoint ptr %watchdog_timer_needed.i206 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %watchdog_timer_needed.i206, align 2
  %watchdog_timer_delay.i207 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %77 = ptrtoint ptr %watchdog_timer_delay.i207 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 0, ptr %watchdog_timer_delay.i207, align 2
  br label %sw.epilog

if.end69:                                         ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #5
  %78 = ptrtoint ptr %callback_delay.i205 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 500, ptr %callback_delay.i205, align 2
  %stay_count.i209 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 4, i32 1
  %79 = ptrtoint ptr %stay_count.i209 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %stay_count.i209, align 4
  %inc.i210 = add i32 %80, 1
  store i32 %inc.i210, ptr %stay_count.i209, align 4
  br label %sw.epilog

sw.bb70:                                          ; preds = %entry
  %ready_check = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 11
  %81 = ptrtoint ptr %ready_check to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %ready_check, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %82)
  %cmp72.not = icmp eq i8 %82, 1
  br i1 %cmp72.not, label %if.end84, label %if.then74

if.then74:                                        ; preds = %sw.bb70
  %83 = ptrtoint ptr %event_ctx to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %event_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %84)
  %cmp75 = icmp eq i32 %84, 1
  br i1 %cmp75, label %if.then77, label %if.else82

if.then77:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #5
  %hdcp178 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 0, i32 8, i32 1
  %85 = ptrtoint ptr %hdcp178 to i32
  call void @__asan_load1_noabort(i32 %85)
  %bf.load79 = load i8, ptr %hdcp178, align 1
  %bf.set81 = or i8 %bf.load79, 64
  store i8 %bf.set81, ptr %hdcp178, align 1
  %86 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 1, ptr %output, align 2
  %callback_delay.i211 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %87 = ptrtoint ptr %callback_delay.i211 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 0, ptr %callback_delay.i211, align 2
  %watchdog_timer_needed.i212 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %88 = ptrtoint ptr %watchdog_timer_needed.i212 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %watchdog_timer_needed.i212, align 2
  %watchdog_timer_delay.i213 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %89 = ptrtoint ptr %watchdog_timer_delay.i213 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 0, ptr %watchdog_timer_delay.i213, align 2
  br label %sw.epilog

if.else82:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #5
  %90 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 1, ptr %output, align 2
  %callback_delay.i214 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %91 = ptrtoint ptr %callback_delay.i214 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 500, ptr %callback_delay.i214, align 2
  %stay_count.i215 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 4, i32 1
  %92 = ptrtoint ptr %stay_count.i215 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %stay_count.i215, align 4
  %inc.i216 = add i32 %93, 1
  store i32 %inc.i216, ptr %stay_count.i215, align 4
  br label %sw.epilog

if.end84:                                         ; preds = %sw.bb70
  %94 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 1, ptr %output, align 2
  %callback_delay.i217 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %95 = ptrtoint ptr %callback_delay.i217 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 0, ptr %callback_delay.i217, align 2
  %96 = ptrtoint ptr %state.i to i32
  call void @__asan_storeN_noabort(i32 %96, i32 8)
  store i64 576460752303423488, ptr %state.i, align 4
  %callback_stop.i219 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 1
  %97 = ptrtoint ptr %callback_stop.i219 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 1, ptr %callback_stop.i219, align 1
  %watchdog_timer_stop.i220 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 3
  %98 = ptrtoint ptr %watchdog_timer_stop.i220 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 1, ptr %watchdog_timer_stop.i220, align 1
  %watchdog_timer_needed.i221 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %99 = ptrtoint ptr %watchdog_timer_needed.i221 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %watchdog_timer_needed.i221, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool.not.i222 = icmp eq i8 %100, 0
  %index6.i223 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %101 = ptrtoint ptr %index6.i223 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %index6.i223, align 4
  %conv7.i224 = zext i8 %102 to i32
  %call9.i225 = tail call ptr @mod_hdcp_state_id_to_str(i32 noundef 8) #3
  br i1 %tobool.not.i222, label %if.else.i229, label %if.then.i228

if.then.i228:                                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #5
  %watchdog_timer_delay.i226 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %103 = ptrtoint ptr %watchdog_timer_delay.i226 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %watchdog_timer_delay.i226, align 2
  %conv4.i227 = zext i16 %104 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %conv7.i224, ptr noundef %call9.i225, i32 noundef %conv4.i227) #3
  br label %sw.epilog

if.else.i229:                                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %conv7.i224, ptr noundef %call9.i225) #3
  br label %sw.epilog

sw.bb85:                                          ; preds = %entry
  %bstatus_read = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 12
  %105 = ptrtoint ptr %bstatus_read to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %bstatus_read, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %106)
  %cmp87.not = icmp eq i8 %106, 1
  br i1 %cmp87.not, label %lor.lhs.false89, label %sw.bb85.if.then118_crit_edge

sw.bb85.if.then118_crit_edge:                     ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then118

lor.lhs.false89:                                  ; preds = %sw.bb85
  %max_cascade_check = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 13
  %107 = ptrtoint ptr %max_cascade_check to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %max_cascade_check, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %108)
  %cmp91.not = icmp eq i8 %108, 1
  br i1 %cmp91.not, label %lor.lhs.false93, label %lor.lhs.false89.if.then118_crit_edge

lor.lhs.false89.if.then118_crit_edge:             ; preds = %lor.lhs.false89
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then118

lor.lhs.false93:                                  ; preds = %lor.lhs.false89
  %max_devs_check = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 14
  %109 = ptrtoint ptr %max_devs_check to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %max_devs_check, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %110)
  %cmp95.not = icmp eq i8 %110, 1
  br i1 %cmp95.not, label %lor.lhs.false97, label %lor.lhs.false93.if.then118_crit_edge

lor.lhs.false93.if.then118_crit_edge:             ; preds = %lor.lhs.false93
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then118

lor.lhs.false97:                                  ; preds = %lor.lhs.false93
  %device_count_check = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 15
  %111 = ptrtoint ptr %device_count_check to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %device_count_check, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %112)
  %cmp99.not = icmp eq i8 %112, 1
  br i1 %cmp99.not, label %lor.lhs.false101, label %lor.lhs.false97.if.then118_crit_edge

lor.lhs.false97.if.then118_crit_edge:             ; preds = %lor.lhs.false97
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then118

lor.lhs.false101:                                 ; preds = %lor.lhs.false97
  %ksvlist_read = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 16
  %113 = ptrtoint ptr %ksvlist_read to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %ksvlist_read, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %114)
  %cmp103.not = icmp eq i8 %114, 1
  br i1 %cmp103.not, label %lor.lhs.false105, label %lor.lhs.false101.if.then118_crit_edge

lor.lhs.false101.if.then118_crit_edge:            ; preds = %lor.lhs.false101
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then118

lor.lhs.false105:                                 ; preds = %lor.lhs.false101
  %vp_read = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 17
  %115 = ptrtoint ptr %vp_read to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %vp_read, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %116)
  %cmp107.not = icmp eq i8 %116, 1
  br i1 %cmp107.not, label %lor.lhs.false109, label %lor.lhs.false105.if.then118_crit_edge

lor.lhs.false105.if.then118_crit_edge:            ; preds = %lor.lhs.false105
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then118

lor.lhs.false109:                                 ; preds = %lor.lhs.false105
  %ksvlist_vp_validation = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 18
  %117 = ptrtoint ptr %ksvlist_vp_validation to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %ksvlist_vp_validation, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %118)
  %cmp111.not = icmp eq i8 %118, 1
  br i1 %cmp111.not, label %lor.lhs.false113, label %lor.lhs.false109.if.then118_crit_edge

lor.lhs.false109.if.then118_crit_edge:            ; preds = %lor.lhs.false109
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then118

lor.lhs.false113:                                 ; preds = %lor.lhs.false109
  %encryption114 = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 9
  %119 = ptrtoint ptr %encryption114 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %encryption114, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %120)
  %cmp116.not = icmp eq i8 %120, 1
  br i1 %cmp116.not, label %if.end119, label %lor.lhs.false113.if.then118_crit_edge

lor.lhs.false113.if.then118_crit_edge:            ; preds = %lor.lhs.false113
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then118

if.then118:                                       ; preds = %lor.lhs.false113.if.then118_crit_edge, %lor.lhs.false109.if.then118_crit_edge, %lor.lhs.false105.if.then118_crit_edge, %lor.lhs.false101.if.then118_crit_edge, %lor.lhs.false97.if.then118_crit_edge, %lor.lhs.false93.if.then118_crit_edge, %lor.lhs.false89.if.then118_crit_edge, %sw.bb85.if.then118_crit_edge
  %121 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 1, ptr %output, align 2
  %callback_delay.i231 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %122 = ptrtoint ptr %callback_delay.i231 to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 0, ptr %callback_delay.i231, align 2
  %watchdog_timer_needed.i232 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %123 = ptrtoint ptr %watchdog_timer_needed.i232 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 0, ptr %watchdog_timer_needed.i232, align 2
  %watchdog_timer_delay.i233 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %124 = ptrtoint ptr %watchdog_timer_delay.i233 to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 0, ptr %watchdog_timer_delay.i233, align 2
  br label %sw.epilog

if.end119:                                        ; preds = %lor.lhs.false113
  call void @__sanitizer_cov_trace_pc() #5
  %125 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 1, ptr %output, align 2
  %callback_delay.i234 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %126 = ptrtoint ptr %callback_delay.i234 to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 0, ptr %callback_delay.i234, align 2
  tail call fastcc void @set_state_id(ptr noundef %hdcp, ptr noundef %output, i8 noundef zeroext 6)
  %auth_complete.i235 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 6
  %127 = ptrtoint ptr %auth_complete.i235 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 1, ptr %auth_complete.i235, align 2
  tail call void @mod_hdcp_log_ddc_trace(ptr noundef %hdcp) #3
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %128 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 1, ptr %output, align 2
  %callback_delay.i236 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %129 = ptrtoint ptr %callback_delay.i236 to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 0, ptr %callback_delay.i236, align 2
  %watchdog_timer_needed.i237 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %130 = ptrtoint ptr %watchdog_timer_needed.i237 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 0, ptr %watchdog_timer_needed.i237, align 2
  %watchdog_timer_delay.i238 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %131 = ptrtoint ptr %watchdog_timer_delay.i238 to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 0, ptr %watchdog_timer_delay.i238, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end119, %if.then118, %if.else.i229, %if.then.i228, %if.else82, %if.then77, %if.end69, %if.then68, %if.else62, %if.then61, %if.then55, %if.then50, %if.then45, %if.end35, %if.then33, %if.then12, %if.else.i, %if.then.i, %if.then
  %status.0 = phi i32 [ 2, %sw.default ], [ 0, %if.end119 ], [ 2, %if.then118 ], [ 2, %if.then77 ], [ 0, %if.else82 ], [ 2, %if.then68 ], [ 0, %if.end69 ], [ 0, %if.else62 ], [ 0, %if.then61 ], [ 2, %if.then55 ], [ 2, %if.then50 ], [ 2, %if.then45 ], [ 2, %if.then33 ], [ 0, %if.end35 ], [ 2, %if.then12 ], [ 0, %if.then ], [ 0, %if.then.i ], [ 0, %if.else.i ], [ 0, %if.then.i228 ], [ 0, %if.else.i229 ]
  ret i32 %status.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_state_id(ptr nocapture noundef %hdcp, ptr nocapture noundef %output, i8 noundef zeroext %id) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %state = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 4
  %0 = ptrtoint ptr %state to i32
  call void @__asan_storeN_noabort(i32 %0, i32 8)
  store i64 0, ptr %state, align 4
  store i8 %id, ptr %state, align 4
  %callback_stop = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 1
  %1 = ptrtoint ptr %callback_stop to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %callback_stop, align 1
  %watchdog_timer_stop = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 3
  %2 = ptrtoint ptr %watchdog_timer_stop to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %watchdog_timer_stop, align 1
  %watchdog_timer_needed = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %3 = ptrtoint ptr %watchdog_timer_needed to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %watchdog_timer_needed, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %index6 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %5 = ptrtoint ptr %index6 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %index6, align 4
  %conv7 = zext i8 %6 to i32
  %conv8 = zext i8 %id to i32
  %call9 = tail call ptr @mod_hdcp_state_id_to_str(i32 noundef %conv8) #3
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %watchdog_timer_delay = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %7 = ptrtoint ptr %watchdog_timer_delay to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %watchdog_timer_delay, align 2
  %conv4 = zext i16 %8 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %conv7, ptr noundef %call9, i32 noundef %conv4) #3
  br label %do.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %conv7, ptr noundef %call9) #3
  br label %do.end

do.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_hdcp1_dp_transition(ptr noundef %hdcp, ptr nocapture noundef readonly %event_ctx, ptr noundef readonly %input, ptr noundef %output) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 4
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %state.i, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %1, label %sw.default [
    i8 9, label %sw.bb
    i8 10, label %sw.bb10
    i8 11, label %sw.bb41
    i8 12, label %sw.bb58
    i8 13, label %sw.bb112
    i8 14, label %sw.bb122
    i8 15, label %sw.bb150
  ]

sw.bb:                                            ; preds = %entry
  %bcaps_read = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 6
  %3 = ptrtoint ptr %bcaps_read to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bcaps_read, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp.not = icmp eq i8 %4, 1
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %5 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %output, align 2
  %callback_delay.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %6 = ptrtoint ptr %callback_delay.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %callback_delay.i, align 2
  %watchdog_timer_needed.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %7 = ptrtoint ptr %watchdog_timer_needed.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %watchdog_timer_needed.i, align 2
  %watchdog_timer_delay.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %8 = ptrtoint ptr %watchdog_timer_delay.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %watchdog_timer_delay.i, align 2
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  %hdcp_capable_dp = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 19
  %9 = ptrtoint ptr %hdcp_capable_dp to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %hdcp_capable_dp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp6.not = icmp eq i8 %10, 1
  br i1 %cmp6.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %hdcp1 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 0, i32 8, i32 1
  %11 = ptrtoint ptr %hdcp1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %hdcp1, align 1
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %hdcp1, align 1
  %12 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %output, align 2
  %callback_delay.i309 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %13 = ptrtoint ptr %callback_delay.i309 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %callback_delay.i309, align 2
  %watchdog_timer_needed.i310 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %14 = ptrtoint ptr %watchdog_timer_needed.i310 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %watchdog_timer_needed.i310, align 2
  %watchdog_timer_delay.i311 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %15 = ptrtoint ptr %watchdog_timer_delay.i311 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %watchdog_timer_delay.i311, align 2
  br label %sw.epilog

if.end9:                                          ; preds = %if.else
  %16 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %output, align 2
  %callback_delay.i312 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %17 = ptrtoint ptr %callback_delay.i312 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %callback_delay.i312, align 2
  %18 = ptrtoint ptr %state.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 8)
  store i64 720575940379279360, ptr %state.i, align 4
  %callback_stop.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 1
  %19 = ptrtoint ptr %callback_stop.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %callback_stop.i, align 1
  %watchdog_timer_stop.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 3
  %20 = ptrtoint ptr %watchdog_timer_stop.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %watchdog_timer_stop.i, align 1
  %watchdog_timer_needed.i314 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %21 = ptrtoint ptr %watchdog_timer_needed.i314 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %watchdog_timer_needed.i314, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  %index6.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %23 = ptrtoint ptr %index6.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %index6.i, align 4
  %conv7.i = zext i8 %24 to i32
  %call9.i = tail call ptr @mod_hdcp_state_id_to_str(i32 noundef 10) #3
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  %watchdog_timer_delay.i315 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %25 = ptrtoint ptr %watchdog_timer_delay.i315 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %watchdog_timer_delay.i315, align 2
  %conv4.i = zext i16 %26 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %conv7.i, ptr noundef %call9.i, i32 noundef %conv4.i) #3
  br label %sw.epilog

if.else.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %conv7.i, ptr noundef %call9.i) #3
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %create_session = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 2
  %27 = ptrtoint ptr %create_session to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %create_session, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %28)
  %cmp12.not = icmp eq i8 %28, 1
  br i1 %cmp12.not, label %if.else19, label %if.then14

if.then14:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #5
  %hdcp115 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 0, i32 8, i32 1
  %29 = ptrtoint ptr %hdcp115 to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load16 = load i8, ptr %hdcp115, align 1
  %bf.set18 = or i8 %bf.load16, -128
  store i8 %bf.set18, ptr %hdcp115, align 1
  %30 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %output, align 2
  %callback_delay.i316 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %31 = ptrtoint ptr %callback_delay.i316 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %callback_delay.i316, align 2
  %watchdog_timer_needed.i317 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %32 = ptrtoint ptr %watchdog_timer_needed.i317 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %watchdog_timer_needed.i317, align 2
  %watchdog_timer_delay.i318 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %33 = ptrtoint ptr %watchdog_timer_delay.i318 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %watchdog_timer_delay.i318, align 2
  br label %sw.epilog

if.else19:                                        ; preds = %sw.bb10
  %an_write = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 3
  %34 = ptrtoint ptr %an_write to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %an_write, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %35)
  %cmp21.not = icmp eq i8 %35, 1
  br i1 %cmp21.not, label %lor.lhs.false, label %if.else19.if.then38_crit_edge

if.else19.if.then38_crit_edge:                    ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then38

lor.lhs.false:                                    ; preds = %if.else19
  %aksv_write = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 4
  %36 = ptrtoint ptr %aksv_write to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %aksv_write, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %37)
  %cmp24.not = icmp eq i8 %37, 1
  br i1 %cmp24.not, label %lor.lhs.false26, label %lor.lhs.false.if.then38_crit_edge

lor.lhs.false.if.then38_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then38

lor.lhs.false26:                                  ; preds = %lor.lhs.false
  %38 = ptrtoint ptr %input to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %input, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %39)
  %cmp28.not = icmp eq i8 %39, 1
  br i1 %cmp28.not, label %lor.lhs.false30, label %lor.lhs.false26.if.then38_crit_edge

lor.lhs.false26.if.then38_crit_edge:              ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then38

lor.lhs.false30:                                  ; preds = %lor.lhs.false26
  %bksv_validation = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 1
  %40 = ptrtoint ptr %bksv_validation to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %bksv_validation, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %41)
  %cmp32.not = icmp eq i8 %41, 1
  br i1 %cmp32.not, label %lor.lhs.false34, label %lor.lhs.false30.if.then38_crit_edge

lor.lhs.false30.if.then38_crit_edge:              ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then38

lor.lhs.false34:                                  ; preds = %lor.lhs.false30
  %ainfo_write = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 5
  %42 = ptrtoint ptr %ainfo_write to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ainfo_write, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %43)
  %cmp36 = icmp eq i8 %43, 2
  br i1 %cmp36, label %lor.lhs.false34.if.then38_crit_edge, label %if.end40

lor.lhs.false34.if.then38_crit_edge:              ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then38

if.then38:                                        ; preds = %lor.lhs.false34.if.then38_crit_edge, %lor.lhs.false30.if.then38_crit_edge, %lor.lhs.false26.if.then38_crit_edge, %lor.lhs.false.if.then38_crit_edge, %if.else19.if.then38_crit_edge
  %44 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %output, align 2
  %callback_delay.i319 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %45 = ptrtoint ptr %callback_delay.i319 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %callback_delay.i319, align 2
  %watchdog_timer_needed.i320 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %46 = ptrtoint ptr %watchdog_timer_needed.i320 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %watchdog_timer_needed.i320, align 2
  %watchdog_timer_delay.i321 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %47 = ptrtoint ptr %watchdog_timer_delay.i321 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %watchdog_timer_delay.i321, align 2
  br label %sw.epilog

if.end40:                                         ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #5
  %watchdog_timer_needed.i322 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %48 = ptrtoint ptr %watchdog_timer_needed.i322 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %watchdog_timer_needed.i322, align 2
  %watchdog_timer_delay.i323 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %49 = ptrtoint ptr %watchdog_timer_delay.i323 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 100, ptr %watchdog_timer_delay.i323, align 2
  tail call fastcc void @set_state_id(ptr noundef %hdcp, ptr noundef %output, i8 noundef zeroext 11)
  br label %sw.epilog

sw.bb41:                                          ; preds = %entry
  %bstatus_read = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 12
  %50 = ptrtoint ptr %bstatus_read to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %bstatus_read, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %51)
  %cmp43.not = icmp eq i8 %51, 1
  br i1 %cmp43.not, label %if.else46, label %if.then45

if.then45:                                        ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #5
  %52 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %output, align 2
  %callback_delay.i324 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %53 = ptrtoint ptr %callback_delay.i324 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %callback_delay.i324, align 2
  %watchdog_timer_needed.i325 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %54 = ptrtoint ptr %watchdog_timer_needed.i325 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %watchdog_timer_needed.i325, align 2
  %watchdog_timer_delay.i326 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %55 = ptrtoint ptr %watchdog_timer_delay.i326 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 0, ptr %watchdog_timer_delay.i326, align 2
  br label %sw.epilog

if.else46:                                        ; preds = %sw.bb41
  %r0p_available_dp = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 21
  %56 = ptrtoint ptr %r0p_available_dp to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %r0p_available_dp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %57)
  %cmp48.not = icmp eq i8 %57, 1
  br i1 %cmp48.not, label %if.end57, label %if.then50

if.then50:                                        ; preds = %if.else46
  %58 = ptrtoint ptr %event_ctx to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %event_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %cmp51 = icmp eq i32 %59, 1
  br i1 %cmp51, label %if.then53, label %if.else54

if.then53:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #5
  %60 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %output, align 2
  %callback_delay.i327 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %61 = ptrtoint ptr %callback_delay.i327 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 0, ptr %callback_delay.i327, align 2
  %watchdog_timer_needed.i328 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %62 = ptrtoint ptr %watchdog_timer_needed.i328 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %watchdog_timer_needed.i328, align 2
  %watchdog_timer_delay.i329 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %63 = ptrtoint ptr %watchdog_timer_delay.i329 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 0, ptr %watchdog_timer_delay.i329, align 2
  br label %sw.epilog

if.else54:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #5
  %stay_count.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 4, i32 1
  %64 = ptrtoint ptr %stay_count.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %stay_count.i, align 4
  %inc.i = add i32 %65, 1
  store i32 %inc.i, ptr %stay_count.i, align 4
  br label %sw.epilog

if.end57:                                         ; preds = %if.else46
  %66 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %output, align 2
  %callback_delay.i330 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %67 = ptrtoint ptr %callback_delay.i330 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 0, ptr %callback_delay.i330, align 2
  %68 = ptrtoint ptr %state.i to i32
  call void @__asan_storeN_noabort(i32 %68, i32 8)
  store i64 864691128455135232, ptr %state.i, align 4
  %callback_stop.i332 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 1
  %69 = ptrtoint ptr %callback_stop.i332 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %callback_stop.i332, align 1
  %watchdog_timer_stop.i333 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 3
  %70 = ptrtoint ptr %watchdog_timer_stop.i333 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %watchdog_timer_stop.i333, align 1
  %watchdog_timer_needed.i334 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %71 = ptrtoint ptr %watchdog_timer_needed.i334 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %watchdog_timer_needed.i334, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool.not.i335 = icmp eq i8 %72, 0
  %index6.i336 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %73 = ptrtoint ptr %index6.i336 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %index6.i336, align 4
  %conv7.i337 = zext i8 %74 to i32
  %call9.i338 = tail call ptr @mod_hdcp_state_id_to_str(i32 noundef 12) #3
  br i1 %tobool.not.i335, label %if.else.i342, label %if.then.i341

if.then.i341:                                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #5
  %watchdog_timer_delay.i339 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %75 = ptrtoint ptr %watchdog_timer_delay.i339 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %watchdog_timer_delay.i339, align 2
  %conv4.i340 = zext i16 %76 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %conv7.i337, ptr noundef %call9.i338, i32 noundef %conv4.i340) #3
  br label %sw.epilog

if.else.i342:                                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %conv7.i337, ptr noundef %call9.i338) #3
  br label %sw.epilog

sw.bb58:                                          ; preds = %entry
  %r0p_read = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 7
  %77 = ptrtoint ptr %r0p_read to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %r0p_read, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %78)
  %cmp60.not = icmp eq i8 %78, 1
  br i1 %cmp60.not, label %if.else63, label %if.then62

if.then62:                                        ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #5
  %79 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %output, align 2
  %callback_delay.i344 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %80 = ptrtoint ptr %callback_delay.i344 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 0, ptr %callback_delay.i344, align 2
  %watchdog_timer_needed.i345 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %81 = ptrtoint ptr %watchdog_timer_needed.i345 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %watchdog_timer_needed.i345, align 2
  %watchdog_timer_delay.i346 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %82 = ptrtoint ptr %watchdog_timer_delay.i346 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 0, ptr %watchdog_timer_delay.i346, align 2
  br label %sw.epilog

if.else63:                                        ; preds = %sw.bb58
  %rx_validation = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 8
  %83 = ptrtoint ptr %rx_validation to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %rx_validation, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %84)
  %cmp65.not = icmp eq i8 %84, 1
  br i1 %cmp65.not, label %if.else74, label %if.then67

if.then67:                                        ; preds = %if.else63
  %stay_count = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 4, i32 1
  %85 = ptrtoint ptr %stay_count to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %stay_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %86)
  %cmp68 = icmp ult i32 %86, 2
  br i1 %cmp68, label %land.lhs.true, label %if.then67.if.else72_crit_edge

if.then67.if.else72_crit_edge:                    ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else72

land.lhs.true:                                    ; preds = %if.then67
  %is_hdcp1_revoked = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 3
  %87 = ptrtoint ptr %is_hdcp1_revoked to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %is_hdcp1_revoked, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool.not = icmp eq i8 %88, 0
  br i1 %tobool.not, label %if.then71, label %land.lhs.true.if.else72_crit_edge

land.lhs.true.if.else72_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else72

if.then71:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %89 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %output, align 2
  %callback_delay.i347 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %90 = ptrtoint ptr %callback_delay.i347 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 0, ptr %callback_delay.i347, align 2
  %91 = ptrtoint ptr %stay_count to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %stay_count, align 4
  %inc.i349 = add i32 %92, 1
  store i32 %inc.i349, ptr %stay_count, align 4
  br label %sw.epilog

if.else72:                                        ; preds = %land.lhs.true.if.else72_crit_edge, %if.then67.if.else72_crit_edge
  %93 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 1, ptr %output, align 2
  %callback_delay.i350 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %94 = ptrtoint ptr %callback_delay.i350 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 1000, ptr %callback_delay.i350, align 2
  %watchdog_timer_needed.i351 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %95 = ptrtoint ptr %watchdog_timer_needed.i351 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %watchdog_timer_needed.i351, align 2
  %watchdog_timer_delay.i352 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %96 = ptrtoint ptr %watchdog_timer_delay.i352 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 0, ptr %watchdog_timer_delay.i352, align 2
  br label %sw.epilog

if.else74:                                        ; preds = %if.else63
  %is_repeater = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 1
  %97 = ptrtoint ptr %is_repeater to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %is_repeater, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool75.not = icmp eq i8 %98, 0
  br i1 %tobool75.not, label %land.lhs.true76, label %if.else92.thread

land.lhs.true76:                                  ; preds = %if.else74
  %encryption = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 9
  %99 = ptrtoint ptr %encryption to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %encryption, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %100)
  %cmp78.not = icmp eq i8 %100, 1
  br i1 %cmp78.not, label %land.lhs.true83, label %land.lhs.true76.if.then91_crit_edge

land.lhs.true76.if.then91_crit_edge:              ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then91

land.lhs.true83:                                  ; preds = %land.lhs.true76
  %connection.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %101 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %102)
  %cmp.i = icmp eq i32 %102, 2
  br i1 %cmp.i, label %is_dp_mst_hdcp.exit, label %land.lhs.true83.if.else92_crit_edge

land.lhs.true83.if.else92_crit_edge:              ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else92

is_dp_mst_hdcp.exit:                              ; preds = %land.lhs.true83
  %mst_enabled.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 0, i32 7, i32 0, i32 2
  %103 = ptrtoint ptr %mst_enabled.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %mst_enabled.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool.i.not = icmp eq i8 %104, 0
  br i1 %tobool.i.not, label %is_dp_mst_hdcp.exit.if.else92_crit_edge, label %land.lhs.true87

is_dp_mst_hdcp.exit.if.else92_crit_edge:          ; preds = %is_dp_mst_hdcp.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else92

land.lhs.true87:                                  ; preds = %is_dp_mst_hdcp.exit
  %stream_encryption_dp = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 24
  %105 = ptrtoint ptr %stream_encryption_dp to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %stream_encryption_dp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %106)
  %cmp89.not = icmp eq i8 %106, 1
  br i1 %cmp89.not, label %land.lhs.true87.if.else92_crit_edge, label %land.lhs.true87.if.then91_crit_edge

land.lhs.true87.if.then91_crit_edge:              ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then91

land.lhs.true87.if.else92_crit_edge:              ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else92

if.then91:                                        ; preds = %land.lhs.true87.if.then91_crit_edge, %land.lhs.true76.if.then91_crit_edge
  %107 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 1, ptr %output, align 2
  %callback_delay.i353 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %108 = ptrtoint ptr %callback_delay.i353 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 0, ptr %callback_delay.i353, align 2
  %watchdog_timer_needed.i354 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %109 = ptrtoint ptr %watchdog_timer_needed.i354 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 0, ptr %watchdog_timer_needed.i354, align 2
  %watchdog_timer_delay.i355 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %110 = ptrtoint ptr %watchdog_timer_delay.i355 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 0, ptr %watchdog_timer_delay.i355, align 2
  br label %sw.epilog

if.else92:                                        ; preds = %land.lhs.true87.if.else92_crit_edge, %is_dp_mst_hdcp.exit.if.else92_crit_edge, %land.lhs.true83.if.else92_crit_edge
  %hdcp1_retry_count = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 6
  %111 = ptrtoint ptr %hdcp1_retry_count to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %hdcp1_retry_count, align 4
  %hdcp196 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 0, i32 8, i32 1
  %113 = ptrtoint ptr %hdcp196 to i32
  call void @__asan_load1_noabort(i32 %113)
  %bf.load97 = load i8, ptr %hdcp196, align 1
  %bf.lshr = lshr i8 %bf.load97, 5
  %bf.clear98 = and i8 %bf.lshr, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %112, i8 %bf.clear98)
  %cmp100 = icmp ult i8 %112, %bf.clear98
  br i1 %cmp100, label %if.else92.if.then102_crit_edge, label %if.else110

if.else92.if.then102_crit_edge:                   ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then102

if.else92.thread:                                 ; preds = %if.else74
  %hdcp1_retry_count404 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 6
  %114 = ptrtoint ptr %hdcp1_retry_count404 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %hdcp1_retry_count404, align 4
  %hdcp196405 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 0, i32 8, i32 1
  %116 = ptrtoint ptr %hdcp196405 to i32
  call void @__asan_load1_noabort(i32 %116)
  %bf.load97406 = load i8, ptr %hdcp196405, align 1
  %bf.lshr407 = lshr i8 %bf.load97406, 5
  %bf.clear98408 = and i8 %bf.lshr407, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %115, i8 %bf.clear98408)
  %cmp100409 = icmp ult i8 %115, %bf.clear98408
  br i1 %cmp100409, label %if.else92.thread.if.then102_crit_edge, label %if.then109

if.else92.thread.if.then102_crit_edge:            ; preds = %if.else92.thread
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then102

if.then102:                                       ; preds = %if.else92.thread.if.then102_crit_edge, %if.else92.if.then102_crit_edge
  %117 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 1, ptr %output, align 2
  %callback_delay.i356 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %118 = ptrtoint ptr %callback_delay.i356 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 200, ptr %callback_delay.i356, align 2
  %watchdog_timer_needed.i357 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %119 = ptrtoint ptr %watchdog_timer_needed.i357 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 0, ptr %watchdog_timer_needed.i357, align 2
  %watchdog_timer_delay.i358 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %120 = ptrtoint ptr %watchdog_timer_delay.i358 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 0, ptr %watchdog_timer_delay.i358, align 2
  br label %sw.epilog

if.then109:                                       ; preds = %if.else92.thread
  call void @__sanitizer_cov_trace_pc() #5
  %watchdog_timer_needed.i359 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %121 = ptrtoint ptr %watchdog_timer_needed.i359 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 1, ptr %watchdog_timer_needed.i359, align 2
  %watchdog_timer_delay.i360 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %122 = ptrtoint ptr %watchdog_timer_delay.i360 to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 5000, ptr %watchdog_timer_delay.i360, align 2
  tail call fastcc void @set_state_id(ptr noundef %hdcp, ptr noundef %output, i8 noundef zeroext 14)
  br label %sw.epilog

if.else110:                                       ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @set_state_id(ptr noundef %hdcp, ptr noundef %output, i8 noundef zeroext 13)
  %auth_complete.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 6
  %123 = ptrtoint ptr %auth_complete.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 1, ptr %auth_complete.i, align 2
  tail call void @mod_hdcp_log_ddc_trace(ptr noundef %hdcp) #3
  br label %sw.epilog

sw.bb112:                                         ; preds = %entry
  %link_integrity_check = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 22
  %124 = ptrtoint ptr %link_integrity_check to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %link_integrity_check, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %125)
  %cmp114 = icmp eq i8 %125, 2
  br i1 %cmp114, label %sw.bb112.if.then120_crit_edge, label %lor.lhs.false116

sw.bb112.if.then120_crit_edge:                    ; preds = %sw.bb112
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then120

lor.lhs.false116:                                 ; preds = %sw.bb112
  %reauth_request_check = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 23
  %126 = ptrtoint ptr %reauth_request_check to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %reauth_request_check, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %127)
  %cmp118 = icmp eq i8 %127, 2
  br i1 %cmp118, label %lor.lhs.false116.if.then120_crit_edge, label %lor.lhs.false116.sw.epilog_crit_edge

lor.lhs.false116.sw.epilog_crit_edge:             ; preds = %lor.lhs.false116
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

lor.lhs.false116.if.then120_crit_edge:            ; preds = %lor.lhs.false116
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then120

if.then120:                                       ; preds = %lor.lhs.false116.if.then120_crit_edge, %sw.bb112.if.then120_crit_edge
  %128 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 1, ptr %output, align 2
  %callback_delay.i361 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %129 = ptrtoint ptr %callback_delay.i361 to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 0, ptr %callback_delay.i361, align 2
  %watchdog_timer_needed.i362 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %130 = ptrtoint ptr %watchdog_timer_needed.i362 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 0, ptr %watchdog_timer_needed.i362, align 2
  %watchdog_timer_delay.i363 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %131 = ptrtoint ptr %watchdog_timer_delay.i363 to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 0, ptr %watchdog_timer_delay.i363, align 2
  br label %sw.epilog

sw.bb122:                                         ; preds = %entry
  %link_integrity_check123 = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 22
  %132 = ptrtoint ptr %link_integrity_check123 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %link_integrity_check123, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %133)
  %cmp125 = icmp eq i8 %133, 2
  br i1 %cmp125, label %sw.bb122.if.then132_crit_edge, label %lor.lhs.false127

sw.bb122.if.then132_crit_edge:                    ; preds = %sw.bb122
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then132

lor.lhs.false127:                                 ; preds = %sw.bb122
  %reauth_request_check128 = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 23
  %134 = ptrtoint ptr %reauth_request_check128 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %reauth_request_check128, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %135)
  %cmp130 = icmp eq i8 %135, 2
  br i1 %cmp130, label %lor.lhs.false127.if.then132_crit_edge, label %if.else133

lor.lhs.false127.if.then132_crit_edge:            ; preds = %lor.lhs.false127
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then132

if.then132:                                       ; preds = %lor.lhs.false127.if.then132_crit_edge, %sw.bb122.if.then132_crit_edge
  %136 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 1, ptr %output, align 2
  %callback_delay.i364 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %137 = ptrtoint ptr %callback_delay.i364 to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 0, ptr %callback_delay.i364, align 2
  %watchdog_timer_needed.i365 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %138 = ptrtoint ptr %watchdog_timer_needed.i365 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 0, ptr %watchdog_timer_needed.i365, align 2
  %watchdog_timer_delay.i366 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %139 = ptrtoint ptr %watchdog_timer_delay.i366 to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 0, ptr %watchdog_timer_delay.i366, align 2
  br label %sw.epilog

if.else133:                                       ; preds = %lor.lhs.false127
  %ready_check = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 11
  %140 = ptrtoint ptr %ready_check to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %ready_check, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %141)
  %cmp135.not = icmp eq i8 %141, 1
  br i1 %cmp135.not, label %if.end149, label %if.then137

if.then137:                                       ; preds = %if.else133
  %142 = ptrtoint ptr %event_ctx to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %event_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %143)
  %cmp139 = icmp eq i32 %143, 1
  br i1 %cmp139, label %if.then141, label %if.else146

if.then141:                                       ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #5
  %hdcp1142 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 0, i32 8, i32 1
  %144 = ptrtoint ptr %hdcp1142 to i32
  call void @__asan_load1_noabort(i32 %144)
  %bf.load143 = load i8, ptr %hdcp1142, align 1
  %bf.set145 = or i8 %bf.load143, 64
  store i8 %bf.set145, ptr %hdcp1142, align 1
  %145 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 1, ptr %output, align 2
  %callback_delay.i367 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %146 = ptrtoint ptr %callback_delay.i367 to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 0, ptr %callback_delay.i367, align 2
  %watchdog_timer_needed.i368 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %147 = ptrtoint ptr %watchdog_timer_needed.i368 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 0, ptr %watchdog_timer_needed.i368, align 2
  %watchdog_timer_delay.i369 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %148 = ptrtoint ptr %watchdog_timer_delay.i369 to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 0, ptr %watchdog_timer_delay.i369, align 2
  br label %sw.epilog

if.else146:                                       ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #5
  %stay_count.i370 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 4, i32 1
  %149 = ptrtoint ptr %stay_count.i370 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %stay_count.i370, align 4
  %inc.i371 = add i32 %150, 1
  store i32 %inc.i371, ptr %stay_count.i370, align 4
  br label %sw.epilog

if.end149:                                        ; preds = %if.else133
  call void @__sanitizer_cov_trace_pc() #5
  %151 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 1, ptr %output, align 2
  %callback_delay.i372 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %152 = ptrtoint ptr %callback_delay.i372 to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 0, ptr %callback_delay.i372, align 2
  tail call fastcc void @set_state_id(ptr noundef %hdcp, ptr noundef %output, i8 noundef zeroext 15)
  br label %sw.epilog

sw.bb150:                                         ; preds = %entry
  %binfo_read_dp = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 20
  %153 = ptrtoint ptr %binfo_read_dp to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %binfo_read_dp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %154)
  %cmp152.not = icmp eq i8 %154, 1
  br i1 %cmp152.not, label %lor.lhs.false154, label %sw.bb150.if.then162_crit_edge

sw.bb150.if.then162_crit_edge:                    ; preds = %sw.bb150
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then162

lor.lhs.false154:                                 ; preds = %sw.bb150
  %max_cascade_check = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 13
  %155 = ptrtoint ptr %max_cascade_check to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %max_cascade_check, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %156)
  %cmp156.not = icmp eq i8 %156, 1
  br i1 %cmp156.not, label %lor.lhs.false158, label %lor.lhs.false154.if.then162_crit_edge

lor.lhs.false154.if.then162_crit_edge:            ; preds = %lor.lhs.false154
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then162

lor.lhs.false158:                                 ; preds = %lor.lhs.false154
  %max_devs_check = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 14
  %157 = ptrtoint ptr %max_devs_check to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %max_devs_check, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %158)
  %cmp160.not = icmp eq i8 %158, 1
  br i1 %cmp160.not, label %if.else163, label %lor.lhs.false158.if.then162_crit_edge

lor.lhs.false158.if.then162_crit_edge:            ; preds = %lor.lhs.false158
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then162

if.then162:                                       ; preds = %lor.lhs.false158.if.then162_crit_edge, %lor.lhs.false154.if.then162_crit_edge, %sw.bb150.if.then162_crit_edge
  %159 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 1, ptr %output, align 2
  %callback_delay.i373 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %160 = ptrtoint ptr %callback_delay.i373 to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 0, ptr %callback_delay.i373, align 2
  %watchdog_timer_needed.i374 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %161 = ptrtoint ptr %watchdog_timer_needed.i374 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 0, ptr %watchdog_timer_needed.i374, align 2
  %watchdog_timer_delay.i375 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %162 = ptrtoint ptr %watchdog_timer_delay.i375 to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 0, ptr %watchdog_timer_delay.i375, align 2
  br label %sw.epilog

if.else163:                                       ; preds = %lor.lhs.false158
  %device_count_check = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 15
  %163 = ptrtoint ptr %device_count_check to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %device_count_check, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %164)
  %cmp165.not = icmp eq i8 %164, 1
  br i1 %cmp165.not, label %if.else172, label %if.then167

if.then167:                                       ; preds = %if.else163
  call void @__sanitizer_cov_trace_pc() #5
  %hdcp1168 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 0, i32 8, i32 1
  %165 = ptrtoint ptr %hdcp1168 to i32
  call void @__asan_load1_noabort(i32 %165)
  %bf.load169 = load i8, ptr %hdcp1168, align 1
  %bf.set171 = or i8 %bf.load169, 64
  store i8 %bf.set171, ptr %hdcp1168, align 1
  %166 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 1, ptr %output, align 2
  %callback_delay.i376 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %167 = ptrtoint ptr %callback_delay.i376 to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 1000, ptr %callback_delay.i376, align 2
  %watchdog_timer_needed.i377 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %168 = ptrtoint ptr %watchdog_timer_needed.i377 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 0, ptr %watchdog_timer_needed.i377, align 2
  %watchdog_timer_delay.i378 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %169 = ptrtoint ptr %watchdog_timer_delay.i378 to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 0, ptr %watchdog_timer_delay.i378, align 2
  br label %sw.epilog

if.else172:                                       ; preds = %if.else163
  %ksvlist_read = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 16
  %170 = ptrtoint ptr %ksvlist_read to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %ksvlist_read, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %171)
  %cmp174.not = icmp eq i8 %171, 1
  br i1 %cmp174.not, label %lor.lhs.false176, label %if.else172.if.then180_crit_edge

if.else172.if.then180_crit_edge:                  ; preds = %if.else172
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then180

lor.lhs.false176:                                 ; preds = %if.else172
  %vp_read = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 17
  %172 = ptrtoint ptr %vp_read to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %vp_read, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %173)
  %cmp178.not = icmp eq i8 %173, 1
  br i1 %cmp178.not, label %if.else181, label %lor.lhs.false176.if.then180_crit_edge

lor.lhs.false176.if.then180_crit_edge:            ; preds = %lor.lhs.false176
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then180

if.then180:                                       ; preds = %lor.lhs.false176.if.then180_crit_edge, %if.else172.if.then180_crit_edge
  %174 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 1, ptr %output, align 2
  %callback_delay.i379 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %175 = ptrtoint ptr %callback_delay.i379 to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 0, ptr %callback_delay.i379, align 2
  %watchdog_timer_needed.i380 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %176 = ptrtoint ptr %watchdog_timer_needed.i380 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 0, ptr %watchdog_timer_needed.i380, align 2
  %watchdog_timer_delay.i381 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %177 = ptrtoint ptr %watchdog_timer_delay.i381 to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 0, ptr %watchdog_timer_delay.i381, align 2
  br label %sw.epilog

if.else181:                                       ; preds = %lor.lhs.false176
  %ksvlist_vp_validation = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 18
  %178 = ptrtoint ptr %ksvlist_vp_validation to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %ksvlist_vp_validation, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %179)
  %cmp183.not = icmp eq i8 %179, 1
  br i1 %cmp183.not, label %if.else197, label %if.then185

if.then185:                                       ; preds = %if.else181
  %stay_count187 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 4, i32 1
  %180 = ptrtoint ptr %stay_count187 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %stay_count187, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %181)
  %cmp188 = icmp ult i32 %181, 2
  br i1 %cmp188, label %land.lhs.true190, label %if.then185.if.else195_crit_edge

if.then185.if.else195_crit_edge:                  ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else195

land.lhs.true190:                                 ; preds = %if.then185
  %is_hdcp1_revoked192 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 3
  %182 = ptrtoint ptr %is_hdcp1_revoked192 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %is_hdcp1_revoked192, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %183)
  %tobool193.not = icmp eq i8 %183, 0
  br i1 %tobool193.not, label %if.then194, label %land.lhs.true190.if.else195_crit_edge

land.lhs.true190.if.else195_crit_edge:            ; preds = %land.lhs.true190
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else195

if.then194:                                       ; preds = %land.lhs.true190
  call void @__sanitizer_cov_trace_pc() #5
  %184 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 1, ptr %output, align 2
  %callback_delay.i382 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %185 = ptrtoint ptr %callback_delay.i382 to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 0, ptr %callback_delay.i382, align 2
  %186 = ptrtoint ptr %stay_count187 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %stay_count187, align 4
  %inc.i384 = add i32 %187, 1
  store i32 %inc.i384, ptr %stay_count187, align 4
  br label %sw.epilog

if.else195:                                       ; preds = %land.lhs.true190.if.else195_crit_edge, %if.then185.if.else195_crit_edge
  %188 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 1, ptr %output, align 2
  %callback_delay.i385 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %189 = ptrtoint ptr %callback_delay.i385 to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 0, ptr %callback_delay.i385, align 2
  %watchdog_timer_needed.i386 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %190 = ptrtoint ptr %watchdog_timer_needed.i386 to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 0, ptr %watchdog_timer_needed.i386, align 2
  %watchdog_timer_delay.i387 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %191 = ptrtoint ptr %watchdog_timer_delay.i387 to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 0, ptr %watchdog_timer_delay.i387, align 2
  br label %sw.epilog

if.else197:                                       ; preds = %if.else181
  %encryption198 = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 9
  %192 = ptrtoint ptr %encryption198 to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %encryption198, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %193)
  %cmp200.not = icmp eq i8 %193, 1
  br i1 %cmp200.not, label %lor.lhs.false202, label %if.else197.if.then211_crit_edge

if.else197.if.then211_crit_edge:                  ; preds = %if.else197
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then211

lor.lhs.false202:                                 ; preds = %if.else197
  %connection.i388 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %194 = ptrtoint ptr %connection.i388 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %connection.i388, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %195)
  %cmp.i389 = icmp eq i32 %195, 2
  br i1 %cmp.i389, label %is_dp_mst_hdcp.exit394, label %lor.lhs.false202.if.end216_crit_edge

lor.lhs.false202.if.end216_crit_edge:             ; preds = %lor.lhs.false202
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end216

is_dp_mst_hdcp.exit394:                           ; preds = %lor.lhs.false202
  %mst_enabled.i390 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 0, i32 7, i32 0, i32 2
  %196 = ptrtoint ptr %mst_enabled.i390 to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %mst_enabled.i390, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %197)
  %tobool.i391.not = icmp eq i8 %197, 0
  br i1 %tobool.i391.not, label %is_dp_mst_hdcp.exit394.if.end216_crit_edge, label %land.lhs.true206

is_dp_mst_hdcp.exit394.if.end216_crit_edge:       ; preds = %is_dp_mst_hdcp.exit394
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end216

land.lhs.true206:                                 ; preds = %is_dp_mst_hdcp.exit394
  %stream_encryption_dp207 = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp1, ptr %input, i32 0, i32 24
  %198 = ptrtoint ptr %stream_encryption_dp207 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %stream_encryption_dp207, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %199)
  %cmp209.not = icmp eq i8 %199, 1
  br i1 %cmp209.not, label %land.lhs.true206.if.end216_crit_edge, label %land.lhs.true206.if.then211_crit_edge

land.lhs.true206.if.then211_crit_edge:            ; preds = %land.lhs.true206
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then211

land.lhs.true206.if.end216_crit_edge:             ; preds = %land.lhs.true206
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end216

if.then211:                                       ; preds = %land.lhs.true206.if.then211_crit_edge, %if.else197.if.then211_crit_edge
  %200 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 1, ptr %output, align 2
  %callback_delay.i395 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %201 = ptrtoint ptr %callback_delay.i395 to i32
  call void @__asan_store2_noabort(i32 %201)
  store i16 0, ptr %callback_delay.i395, align 2
  %watchdog_timer_needed.i396 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %202 = ptrtoint ptr %watchdog_timer_needed.i396 to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 0, ptr %watchdog_timer_needed.i396, align 2
  %watchdog_timer_delay.i397 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %203 = ptrtoint ptr %watchdog_timer_delay.i397 to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 0, ptr %watchdog_timer_delay.i397, align 2
  br label %sw.epilog

if.end216:                                        ; preds = %land.lhs.true206.if.end216_crit_edge, %is_dp_mst_hdcp.exit394.if.end216_crit_edge, %lor.lhs.false202.if.end216_crit_edge
  tail call fastcc void @set_state_id(ptr noundef %hdcp, ptr noundef %output, i8 noundef zeroext 13)
  %auth_complete.i398 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 6
  %204 = ptrtoint ptr %auth_complete.i398 to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 1, ptr %auth_complete.i398, align 2
  tail call void @mod_hdcp_log_ddc_trace(ptr noundef %hdcp) #3
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %205 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 1, ptr %output, align 2
  %callback_delay.i399 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %206 = ptrtoint ptr %callback_delay.i399 to i32
  call void @__asan_store2_noabort(i32 %206)
  store i16 0, ptr %callback_delay.i399, align 2
  %watchdog_timer_needed.i400 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %207 = ptrtoint ptr %watchdog_timer_needed.i400 to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 0, ptr %watchdog_timer_needed.i400, align 2
  %watchdog_timer_delay.i401 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %208 = ptrtoint ptr %watchdog_timer_delay.i401 to i32
  call void @__asan_store2_noabort(i32 %208)
  store i16 0, ptr %watchdog_timer_delay.i401, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end216, %if.then211, %if.else195, %if.then194, %if.then180, %if.then167, %if.then162, %if.end149, %if.else146, %if.then141, %if.then132, %if.then120, %lor.lhs.false116.sw.epilog_crit_edge, %if.else110, %if.then109, %if.then102, %if.then91, %if.else72, %if.then71, %if.then62, %if.else.i342, %if.then.i341, %if.else54, %if.then53, %if.then45, %if.end40, %if.then38, %if.then14, %if.else.i, %if.then.i, %if.then8, %if.then
  %status.0 = phi i32 [ 2, %sw.default ], [ 0, %if.end216 ], [ 2, %if.then211 ], [ 0, %if.then194 ], [ 2, %if.else195 ], [ 2, %if.then180 ], [ 2, %if.then167 ], [ 2, %if.then162 ], [ 2, %if.then132 ], [ 0, %if.end149 ], [ 2, %if.then141 ], [ 0, %if.else146 ], [ 2, %if.then120 ], [ 0, %lor.lhs.false116.sw.epilog_crit_edge ], [ 2, %if.then102 ], [ 0, %if.else110 ], [ 0, %if.then109 ], [ 2, %if.then91 ], [ 0, %if.then71 ], [ 2, %if.else72 ], [ 2, %if.then62 ], [ 2, %if.then53 ], [ 0, %if.else54 ], [ 2, %if.then45 ], [ 2, %if.then38 ], [ 0, %if.end40 ], [ 2, %if.then14 ], [ 2, %if.then8 ], [ 2, %if.then ], [ 0, %if.then.i ], [ 0, %if.else.i ], [ 0, %if.then.i341 ], [ 0, %if.else.i342 ]
  ret i32 %status.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mod_hdcp_state_id_to_str(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mod_hdcp_log_ddc_trace(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

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
attributes #1 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp.h", i32 421, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 1, !"min_enum_size", i32 4}
!5 = !{i32 8, !"branch-target-enforcement", i32 0}
!6 = !{i32 8, !"sign-return-address", i32 0}
!7 = !{i32 8, !"sign-return-address-all", i32 0}
!8 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
