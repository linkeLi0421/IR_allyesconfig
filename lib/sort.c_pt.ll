; ModuleID = '/llk/IR_all_yes/lib/sort.c_pt.bc'
source_filename = "../lib/sort.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm "\09.section \22___kcrctab+sort_r\22, \22a\22\09"
module asm "\09.weak\09__crc_sort_r\09\09\09\09"
module asm "\09.long\09__crc_sort_r\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sort_r:\09\09\09\09\09"
module asm "\09.asciz \09\22sort_r\22\09\09\09\09\09"
module asm "__kstrtabns_sort_r:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sort\22, \22a\22\09"
module asm "\09.weak\09__crc_sort\09\09\09\09"
module asm "\09.long\09__crc_sort\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sort:\09\09\09\09\09"
module asm "\09.asciz \09\22sort\22\09\09\09\09\09"
module asm "__kstrtabns_sort:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_sort_r = external dso_local constant [0 x i8], align 1
@__kstrtabns_sort_r = external dso_local constant [0 x i8], align 1
@__ksymtab_sort_r = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sort_r to i32), ptr @__kstrtab_sort_r, ptr @__kstrtabns_sort_r }, section "___ksymtab+sort_r", align 4
@__kstrtab_sort = external dso_local constant [0 x i8], align 1
@__kstrtabns_sort = external dso_local constant [0 x i8], align 1
@__ksymtab_sort = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sort to i32), ptr @__kstrtab_sort, ptr @__kstrtabns_sort }, section "___ksymtab+sort", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_sort, ptr @__ksymtab_sort_r], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sort_r(ptr noundef %base, i32 noundef %num, i32 noundef %size, ptr noundef readonly %cmp_func, ptr noundef %swap_func, ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #2
  %mul = mul i32 %size, %num
  %div102 = lshr i32 %num, 1
  %mul1 = mul i32 %div102, %size
  %sub = sub i32 0, %size
  %and = and i32 %sub, %size
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul1)
  %tobool.not = icmp eq i32 %mul1, 0
  br i1 %tobool.not, label %entry.cleanup47_crit_edge, label %if.end

entry.cleanup47_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #2
  br label %cleanup47

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq ptr %swap_func, null
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #2
  br label %if.end10

if.then3:                                         ; preds = %if.end
  %and.i = and i32 %size, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %if.then3.if.end10_crit_edge, label %if.else

if.then3.if.end10_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #2
  br label %if.end10

if.else:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #2
  %and.i104 = and i32 %size, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i104)
  %cmp.i105 = icmp eq i32 %and.i104, 0
  %. = select i1 %cmp.i105, ptr inttoptr (i32 1 to ptr), ptr inttoptr (i32 2 to ptr)
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then3.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %swap_func.addr.0 = phi ptr [ %swap_func, %if.end.if.end10_crit_edge ], [ null, %if.then3.if.end10_crit_edge ], [ %., %if.else ]
  %magicptr21.i = ptrtoint ptr %swap_func.addr.0 to i32
  %cmp1.i = icmp eq ptr %cmp_func, null
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %if.end10
  %n.0 = phi i32 [ %mul, %if.end10 ], [ %n.1, %for.cond.backedge ]
  %a.0 = phi i32 [ %mul1, %if.end10 ], [ %a.1, %for.cond.backedge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %a.0)
  %tobool11.not = icmp eq i32 %a.0, 0
  br i1 %tobool11.not, label %if.else14, label %if.then12

if.then12:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #2
  %sub13 = sub i32 %a.0, %size
  br label %if.end20

if.else14:                                        ; preds = %for.cond
  %sub15 = sub i32 %n.0, %size
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub15)
  %tobool16.not = icmp eq i32 %sub15, 0
  br i1 %tobool16.not, label %if.else14.cleanup47_crit_edge, label %if.then17

if.else14.cleanup47_crit_edge:                    ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #2
  br label %cleanup47

if.then17:                                        ; preds = %if.else14
  %add.ptr = getelementptr i8, ptr %base, i32 %sub15
  %0 = zext i32 %magicptr21.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %magicptr21.i, label %if.else6.i [
    i32 0, label %if.then17.do.body.i.i_crit_edge
    i32 1, label %if.then17.do.body.i27.i_crit_edge
    i32 2, label %if.then17.do.body.i30.i_crit_edge
  ]

