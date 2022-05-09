; ModuleID = '/llk/IR_all_yes/lib/test_string.c_pt.bc'
source_filename = "../lib/test_string.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@__initcall__kmod_test_string__173_222_string_selftest_init6 = internal global ptr @string_selftest_init, section ".initcall6.init", align 4
@__exitcall_string_selftest_remove = internal global ptr @string_selftest_remove, section ".exitcall.exit", align 4
@__UNIQUE_ID_file174 = internal constant [33 x i8] c"test_string.file=lib/test_string\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [27 x i8] c"test_string.license=GPL v2\00", section ".modinfo", align 1
@string_selftest_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016String selftests succeeded\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"string_selftest_init\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lib/test_string.c\00", [46 x i8] zeroinitializer }, align 32
@string_selftest_init._entry_ptr = internal global ptr @string_selftest_init._entry, section ".printk_index", align 4
@string_selftest_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\012String selftest failure %d.%08x\0A\00", [61 x i8] zeroinitializer }, align 32
@string_selftest_init._entry_ptr.5 = internal global ptr @string_selftest_init._entry.3, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"abcdefghijkl\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 215, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 218, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 117, i32 28 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private constant [21 x i8] c"../lib/test_string.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 118, i32 29 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__exitcall_string_selftest_remove, ptr @__initcall__kmod_test_string__173_222_string_selftest_init6, ptr @string_selftest_init._entry, ptr @string_selftest_init._entry.3, ptr @string_selftest_init._entry_ptr, ptr @string_selftest_init._entry_ptr.5, ptr @string_selftest_remove, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @string_selftest_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @string_selftest_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @string_selftest_remove() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @string_selftest_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call fastcc i32 @memset16_selftest() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.do.end20_crit_edge

entry.do.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end20

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @memset32_selftest() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.do.end20_crit_edge

if.end.do.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end20

if.end4:                                          ; preds = %if.end
  %call5 = tail call fastcc i32 @memset64_selftest() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.do.end20_crit_edge

if.end4.do.end20_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end20

if.end8:                                          ; preds = %if.end4
  %call9 = tail call fastcc i32 @strchr_selftest() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.do.end20_crit_edge

if.end8.do.end20_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end20

if.end12:                                         ; preds = %if.end8
  %call13 = tail call fastcc i32 @strnchr_selftest() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %do.end, label %if.end12.do.end20_crit_edge

if.end12.do.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end20

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  br label %cleanup

do.end20:                                         ; preds = %if.end12.do.end20_crit_edge, %if.end8.do.end20_crit_edge, %if.end4.do.end20_crit_edge, %if.end.do.end20_crit_edge, %entry.do.end20_crit_edge
  %subtest.0 = phi i32 [ %call, %entry.do.end20_crit_edge ], [ %call1, %if.end.do.end20_crit_edge ], [ %call5, %if.end4.do.end20_crit_edge ], [ %call9, %if.end8.do.end20_crit_edge ], [ %call13, %if.end12.do.end20_crit_edge ]
  %test.0 = phi i32 [ 1, %entry.do.end20_crit_edge ], [ 2, %if.end.do.end20_crit_edge ], [ 3, %if.end4.do.end20_crit_edge ], [ 4, %if.end8.do.end20_crit_edge ], [ 5, %if.end12.do.end20_crit_edge ]
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %test.0, i32 noundef %subtest.0) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end20, %do.end
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @memset16_selftest() unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 1024) #11
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.cond1.preheader_crit_edge

entry.for.cond1.preheader_crit_edge:              ; preds = %entry
  br label %for.cond1.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond1.preheader:                              ; preds = %for.inc33.for.cond1.preheader_crit_edge, %entry.for.cond1.preheader_crit_edge
  %cmp78 = phi i1 [ %cmp, %for.inc33.for.cond1.preheader_crit_edge ], [ true, %entry.for.cond1.preheader_crit_edge ]
  %i.077 = phi i32 [ %inc34, %for.inc33.for.cond1.preheader_crit_edge ], [ 0, %entry.for.cond1.preheader_crit_edge ]
  %add.ptr = getelementptr i16, ptr %call7.i, i32 %i.077
  br label %for.body3

