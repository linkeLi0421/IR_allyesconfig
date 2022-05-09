; ModuleID = '/llk/IR_all_yes/lib/test_memcat_p.c_pt.bc'
source_filename = "../lib/test_memcat_p.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.test_struct = type { i32, i32 }

@__initcall__kmod_test_memcat_p__174_112_test_memcat_p_init6 = internal global ptr @test_memcat_p_init, section ".initcall6.init", align 4
@__exitcall_test_memcat_p_exit = internal global ptr @test_memcat_p_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file175 = internal constant [37 x i8] c"test_memcat_p.file=lib/test_memcat_p\00", section ".modinfo", align 1
@__UNIQUE_ID_license176 = internal constant [26 x i8] c"test_memcat_p.license=GPL\00", section ".modinfo", align 1
@test_memcat_p_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 66, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013test_memcat_p: test failed: wrong magic at %d: %u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"test_memcat_p_init\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lib/test_memcat_p.c\00", [44 x i8] zeroinitializer }, align 32
@test_memcat_p_init._entry_ptr = internal global ptr @test_memcat_p_init._entry, section ".printk_index", align 4
@test_memcat_p_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013test_memcat_p: test failed: expected zero total, got %d\0A\00", [37 x i8] zeroinitializer }, align 32
@test_memcat_p_init._entry_ptr.5 = internal global ptr @test_memcat_p_init._entry.3, section ".printk_index", align 4
@test_memcat_p_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013test_memcat_p: test failed: expected output size %d, got %d\0A\00", [33 x i8] zeroinitializer }, align 32
@test_memcat_p_init._entry_ptr.8 = internal global ptr @test_memcat_p_init._entry.6, section ".printk_index", align 4
@test_memcat_p_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013test_memcat_p: test failed: wrong element order at %d\0A\00", [39 x i8] zeroinitializer }, align 32
@test_memcat_p_init._entry_ptr.11 = internal global ptr @test_memcat_p_init._entry.9, section ".printk_index", align 4
@test_memcat_p_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016test_memcat_p: test passed\0A\00", [34 x i8] zeroinitializer }, align 32
@test_memcat_p_init._entry_ptr.14 = internal global ptr @test_memcat_p_init._entry.12, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 65, i32 4 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 72, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 77, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 84, i32 4 }
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private constant [23 x i8] c"../lib/test_memcat_p.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 89, i32 2 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_file175, ptr @__UNIQUE_ID_license176, ptr @__exitcall_test_memcat_p_exit, ptr @__initcall__kmod_test_memcat_p__174_112_test_memcat_p_init6, ptr @test_memcat_p_exit, ptr @test_memcat_p_init._entry, ptr @test_memcat_p_init._entry.12, ptr @test_memcat_p_init._entry.3, ptr @test_memcat_p_init._entry.6, ptr @test_memcat_p_init._entry.9, ptr @test_memcat_p_init._entry_ptr, ptr @test_memcat_p_init._entry_ptr.11, ptr @test_memcat_p_init._entry_ptr.14, ptr @test_memcat_p_init._entry_ptr.5, ptr @test_memcat_p_init._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_memcat_p_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_memcat_p_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_memcat_p_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_memcat_p_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_memcat_p_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @test_memcat_p_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @test_memcat_p_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 512) #7
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i167 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 512) #7
  %tobool2.not = icmp eq ptr %call7.i.i.i167, null
  br i1 %tobool2.not, label %if.end.err_free_in0_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.err_free_in0_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_free_in0

for.body:                                         ; preds = %if.end16.for.body_crit_edge, %if.end.for.body_crit_edge
  %r.0175 = phi i32 [ %rem, %if.end16.for.body_crit_edge ], [ 1, %if.end.for.body_crit_edge ]
  %i.0174 = phi i32 [ %inc, %if.end16.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 8) #7
  %arrayidx = getelementptr ptr, ptr %call7.i.i.i, i32 %i.0174
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i, ptr %arrayidx, align 4
  %tobool7.not = icmp eq ptr %call7.i, null
  br i1 %tobool7.not, label %for.body.err_free_elements_crit_edge, label %if.end9

