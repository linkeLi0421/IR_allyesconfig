; ModuleID = '/llk/IR_all_yes/security/selinux/ss/mls.c_pt.bc'
source_filename = "../security/selinux/ss/mls.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.context = type { i32, i32, i32, i32, %struct.mls_range, ptr }
%struct.mls_range = type { [2 x %struct.mls_level] }
%struct.mls_level = type { i32, %struct.ebitmap }
%struct.ebitmap = type { ptr, i32 }
%struct.policydb = type { i32, [8 x %struct.symtab], [8 x ptr], ptr, ptr, ptr, ptr, %struct.avtab, %struct.hashtab, %struct.ebitmap, %struct.hashtab, i32, ptr, %struct.avtab, ptr, i32, ptr, [9 x ptr], ptr, %struct.hashtab, ptr, %struct.ebitmap, %struct.ebitmap, i32, i32, i8, i16, i32 }
%struct.symtab = type { %struct.hashtab, i32 }
%struct.avtab = type { ptr, i32, i32, i32 }
%struct.hashtab = type { ptr, i32, i32 }
%struct.ebitmap_node = type { ptr, [6 x i32], i32 }
%struct.user_datum = type { i32, i32, %struct.ebitmap, %struct.mls_range, %struct.mls_level }
%struct.sidtab_entry = type { i32, i32, %struct.context, ptr, %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.range_trans = type { i32, i32, i32 }
%struct.class_datum = type { i32, ptr, ptr, %struct.symtab, ptr, ptr, i8, i8, i8, i8 }
%struct.netlbl_lsm_secattr = type { i32, i32, ptr, ptr, %struct.anon.10 }
%struct.anon.10 = type { %struct.anon.11, i32 }
%struct.anon.11 = type { ptr, i32 }

@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 32, i64 64]
@__sancov_gen_cov_switch_values.1 = internal global [9 x i64] [i64 7, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mls_compute_context_len(ptr nocapture noundef readonly %p, ptr noundef %context) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup48_crit_edge, label %for.cond.preheader

entry.cleanup48_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup48

for.cond.preheader:                               ; preds = %entry
  %cat.i = getelementptr inbounds %struct.context, ptr %context, i32 0, i32 4, i32 0, i32 0, i32 1
  %cat2.i = getelementptr %struct.context, ptr %context, i32 0, i32 4, i32 0, i32 1, i32 1
  %range = getelementptr inbounds %struct.context, ptr %context, i32 0, i32 4
  %arrayidx.i = getelementptr %struct.policydb, ptr %p, i32 0, i32 2, i32 6
  %arrayidx.i87 = getelementptr %struct.policydb, ptr %p, i32 0, i32 2, i32 7
  %arrayidx39 = getelementptr %struct.context, ptr %context, i32 0, i32 4, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc45.for.body_crit_edge, %for.cond.preheader
  %len.0132 = phi i32 [ 1, %for.cond.preheader ], [ %len.6.ph, %for.inc45.for.body_crit_edge ]
  %l.0130 = phi i32 [ 0, %for.cond.preheader ], [ %inc46, %for.inc45.for.body_crit_edge ]
  %arrayidx = getelementptr [2 x %struct.mls_level], ptr %range, i32 0, i32 %l.0130
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %sub = add i32 %3, -1
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr ptr, ptr %5, i32 %sub
  %6 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx1.i, align 4
  %call1 = tail call i32 @strlen(ptr noundef %7) #11
  %add = add i32 %call1, %len.0132
  %cat = getelementptr [2 x %struct.mls_level], ptr %range, i32 0, i32 %l.0130, i32 1
  %8 = ptrtoint ptr %cat to i32
  call void @__asan_load4_noabort(i32 %8)
  %storemerge8.i = load ptr, ptr %cat, align 4
  %tobool.not9.i = icmp eq ptr %storemerge8.i, null
  br i1 %tobool.not9.i, label %for.body.for.end.i_crit_edge, label %for.body.for.body.i_crit_edge

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.for.end.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %node.0 = phi ptr [ %storemerge.i, %for.inc.i.for.body.i_crit_edge ], [ %storemerge8.i, %for.body.for.body.i_crit_edge ]
  %maps.i = getelementptr inbounds %struct.ebitmap_node, ptr %node.0, i32 0, i32 1
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef %maps.i, i32 noundef 192) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %call.i)
  %cmp.i = icmp ult i32 %call.i, 192
  br i1 %cmp.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %startbit.i = getelementptr inbounds %struct.ebitmap_node, ptr %node.0, i32 0, i32 2
  %9 = ptrtoint ptr %startbit.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %startbit.i, align 4
  %add.i = add i32 %10, %call.i
  br label %ebitmap_start_positive.exit

for.inc.i:                                        ; preds = %for.body.i
  %11 = ptrtoint ptr %node.0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %storemerge.i = load ptr, ptr %node.0, align 4
  %tobool.not.i = icmp eq ptr %storemerge.i, null
  br i1 %tobool.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.for.end.i_crit_edge
  %highbit.i = getelementptr [2 x %struct.mls_level], ptr %range, i32 0, i32 %l.0130, i32 1, i32 1
  %12 = ptrtoint ptr %highbit.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %highbit.i, align 4
  br label %ebitmap_start_positive.exit

ebitmap_start_positive.exit:                      ; preds = %for.end.i, %if.then.i
  %node.2 = phi ptr [ null, %for.end.i ], [ %node.0, %if.then.i ]
  %retval.0.i = phi i32 [ %13, %for.end.i ], [ %add.i, %if.then.i ]
  %highbit = getelementptr [2 x %struct.mls_level], ptr %range, i32 0, i32 %l.0130, i32 1, i32 1
  %14 = ptrtoint ptr %highbit to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %highbit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %15)
  %cmp7122 = icmp ult i32 %retval.0.i, %15
  br i1 %cmp7122, label %ebitmap_start_positive.exit.for.body8_crit_edge, label %ebitmap_start_positive.exit.if.end31_crit_edge

ebitmap_start_positive.exit.if.end31_crit_edge:   ; preds = %ebitmap_start_positive.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

ebitmap_start_positive.exit.for.body8_crit_edge:  ; preds = %ebitmap_start_positive.exit
  br label %for.body8

for.body8:                                        ; preds = %ebitmap_next_positive.exit.for.body8_crit_edge, %ebitmap_start_positive.exit.for.body8_crit_edge
  %prev.0127 = phi i32 [ %i.0124, %ebitmap_next_positive.exit.for.body8_crit_edge ], [ -2, %ebitmap_start_positive.exit.for.body8_crit_edge ]
  %head.0126 = phi i32 [ %head.1, %ebitmap_next_positive.exit.for.body8_crit_edge ], [ -2, %ebitmap_start_positive.exit.for.body8_crit_edge ]
  %len.1125 = phi i32 [ %len.3, %ebitmap_next_positive.exit.for.body8_crit_edge ], [ %add, %ebitmap_start_positive.exit.for.body8_crit_edge ]
  %i.0124 = phi i32 [ %retval.0.i102, %ebitmap_next_positive.exit.for.body8_crit_edge ], [ %retval.0.i, %ebitmap_start_positive.exit.for.body8_crit_edge ]
  %node.3123 = phi ptr [ %node.5, %ebitmap_next_positive.exit.for.body8_crit_edge ], [ %node.2, %ebitmap_start_positive.exit.for.body8_crit_edge ]
  %sub9 = sub i32 %i.0124, %prev.0127
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub9)
  %cmp10 = icmp sgt i32 %sub9, 1
  br i1 %cmp10, label %if.then11, label %for.body8.if.end23_crit_edge

for.body8.if.end23_crit_edge:                     ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then11:                                        ; preds = %for.body8
  call void @__sanitizer_cov_trace_cmp4(i32 %head.0126, i32 %prev.0127)
  %cmp12.not = icmp eq i32 %head.0126, %prev.0127
  br i1 %cmp12.not, label %if.then11.if.end18_crit_edge, label %if.then13

if.then11.if.end18_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then13:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %arrayidx.i87 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i87, align 4
  %arrayidx1.i88 = getelementptr ptr, ptr %17, i32 %prev.0127
  %18 = ptrtoint ptr %arrayidx1.i88 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx1.i88, align 4
  %call15 = tail call i32 @strlen(ptr noundef %19) #11
  %add16 = add i32 %len.1125, 1
  %add17 = add i32 %add16, %call15
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %if.then11.if.end18_crit_edge
  %len.2 = phi i32 [ %add17, %if.then13 ], [ %len.1125, %if.then11.if.end18_crit_edge ]
  %20 = ptrtoint ptr %arrayidx.i87 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i87, align 4
  %arrayidx1.i90 = getelementptr ptr, ptr %21, i32 %i.0124
  %22 = ptrtoint ptr %arrayidx1.i90 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx1.i90, align 4
  %call20 = tail call i32 @strlen(ptr noundef %23) #11
  %add21 = add i32 %len.2, 1
  %add22 = add i32 %add21, %call20
  br label %if.end23

if.end23:                                         ; preds = %if.end18, %for.body8.if.end23_crit_edge
  %len.3 = phi i32 [ %add22, %if.end18 ], [ %len.1125, %for.body8.if.end23_crit_edge ]
  %head.1 = phi i32 [ %i.0124, %if.end18 ], [ %head.0126, %for.body8.if.end23_crit_edge ]
  %maps.i91 = getelementptr inbounds %struct.ebitmap_node, ptr %node.3123, i32 0, i32 1
  %startbit.i92 = getelementptr inbounds %struct.ebitmap_node, ptr %node.3123, i32 0, i32 2
  %24 = ptrtoint ptr %startbit.i92 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %startbit.i92, align 4
  %sub.i = add nuw i32 %i.0124, 1
  %add.i93 = sub i32 %sub.i, %25
  %call.i94 = tail call i32 @_find_next_bit_be(ptr noundef %maps.i91, i32 noundef 192, i32 noundef %add.i93) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %call.i94)
  %cmp.i95 = icmp ult i32 %call.i94, 192
  br i1 %cmp.i95, label %if.then.i96, label %if.end23.for.cond.i_crit_edge

if.end23.for.cond.i_crit_edge:                    ; preds = %if.end23
  br label %for.cond.i

if.then.i96:                                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %startbit.i92 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %startbit.i92, align 4
  %add2.i = add i32 %27, %call.i94
  br label %ebitmap_next_positive.exit

for.cond.i:                                       ; preds = %for.body.i99.for.cond.i_crit_edge, %if.end23.for.cond.i_crit_edge
  %node.4 = phi ptr [ %storemerge.i97, %for.body.i99.for.cond.i_crit_edge ], [ %node.3123, %if.end23.for.cond.i_crit_edge ]
  %28 = ptrtoint ptr %node.4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %storemerge.i97 = load ptr, ptr %node.4, align 4
  %tobool.not.i98 = icmp eq ptr %storemerge.i97, null
  br i1 %tobool.not.i98, label %for.end.i101, label %for.body.i99

for.body.i99:                                     ; preds = %for.cond.i
  %maps3.i = getelementptr inbounds %struct.ebitmap_node, ptr %storemerge.i97, i32 0, i32 1
  %call5.i = tail call i32 @_find_first_bit_be(ptr noundef %maps3.i, i32 noundef 192) #8
  %cmp6.i = icmp ult i32 %call5.i, 192
  br i1 %cmp6.i, label %if.then7.i, label %for.body.i99.for.cond.i_crit_edge

for.body.i99.for.cond.i_crit_edge:                ; preds = %for.body.i99
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

if.then7.i:                                       ; preds = %for.body.i99
  call void @__sanitizer_cov_trace_pc() #10
  %startbit8.i = getelementptr inbounds %struct.ebitmap_node, ptr %storemerge.i97, i32 0, i32 2
  %29 = ptrtoint ptr %startbit8.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %startbit8.i, align 4
  %add9.i = add i32 %30, %call5.i
  br label %ebitmap_next_positive.exit

for.end.i101:                                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %highbit to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %highbit, align 4
  br label %ebitmap_next_positive.exit

ebitmap_next_positive.exit:                       ; preds = %for.end.i101, %if.then7.i, %if.then.i96
  %node.5 = phi ptr [ %node.3123, %if.then.i96 ], [ null, %for.end.i101 ], [ %storemerge.i97, %if.then7.i ]
  %retval.0.i102 = phi i32 [ %add2.i, %if.then.i96 ], [ %32, %for.end.i101 ], [ %add9.i, %if.then7.i ]
  %33 = ptrtoint ptr %highbit to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %highbit, align 4
  %cmp7 = icmp ult i32 %retval.0.i102, %34
  br i1 %cmp7, label %ebitmap_next_positive.exit.for.body8_crit_edge, label %for.end

ebitmap_next_positive.exit.for.body8_crit_edge:   ; preds = %ebitmap_next_positive.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body8

for.end:                                          ; preds = %ebitmap_next_positive.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0124, i32 %head.1)
  %cmp25.not = icmp eq i32 %i.0124, %head.1
  br i1 %cmp25.not, label %for.end.if.end31_crit_edge, label %if.then26

