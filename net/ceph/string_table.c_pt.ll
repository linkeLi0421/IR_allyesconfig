; ModuleID = '/llk/IR_all_yes/net/ceph/string_table.c_pt.bc'
source_filename = "../net/ceph/string_table.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ceph_find_or_create_string\22, \22a\22\09"
module asm "\09.weak\09__crc_ceph_find_or_create_string\09\09\09\09"
module asm "\09.long\09__crc_ceph_find_or_create_string\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ceph_find_or_create_string:\09\09\09\09\09"
module asm "\09.asciz \09\22ceph_find_or_create_string\22\09\09\09\09\09"
module asm "__kstrtabns_ceph_find_or_create_string:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ceph_release_string\22, \22a\22\09"
module asm "\09.weak\09__crc_ceph_release_string\09\09\09\09"
module asm "\09.long\09__crc_ceph_release_string\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ceph_release_string:\09\09\09\09\09"
module asm "\09.asciz \09\22ceph_release_string\22\09\09\09\09\09"
module asm "__kstrtabns_ceph_release_string:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rb_root = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.ceph_string = type { %struct.kref, %union.anon, i32, [0 x i8] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.rb_node }

@string_tree_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@string_tree = internal global { %struct.rb_root, [28 x i8] } zeroinitializer, align 32
@__kstrtab_ceph_find_or_create_string = external dso_local constant [0 x i8], align 1
@__kstrtabns_ceph_find_or_create_string = external dso_local constant [0 x i8], align 1
@__ksymtab_ceph_find_or_create_string = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ceph_find_or_create_string to i32), ptr @__kstrtab_ceph_find_or_create_string, ptr @__kstrtabns_ceph_find_or_create_string }, section "___ksymtab+ceph_find_or_create_string", align 4
@__kstrtab_ceph_release_string = external dso_local constant [0 x i8], align 1
@__kstrtabns_ceph_release_string = external dso_local constant [0 x i8], align 1
@__ksymtab_ceph_release_string = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ceph_release_string to i32), ptr @__kstrtab_ceph_release_string, ptr @__kstrtabns_ceph_release_string }, section "___ksymtab+ceph_release_string", align 4
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"string_tree_lock\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"string_tree_lock\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [12 x i8] c"string_tree\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 9, i32 23 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private constant [27 x i8] c"../net/ceph/string_table.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 8, i32 8 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_ceph_find_or_create_string, ptr @__ksymtab_ceph_release_string, ptr @string_tree_lock, ptr @string_tree, ptr @.str], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @string_tree_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @string_tree to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ceph_find_or_create_string(ptr nocapture noundef readonly %str, i32 noundef %len) #0 align 64 {
entry:
  %old.i.i.i.i122 = alloca i32, align 4
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @string_tree_lock) #7
  %0 = load ptr, ptr @string_tree, align 4
  %tobool.not175 = icmp eq ptr %0, null
  br i1 %tobool.not175, label %entry.if.end9.thread_crit_edge, label %while.body.lr.ph

entry.if.end9.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.thread

while.body.lr.ph:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp2.i = icmp eq i32 %len, 0
  br label %while.body

