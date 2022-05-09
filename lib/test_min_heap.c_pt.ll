; ModuleID = '/llk/IR_all_yes/lib/test_min_heap.c_pt.bc'
source_filename = "../lib/test_min_heap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.min_heap = type { ptr, i32, i32 }
%struct.min_heap_callbacks = type { i32, ptr, ptr }

@__initcall__kmod_test_min_heap__106_186_test_min_heap_init6 = internal global ptr @test_min_heap_init, section ".initcall6.init", align 4
@__exitcall_test_min_heap_exit = internal global ptr @test_min_heap_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file107 = internal constant [37 x i8] c"test_min_heap.file=lib/test_min_heap\00", section ".modinfo", align 1
@__UNIQUE_ID_license108 = internal constant [26 x i8] c"test_min_heap.license=GPL\00", section ".modinfo", align 1
@test_min_heap_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013min_heap_test: test failed with %d errors\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"test_min_heap_init\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lib/test_min_heap.c\00", [44 x i8] zeroinitializer }, align 32
@test_min_heap_init._entry_ptr = internal global ptr @test_min_heap_init._entry, section ".printk_index", align 4
@test_min_heap_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016min_heap_test: test passed\0A\00", [34 x i8] zeroinitializer }, align 32
@test_min_heap_init._entry_ptr.5 = internal global ptr @test_min_heap_init._entry.3, section ".printk_index", align 4
@__const.test_heapify_all.values = private unnamed_addr constant [13 x i32] [i32 3, i32 1, i32 2, i32 4, i32 134217728, i32 134217727, i32 0, i32 -3, i32 -1, i32 -2, i32 -4, i32 134217728, i32 134217727], align 4
@pop_verify_heap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 46, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013min_heap_test: error: expected %d <= %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pop_verify_heap\00", [16 x i8] zeroinitializer }, align 32
@pop_verify_heap._entry_ptr = internal global ptr @pop_verify_heap._entry, section ".printk_index", align 4
@pop_verify_heap._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 52, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013min_heap_test: error: expected %d >= %d\0A\00", [53 x i8] zeroinitializer }, align 32
@pop_verify_heap._entry_ptr.10 = internal global ptr @pop_verify_heap._entry.8, section ".printk_index", align 4
@min_heap_pop.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/min_heap.h\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Popping an empty heap\00", [42 x i8] zeroinitializer }, align 32
@min_heap_push.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Pushing on a full heap\00", [41 x i8] zeroinitializer }, align 32
@__const.test_heap_pop_push.data = private unnamed_addr constant [13 x i32] [i32 3, i32 1, i32 2, i32 4, i32 -2147483648, i32 2147483647, i32 0, i32 -3, i32 -1, i32 -2, i32 -4, i32 -2147483648, i32 2147483647], align 4
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 180, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 183, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 45, i32 5 }
@___asan_gen_.41 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.45 = private constant [23 x i8] c"../lib/test_min_heap.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 51, i32 5 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 84, i32 6 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [28 x i8] c"../include/linux/min_heap.h\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 116, i32 6 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_file107, ptr @__UNIQUE_ID_license108, ptr @__exitcall_test_min_heap_exit, ptr @__initcall__kmod_test_min_heap__106_186_test_min_heap_init6, ptr @pop_verify_heap._entry, ptr @pop_verify_heap._entry.8, ptr @pop_verify_heap._entry_ptr, ptr @pop_verify_heap._entry_ptr.10, ptr @test_min_heap_exit, ptr @test_min_heap_init._entry, ptr @test_min_heap_init._entry.3, ptr @test_min_heap_init._entry_ptr, ptr @test_min_heap_init._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_min_heap_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_min_heap_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pop_verify_heap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pop_verify_heap._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @test_min_heap_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call fastcc i32 @test_heapify_all(i1 noundef zeroext true) #9
  %call1 = tail call fastcc i32 @test_heapify_all(i1 noundef zeroext false) #9
  %add2 = add i32 %call1, %call
  %call3 = tail call fastcc i32 @test_heap_push(i1 noundef zeroext true) #9
  %add4 = add i32 %add2, %call3
  %call5 = tail call fastcc i32 @test_heap_push(i1 noundef zeroext false) #9
  %add6 = add i32 %add4, %call5
  %call7 = tail call fastcc i32 @test_heap_pop_push(i1 noundef zeroext true) #9
  %add8 = add i32 %add6, %call7
  %call9 = tail call fastcc i32 @test_heap_pop_push(i1 noundef zeroext false) #9
  %add10 = add i32 %add8, %call9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add10)
  %tobool.not = icmp eq i32 %add10, 0
  br i1 %tobool.not, label %do.end14, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %add10) #10
  br label %cleanup

do.end14:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.end14 ]
  ret i32 %retval.0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @test_min_heap_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_heapify_all(i1 noundef zeroext %min_heap) unnamed_addr #0 section ".init.text" align 64 {
for.body.lr.ph.i:
  %values = alloca [13 x i32], align 4
  %heap = alloca %struct.min_heap, align 4
  %funcs = alloca %struct.min_heap_callbacks, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %values) #11
  %0 = call ptr @memcpy(ptr %values, ptr @__const.test_heapify_all.values, i32 52)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %heap) #11
  %1 = getelementptr inbounds %struct.min_heap, ptr %heap, i32 0, i32 1
  %2 = getelementptr inbounds %struct.min_heap, ptr %heap, i32 0, i32 2
  %3 = ptrtoint ptr %heap to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %values, ptr %heap, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 13, ptr %1, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 13, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %funcs) #11
  %6 = getelementptr inbounds %struct.min_heap_callbacks, ptr %funcs, i32 0, i32 1
  %7 = getelementptr inbounds %struct.min_heap_callbacks, ptr %funcs, i32 0, i32 2
  %8 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %funcs, align 4
  %cond = select i1 %min_heap, ptr @less_than, ptr @greater_than
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %cond, ptr %6, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @swap_ints, ptr %7, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %min_heapify.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 6, %for.body.lr.ph.i ], [ %dec.i, %min_heapify.exit.i.for.body.i_crit_edge ]
  %mul60.i.i = shl nuw i32 %i.05.i, 1
  %add61.i.i = or i32 %mul60.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %add61.i.i)
  %cmp.not62.i.i = icmp ult i32 %add61.i.i, 13
  br i1 %cmp.not62.i.i, label %for.body.i.if.end.i.i_crit_edge, label %for.body.i.min_heapify.exit.i_crit_edge

for.body.i.min_heapify.exit.i_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %min_heapify.exit.i

for.body.i.if.end.i.i_crit_edge:                  ; preds = %for.body.i
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end27.i.i.if.end.i.i_crit_edge, %for.body.i.if.end.i.i_crit_edge
  %add65.i.i = phi i32 [ %add.i.i, %if.end27.i.i.if.end.i.i_crit_edge ], [ %add61.i.i, %for.body.i.if.end.i.i_crit_edge ]
  %mul64.i.i = phi i32 [ %mul.i.i, %if.end27.i.i.if.end.i.i_crit_edge ], [ %mul60.i.i, %for.body.i.if.end.i.i_crit_edge ]
  %pos.addr.063.i.i = phi i32 [ %add.add11.i.i, %if.end27.i.i.if.end.i.i_crit_edge ], [ %i.05.i, %for.body.i.if.end.i.i_crit_edge ]
  %mul4.i.i = shl i32 %add65.i.i, 2
  %add.ptr.i.i = getelementptr i8, ptr %values, i32 %mul4.i.i
  %mul6.i.i = shl i32 %pos.addr.063.i.i, 2
  %add.ptr7.i.i = getelementptr i8, ptr %values, i32 %mul6.i.i
  %call.i.i = call zeroext i1 %cond(ptr noundef %add.ptr.i.i, ptr noundef %add.ptr7.i.i) #11
  %spec.select.i.i = select i1 %call.i.i, ptr %add.ptr.i.i, ptr %add.ptr7.i.i
  %add11.i.i = add i32 %mul64.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %add11.i.i)
  %cmp13.i.i = icmp slt i32 %add11.i.i, 13
  br i1 %cmp13.i.i, label %if.then14.i.i, label %if.end.i.i.if.end24.i.i_crit_edge

if.end.i.i.if.end24.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24.i.i

if.then14.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul18.i.i = shl i32 %add11.i.i, 2
  %add.ptr19.i.i = getelementptr i8, ptr %values, i32 %mul18.i.i
  %call21.i.i = call zeroext i1 %cond(ptr noundef %add.ptr19.i.i, ptr noundef %spec.select.i.i) #11
  %spec.select59.i.i = select i1 %call21.i.i, ptr %add.ptr19.i.i, ptr %spec.select.i.i
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %if.then14.i.i, %if.end.i.i.if.end24.i.i_crit_edge
  %smallest.1.i.i = phi ptr [ %spec.select.i.i, %if.end.i.i.if.end24.i.i_crit_edge ], [ %spec.select59.i.i, %if.then14.i.i ]
  %cmp25.i.i = icmp eq ptr %smallest.1.i.i, %add.ptr7.i.i
  br i1 %cmp25.i.i, label %if.end24.i.i.min_heapify.exit.i_crit_edge, label %if.end27.i.i