for.end.if.end31_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then26:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %arrayidx.i87 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i87, align 4
  %arrayidx1.i104 = getelementptr ptr, ptr %36, i32 %i.0124
  %37 = ptrtoint ptr %arrayidx1.i104 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx1.i104, align 4
  %call28 = tail call i32 @strlen(ptr noundef %38) #11
  %add29 = add i32 %len.3, 1
  %add30 = add i32 %add29, %call28
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %for.end.if.end31_crit_edge, %ebitmap_start_positive.exit.if.end31_crit_edge
  %len.4 = phi i32 [ %add30, %if.then26 ], [ %len.3, %for.end.if.end31_crit_edge ], [ %add, %ebitmap_start_positive.exit.if.end31_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %l.0130)
  %cmp32 = icmp eq i32 %l.0130, 0
  br i1 %cmp32, label %if.then33, label %if.end31.for.inc45_crit_edge

if.end31.for.inc45_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc45

if.then33:                                        ; preds = %if.end31
  %39 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %range, align 4
  %41 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx39, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %42)
  %cmp.i105 = icmp eq i32 %40, %42
  br i1 %cmp.i105, label %mls_level_eq.exit, label %mls_level_eq.exit.thread

mls_level_eq.exit.thread:                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  %inc116 = add i32 %len.4, 1
  br label %for.inc45

mls_level_eq.exit:                                ; preds = %if.then33
  %call.i106 = tail call i32 @ebitmap_cmp(ptr noundef %cat.i, ptr noundef %cat2.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106)
  %tobool.i.not = icmp eq i32 %call.i106, 0
  %inc = add i32 %len.4, 1
  br i1 %tobool.i.not, label %mls_level_eq.exit.for.inc45_crit_edge, label %mls_level_eq.exit.cleanup48_crit_edge

mls_level_eq.exit.cleanup48_crit_edge:            ; preds = %mls_level_eq.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup48

mls_level_eq.exit.for.inc45_crit_edge:            ; preds = %mls_level_eq.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc45

for.inc45:                                        ; preds = %mls_level_eq.exit.for.inc45_crit_edge, %mls_level_eq.exit.thread, %if.end31.for.inc45_crit_edge
  %len.6.ph = phi i32 [ %len.4, %if.end31.for.inc45_crit_edge ], [ %inc116, %mls_level_eq.exit.thread ], [ %inc, %mls_level_eq.exit.for.inc45_crit_edge ]
  %inc46 = add nuw nsw i32 %l.0130, 1
  %exitcond.not = icmp eq i32 %inc46, 2
  br i1 %exitcond.not, label %for.inc45.cleanup48_crit_edge, label %for.inc45.for.body_crit_edge

for.inc45.for.body_crit_edge:                     ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc45.cleanup48_crit_edge:                    ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup48

cleanup48:                                        ; preds = %for.inc45.cleanup48_crit_edge, %mls_level_eq.exit.cleanup48_crit_edge, %entry.cleanup48_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup48_crit_edge ], [ %len.4, %mls_level_eq.exit.cleanup48_crit_edge ], [ %len.6.ph, %for.inc45.cleanup48_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mls_sid_to_context(ptr nocapture noundef readonly %p, ptr noundef %context, ptr nocapture noundef %scontext) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %scontext to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scontext, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 58, ptr %3, align 1
  %incdec.ptr = getelementptr i8, ptr %3, i32 1
  %cat.i = getelementptr inbounds %struct.context, ptr %context, i32 0, i32 4, i32 0, i32 0, i32 1
  %cat2.i = getelementptr %struct.context, ptr %context, i32 0, i32 4, i32 0, i32 1, i32 1
  %range = getelementptr inbounds %struct.context, ptr %context, i32 0, i32 4
  %arrayidx.i = getelementptr %struct.policydb, ptr %p, i32 0, i32 2, i32 6
  %arrayidx.i132 = getelementptr %struct.policydb, ptr %p, i32 0, i32 2, i32 7
  %arrayidx59 = getelementptr %struct.context, ptr %context, i32 0, i32 4, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc67.for.body_crit_edge, %if.end
  %l.0170 = phi i32 [ 0, %if.end ], [ %inc, %for.inc67.for.body_crit_edge ]
  %scontextp.0169 = phi ptr [ %incdec.ptr, %if.end ], [ %scontextp.8, %for.inc67.for.body_crit_edge ]
  %arrayidx = getelementptr [2 x %struct.mls_level], ptr %range, i32 0, i32 %l.0170
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %sub = add i32 %6, -1
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr ptr, ptr %8, i32 %sub
  %9 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx1.i, align 4
  %call1 = tail call ptr @strcpy(ptr noundef %scontextp.0169, ptr noundef %10) #11
  %call2 = tail call i32 @strlen(ptr noundef %scontextp.0169) #11
  %add.ptr = getelementptr i8, ptr %scontextp.0169, i32 %call2
  %cat = getelementptr [2 x %struct.mls_level], ptr %range, i32 0, i32 %l.0170, i32 1
  %11 = ptrtoint ptr %cat to i32
  call void @__asan_load4_noabort(i32 %11)
  %storemerge8.i = load ptr, ptr %cat, align 4
  %tobool.not9.i = icmp eq ptr %storemerge8.i, null
  br i1 %tobool.not9.i, label %for.body.for.end.i_crit_edge, label %for.body.for.body.i_crit_edge

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.for.end.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %node.0 = phi ptr [ %storemerge.i, %for.inc.i.for.body.i_crit_edge ], [ %storemerge8.i, %for.body.for.body.i_crit_edge ]
  %maps.i = getelementptr inbounds %struct.ebitmap_node, ptr %node.0, i32 0, i32 1
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef %maps.i, i32 noundef 192) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %call.i)
  %cmp.i = icmp ult i32 %call.i, 192
  br i1 %cmp.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %startbit.i = getelementptr inbounds %struct.ebitmap_node, ptr %node.0, i32 0, i32 2
  %12 = ptrtoint ptr %startbit.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %startbit.i, align 4
  %add.i = add i32 %13, %call.i
  br label %ebitmap_start_positive.exit

for.inc.i:                                        ; preds = %for.body.i
  %14 = ptrtoint ptr %node.0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %storemerge.i = load ptr, ptr %node.0, align 4
  %tobool.not.i = icmp eq ptr %storemerge.i, null
  br i1 %tobool.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.for.end.i_crit_edge
  %highbit.i = getelementptr [2 x %struct.mls_level], ptr %range, i32 0, i32 %l.0170, i32 1, i32 1
  %15 = ptrtoint ptr %highbit.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %highbit.i, align 4
  br label %ebitmap_start_positive.exit

ebitmap_start_positive.exit:                      ; preds = %for.end.i, %if.then.i
  %node.2 = phi ptr [ null, %for.end.i ], [ %node.0, %if.then.i ]
  %retval.0.i = phi i32 [ %16, %for.end.i ], [ %add.i, %if.then.i ]
  %highbit = getelementptr [2 x %struct.mls_level], ptr %range, i32 0, i32 %l.0170, i32 1, i32 1
  %17 = ptrtoint ptr %highbit to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %highbit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %18)
  %cmp8160 = icmp ult i32 %retval.0.i, %18
  br i1 %cmp8160, label %ebitmap_start_positive.exit.for.body9_crit_edge, label %ebitmap_start_positive.exit.if.end51_crit_edge

ebitmap_start_positive.exit.if.end51_crit_edge:   ; preds = %ebitmap_start_positive.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

ebitmap_start_positive.exit.for.body9_crit_edge:  ; preds = %ebitmap_start_positive.exit
  br label %for.body9

for.body9:                                        ; preds = %ebitmap_next_positive.exit.for.body9_crit_edge, %ebitmap_start_positive.exit.for.body9_crit_edge
  %prev.0165 = phi i32 [ %i.0163, %ebitmap_next_positive.exit.for.body9_crit_edge ], [ -2, %ebitmap_start_positive.exit.for.body9_crit_edge ]
  %head.0164 = phi i32 [ %head.1, %ebitmap_next_positive.exit.for.body9_crit_edge ], [ -2, %ebitmap_start_positive.exit.for.body9_crit_edge ]
  %i.0163 = phi i32 [ %retval.0.i147, %ebitmap_next_positive.exit.for.body9_crit_edge ], [ %retval.0.i, %ebitmap_start_positive.exit.for.body9_crit_edge ]
  %scontextp.1162 = phi ptr [ %scontextp.5, %ebitmap_next_positive.exit.for.body9_crit_edge ], [ %add.ptr, %ebitmap_start_positive.exit.for.body9_crit_edge ]
  %node.3161 = phi ptr [ %node.5, %ebitmap_next_positive.exit.for.body9_crit_edge ], [ %node.2, %ebitmap_start_positive.exit.for.body9_crit_edge ]
  %sub10 = sub i32 %i.0163, %prev.0165
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub10)
  %cmp11 = icmp sgt i32 %sub10, 1
  br i1 %cmp11, label %if.then12, label %for.body9.if.end36_crit_edge

for.body9.if.end36_crit_edge:                     ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then12:                                        ; preds = %for.body9
  call void @__sanitizer_cov_trace_cmp4(i32 %prev.0165, i32 %head.0164)
  %cmp13.not = icmp eq i32 %prev.0165, %head.0164
  br i1 %cmp13.not, label %if.then12.if.end25_crit_edge, label %if.then14

if.then12.if.end25_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then14:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %sub15 = sub i32 %prev.0165, %head.0164
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub15)
  %cmp16 = icmp sgt i32 %sub15, 1
  %. = select i1 %cmp16, i8 46, i8 44
  %scontextp.2 = getelementptr i8, ptr %scontextp.1162, i32 1
  %19 = ptrtoint ptr %scontextp.1162 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %., ptr %scontextp.1162, align 1
  %20 = ptrtoint ptr %arrayidx.i132 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i132, align 4
  %arrayidx1.i133 = getelementptr ptr, ptr %21, i32 %prev.0165
  %22 = ptrtoint ptr %arrayidx1.i133 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx1.i133, align 4
  %call22 = tail call ptr @strcpy(ptr noundef %scontextp.2, ptr noundef %23) #11
  %call23 = tail call i32 @strlen(ptr noundef %23) #11
  %add.ptr24 = getelementptr i8, ptr %scontextp.2, i32 %call23
  br label %if.end25

if.end25:                                         ; preds = %if.then14, %if.then12.if.end25_crit_edge
  %scontextp.3 = phi ptr [ %add.ptr24, %if.then14 ], [ %scontextp.1162, %if.then12.if.end25_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %prev.0165)
  %cmp26 = icmp slt i32 %prev.0165, 0
  %.130 = select i1 %cmp26, i8 58, i8 44
  %scontextp.4 = getelementptr i8, ptr %scontextp.3, i32 1
  %24 = ptrtoint ptr %scontextp.3 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %.130, ptr %scontextp.3, align 1
  %25 = ptrtoint ptr %arrayidx.i132 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i132, align 4
  %arrayidx1.i135 = getelementptr ptr, ptr %26, i32 %i.0163
  %27 = ptrtoint ptr %arrayidx1.i135 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx1.i135, align 4
  %call33 = tail call ptr @strcpy(ptr noundef %scontextp.4, ptr noundef %28) #11
  %call34 = tail call i32 @strlen(ptr noundef %28) #11
  %add.ptr35 = getelementptr i8, ptr %scontextp.4, i32 %call34
  br label %if.end36

if.end36:                                         ; preds = %if.end25, %for.body9.if.end36_crit_edge
  %scontextp.5 = phi ptr [ %add.ptr35, %if.end25 ], [ %scontextp.1162, %for.body9.if.end36_crit_edge ]
  %head.1 = phi i32 [ %i.0163, %if.end25 ], [ %head.0164, %for.body9.if.end36_crit_edge ]
  %maps.i136 = getelementptr inbounds %struct.ebitmap_node, ptr %node.3161, i32 0, i32 1
  %startbit.i137 = getelementptr inbounds %struct.ebitmap_node, ptr %node.3161, i32 0, i32 2
  %29 = ptrtoint ptr %startbit.i137 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %startbit.i137, align 4
  %sub.i = add nuw i32 %i.0163, 1
  %add.i138 = sub i32 %sub.i, %30
  %call.i139 = tail call i32 @_find_next_bit_be(ptr noundef %maps.i136, i32 noundef 192, i32 noundef %add.i138) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %call.i139)
  %cmp.i140 = icmp ult i32 %call.i139, 192
  br i1 %cmp.i140, label %if.then.i141, label %if.end36.for.cond.i_crit_edge

if.end36.for.cond.i_crit_edge:                    ; preds = %if.end36
  br label %for.cond.i

if.then.i141:                                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %startbit.i137 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %startbit.i137, align 4
  %add2.i = add i32 %32, %call.i139
  br label %ebitmap_next_positive.exit

for.cond.i:                                       ; preds = %for.body.i144.for.cond.i_crit_edge, %if.end36.for.cond.i_crit_edge
  %node.4 = phi ptr [ %storemerge.i142, %for.body.i144.for.cond.i_crit_edge ], [ %node.3161, %if.end36.for.cond.i_crit_edge ]
  %33 = ptrtoint ptr %node.4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %storemerge.i142 = load ptr, ptr %node.4, align 4
  %tobool.not.i143 = icmp eq ptr %storemerge.i142, null
  br i1 %tobool.not.i143, label %for.end.i146, label %for.body.i144