fail.thread:                                      ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %cleanup

for.body3:                                        ; preds = %for.inc30.for.body3_crit_edge, %for.cond1.preheader
  %j.176 = phi i32 [ 0, %for.cond1.preheader ], [ %inc31, %for.inc30.for.body3_crit_edge ]
  %1 = call ptr @memset(ptr %call7.i, i32 161, i32 1024)
  %call4 = tail call ptr @memset16(ptr noundef %add.ptr, i16 noundef zeroext -20046, i32 noundef %j.176) #12
  %add = add nuw nsw i32 %j.176, %i.077
  br label %for.body7

for.body7:                                        ; preds = %for.inc.for.body7_crit_edge, %for.body3
  %k.274 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc.for.body7_crit_edge ]
  %arrayidx = getelementptr i16, ptr %call7.i, i32 %k.274
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %k.274, i32 %i.077)
  %cmp8 = icmp ult i32 %k.274, %i.077
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %for.body7
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24159, i16 %3)
  %cmp10.not = icmp eq i16 %3, -24159
  br i1 %cmp10.not, label %if.then9.for.inc_crit_edge, label %if.then9.fail_crit_edge

if.then9.fail_crit_edge:                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.then9.for.inc_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.else:                                          ; preds = %for.body7
  call void @__sanitizer_cov_trace_cmp4(i32 %k.274, i32 %add)
  %cmp14 = icmp ult i32 %k.274, %add
  br i1 %cmp14, label %if.then16, label %if.else22

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp2(i16 -20046, i16 %3)
  %cmp18.not = icmp eq i16 %3, -20046
  br i1 %cmp18.not, label %if.then16.for.inc_crit_edge, label %if.then16.fail_crit_edge

if.then16.fail_crit_edge:                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.then16.for.inc_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.else22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24159, i16 %3)
  %cmp24.not = icmp eq i16 %3, -24159
  br i1 %cmp24.not, label %if.else22.for.inc_crit_edge, label %if.else22.fail_crit_edge

if.else22.fail_crit_edge:                         ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.else22.for.inc_crit_edge:                      ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %if.else22.for.inc_crit_edge, %if.then16.for.inc_crit_edge, %if.then9.for.inc_crit_edge
  %inc = add nuw nsw i32 %k.274, 1
  %exitcond.not = icmp eq i32 %inc, 512
  br i1 %exitcond.not, label %for.inc30, label %for.inc.for.body7_crit_edge

for.inc.for.body7_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body7

for.inc30:                                        ; preds = %for.inc
  %inc31 = add nuw nsw i32 %j.176, 1
  %exitcond83.not = icmp eq i32 %inc31, 256
  br i1 %exitcond83.not, label %for.inc33, label %for.inc30.for.body3_crit_edge

for.inc30.for.body3_crit_edge:                    ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body3

for.inc33:                                        ; preds = %for.inc30
  %inc34 = add nuw nsw i32 %i.077, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %i.077)
  %cmp = icmp ult i32 %i.077, 255
  %exitcond84.not = icmp eq i32 %inc34, 256
  br i1 %exitcond84.not, label %fail.thread, label %for.inc33.for.cond1.preheader_crit_edge

for.inc33.for.cond1.preheader_crit_edge:          ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond1.preheader

fail:                                             ; preds = %if.else22.fail_crit_edge, %if.then16.fail_crit_edge, %if.then9.fail_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #12
  br i1 %cmp78, label %if.then38, label %fail.cleanup_crit_edge

fail.cleanup_crit_edge:                           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then38:                                        ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #8
  %shl = shl nuw i32 %i.077, 24
  %shl39 = shl i32 %j.176, 16
  %or = or i32 %shl, %shl39
  %or40 = or i32 %or, %k.274
  %or41 = or i32 %or40, 32768
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %fail.cleanup_crit_edge, %fail.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %or41, %if.then38 ], [ -1, %entry.cleanup_crit_edge ], [ 0, %fail.cleanup_crit_edge ], [ 0, %fail.thread ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @memset32_selftest() unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 2048) #11
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.cond1.preheader_crit_edge

