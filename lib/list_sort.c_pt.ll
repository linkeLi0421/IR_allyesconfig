; ModuleID = '/llk/IR_all_yes/lib/list_sort.c_pt.bc'
source_filename = "../lib/list_sort.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+list_sort\22, \22a\22\09"
module asm "\09.weak\09__crc_list_sort\09\09\09\09"
module asm "\09.long\09__crc_list_sort\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_list_sort:\09\09\09\09\09"
module asm "\09.asciz \09\22list_sort\22\09\09\09\09\09"
module asm "__kstrtabns_list_sort:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }

@__kstrtab_list_sort = external dso_local constant [0 x i8], align 1
@__kstrtabns_list_sort = external dso_local constant [0 x i8], align 1
@__ksymtab_list_sort = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @list_sort to i32), ptr @__kstrtab_list_sort, ptr @__kstrtabns_list_sort }, section "___ksymtab+list_sort", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_list_sort], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @list_sort(ptr noundef %priv, ptr noundef %head, ptr nocapture noundef readonly %cmp) #0 align 64 {
entry:
  %head.i63 = alloca ptr, align 4
  %head.i = alloca ptr, align 4
  %pending = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #3
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pending)
  %2 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %pending, align 4
  %prev = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %3 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev, align 4
  %cmp1 = icmp eq ptr %1, %4
  br i1 %cmp1, label %entry.cleanup26_crit_edge, label %if.end

entry.cleanup26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup26

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %4, align 4
  br label %do.body

do.body:                                          ; preds = %if.end12.do.body_crit_edge, %if.end
  %count.0 = phi i32 [ 0, %if.end ], [ %inc, %if.end12.do.body_crit_edge ]
  %list.0 = phi ptr [ %1, %if.end ], [ %30, %if.end12.do.body_crit_edge ]
  %and102 = and i32 %count.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool.not103 = icmp eq i32 %and102, 0
  br i1 %tobool.not103, label %do.body.for.end_crit_edge, label %do.body.for.body_crit_edge

do.body.for.body_crit_edge:                       ; preds = %do.body
  br label %for.body

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.body.for.body_crit_edge
  %tail.0105 = phi ptr [ %prev4, %for.body.for.body_crit_edge ], [ %pending, %do.body.for.body_crit_edge ]
  %bits.0104 = phi i32 [ %shr, %for.body.for.body_crit_edge ], [ %count.0, %do.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %tail.0105 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.0105, align 4
  %prev4 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %shr = lshr i32 %bits.0104, 1
  %8 = and i32 %bits.0104, 2
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.body.for.end_crit_edge
  %bits.0.lcssa = phi i32 [ %count.0, %do.body.for.end_crit_edge ], [ %shr, %for.body.for.end_crit_edge ]
  %tail.0.lcssa = phi ptr [ %pending, %do.body.for.end_crit_edge ], [ %prev4, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bits.0.lcssa)
  %tobool5.not = icmp eq i32 %bits.0.lcssa, 0
  br i1 %tobool5.not, label %for.end.if.end12_crit_edge, label %if.then8, !prof !10

for.end.if.end12_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end12

if.then8:                                         ; preds = %for.end
  %9 = ptrtoint ptr %tail.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tail.0.lcssa, align 4
  %prev9 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %head.i)
  %13 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 -1 to ptr), ptr %head.i, align 4
  br label %for.cond.i.outer

