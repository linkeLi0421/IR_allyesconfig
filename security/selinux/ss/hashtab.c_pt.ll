; ModuleID = '/llk/IR_all_yes/security/selinux/ss/hashtab.c_pt.bc'
source_filename = "../security/selinux/ss/hashtab.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hashtab = type { ptr, i32, i32 }
%struct.hashtab_node = type { ptr, ptr, ptr }
%struct.hashtab_info = type { i32, i32 }

@hashtab_node_cachep = internal unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hashtab_node\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [33 x i8] c"../security/selinux/ss/hashtab.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 188, i32 43 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hashtab_init(ptr nocapture noundef writeonly %h, i32 noundef %nel_hint) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nel_hint)
  %cmp.i = icmp eq i32 %nel_hint, 0
  br i1 %cmp.i, label %hashtab_compute_size.exit, label %cond.false18.i

cond.false18.i:                                   ; preds = %entry
  %sub.i31.i = add i32 %nel_hint, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i31.i)
  %tobool.not.i.i.i.i = icmp eq i32 %sub.i31.i, 0
  %0 = tail call i32 @llvm.ctlz.i32(i32 %sub.i31.i, i1 true) #6, !range !13
  %sub.i.i.i.i = sub nuw nsw i32 32, %0
  %sub.i.i.op.i.i = shl nuw i32 1, %sub.i.i.i.i
  %spec.select = select i1 %tobool.not.i.i.i.i, i32 1, i32 %sub.i.i.op.i.i
  %nel18 = getelementptr inbounds %struct.hashtab, ptr %h, i32 0, i32 2
  %1 = ptrtoint ptr %nel18 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %nel18, align 4
  %size119 = getelementptr inbounds %struct.hashtab, ptr %h, i32 0, i32 1
  %2 = ptrtoint ptr %size119 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %size119, align 4
  %3 = ptrtoint ptr %h to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %h, align 4
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %spec.select, i32 4) #6
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %cond.false18.i.cleanup_crit_edge, label %if.end7.i.i, !prof !14

cond.false18.i.cleanup_crit_edge:                 ; preds = %cond.false18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

hashtab_compute_size.exit:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %nel = getelementptr inbounds %struct.hashtab, ptr %h, i32 0, i32 2
  %6 = ptrtoint ptr %nel to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %nel, align 4
  %size1 = getelementptr inbounds %struct.hashtab, ptr %h, i32 0, i32 1
  %7 = ptrtoint ptr %size1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %size1, align 4
  %8 = ptrtoint ptr %h to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %h, align 4
  br label %cleanup