entry.for.cond1.preheader_crit_edge:              ; preds = %entry
  br label %for.cond1.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond1.preheader:                              ; preds = %for.inc27.for.cond1.preheader_crit_edge, %entry.for.cond1.preheader_crit_edge
  %cmp71 = phi i1 [ %cmp, %for.inc27.for.cond1.preheader_crit_edge ], [ true, %entry.for.cond1.preheader_crit_edge ]
  %i.070 = phi i32 [ %inc28, %for.inc27.for.cond1.preheader_crit_edge ], [ 0, %entry.for.cond1.preheader_crit_edge ]
  %add.ptr = getelementptr i32, ptr %call7.i, i32 %i.070
  br label %for.body3

fail.thread:                                      ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %cleanup

for.body3:                                        ; preds = %for.inc24.for.body3_crit_edge, %for.cond1.preheader
  %j.169 = phi i32 [ 0, %for.cond1.preheader ], [ %inc25, %for.inc24.for.body3_crit_edge ]
  %1 = call ptr @memset(ptr %call7.i, i32 161, i32 2048)
  %mul.i = shl nuw nsw i32 %j.169, 2
  %call.i = tail call ptr @__memset32(ptr noundef %add.ptr, i32 noundef -1313688652, i32 noundef %mul.i) #12
  %add = add nuw nsw i32 %j.169, %i.070
  br label %for.body7

for.body7:                                        ; preds = %for.inc.for.body7_crit_edge, %for.body3
  %k.267 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc.for.body7_crit_edge ]
  %arrayidx = getelementptr i32, ptr %call7.i, i32 %k.267
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %k.267, i32 %i.070)
  %cmp8 = icmp ult i32 %k.267, %i.070
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %for.body7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1583242847, i32 %3)
  %cmp10.not = icmp eq i32 %3, -1583242847
  br i1 %cmp10.not, label %if.then9.for.inc_crit_edge, label %if.then9.fail_crit_edge

if.then9.fail_crit_edge:                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.then9.for.inc_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.else:                                          ; preds = %for.body7
  call void @__sanitizer_cov_trace_cmp4(i32 %k.267, i32 %add)
  %cmp13 = icmp ult i32 %k.267, %add
  br i1 %cmp13, label %if.then14, label %if.else18

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1313688652, i32 %3)
  %cmp15.not = icmp eq i32 %3, -1313688652
  br i1 %cmp15.not, label %if.then14.for.inc_crit_edge, label %if.then14.fail_crit_edge

if.then14.fail_crit_edge:                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.then14.for.inc_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.else18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1583242847, i32 %3)
  %cmp19.not = icmp eq i32 %3, -1583242847
  br i1 %cmp19.not, label %if.else18.for.inc_crit_edge, label %if.else18.fail_crit_edge

if.else18.fail_crit_edge:                         ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.else18.for.inc_crit_edge:                      ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %if.else18.for.inc_crit_edge, %if.then14.for.inc_crit_edge, %if.then9.for.inc_crit_edge
  %inc = add nuw nsw i32 %k.267, 1
  %exitcond.not = icmp eq i32 %inc, 512
  br i1 %exitcond.not, label %for.inc24, label %for.inc.for.body7_crit_edge

for.inc.for.body7_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body7

for.inc24:                                        ; preds = %for.inc
  %inc25 = add nuw nsw i32 %j.169, 1
  %exitcond76.not = icmp eq i32 %inc25, 256
  br i1 %exitcond76.not, label %for.inc27, label %for.inc24.for.body3_crit_edge

for.inc24.for.body3_crit_edge:                    ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body3

for.inc27:                                        ; preds = %for.inc24
  %inc28 = add nuw nsw i32 %i.070, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %i.070)
  %cmp = icmp ult i32 %i.070, 255
  %exitcond77.not = icmp eq i32 %inc28, 256
  br i1 %exitcond77.not, label %fail.thread, label %for.inc27.for.cond1.preheader_crit_edge

