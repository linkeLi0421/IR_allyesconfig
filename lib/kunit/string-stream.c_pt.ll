; ModuleID = '/llk/IR_all_yes/lib/kunit/string-stream.c_pt.bc'
source_filename = "../lib/kunit/string-stream.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.string_stream_fragment_alloc_context = type { ptr, i32, i32 }
%struct.__va_list = type { ptr }
%struct.string_stream = type { i32, %struct.list_head, %struct.spinlock, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.string_stream_fragment = type { ptr, %struct.list_head, ptr }
%struct.string_stream_alloc_context = type { ptr, i32 }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@string_stream_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&stream->lock\00", [18 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private constant [29 x i8] c"../lib/kunit/string-stream.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 185, i32 2 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @string_stream_init.__key, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @string_stream_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @string_stream_vadd(ptr noundef %stream, ptr nocapture noundef readonly %fmt, [1 x i32] %args.coerce) local_unnamed_addr #0 align 64 {
entry:
  %context.i = alloca %struct.string_stream_fragment_alloc_context, align 4
  %args = alloca %struct.__va_list, align 4
  %args_for_counting = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %args.coerce.fca.0.extract = extractvalue [1 x i32] %args.coerce, 0
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %args.coerce.fca.0.extract, ptr %args, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args_for_counting) #9
  %1 = ptrtoint ptr %args_for_counting to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args_for_counting, align 4, !annotation !12
  call void @llvm.va_copy(ptr nonnull %args_for_counting, ptr nonnull %args)
  %2 = ptrtoint ptr %args_for_counting to i32
  call void @__asan_load4_noabort(i32 %2)
  %.fca.0.load = load i32, ptr %args_for_counting, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call = call i32 @vsnprintf(ptr noundef null, i32 noundef 0, ptr noundef %fmt, [1 x i32] %.fca.0.insert)
  %add = add i32 %call, 1
  call void @llvm.va_end(ptr nonnull %args_for_counting)
  %test = getelementptr inbounds %struct.string_stream, ptr %stream, i32 0, i32 3
  %3 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %test, align 4
  %gfp = getelementptr inbounds %struct.string_stream, ptr %stream, i32 0, i32 4
  %5 = ptrtoint ptr %gfp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %gfp, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %context.i) #9
  %7 = getelementptr inbounds %struct.string_stream_fragment_alloc_context, ptr %context.i, i32 0, i32 1
  %8 = getelementptr inbounds %struct.string_stream_fragment_alloc_context, ptr %context.i, i32 0, i32 2
  %9 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %4, ptr %context.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add, ptr %7, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %6, ptr %8, align 4
  %and.i.i.i.i.i = and i32 %6, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i, label %entry.kzalloc.exit.i.i_crit_edge, label %if.end.i.i.i.i.i, !prof !13

entry.kzalloc.exit.i.i_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %kzalloc.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %entry
  %and2.i.i.i.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i.i)
  %tobool3.not.i.i.i.i.i = icmp eq i32 %and2.i.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i.i, label %if.end5.i.i.i.i.i, label %if.end.i.i.i.i.i.kzalloc.exit.i.i_crit_edge

if.end.i.i.i.i.i.kzalloc.exit.i.i_crit_edge:      ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kzalloc.exit.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and6.i.i.i.i.i = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i.i.i)
  %tobool7.not.i.i.i.i.i = icmp eq i32 %and6.i.i.i.i.i, 0
  %..i.i.i.i.i = select i1 %tobool7.not.i.i.i.i.i, i32 1, i32 2
  br label %kzalloc.exit.i.i

