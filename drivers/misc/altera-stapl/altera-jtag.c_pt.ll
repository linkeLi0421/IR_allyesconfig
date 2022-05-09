; ModuleID = '/llk/IR_all_yes/drivers/misc/altera-stapl/altera-jtag.c_pt.bc'
source_filename = "../drivers/misc/altera-stapl/altera-jtag.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.altera_jtag_machine = type { i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.altera_state = type { ptr, %struct.altera_jtag, [1025 x i8], [128 x i32] }
%struct.altera_jtag = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.altera_config = type { ptr, ptr, ptr }

@altera_jtag_path_map = internal constant { [16 x i16], [32 x i8] } { [16 x i16] [i16 1, i16 -3, i16 -511, i16 -25, i16 -17, i16 -241, i16 -65, i16 -1, i16 -259, i16 1, i16 -3073, i16 -2049, i16 -30721, i16 -8193, i16 -1, i16 32765], [32 x i8] zeroinitializer }, align 32
@altera_transitions = internal constant { [16 x %struct.altera_jtag_machine], [32 x i8] } { [16 x %struct.altera_jtag_machine] [%struct.altera_jtag_machine { i32 0, i32 1 }, %struct.altera_jtag_machine { i32 2, i32 1 }, %struct.altera_jtag_machine { i32 9, i32 3 }, %struct.altera_jtag_machine { i32 5, i32 4 }, %struct.altera_jtag_machine { i32 5, i32 4 }, %struct.altera_jtag_machine { i32 8, i32 6 }, %struct.altera_jtag_machine { i32 7, i32 6 }, %struct.altera_jtag_machine { i32 8, i32 4 }, %struct.altera_jtag_machine { i32 2, i32 1 }, %struct.altera_jtag_machine { i32 0, i32 10 }, %struct.altera_jtag_machine { i32 12, i32 11 }, %struct.altera_jtag_machine { i32 12, i32 11 }, %struct.altera_jtag_machine { i32 15, i32 13 }, %struct.altera_jtag_machine { i32 14, i32 13 }, %struct.altera_jtag_machine { i32 15, i32 11 }, %struct.altera_jtag_machine { i32 2, i32 1 }], [32 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@switch.table.altera_goto_jstate = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [40 x i8] zeroinitializer }, align 32
@switch.table.altera_irscan = internal constant { [17 x i32], [60 x i8] } { [17 x i32] [i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2], [60 x i8] zeroinitializer }, align 32
@switch.table.altera_irscan.1 = internal constant { [17 x i32], [60 x i8] } { [17 x i32] [i32 1, i32 1, i32 1, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13], [60 x i8] zeroinitializer }, align 32
@switch.table.altera_swap_ir = internal constant { [17 x i32], [60 x i8] } { [17 x i32] [i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2], [60 x i8] zeroinitializer }, align 32
@switch.table.altera_swap_ir.2 = internal constant { [17 x i32], [60 x i8] } { [17 x i32] [i32 1, i32 1, i32 1, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13], [60 x i8] zeroinitializer }, align 32
@switch.table.altera_drscan = internal constant { [17 x i32], [60 x i8] } { [17 x i32] [i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2], [60 x i8] zeroinitializer }, align 32
@switch.table.altera_drscan.3 = internal constant { [17 x i32], [60 x i8] } { [17 x i32] [i32 1, i32 1, i32 1, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13], [60 x i8] zeroinitializer }, align 32
@switch.table.altera_swap_dr = internal constant { [17 x i32], [60 x i8] } { [17 x i32] [i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2], [60 x i8] zeroinitializer }, align 32
@switch.table.altera_swap_dr.4 = internal constant { [17 x i32], [60 x i8] } { [17 x i32] [i32 1, i32 1, i32 1, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.5 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.6 = private unnamed_addr constant [21 x i8] c"altera_jtag_path_map\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 60, i32 18 }
@___asan_gen_.9 = private unnamed_addr constant [19 x i8] c"altera_transitions\00", align 1
@___asan_gen_.10 = private constant [43 x i8] c"../drivers/misc/altera-stapl/altera-jtag.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 34, i32 41 }
@___asan_gen_.12 = private unnamed_addr constant [32 x i8] c"switch.table.altera_goto_jstate\00", align 1
@___asan_gen_.13 = private unnamed_addr constant [27 x i8] c"switch.table.altera_irscan\00", align 1
@___asan_gen_.14 = private unnamed_addr constant [29 x i8] c"switch.table.altera_irscan.1\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [28 x i8] c"switch.table.altera_swap_ir\00", align 1
@___asan_gen_.16 = private unnamed_addr constant [30 x i8] c"switch.table.altera_swap_ir.2\00", align 1
@___asan_gen_.17 = private unnamed_addr constant [27 x i8] c"switch.table.altera_drscan\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [29 x i8] c"switch.table.altera_drscan.3\00", align 1
@___asan_gen_.19 = private unnamed_addr constant [28 x i8] c"switch.table.altera_swap_dr\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [30 x i8] c"switch.table.altera_swap_dr.4\00", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @altera_jtag_path_map, ptr @altera_transitions, ptr @switch.table.altera_goto_jstate, ptr @switch.table.altera_irscan, ptr @switch.table.altera_irscan.1, ptr @switch.table.altera_swap_ir, ptr @switch.table.altera_swap_ir.2, ptr @switch.table.altera_drscan, ptr @switch.table.altera_drscan.3, ptr @switch.table.altera_swap_dr, ptr @switch.table.altera_swap_dr.4], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_jtag_path_map to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @altera_transitions to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.altera_goto_jstate to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.altera_irscan to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.altera_irscan.1 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.altera_swap_ir to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.altera_swap_ir.2 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.altera_drscan to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.altera_drscan.3 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.altera_swap_dr to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.altera_swap_dr.4 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @altera_jinit(ptr nocapture noundef writeonly %astate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %js1 = getelementptr inbounds %struct.altera_state, ptr %astate, i32 0, i32 1
  %0 = ptrtoint ptr %js1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %js1, align 4
  %drstop_state = getelementptr inbounds %struct.altera_state, ptr %astate, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %drstop_state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %drstop_state, align 4
  %irstop_state = getelementptr inbounds %struct.altera_state, ptr %astate, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %irstop_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %irstop_state, align 4
  %dr_pre = getelementptr inbounds %struct.altera_state, ptr %astate, i32 0, i32 1, i32 3
  %3 = call ptr @memset(ptr %dr_pre, i32 0, i32 48)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @altera_set_drstop(ptr nocapture noundef writeonly %js, i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %drstop_state = getelementptr inbounds %struct.altera_jtag, ptr %js, i32 0, i32 1
  %0 = ptrtoint ptr %drstop_state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %state, ptr %drstop_state, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @altera_set_irstop(ptr nocapture noundef writeonly %js, i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %irstop_state = getelementptr inbounds %struct.altera_jtag, ptr %js, i32 0, i32 2
  %0 = ptrtoint ptr %irstop_state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %state, ptr %irstop_state, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @altera_set_dr_pre(ptr nocapture noundef %js, i32 noundef %count, i32 noundef %start_index, ptr noundef readonly %preamble_data) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dr_pre = getelementptr inbounds %struct.altera_jtag, ptr %js, i32 0, i32 3
  %0 = ptrtoint ptr %dr_pre to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dr_pre, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %count)
  %cmp = icmp ult i32 %1, %count
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %dr_pre_data = getelementptr inbounds %struct.altera_jtag, ptr %js, i32 0, i32 9
  %2 = ptrtoint ptr %dr_pre_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dr_pre_data, align 4
  tail call void @kfree(ptr noundef %3) #5
  %add = add i32 %count, 7
  %shr = lshr i32 %add, 3
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %shr, i32 noundef 3520) #8
  %4 = ptrtoint ptr %dr_pre_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9.i.i, ptr %dr_pre_data, align 4
  %cmp3 = icmp eq ptr %call9.i.i, null
  br i1 %cmp3, label %if.then.if.end45_crit_edge, label %if.end8.thread

if.then.if.end45_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.end8.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %dr_pre to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %count, ptr %dr_pre, align 4
  br label %for.body.lr.ph

if.end8:                                          ; preds = %entry
  %6 = ptrtoint ptr %dr_pre to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %count, ptr %dr_pre, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp1174.not = icmp eq i32 %count, 0
  br i1 %cmp1174.not, label %if.end8.if.end45_crit_edge, label %if.end8.for.body.lr.ph_crit_edge

if.end8.for.body.lr.ph_crit_edge:                 ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.lr.ph

if.end8.if.end45_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

for.body.lr.ph:                                   ; preds = %if.end8.for.body.lr.ph_crit_edge, %if.end8.thread
  %cmp13 = icmp eq ptr %preamble_data, null
  %dr_pre_data28 = getelementptr inbounds %struct.altera_jtag, ptr %js, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.075 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  br i1 %cmp13, label %if.then14, label %if.else18

if.then14:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %and = and i32 %i.075, 7
  %shl = shl nuw nsw i32 1, %and
  %7 = ptrtoint ptr %dr_pre_data28 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dr_pre_data28, align 4
  %shr16 = lshr i32 %i.075, 3
  %arrayidx = getelementptr i8, ptr %8, i32 %shr16
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %11 = trunc i32 %shl to i8
  %conv17 = or i8 %10, %11
  store i8 %conv17, ptr %arrayidx, align 1
  br label %for.inc

if.else18:                                        ; preds = %for.body
  %add12 = add i32 %i.075, %start_index
  %shr19 = lshr i32 %add12, 3
  %arrayidx20 = getelementptr i8, ptr %preamble_data, i32 %shr19
  %12 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %13 to i32
  %and22 = and i32 %add12, 7
  %shl23 = shl nuw nsw i32 1, %and22
  %and24 = and i32 %shl23, %conv21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool.not = icmp eq i32 %and24, 0
  %and35 = and i32 %i.075, 7
  %shl36 = shl nuw nsw i32 1, %and35
  %14 = ptrtoint ptr %dr_pre_data28 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dr_pre_data28, align 4
  %shr38 = lshr i32 %i.075, 3
  %arrayidx39 = getelementptr i8, ptr %15, i32 %shr38
  %16 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx39, align 1
  %18 = trunc i32 %shl36 to i8
  br i1 %tobool.not, label %if.else34, label %if.then25

if.then25:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #7
  %conv33 = or i8 %17, %18
  %19 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv33, ptr %arrayidx39, align 1
  br label %for.inc

if.else34:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #7
  %20 = xor i8 %18, -1
  %conv42 = and i8 %17, %20
  %21 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv42, ptr %arrayidx39, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.else34, %if.then25, %if.then14
  %inc = add nuw i32 %i.075, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.inc.if.end45_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.if.end45_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.end45:                                         ; preds = %for.inc.if.end45_crit_edge, %if.end8.if.end45_crit_edge, %if.then.if.end45_crit_edge
  %status.073 = phi i32 [ -12, %if.then.if.end45_crit_edge ], [ 0, %if.end8.if.end45_crit_edge ], [ 0, %for.inc.if.end45_crit_edge ]
  ret i32 %status.073
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @altera_set_ir_pre(ptr nocapture noundef %js, i32 noundef %count, i32 noundef %start_index, ptr noundef readonly %preamble_data) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ir_pre = getelementptr inbounds %struct.altera_jtag, ptr %js, i32 0, i32 5
  %0 = ptrtoint ptr %ir_pre to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ir_pre, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %count)
  %cmp = icmp ult i32 %1, %count
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %ir_pre_data = getelementptr inbounds %struct.altera_jtag, ptr %js, i32 0, i32 11
  %2 = ptrtoint ptr %ir_pre_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ir_pre_data, align 4
  tail call void @kfree(ptr noundef %3) #5
  %add = add i32 %count, 7
  %shr = lshr i32 %add, 3
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %shr, i32 noundef 3520) #8
  %4 = ptrtoint ptr %ir_pre_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9.i.i, ptr %ir_pre_data, align 4
  %cmp3 = icmp eq ptr %call9.i.i, null
  br i1 %cmp3, label %if.then.if.end45_crit_edge, label %if.end8.thread

if.then.if.end45_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.end8.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %ir_pre to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %count, ptr %ir_pre, align 4
  br label %for.body.lr.ph

if.end8:                                          ; preds = %entry
  %6 = ptrtoint ptr %ir_pre to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %count, ptr %ir_pre, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp1174.not = icmp eq i32 %count, 0
  br i1 %cmp1174.not, label %if.end8.if.end45_crit_edge, label %if.end8.for.body.lr.ph_crit_edge

if.end8.for.body.lr.ph_crit_edge:                 ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.lr.ph

if.end8.if.end45_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

for.body.lr.ph:                                   ; preds = %if.end8.for.body.lr.ph_crit_edge, %if.end8.thread
  %cmp13 = icmp eq ptr %preamble_data, null
  %ir_pre_data28 = getelementptr inbounds %struct.altera_jtag, ptr %js, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.075 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  br i1 %cmp13, label %if.then14, label %if.else18

if.then14:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %and = and i32 %i.075, 7
  %shl = shl nuw nsw i32 1, %and
  %7 = ptrtoint ptr %ir_pre_data28 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ir_pre_data28, align 4
  %shr16 = lshr i32 %i.075, 3
  %arrayidx = getelementptr i8, ptr %8, i32 %shr16
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %11 = trunc i32 %shl to i8
  %conv17 = or i8 %10, %11
  store i8 %conv17, ptr %arrayidx, align 1
  br label %for.inc

if.else18:                                        ; preds = %for.body
  %add12 = add i32 %i.075, %start_index
  %shr19 = lshr i32 %add12, 3
  %arrayidx20 = getelementptr i8, ptr %preamble_data, i32 %shr19
  %12 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %13 to i32
  %and22 = and i32 %add12, 7
  %shl23 = shl nuw nsw i32 1, %and22
  %and24 = and i32 %shl23, %conv21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool.not = icmp eq i32 %and24, 0
  %and35 = and i32 %i.075, 7
  %shl36 = shl nuw nsw i32 1, %and35
  %14 = ptrtoint ptr %ir_pre_data28 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ir_pre_data28, align 4
  %shr38 = lshr i32 %i.075, 3
  %arrayidx39 = getelementptr i8, ptr %15, i32 %shr38
  %16 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx39, align 1
  %18 = trunc i32 %shl36 to i8
  br i1 %tobool.not, label %if.else34, label %if.then25

if.then25:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #7
  %conv33 = or i8 %17, %18
  %19 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv33, ptr %arrayidx39, align 1
  br label %for.inc

if.else34:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #7
  %20 = xor i8 %18, -1
  %conv42 = and i8 %17, %20
  %21 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv42, ptr %arrayidx39, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.else34, %if.then25, %if.then14
  %inc = add nuw i32 %i.075, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.inc.if.end45_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.if.end45_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.end45:                                         ; preds = %for.inc.if.end45_crit_edge, %if.end8.if.end45_crit_edge, %if.then.if.end45_crit_edge
  %status.073 = phi i32 [ -12, %if.then.if.end45_crit_edge ], [ 0, %if.end8.if.end45_crit_edge ], [ 0, %for.inc.if.end45_crit_edge ]
  ret i32 %status.073
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @altera_set_dr_post(ptr nocapture noundef %js, i32 noundef %count, i32 noundef %start_index, ptr noundef readonly %postamble_data) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dr_post = getelementptr inbounds %struct.altera_jtag, ptr %js, i32 0, i32 4
  %0 = ptrtoint ptr %dr_post to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dr_post, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %count)
  %cmp = icmp ult i32 %1, %count
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %dr_post_data = getelementptr inbounds %struct.altera_jtag, ptr %js, i32 0, i32 10
  %2 = ptrtoint ptr %dr_post_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dr_post_data, align 4
  tail call void @kfree(ptr noundef %3) #5
  %add = add i32 %count, 7
  %shr = lshr i32 %add, 3
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %shr, i32 noundef 3520) #8
  %4 = ptrtoint ptr %dr_post_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9.i.i, ptr %dr_post_data, align 4
  %cmp3 = icmp eq ptr %call9.i.i, null
  br i1 %cmp3, label %if.then.if.end45_crit_edge, label %if.end8.thread