if.then17.do.body.i30.i_crit_edge:                ; preds = %if.then17
  br label %do.body.i30.i

if.then17.do.body.i27.i_crit_edge:                ; preds = %if.then17
  br label %do.body.i27.i

if.then17.do.body.i.i_crit_edge:                  ; preds = %if.then17
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.then17.do.body.i.i_crit_edge
  %n.addr.0.i.i = phi i32 [ %sub4.i.i, %do.body.i.i.do.body.i.i_crit_edge ], [ %size, %if.then17.do.body.i.i_crit_edge ]
  %sub.i.i = add i32 %n.addr.0.i.i, -4
  %add.ptr.i.i = getelementptr i8, ptr %base, i32 %sub.i.i
  %1 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %add.ptr.i.i, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr, i32 %sub.i.i
  %3 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr1.i.i, align 4
  store i32 %4, ptr %add.ptr.i.i, align 4
  store i32 %2, ptr %add.ptr1.i.i, align 4
  %sub4.i.i = add i32 %n.addr.0.i.i, -8
  %add.ptr5.i.i = getelementptr i8, ptr %base, i32 %sub4.i.i
  %5 = ptrtoint ptr %add.ptr5.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr5.i.i, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %add.ptr, i32 %sub4.i.i
  %7 = ptrtoint ptr %add.ptr6.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr6.i.i, align 4
  store i32 %8, ptr %add.ptr5.i.i, align 4
  store i32 %6, ptr %add.ptr6.i.i, align 4
  %tobool.not.i.i = icmp eq i32 %sub4.i.i, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.if.end20_crit_edge, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #2
  br label %do.body.i.i

do.body.i.i.if.end20_crit_edge:                   ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #2
  br label %if.end20

do.body.i27.i:                                    ; preds = %do.body.i27.i.do.body.i27.i_crit_edge, %if.then17.do.body.i27.i_crit_edge
  %n.addr.0.i22.i = phi i32 [ %sub.i23.i, %do.body.i27.i.do.body.i27.i_crit_edge ], [ %size, %if.then17.do.body.i27.i_crit_edge ]
  %sub.i23.i = add i32 %n.addr.0.i22.i, -4
  %add.ptr.i24.i = getelementptr i8, ptr %base, i32 %sub.i23.i
  %9 = ptrtoint ptr %add.ptr.i24.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i24.i, align 4
  %add.ptr1.i25.i = getelementptr i8, ptr %add.ptr, i32 %sub.i23.i
  %11 = ptrtoint ptr %add.ptr1.i25.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr1.i25.i, align 4
  store i32 %12, ptr %add.ptr.i24.i, align 4
  store i32 %10, ptr %add.ptr1.i25.i, align 4
  %tobool.not.i26.i = icmp eq i32 %sub.i23.i, 0
  br i1 %tobool.not.i26.i, label %do.body.i27.i.if.end20_crit_edge, label %do.body.i27.i.do.body.i27.i_crit_edge

do.body.i27.i.do.body.i27.i_crit_edge:            ; preds = %do.body.i27.i
  call void @__sanitizer_cov_trace_pc() #2
  br label %do.body.i27.i

do.body.i27.i.if.end20_crit_edge:                 ; preds = %do.body.i27.i
  call void @__sanitizer_cov_trace_pc() #2
  br label %if.end20

do.body.i30.i:                                    ; preds = %do.body.i30.i.do.body.i30.i_crit_edge, %if.then17.do.body.i30.i_crit_edge
  %n.addr.0.i28.i = phi i32 [ %dec.i.i, %do.body.i30.i.do.body.i30.i_crit_edge ], [ %size, %if.then17.do.body.i30.i_crit_edge ]
  %dec.i.i = add i32 %n.addr.0.i28.i, -1
  %arrayidx.i.i = getelementptr i8, ptr %base, i32 %dec.i.i
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i.i, align 1
  %arrayidx1.i.i = getelementptr i8, ptr %add.ptr, i32 %dec.i.i
  %15 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx1.i.i, align 1
  store i8 %16, ptr %arrayidx.i.i, align 1
  store i8 %14, ptr %arrayidx1.i.i, align 1
  %tobool.not.i29.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i29.i, label %do.body.i30.i.if.end20_crit_edge, label %do.body.i30.i.do.body.i30.i_crit_edge

