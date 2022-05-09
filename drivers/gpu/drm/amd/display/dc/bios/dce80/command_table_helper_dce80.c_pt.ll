; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/display/dc/bios/dce80/command_table_helper_dce80.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/dce80/command_table_helper_dce80.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.command_table_helper = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@command_table_helper_funcs = internal constant { %struct.command_table_helper, [60 x i8] } { %struct.command_table_helper { ptr @dal_cmd_table_helper_controller_id_to_atom, ptr @encoder_action_to_atom, ptr @dal_cmd_table_helper_encoder_mode_bp_to_atom, ptr @engine_bp_to_atom, ptr @dal_cmd_table_helper_assign_control_parameter, ptr @clock_source_id_to_atom, ptr @dal_cmd_table_helper_clock_source_id_to_ref_clk_src, ptr @dal_cmd_table_helper_transmitter_bp_to_atom, ptr @dal_cmd_table_helper_encoder_id_to_atom, ptr @clock_source_id_to_atom_phy_clk_src_id, ptr @signal_type_to_atom_dig_mode, ptr @hpd_sel_to_atom, ptr @dig_encoder_sel_to_atom, ptr @phy_id_to_atom, ptr @disp_power_gating_action_to_atom, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s():%d\0A\00", [23 x i8] zeroinitializer }, align 32
@__func__.encoder_action_to_atom = private unnamed_addr constant [23 x i8] c"encoder_action_to_atom\00", align 1
@__func__.clock_source_id_to_atom = private unnamed_addr constant [24 x i8] c"clock_source_id_to_atom\00", align 1
@__func__.disp_power_gating_action_to_atom = private unnamed_addr constant [33 x i8] c"disp_power_gating_action_to_atom\00", align 1
@switch.table.engine_bp_to_atom = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 3, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 0], [32 x i8] zeroinitializer }, align 32
@switch.table.dig_encoder_sel_to_atom = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\02\04\08\10 @", [26 x i8] zeroinitializer }, align 32
@switch.table.phy_id_to_atom = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\01\02\03\04\05\00\00\00\06", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.1 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 4, i64 8, i64 32, i64 64, i64 128]
@___asan_gen_.2 = private unnamed_addr constant [27 x i8] c"command_table_helper_funcs\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 329, i32 42 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [84 x i8] c"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/dce80/command_table_helper_dce80.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 54, i32 3 }
@___asan_gen_.8 = private unnamed_addr constant [31 x i8] c"switch.table.engine_bp_to_atom\00", align 1
@___asan_gen_.9 = private unnamed_addr constant [37 x i8] c"switch.table.dig_encoder_sel_to_atom\00", align 1
@___asan_gen_.10 = private unnamed_addr constant [28 x i8] c"switch.table.phy_id_to_atom\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @command_table_helper_funcs, ptr @.str, ptr @switch.table.engine_bp_to_atom, ptr @switch.table.dig_encoder_sel_to_atom, ptr @switch.table.phy_id_to_atom], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @command_table_helper_funcs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.engine_bp_to_atom to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dig_encoder_sel_to_atom to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.phy_id_to_atom to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @dal_cmd_tbl_helper_dce80_get_table() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @command_table_helper_funcs
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dal_cmd_table_helper_controller_id_to_atom(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @encoder_action_to_atom(i32 noundef %action) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %action)
  %0 = icmp ult i32 %action, 4
  br i1 %0, label %switch.lookup, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.encoder_action_to_atom, i32 noundef 54) #4
  tail call void @kgdb_breakpoint() #4
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %switch.shiftamt = shl i32 %action, 3
  %switch.downshift = lshr i32 118423808, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %do.body
  %atom_action.0 = phi i8 [ 0, %do.body ], [ %switch.masked, %switch.lookup ]
  ret i8 %atom_action.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dal_cmd_table_helper_encoder_mode_bp_to_atom(i32 noundef, i1 noundef zeroext) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal zeroext i1 @engine_bp_to_atom(i32 noundef %id, ptr noundef writeonly %atom_engine_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp ne ptr %atom_engine_id, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %id)
  %0 = icmp ult i32 %id, 8
  %or.cond = and i1 %cmp.not, %0
  br i1 %or.cond, label %switch.lookup, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.engine_bp_to_atom, i32 0, i32 %id
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  %2 = ptrtoint ptr %atom_engine_id to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %switch.load, ptr %atom_engine_id, align 4
  br label %if.end

