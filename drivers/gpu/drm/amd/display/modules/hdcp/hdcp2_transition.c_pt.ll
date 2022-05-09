; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/modules/hdcp/hdcp2_transition.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp2_transition.c"
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
%struct.mod_hdcp_output = type { i8, i8, i8, i8, i16, i16, i8 }
%struct.mod_hdcp_event_context = type { i32, i8, i8 }

@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[Link %d] > %s with %d ms watchdog\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"[Link %d] > %s\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [18 x i64] [i64 16, i64 8, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31]
@__sancov_gen_cov_switch_values.2 = internal global [19 x i64] [i64 17, i64 8, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48]
@___asan_gen_ = private constant [73 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp2_transition.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.7 = private unnamed_addr constant [61 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp.h\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 421, i32 2 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_hdcp_hdcp2_transition(ptr noundef %hdcp, ptr nocapture noundef readonly %event_ctx, ptr noundef readonly %input, ptr noundef %output) local_unnamed_addr #0 align 64 {
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
    i8 16, label %sw.bb
    i8 17, label %sw.bb8
    i8 18, label %sw.bb28
    i8 19, label %sw.bb57
    i8 20, label %sw.bb71
    i8 21, label %sw.bb89
    i8 22, label %sw.bb111
    i8 23, label %sw.bb117
    i8 24, label %sw.bb148
    i8 25, label %sw.bb175
    i8 26, label %sw.bb189
    i8 27, label %sw.bb214
    i8 28, label %sw.bb236
    i8 29, label %sw.bb259
    i8 30, label %sw.bb287
    i8 31, label %sw.bb319
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
  %hdcp2_capable_check = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 1
  %5 = ptrtoint ptr %hdcp2_capable_check to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %hdcp2_capable_check, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp6.not = icmp eq i8 %6, 1
  br i1 %cmp6.not, label %if.else, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %sw.bb.if.then_crit_edge
  %hdcp2 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 0, i32 8, i32 2
  %7 = ptrtoint ptr %hdcp2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %hdcp2, align 1
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %hdcp2, align 1
  %8 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %output, align 2
  %callback_delay.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %9 = ptrtoint ptr %callback_delay.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %callback_delay.i, align 2
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 72057594037927936, ptr %state.i, align 4
  %callback_stop.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 1
  %11 = ptrtoint ptr %callback_stop.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %callback_stop.i, align 1
  %watchdog_timer_stop.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 3
  %12 = ptrtoint ptr %watchdog_timer_stop.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %watchdog_timer_stop.i, align 1
  %watchdog_timer_needed.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %13 = ptrtoint ptr %watchdog_timer_needed.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %watchdog_timer_needed.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  %index6.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %15 = ptrtoint ptr %index6.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %index6.i, align 4
  %conv7.i = zext i8 %16 to i32
  %call9.i = tail call ptr @mod_hdcp_state_id_to_str(i32 noundef 1) #3
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %watchdog_timer_delay.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %17 = ptrtoint ptr %watchdog_timer_delay.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %watchdog_timer_delay.i, align 2
  %conv4.i = zext i16 %18 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %conv7.i, ptr noundef %call9.i, i32 noundef %conv4.i) #3
  br label %sw.epilog

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %conv7.i, ptr noundef %call9.i) #3
  br label %sw.epilog

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  %19 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %output, align 2
  %callback_delay.i577 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %20 = ptrtoint ptr %callback_delay.i577 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %callback_delay.i577, align 2
  tail call fastcc void @set_state_id(ptr noundef %hdcp, ptr noundef %output, i8 noundef zeroext 17)
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %create_session = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 2
  %21 = ptrtoint ptr %create_session to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %create_session, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %22)
  %cmp10.not = icmp eq i8 %22, 1
  br i1 %cmp10.not, label %lor.lhs.false12, label %sw.bb8.if.then16_crit_edge

sw.bb8.if.then16_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then16

lor.lhs.false12:                                  ; preds = %sw.bb8
  %ake_init_prepare = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 3
  %23 = ptrtoint ptr %ake_init_prepare to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ake_init_prepare, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %24)
  %cmp14.not = icmp eq i8 %24, 1
  br i1 %cmp14.not, label %if.else21, label %lor.lhs.false12.if.then16_crit_edge

lor.lhs.false12.if.then16_crit_edge:              ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then16

if.then16:                                        ; preds = %lor.lhs.false12.if.then16_crit_edge, %sw.bb8.if.then16_crit_edge
  %hdcp217 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 0, i32 8, i32 2
  %25 = ptrtoint ptr %hdcp217 to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load18 = load i8, ptr %hdcp217, align 1
  %bf.set20 = or i8 %bf.load18, -128
  store i8 %bf.set20, ptr %hdcp217, align 1
  %26 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %output, align 2
  %callback_delay.i578 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %27 = ptrtoint ptr %callback_delay.i578 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %callback_delay.i578, align 2
  %watchdog_timer_needed.i579 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %28 = ptrtoint ptr %watchdog_timer_needed.i579 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %watchdog_timer_needed.i579, align 2
  %watchdog_timer_delay.i580 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %29 = ptrtoint ptr %watchdog_timer_delay.i580 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %watchdog_timer_delay.i580, align 2
  br label %sw.epilog

if.else21:                                        ; preds = %lor.lhs.false12
  %ake_init_write = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 4
  %30 = ptrtoint ptr %ake_init_write to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ake_init_write, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %31)
  %cmp23.not = icmp eq i8 %31, 1
  br i1 %cmp23.not, label %if.end27, label %if.then25

if.then25:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #5
  %32 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %output, align 2
  %callback_delay.i581 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %33 = ptrtoint ptr %callback_delay.i581 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %callback_delay.i581, align 2
  %watchdog_timer_needed.i582 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %34 = ptrtoint ptr %watchdog_timer_needed.i582 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %watchdog_timer_needed.i582, align 2
  %watchdog_timer_delay.i583 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %35 = ptrtoint ptr %watchdog_timer_delay.i583 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %watchdog_timer_delay.i583, align 2
  br label %sw.epilog

if.end27:                                         ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #5
  %watchdog_timer_needed.i584 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %36 = ptrtoint ptr %watchdog_timer_needed.i584 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %watchdog_timer_needed.i584, align 2
  %watchdog_timer_delay.i585 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %37 = ptrtoint ptr %watchdog_timer_delay.i585 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 100, ptr %watchdog_timer_delay.i585, align 2
  %38 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %output, align 2
  %callback_delay.i586 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %39 = ptrtoint ptr %callback_delay.i586 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %callback_delay.i586, align 2
  tail call fastcc void @set_state_id(ptr noundef %hdcp, ptr noundef %output, i8 noundef zeroext 18)
  br label %sw.epilog

sw.bb28:                                          ; preds = %entry
  %ake_cert_available = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 6
  %40 = ptrtoint ptr %ake_cert_available to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %ake_cert_available, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %41)
  %cmp30.not = icmp eq i8 %41, 1
  br i1 %cmp30.not, label %if.else38, label %if.then32

if.then32:                                        ; preds = %sw.bb28
  %42 = ptrtoint ptr %event_ctx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %event_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp33 = icmp eq i32 %43, 1
  %44 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %output, align 2
  %callback_delay.i587 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  br i1 %cmp33, label %if.then35, label %if.else36

if.then35:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #5
  %45 = ptrtoint ptr %callback_delay.i587 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 1000, ptr %callback_delay.i587, align 2
  %watchdog_timer_needed.i588 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %46 = ptrtoint ptr %watchdog_timer_needed.i588 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %watchdog_timer_needed.i588, align 2
  %watchdog_timer_delay.i589 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %47 = ptrtoint ptr %watchdog_timer_delay.i589 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %watchdog_timer_delay.i589, align 2
  br label %sw.epilog

if.else36:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #5
  %48 = ptrtoint ptr %callback_delay.i587 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 10, ptr %callback_delay.i587, align 2
  %stay_count.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 4, i32 1
  %49 = ptrtoint ptr %stay_count.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %stay_count.i, align 4
  %inc.i = add i32 %50, 1
  store i32 %inc.i, ptr %stay_count.i, align 4
  br label %sw.epilog

if.else38:                                        ; preds = %sw.bb28
  %ake_cert_read = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 7
  %51 = ptrtoint ptr %ake_cert_read to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %ake_cert_read, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %52)
  %cmp40.not = icmp eq i8 %52, 1
  br i1 %cmp40.not, label %lor.lhs.false42, label %if.else38.if.then46_crit_edge

if.else38.if.then46_crit_edge:                    ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then46

lor.lhs.false42:                                  ; preds = %if.else38
  %ake_cert_validation = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 8
  %53 = ptrtoint ptr %ake_cert_validation to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %ake_cert_validation, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %54)
  %cmp44.not = icmp eq i8 %54, 1
  br i1 %cmp44.not, label %if.end48, label %lor.lhs.false42.if.then46_crit_edge

lor.lhs.false42.if.then46_crit_edge:              ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then46

if.then46:                                        ; preds = %lor.lhs.false42.if.then46_crit_edge, %if.else38.if.then46_crit_edge
  %55 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %output, align 2
  %callback_delay.i591 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %56 = ptrtoint ptr %callback_delay.i591 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 0, ptr %callback_delay.i591, align 2
  %watchdog_timer_needed.i592 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %57 = ptrtoint ptr %watchdog_timer_needed.i592 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %watchdog_timer_needed.i592, align 2
  %watchdog_timer_delay.i593 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %58 = ptrtoint ptr %watchdog_timer_delay.i593 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 0, ptr %watchdog_timer_delay.i593, align 2
  br label %sw.epilog

if.end48:                                         ; preds = %lor.lhs.false42
  %is_km_stored = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 2
  %59 = ptrtoint ptr %is_km_stored to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %is_km_stored, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.not = icmp eq i8 %60, 0
  br i1 %tobool.not, label %if.end48.if.else55_crit_edge, label %land.lhs.true

if.end48.if.else55_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else55

land.lhs.true:                                    ; preds = %if.end48
  %hdcp250 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 0, i32 8, i32 2
  %61 = ptrtoint ptr %hdcp250 to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load51 = load i8, ptr %hdcp250, align 1
  %62 = and i8 %bf.load51, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool53.not = icmp eq i8 %62, 0
  br i1 %tobool53.not, label %if.then54, label %land.lhs.true.if.else55_crit_edge

land.lhs.true.if.else55_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else55

if.then54:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %63 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %output, align 2
  %callback_delay.i594 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %64 = ptrtoint ptr %callback_delay.i594 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 0, ptr %callback_delay.i594, align 2
  tail call fastcc void @set_state_id(ptr noundef %hdcp, ptr noundef %output, i8 noundef zeroext 22)
  br label %sw.epilog

if.else55:                                        ; preds = %land.lhs.true.if.else55_crit_edge, %if.end48.if.else55_crit_edge
  %65 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %output, align 2
  %callback_delay.i595 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %66 = ptrtoint ptr %callback_delay.i595 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 0, ptr %callback_delay.i595, align 2
  tail call fastcc void @set_state_id(ptr noundef %hdcp, ptr noundef %output, i8 noundef zeroext 19)
  br label %sw.epilog

sw.bb57:                                          ; preds = %entry
  %no_stored_km_write = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 10
  %67 = ptrtoint ptr %no_stored_km_write to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %no_stored_km_write, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %68)
  %cmp59.not = icmp eq i8 %68, 1
  br i1 %cmp59.not, label %if.end62, label %if.then61

if.then61:                                        ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #5
  %69 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %output, align 2
  %callback_delay.i596 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %70 = ptrtoint ptr %callback_delay.i596 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 0, ptr %callback_delay.i596, align 2
  %watchdog_timer_needed.i597 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %71 = ptrtoint ptr %watchdog_timer_needed.i597 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %watchdog_timer_needed.i597, align 2
  %watchdog_timer_delay.i598 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %72 = ptrtoint ptr %watchdog_timer_delay.i598 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 0, ptr %watchdog_timer_delay.i598, align 2
  br label %sw.epilog

if.end62:                                         ; preds = %sw.bb57
  %hdcp263 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 0, i32 8, i32 2
  %73 = ptrtoint ptr %hdcp263 to i32
  call void @__asan_load1_noabort(i32 %73)
  %bf.load64 = load i8, ptr %hdcp263, align 1
  %74 = and i8 %bf.load64, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool67.not = icmp eq i8 %74, 0
  %spec.select = select i1 %tobool67.not, i16 1000, i16 2000
  %75 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 1, ptr %75, align 2
  %77 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %spec.select, ptr %77, align 2
  %79 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %output, align 2
  %callback_delay.i603 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %80 = ptrtoint ptr %callback_delay.i603 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 0, ptr %callback_delay.i603, align 2
  %81 = ptrtoint ptr %state.i to i32
  call void @__asan_storeN_noabort(i32 %81, i32 8)
  store i64 1441151880758558720, ptr %state.i, align 4
  %callback_stop.i605 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 1
  %82 = ptrtoint ptr %callback_stop.i605 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %callback_stop.i605, align 1
  %watchdog_timer_stop.i606 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 3
  %83 = ptrtoint ptr %watchdog_timer_stop.i606 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %watchdog_timer_stop.i606, align 1
  %84 = load i8, ptr %75, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool.not.i608 = icmp eq i8 %84, 0
  %index6.i609 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %85 = ptrtoint ptr %index6.i609 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %index6.i609, align 4
  %conv7.i610 = zext i8 %86 to i32
  %call9.i611 = tail call ptr @mod_hdcp_state_id_to_str(i32 noundef 20) #3
  br i1 %tobool.not.i608, label %if.else.i615, label %if.then.i614

if.then.i614:                                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #5
  %87 = ptrtoint ptr %77 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %77, align 2
  %conv4.i613 = zext i16 %88 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %conv7.i610, ptr noundef %call9.i611, i32 noundef %conv4.i613) #3
  br label %sw.epilog

if.else.i615:                                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %conv7.i610, ptr noundef %call9.i611) #3
  br label %sw.epilog

sw.bb71:                                          ; preds = %entry
  %h_prime_available = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 11
  %89 = ptrtoint ptr %h_prime_available to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %h_prime_available, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %90)
  %cmp73.not = icmp eq i8 %90, 1
  br i1 %cmp73.not, label %if.else82, label %if.then75

if.then75:                                        ; preds = %sw.bb71
  %91 = ptrtoint ptr %event_ctx to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %event_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %92)
  %cmp77 = icmp eq i32 %92, 1
  %93 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 1, ptr %output, align 2
  %callback_delay.i617 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  br i1 %cmp77, label %if.then79, label %if.else80

if.then79:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #5
  %94 = ptrtoint ptr %callback_delay.i617 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 1000, ptr %callback_delay.i617, align 2
  %watchdog_timer_needed.i618 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %95 = ptrtoint ptr %watchdog_timer_needed.i618 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %watchdog_timer_needed.i618, align 2
  %watchdog_timer_delay.i619 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %96 = ptrtoint ptr %watchdog_timer_delay.i619 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 0, ptr %watchdog_timer_delay.i619, align 2
  br label %sw.epilog

if.else80:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #5
  %97 = ptrtoint ptr %callback_delay.i617 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 100, ptr %callback_delay.i617, align 2
  %stay_count.i621 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 4, i32 1
  %98 = ptrtoint ptr %stay_count.i621 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %stay_count.i621, align 4
  %inc.i622 = add i32 %99, 1
  store i32 %inc.i622, ptr %stay_count.i621, align 4
  br label %sw.epilog

if.else82:                                        ; preds = %sw.bb71
  %h_prime_read = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 12
  %100 = ptrtoint ptr %h_prime_read to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %h_prime_read, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %101)
  %cmp84.not = icmp eq i8 %101, 1
  br i1 %cmp84.not, label %if.end88, label %if.then86

if.then86:                                        ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #5
  %102 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 1, ptr %output, align 2
  %callback_delay.i623 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %103 = ptrtoint ptr %callback_delay.i623 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 0, ptr %callback_delay.i623, align 2
  %watchdog_timer_needed.i624 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %104 = ptrtoint ptr %watchdog_timer_needed.i624 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %watchdog_timer_needed.i624, align 2
  %watchdog_timer_delay.i625 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %105 = ptrtoint ptr %watchdog_timer_delay.i625 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 0, ptr %watchdog_timer_delay.i625, align 2
  br label %sw.epilog

if.end88:                                         ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #5
  %watchdog_timer_needed.i626 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %106 = ptrtoint ptr %watchdog_timer_needed.i626 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 1, ptr %watchdog_timer_needed.i626, align 2
  %watchdog_timer_delay.i627 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %107 = ptrtoint ptr %watchdog_timer_delay.i627 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 200, ptr %watchdog_timer_delay.i627, align 2
  %108 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 1, ptr %output, align 2
  %callback_delay.i628 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %109 = ptrtoint ptr %callback_delay.i628 to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 0, ptr %callback_delay.i628, align 2
  tail call fastcc void @set_state_id(ptr noundef %hdcp, ptr noundef %output, i8 noundef zeroext 21)
  br label %sw.epilog

sw.bb89:                                          ; preds = %entry
  %pairing_available = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 13
  %110 = ptrtoint ptr %pairing_available to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %pairing_available, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %111)
  %cmp91.not = icmp eq i8 %111, 1
  br i1 %cmp91.not, label %if.else100, label %if.then93

if.then93:                                        ; preds = %sw.bb89
  %112 = ptrtoint ptr %event_ctx to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %event_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %113)
  %cmp95 = icmp eq i32 %113, 1
  %114 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 1, ptr %output, align 2
  %callback_delay.i629 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  br i1 %cmp95, label %if.then97, label %if.else98

if.then97:                                        ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #5
  %115 = ptrtoint ptr %callback_delay.i629 to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 0, ptr %callback_delay.i629, align 2
  %watchdog_timer_needed.i630 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %116 = ptrtoint ptr %watchdog_timer_needed.i630 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 0, ptr %watchdog_timer_needed.i630, align 2
  %watchdog_timer_delay.i631 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %117 = ptrtoint ptr %watchdog_timer_delay.i631 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 0, ptr %watchdog_timer_delay.i631, align 2
  br label %sw.epilog