if.end24.i.i.min_heapify.exit.i_crit_edge:        ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %min_heapify.exit.i

if.end27.i.i:                                     ; preds = %if.end24.i.i
  %11 = ptrtoint ptr %smallest.1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %smallest.1.i.i, align 4
  %13 = ptrtoint ptr %add.ptr7.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr7.i.i, align 4
  store i32 %14, ptr %smallest.1.i.i, align 4
  store i32 %12, ptr %add.ptr7.i.i, align 4
  %cmp28.i.i = icmp eq ptr %smallest.1.i.i, %add.ptr.i.i
  %add.add11.i.i = select i1 %cmp28.i.i, i32 %add65.i.i, i32 %add11.i.i
  %mul.i.i = shl i32 %add.add11.i.i, 1
  %add.i.i = or i32 %mul.i.i, 1
  %cmp.not.i.i = icmp slt i32 %add.i.i, 13
  br i1 %cmp.not.i.i, label %if.end27.i.i.if.end.i.i_crit_edge, label %if.end27.i.i.min_heapify.exit.i_crit_edge

if.end27.i.i.min_heapify.exit.i_crit_edge:        ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %min_heapify.exit.i

if.end27.i.i.if.end.i.i_crit_edge:                ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

min_heapify.exit.i:                               ; preds = %if.end27.i.i.min_heapify.exit.i_crit_edge, %if.end24.i.i.min_heapify.exit.i_crit_edge, %for.body.i.min_heapify.exit.i_crit_edge
  %dec.i = add nsw i32 %i.05.i, -1
  %cmp.i.not = icmp eq i32 %i.05.i, 0
  br i1 %cmp.i.not, label %min_heapify_all.exit, label %min_heapify.exit.i.for.body.i_crit_edge

min_heapify.exit.i.for.body.i_crit_edge:          ; preds = %min_heapify.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

min_heapify_all.exit:                             ; preds = %min_heapify.exit.i
  %call = call fastcc i32 @pop_verify_heap(i1 noundef zeroext %min_heap, ptr noundef nonnull %heap, ptr noundef nonnull %funcs) #9
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 13, ptr %1, align 4
  br label %for.body

for.body.i22.preheader:                           ; preds = %for.body
  %16 = ptrtoint ptr %heap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %heap, align 4
  br label %for.body.i22

for.body:                                         ; preds = %for.body.for.body_crit_edge, %min_heapify_all.exit
  %i.053 = phi i32 [ 0, %min_heapify_all.exit ], [ %inc, %for.body.for.body_crit_edge ]
  %call.i = call i32 @get_random_u32() #11
  %arrayidx = getelementptr [13 x i32], ptr %values, i32 0, i32 %i.053
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call.i, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.053, 1
  %exitcond.not = icmp eq i32 %inc, 13
  br i1 %exitcond.not, label %for.body.i22.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.i22:                                     ; preds = %min_heapify.exit.i51.for.body.i22_crit_edge, %for.body.i22.preheader
  %i.05.i18 = phi i32 [ %dec.i49, %min_heapify.exit.i51.for.body.i22_crit_edge ], [ 6, %for.body.i22.preheader ]
  %mul60.i.i19 = shl nuw i32 %i.05.i18, 1
  %add61.i.i20 = or i32 %mul60.i.i19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %add61.i.i20)
  %cmp.not62.i.i21 = icmp ult i32 %add61.i.i20, 13
  br i1 %cmp.not62.i.i21, label %for.body.i22.if.end.i.i34_crit_edge, label %for.body.i22.min_heapify.exit.i51_crit_edge

for.body.i22.min_heapify.exit.i51_crit_edge:      ; preds = %for.body.i22
  call void @__sanitizer_cov_trace_pc() #8
  br label %min_heapify.exit.i51

for.body.i22.if.end.i.i34_crit_edge:              ; preds = %for.body.i22
  br label %if.end.i.i34

if.end.i.i34:                                     ; preds = %if.end27.i.i48.if.end.i.i34_crit_edge, %for.body.i22.if.end.i.i34_crit_edge
  %add65.i.i23 = phi i32 [ %add.i.i46, %if.end27.i.i48.if.end.i.i34_crit_edge ], [ %add61.i.i20, %for.body.i22.if.end.i.i34_crit_edge ]
  %mul64.i.i24 = phi i32 [ %mul.i.i45, %if.end27.i.i48.if.end.i.i34_crit_edge ], [ %mul60.i.i19, %for.body.i22.if.end.i.i34_crit_edge ]
  %pos.addr.063.i.i25 = phi i32 [ %add.add11.i.i44, %if.end27.i.i48.if.end.i.i34_crit_edge ], [ %i.05.i18, %for.body.i22.if.end.i.i34_crit_edge ]
  %mul4.i.i26 = shl i32 %add65.i.i23, 2
  %add.ptr.i.i27 = getelementptr i8, ptr %17, i32 %mul4.i.i26
  %mul6.i.i28 = shl i32 %pos.addr.063.i.i25, 2
  %add.ptr7.i.i29 = getelementptr i8, ptr %17, i32 %mul6.i.i28
  %call.i.i30 = call zeroext i1 %cond(ptr noundef %add.ptr.i.i27, ptr noundef %add.ptr7.i.i29) #11
  %spec.select.i.i31 = select i1 %call.i.i30, ptr %add.ptr.i.i27, ptr %add.ptr7.i.i29
  %add11.i.i32 = add i32 %mul64.i.i24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %add11.i.i32)
  %cmp13.i.i33 = icmp slt i32 %add11.i.i32, 13
  br i1 %cmp13.i.i33, label %if.then14.i.i39, label %if.end.i.i34.if.end24.i.i42_crit_edge

if.end.i.i34.if.end24.i.i42_crit_edge:            ; preds = %if.end.i.i34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24.i.i42

if.then14.i.i39:                                  ; preds = %if.end.i.i34
  call void @__sanitizer_cov_trace_pc() #8
  %mul18.i.i35 = shl i32 %add11.i.i32, 2
  %add.ptr19.i.i36 = getelementptr i8, ptr %17, i32 %mul18.i.i35
  %call21.i.i37 = call zeroext i1 %cond(ptr noundef %add.ptr19.i.i36, ptr noundef %spec.select.i.i31) #11
  %spec.select59.i.i38 = select i1 %call21.i.i37, ptr %add.ptr19.i.i36, ptr %spec.select.i.i31
  br label %if.end24.i.i42

if.end24.i.i42:                                   ; preds = %if.then14.i.i39, %if.end.i.i34.if.end24.i.i42_crit_edge
  %smallest.1.i.i40 = phi ptr [ %spec.select.i.i31, %if.end.i.i34.if.end24.i.i42_crit_edge ], [ %spec.select59.i.i38, %if.then14.i.i39 ]
  %cmp25.i.i41 = icmp eq ptr %smallest.1.i.i40, %add.ptr7.i.i29
  br i1 %cmp25.i.i41, label %if.end24.i.i42.min_heapify.exit.i51_crit_edge, label %if.end27.i.i48

if.end24.i.i42.min_heapify.exit.i51_crit_edge:    ; preds = %if.end24.i.i42
  call void @__sanitizer_cov_trace_pc() #8
  br label %min_heapify.exit.i51

if.end27.i.i48:                                   ; preds = %if.end24.i.i42
  %19 = ptrtoint ptr %smallest.1.i.i40 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %smallest.1.i.i40, align 4
  %21 = ptrtoint ptr %add.ptr7.i.i29 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr7.i.i29, align 4
  store i32 %22, ptr %smallest.1.i.i40, align 4
  store i32 %20, ptr %add.ptr7.i.i29, align 4
  %cmp28.i.i43 = icmp eq ptr %smallest.1.i.i40, %add.ptr.i.i27
  %add.add11.i.i44 = select i1 %cmp28.i.i43, i32 %add65.i.i23, i32 %add11.i.i32
  %mul.i.i45 = shl i32 %add.add11.i.i44, 1
  %add.i.i46 = or i32 %mul.i.i45, 1
  %cmp.not.i.i47 = icmp slt i32 %add.i.i46, 13
  br i1 %cmp.not.i.i47, label %if.end27.i.i48.if.end.i.i34_crit_edge, label %if.end27.i.i48.min_heapify.exit.i51_crit_edge

if.end27.i.i48.min_heapify.exit.i51_crit_edge:    ; preds = %if.end27.i.i48
  call void @__sanitizer_cov_trace_pc() #8
  br label %min_heapify.exit.i51

if.end27.i.i48.if.end.i.i34_crit_edge:            ; preds = %if.end27.i.i48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i34

min_heapify.exit.i51:                             ; preds = %if.end27.i.i48.min_heapify.exit.i51_crit_edge, %if.end24.i.i42.min_heapify.exit.i51_crit_edge, %for.body.i22.min_heapify.exit.i51_crit_edge
  %dec.i49 = add nsw i32 %i.05.i18, -1
  %cmp.i50.not = icmp eq i32 %i.05.i18, 0
  br i1 %cmp.i50.not, label %min_heapify_all.exit52, label %min_heapify.exit.i51.for.body.i22_crit_edge