for.cond.i.outer:                                 ; preds = %if.then.i.for.cond.i.outer_crit_edge, %if.then8
  %a.addr.0.i.ph = phi ptr [ %16, %if.then.i.for.cond.i.outer_crit_edge ], [ %12, %if.then8 ]
  %b.addr.0.i.ph = phi ptr [ %b.addr.0.i, %if.then.i.for.cond.i.outer_crit_edge ], [ %10, %if.then8 ]
  %tail.0.i.ph = phi ptr [ %a.addr.0.i.ph, %if.then.i.for.cond.i.outer_crit_edge ], [ %head.i, %if.then8 ]
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.else.i.for.cond.i_crit_edge, %for.cond.i.outer
  %b.addr.0.i = phi ptr [ %20, %if.else.i.for.cond.i_crit_edge ], [ %b.addr.0.i.ph, %for.cond.i.outer ]
  %tail.0.i = phi ptr [ %b.addr.0.i, %if.else.i.for.cond.i_crit_edge ], [ %tail.0.i.ph, %for.cond.i.outer ]
  %call.i = tail call i32 %cmp(ptr noundef %priv, ptr noundef %a.addr.0.i.ph, ptr noundef %b.addr.0.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp1.i = icmp slt i32 %call.i, 1
  br i1 %cmp1.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.cond.i
  %14 = ptrtoint ptr %tail.0.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %a.addr.0.i.ph, ptr %tail.0.i, align 4
  %15 = ptrtoint ptr %a.addr.0.i.ph to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %a.addr.0.i.ph, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.then3.i, label %if.then.i.for.cond.i.outer_crit_edge

if.then.i.for.cond.i.outer_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.cond.i.outer

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #3
  %17 = ptrtoint ptr %a.addr.0.i.ph to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %b.addr.0.i, ptr %a.addr.0.i.ph, align 4
  br label %merge.exit

if.else.i:                                        ; preds = %for.cond.i
  %18 = ptrtoint ptr %tail.0.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %b.addr.0.i, ptr %tail.0.i, align 4
  %19 = ptrtoint ptr %b.addr.0.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %b.addr.0.i, align 4
  %tobool6.not.i = icmp eq ptr %20, null
  br i1 %tobool6.not.i, label %if.then7.i, label %if.else.i.for.cond.i_crit_edge

if.else.i.for.cond.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.cond.i

if.then7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #3
  %21 = ptrtoint ptr %b.addr.0.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %a.addr.0.i.ph, ptr %b.addr.0.i, align 4
  br label %merge.exit

merge.exit:                                       ; preds = %if.then7.i, %if.then3.i
  %22 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %head.i.0.head.i.0.head.0.head.0.head.0..i = load ptr, ptr %head.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %head.i)
  %prev10 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %23 = ptrtoint ptr %prev10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev10, align 4
  %prev11 = getelementptr inbounds %struct.list_head, ptr %head.i.0.head.i.0.head.0.head.0.head.0..i, i32 0, i32 1
  %25 = ptrtoint ptr %prev11 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %prev11, align 4
  %26 = ptrtoint ptr %tail.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %head.i.0.head.i.0.head.0.head.0.head.0..i, ptr %tail.0.lcssa, align 4
  br label %if.end12

if.end12:                                         ; preds = %merge.exit, %for.end.if.end12_crit_edge
  %27 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %27)
  %pending.0.pending.0.pending.0. = load ptr, ptr %pending, align 4
  %prev13 = getelementptr inbounds %struct.list_head, ptr %list.0, i32 0, i32 1
  %28 = ptrtoint ptr %prev13 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %pending.0.pending.0.pending.0., ptr %prev13, align 4
  store ptr %list.0, ptr %pending, align 4
  %29 = ptrtoint ptr %list.0 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %list.0, align 4
  store ptr null, ptr %list.0, align 4
  %inc = add i32 %count.0, 1
  %tobool16.not = icmp eq ptr %30, null
  br i1 %tobool16.not, label %for.cond18.preheader, label %if.end12.do.body_crit_edge

if.end12.do.body_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #3
  br label %do.body

for.cond18.preheader:                             ; preds = %if.end12
  %31 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %pending.0.pending.0.pending.0., ptr %pending, align 4
  %prev20107 = getelementptr inbounds %struct.list_head, ptr %pending.0.pending.0.pending.0., i32 0, i32 1
  %32 = ptrtoint ptr %prev20107 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev20107, align 4
  %tobool21.not108 = icmp eq ptr %33, null
  br i1 %tobool21.not108, label %for.cond18.preheader.for.end25_crit_edge, label %for.cond18.preheader.if.end23_crit_edge