for.body.err_free_elements_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_free_elements

if.end9:                                          ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i166 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 8) #7
  %arrayidx11 = getelementptr ptr, ptr %call7.i.i.i167, i32 %i.0174
  %5 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i166, ptr %arrayidx11, align 4
  %tobool13.not = icmp eq ptr %call7.i166, null
  br i1 %tobool13.not, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %7) #8
  br label %err_free_elements

if.end16:                                         ; preds = %if.end9
  %mul = mul i32 %r.0175, 725861
  %rem = srem i32 %mul, 6599
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %rem, ptr %9, align 4
  %sub = sub nsw i32 0, %rem
  %11 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx11, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub, ptr %12, align 4
  %14 = load ptr, ptr %arrayidx, align 4
  %magic = getelementptr inbounds %struct.test_struct, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %magic to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -267390961, ptr %magic, align 4
  %16 = load ptr, ptr %arrayidx11, align 4
  %magic22 = getelementptr inbounds %struct.test_struct, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %magic22 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -267390961, ptr %magic22, align 4
  %inc = add nuw nsw i32 %i.0174, 1
  %exitcond.not = icmp eq i32 %inc, 127
  br i1 %exitcond.not, label %for.end, label %if.end16.for.body_crit_edge

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %if.end16
  %arrayidx23 = getelementptr ptr, ptr %call7.i.i.i167, i32 127
  %18 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %arrayidx23, align 4
  %arrayidx24 = getelementptr ptr, ptr %call7.i.i.i, i32 127
  %19 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %arrayidx24, align 4
  %call25 = tail call ptr @__memcat_p(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %call7.i.i.i167) #8
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %for.end.for.body91.preheader_crit_edge, label %for.cond29.preheader

for.end.for.body91.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body91.preheader

for.cond29.preheader:                             ; preds = %for.end
  %20 = ptrtoint ptr %call25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call25, align 4
  %tobool30.not176.not = icmp eq ptr %21, null
  br i1 %tobool30.not176.not, label %for.cond29.preheader.do.end59_crit_edge, label %for.cond29.preheader.for.body32_crit_edge

for.cond29.preheader.for.body32_crit_edge:        ; preds = %for.cond29.preheader
  br label %for.body32

for.cond29.preheader.do.end59_crit_edge:          ; preds = %for.cond29.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end59

for.body32:                                       ; preds = %for.inc44.for.body32_crit_edge, %for.cond29.preheader.for.body32_crit_edge
  %22 = phi ptr [ %28, %for.inc44.for.body32_crit_edge ], [ %21, %for.cond29.preheader.for.body32_crit_edge ]
  %p.0179 = phi ptr [ %incdec.ptr, %for.inc44.for.body32_crit_edge ], [ %call25, %for.cond29.preheader.for.body32_crit_edge ]
  %total.0178 = phi i32 [ %add, %for.inc44.for.body32_crit_edge ], [ 0, %for.cond29.preheader.for.body32_crit_edge ]
  %i.1177 = phi i32 [ %inc45, %for.inc44.for.body32_crit_edge ], [ 0, %for.cond29.preheader.for.body32_crit_edge ]
  %magic34 = getelementptr inbounds %struct.test_struct, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %magic34 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %magic34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -267390961, i32 %24)
  %cmp35.not = icmp eq i32 %24, -267390961
  br i1 %cmp35.not, label %for.inc44, label %do.end39

do.end39:                                         ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #6
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %i.1177, i32 noundef %24) #9
  br label %err_free_out

for.inc44:                                        ; preds = %for.body32
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %22, align 4
  %add = add i32 %26, %total.0178
  %incdec.ptr = getelementptr ptr, ptr %p.0179, i32 1
  %inc45 = add nuw nsw i32 %i.1177, 1
  %27 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %incdec.ptr, align 4
  %tobool30.not = icmp ne ptr %28, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %i.1177)
  %cmp31 = icmp ult i32 %i.1177, 254
  %or.cond = select i1 %tobool30.not, i1 %cmp31, i1 false
  br i1 %or.cond, label %for.inc44.for.body32_crit_edge, label %for.end46