min_heapify.exit.i51.for.body.i22_crit_edge:      ; preds = %min_heapify.exit.i51
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i22

min_heapify_all.exit52:                           ; preds = %min_heapify.exit.i51
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = call fastcc i32 @pop_verify_heap(i1 noundef zeroext %min_heap, ptr noundef nonnull %heap, ptr noundef nonnull %funcs) #9
  %add = add i32 %call6, %call
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %funcs) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %heap) #11
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %values) #11
  ret i32 %add
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_heap_push(i1 noundef zeroext %min_heap) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %values = alloca [13 x i32], align 4
  %heap = alloca %struct.min_heap, align 4
  %funcs = alloca %struct.min_heap_callbacks, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %values) #11
  %0 = call ptr @memset(ptr %values, i32 255, i32 52)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %heap) #11
  %1 = getelementptr inbounds %struct.min_heap, ptr %heap, i32 0, i32 1
  %2 = getelementptr inbounds %struct.min_heap, ptr %heap, i32 0, i32 2
  %3 = ptrtoint ptr %heap to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %values, ptr %heap, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %1, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 13, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %funcs) #11
  %6 = getelementptr inbounds %struct.min_heap_callbacks, ptr %funcs, i32 0, i32 1
  %7 = getelementptr inbounds %struct.min_heap_callbacks, ptr %funcs, i32 0, i32 2
  %8 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %funcs, align 4
  %cond = select i1 %min_heap, ptr @less_than, ptr @greater_than
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %cond, ptr %6, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @swap_ints, ptr %7, align 4
  br label %for.body

for.body:                                         ; preds = %min_heap_push.exit.for.body_crit_edge, %entry
  %i.041 = phi i32 [ 0, %entry ], [ %inc, %min_heap_push.exit.for.body_crit_edge ]
  %11 = phi i32 [ 0, %entry ], [ %19, %min_heap_push.exit.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %11)
  %cmp.not.i = icmp slt i32 %11, 13
  br i1 %cmp.not.i, label %if.end38.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %for.body
  %.b75.i = load i1, ptr @min_heap_push.__already_done, align 1
  br i1 %.b75.i, label %land.rhs.i.min_heap_push.exit_crit_edge, label %if.then.i, !prof !41

land.rhs.i.min_heap_push.exit_crit_edge:          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %min_heap_push.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @min_heap_push.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 116, i32 noundef 9, ptr noundef nonnull @.str.13) #11
  br label %min_heap_push.exit

if.end38.i:                                       ; preds = %for.body
  %arrayidx = getelementptr [13 x i32], ptr @__const.test_heap_pop_push.data, i32 0, i32 %i.041
  %mul.i = shl i32 %11, 2
  %add.ptr.i = getelementptr i8, ptr %values, i32 %mul.i
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %add.ptr.i, align 4
  %inc.i = add nsw i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp4279.i = icmp sgt i32 %11, 0
  br i1 %cmp4279.i, label %if.end38.i.for.body.i_crit_edge, label %if.end38.i.min_heap_push.exit_crit_edge

if.end38.i.min_heap_push.exit_crit_edge:          ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %min_heap_push.exit

if.end38.i.for.body.i_crit_edge:                  ; preds = %if.end38.i
  br label %for.body.i

for.body.i:                                       ; preds = %if.end50.i.for.body.i_crit_edge, %if.end38.i.for.body.i_crit_edge
  %pos.080.i = phi i32 [ %div7778.i, %if.end50.i.for.body.i_crit_edge ], [ %11, %if.end38.i.for.body.i_crit_edge ]
  %mul44.i = shl i32 %pos.080.i, 2
  %add.ptr45.i = getelementptr i8, ptr %values, i32 %mul44.i
  %sub.i = add nsw i32 %pos.080.i, -1
  %div7778.i = lshr i32 %sub.i, 1
  %mul47.i = shl i32 %div7778.i, 2
  %add.ptr48.i = getelementptr i8, ptr %values, i32 %mul47.i
  %call.i = call zeroext i1 %cond(ptr noundef %add.ptr48.i, ptr noundef %add.ptr45.i) #11
  br i1 %call.i, label %for.body.i.min_heap_push.exit_crit_edge, label %if.end50.i

for.body.i.min_heap_push.exit_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %min_heap_push.exit

if.end50.i:                                       ; preds = %for.body.i
  %15 = ptrtoint ptr %add.ptr48.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr48.i, align 4
  %17 = ptrtoint ptr %add.ptr45.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr45.i, align 4
  store i32 %18, ptr %add.ptr48.i, align 4
  store i32 %16, ptr %add.ptr45.i, align 4
  %cmp42.not.i = icmp ult i32 %sub.i, 2
  br i1 %cmp42.not.i, label %if.end50.i.min_heap_push.exit_crit_edge, label %if.end50.i.for.body.i_crit_edge

if.end50.i.for.body.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end50.i.min_heap_push.exit_crit_edge:          ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %min_heap_push.exit

min_heap_push.exit:                               ; preds = %if.end50.i.min_heap_push.exit_crit_edge, %for.body.i.min_heap_push.exit_crit_edge, %if.end38.i.min_heap_push.exit_crit_edge, %if.then.i, %land.rhs.i.min_heap_push.exit_crit_edge
  %19 = phi i32 [ %11, %land.rhs.i.min_heap_push.exit_crit_edge ], [ %11, %if.then.i ], [ %inc.i, %if.end38.i.min_heap_push.exit_crit_edge ], [ %inc.i, %if.end50.i.min_heap_push.exit_crit_edge ], [ %inc.i, %for.body.i.min_heap_push.exit_crit_edge ]
  %inc = add nuw nsw i32 %i.041, 1
  %exitcond.not = icmp eq i32 %inc, 13
  br i1 %exitcond.not, label %for.end, label %min_heap_push.exit.for.body_crit_edge

min_heap_push.exit.for.body_crit_edge:            ; preds = %min_heap_push.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %min_heap_push.exit
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %1, align 4
  %call = call fastcc i32 @pop_verify_heap(i1 noundef zeroext %min_heap, ptr noundef nonnull %heap, ptr noundef nonnull %funcs) #9
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %2, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.promoted43 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.promoted43, i32 %22)
  %cmp545 = icmp slt i32 %.promoted43, %22
  br i1 %cmp545, label %for.end.if.end38.i24_crit_edge, label %for.end.while.end_crit_edge

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

for.end.if.end38.i24_crit_edge:                   ; preds = %for.end
  br label %if.end38.i24

if.end38.i24:                                     ; preds = %min_heap_push.exit39.if.end38.i24_crit_edge, %for.end.if.end38.i24_crit_edge
  %inc.i224446 = phi i32 [ %inc.i22, %min_heap_push.exit39.if.end38.i24_crit_edge ], [ %.promoted43, %for.end.if.end38.i24_crit_edge ]
  %call.i40 = call i32 @get_random_u32() #11
  %24 = ptrtoint ptr %heap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %heap, align 4
  %mul.i20 = shl i32 %inc.i224446, 2
  %add.ptr.i21 = getelementptr i8, ptr %25, i32 %mul.i20
  %26 = ptrtoint ptr %add.ptr.i21 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %call.i40, ptr %add.ptr.i21, align 1
  %inc.i22 = add i32 %inc.i224446, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i224446)
  %cmp4279.i23 = icmp sgt i32 %inc.i224446, 0
  br i1 %cmp4279.i23, label %if.end38.i24.for.body.i36_crit_edge, label %if.end38.i24.min_heap_push.exit39_crit_edge

if.end38.i24.min_heap_push.exit39_crit_edge:      ; preds = %if.end38.i24
  call void @__sanitizer_cov_trace_pc() #8
  br label %min_heap_push.exit39

if.end38.i24.for.body.i36_crit_edge:              ; preds = %if.end38.i24
  br label %for.body.i36

for.body.i36:                                     ; preds = %if.end50.i38.for.body.i36_crit_edge, %if.end38.i24.for.body.i36_crit_edge
  %pos.080.i28 = phi i32 [ %div7778.i32, %if.end50.i38.for.body.i36_crit_edge ], [ %inc.i224446, %if.end38.i24.for.body.i36_crit_edge ]
  %mul44.i29 = shl i32 %pos.080.i28, 2
  %add.ptr45.i30 = getelementptr i8, ptr %25, i32 %mul44.i29
  %sub.i31 = add nsw i32 %pos.080.i28, -1
  %div7778.i32 = lshr i32 %sub.i31, 1
  %mul47.i33 = shl i32 %div7778.i32, 2
  %add.ptr48.i34 = getelementptr i8, ptr %25, i32 %mul47.i33
  %call.i35 = call zeroext i1 %cond(ptr noundef %add.ptr48.i34, ptr noundef %add.ptr45.i30) #11
  br i1 %call.i35, label %for.body.i36.min_heap_push.exit39_crit_edge, label %if.end50.i38

for.body.i36.min_heap_push.exit39_crit_edge:      ; preds = %for.body.i36
  call void @__sanitizer_cov_trace_pc() #8
  br label %min_heap_push.exit39