for.cond18.preheader.if.end23_crit_edge:          ; preds = %for.cond18.preheader
  br label %if.end23

for.cond18.preheader.for.end25_crit_edge:         ; preds = %for.cond18.preheader
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.end25

if.end23:                                         ; preds = %cleanup.if.end23_crit_edge, %for.cond18.preheader.if.end23_crit_edge
  %34 = phi ptr [ %47, %cleanup.if.end23_crit_edge ], [ %33, %for.cond18.preheader.if.end23_crit_edge ]
  %list.1110 = phi ptr [ %head.i63.0.head.i63.0.head.0.head.0.head.0..i80, %cleanup.if.end23_crit_edge ], [ %list.0, %for.cond18.preheader.if.end23_crit_edge ]
  %storemerge109 = phi ptr [ %34, %cleanup.if.end23_crit_edge ], [ %pending.0.pending.0.pending.0., %for.cond18.preheader.if.end23_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %head.i63)
  %35 = ptrtoint ptr %head.i63 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 -1 to ptr), ptr %head.i63, align 4
  br label %for.cond.i69.outer

for.cond.i69.outer:                               ; preds = %if.then.i71.for.cond.i69.outer_crit_edge, %if.end23
  %a.addr.0.i64.ph = phi ptr [ %38, %if.then.i71.for.cond.i69.outer_crit_edge ], [ %storemerge109, %if.end23 ]
  %b.addr.0.i65.ph = phi ptr [ %b.addr.0.i65, %if.then.i71.for.cond.i69.outer_crit_edge ], [ %list.1110, %if.end23 ]
  %tail.0.i66.ph = phi ptr [ %a.addr.0.i64.ph, %if.then.i71.for.cond.i69.outer_crit_edge ], [ %head.i63, %if.end23 ]
  br label %for.cond.i69

for.cond.i69:                                     ; preds = %if.else.i74.for.cond.i69_crit_edge, %for.cond.i69.outer
  %b.addr.0.i65 = phi ptr [ %42, %if.else.i74.for.cond.i69_crit_edge ], [ %b.addr.0.i65.ph, %for.cond.i69.outer ]
  %tail.0.i66 = phi ptr [ %b.addr.0.i65, %if.else.i74.for.cond.i69_crit_edge ], [ %tail.0.i66.ph, %for.cond.i69.outer ]
  %call.i67 = tail call i32 %cmp(ptr noundef %priv, ptr noundef %a.addr.0.i64.ph, ptr noundef %b.addr.0.i65) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i67)
  %cmp1.i68 = icmp slt i32 %call.i67, 1
  br i1 %cmp1.i68, label %if.then.i71, label %if.else.i74

if.then.i71:                                      ; preds = %for.cond.i69
  %36 = ptrtoint ptr %tail.0.i66 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %a.addr.0.i64.ph, ptr %tail.0.i66, align 4
  %37 = ptrtoint ptr %a.addr.0.i64.ph to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %a.addr.0.i64.ph, align 4
  %tobool.not.i70 = icmp eq ptr %38, null
  br i1 %tobool.not.i70, label %if.then3.i72, label %if.then.i71.for.cond.i69.outer_crit_edge

if.then.i71.for.cond.i69.outer_crit_edge:         ; preds = %if.then.i71
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.cond.i69.outer

if.then3.i72:                                     ; preds = %if.then.i71
  call void @__sanitizer_cov_trace_pc() #3
  %39 = ptrtoint ptr %a.addr.0.i64.ph to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %b.addr.0.i65, ptr %a.addr.0.i64.ph, align 4
  br label %cleanup

if.else.i74:                                      ; preds = %for.cond.i69
  %40 = ptrtoint ptr %tail.0.i66 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %b.addr.0.i65, ptr %tail.0.i66, align 4
  %41 = ptrtoint ptr %b.addr.0.i65 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %b.addr.0.i65, align 4
  %tobool6.not.i73 = icmp eq ptr %42, null
  br i1 %tobool6.not.i73, label %if.then7.i75, label %if.else.i74.for.cond.i69_crit_edge