if.else98:                                        ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #5
  %118 = ptrtoint ptr %callback_delay.i629 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 20, ptr %callback_delay.i629, align 2
  %stay_count.i633 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 4, i32 1
  %119 = ptrtoint ptr %stay_count.i633 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %stay_count.i633, align 4
  %inc.i634 = add i32 %120, 1
  store i32 %inc.i634, ptr %stay_count.i633, align 4
  br label %sw.epilog

if.else100:                                       ; preds = %sw.bb89
  %pairing_info_read = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 14
  %121 = ptrtoint ptr %pairing_info_read to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %pairing_info_read, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %122)
  %cmp102.not = icmp eq i8 %122, 1
  br i1 %cmp102.not, label %lor.lhs.false104, label %if.else100.if.then108_crit_edge

if.else100.if.then108_crit_edge:                  ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then108

lor.lhs.false104:                                 ; preds = %if.else100
  %h_prime_validation = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 15
  %123 = ptrtoint ptr %h_prime_validation to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %h_prime_validation, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %124)
  %cmp106.not = icmp eq i8 %124, 1
  br i1 %cmp106.not, label %if.end110, label %lor.lhs.false104.if.then108_crit_edge

lor.lhs.false104.if.then108_crit_edge:            ; preds = %lor.lhs.false104
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then108

if.then108:                                       ; preds = %lor.lhs.false104.if.then108_crit_edge, %if.else100.if.then108_crit_edge
  %125 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 1, ptr %output, align 2
  %callback_delay.i635 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %126 = ptrtoint ptr %callback_delay.i635 to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 0, ptr %callback_delay.i635, align 2
  %watchdog_timer_needed.i636 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %127 = ptrtoint ptr %watchdog_timer_needed.i636 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 0, ptr %watchdog_timer_needed.i636, align 2
  %watchdog_timer_delay.i637 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %128 = ptrtoint ptr %watchdog_timer_delay.i637 to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 0, ptr %watchdog_timer_delay.i637, align 2
  br label %sw.epilog

if.end110:                                        ; preds = %lor.lhs.false104
  call void @__sanitizer_cov_trace_pc() #5
  %129 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 1, ptr %output, align 2
  %callback_delay.i638 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %130 = ptrtoint ptr %callback_delay.i638 to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 0, ptr %callback_delay.i638, align 2
  tail call fastcc void @set_state_id(ptr noundef %hdcp, ptr noundef %output, i8 noundef zeroext 24)
  br label %sw.epilog

sw.bb111:                                         ; preds = %entry
  %stored_km_write = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 9
  %131 = ptrtoint ptr %stored_km_write to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %stored_km_write, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %132)
  %cmp113.not = icmp eq i8 %132, 1
  br i1 %cmp113.not, label %if.end116, label %if.then115

if.then115:                                       ; preds = %sw.bb111
  call void @__sanitizer_cov_trace_pc() #5
  %133 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 1, ptr %output, align 2
  %callback_delay.i639 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %134 = ptrtoint ptr %callback_delay.i639 to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 0, ptr %callback_delay.i639, align 2
  %watchdog_timer_needed.i640 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %135 = ptrtoint ptr %watchdog_timer_needed.i640 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 0, ptr %watchdog_timer_needed.i640, align 2
  %watchdog_timer_delay.i641 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %136 = ptrtoint ptr %watchdog_timer_delay.i641 to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 0, ptr %watchdog_timer_delay.i641, align 2
  br label %sw.epilog

if.end116:                                        ; preds = %sw.bb111
  %watchdog_timer_needed.i642 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %137 = ptrtoint ptr %watchdog_timer_needed.i642 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 1, ptr %watchdog_timer_needed.i642, align 2
  %watchdog_timer_delay.i643 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %138 = ptrtoint ptr %watchdog_timer_delay.i643 to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 200, ptr %watchdog_timer_delay.i643, align 2
  %139 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 1, ptr %output, align 2
  %callback_delay.i644 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %140 = ptrtoint ptr %callback_delay.i644 to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 0, ptr %callback_delay.i644, align 2
  %141 = ptrtoint ptr %state.i to i32
  call void @__asan_storeN_noabort(i32 %141, i32 8)
  store i64 1657324662872342528, ptr %state.i, align 4
  %callback_stop.i646 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 1
  %142 = ptrtoint ptr %callback_stop.i646 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 1, ptr %callback_stop.i646, align 1
  %watchdog_timer_stop.i647 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 3
  %143 = ptrtoint ptr %watchdog_timer_stop.i647 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 1, ptr %watchdog_timer_stop.i647, align 1
  %144 = load i8, ptr %watchdog_timer_needed.i642, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool.not.i649 = icmp eq i8 %144, 0
  %index6.i650 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %145 = ptrtoint ptr %index6.i650 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %index6.i650, align 4
  %conv7.i651 = zext i8 %146 to i32
  %call9.i652 = tail call ptr @mod_hdcp_state_id_to_str(i32 noundef 23) #3
  br i1 %tobool.not.i649, label %if.else.i656, label %if.then.i655

if.then.i655:                                     ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #5
  %147 = ptrtoint ptr %watchdog_timer_delay.i643 to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %watchdog_timer_delay.i643, align 2
  %conv4.i654 = zext i16 %148 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %conv7.i651, ptr noundef %call9.i652, i32 noundef %conv4.i654) #3
  br label %sw.epilog

if.else.i656:                                     ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %conv7.i651, ptr noundef %call9.i652) #3
  br label %sw.epilog

sw.bb117:                                         ; preds = %entry
  %h_prime_available118 = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 11
  %149 = ptrtoint ptr %h_prime_available118 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %h_prime_available118, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %150)
  %cmp120.not = icmp eq i8 %150, 1
  br i1 %cmp120.not, label %if.else129, label %if.then122

if.then122:                                       ; preds = %sw.bb117
  %151 = ptrtoint ptr %event_ctx to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %event_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %152)
  %cmp124 = icmp eq i32 %152, 1
  %153 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 1, ptr %output, align 2
  %callback_delay.i658 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  br i1 %cmp124, label %if.then126, label %if.else127

if.then126:                                       ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #5
  %154 = ptrtoint ptr %callback_delay.i658 to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 1000, ptr %callback_delay.i658, align 2
  %watchdog_timer_needed.i659 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %155 = ptrtoint ptr %watchdog_timer_needed.i659 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 0, ptr %watchdog_timer_needed.i659, align 2
  %watchdog_timer_delay.i660 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %156 = ptrtoint ptr %watchdog_timer_delay.i660 to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 0, ptr %watchdog_timer_delay.i660, align 2
  br label %sw.epilog

if.else127:                                       ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #5
  %157 = ptrtoint ptr %callback_delay.i658 to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 20, ptr %callback_delay.i658, align 2
  %stay_count.i662 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 4, i32 1
  %158 = ptrtoint ptr %stay_count.i662 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %stay_count.i662, align 4
  %inc.i663 = add i32 %159, 1
  store i32 %inc.i663, ptr %stay_count.i662, align 4
  br label %sw.epilog

if.else129:                                       ; preds = %sw.bb117
  %h_prime_read130 = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 12
  %160 = ptrtoint ptr %h_prime_read130 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %h_prime_read130, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %161)
  %cmp132.not = icmp eq i8 %161, 1
  br i1 %cmp132.not, label %if.else135, label %if.then134

if.then134:                                       ; preds = %if.else129
  call void @__sanitizer_cov_trace_pc() #5
  %162 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 1, ptr %output, align 2
  %callback_delay.i664 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %163 = ptrtoint ptr %callback_delay.i664 to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 0, ptr %callback_delay.i664, align 2
  %watchdog_timer_needed.i665 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %164 = ptrtoint ptr %watchdog_timer_needed.i665 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 0, ptr %watchdog_timer_needed.i665, align 2
  %watchdog_timer_delay.i666 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %165 = ptrtoint ptr %watchdog_timer_delay.i666 to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 0, ptr %watchdog_timer_delay.i666, align 2
  br label %sw.epilog

if.else135:                                       ; preds = %if.else129
  %h_prime_validation136 = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 15
  %166 = ptrtoint ptr %h_prime_validation136 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %h_prime_validation136, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %167)
  %cmp138.not = icmp eq i8 %167, 1
  br i1 %cmp138.not, label %if.end147, label %if.then140

if.then140:                                       ; preds = %if.else135
  call void @__sanitizer_cov_trace_pc() #5
  %hdcp2141 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 0, i32 8, i32 2
  %168 = ptrtoint ptr %hdcp2141 to i32
  call void @__asan_load1_noabort(i32 %168)
  %bf.load142 = load i8, ptr %hdcp2141, align 1
  %bf.set144 = or i8 %bf.load142, 16
  store i8 %bf.set144, ptr %hdcp2141, align 1
  %169 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 1, ptr %output, align 2
  %callback_delay.i667 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %170 = ptrtoint ptr %callback_delay.i667 to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 0, ptr %callback_delay.i667, align 2
  %watchdog_timer_needed.i668 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %171 = ptrtoint ptr %watchdog_timer_needed.i668 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 0, ptr %watchdog_timer_needed.i668, align 2
  %watchdog_timer_delay.i669 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %172 = ptrtoint ptr %watchdog_timer_delay.i669 to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 0, ptr %watchdog_timer_delay.i669, align 2
  br label %sw.epilog

if.end147:                                        ; preds = %if.else135
  call void @__sanitizer_cov_trace_pc() #5
  %173 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 1, ptr %output, align 2
  %callback_delay.i670 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %174 = ptrtoint ptr %callback_delay.i670 to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 0, ptr %callback_delay.i670, align 2
  tail call fastcc void @set_state_id(ptr noundef %hdcp, ptr noundef %output, i8 noundef zeroext 24)
  br label %sw.epilog

sw.bb148:                                         ; preds = %entry
  %stay_count = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 4, i32 1
  %175 = ptrtoint ptr %stay_count to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %stay_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %176)
  %cmp149 = icmp ugt i32 %176, 10
  br i1 %cmp149, label %sw.bb148.if.then167_crit_edge, label %lor.lhs.false151

sw.bb148.if.then167_crit_edge:                    ; preds = %sw.bb148
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then167

lor.lhs.false151:                                 ; preds = %sw.bb148
  %lc_init_prepare = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 16
  %177 = ptrtoint ptr %lc_init_prepare to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %lc_init_prepare, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %178)
  %cmp153.not = icmp eq i8 %178, 1
  br i1 %cmp153.not, label %lor.lhs.false155, label %lor.lhs.false151.if.then167_crit_edge

lor.lhs.false151.if.then167_crit_edge:            ; preds = %lor.lhs.false151
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then167

lor.lhs.false155:                                 ; preds = %lor.lhs.false151
  %lc_init_write = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 17
  %179 = ptrtoint ptr %lc_init_write to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %lc_init_write, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %180)
  %cmp157.not = icmp eq i8 %180, 1
  br i1 %cmp157.not, label %lor.lhs.false159, label %lor.lhs.false155.if.then167_crit_edge

lor.lhs.false155.if.then167_crit_edge:            ; preds = %lor.lhs.false155
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then167

lor.lhs.false159:                                 ; preds = %lor.lhs.false155
  %l_prime_available_poll = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 18
  %181 = ptrtoint ptr %l_prime_available_poll to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %l_prime_available_poll, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %182)
  %cmp161.not = icmp eq i8 %182, 1
  br i1 %cmp161.not, label %lor.lhs.false163, label %lor.lhs.false159.if.then167_crit_edge

lor.lhs.false159.if.then167_crit_edge:            ; preds = %lor.lhs.false159
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then167

lor.lhs.false163:                                 ; preds = %lor.lhs.false159
  %l_prime_read = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 19
  %183 = ptrtoint ptr %l_prime_read to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %l_prime_read, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %184)
  %cmp165.not = icmp eq i8 %184, 1
  br i1 %cmp165.not, label %if.else168, label %lor.lhs.false163.if.then167_crit_edge

lor.lhs.false163.if.then167_crit_edge:            ; preds = %lor.lhs.false163
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then167

if.then167:                                       ; preds = %lor.lhs.false163.if.then167_crit_edge, %lor.lhs.false159.if.then167_crit_edge, %lor.lhs.false155.if.then167_crit_edge, %lor.lhs.false151.if.then167_crit_edge, %sw.bb148.if.then167_crit_edge
  %185 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 1, ptr %output, align 2
  %callback_delay.i671 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %186 = ptrtoint ptr %callback_delay.i671 to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 0, ptr %callback_delay.i671, align 2
  %watchdog_timer_needed.i672 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %187 = ptrtoint ptr %watchdog_timer_needed.i672 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 0, ptr %watchdog_timer_needed.i672, align 2
  %watchdog_timer_delay.i673 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %188 = ptrtoint ptr %watchdog_timer_delay.i673 to i32
  call void @__asan_store2_noabort(i32 %188)
  store i16 0, ptr %watchdog_timer_delay.i673, align 2
  br label %sw.epilog

if.else168:                                       ; preds = %lor.lhs.false163
  %l_prime_validation = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 20
  %189 = ptrtoint ptr %l_prime_validation to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %l_prime_validation, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %190)
  %cmp170.not = icmp eq i8 %190, 1
  %191 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 1, ptr %output, align 2
  %callback_delay.i677 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %192 = ptrtoint ptr %callback_delay.i677 to i32
  call void @__asan_store2_noabort(i32 %192)
  store i16 0, ptr %callback_delay.i677, align 2
  br i1 %cmp170.not, label %if.end174, label %if.then172

if.then172:                                       ; preds = %if.else168
  call void @__sanitizer_cov_trace_pc() #5
  %193 = ptrtoint ptr %stay_count to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %stay_count, align 4
  %inc.i676 = add i32 %194, 1
  store i32 %inc.i676, ptr %stay_count, align 4
  br label %sw.epilog

if.end174:                                        ; preds = %if.else168
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @set_state_id(ptr noundef %hdcp, ptr noundef %output, i8 noundef zeroext 25)
  br label %sw.epilog

sw.bb175:                                         ; preds = %entry
  %eks_prepare = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 21
  %195 = ptrtoint ptr %eks_prepare to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %eks_prepare, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %196)
  %cmp177.not = icmp eq i8 %196, 1
  br i1 %cmp177.not, label %lor.lhs.false179, label %sw.bb175.if.then183_crit_edge

sw.bb175.if.then183_crit_edge:                    ; preds = %sw.bb175
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then183

lor.lhs.false179:                                 ; preds = %sw.bb175
  %eks_write = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 22
  %197 = ptrtoint ptr %eks_write to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %eks_write, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %198)
  %cmp181.not = icmp eq i8 %198, 1
  br i1 %cmp181.not, label %if.end184, label %lor.lhs.false179.if.then183_crit_edge

lor.lhs.false179.if.then183_crit_edge:            ; preds = %lor.lhs.false179
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then183

if.then183:                                       ; preds = %lor.lhs.false179.if.then183_crit_edge, %sw.bb175.if.then183_crit_edge
  %199 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 1, ptr %output, align 2
  %callback_delay.i678 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %200 = ptrtoint ptr %callback_delay.i678 to i32
  call void @__asan_store2_noabort(i32 %200)
  store i16 0, ptr %callback_delay.i678, align 2
  %watchdog_timer_needed.i679 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %201 = ptrtoint ptr %watchdog_timer_needed.i679 to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 0, ptr %watchdog_timer_needed.i679, align 2
  %watchdog_timer_delay.i680 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %202 = ptrtoint ptr %watchdog_timer_delay.i680 to i32
  call void @__asan_store2_noabort(i32 %202)
  store i16 0, ptr %watchdog_timer_delay.i680, align 2
  br label %sw.epilog

if.end184:                                        ; preds = %lor.lhs.false179
  %is_repeater = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 1
  %203 = ptrtoint ptr %is_repeater to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %is_repeater, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %204)
  %tobool185.not = icmp eq i8 %204, 0
  br i1 %tobool185.not, label %if.else187, label %if.then186

if.then186:                                       ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #5
  %watchdog_timer_needed.i681 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %205 = ptrtoint ptr %watchdog_timer_needed.i681 to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 1, ptr %watchdog_timer_needed.i681, align 2
  %watchdog_timer_delay.i682 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %206 = ptrtoint ptr %watchdog_timer_delay.i682 to i32
  call void @__asan_store2_noabort(i32 %206)
  store i16 3000, ptr %watchdog_timer_delay.i682, align 2
  %207 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 1, ptr %output, align 2
  %callback_delay.i683 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %208 = ptrtoint ptr %callback_delay.i683 to i32
  call void @__asan_store2_noabort(i32 %208)
  store i16 0, ptr %callback_delay.i683, align 2
  tail call fastcc void @set_state_id(ptr noundef %hdcp, ptr noundef %output, i8 noundef zeroext 28)
  br label %sw.epilog

if.else187:                                       ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #5
  %209 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 1, ptr %output, align 2
  %callback_delay.i684 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %210 = ptrtoint ptr %callback_delay.i684 to i32
  call void @__asan_store2_noabort(i32 %210)
  store i16 210, ptr %callback_delay.i684, align 2
  tail call fastcc void @set_state_id(ptr noundef %hdcp, ptr noundef %output, i8 noundef zeroext 26)
  br label %sw.epilog

sw.bb189:                                         ; preds = %entry
  %rxstatus_read = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 5
  %211 = ptrtoint ptr %rxstatus_read to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %rxstatus_read, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %212)
  %cmp191.not = icmp eq i8 %212, 1
  br i1 %cmp191.not, label %lor.lhs.false193, label %sw.bb189.if.then197_crit_edge

sw.bb189.if.then197_crit_edge:                    ; preds = %sw.bb189
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then197

lor.lhs.false193:                                 ; preds = %sw.bb189
  %reauth_request_check = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 24
  %213 = ptrtoint ptr %reauth_request_check to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %reauth_request_check, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %214)
  %cmp195.not = icmp eq i8 %214, 1
  br i1 %cmp195.not, label %if.else198, label %lor.lhs.false193.if.then197_crit_edge

lor.lhs.false193.if.then197_crit_edge:            ; preds = %lor.lhs.false193
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then197

if.then197:                                       ; preds = %lor.lhs.false193.if.then197_crit_edge, %sw.bb189.if.then197_crit_edge
  %215 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 1, ptr %output, align 2
  %callback_delay.i685 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %216 = ptrtoint ptr %callback_delay.i685 to i32
  call void @__asan_store2_noabort(i32 %216)
  store i16 0, ptr %callback_delay.i685, align 2
  %watchdog_timer_needed.i686 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %217 = ptrtoint ptr %watchdog_timer_needed.i686 to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 0, ptr %watchdog_timer_needed.i686, align 2
  %watchdog_timer_delay.i687 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %218 = ptrtoint ptr %watchdog_timer_delay.i687 to i32
  call void @__asan_store2_noabort(i32 %218)
  store i16 0, ptr %watchdog_timer_delay.i687, align 2
  br label %sw.epilog