if.end50.i38:                                     ; preds = %for.body.i36
  %27 = ptrtoint ptr %add.ptr48.i34 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr48.i34, align 4
  %29 = ptrtoint ptr %add.ptr45.i30 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr45.i30, align 4
  store i32 %30, ptr %add.ptr48.i34, align 4
  store i32 %28, ptr %add.ptr45.i30, align 4
  %cmp42.not.i37 = icmp ult i32 %sub.i31, 2
  br i1 %cmp42.not.i37, label %if.end50.i38.min_heap_push.exit39_crit_edge, label %if.end50.i38.for.body.i36_crit_edge

if.end50.i38.for.body.i36_crit_edge:              ; preds = %if.end50.i38
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i36

if.end50.i38.min_heap_push.exit39_crit_edge:      ; preds = %if.end50.i38
  call void @__sanitizer_cov_trace_pc() #8
  br label %min_heap_push.exit39

min_heap_push.exit39:                             ; preds = %if.end50.i38.min_heap_push.exit39_crit_edge, %for.body.i36.min_heap_push.exit39_crit_edge, %if.end38.i24.min_heap_push.exit39_crit_edge
  %exitcond47.not = icmp eq i32 %inc.i22, %22
  br i1 %exitcond47.not, label %min_heap_push.exit39.while.end_crit_edge, label %min_heap_push.exit39.if.end38.i24_crit_edge

min_heap_push.exit39.if.end38.i24_crit_edge:      ; preds = %min_heap_push.exit39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38.i24

min_heap_push.exit39.while.end_crit_edge:         ; preds = %min_heap_push.exit39
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %min_heap_push.exit39.while.end_crit_edge, %for.end.while.end_crit_edge
  %inc.i2244.lcssa = phi i32 [ %.promoted43, %for.end.while.end_crit_edge ], [ %22, %min_heap_push.exit39.while.end_crit_edge ]
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %inc.i2244.lcssa, ptr %1, align 4
  %call8 = call fastcc i32 @pop_verify_heap(i1 noundef zeroext %min_heap, ptr noundef nonnull %heap, ptr noundef nonnull %funcs) #9
  %add = add i32 %call8, %call
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %funcs) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %heap) #11
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %values) #11
  ret i32 %add
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_heap_pop_push(i1 noundef zeroext %min_heap) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %values = alloca [13 x i32], align 4
  %heap = alloca %struct.min_heap, align 4
  %funcs = alloca %struct.min_heap_callbacks, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %values) #11
  %0 = call ptr @memset(ptr %values, i32 255, i32 52)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %heap) #11
  %1 = getelementptr inbounds %struct.min_heap, ptr %heap, i32 0, i32 1
  %2 = getelementptr inbounds %struct.min_heap, ptr %heap, i32 0, i32 2
  %3 = ptrtoint ptr %heap to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %values, ptr %heap, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %1, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 13, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %funcs) #11
  %6 = getelementptr inbounds %struct.min_heap_callbacks, ptr %funcs, i32 0, i32 1
  %7 = getelementptr inbounds %struct.min_heap_callbacks, ptr %funcs, i32 0, i32 2
  %8 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %funcs, align 4
  %cond = select i1 %min_heap, ptr @less_than, ptr @greater_than
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %cond, ptr %6, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @swap_ints, ptr %7, align 4
  %cond3 = select i1 %min_heap, i32 -2147483648, i32 2147483647
  br label %for.body

for.cond4.preheader:                              ; preds = %min_heap_push.exit
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %18, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp.not62.i.i = icmp sgt i32 %18, 1
  br label %for.body6

for.body:                                         ; preds = %min_heap_push.exit.for.body_crit_edge, %entry
  %i.098 = phi i32 [ 0, %entry ], [ %inc, %min_heap_push.exit.for.body_crit_edge ]
  %12 = phi i32 [ 0, %entry ], [ %18, %min_heap_push.exit.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %12)
  %cmp.not.i = icmp slt i32 %12, 13
  br i1 %cmp.not.i, label %if.end38.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %for.body
  %.b75.i = load i1, ptr @min_heap_push.__already_done, align 1
  br i1 %.b75.i, label %land.rhs.i.min_heap_push.exit_crit_edge, label %if.then.i, !prof !41

land.rhs.i.min_heap_push.exit_crit_edge:          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %min_heap_push.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @min_heap_push.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 116, i32 noundef 9, ptr noundef nonnull @.str.13) #11
  br label %min_heap_push.exit

if.end38.i:                                       ; preds = %for.body
  %mul.i = shl i32 %12, 2
  %add.ptr.i = getelementptr i8, ptr %values, i32 %mul.i
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %cond3, ptr %add.ptr.i, align 4
  %inc.i = add nsw i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp4279.i = icmp sgt i32 %12, 0
  br i1 %cmp4279.i, label %if.end38.i.for.body.i_crit_edge, label %if.end38.i.min_heap_push.exit_crit_edge

if.end38.i.min_heap_push.exit_crit_edge:          ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %min_heap_push.exit

if.end38.i.for.body.i_crit_edge:                  ; preds = %if.end38.i
  br label %for.body.i

for.body.i:                                       ; preds = %if.end50.i.for.body.i_crit_edge, %if.end38.i.for.body.i_crit_edge
  %pos.080.i = phi i32 [ %div7778.i, %if.end50.i.for.body.i_crit_edge ], [ %12, %if.end38.i.for.body.i_crit_edge ]
  %mul44.i = shl i32 %pos.080.i, 2
  %add.ptr45.i = getelementptr i8, ptr %values, i32 %mul44.i
  %sub.i = add nsw i32 %pos.080.i, -1
  %div7778.i = lshr i32 %sub.i, 1
  %mul47.i = shl i32 %div7778.i, 2
  %add.ptr48.i = getelementptr i8, ptr %values, i32 %mul47.i
  %call.i = call zeroext i1 %cond(ptr noundef %add.ptr48.i, ptr noundef %add.ptr45.i) #11
  br i1 %call.i, label %for.body.i.min_heap_push.exit_crit_edge, label %if.end50.i

for.body.i.min_heap_push.exit_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %min_heap_push.exit

if.end50.i:                                       ; preds = %for.body.i
  %14 = ptrtoint ptr %add.ptr48.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr48.i, align 4
  %16 = ptrtoint ptr %add.ptr45.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr45.i, align 4
  store i32 %17, ptr %add.ptr48.i, align 4
  store i32 %15, ptr %add.ptr45.i, align 4
  %cmp42.not.i = icmp ult i32 %sub.i, 2
  br i1 %cmp42.not.i, label %if.end50.i.min_heap_push.exit_crit_edge, label %if.end50.i.for.body.i_crit_edge

if.end50.i.for.body.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end50.i.min_heap_push.exit_crit_edge:          ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %min_heap_push.exit

min_heap_push.exit:                               ; preds = %if.end50.i.min_heap_push.exit_crit_edge, %for.body.i.min_heap_push.exit_crit_edge, %if.end38.i.min_heap_push.exit_crit_edge, %if.then.i, %land.rhs.i.min_heap_push.exit_crit_edge
  %18 = phi i32 [ %12, %land.rhs.i.min_heap_push.exit_crit_edge ], [ %12, %if.then.i ], [ %inc.i, %if.end38.i.min_heap_push.exit_crit_edge ], [ %inc.i, %if.end50.i.min_heap_push.exit_crit_edge ], [ %inc.i, %for.body.i.min_heap_push.exit_crit_edge ]
  %inc = add nuw nsw i32 %i.098, 1
  %exitcond.not = icmp eq i32 %inc, 13
  br i1 %exitcond.not, label %for.cond4.preheader, label %min_heap_push.exit.for.body_crit_edge

min_heap_push.exit.for.body_crit_edge:            ; preds = %min_heap_push.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body6:                                        ; preds = %min_heap_pop_push.exit.for.body6_crit_edge, %for.cond4.preheader
  %i.199 = phi i32 [ 0, %for.cond4.preheader ], [ %inc8, %min_heap_pop_push.exit.for.body6_crit_edge ]
  %arrayidx = getelementptr [13 x i32], ptr @__const.test_heap_pop_push.data, i32 0, i32 %i.199
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %21 = ptrtoint ptr %values to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %values, align 4
  br i1 %cmp.not62.i.i, label %for.body6.if.end.i.i_crit_edge, label %for.body6.min_heap_pop_push.exit_crit_edge

for.body6.min_heap_pop_push.exit_crit_edge:       ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #8
  br label %min_heap_pop_push.exit

