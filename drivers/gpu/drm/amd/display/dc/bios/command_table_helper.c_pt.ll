; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/bios/command_table_helper.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table_helper.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bp_encoder_control = type { i32, i32, i32, i32, i32, i32, i8, i32 }
%struct._DIG_ENCODER_CONTROL_PARAMETERS_V2 = type { i16, %struct._ATOM_DIG_ENCODER_CONFIG_V2, i8, i8, i8, i8, i8 }
%struct._ATOM_DIG_ENCODER_CONFIG_V2 = type { i8 }
%struct.command_table_helper = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s():%d\0A\00", [23 x i8] zeroinitializer }, align 32
@__func__.dal_bios_parser_init_cmd_tbl_helper = private unnamed_addr constant [36 x i8] c"dal_bios_parser_init_cmd_tbl_helper\00", align 1
@__func__.dal_cmd_table_helper_controller_id_to_atom = private unnamed_addr constant [43 x i8] c"dal_cmd_table_helper_controller_id_to_atom\00", align 1
@__func__.dal_cmd_table_helper_transmitter_bp_to_atom = private unnamed_addr constant [44 x i8] c"dal_cmd_table_helper_transmitter_bp_to_atom\00", align 1
@__func__.dal_cmd_table_helper_clock_source_id_to_ref_clk_src = private unnamed_addr constant [52 x i8] c"dal_cmd_table_helper_clock_source_id_to_ref_clk_src\00", align 1
@__func__.dal_cmd_table_helper_encoder_id_to_atom = private unnamed_addr constant [40 x i8] c"dal_cmd_table_helper_encoder_id_to_atom\00", align 1
@switch.table.dal_cmd_table_helper_transmitter_bp_to_atom = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\00\00\01\01\02\02\00\00\00", [23 x i8] zeroinitializer }, align 32
@switch.table.dal_cmd_table_helper_encoder_id_to_atom = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\00\01\02\03\04\05\0F\12\13\15\16\18\19\1E\1F !\22#$%", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.1 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.2 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 512]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 5]
@__sancov_gen_cov_switch_values.4 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [72 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table_helper.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 68, i32 3 }
@___asan_gen_.8 = private unnamed_addr constant [57 x i8] c"switch.table.dal_cmd_table_helper_transmitter_bp_to_atom\00", align 1
@___asan_gen_.9 = private unnamed_addr constant [53 x i8] c"switch.table.dal_cmd_table_helper_encoder_id_to_atom\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @switch.table.dal_cmd_table_helper_transmitter_bp_to_atom, ptr @switch.table.dal_cmd_table_helper_encoder_id_to_atom], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dal_cmd_table_helper_transmitter_bp_to_atom to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dal_cmd_table_helper_encoder_id_to_atom to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dal_bios_parser_init_cmd_tbl_helper(ptr nocapture noundef writeonly %h, i32 noundef %dce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %dce to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %dce, label %do.body [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge13
    i32 2, label %entry.sw.bb_crit_edge14
    i32 3, label %entry.sw.bb1_crit_edge
    i32 4, label %entry.sw.bb1_crit_edge15
    i32 5, label %entry.sw.bb1_crit_edge16
    i32 6, label %sw.bb3
    i32 7, label %sw.bb5
    i32 8, label %entry.sw.bb7_crit_edge
    i32 9, label %entry.sw.bb7_crit_edge17
  ]

entry.sw.bb7_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb7

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb7

entry.sw.bb1_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb1

entry.sw.bb1_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb1

entry.sw.bb_crit_edge14:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

entry.sw.bb_crit_edge13:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge13, %entry.sw.bb_crit_edge14
  %call = tail call ptr @dal_cmd_tbl_helper_dce60_get_table() #4
  %1 = ptrtoint ptr %h to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %h, align 4
  br label %return

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge15, %entry.sw.bb1_crit_edge16
  %call2 = tail call ptr @dal_cmd_tbl_helper_dce80_get_table() #4
  %2 = ptrtoint ptr %h to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %h, align 4
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call4 = tail call ptr @dal_cmd_tbl_helper_dce110_get_table() #4
  %3 = ptrtoint ptr %h to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %h, align 4
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call ptr @dal_cmd_tbl_helper_dce110_get_table() #4
  %4 = ptrtoint ptr %h to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call6, ptr %h, align 4
  br label %return

