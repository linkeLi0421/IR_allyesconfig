; ModuleID = '/llk/IR_all_yes/security/selinux/ss/symtab.c_pt.bc'
source_filename = "../security/selinux/ss/symtab.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.symtab = type { %struct.hashtab, i32 }
%struct.hashtab = type { ptr, i32, i32 }
%struct.hashtab_node = type { ptr, ptr, ptr }

@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"security/selinux/ss/hashtab.h\00", [34 x i8] zeroinitializer }, align 32
@___asan_gen_ = private constant [32 x i8] c"../security/selinux/ss/symtab.c\00", align 1
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private unnamed_addr constant [33 x i8] c"../security/selinux/ss/hashtab.h\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 67, i32 2 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @symtab_init(ptr noundef %s, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %nprim = getelementptr inbounds %struct.symtab, ptr %s, i32 0, i32 1
  %0 = ptrtoint ptr %nprim to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %nprim, align 4
  %call = tail call i32 @hashtab_init(ptr noundef %s, i32 noundef %size) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hashtab_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @symtab_insert(ptr noundef %s, ptr noundef %name, ptr noundef %datum) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 0) #5
  %call.i.i = tail call i32 @__cond_resched() #5
  %size.i = getelementptr inbounds %struct.hashtab, ptr %s, i32 0, i32 1
  %0 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.hashtab_insert.exit_crit_edge, label %lor.lhs.false.i

entry.hashtab_insert.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %hashtab_insert.exit

lor.lhs.false.i:                                  ; preds = %entry
  %nel.i = getelementptr inbounds %struct.hashtab, ptr %s, i32 0, i32 2
  %2 = ptrtoint ptr %nel.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i = icmp eq i32 %3, -1
  br i1 %cmp.i, label %lor.lhs.false.i.hashtab_insert.exit_crit_edge, label %if.end.i

lor.lhs.false.i.hashtab_insert.exit_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hashtab_insert.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call.i2 = tail call i32 @strlen(ptr noundef %name) #8
  %sub.ptr.rhs.cast.i = ptrtoint ptr %name to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %cmp8.not.i = icmp eq i32 %call.i2, 0
  br i1 %cmp8.not.i, label %if.end.i.symhash.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.symhash.exit_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %symhash.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %val.010.i = phi i32 [ %xor.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %p.09.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %name, %if.end.i.for.body.i_crit_edge ]
  %or.i = tail call i32 @llvm.fshl.i32(i32 %val.010.i, i32 %val.010.i, i32 4) #5
  %4 = ptrtoint ptr %p.09.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %p.09.i, align 1
  %conv.i = zext i8 %5 to i32
  %xor.i = xor i32 %or.i, %conv.i
  %incdec.ptr.i = getelementptr i8, ptr %p.09.i, i32 1
  %sub.ptr.lhs.cast.i = ptrtoint ptr %incdec.ptr.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %cmp.i3 = icmp ult i32 %sub.ptr.sub.i, %call.i2
  br i1 %cmp.i3, label %for.body.i.for.body.i_crit_edge, label %for.body.i.symhash.exit_crit_edge

for.body.i.symhash.exit_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %symhash.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

symhash.exit:                                     ; preds = %for.body.i.symhash.exit_crit_edge, %if.end.i.symhash.exit_crit_edge
  %val.0.lcssa.i = phi i32 [ 0, %if.end.i.symhash.exit_crit_edge ], [ %xor.i, %for.body.i.symhash.exit_crit_edge ]
  %sub.i = add i32 %1, -1
  %and.i = and i32 %val.0.lcssa.i, %sub.i
  %6 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s, align 4
  %arrayidx.i = getelementptr ptr, ptr %7, i32 %and.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %cur.043.i = load ptr, ptr %arrayidx.i, align 4
  %tobool3.not44.i = icmp eq ptr %cur.043.i, null
  br i1 %tobool3.not44.i, label %symhash.exit.cond.end.i_crit_edge, label %symhash.exit.while.body.i_crit_edge

symhash.exit.while.body.i_crit_edge:              ; preds = %symhash.exit
  br label %while.body.i

symhash.exit.cond.end.i_crit_edge:                ; preds = %symhash.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.i

