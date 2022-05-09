; ModuleID = '/llk/IR_all_yes/lib/plist.c_pt.bc'
source_filename = "../lib/plist.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.plist_head = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }

@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lib/plist.c\00", [20 x i8] zeroinitializer }, align 32
@__initcall__kmod_plist__160_261_plist_test6 = internal global ptr @plist_test, section ".initcall6.init", align 4
@.str.1 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"top: %p, n: %p, p: %p\0Aprev: %p, n: %p, p: %p\0Anext: %p, n: %p, p: %p\0A\00", [59 x i8] zeroinitializer }, align 32
@plist_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017start plist test\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"plist_test\00", [21 x i8] zeroinitializer }, align 32
@plist_test._entry_ptr = internal global ptr @plist_test._entry, section ".printk_index", align 4
@test_head = internal global { %struct.plist_head, [24 x i8] } zeroinitializer, align 32
@test_node = internal global [241 x %struct.plist_node] zeroinitializer, section ".init.data", align 4
@plist_test._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.3, ptr @.str, i32 257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017end plist test\0A\00", [46 x i8] zeroinitializer }, align 32
@plist_test._entry_ptr.6 = internal global ptr @plist_test._entry.4, section ".printk_index", align 4
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 79, i32 2 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 35, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 225, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [10 x i8] c"test_head\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 30, i32 26 }
@___asan_gen_.25 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private constant [15 x i8] c"../lib/plist.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 257, i32 2 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__initcall__kmod_plist__160_261_plist_test6, ptr @plist_test._entry, ptr @plist_test._entry.4, ptr @plist_test._entry_ptr, ptr @plist_test._entry_ptr.6, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @test_head, ptr @.str.5], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plist_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_head to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plist_test._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @plist_add(ptr noundef %node, ptr noundef %head) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %head, align 4
  %cmp.i.i.not.i = icmp eq ptr %1, %head
  br i1 %cmp.i.i.not.i, label %entry.plist_check_head.exit_crit_edge, label %if.then.i

entry.plist_check_head.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %plist_check_head.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %prio_list.i = getelementptr i8, ptr %1, i32 -8
  tail call fastcc void @plist_check_list(ptr noundef %prio_list.i) #6
  br label %plist_check_head.exit

plist_check_head.exit:                            ; preds = %if.then.i, %entry.plist_check_head.exit_crit_edge
  tail call fastcc void @plist_check_list(ptr noundef %head) #6
  %node_list.i = getelementptr inbounds %struct.plist_node, ptr %node, i32 0, i32 2
  %2 = ptrtoint ptr %node_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %node_list.i, align 4
  %cmp.i.i.not = icmp eq ptr %3, %node_list.i
  br i1 %cmp.i.i.not, label %plist_check_head.exit.if.end_crit_edge, label %do.end, !prof !27

plist_check_head.exit.if.end_crit_edge:           ; preds = %plist_check_head.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.end:                                           ; preds = %plist_check_head.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 79, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %plist_check_head.exit.if.end_crit_edge
  %prio_list = getelementptr inbounds %struct.plist_node, ptr %node, i32 0, i32 1
  %4 = ptrtoint ptr %prio_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %prio_list, align 4
  %cmp.i.not = icmp eq ptr %5, %prio_list
  br i1 %cmp.i.not, label %if.end.if.end47_crit_edge, label %do.end41, !prof !27

if.end.if.end47_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end47

do.end41:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 80, i32 noundef 9, ptr noundef null) #6
  br label %if.end47

if.end47:                                         ; preds = %do.end41, %if.end.if.end47_crit_edge
  %6 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %head, align 4
  %cmp.i.i96.not = icmp eq ptr %7, %head
  br i1 %cmp.i.i96.not, label %if.end47.ins_node_crit_edge, label %if.end58

if.end47.ins_node_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #5
  br label %ins_node

if.end58:                                         ; preds = %if.end47
  %add.ptr.i = getelementptr i8, ptr %7, i32 -12
  %8 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %node, align 4
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp110 = icmp slt i32 %9, %11
  br i1 %cmp110, label %if.end58.if.then62_crit_edge, label %if.end58.if.end64_crit_edge

if.end58.if.end64_crit_edge:                      ; preds = %if.end58
  br label %if.end64

if.end58.if.then62_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then62

do.body60:                                        ; preds = %if.end64
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr, align 4
  %cmp = icmp slt i32 %9, %13
  br i1 %cmp, label %do.body60.if.then62_crit_edge, label %do.body60.if.end64_crit_edge

do.body60.if.end64_crit_edge:                     ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end64

do.body60.if.then62_crit_edge:                    ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then62

if.then62:                                        ; preds = %do.body60.if.then62_crit_edge, %if.end58.if.then62_crit_edge
  %prev.0.lcssa = phi ptr [ null, %if.end58.if.then62_crit_edge ], [ %iter.0111, %do.body60.if.then62_crit_edge ]
  %iter.0.lcssa = phi ptr [ %add.ptr.i, %if.end58.if.then62_crit_edge ], [ %add.ptr, %do.body60.if.then62_crit_edge ]
  %node_list63 = getelementptr inbounds %struct.plist_node, ptr %iter.0.lcssa, i32 0, i32 2
  br label %do.end69