do.body.i30.i.do.body.i30.i_crit_edge:            ; preds = %do.body.i30.i
  call void @__sanitizer_cov_trace_pc() #2
  br label %do.body.i30.i

do.body.i30.i.if.end20_crit_edge:                 ; preds = %do.body.i30.i
  call void @__sanitizer_cov_trace_pc() #2
  br label %if.end20

if.else6.i:                                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #2
  tail call void %swap_func.addr.0(ptr noundef %base, ptr noundef %add.ptr, i32 noundef %size) #3
  br label %if.end20

if.end20:                                         ; preds = %if.else6.i, %do.body.i30.i.if.end20_crit_edge, %do.body.i27.i.if.end20_crit_edge, %do.body.i.i.if.end20_crit_edge, %if.then12
  %n.1 = phi i32 [ %n.0, %if.then12 ], [ %sub15, %if.else6.i ], [ %sub15, %do.body.i.i.if.end20_crit_edge ], [ %sub15, %do.body.i27.i.if.end20_crit_edge ], [ %sub15, %do.body.i30.i.if.end20_crit_edge ]
  %a.1 = phi i32 [ %sub13, %if.then12 ], [ 0, %if.else6.i ], [ 0, %do.body.i.i.if.end20_crit_edge ], [ 0, %do.body.i27.i.if.end20_crit_edge ], [ 0, %do.body.i30.i.if.end20_crit_edge ]
  %mul22153 = shl i32 %a.1, 1
  %add154 = add i32 %mul22153, %size
  %add23155 = add i32 %add154, %size
  call void @__sanitizer_cov_trace_cmp4(i32 %add23155, i32 %n.1)
  %cmp156 = icmp ult i32 %add23155, %n.1
  br i1 %cmp156, label %if.end20.for.body_crit_edge, label %if.end20.for.end_crit_edge

if.end20.for.end_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #2
  br label %for.end

if.end20.for.body_crit_edge:                      ; preds = %if.end20
  br label %for.body

for.body:                                         ; preds = %do_cmp.exit.for.body_crit_edge, %if.end20.for.body_crit_edge
  %add23158 = phi i32 [ %add23, %do_cmp.exit.for.body_crit_edge ], [ %add23155, %if.end20.for.body_crit_edge ]
  %add157 = phi i32 [ %add, %do_cmp.exit.for.body_crit_edge ], [ %add154, %if.end20.for.body_crit_edge ]
  %add.ptr24 = getelementptr i8, ptr %base, i32 %add157
  %add.ptr25 = getelementptr i8, ptr %base, i32 %add23158
  br i1 %cmp1.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #2
  %call.i = tail call i32 %priv(ptr noundef %add.ptr24, ptr noundef %add.ptr25) #3
  br label %do_cmp.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #2
  %call2.i = tail call i32 %cmp_func(ptr noundef %add.ptr24, ptr noundef %add.ptr25, ptr noundef %priv) #3
  br label %do_cmp.exit

do_cmp.exit:                                      ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call2.i, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp27148 = icmp slt i32 %retval.0.i, 0
  %add.add23 = select i1 %cmp27148, i32 %add23158, i32 %add157
  %mul22 = shl i32 %add.add23, 1
  %add = add i32 %mul22, %size
  %add23 = add i32 %add, %size
  %cmp = icmp ult i32 %add23, %n.1
  br i1 %cmp, label %do_cmp.exit.for.body_crit_edge, label %do_cmp.exit.for.end_crit_edge

do_cmp.exit.for.end_crit_edge:                    ; preds = %do_cmp.exit
  call void @__sanitizer_cov_trace_pc() #2
  br label %for.end

do_cmp.exit.for.body_crit_edge:                   ; preds = %do_cmp.exit
  call void @__sanitizer_cov_trace_pc() #2
  br label %for.body