while.body:                                       ; preds = %if.end4.while.body_crit_edge, %while.body.lr.ph
  %1 = phi ptr [ %0, %while.body.lr.ph ], [ %5, %if.end4.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %1, i32 -4
  %tobool.not.i = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i, label %while.body.cond.end.i_crit_edge, label %cond.true.i

while.body.cond.end.i_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i

cond.true.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %len1.i = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len1.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %while.body.cond.end.i_crit_edge
  %cond.i = phi i32 [ %3, %cond.true.i ], [ 0, %while.body.cond.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %len)
  %cmp.not.i = icmp eq i32 %cond.i, %len
  br i1 %cmp.not.i, label %if.end.i105, label %if.then.i104

if.then.i104:                                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = sub i32 %cond.i, %len
  br label %ceph_compare_string.exit

if.end.i105:                                      ; preds = %cond.end.i
  br i1 %cmp2.i, label %if.end.i105.while.end_crit_edge, label %if.end4.i106

if.end.i105.while.end_crit_edge:                  ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end4.i106:                                     ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #9
  %str5.i = getelementptr i8, ptr %1, i32 16
  %call.i = tail call i32 @strncmp(ptr noundef %str5.i, ptr noundef %str, i32 noundef %len) #7
  br label %ceph_compare_string.exit

ceph_compare_string.exit:                         ; preds = %if.end4.i106, %if.then.i104
  %retval.0.i = phi i32 [ %sub.i, %if.then.i104 ], [ %call.i, %if.end4.i106 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp sgt i32 %retval.0.i, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %ceph_compare_string.exit
  call void @__sanitizer_cov_trace_pc() #9
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %1, i32 0, i32 2
  br label %if.end4

if.else:                                          ; preds = %ceph_compare_string.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp1 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp1, label %if.then2, label %if.else.while.end_crit_edge

if.else.while.end_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %1, i32 0, i32 1
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.then
  %p.1 = phi ptr [ %rb_left, %if.then ], [ %rb_right, %if.then2 ]
  %4 = ptrtoint ptr %p.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p.1, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end4.if.end9.thread_crit_edge, label %if.end4.while.body_crit_edge

if.end4.while.body_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end4.if.end9.thread_crit_edge:                 ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.thread

while.end:                                        ; preds = %if.else.while.end_crit_edge, %if.end.i105.while.end_crit_edge
  br i1 %tobool.not.i, label %while.end.if.end9.thread_crit_edge, label %land.lhs.true

while.end.if.end9.thread_crit_edge:               ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.thread

land.lhs.true:                                    ; preds = %while.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #7
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %add.ptr, i32 noundef 4) #7
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %add.ptr, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %land.lhs.true
  %8 = phi i32 [ %7, %land.lhs.true ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %9 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %8, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %add.ptr, i32 noundef 4) #7
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #7
  %10 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr nonnull %add.ptr, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %12 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %add.ptr, ptr nonnull %add.ptr, i32 %11, i32 %add.i.i.i.i, ptr nonnull elementtype(i32) %add.ptr) #7, !srcloc !18
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %11
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !19

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %13 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %14, 1
  %15 = or i32 %add5.i.i.i.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !19

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef nonnull %add.ptr, i32 noundef 0) #7
  %16 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %17 = phi i32 [ %14, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool12.i.i.i.i.not = icmp eq i32 %17, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #7
  br i1 %tobool12.i.i.i.i.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @rb_erase(ptr noundef nonnull %1, ptr noundef nonnull @string_tree) #7
  %18 = ptrtoint ptr %1 to i32
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %1, align 4
  br label %if.end9.thread

if.end9.thread:                                   ; preds = %if.then8, %while.end.if.end9.thread_crit_edge, %if.end4.if.end9.thread_crit_edge, %entry.if.end9.thread_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @string_tree_lock) #7
  %add13 = add i32 %len, 21
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add13, i32 noundef 3136) #10
  %tobool15.not = icmp eq ptr %call9.i, null
  br i1 %tobool15.not, label %if.end9.thread.cleanup_crit_edge, label %if.end17

if.end9.thread.cleanup_crit_edge:                 ; preds = %if.end9.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %kref_get_unless_zero.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_unlock(ptr noundef nonnull @string_tree_lock) #7
  br label %cleanup

if.end17:                                         ; preds = %if.end9.thread
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i, i32 noundef 4) #7
  %20 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 1, ptr %call9.i, align 128
  %len19 = getelementptr inbounds %struct.ceph_string, ptr %call9.i, i32 0, i32 2
  %21 = ptrtoint ptr %len19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %len, ptr %len19, align 16
  %str20 = getelementptr inbounds %struct.ceph_string, ptr %call9.i, i32 0, i32 3
  %22 = call ptr @memcpy(ptr %str20, ptr %str, i32 %len)
  %arrayidx = getelementptr %struct.ceph_string, ptr %call9.i, i32 0, i32 3, i32 %len
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx, align 1
  call void @_raw_spin_lock(ptr noundef nonnull @string_tree_lock) #7
  %24 = load ptr, ptr @string_tree, align 4
  %tobool23.not176181 = icmp eq ptr %24, null
  br i1 %tobool23.not176181, label %if.end17.if.then41_crit_edge, label %while.body24.lr.ph.lr.ph

if.end17.if.then41_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then41

while.body24.lr.ph.lr.ph:                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp2.i115 = icmp eq i32 %len, 0
  br label %while.body24

while.body24:                                     ; preds = %while.body24.backedge, %while.body24.lr.ph.lr.ph
  %25 = phi ptr [ %24, %while.body24.lr.ph.lr.ph ], [ %.be, %while.body24.backedge ]
  %p.2177 = phi ptr [ @string_tree, %while.body24.lr.ph.lr.ph ], [ %p.2177.be, %while.body24.backedge ]
  %add.ptr27 = getelementptr i8, ptr %25, i32 -4
  %tobool.not.i107 = icmp eq ptr %add.ptr27, null
  br i1 %tobool.not.i107, label %while.body24.cond.end.i112_crit_edge, label %cond.true.i109