if.then.if.end45_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.end8.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %dr_post to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %count, ptr %dr_post, align 4
  br label %for.body.lr.ph

if.end8:                                          ; preds = %entry
  %6 = ptrtoint ptr %dr_post to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %count, ptr %dr_post, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp1174.not = icmp eq i32 %count, 0
  br i1 %cmp1174.not, label %if.end8.if.end45_crit_edge, label %if.end8.for.body.lr.ph_crit_edge

if.end8.for.body.lr.ph_crit_edge:                 ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.lr.ph

if.end8.if.end45_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

for.body.lr.ph:                                   ; preds = %if.end8.for.body.lr.ph_crit_edge, %if.end8.thread
  %cmp13 = icmp eq ptr %postamble_data, null
  %dr_post_data28 = getelementptr inbounds %struct.altera_jtag, ptr %js, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.075 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  br i1 %cmp13, label %if.then14, label %if.else18

if.then14:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %and = and i32 %i.075, 7
  %shl = shl nuw nsw i32 1, %and
  %7 = ptrtoint ptr %dr_post_data28 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dr_post_data28, align 4
  %shr16 = lshr i32 %i.075, 3
  %arrayidx = getelementptr i8, ptr %8, i32 %shr16
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %11 = trunc i32 %shl to i8
  %conv17 = or i8 %10, %11
  store i8 %conv17, ptr %arrayidx, align 1
  br label %for.inc

if.else18:                                        ; preds = %for.body
  %add12 = add i32 %i.075, %start_index
  %shr19 = lshr i32 %add12, 3
  %arrayidx20 = getelementptr i8, ptr %postamble_data, i32 %shr19
  %12 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %13 to i32
  %and22 = and i32 %add12, 7
  %shl23 = shl nuw nsw i32 1, %and22
  %and24 = and i32 %shl23, %conv21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool.not = icmp eq i32 %and24, 0
  %and35 = and i32 %i.075, 7
  %shl36 = shl nuw nsw i32 1, %and35
  %14 = ptrtoint ptr %dr_post_data28 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dr_post_data28, align 4
  %shr38 = lshr i32 %i.075, 3
  %arrayidx39 = getelementptr i8, ptr %15, i32 %shr38
  %16 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx39, align 1
  %18 = trunc i32 %shl36 to i8
  br i1 %tobool.not, label %if.else34, label %if.then25

if.then25:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #7
  %conv33 = or i8 %17, %18
  %19 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv33, ptr %arrayidx39, align 1
  br label %for.inc

if.else34:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #7
  %20 = xor i8 %18, -1
  %conv42 = and i8 %17, %20
  %21 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv42, ptr %arrayidx39, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.else34, %if.then25, %if.then14
  %inc = add nuw i32 %i.075, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.inc.if.end45_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.if.end45_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.end45:                                         ; preds = %for.inc.if.end45_crit_edge, %if.end8.if.end45_crit_edge, %if.then.if.end45_crit_edge
  %status.073 = phi i32 [ -12, %if.then.if.end45_crit_edge ], [ 0, %if.end8.if.end45_crit_edge ], [ 0, %for.inc.if.end45_crit_edge ]
  ret i32 %status.073
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @altera_set_ir_post(ptr nocapture noundef %js, i32 noundef %count, i32 noundef %start_index, ptr noundef readonly %postamble_data) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ir_post = getelementptr inbounds %struct.altera_jtag, ptr %js, i32 0, i32 6
  %0 = ptrtoint ptr %ir_post to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ir_post, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %count)
  %cmp = icmp ult i32 %1, %count
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %ir_post_data = getelementptr inbounds %struct.altera_jtag, ptr %js, i32 0, i32 12
  %2 = ptrtoint ptr %ir_post_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ir_post_data, align 4
  tail call void @kfree(ptr noundef %3) #5
  %add = add i32 %count, 7
  %shr = lshr i32 %add, 3
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %shr, i32 noundef 3520) #8
  %4 = ptrtoint ptr %ir_post_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9.i.i, ptr %ir_post_data, align 4
  %cmp3 = icmp eq ptr %call9.i.i, null
  br i1 %cmp3, label %if.then.cleanup_crit_edge, label %if.end8.thread

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %ir_post to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %count, ptr %ir_post, align 4
  br label %for.body.lr.ph

