; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/sti/sti_awg_utils.c_pt.bc'
source_filename = "../drivers/gpu/drm/sti/sti_awg_utils.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.awg_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.awg_code_generation_params = type { ptr, i8 }

@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"too many number of instructions\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"instruction %d does not exist\0A\00", [33 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 49, i32 4 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [39 x i8] c"../drivers/gpu/drm/sti/sti_awg_utils.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 104, i32 4 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sti_awg_generate_code_data_enable_mode(ptr nocapture noundef %fwparams, ptr nocapture noundef readonly %timing) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %trailing_lines = getelementptr inbounds %struct.awg_timing, ptr %timing, i32 0, i32 3
  %0 = ptrtoint ptr %trailing_lines to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %trailing_lines, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %blanking_level = getelementptr inbounds %struct.awg_timing, ptr %timing, i32 0, i32 8
  %2 = ptrtoint ptr %blanking_level to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %blanking_level, align 4
  %call = tail call fastcc i32 @awg_generate_instr(i32 noundef 2, i32 noundef %3, i32 noundef 0, ptr noundef %fwparams)
  %4 = ptrtoint ptr %trailing_lines to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %trailing_lines, align 4
  %sub = add i32 %5, -1
  %call2 = tail call fastcc i32 @awg_generate_instr(i32 noundef 6, i32 noundef %sub, i32 noundef 0, ptr noundef %fwparams)
  %or3 = or i32 %call2, %call
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %or3, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %active_lines = getelementptr inbounds %struct.awg_timing, ptr %timing, i32 0, i32 1
  %6 = ptrtoint ptr %active_lines to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %active_lines, align 4
  %sub4 = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub4)
  %cmp547 = icmp sgt i32 %sub4, 0
  br i1 %cmp547, label %while.body.lr.ph, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %trailing_pixels.i = getelementptr inbounds %struct.awg_timing, ptr %timing, i32 0, i32 7
  %blanking_level.i = getelementptr inbounds %struct.awg_timing, ptr %timing, i32 0, i32 8
  %blanking_pixels.i = getelementptr inbounds %struct.awg_timing, ptr %timing, i32 0, i32 6
  %active_pixels.i = getelementptr inbounds %struct.awg_timing, ptr %timing, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %awg_generate_line_signal.exit.while.body_crit_edge, %while.body.lr.ph
  %ret.149 = phi i32 [ %ret.0, %while.body.lr.ph ], [ %or10, %awg_generate_line_signal.exit.while.body_crit_edge ]
  %tmp_val.048 = phi i32 [ %sub4, %while.body.lr.ph ], [ %sub11, %awg_generate_line_signal.exit.while.body_crit_edge ]
  %8 = ptrtoint ptr %trailing_pixels.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %trailing_pixels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 0
  br i1 %cmp.not.i, label %while.body.if.end.i_crit_edge, label %if.then.i

while.body.if.end.i_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  %10 = ptrtoint ptr %blanking_level.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %blanking_level.i, align 4
  %call.i = tail call fastcc i32 @awg_generate_instr(i32 noundef 2, i32 noundef %11, i32 noundef 0, ptr noundef %fwparams) #3
  %12 = ptrtoint ptr %trailing_pixels.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %trailing_pixels.i, align 4
  %add.i = add i32 %13, -6
  %call2.i = tail call fastcc i32 @awg_generate_instr(i32 noundef 3, i32 noundef %add.i, i32 noundef 0, ptr noundef %fwparams) #3
  %or3.i = or i32 %call2.i, %call.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.body.if.end.i_crit_edge
  %ret.0.i = phi i32 [ %or3.i, %if.then.i ], [ 0, %while.body.if.end.i_crit_edge ]
  %14 = ptrtoint ptr %blanking_level.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %blanking_level.i, align 4
  %16 = ptrtoint ptr %trailing_pixels.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %trailing_pixels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp6.not.i = icmp eq i32 %17, 0
  %cond.i = select i1 %cmp6.not.i, i32 2, i32 0
  %call7.i = tail call fastcc i32 @awg_generate_instr(i32 noundef %cond.i, i32 noundef %15, i32 noundef 1, ptr noundef %fwparams) #3
  %or8.i = or i32 %call7.i, %ret.0.i
  %18 = ptrtoint ptr %blanking_pixels.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %blanking_pixels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp9.not.i = icmp eq i32 %19, 0
  br i1 %cmp9.not.i, label %if.end.i.awg_generate_line_signal.exit_crit_edge, label %if.then10.i