if.end64:                                         ; preds = %do.body60.if.end64_crit_edge, %if.end58.if.end64_crit_edge
  %iter.0111 = phi ptr [ %add.ptr, %do.body60.if.end64_crit_edge ], [ %add.ptr.i, %if.end58.if.end64_crit_edge ]
  %prio_list65 = getelementptr inbounds %struct.plist_node, ptr %iter.0111, i32 0, i32 1
  %14 = ptrtoint ptr %prio_list65 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prio_list65, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 -4
  %cmp68.not = icmp eq ptr %add.ptr, %add.ptr.i
  br i1 %cmp68.not, label %if.end64.do.end69_crit_edge, label %do.body60

if.end64.do.end69_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end69

do.end69:                                         ; preds = %if.end64.do.end69_crit_edge, %if.then62
  %node_next.0 = phi ptr [ %node_list63, %if.then62 ], [ %head, %if.end64.do.end69_crit_edge ]
  %prev.1 = phi ptr [ %prev.0.lcssa, %if.then62 ], [ %iter.0111, %if.end64.do.end69_crit_edge ]
  %iter.1 = phi ptr [ %iter.0.lcssa, %if.then62 ], [ %add.ptr.i, %if.end64.do.end69_crit_edge ]
  %tobool70.not = icmp eq ptr %prev.1, null
  br i1 %tobool70.not, label %do.end69.if.then74_crit_edge, label %lor.lhs.false

do.end69.if.then74_crit_edge:                     ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then74

lor.lhs.false:                                    ; preds = %do.end69
  %16 = ptrtoint ptr %prev.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %prev.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %9)
  %cmp73.not = icmp eq i32 %17, %9
  br i1 %cmp73.not, label %lor.lhs.false.ins_node_crit_edge, label %lor.lhs.false.if.then74_crit_edge

lor.lhs.false.if.then74_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then74

lor.lhs.false.ins_node_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %ins_node

if.then74:                                        ; preds = %lor.lhs.false.if.then74_crit_edge, %do.end69.if.then74_crit_edge
  %prio_list76 = getelementptr inbounds %struct.plist_node, ptr %iter.1, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.plist_node, ptr %iter.1, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %prio_list, ptr noundef %19, ptr noundef %prio_list76) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.then74.ins_node_crit_edge

if.then74.ins_node_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #5
  br label %ins_node

if.end.i.i:                                       ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #5
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %prio_list, ptr %prev.i, align 4
  %21 = ptrtoint ptr %prio_list to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %prio_list76, ptr %prio_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.plist_node, ptr %node, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev3.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %prio_list, ptr %19, align 4
  br label %ins_node

ins_node:                                         ; preds = %if.end.i.i, %if.then74.ins_node_crit_edge, %lor.lhs.false.ins_node_crit_edge, %if.end47.ins_node_crit_edge
  %node_next.1 = phi ptr [ %head, %if.end47.ins_node_crit_edge ], [ %node_next.0, %lor.lhs.false.ins_node_crit_edge ], [ %node_next.0, %if.then74.ins_node_crit_edge ], [ %node_next.0, %if.end.i.i ]
  %prev.i98 = getelementptr inbounds %struct.list_head, ptr %node_next.1, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i98 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i98, align 4
  %call.i.i99 = tail call zeroext i1 @__list_add_valid(ptr noundef %node_list.i, ptr noundef %25, ptr noundef %node_next.1) #6
  br i1 %call.i.i99, label %if.end.i.i101, label %ins_node.list_add_tail.exit102_crit_edge

ins_node.list_add_tail.exit102_crit_edge:         ; preds = %ins_node
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit102

if.end.i.i101:                                    ; preds = %ins_node
  call void @__sanitizer_cov_trace_pc() #5
  %26 = ptrtoint ptr %prev.i98 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %node_list.i, ptr %prev.i98, align 4
  %27 = ptrtoint ptr %node_list.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %node_next.1, ptr %node_list.i, align 4
  %prev3.i.i100 = getelementptr inbounds %struct.plist_node, ptr %node, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %prev3.i.i100 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev3.i.i100, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %node_list.i, ptr %25, align 4
  br label %list_add_tail.exit102

list_add_tail.exit102:                            ; preds = %if.end.i.i101, %ins_node.list_add_tail.exit102_crit_edge
  %30 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %head, align 4
  %cmp.i.i.not.i103 = icmp eq ptr %31, %head
  br i1 %cmp.i.i.not.i103, label %list_add_tail.exit102.plist_check_head.exit106_crit_edge, label %if.then.i105

list_add_tail.exit102.plist_check_head.exit106_crit_edge: ; preds = %list_add_tail.exit102
  call void @__sanitizer_cov_trace_pc() #5
  br label %plist_check_head.exit106