if.end8:                                          ; preds = %entry
  %6 = ptrtoint ptr %ir_post to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %count, ptr %ir_post, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp1277.not = icmp eq i32 %count, 0
  br i1 %cmp1277.not, label %if.end8.cleanup_crit_edge, label %if.end8.for.body.lr.ph_crit_edge

if.end8.for.body.lr.ph_crit_edge:                 ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.lr.ph

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end8.for.body.lr.ph_crit_edge, %if.end8.thread
  %cmp14 = icmp eq ptr %postamble_data, null
  %ir_post_data29 = getelementptr inbounds %struct.altera_jtag, ptr %js, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.078 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  br i1 %cmp14, label %if.then15, label %if.else19

if.then15:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %and = and i32 %i.078, 7
  %shl = shl nuw nsw i32 1, %and
  %7 = ptrtoint ptr %ir_post_data29 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ir_post_data29, align 4
  %shr17 = lshr i32 %i.078, 3
  %arrayidx = getelementptr i8, ptr %8, i32 %shr17
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %11 = trunc i32 %shl to i8
  %conv18 = or i8 %10, %11
  store i8 %conv18, ptr %arrayidx, align 1
  br label %for.inc

if.else19:                                        ; preds = %for.body
  %add13 = add i32 %i.078, %start_index
  %shr20 = lshr i32 %add13, 3
  %arrayidx21 = getelementptr i8, ptr %postamble_data, i32 %shr20
  %12 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %13 to i32
  %and23 = and i32 %add13, 7
  %shl24 = shl nuw nsw i32 1, %and23
  %and25 = and i32 %shl24, %conv22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool.not = icmp eq i32 %and25, 0
  %and36 = and i32 %i.078, 7
  %shl37 = shl nuw nsw i32 1, %and36
  %14 = ptrtoint ptr %ir_post_data29 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ir_post_data29, align 4
  %shr39 = lshr i32 %i.078, 3
  %arrayidx40 = getelementptr i8, ptr %15, i32 %shr39
  %16 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx40, align 1
  %18 = trunc i32 %shl37 to i8
  br i1 %tobool.not, label %if.else35, label %if.then26

if.then26:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #7
  %conv34 = or i8 %17, %18
  %19 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv34, ptr %arrayidx40, align 1
  br label %for.inc

if.else35:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #7
  %20 = xor i8 %18, -1
  %conv43 = and i8 %17, %20
  %21 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv43, ptr %arrayidx40, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.else35, %if.then26, %if.then15
  %inc = add nuw i32 %i.078, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %status.076 = phi i32 [ -12, %if.then.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %status.076
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @altera_goto_jstate(ptr nocapture noundef %astate, i32 noundef %state) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %js1 = getelementptr inbounds %struct.altera_state, ptr %astate, i32 0, i32 1
  %0 = ptrtoint ptr %js1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %js1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %astate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %astate, align 4
  %jtag_io.i = getelementptr inbounds %struct.altera_config, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %jtag_io.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %jtag_io.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %call.i = tail call i32 %5(ptr noundef %7, i32 noundef 1, i32 noundef 0, i32 noundef 0) #5
  %8 = ptrtoint ptr %astate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %astate, align 4
  %jtag_io.1.i = getelementptr inbounds %struct.altera_config, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %jtag_io.1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %jtag_io.1.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %call.1.i = tail call i32 %11(ptr noundef %13, i32 noundef 1, i32 noundef 0, i32 noundef 0) #5
  %14 = ptrtoint ptr %astate to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %astate, align 4
  %jtag_io.2.i = getelementptr inbounds %struct.altera_config, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %jtag_io.2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %jtag_io.2.i, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 4
  %call.2.i = tail call i32 %17(ptr noundef %19, i32 noundef 1, i32 noundef 0, i32 noundef 0) #5
  %20 = ptrtoint ptr %astate to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %astate, align 4
  %jtag_io.3.i = getelementptr inbounds %struct.altera_config, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %jtag_io.3.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %jtag_io.3.i, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %21, align 4
  %call.3.i = tail call i32 %23(ptr noundef %25, i32 noundef 1, i32 noundef 0, i32 noundef 0) #5
  %26 = ptrtoint ptr %astate to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %astate, align 4
  %jtag_io.4.i = getelementptr inbounds %struct.altera_config, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %jtag_io.4.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %jtag_io.4.i, align 4
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %27, align 4
  %call.4.i = tail call i32 %29(ptr noundef %31, i32 noundef 1, i32 noundef 0, i32 noundef 0) #5
  %32 = ptrtoint ptr %astate to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %astate, align 4
  %jtag_io4.i = getelementptr inbounds %struct.altera_config, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %jtag_io4.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %jtag_io4.i, align 4
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %33, align 4
  %call7.i = tail call i32 %35(ptr noundef %37, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  %38 = ptrtoint ptr %js1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %js1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %39 = ptrtoint ptr %js1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %js1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %state)
  %cmp3 = icmp eq i32 %40, %state
  br i1 %cmp3, label %if.then4, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end
  %41 = ptrtoint ptr %js1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %js1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %state)
  %cmp26.not76.not = icmp eq i32 %42, %state
  br i1 %cmp26.not76.not, label %while.cond.preheader.if.end44_crit_edge, label %while.body.lr.ph

while.cond.preheader.if.end44_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %shl = shl nuw i32 1, %state
  br label %while.body

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %state)
  %43 = icmp ult i32 %state, 14
  br i1 %43, label %switch.hole_check, label %if.then4.if.end44_crit_edge

if.then4.if.end44_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %44 = phi i32 [ %42, %while.body.lr.ph ], [ %storemerge, %while.body.while.body_crit_edge ]
  %count.077 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %while.body.while.body_crit_edge ]
  %arrayidx = getelementptr [16 x i16], ptr @altera_jtag_path_map, i32 0, i32 %44
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %46 to i32
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %not.tobool.not = xor i1 %tobool.not, true
  %cond = zext i1 %not.tobool.not to i32
  %47 = ptrtoint ptr %astate to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %astate, align 4
  %jtag_io30 = getelementptr inbounds %struct.altera_config, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %jtag_io30 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %jtag_io30, align 4
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %48, align 4
  %call33 = tail call i32 %50(ptr noundef %52, i32 noundef %cond, i32 noundef 0, i32 noundef 0) #5
  %53 = ptrtoint ptr %js1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %js1, align 4
  %tms_low = getelementptr [16 x %struct.altera_jtag_machine], ptr @altera_transitions, i32 0, i32 %54, i32 1
  %arrayidx37 = getelementptr [16 x %struct.altera_jtag_machine], ptr @altera_transitions, i32 0, i32 %54
  %storemerge.in = select i1 %tobool.not, ptr %tms_low, ptr %arrayidx37
  %55 = ptrtoint ptr %storemerge.in to i32
  call void @__asan_load4_noabort(i32 %55)
  %storemerge = load i32, ptr %storemerge.in, align 4
  store i32 %storemerge, ptr %js1, align 4
  %inc = add nuw nsw i32 %count.077, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %storemerge, i32 %state)
  %cmp26.not = icmp ne i32 %storemerge, %state
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %count.077)
  %cmp27 = icmp ult i32 %count.077, 8
  %or.cond = select i1 %cmp26.not, i1 %cmp27, i1 false
  br i1 %or.cond, label %while.body.while.body_crit_edge, label %while.body.if.end44_crit_edge

while.body.if.end44_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

switch.hole_check:                                ; preds = %if.then4
  %switch.maskindex = trunc i32 %state to i16
  %switch.shifted = lshr i16 10323, %switch.maskindex
  %56 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %switch.lobit.not = icmp eq i16 %56, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end44_crit_edge, label %switch.lookup

switch.hole_check.if.end44_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [14 x i32], ptr @switch.table.altera_goto_jstate, i32 0, i32 %state
  %57 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %57)
  %switch.load = load i32, ptr %switch.gep, align 4
  %58 = ptrtoint ptr %astate to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %astate, align 4
  %jtag_io = getelementptr inbounds %struct.altera_config, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %jtag_io to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %jtag_io, align 4
  %62 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %59, align 4
  %call = tail call i32 %61(ptr noundef %63, i32 noundef %switch.load, i32 noundef 0, i32 noundef 0) #5
  br label %if.end44

if.end44:                                         ; preds = %switch.lookup, %switch.hole_check.if.end44_crit_edge, %while.body.if.end44_crit_edge, %if.then4.if.end44_crit_edge, %while.cond.preheader.if.end44_crit_edge
  %64 = ptrtoint ptr %js1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %js1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %state)
  %cmp46.not = icmp eq i32 %65, %state
  %spec.select = select i1 %cmp46.not, i32 0, i32 -121
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @altera_wait_cycles(ptr nocapture noundef %astate, i32 noundef %cycles, i32 noundef %wait_state) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %js1 = getelementptr inbounds %struct.altera_state, ptr %astate, i32 0, i32 1
  %0 = ptrtoint ptr %js1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %js1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %wait_state)
  %cmp.not = icmp eq i32 %1, %wait_state
  br i1 %cmp.not, label %entry.if.then3_crit_edge, label %if.end

entry.if.then3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

if.end:                                           ; preds = %entry
  %call = tail call i32 @altera_goto_jstate(ptr noundef %astate, i32 noundef %wait_state)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.end.if.then3_crit_edge, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