for.end:                                          ; preds = %do_cmp.exit.for.end_crit_edge, %if.end20.for.end_crit_edge
  %b.0.lcssa = phi i32 [ %a.1, %if.end20.for.end_crit_edge ], [ %add.add23, %do_cmp.exit.for.end_crit_edge ]
  %add.lcssa = phi i32 [ %add154, %if.end20.for.end_crit_edge ], [ %add, %do_cmp.exit.for.end_crit_edge ]
  %add23.lcssa = phi i32 [ %add23155, %if.end20.for.end_crit_edge ], [ %add23, %do_cmp.exit.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add23.lcssa, i32 %n.1)
  %cmp28 = icmp eq i32 %add23.lcssa, %n.1
  %spec.select = select i1 %cmp28, i32 %add.lcssa, i32 %b.0.lcssa
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %a.1)
  %cmp31.not161 = icmp eq i32 %spec.select, %a.1
  br i1 %cmp31.not161, label %for.end.for.cond.backedge_crit_edge, label %land.rhs.lr.ph

for.end.for.cond.backedge_crit_edge:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #2
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %do_swap.exit143.for.cond.backedge_crit_edge, %while.end.for.cond.backedge_crit_edge, %while.body.for.cond.backedge_crit_edge, %for.end.for.cond.backedge_crit_edge
  br label %for.cond

land.rhs.lr.ph:                                   ; preds = %for.end
  %add.ptr32 = getelementptr i8, ptr %base, i32 %a.1
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %land.rhs.lr.ph
  %b.2162 = phi i32 [ %spec.select, %land.rhs.lr.ph ], [ %div8.i, %while.body.land.rhs_crit_edge ]
  %add.ptr33 = getelementptr i8, ptr %base, i32 %b.2162
  br i1 %cmp1.i, label %if.then.i115, label %if.end.i117

if.then.i115:                                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #2
  %call.i114 = tail call i32 %priv(ptr noundef %add.ptr32, ptr noundef %add.ptr33) #3
  br label %do_cmp.exit119

if.end.i117:                                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #2
  %call2.i116 = tail call i32 %cmp_func(ptr noundef %add.ptr32, ptr noundef %add.ptr33, ptr noundef %priv) #3
  br label %do_cmp.exit119

do_cmp.exit119:                                   ; preds = %if.end.i117, %if.then.i115
  %retval.0.i118 = phi i32 [ %call.i114, %if.then.i115 ], [ %call2.i116, %if.end.i117 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i118)
  %cmp35 = icmp sgt i32 %retval.0.i118, -1
  br i1 %cmp35, label %while.body, label %while.end

while.body:                                       ; preds = %do_cmp.exit119
  %sub.i = sub i32 %b.2162, %size
  %and.i106 = and i32 %sub.i, %and
  %sub1.i = sub i32 0, %and.i106
  %and2.i = and i32 %sub1.i, %size
  %sub3.i = sub i32 %sub.i, %and2.i
  %div8.i = lshr i32 %sub3.i, 1
  %cmp31.not = icmp eq i32 %div8.i, %a.1
  br i1 %cmp31.not, label %while.body.for.cond.backedge_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #2
  br label %land.rhs

while.body.for.cond.backedge_crit_edge:           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #2
  br label %for.cond.backedge

while.end:                                        ; preds = %do_cmp.exit119
  call void @__sanitizer_cov_trace_cmp4(i32 %b.2162, i32 %a.1)
  %cmp38.not165 = icmp eq i32 %b.2162, %a.1
  br i1 %cmp38.not165, label %while.end.for.cond.backedge_crit_edge, label %while.body39.lr.ph

while.end.for.cond.backedge_crit_edge:            ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #2
  br label %for.cond.backedge

while.body39.lr.ph:                               ; preds = %while.end
  %add.ptr42 = getelementptr i8, ptr %base, i32 %b.2162
  br label %while.body39

while.body39:                                     ; preds = %do_swap.exit143.while.body39_crit_edge, %while.body39.lr.ph
  %b.3166 = phi i32 [ %b.2162, %while.body39.lr.ph ], [ %div8.i112, %do_swap.exit143.while.body39_crit_edge ]
  %sub.i107 = sub i32 %b.3166, %size
  %and.i108 = and i32 %sub.i107, %and
  %sub1.i109 = sub i32 0, %and.i108
  %and2.i110 = and i32 %sub1.i109, %size
  %sub3.i111 = sub i32 %sub.i107, %and2.i110
  %div8.i112 = lshr i32 %sub3.i111, 1
  %add.ptr41 = getelementptr i8, ptr %base, i32 %div8.i112
  %17 = zext i32 %magicptr21.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %magicptr21.i, label %if.else6.i142 [
    i32 0, label %while.body39.do.body.i.i129_crit_edge
    i32 1, label %while.body39.do.body.i27.i135_crit_edge
    i32 2, label %while.body39.do.body.i30.i141_crit_edge
  ]