while.cond.i:                                     ; preds = %if.end10.i
  %next.i = getelementptr inbounds %struct.hashtab_node, ptr %cur.046.i, i32 0, i32 2
  %9 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %cur.0.i = load ptr, ptr %next.i, align 4
  %tobool3.not.i = icmp eq ptr %cur.0.i, null
  br i1 %tobool3.not.i, label %while.cond.i.cond.true.i_crit_edge, label %while.cond.i.while.body.i_crit_edge

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.cond.i.cond.true.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.true.i

while.body.i:                                     ; preds = %while.cond.i.while.body.i_crit_edge, %symhash.exit.while.body.i_crit_edge
  %cur.046.i = phi ptr [ %cur.0.i, %while.cond.i.while.body.i_crit_edge ], [ %cur.043.i, %symhash.exit.while.body.i_crit_edge ]
  %prev.045.i = phi ptr [ %cur.046.i, %while.cond.i.while.body.i_crit_edge ], [ null, %symhash.exit.while.body.i_crit_edge ]
  %10 = ptrtoint ptr %cur.046.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cur.046.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %name, ptr noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp8.i = icmp eq i32 %call.i, 0
  br i1 %cmp8.i, label %while.body.i.hashtab_insert.exit_crit_edge, label %if.end10.i

while.body.i.hashtab_insert.exit_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hashtab_insert.exit

if.end10.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp11.i = icmp slt i32 %call.i, 0
  br i1 %cmp11.i, label %while.end.i, label %while.cond.i

while.end.i:                                      ; preds = %if.end10.i
  %tobool14.not.i = icmp eq ptr %prev.045.i, null
  br i1 %tobool14.not.i, label %while.end.i.cond.end.i_crit_edge, label %while.end.i.cond.true.i_crit_edge

while.end.i.cond.true.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.true.i

while.end.i.cond.end.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.i

cond.true.i:                                      ; preds = %while.end.i.cond.true.i_crit_edge, %while.cond.i.cond.true.i_crit_edge
  %prev.0.lcssa53.i = phi ptr [ %prev.045.i, %while.end.i.cond.true.i_crit_edge ], [ %cur.046.i, %while.cond.i.cond.true.i_crit_edge ]
  %next15.i = getelementptr inbounds %struct.hashtab_node, ptr %prev.0.lcssa53.i, i32 0, i32 2
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %while.end.i.cond.end.i_crit_edge, %symhash.exit.cond.end.i_crit_edge
  %cond.i = phi ptr [ %next15.i, %cond.true.i ], [ %arrayidx.i, %while.end.i.cond.end.i_crit_edge ], [ %arrayidx.i, %symhash.exit.cond.end.i_crit_edge ]
  %call18.i = tail call i32 @__hashtab_insert(ptr noundef %s, ptr noundef %cond.i, ptr noundef %name, ptr noundef %datum) #5
  br label %hashtab_insert.exit

hashtab_insert.exit:                              ; preds = %cond.end.i, %while.body.i.hashtab_insert.exit_crit_edge, %lor.lhs.false.i.hashtab_insert.exit_crit_edge, %entry.hashtab_insert.exit_crit_edge
  %retval.2.i = phi i32 [ %call18.i, %cond.end.i ], [ -22, %lor.lhs.false.i.hashtab_insert.exit_crit_edge ], [ -22, %entry.hashtab_insert.exit_crit_edge ], [ -17, %while.body.i.hashtab_insert.exit_crit_edge ]
  ret i32 %retval.2.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @symtab_search(ptr nocapture noundef readonly %s, ptr noundef %name) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %size.i = getelementptr inbounds %struct.hashtab, ptr %s, i32 0, i32 1
  %0 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.hashtab_search.exit_crit_edge, label %if.end.i

entry.hashtab_search.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %hashtab_search.exit

if.end.i:                                         ; preds = %entry
  %call.i3 = tail call i32 @strlen(ptr noundef %name) #8
  %sub.ptr.rhs.cast.i = ptrtoint ptr %name to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3)
  %cmp8.not.i = icmp eq i32 %call.i3, 0
  br i1 %cmp8.not.i, label %if.end.i.symhash.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.symhash.exit_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %symhash.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %val.010.i = phi i32 [ %xor.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %p.09.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %name, %if.end.i.for.body.i_crit_edge ]
  %or.i = tail call i32 @llvm.fshl.i32(i32 %val.010.i, i32 %val.010.i, i32 4) #5
  %2 = ptrtoint ptr %p.09.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %p.09.i, align 1
  %conv.i = zext i8 %3 to i32
  %xor.i = xor i32 %or.i, %conv.i
  %incdec.ptr.i = getelementptr i8, ptr %p.09.i, i32 1
  %sub.ptr.lhs.cast.i = ptrtoint ptr %incdec.ptr.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %cmp.i = icmp ult i32 %sub.ptr.sub.i, %call.i3
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.symhash.exit_crit_edge