if.else198:                                       ; preds = %lor.lhs.false193
  %rx_id_list_ready = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 1
  %219 = ptrtoint ptr %rx_id_list_ready to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %rx_id_list_ready, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %220)
  %tobool200.not = icmp eq i8 %220, 0
  br i1 %tobool200.not, label %if.else198.if.else206_crit_edge, label %land.lhs.true201

if.else198.if.else206_crit_edge:                  ; preds = %if.else198
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else206

land.lhs.true201:                                 ; preds = %if.else198
  %is_repeater202 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 1
  %221 = ptrtoint ptr %is_repeater202 to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %is_repeater202, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %222)
  %tobool204.not = icmp eq i8 %222, 0
  br i1 %tobool204.not, label %land.lhs.true201.if.else206_crit_edge, label %if.then205

land.lhs.true201.if.else206_crit_edge:            ; preds = %land.lhs.true201
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else206

if.then205:                                       ; preds = %land.lhs.true201
  call void @__sanitizer_cov_trace_pc() #5
  %223 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 1, ptr %output, align 2
  %callback_delay.i688 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %224 = ptrtoint ptr %callback_delay.i688 to i32
  call void @__asan_store2_noabort(i32 %224)
  store i16 0, ptr %callback_delay.i688, align 2
  tail call fastcc void @set_state_id(ptr noundef %hdcp, ptr noundef %output, i8 noundef zeroext 29)
  br label %sw.epilog

if.else206:                                       ; preds = %land.lhs.true201.if.else206_crit_edge, %if.else198.if.else206_crit_edge
  %enable_encryption = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 23
  %225 = ptrtoint ptr %enable_encryption to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %enable_encryption, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %226)
  %cmp208.not = icmp eq i8 %226, 1
  %227 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 1, ptr %output, align 2
  %callback_delay.i692 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %228 = ptrtoint ptr %callback_delay.i692 to i32
  call void @__asan_store2_noabort(i32 %228)
  store i16 0, ptr %callback_delay.i692, align 2
  br i1 %cmp208.not, label %if.end213, label %if.then210

if.then210:                                       ; preds = %if.else206
  call void @__sanitizer_cov_trace_pc() #5
  %watchdog_timer_needed.i690 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %229 = ptrtoint ptr %watchdog_timer_needed.i690 to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 0, ptr %watchdog_timer_needed.i690, align 2
  %watchdog_timer_delay.i691 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %230 = ptrtoint ptr %watchdog_timer_delay.i691 to i32
  call void @__asan_store2_noabort(i32 %230)
  store i16 0, ptr %watchdog_timer_delay.i691, align 2
  br label %sw.epilog

if.end213:                                        ; preds = %if.else206
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @set_state_id(ptr noundef %hdcp, ptr noundef %output, i8 noundef zeroext 27)
  %auth_complete.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 6
  %231 = ptrtoint ptr %auth_complete.i to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 1, ptr %auth_complete.i, align 2
  tail call void @mod_hdcp_log_ddc_trace(ptr noundef %hdcp) #3
  br label %sw.epilog

sw.bb214:                                         ; preds = %entry
  %rxstatus_read215 = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 5
  %232 = ptrtoint ptr %rxstatus_read215 to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %rxstatus_read215, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %233)
  %cmp217 = icmp eq i8 %233, 2
  br i1 %cmp217, label %sw.bb214.if.then224_crit_edge, label %lor.lhs.false219

sw.bb214.if.then224_crit_edge:                    ; preds = %sw.bb214
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then224

lor.lhs.false219:                                 ; preds = %sw.bb214
  %reauth_request_check220 = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 24
  %234 = ptrtoint ptr %reauth_request_check220 to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %reauth_request_check220, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %235)
  %cmp222 = icmp eq i8 %235, 2
  br i1 %cmp222, label %lor.lhs.false219.if.then224_crit_edge, label %if.else225

lor.lhs.false219.if.then224_crit_edge:            ; preds = %lor.lhs.false219
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then224

if.then224:                                       ; preds = %lor.lhs.false219.if.then224_crit_edge, %sw.bb214.if.then224_crit_edge
  %236 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 1, ptr %output, align 2
  %callback_delay.i693 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %237 = ptrtoint ptr %callback_delay.i693 to i32
  call void @__asan_store2_noabort(i32 %237)
  store i16 0, ptr %callback_delay.i693, align 2
  %watchdog_timer_needed.i694 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %238 = ptrtoint ptr %watchdog_timer_needed.i694 to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 0, ptr %watchdog_timer_needed.i694, align 2
  %watchdog_timer_delay.i695 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %239 = ptrtoint ptr %watchdog_timer_delay.i695 to i32
  call void @__asan_store2_noabort(i32 %239)
  store i16 0, ptr %watchdog_timer_delay.i695, align 2
  br label %sw.epilog

if.else225:                                       ; preds = %lor.lhs.false219
  %rx_id_list_ready226 = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 1
  %240 = ptrtoint ptr %rx_id_list_ready226 to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %rx_id_list_ready226, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %241)
  %tobool228.not = icmp eq i8 %241, 0
  br i1 %tobool228.not, label %if.else225.if.end235_crit_edge, label %land.lhs.true229

if.else225.if.end235_crit_edge:                   ; preds = %if.else225
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end235

land.lhs.true229:                                 ; preds = %if.else225
  %is_repeater230 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 1
  %242 = ptrtoint ptr %is_repeater230 to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %is_repeater230, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %243)
  %tobool232.not = icmp eq i8 %243, 0
  br i1 %tobool232.not, label %land.lhs.true229.if.end235_crit_edge, label %if.then233

land.lhs.true229.if.end235_crit_edge:             ; preds = %land.lhs.true229
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end235

if.then233:                                       ; preds = %land.lhs.true229
  call void @__sanitizer_cov_trace_pc() #5
  %244 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 1, ptr %output, align 2
  %callback_delay.i696 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %245 = ptrtoint ptr %callback_delay.i696 to i32
  call void @__asan_store2_noabort(i32 %245)
  store i16 0, ptr %callback_delay.i696, align 2
  tail call fastcc void @set_state_id(ptr noundef %hdcp, ptr noundef %output, i8 noundef zeroext 29)
  br label %sw.epilog

if.end235:                                        ; preds = %land.lhs.true229.if.end235_crit_edge, %if.else225.if.end235_crit_edge
  %246 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 1, ptr %output, align 2
  %callback_delay.i697 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %247 = ptrtoint ptr %callback_delay.i697 to i32
  call void @__asan_store2_noabort(i32 %247)
  store i16 500, ptr %callback_delay.i697, align 2
  %stay_count.i698 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 4, i32 1
  %248 = ptrtoint ptr %stay_count.i698 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %stay_count.i698, align 4
  %inc.i699 = add i32 %249, 1
  store i32 %inc.i699, ptr %stay_count.i698, align 4
  br label %sw.epilog

sw.bb236:                                         ; preds = %entry
  %rxstatus_read237 = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 5
  %250 = ptrtoint ptr %rxstatus_read237 to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %rxstatus_read237, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %251)
  %cmp239.not = icmp eq i8 %251, 1
  br i1 %cmp239.not, label %lor.lhs.false241, label %sw.bb236.if.then246_crit_edge

sw.bb236.if.then246_crit_edge:                    ; preds = %sw.bb236
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then246

lor.lhs.false241:                                 ; preds = %sw.bb236
  %reauth_request_check242 = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 24
  %252 = ptrtoint ptr %reauth_request_check242 to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %reauth_request_check242, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %253)
  %cmp244.not = icmp eq i8 %253, 1
  br i1 %cmp244.not, label %if.else247, label %lor.lhs.false241.if.then246_crit_edge

lor.lhs.false241.if.then246_crit_edge:            ; preds = %lor.lhs.false241
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then246

if.then246:                                       ; preds = %lor.lhs.false241.if.then246_crit_edge, %sw.bb236.if.then246_crit_edge
  %254 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 1, ptr %output, align 2
  %callback_delay.i700 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %255 = ptrtoint ptr %callback_delay.i700 to i32
  call void @__asan_store2_noabort(i32 %255)
  store i16 0, ptr %callback_delay.i700, align 2
  %watchdog_timer_needed.i701 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %256 = ptrtoint ptr %watchdog_timer_needed.i701 to i32
  call void @__asan_store1_noabort(i32 %256)
  store i8 0, ptr %watchdog_timer_needed.i701, align 2
  %watchdog_timer_delay.i702 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %257 = ptrtoint ptr %watchdog_timer_delay.i702 to i32
  call void @__asan_store2_noabort(i32 %257)
  store i16 0, ptr %watchdog_timer_delay.i702, align 2
  br label %sw.epilog

if.else247:                                       ; preds = %lor.lhs.false241
  %rx_id_list_ready248 = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 1
  %258 = ptrtoint ptr %rx_id_list_ready248 to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %rx_id_list_ready248, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %259)
  %tobool249.not = icmp eq i8 %259, 0
  br i1 %tobool249.not, label %if.then250, label %if.end258

if.then250:                                       ; preds = %if.else247
  %260 = ptrtoint ptr %event_ctx to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %event_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %261)
  %cmp252 = icmp eq i32 %261, 1
  %262 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %262)
  store i8 1, ptr %output, align 2
  %callback_delay.i703 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  br i1 %cmp252, label %if.then254, label %if.else255

if.then254:                                       ; preds = %if.then250
  call void @__sanitizer_cov_trace_pc() #5
  %263 = ptrtoint ptr %callback_delay.i703 to i32
  call void @__asan_store2_noabort(i32 %263)
  store i16 100, ptr %callback_delay.i703, align 2
  %watchdog_timer_needed.i704 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %264 = ptrtoint ptr %watchdog_timer_needed.i704 to i32
  call void @__asan_store1_noabort(i32 %264)
  store i8 0, ptr %watchdog_timer_needed.i704, align 2
  %watchdog_timer_delay.i705 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %265 = ptrtoint ptr %watchdog_timer_delay.i705 to i32
  call void @__asan_store2_noabort(i32 %265)
  store i16 0, ptr %watchdog_timer_delay.i705, align 2
  br label %sw.epilog

if.else255:                                       ; preds = %if.then250
  call void @__sanitizer_cov_trace_pc() #5
  %266 = ptrtoint ptr %callback_delay.i703 to i32
  call void @__asan_store2_noabort(i32 %266)
  store i16 300, ptr %callback_delay.i703, align 2
  %stay_count.i707 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 4, i32 1
  %267 = ptrtoint ptr %stay_count.i707 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %stay_count.i707, align 4
  %inc.i708 = add i32 %268, 1
  store i32 %inc.i708, ptr %stay_count.i707, align 4
  br label %sw.epilog

if.end258:                                        ; preds = %if.else247
  call void @__sanitizer_cov_trace_pc() #5
  %269 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %269)
  store i8 1, ptr %output, align 2
  %callback_delay.i709 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %270 = ptrtoint ptr %callback_delay.i709 to i32
  call void @__asan_store2_noabort(i32 %270)
  store i16 0, ptr %callback_delay.i709, align 2
  tail call fastcc void @set_state_id(ptr noundef %hdcp, ptr noundef %output, i8 noundef zeroext 29)
  br label %sw.epilog

sw.bb259:                                         ; preds = %entry
  %rxstatus_read260 = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 5
  %271 = ptrtoint ptr %rxstatus_read260 to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %rxstatus_read260, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %272)
  %cmp262.not = icmp eq i8 %272, 1
  br i1 %cmp262.not, label %lor.lhs.false264, label %sw.bb259.if.then285_crit_edge

sw.bb259.if.then285_crit_edge:                    ; preds = %sw.bb259
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then285

lor.lhs.false264:                                 ; preds = %sw.bb259
  %reauth_request_check265 = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 24
  %273 = ptrtoint ptr %reauth_request_check265 to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %reauth_request_check265, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %274)
  %cmp267.not = icmp eq i8 %274, 1
  br i1 %cmp267.not, label %lor.lhs.false269, label %lor.lhs.false264.if.then285_crit_edge

lor.lhs.false264.if.then285_crit_edge:            ; preds = %lor.lhs.false264
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then285

lor.lhs.false269:                                 ; preds = %lor.lhs.false264
  %rx_id_list_read = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 25
  %275 = ptrtoint ptr %rx_id_list_read to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %rx_id_list_read, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %276)
  %cmp271.not = icmp eq i8 %276, 1
  br i1 %cmp271.not, label %lor.lhs.false273, label %lor.lhs.false269.if.then285_crit_edge

lor.lhs.false269.if.then285_crit_edge:            ; preds = %lor.lhs.false269
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then285

lor.lhs.false273:                                 ; preds = %lor.lhs.false269
  %device_count_check = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 26
  %277 = ptrtoint ptr %device_count_check to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %device_count_check, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %278)
  %cmp275.not = icmp eq i8 %278, 1
  br i1 %cmp275.not, label %lor.lhs.false277, label %lor.lhs.false273.if.then285_crit_edge

lor.lhs.false273.if.then285_crit_edge:            ; preds = %lor.lhs.false273
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then285

lor.lhs.false277:                                 ; preds = %lor.lhs.false273
  %rx_id_list_validation = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 27
  %279 = ptrtoint ptr %rx_id_list_validation to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %rx_id_list_validation, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %280)
  %cmp279.not = icmp eq i8 %280, 1
  br i1 %cmp279.not, label %lor.lhs.false281, label %lor.lhs.false277.if.then285_crit_edge

lor.lhs.false277.if.then285_crit_edge:            ; preds = %lor.lhs.false277
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then285

lor.lhs.false281:                                 ; preds = %lor.lhs.false277
  %repeater_auth_ack_write = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 28
  %281 = ptrtoint ptr %repeater_auth_ack_write to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %repeater_auth_ack_write, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %282)
  %cmp283.not = icmp eq i8 %282, 1
  br i1 %cmp283.not, label %if.end286, label %lor.lhs.false281.if.then285_crit_edge

lor.lhs.false281.if.then285_crit_edge:            ; preds = %lor.lhs.false281
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then285

if.then285:                                       ; preds = %lor.lhs.false281.if.then285_crit_edge, %lor.lhs.false277.if.then285_crit_edge, %lor.lhs.false273.if.then285_crit_edge, %lor.lhs.false269.if.then285_crit_edge, %lor.lhs.false264.if.then285_crit_edge, %sw.bb259.if.then285_crit_edge
  %283 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %283)
  store i8 1, ptr %output, align 2
  %callback_delay.i710 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %284 = ptrtoint ptr %callback_delay.i710 to i32
  call void @__asan_store2_noabort(i32 %284)
  store i16 0, ptr %callback_delay.i710, align 2
  %watchdog_timer_needed.i711 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %285 = ptrtoint ptr %watchdog_timer_needed.i711 to i32
  call void @__asan_store1_noabort(i32 %285)
  store i8 0, ptr %watchdog_timer_needed.i711, align 2
  %watchdog_timer_delay.i712 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %286 = ptrtoint ptr %watchdog_timer_delay.i712 to i32
  call void @__asan_store2_noabort(i32 %286)
  store i16 0, ptr %watchdog_timer_delay.i712, align 2
  br label %sw.epilog

if.end286:                                        ; preds = %lor.lhs.false281
  call void @__sanitizer_cov_trace_pc() #5
  %287 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %287)
  store i8 1, ptr %output, align 2
  %callback_delay.i713 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %288 = ptrtoint ptr %callback_delay.i713 to i32
  call void @__asan_store2_noabort(i32 %288)
  store i16 0, ptr %callback_delay.i713, align 2
  tail call fastcc void @set_state_id(ptr noundef %hdcp, ptr noundef %output, i8 noundef zeroext 30)
  br label %sw.epilog

sw.bb287:                                         ; preds = %entry
  %rxstatus_read288 = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 5
  %289 = ptrtoint ptr %rxstatus_read288 to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %rxstatus_read288, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %290)
  %cmp290.not = icmp eq i8 %290, 1
  br i1 %cmp290.not, label %lor.lhs.false292, label %sw.bb287.if.then297_crit_edge

sw.bb287.if.then297_crit_edge:                    ; preds = %sw.bb287
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then297

lor.lhs.false292:                                 ; preds = %sw.bb287
  %reauth_request_check293 = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 24
  %291 = ptrtoint ptr %reauth_request_check293 to i32
  call void @__asan_load1_noabort(i32 %291)
  %292 = load i8, ptr %reauth_request_check293, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %292)
  %cmp295.not = icmp eq i8 %292, 1
  br i1 %cmp295.not, label %if.else298, label %lor.lhs.false292.if.then297_crit_edge

lor.lhs.false292.if.then297_crit_edge:            ; preds = %lor.lhs.false292
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then297

if.then297:                                       ; preds = %lor.lhs.false292.if.then297_crit_edge, %sw.bb287.if.then297_crit_edge
  %293 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 1, ptr %output, align 2
  %callback_delay.i714 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %294 = ptrtoint ptr %callback_delay.i714 to i32
  call void @__asan_store2_noabort(i32 %294)
  store i16 0, ptr %callback_delay.i714, align 2
  %watchdog_timer_needed.i715 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %295 = ptrtoint ptr %watchdog_timer_needed.i715 to i32
  call void @__asan_store1_noabort(i32 %295)
  store i8 0, ptr %watchdog_timer_needed.i715, align 2
  %watchdog_timer_delay.i716 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %296 = ptrtoint ptr %watchdog_timer_delay.i716 to i32
  call void @__asan_store2_noabort(i32 %296)
  store i16 0, ptr %watchdog_timer_delay.i716, align 2
  br label %sw.epilog

if.else298:                                       ; preds = %lor.lhs.false292
  %rx_id_list_ready299 = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 1
  %297 = ptrtoint ptr %rx_id_list_ready299 to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %rx_id_list_ready299, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %298)
  %tobool301.not = icmp eq i8 %298, 0
  br i1 %tobool301.not, label %if.else298.if.else307_crit_edge, label %land.lhs.true302