while.body39.do.body.i30.i141_crit_edge:          ; preds = %while.body39
  br label %do.body.i30.i141

while.body39.do.body.i27.i135_crit_edge:          ; preds = %while.body39
  br label %do.body.i27.i135

while.body39.do.body.i.i129_crit_edge:            ; preds = %while.body39
  br label %do.body.i.i129

do.body.i.i129:                                   ; preds = %do.body.i.i129.do.body.i.i129_crit_edge, %while.body39.do.body.i.i129_crit_edge
  %n.addr.0.i.i121 = phi i32 [ %sub4.i.i125, %do.body.i.i129.do.body.i.i129_crit_edge ], [ %size, %while.body39.do.body.i.i129_crit_edge ]
  %sub.i.i122 = add i32 %n.addr.0.i.i121, -4
  %add.ptr.i.i123 = getelementptr i8, ptr %add.ptr41, i32 %sub.i.i122
  %18 = ptrtoint ptr %add.ptr.i.i123 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i.i123, align 4
  %add.ptr1.i.i124 = getelementptr i8, ptr %add.ptr42, i32 %sub.i.i122
  %20 = ptrtoint ptr %add.ptr1.i.i124 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr1.i.i124, align 4
  store i32 %21, ptr %add.ptr.i.i123, align 4
  store i32 %19, ptr %add.ptr1.i.i124, align 4
  %sub4.i.i125 = add i32 %n.addr.0.i.i121, -8
  %add.ptr5.i.i126 = getelementptr i8, ptr %add.ptr41, i32 %sub4.i.i125
  %22 = ptrtoint ptr %add.ptr5.i.i126 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr5.i.i126, align 4
  %add.ptr6.i.i127 = getelementptr i8, ptr %add.ptr42, i32 %sub4.i.i125
  %24 = ptrtoint ptr %add.ptr6.i.i127 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr6.i.i127, align 4
  store i32 %25, ptr %add.ptr5.i.i126, align 4
  store i32 %23, ptr %add.ptr6.i.i127, align 4
  %tobool.not.i.i128 = icmp eq i32 %sub4.i.i125, 0
  br i1 %tobool.not.i.i128, label %do.body.i.i129.do_swap.exit143_crit_edge, label %do.body.i.i129.do.body.i.i129_crit_edge

do.body.i.i129.do.body.i.i129_crit_edge:          ; preds = %do.body.i.i129
  call void @__sanitizer_cov_trace_pc() #2
  br label %do.body.i.i129

do.body.i.i129.do_swap.exit143_crit_edge:         ; preds = %do.body.i.i129
  call void @__sanitizer_cov_trace_pc() #2
  br label %do_swap.exit143

do.body.i27.i135:                                 ; preds = %do.body.i27.i135.do.body.i27.i135_crit_edge, %while.body39.do.body.i27.i135_crit_edge
  %n.addr.0.i22.i130 = phi i32 [ %sub.i23.i131, %do.body.i27.i135.do.body.i27.i135_crit_edge ], [ %size, %while.body39.do.body.i27.i135_crit_edge ]
  %sub.i23.i131 = add i32 %n.addr.0.i22.i130, -4
  %add.ptr.i24.i132 = getelementptr i8, ptr %add.ptr41, i32 %sub.i23.i131
  %26 = ptrtoint ptr %add.ptr.i24.i132 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr.i24.i132, align 4
  %add.ptr1.i25.i133 = getelementptr i8, ptr %add.ptr42, i32 %sub.i23.i131
  %28 = ptrtoint ptr %add.ptr1.i25.i133 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr1.i25.i133, align 4
  store i32 %29, ptr %add.ptr.i24.i132, align 4
  store i32 %27, ptr %add.ptr1.i25.i133, align 4
  %tobool.not.i26.i134 = icmp eq i32 %sub.i23.i131, 0
  br i1 %tobool.not.i26.i134, label %do.body.i27.i135.do_swap.exit143_crit_edge, label %do.body.i27.i135.do.body.i27.i135_crit_edge

