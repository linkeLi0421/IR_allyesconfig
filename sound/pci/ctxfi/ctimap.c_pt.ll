; ModuleID = '/llk/IR_all_yes/sound/pci/ctxfi/ctimap.c_pt.bc'
source_filename = "../sound/pci/ctxfi/ctimap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.imapper = type { i16, i16, i16, i16, %struct.list_head }
%struct.list_head = type { ptr, ptr }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @input_mapper_add(ptr noundef %mappers, ptr noundef %entry1, ptr nocapture noundef readonly %map_op, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mappers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %mappers, align 4
  %cmp.i.not = icmp eq ptr %1, %mappers
  br i1 %cmp.i.not, label %if.then, label %entry.for.cond_crit_edge

entry.for.cond_crit_edge:                         ; preds = %entry
  br label %for.cond

if.then:                                          ; preds = %entry
  %addr = getelementptr inbounds %struct.imapper, ptr %entry1, i32 0, i32 2
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %addr, align 4
  %next = getelementptr inbounds %struct.imapper, ptr %entry1, i32 0, i32 3
  %4 = ptrtoint ptr %next to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %next, align 2
  %call2 = tail call i32 %map_op(ptr noundef %data, ptr noundef %entry1) #2
  %list = getelementptr inbounds %struct.imapper, ptr %entry1, i32 0, i32 4
  %5 = ptrtoint ptr %mappers to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mappers, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %mappers, ptr noundef %6) #2
  br i1 %call.i.i, label %if.end.i.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list, ptr %prev1.i.i, align 4
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %6, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.imapper, ptr %entry1, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %mappers, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %mappers to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %list, ptr %mappers, align 4
  br label %cleanup

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry.for.cond_crit_edge
  %pos.0.in = phi ptr [ %pos.0, %for.body.for.cond_crit_edge ], [ %mappers, %entry.for.cond_crit_edge ]
  %11 = ptrtoint ptr %pos.0.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %pos.0 = load ptr, ptr %pos.0.in, align 4
  %cmp.i74 = icmp eq ptr %pos.0, %mappers
  br i1 %cmp.i74, label %if.else, label %for.body

for.body:                                         ; preds = %for.cond
  %add.ptr = getelementptr i8, ptr %pos.0, i32 -8
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr, align 4
  %14 = ptrtoint ptr %entry1 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %entry1, align 4
  %cmp = icmp ugt i16 %13, %15
  br i1 %cmp, label %if.then14.critedge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.cond

if.then14.critedge:                               ; preds = %for.body
  %prev = getelementptr inbounds %struct.list_head, ptr %pos.0, i32 0, i32 1
  %16 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev, align 4
  %cmp15 = icmp eq ptr %17, %mappers
  br i1 %cmp15, label %if.then17, label %if.then14.critedge.if.end19_crit_edge

if.then14.critedge.if.end19_crit_edge:            ; preds = %if.then14.critedge
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end19

if.then17:                                        ; preds = %if.then14.critedge
  call void @__sanitizer_cov_trace_pc() #4
  %prev18 = getelementptr inbounds %struct.list_head, ptr %mappers, i32 0, i32 1
  %18 = ptrtoint ptr %prev18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev18, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.then14.critedge.if.end19_crit_edge
  %pre.0 = phi ptr [ %19, %if.then17 ], [ %17, %if.then14.critedge.if.end19_crit_edge ]
  %list20 = getelementptr inbounds %struct.imapper, ptr %entry1, i32 0, i32 4
  %call.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list20, ptr noundef %17, ptr noundef %pos.0) #2
  br i1 %call.i, label %if.end.i, label %if.end19.if.end25_crit_edge

if.end19.if.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end25

if.end.i:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #4
  %20 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %list20, ptr %prev, align 4
  %21 = ptrtoint ptr %list20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %pos.0, ptr %list20, align 4
  %prev3.i = getelementptr inbounds %struct.imapper, ptr %entry1, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %prev3.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %17, ptr %prev3.i, align 4
  %23 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %list20, ptr %17, align 4
  br label %if.end25

if.else:                                          ; preds = %for.cond
  %prev22 = getelementptr inbounds %struct.list_head, ptr %mappers, i32 0, i32 1
  %24 = ptrtoint ptr %prev22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev22, align 4
  %list24 = getelementptr inbounds %struct.imapper, ptr %entry1, i32 0, i32 4
  %call.i.i76 = tail call zeroext i1 @__list_add_valid(ptr noundef %list24, ptr noundef %25, ptr noundef %mappers) #2
  br i1 %call.i.i76, label %if.end.i.i78, label %if.else.if.end25_crit_edge

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end25