for.inc44.for.body32_crit_edge:                   ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body32

for.end46:                                        ; preds = %for.inc44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool47.not = icmp eq i32 %add, 0
  br i1 %tobool47.not, label %if.end54, label %do.end51

do.end51:                                         ; preds = %for.end46
  call void @__sanitizer_cov_trace_pc() #6
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %add) #9
  br label %err_free_out

if.end54:                                         ; preds = %for.end46
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %inc45)
  %cmp55.not = icmp eq i32 %inc45, 254
  br i1 %cmp55.not, label %if.end54.for.body65_crit_edge, label %if.end54.do.end59_crit_edge

if.end54.do.end59_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end59

if.end54.for.body65_crit_edge:                    ; preds = %if.end54
  br label %for.body65

do.end59:                                         ; preds = %if.end54.do.end59_crit_edge, %for.cond29.preheader.do.end59_crit_edge
  %i.1.lcssa196199 = phi i32 [ %inc45, %if.end54.do.end59_crit_edge ], [ 0, %for.cond29.preheader.do.end59_crit_edge ]
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef 254, i32 noundef %i.1.lcssa196199) #9
  br label %err_free_out

for.body65:                                       ; preds = %for.inc81.for.body65_crit_edge, %if.end54.for.body65_crit_edge
  %i.2181 = phi i32 [ %inc82, %for.inc81.for.body65_crit_edge ], [ 0, %if.end54.for.body65_crit_edge ]
  %arrayidx66 = getelementptr ptr, ptr %call25, i32 %i.2181
  %29 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx66, align 4
  %arrayidx67 = getelementptr ptr, ptr %call7.i.i.i, i32 %i.2181
  %31 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx67, align 4
  %cmp68.not = icmp eq ptr %30, %32
  br i1 %cmp68.not, label %lor.lhs.false, label %for.body65.do.end77_crit_edge

for.body65.do.end77_crit_edge:                    ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end77

lor.lhs.false:                                    ; preds = %for.body65
  %sub70 = add nuw nsw i32 %i.2181, 127
  %arrayidx71 = getelementptr ptr, ptr %call25, i32 %sub70
  %33 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx71, align 4
  %arrayidx72 = getelementptr ptr, ptr %call7.i.i.i167, i32 %i.2181
  %35 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx72, align 4
  %cmp73.not = icmp eq ptr %34, %36
  br i1 %cmp73.not, label %for.inc81, label %lor.lhs.false.do.end77_crit_edge

lor.lhs.false.do.end77_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end77

do.end77:                                         ; preds = %lor.lhs.false.do.end77_crit_edge, %for.body65.do.end77_crit_edge
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %i.2181) #9
  br label %err_free_out

for.inc81:                                        ; preds = %lor.lhs.false
  %inc82 = add nuw nsw i32 %i.2181, 1
  %exitcond192.not = icmp eq i32 %inc82, 127
  br i1 %exitcond192.not, label %for.end83, label %for.inc81.for.body65_crit_edge

for.inc81.for.body65_crit_edge:                   ; preds = %for.inc81
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body65

for.end83:                                        ; preds = %for.inc81
  call void @__sanitizer_cov_trace_pc() #6
  %call88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #9
  br label %err_free_out

err_free_out:                                     ; preds = %for.end83, %do.end77, %do.end59, %do.end51, %do.end39
  %err.0 = phi i32 [ -22, %do.end39 ], [ -22, %do.end51 ], [ -22, %do.end59 ], [ -22, %do.end77 ], [ 0, %for.end83 ]
  tail call void @kfree(ptr noundef nonnull %call25) #8
  br label %for.body91.preheader

err_free_elements:                                ; preds = %if.then14, %for.body.err_free_elements_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0174)
  %cmp90183.not = icmp eq i32 %i.0174, 0
  br i1 %cmp90183.not, label %err_free_elements.for.end96_crit_edge, label %err_free_elements.for.body91.preheader_crit_edge

err_free_elements.for.body91.preheader_crit_edge: ; preds = %err_free_elements
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body91.preheader

err_free_elements.for.end96_crit_edge:            ; preds = %err_free_elements
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end96