if.else298.if.else307_crit_edge:                  ; preds = %if.else298
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else307

land.lhs.true302:                                 ; preds = %if.else298
  %is_repeater303 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 1
  %299 = ptrtoint ptr %is_repeater303 to i32
  call void @__asan_load1_noabort(i32 %299)
  %300 = load i8, ptr %is_repeater303, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %300)
  %tobool305.not = icmp eq i8 %300, 0
  br i1 %tobool305.not, label %land.lhs.true302.if.else307_crit_edge, label %if.then306

land.lhs.true302.if.else307_crit_edge:            ; preds = %land.lhs.true302
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else307

if.then306:                                       ; preds = %land.lhs.true302
  call void @__sanitizer_cov_trace_pc() #5
  %301 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %301)
  store i8 1, ptr %output, align 2
  %callback_delay.i717 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %302 = ptrtoint ptr %callback_delay.i717 to i32
  call void @__asan_store2_noabort(i32 %302)
  store i16 0, ptr %callback_delay.i717, align 2
  tail call fastcc void @set_state_id(ptr noundef %hdcp, ptr noundef %output, i8 noundef zeroext 29)
  br label %sw.epilog

if.else307:                                       ; preds = %land.lhs.true302.if.else307_crit_edge, %if.else298.if.else307_crit_edge
  %prepare_stream_manage = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 29
  %303 = ptrtoint ptr %prepare_stream_manage to i32
  call void @__asan_load1_noabort(i32 %303)
  %304 = load i8, ptr %prepare_stream_manage, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %304)
  %cmp309.not = icmp eq i8 %304, 1
  br i1 %cmp309.not, label %lor.lhs.false311, label %if.else307.if.then315_crit_edge

if.else307.if.then315_crit_edge:                  ; preds = %if.else307
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then315

lor.lhs.false311:                                 ; preds = %if.else307
  %stream_manage_write = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 30
  %305 = ptrtoint ptr %stream_manage_write to i32
  call void @__asan_load1_noabort(i32 %305)
  %306 = load i8, ptr %stream_manage_write, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %306)
  %cmp313.not = icmp eq i8 %306, 1
  br i1 %cmp313.not, label %if.end318, label %lor.lhs.false311.if.then315_crit_edge

lor.lhs.false311.if.then315_crit_edge:            ; preds = %lor.lhs.false311
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then315

if.then315:                                       ; preds = %lor.lhs.false311.if.then315_crit_edge, %if.else307.if.then315_crit_edge
  %307 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %307)
  store i8 1, ptr %output, align 2
  %callback_delay.i718 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %308 = ptrtoint ptr %callback_delay.i718 to i32
  call void @__asan_store2_noabort(i32 %308)
  store i16 0, ptr %callback_delay.i718, align 2
  %watchdog_timer_needed.i719 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %309 = ptrtoint ptr %watchdog_timer_needed.i719 to i32
  call void @__asan_store1_noabort(i32 %309)
  store i8 0, ptr %watchdog_timer_needed.i719, align 2
  %watchdog_timer_delay.i720 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %310 = ptrtoint ptr %watchdog_timer_delay.i720 to i32
  call void @__asan_store2_noabort(i32 %310)
  store i16 0, ptr %watchdog_timer_delay.i720, align 2
  br label %sw.epilog

if.end318:                                        ; preds = %lor.lhs.false311
  call void @__sanitizer_cov_trace_pc() #5
  %watchdog_timer_needed.i721 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %311 = ptrtoint ptr %watchdog_timer_needed.i721 to i32
  call void @__asan_store1_noabort(i32 %311)
  store i8 1, ptr %watchdog_timer_needed.i721, align 2
  %watchdog_timer_delay.i722 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %312 = ptrtoint ptr %watchdog_timer_delay.i722 to i32
  call void @__asan_store2_noabort(i32 %312)
  store i16 100, ptr %watchdog_timer_delay.i722, align 2
  %313 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %313)
  store i8 1, ptr %output, align 2
  %callback_delay.i723 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %314 = ptrtoint ptr %callback_delay.i723 to i32
  call void @__asan_store2_noabort(i32 %314)
  store i16 0, ptr %callback_delay.i723, align 2
  tail call fastcc void @set_state_id(ptr noundef %hdcp, ptr noundef %output, i8 noundef zeroext 31)
  br label %sw.epilog

sw.bb319:                                         ; preds = %entry
  %rxstatus_read320 = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 5
  %315 = ptrtoint ptr %rxstatus_read320 to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %rxstatus_read320, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %316)
  %cmp322.not = icmp eq i8 %316, 1
  br i1 %cmp322.not, label %lor.lhs.false324, label %sw.bb319.if.then329_crit_edge

sw.bb319.if.then329_crit_edge:                    ; preds = %sw.bb319
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then329

lor.lhs.false324:                                 ; preds = %sw.bb319
  %reauth_request_check325 = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 24
  %317 = ptrtoint ptr %reauth_request_check325 to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %reauth_request_check325, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %318)
  %cmp327.not = icmp eq i8 %318, 1
  br i1 %cmp327.not, label %if.else330, label %lor.lhs.false324.if.then329_crit_edge

lor.lhs.false324.if.then329_crit_edge:            ; preds = %lor.lhs.false324
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then329

if.then329:                                       ; preds = %lor.lhs.false324.if.then329_crit_edge, %sw.bb319.if.then329_crit_edge
  %319 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %319)
  store i8 1, ptr %output, align 2
  %callback_delay.i724 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %320 = ptrtoint ptr %callback_delay.i724 to i32
  call void @__asan_store2_noabort(i32 %320)
  store i16 0, ptr %callback_delay.i724, align 2
  %watchdog_timer_needed.i725 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %321 = ptrtoint ptr %watchdog_timer_needed.i725 to i32
  call void @__asan_store1_noabort(i32 %321)
  store i8 0, ptr %watchdog_timer_needed.i725, align 2
  %watchdog_timer_delay.i726 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %322 = ptrtoint ptr %watchdog_timer_delay.i726 to i32
  call void @__asan_store2_noabort(i32 %322)
  store i16 0, ptr %watchdog_timer_delay.i726, align 2
  br label %sw.epilog

if.else330:                                       ; preds = %lor.lhs.false324
  %rx_id_list_ready331 = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 1
  %323 = ptrtoint ptr %rx_id_list_ready331 to i32
  call void @__asan_load1_noabort(i32 %323)
  %324 = load i8, ptr %rx_id_list_ready331, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %324)
  %tobool333.not = icmp eq i8 %324, 0
  br i1 %tobool333.not, label %if.else330.if.else339_crit_edge, label %land.lhs.true334

if.else330.if.else339_crit_edge:                  ; preds = %if.else330
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else339

land.lhs.true334:                                 ; preds = %if.else330
  %is_repeater335 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 1
  %325 = ptrtoint ptr %is_repeater335 to i32
  call void @__asan_load1_noabort(i32 %325)
  %326 = load i8, ptr %is_repeater335, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %326)
  %tobool337.not = icmp eq i8 %326, 0
  br i1 %tobool337.not, label %land.lhs.true334.if.else339_crit_edge, label %if.then338

land.lhs.true334.if.else339_crit_edge:            ; preds = %land.lhs.true334
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else339

if.then338:                                       ; preds = %land.lhs.true334
  call void @__sanitizer_cov_trace_pc() #5
  %327 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %327)
  store i8 1, ptr %output, align 2
  %callback_delay.i727 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %328 = ptrtoint ptr %callback_delay.i727 to i32
  call void @__asan_store2_noabort(i32 %328)
  store i16 0, ptr %callback_delay.i727, align 2
  tail call fastcc void @set_state_id(ptr noundef %hdcp, ptr noundef %output, i8 noundef zeroext 29)
  br label %sw.epilog

if.else339:                                       ; preds = %land.lhs.true334.if.else339_crit_edge, %if.else330.if.else339_crit_edge
  %stream_ready_available = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 31
  %329 = ptrtoint ptr %stream_ready_available to i32
  call void @__asan_load1_noabort(i32 %329)
  %330 = load i8, ptr %stream_ready_available, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %330)
  %cmp341.not = icmp eq i8 %330, 1
  br i1 %cmp341.not, label %if.else350, label %if.then343

if.then343:                                       ; preds = %if.else339
  %331 = ptrtoint ptr %event_ctx to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %event_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %332)
  %cmp345 = icmp eq i32 %332, 1
  br i1 %cmp345, label %if.then347, label %if.else348

if.then347:                                       ; preds = %if.then343
  call void @__sanitizer_cov_trace_pc() #5
  %count = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 3
  %333 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %333)
  %334 = load i8, ptr %count, align 4
  %inc = add i8 %334, 1
  store i8 %inc, ptr %count, align 4
  %335 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %335)
  store i8 1, ptr %output, align 2
  %callback_delay.i728 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %336 = ptrtoint ptr %callback_delay.i728 to i32
  call void @__asan_store2_noabort(i32 %336)
  store i16 0, ptr %callback_delay.i728, align 2
  tail call fastcc void @set_state_id(ptr noundef %hdcp, ptr noundef %output, i8 noundef zeroext 30)
  br label %sw.epilog

if.else348:                                       ; preds = %if.then343
  call void @__sanitizer_cov_trace_pc() #5
  %337 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %337)
  store i8 1, ptr %output, align 2
  %callback_delay.i729 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %338 = ptrtoint ptr %callback_delay.i729 to i32
  call void @__asan_store2_noabort(i32 %338)
  store i16 10, ptr %callback_delay.i729, align 2
  %stay_count.i730 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 4, i32 1
  %339 = ptrtoint ptr %stay_count.i730 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %stay_count.i730, align 4
  %inc.i731 = add i32 %340, 1
  store i32 %inc.i731, ptr %stay_count.i730, align 4
  br label %sw.epilog

if.else350:                                       ; preds = %if.else339
  %stream_ready_read = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 32
  %341 = ptrtoint ptr %stream_ready_read to i32
  call void @__asan_load1_noabort(i32 %341)
  %342 = load i8, ptr %stream_ready_read, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %342)
  %cmp352.not = icmp eq i8 %342, 1
  br i1 %cmp352.not, label %lor.lhs.false354, label %if.else350.if.then358_crit_edge

if.else350.if.then358_crit_edge:                  ; preds = %if.else350
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then358

lor.lhs.false354:                                 ; preds = %if.else350
  %stream_ready_validation = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 33
  %343 = ptrtoint ptr %stream_ready_validation to i32
  call void @__asan_load1_noabort(i32 %343)
  %344 = load i8, ptr %stream_ready_validation, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %344)
  %cmp356.not = icmp eq i8 %344, 1
  br i1 %cmp356.not, label %if.end375, label %lor.lhs.false354.if.then358_crit_edge

lor.lhs.false354.if.then358_crit_edge:            ; preds = %lor.lhs.false354
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then358

if.then358:                                       ; preds = %lor.lhs.false354.if.then358_crit_edge, %if.else350.if.then358_crit_edge
  %count360 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 3
  %345 = ptrtoint ptr %count360 to i32
  call void @__asan_load1_noabort(i32 %345)
  %346 = load i8, ptr %count360, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %346)
  %cmp363 = icmp ugt i8 %346, 10
  br i1 %cmp363, label %if.then365, label %if.else366

if.then365:                                       ; preds = %if.then358
  call void @__sanitizer_cov_trace_pc() #5
  %347 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %347)
  store i8 1, ptr %output, align 2
  %callback_delay.i732 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %348 = ptrtoint ptr %callback_delay.i732 to i32
  call void @__asan_store2_noabort(i32 %348)
  store i16 0, ptr %callback_delay.i732, align 2
  %watchdog_timer_needed.i733 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %349 = ptrtoint ptr %watchdog_timer_needed.i733 to i32
  call void @__asan_store1_noabort(i32 %349)
  store i8 0, ptr %watchdog_timer_needed.i733, align 2
  %watchdog_timer_delay.i734 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %350 = ptrtoint ptr %watchdog_timer_delay.i734 to i32
  call void @__asan_store2_noabort(i32 %350)
  store i16 0, ptr %watchdog_timer_delay.i734, align 2
  br label %sw.epilog

if.else366:                                       ; preds = %if.then358
  call void @__sanitizer_cov_trace_pc() #5
  %inc370 = add nuw nsw i8 %346, 1
  %351 = ptrtoint ptr %count360 to i32
  call void @__asan_store1_noabort(i32 %351)
  store i8 %inc370, ptr %count360, align 4
  %352 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %352)
  store i8 1, ptr %output, align 2
  %callback_delay.i735 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %353 = ptrtoint ptr %callback_delay.i735 to i32
  call void @__asan_store2_noabort(i32 %353)
  store i16 0, ptr %callback_delay.i735, align 2
  tail call fastcc void @set_state_id(ptr noundef %hdcp, ptr noundef %output, i8 noundef zeroext 30)
  br label %sw.epilog

if.end375:                                        ; preds = %lor.lhs.false354
  call void @__sanitizer_cov_trace_pc() #5
  %354 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %354)
  store i8 1, ptr %output, align 2
  %callback_delay.i736 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %355 = ptrtoint ptr %callback_delay.i736 to i32
  call void @__asan_store2_noabort(i32 %355)
  store i16 200, ptr %callback_delay.i736, align 2
  tail call fastcc void @set_state_id(ptr noundef %hdcp, ptr noundef %output, i8 noundef zeroext 26)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %356 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %356)
  store i8 1, ptr %output, align 2
  %callback_delay.i737 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %357 = ptrtoint ptr %callback_delay.i737 to i32
  call void @__asan_store2_noabort(i32 %357)
  store i16 0, ptr %callback_delay.i737, align 2
  %watchdog_timer_needed.i738 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %358 = ptrtoint ptr %watchdog_timer_needed.i738 to i32
  call void @__asan_store1_noabort(i32 %358)
  store i8 0, ptr %watchdog_timer_needed.i738, align 2
  %watchdog_timer_delay.i739 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %359 = ptrtoint ptr %watchdog_timer_delay.i739 to i32
  call void @__asan_store2_noabort(i32 %359)
  store i16 0, ptr %watchdog_timer_delay.i739, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end375, %if.else366, %if.then365, %if.else348, %if.then347, %if.then338, %if.then329, %if.end318, %if.then315, %if.then306, %if.then297, %if.end286, %if.then285, %if.end258, %if.else255, %if.then254, %if.then246, %if.end235, %if.then233, %if.then224, %if.end213, %if.then210, %if.then205, %if.then197, %if.else187, %if.then186, %if.then183, %if.end174, %if.then172, %if.then167, %if.end147, %if.then140, %if.then134, %if.else127, %if.then126, %if.else.i656, %if.then.i655, %if.then115, %if.end110, %if.then108, %if.else98, %if.then97, %if.end88, %if.then86, %if.else80, %if.then79, %if.else.i615, %if.then.i614, %if.then61, %if.else55, %if.then54, %if.then46, %if.else36, %if.then35, %if.end27, %if.then25, %if.then16, %if.else, %if.else.i, %if.then.i
  %status.0 = phi i32 [ 2, %sw.default ], [ 0, %if.end375 ], [ 2, %if.then365 ], [ 0, %if.else366 ], [ 0, %if.then347 ], [ 0, %if.else348 ], [ 0, %if.then338 ], [ 2, %if.then329 ], [ 0, %if.end318 ], [ 2, %if.then315 ], [ 0, %if.then306 ], [ 2, %if.then297 ], [ 0, %if.end286 ], [ 2, %if.then285 ], [ 2, %if.then254 ], [ 0, %if.else255 ], [ 0, %if.end258 ], [ 2, %if.then246 ], [ 2, %if.then224 ], [ 0, %if.end235 ], [ 0, %if.then233 ], [ 0, %if.end213 ], [ 2, %if.then210 ], [ 0, %if.then205 ], [ 2, %if.then197 ], [ 0, %if.else187 ], [ 0, %if.then186 ], [ 2, %if.then183 ], [ 2, %if.then167 ], [ 0, %if.end174 ], [ 0, %if.then172 ], [ 0, %if.end147 ], [ 2, %if.then140 ], [ 2, %if.then134 ], [ 2, %if.then126 ], [ 0, %if.else127 ], [ 2, %if.then115 ], [ 0, %if.end110 ], [ 2, %if.then108 ], [ 2, %if.then97 ], [ 0, %if.else98 ], [ 0, %if.end88 ], [ 2, %if.then86 ], [ 2, %if.then79 ], [ 0, %if.else80 ], [ 2, %if.then61 ], [ 0, %if.else55 ], [ 0, %if.then54 ], [ 2, %if.then46 ], [ 2, %if.then35 ], [ 0, %if.else36 ], [ 0, %if.end27 ], [ 2, %if.then25 ], [ 2, %if.then16 ], [ 0, %if.else ], [ 0, %if.then.i ], [ 0, %if.else.i ], [ 0, %if.then.i614 ], [ 0, %if.else.i615 ], [ 0, %if.then.i655 ], [ 0, %if.else.i656 ]
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
define dso_local i32 @mod_hdcp_hdcp2_dp_transition(ptr noundef %hdcp, ptr nocapture noundef readonly %event_ctx, ptr noundef readonly %input, ptr noundef %output) local_unnamed_addr #0 align 64 {
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
    i8 32, label %sw.bb
    i8 33, label %sw.bb8
    i8 34, label %sw.bb28
    i8 35, label %sw.bb46
    i8 36, label %sw.bb60
    i8 37, label %sw.bb77
    i8 38, label %sw.bb99
    i8 39, label %sw.bb105
    i8 40, label %sw.bb136
    i8 41, label %sw.bb159
    i8 42, label %sw.bb173
    i8 43, label %sw.bb191
    i8 44, label %sw.bb231
    i8 45, label %sw.bb270
    i8 46, label %sw.bb298
    i8 47, label %sw.bb331
    i8 48, label %sw.bb369
  ]

sw.bb:                                            ; preds = %entry
  %rx_caps_read_dp = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 34
  %3 = ptrtoint ptr %rx_caps_read_dp to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %rx_caps_read_dp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %4)
  %cmp.not = icmp eq i8 %4, 1
  br i1 %cmp.not, label %lor.lhs.false, label %sw.bb.if.then_crit_edge

sw.bb.if.then_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