kzalloc.exit.i.i:                                 ; preds = %if.end5.i.i.i.i.i, %if.end.i.i.i.i.i.kzalloc.exit.i.i_crit_edge, %entry.kzalloc.exit.i.i_crit_edge
  %retval.0.i.i.i.i.i = phi i32 [ 0, %entry.kzalloc.exit.i.i_crit_edge ], [ 3, %if.end.i.i.i.i.i.kzalloc.exit.i.i_crit_edge ], [ %..i.i.i.i.i, %if.end5.i.i.i.i.i ]
  %or.i.i.i = or i32 %6, 256
  %arrayidx6.i.i.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i.i.i, i32 7
  %12 = ptrtoint ptr %arrayidx6.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx6.i.i.i.i, align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef %or.i.i.i, i32 noundef 24) #12
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %kzalloc.exit.i.i.alloc_string_stream_fragment.exit.thread_crit_edge, label %if.end.i.i

kzalloc.exit.i.i.alloc_string_stream_fragment.exit.thread_crit_edge: ; preds = %kzalloc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %alloc_string_stream_fragment.exit.thread

if.end.i.i:                                       ; preds = %kzalloc.exit.i.i
  %call1.i.i = call i32 @kunit_add_resource(ptr noundef %4, ptr noundef nonnull @string_stream_fragment_init, ptr noundef nonnull @string_stream_fragment_free, ptr noundef nonnull %call7.i.i.i.i, ptr noundef nonnull %context.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %alloc_string_stream_fragment.exit, label %if.end.i.i.alloc_string_stream_fragment.exit.thread_crit_edge

if.end.i.i.alloc_string_stream_fragment.exit.thread_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %alloc_string_stream_fragment.exit.thread

alloc_string_stream_fragment.exit.thread:         ; preds = %if.end.i.i.alloc_string_stream_fragment.exit.thread_crit_edge, %kzalloc.exit.i.i.alloc_string_stream_fragment.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %context.i) #9
  br label %cleanup

alloc_string_stream_fragment.exit:                ; preds = %if.end.i.i
  %14 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call7.i.i.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %context.i) #9
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %alloc_string_stream_fragment.exit.cleanup_crit_edge, label %if.end