for.body91.preheader:                             ; preds = %err_free_elements.for.body91.preheader_crit_edge, %err_free_out, %for.end.for.body91.preheader_crit_edge
  %err.2204 = phi i32 [ -12, %err_free_elements.for.body91.preheader_crit_edge ], [ %err.0, %err_free_out ], [ -12, %for.end.for.body91.preheader_crit_edge ]
  %i.3203 = phi i32 [ %i.0174, %err_free_elements.for.body91.preheader_crit_edge ], [ 128, %err_free_out ], [ 128, %for.end.for.body91.preheader_crit_edge ]
  br label %for.body91

for.body91:                                       ; preds = %for.body91.for.body91_crit_edge, %for.body91.preheader
  %i.4184.in = phi i32 [ %i.4184, %for.body91.for.body91_crit_edge ], [ %i.3203, %for.body91.preheader ]
  %i.4184 = add nsw i32 %i.4184.in, -1
  %arrayidx92 = getelementptr ptr, ptr %call7.i.i.i167, i32 %i.4184
  %37 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx92, align 4
  tail call void @kfree(ptr noundef %38) #8
  %arrayidx93 = getelementptr ptr, ptr %call7.i.i.i, i32 %i.4184
  %39 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx93, align 4
  tail call void @kfree(ptr noundef %40) #8
  %cmp90 = icmp sgt i32 %i.4184.in, 1
  br i1 %cmp90, label %for.body91.for.body91_crit_edge, label %for.body91.for.end96_crit_edge

for.body91.for.end96_crit_edge:                   ; preds = %for.body91
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end96

for.body91.for.body91_crit_edge:                  ; preds = %for.body91
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body91

for.end96:                                        ; preds = %for.body91.for.end96_crit_edge, %err_free_elements.for.end96_crit_edge
  %err.2205 = phi i32 [ -12, %err_free_elements.for.end96_crit_edge ], [ %err.2204, %for.body91.for.end96_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i167) #8
  br label %err_free_in0

err_free_in0:                                     ; preds = %for.end96, %if.end.err_free_in0_crit_edge
  %err.3 = phi i32 [ %err.2205, %for.end96 ], [ -12, %if.end.err_free_in0_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_free_in0, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.3, %err_free_in0 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__memcat_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind uwtable(sync) }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @__initcall__kmod_test_memcat_p__174_112_test_memcat_p_init6, !1, !"__initcall__kmod_test_memcat_p__174_112_test_memcat_p_init6", i1 false, i1 false}
!1 = !{!"../lib/test_memcat_p.c", i32 112, i32 1}
!2 = !{ptr @__exitcall_test_memcat_p_exit, !3, !"__exitcall_test_memcat_p_exit", i1 false, i1 false}
!3 = !{!"../lib/test_memcat_p.c", i32 113, i32 1}
!4 = !{ptr @__UNIQUE_ID_file175, !5, !"__UNIQUE_ID_file175", i1 false, i1 false}
!5 = !{!"../lib/test_memcat_p.c", i32 115, i32 1}
!6 = !{ptr @__UNIQUE_ID_license176, !5, !"__UNIQUE_ID_license176", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../lib/test_memcat_p.c", i32 65, i32 4}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @test_memcat_p_init._entry, !8, !"_entry", i1 false, i1 false}
!12 = !{ptr @test_memcat_p_init._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../lib/test_memcat_p.c", i32 72, i32 3}
!15 = !{ptr @test_memcat_p_init._entry.3, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @test_memcat_p_init._entry_ptr.5, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../lib/test_memcat_p.c", i32 77, i32 3}
!19 = !{ptr @test_memcat_p_init._entry.6, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @test_memcat_p_init._entry_ptr.8, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../lib/test_memcat_p.c", i32 84, i32 4}
!23 = !{ptr @test_memcat_p_init._entry.9, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @test_memcat_p_init._entry_ptr.11, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../lib/test_memcat_p.c", i32 89, i32 2}
!27 = !{ptr @test_memcat_p_init._entry.12, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @test_memcat_p_init._entry_ptr.14, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