if.then.i105:                                     ; preds = %list_add_tail.exit102
  call void @__sanitizer_cov_trace_pc() #5
  %prio_list.i104 = getelementptr i8, ptr %31, i32 -8
  tail call fastcc void @plist_check_list(ptr noundef %prio_list.i104) #6
  br label %plist_check_head.exit106

plist_check_head.exit106:                         ; preds = %if.then.i105, %list_add_tail.exit102.plist_check_head.exit106_crit_edge
  tail call fastcc void @plist_check_list(ptr noundef %head) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @plist_del(ptr noundef %node, ptr noundef %head) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %head, align 4
  %cmp.i.i.not.i = icmp eq ptr %1, %head
  br i1 %cmp.i.i.not.i, label %entry.plist_check_head.exit_crit_edge, label %if.then.i

entry.plist_check_head.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %plist_check_head.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %prio_list.i = getelementptr i8, ptr %1, i32 -8
  tail call fastcc void @plist_check_list(ptr noundef %prio_list.i) #6
  br label %plist_check_head.exit

plist_check_head.exit:                            ; preds = %if.then.i, %entry.plist_check_head.exit_crit_edge
  tail call fastcc void @plist_check_list(ptr noundef %head) #6
  %prio_list = getelementptr inbounds %struct.plist_node, ptr %node, i32 0, i32 1
  %2 = ptrtoint ptr %prio_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %prio_list, align 4
  %cmp.i.not = icmp eq ptr %3, %prio_list
  br i1 %cmp.i.not, label %plist_check_head.exit.if.end14_crit_edge, label %if.then

plist_check_head.exit.if.end14_crit_edge:         ; preds = %plist_check_head.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14

if.then:                                          ; preds = %plist_check_head.exit
  %node_list = getelementptr inbounds %struct.plist_node, ptr %node, i32 0, i32 2
  %4 = ptrtoint ptr %node_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %node_list, align 4
  %cmp.not = icmp eq ptr %5, %head
  br i1 %cmp.not, label %if.then.if.end12_crit_edge, label %if.then2

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end12

if.then2:                                         ; preds = %if.then
  %prio_list6 = getelementptr i8, ptr %5, i32 -8
  %6 = ptrtoint ptr %prio_list6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %prio_list6, align 4
  %cmp.i24.not = icmp eq ptr %7, %prio_list6
  br i1 %cmp.i24.not, label %if.then9, label %if.then2.if.end12_crit_edge

if.then2.if.end12_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end12

if.then9:                                         ; preds = %if.then2
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %prio_list6, ptr noundef %prio_list, ptr noundef %3) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.then9.if.end12_crit_edge

if.then9.if.end12_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end12

if.end.i.i:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #5
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %prio_list6, ptr %prev1.i.i, align 4
  %9 = ptrtoint ptr %prio_list6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %3, ptr %prio_list6, align 4
  %prev3.i.i = getelementptr i8, ptr %5, i32 -4
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %prio_list, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %prio_list to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %prio_list6, ptr %prio_list, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end.i.i, %if.then9.if.end12_crit_edge, %if.then2.if.end12_crit_edge, %if.then.if.end12_crit_edge
  %call.i.i26 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %prio_list) #6
  br i1 %call.i.i26, label %if.end.i.i27, label %if.end12.list_del_init.exit_crit_edge

if.end12.list_del_init.exit_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del_init.exit

if.end.i.i27:                                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i = getelementptr inbounds %struct.plist_node, ptr %node, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %prio_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prio_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i27, %if.end12.list_del_init.exit_crit_edge
  %18 = ptrtoint ptr %prio_list to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %prio_list, ptr %prio_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.plist_node, ptr %node, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %prio_list, ptr %prev.i3.i, align 4
  br label %if.end14

if.end14:                                         ; preds = %list_del_init.exit, %plist_check_head.exit.if.end14_crit_edge
  %node_list15 = getelementptr inbounds %struct.plist_node, ptr %node, i32 0, i32 2
  %call.i.i28 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node_list15) #6
  br i1 %call.i.i28, label %if.end.i.i31, label %if.end14.list_del_init.exit33_crit_edge

if.end14.list_del_init.exit33_crit_edge:          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del_init.exit33

if.end.i.i31:                                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i29 = getelementptr inbounds %struct.plist_node, ptr %node, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %prev.i.i29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i29, align 4
  %22 = ptrtoint ptr %node_list15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %node_list15, align 4
  %prev1.i.i.i30 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i30 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i30, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del_init.exit33

list_del_init.exit33:                             ; preds = %if.end.i.i31, %if.end14.list_del_init.exit33_crit_edge
  %26 = ptrtoint ptr %node_list15 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %node_list15, ptr %node_list15, align 4
  %prev.i3.i32 = getelementptr inbounds %struct.plist_node, ptr %node, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %prev.i3.i32 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %node_list15, ptr %prev.i3.i32, align 4
  %28 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %head, align 4
  %cmp.i.i.not.i34 = icmp eq ptr %29, %head
  br i1 %cmp.i.i.not.i34, label %list_del_init.exit33.plist_check_head.exit37_crit_edge, label %if.then.i36