if.end7.i.i:                                      ; preds = %cond.false18.i
  %9 = extractvalue { i32, i1 } %4, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 3520) #9
  %10 = ptrtoint ptr %h to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call8.i.i, ptr %h, align 4
  %tobool5.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool5.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %size119 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.select, ptr %size119, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end7.i.i.cleanup_crit_edge, %hashtab_compute_size.exit, %cond.false18.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end7.i.i.cleanup_crit_edge ], [ 0, %if.end ], [ 0, %hashtab_compute_size.exit ], [ -12, %cond.false18.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__hashtab_insert(ptr nocapture noundef %h, ptr nocapture noundef %dst, ptr noundef %key, ptr noundef %datum) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @hashtab_node_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %key, ptr %call.i, align 8
  %datum2 = getelementptr inbounds %struct.hashtab_node, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %datum2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %datum, ptr %datum2, align 4
  %3 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dst, align 4
  %next = getelementptr inbounds %struct.hashtab_node, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %next, align 8
  store ptr %call.i, ptr %dst, align 4
  %nel = getelementptr inbounds %struct.hashtab, ptr %h, i32 0, i32 2
  %6 = ptrtoint ptr %nel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nel, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %nel, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hashtab_destroy(ptr nocapture noundef %h) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.hashtab, ptr %h, i32 0, i32 1
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp16.not = icmp eq i32 %1, 0
  br i1 %cmp16.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %while.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.017 = phi i32 [ %inc, %while.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %h, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.017
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not14 = icmp eq ptr %5, null
  br i1 %tobool.not14, label %for.body.while.end_crit_edge, label %for.body.while.body_crit_edge

for.body.while.body_crit_edge:                    ; preds = %for.body
  br label %while.body

for.body.while.end_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %for.body.while.body_crit_edge
  %cur.015 = phi ptr [ %7, %while.body.while.body_crit_edge ], [ %5, %for.body.while.body_crit_edge ]
  %next = getelementptr inbounds %struct.hashtab_node, ptr %cur.015, i32 0, i32 2
  %6 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %next, align 4
  %8 = load ptr, ptr @hashtab_node_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %8, ptr noundef nonnull %cur.015) #6
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %for.body.while.end_crit_edge
  %9 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %h, align 4
  %arrayidx2 = getelementptr ptr, ptr %10, i32 %i.017
  %11 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %arrayidx2, align 4
  %inc = add nuw i32 %i.017, 1
  %12 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size, align 4
  %cmp = icmp ult i32 %inc, %13
  br i1 %cmp, label %while.end.for.body_crit_edge, label %while.end.for.end_crit_edge

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

while.end.for.body_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %while.end.for.end_crit_edge, %entry.for.end_crit_edge
  %14 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %h, align 4
  tail call void @kfree(ptr noundef %15) #6
  %16 = ptrtoint ptr %h to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %h, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hashtab_map(ptr nocapture noundef readonly %h, ptr nocapture noundef readonly %apply, ptr noundef %args) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.hashtab, ptr %h, i32 0, i32 1
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp15.not = icmp eq i32 %1, 0
  br i1 %cmp15.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.016 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %h, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.016
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %cur.012 = load ptr, ptr %arrayidx, align 4
  %tobool.not13 = icmp eq ptr %cur.012, null
  br i1 %tobool.not13, label %for.body.for.inc_crit_edge, label %for.body.while.body_crit_edge

for.body.while.body_crit_edge:                    ; preds = %for.body
  br label %while.body

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

while.cond:                                       ; preds = %while.body
  %next = getelementptr inbounds %struct.hashtab_node, ptr %cur.014, i32 0, i32 2
  %5 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %5)
  %cur.0 = load ptr, ptr %next, align 4
  %tobool.not = icmp eq ptr %cur.0, null
  br i1 %tobool.not, label %while.cond.for.inc_crit_edge, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.cond.for.inc_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %for.body.while.body_crit_edge
  %cur.014 = phi ptr [ %cur.0, %while.cond.while.body_crit_edge ], [ %cur.012, %for.body.while.body_crit_edge ]
  %6 = ptrtoint ptr %cur.014 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur.014, align 4
  %datum = getelementptr inbounds %struct.hashtab_node, ptr %cur.014, i32 0, i32 1
  %8 = ptrtoint ptr %datum to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %datum, align 4
  %call = tail call i32 %apply(ptr noundef %7, ptr noundef %9, ptr noundef %args) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %while.cond, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc:                                          ; preds = %while.cond.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.016, 1
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %while.body.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hashtab_stat(ptr nocapture noundef readonly %h, ptr nocapture noundef writeonly %info) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.hashtab, ptr %h, i32 0, i32 1
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp22.not = icmp eq i32 %1, 0
  br i1 %cmp22.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %2 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %h, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %max_chain_len.025 = phi i32 [ 0, %for.body.lr.ph ], [ %max_chain_len.1, %for.inc.for.body_crit_edge ]
  %slots_used.024 = phi i32 [ 0, %for.body.lr.ph ], [ %slots_used.1, %for.inc.for.body_crit_edge ]
  %i.023 = phi i32 [ 0, %for.body.lr.ph ], [ %inc6, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.023
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %for.body.while.body_crit_edge

for.body.while.body_crit_edge:                    ; preds = %for.body
  br label %while.body

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

while.body:                                       ; preds = %while.body.while.body_crit_edge, %for.body.while.body_crit_edge
  %cur.021 = phi ptr [ %7, %while.body.while.body_crit_edge ], [ %5, %for.body.while.body_crit_edge ]
  %chain_len.020 = phi i32 [ %inc2, %while.body.while.body_crit_edge ], [ 0, %for.body.while.body_crit_edge ]
  %inc2 = add i32 %chain_len.020, 1
  %next = getelementptr inbounds %struct.hashtab_node, ptr %cur.021, i32 0, i32 2
  %6 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %next, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %while.cond.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %inc = add i32 %slots_used.024, 1
  %8 = tail call i32 @llvm.umax.i32(i32 %inc2, i32 %max_chain_len.025)
  br label %for.inc

for.inc:                                          ; preds = %while.cond.while.end_crit_edge, %for.body.for.inc_crit_edge
  %slots_used.1 = phi i32 [ %slots_used.024, %for.body.for.inc_crit_edge ], [ %inc, %while.cond.while.end_crit_edge ]
  %max_chain_len.1 = phi i32 [ %max_chain_len.025, %for.body.for.inc_crit_edge ], [ %8, %while.cond.while.end_crit_edge ]
  %inc6 = add nuw i32 %i.023, 1
  %exitcond.not = icmp eq i32 %inc6, %1
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %slots_used.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %slots_used.1, %for.inc.for.end_crit_edge ]
  %max_chain_len.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %max_chain_len.1, %for.inc.for.end_crit_edge ]
  %9 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %slots_used.0.lcssa, ptr %info, align 4
  %max_chain_len8 = getelementptr inbounds %struct.hashtab_info, ptr %info, i32 0, i32 1
  %10 = ptrtoint ptr %max_chain_len8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %max_chain_len.0.lcssa, ptr %max_chain_len8, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hashtab_duplicate(ptr noundef %new, ptr nocapture noundef readonly %orig, ptr nocapture noundef readonly %copy, ptr nocapture noundef readonly %destroy, ptr noundef %args) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %new, i32 0, i32 12)
  %size = getelementptr inbounds %struct.hashtab, ptr %orig, i32 0, i32 1
  %1 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %size, align 4
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 4) #6
  %4 = extractvalue { i32, i1 } %3, 1
  br i1 %4, label %entry.cleanup_crit_edge, label %if.end7.i.i, !prof !14

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7.i.i:                                      ; preds = %entry
  %5 = extractvalue { i32, i1 } %3, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #9
  %6 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8.i.i, ptr %new, align 4
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.end7.i.i
  %7 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size, align 4
  %size3 = getelementptr inbounds %struct.hashtab, ptr %new, i32 0, i32 1
  %9 = ptrtoint ptr %size3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %size3, align 4
  %10 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp90.not = icmp eq i32 %10, 0
  br i1 %cmp90.not, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %nel = getelementptr inbounds %struct.hashtab, ptr %new, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc24.for.body_crit_edge, %for.body.lr.ph
  %i.091 = phi i32 [ 0, %for.body.lr.ph ], [ %inc25, %for.inc24.for.body_crit_edge ]
  %11 = ptrtoint ptr %orig to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %orig, align 4
  %arrayidx = getelementptr ptr, ptr %12, i32 %i.091
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %cur.086 = load ptr, ptr %arrayidx, align 4
  %tobool7.not87 = icmp eq ptr %cur.086, null
  br i1 %tobool7.not87, label %for.body.for.inc24_crit_edge, label %for.body.for.body8_crit_edge