alloc_string_stream_fragment.exit.cleanup_crit_edge: ; preds = %alloc_string_stream_fragment.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %alloc_string_stream_fragment.exit
  %fragment = getelementptr inbounds %struct.string_stream_fragment, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %fragment to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fragment, align 4
  %18 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %18)
  %.fca.0.load20 = load i32, ptr %args, align 4
  %.fca.0.insert21 = insertvalue [1 x i32] poison, i32 %.fca.0.load20, 0
  %call4 = call i32 @vsnprintf(ptr noundef %17, i32 noundef %add, ptr noundef %fmt, [1 x i32] %.fca.0.insert21)
  %lock = getelementptr inbounds %struct.string_stream, ptr %stream, i32 0, i32 2
  call void @_raw_spin_lock(ptr noundef %lock) #9
  %19 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %stream, align 4
  %add5 = add i32 %20, %call4
  store i32 %add5, ptr %stream, align 4
  %node = getelementptr inbounds %struct.string_stream_fragment, ptr %15, i32 0, i32 1
  %fragments = getelementptr inbounds %struct.string_stream, ptr %stream, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.string_stream, ptr %stream, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %22, ptr noundef %fragments) #9
  br i1 %call.i.i, label %if.end.i.i22, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i22:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %node, ptr %prev.i, align 4
  %24 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %fragments, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.string_stream_fragment, ptr %15, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev3.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %node, ptr %22, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i22, %if.end.list_add_tail.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %alloc_string_stream_fragment.exit.cleanup_crit_edge, %alloc_string_stream_fragment.exit.thread
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -12, %alloc_string_stream_fragment.exit.cleanup_crit_edge ], [ -12, %alloc_string_stream_fragment.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args_for_counting) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_copy(ptr, ptr) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @string_stream_add(ptr noundef %stream, ptr nocapture noundef readonly %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #9
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !12
  call void @llvm.va_start(ptr nonnull %args)
  %1 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %1)
  %.fca.0.load = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call = call i32 @string_stream_vadd(ptr noundef %stream, ptr noundef %fmt, [1 x i32] %.fca.0.insert)
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #9
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @string_stream_get_string(ptr noundef %stream) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stream, align 4
  %add = add i32 %1, 1
  %test = getelementptr inbounds %struct.string_stream, ptr %stream, i32 0, i32 3
  %2 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %test, align 4
  %gfp = getelementptr inbounds %struct.string_stream, ptr %stream, i32 0, i32 4
  %4 = ptrtoint ptr %gfp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gfp, align 4
  %or.i = or i32 %5, 256
  %call.i.i = tail call ptr @kunit_kmalloc_array(ptr noundef %3, i32 noundef 1, i32 noundef %add, i32 noundef %or.i) #9
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.string_stream, ptr %stream, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %fragments = getelementptr inbounds %struct.string_stream, ptr %stream, i32 0, i32 1
  %6 = ptrtoint ptr %fragments to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn22 = load ptr, ptr %fragments, align 4
  %cmp.not23 = icmp eq ptr %.pn22, %fragments
  br i1 %cmp.not23, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn24 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn22, %if.end.for.body_crit_edge ]
  %fragment = getelementptr i8, ptr %.pn24, i32 8
  %7 = ptrtoint ptr %fragment to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fragment, align 4
  %call2 = tail call i32 @strlcat(ptr noundef nonnull %call.i.i, ptr noundef %8, i32 noundef %add) #9
  %9 = ptrtoint ptr %.pn24 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn24, align 4
  %cmp.not = icmp eq ptr %.pn, %fragments
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret ptr %call.i.i
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @string_stream_append(ptr noundef %stream, ptr noundef %other) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %other to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %other, align 4
  %add.i = add i32 %1, 1
  %test.i = getelementptr inbounds %struct.string_stream, ptr %other, i32 0, i32 3
  %2 = ptrtoint ptr %test.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %test.i, align 4
  %gfp.i = getelementptr inbounds %struct.string_stream, ptr %other, i32 0, i32 4
  %4 = ptrtoint ptr %gfp.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gfp.i, align 4
  %or.i.i = or i32 %5, 256
  %call.i.i.i = tail call ptr @kunit_kmalloc_array(ptr noundef %3, i32 noundef 1, i32 noundef %add.i, i32 noundef %or.i.i) #9
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %lock.i = getelementptr inbounds %struct.string_stream, ptr %other, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #9
  %fragments.i = getelementptr inbounds %struct.string_stream, ptr %other, i32 0, i32 1
  %6 = ptrtoint ptr %fragments.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn22.i = load ptr, ptr %fragments.i, align 4
  %cmp.not23.i = icmp eq ptr %.pn22.i, %fragments.i
  br i1 %cmp.not23.i, label %if.end.i.if.end_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %.pn24.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn22.i, %if.end.i.for.body.i_crit_edge ]
  %fragment.i = getelementptr i8, ptr %.pn24.i, i32 8
  %7 = ptrtoint ptr %fragment.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fragment.i, align 4
  %call2.i = tail call i32 @strlcat(ptr noundef nonnull %call.i.i.i, ptr noundef %8, i32 noundef %add.i) #9
  %9 = ptrtoint ptr %.pn24.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn.i = load ptr, ptr %.pn24.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %fragments.i
  br i1 %cmp.not.i, label %for.body.i.if.end_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %for.body.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #9
  %call1 = tail call i32 (ptr, ptr, ...) @string_stream_add(ptr noundef %stream, ptr noundef nonnull %call.i.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @string_stream_is_empty(ptr noundef %stream) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fragments = getelementptr inbounds %struct.string_stream, ptr %stream, i32 0, i32 1
  %0 = ptrtoint ptr %fragments to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %fragments, align 4
  %cmp.i = icmp eq ptr %1, %fragments
  ret i1 %cmp.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @alloc_string_stream(ptr noundef %test, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  %context = alloca %struct.string_stream_alloc_context, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %context) #9
  %0 = getelementptr inbounds %struct.string_stream_alloc_context, ptr %context, i32 0, i32 1
  %1 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %test, ptr %context, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %gfp, ptr %0, align 4
  %and.i.i.i.i = and i32 %gfp, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %entry.kzalloc.exit.i_crit_edge, label %if.end.i.i.i.i, !prof !13

entry.kzalloc.exit.i_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %kzalloc.exit.i

if.end.i.i.i.i:                                   ; preds = %entry
  %and2.i.i.i.i = and i32 %gfp, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %if.end5.i.i.i.i, label %if.end.i.i.i.i.kzalloc.exit.i_crit_edge

if.end.i.i.i.i.kzalloc.exit.i_crit_edge:          ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kzalloc.exit.i

if.end5.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and6.i.i.i.i = and i32 %gfp, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i.i)
  %tobool7.not.i.i.i.i = icmp eq i32 %and6.i.i.i.i, 0
  %..i.i.i.i = select i1 %tobool7.not.i.i.i.i, i32 1, i32 2
  br label %kzalloc.exit.i