lor.lhs.false:                                    ; preds = %sw.bb
  %hdcp2_capable_check = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 1
  %5 = ptrtoint ptr %hdcp2_capable_check to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %hdcp2_capable_check, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp6.not = icmp eq i8 %6, 1
  br i1 %cmp6.not, label %if.else, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %sw.bb.if.then_crit_edge
  %hdcp2 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 0, i32 8, i32 2
  %7 = ptrtoint ptr %hdcp2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %hdcp2, align 1
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %hdcp2, align 1
  %8 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %output, align 2
  %callback_delay.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %9 = ptrtoint ptr %callback_delay.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %callback_delay.i, align 2
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 72057594037927936, ptr %state.i, align 4
  %callback_stop.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 1
  %11 = ptrtoint ptr %callback_stop.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %callback_stop.i, align 1
  %watchdog_timer_stop.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 3
  %12 = ptrtoint ptr %watchdog_timer_stop.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %watchdog_timer_stop.i, align 1
  %watchdog_timer_needed.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %13 = ptrtoint ptr %watchdog_timer_needed.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %watchdog_timer_needed.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  %index6.i = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %15 = ptrtoint ptr %index6.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %index6.i, align 4
  %conv7.i = zext i8 %16 to i32
  %call9.i = tail call ptr @mod_hdcp_state_id_to_str(i32 noundef 1) #3
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %watchdog_timer_delay.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %17 = ptrtoint ptr %watchdog_timer_delay.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %watchdog_timer_delay.i, align 2
  %conv4.i = zext i16 %18 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %conv7.i, ptr noundef %call9.i, i32 noundef %conv4.i) #3
  br label %sw.epilog

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %conv7.i, ptr noundef %call9.i) #3
  br label %sw.epilog

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  %19 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %output, align 2
  %callback_delay.i610 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %20 = ptrtoint ptr %callback_delay.i610 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %callback_delay.i610, align 2
  tail call fastcc void @set_state_id(ptr noundef %hdcp, ptr noundef %output, i8 noundef zeroext 33)
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %create_session = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 2
  %21 = ptrtoint ptr %create_session to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %create_session, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %22)
  %cmp10.not = icmp eq i8 %22, 1
  br i1 %cmp10.not, label %lor.lhs.false12, label %sw.bb8.if.then16_crit_edge

sw.bb8.if.then16_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then16

lor.lhs.false12:                                  ; preds = %sw.bb8
  %ake_init_prepare = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 3
  %23 = ptrtoint ptr %ake_init_prepare to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ake_init_prepare, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %24)
  %cmp14.not = icmp eq i8 %24, 1
  br i1 %cmp14.not, label %if.else21, label %lor.lhs.false12.if.then16_crit_edge

lor.lhs.false12.if.then16_crit_edge:              ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then16

if.then16:                                        ; preds = %lor.lhs.false12.if.then16_crit_edge, %sw.bb8.if.then16_crit_edge
  %hdcp217 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 0, i32 8, i32 2
  %25 = ptrtoint ptr %hdcp217 to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load18 = load i8, ptr %hdcp217, align 1
  %bf.set20 = or i8 %bf.load18, -128
  store i8 %bf.set20, ptr %hdcp217, align 1
  %26 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %output, align 2
  %callback_delay.i611 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %27 = ptrtoint ptr %callback_delay.i611 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %callback_delay.i611, align 2
  %watchdog_timer_needed.i612 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %28 = ptrtoint ptr %watchdog_timer_needed.i612 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %watchdog_timer_needed.i612, align 2
  %watchdog_timer_delay.i613 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %29 = ptrtoint ptr %watchdog_timer_delay.i613 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %watchdog_timer_delay.i613, align 2
  br label %sw.epilog

if.else21:                                        ; preds = %lor.lhs.false12
  %ake_init_write = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 4
  %30 = ptrtoint ptr %ake_init_write to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ake_init_write, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %31)
  %cmp23.not = icmp eq i8 %31, 1
  %32 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %output, align 2
  %callback_delay.i617 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  br i1 %cmp23.not, label %if.end27, label %if.then25

if.then25:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #5
  %33 = ptrtoint ptr %callback_delay.i617 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %callback_delay.i617, align 2
  %watchdog_timer_needed.i615 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %34 = ptrtoint ptr %watchdog_timer_needed.i615 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %watchdog_timer_needed.i615, align 2
  %watchdog_timer_delay.i616 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %35 = ptrtoint ptr %watchdog_timer_delay.i616 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %watchdog_timer_delay.i616, align 2
  br label %sw.epilog

if.end27:                                         ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #5
  %36 = ptrtoint ptr %callback_delay.i617 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 100, ptr %callback_delay.i617, align 2
  tail call fastcc void @set_state_id(ptr noundef %hdcp, ptr noundef %output, i8 noundef zeroext 34)
  br label %sw.epilog

sw.bb28:                                          ; preds = %entry
  %ake_cert_read = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 7
  %37 = ptrtoint ptr %ake_cert_read to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ake_cert_read, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %38)
  %cmp30.not = icmp eq i8 %38, 1
  br i1 %cmp30.not, label %lor.lhs.false32, label %sw.bb28.if.then36_crit_edge

sw.bb28.if.then36_crit_edge:                      ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then36

lor.lhs.false32:                                  ; preds = %sw.bb28
  %ake_cert_validation = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 8
  %39 = ptrtoint ptr %ake_cert_validation to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %ake_cert_validation, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %40)
  %cmp34.not = icmp eq i8 %40, 1
  br i1 %cmp34.not, label %if.end37, label %lor.lhs.false32.if.then36_crit_edge

lor.lhs.false32.if.then36_crit_edge:              ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then36

if.then36:                                        ; preds = %lor.lhs.false32.if.then36_crit_edge, %sw.bb28.if.then36_crit_edge
  %41 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %output, align 2
  %callback_delay.i618 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %42 = ptrtoint ptr %callback_delay.i618 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %callback_delay.i618, align 2
  %watchdog_timer_needed.i619 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %43 = ptrtoint ptr %watchdog_timer_needed.i619 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %watchdog_timer_needed.i619, align 2
  %watchdog_timer_delay.i620 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %44 = ptrtoint ptr %watchdog_timer_delay.i620 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %watchdog_timer_delay.i620, align 2
  br label %sw.epilog

if.end37:                                         ; preds = %lor.lhs.false32
  %is_km_stored = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 2
  %45 = ptrtoint ptr %is_km_stored to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %is_km_stored, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not = icmp eq i8 %46, 0
  br i1 %tobool.not, label %if.end37.if.else44_crit_edge, label %land.lhs.true

if.end37.if.else44_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else44

land.lhs.true:                                    ; preds = %if.end37
  %hdcp239 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 0, i32 8, i32 2
  %47 = ptrtoint ptr %hdcp239 to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load40 = load i8, ptr %hdcp239, align 1
  %48 = and i8 %bf.load40, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool42.not = icmp eq i8 %48, 0
  br i1 %tobool42.not, label %if.then43, label %land.lhs.true.if.else44_crit_edge

land.lhs.true.if.else44_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else44

if.then43:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %49 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %output, align 2
  %callback_delay.i621 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %50 = ptrtoint ptr %callback_delay.i621 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %callback_delay.i621, align 2
  tail call fastcc void @set_state_id(ptr noundef %hdcp, ptr noundef %output, i8 noundef zeroext 38)
  br label %sw.epilog

if.else44:                                        ; preds = %land.lhs.true.if.else44_crit_edge, %if.end37.if.else44_crit_edge
  %51 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %output, align 2
  %callback_delay.i622 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %52 = ptrtoint ptr %callback_delay.i622 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 0, ptr %callback_delay.i622, align 2
  tail call fastcc void @set_state_id(ptr noundef %hdcp, ptr noundef %output, i8 noundef zeroext 35)
  br label %sw.epilog

sw.bb46:                                          ; preds = %entry
  %no_stored_km_write = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 10
  %53 = ptrtoint ptr %no_stored_km_write to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %no_stored_km_write, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %54)
  %cmp48.not = icmp eq i8 %54, 1
  br i1 %cmp48.not, label %if.end51, label %if.then50

if.then50:                                        ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #5
  %55 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %output, align 2
  %callback_delay.i623 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %56 = ptrtoint ptr %callback_delay.i623 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 0, ptr %callback_delay.i623, align 2
  %watchdog_timer_needed.i624 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %57 = ptrtoint ptr %watchdog_timer_needed.i624 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %watchdog_timer_needed.i624, align 2
  %watchdog_timer_delay.i625 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %58 = ptrtoint ptr %watchdog_timer_delay.i625 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 0, ptr %watchdog_timer_delay.i625, align 2
  br label %sw.epilog

if.end51:                                         ; preds = %sw.bb46
  %hdcp252 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 0, i32 8, i32 2
  %59 = ptrtoint ptr %hdcp252 to i32
  call void @__asan_load1_noabort(i32 %59)
  %bf.load53 = load i8, ptr %hdcp252, align 1
  %60 = and i8 %bf.load53, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool56.not = icmp eq i8 %60, 0
  %spec.select = select i1 %tobool56.not, i16 1000, i16 2000
  %61 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %61, align 2
  %63 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %spec.select, ptr %63, align 2
  %65 = ptrtoint ptr %state.i to i32
  call void @__asan_storeN_noabort(i32 %65, i32 8)
  store i64 2594073385365405696, ptr %state.i, align 4
  %callback_stop.i631 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 1
  %66 = ptrtoint ptr %callback_stop.i631 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %callback_stop.i631, align 1
  %watchdog_timer_stop.i632 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 3
  %67 = ptrtoint ptr %watchdog_timer_stop.i632 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %watchdog_timer_stop.i632, align 1
  %68 = load i8, ptr %61, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.not.i634 = icmp eq i8 %68, 0
  %index6.i635 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %69 = ptrtoint ptr %index6.i635 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %index6.i635, align 4
  %conv7.i636 = zext i8 %70 to i32
  %call9.i637 = tail call ptr @mod_hdcp_state_id_to_str(i32 noundef 36) #3
  br i1 %tobool.not.i634, label %if.else.i641, label %if.then.i640

if.then.i640:                                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #5
  %71 = ptrtoint ptr %63 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %63, align 2
  %conv4.i639 = zext i16 %72 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %conv7.i636, ptr noundef %call9.i637, i32 noundef %conv4.i639) #3
  br label %sw.epilog

if.else.i641:                                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %conv7.i636, ptr noundef %call9.i637) #3
  br label %sw.epilog

sw.bb60:                                          ; preds = %entry
  %h_prime_available = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 11
  %73 = ptrtoint ptr %h_prime_available to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %h_prime_available, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %74)
  %cmp62.not = icmp eq i8 %74, 1
  br i1 %cmp62.not, label %if.else70, label %if.then64

if.then64:                                        ; preds = %sw.bb60
  %75 = ptrtoint ptr %event_ctx to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %event_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %76)
  %cmp65 = icmp eq i32 %76, 1
  br i1 %cmp65, label %if.then67, label %if.else68

if.then67:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #5
  %77 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %output, align 2
  %callback_delay.i643 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %78 = ptrtoint ptr %callback_delay.i643 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 1000, ptr %callback_delay.i643, align 2
  %watchdog_timer_needed.i644 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %79 = ptrtoint ptr %watchdog_timer_needed.i644 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %watchdog_timer_needed.i644, align 2
  %watchdog_timer_delay.i645 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %80 = ptrtoint ptr %watchdog_timer_delay.i645 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 0, ptr %watchdog_timer_delay.i645, align 2
  br label %sw.epilog

if.else68:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #5
  %stay_count.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 4, i32 1
  %81 = ptrtoint ptr %stay_count.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %stay_count.i, align 4
  %inc.i = add i32 %82, 1
  store i32 %inc.i, ptr %stay_count.i, align 4
  br label %sw.epilog

if.else70:                                        ; preds = %sw.bb60
  %h_prime_read = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 12
  %83 = ptrtoint ptr %h_prime_read to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %h_prime_read, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %84)
  %cmp72.not = icmp eq i8 %84, 1
  br i1 %cmp72.not, label %if.end76, label %if.then74

if.then74:                                        ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #5
  %85 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 1, ptr %output, align 2
  %callback_delay.i646 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %86 = ptrtoint ptr %callback_delay.i646 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 0, ptr %callback_delay.i646, align 2
  %watchdog_timer_needed.i647 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %87 = ptrtoint ptr %watchdog_timer_needed.i647 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %watchdog_timer_needed.i647, align 2
  %watchdog_timer_delay.i648 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %88 = ptrtoint ptr %watchdog_timer_delay.i648 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 0, ptr %watchdog_timer_delay.i648, align 2
  br label %sw.epilog

if.end76:                                         ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #5
  %watchdog_timer_needed.i649 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %89 = ptrtoint ptr %watchdog_timer_needed.i649 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %watchdog_timer_needed.i649, align 2
  %watchdog_timer_delay.i650 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %90 = ptrtoint ptr %watchdog_timer_delay.i650 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 200, ptr %watchdog_timer_delay.i650, align 2
  tail call fastcc void @set_state_id(ptr noundef %hdcp, ptr noundef %output, i8 noundef zeroext 37)
  br label %sw.epilog

sw.bb77:                                          ; preds = %entry
  %pairing_available = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 13
  %91 = ptrtoint ptr %pairing_available to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %pairing_available, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %92)
  %cmp79.not = icmp eq i8 %92, 1
  br i1 %cmp79.not, label %if.else88, label %if.then81

if.then81:                                        ; preds = %sw.bb77
  %93 = ptrtoint ptr %event_ctx to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %event_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %94)
  %cmp83 = icmp eq i32 %94, 1
  br i1 %cmp83, label %if.then85, label %if.else86

if.then85:                                        ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #5
  %95 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 1, ptr %output, align 2
  %callback_delay.i651 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %96 = ptrtoint ptr %callback_delay.i651 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 0, ptr %callback_delay.i651, align 2
  %watchdog_timer_needed.i652 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %97 = ptrtoint ptr %watchdog_timer_needed.i652 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %watchdog_timer_needed.i652, align 2
  %watchdog_timer_delay.i653 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %98 = ptrtoint ptr %watchdog_timer_delay.i653 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 0, ptr %watchdog_timer_delay.i653, align 2
  br label %sw.epilog

if.else86:                                        ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #5
  %stay_count.i654 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 4, i32 1
  %99 = ptrtoint ptr %stay_count.i654 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %stay_count.i654, align 4
  %inc.i655 = add i32 %100, 1
  store i32 %inc.i655, ptr %stay_count.i654, align 4
  br label %sw.epilog

if.else88:                                        ; preds = %sw.bb77
  %pairing_info_read = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 14
  %101 = ptrtoint ptr %pairing_info_read to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %pairing_info_read, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %102)
  %cmp90.not = icmp eq i8 %102, 1
  br i1 %cmp90.not, label %lor.lhs.false92, label %if.else88.if.then96_crit_edge

if.else88.if.then96_crit_edge:                    ; preds = %if.else88
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then96

lor.lhs.false92:                                  ; preds = %if.else88
  %h_prime_validation = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 15
  %103 = ptrtoint ptr %h_prime_validation to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %h_prime_validation, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %104)
  %cmp94.not = icmp eq i8 %104, 1
  br i1 %cmp94.not, label %if.end98, label %lor.lhs.false92.if.then96_crit_edge

lor.lhs.false92.if.then96_crit_edge:              ; preds = %lor.lhs.false92
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then96

if.then96:                                        ; preds = %lor.lhs.false92.if.then96_crit_edge, %if.else88.if.then96_crit_edge
  %105 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 1, ptr %output, align 2
  %callback_delay.i656 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %106 = ptrtoint ptr %callback_delay.i656 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 0, ptr %callback_delay.i656, align 2
  %watchdog_timer_needed.i657 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %107 = ptrtoint ptr %watchdog_timer_needed.i657 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %watchdog_timer_needed.i657, align 2
  %watchdog_timer_delay.i658 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %108 = ptrtoint ptr %watchdog_timer_delay.i658 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 0, ptr %watchdog_timer_delay.i658, align 2
  br label %sw.epilog

if.end98:                                         ; preds = %lor.lhs.false92
  call void @__sanitizer_cov_trace_pc() #5
  %109 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 1, ptr %output, align 2
  %callback_delay.i659 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %110 = ptrtoint ptr %callback_delay.i659 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 0, ptr %callback_delay.i659, align 2
  tail call fastcc void @set_state_id(ptr noundef %hdcp, ptr noundef %output, i8 noundef zeroext 40)
  br label %sw.epilog

sw.bb99:                                          ; preds = %entry
  %stored_km_write = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 9
  %111 = ptrtoint ptr %stored_km_write to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %stored_km_write, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %112)
  %cmp101.not = icmp eq i8 %112, 1
  br i1 %cmp101.not, label %if.end104, label %if.then103

if.then103:                                       ; preds = %sw.bb99
  call void @__sanitizer_cov_trace_pc() #5
  %113 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 1, ptr %output, align 2
  %callback_delay.i660 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %114 = ptrtoint ptr %callback_delay.i660 to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 0, ptr %callback_delay.i660, align 2
  %watchdog_timer_needed.i661 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %115 = ptrtoint ptr %watchdog_timer_needed.i661 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 0, ptr %watchdog_timer_needed.i661, align 2
  %watchdog_timer_delay.i662 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %116 = ptrtoint ptr %watchdog_timer_delay.i662 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 0, ptr %watchdog_timer_delay.i662, align 2
  br label %sw.epilog

if.end104:                                        ; preds = %sw.bb99
  %watchdog_timer_needed.i663 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %117 = ptrtoint ptr %watchdog_timer_needed.i663 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 1, ptr %watchdog_timer_needed.i663, align 2
  %watchdog_timer_delay.i664 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %118 = ptrtoint ptr %watchdog_timer_delay.i664 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 200, ptr %watchdog_timer_delay.i664, align 2
  %119 = ptrtoint ptr %state.i to i32
  call void @__asan_storeN_noabort(i32 %119, i32 8)
  store i64 2810246167479189504, ptr %state.i, align 4
  %callback_stop.i666 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 1
  %120 = ptrtoint ptr %callback_stop.i666 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 1, ptr %callback_stop.i666, align 1
  %watchdog_timer_stop.i667 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 3
  %121 = ptrtoint ptr %watchdog_timer_stop.i667 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 1, ptr %watchdog_timer_stop.i667, align 1
  %122 = load i8, ptr %watchdog_timer_needed.i663, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool.not.i669 = icmp eq i8 %122, 0
  %index6.i670 = getelementptr inbounds %struct.mod_hdcp_config, ptr %hdcp, i32 0, i32 2
  %123 = ptrtoint ptr %index6.i670 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %index6.i670, align 4
  %conv7.i671 = zext i8 %124 to i32
  %call9.i672 = tail call ptr @mod_hdcp_state_id_to_str(i32 noundef 39) #3
  br i1 %tobool.not.i669, label %if.else.i676, label %if.then.i675