if.then3:                                         ; preds = %if.end.if.then3_crit_edge, %entry.if.then3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait_state)
  %cmp4 = icmp eq i32 %wait_state, 0
  %cond = zext i1 %cmp4 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cycles)
  %cmp520 = icmp sgt i32 %cycles, 0
  br i1 %cmp520, label %if.then3.for.body_crit_edge, label %if.then3.if.end8_crit_edge

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then3.for.body_crit_edge:                      ; preds = %if.then3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then3.for.body_crit_edge
  %count.021 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then3.for.body_crit_edge ]
  %2 = ptrtoint ptr %astate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %astate, align 4
  %jtag_io = getelementptr inbounds %struct.altera_config, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %jtag_io to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %jtag_io, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %call7 = tail call i32 %5(ptr noundef %7, i32 noundef %cond, i32 noundef 0, i32 noundef 0) #5
  %inc = add nuw nsw i32 %count.021, 1
  %exitcond.not = icmp eq i32 %inc, %cycles
  br i1 %exitcond.not, label %for.body.if.end8_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.if.end8_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.end8:                                          ; preds = %for.body.if.end8_crit_edge, %if.then3.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %status.018 = phi i32 [ %call, %if.end.if.end8_crit_edge ], [ 0, %if.then3.if.end8_crit_edge ], [ 0, %for.body.if.end8_crit_edge ]
  ret i32 %status.018
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @altera_wait_msecs(ptr nocapture noundef %astate, i32 noundef %microseconds, i32 noundef %wait_state) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %js1 = getelementptr inbounds %struct.altera_state, ptr %astate, i32 0, i32 1
  %0 = ptrtoint ptr %js1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %js1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.not = icmp eq i32 %1, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %wait_state)
  %cmp3.not = icmp eq i32 %1, %wait_state
  %or.cond = or i1 %cmp.not, %cmp3.not
  br i1 %or.cond, label %entry.cond.false8_crit_edge, label %if.end

entry.cond.false8_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false8

if.end:                                           ; preds = %entry
  %call = tail call i32 @altera_goto_jstate(ptr noundef %astate, i32 noundef %wait_state)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4 = icmp eq i32 %call, 0
  br i1 %cmp4, label %if.end.cond.false8_crit_edge, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.end.cond.false8_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false8

cond.false8:                                      ; preds = %if.end.cond.false8_crit_edge, %entry.cond.false8_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %2(i32 noundef %microseconds) #5
  br label %if.end10

if.end10:                                         ; preds = %cond.false8, %if.end.if.end10_crit_edge
  %status.020 = phi i32 [ 0, %cond.false8 ], [ %call, %if.end.if.end10_crit_edge ]
  ret i32 %status.020
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @altera_irscan(ptr nocapture noundef %astate, i32 noundef %count, ptr nocapture noundef readonly %tdi_data, i32 noundef %start_index) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %js1 = getelementptr inbounds %struct.altera_state, ptr %astate, i32 0, i32 1
  %ir_pre = getelementptr inbounds %struct.altera_state, ptr %astate, i32 0, i32 1, i32 5
  %0 = ptrtoint ptr %ir_pre to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ir_pre, align 4
  %add = add i32 %1, %count
  %ir_post = getelementptr inbounds %struct.altera_state, ptr %astate, i32 0, i32 1, i32 6
  %2 = ptrtoint ptr %ir_post to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ir_post, align 4
  %add2 = add i32 %add, %3
  %4 = ptrtoint ptr %js1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %js1, align 4
  %switch.tableidx = add i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 17
  br i1 %6, label %switch.lookup, label %entry.if.end39_crit_edge

entry.if.end39_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [17 x i32], ptr @switch.table.altera_irscan, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep90 = getelementptr inbounds [17 x i32], ptr @switch.table.altera_irscan.1, i32 0, i32 %switch.tableidx
  %8 = ptrtoint ptr %switch.gep90 to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load91 = load i32, ptr %switch.gep90, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %switch.load91)
  %cmp6.not = icmp eq i32 %5, %switch.load91
  br i1 %cmp6.not, label %switch.lookup.if.then10_crit_edge, label %if.end8

switch.lookup.if.then10_crit_edge:                ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.end8:                                          ; preds = %switch.lookup
  %call = tail call i32 @altera_goto_jstate(ptr noundef %astate, i32 noundef %switch.load91)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp9 = icmp eq i32 %call, 0
  br i1 %cmp9, label %if.end8.if.then10_crit_edge, label %if.end8.if.end39_crit_edge

if.end8.if.end39_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.end8.if.then10_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.then10:                                        ; preds = %if.end8.if.then10_crit_edge, %switch.lookup.if.then10_crit_edge
  %ir_length = getelementptr inbounds %struct.altera_state, ptr %astate, i32 0, i32 1, i32 8
  %9 = ptrtoint ptr %ir_length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ir_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add2, i32 %10)
  %cmp11 = icmp ugt i32 %add2, %10
  br i1 %cmp11, label %if.then12, label %if.then10.if.then24_crit_edge

if.then10.if.then24_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then24

if.then12:                                        ; preds = %if.then10
  %add13 = add i32 %add2, 7
  %ir_buffer = getelementptr inbounds %struct.altera_state, ptr %astate, i32 0, i32 1, i32 14
  %11 = ptrtoint ptr %ir_buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ir_buffer, align 4
  tail call void @kfree(ptr noundef %12) #5
  %shr = lshr i32 %add13, 3
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %shr, i32 noundef 3520) #8
  %13 = ptrtoint ptr %ir_buffer to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call9.i.i, ptr %ir_buffer, align 4
  %cmp17 = icmp eq ptr %call9.i.i, null
  br i1 %cmp17, label %if.then12.if.end39_crit_edge, label %if.else

if.then12.if.end39_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.else:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  %mul = and i32 %add13, -8
  %14 = ptrtoint ptr %ir_length to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul, ptr %ir_length, align 4
  br label %if.then24

if.then24:                                        ; preds = %if.else, %if.then10.if.then24_crit_edge
  %ir_buffer25 = getelementptr inbounds %struct.altera_state, ptr %astate, i32 0, i32 1, i32 14
  %15 = ptrtoint ptr %ir_buffer25 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ir_buffer25, align 4
  %ir_pre_data = getelementptr inbounds %struct.altera_state, ptr %astate, i32 0, i32 1, i32 11
  %17 = ptrtoint ptr %ir_pre_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ir_pre_data, align 4
  %19 = ptrtoint ptr %ir_pre to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ir_pre, align 4
  %ir_post_data = getelementptr inbounds %struct.altera_state, ptr %astate, i32 0, i32 1, i32 12
  %21 = ptrtoint ptr %ir_post_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ir_post_data, align 4
  %23 = ptrtoint ptr %ir_post to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ir_post, align 4
  tail call fastcc void @altera_concatenate_data(ptr noundef %16, ptr noundef %18, i32 noundef %20, ptr noundef %tdi_data, i32 noundef %start_index, i32 noundef %count, ptr noundef %22, i32 noundef %24)
  %25 = ptrtoint ptr %ir_buffer25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ir_buffer25, align 4
  tail call fastcc void @alt_jtag_irscan(ptr noundef %astate, i32 noundef %switch.load, i32 noundef %add2, ptr noundef %26, ptr noundef null)
  %27 = ptrtoint ptr %js1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 13, ptr %js1, align 4
  %irstop_state = getelementptr inbounds %struct.altera_state, ptr %astate, i32 0, i32 1, i32 2
  %28 = ptrtoint ptr %irstop_state to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irstop_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %29)
  %cmp34.not = icmp eq i32 %29, 13
  br i1 %cmp34.not, label %if.then24.if.end39_crit_edge, label %if.then35

if.then24.if.end39_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.then35:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  %call37 = tail call i32 @altera_goto_jstate(ptr noundef %astate, i32 noundef %29)
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %if.then24.if.end39_crit_edge, %if.then12.if.end39_crit_edge, %if.end8.if.end39_crit_edge, %entry.if.end39_crit_edge
  %status.3 = phi i32 [ %call37, %if.then35 ], [ 0, %if.then24.if.end39_crit_edge ], [ -12, %if.then12.if.end39_crit_edge ], [ %call, %if.end8.if.end39_crit_edge ], [ -121, %entry.if.end39_crit_edge ]
  ret i32 %status.3
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @altera_concatenate_data(ptr nocapture noundef %buffer, ptr nocapture noundef readonly %preamble_data, i32 noundef %preamble_count, ptr nocapture noundef readonly %target_data, i32 noundef %start_index, i32 noundef %target_count, ptr nocapture noundef readonly %postamble_data, i32 noundef %postamble_count) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %preamble_count)
  %cmp116.not = icmp eq i32 %preamble_count, 0
  br i1 %cmp116.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0117 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %shr = lshr i32 %i.0117, 3
  %arrayidx = getelementptr i8, ptr %preamble_data, i32 %shr
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %and = and i32 %i.0117, 7
  %shl = shl nuw nsw i32 1, %and
  %and1 = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  %arrayidx11 = getelementptr i8, ptr %buffer, i32 %shr
  %2 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx11, align 1
  %4 = trunc i32 %shl to i8
  %conv7 = or i8 %3, %4
  %5 = xor i8 %4, -1
  %conv14 = and i8 %3, %5
  %conv7.sink = select i1 %tobool.not, i8 %conv14, i8 %conv7
  store i8 %conv7.sink, ptr %arrayidx11, align 1
  %inc = add nuw i32 %i.0117, 1
  %exitcond.not = icmp eq i32 %inc, %preamble_count
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %add = add i32 %target_count, %preamble_count
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %preamble_count)
  %cmp16118 = icmp ugt i32 %add, %preamble_count
  br i1 %cmp16118, label %for.end.for.body18_crit_edge, label %for.end.for.end47_crit_edge

for.end.for.end47_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end47

for.end.for.body18_crit_edge:                     ; preds = %for.end
  br label %for.body18