kzalloc.exit.i:                                   ; preds = %if.end5.i.i.i.i, %if.end.i.i.i.i.kzalloc.exit.i_crit_edge, %entry.kzalloc.exit.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ 0, %entry.kzalloc.exit.i_crit_edge ], [ 3, %if.end.i.i.i.i.kzalloc.exit.i_crit_edge ], [ %..i.i.i.i, %if.end5.i.i.i.i ]
  %or.i.i = or i32 %gfp, 256
  %arrayidx6.i.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i.i, i32 7
  %3 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx6.i.i.i, align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef %or.i.i, i32 noundef 24) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %kzalloc.exit.i.kunit_alloc_resource.exit_crit_edge, label %if.end.i

kzalloc.exit.i.kunit_alloc_resource.exit_crit_edge: ; preds = %kzalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunit_alloc_resource.exit

if.end.i:                                         ; preds = %kzalloc.exit.i
  %call1.i = call i32 @kunit_add_resource(ptr noundef %test, ptr noundef nonnull @string_stream_init, ptr noundef nonnull @string_stream_free, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %context) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end.i.kunit_alloc_resource.exit_crit_edge

if.end.i.kunit_alloc_resource.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kunit_alloc_resource.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call7.i.i.i, align 8
  br label %kunit_alloc_resource.exit