while.body24.cond.end.i112_crit_edge:             ; preds = %while.body24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i112

cond.true.i109:                                   ; preds = %while.body24
  call void @__sanitizer_cov_trace_pc() #9
  %len1.i108 = getelementptr i8, ptr %25, i32 12
  %26 = ptrtoint ptr %len1.i108 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len1.i108, align 4
  br label %cond.end.i112

cond.end.i112:                                    ; preds = %cond.true.i109, %while.body24.cond.end.i112_crit_edge
  %cond.i110 = phi i32 [ %27, %cond.true.i109 ], [ 0, %while.body24.cond.end.i112_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i110, i32 %len)
  %cmp.not.i111 = icmp eq i32 %cond.i110, %len
  br i1 %cmp.not.i111, label %if.end.i116, label %if.then.i114

if.then.i114:                                     ; preds = %cond.end.i112
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i113 = sub i32 %cond.i110, %len
  br label %ceph_compare_string.exit121

if.end.i116:                                      ; preds = %cond.end.i112
  br i1 %cmp2.i115, label %if.end.i116.while.end39_crit_edge, label %if.end4.i119

if.end.i116.while.end39_crit_edge:                ; preds = %if.end.i116
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end39

if.end4.i119:                                     ; preds = %if.end.i116
  call void @__sanitizer_cov_trace_pc() #9
  %str5.i117 = getelementptr i8, ptr %25, i32 16
  %call.i118 = call i32 @strncmp(ptr noundef %str5.i117, ptr noundef %str, i32 noundef %len) #7
  br label %ceph_compare_string.exit121

ceph_compare_string.exit121:                      ; preds = %if.end4.i119, %if.then.i114
  %retval.0.i120 = phi i32 [ %sub.i113, %if.then.i114 ], [ %call.i118, %if.end4.i119 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i120)
  %cmp29 = icmp sgt i32 %retval.0.i120, 0
  br i1 %cmp29, label %if.then30, label %if.else32

if.then30:                                        ; preds = %ceph_compare_string.exit121
  call void @__sanitizer_cov_trace_pc() #9
  %rb_left31 = getelementptr inbounds %struct.rb_node, ptr %25, i32 0, i32 2
  br label %if.end38

if.else32:                                        ; preds = %ceph_compare_string.exit121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i120)
  %cmp33 = icmp slt i32 %retval.0.i120, 0
  br i1 %cmp33, label %if.then34, label %if.else32.while.end39_crit_edge

if.else32.while.end39_crit_edge:                  ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end39

if.then34:                                        ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #9
  %rb_right35 = getelementptr inbounds %struct.rb_node, ptr %25, i32 0, i32 1
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %if.then30
  %p.3 = phi ptr [ %rb_left31, %if.then30 ], [ %rb_right35, %if.then34 ]
  %28 = ptrtoint ptr %p.3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %p.3, align 4
  %tobool23.not = icmp eq ptr %29, null
  br i1 %tobool23.not, label %if.end38.if.then41_crit_edge, label %if.end38.while.body24.backedge_crit_edge

if.end38.while.body24.backedge_crit_edge:         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body24.backedge

if.end38.if.then41_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then41

while.body24.backedge:                            ; preds = %if.then46.while.body24.backedge_crit_edge, %if.end38.while.body24.backedge_crit_edge
  %.be = phi ptr [ %29, %if.end38.while.body24.backedge_crit_edge ], [ %50, %if.then46.while.body24.backedge_crit_edge ]
  %p.2177.be = phi ptr [ %p.3, %if.end38.while.body24.backedge_crit_edge ], [ @string_tree, %if.then46.while.body24.backedge_crit_edge ]
  br label %while.body24

while.end39:                                      ; preds = %if.else32.while.end39_crit_edge, %if.end.i116.while.end39_crit_edge
  br i1 %tobool.not.i107, label %while.end39.if.then41_crit_edge, label %if.else42

while.end39.if.then41_crit_edge:                  ; preds = %while.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then41