sw.bb7:                                           ; preds = %entry.sw.bb7_crit_edge, %entry.sw.bb7_crit_edge17
  %call8 = tail call ptr @dal_cmd_tbl_helper_dce112_get_table() #4
  %5 = ptrtoint ptr %h to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8, ptr %h, align 4
  br label %return

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dal_bios_parser_init_cmd_tbl_helper, i32 noundef 68) #4
  tail call void @kgdb_breakpoint() #4
  br label %return

return:                                           ; preds = %do.body, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  %retval.0 = phi i1 [ false, %do.body ], [ true, %sw.bb7 ], [ true, %sw.bb5 ], [ true, %sw.bb3 ], [ true, %sw.bb1 ], [ true, %sw.bb ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dal_cmd_tbl_helper_dce60_get_table() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dal_cmd_tbl_helper_dce80_get_table() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dal_cmd_tbl_helper_dce110_get_table() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dal_cmd_tbl_helper_dce112_get_table() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dal_cmd_table_helper_controller_id_to_atom(i32 noundef %id, ptr noundef writeonly %atom_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %atom_id, null
  br i1 %cmp, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dal_cmd_table_helper_controller_id_to_atom, i32 noundef 80) #4
  tail call void @kgdb_breakpoint() #4
  br label %return

if.end:                                           ; preds = %entry
  %0 = zext i32 %id to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %id, label %do.body8 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 4, label %sw.bb3
    i32 5, label %sw.bb4
    i32 6, label %sw.bb5
    i32 7, label %sw.bb6
    i32 0, label %sw.bb7
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %atom_id to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %atom_id, align 1
  br label %return

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %atom_id to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %atom_id, align 1
  br label %return

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %atom_id to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 2, ptr %atom_id, align 1
  br label %return

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %atom_id to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 3, ptr %atom_id, align 1
  br label %return

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %atom_id to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 4, ptr %atom_id, align 1
  br label %return

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %atom_id to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 5, ptr %atom_id, align 1
  br label %return

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %atom_id to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 16, ptr %atom_id, align 1
  br label %return

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %atom_id to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %atom_id, align 1
  br label %return

do.body8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dal_cmd_table_helper_controller_id_to_atom, i32 noundef 111) #4
  tail call void @kgdb_breakpoint() #4
  br label %return

return:                                           ; preds = %do.body8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb, %do.body
  %retval.0 = phi i1 [ false, %do.body ], [ false, %do.body8 ], [ true, %sw.bb7 ], [ true, %sw.bb6 ], [ true, %sw.bb5 ], [ true, %sw.bb4 ], [ true, %sw.bb3 ], [ true, %sw.bb2 ], [ true, %sw.bb1 ], [ true, %sw.bb ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @dal_cmd_table_helper_transmitter_bp_to_atom(i32 noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %t)
  %0 = icmp ult i32 %t, 9
  br i1 %0, label %switch.hole_check, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.body:                                          ; preds = %switch.hole_check.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dal_cmd_table_helper_transmitter_bp_to_atom, i32 noundef 141) #4
  tail call void @kgdb_breakpoint() #4
  br label %return

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %t to i16
  %switch.shifted = lshr i16 319, %switch.maskindex
  %1 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %switch.lobit.not = icmp eq i16 %1, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.body_crit_edge, label %switch.lookup

switch.hole_check.do.body_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [9 x i8], ptr @switch.table.dal_cmd_table_helper_transmitter_bp_to_atom, i32 0, i32 %t
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %2)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %return

return:                                           ; preds = %switch.lookup, %do.body
  %retval.0 = phi i8 [ 0, %do.body ], [ %switch.load, %switch.lookup ]
  ret i8 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dal_cmd_table_helper_encoder_mode_bp_to_atom(i32 noundef %s, i1 noundef zeroext %enable_dp_audio) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %s to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %s, label %sw.default [
    i32 1, label %entry.return_crit_edge
    i32 2, label %entry.return_crit_edge5
    i32 4, label %sw.bb1
    i32 8, label %sw.bb2
    i32 128, label %entry.sw.bb3_crit_edge
    i32 64, label %entry.sw.bb3_crit_edge6
    i32 32, label %entry.sw.bb3_crit_edge7
    i32 512, label %entry.sw.bb3_crit_edge8
    i32 16, label %sw.bb4
  ]