if.then.i675:                                     ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #5
  %125 = ptrtoint ptr %watchdog_timer_delay.i664 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %watchdog_timer_delay.i664, align 2
  %conv4.i674 = zext i16 %126 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %conv7.i671, ptr noundef %call9.i672, i32 noundef %conv4.i674) #3
  br label %sw.epilog

if.else.i676:                                     ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %conv7.i671, ptr noundef %call9.i672) #3
  br label %sw.epilog

sw.bb105:                                         ; preds = %entry
  %h_prime_available106 = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 11
  %127 = ptrtoint ptr %h_prime_available106 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %h_prime_available106, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %128)
  %cmp108.not = icmp eq i8 %128, 1
  br i1 %cmp108.not, label %if.else117, label %if.then110

if.then110:                                       ; preds = %sw.bb105
  %129 = ptrtoint ptr %event_ctx to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %event_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %130)
  %cmp112 = icmp eq i32 %130, 1
  br i1 %cmp112, label %if.then114, label %if.else115

if.then114:                                       ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #5
  %131 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 1, ptr %output, align 2
  %callback_delay.i678 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %132 = ptrtoint ptr %callback_delay.i678 to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 1000, ptr %callback_delay.i678, align 2
  %watchdog_timer_needed.i679 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %133 = ptrtoint ptr %watchdog_timer_needed.i679 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 0, ptr %watchdog_timer_needed.i679, align 2
  %watchdog_timer_delay.i680 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %134 = ptrtoint ptr %watchdog_timer_delay.i680 to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 0, ptr %watchdog_timer_delay.i680, align 2
  br label %sw.epilog

if.else115:                                       ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #5
  %stay_count.i681 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 4, i32 1
  %135 = ptrtoint ptr %stay_count.i681 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %stay_count.i681, align 4
  %inc.i682 = add i32 %136, 1
  store i32 %inc.i682, ptr %stay_count.i681, align 4
  br label %sw.epilog

if.else117:                                       ; preds = %sw.bb105
  %h_prime_read118 = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 12
  %137 = ptrtoint ptr %h_prime_read118 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %h_prime_read118, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %138)
  %cmp120.not = icmp eq i8 %138, 1
  br i1 %cmp120.not, label %if.else123, label %if.then122

if.then122:                                       ; preds = %if.else117
  call void @__sanitizer_cov_trace_pc() #5
  %139 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 1, ptr %output, align 2
  %callback_delay.i683 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %140 = ptrtoint ptr %callback_delay.i683 to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 0, ptr %callback_delay.i683, align 2
  %watchdog_timer_needed.i684 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %141 = ptrtoint ptr %watchdog_timer_needed.i684 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 0, ptr %watchdog_timer_needed.i684, align 2
  %watchdog_timer_delay.i685 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %142 = ptrtoint ptr %watchdog_timer_delay.i685 to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 0, ptr %watchdog_timer_delay.i685, align 2
  br label %sw.epilog

if.else123:                                       ; preds = %if.else117
  %h_prime_validation124 = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 15
  %143 = ptrtoint ptr %h_prime_validation124 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %h_prime_validation124, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %144)
  %cmp126.not = icmp eq i8 %144, 1
  br i1 %cmp126.not, label %if.end135, label %if.then128

if.then128:                                       ; preds = %if.else123
  call void @__sanitizer_cov_trace_pc() #5
  %hdcp2129 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 0, i32 8, i32 2
  %145 = ptrtoint ptr %hdcp2129 to i32
  call void @__asan_load1_noabort(i32 %145)
  %bf.load130 = load i8, ptr %hdcp2129, align 1
  %bf.set132 = or i8 %bf.load130, 16
  store i8 %bf.set132, ptr %hdcp2129, align 1
  %146 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 1, ptr %output, align 2
  %callback_delay.i686 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %147 = ptrtoint ptr %callback_delay.i686 to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 0, ptr %callback_delay.i686, align 2
  %watchdog_timer_needed.i687 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %148 = ptrtoint ptr %watchdog_timer_needed.i687 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 0, ptr %watchdog_timer_needed.i687, align 2
  %watchdog_timer_delay.i688 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %149 = ptrtoint ptr %watchdog_timer_delay.i688 to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 0, ptr %watchdog_timer_delay.i688, align 2
  br label %sw.epilog

if.end135:                                        ; preds = %if.else123
  call void @__sanitizer_cov_trace_pc() #5
  %150 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 1, ptr %output, align 2
  %callback_delay.i689 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %151 = ptrtoint ptr %callback_delay.i689 to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 0, ptr %callback_delay.i689, align 2
  tail call fastcc void @set_state_id(ptr noundef %hdcp, ptr noundef %output, i8 noundef zeroext 40)
  br label %sw.epilog

sw.bb136:                                         ; preds = %entry
  %stay_count = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 4, i32 1
  %152 = ptrtoint ptr %stay_count to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %stay_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %153)
  %cmp137 = icmp ugt i32 %153, 10
  br i1 %cmp137, label %sw.bb136.if.then151_crit_edge, label %lor.lhs.false139

sw.bb136.if.then151_crit_edge:                    ; preds = %sw.bb136
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then151

lor.lhs.false139:                                 ; preds = %sw.bb136
  %lc_init_prepare = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 16
  %154 = ptrtoint ptr %lc_init_prepare to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %lc_init_prepare, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %155)
  %cmp141.not = icmp eq i8 %155, 1
  br i1 %cmp141.not, label %lor.lhs.false143, label %lor.lhs.false139.if.then151_crit_edge

lor.lhs.false139.if.then151_crit_edge:            ; preds = %lor.lhs.false139
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then151

lor.lhs.false143:                                 ; preds = %lor.lhs.false139
  %lc_init_write = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 17
  %156 = ptrtoint ptr %lc_init_write to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %lc_init_write, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %157)
  %cmp145.not = icmp eq i8 %157, 1
  br i1 %cmp145.not, label %lor.lhs.false147, label %lor.lhs.false143.if.then151_crit_edge

lor.lhs.false143.if.then151_crit_edge:            ; preds = %lor.lhs.false143
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then151

lor.lhs.false147:                                 ; preds = %lor.lhs.false143
  %l_prime_read = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 19
  %158 = ptrtoint ptr %l_prime_read to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %l_prime_read, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %159)
  %cmp149.not = icmp eq i8 %159, 1
  br i1 %cmp149.not, label %if.else152, label %lor.lhs.false147.if.then151_crit_edge

lor.lhs.false147.if.then151_crit_edge:            ; preds = %lor.lhs.false147
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then151

if.then151:                                       ; preds = %lor.lhs.false147.if.then151_crit_edge, %lor.lhs.false143.if.then151_crit_edge, %lor.lhs.false139.if.then151_crit_edge, %sw.bb136.if.then151_crit_edge
  %160 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 1, ptr %output, align 2
  %callback_delay.i690 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %161 = ptrtoint ptr %callback_delay.i690 to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 0, ptr %callback_delay.i690, align 2
  %watchdog_timer_needed.i691 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %162 = ptrtoint ptr %watchdog_timer_needed.i691 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 0, ptr %watchdog_timer_needed.i691, align 2
  %watchdog_timer_delay.i692 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %163 = ptrtoint ptr %watchdog_timer_delay.i692 to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 0, ptr %watchdog_timer_delay.i692, align 2
  br label %sw.epilog

if.else152:                                       ; preds = %lor.lhs.false147
  %l_prime_validation = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 20
  %164 = ptrtoint ptr %l_prime_validation to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %l_prime_validation, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %165)
  %cmp154.not = icmp eq i8 %165, 1
  %166 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 1, ptr %output, align 2
  %callback_delay.i696 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %167 = ptrtoint ptr %callback_delay.i696 to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 0, ptr %callback_delay.i696, align 2
  br i1 %cmp154.not, label %if.end158, label %if.then156

if.then156:                                       ; preds = %if.else152
  call void @__sanitizer_cov_trace_pc() #5
  %168 = ptrtoint ptr %stay_count to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %stay_count, align 4
  %inc.i695 = add i32 %169, 1
  store i32 %inc.i695, ptr %stay_count, align 4
  br label %sw.epilog

if.end158:                                        ; preds = %if.else152
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @set_state_id(ptr noundef %hdcp, ptr noundef %output, i8 noundef zeroext 41)
  br label %sw.epilog

sw.bb159:                                         ; preds = %entry
  %eks_prepare = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 21
  %170 = ptrtoint ptr %eks_prepare to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %eks_prepare, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %171)
  %cmp161.not = icmp eq i8 %171, 1
  br i1 %cmp161.not, label %lor.lhs.false163, label %sw.bb159.if.then167_crit_edge

sw.bb159.if.then167_crit_edge:                    ; preds = %sw.bb159
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then167

lor.lhs.false163:                                 ; preds = %sw.bb159
  %eks_write = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 22
  %172 = ptrtoint ptr %eks_write to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %eks_write, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %173)
  %cmp165.not = icmp eq i8 %173, 1
  br i1 %cmp165.not, label %if.end168, label %lor.lhs.false163.if.then167_crit_edge

lor.lhs.false163.if.then167_crit_edge:            ; preds = %lor.lhs.false163
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then167

if.then167:                                       ; preds = %lor.lhs.false163.if.then167_crit_edge, %sw.bb159.if.then167_crit_edge
  %174 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 1, ptr %output, align 2
  %callback_delay.i697 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %175 = ptrtoint ptr %callback_delay.i697 to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 0, ptr %callback_delay.i697, align 2
  %watchdog_timer_needed.i698 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %176 = ptrtoint ptr %watchdog_timer_needed.i698 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 0, ptr %watchdog_timer_needed.i698, align 2
  %watchdog_timer_delay.i699 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %177 = ptrtoint ptr %watchdog_timer_delay.i699 to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 0, ptr %watchdog_timer_delay.i699, align 2
  br label %sw.epilog

if.end168:                                        ; preds = %lor.lhs.false163
  %is_repeater = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 1
  %178 = ptrtoint ptr %is_repeater to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %is_repeater, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %179)
  %tobool169.not = icmp eq i8 %179, 0
  br i1 %tobool169.not, label %if.else171, label %if.then170

if.then170:                                       ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #5
  %watchdog_timer_needed.i700 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %180 = ptrtoint ptr %watchdog_timer_needed.i700 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 1, ptr %watchdog_timer_needed.i700, align 2
  %watchdog_timer_delay.i701 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %181 = ptrtoint ptr %watchdog_timer_delay.i701 to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 3000, ptr %watchdog_timer_delay.i701, align 2
  tail call fastcc void @set_state_id(ptr noundef %hdcp, ptr noundef %output, i8 noundef zeroext 45)
  br label %sw.epilog

if.else171:                                       ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #5
  %182 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 1, ptr %output, align 2
  %callback_delay.i702 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %183 = ptrtoint ptr %callback_delay.i702 to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 0, ptr %callback_delay.i702, align 2
  tail call fastcc void @set_state_id(ptr noundef %hdcp, ptr noundef %output, i8 noundef zeroext 42)
  br label %sw.epilog

sw.bb173:                                         ; preds = %entry
  %rxstatus_read = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 5
  %184 = ptrtoint ptr %rxstatus_read to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %rxstatus_read, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %185)
  %cmp175.not = icmp eq i8 %185, 1
  br i1 %cmp175.not, label %lor.lhs.false177, label %sw.bb173.if.then189_crit_edge

sw.bb173.if.then189_crit_edge:                    ; preds = %sw.bb173
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then189

lor.lhs.false177:                                 ; preds = %sw.bb173
  %reauth_request_check = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 24
  %186 = ptrtoint ptr %reauth_request_check to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %reauth_request_check, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %187)
  %cmp179.not = icmp eq i8 %187, 1
  br i1 %cmp179.not, label %lor.lhs.false181, label %lor.lhs.false177.if.then189_crit_edge

lor.lhs.false177.if.then189_crit_edge:            ; preds = %lor.lhs.false177
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then189

lor.lhs.false181:                                 ; preds = %lor.lhs.false177
  %link_integrity_check_dp = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 36
  %188 = ptrtoint ptr %link_integrity_check_dp to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %link_integrity_check_dp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %189)
  %cmp183.not = icmp eq i8 %189, 1
  br i1 %cmp183.not, label %lor.lhs.false185, label %lor.lhs.false181.if.then189_crit_edge

lor.lhs.false181.if.then189_crit_edge:            ; preds = %lor.lhs.false181
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then189

lor.lhs.false185:                                 ; preds = %lor.lhs.false181
  %content_stream_type_write = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 35
  %190 = ptrtoint ptr %content_stream_type_write to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %content_stream_type_write, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %191)
  %cmp187.not = icmp eq i8 %191, 1
  br i1 %cmp187.not, label %if.end190, label %lor.lhs.false185.if.then189_crit_edge

lor.lhs.false185.if.then189_crit_edge:            ; preds = %lor.lhs.false185
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then189

if.then189:                                       ; preds = %lor.lhs.false185.if.then189_crit_edge, %lor.lhs.false181.if.then189_crit_edge, %lor.lhs.false177.if.then189_crit_edge, %sw.bb173.if.then189_crit_edge
  %192 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 1, ptr %output, align 2
  %callback_delay.i703 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %193 = ptrtoint ptr %callback_delay.i703 to i32
  call void @__asan_store2_noabort(i32 %193)
  store i16 0, ptr %callback_delay.i703, align 2
  %watchdog_timer_needed.i704 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %194 = ptrtoint ptr %watchdog_timer_needed.i704 to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 0, ptr %watchdog_timer_needed.i704, align 2
  %watchdog_timer_delay.i705 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %195 = ptrtoint ptr %watchdog_timer_delay.i705 to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 0, ptr %watchdog_timer_delay.i705, align 2
  br label %sw.epilog

if.end190:                                        ; preds = %lor.lhs.false185
  call void @__sanitizer_cov_trace_pc() #5
  %196 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 1, ptr %output, align 2
  %callback_delay.i706 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %197 = ptrtoint ptr %callback_delay.i706 to i32
  call void @__asan_store2_noabort(i32 %197)
  store i16 210, ptr %callback_delay.i706, align 2
  tail call fastcc void @set_state_id(ptr noundef %hdcp, ptr noundef %output, i8 noundef zeroext 43)
  br label %sw.epilog

sw.bb191:                                         ; preds = %entry
  %rxstatus_read192 = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 5
  %198 = ptrtoint ptr %rxstatus_read192 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %rxstatus_read192, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %199)
  %cmp194.not = icmp eq i8 %199, 1
  br i1 %cmp194.not, label %lor.lhs.false196, label %sw.bb191.if.then206_crit_edge

sw.bb191.if.then206_crit_edge:                    ; preds = %sw.bb191
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then206

lor.lhs.false196:                                 ; preds = %sw.bb191
  %reauth_request_check197 = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 24
  %200 = ptrtoint ptr %reauth_request_check197 to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %reauth_request_check197, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %201)
  %cmp199.not = icmp eq i8 %201, 1
  br i1 %cmp199.not, label %lor.lhs.false201, label %lor.lhs.false196.if.then206_crit_edge

lor.lhs.false196.if.then206_crit_edge:            ; preds = %lor.lhs.false196
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then206

lor.lhs.false201:                                 ; preds = %lor.lhs.false196
  %link_integrity_check_dp202 = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 36
  %202 = ptrtoint ptr %link_integrity_check_dp202 to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %link_integrity_check_dp202, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %203)
  %cmp204.not = icmp eq i8 %203, 1
  br i1 %cmp204.not, label %if.else207, label %lor.lhs.false201.if.then206_crit_edge

lor.lhs.false201.if.then206_crit_edge:            ; preds = %lor.lhs.false201
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then206

if.then206:                                       ; preds = %lor.lhs.false201.if.then206_crit_edge, %lor.lhs.false196.if.then206_crit_edge, %sw.bb191.if.then206_crit_edge
  %204 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 1, ptr %output, align 2
  %callback_delay.i707 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %205 = ptrtoint ptr %callback_delay.i707 to i32
  call void @__asan_store2_noabort(i32 %205)
  store i16 0, ptr %callback_delay.i707, align 2
  %watchdog_timer_needed.i708 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %206 = ptrtoint ptr %watchdog_timer_needed.i708 to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 0, ptr %watchdog_timer_needed.i708, align 2
  %watchdog_timer_delay.i709 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %207 = ptrtoint ptr %watchdog_timer_delay.i709 to i32
  call void @__asan_store2_noabort(i32 %207)
  store i16 0, ptr %watchdog_timer_delay.i709, align 2
  br label %sw.epilog

if.else207:                                       ; preds = %lor.lhs.false201
  %rx_id_list_ready = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 1
  %208 = ptrtoint ptr %rx_id_list_ready to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %rx_id_list_ready, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %209)
  %tobool209.not = icmp eq i8 %209, 0
  br i1 %tobool209.not, label %if.else207.if.else215_crit_edge, label %land.lhs.true210

if.else207.if.else215_crit_edge:                  ; preds = %if.else207
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else215

land.lhs.true210:                                 ; preds = %if.else207
  %is_repeater211 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 1
  %210 = ptrtoint ptr %is_repeater211 to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %is_repeater211, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %211)
  %tobool213.not = icmp eq i8 %211, 0
  br i1 %tobool213.not, label %land.lhs.true210.if.else215_crit_edge, label %if.then214

land.lhs.true210.if.else215_crit_edge:            ; preds = %land.lhs.true210
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else215

if.then214:                                       ; preds = %land.lhs.true210
  call void @__sanitizer_cov_trace_pc() #5
  %212 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 1, ptr %output, align 2
  %callback_delay.i710 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %213 = ptrtoint ptr %callback_delay.i710 to i32
  call void @__asan_store2_noabort(i32 %213)
  store i16 0, ptr %callback_delay.i710, align 2
  tail call fastcc void @set_state_id(ptr noundef %hdcp, ptr noundef %output, i8 noundef zeroext 46)
  br label %sw.epilog