for.body6.if.end.i.i_crit_edge:                   ; preds = %for.body6
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end27.i.i.if.end.i.i_crit_edge, %for.body6.if.end.i.i_crit_edge
  %add65.i.i = phi i32 [ %add.i.i, %if.end27.i.i.if.end.i.i_crit_edge ], [ 1, %for.body6.if.end.i.i_crit_edge ]
  %mul64.i.i = phi i32 [ %mul.i.i, %if.end27.i.i.if.end.i.i_crit_edge ], [ 0, %for.body6.if.end.i.i_crit_edge ]
  %pos.addr.063.i.i = phi i32 [ %add.add11.i.i, %if.end27.i.i.if.end.i.i_crit_edge ], [ 0, %for.body6.if.end.i.i_crit_edge ]
  %mul4.i.i = shl i32 %add65.i.i, 2
  %add.ptr.i.i = getelementptr i8, ptr %values, i32 %mul4.i.i
  %mul6.i.i = shl i32 %pos.addr.063.i.i, 2
  %add.ptr7.i.i = getelementptr i8, ptr %values, i32 %mul6.i.i
  %call.i.i = call zeroext i1 %cond(ptr noundef %add.ptr.i.i, ptr noundef %add.ptr7.i.i) #11
  %spec.select.i.i = select i1 %call.i.i, ptr %add.ptr.i.i, ptr %add.ptr7.i.i
  %add11.i.i = add i32 %mul64.i.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add11.i.i, i32 %18)
  %cmp13.i.i = icmp slt i32 %add11.i.i, %18
  br i1 %cmp13.i.i, label %if.then14.i.i, label %if.end.i.i.if.end24.i.i_crit_edge

if.end.i.i.if.end24.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24.i.i

if.then14.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul18.i.i = shl i32 %add11.i.i, 2
  %add.ptr19.i.i = getelementptr i8, ptr %values, i32 %mul18.i.i
  %call21.i.i = call zeroext i1 %cond(ptr noundef %add.ptr19.i.i, ptr noundef %spec.select.i.i) #11
  %spec.select59.i.i = select i1 %call21.i.i, ptr %add.ptr19.i.i, ptr %spec.select.i.i
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %if.then14.i.i, %if.end.i.i.if.end24.i.i_crit_edge
  %smallest.1.i.i = phi ptr [ %spec.select.i.i, %if.end.i.i.if.end24.i.i_crit_edge ], [ %spec.select59.i.i, %if.then14.i.i ]
  %cmp25.i.i = icmp eq ptr %smallest.1.i.i, %add.ptr7.i.i
  br i1 %cmp25.i.i, label %if.end24.i.i.min_heap_pop_push.exit_crit_edge, label %if.end27.i.i

if.end24.i.i.min_heap_pop_push.exit_crit_edge:    ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %min_heap_pop_push.exit

if.end27.i.i:                                     ; preds = %if.end24.i.i
  %22 = ptrtoint ptr %smallest.1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %smallest.1.i.i, align 4
  %24 = ptrtoint ptr %add.ptr7.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr7.i.i, align 4
  store i32 %25, ptr %smallest.1.i.i, align 4
  store i32 %23, ptr %add.ptr7.i.i, align 4
  %cmp28.i.i = icmp eq ptr %smallest.1.i.i, %add.ptr.i.i
  %add.add11.i.i = select i1 %cmp28.i.i, i32 %add65.i.i, i32 %add11.i.i
  %mul.i.i = shl i32 %add.add11.i.i, 1
  %add.i.i = or i32 %mul.i.i, 1
  %cmp.not.i.i = icmp slt i32 %add.i.i, %18
  br i1 %cmp.not.i.i, label %if.end27.i.i.if.end.i.i_crit_edge, label %if.end27.i.i.min_heap_pop_push.exit_crit_edge

if.end27.i.i.min_heap_pop_push.exit_crit_edge:    ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %min_heap_pop_push.exit

if.end27.i.i.if.end.i.i_crit_edge:                ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

min_heap_pop_push.exit:                           ; preds = %if.end27.i.i.min_heap_pop_push.exit_crit_edge, %if.end24.i.i.min_heap_pop_push.exit_crit_edge, %for.body6.min_heap_pop_push.exit_crit_edge
  %inc8 = add nuw nsw i32 %i.199, 1
  %exitcond106.not = icmp eq i32 %inc8, 13
  br i1 %exitcond106.not, label %for.end9, label %min_heap_pop_push.exit.for.body6_crit_edge

min_heap_pop_push.exit.for.body6_crit_edge:       ; preds = %min_heap_pop_push.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body6

for.end9:                                         ; preds = %min_heap_pop_push.exit
  %call = call fastcc i32 @pop_verify_heap(i1 noundef zeroext %min_heap, ptr noundef nonnull %heap, ptr noundef nonnull %funcs) #9
  %26 = ptrtoint ptr %heap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %heap, align 4
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %2, align 4
  br label %for.body14

for.cond18.preheader:                             ; preds = %min_heap_push.exit64
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %37, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp.not62.i.i66 = icmp sgt i32 %37, 1
  br label %for.body20

for.body14:                                       ; preds = %min_heap_push.exit64.for.body14_crit_edge, %for.end9
  %i.2102 = phi i32 [ 0, %for.end9 ], [ %inc16, %min_heap_push.exit64.for.body14_crit_edge ]
  %31 = phi i32 [ 0, %for.end9 ], [ %37, %min_heap_push.exit64.for.body14_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %29)
  %cmp.not.i41 = icmp slt i32 %31, %29
  br i1 %cmp.not.i41, label %if.end38.i49, label %land.rhs.i43

land.rhs.i43:                                     ; preds = %for.body14
  %.b75.i42 = load i1, ptr @min_heap_push.__already_done, align 1
  br i1 %.b75.i42, label %land.rhs.i43.min_heap_push.exit64_crit_edge, label %if.then.i44, !prof !41

land.rhs.i43.min_heap_push.exit64_crit_edge:      ; preds = %land.rhs.i43
  call void @__sanitizer_cov_trace_pc() #8
  br label %min_heap_push.exit64

if.then.i44:                                      ; preds = %land.rhs.i43
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @min_heap_push.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 116, i32 noundef 9, ptr noundef nonnull @.str.13) #11
  br label %min_heap_push.exit64

if.end38.i49:                                     ; preds = %for.body14
  %mul.i45 = shl i32 %31, 2
  %add.ptr.i46 = getelementptr i8, ptr %27, i32 %mul.i45
  %32 = ptrtoint ptr %add.ptr.i46 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %cond3, ptr %add.ptr.i46, align 1
  %inc.i47 = add nsw i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp4279.i48 = icmp sgt i32 %31, 0
  br i1 %cmp4279.i48, label %if.end38.i49.for.body.i61_crit_edge, label %if.end38.i49.min_heap_push.exit64_crit_edge

if.end38.i49.min_heap_push.exit64_crit_edge:      ; preds = %if.end38.i49
  call void @__sanitizer_cov_trace_pc() #8
  br label %min_heap_push.exit64

if.end38.i49.for.body.i61_crit_edge:              ; preds = %if.end38.i49
  br label %for.body.i61

for.body.i61:                                     ; preds = %if.end50.i63.for.body.i61_crit_edge, %if.end38.i49.for.body.i61_crit_edge
  %pos.080.i53 = phi i32 [ %div7778.i57, %if.end50.i63.for.body.i61_crit_edge ], [ %31, %if.end38.i49.for.body.i61_crit_edge ]
  %mul44.i54 = shl i32 %pos.080.i53, 2
  %add.ptr45.i55 = getelementptr i8, ptr %27, i32 %mul44.i54
  %sub.i56 = add nsw i32 %pos.080.i53, -1
  %div7778.i57 = lshr i32 %sub.i56, 1
  %mul47.i58 = shl i32 %div7778.i57, 2
  %add.ptr48.i59 = getelementptr i8, ptr %27, i32 %mul47.i58
  %call.i60 = call zeroext i1 %cond(ptr noundef %add.ptr48.i59, ptr noundef %add.ptr45.i55) #11
  br i1 %call.i60, label %for.body.i61.min_heap_push.exit64_crit_edge, label %if.end50.i63

for.body.i61.min_heap_push.exit64_crit_edge:      ; preds = %for.body.i61
  call void @__sanitizer_cov_trace_pc() #8
  br label %min_heap_push.exit64

if.end50.i63:                                     ; preds = %for.body.i61
  %33 = ptrtoint ptr %add.ptr48.i59 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr48.i59, align 4
  %35 = ptrtoint ptr %add.ptr45.i55 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr45.i55, align 4
  store i32 %36, ptr %add.ptr48.i59, align 4
  store i32 %34, ptr %add.ptr45.i55, align 4
  %cmp42.not.i62 = icmp ult i32 %sub.i56, 2
  br i1 %cmp42.not.i62, label %if.end50.i63.min_heap_push.exit64_crit_edge, label %if.end50.i63.for.body.i61_crit_edge

if.end50.i63.for.body.i61_crit_edge:              ; preds = %if.end50.i63
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i61

if.end50.i63.min_heap_push.exit64_crit_edge:      ; preds = %if.end50.i63
  call void @__sanitizer_cov_trace_pc() #8
  br label %min_heap_push.exit64

min_heap_push.exit64:                             ; preds = %if.end50.i63.min_heap_push.exit64_crit_edge, %for.body.i61.min_heap_push.exit64_crit_edge, %if.end38.i49.min_heap_push.exit64_crit_edge, %if.then.i44, %land.rhs.i43.min_heap_push.exit64_crit_edge
  %37 = phi i32 [ %31, %land.rhs.i43.min_heap_push.exit64_crit_edge ], [ %31, %if.then.i44 ], [ %inc.i47, %if.end38.i49.min_heap_push.exit64_crit_edge ], [ %inc.i47, %if.end50.i63.min_heap_push.exit64_crit_edge ], [ %inc.i47, %for.body.i61.min_heap_push.exit64_crit_edge ]
  %inc16 = add nuw nsw i32 %i.2102, 1
  %exitcond107.not = icmp eq i32 %inc16, 13
  br i1 %exitcond107.not, label %for.cond18.preheader, label %min_heap_push.exit64.for.body14_crit_edge