if.end:                                           ; preds = %switch.lookup, %entry.if.end_crit_edge
  ret i1 %or.cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dal_cmd_table_helper_assign_control_parameter(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @clock_source_id_to_atom(i32 noundef %id, ptr noundef writeonly %atom_pll_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %atom_pll_id, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  %0 = zext i32 %id to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %id, label %if.then.if.end_crit_edge [
    i32 1, label %if.then.if.end.sink.split_crit_edge
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 4, label %sw.bb3
    i32 6, label %sw.bb4
    i32 7, label %sw.bb5
    i32 8, label %sw.bb6
    i32 0, label %do.body
  ]

if.then.if.end.sink.split_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.sink.split

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

sw.bb1:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.sink.split

sw.bb2:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.sink.split

sw.bb3:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.sink.split

sw.bb4:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.sink.split

sw.bb5:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.sink.split

sw.bb6:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.sink.split

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.clock_source_id_to_atom, i32 noundef 140) #4
  tail call void @kgdb_breakpoint() #4
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %do.body, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %if.then.if.end.sink.split_crit_edge
  %.sink = phi i32 [ 0, %sw.bb1 ], [ 1, %sw.bb2 ], [ 255, %sw.bb3 ], [ 8, %sw.bb4 ], [ 255, %sw.bb5 ], [ 255, %sw.bb6 ], [ 255, %do.body ], [ 2, %if.then.if.end.sink.split_crit_edge ]
  %result.0.off0.ph = phi i1 [ true, %sw.bb1 ], [ true, %sw.bb2 ], [ true, %sw.bb3 ], [ true, %sw.bb4 ], [ true, %sw.bb5 ], [ true, %sw.bb6 ], [ false, %do.body ], [ true, %if.then.if.end.sink.split_crit_edge ]
  %1 = ptrtoint ptr %atom_pll_id to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %.sink, ptr %atom_pll_id, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %result.0.off0 = phi i1 [ true, %entry.if.end_crit_edge ], [ false, %if.then.if.end_crit_edge ], [ %result.0.off0.ph, %if.end.sink.split ]
  ret i1 %result.0.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dal_cmd_table_helper_clock_source_id_to_ref_clk_src(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @dal_cmd_table_helper_transmitter_bp_to_atom(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @dal_cmd_table_helper_encoder_id_to_atom(i32 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @clock_source_id_to_atom_phy_clk_src_id(i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %id, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 4
  %switch.shiftamt = shl i32 %switch.tableidx, 3
  %switch.downshift = lshr i32 50397186, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %atom_phy_clk_src_id.0 = select i1 %0, i8 %switch.masked, i8 0
  ret i8 %atom_phy_clk_src_id.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @signal_type_to_atom_dig_mode(i32 noundef %s) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %s to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %s, label %sw.default [
    i32 32, label %entry.sw.epilog_crit_edge
    i32 128, label %entry.sw.epilog_crit_edge5
    i32 8, label %sw.bb1
    i32 1, label %entry.sw.bb2_crit_edge
    i32 2, label %entry.sw.bb2_crit_edge6
    i32 4, label %sw.bb3
    i32 64, label %sw.bb4
  ]

entry.sw.bb2_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb2

entry.sw.epilog_crit_edge5:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge6
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge5
  %atom_dig_mode.0 = phi i8 [ 2, %sw.default ], [ 5, %sw.bb4 ], [ 3, %sw.bb3 ], [ 2, %sw.bb2 ], [ 1, %sw.bb1 ], [ 0, %entry.sw.epilog_crit_edge ], [ 0, %entry.sw.epilog_crit_edge5 ]
  ret i8 %atom_dig_mode.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @hpd_sel_to_atom(i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %id)
  %0 = icmp ult i32 %id, 6
  %switch.idx.cast = trunc i32 %id to i8
  %switch.offset = add i8 %switch.idx.cast, 1
  %atom_hpd_sel.0 = select i1 %0, i8 %switch.offset, i8 0
  ret i8 %atom_hpd_sel.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @dig_encoder_sel_to_atom(i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %id, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 6
  br i1 %0, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [6 x i8], ptr @switch.table.dig_encoder_sel_to_atom, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %1)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %atom_dig_encoder_sel.0 = phi i8 [ 1, %entry.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  ret i8 %atom_dig_encoder_sel.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @phy_id_to_atom(i32 noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %t, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 9
  br i1 %0, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [9 x i8], ptr @switch.table.phy_id_to_atom, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %1)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %atom_phy_id.0 = phi i8 [ 0, %entry.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  ret i8 %atom_phy_id.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @disp_power_gating_action_to_atom(i32 noundef %action) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %action)
  %0 = icmp ult i32 %action, 3
  br i1 %0, label %switch.lookup, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.disp_power_gating_action_to_atom, i32 noundef 322) #4
  tail call void @kgdb_breakpoint() #4
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %switch.cast = trunc i32 %action to i24
  %switch.shiftamt = shl i24 %switch.cast, 3
  %switch.downshift = lshr i24 459008, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %do.body
  %atom_pipe_action.0 = phi i8 [ 0, %do.body ], [ %switch.masked, %switch.lookup ]
  ret i8 %atom_pipe_action.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kgdb_breakpoint() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @command_table_helper_funcs, !1, !"command_table_helper_funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/dce80/command_table_helper_dce80.c", i32 329, i32 42}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/dce80/command_table_helper_dce80.c", i32 54, i32 3}
!4 = !{ptr @__func__.encoder_action_to_atom, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @__func__.clock_source_id_to_atom, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/dce80/command_table_helper_dce80.c", i32 140, i32 4}
!7 = !{ptr @__func__.disp_power_gating_action_to_atom, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/amd/amdgpu/../display/dc/bios/dce80/command_table_helper_dce80.c", i32 322, i32 3}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