for.inc27.for.cond1.preheader_crit_edge:          ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond1.preheader

fail:                                             ; preds = %if.else18.fail_crit_edge, %if.then14.fail_crit_edge, %if.then9.fail_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #12
  br i1 %cmp71, label %if.then31, label %fail.cleanup_crit_edge

fail.cleanup_crit_edge:                           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then31:                                        ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #8
  %shl = shl nuw i32 %i.070, 24
  %shl32 = shl i32 %j.169, 16
  %or = or i32 %shl, %shl32
  %or33 = or i32 %or, %k.267
  %or34 = or i32 %or33, 32768
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %fail.cleanup_crit_edge, %fail.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %or34, %if.then31 ], [ -1, %entry.cleanup_crit_edge ], [ 0, %fail.cleanup_crit_edge ], [ 0, %fail.thread ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @memset64_selftest() unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 4096) #11
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.cond1.preheader_crit_edge

entry.for.cond1.preheader_crit_edge:              ; preds = %entry
  br label %for.cond1.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond1.preheader:                              ; preds = %for.inc27.for.cond1.preheader_crit_edge, %entry.for.cond1.preheader_crit_edge
  %cmp71 = phi i1 [ %cmp, %for.inc27.for.cond1.preheader_crit_edge ], [ true, %entry.for.cond1.preheader_crit_edge ]
  %i.070 = phi i32 [ %inc28, %for.inc27.for.cond1.preheader_crit_edge ], [ 0, %entry.for.cond1.preheader_crit_edge ]
  %add.ptr = getelementptr i64, ptr %call7.i, i32 %i.070
  br label %for.body3

fail.thread:                                      ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %cleanup

for.body3:                                        ; preds = %for.inc24.for.body3_crit_edge, %for.cond1.preheader
  %j.169 = phi i32 [ 0, %for.cond1.preheader ], [ %inc25, %for.inc24.for.body3_crit_edge ]
  %1 = call ptr @memset(ptr %call7.i, i32 161, i32 4096)
  %mul.i = shl nuw nsw i32 %j.169, 3
  %call.i = tail call ptr @__memset64(ptr noundef %add.ptr, i32 noundef -1246316616, i32 noundef %mul.i, i32 noundef -1313688652) #12
  %add = add nuw nsw i32 %j.169, %i.070
  br label %for.body7

for.body7:                                        ; preds = %for.inc.for.body7_crit_edge, %for.body3
  %k.267 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc.for.body7_crit_edge ]
  %arrayidx = getelementptr i64, ptr %call7.i, i32 %k.267
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %k.267, i32 %i.070)
  %cmp8 = icmp ult i32 %k.267, %i.070
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %for.body7
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6799976246779207263, i64 %3)
  %cmp10.not = icmp eq i64 %3, -6799976246779207263
  br i1 %cmp10.not, label %if.then9.for.inc_crit_edge, label %if.then9.fail_crit_edge

if.then9.fail_crit_edge:                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.then9.for.inc_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.else:                                          ; preds = %for.body7
  call void @__sanitizer_cov_trace_cmp4(i32 %k.267, i32 %add)
  %cmp13 = icmp ult i32 %k.267, %add
  br i1 %cmp13, label %if.then14, label %if.else18

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp8(i64 -5642249794417674312, i64 %3)
  %cmp15.not = icmp eq i64 %3, -5642249794417674312
  br i1 %cmp15.not, label %if.then14.for.inc_crit_edge, label %if.then14.fail_crit_edge

if.then14.fail_crit_edge:                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.then14.for.inc_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.else18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp8(i64 -6799976246779207263, i64 %3)
  %cmp19.not = icmp eq i64 %3, -6799976246779207263
  br i1 %cmp19.not, label %if.else18.for.inc_crit_edge, label %if.else18.fail_crit_edge