for.body.i144:                                    ; preds = %for.cond.i
  %maps3.i = getelementptr inbounds %struct.ebitmap_node, ptr %storemerge.i142, i32 0, i32 1
  %call5.i = tail call i32 @_find_first_bit_be(ptr noundef %maps3.i, i32 noundef 192) #8
  %cmp6.i = icmp ult i32 %call5.i, 192
  br i1 %cmp6.i, label %if.then7.i, label %for.body.i144.for.cond.i_crit_edge

for.body.i144.for.cond.i_crit_edge:               ; preds = %for.body.i144
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

if.then7.i:                                       ; preds = %for.body.i144
  call void @__sanitizer_cov_trace_pc() #10
  %startbit8.i = getelementptr inbounds %struct.ebitmap_node, ptr %storemerge.i142, i32 0, i32 2
  %34 = ptrtoint ptr %startbit8.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %startbit8.i, align 4
  %add9.i = add i32 %35, %call5.i
  br label %ebitmap_next_positive.exit

for.end.i146:                                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %highbit to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %highbit, align 4
  br label %ebitmap_next_positive.exit

ebitmap_next_positive.exit:                       ; preds = %for.end.i146, %if.then7.i, %if.then.i141
  %node.5 = phi ptr [ %node.3161, %if.then.i141 ], [ null, %for.end.i146 ], [ %storemerge.i142, %if.then7.i ]
  %retval.0.i147 = phi i32 [ %add2.i, %if.then.i141 ], [ %37, %for.end.i146 ], [ %add9.i, %if.then7.i ]
  %38 = ptrtoint ptr %highbit to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %highbit, align 4
  %cmp8 = icmp ult i32 %retval.0.i147, %39
  br i1 %cmp8, label %ebitmap_next_positive.exit.for.body9_crit_edge, label %for.end

ebitmap_next_positive.exit.for.body9_crit_edge:   ; preds = %ebitmap_next_positive.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body9

for.end:                                          ; preds = %ebitmap_next_positive.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0163, i32 %head.1)
  %cmp38.not = icmp eq i32 %i.0163, %head.1
  br i1 %cmp38.not, label %for.end.if.end51_crit_edge, label %if.then39

for.end.if.end51_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then39:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %sub40 = sub i32 %i.0163, %head.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub40)
  %cmp41 = icmp sgt i32 %sub40, 1
  %.131 = select i1 %cmp41, i8 46, i8 44
  %scontextp.6 = getelementptr i8, ptr %scontextp.5, i32 1
  %40 = ptrtoint ptr %scontextp.5 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %.131, ptr %scontextp.5, align 1
  %41 = ptrtoint ptr %arrayidx.i132 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i132, align 4
  %arrayidx1.i149 = getelementptr ptr, ptr %42, i32 %i.0163
  %43 = ptrtoint ptr %arrayidx1.i149 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx1.i149, align 4
  %call48 = tail call ptr @strcpy(ptr noundef %scontextp.6, ptr noundef %44) #11
  %call49 = tail call i32 @strlen(ptr noundef %44) #11
  %add.ptr50 = getelementptr i8, ptr %scontextp.6, i32 %call49
  br label %if.end51

if.end51:                                         ; preds = %if.then39, %for.end.if.end51_crit_edge, %ebitmap_start_positive.exit.if.end51_crit_edge
  %scontextp.7 = phi ptr [ %add.ptr50, %if.then39 ], [ %scontextp.5, %for.end.if.end51_crit_edge ], [ %add.ptr, %ebitmap_start_positive.exit.if.end51_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %l.0170)
  %cmp52 = icmp eq i32 %l.0170, 0
  br i1 %cmp52, label %if.then53, label %if.end51.for.inc67_crit_edge

if.end51.for.inc67_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc67

if.then53:                                        ; preds = %if.end51
  %45 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %range, align 4
  %47 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx59, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %48)
  %cmp.i150 = icmp eq i32 %46, %48
  br i1 %cmp.i150, label %mls_level_eq.exit, label %if.then53.if.else63_crit_edge

if.then53.if.else63_crit_edge:                    ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else63

mls_level_eq.exit:                                ; preds = %if.then53
  %call.i151 = tail call i32 @ebitmap_cmp(ptr noundef %cat.i, ptr noundef %cat2.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i151)
  %tobool.i.not = icmp eq i32 %call.i151, 0
  br i1 %tobool.i.not, label %mls_level_eq.exit.if.else63_crit_edge, label %mls_level_eq.exit.for.end68_crit_edge

mls_level_eq.exit.for.end68_crit_edge:            ; preds = %mls_level_eq.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end68

mls_level_eq.exit.if.else63_crit_edge:            ; preds = %mls_level_eq.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else63

if.else63:                                        ; preds = %mls_level_eq.exit.if.else63_crit_edge, %if.then53.if.else63_crit_edge
  %incdec.ptr64 = getelementptr i8, ptr %scontextp.7, i32 1
  %49 = ptrtoint ptr %scontextp.7 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 45, ptr %scontextp.7, align 1
  br label %for.inc67

for.inc67:                                        ; preds = %if.else63, %if.end51.for.inc67_crit_edge
  %scontextp.8 = phi ptr [ %incdec.ptr64, %if.else63 ], [ %scontextp.7, %if.end51.for.inc67_crit_edge ]
  %inc = add nuw nsw i32 %l.0170, 1
  %exitcond.not = icmp eq i32 %inc, 2
  br i1 %exitcond.not, label %for.inc67.for.end68_crit_edge, label %for.inc67.for.body_crit_edge

for.inc67.for.body_crit_edge:                     ; preds = %for.inc67
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc67.for.end68_crit_edge:                    ; preds = %for.inc67
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end68