if.end.i.awg_generate_line_signal.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %awg_generate_line_signal.exit

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %20 = ptrtoint ptr %active_pixels.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %active_pixels.i, align 4
  %sub11.i = add i32 %21, -1
  %call12.i = tail call fastcc i32 @awg_generate_instr(i32 noundef 3, i32 noundef %sub11.i, i32 noundef 1, ptr noundef %fwparams) #3
  %or13.i = or i32 %call12.i, %or8.i
  %22 = ptrtoint ptr %blanking_level.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %blanking_level.i, align 4
  %call15.i = tail call fastcc i32 @awg_generate_instr(i32 noundef 0, i32 noundef %23, i32 noundef 0, ptr noundef %fwparams) #3
  %or16.i = or i32 %or13.i, %call15.i
  br label %awg_generate_line_signal.exit

awg_generate_line_signal.exit:                    ; preds = %if.then10.i, %if.end.i.awg_generate_line_signal.exit_crit_edge
  %ret.1.i = phi i32 [ %or16.i, %if.then10.i ], [ %or8.i, %if.end.i.awg_generate_line_signal.exit_crit_edge ]
  %or7 = or i32 %ret.1.i, %ret.149
  %24 = tail call i32 @llvm.umin.i32(i32 %tmp_val.048, i32 1023)
  %call9 = tail call fastcc i32 @awg_generate_instr(i32 noundef 6, i32 noundef %24, i32 noundef 0, ptr noundef %fwparams)
  %or10 = or i32 %or7, %call9
  %sub11 = add nsw i32 %tmp_val.048, -1023
  %cmp5 = icmp sgt i32 %tmp_val.048, 1023
  br i1 %cmp5, label %awg_generate_line_signal.exit.while.body_crit_edge, label %awg_generate_line_signal.exit.while.end_crit_edge

awg_generate_line_signal.exit.while.end_crit_edge: ; preds = %awg_generate_line_signal.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

awg_generate_line_signal.exit.while.body_crit_edge: ; preds = %awg_generate_line_signal.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

while.end:                                        ; preds = %awg_generate_line_signal.exit.while.end_crit_edge, %if.end.while.end_crit_edge
  %ret.1.lcssa = phi i32 [ %ret.0, %if.end.while.end_crit_edge ], [ %or10, %awg_generate_line_signal.exit.while.end_crit_edge ]
  %blanking_lines = getelementptr inbounds %struct.awg_timing, ptr %timing, i32 0, i32 2
  %25 = ptrtoint ptr %blanking_lines to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %blanking_lines, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp12.not = icmp eq i32 %26, 0
  br i1 %cmp12.not, label %while.end.if.end21_crit_edge, label %if.then13

while.end.if.end21_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end21

if.then13:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #5
  %blanking_level14 = getelementptr inbounds %struct.awg_timing, ptr %timing, i32 0, i32 8
  %27 = ptrtoint ptr %blanking_level14 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %blanking_level14, align 4
  %call15 = tail call fastcc i32 @awg_generate_instr(i32 noundef 2, i32 noundef %28, i32 noundef 0, ptr noundef %fwparams)
  %or16 = or i32 %call15, %ret.1.lcssa
  %29 = ptrtoint ptr %blanking_lines to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %blanking_lines, align 4
  %sub18 = add i32 %30, -1
  %call19 = tail call fastcc i32 @awg_generate_instr(i32 noundef 6, i32 noundef %sub18, i32 noundef 0, ptr noundef %fwparams)
  %or20 = or i32 %or16, %call19
  br label %if.end21

if.end21:                                         ; preds = %if.then13, %while.end.if.end21_crit_edge
  %ret.2 = phi i32 [ %or20, %if.then13 ], [ %ret.1.lcssa, %while.end.if.end21_crit_edge ]
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @awg_generate_instr(i32 noundef %opcode, i32 noundef %arg, i32 noundef %data_en, ptr nocapture noundef %fwparams) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg)
  %cmp4 = icmp sgt i32 %arg, 0
  br i1 %cmp4, label %while.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %shl1 = shl i32 %data_en, 9
  %and2 = and i32 %shl1, 512
  %instruction_offset = getelementptr inbounds %struct.awg_code_generation_params, ptr %fwparams, i32 0, i32 1
  %0 = ptrtoint ptr %instruction_offset to i32
  call void @__asan_load1_noabort(i32 %0)
  %.pr = load i8, ptr %instruction_offset, align 4
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %while.body.lr.ph
  %1 = phi i8 [ %.pr, %while.body.lr.ph ], [ %inc, %sw.epilog.while.body_crit_edge ]
  %arg_tmp.07 = phi i32 [ %arg, %while.body.lr.ph ], [ %sub, %sw.epilog.while.body_crit_edge ]
  %data_enable.06 = phi i32 [ %and2, %while.body.lr.ph ], [ %data_enable.1, %sw.epilog.while.body_crit_edge ]
  %opcode.addr.05 = phi i32 [ %opcode, %while.body.lr.ph ], [ %opcode.addr.1, %sw.epilog.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %1)
  %cmp3 = icmp ugt i8 %1, 63
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #3
  br label %cleanup