if.end.i.i78:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  %26 = ptrtoint ptr %prev22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %list24, ptr %prev22, align 4
  %27 = ptrtoint ptr %list24 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %mappers, ptr %list24, align 4
  %prev3.i.i77 = getelementptr inbounds %struct.imapper, ptr %entry1, i32 0, i32 4, i32 1
  %28 = ptrtoint ptr %prev3.i.i77 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev3.i.i77, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %list24, ptr %25, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.end.i.i78, %if.else.if.end25_crit_edge, %if.end.i, %if.end19.if.end25_crit_edge
  %pre.1 = phi ptr [ %pre.0, %if.end19.if.end25_crit_edge ], [ %pre.0, %if.end.i ], [ %25, %if.else.if.end25_crit_edge ], [ %25, %if.end.i.i78 ]
  %pos.1 = phi ptr [ %pos.0, %if.end19.if.end25_crit_edge ], [ %pos.0, %if.end.i ], [ %1, %if.else.if.end25_crit_edge ], [ %1, %if.end.i.i78 ]
  %add.ptr28 = getelementptr i8, ptr %pre.1, i32 -8
  %addr32 = getelementptr i8, ptr %pos.1, i32 -4
  %30 = ptrtoint ptr %addr32 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %addr32, align 4
  %next33 = getelementptr inbounds %struct.imapper, ptr %entry1, i32 0, i32 3
  %32 = ptrtoint ptr %next33 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %next33, align 2
  %call34 = tail call i32 %map_op(ptr noundef %data, ptr noundef %entry1) #2
  %addr35 = getelementptr inbounds %struct.imapper, ptr %entry1, i32 0, i32 2
  %33 = ptrtoint ptr %addr35 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %addr35, align 4
  %next36 = getelementptr i8, ptr %pre.1, i32 -2
  %35 = ptrtoint ptr %next36 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %next36, align 2
  %call37 = tail call i32 %map_op(ptr noundef %data, ptr noundef %add.ptr28) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end.i.i, %if.then.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @input_mapper_delete(ptr noundef %mappers, ptr noundef %entry1, ptr nocapture noundef readonly %map_op, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mappers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %mappers, align 4
  %cmp.i.not = icmp eq ptr %1, %mappers
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %list = getelementptr inbounds %struct.imapper, ptr %entry1, i32 0, i32 4
  %prev = getelementptr inbounds %struct.imapper, ptr %entry1, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev, align 4
  %cmp = icmp eq ptr %3, %mappers
  br i1 %cmp, label %cond.true, label %if.end.cond.end_crit_edge

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %prev2 = getelementptr inbounds %struct.list_head, ptr %mappers, i32 0, i32 1
  %4 = ptrtoint ptr %prev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi ptr [ %5, %cond.true ], [ %3, %if.end.cond.end_crit_edge ]
  %cmp16 = icmp eq ptr %cond, %list
  br i1 %cmp16, label %if.then17, label %if.end21

if.then17:                                        ; preds = %cond.end
  %6 = ptrtoint ptr %entry1 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 0, ptr %entry1, align 4
  %call19 = tail call i32 %map_op(ptr noundef %data, ptr noundef %entry1) #2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #2
  br i1 %call.i.i, label %if.end.i.i, label %if.then17.cleanup.sink.split_crit_edge

if.then17.cleanup.sink.split_crit_edge:           ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.sink.split

if.end.i.i:                                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #4
  %7 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev, align 4
  %9 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %cleanup.sink.split

if.end21:                                         ; preds = %cond.end
  %13 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %list, align 4
  %cmp7 = icmp eq ptr %14, %mappers
  %spec.select = select i1 %cmp7, ptr %1, ptr %14
  %add.ptr = getelementptr i8, ptr %cond, i32 -8
  %addr25 = getelementptr i8, ptr %spec.select, i32 -4
  %15 = ptrtoint ptr %addr25 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %addr25, align 4
  %next26 = getelementptr i8, ptr %cond, i32 -2
  %17 = ptrtoint ptr %next26 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %next26, align 2
  %call27 = tail call i32 %map_op(ptr noundef %data, ptr noundef %add.ptr) #2
  %call.i.i53 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #2
  br i1 %call.i.i53, label %if.end.i.i56, label %if.end21.cleanup.sink.split_crit_edge

if.end21.cleanup.sink.split_crit_edge:            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup.sink.split

if.end.i.i56:                                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #4
  %18 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev, align 4
  %20 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %list, align 4
  %prev1.i.i.i55 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i55 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i55, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.i.i56, %if.end21.cleanup.sink.split_crit_edge, %if.end.i.i, %if.then17.cleanup.sink.split_crit_edge
  %24 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %25 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @free_input_mapper_list(ptr noundef %head) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %head, align 4
  %cmp.i.not4 = icmp eq ptr %1, %head
  br i1 %cmp.i.not4, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %12, %list_del.exit.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #2
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 -8
  tail call void @kfree(ptr noundef %add.ptr) #2
  %11 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %head, align 4
  %cmp.i.not = icmp eq ptr %12, %head
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

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