if.then41:                                        ; preds = %if.then46.if.then41_crit_edge, %while.end39.if.then41_crit_edge, %if.end38.if.then41_crit_edge, %if.end17.if.then41_crit_edge
  %p.2168 = phi ptr [ @string_tree, %if.end17.if.then41_crit_edge ], [ @string_tree, %if.then46.if.then41_crit_edge ], [ %p.2177, %while.end39.if.then41_crit_edge ], [ %p.3, %if.end38.if.then41_crit_edge ]
  %parent.1163 = phi ptr [ null, %if.end17.if.then41_crit_edge ], [ null, %if.then46.if.then41_crit_edge ], [ %25, %while.end39.if.then41_crit_edge ], [ %25, %if.end38.if.then41_crit_edge ]
  %30 = getelementptr inbounds %struct.ceph_string, ptr %call9.i, i32 0, i32 1
  %31 = ptrtoint ptr %parent.1163 to i32
  %32 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %30, align 4
  %rb_right.i = getelementptr inbounds %struct.ceph_string, ptr %call9.i, i32 0, i32 1, i32 0, i32 1
  %33 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %rb_right.i, align 8
  %rb_left.i = getelementptr inbounds %struct.ceph_string, ptr %call9.i, i32 0, i32 1, i32 0, i32 2
  %34 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %rb_left.i, align 4
  %35 = ptrtoint ptr %p.2168 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %30, ptr %p.2168, align 4
  call void @rb_insert_color(ptr noundef %30, ptr noundef nonnull @string_tree) #7
  call void @_raw_spin_unlock(ptr noundef nonnull @string_tree_lock) #7
  br label %cleanup

if.else42:                                        ; preds = %while.end39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i122) #7
  %call.i.i.i.i.i.i.i123 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %add.ptr27, i32 noundef 4) #7
  %36 = ptrtoint ptr %add.ptr27 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %add.ptr27, align 4
  br label %do.body.i.i.i.i125

do.body.i.i.i.i125:                               ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i135.do.body.i.i.i.i125_crit_edge, %if.else42
  %38 = phi i32 [ %37, %if.else42 ], [ %asmresult3.i.i.i.i.i.i.i133, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i135.do.body.i.i.i.i125_crit_edge ]
  %39 = ptrtoint ptr %old.i.i.i.i122 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %old.i.i.i.i122, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i.i.i.i124 = icmp eq i32 %38, 0
  br i1 %tobool.not.i.i.i.i124, label %do.body.i.i.i.i125.if.end4.i.i.i.i138_crit_edge, label %do.cond.i.i.i.i129

do.body.i.i.i.i125.if.end4.i.i.i.i138_crit_edge:  ; preds = %do.body.i.i.i.i125
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i.i138

do.cond.i.i.i.i129:                               ; preds = %do.body.i.i.i.i125
  %add.i.i.i.i126 = add i32 %38, 1
  %call.i.i.i.i.i.i127 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %add.ptr27, i32 noundef 4) #7
  %call.i3.i.i.i.i.i128 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i122, i32 noundef 4) #7
  %40 = ptrtoint ptr %old.i.i.i.i122 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %old.i.i.i.i122, align 4
  call void @llvm.prefetch.p0(ptr nonnull %add.ptr27, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i.i.i.i.i132

do.body.i.i.i.i.i.i.i132:                         ; preds = %do.body.i.i.i.i.i.i.i132.do.body.i.i.i.i.i.i.i132_crit_edge, %do.cond.i.i.i.i129
  %42 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %add.ptr27, ptr nonnull %add.ptr27, i32 %41, i32 %add.i.i.i.i126, ptr nonnull elementtype(i32) %add.ptr27) #7, !srcloc !18
  %asmresult.i.i.i.i.i.i.i130 = extractvalue { i32, i32 } %42, 0
  %tobool.not.i.i.i.i.i.i.i131 = icmp eq i32 %asmresult.i.i.i.i.i.i.i130, 0
  br i1 %tobool.not.i.i.i.i.i.i.i131, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i135, label %do.body.i.i.i.i.i.i.i132.do.body.i.i.i.i.i.i.i132_crit_edge

do.body.i.i.i.i.i.i.i132.do.body.i.i.i.i.i.i.i132_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i132
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i.i.i.i132

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i135:  ; preds = %do.body.i.i.i.i.i.i.i132
  %asmresult3.i.i.i.i.i.i.i133 = extractvalue { i32, i32 } %42, 1
  %cmp.not.i.i.i.i.i.i134 = icmp eq i32 %asmresult3.i.i.i.i.i.i.i133, %41
  br i1 %cmp.not.i.i.i.i.i.i134, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i135.if.end4.i.i.i.i138_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i135.do.body.i.i.i.i125_crit_edge, !prof !19

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i135.do.body.i.i.i.i125_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i135
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i125

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i135.if.end4.i.i.i.i138_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i135
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i.i138