if.else18.fail_crit_edge:                         ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.else18.for.inc_crit_edge:                      ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %if.else18.for.inc_crit_edge, %if.then14.for.inc_crit_edge, %if.then9.for.inc_crit_edge
  %inc = add nuw nsw i32 %k.267, 1
  %exitcond.not = icmp eq i32 %inc, 512
  br i1 %exitcond.not, label %for.inc24, label %for.inc.for.body7_crit_edge

for.inc.for.body7_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body7

for.inc24:                                        ; preds = %for.inc
  %inc25 = add nuw nsw i32 %j.169, 1
  %exitcond76.not = icmp eq i32 %inc25, 256
  br i1 %exitcond76.not, label %for.inc27, label %for.inc24.for.body3_crit_edge

for.inc24.for.body3_crit_edge:                    ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body3

for.inc27:                                        ; preds = %for.inc24
  %inc28 = add nuw nsw i32 %i.070, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %i.070)
  %cmp = icmp ult i32 %i.070, 255
  %exitcond77.not = icmp eq i32 %inc28, 256
  br i1 %exitcond77.not, label %fail.thread, label %for.inc27.for.cond1.preheader_crit_edge

for.inc27.for.cond1.preheader_crit_edge:          ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond1.preheader

fail:                                             ; preds = %if.else18.fail_crit_edge, %if.then14.fail_crit_edge, %if.then9.fail_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #12
  br i1 %cmp71, label %if.then31, label %fail.cleanup_crit_edge

fail.cleanup_crit_edge:                           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then31:                                        ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #8
  %shl = shl nuw i32 %i.070, 24
  %shl32 = shl i32 %j.169, 16
  %or = or i32 %shl, %shl32
  %or33 = or i32 %or, %k.267
  %or34 = or i32 %or33, 32768
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %fail.cleanup_crit_edge, %fail.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %or34, %if.then31 ], [ -1, %entry.cleanup_crit_edge ], [ 0, %fail.cleanup_crit_edge ], [ 0, %fail.thread ]
  ret i32 %retval.0
}

; Function Attrs: cold nofree nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @strchr_selftest() unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.034 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr @.str.6, i32 %i.034
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %memchr = tail call ptr @memchr(ptr noundef nonnull @.str.6, i32 %conv, i32 13) #13
  %sub.ptr.lhs.cast = ptrtoint ptr %memchr to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, ptrtoint (ptr @.str.6 to i32)
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub, i32 %i.034)
  %cmp2.not = icmp eq i32 %sub.ptr.sub, %i.034
  br i1 %cmp2.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %add4 = add nuw nsw i32 %i.034, 97
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.034, 1
  %exitcond.not = icmp eq i32 %inc, 13
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %add4, %if.then ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @strnchr_selftest() unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc19.for.cond1.preheader_crit_edge, %entry
  %i.072 = phi i32 [ 0, %entry ], [ %inc20, %for.inc19.for.cond1.preheader_crit_edge ]
  %arrayidx = getelementptr i8, ptr @.str.6, i32 %i.072
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  br label %for.body5

for.body5:                                        ; preds = %for.inc.for.body5_crit_edge, %for.cond1.preheader
  %j.070 = phi i32 [ 0, %for.cond1.preheader ], [ %inc, %for.inc.for.body5_crit_edge ]
  %call6 = tail call ptr @strnchr(ptr noundef nonnull @.str.6, i32 noundef %j.070, i32 noundef %conv) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %j.070, i32 %i.072)
  %cmp7.not = icmp ugt i32 %j.070, %i.072
  br i1 %cmp7.not, label %if.end11, label %if.then

if.then:                                          ; preds = %for.body5
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %if.then.for.inc_crit_edge, label %if.end

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %add10 = shl i32 %i.072, 8
  %shl = add i32 %add10, 24832
  %or = or i32 %j.070, %shl
  br label %cleanup

if.end11:                                         ; preds = %for.body5
  %sub.ptr.lhs.cast = ptrtoint ptr %call6 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, ptrtoint (ptr @.str.6 to i32)
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub, i32 %i.072)
  %cmp12.not = icmp eq i32 %sub.ptr.sub, %i.072
  br i1 %cmp12.not, label %if.end11.for.inc_crit_edge, label %if.then14