list_del_init.exit33.plist_check_head.exit37_crit_edge: ; preds = %list_del_init.exit33
  call void @__sanitizer_cov_trace_pc() #5
  br label %plist_check_head.exit37

if.then.i36:                                      ; preds = %list_del_init.exit33
  call void @__sanitizer_cov_trace_pc() #5
  %prio_list.i35 = getelementptr i8, ptr %29, i32 -8
  tail call fastcc void @plist_check_list(ptr noundef %prio_list.i35) #6
  br label %plist_check_head.exit37

plist_check_head.exit37:                          ; preds = %if.then.i36, %list_del_init.exit33.plist_check_head.exit37_crit_edge
  tail call fastcc void @plist_check_list(ptr noundef %head) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @plist_requeue(ptr noundef %node, ptr noundef %head) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %head, align 4
  %cmp.i.i.not.i = icmp eq ptr %1, %head
  br i1 %cmp.i.i.not.i, label %entry.plist_check_head.exit_crit_edge, label %if.then.i

entry.plist_check_head.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %plist_check_head.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %prio_list.i = getelementptr i8, ptr %1, i32 -8
  tail call fastcc void @plist_check_list(ptr noundef %prio_list.i) #6
  br label %plist_check_head.exit

plist_check_head.exit:                            ; preds = %if.then.i, %entry.plist_check_head.exit_crit_edge
  tail call fastcc void @plist_check_list(ptr noundef %head) #6
  %2 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %head, align 4
  %cmp.i.i.not = icmp eq ptr %3, %head
  br i1 %cmp.i.i.not, label %do.body3, label %do.body9, !prof !28

do.body3:                                         ; preds = %plist_check_head.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/plist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 151, 0\0A.popsection", ""() #6, !srcloc !29
  unreachable

do.body9:                                         ; preds = %plist_check_head.exit
  %node_list.i = getelementptr inbounds %struct.plist_node, ptr %node, i32 0, i32 2
  %4 = ptrtoint ptr %node_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %node_list.i, align 4
  %cmp.i.i76.not = icmp eq ptr %5, %node_list.i
  br i1 %cmp.i.i76.not, label %do.body19, label %do.end27, !prof !28

do.body19:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/plist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 152, 0\0A.popsection", ""() #6, !srcloc !30
  unreachable

do.end27:                                         ; preds = %do.body9
  %prev.i = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 -12
  %cmp = icmp eq ptr %add.ptr.i, %node
  br i1 %cmp, label %do.end27.cleanup_crit_edge, label %if.end30

do.end27.cleanup_crit_edge:                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end30:                                         ; preds = %do.end27
  %add.ptr = getelementptr i8, ptr %5, i32 -12
  %8 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %node, align 4
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp33.not = icmp eq i32 %9, %11
  br i1 %cmp33.not, label %if.end35, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end35:                                         ; preds = %if.end30
  tail call void @plist_del(ptr noundef %node, ptr noundef %head)
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end35
  %.pn.in = phi ptr [ %5, %if.end35 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %12 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp43.not = icmp eq ptr %.pn, %head
  br i1 %cmp43.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body:                                         ; preds = %for.cond
  %iter.0 = getelementptr i8, ptr %.pn, i32 -12
  %13 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %node, align 4
  %15 = ptrtoint ptr %iter.0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iter.0, align 4
  %cmp48.not = icmp eq i32 %14, %16
  br i1 %cmp48.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %node_next.0 = phi ptr [ %head, %for.cond.for.end_crit_edge ], [ %.pn, %for.body.for.end_crit_edge ]
  %prev.i78 = getelementptr inbounds %struct.list_head, ptr %node_next.0, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i78 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i78, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node_list.i, ptr noundef %18, ptr noundef %node_next.0) #6
  br i1 %call.i.i, label %if.end.i.i, label %for.end.list_add_tail.exit_crit_edge

for.end.list_add_tail.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  %19 = ptrtoint ptr %prev.i78 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %node_list.i, ptr %prev.i78, align 4
  %20 = ptrtoint ptr %node_list.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %node_next.0, ptr %node_list.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.plist_node, ptr %node, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev3.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %node_list.i, ptr %18, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.end.list_add_tail.exit_crit_edge
  %23 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %head, align 4
  %cmp.i.i.not.i79 = icmp eq ptr %24, %head
  br i1 %cmp.i.i.not.i79, label %list_add_tail.exit.plist_check_head.exit82_crit_edge, label %if.then.i81

list_add_tail.exit.plist_check_head.exit82_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %plist_check_head.exit82

if.then.i81:                                      ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #5
  %prio_list.i80 = getelementptr i8, ptr %24, i32 -8
  tail call fastcc void @plist_check_list(ptr noundef %prio_list.i80) #6
  br label %plist_check_head.exit82

plist_check_head.exit82:                          ; preds = %if.then.i81, %list_add_tail.exit.plist_check_head.exit82_crit_edge
  tail call fastcc void @plist_check_list(ptr noundef %head) #6
  br label %cleanup