if.else215:                                       ; preds = %land.lhs.true210.if.else215_crit_edge, %if.else207.if.else215_crit_edge
  %enable_encryption = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 23
  %214 = ptrtoint ptr %enable_encryption to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %enable_encryption, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %215)
  %cmp217.not = icmp eq i8 %215, 1
  br i1 %cmp217.not, label %lor.lhs.false219, label %if.else215.if.then227_crit_edge

if.else215.if.then227_crit_edge:                  ; preds = %if.else215
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then227

lor.lhs.false219:                                 ; preds = %if.else215
  %connection.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1
  %216 = ptrtoint ptr %connection.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %connection.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %217)
  %cmp.i = icmp eq i32 %217, 2
  br i1 %cmp.i, label %is_dp_mst_hdcp.exit, label %lor.lhs.false219.if.end230_crit_edge

lor.lhs.false219.if.end230_crit_edge:             ; preds = %lor.lhs.false219
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end230

is_dp_mst_hdcp.exit:                              ; preds = %lor.lhs.false219
  %mst_enabled.i = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 0, i32 7, i32 0, i32 2
  %218 = ptrtoint ptr %mst_enabled.i to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %mst_enabled.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %219)
  %tobool.i.not = icmp eq i8 %219, 0
  br i1 %tobool.i.not, label %is_dp_mst_hdcp.exit.if.end230_crit_edge, label %land.lhs.true223

is_dp_mst_hdcp.exit.if.end230_crit_edge:          ; preds = %is_dp_mst_hdcp.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end230

land.lhs.true223:                                 ; preds = %is_dp_mst_hdcp.exit
  %stream_encryption_dp = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 37
  %220 = ptrtoint ptr %stream_encryption_dp to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %stream_encryption_dp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %221)
  %cmp225.not = icmp eq i8 %221, 1
  br i1 %cmp225.not, label %land.lhs.true223.if.end230_crit_edge, label %land.lhs.true223.if.then227_crit_edge

land.lhs.true223.if.then227_crit_edge:            ; preds = %land.lhs.true223
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then227

land.lhs.true223.if.end230_crit_edge:             ; preds = %land.lhs.true223
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end230

if.then227:                                       ; preds = %land.lhs.true223.if.then227_crit_edge, %if.else215.if.then227_crit_edge
  %222 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 1, ptr %output, align 2
  %callback_delay.i711 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %223 = ptrtoint ptr %callback_delay.i711 to i32
  call void @__asan_store2_noabort(i32 %223)
  store i16 0, ptr %callback_delay.i711, align 2
  %watchdog_timer_needed.i712 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %224 = ptrtoint ptr %watchdog_timer_needed.i712 to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 0, ptr %watchdog_timer_needed.i712, align 2
  %watchdog_timer_delay.i713 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %225 = ptrtoint ptr %watchdog_timer_delay.i713 to i32
  call void @__asan_store2_noabort(i32 %225)
  store i16 0, ptr %watchdog_timer_delay.i713, align 2
  br label %sw.epilog

if.end230:                                        ; preds = %land.lhs.true223.if.end230_crit_edge, %is_dp_mst_hdcp.exit.if.end230_crit_edge, %lor.lhs.false219.if.end230_crit_edge
  tail call fastcc void @set_state_id(ptr noundef %hdcp, ptr noundef %output, i8 noundef zeroext 44)
  %auth_complete.i = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 6
  %226 = ptrtoint ptr %auth_complete.i to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 1, ptr %auth_complete.i, align 2
  tail call void @mod_hdcp_log_ddc_trace(ptr noundef %hdcp) #3
  br label %sw.epilog

sw.bb231:                                         ; preds = %entry
  %rxstatus_read232 = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 5
  %227 = ptrtoint ptr %rxstatus_read232 to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %rxstatus_read232, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %228)
  %cmp234 = icmp eq i8 %228, 2
  br i1 %cmp234, label %sw.bb231.if.then241_crit_edge, label %lor.lhs.false236

sw.bb231.if.then241_crit_edge:                    ; preds = %sw.bb231
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then241

lor.lhs.false236:                                 ; preds = %sw.bb231
  %reauth_request_check237 = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 24
  %229 = ptrtoint ptr %reauth_request_check237 to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %reauth_request_check237, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %230)
  %cmp239 = icmp eq i8 %230, 2
  br i1 %cmp239, label %lor.lhs.false236.if.then241_crit_edge, label %if.else242

lor.lhs.false236.if.then241_crit_edge:            ; preds = %lor.lhs.false236
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then241

if.then241:                                       ; preds = %lor.lhs.false236.if.then241_crit_edge, %sw.bb231.if.then241_crit_edge
  %231 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 1, ptr %output, align 2
  %callback_delay.i714 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %232 = ptrtoint ptr %callback_delay.i714 to i32
  call void @__asan_store2_noabort(i32 %232)
  store i16 100, ptr %callback_delay.i714, align 2
  %watchdog_timer_needed.i715 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %233 = ptrtoint ptr %watchdog_timer_needed.i715 to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 0, ptr %watchdog_timer_needed.i715, align 2
  %watchdog_timer_delay.i716 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %234 = ptrtoint ptr %watchdog_timer_delay.i716 to i32
  call void @__asan_store2_noabort(i32 %234)
  store i16 0, ptr %watchdog_timer_delay.i716, align 2
  br label %sw.epilog

if.else242:                                       ; preds = %lor.lhs.false236
  %link_integrity_check_dp243 = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 36
  %235 = ptrtoint ptr %link_integrity_check_dp243 to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %link_integrity_check_dp243, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %236)
  %cmp245 = icmp eq i8 %236, 2
  br i1 %cmp245, label %if.then247, label %if.else258

if.then247:                                       ; preds = %if.else242
  %hdcp2_retry_count = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 7
  %237 = ptrtoint ptr %hdcp2_retry_count to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %hdcp2_retry_count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %238)
  %cmp250.not = icmp eq i8 %238, 0
  br i1 %cmp250.not, label %if.then247.if.end257_crit_edge, label %if.then252

if.then247.if.end257_crit_edge:                   ; preds = %if.then247
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end257

if.then252:                                       ; preds = %if.then247
  call void @__sanitizer_cov_trace_pc() #5
  %hdcp2253 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 0, i32 8, i32 2
  %239 = ptrtoint ptr %hdcp2253 to i32
  call void @__asan_load1_noabort(i32 %239)
  %bf.load254 = load i8, ptr %hdcp2253, align 1
  %bf.clear255 = and i8 %bf.load254, -97
  %bf.set256 = or i8 %bf.clear255, 32
  store i8 %bf.set256, ptr %hdcp2253, align 1
  br label %if.end257

if.end257:                                        ; preds = %if.then252, %if.then247.if.end257_crit_edge
  %240 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 1, ptr %output, align 2
  %callback_delay.i717 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %241 = ptrtoint ptr %callback_delay.i717 to i32
  call void @__asan_store2_noabort(i32 %241)
  store i16 0, ptr %callback_delay.i717, align 2
  %watchdog_timer_needed.i718 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %242 = ptrtoint ptr %watchdog_timer_needed.i718 to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 0, ptr %watchdog_timer_needed.i718, align 2
  %watchdog_timer_delay.i719 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %243 = ptrtoint ptr %watchdog_timer_delay.i719 to i32
  call void @__asan_store2_noabort(i32 %243)
  store i16 0, ptr %watchdog_timer_delay.i719, align 2
  br label %sw.epilog

if.else258:                                       ; preds = %if.else242
  %rx_id_list_ready259 = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 1
  %244 = ptrtoint ptr %rx_id_list_ready259 to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %rx_id_list_ready259, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %245)
  %tobool261.not = icmp eq i8 %245, 0
  br i1 %tobool261.not, label %if.else258.if.end269_crit_edge, label %land.lhs.true262

if.else258.if.end269_crit_edge:                   ; preds = %if.else258
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end269

land.lhs.true262:                                 ; preds = %if.else258
  %is_repeater263 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 1, i32 1
  %246 = ptrtoint ptr %is_repeater263 to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %is_repeater263, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %247)
  %tobool265.not = icmp eq i8 %247, 0
  br i1 %tobool265.not, label %land.lhs.true262.if.end269_crit_edge, label %if.then266

land.lhs.true262.if.end269_crit_edge:             ; preds = %land.lhs.true262
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end269

if.then266:                                       ; preds = %land.lhs.true262
  call void @__sanitizer_cov_trace_pc() #5
  %248 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 1, ptr %output, align 2
  %callback_delay.i720 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %249 = ptrtoint ptr %callback_delay.i720 to i32
  call void @__asan_store2_noabort(i32 %249)
  store i16 0, ptr %callback_delay.i720, align 2
  tail call fastcc void @set_state_id(ptr noundef %hdcp, ptr noundef %output, i8 noundef zeroext 46)
  br label %sw.epilog

if.end269:                                        ; preds = %land.lhs.true262.if.end269_crit_edge, %if.else258.if.end269_crit_edge
  %stay_count.i721 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 4, i32 1
  %250 = ptrtoint ptr %stay_count.i721 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %stay_count.i721, align 4
  %inc.i722 = add i32 %251, 1
  store i32 %inc.i722, ptr %stay_count.i721, align 4
  br label %sw.epilog

sw.bb270:                                         ; preds = %entry
  %rxstatus_read271 = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 5
  %252 = ptrtoint ptr %rxstatus_read271 to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %rxstatus_read271, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %253)
  %cmp273.not = icmp eq i8 %253, 1
  br i1 %cmp273.not, label %lor.lhs.false275, label %sw.bb270.if.then285_crit_edge

sw.bb270.if.then285_crit_edge:                    ; preds = %sw.bb270
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then285

lor.lhs.false275:                                 ; preds = %sw.bb270
  %reauth_request_check276 = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 24
  %254 = ptrtoint ptr %reauth_request_check276 to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %reauth_request_check276, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %255)
  %cmp278.not = icmp eq i8 %255, 1
  br i1 %cmp278.not, label %lor.lhs.false280, label %lor.lhs.false275.if.then285_crit_edge

lor.lhs.false275.if.then285_crit_edge:            ; preds = %lor.lhs.false275
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then285

lor.lhs.false280:                                 ; preds = %lor.lhs.false275
  %link_integrity_check_dp281 = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 36
  %256 = ptrtoint ptr %link_integrity_check_dp281 to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %link_integrity_check_dp281, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %257)
  %cmp283.not = icmp eq i8 %257, 1
  br i1 %cmp283.not, label %if.else286, label %lor.lhs.false280.if.then285_crit_edge

lor.lhs.false280.if.then285_crit_edge:            ; preds = %lor.lhs.false280
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then285

if.then285:                                       ; preds = %lor.lhs.false280.if.then285_crit_edge, %lor.lhs.false275.if.then285_crit_edge, %sw.bb270.if.then285_crit_edge
  %258 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 1, ptr %output, align 2
  %callback_delay.i723 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %259 = ptrtoint ptr %callback_delay.i723 to i32
  call void @__asan_store2_noabort(i32 %259)
  store i16 0, ptr %callback_delay.i723, align 2
  %watchdog_timer_needed.i724 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %260 = ptrtoint ptr %watchdog_timer_needed.i724 to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 0, ptr %watchdog_timer_needed.i724, align 2
  %watchdog_timer_delay.i725 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %261 = ptrtoint ptr %watchdog_timer_delay.i725 to i32
  call void @__asan_store2_noabort(i32 %261)
  store i16 0, ptr %watchdog_timer_delay.i725, align 2
  br label %sw.epilog

if.else286:                                       ; preds = %lor.lhs.false280
  %rx_id_list_ready287 = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 1
  %262 = ptrtoint ptr %rx_id_list_ready287 to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %rx_id_list_ready287, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %263)
  %tobool288.not = icmp eq i8 %263, 0
  br i1 %tobool288.not, label %if.then289, label %if.end297

if.then289:                                       ; preds = %if.else286
  %264 = ptrtoint ptr %event_ctx to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %event_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %265)
  %cmp291 = icmp eq i32 %265, 1
  br i1 %cmp291, label %if.then293, label %if.else294

if.then293:                                       ; preds = %if.then289
  call void @__sanitizer_cov_trace_pc() #5
  %266 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %266)
  store i8 1, ptr %output, align 2
  %callback_delay.i726 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %267 = ptrtoint ptr %callback_delay.i726 to i32
  call void @__asan_store2_noabort(i32 %267)
  store i16 0, ptr %callback_delay.i726, align 2
  %watchdog_timer_needed.i727 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %268 = ptrtoint ptr %watchdog_timer_needed.i727 to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 0, ptr %watchdog_timer_needed.i727, align 2
  %watchdog_timer_delay.i728 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %269 = ptrtoint ptr %watchdog_timer_delay.i728 to i32
  call void @__asan_store2_noabort(i32 %269)
  store i16 0, ptr %watchdog_timer_delay.i728, align 2
  br label %sw.epilog

if.else294:                                       ; preds = %if.then289
  call void @__sanitizer_cov_trace_pc() #5
  %stay_count.i729 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 4, i32 1
  %270 = ptrtoint ptr %stay_count.i729 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %stay_count.i729, align 4
  %inc.i730 = add i32 %271, 1
  store i32 %inc.i730, ptr %stay_count.i729, align 4
  br label %sw.epilog

if.end297:                                        ; preds = %if.else286
  call void @__sanitizer_cov_trace_pc() #5
  %272 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 1, ptr %output, align 2
  %callback_delay.i731 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %273 = ptrtoint ptr %callback_delay.i731 to i32
  call void @__asan_store2_noabort(i32 %273)
  store i16 0, ptr %callback_delay.i731, align 2
  tail call fastcc void @set_state_id(ptr noundef %hdcp, ptr noundef %output, i8 noundef zeroext 46)
  br label %sw.epilog

sw.bb298:                                         ; preds = %entry
  %rxstatus_read299 = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 5
  %274 = ptrtoint ptr %rxstatus_read299 to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %rxstatus_read299, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %275)
  %cmp301.not = icmp eq i8 %275, 1
  br i1 %cmp301.not, label %lor.lhs.false303, label %sw.bb298.if.then329_crit_edge

sw.bb298.if.then329_crit_edge:                    ; preds = %sw.bb298
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then329

lor.lhs.false303:                                 ; preds = %sw.bb298
  %reauth_request_check304 = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 24
  %276 = ptrtoint ptr %reauth_request_check304 to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %reauth_request_check304, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %277)
  %cmp306.not = icmp eq i8 %277, 1
  br i1 %cmp306.not, label %lor.lhs.false308, label %lor.lhs.false303.if.then329_crit_edge

lor.lhs.false303.if.then329_crit_edge:            ; preds = %lor.lhs.false303
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then329

lor.lhs.false308:                                 ; preds = %lor.lhs.false303
  %link_integrity_check_dp309 = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 36
  %278 = ptrtoint ptr %link_integrity_check_dp309 to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %link_integrity_check_dp309, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %279)
  %cmp311.not = icmp eq i8 %279, 1
  br i1 %cmp311.not, label %lor.lhs.false313, label %lor.lhs.false308.if.then329_crit_edge

lor.lhs.false308.if.then329_crit_edge:            ; preds = %lor.lhs.false308
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then329

lor.lhs.false313:                                 ; preds = %lor.lhs.false308
  %rx_id_list_read = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 25
  %280 = ptrtoint ptr %rx_id_list_read to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %rx_id_list_read, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %281)
  %cmp315.not = icmp eq i8 %281, 1
  br i1 %cmp315.not, label %lor.lhs.false317, label %lor.lhs.false313.if.then329_crit_edge

lor.lhs.false313.if.then329_crit_edge:            ; preds = %lor.lhs.false313
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then329

lor.lhs.false317:                                 ; preds = %lor.lhs.false313
  %device_count_check = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 26
  %282 = ptrtoint ptr %device_count_check to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %device_count_check, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %283)
  %cmp319.not = icmp eq i8 %283, 1
  br i1 %cmp319.not, label %lor.lhs.false321, label %lor.lhs.false317.if.then329_crit_edge

lor.lhs.false317.if.then329_crit_edge:            ; preds = %lor.lhs.false317
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then329

lor.lhs.false321:                                 ; preds = %lor.lhs.false317
  %rx_id_list_validation = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 27
  %284 = ptrtoint ptr %rx_id_list_validation to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %rx_id_list_validation, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %285)
  %cmp323.not = icmp eq i8 %285, 1
  br i1 %cmp323.not, label %lor.lhs.false325, label %lor.lhs.false321.if.then329_crit_edge

lor.lhs.false321.if.then329_crit_edge:            ; preds = %lor.lhs.false321
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then329

lor.lhs.false325:                                 ; preds = %lor.lhs.false321
  %repeater_auth_ack_write = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 28
  %286 = ptrtoint ptr %repeater_auth_ack_write to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %repeater_auth_ack_write, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %287)
  %cmp327.not = icmp eq i8 %287, 1
  br i1 %cmp327.not, label %if.end330, label %lor.lhs.false325.if.then329_crit_edge

lor.lhs.false325.if.then329_crit_edge:            ; preds = %lor.lhs.false325
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then329

if.then329:                                       ; preds = %lor.lhs.false325.if.then329_crit_edge, %lor.lhs.false321.if.then329_crit_edge, %lor.lhs.false317.if.then329_crit_edge, %lor.lhs.false313.if.then329_crit_edge, %lor.lhs.false308.if.then329_crit_edge, %lor.lhs.false303.if.then329_crit_edge, %sw.bb298.if.then329_crit_edge
  %288 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 1, ptr %output, align 2
  %callback_delay.i732 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %289 = ptrtoint ptr %callback_delay.i732 to i32
  call void @__asan_store2_noabort(i32 %289)
  store i16 0, ptr %callback_delay.i732, align 2
  %watchdog_timer_needed.i733 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %290 = ptrtoint ptr %watchdog_timer_needed.i733 to i32
  call void @__asan_store1_noabort(i32 %290)
  store i8 0, ptr %watchdog_timer_needed.i733, align 2
  %watchdog_timer_delay.i734 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %291 = ptrtoint ptr %watchdog_timer_delay.i734 to i32
  call void @__asan_store2_noabort(i32 %291)
  store i16 0, ptr %watchdog_timer_delay.i734, align 2
  br label %sw.epilog