for.body.for.body8_crit_edge:                     ; preds = %for.body
  br label %for.body8

for.body.for.inc24_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc24

for.body8:                                        ; preds = %if.end22.for.body8_crit_edge, %for.body.for.body8_crit_edge
  %cur.089 = phi ptr [ %cur.0, %if.end22.for.body8_crit_edge ], [ %cur.086, %for.body.for.body8_crit_edge ]
  %tail.088 = phi ptr [ %call.i, %if.end22.for.body8_crit_edge ], [ null, %for.body.for.body8_crit_edge ]
  %14 = load ptr, ptr @hashtab_node_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %14, i32 noundef 3520) #6
  %tobool10.not = icmp eq ptr %call.i, null
  br i1 %tobool10.not, label %for.body8.error_crit_edge, label %if.end12

for.body8.error_crit_edge:                        ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end12:                                         ; preds = %for.body8
  %call13 = tail call i32 %copy(ptr noundef nonnull %call.i, ptr noundef nonnull %cur.089, ptr noundef %args) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %15 = load ptr, ptr @hashtab_node_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %15, ptr noundef nonnull %call.i) #6
  br label %error

if.end16:                                         ; preds = %if.end12
  %next = getelementptr inbounds %struct.hashtab_node, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %next, align 8
  %tobool17.not = icmp eq ptr %tail.088, null
  br i1 %tobool17.not, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %new to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %new, align 4
  %arrayidx20 = getelementptr ptr, ptr %18, i32 %i.091
  %19 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %arrayidx20, align 4
  br label %if.end22

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %next21 = getelementptr inbounds %struct.hashtab_node, ptr %tail.088, i32 0, i32 2
  %20 = ptrtoint ptr %next21 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %next21, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then18
  %21 = ptrtoint ptr %nel to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nel, align 4
  %inc = add i32 %22, 1
  store i32 %inc, ptr %nel, align 4
  %next23 = getelementptr inbounds %struct.hashtab_node, ptr %cur.089, i32 0, i32 2
  %23 = ptrtoint ptr %next23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %cur.0 = load ptr, ptr %next23, align 4
  %tobool7.not = icmp eq ptr %cur.0, null
  br i1 %tobool7.not, label %if.end22.for.inc24_crit_edge, label %if.end22.for.body8_crit_edge