cleanup:                                          ; preds = %plist_check_head.exit82, %if.end30.cleanup_crit_edge, %do.end27.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @plist_test() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %call.i = tail call i64 @sched_clock() #6
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #7
  store volatile ptr @test_head, ptr @test_head, align 4
  store ptr @test_head, ptr getelementptr inbounds (%struct.plist_head, ptr @test_head, i32 0, i32 0, i32 1), align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.074 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.plist_node, ptr @test_node, i32 %i.074
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %add.ptr, align 4
  %prio_list.i = getelementptr %struct.plist_node, ptr @test_node, i32 %i.074, i32 1
  %1 = ptrtoint ptr %prio_list.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %prio_list.i, ptr %prio_list.i, align 4
  %prev.i.i = getelementptr %struct.plist_node, ptr @test_node, i32 %i.074, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %prio_list.i, ptr %prev.i.i, align 4
  %node_list.i = getelementptr %struct.plist_node, ptr @test_node, i32 %i.074, i32 2
  %3 = ptrtoint ptr %node_list.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %node_list.i, ptr %node_list.i, align 4
  %prev.i1.i = getelementptr %struct.plist_node, ptr @test_node, i32 %i.074, i32 2, i32 1
  %4 = ptrtoint ptr %prev.i1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %node_list.i, ptr %prev.i1.i, align 4
  %inc = add nuw nsw i32 %i.074, 1
  %exitcond.not = icmp eq i32 %inc, 241
  br i1 %exitcond.not, label %for.body6.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.body6.preheader:                              ; preds = %for.body
  %conv = trunc i64 %call.i to i32
  br label %for.body6

for.body6:                                        ; preds = %for.inc22.for.body6_crit_edge, %for.body6.preheader
  %nr_expect.077 = phi i32 [ %dec, %for.inc22.for.body6_crit_edge ], [ 0, %for.body6.preheader ]
  %r.076 = phi i32 [ %r.1, %for.inc22.for.body6_crit_edge ], [ %conv, %for.body6.preheader ]
  %loop.075 = phi i32 [ %inc23, %for.inc22.for.body6_crit_edge ], [ 0, %for.body6.preheader ]
  %mul = mul i32 %r.076, 193939
  %rem = urem i32 %mul, 47629
  %rem7.lhs.trunc = trunc i32 %rem to i16
  %rem772 = urem i16 %rem7.lhs.trunc, 241
  %rem7.zext = zext i16 %rem772 to i32
  %add.ptr8 = getelementptr %struct.plist_node, ptr @test_node, i32 %rem7.zext
  %node_list.i65 = getelementptr %struct.plist_node, ptr @test_node, i32 %rem7.zext, i32 2
  %5 = ptrtoint ptr %node_list.i65 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %node_list.i65, align 4
  %cmp.i.i.not = icmp eq ptr %6, %node_list.i65
  br i1 %cmp.i.i.not, label %if.then, label %if.else

if.then:                                          ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #5
  %mul10 = mul i32 %rem, 193939
  %rem11 = urem i32 %mul10, 47629
  %rem12.lhs.trunc = trunc i32 %rem11 to i16
  %rem1273 = urem i16 %rem12.lhs.trunc, 99
  %rem12.zext = zext i16 %rem1273 to i32
  %7 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %rem12.zext, ptr %add.ptr8, align 4
  tail call void @plist_add(ptr noundef %add.ptr8, ptr noundef nonnull @test_head)
  br label %if.end

if.else:                                          ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @plist_del(ptr noundef %add.ptr8, ptr noundef nonnull @test_head)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i32 [ -1, %if.else ], [ 1, %if.then ]
  %r.1 = phi i32 [ %rem, %if.else ], [ %rem11, %if.then ]
  %dec = add i32 %nr_expect.077, %.sink
  tail call fastcc void @plist_test_check(i32 noundef %dec) #8
  %8 = ptrtoint ptr %node_list.i65 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %node_list.i65, align 4
  %cmp.i.i67.not = icmp eq ptr %9, %node_list.i65
  br i1 %cmp.i.i67.not, label %if.end.for.inc22_crit_edge, label %if.then19

if.end.for.inc22_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc22

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @plist_test_requeue(ptr noundef %add.ptr8) #8
  tail call fastcc void @plist_test_check(i32 noundef %dec) #8
  br label %for.inc22

for.inc22:                                        ; preds = %if.then19, %if.end.for.inc22_crit_edge
  %inc23 = add nuw nsw i32 %loop.075, 1
  %exitcond81.not = icmp eq i32 %inc23, 1000
  br i1 %exitcond81.not, label %for.inc22.for.body28_crit_edge, label %for.inc22.for.body6_crit_edge

for.inc22.for.body6_crit_edge:                    ; preds = %for.inc22
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body6

for.inc22.for.body28_crit_edge:                   ; preds = %for.inc22
  br label %for.body28