if.end:                                           ; preds = %while.body
  %2 = zext i32 %opcode.addr.05 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %opcode.addr.05, label %sw.default [
    i32 3, label %sw.bb
    i32 5, label %if.end.if.end19_crit_edge
    i32 6, label %if.end.if.end19_crit_edge18
    i32 7, label %sw.bb21
    i32 4, label %if.end.sw.epilog_crit_edge
    i32 0, label %if.end.sw.bb24_crit_edge
    i32 1, label %if.end.sw.bb24_crit_edge19
    i32 2, label %if.end.sw.bb24_crit_edge20
    i32 8, label %if.end.sw.bb24_crit_edge21
  ]

if.end.sw.bb24_crit_edge21:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb24

if.end.sw.bb24_crit_edge20:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb24

if.end.sw.bb24_crit_edge19:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb24

if.end.sw.bb24_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb24

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.end.if.end19_crit_edge18:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end19

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end19

sw.bb:                                            ; preds = %if.end
  %dec = add nsw i32 %arg_tmp.07, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp10 = icmp eq i32 %dec, 0
  br i1 %cmp10, label %sw.bb.sw.epilog_crit_edge, label %if.end13

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.end13:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  %and14 = and i32 %dec, 1023
  br label %sw.epilog

if.end19:                                         ; preds = %if.end.if.end19_crit_edge, %if.end.if.end19_crit_edge18
  %and20 = and i32 %arg_tmp.07, 1023
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %or = and i32 %arg_tmp.07, 959
  %and22 = or i32 %or, 64
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end.sw.bb24_crit_edge, %if.end.sw.bb24_crit_edge19, %if.end.sw.bb24_crit_edge20, %if.end.sw.bb24_crit_edge21
  %and25 = and i32 %arg_tmp.07, 255
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, i32 noundef %opcode.addr.05) #3
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb24, %sw.bb21, %if.end19, %if.end13, %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %arg.addr.0 = phi i32 [ %and25, %sw.bb24 ], [ %and22, %sw.bb21 ], [ %and20, %if.end19 ], [ %and14, %if.end13 ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ 0, %if.end.sw.epilog_crit_edge ]
  %opcode.addr.1 = phi i32 [ %opcode.addr.05, %sw.bb24 ], [ 7, %sw.bb21 ], [ %opcode.addr.05, %if.end19 ], [ 3, %if.end13 ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ %opcode.addr.05, %if.end.sw.epilog_crit_edge ]
  %data_enable.1 = phi i32 [ %data_enable.06, %sw.bb24 ], [ 0, %sw.bb21 ], [ 0, %if.end19 ], [ 0, %if.end13 ], [ %data_enable.06, %sw.bb.sw.epilog_crit_edge ], [ %data_enable.06, %if.end.sw.epilog_crit_edge ]
  %arg_tmp.1 = phi i32 [ %arg_tmp.07, %sw.bb24 ], [ %arg_tmp.07, %sw.bb21 ], [ %arg_tmp.07, %if.end19 ], [ %dec, %if.end13 ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ %arg_tmp.07, %if.end.sw.epilog_crit_edge ]
  %sub = sub i32 %arg_tmp.1, %arg.addr.0
  %add26 = add i32 %data_enable.1, %arg.addr.0
  %shl27 = shl nuw nsw i32 %opcode.addr.1, 10
  %or28 = or i32 %add26, %shl27
  %and29 = and i32 %or28, 16383
  %3 = ptrtoint ptr %fwparams to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fwparams, align 4
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr i32, ptr %4, i32 %idxprom
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and29, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %instruction_offset to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %instruction_offset, align 4
  %inc = add i8 %7, 1
  store i8 %inc, ptr %instruction_offset, align 4
  %cmp = icmp sgt i32 %sub, 0
  br i1 %cmp, label %sw.epilog.while.body_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

cleanup:                                          ; preds = %sw.epilog.cleanup_crit_edge, %sw.default, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %sw.default ], [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/sti/sti_awg_utils.c", i32 49, i32 4}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/sti/sti_awg_utils.c", i32 104, i32 4}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