do.body.i27.i135.do.body.i27.i135_crit_edge:      ; preds = %do.body.i27.i135
  call void @__sanitizer_cov_trace_pc() #2
  br label %do.body.i27.i135

do.body.i27.i135.do_swap.exit143_crit_edge:       ; preds = %do.body.i27.i135
  call void @__sanitizer_cov_trace_pc() #2
  br label %do_swap.exit143

do.body.i30.i141:                                 ; preds = %do.body.i30.i141.do.body.i30.i141_crit_edge, %while.body39.do.body.i30.i141_crit_edge
  %n.addr.0.i28.i136 = phi i32 [ %dec.i.i137, %do.body.i30.i141.do.body.i30.i141_crit_edge ], [ %size, %while.body39.do.body.i30.i141_crit_edge ]
  %dec.i.i137 = add i32 %n.addr.0.i28.i136, -1
  %arrayidx.i.i138 = getelementptr i8, ptr %add.ptr41, i32 %dec.i.i137
  %30 = ptrtoint ptr %arrayidx.i.i138 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i.i138, align 1
  %arrayidx1.i.i139 = getelementptr i8, ptr %add.ptr42, i32 %dec.i.i137
  %32 = ptrtoint ptr %arrayidx1.i.i139 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx1.i.i139, align 1
  store i8 %33, ptr %arrayidx.i.i138, align 1
  store i8 %31, ptr %arrayidx1.i.i139, align 1
  %tobool.not.i29.i140 = icmp eq i32 %dec.i.i137, 0
  br i1 %tobool.not.i29.i140, label %do.body.i30.i141.do_swap.exit143_crit_edge, label %do.body.i30.i141.do.body.i30.i141_crit_edge

do.body.i30.i141.do.body.i30.i141_crit_edge:      ; preds = %do.body.i30.i141
  call void @__sanitizer_cov_trace_pc() #2
  br label %do.body.i30.i141

do.body.i30.i141.do_swap.exit143_crit_edge:       ; preds = %do.body.i30.i141
  call void @__sanitizer_cov_trace_pc() #2
  br label %do_swap.exit143

if.else6.i142:                                    ; preds = %while.body39
  call void @__sanitizer_cov_trace_pc() #2
  tail call void %swap_func.addr.0(ptr noundef %add.ptr41, ptr noundef %add.ptr42, i32 noundef %size) #3
  br label %do_swap.exit143

do_swap.exit143:                                  ; preds = %if.else6.i142, %do.body.i30.i141.do_swap.exit143_crit_edge, %do.body.i27.i135.do_swap.exit143_crit_edge, %do.body.i.i129.do_swap.exit143_crit_edge
  %cmp38.not = icmp eq i32 %div8.i112, %a.1
  br i1 %cmp38.not, label %do_swap.exit143.for.cond.backedge_crit_edge, label %do_swap.exit143.while.body39_crit_edge

do_swap.exit143.while.body39_crit_edge:           ; preds = %do_swap.exit143
  call void @__sanitizer_cov_trace_pc() #2
  br label %while.body39

do_swap.exit143.for.cond.backedge_crit_edge:      ; preds = %do_swap.exit143
  call void @__sanitizer_cov_trace_pc() #2
  br label %for.cond.backedge

cleanup47:                                        ; preds = %if.else14.cleanup47_crit_edge, %entry.cleanup47_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sort(ptr noundef %base, i32 noundef %num, i32 noundef %size, ptr noundef %cmp_func, ptr noundef %swap_func) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #2
  tail call void @sort_r(ptr noundef %base, i32 noundef %num, i32 noundef %size, ptr noundef null, ptr noundef %swap_func, ptr noundef %cmp_func)
  ret void
}

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #1 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind uwtable(sync) }
attributes #2 = { nomerge }
attributes #3 = { nounwind }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = !{ptr @__ksymtab_sort_r, !1, !"__ksymtab_sort_r", i1 false, i1 false}
!1 = !{!"../lib/sort.c", i32 264, i32 1}
!2 = !{ptr @__ksymtab_sort, !3, !"__ksymtab_sort", i1 false, i1 false}
!3 = !{!"../lib/sort.c", i32 272, i32 1}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