for.body28:                                       ; preds = %for.inc36.for.body28_crit_edge, %for.inc22.for.body28_crit_edge
  %nr_expect.280 = phi i32 [ %nr_expect.3, %for.inc36.for.body28_crit_edge ], [ %dec, %for.inc22.for.body28_crit_edge ]
  %i.178 = phi i32 [ %inc37, %for.inc36.for.body28_crit_edge ], [ 0, %for.inc22.for.body28_crit_edge ]
  %node_list.i69 = getelementptr %struct.plist_node, ptr @test_node, i32 %i.178, i32 2
  %10 = ptrtoint ptr %node_list.i69 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %node_list.i69, align 4
  %cmp.i.i70.not = icmp eq ptr %11, %node_list.i69
  br i1 %cmp.i.i70.not, label %for.body28.for.inc36_crit_edge, label %if.end33

for.body28.for.inc36_crit_edge:                   ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc36

if.end33:                                         ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr29 = getelementptr %struct.plist_node, ptr @test_node, i32 %i.178
  tail call void @plist_del(ptr noundef %add.ptr29, ptr noundef nonnull @test_head)
  %dec35 = add i32 %nr_expect.280, -1
  tail call fastcc void @plist_test_check(i32 noundef %dec35) #8
  br label %for.inc36

for.inc36:                                        ; preds = %if.end33, %for.body28.for.inc36_crit_edge
  %nr_expect.3 = phi i32 [ %nr_expect.280, %for.body28.for.inc36_crit_edge ], [ %dec35, %if.end33 ]
  %inc37 = add nuw nsw i32 %i.178, 1
  %exitcond82.not = icmp eq i32 %inc37, 241
  br i1 %exitcond82.not, label %do.end41, label %for.inc36.for.body28_crit_edge

for.inc36.for.body28_crit_edge:                   ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body28

do.end41:                                         ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #5
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @plist_check_list(ptr noundef %top) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %top, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i, align 4
  %cmp.not.i = icmp eq ptr %3, %top
  br i1 %cmp.not.i, label %entry.plist_check_prev_next.exit_crit_edge, label %do.end.i

entry.plist_check_prev_next.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %plist_check_prev_next.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %prev10.i = getelementptr inbounds %struct.list_head, ptr %top, i32 0, i32 1
  %4 = ptrtoint ptr %prev10.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev10.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 41, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %top, ptr noundef %1, ptr noundef %5, ptr noundef %top, ptr noundef %1, ptr noundef %5, ptr noundef %1, ptr noundef %7, ptr noundef %3) #6
  br label %plist_check_prev_next.exit

plist_check_prev_next.exit:                       ; preds = %do.end.i, %entry.plist_check_prev_next.exit_crit_edge
  %cmp.not20 = icmp eq ptr %1, %top
  br i1 %cmp.not20, label %plist_check_prev_next.exit.while.end_crit_edge, label %while.body.lr.ph

plist_check_prev_next.exit.while.end_crit_edge:   ; preds = %plist_check_prev_next.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.body.lr.ph:                                 ; preds = %plist_check_prev_next.exit
  %prev10.i16 = getelementptr inbounds %struct.list_head, ptr %top, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %plist_check_prev_next.exit19.while.body_crit_edge, %while.body.lr.ph
  %next.021 = phi ptr [ %1, %while.body.lr.ph ], [ %9, %plist_check_prev_next.exit19.while.body_crit_edge ]
  %8 = ptrtoint ptr %next.021 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %next.021, align 4
  %prev.i12 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i12, align 4
  %cmp.not.i13 = icmp eq ptr %11, %next.021
  br i1 %cmp.not.i13, label %while.body.plist_check_prev_next.exit19_crit_edge, label %do.end.i18

while.body.plist_check_prev_next.exit19_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %plist_check_prev_next.exit19

do.end.i18:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  %12 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %top, align 4
  %14 = ptrtoint ptr %prev10.i16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev10.i16, align 4
  %prev12.i17 = getelementptr inbounds %struct.list_head, ptr %next.021, i32 0, i32 1
  %16 = ptrtoint ptr %prev12.i17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev12.i17, align 4
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %9, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 41, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %top, ptr noundef %13, ptr noundef %15, ptr noundef %next.021, ptr noundef %9, ptr noundef %17, ptr noundef %9, ptr noundef %19, ptr noundef %11) #6
  br label %plist_check_prev_next.exit19

plist_check_prev_next.exit19:                     ; preds = %do.end.i18, %while.body.plist_check_prev_next.exit19_crit_edge
  %cmp.not = icmp eq ptr %9, %top
  br i1 %cmp.not, label %plist_check_prev_next.exit19.while.end_crit_edge, label %plist_check_prev_next.exit19.while.body_crit_edge

plist_check_prev_next.exit19.while.body_crit_edge: ; preds = %plist_check_prev_next.exit19
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

plist_check_prev_next.exit19.while.end_crit_edge: ; preds = %plist_check_prev_next.exit19
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.end