if.else.i74.for.cond.i69_crit_edge:               ; preds = %if.else.i74
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.cond.i69

if.then7.i75:                                     ; preds = %if.else.i74
  call void @__sanitizer_cov_trace_pc() #3
  %43 = ptrtoint ptr %b.addr.0.i65 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %a.addr.0.i64.ph, ptr %b.addr.0.i65, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then7.i75, %if.then3.i72
  %44 = ptrtoint ptr %head.i63 to i32
  call void @__asan_load4_noabort(i32 %44)
  %head.i63.0.head.i63.0.head.0.head.0.head.0..i80 = load ptr, ptr %head.i63, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %head.i63)
  %45 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %34, ptr %pending, align 4
  %prev20 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %46 = ptrtoint ptr %prev20 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev20, align 4
  %tobool21.not = icmp eq ptr %47, null
  br i1 %tobool21.not, label %cleanup.for.end25_crit_edge, label %cleanup.if.end23_crit_edge

cleanup.if.end23_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end23

cleanup.for.end25_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.end25

for.end25:                                        ; preds = %cleanup.for.end25_crit_edge, %for.cond18.preheader.for.end25_crit_edge
  %list.1.lcssa = phi ptr [ %list.0, %for.cond18.preheader.for.end25_crit_edge ], [ %head.i63.0.head.i63.0.head.0.head.0.head.0..i80, %cleanup.for.end25_crit_edge ]
  %48 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %48)
  %pending.0.pending.0.pending.0.59 = load ptr, ptr %pending, align 4
  br label %for.cond.i87.outer

for.cond.i87.outer:                               ; preds = %if.then.i89.for.cond.i87.outer_crit_edge, %for.end25
  %a.addr.0.i82.ph = phi ptr [ %52, %if.then.i89.for.cond.i87.outer_crit_edge ], [ %pending.0.pending.0.pending.0.59, %for.end25 ]
  %b.addr.0.i83.ph = phi ptr [ %b.addr.0.i83, %if.then.i89.for.cond.i87.outer_crit_edge ], [ %list.1.lcssa, %for.end25 ]
  %tail.0.i84.ph = phi ptr [ %a.addr.0.i82.ph, %if.then.i89.for.cond.i87.outer_crit_edge ], [ %head, %for.end25 ]
  br label %for.cond.i87

for.cond.i87:                                     ; preds = %if.else.i90.for.cond.i87_crit_edge, %for.cond.i87.outer
  %b.addr.0.i83 = phi ptr [ %56, %if.else.i90.for.cond.i87_crit_edge ], [ %b.addr.0.i83.ph, %for.cond.i87.outer ]
  %tail.0.i84 = phi ptr [ %b.addr.0.i83, %if.else.i90.for.cond.i87_crit_edge ], [ %tail.0.i84.ph, %for.cond.i87.outer ]
  %call.i85 = tail call i32 %cmp(ptr noundef %priv, ptr noundef %a.addr.0.i82.ph, ptr noundef %b.addr.0.i83) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i85)
  %cmp1.i86 = icmp slt i32 %call.i85, 1
  br i1 %cmp1.i86, label %if.then.i89, label %if.else.i90

if.then.i89:                                      ; preds = %for.cond.i87
  %49 = ptrtoint ptr %tail.0.i84 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %a.addr.0.i82.ph, ptr %tail.0.i84, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %a.addr.0.i82.ph, i32 0, i32 1
  %50 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %tail.0.i84, ptr %prev.i, align 4
  %51 = ptrtoint ptr %a.addr.0.i82.ph to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %a.addr.0.i82.ph, align 4
  %tobool.not.i88 = icmp eq ptr %52, null
  br i1 %tobool.not.i88, label %if.then.i89.for.end.i_crit_edge, label %if.then.i89.for.cond.i87.outer_crit_edge

if.then.i89.for.cond.i87.outer_crit_edge:         ; preds = %if.then.i89
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.cond.i87.outer

if.then.i89.for.end.i_crit_edge:                  ; preds = %if.then.i89
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.end.i