min_heap_push.exit64.for.body14_crit_edge:        ; preds = %min_heap_push.exit64
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body14

for.body20:                                       ; preds = %min_heap_pop_push.exit96.for.body20_crit_edge, %for.cond18.preheader
  %i.3104 = phi i32 [ 0, %for.cond18.preheader ], [ %inc23, %min_heap_pop_push.exit96.for.body20_crit_edge ]
  %call.i97 = call i32 @get_random_u32() #11
  %38 = ptrtoint ptr %27 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %call.i97, ptr %27, align 1
  br i1 %cmp.not62.i.i66, label %for.body20.if.end.i.i81_crit_edge, label %for.body20.min_heap_pop_push.exit96_crit_edge

for.body20.min_heap_pop_push.exit96_crit_edge:    ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #8
  br label %min_heap_pop_push.exit96

for.body20.if.end.i.i81_crit_edge:                ; preds = %for.body20
  br label %if.end.i.i81

if.end.i.i81:                                     ; preds = %if.end27.i.i95.if.end.i.i81_crit_edge, %for.body20.if.end.i.i81_crit_edge
  %add65.i.i70 = phi i32 [ %add.i.i93, %if.end27.i.i95.if.end.i.i81_crit_edge ], [ 1, %for.body20.if.end.i.i81_crit_edge ]
  %mul64.i.i71 = phi i32 [ %mul.i.i92, %if.end27.i.i95.if.end.i.i81_crit_edge ], [ 0, %for.body20.if.end.i.i81_crit_edge ]
  %pos.addr.063.i.i72 = phi i32 [ %add.add11.i.i91, %if.end27.i.i95.if.end.i.i81_crit_edge ], [ 0, %for.body20.if.end.i.i81_crit_edge ]
  %mul4.i.i73 = shl i32 %add65.i.i70, 2
  %add.ptr.i.i74 = getelementptr i8, ptr %27, i32 %mul4.i.i73
  %mul6.i.i75 = shl i32 %pos.addr.063.i.i72, 2
  %add.ptr7.i.i76 = getelementptr i8, ptr %27, i32 %mul6.i.i75
  %call.i.i77 = call zeroext i1 %cond(ptr noundef %add.ptr.i.i74, ptr noundef %add.ptr7.i.i76) #11
  %spec.select.i.i78 = select i1 %call.i.i77, ptr %add.ptr.i.i74, ptr %add.ptr7.i.i76
  %add11.i.i79 = add i32 %mul64.i.i71, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add11.i.i79, i32 %37)
  %cmp13.i.i80 = icmp slt i32 %add11.i.i79, %37
  br i1 %cmp13.i.i80, label %if.then14.i.i86, label %if.end.i.i81.if.end24.i.i89_crit_edge

if.end.i.i81.if.end24.i.i89_crit_edge:            ; preds = %if.end.i.i81
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24.i.i89

if.then14.i.i86:                                  ; preds = %if.end.i.i81
  call void @__sanitizer_cov_trace_pc() #8
  %mul18.i.i82 = shl i32 %add11.i.i79, 2
  %add.ptr19.i.i83 = getelementptr i8, ptr %27, i32 %mul18.i.i82
  %call21.i.i84 = call zeroext i1 %cond(ptr noundef %add.ptr19.i.i83, ptr noundef %spec.select.i.i78) #11
  %spec.select59.i.i85 = select i1 %call21.i.i84, ptr %add.ptr19.i.i83, ptr %spec.select.i.i78
  br label %if.end24.i.i89

if.end24.i.i89:                                   ; preds = %if.then14.i.i86, %if.end.i.i81.if.end24.i.i89_crit_edge
  %smallest.1.i.i87 = phi ptr [ %spec.select.i.i78, %if.end.i.i81.if.end24.i.i89_crit_edge ], [ %spec.select59.i.i85, %if.then14.i.i86 ]
  %cmp25.i.i88 = icmp eq ptr %smallest.1.i.i87, %add.ptr7.i.i76
  br i1 %cmp25.i.i88, label %if.end24.i.i89.min_heap_pop_push.exit96_crit_edge, label %if.end27.i.i95

if.end24.i.i89.min_heap_pop_push.exit96_crit_edge: ; preds = %if.end24.i.i89
  call void @__sanitizer_cov_trace_pc() #8
  br label %min_heap_pop_push.exit96

if.end27.i.i95:                                   ; preds = %if.end24.i.i89
  %39 = ptrtoint ptr %smallest.1.i.i87 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %smallest.1.i.i87, align 4
  %41 = ptrtoint ptr %add.ptr7.i.i76 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr7.i.i76, align 4
  store i32 %42, ptr %smallest.1.i.i87, align 4
  store i32 %40, ptr %add.ptr7.i.i76, align 4
  %cmp28.i.i90 = icmp eq ptr %smallest.1.i.i87, %add.ptr.i.i74
  %add.add11.i.i91 = select i1 %cmp28.i.i90, i32 %add65.i.i70, i32 %add11.i.i79
  %mul.i.i92 = shl i32 %add.add11.i.i91, 1
  %add.i.i93 = or i32 %mul.i.i92, 1
  %cmp.not.i.i94 = icmp slt i32 %add.i.i93, %37
  br i1 %cmp.not.i.i94, label %if.end27.i.i95.if.end.i.i81_crit_edge, label %if.end27.i.i95.min_heap_pop_push.exit96_crit_edge

if.end27.i.i95.min_heap_pop_push.exit96_crit_edge: ; preds = %if.end27.i.i95
  call void @__sanitizer_cov_trace_pc() #8
  br label %min_heap_pop_push.exit96

if.end27.i.i95.if.end.i.i81_crit_edge:            ; preds = %if.end27.i.i95
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i81

min_heap_pop_push.exit96:                         ; preds = %if.end27.i.i95.min_heap_pop_push.exit96_crit_edge, %if.end24.i.i89.min_heap_pop_push.exit96_crit_edge, %for.body20.min_heap_pop_push.exit96_crit_edge
  %inc23 = add nuw nsw i32 %i.3104, 1
  %exitcond108.not = icmp eq i32 %inc23, 13
  br i1 %exitcond108.not, label %for.end24, label %min_heap_pop_push.exit96.for.body20_crit_edge

min_heap_pop_push.exit96.for.body20_crit_edge:    ; preds = %min_heap_pop_push.exit96
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body20

for.end24:                                        ; preds = %min_heap_pop_push.exit96
  call void @__sanitizer_cov_trace_pc() #8
  %call26 = call fastcc i32 @pop_verify_heap(i1 noundef zeroext %min_heap, ptr noundef nonnull %heap, ptr noundef nonnull %funcs) #9
  %add = add i32 %call26, %call
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %funcs) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %heap) #11
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %values) #11
  ret i32 %add
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @less_than(ptr nocapture noundef readonly %lhs, ptr nocapture noundef readonly %rhs) #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %lhs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lhs, align 4
  %2 = ptrtoint ptr %rhs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rhs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp slt i32 %1, %3
  ret i1 %cmp
}

; Function Attrs: argmemonly cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @greater_than(ptr nocapture noundef readonly %lhs, ptr nocapture noundef readonly %rhs) #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %lhs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lhs, align 4
  %2 = ptrtoint ptr %rhs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rhs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp sgt i32 %1, %3
  ret i1 %cmp
}

; Function Attrs: argmemonly cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal void @swap_ints(ptr nocapture noundef %lhs, ptr nocapture noundef %rhs) #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %lhs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lhs, align 4
  %2 = ptrtoint ptr %rhs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rhs, align 4
  store i32 %3, ptr %lhs, align 4
  store i32 %1, ptr %rhs, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pop_verify_heap(i1 noundef zeroext %min_heap, ptr nocapture noundef %heap, ptr nocapture noundef readonly %funcs) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %heap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %heap, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %nr.i = getelementptr inbounds %struct.min_heap, ptr %heap, i32 0, i32 1
  %4 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp slt i32 %5, 1
  br i1 %cmp.i, label %land.rhs.i, label %if.end38.i

land.rhs.i:                                       ; preds = %entry
  %.b51.i = load i1, ptr @min_heap_pop.__already_done, align 1
  br i1 %.b51.i, label %land.rhs.i.while.end_crit_edge, label %if.then.i, !prof !41

land.rhs.i.while.end_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @min_heap_pop.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 84, i32 noundef 9, ptr noundef nonnull @.str.12) #11
  br label %min_heap_pop.exitthread-pre-split