while.end:                                        ; preds = %plist_check_prev_next.exit19.while.end_crit_edge, %plist_check_prev_next.exit.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @plist_test_check(i32 noundef %nr_expect) unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %0 = load volatile ptr, ptr @test_head, align 4
  %cmp.i.i.not = icmp eq ptr %0, @test_head
  br i1 %cmp.i.i.not, label %do.body, label %if.end10

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_expect)
  %cmp.not = icmp eq i32 %nr_expect, 0
  br i1 %cmp.not, label %do.body.cleanup_crit_edge, label %do.body4, !prof !27

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/plist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 188, 0\0A.popsection", ""() #6, !srcloc !31
  unreachable

if.end10:                                         ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %0, i32 -12
  %.pn156 = load ptr, ptr @test_head, align 4
  %cmp12.not158 = icmp eq ptr %.pn156, @test_head
  br i1 %cmp12.not158, label %if.end10.do.body91_crit_edge, label %if.end10.for.body_crit_edge

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  br label %for.body

if.end10.do.body91_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body91

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end10.for.body_crit_edge
  %.pn161 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn156, %if.end10.for.body_crit_edge ]
  %nr_expect.addr.0160 = phi i32 [ %dec, %for.inc.for.body_crit_edge ], [ %nr_expect, %if.end10.for.body_crit_edge ]
  %prio_pos.0159 = phi ptr [ %prio_pos.1, %for.inc.for.body_crit_edge ], [ %add.ptr.i, %if.end10.for.body_crit_edge ]
  %node_pos.0162 = getelementptr i8, ptr %.pn161, i32 -12
  %dec = add i32 %nr_expect.addr.0160, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_expect.addr.0160)
  %cmp15 = icmp slt i32 %nr_expect.addr.0160, 0
  br i1 %cmp15, label %for.body.do.body100_crit_edge, label %if.end17

for.body.do.body100_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body100

if.end17:                                         ; preds = %for.body
  %cmp18 = icmp eq ptr %.pn161, %0
  br i1 %cmp18, label %if.end17.for.inc_crit_edge, label %if.end20

if.end17.for.inc_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.end20:                                         ; preds = %if.end17
  %1 = ptrtoint ptr %node_pos.0162 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %node_pos.0162, align 4
  %3 = ptrtoint ptr %prio_pos.0159 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %prio_pos.0159, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp22 = icmp eq i32 %2, %4
  br i1 %cmp22, label %do.body24, label %do.body46

do.body24:                                        ; preds = %if.end20
  %prio_list = getelementptr i8, ptr %.pn161, i32 -8
  %5 = ptrtoint ptr %prio_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %prio_list, align 4
  %cmp.i.not = icmp eq ptr %6, %prio_list
  br i1 %cmp.i.not, label %do.body24.for.inc_crit_edge, label %do.body36, !prof !27

do.body24.for.inc_crit_edge:                      ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

do.body36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/plist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 199, 0\0A.popsection", ""() #6, !srcloc !32
  unreachable

do.body46:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %2)
  %cmp49 = icmp sgt i32 %4, %2
  br i1 %cmp49, label %do.body57, label %do.body66, !prof !28

do.body57:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/plist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 203, 0\0A.popsection", ""() #6, !srcloc !33
  unreachable

do.body66:                                        ; preds = %do.body46
  %prio_list67 = getelementptr inbounds %struct.plist_node, ptr %prio_pos.0159, i32 0, i32 1
  %7 = ptrtoint ptr %prio_list67 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prio_list67, align 4
  %prio_list68 = getelementptr i8, ptr %.pn161, i32 -8
  %cmp69.not = icmp eq ptr %8, %prio_list68
  br i1 %cmp69.not, label %do.body66.for.inc_crit_edge, label %do.body77, !prof !27

do.body66.for.inc_crit_edge:                      ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

do.body77:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/plist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 204, 0\0A.popsection", ""() #6, !srcloc !34
  unreachable

for.inc:                                          ; preds = %do.body66.for.inc_crit_edge, %do.body24.for.inc_crit_edge, %if.end17.for.inc_crit_edge
  %prio_pos.1 = phi ptr [ %prio_pos.0159, %if.end17.for.inc_crit_edge ], [ %prio_pos.0159, %do.body24.for.inc_crit_edge ], [ %node_pos.0162, %do.body66.for.inc_crit_edge ]
  %9 = ptrtoint ptr %.pn161 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn161, align 4
  %cmp12.not = icmp eq ptr %.pn, @test_head
  br i1 %cmp12.not, label %for.inc.do.body91_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.inc.do.body91_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body91

do.body91:                                        ; preds = %for.inc.do.body91_crit_edge, %if.end10.do.body91_crit_edge
  %prio_pos.0.lcssa = phi ptr [ %add.ptr.i, %if.end10.do.body91_crit_edge ], [ %prio_pos.1, %for.inc.do.body91_crit_edge ]
  %nr_expect.addr.0.lcssa = phi i32 [ %nr_expect, %if.end10.do.body91_crit_edge ], [ %dec, %for.inc.do.body91_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_expect.addr.0.lcssa)
  %cmp92.not = icmp eq i32 %nr_expect.addr.0.lcssa, 0
  br i1 %cmp92.not, label %do.body109, label %do.body91.do.body100_crit_edge, !prof !27

do.body91.do.body100_crit_edge:                   ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body100