if.end11.for.inc_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %add15 = shl i32 %i.072, 8
  %shl16 = add i32 %add15, 24832
  %or17 = or i32 %j.070, %shl16
  br label %cleanup

for.inc:                                          ; preds = %if.end11.for.inc_crit_edge, %if.then.for.inc_crit_edge
  %inc = add nuw nsw i32 %j.070, 1
  %exitcond.not = icmp eq i32 %inc, 14
  br i1 %exitcond.not, label %for.inc19, label %for.inc.for.body5_crit_edge

for.inc.for.body5_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body5

for.inc19:                                        ; preds = %for.inc
  %inc20 = add nuw nsw i32 %i.072, 1
  %exitcond77.not = icmp eq i32 %inc20, 13
  br i1 %exitcond77.not, label %for.end21, label %for.inc19.for.cond1.preheader_crit_edge

for.inc19.for.cond1.preheader_crit_edge:          ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond1.preheader

for.end21:                                        ; preds = %for.inc19
  %call22 = tail call ptr @strnchr(ptr noundef nonnull @.str.7, i32 noundef 0, i32 noundef 0) #12
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.end25, label %for.end21.cleanup_crit_edge

for.end21.cleanup_crit_edge:                      ; preds = %for.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %for.end21
  %call26 = tail call ptr @strnchr(ptr noundef nonnull @.str.7, i32 noundef 1, i32 noundef 0) #12
  %cmp27.not = icmp eq ptr %call26, @.str.7
  br i1 %cmp27.not, label %if.end30, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  %call31 = tail call ptr @strnchr(ptr noundef nonnull @.str.7, i32 noundef 1, i32 noundef 97) #12
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %if.end34, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end34:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %call35 = tail call ptr @strnchr(ptr noundef null, i32 noundef 0, i32 noundef 0) #12
  %tobool36.not = icmp eq ptr %call35, null
  %. = select i1 %tobool36.not, i32 0, i32 65540
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end30.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %for.end21.cleanup_crit_edge, %if.then14, %if.end
  %retval.0 = phi i32 [ %or, %if.end ], [ %or17, %if.then14 ], [ 65537, %for.end21.cleanup_crit_edge ], [ 65538, %if.end25.cleanup_crit_edge ], [ 65539, %if.end30.cleanup_crit_edge ], [ %., %if.end34 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memset16(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__memset32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__memset64(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strnchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare ptr @memchr(ptr, i32, i32) local_unnamed_addr #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold nofree nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind uwtable(sync) }
attributes #8 = { nomerge }
attributes #9 = { cold }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !15, !16, !17, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @__initcall__kmod_test_string__173_222_string_selftest_init6, !1, !"__initcall__kmod_test_string__173_222_string_selftest_init6", i1 false, i1 false}
!1 = !{!"../lib/test_string.c", i32 222, i32 1}
!2 = !{ptr @__exitcall_string_selftest_remove, !3, !"__exitcall_string_selftest_remove", i1 false, i1 false}
!3 = !{!"../lib/test_string.c", i32 223, i32 1}
!4 = !{ptr @__UNIQUE_ID_file174, !5, !"__UNIQUE_ID_file174", i1 false, i1 false}
!5 = !{!"../lib/test_string.c", i32 224, i32 1}
!6 = !{ptr @__UNIQUE_ID_license175, !5, !"__UNIQUE_ID_license175", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../lib/test_string.c", i32 215, i32 2}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @string_selftest_init._entry, !8, !"_entry", i1 false, i1 false}
!12 = !{ptr @string_selftest_init._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../lib/test_string.c", i32 218, i32 2}
!15 = !{ptr @string_selftest_init._entry.3, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @string_selftest_init._entry_ptr.5, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../lib/test_string.c", i32 117, i32 28}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../lib/test_string.c", i32 118, i32 29}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