if.end38.i:                                       ; preds = %entry
  %dec.i = add nsw i32 %5, -1
  %6 = ptrtoint ptr %nr.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %dec.i, ptr %nr.i, align 4
  %7 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %funcs, align 4
  %mul.i = mul i32 %8, %dec.i
  %add.ptr.i = getelementptr i8, ptr %1, i32 %mul.i
  %9 = call ptr @memcpy(ptr %1, ptr %add.ptr.i, i32 %8)
  %10 = ptrtoint ptr %heap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %heap, align 4
  %12 = load i32, ptr %nr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.not62.i.i = icmp sgt i32 %12, 1
  br i1 %cmp.not62.i.i, label %if.end.lr.ph.i.i, label %if.end38.i.min_heap_pop.exit_crit_edge

if.end38.i.min_heap_pop.exit_crit_edge:           ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %min_heap_pop.exit

if.end.lr.ph.i.i:                                 ; preds = %if.end38.i
  %less.i.i = getelementptr inbounds %struct.min_heap_callbacks, ptr %funcs, i32 0, i32 1
  %swp.i.i = getelementptr inbounds %struct.min_heap_callbacks, ptr %funcs, i32 0, i32 2
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end27.i.i.if.end.i.i_crit_edge, %if.end.lr.ph.i.i
  %add65.i.i = phi i32 [ 1, %if.end.lr.ph.i.i ], [ %add.i.i, %if.end27.i.i.if.end.i.i_crit_edge ]
  %mul64.i.i = phi i32 [ 0, %if.end.lr.ph.i.i ], [ %mul.i.i, %if.end27.i.i.if.end.i.i_crit_edge ]
  %pos.addr.063.i.i = phi i32 [ 0, %if.end.lr.ph.i.i ], [ %add.add11.i.i, %if.end27.i.i.if.end.i.i_crit_edge ]
  %13 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %funcs, align 4
  %mul4.i.i = mul i32 %14, %add65.i.i
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %mul4.i.i
  %mul6.i.i = mul i32 %14, %pos.addr.063.i.i
  %add.ptr7.i.i = getelementptr i8, ptr %11, i32 %mul6.i.i
  %15 = ptrtoint ptr %less.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %less.i.i, align 4
  %call.i.i = tail call zeroext i1 %16(ptr noundef %add.ptr.i.i, ptr noundef %add.ptr7.i.i) #11
  %spec.select.i.i = select i1 %call.i.i, ptr %add.ptr.i.i, ptr %add.ptr7.i.i
  %add11.i.i = add i32 %mul64.i.i, 2
  %17 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add11.i.i, i32 %18)
  %cmp13.i.i = icmp slt i32 %add11.i.i, %18
  br i1 %cmp13.i.i, label %if.then14.i.i, label %if.end.i.i.if.end24.i.i_crit_edge

if.end.i.i.if.end24.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24.i.i

if.then14.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %funcs, align 4
  %mul18.i.i = mul i32 %20, %add11.i.i
  %add.ptr19.i.i = getelementptr i8, ptr %11, i32 %mul18.i.i
  %21 = ptrtoint ptr %less.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %less.i.i, align 4
  %call21.i.i = tail call zeroext i1 %22(ptr noundef %add.ptr19.i.i, ptr noundef %spec.select.i.i) #11
  %spec.select59.i.i = select i1 %call21.i.i, ptr %add.ptr19.i.i, ptr %spec.select.i.i
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %if.then14.i.i, %if.end.i.i.if.end24.i.i_crit_edge
  %smallest.1.i.i = phi ptr [ %spec.select.i.i, %if.end.i.i.if.end24.i.i_crit_edge ], [ %spec.select59.i.i, %if.then14.i.i ]
  %cmp25.i.i = icmp eq ptr %smallest.1.i.i, %add.ptr7.i.i
  br i1 %cmp25.i.i, label %if.end24.i.i.min_heap_pop.exitthread-pre-split_crit_edge, label %if.end27.i.i

if.end24.i.i.min_heap_pop.exitthread-pre-split_crit_edge: ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %min_heap_pop.exitthread-pre-split

if.end27.i.i:                                     ; preds = %if.end24.i.i
  %23 = ptrtoint ptr %swp.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %swp.i.i, align 4
  tail call void %24(ptr noundef %smallest.1.i.i, ptr noundef %add.ptr7.i.i) #11
  %cmp28.i.i = icmp eq ptr %smallest.1.i.i, %add.ptr.i.i
  %add.add11.i.i = select i1 %cmp28.i.i, i32 %add65.i.i, i32 %add11.i.i
  %mul.i.i = shl i32 %add.add11.i.i, 1
  %add.i.i = or i32 %mul.i.i, 1
  %25 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nr.i, align 4
  %cmp.not.i.i = icmp slt i32 %add.i.i, %26
  br i1 %cmp.not.i.i, label %if.end27.i.i.if.end.i.i_crit_edge, label %if.end27.i.i.min_heap_pop.exit_crit_edge

if.end27.i.i.min_heap_pop.exit_crit_edge:         ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %min_heap_pop.exit

if.end27.i.i.if.end.i.i_crit_edge:                ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

min_heap_pop.exitthread-pre-split:                ; preds = %if.end24.i.i.min_heap_pop.exitthread-pre-split_crit_edge, %if.then.i
  %27 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr = load i32, ptr %nr.i, align 4
  br label %min_heap_pop.exit

min_heap_pop.exit:                                ; preds = %min_heap_pop.exitthread-pre-split, %if.end27.i.i.min_heap_pop.exit_crit_edge, %if.end38.i.min_heap_pop.exit_crit_edge
  %28 = phi i32 [ %.pr, %min_heap_pop.exitthread-pre-split ], [ %12, %if.end38.i.min_heap_pop.exit_crit_edge ], [ %26, %if.end27.i.i.min_heap_pop.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp73 = icmp sgt i32 %28, 0
  br i1 %cmp73, label %while.body.lr.ph, label %min_heap_pop.exit.while.end_crit_edge

min_heap_pop.exit.while.end_crit_edge:            ; preds = %min_heap_pop.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %min_heap_pop.exit
  %less.i.i43 = getelementptr inbounds %struct.min_heap_callbacks, ptr %funcs, i32 0, i32 1
  %swp.i.i44 = getelementptr inbounds %struct.min_heap_callbacks, ptr %funcs, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %min_heap_pop.exit72.while.body_crit_edge, %while.body.lr.ph
  %err.075 = phi i32 [ 0, %while.body.lr.ph ], [ %err.1, %min_heap_pop.exit72.while.body_crit_edge ]
  %last.074 = phi i32 [ %3, %while.body.lr.ph ], [ %32, %min_heap_pop.exit72.while.body_crit_edge ]
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %1, align 4
  br i1 %min_heap, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %last.074, i32 %30)
  %cmp2 = icmp sgt i32 %last.074, %30
  br i1 %cmp2, label %if.then.if.end16.sink.split_crit_edge, label %if.then.if.end16_crit_edge

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then.if.end16.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.sink.split

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %last.074, i32 %30)
  %cmp6 = icmp slt i32 %last.074, %30
  br i1 %cmp6, label %if.else.if.end16.sink.split_crit_edge, label %if.else.if.end16_crit_edge

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.else.if.end16.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.sink.split

if.end16.sink.split:                              ; preds = %if.else.if.end16.sink.split_crit_edge, %if.then.if.end16.sink.split_crit_edge
  %.str.9.sink = phi ptr [ @.str.6, %if.then.if.end16.sink.split_crit_edge ], [ @.str.9, %if.else.if.end16.sink.split_crit_edge ]
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.9.sink, i32 noundef %last.074, i32 noundef %30) #10
  %inc14 = add i32 %err.075, 1
  br label %if.end16

if.end16:                                         ; preds = %if.end16.sink.split, %if.else.if.end16_crit_edge, %if.then.if.end16_crit_edge
  %err.1 = phi i32 [ %err.075, %if.then.if.end16_crit_edge ], [ %err.075, %if.else.if.end16_crit_edge ], [ %inc14, %if.end16.sink.split ]
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %1, align 4
  %33 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp.i34 = icmp slt i32 %34, 1
  br i1 %cmp.i34, label %land.rhs.i36, label %if.end38.i42

land.rhs.i36:                                     ; preds = %if.end16
  %.b51.i35 = load i1, ptr @min_heap_pop.__already_done, align 1
  br i1 %.b51.i35, label %land.rhs.i36.while.end_crit_edge, label %if.then.i37, !prof !41

land.rhs.i36.while.end_crit_edge:                 ; preds = %land.rhs.i36
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.then.i37:                                      ; preds = %land.rhs.i36
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @min_heap_pop.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 84, i32 noundef 9, ptr noundef nonnull @.str.12) #11
  br label %min_heap_pop.exit72thread-pre-split

if.end38.i42:                                     ; preds = %if.end16
  %35 = ptrtoint ptr %heap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %heap, align 4
  %dec.i38 = add nsw i32 %34, -1
  %37 = ptrtoint ptr %nr.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %dec.i38, ptr %nr.i, align 4
  %38 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %funcs, align 4
  %mul.i39 = mul i32 %39, %dec.i38
  %add.ptr.i40 = getelementptr i8, ptr %36, i32 %mul.i39
  %40 = call ptr @memcpy(ptr %36, ptr %add.ptr.i40, i32 %39)
  %41 = load ptr, ptr %heap, align 4
  %42 = load i32, ptr %nr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp.not62.i.i41 = icmp sgt i32 %42, 1
  br i1 %cmp.not62.i.i41, label %if.end38.i42.if.end.i.i57_crit_edge, label %if.end38.i42.min_heap_pop.exit72_crit_edge