for.body.i.symhash.exit_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %symhash.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

symhash.exit:                                     ; preds = %for.body.i.symhash.exit_crit_edge, %if.end.i.symhash.exit_crit_edge
  %val.0.lcssa.i = phi i32 [ 0, %if.end.i.symhash.exit_crit_edge ], [ %xor.i, %for.body.i.symhash.exit_crit_edge ]
  %sub.i = add i32 %1, -1
  %and.i = and i32 %val.0.lcssa.i, %sub.i
  %4 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s, align 4
  %arrayidx.i = getelementptr ptr, ptr %5, i32 %and.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %cur.029.i = load ptr, ptr %arrayidx.i, align 4
  %tobool2.not30.i = icmp eq ptr %cur.029.i, null
  br i1 %tobool2.not30.i, label %symhash.exit.hashtab_search.exit_crit_edge, label %symhash.exit.while.body.i_crit_edge

symhash.exit.while.body.i_crit_edge:              ; preds = %symhash.exit
  br label %while.body.i

symhash.exit.hashtab_search.exit_crit_edge:       ; preds = %symhash.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %hashtab_search.exit

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %symhash.exit.while.body.i_crit_edge
  %cur.031.i = phi ptr [ %cur.0.i, %cleanup.i.while.body.i_crit_edge ], [ %cur.029.i, %symhash.exit.while.body.i_crit_edge ]
  %7 = ptrtoint ptr %cur.031.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cur.031.i, align 4
  %call.i2 = tail call i32 @strcmp(ptr noundef %name, ptr noundef %8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %cmp6.i = icmp eq i32 %call.i2, 0
  br i1 %cmp6.i, label %cleanup.thread.i, label %if.end8.i

cleanup.thread.i:                                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %datum.i = getelementptr inbounds %struct.hashtab_node, ptr %cur.031.i, i32 0, i32 1
  %9 = ptrtoint ptr %datum.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %datum.i, align 4
  br label %hashtab_search.exit

if.end8.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %cmp9.i = icmp slt i32 %call.i2, 0
  br i1 %cmp9.i, label %if.end8.i.hashtab_search.exit_crit_edge, label %cleanup.i

if.end8.i.hashtab_search.exit_crit_edge:          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hashtab_search.exit

cleanup.i:                                        ; preds = %if.end8.i
  %next.i = getelementptr inbounds %struct.hashtab_node, ptr %cur.031.i, i32 0, i32 2
  %11 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %cur.0.i = load ptr, ptr %next.i, align 4
  %tobool2.not.i = icmp eq ptr %cur.0.i, null
  br i1 %tobool2.not.i, label %cleanup.i.hashtab_search.exit_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

cleanup.i.hashtab_search.exit_crit_edge:          ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hashtab_search.exit

hashtab_search.exit:                              ; preds = %cleanup.i.hashtab_search.exit_crit_edge, %if.end8.i.hashtab_search.exit_crit_edge, %cleanup.thread.i, %symhash.exit.hashtab_search.exit_crit_edge, %entry.hashtab_search.exit_crit_edge
  %retval.2.i = phi ptr [ null, %entry.hashtab_search.exit_crit_edge ], [ %10, %cleanup.thread.i ], [ null, %symhash.exit.hashtab_search.exit_crit_edge ], [ null, %cleanup.i.hashtab_search.exit_crit_edge ], [ null, %if.end8.i.hashtab_search.exit_crit_edge ]
  ret ptr %retval.2.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hashtab_insert(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/selinux/ss/hashtab.h", i32 67, i32 2}
!2 = distinct !{null, !3, !"symtab_key_params", i1 false, i1 false}
!3 = !{!"../security/selinux/ss/symtab.c", i32 35, i32 40}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