for.body18:                                       ; preds = %for.body18.for.body18_crit_edge, %for.end.for.body18_crit_edge
  %j.0121 = phi i32 [ %inc46, %for.body18.for.body18_crit_edge ], [ %start_index, %for.end.for.body18_crit_edge ]
  %i.1119 = phi i32 [ %inc45, %for.body18.for.body18_crit_edge ], [ %preamble_count, %for.end.for.body18_crit_edge ]
  %shr19 = lshr i32 %j.0121, 3
  %arrayidx20 = getelementptr i8, ptr %target_data, i32 %shr19
  %6 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %7 to i32
  %and22 = and i32 %j.0121, 7
  %shl23 = shl nuw nsw i32 1, %and22
  %and24 = and i32 %shl23, %conv21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  %and35 = and i32 %i.1119, 7
  %shl36 = shl nuw nsw i32 1, %and35
  %shr38 = lshr i32 %i.1119, 3
  %arrayidx39 = getelementptr i8, ptr %buffer, i32 %shr38
  %8 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx39, align 1
  %10 = trunc i32 %shl36 to i8
  %conv33 = or i8 %9, %10
  %11 = xor i8 %10, -1
  %conv42 = and i8 %9, %11
  %conv33.sink = select i1 %tobool25.not, i8 %conv42, i8 %conv33
  store i8 %conv33.sink, ptr %arrayidx39, align 1
  %inc45 = add nuw i32 %i.1119, 1
  %inc46 = add i32 %j.0121, 1
  %exitcond127.not = icmp eq i32 %inc45, %add
  br i1 %exitcond127.not, label %for.body18.for.end47_crit_edge, label %for.body18.for.body18_crit_edge

for.body18.for.body18_crit_edge:                  ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body18

for.body18.for.end47_crit_edge:                   ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end47

for.end47:                                        ; preds = %for.body18.for.end47_crit_edge, %for.end.for.end47_crit_edge
  %i.1.lcssa = phi i32 [ %preamble_count, %for.end.for.end47_crit_edge ], [ %add, %for.body18.for.end47_crit_edge ]
  %add49 = add i32 %add, %postamble_count
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1.lcssa, i32 %add49)
  %cmp51123 = icmp ult i32 %i.1.lcssa, %add49
  br i1 %cmp51123, label %for.end47.for.body53_crit_edge, label %for.end47.for.end82_crit_edge

for.end47.for.end82_crit_edge:                    ; preds = %for.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end82

for.end47.for.body53_crit_edge:                   ; preds = %for.end47
  br label %for.body53

for.body53:                                       ; preds = %for.body53.for.body53_crit_edge, %for.end47.for.body53_crit_edge
  %j.1126 = phi i32 [ %inc81, %for.body53.for.body53_crit_edge ], [ 0, %for.end47.for.body53_crit_edge ]
  %i.2124 = phi i32 [ %inc80, %for.body53.for.body53_crit_edge ], [ %i.1.lcssa, %for.end47.for.body53_crit_edge ]
  %shr54 = lshr i32 %j.1126, 3
  %arrayidx55 = getelementptr i8, ptr %postamble_data, i32 %shr54
  %12 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx55, align 1
  %conv56 = zext i8 %13 to i32
  %and57 = and i32 %j.1126, 7
  %shl58 = shl nuw nsw i32 1, %and57
  %and59 = and i32 %shl58, %conv56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  %and70 = and i32 %i.2124, 7
  %shl71 = shl nuw nsw i32 1, %and70
  %shr73 = lshr i32 %i.2124, 3
  %arrayidx74 = getelementptr i8, ptr %buffer, i32 %shr73
  %14 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx74, align 1
  %16 = trunc i32 %shl71 to i8
  %conv68 = or i8 %15, %16
  %17 = xor i8 %16, -1
  %conv77 = and i8 %15, %17
  %conv68.sink = select i1 %tobool60.not, i8 %conv77, i8 %conv68
  store i8 %conv68.sink, ptr %arrayidx74, align 1
  %inc80 = add nuw i32 %i.2124, 1
  %inc81 = add i32 %j.1126, 1
  %cmp51 = icmp ult i32 %inc80, %add49
  br i1 %cmp51, label %for.body53.for.body53_crit_edge, label %for.body53.for.end82_crit_edge

for.body53.for.end82_crit_edge:                   ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end82

for.body53.for.body53_crit_edge:                  ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body53

for.end82:                                        ; preds = %for.body53.for.end82_crit_edge, %for.end47.for.end82_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @alt_jtag_irscan(ptr nocapture noundef readonly %astate, i32 noundef %start_state, i32 noundef %count, ptr nocapture noundef readonly %tdi, ptr noundef %tdo) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %start_state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %start_state, label %entry.if.end113_crit_edge [
    i32 0, label %entry.if.then_crit_edge
    i32 1, label %entry.if.then.sink.split_crit_edge
    i32 2, label %entry.if.then.sink.split_crit_edge17
  ]

entry.if.then.sink.split_crit_edge17:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.sink.split

entry.if.then.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.sink.split

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

entry.if.end113_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end113

if.then.sink.split:                               ; preds = %entry.if.then.sink.split_crit_edge, %entry.if.then.sink.split_crit_edge17
  %1 = ptrtoint ptr %astate to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %astate, align 4
  %jtag_io50 = getelementptr inbounds %struct.altera_config, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %jtag_io50 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %jtag_io50, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %call53 = tail call i32 %4(ptr noundef %6, i32 noundef 1, i32 noundef 0, i32 noundef 0) #5
  %7 = ptrtoint ptr %astate to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %astate, align 4
  %jtag_io24 = getelementptr inbounds %struct.altera_config, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %jtag_io24 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %jtag_io24, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  %call27 = tail call i32 %10(ptr noundef %12, i32 noundef 1, i32 noundef 0, i32 noundef 0) #5
  br label %if.then

if.then:                                          ; preds = %if.then.sink.split, %entry.if.then_crit_edge
  %13 = ptrtoint ptr %astate to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %astate, align 4
  %jtag_io = getelementptr inbounds %struct.altera_config, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %jtag_io to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %jtag_io, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %14, align 4
  %call = tail call i32 %16(ptr noundef %18, i32 noundef 1, i32 noundef 0, i32 noundef 0) #5
  %19 = ptrtoint ptr %astate to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %astate, align 4
  %jtag_io3 = getelementptr inbounds %struct.altera_config, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %jtag_io3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %jtag_io3, align 4
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %20, align 4
  %call6 = tail call i32 %22(ptr noundef %24, i32 noundef 1, i32 noundef 0, i32 noundef 0) #5
  %25 = ptrtoint ptr %astate to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %astate, align 4
  %jtag_io8 = getelementptr inbounds %struct.altera_config, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %jtag_io8 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %jtag_io8, align 4
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %26, align 4
  %call11 = tail call i32 %28(ptr noundef %30, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  %31 = ptrtoint ptr %astate to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %astate, align 4
  %jtag_io13 = getelementptr inbounds %struct.altera_config, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %jtag_io13 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %jtag_io13, align 4
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %32, align 4
  %call16 = tail call i32 %34(ptr noundef %36, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp3 = icmp sgt i32 %count, 0
  br i1 %cmp3, label %for.body.lr.ph, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then
  %sub = add nsw i32 %count, -1
  %cmp86 = icmp ne ptr %tdo, null
  %conv87 = zext i1 %cmp86 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.04 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %37 = ptrtoint ptr %astate to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %astate, align 4
  %jtag_io80 = getelementptr inbounds %struct.altera_config, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %jtag_io80 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %jtag_io80, align 4
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %38, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.04, i32 %sub)
  %cmp83 = icmp eq i32 %i.04, %sub
  %conv = zext i1 %cmp83 to i32
  %43 = lshr i32 %i.04, 3
  %arrayidx = getelementptr i8, ptr %tdi, i32 %43
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx, align 1
  %conv84 = zext i8 %45 to i32
  %and = and i32 %i.04, 7
  %shl = shl nuw nsw i32 1, %and
  %and85 = and i32 %shl, %conv84
  %call88 = tail call i32 %40(ptr noundef %42, i32 noundef %conv, i32 noundef %and85, i32 noundef %conv87) #5
  br i1 %cmp86, label %if.then91, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then91:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool92.not = icmp eq i32 %call88, 0
  %arrayidx103 = getelementptr i8, ptr %tdo, i32 %43
  %46 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx103, align 1
  %48 = trunc i32 %shl to i8
  %49 = xor i8 %48, -1
  %conv106 = and i8 %47, %49
  %conv99 = or i8 %47, %48
  %conv106.sink = select i1 %tobool92.not, i8 %conv106, i8 %conv99
  store i8 %conv106.sink, ptr %arrayidx103, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then91, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then.for.end_crit_edge
  %50 = ptrtoint ptr %astate to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %astate, align 4
  %jtag_io109 = getelementptr inbounds %struct.altera_config, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %jtag_io109 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %jtag_io109, align 4
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %51, align 4
  %call112 = tail call i32 %53(ptr noundef %55, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  br label %if.end113

if.end113:                                        ; preds = %for.end, %entry.if.end113_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @altera_swap_ir(ptr nocapture noundef %astate, i32 noundef %count, ptr nocapture noundef readonly %in_data, i32 noundef %in_index, ptr nocapture noundef %out_data, i32 noundef %out_index) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %js1 = getelementptr inbounds %struct.altera_state, ptr %astate, i32 0, i32 1
  %ir_pre = getelementptr inbounds %struct.altera_state, ptr %astate, i32 0, i32 1, i32 5
  %0 = ptrtoint ptr %ir_pre to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ir_pre, align 4
  %add = add i32 %1, %count
  %ir_post = getelementptr inbounds %struct.altera_state, ptr %astate, i32 0, i32 1, i32 6
  %2 = ptrtoint ptr %ir_post to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ir_post, align 4
  %add2 = add i32 %add, %3
  %4 = ptrtoint ptr %js1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %js1, align 4
  %switch.tableidx = add i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 17
  br i1 %6, label %switch.lookup, label %entry.if.end45_crit_edge

entry.if.end45_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [17 x i32], ptr @switch.table.altera_swap_ir, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep108 = getelementptr inbounds [17 x i32], ptr @switch.table.altera_swap_ir.2, i32 0, i32 %switch.tableidx
  %8 = ptrtoint ptr %switch.gep108 to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load109 = load i32, ptr %switch.gep108, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %switch.load109)
  %cmp6.not = icmp eq i32 %5, %switch.load109
  br i1 %cmp6.not, label %switch.lookup.if.then10_crit_edge, label %if.end8

switch.lookup.if.then10_crit_edge:                ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.end8:                                          ; preds = %switch.lookup
  %call = tail call i32 @altera_goto_jstate(ptr noundef %astate, i32 noundef %switch.load109)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp9 = icmp eq i32 %call, 0
  br i1 %cmp9, label %if.end8.if.then10_crit_edge, label %if.end8.if.end45_crit_edge

if.end8.if.end45_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.end8.if.then10_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.then10:                                        ; preds = %if.end8.if.then10_crit_edge, %switch.lookup.if.then10_crit_edge
  %ir_length = getelementptr inbounds %struct.altera_state, ptr %astate, i32 0, i32 1, i32 8
  %9 = ptrtoint ptr %ir_length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ir_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add2, i32 %10)
  %cmp11 = icmp ugt i32 %add2, %10
  br i1 %cmp11, label %if.then12, label %if.then10.if.then24_crit_edge