do.body100:                                       ; preds = %do.body91.do.body100_crit_edge, %for.body.do.body100_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/plist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 208, 0\0A.popsection", ""() #6, !srcloc !35
  unreachable

do.body109:                                       ; preds = %do.body91
  %prio_list110 = getelementptr inbounds %struct.plist_node, ptr %prio_pos.0.lcssa, i32 0, i32 1
  %10 = ptrtoint ptr %prio_list110 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prio_list110, align 4
  %prio_list112 = getelementptr i8, ptr %0, i32 -8
  %cmp113.not = icmp eq ptr %11, %prio_list112
  br i1 %cmp113.not, label %do.body109.cleanup_crit_edge, label %do.body121, !prof !27

do.body109.cleanup_crit_edge:                     ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body121:                                       ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/plist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 209, 0\0A.popsection", ""() #6, !srcloc !36
  unreachable

cleanup:                                          ; preds = %do.body109.cleanup_crit_edge, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @plist_test_requeue(ptr noundef %node) unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @plist_requeue(ptr noundef %node, ptr noundef nonnull @test_head)
  %0 = load ptr, ptr getelementptr inbounds (%struct.plist_head, ptr @test_head, i32 0, i32 0, i32 1), align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 -12
  %cmp.not = icmp eq ptr %add.ptr.i, %node
  br i1 %cmp.not, label %entry.if.end9_crit_edge, label %do.body

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end9

do.body:                                          ; preds = %entry
  %1 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %node, align 4
  %node_list = getelementptr inbounds %struct.plist_node, ptr %node, i32 0, i32 2
  %3 = ptrtoint ptr %node_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %node_list, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 -12
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %6)
  %cmp2 = icmp eq i32 %2, %6
  br i1 %cmp2, label %do.body5, label %do.body.if.end9_crit_edge, !prof !28

do.body.if.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end9

do.body5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/plist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 217, 0\0A.popsection", ""() #6, !srcloc !37
  unreachable

if.end9:                                          ; preds = %do.body.if.end9_crit_edge, %entry.if.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #1

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind uwtable(sync) }
attributes #5 = { nomerge }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !13, !14, !15, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../lib/plist.c", i32 79, i32 2}
!2 = !{ptr @__initcall__kmod_plist__160_261_plist_test6, !3, !"__initcall__kmod_plist__160_261_plist_test6", i1 false, i1 false}
!3 = !{!"../lib/plist.c", i32 261, i32 1}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../lib/plist.c", i32 35, i32 2}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../lib/plist.c", i32 225, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @plist_test._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @plist_test._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../lib/plist.c", i32 257, i32 2}
!13 = !{ptr @plist_test._entry.4, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @plist_test._entry_ptr.6, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @test_head, !16, !"test_head", i1 false, i1 false}
!16 = !{!"../lib/plist.c", i32 30, i32 26}
!17 = !{ptr @test_node, !18, !"test_node", i1 false, i1 false}
!18 = !{!"../lib/plist.c", i32 181, i32 37}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{!"branch_weights", i32 2000, i32 1}
!28 = !{!"branch_weights", i32 1, i32 2000}
!29 = !{i64 2148287737, i64 2148288213, i64 2148287774, i64 2148287830, i64 2148287864, i64 2148287888, i64 2148287929, i64 2148287950, i64 2148287978, i64 2148288012}
!30 = !{i64 2148289313, i64 2148289789, i64 2148289350, i64 2148289406, i64 2148289440, i64 2148289464, i64 2148289505, i64 2148289526, i64 2148289554, i64 2148289588}
!31 = !{i64 2152028411, i64 2152028887, i64 2152028448, i64 2152028504, i64 2152028538, i64 2152028562, i64 2152028603, i64 2152028624, i64 2152028652, i64 2152028686}
!32 = !{i64 2152033884, i64 2152034360, i64 2152033921, i64 2152033977, i64 2152034011, i64 2152034035, i64 2152034076, i64 2152034097, i64 2152034125, i64 2152034159}
!33 = !{i64 2152035478, i64 2152035954, i64 2152035515, i64 2152035571, i64 2152035605, i64 2152035629, i64 2152035670, i64 2152035691, i64 2152035719, i64 2152035753}
!34 = !{i64 2152037106, i64 2152037582, i64 2152037143, i64 2152037199, i64 2152037233, i64 2152037257, i64 2152037298, i64 2152037319, i64 2152037347, i64 2152037381}
!35 = !{i64 2152038666, i64 2152039142, i64 2152038703, i64 2152038759, i64 2152038793, i64 2152038817, i64 2152038858, i64 2152038879, i64 2152038907, i64 2152038941}
!36 = !{i64 2152040288, i64 2152040764, i64 2152040325, i64 2152040381, i64 2152040415, i64 2152040439, i64 2152040480, i64 2152040501, i64 2152040529, i64 2152040563}
!37 = !{i64 2152044560, i64 2152045036, i64 2152044597, i64 2152044653, i64 2152044687, i64 2152044711, i64 2152044752, i64 2152044773, i64 2152044801, i64 2152044835}