kunit_alloc_resource.exit:                        ; preds = %if.then3.i, %if.end.i.kunit_alloc_resource.exit_crit_edge, %kzalloc.exit.i.kunit_alloc_resource.exit_crit_edge
  %retval.0.i = phi ptr [ %6, %if.then3.i ], [ null, %kzalloc.exit.i.kunit_alloc_resource.exit_crit_edge ], [ null, %if.end.i.kunit_alloc_resource.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %context) #9
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @string_stream_init(ptr nocapture noundef writeonly %res, ptr nocapture noundef readonly %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %gfp = getelementptr inbounds %struct.string_stream_alloc_context, ptr %context, i32 0, i32 1
  %2 = ptrtoint ptr %gfp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gfp, align 4
  %or.i = or i32 %3, 256
  %call.i.i = tail call ptr @kunit_kmalloc_array(ptr noundef %1, i32 noundef 1, i32 noundef 64, i32 noundef %or.i) #9
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i.i, ptr %res, align 4
  %5 = ptrtoint ptr %gfp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %gfp, align 4
  %gfp2 = getelementptr inbounds %struct.string_stream, ptr %call.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %gfp2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %gfp2, align 4
  %8 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %context, align 4
  %test4 = getelementptr inbounds %struct.string_stream, ptr %call.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %test4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %test4, align 4
  %fragments = getelementptr inbounds %struct.string_stream, ptr %call.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %fragments to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %fragments, ptr %fragments, align 4
  %prev.i = getelementptr inbounds %struct.string_stream, ptr %call.i.i, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %fragments, ptr %prev.i, align 4
  %lock = getelementptr inbounds %struct.string_stream, ptr %call.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @string_stream_init.__key, i16 noundef signext 3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @string_stream_free(ptr nocapture noundef readonly %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  %lock.i = getelementptr inbounds %struct.string_stream, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #9
  %fragments.i = getelementptr inbounds %struct.string_stream, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %fragments.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fragments.i, align 4
  %cmp.not21.i = icmp eq ptr %3, %fragments.i
  br i1 %cmp.not21.i, label %entry.string_stream_clear.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.string_stream_clear.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %string_stream_clear.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn.in22.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %3, %entry.for.body.i_crit_edge ]
  %frag_container.0.i = getelementptr i8, ptr %.pn.in22.i, i32 -4
  %4 = ptrtoint ptr %.pn.in22.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load ptr, ptr %.pn.in22.i, align 4
  %5 = ptrtoint ptr %frag_container.0.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %frag_container.0.i, align 4
  %call.i.i = tail call i32 @kunit_destroy_resource(ptr noundef %6, ptr noundef nonnull @kunit_resource_instance_match, ptr noundef %frag_container.0.i) #9
  %cmp.not.i = icmp eq ptr %.pn.i, %fragments.i
  br i1 %cmp.not.i, label %for.body.i.string_stream_clear.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.string_stream_clear.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %string_stream_clear.exit

string_stream_clear.exit:                         ; preds = %for.body.i.string_stream_clear.exit_crit_edge, %entry.string_stream_clear.exit_crit_edge
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %1, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @string_stream_destroy(ptr noundef %stream) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %test = getelementptr inbounds %struct.string_stream, ptr %stream, i32 0, i32 3
  %0 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %test, align 4
  %call = tail call i32 @kunit_destroy_resource(ptr noundef %1, ptr noundef nonnull @kunit_resource_instance_match, ptr noundef %stream) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kunit_destroy_resource(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @kunit_resource_instance_match(ptr nocapture noundef readnone %test, ptr nocapture noundef readonly %res, ptr noundef readnone %match_data) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  %cmp = icmp eq ptr %1, %match_data
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @string_stream_fragment_init(ptr nocapture noundef writeonly %res, ptr nocapture noundef readonly %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %gfp = getelementptr inbounds %struct.string_stream_fragment_alloc_context, ptr %context, i32 0, i32 2
  %2 = ptrtoint ptr %gfp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gfp, align 4
  %or.i = or i32 %3, 256
  %call.i.i = tail call ptr @kunit_kmalloc_array(ptr noundef %1, i32 noundef 1, i32 noundef 16, i32 noundef %or.i) #9
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %context, align 4
  %6 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %call.i.i, align 4
  %7 = load ptr, ptr %context, align 4
  %len = getelementptr inbounds %struct.string_stream_fragment_alloc_context, ptr %context, i32 0, i32 1
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  %10 = ptrtoint ptr %gfp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gfp, align 4
  %call.i = tail call ptr @kunit_kmalloc_array(ptr noundef %7, i32 noundef 1, i32 noundef %9, i32 noundef %11) #9
  %fragment = getelementptr inbounds %struct.string_stream_fragment, ptr %call.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %fragment to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %fragment, align 4
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i.i, ptr %res, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @string_stream_fragment_free(ptr nocapture noundef readonly %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  %node = getelementptr inbounds %struct.string_stream_fragment, ptr %1, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.string_stream_fragment, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %8 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %prev.i = getelementptr inbounds %struct.string_stream_fragment, ptr %1, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %fragment = getelementptr inbounds %struct.string_stream_fragment, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %fragment to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fragment, align 4
  tail call void @kunit_kfree(ptr noundef %11, ptr noundef %13) #9
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  tail call void @kunit_kfree(ptr noundef %15, ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kunit_kmalloc_array(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunit_kfree(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kunit_add_resource(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = !{ptr @string_stream_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../lib/kunit/string-stream.c", i32 185, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 1, !"min_enum_size", i32 4}
!5 = !{i32 8, !"branch-target-enforcement", i32 0}
!6 = !{i32 8, !"sign-return-address", i32 0}
!7 = !{i32 8, !"sign-return-address-all", i32 0}
!8 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!12 = !{!"auto-init"}
!13 = !{!"branch_weights", i32 2000, i32 1}