if.then10.if.then24_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then24

if.then12:                                        ; preds = %if.then10
  %add13 = add i32 %add2, 7
  %ir_buffer = getelementptr inbounds %struct.altera_state, ptr %astate, i32 0, i32 1, i32 14
  %11 = ptrtoint ptr %ir_buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ir_buffer, align 4
  tail call void @kfree(ptr noundef %12) #5
  %shr = lshr i32 %add13, 3
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %shr, i32 noundef 3520) #8
  %13 = ptrtoint ptr %ir_buffer to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call9.i.i, ptr %ir_buffer, align 4
  %cmp17 = icmp eq ptr %call9.i.i, null
  br i1 %cmp17, label %if.then12.if.end45_crit_edge, label %if.else

if.then12.if.end45_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.else:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  %mul = and i32 %add13, -8
  %14 = ptrtoint ptr %ir_length to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul, ptr %ir_length, align 4
  br label %if.then24

if.then24:                                        ; preds = %if.else, %if.then10.if.then24_crit_edge
  %ir_buffer25 = getelementptr inbounds %struct.altera_state, ptr %astate, i32 0, i32 1, i32 14
  %15 = ptrtoint ptr %ir_buffer25 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ir_buffer25, align 4
  %ir_pre_data = getelementptr inbounds %struct.altera_state, ptr %astate, i32 0, i32 1, i32 11
  %17 = ptrtoint ptr %ir_pre_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ir_pre_data, align 4
  %19 = ptrtoint ptr %ir_pre to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ir_pre, align 4
  %ir_post_data = getelementptr inbounds %struct.altera_state, ptr %astate, i32 0, i32 1, i32 12
  %21 = ptrtoint ptr %ir_post_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ir_post_data, align 4
  %23 = ptrtoint ptr %ir_post to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ir_post, align 4
  tail call fastcc void @altera_concatenate_data(ptr noundef %16, ptr noundef %18, i32 noundef %20, ptr noundef %in_data, i32 noundef %in_index, i32 noundef %count, ptr noundef %22, i32 noundef %24)
  %25 = ptrtoint ptr %ir_buffer25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ir_buffer25, align 4
  tail call fastcc void @alt_jtag_irscan(ptr noundef %astate, i32 noundef %switch.load, i32 noundef %add2, ptr noundef %26, ptr noundef %26)
  %27 = ptrtoint ptr %js1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 13, ptr %js1, align 4
  %irstop_state = getelementptr inbounds %struct.altera_state, ptr %astate, i32 0, i32 1, i32 2
  %28 = ptrtoint ptr %irstop_state to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irstop_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %29)
  %cmp35.not = icmp eq i32 %29, 13
  br i1 %cmp35.not, label %if.then24.if.then42_crit_edge, label %if.end40

if.then24.if.then42_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then42

if.end40:                                         ; preds = %if.then24
  %call38 = tail call i32 @altera_goto_jstate(ptr noundef %astate, i32 noundef %29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp41 = icmp eq i32 %call38, 0
  br i1 %cmp41, label %if.end40.if.then42_crit_edge, label %if.end40.if.end45_crit_edge

if.end40.if.end45_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.end40.if.then42_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then42

if.then42:                                        ; preds = %if.end40.if.then42_crit_edge, %if.then24.if.then42_crit_edge
  %30 = ptrtoint ptr %ir_buffer25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ir_buffer25, align 4
  %add.i = add i32 %out_index, %count
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %out_index)
  %cmp25.i = icmp ugt i32 %add.i, %out_index
  br i1 %cmp25.i, label %for.body.i.preheader, label %if.then42.if.end45_crit_edge

if.then42.if.end45_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

for.body.i.preheader:                             ; preds = %if.then42
  %32 = ptrtoint ptr %ir_pre to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ir_pre, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %j.028.i = phi i32 [ %inc15.i, %for.body.i.for.body.i_crit_edge ], [ %33, %for.body.i.preheader ]
  %i.026.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ %out_index, %for.body.i.preheader ]
  %shr.i = lshr i32 %j.028.i, 3
  %arrayidx.i = getelementptr i8, ptr %31, i32 %shr.i
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %35 to i32
  %and.i = and i32 %j.028.i, 7
  %shl.i = shl nuw nsw i32 1, %and.i
  %and1.i = and i32 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  %and8.i = and i32 %i.026.i, 7
  %shl9.i = shl nuw nsw i32 1, %and8.i
  %shr10.i = lshr i32 %i.026.i, 3
  %arrayidx11.i = getelementptr i8, ptr %out_data, i32 %shr10.i
  %36 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx11.i, align 1
  %38 = trunc i32 %shl9.i to i8
  %conv7.i = or i8 %37, %38
  %39 = xor i8 %38, -1
  %conv14.i = and i8 %37, %39
  %conv7.sink.i = select i1 %tobool.not.i, i8 %conv14.i, i8 %conv7.i
  store i8 %conv7.sink.i, ptr %arrayidx11.i, align 1
  %inc.i = add nuw i32 %i.026.i, 1
  %inc15.i = add i32 %j.028.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %add.i
  br i1 %exitcond.not.i, label %for.body.i.if.end45_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.if.end45_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.end45:                                         ; preds = %for.body.i.if.end45_crit_edge, %if.then42.if.end45_crit_edge, %if.end40.if.end45_crit_edge, %if.then12.if.end45_crit_edge, %if.end8.if.end45_crit_edge, %entry.if.end45_crit_edge
  %status.3103 = phi i32 [ %call38, %if.end40.if.end45_crit_edge ], [ 0, %if.then42.if.end45_crit_edge ], [ -12, %if.then12.if.end45_crit_edge ], [ %call, %if.end8.if.end45_crit_edge ], [ -121, %entry.if.end45_crit_edge ], [ 0, %for.body.i.if.end45_crit_edge ]
  ret i32 %status.3103
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @altera_drscan(ptr nocapture noundef %astate, i32 noundef %count, ptr nocapture noundef readonly %tdi_data, i32 noundef %start_index) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %js1 = getelementptr inbounds %struct.altera_state, ptr %astate, i32 0, i32 1
  %dr_pre = getelementptr inbounds %struct.altera_state, ptr %astate, i32 0, i32 1, i32 3
  %0 = ptrtoint ptr %dr_pre to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dr_pre, align 4
  %add = add i32 %1, %count
  %dr_post = getelementptr inbounds %struct.altera_state, ptr %astate, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %dr_post to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dr_post, align 4
  %add2 = add i32 %add, %3
  %4 = ptrtoint ptr %js1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %js1, align 4
  %switch.tableidx = add i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 17
  br i1 %6, label %switch.lookup, label %entry.if.end39_crit_edge

entry.if.end39_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [17 x i32], ptr @switch.table.altera_drscan, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep90 = getelementptr inbounds [17 x i32], ptr @switch.table.altera_drscan.3, i32 0, i32 %switch.tableidx
  %8 = ptrtoint ptr %switch.gep90 to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load91 = load i32, ptr %switch.gep90, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %switch.load91)
  %cmp6.not = icmp eq i32 %5, %switch.load91
  br i1 %cmp6.not, label %switch.lookup.if.then10_crit_edge, label %if.end8

switch.lookup.if.then10_crit_edge:                ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.end8:                                          ; preds = %switch.lookup
  %call = tail call i32 @altera_goto_jstate(ptr noundef %astate, i32 noundef %switch.load91)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp9 = icmp eq i32 %call, 0
  br i1 %cmp9, label %if.end8.if.then10_crit_edge, label %if.end8.if.end39_crit_edge

if.end8.if.end39_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.end8.if.then10_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.then10:                                        ; preds = %if.end8.if.then10_crit_edge, %switch.lookup.if.then10_crit_edge
  %dr_length = getelementptr inbounds %struct.altera_state, ptr %astate, i32 0, i32 1, i32 7
  %9 = ptrtoint ptr %dr_length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dr_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add2, i32 %10)
  %cmp11 = icmp ugt i32 %add2, %10
  br i1 %cmp11, label %if.then12, label %if.then10.if.then24_crit_edge

if.then10.if.then24_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then24

if.then12:                                        ; preds = %if.then10
  %add13 = add i32 %add2, 7
  %dr_buffer = getelementptr inbounds %struct.altera_state, ptr %astate, i32 0, i32 1, i32 13
  %11 = ptrtoint ptr %dr_buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dr_buffer, align 4
  tail call void @kfree(ptr noundef %12) #5
  %shr = lshr i32 %add13, 3
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %shr, i32 noundef 3520) #8
  %13 = ptrtoint ptr %dr_buffer to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call9.i.i, ptr %dr_buffer, align 4
  %cmp17 = icmp eq ptr %call9.i.i, null
  br i1 %cmp17, label %if.then12.if.end39_crit_edge, label %if.else