if.else.i90:                                      ; preds = %for.cond.i87
  %53 = ptrtoint ptr %tail.0.i84 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %b.addr.0.i83, ptr %tail.0.i84, align 4
  %prev5.i = getelementptr inbounds %struct.list_head, ptr %b.addr.0.i83, i32 0, i32 1
  %54 = ptrtoint ptr %prev5.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %tail.0.i84, ptr %prev5.i, align 4
  %55 = ptrtoint ptr %b.addr.0.i83 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %b.addr.0.i83, align 4
  %tobool7.not.i = icmp eq ptr %56, null
  br i1 %tobool7.not.i, label %if.else.i90.for.end.i_crit_edge, label %if.else.i90.for.cond.i87_crit_edge

if.else.i90.for.cond.i87_crit_edge:               ; preds = %if.else.i90
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.cond.i87

if.else.i90.for.end.i_crit_edge:                  ; preds = %if.else.i90
  call void @__sanitizer_cov_trace_pc() #3
  br label %for.end.i

for.end.i:                                        ; preds = %if.else.i90.for.end.i_crit_edge, %if.then.i89.for.end.i_crit_edge
  %b.addr.2.i = phi ptr [ %a.addr.0.i82.ph, %if.else.i90.for.end.i_crit_edge ], [ %b.addr.0.i83, %if.then.i89.for.end.i_crit_edge ]
  %tail.2.i = phi ptr [ %b.addr.0.i83, %if.else.i90.for.end.i_crit_edge ], [ %a.addr.0.i82.ph, %if.then.i89.for.end.i_crit_edge ]
  %57 = ptrtoint ptr %tail.2.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %b.addr.2.i, ptr %tail.2.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.end18.i.do.body.i_crit_edge, %for.end.i
  %b.addr.3.i = phi ptr [ %b.addr.2.i, %for.end.i ], [ %60, %if.end18.i.do.body.i_crit_edge ]
  %tail.3.i = phi ptr [ %tail.2.i, %for.end.i ], [ %b.addr.3.i, %if.end18.i.do.body.i_crit_edge ]
  %count.0.i = phi i8 [ 0, %for.end.i ], [ %inc.i, %if.end18.i.do.body.i_crit_edge ]
  %inc.i = add i8 %count.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %inc.i)
  %tobool12.not.i = icmp eq i8 %inc.i, 0
  br i1 %tobool12.not.i, label %if.then16.i, label %do.body.i.if.end18.i_crit_edge, !prof !10

do.body.i.if.end18.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end18.i

if.then16.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #3
  %call17.i = tail call i32 %cmp(ptr noundef %priv, ptr noundef %b.addr.3.i, ptr noundef %b.addr.3.i) #4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then16.i, %do.body.i.if.end18.i_crit_edge
  %prev19.i = getelementptr inbounds %struct.list_head, ptr %b.addr.3.i, i32 0, i32 1
  %58 = ptrtoint ptr %prev19.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %tail.3.i, ptr %prev19.i, align 4
  %59 = ptrtoint ptr %b.addr.3.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %b.addr.3.i, align 4
  %tobool21.not.i = icmp eq ptr %60, null
  br i1 %tobool21.not.i, label %merge_final.exit, label %if.end18.i.do.body.i_crit_edge

if.end18.i.do.body.i_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %do.body.i

merge_final.exit:                                 ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #3
  %61 = ptrtoint ptr %b.addr.3.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %head, ptr %b.addr.3.i, align 4
  %62 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %b.addr.3.i, ptr %prev, align 4
  br label %cleanup26

cleanup26:                                        ; preds = %merge_final.exit, %entry.cleanup26_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pending)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind uwtable(sync) }
attributes #3 = { nomerge }
attributes #4 = { nounwind }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{ptr @__ksymtab_list_sort, !1, !"__ksymtab_list_sort", i1 false, i1 false}
!1 = !{!"../lib/list_sort.c", i32 253, i32 1}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!10 = !{!"branch_weights", i32 1, i32 2000}