entry.sw.bb3_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb3

entry.sw.bb3_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb3

entry.sw.bb3_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb3

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge6, %entry.sw.bb3_crit_edge7, %entry.sw.bb3_crit_edge8
  %. = select i1 %enable_dp_audio, i32 5, i32 0
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

return:                                           ; preds = %sw.default, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge, %entry.return_crit_edge5
  %retval.0 = phi i32 [ 15, %sw.default ], [ 15, %sw.bb4 ], [ 1, %sw.bb2 ], [ 3, %sw.bb1 ], [ 2, %entry.return_crit_edge ], [ 2, %entry.return_crit_edge5 ], [ %., %sw.bb3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dal_cmd_table_helper_assign_control_parameter(ptr nocapture noundef readonly %h, ptr nocapture noundef readonly %control, ptr nocapture noundef %ctrl_param) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %transmitter = getelementptr inbounds %struct.bp_encoder_control, ptr %control, i32 0, i32 2
  %0 = ptrtoint ptr %transmitter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %transmitter, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %1, label %entry.if.end_crit_edge [
    i32 1, label %entry.if.then_crit_edge
    i32 3, label %entry.if.then_crit_edge30
    i32 5, label %entry.if.then_crit_edge31
  ]

entry.if.then_crit_edge31:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

entry.if.then_crit_edge30:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge30, %entry.if.then_crit_edge31
  %acConfig = getelementptr inbounds %struct._DIG_ENCODER_CONTROL_PARAMETERS_V2, ptr %ctrl_param, i32 0, i32 1
  %3 = ptrtoint ptr %acConfig to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %acConfig, align 1
  %bf.set = or i8 %bf.load, 8
  store i8 %bf.set, ptr %acConfig, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %transmitter_bp_to_atom = getelementptr inbounds %struct.command_table_helper, ptr %h, i32 0, i32 7
  %4 = ptrtoint ptr %transmitter_bp_to_atom to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %transmitter_bp_to_atom, align 4
  %6 = ptrtoint ptr %transmitter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %transmitter, align 4
  %call = tail call zeroext i8 %5(i32 noundef %7) #4
  %acConfig7 = getelementptr inbounds %struct._DIG_ENCODER_CONTROL_PARAMETERS_V2, ptr %ctrl_param, i32 0, i32 1
  %8 = ptrtoint ptr %acConfig7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load8 = load i8, ptr %acConfig7, align 1
  %bf.value = shl i8 %call, 4
  %bf.shl = and i8 %bf.value, 48
  %bf.clear9 = and i8 %bf.load8, -49
  %bf.set10 = or i8 %bf.clear9, %bf.shl
  store i8 %bf.set10, ptr %acConfig7, align 1
  %encoder_action_to_atom = getelementptr inbounds %struct.command_table_helper, ptr %h, i32 0, i32 1
  %9 = ptrtoint ptr %encoder_action_to_atom to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %encoder_action_to_atom, align 4
  %11 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %control, align 4
  %call11 = tail call zeroext i8 %10(i32 noundef %12) #4
  %ucAction = getelementptr inbounds %struct._DIG_ENCODER_CONTROL_PARAMETERS_V2, ptr %ctrl_param, i32 0, i32 2
  %13 = ptrtoint ptr %ucAction to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %call11, ptr %ucAction, align 1
  %pixel_clock = getelementptr inbounds %struct.bp_encoder_control, ptr %control, i32 0, i32 7
  %14 = ptrtoint ptr %pixel_clock to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pixel_clock, align 4
  %div = udiv i32 %15, 10
  %conv = trunc i32 %div to i16
  %16 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %17 = ptrtoint ptr %ctrl_param to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 %16, ptr %ctrl_param, align 1
  %encoder_mode_bp_to_atom = getelementptr inbounds %struct.command_table_helper, ptr %h, i32 0, i32 2
  %18 = ptrtoint ptr %encoder_mode_bp_to_atom to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %encoder_mode_bp_to_atom, align 4
  %signal = getelementptr inbounds %struct.bp_encoder_control, ptr %control, i32 0, i32 3
  %20 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %signal, align 4
  %enable_dp_audio = getelementptr inbounds %struct.bp_encoder_control, ptr %control, i32 0, i32 6
  %22 = ptrtoint ptr %enable_dp_audio to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %enable_dp_audio, align 4, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool = icmp ne i8 %23, 0
  %call12 = tail call i32 %19(i32 noundef %21, i1 noundef zeroext %tobool) #4
  %conv13 = trunc i32 %call12 to i8
  %ucEncoderMode = getelementptr inbounds %struct._DIG_ENCODER_CONTROL_PARAMETERS_V2, ptr %ctrl_param, i32 0, i32 3
  %24 = ptrtoint ptr %ucEncoderMode to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv13, ptr %ucEncoderMode, align 1
  %lanes_number = getelementptr inbounds %struct.bp_encoder_control, ptr %control, i32 0, i32 4
  %25 = ptrtoint ptr %lanes_number to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %lanes_number, align 4
  %conv14 = trunc i32 %26 to i8
  %ucLaneNum = getelementptr inbounds %struct._DIG_ENCODER_CONTROL_PARAMETERS_V2, ptr %ctrl_param, i32 0, i32 4
  %27 = ptrtoint ptr %ucLaneNum to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv14, ptr %ucLaneNum, align 1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dal_cmd_table_helper_clock_source_id_to_ref_clk_src(i32 noundef %id, ptr noundef writeonly %ref_clk_src_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %ref_clk_src_id, null
  br i1 %cmp, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dal_cmd_table_helper_clock_source_id_to_ref_clk_src, i32 noundef 217) #4
  tail call void @kgdb_breakpoint() #4
  br label %return

if.end:                                           ; preds = %entry
  %0 = zext i32 %id to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %id, label %do.body5 [
    i32 2, label %sw.bb
    i32 3, label %sw.bb1
    i32 5, label %sw.bb2
    i32 4, label %sw.bb3
    i32 0, label %sw.bb4
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %ref_clk_src_id to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %ref_clk_src_id, align 4
  br label %return

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %ref_clk_src_id to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %ref_clk_src_id, align 4
  br label %return

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %ref_clk_src_id to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %ref_clk_src_id, align 4
  br label %return

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %ref_clk_src_id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3, ptr %ref_clk_src_id, align 4
  br label %return

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %ref_clk_src_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 255, ptr %ref_clk_src_id, align 4
  br label %return

do.body5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dal_cmd_table_helper_clock_source_id_to_ref_clk_src, i32 noundef 239) #4
  tail call void @kgdb_breakpoint() #4
  br label %return

return:                                           ; preds = %do.body5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb, %do.body
  %retval.0 = phi i1 [ false, %do.body ], [ false, %do.body5 ], [ true, %sw.bb4 ], [ true, %sw.bb3 ], [ true, %sw.bb2 ], [ true, %sw.bb1 ], [ true, %sw.bb ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @dal_cmd_table_helper_encoder_id_to_atom(i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %id)
  %0 = icmp ult i32 %id, 21
  br i1 %0, label %switch.lookup, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dal_cmd_table_helper_encoder_id_to_atom, i32 noundef 292) #4
  tail call void @kgdb_breakpoint() #4
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [21 x i8], ptr @switch.table.dal_cmd_table_helper_encoder_id_to_atom, i32 0, i32 %id
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %1)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %return

return:                                           ; preds = %switch.lookup, %do.body
  %retval.0 = phi i8 [ 0, %do.body ], [ %switch.load, %switch.lookup ]
  ret i8 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table_helper.c", i32 68, i32 3}
!2 = !{ptr @__func__.dal_bios_parser_init_cmd_tbl_helper, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__func__.dal_cmd_table_helper_controller_id_to_atom, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table_helper.c", i32 80, i32 3}
!5 = !{ptr @__func__.dal_cmd_table_helper_transmitter_bp_to_atom, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table_helper.c", i32 141, i32 3}
!7 = !{ptr @__func__.dal_cmd_table_helper_clock_source_id_to_ref_clk_src, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table_helper.c", i32 217, i32 3}
!9 = !{ptr @__func__.dal_cmd_table_helper_encoder_id_to_atom, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/command_table_helper.c", i32 292, i32 3}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{i8 0, i8 2}