if.then12.if.end39_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.else:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  %mul = and i32 %add13, -8
  %14 = ptrtoint ptr %dr_length to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul, ptr %dr_length, align 4
  br label %if.then24

if.then24:                                        ; preds = %if.else, %if.then10.if.then24_crit_edge
  %dr_buffer25 = getelementptr inbounds %struct.altera_state, ptr %astate, i32 0, i32 1, i32 13
  %15 = ptrtoint ptr %dr_buffer25 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dr_buffer25, align 4
  %dr_pre_data = getelementptr inbounds %struct.altera_state, ptr %astate, i32 0, i32 1, i32 9
  %17 = ptrtoint ptr %dr_pre_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dr_pre_data, align 4
  %19 = ptrtoint ptr %dr_pre to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dr_pre, align 4
  %dr_post_data = getelementptr inbounds %struct.altera_state, ptr %astate, i32 0, i32 1, i32 10
  %21 = ptrtoint ptr %dr_post_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dr_post_data, align 4
  %23 = ptrtoint ptr %dr_post to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dr_post, align 4
  tail call fastcc void @altera_concatenate_data(ptr noundef %16, ptr noundef %18, i32 noundef %20, ptr noundef %tdi_data, i32 noundef %start_index, i32 noundef %count, ptr noundef %22, i32 noundef %24)
  %25 = ptrtoint ptr %dr_buffer25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dr_buffer25, align 4
  tail call fastcc void @alt_jtag_drscan(ptr noundef %astate, i32 noundef %switch.load, i32 noundef %add2, ptr noundef %26, ptr noundef null)
  %27 = ptrtoint ptr %js1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 6, ptr %js1, align 4
  %drstop_state = getelementptr inbounds %struct.altera_state, ptr %astate, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %drstop_state to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %drstop_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %29)
  %cmp34.not = icmp eq i32 %29, 6
  br i1 %cmp34.not, label %if.then24.if.end39_crit_edge, label %if.then35

if.then24.if.end39_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.then35:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  %call37 = tail call i32 @altera_goto_jstate(ptr noundef %astate, i32 noundef %29)
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %if.then24.if.end39_crit_edge, %if.then12.if.end39_crit_edge, %if.end8.if.end39_crit_edge, %entry.if.end39_crit_edge
  %status.3 = phi i32 [ %call37, %if.then35 ], [ 0, %if.then24.if.end39_crit_edge ], [ -12, %if.then12.if.end39_crit_edge ], [ %call, %if.end8.if.end39_crit_edge ], [ -121, %entry.if.end39_crit_edge ]
  ret i32 %status.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @alt_jtag_drscan(ptr nocapture noundef readonly %astate, i32 noundef %start_state, i32 noundef %count, ptr nocapture noundef readonly %tdi, ptr noundef %tdo) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %start_state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %start_state, label %entry.if.end98_crit_edge [
    i32 0, label %entry.if.then_crit_edge
    i32 1, label %entry.if.then.sink.split_crit_edge
    i32 2, label %entry.if.then.sink.split_crit_edge15
  ]

entry.if.then.sink.split_crit_edge15:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.sink.split

entry.if.then.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.sink.split

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

entry.if.end98_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end98

if.then.sink.split:                               ; preds = %entry.if.then.sink.split_crit_edge, %entry.if.then.sink.split_crit_edge15
  %1 = ptrtoint ptr %astate to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %astate, align 4
  %jtag_io40 = getelementptr inbounds %struct.altera_config, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %jtag_io40 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %jtag_io40, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %call43 = tail call i32 %4(ptr noundef %6, i32 noundef 1, i32 noundef 0, i32 noundef 0) #5
  %7 = ptrtoint ptr %astate to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %astate, align 4
  %jtag_io19 = getelementptr inbounds %struct.altera_config, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %jtag_io19 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %jtag_io19, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  %call22 = tail call i32 %10(ptr noundef %12, i32 noundef 1, i32 noundef 0, i32 noundef 0) #5
  br label %if.then

if.then:                                          ; preds = %if.then.sink.split, %entry.if.then_crit_edge
  %13 = ptrtoint ptr %astate to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %astate, align 4
  %jtag_io = getelementptr inbounds %struct.altera_config, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %jtag_io to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %jtag_io, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %14, align 4
  %call = tail call i32 %16(ptr noundef %18, i32 noundef 1, i32 noundef 0, i32 noundef 0) #5
  %19 = ptrtoint ptr %astate to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %astate, align 4
  %jtag_io3 = getelementptr inbounds %struct.altera_config, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %jtag_io3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %jtag_io3, align 4
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %20, align 4
  %call6 = tail call i32 %22(ptr noundef %24, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  %25 = ptrtoint ptr %astate to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %astate, align 4
  %jtag_io8 = getelementptr inbounds %struct.altera_config, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %jtag_io8 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %jtag_io8, align 4
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %26, align 4
  %call11 = tail call i32 %28(ptr noundef %30, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp3 = icmp sgt i32 %count, 0
  br i1 %cmp3, label %for.body.lr.ph, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then
  %sub = add nsw i32 %count, -1
  %cmp71 = icmp ne ptr %tdo, null
  %conv72 = zext i1 %cmp71 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.04 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %31 = ptrtoint ptr %astate to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %astate, align 4
  %jtag_io65 = getelementptr inbounds %struct.altera_config, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %jtag_io65 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %jtag_io65, align 4
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %32, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.04, i32 %sub)
  %cmp68 = icmp eq i32 %i.04, %sub
  %conv = zext i1 %cmp68 to i32
  %37 = lshr i32 %i.04, 3
  %arrayidx = getelementptr i8, ptr %tdi, i32 %37
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx, align 1
  %conv69 = zext i8 %39 to i32
  %and = and i32 %i.04, 7
  %shl = shl nuw nsw i32 1, %and
  %and70 = and i32 %shl, %conv69
  %call73 = tail call i32 %34(ptr noundef %36, i32 noundef %conv, i32 noundef %and70, i32 noundef %conv72) #5
  br i1 %cmp71, label %if.then76, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then76:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool77.not = icmp eq i32 %call73, 0
  %arrayidx88 = getelementptr i8, ptr %tdo, i32 %37
  %40 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx88, align 1
  %42 = trunc i32 %shl to i8
  %43 = xor i8 %42, -1
  %conv91 = and i8 %41, %43
  %conv84 = or i8 %41, %42
  %conv91.sink = select i1 %tobool77.not, i8 %conv91, i8 %conv84
  store i8 %conv91.sink, ptr %arrayidx88, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then76, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then.for.end_crit_edge
  %44 = ptrtoint ptr %astate to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %astate, align 4
  %jtag_io94 = getelementptr inbounds %struct.altera_config, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %jtag_io94 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %jtag_io94, align 4
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %45, align 4
  %call97 = tail call i32 %47(ptr noundef %49, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  br label %if.end98

if.end98:                                         ; preds = %for.end, %entry.if.end98_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @altera_swap_dr(ptr nocapture noundef %astate, i32 noundef %count, ptr nocapture noundef readonly %in_data, i32 noundef %in_index, ptr nocapture noundef %out_data, i32 noundef %out_index) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %js1 = getelementptr inbounds %struct.altera_state, ptr %astate, i32 0, i32 1
  %dr_pre = getelementptr inbounds %struct.altera_state, ptr %astate, i32 0, i32 1, i32 3
  %0 = ptrtoint ptr %dr_pre to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dr_pre, align 4
  %add = add i32 %1, %count
  %dr_post = getelementptr inbounds %struct.altera_state, ptr %astate, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %dr_post to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dr_post, align 4
  %add2 = add i32 %add, %3
  %4 = ptrtoint ptr %js1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %js1, align 4
  %switch.tableidx = add i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 17
  br i1 %6, label %switch.lookup, label %entry.if.end45_crit_edge

entry.if.end45_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [17 x i32], ptr @switch.table.altera_swap_dr, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep108 = getelementptr inbounds [17 x i32], ptr @switch.table.altera_swap_dr.4, i32 0, i32 %switch.tableidx
  %8 = ptrtoint ptr %switch.gep108 to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load109 = load i32, ptr %switch.gep108, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %switch.load109)
  %cmp6.not = icmp eq i32 %5, %switch.load109
  br i1 %cmp6.not, label %switch.lookup.if.then10_crit_edge, label %if.end8

switch.lookup.if.then10_crit_edge:                ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.end8:                                          ; preds = %switch.lookup
  %call = tail call i32 @altera_goto_jstate(ptr noundef %astate, i32 noundef %switch.load109)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp9 = icmp eq i32 %call, 0
  br i1 %cmp9, label %if.end8.if.then10_crit_edge, label %if.end8.if.end45_crit_edge

if.end8.if.end45_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.end8.if.then10_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.then10:                                        ; preds = %if.end8.if.then10_crit_edge, %switch.lookup.if.then10_crit_edge
  %dr_length = getelementptr inbounds %struct.altera_state, ptr %astate, i32 0, i32 1, i32 7
  %9 = ptrtoint ptr %dr_length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dr_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add2, i32 %10)
  %cmp11 = icmp ugt i32 %add2, %10
  br i1 %cmp11, label %if.then12, label %if.then10.if.then24_crit_edge

if.then10.if.then24_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then24

if.then12:                                        ; preds = %if.then10
  %add13 = add i32 %add2, 7
  %dr_buffer = getelementptr inbounds %struct.altera_state, ptr %astate, i32 0, i32 1, i32 13
  %11 = ptrtoint ptr %dr_buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dr_buffer, align 4
  tail call void @kfree(ptr noundef %12) #5
  %shr = lshr i32 %add13, 3
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %shr, i32 noundef 3520) #8
  %13 = ptrtoint ptr %dr_buffer to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call9.i.i, ptr %dr_buffer, align 4
  %cmp17 = icmp eq ptr %call9.i.i, null
  br i1 %cmp17, label %if.then12.if.end45_crit_edge, label %if.else