if.end4.i.i.i.i138:                               ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i135.if.end4.i.i.i.i138_crit_edge, %do.body.i.i.i.i125.if.end4.i.i.i.i138_crit_edge
  %43 = ptrtoint ptr %old.i.i.i.i122 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %old.i.i.i.i122, align 4
  %add5.i.i.i.i136 = add i32 %44, 1
  %45 = or i32 %add5.i.i.i.i136, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %.not.i.i.i.i137 = icmp sgt i32 %45, -1
  br i1 %.not.i.i.i.i137, label %if.end4.i.i.i.i138.kref_get_unless_zero.exit142_crit_edge, label %if.then10.i.i.i.i139, !prof !19

if.end4.i.i.i.i138.kref_get_unless_zero.exit142_crit_edge: ; preds = %if.end4.i.i.i.i138
  call void @__sanitizer_cov_trace_pc() #9
  br label %kref_get_unless_zero.exit142

if.then10.i.i.i.i139:                             ; preds = %if.end4.i.i.i.i138
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef nonnull %add.ptr27, i32 noundef 0) #7
  %46 = ptrtoint ptr %old.i.i.i.i122 to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pr194 = load i32, ptr %old.i.i.i.i122, align 4
  br label %kref_get_unless_zero.exit142

kref_get_unless_zero.exit142:                     ; preds = %if.then10.i.i.i.i139, %if.end4.i.i.i.i138.kref_get_unless_zero.exit142_crit_edge
  %47 = phi i32 [ %44, %if.end4.i.i.i.i138.kref_get_unless_zero.exit142_crit_edge ], [ %.pr194, %if.then10.i.i.i.i139 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool12.i.i.i.i140.not = icmp eq i32 %47, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i122) #7
  br i1 %tobool12.i.i.i.i140.not, label %if.then46, label %if.end52.critedge

if.then46:                                        ; preds = %kref_get_unless_zero.exit142
  call void @rb_erase(ptr noundef nonnull %25, ptr noundef nonnull @string_tree) #7
  %48 = ptrtoint ptr %25 to i32
  %49 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %25, align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @string_tree_lock) #7
  call void @_raw_spin_lock(ptr noundef nonnull @string_tree_lock) #7
  %50 = load ptr, ptr @string_tree, align 4
  %tobool23.not176 = icmp eq ptr %50, null
  br i1 %tobool23.not176, label %if.then46.if.then41_crit_edge, label %if.then46.while.body24.backedge_crit_edge

if.then46.while.body24.backedge_crit_edge:        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body24.backedge

if.then46.if.then41_crit_edge:                    ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then41

if.end52.critedge:                                ; preds = %kref_get_unless_zero.exit142
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_unlock(ptr noundef nonnull @string_tree_lock) #7
  call void @kfree(ptr noundef nonnull %call9.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end52.critedge, %if.then41, %if.end9, %if.end9.thread.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr, %if.end9 ], [ null, %if.end9.thread.cleanup_crit_edge ], [ %add.ptr27, %if.end52.critedge ], [ %call9.i, %if.then41 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_release_string(ptr noundef %ref) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @string_tree_lock) #7
  %0 = getelementptr inbounds %struct.ceph_string, ptr %ref, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %3)
  %cmp = icmp eq i32 %2, %3
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rb_erase(ptr noundef %0, ptr noundef nonnull @string_tree) #7
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %0, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @string_tree_lock) #7
  %tobool.not = icmp eq ptr %ref, null
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %do.end

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kvfree_call_rcu(ptr noundef %0, ptr noundef nonnull inttoptr (i32 4 to ptr)) #7
  br label %if.end4

if.end4:                                          ; preds = %do.end, %if.end.if.end4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ceph_strings_empty() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr @string_tree, align 4
  %cmp = icmp eq ptr %0, null
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @__ksymtab_ceph_find_or_create_string, !1, !"__ksymtab_ceph_find_or_create_string", i1 false, i1 false}
!1 = !{!"../net/ceph/string_table.c", i32 86, i32 1}
!2 = !{ptr @__ksymtab_ceph_release_string, !3, !"__ksymtab_ceph_release_string", i1 false, i1 false}
!3 = !{!"../net/ceph/string_table.c", i32 101, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/ceph/string_table.c", i32 8, i32 8}
!6 = !{ptr @string_tree_lock, !5, !"string_tree_lock", i1 false, i1 false}
!7 = !{ptr @string_tree, !8, !"string_tree", i1 false, i1 false}
!8 = !{!"../net/ceph/string_table.c", i32 9, i32 23}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{i64 1066333, i64 1066357, i64 1066378, i64 1066395, i64 1066412}
!19 = !{!"branch_weights", i32 2000, i32 1}