for.end68:                                        ; preds = %for.inc67.for.end68_crit_edge, %mls_level_eq.exit.for.end68_crit_edge
  %scontextp.9 = phi ptr [ %scontextp.7, %mls_level_eq.exit.for.end68_crit_edge ], [ %scontextp.8, %for.inc67.for.end68_crit_edge ]
  %50 = ptrtoint ptr %scontext to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %scontextp.9, ptr %scontext, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end68, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mls_level_isvalid(ptr noundef %p, ptr noundef %l) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %l, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %nprim = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 6, i32 1
  %2 = ptrtoint ptr %nprim to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nprim, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ugt i32 %1, %3
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %arrayidx = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 6
  %sub = add i32 %1, -1
  %arrayidx.i = getelementptr %struct.policydb, ptr %p, i32 0, i32 2, i32 6
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr ptr, ptr %5, i32 %sub
  %6 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx1.i, align 4
  %call5 = tail call ptr @symtab_search(ptr noundef %arrayidx, ptr noundef %7) #8
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call5, align 4
  %cat = getelementptr inbounds %struct.mls_level, ptr %9, i32 0, i32 1
  %cat9 = getelementptr inbounds %struct.mls_level, ptr %l, i32 0, i32 1
  %nprim12 = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 7, i32 1
  %10 = ptrtoint ptr %nprim12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nprim12, align 4
  %call13 = tail call i32 @ebitmap_contains(ptr noundef %cat, ptr noundef %cat9, i32 noundef %11) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end8 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @symtab_search(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ebitmap_contains(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mls_range_isvalid(ptr noundef %p, ptr noundef %r) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %r, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.land.end_crit_edge, label %lor.lhs.false.i

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

lor.lhs.false.i:                                  ; preds = %entry
  %nprim.i = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 6, i32 1
  %2 = ptrtoint ptr %nprim.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nprim.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.i = icmp ugt i32 %1, %3
  br i1 %cmp.i, label %lor.lhs.false.i.land.end_crit_edge, label %if.end.i

lor.lhs.false.i.land.end_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

if.end.i:                                         ; preds = %lor.lhs.false.i
  %arrayidx.i = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 6
  %sub.i = add i32 %1, -1
  %arrayidx.i.i = getelementptr %struct.policydb, ptr %p, i32 0, i32 2, i32 6
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %arrayidx1.i.i = getelementptr ptr, ptr %5, i32 %sub.i
  %6 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx1.i.i, align 4
  %call5.i = tail call ptr @symtab_search(ptr noundef %arrayidx.i, ptr noundef %7) #8
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %if.end.i.land.end_crit_edge, label %mls_level_isvalid.exit

if.end.i.land.end_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

mls_level_isvalid.exit:                           ; preds = %if.end.i
  %8 = ptrtoint ptr %call5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call5.i, align 4
  %cat.i = getelementptr inbounds %struct.mls_level, ptr %9, i32 0, i32 1
  %cat9.i = getelementptr inbounds %struct.mls_level, ptr %r, i32 0, i32 1
  %nprim12.i = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 7, i32 1
  %10 = ptrtoint ptr %nprim12.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nprim12.i, align 4
  %call13.i = tail call i32 @ebitmap_contains(ptr noundef %cat.i, ptr noundef %cat9.i, i32 noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool.not = icmp eq i32 %call13.i, 0
  br i1 %tobool.not, label %mls_level_isvalid.exit.land.end_crit_edge, label %land.lhs.true

mls_level_isvalid.exit.land.end_crit_edge:        ; preds = %mls_level_isvalid.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true:                                    ; preds = %mls_level_isvalid.exit
  %arrayidx2 = getelementptr [2 x %struct.mls_level], ptr %r, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i15 = icmp eq i32 %13, 0
  br i1 %tobool.not.i15, label %land.lhs.true.land.end_crit_edge, label %lor.lhs.false.i18

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

lor.lhs.false.i18:                                ; preds = %land.lhs.true
  %14 = ptrtoint ptr %nprim.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nprim.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp.i17 = icmp ugt i32 %13, %15
  br i1 %cmp.i17, label %lor.lhs.false.i18.land.end_crit_edge, label %if.end.i25

lor.lhs.false.i18.land.end_crit_edge:             ; preds = %lor.lhs.false.i18
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

if.end.i25:                                       ; preds = %lor.lhs.false.i18
  %sub.i20 = add i32 %13, -1
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i, align 4
  %arrayidx1.i.i22 = getelementptr ptr, ptr %17, i32 %sub.i20
  %18 = ptrtoint ptr %arrayidx1.i.i22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx1.i.i22, align 4
  %call5.i23 = tail call ptr @symtab_search(ptr noundef %arrayidx.i, ptr noundef %19) #8
  %tobool6.not.i24 = icmp eq ptr %call5.i23, null
  br i1 %tobool6.not.i24, label %if.end.i25.land.end_crit_edge, label %mls_level_isvalid.exit32

if.end.i25.land.end_crit_edge:                    ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

mls_level_isvalid.exit32:                         ; preds = %if.end.i25
  %20 = ptrtoint ptr %call5.i23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call5.i23, align 4
  %cat.i26 = getelementptr inbounds %struct.mls_level, ptr %21, i32 0, i32 1
  %cat9.i27 = getelementptr [2 x %struct.mls_level], ptr %r, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %nprim12.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nprim12.i, align 4
  %call13.i29 = tail call i32 @ebitmap_contains(ptr noundef %cat.i26, ptr noundef %cat9.i27, i32 noundef %23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i29)
  %tobool4.not = icmp eq i32 %call13.i29, 0
  br i1 %tobool4.not, label %mls_level_isvalid.exit32.land.end_crit_edge, label %land.rhs

mls_level_isvalid.exit32.land.end_crit_edge:      ; preds = %mls_level_isvalid.exit32
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %mls_level_isvalid.exit32
  %24 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx2, align 4
  %26 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %r, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp.not.i = icmp ult i32 %25, %27
  br i1 %cmp.not.i, label %land.rhs.land.end_crit_edge, label %land.rhs.i

land.rhs.land.end_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs.i:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @ebitmap_contains(ptr noundef %cat9.i27, ptr noundef %cat9.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i = icmp ne i32 %call.i, 0
  %phi.cast38 = zext i1 %tobool.i to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs.i, %land.rhs.land.end_crit_edge, %mls_level_isvalid.exit32.land.end_crit_edge, %if.end.i25.land.end_crit_edge, %lor.lhs.false.i18.land.end_crit_edge, %land.lhs.true.land.end_crit_edge, %mls_level_isvalid.exit.land.end_crit_edge, %if.end.i.land.end_crit_edge, %lor.lhs.false.i.land.end_crit_edge, %entry.land.end_crit_edge
  %28 = phi i32 [ 0, %mls_level_isvalid.exit32.land.end_crit_edge ], [ 0, %mls_level_isvalid.exit.land.end_crit_edge ], [ 0, %lor.lhs.false.i.land.end_crit_edge ], [ 0, %entry.land.end_crit_edge ], [ 0, %if.end.i.land.end_crit_edge ], [ 0, %lor.lhs.false.i18.land.end_crit_edge ], [ 0, %land.lhs.true.land.end_crit_edge ], [ 0, %if.end.i25.land.end_crit_edge ], [ 0, %land.rhs.land.end_crit_edge ], [ %phi.cast38, %land.rhs.i ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mls_context_isvalid(ptr noundef %p, ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %range = getelementptr inbounds %struct.context, ptr %c, i32 0, i32 4
  %call = tail call i32 @mls_range_isvalid(ptr noundef %p, ptr noundef %range)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %role = getelementptr inbounds %struct.context, ptr %c, i32 0, i32 1
  %2 = ptrtoint ptr %role to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %role, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.end3.cleanup_crit_edge, label %if.end5

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end3
  %4 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %c, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6.not = icmp eq i32 %5, 0
  br i1 %tobool6.not, label %if.end5.cleanup_crit_edge, label %lor.lhs.false

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end5
  %nprim = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 4, i32 1
  %6 = ptrtoint ptr %nprim to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nprim, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp8 = icmp ugt i32 %5, %7
  br i1 %cmp8, label %lor.lhs.false.cleanup_crit_edge, label %if.end10

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  %user_val_to_struct = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 5
  %8 = ptrtoint ptr %user_val_to_struct to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %user_val_to_struct, align 4
  %sub = add i32 %5, -1
  %arrayidx12 = getelementptr ptr, ptr %9, i32 %sub
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx12, align 4
  %range15 = getelementptr inbounds %struct.user_datum, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %range, align 4
  %14 = ptrtoint ptr %range15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %range15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp.not.i = icmp ult i32 %13, %15
  br i1 %cmp.not.i, label %if.end10.cleanup_crit_edge, label %mls_level_dom.exit

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

mls_level_dom.exit:                               ; preds = %if.end10
  %cat.i = getelementptr inbounds %struct.context, ptr %c, i32 0, i32 4, i32 0, i32 0, i32 1
  %cat2.i = getelementptr inbounds %struct.user_datum, ptr %11, i32 0, i32 3, i32 0, i32 0, i32 1
  %call.i = tail call i32 @ebitmap_contains(ptr noundef %cat.i, ptr noundef %cat2.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i.not = icmp eq i32 %call.i, 0
  br i1 %tobool.i.not, label %mls_level_dom.exit.cleanup_crit_edge, label %land.lhs.true

mls_level_dom.exit.cleanup_crit_edge:             ; preds = %mls_level_dom.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %mls_level_dom.exit
  %arrayidx22 = getelementptr %struct.user_datum, ptr %11, i32 0, i32 3, i32 0, i32 1
  %arrayidx25 = getelementptr %struct.context, ptr %c, i32 0, i32 4, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx22, align 4
  %18 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx25, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp.not.i40 = icmp ult i32 %17, %19
  br i1 %cmp.not.i40, label %land.lhs.true.mls_level_dom.exit47.thread_crit_edge, label %mls_level_dom.exit47

land.lhs.true.mls_level_dom.exit47.thread_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %mls_level_dom.exit47.thread

mls_level_dom.exit47:                             ; preds = %land.lhs.true
  %cat.i41 = getelementptr %struct.user_datum, ptr %11, i32 0, i32 3, i32 0, i32 1, i32 1
  %cat2.i42 = getelementptr %struct.context, ptr %c, i32 0, i32 4, i32 0, i32 1, i32 1
  %call.i43 = tail call i32 @ebitmap_contains(ptr noundef %cat.i41, ptr noundef %cat2.i42, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43)
  %tobool.i44.not = icmp eq i32 %call.i43, 0
  br i1 %tobool.i44.not, label %mls_level_dom.exit47.mls_level_dom.exit47.thread_crit_edge, label %mls_level_dom.exit47.cleanup_crit_edge

mls_level_dom.exit47.cleanup_crit_edge:           ; preds = %mls_level_dom.exit47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

mls_level_dom.exit47.mls_level_dom.exit47.thread_crit_edge: ; preds = %mls_level_dom.exit47
  call void @__sanitizer_cov_trace_pc() #10
  br label %mls_level_dom.exit47.thread

mls_level_dom.exit47.thread:                      ; preds = %mls_level_dom.exit47.mls_level_dom.exit47.thread_crit_edge, %land.lhs.true.mls_level_dom.exit47.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %mls_level_dom.exit47.thread, %mls_level_dom.exit47.cleanup_crit_edge, %mls_level_dom.exit.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.end3.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ 0, %mls_level_dom.exit.cleanup_crit_edge ], [ 0, %mls_level_dom.exit47.thread ], [ 1, %mls_level_dom.exit47.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mls_context_to_sid(ptr noundef %pol, i8 noundef zeroext %oldc, ptr noundef %scontext, ptr noundef %context, ptr noundef %s, i32 noundef %def_sid) local_unnamed_addr #0 align 64 {
entry:
  %rangep = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rangep) #8
  %0 = getelementptr inbounds [2 x ptr], ptr %rangep, i32 0, i32 1
  %1 = ptrtoint ptr %pol to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pol, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %oldc)
  %tobool1.not = icmp ne i8 %oldc, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %def_sid)
  %cmp = icmp eq i32 %def_sid, 0
  %or.cond = and i1 %tobool1.not, %cmp
  %spec.select = select i1 %or.cond, i32 -22, i32 0
  br label %cleanup130

if.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %oldc)
  %tobool5.not = icmp eq i8 %oldc, 0
  br i1 %tobool5.not, label %if.then6, label %if.end15

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %def_sid)
  %cmp7 = icmp eq i32 %def_sid, 0
  br i1 %cmp7, label %if.then6.cleanup130_crit_edge, label %if.end10

if.then6.cleanup130_crit_edge:                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup130

if.end10:                                         ; preds = %if.then6
  %call.i = tail call ptr @sidtab_search_entry(ptr noundef %s, i32 noundef %def_sid) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  %context.i = getelementptr inbounds %struct.sidtab_entry, ptr %call.i, i32 0, i32 2
  %tobool11.not189 = icmp eq ptr %context.i, null
  %tobool11.not = select i1 %tobool.not.i, i1 true, i1 %tobool11.not189
  br i1 %tobool11.not, label %if.end10.cleanup130_crit_edge, label %if.end13

if.end10.cleanup130_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup130

if.end13:                                         ; preds = %if.end10
  %range.i = getelementptr inbounds %struct.sidtab_entry, ptr %call.i, i32 0, i32 2, i32 4
  %3 = ptrtoint ptr %range.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %range.i, align 4
  %range1.i = getelementptr inbounds %struct.context, ptr %context, i32 0, i32 4
  %5 = ptrtoint ptr %range1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %range1.i, align 4
  %cat.i = getelementptr inbounds %struct.context, ptr %context, i32 0, i32 4, i32 0, i32 0, i32 1
  %cat11.i = getelementptr inbounds %struct.sidtab_entry, ptr %call.i, i32 0, i32 2, i32 4, i32 0, i32 0, i32 1
  %call.i187 = tail call i32 @ebitmap_cpy(ptr noundef %cat.i, ptr noundef %cat11.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i187)
  %tobool.not.i188 = icmp eq i32 %call.i187, 0
  br i1 %tobool.not.i188, label %if.end.i, label %if.end13.cleanup130_crit_edge

if.end13.cleanup130_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup130

if.end.i:                                         ; preds = %if.end13
  %arrayidx14.i = getelementptr %struct.sidtab_entry, ptr %call.i, i32 0, i32 2, i32 4, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx14.i, align 4
  %arrayidx18.i = getelementptr %struct.context, ptr %context, i32 0, i32 4, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx18.i, align 4
  %cat23.i = getelementptr %struct.context, ptr %context, i32 0, i32 4, i32 0, i32 1, i32 1
  %cat27.i = getelementptr %struct.sidtab_entry, ptr %call.i, i32 0, i32 2, i32 4, i32 0, i32 1, i32 1
  %call28.i = tail call i32 @ebitmap_cpy(ptr noundef %cat23.i, ptr noundef %cat27.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.end.i.cleanup130_crit_edge, label %if.then30.i

if.end.i.cleanup130_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup130

if.then30.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ebitmap_destroy(ptr noundef %cat.i) #8
  br label %cleanup130

if.end15:                                         ; preds = %if.end4
  %9 = ptrtoint ptr %rangep to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %scontext, ptr %rangep, align 4
  %call16 = tail call ptr @strchr(ptr noundef %scontext, i32 noundef 45)
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call16, ptr %0, align 4
  %tobool19.not = icmp eq ptr %call16, null
  br i1 %tobool19.not, label %if.end15.if.end24_crit_edge, label %if.then20

if.end15.if.end24_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %call16 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %call16, align 1
  %incdec.ptr = getelementptr i8, ptr %call16, i32 1
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %incdec.ptr, ptr %0, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %if.end15.if.end24_crit_edge
  %arrayidx37 = getelementptr %struct.policydb, ptr %pol, i32 0, i32 1, i32 6
  %range = getelementptr inbounds %struct.context, ptr %context, i32 0, i32 4
  %arrayidx60 = getelementptr %struct.policydb, ptr %pol, i32 0, i32 1, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc102.for.body_crit_edge, %if.end24
  %l.0196 = phi i32 [ 0, %if.end24 ], [ %inc103, %for.inc102.for.body_crit_edge ]
  %arrayidx27 = getelementptr [2 x ptr], ptr %rangep, i32 0, i32 %l.0196
  %13 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx27, align 4
  %cmp28 = icmp eq ptr %14, null
  br i1 %cmp28, label %for.body.for.end104_crit_edge, label %if.end31

for.body.for.end104_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end104

if.end31:                                         ; preds = %for.body
  %call32 = tail call ptr @strchr(ptr noundef nonnull %14, i32 noundef 58)
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %if.end31.if.end36_crit_edge, label %if.then34

if.end31.if.end36_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr35 = getelementptr i8, ptr %call32, i32 1
  %15 = ptrtoint ptr %call32 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %call32, align 1
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end31.if.end36_crit_edge
  %next_cat.0 = phi ptr [ %incdec.ptr35, %if.then34 ], [ null, %if.end31.if.end36_crit_edge ]
  %call38 = tail call ptr @symtab_search(ptr noundef %arrayidx37, ptr noundef nonnull %14) #8
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %if.end36.cleanup130_crit_edge, label %if.end41

if.end36.cleanup130_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup130

if.end41:                                         ; preds = %if.end36
  %16 = ptrtoint ptr %call38 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call38, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %arrayidx43 = getelementptr [2 x %struct.mls_level], ptr %range, i32 0, i32 %l.0196
  %20 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx43, align 4
  %cmp45.not194 = icmp eq ptr %next_cat.0, null
  br i1 %cmp45.not194, label %if.end41.for.inc102_crit_edge, label %while.body.lr.ph

if.end41.for.inc102_crit_edge:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc102

while.body.lr.ph:                                 ; preds = %if.end41
  %cat = getelementptr [2 x %struct.mls_level], ptr %range, i32 0, i32 %l.0196, i32 1
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %next_cat.1195 = phi ptr [ %next_cat.0, %while.body.lr.ph ], [ %next_cat.2, %while.cond.backedge.while.body_crit_edge ]
  %call47 = tail call ptr @strchr(ptr noundef nonnull %next_cat.1195, i32 noundef 44)
  %cmp48.not = icmp eq ptr %call47, null
  br i1 %cmp48.not, label %while.body.if.end52_crit_edge, label %if.then50

while.body.if.end52_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then50:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr51 = getelementptr i8, ptr %call47, i32 1
  %21 = ptrtoint ptr %call47 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %call47, align 1
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %while.body.if.end52_crit_edge
  %next_cat.2 = phi ptr [ %incdec.ptr51, %if.then50 ], [ null, %while.body.if.end52_crit_edge ]
  %call53 = tail call ptr @strchr(ptr noundef nonnull %next_cat.1195, i32 noundef 46)
  %cmp54.not = icmp eq ptr %call53, null
  br i1 %cmp54.not, label %if.end52.if.end58_crit_edge, label %if.then56

if.end52.if.end58_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then56:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr57 = getelementptr i8, ptr %call53, i32 1
  %22 = ptrtoint ptr %call53 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %call53, align 1
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %if.end52.if.end58_crit_edge
  %rngptr.0 = phi ptr [ %incdec.ptr57, %if.then56 ], [ null, %if.end52.if.end58_crit_edge ]
  %call61 = tail call ptr @symtab_search(ptr noundef %arrayidx60, ptr noundef nonnull %next_cat.1195) #8
  %tobool62.not = icmp eq ptr %call61, null
  br i1 %tobool62.not, label %if.end58.cleanup130_crit_edge, label %if.end64

if.end58.cleanup130_crit_edge:                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup130

if.end64:                                         ; preds = %if.end58
  %23 = ptrtoint ptr %call61 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %call61, align 4
  %sub = add i32 %24, -1
  %call68 = tail call i32 @ebitmap_set_bit(ptr noundef %cat, i32 noundef %sub, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %if.end64.cleanup130_crit_edge

if.end64.cleanup130_crit_edge:                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup130

if.end71:                                         ; preds = %if.end64
  %cmp72 = icmp eq ptr %rngptr.0, null
  br i1 %cmp72, label %if.end71.while.cond.backedge_crit_edge, label %if.end75

if.end71.while.cond.backedge_crit_edge:           ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %for.cond89.while.cond.backedge_crit_edge, %for.cond89.preheader.while.cond.backedge_crit_edge, %if.end71.while.cond.backedge_crit_edge
  %cmp45.not = icmp eq ptr %next_cat.2, null
  br i1 %cmp45.not, label %while.cond.backedge.for.inc102_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.cond.backedge.for.inc102_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc102

if.end75:                                         ; preds = %if.end71
  %call78 = tail call ptr @symtab_search(ptr noundef %arrayidx60, ptr noundef nonnull %rngptr.0) #8
  %tobool79.not = icmp eq ptr %call78, null
  br i1 %tobool79.not, label %if.end75.cleanup130_crit_edge, label %if.end81

if.end75.cleanup130_crit_edge:                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup130

if.end81:                                         ; preds = %if.end75
  %25 = ptrtoint ptr %call61 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %call61, align 4
  %27 = ptrtoint ptr %call78 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %call78, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp84.not = icmp ult i32 %26, %28
  br i1 %cmp84.not, label %for.cond89.preheader, label %if.end81.cleanup130_crit_edge

if.end81.cleanup130_crit_edge:                    ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup130

for.cond89.preheader:                             ; preds = %if.end81
  %29 = ptrtoint ptr %call78 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call78, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %30)
  %cmp91192 = icmp ult i32 %26, %30
  br i1 %cmp91192, label %for.cond89.preheader.for.body93_crit_edge, label %for.cond89.preheader.while.cond.backedge_crit_edge

for.cond89.preheader.while.cond.backedge_crit_edge: ; preds = %for.cond89.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

for.cond89.preheader.for.body93_crit_edge:        ; preds = %for.cond89.preheader
  br label %for.body93

for.cond89:                                       ; preds = %for.body93
  %inc = add nuw i32 %i.0193, 1
  %31 = ptrtoint ptr %call78 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %call78, align 4
  %cmp91 = icmp ult i32 %inc, %32
  br i1 %cmp91, label %for.cond89.for.body93_crit_edge, label %for.cond89.while.cond.backedge_crit_edge

for.cond89.while.cond.backedge_crit_edge:         ; preds = %for.cond89
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

for.cond89.for.body93_crit_edge:                  ; preds = %for.cond89
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body93

for.body93:                                       ; preds = %for.cond89.for.body93_crit_edge, %for.cond89.preheader.for.body93_crit_edge
  %i.0193 = phi i32 [ %inc, %for.cond89.for.body93_crit_edge ], [ %26, %for.cond89.preheader.for.body93_crit_edge ]
  %call98 = tail call i32 @ebitmap_set_bit(ptr noundef %cat, i32 noundef %i.0193, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %for.cond89, label %for.body93.cleanup130_crit_edge

for.body93.cleanup130_crit_edge:                  ; preds = %for.body93
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup130

for.inc102:                                       ; preds = %while.cond.backedge.for.inc102_crit_edge, %if.end41.for.inc102_crit_edge
  %inc103 = add nuw nsw i32 %l.0196, 1
  %exitcond.not = icmp eq i32 %inc103, 2
  br i1 %exitcond.not, label %for.inc102.for.end104_crit_edge, label %for.inc102.for.body_crit_edge

for.inc102.for.body_crit_edge:                    ; preds = %for.inc102
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc102.for.end104_crit_edge:                  ; preds = %for.inc102
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end104

for.end104:                                       ; preds = %for.inc102.for.end104_crit_edge, %for.body.for.end104_crit_edge
  %33 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %0, align 4
  %cmp106 = icmp eq ptr %34, null
  br i1 %cmp106, label %if.then108, label %for.end104.if.end129_crit_edge

for.end104.if.end129_crit_edge:                   ; preds = %for.end104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end129

if.then108:                                       ; preds = %for.end104
  %35 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %range, align 4
  %arrayidx115 = getelementptr %struct.context, ptr %context, i32 0, i32 4, i32 0, i32 1
  %37 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx115, align 4
  %cat120 = getelementptr %struct.context, ptr %context, i32 0, i32 4, i32 0, i32 1, i32 1
  %cat124 = getelementptr inbounds %struct.context, ptr %context, i32 0, i32 4, i32 0, i32 0, i32 1
  %call125 = tail call i32 @ebitmap_cpy(ptr noundef %cat120, ptr noundef %cat124) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %if.then108.if.end129_crit_edge, label %if.then108.cleanup130_crit_edge

if.then108.cleanup130_crit_edge:                  ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup130

if.then108.if.end129_crit_edge:                   ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end129

if.end129:                                        ; preds = %if.then108.if.end129_crit_edge, %for.end104.if.end129_crit_edge
  br label %cleanup130

cleanup130:                                       ; preds = %if.end129, %if.then108.cleanup130_crit_edge, %for.body93.cleanup130_crit_edge, %if.end81.cleanup130_crit_edge, %if.end75.cleanup130_crit_edge, %if.end64.cleanup130_crit_edge, %if.end58.cleanup130_crit_edge, %if.end36.cleanup130_crit_edge, %if.then30.i, %if.end.i.cleanup130_crit_edge, %if.end13.cleanup130_crit_edge, %if.end10.cleanup130_crit_edge, %if.then6.cleanup130_crit_edge, %if.then
  %retval.1 = phi i32 [ 0, %if.end129 ], [ -22, %if.then6.cleanup130_crit_edge ], [ -22, %if.end10.cleanup130_crit_edge ], [ %call125, %if.then108.cleanup130_crit_edge ], [ %spec.select, %if.then ], [ %call.i187, %if.end13.cleanup130_crit_edge ], [ %call28.i, %if.then30.i ], [ 0, %if.end.i.cleanup130_crit_edge ], [ %call98, %for.body93.cleanup130_crit_edge ], [ -22, %if.end81.cleanup130_crit_edge ], [ -22, %if.end75.cleanup130_crit_edge ], [ %call68, %if.end64.cleanup130_crit_edge ], [ -22, %if.end58.cleanup130_crit_edge ], [ -22, %if.end36.cleanup130_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rangep) #8
  ret i32 %retval.1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mls_context_cpy(ptr noundef %dst, ptr noundef %src) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %range = getelementptr inbounds %struct.context, ptr %src, i32 0, i32 4
  %0 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %range, align 4
  %range1 = getelementptr inbounds %struct.context, ptr %dst, i32 0, i32 4
  %2 = ptrtoint ptr %range1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %range1, align 4
  %cat = getelementptr inbounds %struct.context, ptr %dst, i32 0, i32 4, i32 0, i32 0, i32 1
  %cat11 = getelementptr inbounds %struct.context, ptr %src, i32 0, i32 4, i32 0, i32 0, i32 1
  %call = tail call i32 @ebitmap_cpy(ptr noundef %cat, ptr noundef %cat11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %arrayidx14 = getelementptr %struct.context, ptr %src, i32 0, i32 4, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx14, align 4
  %arrayidx18 = getelementptr %struct.context, ptr %dst, i32 0, i32 4, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %arrayidx18, align 4
  %cat23 = getelementptr %struct.context, ptr %dst, i32 0, i32 4, i32 0, i32 1, i32 1
  %cat27 = getelementptr %struct.context, ptr %src, i32 0, i32 4, i32 0, i32 1, i32 1
  %call28 = tail call i32 @ebitmap_cpy(ptr noundef %cat23, ptr noundef %cat27) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end.out_crit_edge, label %if.then30

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then30:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ebitmap_destroy(ptr noundef %cat) #8
  br label %out

out:                                              ; preds = %if.then30, %if.end.out_crit_edge, %entry.out_crit_edge
  %rc.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call28, %if.then30 ], [ 0, %if.end.out_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ebitmap_set_bit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ebitmap_cpy(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mls_from_string(ptr noundef %p, ptr noundef %str, ptr noundef %context, i32 noundef %gfp_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call noalias ptr @kstrdup(ptr noundef %str, i32 noundef %gfp_mask) #8
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 @mls_context_to_sid(ptr noundef %p, i8 noundef zeroext 58, ptr noundef nonnull %call, ptr noundef %context, ptr noundef null, i32 noundef 0)
  tail call void @kfree(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call3, %if.else ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mls_range_set(ptr noundef %context, ptr noundef %range) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %range1 = getelementptr inbounds %struct.context, ptr %context, i32 0, i32 4
  %0 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %range, align 4
  %2 = ptrtoint ptr %range1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %range1, align 4
  %cat = getelementptr %struct.context, ptr %context, i32 0, i32 4, i32 0, i32 0, i32 1
  %cat10 = getelementptr [2 x %struct.mls_level], ptr %range, i32 0, i32 0, i32 1
  %call = tail call i32 @ebitmap_cpy(ptr noundef %cat, ptr noundef %cat10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.1 = getelementptr [2 x %struct.mls_level], ptr %range, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.1, align 4
  %arrayidx3.1 = getelementptr %struct.context, ptr %context, i32 0, i32 4, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %arrayidx3.1, align 4
  %cat.1 = getelementptr %struct.context, ptr %context, i32 0, i32 4, i32 0, i32 1, i32 1
  %cat10.1 = getelementptr [2 x %struct.mls_level], ptr %range, i32 0, i32 1, i32 1
  %call.1 = tail call i32 @ebitmap_cpy(ptr noundef %cat.1, ptr noundef %cat10.1) #8
  br label %for.end

for.end:                                          ; preds = %for.cond, %entry.for.end_crit_edge
  %rc.1 = phi i32 [ %call, %entry.for.end_crit_edge ], [ %call.1, %for.cond ]
  ret i32 %rc.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mls_setup_user_range(ptr nocapture noundef readonly %p, ptr noundef %fromcon, ptr noundef %user, ptr nocapture noundef writeonly %usercon) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then:                                          ; preds = %entry
  %range = getelementptr inbounds %struct.context, ptr %fromcon, i32 0, i32 4
  %arrayidx3 = getelementptr %struct.context, ptr %fromcon, i32 0, i32 4, i32 0, i32 1
  %range4 = getelementptr inbounds %struct.user_datum, ptr %user, i32 0, i32 3
  %arrayidx9 = getelementptr %struct.user_datum, ptr %user, i32 0, i32 3, i32 0, i32 1
  %dfltlevel = getelementptr inbounds %struct.user_datum, ptr %user, i32 0, i32 4
  %range10 = getelementptr inbounds %struct.context, ptr %usercon, i32 0, i32 4
  %arrayidx15 = getelementptr %struct.context, ptr %usercon, i32 0, i32 4, i32 0, i32 1
  %2 = ptrtoint ptr %dfltlevel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dfltlevel, align 4
  %4 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %range, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not.i = icmp ult i32 %3, %5
  br i1 %cmp.not.i, label %if.then.if.else_crit_edge, label %mls_level_dom.exit

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

mls_level_dom.exit:                               ; preds = %if.then
  %cat.i = getelementptr inbounds %struct.user_datum, ptr %user, i32 0, i32 4, i32 1
  %cat2.i = getelementptr inbounds %struct.context, ptr %fromcon, i32 0, i32 4, i32 0, i32 0, i32 1
  %call.i = tail call i32 @ebitmap_contains(ptr noundef %cat.i, ptr noundef %cat2.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i.not = icmp eq i32 %call.i, 0
  br i1 %tobool.i.not, label %mls_level_dom.exit.if.else_crit_edge, label %land.lhs.true

mls_level_dom.exit.if.else_crit_edge:             ; preds = %mls_level_dom.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %mls_level_dom.exit
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3, align 4
  %8 = ptrtoint ptr %dfltlevel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dfltlevel, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.not.i76 = icmp ult i32 %7, %9
  br i1 %cmp.not.i76, label %land.lhs.true.if.else_crit_edge, label %mls_level_dom.exit83

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

mls_level_dom.exit83:                             ; preds = %land.lhs.true
  %cat.i77 = getelementptr %struct.context, ptr %fromcon, i32 0, i32 4, i32 0, i32 1, i32 1
  %call.i79 = tail call i32 @ebitmap_contains(ptr noundef %cat.i77, ptr noundef %cat.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %tobool.i80.not = icmp eq i32 %call.i79, 0
  br i1 %tobool.i80.not, label %mls_level_dom.exit83.if.else_crit_edge, label %mls_level_dom.exit83.if.end35_crit_edge

mls_level_dom.exit83.if.end35_crit_edge:          ; preds = %mls_level_dom.exit83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

mls_level_dom.exit83.if.else_crit_edge:           ; preds = %mls_level_dom.exit83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.else:                                          ; preds = %mls_level_dom.exit83.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %mls_level_dom.exit.if.else_crit_edge, %if.then.if.else_crit_edge
  %10 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %range, align 4
  %12 = ptrtoint ptr %dfltlevel to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dfltlevel, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp.not.i84 = icmp ult i32 %11, %13
  br i1 %cmp.not.i84, label %if.else.if.else26_crit_edge, label %mls_level_dom.exit91

if.else.if.else26_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else26

mls_level_dom.exit91:                             ; preds = %if.else
  %cat.i85 = getelementptr inbounds %struct.context, ptr %fromcon, i32 0, i32 4, i32 0, i32 0, i32 1
  %cat2.i86 = getelementptr inbounds %struct.user_datum, ptr %user, i32 0, i32 4, i32 1
  %call.i87 = tail call i32 @ebitmap_contains(ptr noundef %cat.i85, ptr noundef %cat2.i86, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87)
  %tobool.i88.not = icmp eq i32 %call.i87, 0
  br i1 %tobool.i88.not, label %mls_level_dom.exit91.if.else26_crit_edge, label %land.lhs.true22

mls_level_dom.exit91.if.else26_crit_edge:         ; preds = %mls_level_dom.exit91
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else26

land.lhs.true22:                                  ; preds = %mls_level_dom.exit91
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx9, align 4
  %16 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %range, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp.not.i92 = icmp ult i32 %15, %17
  br i1 %cmp.not.i92, label %land.lhs.true22.if.else26_crit_edge, label %mls_level_dom.exit99

land.lhs.true22.if.else26_crit_edge:              ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else26

mls_level_dom.exit99:                             ; preds = %land.lhs.true22
  %cat.i93 = getelementptr %struct.user_datum, ptr %user, i32 0, i32 3, i32 0, i32 1, i32 1
  %call.i95 = tail call i32 @ebitmap_contains(ptr noundef %cat.i93, ptr noundef %cat.i85, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i95)
  %tobool.i96.not = icmp eq i32 %call.i95, 0
  br i1 %tobool.i96.not, label %mls_level_dom.exit99.if.else26_crit_edge, label %mls_level_dom.exit99.if.end35_crit_edge

mls_level_dom.exit99.if.end35_crit_edge:          ; preds = %mls_level_dom.exit99
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

mls_level_dom.exit99.if.else26_crit_edge:         ; preds = %mls_level_dom.exit99
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else26

if.else26:                                        ; preds = %mls_level_dom.exit99.if.else26_crit_edge, %land.lhs.true22.if.else26_crit_edge, %mls_level_dom.exit91.if.else26_crit_edge, %if.else.if.else26_crit_edge
  %18 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx3, align 4
  %20 = ptrtoint ptr %range4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %range4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp.not.i100 = icmp ult i32 %19, %21
  br i1 %cmp.not.i100, label %if.else26.return_crit_edge, label %mls_level_dom.exit107

if.else26.return_crit_edge:                       ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

mls_level_dom.exit107:                            ; preds = %if.else26
  %cat.i101 = getelementptr %struct.context, ptr %fromcon, i32 0, i32 4, i32 0, i32 1, i32 1
  %cat2.i102 = getelementptr inbounds %struct.user_datum, ptr %user, i32 0, i32 3, i32 0, i32 0, i32 1
  %call.i103 = tail call i32 @ebitmap_contains(ptr noundef %cat.i101, ptr noundef %cat2.i102, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103)
  %tobool.i104.not = icmp eq i32 %call.i103, 0
  br i1 %tobool.i104.not, label %mls_level_dom.exit107.return_crit_edge, label %land.lhs.true29

mls_level_dom.exit107.return_crit_edge:           ; preds = %mls_level_dom.exit107
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

land.lhs.true29:                                  ; preds = %mls_level_dom.exit107
  %22 = ptrtoint ptr %dfltlevel to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dfltlevel, align 4
  %24 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp.not.i108 = icmp ult i32 %23, %25
  br i1 %cmp.not.i108, label %land.lhs.true29.return_crit_edge, label %mls_level_dom.exit115

land.lhs.true29.return_crit_edge:                 ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

mls_level_dom.exit115:                            ; preds = %land.lhs.true29
  %cat.i109 = getelementptr inbounds %struct.user_datum, ptr %user, i32 0, i32 4, i32 1
  %call.i111 = tail call i32 @ebitmap_contains(ptr noundef %cat.i109, ptr noundef %cat.i101, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i111)
  %tobool.i112.not = icmp eq i32 %call.i111, 0
  br i1 %tobool.i112.not, label %mls_level_dom.exit115.return_crit_edge, label %mls_level_dom.exit115.if.end35_crit_edge

mls_level_dom.exit115.if.end35_crit_edge:         ; preds = %mls_level_dom.exit115
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

mls_level_dom.exit115.return_crit_edge:           ; preds = %mls_level_dom.exit115
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end35:                                         ; preds = %mls_level_dom.exit115.if.end35_crit_edge, %mls_level_dom.exit99.if.end35_crit_edge, %mls_level_dom.exit83.if.end35_crit_edge
  %range.sink = phi ptr [ %dfltlevel, %mls_level_dom.exit83.if.end35_crit_edge ], [ %range, %mls_level_dom.exit99.if.end35_crit_edge ], [ %range4, %mls_level_dom.exit115.if.end35_crit_edge ]
  %26 = call ptr @memcpy(ptr %range10, ptr %range.sink, i32 12)
  %27 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx9, align 4
  %29 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp.not.i116 = icmp ult i32 %28, %30
  br i1 %cmp.not.i116, label %if.end35.if.else39_crit_edge, label %mls_level_dom.exit123

if.end35.if.else39_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else39

mls_level_dom.exit123:                            ; preds = %if.end35
  %cat.i117 = getelementptr %struct.user_datum, ptr %user, i32 0, i32 3, i32 0, i32 1, i32 1
  %cat2.i118 = getelementptr %struct.context, ptr %fromcon, i32 0, i32 4, i32 0, i32 1, i32 1
  %call.i119 = tail call i32 @ebitmap_contains(ptr noundef %cat.i117, ptr noundef %cat2.i118, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %tobool.i120.not = icmp eq i32 %call.i119, 0
  br i1 %tobool.i120.not, label %mls_level_dom.exit123.if.else39_crit_edge, label %mls_level_dom.exit123.return.sink.split_crit_edge

mls_level_dom.exit123.return.sink.split_crit_edge: ; preds = %mls_level_dom.exit123
  call void @__sanitizer_cov_trace_pc() #10
  br label %return.sink.split

mls_level_dom.exit123.if.else39_crit_edge:        ; preds = %mls_level_dom.exit123
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else39

if.else39:                                        ; preds = %mls_level_dom.exit123.if.else39_crit_edge, %if.end35.if.else39_crit_edge
  %31 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx3, align 4
  %33 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp.not.i124 = icmp ult i32 %32, %34
  br i1 %cmp.not.i124, label %if.else39.return_crit_edge, label %mls_level_dom.exit131

if.else39.return_crit_edge:                       ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

mls_level_dom.exit131:                            ; preds = %if.else39
  %cat.i125 = getelementptr %struct.context, ptr %fromcon, i32 0, i32 4, i32 0, i32 1, i32 1
  %cat2.i126 = getelementptr %struct.user_datum, ptr %user, i32 0, i32 3, i32 0, i32 1, i32 1
  %call.i127 = tail call i32 @ebitmap_contains(ptr noundef %cat.i125, ptr noundef %cat2.i126, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i127)
  %tobool.i128.not = icmp eq i32 %call.i127, 0
  br i1 %tobool.i128.not, label %mls_level_dom.exit131.return_crit_edge, label %mls_level_dom.exit131.return.sink.split_crit_edge

mls_level_dom.exit131.return.sink.split_crit_edge: ; preds = %mls_level_dom.exit131
  call void @__sanitizer_cov_trace_pc() #10
  br label %return.sink.split

mls_level_dom.exit131.return_crit_edge:           ; preds = %mls_level_dom.exit131
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return.sink.split:                                ; preds = %mls_level_dom.exit131.return.sink.split_crit_edge, %mls_level_dom.exit123.return.sink.split_crit_edge
  %arrayidx3.sink = phi ptr [ %arrayidx3, %mls_level_dom.exit123.return.sink.split_crit_edge ], [ %arrayidx9, %mls_level_dom.exit131.return.sink.split_crit_edge ]
  %35 = call ptr @memcpy(ptr %arrayidx15, ptr %arrayidx3.sink, i32 12)
  br label %return

return:                                           ; preds = %return.sink.split, %mls_level_dom.exit131.return_crit_edge, %if.else39.return_crit_edge, %mls_level_dom.exit115.return_crit_edge, %land.lhs.true29.return_crit_edge, %mls_level_dom.exit107.return_crit_edge, %if.else26.return_crit_edge, %entry.return_crit_edge
  %retval.1 = phi i32 [ 0, %entry.return_crit_edge ], [ -22, %mls_level_dom.exit115.return_crit_edge ], [ -22, %mls_level_dom.exit107.return_crit_edge ], [ -22, %mls_level_dom.exit131.return_crit_edge ], [ -22, %if.else26.return_crit_edge ], [ -22, %land.lhs.true29.return_crit_edge ], [ -22, %if.else39.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mls_convert_context(ptr nocapture noundef readonly %oldp, ptr noundef %newp, ptr nocapture noundef readonly %oldc, ptr noundef %newc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %oldp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %oldp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup51_crit_edge, label %lor.lhs.false

entry.cleanup51_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup51

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %newp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %newp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup51_crit_edge, label %for.cond.preheader

lor.lhs.false.cleanup51_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup51

for.cond.preheader:                               ; preds = %lor.lhs.false
  %range = getelementptr inbounds %struct.context, ptr %oldc, i32 0, i32 4
  %arrayidx.i = getelementptr %struct.policydb, ptr %oldp, i32 0, i32 2, i32 6
  %arrayidx3 = getelementptr %struct.policydb, ptr %newp, i32 0, i32 1, i32 6
  %range10 = getelementptr inbounds %struct.context, ptr %newc, i32 0, i32 4
  %arrayidx26 = getelementptr %struct.policydb, ptr %newp, i32 0, i32 1, i32 7
  %arrayidx.i78 = getelementptr %struct.policydb, ptr %oldp, i32 0, i32 2, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc49.for.body_crit_edge, %for.cond.preheader
  %l.0110 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc49.for.body_crit_edge ]
  %arrayidx = getelementptr [2 x %struct.mls_level], ptr %range, i32 0, i32 %l.0110
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %sub = add i32 %5, -1
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr ptr, ptr %7, i32 %sub
  %8 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx1.i, align 4
  %call4 = tail call ptr @symtab_search(ptr noundef %arrayidx3, ptr noundef %9) #8
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %for.body.cleanup51_crit_edge, label %if.end7

for.body.cleanup51_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup51

if.end7:                                          ; preds = %for.body
  %10 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call4, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %arrayidx12 = getelementptr [2 x %struct.mls_level], ptr %range10, i32 0, i32 %l.0110
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %arrayidx12, align 4
  %cat = getelementptr [2 x %struct.mls_level], ptr %range, i32 0, i32 %l.0110, i32 1
  %15 = ptrtoint ptr %cat to i32
  call void @__asan_load4_noabort(i32 %15)
  %storemerge8.i = load ptr, ptr %cat, align 4
  %tobool.not9.i = icmp eq ptr %storemerge8.i, null
  br i1 %tobool.not9.i, label %if.end7.for.end.i_crit_edge, label %if.end7.for.body.i_crit_edge

if.end7.for.body.i_crit_edge:                     ; preds = %if.end7
  br label %for.body.i

if.end7.for.end.i_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end7.for.body.i_crit_edge
  %node.0 = phi ptr [ %storemerge.i, %for.inc.i.for.body.i_crit_edge ], [ %storemerge8.i, %if.end7.for.body.i_crit_edge ]
  %maps.i = getelementptr inbounds %struct.ebitmap_node, ptr %node.0, i32 0, i32 1
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef %maps.i, i32 noundef 192) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %call.i)
  %cmp.i = icmp ult i32 %call.i, 192
  br i1 %cmp.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %startbit.i = getelementptr inbounds %struct.ebitmap_node, ptr %node.0, i32 0, i32 2
  %16 = ptrtoint ptr %startbit.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %startbit.i, align 4
  %add.i = add i32 %17, %call.i
  br label %ebitmap_start_positive.exit

for.inc.i:                                        ; preds = %for.body.i
  %18 = ptrtoint ptr %node.0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %storemerge.i = load ptr, ptr %node.0, align 4
  %tobool.not.i = icmp eq ptr %storemerge.i, null
  br i1 %tobool.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end7.for.end.i_crit_edge
  %highbit.i = getelementptr [2 x %struct.mls_level], ptr %range, i32 0, i32 %l.0110, i32 1, i32 1
  %19 = ptrtoint ptr %highbit.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %highbit.i, align 4
  br label %ebitmap_start_positive.exit

ebitmap_start_positive.exit:                      ; preds = %for.end.i, %if.then.i
  %node.2 = phi ptr [ null, %for.end.i ], [ %node.0, %if.then.i ]
  %retval.0.i = phi i32 [ %20, %for.end.i ], [ %add.i, %if.then.i ]
  %highbit = getelementptr [2 x %struct.mls_level], ptr %range, i32 0, i32 %l.0110, i32 1, i32 1
  %21 = ptrtoint ptr %highbit to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %highbit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %22)
  %cmp23106 = icmp ult i32 %retval.0.i, %22
  br i1 %cmp23106, label %for.body24.lr.ph, label %ebitmap_start_positive.exit.for.inc49_crit_edge

ebitmap_start_positive.exit.for.inc49_crit_edge:  ; preds = %ebitmap_start_positive.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc49

for.body24.lr.ph:                                 ; preds = %ebitmap_start_positive.exit
  %cat35 = getelementptr [2 x %struct.mls_level], ptr %range10, i32 0, i32 %l.0110, i32 1
  br label %for.body24

for.body24:                                       ; preds = %ebitmap_next_positive.exit.for.body24_crit_edge, %for.body24.lr.ph
  %i.0108 = phi i32 [ %retval.0.i, %for.body24.lr.ph ], [ %retval.0.i91, %ebitmap_next_positive.exit.for.body24_crit_edge ]
  %node.3107 = phi ptr [ %node.2, %for.body24.lr.ph ], [ %node.5, %ebitmap_next_positive.exit.for.body24_crit_edge ]
  %23 = ptrtoint ptr %arrayidx.i78 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i78, align 4
  %arrayidx1.i79 = getelementptr ptr, ptr %24, i32 %i.0108
  %25 = ptrtoint ptr %arrayidx1.i79 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx1.i79, align 4
  %call28 = tail call ptr @symtab_search(ptr noundef %arrayidx26, ptr noundef %26) #8
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %for.body24.cleanup51_crit_edge, label %cleanup

for.body24.cleanup51_crit_edge:                   ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup51

cleanup:                                          ; preds = %for.body24
  %27 = ptrtoint ptr %call28 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %call28, align 4
  %sub36 = add i32 %28, -1
  %call37 = tail call i32 @ebitmap_set_bit(ptr noundef %cat35, i32 noundef %sub36, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %for.inc, label %cleanup.cleanup51_crit_edge

cleanup.cleanup51_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup51

for.inc:                                          ; preds = %cleanup
  %maps.i80 = getelementptr inbounds %struct.ebitmap_node, ptr %node.3107, i32 0, i32 1
  %startbit.i81 = getelementptr inbounds %struct.ebitmap_node, ptr %node.3107, i32 0, i32 2
  %29 = ptrtoint ptr %startbit.i81 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %startbit.i81, align 4
  %sub.i = add nuw i32 %i.0108, 1
  %add.i82 = sub i32 %sub.i, %30
  %call.i83 = tail call i32 @_find_next_bit_be(ptr noundef %maps.i80, i32 noundef 192, i32 noundef %add.i82) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %call.i83)
  %cmp.i84 = icmp ult i32 %call.i83, 192
  br i1 %cmp.i84, label %if.then.i85, label %for.inc.for.cond.i_crit_edge

for.inc.for.cond.i_crit_edge:                     ; preds = %for.inc
  br label %for.cond.i

if.then.i85:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %startbit.i81 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %startbit.i81, align 4
  %add2.i = add i32 %32, %call.i83
  br label %ebitmap_next_positive.exit

for.cond.i:                                       ; preds = %for.body.i88.for.cond.i_crit_edge, %for.inc.for.cond.i_crit_edge
  %node.4 = phi ptr [ %storemerge.i86, %for.body.i88.for.cond.i_crit_edge ], [ %node.3107, %for.inc.for.cond.i_crit_edge ]
  %33 = ptrtoint ptr %node.4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %storemerge.i86 = load ptr, ptr %node.4, align 4
  %tobool.not.i87 = icmp eq ptr %storemerge.i86, null
  br i1 %tobool.not.i87, label %for.end.i90, label %for.body.i88

for.body.i88:                                     ; preds = %for.cond.i
  %maps3.i = getelementptr inbounds %struct.ebitmap_node, ptr %storemerge.i86, i32 0, i32 1
  %call5.i = tail call i32 @_find_first_bit_be(ptr noundef %maps3.i, i32 noundef 192) #8
  %cmp6.i = icmp ult i32 %call5.i, 192
  br i1 %cmp6.i, label %if.then7.i, label %for.body.i88.for.cond.i_crit_edge

for.body.i88.for.cond.i_crit_edge:                ; preds = %for.body.i88
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

if.then7.i:                                       ; preds = %for.body.i88
  call void @__sanitizer_cov_trace_pc() #10
  %startbit8.i = getelementptr inbounds %struct.ebitmap_node, ptr %storemerge.i86, i32 0, i32 2
  %34 = ptrtoint ptr %startbit8.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %startbit8.i, align 4
  %add9.i = add i32 %35, %call5.i
  br label %ebitmap_next_positive.exit

for.end.i90:                                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %highbit to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %highbit, align 4
  br label %ebitmap_next_positive.exit

ebitmap_next_positive.exit:                       ; preds = %for.end.i90, %if.then7.i, %if.then.i85
  %node.5 = phi ptr [ %node.3107, %if.then.i85 ], [ null, %for.end.i90 ], [ %storemerge.i86, %if.then7.i ]
  %retval.0.i91 = phi i32 [ %add2.i, %if.then.i85 ], [ %37, %for.end.i90 ], [ %add9.i, %if.then7.i ]
  %38 = ptrtoint ptr %highbit to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %highbit, align 4
  %cmp23 = icmp ult i32 %retval.0.i91, %39
  br i1 %cmp23, label %ebitmap_next_positive.exit.for.body24_crit_edge, label %ebitmap_next_positive.exit.for.inc49_crit_edge

ebitmap_next_positive.exit.for.inc49_crit_edge:   ; preds = %ebitmap_next_positive.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc49

ebitmap_next_positive.exit.for.body24_crit_edge:  ; preds = %ebitmap_next_positive.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body24

for.inc49:                                        ; preds = %ebitmap_next_positive.exit.for.inc49_crit_edge, %ebitmap_start_positive.exit.for.inc49_crit_edge
  %inc = add nuw nsw i32 %l.0110, 1
  %exitcond.not = icmp eq i32 %inc, 2
  br i1 %exitcond.not, label %for.inc49.cleanup51_crit_edge, label %for.inc49.for.body_crit_edge

for.inc49.for.body_crit_edge:                     ; preds = %for.inc49
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc49.cleanup51_crit_edge:                    ; preds = %for.inc49
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup51

cleanup51:                                        ; preds = %for.inc49.cleanup51_crit_edge, %cleanup.cleanup51_crit_edge, %for.body24.cleanup51_crit_edge, %for.body.cleanup51_crit_edge, %lor.lhs.false.cleanup51_crit_edge, %entry.cleanup51_crit_edge
  %retval.4 = phi i32 [ 0, %lor.lhs.false.cleanup51_crit_edge ], [ 0, %entry.cleanup51_crit_edge ], [ -22, %for.body24.cleanup51_crit_edge ], [ %call37, %cleanup.cleanup51_crit_edge ], [ -22, %for.body.cleanup51_crit_edge ], [ 0, %for.inc49.cleanup51_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mls_compute_sid(ptr noundef %p, ptr noundef %scontext, ptr noundef %tcontext, i16 noundef zeroext %tclass, i32 noundef %specified, ptr noundef %newcontext, i1 noundef zeroext %sock) local_unnamed_addr #0 align 64 {
entry:
  %rtr = alloca %struct.range_trans, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rtr) #8
  %0 = ptrtoint ptr %rtr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rtr, align 4, !annotation !9
  %1 = getelementptr inbounds %struct.range_trans, ptr %rtr, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !9
  %3 = getelementptr inbounds %struct.range_trans, ptr %rtr, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !9
  %5 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = zext i32 %specified to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %specified, label %if.end.cleanup_crit_edge [
    i32 16, label %sw.bb
    i32 64, label %if.end.sw.bb33_crit_edge
    i32 32, label %sw.bb43
  ]

if.end.sw.bb33_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb33

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %type = getelementptr inbounds %struct.context, ptr %scontext, i32 0, i32 2
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  %10 = ptrtoint ptr %rtr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %rtr, align 4
  %type1 = getelementptr inbounds %struct.context, ptr %tcontext, i32 0, i32 2
  %11 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type1, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %1, align 4
  %conv = zext i16 %tclass to i32
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv, ptr %3, align 4
  %call = call ptr @policydb_rangetr_search(ptr noundef %p, ptr noundef nonnull %rtr) #8
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %sw.bb
  %range1.i = getelementptr inbounds %struct.context, ptr %newcontext, i32 0, i32 4
  %15 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call, align 4
  %17 = ptrtoint ptr %range1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %range1.i, align 4
  %cat.i = getelementptr %struct.context, ptr %newcontext, i32 0, i32 4, i32 0, i32 0, i32 1
  %cat10.i = getelementptr [2 x %struct.mls_level], ptr %call, i32 0, i32 0, i32 1
  %call.i = call i32 @ebitmap_cpy(ptr noundef %cat.i, ptr noundef %cat10.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.i:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.1.i = getelementptr [2 x %struct.mls_level], ptr %call, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.1.i, align 4
  %arrayidx3.1.i = getelementptr %struct.context, ptr %newcontext, i32 0, i32 4, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx3.1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx3.1.i, align 4
  %cat.1.i = getelementptr %struct.context, ptr %newcontext, i32 0, i32 4, i32 0, i32 1, i32 1
  %cat10.1.i = getelementptr [2 x %struct.mls_level], ptr %call, i32 0, i32 1, i32 1
  %call.1.i = call i32 @ebitmap_cpy(ptr noundef %cat.1.i, ptr noundef %cat10.1.i) #8
  br label %cleanup

if.end5:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %tclass)
  %tobool7.not = icmp eq i16 %tclass, 0
  br i1 %tobool7.not, label %if.end5.sw.bb33_crit_edge, label %land.lhs.true

if.end5.sw.bb33_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb33

land.lhs.true:                                    ; preds = %if.end5
  %nprim = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 1, i32 1
  %21 = ptrtoint ptr %nprim to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nprim, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv)
  %cmp.not = icmp ult i32 %22, %conv
  br i1 %cmp.not, label %land.lhs.true.sw.bb33_crit_edge, label %if.then10

land.lhs.true.sw.bb33_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb33

if.then10:                                        ; preds = %land.lhs.true
  %class_val_to_struct = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 3
  %23 = ptrtoint ptr %class_val_to_struct to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %class_val_to_struct, align 4
  %sub = add nsw i32 %conv, -1
  %arrayidx12 = getelementptr ptr, ptr %24, i32 %sub
  %25 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx12, align 4
  %tobool13.not = icmp eq ptr %26, null
  br i1 %tobool13.not, label %if.then10.sw.bb33_crit_edge, label %if.end18

if.then10.sw.bb33_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb33

if.end18:                                         ; preds = %if.then10
  %default_range15 = getelementptr inbounds %struct.class_datum, ptr %26, i32 0, i32 9
  %27 = ptrtoint ptr %default_range15 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %default_range15, align 1
  %29 = zext i8 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %28, label %if.end18.sw.bb33_crit_edge [
    i8 1, label %sw.bb19
    i8 2, label %sw.bb21
    i8 3, label %sw.bb23
    i8 4, label %sw.bb25
    i8 5, label %sw.bb27
    i8 6, label %sw.bb29
    i8 7, label %sw.bb31
  ]

if.end18.sw.bb33_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb33

sw.bb19:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %call20 = call fastcc i32 @mls_context_cpy_low(ptr noundef %newcontext, ptr noundef %scontext)
  br label %cleanup

sw.bb21:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %call22 = call fastcc i32 @mls_context_cpy_high(ptr noundef %newcontext, ptr noundef %scontext)
  br label %cleanup

sw.bb23:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %call24 = call fastcc i32 @mls_context_cpy(ptr noundef %newcontext, ptr noundef %scontext)
  br label %cleanup

sw.bb25:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %call26 = call fastcc i32 @mls_context_cpy_low(ptr noundef %newcontext, ptr noundef %tcontext)
  br label %cleanup

sw.bb27:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %call28 = call fastcc i32 @mls_context_cpy_high(ptr noundef %newcontext, ptr noundef %tcontext)
  br label %cleanup

sw.bb29:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %call30 = call fastcc i32 @mls_context_cpy(ptr noundef %newcontext, ptr noundef %tcontext)
  br label %cleanup

sw.bb31:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %call32 = call fastcc i32 @mls_context_glblub(ptr noundef %newcontext, ptr noundef %scontext, ptr noundef %tcontext)
  br label %cleanup

sw.bb33:                                          ; preds = %if.end18.sw.bb33_crit_edge, %if.then10.sw.bb33_crit_edge, %land.lhs.true.sw.bb33_crit_edge, %if.end5.sw.bb33_crit_edge, %if.end.sw.bb33_crit_edge
  %process_class = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 26
  %30 = ptrtoint ptr %process_class to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %process_class, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %31, i16 %tclass)
  %cmp36 = icmp eq i16 %31, %tclass
  %brmerge = or i1 %cmp36, %sock
  %range.i = getelementptr inbounds %struct.context, ptr %scontext, i32 0, i32 4
  %32 = ptrtoint ptr %range.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %range.i, align 4
  %range1.i80 = getelementptr inbounds %struct.context, ptr %newcontext, i32 0, i32 4
  %34 = ptrtoint ptr %range1.i80 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %range1.i80, align 4
  %cat.i81 = getelementptr inbounds %struct.context, ptr %newcontext, i32 0, i32 4, i32 0, i32 0, i32 1
  %cat11.i = getelementptr inbounds %struct.context, ptr %scontext, i32 0, i32 4, i32 0, i32 0, i32 1
  %call.i82 = call i32 @ebitmap_cpy(ptr noundef %cat.i81, ptr noundef %cat11.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82)
  %tobool.not.i83 = icmp eq i32 %call.i82, 0
  br i1 %brmerge, label %if.then40, label %if.else

if.then40:                                        ; preds = %sw.bb33
  br i1 %tobool.not.i83, label %if.end.i, label %if.then40.cleanup_crit_edge

if.then40.cleanup_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then40
  %arrayidx14.i = getelementptr %struct.context, ptr %scontext, i32 0, i32 4, i32 0, i32 1
  %35 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx14.i, align 4
  %arrayidx18.i = getelementptr %struct.context, ptr %newcontext, i32 0, i32 4, i32 0, i32 1
  %37 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx18.i, align 4
  %cat23.i = getelementptr %struct.context, ptr %newcontext, i32 0, i32 4, i32 0, i32 1, i32 1
  %cat27.i = getelementptr %struct.context, ptr %scontext, i32 0, i32 4, i32 0, i32 1, i32 1
  %call28.i = call i32 @ebitmap_cpy(ptr noundef %cat23.i, ptr noundef %cat27.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.end.i.cleanup_crit_edge, label %if.then30.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then30.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @ebitmap_destroy(ptr noundef %cat.i81) #8
  br label %cleanup

if.else:                                          ; preds = %sw.bb33
  br i1 %tobool.not.i83, label %if.end.i94, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i94:                                       ; preds = %if.else
  %38 = ptrtoint ptr %range.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %range.i, align 4
  %arrayidx18.i90 = getelementptr %struct.context, ptr %newcontext, i32 0, i32 4, i32 0, i32 1
  %40 = ptrtoint ptr %arrayidx18.i90 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %arrayidx18.i90, align 4
  %cat23.i91 = getelementptr %struct.context, ptr %newcontext, i32 0, i32 4, i32 0, i32 1, i32 1
  %call28.i92 = call i32 @ebitmap_cpy(ptr noundef %cat23.i91, ptr noundef %cat11.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i92)
  %tobool29.not.i93 = icmp eq i32 %call28.i92, 0
  br i1 %tobool29.not.i93, label %if.end.i94.cleanup_crit_edge, label %if.then30.i95

if.end.i94.cleanup_crit_edge:                     ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then30.i95:                                    ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #10
  call void @ebitmap_destroy(ptr noundef %cat.i81) #8
  br label %cleanup

sw.bb43:                                          ; preds = %if.end
  %range.i97 = getelementptr inbounds %struct.context, ptr %scontext, i32 0, i32 4
  %41 = ptrtoint ptr %range.i97 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %range.i97, align 4
  %range1.i98 = getelementptr inbounds %struct.context, ptr %newcontext, i32 0, i32 4
  %43 = ptrtoint ptr %range1.i98 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %range1.i98, align 4
  %cat.i99 = getelementptr inbounds %struct.context, ptr %newcontext, i32 0, i32 4, i32 0, i32 0, i32 1
  %cat11.i100 = getelementptr inbounds %struct.context, ptr %scontext, i32 0, i32 4, i32 0, i32 0, i32 1
  %call.i101 = tail call i32 @ebitmap_cpy(ptr noundef %cat.i99, ptr noundef %cat11.i100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101)
  %tobool.not.i102 = icmp eq i32 %call.i101, 0
  br i1 %tobool.not.i102, label %if.end.i107, label %sw.bb43.cleanup_crit_edge

sw.bb43.cleanup_crit_edge:                        ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i107:                                      ; preds = %sw.bb43
  %44 = ptrtoint ptr %range.i97 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %range.i97, align 4
  %arrayidx18.i103 = getelementptr %struct.context, ptr %newcontext, i32 0, i32 4, i32 0, i32 1
  %46 = ptrtoint ptr %arrayidx18.i103 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %arrayidx18.i103, align 4
  %cat23.i104 = getelementptr %struct.context, ptr %newcontext, i32 0, i32 4, i32 0, i32 1, i32 1
  %call28.i105 = tail call i32 @ebitmap_cpy(ptr noundef %cat23.i104, ptr noundef %cat11.i100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i105)
  %tobool29.not.i106 = icmp eq i32 %call28.i105, 0
  br i1 %tobool29.not.i106, label %if.end.i107.cleanup_crit_edge, label %if.then30.i108

if.end.i107.cleanup_crit_edge:                    ; preds = %if.end.i107
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then30.i108:                                   ; preds = %if.end.i107
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ebitmap_destroy(ptr noundef %cat.i99) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then30.i108, %if.end.i107.cleanup_crit_edge, %sw.bb43.cleanup_crit_edge, %if.then30.i95, %if.end.i94.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then30.i, %if.end.i.cleanup_crit_edge, %if.then40.cleanup_crit_edge, %sw.bb31, %sw.bb29, %sw.bb27, %sw.bb25, %sw.bb23, %sw.bb21, %sw.bb19, %for.cond.i, %if.then3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call32, %sw.bb31 ], [ %call30, %sw.bb29 ], [ %call28, %sw.bb27 ], [ %call26, %sw.bb25 ], [ %call24, %sw.bb23 ], [ %call22, %sw.bb21 ], [ %call20, %sw.bb19 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call.i, %if.then3.cleanup_crit_edge ], [ %call.1.i, %for.cond.i ], [ %call.i82, %if.then40.cleanup_crit_edge ], [ %call28.i, %if.then30.i ], [ 0, %if.end.i.cleanup_crit_edge ], [ %call.i82, %if.else.cleanup_crit_edge ], [ %call28.i92, %if.then30.i95 ], [ 0, %if.end.i94.cleanup_crit_edge ], [ %call.i101, %sw.bb43.cleanup_crit_edge ], [ %call28.i105, %if.then30.i108 ], [ 0, %if.end.i107.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rtr) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @policydb_rangetr_search(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mls_context_cpy_low(ptr noundef %dst, ptr noundef %src) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %range = getelementptr inbounds %struct.context, ptr %src, i32 0, i32 4
  %0 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %range, align 4
  %range1 = getelementptr inbounds %struct.context, ptr %dst, i32 0, i32 4
  %2 = ptrtoint ptr %range1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %range1, align 4
  %cat = getelementptr inbounds %struct.context, ptr %dst, i32 0, i32 4, i32 0, i32 0, i32 1
  %cat11 = getelementptr inbounds %struct.context, ptr %src, i32 0, i32 4, i32 0, i32 0, i32 1
  %call = tail call i32 @ebitmap_cpy(ptr noundef %cat, ptr noundef %cat11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %range, align 4
  %arrayidx18 = getelementptr %struct.context, ptr %dst, i32 0, i32 4, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %arrayidx18, align 4
  %cat23 = getelementptr %struct.context, ptr %dst, i32 0, i32 4, i32 0, i32 1, i32 1
  %call28 = tail call i32 @ebitmap_cpy(ptr noundef %cat23, ptr noundef %cat11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end.out_crit_edge, label %if.then30

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then30:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ebitmap_destroy(ptr noundef %cat) #8
  br label %out

out:                                              ; preds = %if.then30, %if.end.out_crit_edge, %entry.out_crit_edge
  %rc.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call28, %if.then30 ], [ 0, %if.end.out_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mls_context_cpy_high(ptr noundef %dst, ptr noundef %src) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.context, ptr %src, i32 0, i32 4, i32 0, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %range1 = getelementptr inbounds %struct.context, ptr %dst, i32 0, i32 4
  %2 = ptrtoint ptr %range1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %range1, align 4
  %cat = getelementptr inbounds %struct.context, ptr %dst, i32 0, i32 4, i32 0, i32 0, i32 1
  %cat11 = getelementptr %struct.context, ptr %src, i32 0, i32 4, i32 0, i32 1, i32 1
  %call = tail call i32 @ebitmap_cpy(ptr noundef %cat, ptr noundef %cat11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %arrayidx18 = getelementptr %struct.context, ptr %dst, i32 0, i32 4, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %arrayidx18, align 4
  %cat23 = getelementptr %struct.context, ptr %dst, i32 0, i32 4, i32 0, i32 1, i32 1
  %call28 = tail call i32 @ebitmap_cpy(ptr noundef %cat23, ptr noundef %cat11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end.out_crit_edge, label %if.then30

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then30:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ebitmap_destroy(ptr noundef %cat) #8
  br label %out

out:                                              ; preds = %if.then30, %if.end.out_crit_edge, %entry.out_crit_edge
  %rc.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call28, %if.then30 ], [ 0, %if.end.out_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mls_context_glblub(ptr noundef %dst, ptr noundef %c1, ptr noundef %c2) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %range = getelementptr inbounds %struct.context, ptr %dst, i32 0, i32 4
  %range2 = getelementptr inbounds %struct.context, ptr %c2, i32 0, i32 4
  %arrayidx = getelementptr %struct.context, ptr %c1, i32 0, i32 4, i32 0, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %range2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %range2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %range1 = getelementptr inbounds %struct.context, ptr %c1, i32 0, i32 4
  %arrayidx7 = getelementptr %struct.context, ptr %c2, i32 0, i32 4, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx7, align 4
  %6 = ptrtoint ptr %range1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %range1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp12 = icmp ult i32 %5, %7
  br i1 %cmp12, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %8 = tail call i32 @llvm.umax.i32(i32 %7, i32 %3)
  %9 = ptrtoint ptr %range to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %range, align 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx7, align 4
  %14 = tail call i32 @llvm.umin.i32(i32 %11, i32 %13)
  %arrayidx36 = getelementptr %struct.context, ptr %dst, i32 0, i32 4, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx36, align 4
  %cat = getelementptr inbounds %struct.context, ptr %dst, i32 0, i32 4, i32 0, i32 0, i32 1
  %cat42 = getelementptr inbounds %struct.context, ptr %c1, i32 0, i32 4, i32 0, i32 0, i32 1
  %cat45 = getelementptr inbounds %struct.context, ptr %c2, i32 0, i32 4, i32 0, i32 0, i32 1
  %call = tail call i32 @ebitmap_and(ptr noundef %cat, ptr noundef %cat42, ptr noundef %cat45) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end47, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end47:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %cat50 = getelementptr %struct.context, ptr %dst, i32 0, i32 4, i32 0, i32 1, i32 1
  %cat53 = getelementptr %struct.context, ptr %c1, i32 0, i32 4, i32 0, i32 1, i32 1
  %cat56 = getelementptr %struct.context, ptr %c2, i32 0, i32 4, i32 0, i32 1, i32 1
  %call57 = tail call i32 @ebitmap_and(ptr noundef %cat50, ptr noundef %cat53, ptr noundef %cat56) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call57, %if.end47 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mls_export_netlbl_lvl(ptr nocapture noundef readonly %p, ptr nocapture noundef readonly %context, ptr nocapture noundef %secattr) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %range = getelementptr inbounds %struct.context, ptr %context, i32 0, i32 4
  %2 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %range, align 4
  %sub = add i32 %3, -1
  %lvl = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 4, i32 0, i32 1
  %4 = ptrtoint ptr %lvl to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub, ptr %lvl, align 4
  %5 = ptrtoint ptr %secattr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %secattr, align 4
  %or = or i32 %6, 4
  store i32 %or, ptr %secattr, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mls_import_netlbl_lvl(ptr nocapture noundef readonly %p, ptr nocapture noundef writeonly %context, ptr nocapture noundef readonly %secattr) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %lvl = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 4, i32 0, i32 1
  %2 = ptrtoint ptr %lvl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lvl, align 4
  %add = add i32 %3, 1
  %range = getelementptr inbounds %struct.context, ptr %context, i32 0, i32 4
  %4 = ptrtoint ptr %range to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %range, align 4
  %arrayidx7 = getelementptr %struct.context, ptr %context, i32 0, i32 4, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add, ptr %arrayidx7, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mls_export_netlbl_cat(ptr nocapture noundef readonly %p, ptr noundef %context, ptr noundef %secattr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %cat = getelementptr inbounds %struct.context, ptr %context, i32 0, i32 4, i32 0, i32 0, i32 1
  %attr = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 4
  %call = tail call i32 @ebitmap_netlbl_export(ptr noundef %cat, ptr noundef %attr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attr, align 4
  %cmp5.not = icmp eq ptr %3, null
  br i1 %cmp5.not, label %land.lhs.true.cleanup_crit_edge, label %if.then6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %secattr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %secattr, align 4
  %or = or i32 %5, 8
  store i32 %or, ptr %secattr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then6 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ebitmap_netlbl_export(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mls_import_netlbl_cat(ptr nocapture noundef readonly %p, ptr noundef %context, ptr nocapture noundef readonly %secattr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %cat = getelementptr inbounds %struct.context, ptr %context, i32 0, i32 4, i32 0, i32 0, i32 1
  %attr = getelementptr inbounds %struct.netlbl_lsm_secattr, ptr %secattr, i32 0, i32 4
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attr, align 4
  %call = tail call i32 @ebitmap_netlbl_import(ptr noundef %cat, ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %import_netlbl_cat_failure

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %cat8 = getelementptr %struct.context, ptr %context, i32 0, i32 4, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %cat to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %cat, align 4
  %6 = ptrtoint ptr %cat8 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 %5, ptr %cat8, align 4
  br label %cleanup

import_netlbl_cat_failure:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ebitmap_destroy(ptr noundef %cat) #8
  br label %cleanup

cleanup:                                          ; preds = %import_netlbl_cat_failure, %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %import_netlbl_cat_failure ], [ 0, %if.end4 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ebitmap_netlbl_import(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ebitmap_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ebitmap_cmp(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sidtab_search_entry(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ebitmap_and(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{!"auto-init"}