if.then12.if.end45_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.else:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  %mul = and i32 %add13, -8
  %14 = ptrtoint ptr %dr_length to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul, ptr %dr_length, align 4
  br label %if.then24

if.then24:                                        ; preds = %if.else, %if.then10.if.then24_crit_edge
  %dr_buffer25 = getelementptr inbounds %struct.altera_state, ptr %astate, i32 0, i32 1, i32 13
  %15 = ptrtoint ptr %dr_buffer25 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dr_buffer25, align 4
  %dr_pre_data = getelementptr inbounds %struct.altera_state, ptr %astate, i32 0, i32 1, i32 9
  %17 = ptrtoint ptr %dr_pre_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dr_pre_data, align 4
  %19 = ptrtoint ptr %dr_pre to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dr_pre, align 4
  %dr_post_data = getelementptr inbounds %struct.altera_state, ptr %astate, i32 0, i32 1, i32 10
  %21 = ptrtoint ptr %dr_post_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dr_post_data, align 4
  %23 = ptrtoint ptr %dr_post to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dr_post, align 4
  tail call fastcc void @altera_concatenate_data(ptr noundef %16, ptr noundef %18, i32 noundef %20, ptr noundef %in_data, i32 noundef %in_index, i32 noundef %count, ptr noundef %22, i32 noundef %24)
  %25 = ptrtoint ptr %dr_buffer25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dr_buffer25, align 4
  tail call fastcc void @alt_jtag_drscan(ptr noundef %astate, i32 noundef %switch.load, i32 noundef %add2, ptr noundef %26, ptr noundef %26)
  %27 = ptrtoint ptr %js1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 6, ptr %js1, align 4
  %drstop_state = getelementptr inbounds %struct.altera_state, ptr %astate, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %drstop_state to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %drstop_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %29)
  %cmp35.not = icmp eq i32 %29, 6
  br i1 %cmp35.not, label %if.then24.if.then42_crit_edge, label %if.end40

if.then24.if.then42_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then42

if.end40:                                         ; preds = %if.then24
  %call38 = tail call i32 @altera_goto_jstate(ptr noundef %astate, i32 noundef %29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp41 = icmp eq i32 %call38, 0
  br i1 %cmp41, label %if.end40.if.then42_crit_edge, label %if.end40.if.end45_crit_edge

if.end40.if.end45_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.end40.if.then42_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then42

if.then42:                                        ; preds = %if.end40.if.then42_crit_edge, %if.then24.if.then42_crit_edge
  %30 = ptrtoint ptr %dr_buffer25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dr_buffer25, align 4
  %add.i = add i32 %out_index, %count
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %out_index)
  %cmp25.i = icmp ugt i32 %add.i, %out_index
  br i1 %cmp25.i, label %for.body.i.preheader, label %if.then42.if.end45_crit_edge

if.then42.if.end45_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

for.body.i.preheader:                             ; preds = %if.then42
  %32 = ptrtoint ptr %dr_pre to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dr_pre, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %j.028.i = phi i32 [ %inc15.i, %for.body.i.for.body.i_crit_edge ], [ %33, %for.body.i.preheader ]
  %i.026.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ %out_index, %for.body.i.preheader ]
  %shr.i = lshr i32 %j.028.i, 3
  %arrayidx.i = getelementptr i8, ptr %31, i32 %shr.i
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %35 to i32
  %and.i = and i32 %j.028.i, 7
  %shl.i = shl nuw nsw i32 1, %and.i
  %and1.i = and i32 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  %and8.i = and i32 %i.026.i, 7
  %shl9.i = shl nuw nsw i32 1, %and8.i
  %shr10.i = lshr i32 %i.026.i, 3
  %arrayidx11.i = getelementptr i8, ptr %out_data, i32 %shr10.i
  %36 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx11.i, align 1
  %38 = trunc i32 %shl9.i to i8
  %conv7.i = or i8 %37, %38
  %39 = xor i8 %38, -1
  %conv14.i = and i8 %37, %39
  %conv7.sink.i = select i1 %tobool.not.i, i8 %conv14.i, i8 %conv7.i
  store i8 %conv7.sink.i, ptr %arrayidx11.i, align 1
  %inc.i = add nuw i32 %i.026.i, 1
  %inc15.i = add i32 %j.028.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %add.i
  br i1 %exitcond.not.i, label %for.body.i.if.end45_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.if.end45_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.end45:                                         ; preds = %for.body.i.if.end45_crit_edge, %if.then42.if.end45_crit_edge, %if.end40.if.end45_crit_edge, %if.then12.if.end45_crit_edge, %if.end8.if.end45_crit_edge, %entry.if.end45_crit_edge
  %status.3103 = phi i32 [ %call38, %if.end40.if.end45_crit_edge ], [ 0, %if.then42.if.end45_crit_edge ], [ -12, %if.then12.if.end45_crit_edge ], [ %call, %if.end8.if.end45_crit_edge ], [ -121, %entry.if.end45_crit_edge ], [ 0, %for.body.i.if.end45_crit_edge ]
  ret i32 %status.3103
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @altera_free_buffers(ptr nocapture noundef %astate) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %js1 = getelementptr inbounds %struct.altera_state, ptr %astate, i32 0, i32 1
  %0 = ptrtoint ptr %js1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %js1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.not = icmp eq i32 %1, -1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %astate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %astate, align 4
  %jtag_io.i = getelementptr inbounds %struct.altera_config, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %jtag_io.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %jtag_io.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %call.i = tail call i32 %5(ptr noundef %7, i32 noundef 1, i32 noundef 0, i32 noundef 0) #5
  %8 = ptrtoint ptr %astate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %astate, align 4
  %jtag_io.1.i = getelementptr inbounds %struct.altera_config, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %jtag_io.1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %jtag_io.1.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %call.1.i = tail call i32 %11(ptr noundef %13, i32 noundef 1, i32 noundef 0, i32 noundef 0) #5
  %14 = ptrtoint ptr %astate to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %astate, align 4
  %jtag_io.2.i = getelementptr inbounds %struct.altera_config, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %jtag_io.2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %jtag_io.2.i, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 4
  %call.2.i = tail call i32 %17(ptr noundef %19, i32 noundef 1, i32 noundef 0, i32 noundef 0) #5
  %20 = ptrtoint ptr %astate to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %astate, align 4
  %jtag_io.3.i = getelementptr inbounds %struct.altera_config, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %jtag_io.3.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %jtag_io.3.i, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %21, align 4
  %call.3.i = tail call i32 %23(ptr noundef %25, i32 noundef 1, i32 noundef 0, i32 noundef 0) #5
  %26 = ptrtoint ptr %astate to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %astate, align 4
  %jtag_io.4.i = getelementptr inbounds %struct.altera_config, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %jtag_io.4.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %jtag_io.4.i, align 4
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %27, align 4
  %call.4.i = tail call i32 %29(ptr noundef %31, i32 noundef 1, i32 noundef 0, i32 noundef 0) #5
  %32 = ptrtoint ptr %astate to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %astate, align 4
  %jtag_io4.i = getelementptr inbounds %struct.altera_config, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %jtag_io4.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %jtag_io4.i, align 4
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %33, align 4
  %call7.i = tail call i32 %35(ptr noundef %37, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  %38 = ptrtoint ptr %js1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %js1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dr_pre_data = getelementptr inbounds %struct.altera_state, ptr %astate, i32 0, i32 1, i32 9
  %39 = ptrtoint ptr %dr_pre_data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dr_pre_data, align 4
  tail call void @kfree(ptr noundef %40) #5
  %41 = ptrtoint ptr %dr_pre_data to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %dr_pre_data, align 4
  %dr_post_data = getelementptr inbounds %struct.altera_state, ptr %astate, i32 0, i32 1, i32 10
  %42 = ptrtoint ptr %dr_post_data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dr_post_data, align 4
  tail call void @kfree(ptr noundef %43) #5
  %44 = ptrtoint ptr %dr_post_data to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %dr_post_data, align 4
  %dr_buffer = getelementptr inbounds %struct.altera_state, ptr %astate, i32 0, i32 1, i32 13
  %45 = ptrtoint ptr %dr_buffer to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dr_buffer, align 4
  tail call void @kfree(ptr noundef %46) #5
  %47 = ptrtoint ptr %dr_buffer to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %dr_buffer, align 4
  %ir_pre_data = getelementptr inbounds %struct.altera_state, ptr %astate, i32 0, i32 1, i32 11
  %48 = ptrtoint ptr %ir_pre_data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ir_pre_data, align 4
  tail call void @kfree(ptr noundef %49) #5
  %50 = ptrtoint ptr %ir_pre_data to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %ir_pre_data, align 4
  %ir_post_data = getelementptr inbounds %struct.altera_state, ptr %astate, i32 0, i32 1, i32 12
  %51 = ptrtoint ptr %ir_post_data to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ir_post_data, align 4
  tail call void @kfree(ptr noundef %52) #5
  %53 = ptrtoint ptr %ir_post_data to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %ir_post_data, align 4
  %ir_buffer = getelementptr inbounds %struct.altera_state, ptr %astate, i32 0, i32 1, i32 14
  %54 = ptrtoint ptr %ir_buffer to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ir_buffer, align 4
  tail call void @kfree(ptr noundef %55) #5
  %56 = ptrtoint ptr %ir_buffer to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %ir_buffer, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @altera_jtag_path_map, !1, !"altera_jtag_path_map", i1 false, i1 false}
!1 = !{!"../drivers/misc/altera-stapl/altera-jtag.c", i32 60, i32 18}
!2 = !{ptr @altera_transitions, !3, !"altera_transitions", i1 false, i1 false}
!3 = !{!"../drivers/misc/altera-stapl/altera-jtag.c", i32 34, i32 41}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