if.end38.i42.min_heap_pop.exit72_crit_edge:       ; preds = %if.end38.i42
  call void @__sanitizer_cov_trace_pc() #8
  br label %min_heap_pop.exit72

if.end38.i42.if.end.i.i57_crit_edge:              ; preds = %if.end38.i42
  br label %if.end.i.i57

if.end.i.i57:                                     ; preds = %if.end27.i.i71.if.end.i.i57_crit_edge, %if.end38.i42.if.end.i.i57_crit_edge
  %add65.i.i46 = phi i32 [ %add.i.i69, %if.end27.i.i71.if.end.i.i57_crit_edge ], [ 1, %if.end38.i42.if.end.i.i57_crit_edge ]
  %mul64.i.i47 = phi i32 [ %mul.i.i68, %if.end27.i.i71.if.end.i.i57_crit_edge ], [ 0, %if.end38.i42.if.end.i.i57_crit_edge ]
  %pos.addr.063.i.i48 = phi i32 [ %add.add11.i.i67, %if.end27.i.i71.if.end.i.i57_crit_edge ], [ 0, %if.end38.i42.if.end.i.i57_crit_edge ]
  %43 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %funcs, align 4
  %mul4.i.i49 = mul i32 %44, %add65.i.i46
  %add.ptr.i.i50 = getelementptr i8, ptr %41, i32 %mul4.i.i49
  %mul6.i.i51 = mul i32 %44, %pos.addr.063.i.i48
  %add.ptr7.i.i52 = getelementptr i8, ptr %41, i32 %mul6.i.i51
  %45 = ptrtoint ptr %less.i.i43 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %less.i.i43, align 4
  %call.i.i53 = tail call zeroext i1 %46(ptr noundef %add.ptr.i.i50, ptr noundef %add.ptr7.i.i52) #11
  %spec.select.i.i54 = select i1 %call.i.i53, ptr %add.ptr.i.i50, ptr %add.ptr7.i.i52
  %add11.i.i55 = add i32 %mul64.i.i47, 2
  %47 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add11.i.i55, i32 %48)
  %cmp13.i.i56 = icmp slt i32 %add11.i.i55, %48
  br i1 %cmp13.i.i56, label %if.then14.i.i62, label %if.end.i.i57.if.end24.i.i65_crit_edge

if.end.i.i57.if.end24.i.i65_crit_edge:            ; preds = %if.end.i.i57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24.i.i65

if.then14.i.i62:                                  ; preds = %if.end.i.i57
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %funcs, align 4
  %mul18.i.i58 = mul i32 %50, %add11.i.i55
  %add.ptr19.i.i59 = getelementptr i8, ptr %41, i32 %mul18.i.i58
  %51 = ptrtoint ptr %less.i.i43 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %less.i.i43, align 4
  %call21.i.i60 = tail call zeroext i1 %52(ptr noundef %add.ptr19.i.i59, ptr noundef %spec.select.i.i54) #11
  %spec.select59.i.i61 = select i1 %call21.i.i60, ptr %add.ptr19.i.i59, ptr %spec.select.i.i54
  br label %if.end24.i.i65

if.end24.i.i65:                                   ; preds = %if.then14.i.i62, %if.end.i.i57.if.end24.i.i65_crit_edge
  %smallest.1.i.i63 = phi ptr [ %spec.select.i.i54, %if.end.i.i57.if.end24.i.i65_crit_edge ], [ %spec.select59.i.i61, %if.then14.i.i62 ]
  %cmp25.i.i64 = icmp eq ptr %smallest.1.i.i63, %add.ptr7.i.i52
  br i1 %cmp25.i.i64, label %if.end24.i.i65.min_heap_pop.exit72thread-pre-split_crit_edge, label %if.end27.i.i71

if.end24.i.i65.min_heap_pop.exit72thread-pre-split_crit_edge: ; preds = %if.end24.i.i65
  call void @__sanitizer_cov_trace_pc() #8
  br label %min_heap_pop.exit72thread-pre-split

if.end27.i.i71:                                   ; preds = %if.end24.i.i65
  %53 = ptrtoint ptr %swp.i.i44 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %swp.i.i44, align 4
  tail call void %54(ptr noundef %smallest.1.i.i63, ptr noundef %add.ptr7.i.i52) #11
  %cmp28.i.i66 = icmp eq ptr %smallest.1.i.i63, %add.ptr.i.i50
  %add.add11.i.i67 = select i1 %cmp28.i.i66, i32 %add65.i.i46, i32 %add11.i.i55
  %mul.i.i68 = shl i32 %add.add11.i.i67, 1
  %add.i.i69 = or i32 %mul.i.i68, 1
  %55 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nr.i, align 4
  %cmp.not.i.i70 = icmp slt i32 %add.i.i69, %56
  br i1 %cmp.not.i.i70, label %if.end27.i.i71.if.end.i.i57_crit_edge, label %if.end27.i.i71.min_heap_pop.exit72_crit_edge

if.end27.i.i71.min_heap_pop.exit72_crit_edge:     ; preds = %if.end27.i.i71
  call void @__sanitizer_cov_trace_pc() #8
  br label %min_heap_pop.exit72

if.end27.i.i71.if.end.i.i57_crit_edge:            ; preds = %if.end27.i.i71
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i57

min_heap_pop.exit72thread-pre-split:              ; preds = %if.end24.i.i65.min_heap_pop.exit72thread-pre-split_crit_edge, %if.then.i37
  %57 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pr77 = load i32, ptr %nr.i, align 4
  br label %min_heap_pop.exit72

min_heap_pop.exit72:                              ; preds = %min_heap_pop.exit72thread-pre-split, %if.end27.i.i71.min_heap_pop.exit72_crit_edge, %if.end38.i42.min_heap_pop.exit72_crit_edge
  %58 = phi i32 [ %.pr77, %min_heap_pop.exit72thread-pre-split ], [ %42, %if.end38.i42.min_heap_pop.exit72_crit_edge ], [ %56, %if.end27.i.i71.min_heap_pop.exit72_crit_edge ]
  %cmp = icmp sgt i32 %58, 0
  br i1 %cmp, label %min_heap_pop.exit72.while.body_crit_edge, label %min_heap_pop.exit72.while.end_crit_edge

min_heap_pop.exit72.while.end_crit_edge:          ; preds = %min_heap_pop.exit72
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

min_heap_pop.exit72.while.body_crit_edge:         ; preds = %min_heap_pop.exit72
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %min_heap_pop.exit72.while.end_crit_edge, %land.rhs.i36.while.end_crit_edge, %min_heap_pop.exit.while.end_crit_edge, %land.rhs.i.while.end_crit_edge
  %err.0.lcssa = phi i32 [ 0, %min_heap_pop.exit.while.end_crit_edge ], [ 0, %land.rhs.i.while.end_crit_edge ], [ %err.1, %min_heap_pop.exit72.while.end_crit_edge ], [ %err.1, %land.rhs.i36.while.end_crit_edge ]
  ret i32 %err.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_random_u32() local_unnamed_addr #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind uwtable(sync) }
attributes #8 = { nomerge }
attributes #9 = { cold }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__initcall__kmod_test_min_heap__106_186_test_min_heap_init6, !1, !"__initcall__kmod_test_min_heap__106_186_test_min_heap_init6", i1 false, i1 false}
!1 = !{!"../lib/test_min_heap.c", i32 186, i32 1}
!2 = !{ptr @__exitcall_test_min_heap_exit, !3, !"__exitcall_test_min_heap_exit", i1 false, i1 false}
!3 = !{!"../lib/test_min_heap.c", i32 192, i32 1}
!4 = !{ptr @__UNIQUE_ID_file107, !5, !"__UNIQUE_ID_file107", i1 false, i1 false}
!5 = !{!"../lib/test_min_heap.c", i32 194, i32 1}
!6 = !{ptr @__UNIQUE_ID_license108, !5, !"__UNIQUE_ID_license108", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../lib/test_min_heap.c", i32 180, i32 3}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @test_min_heap_init._entry, !8, !"_entry", i1 false, i1 false}
!12 = !{ptr @test_min_heap_init._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../lib/test_min_heap.c", i32 183, i32 2}
!15 = !{ptr @test_min_heap_init._entry.3, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @test_min_heap_init._entry_ptr.5, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../lib/test_min_heap.c", i32 45, i32 5}
!19 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @pop_verify_heap._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @pop_verify_heap._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../lib/test_min_heap.c", i32 51, i32 5}
!24 = !{ptr @pop_verify_heap._entry.8, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @pop_verify_heap._entry_ptr.10, !23, !"_entry_ptr", i1 false, i1 false}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../include/linux/min_heap.h", i32 84, i32 6}
!28 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../include/linux/min_heap.h", i32 116, i32 6}
!32 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{!"branch_weights", i32 2000, i32 1}