if.end22.for.body8_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body8

if.end22.for.inc24_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc24

for.inc24:                                        ; preds = %if.end22.for.inc24_crit_edge, %for.body.for.inc24_crit_edge
  %inc25 = add nuw i32 %i.091, 1
  %24 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size, align 4
  %cmp = icmp ult i32 %inc25, %25
  br i1 %cmp, label %for.inc24.for.body_crit_edge, label %for.inc24.cleanup_crit_edge

for.inc24.cleanup_crit_edge:                      ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc24.for.body_crit_edge:                     ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

error:                                            ; preds = %if.then15, %for.body8.error_crit_edge
  %26 = ptrtoint ptr %size3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp2995.not = icmp eq i32 %27, 0
  br i1 %cmp2995.not, label %error.for.end42_crit_edge, label %error.for.body30_crit_edge

error.for.body30_crit_edge:                       ; preds = %error
  br label %for.body30

error.for.end42_crit_edge:                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end42

for.body30:                                       ; preds = %for.inc40.for.body30_crit_edge, %error.for.body30_crit_edge
  %i.196 = phi i32 [ %inc41, %for.inc40.for.body30_crit_edge ], [ 0, %error.for.body30_crit_edge ]
  %28 = ptrtoint ptr %new to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %new, align 4
  %arrayidx32 = getelementptr ptr, ptr %29, i32 %i.196
  %30 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx32, align 4
  %tobool34.not93 = icmp eq ptr %31, null
  br i1 %tobool34.not93, label %for.body30.for.inc40_crit_edge, label %for.body30.for.body35_crit_edge

for.body30.for.body35_crit_edge:                  ; preds = %for.body30
  br label %for.body35

for.body30.for.inc40_crit_edge:                   ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc40

for.body35:                                       ; preds = %for.body35.for.body35_crit_edge, %for.body30.for.body35_crit_edge
  %cur.194 = phi ptr [ %33, %for.body35.for.body35_crit_edge ], [ %31, %for.body30.for.body35_crit_edge ]
  %next36 = getelementptr inbounds %struct.hashtab_node, ptr %cur.194, i32 0, i32 2
  %32 = ptrtoint ptr %next36 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %next36, align 4
  %34 = ptrtoint ptr %cur.194 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cur.194, align 4
  %datum = getelementptr inbounds %struct.hashtab_node, ptr %cur.194, i32 0, i32 1
  %36 = ptrtoint ptr %datum to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %datum, align 4
  %call37 = tail call i32 %destroy(ptr noundef %35, ptr noundef %37, ptr noundef %args) #6
  %38 = load ptr, ptr @hashtab_node_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %38, ptr noundef nonnull %cur.194) #6
  %tobool34.not = icmp eq ptr %33, null
  br i1 %tobool34.not, label %for.body35.for.inc40_crit_edge, label %for.body35.for.body35_crit_edge

for.body35.for.body35_crit_edge:                  ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body35

for.body35.for.inc40_crit_edge:                   ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc40

for.inc40:                                        ; preds = %for.body35.for.inc40_crit_edge, %for.body30.for.inc40_crit_edge
  %inc41 = add nuw i32 %i.196, 1
  %39 = ptrtoint ptr %size3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %size3, align 4
  %cmp29 = icmp ult i32 %inc41, %40
  br i1 %cmp29, label %for.inc40.for.body30_crit_edge, label %for.inc40.for.end42_crit_edge

for.inc40.for.end42_crit_edge:                    ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end42

for.inc40.for.body30_crit_edge:                   ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body30

for.end42:                                        ; preds = %for.inc40.for.end42_crit_edge, %error.for.end42_crit_edge
  %41 = load ptr, ptr @hashtab_node_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %41, ptr noundef %new) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end42, %for.inc24.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %for.end42 ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ 0, %for.inc24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @hashtab_cache_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 12, i32 noundef 0, i32 noundef 262144, ptr noundef null) #6
  store ptr %call, ptr @hashtab_node_cachep, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/selinux/ss/hashtab.c", i32 188, i32 43}
!2 = !{ptr @hashtab_node_cachep, !3, !"hashtab_node_cachep", i1 false, i1 false}
!3 = !{!"../security/selinux/ss/hashtab.c", i32 13, i32 27}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i32 0, i32 33}
!14 = !{!"branch_weights", i32 1, i32 2000}