if.end330:                                        ; preds = %lor.lhs.false325
  call void @__sanitizer_cov_trace_pc() #5
  %292 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %292)
  store i8 1, ptr %output, align 2
  %callback_delay.i735 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %293 = ptrtoint ptr %callback_delay.i735 to i32
  call void @__asan_store2_noabort(i32 %293)
  store i16 0, ptr %callback_delay.i735, align 2
  tail call fastcc void @set_state_id(ptr noundef %hdcp, ptr noundef %output, i8 noundef zeroext 47)
  br label %sw.epilog

sw.bb331:                                         ; preds = %entry
  %rxstatus_read332 = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 5
  %294 = ptrtoint ptr %rxstatus_read332 to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %rxstatus_read332, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %295)
  %cmp334.not = icmp eq i8 %295, 1
  br i1 %cmp334.not, label %lor.lhs.false336, label %sw.bb331.if.then346_crit_edge

sw.bb331.if.then346_crit_edge:                    ; preds = %sw.bb331
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then346

lor.lhs.false336:                                 ; preds = %sw.bb331
  %reauth_request_check337 = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 24
  %296 = ptrtoint ptr %reauth_request_check337 to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %reauth_request_check337, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %297)
  %cmp339.not = icmp eq i8 %297, 1
  br i1 %cmp339.not, label %lor.lhs.false341, label %lor.lhs.false336.if.then346_crit_edge

lor.lhs.false336.if.then346_crit_edge:            ; preds = %lor.lhs.false336
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then346

lor.lhs.false341:                                 ; preds = %lor.lhs.false336
  %link_integrity_check_dp342 = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 36
  %298 = ptrtoint ptr %link_integrity_check_dp342 to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %link_integrity_check_dp342, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %299)
  %cmp344.not = icmp eq i8 %299, 1
  br i1 %cmp344.not, label %if.else347, label %lor.lhs.false341.if.then346_crit_edge

lor.lhs.false341.if.then346_crit_edge:            ; preds = %lor.lhs.false341
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then346

if.then346:                                       ; preds = %lor.lhs.false341.if.then346_crit_edge, %lor.lhs.false336.if.then346_crit_edge, %sw.bb331.if.then346_crit_edge
  %300 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %300)
  store i8 1, ptr %output, align 2
  %callback_delay.i736 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %301 = ptrtoint ptr %callback_delay.i736 to i32
  call void @__asan_store2_noabort(i32 %301)
  store i16 0, ptr %callback_delay.i736, align 2
  %watchdog_timer_needed.i737 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %302 = ptrtoint ptr %watchdog_timer_needed.i737 to i32
  call void @__asan_store1_noabort(i32 %302)
  store i8 0, ptr %watchdog_timer_needed.i737, align 2
  %watchdog_timer_delay.i738 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %303 = ptrtoint ptr %watchdog_timer_delay.i738 to i32
  call void @__asan_store2_noabort(i32 %303)
  store i16 0, ptr %watchdog_timer_delay.i738, align 2
  br label %sw.epilog

if.else347:                                       ; preds = %lor.lhs.false341
  %rx_id_list_ready348 = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 1
  %304 = ptrtoint ptr %rx_id_list_ready348 to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %rx_id_list_ready348, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %305)
  %tobool349.not = icmp eq i8 %305, 0
  br i1 %tobool349.not, label %if.else351, label %if.then350

if.then350:                                       ; preds = %if.else347
  call void @__sanitizer_cov_trace_pc() #5
  %306 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %306)
  store i8 1, ptr %output, align 2
  %callback_delay.i739 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %307 = ptrtoint ptr %callback_delay.i739 to i32
  call void @__asan_store2_noabort(i32 %307)
  store i16 0, ptr %callback_delay.i739, align 2
  tail call fastcc void @set_state_id(ptr noundef %hdcp, ptr noundef %output, i8 noundef zeroext 46)
  br label %sw.epilog

if.else351:                                       ; preds = %if.else347
  %prepare_stream_manage = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 29
  %308 = ptrtoint ptr %prepare_stream_manage to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %prepare_stream_manage, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %309)
  %cmp353.not = icmp eq i8 %309, 1
  br i1 %cmp353.not, label %lor.lhs.false355, label %if.else351.if.then359_crit_edge

if.else351.if.then359_crit_edge:                  ; preds = %if.else351
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then359

lor.lhs.false355:                                 ; preds = %if.else351
  %stream_manage_write = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 30
  %310 = ptrtoint ptr %stream_manage_write to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %stream_manage_write, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %311)
  %cmp357.not = icmp eq i8 %311, 1
  br i1 %cmp357.not, label %if.end368, label %lor.lhs.false355.if.then359_crit_edge

lor.lhs.false355.if.then359_crit_edge:            ; preds = %lor.lhs.false355
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then359

if.then359:                                       ; preds = %lor.lhs.false355.if.then359_crit_edge, %if.else351.if.then359_crit_edge
  %312 = ptrtoint ptr %event_ctx to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %event_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %313)
  %cmp361 = icmp eq i32 %313, 0
  br i1 %cmp361, label %if.then363, label %if.else364

if.then363:                                       ; preds = %if.then359
  call void @__sanitizer_cov_trace_pc() #5
  %314 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %314)
  store i8 1, ptr %output, align 2
  %callback_delay.i740 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %315 = ptrtoint ptr %callback_delay.i740 to i32
  call void @__asan_store2_noabort(i32 %315)
  store i16 0, ptr %callback_delay.i740, align 2
  %watchdog_timer_needed.i741 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %316 = ptrtoint ptr %watchdog_timer_needed.i741 to i32
  call void @__asan_store1_noabort(i32 %316)
  store i8 0, ptr %watchdog_timer_needed.i741, align 2
  %watchdog_timer_delay.i742 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %317 = ptrtoint ptr %watchdog_timer_delay.i742 to i32
  call void @__asan_store2_noabort(i32 %317)
  store i16 0, ptr %watchdog_timer_delay.i742, align 2
  br label %sw.epilog

if.else364:                                       ; preds = %if.then359
  call void @__sanitizer_cov_trace_pc() #5
  %stay_count.i743 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 4, i32 1
  %318 = ptrtoint ptr %stay_count.i743 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %stay_count.i743, align 4
  %inc.i744 = add i32 %319, 1
  store i32 %inc.i744, ptr %stay_count.i743, align 4
  br label %sw.epilog

if.end368:                                        ; preds = %lor.lhs.false355
  call void @__sanitizer_cov_trace_pc() #5
  %320 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %320)
  store i8 1, ptr %output, align 2
  %callback_delay.i745 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %321 = ptrtoint ptr %callback_delay.i745 to i32
  call void @__asan_store2_noabort(i32 %321)
  store i16 100, ptr %callback_delay.i745, align 2
  tail call fastcc void @set_state_id(ptr noundef %hdcp, ptr noundef %output, i8 noundef zeroext 48)
  br label %sw.epilog

sw.bb369:                                         ; preds = %entry
  %rxstatus_read370 = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 5
  %322 = ptrtoint ptr %rxstatus_read370 to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %rxstatus_read370, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %323)
  %cmp372.not = icmp eq i8 %323, 1
  br i1 %cmp372.not, label %lor.lhs.false374, label %sw.bb369.if.then384_crit_edge

sw.bb369.if.then384_crit_edge:                    ; preds = %sw.bb369
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then384

lor.lhs.false374:                                 ; preds = %sw.bb369
  %reauth_request_check375 = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 24
  %324 = ptrtoint ptr %reauth_request_check375 to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %reauth_request_check375, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %325)
  %cmp377.not = icmp eq i8 %325, 1
  br i1 %cmp377.not, label %lor.lhs.false379, label %lor.lhs.false374.if.then384_crit_edge

lor.lhs.false374.if.then384_crit_edge:            ; preds = %lor.lhs.false374
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then384

lor.lhs.false379:                                 ; preds = %lor.lhs.false374
  %link_integrity_check_dp380 = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 36
  %326 = ptrtoint ptr %link_integrity_check_dp380 to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %link_integrity_check_dp380, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %327)
  %cmp382.not = icmp eq i8 %327, 1
  br i1 %cmp382.not, label %if.else385, label %lor.lhs.false379.if.then384_crit_edge

lor.lhs.false379.if.then384_crit_edge:            ; preds = %lor.lhs.false379
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then384

if.then384:                                       ; preds = %lor.lhs.false379.if.then384_crit_edge, %lor.lhs.false374.if.then384_crit_edge, %sw.bb369.if.then384_crit_edge
  %328 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %328)
  store i8 1, ptr %output, align 2
  %callback_delay.i746 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %329 = ptrtoint ptr %callback_delay.i746 to i32
  call void @__asan_store2_noabort(i32 %329)
  store i16 0, ptr %callback_delay.i746, align 2
  %watchdog_timer_needed.i747 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %330 = ptrtoint ptr %watchdog_timer_needed.i747 to i32
  call void @__asan_store1_noabort(i32 %330)
  store i8 0, ptr %watchdog_timer_needed.i747, align 2
  %watchdog_timer_delay.i748 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %331 = ptrtoint ptr %watchdog_timer_delay.i748 to i32
  call void @__asan_store2_noabort(i32 %331)
  store i16 0, ptr %watchdog_timer_delay.i748, align 2
  br label %sw.epilog

if.else385:                                       ; preds = %lor.lhs.false379
  %rx_id_list_ready386 = getelementptr inbounds %struct.mod_hdcp_event_context, ptr %event_ctx, i32 0, i32 1
  %332 = ptrtoint ptr %rx_id_list_ready386 to i32
  call void @__asan_load1_noabort(i32 %332)
  %333 = load i8, ptr %rx_id_list_ready386, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %333)
  %tobool387.not = icmp eq i8 %333, 0
  br i1 %tobool387.not, label %if.else389, label %if.then388

if.then388:                                       ; preds = %if.else385
  call void @__sanitizer_cov_trace_pc() #5
  %334 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %334)
  store i8 1, ptr %output, align 2
  %callback_delay.i749 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %335 = ptrtoint ptr %callback_delay.i749 to i32
  call void @__asan_store2_noabort(i32 %335)
  store i16 0, ptr %callback_delay.i749, align 2
  tail call fastcc void @set_state_id(ptr noundef %hdcp, ptr noundef %output, i8 noundef zeroext 46)
  br label %sw.epilog

if.else389:                                       ; preds = %if.else385
  %stream_ready_read = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 32
  %336 = ptrtoint ptr %stream_ready_read to i32
  call void @__asan_load1_noabort(i32 %336)
  %337 = load i8, ptr %stream_ready_read, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %337)
  %cmp391.not = icmp eq i8 %337, 1
  br i1 %cmp391.not, label %lor.lhs.false393, label %if.else389.if.then397_crit_edge

if.else389.if.then397_crit_edge:                  ; preds = %if.else389
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then397

lor.lhs.false393:                                 ; preds = %if.else389
  %stream_ready_validation = getelementptr inbounds %struct.mod_hdcp_transition_input_hdcp2, ptr %input, i32 0, i32 33
  %338 = ptrtoint ptr %stream_ready_validation to i32
  call void @__asan_load1_noabort(i32 %338)
  %339 = load i8, ptr %stream_ready_validation, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %339)
  %cmp395.not = icmp eq i8 %339, 1
  br i1 %cmp395.not, label %if.end415, label %lor.lhs.false393.if.then397_crit_edge

lor.lhs.false393.if.then397_crit_edge:            ; preds = %lor.lhs.false393
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then397

if.then397:                                       ; preds = %lor.lhs.false393.if.then397_crit_edge, %if.else389.if.then397_crit_edge
  %count = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 3, i32 3
  %340 = ptrtoint ptr %count to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %341)
  %cmp399 = icmp ugt i8 %341, 10
  br i1 %cmp399, label %if.then401, label %if.else402

if.then401:                                       ; preds = %if.then397
  call void @__sanitizer_cov_trace_pc() #5
  %342 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %342)
  store i8 1, ptr %output, align 2
  %callback_delay.i750 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %343 = ptrtoint ptr %callback_delay.i750 to i32
  call void @__asan_store2_noabort(i32 %343)
  store i16 0, ptr %callback_delay.i750, align 2
  %watchdog_timer_needed.i751 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %344 = ptrtoint ptr %watchdog_timer_needed.i751 to i32
  call void @__asan_store1_noabort(i32 %344)
  store i8 0, ptr %watchdog_timer_needed.i751, align 2
  %watchdog_timer_delay.i752 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %345 = ptrtoint ptr %watchdog_timer_delay.i752 to i32
  call void @__asan_store2_noabort(i32 %345)
  store i16 0, ptr %watchdog_timer_delay.i752, align 2
  br label %sw.epilog

if.else402:                                       ; preds = %if.then397
  %346 = ptrtoint ptr %event_ctx to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %event_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %347)
  %cmp404 = icmp eq i32 %347, 0
  br i1 %cmp404, label %if.then406, label %if.else410

if.then406:                                       ; preds = %if.else402
  call void @__sanitizer_cov_trace_pc() #5
  %inc = add nuw nsw i8 %341, 1
  %348 = ptrtoint ptr %count to i32
  call void @__asan_store1_noabort(i32 %348)
  store i8 %inc, ptr %count, align 4
  %349 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %349)
  store i8 1, ptr %output, align 2
  %callback_delay.i753 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %350 = ptrtoint ptr %callback_delay.i753 to i32
  call void @__asan_store2_noabort(i32 %350)
  store i16 0, ptr %callback_delay.i753, align 2
  tail call fastcc void @set_state_id(ptr noundef %hdcp, ptr noundef %output, i8 noundef zeroext 47)
  br label %sw.epilog

if.else410:                                       ; preds = %if.else402
  call void @__sanitizer_cov_trace_pc() #5
  %stay_count.i754 = getelementptr inbounds %struct.mod_hdcp, ptr %hdcp, i32 0, i32 4, i32 1
  %351 = ptrtoint ptr %stay_count.i754 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %stay_count.i754, align 4
  %inc.i755 = add i32 %352, 1
  store i32 %inc.i755, ptr %stay_count.i754, align 4
  br label %sw.epilog

if.end415:                                        ; preds = %lor.lhs.false393
  call void @__sanitizer_cov_trace_pc() #5
  %353 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %353)
  store i8 1, ptr %output, align 2
  %callback_delay.i756 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %354 = ptrtoint ptr %callback_delay.i756 to i32
  call void @__asan_store2_noabort(i32 %354)
  store i16 200, ptr %callback_delay.i756, align 2
  tail call fastcc void @set_state_id(ptr noundef %hdcp, ptr noundef %output, i8 noundef zeroext 43)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %355 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %355)
  store i8 1, ptr %output, align 2
  %callback_delay.i757 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 4
  %356 = ptrtoint ptr %callback_delay.i757 to i32
  call void @__asan_store2_noabort(i32 %356)
  store i16 0, ptr %callback_delay.i757, align 2
  %watchdog_timer_needed.i758 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 2
  %357 = ptrtoint ptr %watchdog_timer_needed.i758 to i32
  call void @__asan_store1_noabort(i32 %357)
  store i8 0, ptr %watchdog_timer_needed.i758, align 2
  %watchdog_timer_delay.i759 = getelementptr inbounds %struct.mod_hdcp_output, ptr %output, i32 0, i32 5
  %358 = ptrtoint ptr %watchdog_timer_delay.i759 to i32
  call void @__asan_store2_noabort(i32 %358)
  store i16 0, ptr %watchdog_timer_delay.i759, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end415, %if.else410, %if.then406, %if.then401, %if.then388, %if.then384, %if.end368, %if.else364, %if.then363, %if.then350, %if.then346, %if.end330, %if.then329, %if.end297, %if.else294, %if.then293, %if.then285, %if.end269, %if.then266, %if.end257, %if.then241, %if.end230, %if.then227, %if.then214, %if.then206, %if.end190, %if.then189, %if.else171, %if.then170, %if.then167, %if.end158, %if.then156, %if.then151, %if.end135, %if.then128, %if.then122, %if.else115, %if.then114, %if.else.i676, %if.then.i675, %if.then103, %if.end98, %if.then96, %if.else86, %if.then85, %if.end76, %if.then74, %if.else68, %if.then67, %if.else.i641, %if.then.i640, %if.then50, %if.else44, %if.then43, %if.then36, %if.end27, %if.then25, %if.then16, %if.else, %if.else.i, %if.then.i
  %status.0 = phi i32 [ 2, %sw.default ], [ 0, %if.end415 ], [ 2, %if.then401 ], [ 0, %if.then406 ], [ 0, %if.else410 ], [ 0, %if.then388 ], [ 2, %if.then384 ], [ 0, %if.end368 ], [ 2, %if.then363 ], [ 0, %if.else364 ], [ 0, %if.then350 ], [ 2, %if.then346 ], [ 0, %if.end330 ], [ 2, %if.then329 ], [ 2, %if.then293 ], [ 0, %if.else294 ], [ 0, %if.end297 ], [ 2, %if.then285 ], [ 2, %if.then241 ], [ 2, %if.end257 ], [ 0, %if.end269 ], [ 0, %if.then266 ], [ 0, %if.end230 ], [ 2, %if.then227 ], [ 0, %if.then214 ], [ 2, %if.then206 ], [ 0, %if.end190 ], [ 2, %if.then189 ], [ 0, %if.else171 ], [ 0, %if.then170 ], [ 2, %if.then167 ], [ 2, %if.then151 ], [ 0, %if.end158 ], [ 0, %if.then156 ], [ 0, %if.end135 ], [ 2, %if.then128 ], [ 2, %if.then122 ], [ 2, %if.then114 ], [ 0, %if.else115 ], [ 2, %if.then103 ], [ 0, %if.end98 ], [ 2, %if.then96 ], [ 2, %if.then85 ], [ 0, %if.else86 ], [ 0, %if.end76 ], [ 2, %if.then74 ], [ 2, %if.then67 ], [ 0, %if.else68 ], [ 2, %if.then50 ], [ 0, %if.else44 ], [ 0, %if.then43 ], [ 2, %if.then36 ], [ 0, %if.end27 ], [ 2, %if.then25 ], [ 2, %if.then16 ], [ 0, %if.else ], [ 0, %if.then.i ], [ 0, %if.else.i ], [ 0, %if.then.i640 ], [ 0, %if.else.i641 ], [ 0, %if.then.i675 ], [ 0, %if.else.i676 ]
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
