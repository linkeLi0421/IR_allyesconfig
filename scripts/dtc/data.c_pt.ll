; ModuleID = '/llk/IR_all_yes/scripts/dtc/data.c_pt.bc'
source_filename = "../scripts/dtc/data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data = type { i32, ptr, ptr }
%struct.marker = type { i32, i32, ptr, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [33 x i8] c"Error reading file into data: %s\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Overflow reading file into data\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Invalid literal size (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"realloc() failed (len=%zd)\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"FATAL ERROR: \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"malloc() failed\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @data_free(ptr nocapture noundef readonly byval(%struct.data) align 8 %d) local_unnamed_addr #0 {
entry:
  %markers = getelementptr inbounds %struct.data, ptr %d, i64 0, i32 2
  %0 = load ptr, ptr %markers, align 8, !tbaa !5
  %tobool.not6 = icmp eq ptr %0, null
  br i1 %tobool.not6, label %while.end, label %while.body

while.body:                                       ; preds = %while.body, %entry
  %m.07 = phi ptr [ %1, %while.body ], [ %0, %entry ]
  %next = getelementptr inbounds %struct.marker, ptr %m.07, i64 0, i32 3
  %1 = load ptr, ptr %next, align 8, !tbaa !11
  %ref = getelementptr inbounds %struct.marker, ptr %m.07, i64 0, i32 2
  %2 = load ptr, ptr %ref, align 8, !tbaa !13
  tail call void @free(ptr noundef %2) #20
  tail call void @free(ptr noundef nonnull %m.07) #20
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  %val = getelementptr inbounds %struct.data, ptr %d, i64 0, i32 1
  %3 = load ptr, ptr %val, align 8, !tbaa !14
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.end
  tail call void @free(ptr noundef nonnull %3) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @data_grow_for(ptr noalias nocapture writeonly sret(%struct.data) align 8 %agg.result, ptr nocapture noundef readonly byval(%struct.data) align 8 %d, i32 noundef %xlen) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %xlen, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %agg.result, ptr noundef nonnull align 8 dereferenceable(24) %d, i64 24, i1 false), !tbaa.struct !15
  br label %cleanup

if.end:                                           ; preds = %entry
  %nd.sroa.0.0.copyload = load i64, ptr %d, align 8, !tbaa.struct !15
  %nd.sroa.5.0.d.sroa_idx = getelementptr inbounds i8, ptr %d, i64 16
  %nd.sroa.5.0.copyload = load ptr, ptr %nd.sroa.5.0.d.sroa_idx, align 8, !tbaa.struct !18
  %0 = trunc i64 %nd.sroa.0.0.copyload to i32
  %add = add i32 %0, %xlen
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %if.end
  %newsize.0 = phi i32 [ %xlen, %if.end ], [ %mul, %while.cond ]
  %cmp1 = icmp ugt i32 %add, %newsize.0
  %mul = shl i32 %newsize.0, 1
  br i1 %cmp1, label %while.cond, label %while.end

while.end:                                        ; preds = %while.cond
  %val = getelementptr inbounds %struct.data, ptr %d, i64 0, i32 1
  %1 = load ptr, ptr %val, align 8, !tbaa !14
  %conv = zext i32 %newsize.0 to i64
  %call.i = tail call ptr @realloc(ptr noundef %1, i64 noundef %conv) #21
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %xrealloc.exit

if.then.i:                                        ; preds = %while.end
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.3, i64 noundef %conv) #22
  unreachable

xrealloc.exit:                                    ; preds = %while.end
  store i64 %nd.sroa.0.0.copyload, ptr %agg.result, align 8, !tbaa.struct !15
  %nd.sroa.4.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i64 8
  store ptr %call.i, ptr %nd.sroa.4.0.agg.result.sroa_idx, align 8, !tbaa.struct !19
  %nd.sroa.5.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i64 16
  store ptr %nd.sroa.5.0.copyload, ptr %nd.sroa.5.0.agg.result.sroa_idx, align 8, !tbaa.struct !18
  br label %cleanup

cleanup:                                          ; preds = %xrealloc.exit, %if.then
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local void @data_copy_mem(ptr noalias nocapture sret(%struct.data) align 8 %agg.result, ptr nocapture noundef readonly %mem, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %cmp.i = icmp eq i32 %len, 0
  br i1 %cmp.i, label %data_grow_for.exit, label %while.cond.i.preheader

while.cond.i.preheader:                           ; preds = %entry
  %conv.i = zext i32 %len to i64
  %malloc = tail call ptr @malloc(i64 %conv.i)
  %tobool.not.i.i = icmp eq ptr %malloc, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %data_grow_for.exit

if.then.i.i:                                      ; preds = %while.cond.i.preheader
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.3, i64 noundef %conv.i) #22, !noalias !20
  unreachable

data_grow_for.exit:                               ; preds = %while.cond.i.preheader, %entry
  %tmp.sroa.5.0 = phi ptr [ null, %entry ], [ %malloc, %while.cond.i.preheader ]
  store i64 0, ptr %agg.result, align 8, !tbaa.struct !15
  %tmp.sroa.5.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i64 8
  store ptr %tmp.sroa.5.0, ptr %tmp.sroa.5.0.agg.result.sroa_idx, align 8, !tbaa.struct !19
  %tmp.sroa.6.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i64 16
  store ptr null, ptr %tmp.sroa.6.0.agg.result.sroa_idx, align 8, !tbaa.struct !18
  store i32 %len, ptr %agg.result, align 8, !tbaa !23
  %conv = sext i32 %len to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %tmp.sroa.5.0, ptr align 1 %mem, i64 %conv, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define dso_local void @data_copy_escape_string(ptr noalias nocapture sret(%struct.data) align 8 %agg.result, ptr noundef %s, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #20
  %call.i.i = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #23
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %data_add_marker.exit

if.then.i.i:                                      ; preds = %entry
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.5) #22, !noalias !24
  unreachable

data_add_marker.exit:                             ; preds = %entry
  %offset.i = getelementptr inbounds %struct.marker, ptr %call.i.i, i64 0, i32 1
  store i32 0, ptr %offset.i, align 4, !tbaa !27, !noalias !24
  store i32 8, ptr %call.i.i, align 8, !tbaa !28, !noalias !24
  %ref2.i = getelementptr inbounds %struct.marker, ptr %call.i.i, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %ref2.i, i8 0, i64 16, i1 false)
  %tmp.sroa.0.sroa.4.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %tmp.sroa.0.sroa.4.0.agg.result.sroa_idx, i8 0, i64 12, i1 false)
  store i32 0, ptr %agg.result, align 8, !tbaa.struct !15
  %tmp.sroa.4.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i64 16
  %add = add nsw i32 %len, 1
  %agg.result18.sroa.5.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i64 8
  %agg.result18.sroa.5.0.copyload = load ptr, ptr %agg.result18.sroa.5.0.agg.result.sroa_idx, align 8
  %cmp.i = icmp eq i32 %add, 0
  br i1 %cmp.i, label %data_grow_for.exit.thread, label %if.end.i

data_grow_for.exit.thread:                        ; preds = %data_add_marker.exit
  store ptr %call.i.i, ptr %tmp.sroa.4.0.agg.result.sroa_idx, align 8, !tbaa.struct !18
  br label %data_grow_for.exit.while.end_crit_edge

if.end.i:                                         ; preds = %data_add_marker.exit
  %agg.result18.sroa.0.0.copyload = load i64, ptr %agg.result, align 8
  %0 = trunc i64 %agg.result18.sroa.0.0.copyload to i32
  %add.i = add i32 %add, %0
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i, %if.end.i
  %newsize.0.i = phi i32 [ %add, %if.end.i ], [ %mul.i, %while.cond.i ]
  %cmp1.i = icmp ugt i32 %add.i, %newsize.0.i
  %mul.i = shl i32 %newsize.0.i, 1
  br i1 %cmp1.i, label %while.cond.i, label %while.end.i

while.end.i:                                      ; preds = %while.cond.i
  %conv.i = zext i32 %newsize.0.i to i64
  %call.i.i19 = tail call ptr @realloc(ptr noundef %agg.result18.sroa.5.0.copyload, i64 noundef %conv.i) #21, !noalias !29
  %tobool.not.i.i20 = icmp eq ptr %call.i.i19, null
  br i1 %tobool.not.i.i20, label %if.then.i.i21, label %data_grow_for.exit

if.then.i.i21:                                    ; preds = %while.end.i
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.3, i64 noundef %conv.i) #22, !noalias !29
  unreachable

data_grow_for.exit:                               ; preds = %while.end.i
  store ptr %call.i.i19, ptr %agg.result18.sroa.5.0.agg.result.sroa_idx, align 8, !tbaa.struct !19
  store ptr %call.i.i, ptr %tmp.sroa.4.0.agg.result.sroa_idx, align 8, !tbaa.struct !18
  %cmp27 = icmp sgt i32 %len, 0
  br i1 %cmp27, label %while.body, label %data_grow_for.exit.while.end_crit_edge

data_grow_for.exit.while.end_crit_edge:           ; preds = %data_grow_for.exit, %data_grow_for.exit.thread
  %tmp2.sroa.5.031 = phi ptr [ %agg.result18.sroa.5.0.copyload, %data_grow_for.exit.thread ], [ %call.i.i19, %data_grow_for.exit ]
  %.pre = load i32, ptr %agg.result, align 8, !tbaa !23
  br label %while.end

while.body:                                       ; preds = %if.end, %data_grow_for.exit
  %1 = phi i32 [ %4, %if.end ], [ 0, %data_grow_for.exit ]
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %i, align 4, !tbaa !16
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i8, ptr %s, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !32
  %cmp3 = icmp eq i8 %2, 92
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %call = call signext i8 @get_escape_char(ptr noundef nonnull %s, ptr noundef nonnull %i) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %c.0 = phi i8 [ %call, %if.then ], [ %2, %while.body ]
  %3 = load i32, ptr %agg.result, align 8, !tbaa !23
  %inc6 = add i32 %3, 1
  store i32 %inc6, ptr %agg.result, align 8, !tbaa !23
  %idxprom7 = zext i32 %3 to i64
  %arrayidx8 = getelementptr inbounds i8, ptr %call.i.i19, i64 %idxprom7
  store i8 %c.0, ptr %arrayidx8, align 1, !tbaa !32
  %4 = load i32, ptr %i, align 4, !tbaa !16
  %cmp = icmp slt i32 %4, %len
  br i1 %cmp, label %while.body, label %while.end

while.end:                                        ; preds = %if.end, %data_grow_for.exit.while.end_crit_edge
  %tmp2.sroa.5.030 = phi ptr [ %tmp2.sroa.5.031, %data_grow_for.exit.while.end_crit_edge ], [ %call.i.i19, %if.end ]
  %5 = phi i32 [ %.pre, %data_grow_for.exit.while.end_crit_edge ], [ %inc6, %if.end ]
  %inc10 = add i32 %5, 1
  store i32 %inc10, ptr %agg.result, align 8, !tbaa !23
  %idxprom11 = zext i32 %5 to i64
  %arrayidx12 = getelementptr inbounds i8, ptr %tmp2.sroa.5.030, i64 %idxprom11
  store i8 0, ptr %arrayidx12, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @data_add_marker(ptr noalias nocapture writeonly sret(%struct.data) align 8 %agg.result, ptr nocapture noundef readonly byval(%struct.data) align 8 %d, i32 noundef %type, ptr noundef %ref) local_unnamed_addr #0 {
entry:
  %d7.sroa.4 = alloca ptr, align 8
  %call.i = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #23
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %xmalloc.exit

if.then.i:                                        ; preds = %entry
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.5) #22
  unreachable

xmalloc.exit:                                     ; preds = %entry
  %0 = load i32, ptr %d, align 8, !tbaa !23
  %offset = getelementptr inbounds %struct.marker, ptr %call.i, i64 0, i32 1
  store i32 %0, ptr %offset, align 4, !tbaa !27
  store i32 %type, ptr %call.i, align 8, !tbaa !28
  %ref2 = getelementptr inbounds %struct.marker, ptr %call.i, i64 0, i32 2
  store ptr %ref, ptr %ref2, align 8, !tbaa !13
  %next = getelementptr inbounds %struct.marker, ptr %call.i, i64 0, i32 3
  store ptr null, ptr %next, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %d7.sroa.4)
  %d7.sroa.4.0.d.sroa_idx = getelementptr inbounds i8, ptr %d, i64 16
  %d7.sroa.4.0.copyload9 = load ptr, ptr %d7.sroa.4.0.d.sroa_idx, align 8
  store ptr %d7.sroa.4.0.copyload9, ptr %d7.sroa.4, align 8
  %tobool.not.i810 = icmp eq ptr %d7.sroa.4.0.copyload9, null
  br i1 %tobool.not.i810, label %data_append_markers.exit, label %while.cond.ithread-pre-split

while.cond.ithread-pre-split:                     ; preds = %while.cond.ithread-pre-split, %xmalloc.exit
  %1 = phi ptr [ %.pr, %while.cond.ithread-pre-split ], [ %d7.sroa.4.0.copyload9, %xmalloc.exit ]
  %next.i = getelementptr inbounds %struct.marker, ptr %1, i64 0, i32 3
  %.pr = load ptr, ptr %next.i, align 8, !tbaa !17, !noalias !33
  %tobool.not.i8 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i8, label %data_append_markers.exit.loopexit, label %while.cond.ithread-pre-split

data_append_markers.exit.loopexit:                ; preds = %while.cond.ithread-pre-split
  %next.i.le = getelementptr inbounds %struct.marker, ptr %1, i64 0, i32 3
  br label %data_append_markers.exit

data_append_markers.exit:                         ; preds = %data_append_markers.exit.loopexit, %xmalloc.exit
  %mp.0.i.lcssa = phi ptr [ %d7.sroa.4, %xmalloc.exit ], [ %next.i.le, %data_append_markers.exit.loopexit ]
  store ptr %call.i, ptr %mp.0.i.lcssa, align 8, !tbaa !17, !noalias !33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %agg.result, ptr noundef nonnull align 8 dereferenceable(16) %d, i64 16, i1 false)
  %d7.sroa.4.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i64 16
  %d7.sroa.4.0.d7.sroa.4.0.d7.sroa.4.0.copyload = load ptr, ptr %d7.sroa.4, align 8, !tbaa.struct !18
  store ptr %d7.sroa.4.0.d7.sroa.4.0.d7.sroa.4.0.copyload, ptr %d7.sroa.4.0.agg.result.sroa_idx, align 8, !tbaa.struct !18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %d7.sroa.4)
  ret void
}

declare signext i8 @get_escape_char(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @data_copy_file(ptr noalias nocapture sret(%struct.data) align 8 %agg.result, ptr nocapture noundef %f, i64 noundef %maxlen) local_unnamed_addr #0 {
entry:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %agg.result, i8 0, i64 24, i1 false)
  %calloc = call dereferenceable_or_null(24) ptr @calloc(i64 1, i64 24)
  %tobool.not.i.i = icmp eq ptr %calloc, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %data_add_marker.exit

if.then.i.i:                                      ; preds = %entry
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.5) #22, !noalias !36
  unreachable

data_add_marker.exit:                             ; preds = %entry
  %agg.result34.sroa.543.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i64 16
  store ptr %calloc, ptr %agg.result34.sroa.543.0.agg.result.sroa_idx, align 8, !tbaa.struct !18
  %call44 = tail call i32 @feof(ptr noundef %f) #20
  %tobool.not45 = icmp eq i32 %call44, 0
  %cmp47 = icmp ne i64 %maxlen, 0
  %0 = and i1 %tobool.not45, %cmp47
  br i1 %0, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %data_add_marker.exit
  %cmp2 = icmp eq i64 %maxlen, -1
  %agg.result35.sroa.5.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i64 8
  %agg.result35.sroa.5.0.copyload.pre = load ptr, ptr %agg.result35.sroa.5.0.agg.result.sroa_idx, align 8
  br label %while.body

while.body:                                       ; preds = %if.end23, %while.body.lr.ph
  %agg.result35.sroa.5.0.copyload = phi ptr [ %agg.result35.sroa.5.0.copyload.pre, %while.body.lr.ph ], [ %tmp6.sroa.5.0, %if.end23 ]
  %conv48 = phi i64 [ 0, %while.body.lr.ph ], [ %conv, %if.end23 ]
  %sub = sub i64 %maxlen, %conv48
  %chunksize.0 = select i1 %cmp2, i64 4096, i64 %sub
  %conv7 = trunc i64 %chunksize.0 to i32
  %cmp.i = icmp eq i32 %conv7, 0
  br i1 %cmp.i, label %data_grow_for.exit, label %if.end.i

if.end.i:                                         ; preds = %while.body
  %agg.result35.sroa.0.0.copyload = load i64, ptr %agg.result, align 8
  %1 = trunc i64 %agg.result35.sroa.0.0.copyload to i32
  %add.i = add i32 %1, %conv7
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i, %if.end.i
  %newsize.0.i = phi i32 [ %conv7, %if.end.i ], [ %mul.i, %while.cond.i ]
  %cmp1.i = icmp ugt i32 %add.i, %newsize.0.i
  %mul.i = shl i32 %newsize.0.i, 1
  br i1 %cmp1.i, label %while.cond.i, label %while.end.i

while.end.i:                                      ; preds = %while.cond.i
  %conv.i = zext i32 %newsize.0.i to i64
  %call.i.i36 = tail call ptr @realloc(ptr noundef %agg.result35.sroa.5.0.copyload, i64 noundef %conv.i) #21, !noalias !39
  %tobool.not.i.i37 = icmp eq ptr %call.i.i36, null
  br i1 %tobool.not.i.i37, label %if.then.i.i38, label %data_grow_for.exit

if.then.i.i38:                                    ; preds = %while.end.i
  %conv.i.le = zext i32 %newsize.0.i to i64
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.3, i64 noundef %conv.i.le) #22, !noalias !39
  unreachable

data_grow_for.exit:                               ; preds = %while.end.i, %while.body
  %tmp6.sroa.5.0 = phi ptr [ %agg.result35.sroa.5.0.copyload, %while.body ], [ %call.i.i36, %while.end.i ]
  store ptr %tmp6.sroa.5.0, ptr %agg.result35.sroa.5.0.agg.result.sroa_idx, align 8, !tbaa.struct !19
  %2 = load i32, ptr %agg.result, align 8, !tbaa !23
  %idx.ext = zext i32 %2 to i64
  %add.ptr = getelementptr inbounds i8, ptr %tmp6.sroa.5.0, i64 %idx.ext
  %call9 = tail call i64 @fread(ptr noundef %add.ptr, i64 noundef 1, i64 noundef %chunksize.0, ptr noundef %f)
  %call10 = tail call i32 @ferror(ptr noundef %f) #20
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end15, label %if.then12

if.then12:                                        ; preds = %data_grow_for.exit
  %call13 = tail call ptr @__errno_location() #24
  %3 = load i32, ptr %call13, align 4, !tbaa !16
  %call14 = tail call ptr @strerror(i32 noundef %3) #20
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str, ptr noundef %call14) #25
  unreachable

if.end15:                                         ; preds = %data_grow_for.exit
  %add = add i64 %call9, %idx.ext
  %cmp20 = icmp ult i64 %add, %idx.ext
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end15
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.1) #25
  unreachable

if.end23:                                         ; preds = %if.end15
  %conv27 = trunc i64 %add to i32
  store i32 %conv27, ptr %agg.result, align 8, !tbaa !23
  %call = tail call i32 @feof(ptr noundef %f) #20
  %tobool.not = icmp eq i32 %call, 0
  %conv = and i64 %add, 4294967295
  %cmp = icmp ult i64 %conv, %maxlen
  %4 = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %4, label %while.body, label %while.end

while.end:                                        ; preds = %if.end23, %data_add_marker.exit
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @feof(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind readonly
declare noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: inlinehint noreturn nounwind uwtable
define internal void @die(ptr nocapture noundef readonly %str, ...) unnamed_addr #8 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ap) #20
  call void @llvm.va_start(ptr nonnull %ap)
  %0 = load ptr, ptr @stderr, align 8, !tbaa !17
  %1 = call i64 @fwrite(ptr nonnull @.str.4, i64 13, i64 1, ptr %0) #26
  %2 = load ptr, ptr @stderr, align 8, !tbaa !17
  %call2 = call i32 @vfprintf(ptr noundef %2, ptr noundef %str, ptr noundef nonnull %ap) #26
  call void @llvm.va_end(ptr nonnull %ap)
  call void @exit(i32 noundef 1) #22
  unreachable
}

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local void @data_append_data(ptr noalias nocapture writeonly sret(%struct.data) align 8 %agg.result, ptr nocapture noundef byval(%struct.data) align 8 %d, ptr nocapture noundef readonly %p, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %d5.sroa.5.0.d.sroa_idx = getelementptr inbounds i8, ptr %d, i64 8
  %d5.sroa.5.0.copyload = load ptr, ptr %d5.sroa.5.0.d.sroa_idx, align 8
  %cmp.i = icmp eq i32 %len, 0
  br i1 %cmp.i, label %entry.data_grow_for.exit_crit_edge, label %if.end.i

entry.data_grow_for.exit_crit_edge:               ; preds = %entry
  %.pre = load i32, ptr %d, align 8, !tbaa !23
  %.pre9 = add nuw nsw i32 %.pre, %len
  br label %data_grow_for.exit

if.end.i:                                         ; preds = %entry
  %d5.sroa.0.0.copyload = load i64, ptr %d, align 8
  %0 = trunc i64 %d5.sroa.0.0.copyload to i32
  %add.i = add i32 %0, %len
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i, %if.end.i
  %newsize.0.i = phi i32 [ %len, %if.end.i ], [ %mul.i, %while.cond.i ]
  %cmp1.i = icmp ugt i32 %add.i, %newsize.0.i
  %mul.i = shl i32 %newsize.0.i, 1
  br i1 %cmp1.i, label %while.cond.i, label %while.end.i

while.end.i:                                      ; preds = %while.cond.i
  %conv.i = zext i32 %newsize.0.i to i64
  %call.i.i = tail call ptr @realloc(ptr noundef %d5.sroa.5.0.copyload, i64 noundef %conv.i) #21, !noalias !42
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %data_grow_for.exit

if.then.i.i:                                      ; preds = %while.end.i
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.3, i64 noundef %conv.i) #22, !noalias !42
  unreachable

data_grow_for.exit:                               ; preds = %while.end.i, %entry.data_grow_for.exit_crit_edge
  %add.pre-phi = phi i32 [ %.pre9, %entry.data_grow_for.exit_crit_edge ], [ %add.i, %while.end.i ]
  %1 = phi i32 [ %.pre, %entry.data_grow_for.exit_crit_edge ], [ %0, %while.end.i ]
  %tmp.sroa.5.0 = phi ptr [ %d5.sroa.5.0.copyload, %entry.data_grow_for.exit_crit_edge ], [ %call.i.i, %while.end.i ]
  store ptr %tmp.sroa.5.0, ptr %d5.sroa.5.0.d.sroa_idx, align 8, !tbaa.struct !19
  %idx.ext = zext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, ptr %tmp.sroa.5.0, i64 %idx.ext
  %conv = sext i32 %len to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %p, i64 %conv, i1 false)
  store i32 %add.pre-phi, ptr %d, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %agg.result, ptr noundef nonnull align 8 dereferenceable(24) %d, i64 24, i1 false), !tbaa.struct !15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @data_insert_at_marker(ptr noalias nocapture writeonly sret(%struct.data) align 8 %agg.result, ptr nocapture noundef byval(%struct.data) align 8 %d, ptr nocapture noundef readonly %m, ptr nocapture noundef readonly %p, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %d29.sroa.5.0.d.sroa_idx = getelementptr inbounds i8, ptr %d, i64 8
  %d29.sroa.5.0.copyload = load ptr, ptr %d29.sroa.5.0.d.sroa_idx, align 8
  %cmp.i = icmp eq i32 %len, 0
  br i1 %cmp.i, label %entry.data_grow_for.exit_crit_edge, label %if.end.i

entry.data_grow_for.exit_crit_edge:               ; preds = %entry
  %.pre = load i32, ptr %d, align 8, !tbaa !23
  %.pre37 = add nuw nsw i32 %.pre, %len
  br label %data_grow_for.exit

if.end.i:                                         ; preds = %entry
  %d29.sroa.0.0.copyload = load i64, ptr %d, align 8
  %0 = trunc i64 %d29.sroa.0.0.copyload to i32
  %add.i = add i32 %0, %len
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i, %if.end.i
  %newsize.0.i = phi i32 [ %len, %if.end.i ], [ %mul.i, %while.cond.i ]
  %cmp1.i = icmp ugt i32 %add.i, %newsize.0.i
  %mul.i = shl i32 %newsize.0.i, 1
  br i1 %cmp1.i, label %while.cond.i, label %while.end.i

while.end.i:                                      ; preds = %while.cond.i
  %conv.i = zext i32 %newsize.0.i to i64
  %call.i.i = tail call ptr @realloc(ptr noundef %d29.sroa.5.0.copyload, i64 noundef %conv.i) #21, !noalias !45
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %data_grow_for.exit

if.then.i.i:                                      ; preds = %while.end.i
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.3, i64 noundef %conv.i) #22, !noalias !45
  unreachable

data_grow_for.exit:                               ; preds = %while.end.i, %entry.data_grow_for.exit_crit_edge
  %add.pre-phi = phi i32 [ %.pre37, %entry.data_grow_for.exit_crit_edge ], [ %add.i, %while.end.i ]
  %1 = phi i32 [ %.pre, %entry.data_grow_for.exit_crit_edge ], [ %0, %while.end.i ]
  %tmp.sroa.5.0 = phi ptr [ %d29.sroa.5.0.copyload, %entry.data_grow_for.exit_crit_edge ], [ %call.i.i, %while.end.i ]
  store ptr %tmp.sroa.5.0, ptr %d29.sroa.5.0.d.sroa_idx, align 8, !tbaa.struct !19
  %offset = getelementptr inbounds %struct.marker, ptr %m, i64 0, i32 1
  %2 = load i32, ptr %offset, align 4, !tbaa !27
  %idx.ext = zext i32 %2 to i64
  %add.ptr = getelementptr inbounds i8, ptr %tmp.sroa.5.0, i64 %idx.ext
  %idx.ext1 = sext i32 %len to i64
  %add.ptr2 = getelementptr inbounds i8, ptr %add.ptr, i64 %idx.ext1
  %sub = sub i32 %1, %2
  %conv = zext i32 %sub to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %add.ptr2, ptr align 1 %add.ptr, i64 %conv, i1 false)
  %3 = load i32, ptr %offset, align 4, !tbaa !27
  %idx.ext11 = zext i32 %3 to i64
  %add.ptr12 = getelementptr inbounds i8, ptr %tmp.sroa.5.0, i64 %idx.ext11
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr12, ptr align 1 %p, i64 %idx.ext1, i1 false)
  store i32 %add.pre-phi, ptr %d, align 8, !tbaa !23
  %m.addr.0.in33 = getelementptr inbounds %struct.marker, ptr %m, i64 0, i32 3
  %m.addr.034 = load ptr, ptr %m.addr.0.in33, align 8, !tbaa !11
  %tobool.not35 = icmp eq ptr %m.addr.034, null
  br i1 %tobool.not35, label %for.end, label %for.body

for.body:                                         ; preds = %for.body, %data_grow_for.exit
  %m.addr.036 = phi ptr [ %m.addr.0, %for.body ], [ %m.addr.034, %data_grow_for.exit ]
  %offset15 = getelementptr inbounds %struct.marker, ptr %m.addr.036, i64 0, i32 1
  %4 = load i32, ptr %offset15, align 4, !tbaa !27
  %add16 = add i32 %4, %len
  store i32 %add16, ptr %offset15, align 4, !tbaa !27
  %m.addr.0.in = getelementptr inbounds %struct.marker, ptr %m.addr.036, i64 0, i32 3
  %m.addr.0 = load ptr, ptr %m.addr.0.in, align 8, !tbaa !11
  %tobool.not = icmp eq ptr %m.addr.0, null
  br i1 %tobool.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %data_grow_for.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %agg.result, ptr noundef nonnull align 8 dereferenceable(24) %d, i64 24, i1 false), !tbaa.struct !15
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local void @data_merge(ptr noalias nocapture writeonly sret(%struct.data) align 8 %agg.result, ptr nocapture noundef readonly byval(%struct.data) align 8 %d1, ptr nocapture noundef byval(%struct.data) align 8 %d2) local_unnamed_addr #0 {
entry:
  %agg.tmp7.sroa.5 = alloca ptr, align 8
  %markers = getelementptr inbounds %struct.data, ptr %d2, i64 0, i32 2
  %0 = load ptr, ptr %markers, align 8, !tbaa !5
  %val = getelementptr inbounds %struct.data, ptr %d2, i64 0, i32 1
  %1 = load ptr, ptr %val, align 8, !tbaa !14
  %2 = load i32, ptr %d2, align 8, !tbaa !23
  %d16.sroa.0.0.copyload12 = load i64, ptr %d1, align 8
  %d16.sroa.0.sroa.7.0.extract.shift = and i64 %d16.sroa.0.0.copyload12, -4294967296
  %d16.sroa.7.0.d1.sroa_idx = getelementptr inbounds i8, ptr %d1, i64 8
  %d16.sroa.7.0.copyload13 = load ptr, ptr %d16.sroa.7.0.d1.sroa_idx, align 8
  %d16.sroa.9.0.d1.sroa_idx = getelementptr inbounds i8, ptr %d1, i64 16
  %d16.sroa.9.0.copyload14 = load ptr, ptr %d16.sroa.9.0.d1.sroa_idx, align 8
  %cmp.i.i = icmp eq i32 %2, 0
  %3 = trunc i64 %d16.sroa.0.0.copyload12 to i32
  br i1 %cmp.i.i, label %data_append_data.exit, label %if.end.i.i

if.end.i.i:                                       ; preds = %entry
  %add.i.i = add i32 %2, %3
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i, %if.end.i.i
  %newsize.0.i.i = phi i32 [ %2, %if.end.i.i ], [ %mul.i.i, %while.cond.i.i ]
  %cmp1.i.i = icmp ugt i32 %add.i.i, %newsize.0.i.i
  %mul.i.i = shl i32 %newsize.0.i.i, 1
  br i1 %cmp1.i.i, label %while.cond.i.i, label %while.end.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  %conv.i.i = zext i32 %newsize.0.i.i to i64
  %call.i.i.i = tail call ptr @realloc(ptr noundef %d16.sroa.7.0.copyload13, i64 noundef %conv.i.i) #21, !noalias !48
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %data_append_data.exit

if.then.i.i.i:                                    ; preds = %while.end.i.i
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.3, i64 noundef %conv.i.i) #22, !noalias !48
  unreachable

data_append_data.exit:                            ; preds = %while.end.i.i, %entry
  %add.pre-phi.i = phi i32 [ %add.i.i, %while.end.i.i ], [ %3, %entry ]
  %tmp.sroa.5.0.i = phi ptr [ %call.i.i.i, %while.end.i.i ], [ %d16.sroa.7.0.copyload13, %entry ]
  %idx.ext.i = and i64 %d16.sroa.0.0.copyload12, 4294967295
  %add.ptr.i = getelementptr inbounds i8, ptr %tmp.sroa.5.0.i, i64 %idx.ext.i
  %conv.i = sext i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr.i, ptr align 1 %1, i64 %conv.i, i1 false) #20, !noalias !53
  %d16.sroa.0.sroa.0.0.insert.ext15 = zext i32 %add.pre-phi.i to i64
  %d16.sroa.0.sroa.0.0.insert.insert17 = or i64 %d16.sroa.0.sroa.7.0.extract.shift, %d16.sroa.0.sroa.0.0.insert.ext15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %agg.tmp7.sroa.5)
  store ptr %d16.sroa.9.0.copyload14, ptr %agg.tmp7.sroa.5, align 8
  %tobool.not.i22 = icmp eq ptr %d16.sroa.9.0.copyload14, null
  br i1 %tobool.not.i22, label %data_append_markers.exit, label %while.cond.ithread-pre-split

while.cond.ithread-pre-split:                     ; preds = %while.cond.ithread-pre-split, %data_append_data.exit
  %4 = phi ptr [ %.pr, %while.cond.ithread-pre-split ], [ %d16.sroa.9.0.copyload14, %data_append_data.exit ]
  %next.i = getelementptr inbounds %struct.marker, ptr %4, i64 0, i32 3
  %.pr = load ptr, ptr %next.i, align 8, !tbaa !17, !noalias !54
  %tobool.not.i = icmp eq ptr %.pr, null
  br i1 %tobool.not.i, label %data_append_markers.exit.loopexit, label %while.cond.ithread-pre-split

data_append_markers.exit.loopexit:                ; preds = %while.cond.ithread-pre-split
  %next.i.le = getelementptr inbounds %struct.marker, ptr %4, i64 0, i32 3
  br label %data_append_markers.exit

data_append_markers.exit:                         ; preds = %data_append_markers.exit.loopexit, %data_append_data.exit
  %mp.0.i.lcssa = phi ptr [ %agg.tmp7.sroa.5, %data_append_data.exit ], [ %next.i.le, %data_append_markers.exit.loopexit ]
  store ptr %0, ptr %mp.0.i.lcssa, align 8, !tbaa !17, !noalias !54
  %agg.tmp7.sroa.5.0.agg.tmp7.sroa.5.0.agg.tmp7.sroa.5.0.copyload = load ptr, ptr %agg.tmp7.sroa.5, align 8, !tbaa.struct !18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %agg.tmp7.sroa.5)
  store i64 %d16.sroa.0.sroa.0.0.insert.insert17, ptr %agg.result, align 8, !tbaa.struct !15
  %tmp.sroa.4.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i64 8
  store ptr %tmp.sroa.5.0.i, ptr %tmp.sroa.4.0.agg.result.sroa_idx, align 8, !tbaa.struct !19
  %tmp.sroa.5.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i64 16
  store ptr %agg.tmp7.sroa.5.0.agg.tmp7.sroa.5.0.agg.tmp7.sroa.5.0.copyload, ptr %tmp.sroa.5.0.agg.result.sroa_idx, align 8, !tbaa.struct !18
  %tobool.not23 = icmp eq ptr %0, null
  br i1 %tobool.not23, label %while.end.i, label %for.body

for.body:                                         ; preds = %for.body, %data_append_markers.exit
  %m2.024 = phi ptr [ %6, %for.body ], [ %0, %data_append_markers.exit ]
  %offset = getelementptr inbounds %struct.marker, ptr %m2.024, i64 0, i32 1
  %5 = load i32, ptr %offset, align 4, !tbaa !27
  %add = add i32 %5, %3
  store i32 %add, ptr %offset, align 4, !tbaa !27
  %next = getelementptr inbounds %struct.marker, ptr %m2.024, i64 0, i32 3
  %6 = load ptr, ptr %next, align 8, !tbaa !11
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %while.end.i, label %for.body

while.end.i:                                      ; preds = %for.body, %data_append_markers.exit
  store ptr null, ptr %markers, align 8, !tbaa !5
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %data_free.exit, label %if.then.i

if.then.i:                                        ; preds = %while.end.i
  tail call void @free(ptr noundef nonnull %1) #20
  br label %data_free.exit

data_free.exit:                                   ; preds = %if.then.i, %while.end.i
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @data_append_integer(ptr noalias nocapture writeonly sret(%struct.data) align 8 %agg.result, ptr nocapture noundef readonly byval(%struct.data) align 8 %d, i64 noundef %value, i32 noundef %bits) local_unnamed_addr #0 {
entry:
  %0 = add i32 %bits, -8
  %1 = tail call i32 @llvm.fshl.i32(i32 %0, i32 %0, i32 29)
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 3, label %sw.bb3
    i32 7, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  %d15.sroa.0.0.copyload68 = load i64, ptr %d, align 8
  %d15.sroa.6.0.d.sroa_idx = getelementptr inbounds i8, ptr %d, i64 8
  %d15.sroa.6.0.copyload69 = load ptr, ptr %d15.sroa.6.0.d.sroa_idx, align 8
  %d15.sroa.8.0.d.sroa_idx = getelementptr inbounds i8, ptr %d, i64 16
  %d15.sroa.8.0.copyload70 = load ptr, ptr %d15.sroa.8.0.d.sroa_idx, align 8
  %2 = trunc i64 %d15.sroa.0.0.copyload68 to i32
  %add.i.i = add i32 %2, 1
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i, %sw.bb
  %newsize.0.i.i = phi i32 [ 1, %sw.bb ], [ %mul.i.i, %while.cond.i.i ]
  %cmp1.i.i = icmp ugt i32 %add.i.i, %newsize.0.i.i
  %mul.i.i = shl i32 %newsize.0.i.i, 1
  br i1 %cmp1.i.i, label %while.cond.i.i, label %while.end.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  %conv.i.i = zext i32 %newsize.0.i.i to i64
  %call.i.i.i = tail call ptr @realloc(ptr noundef %d15.sroa.6.0.copyload69, i64 noundef %conv.i.i) #21, !noalias !57
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %data_append_data.exit

if.then.i.i.i:                                    ; preds = %while.end.i.i
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.3, i64 noundef %conv.i.i) #22, !noalias !57
  unreachable

data_append_data.exit:                            ; preds = %while.end.i.i
  %conv = trunc i64 %value to i8
  %idx.ext.i = and i64 %d15.sroa.0.0.copyload68, 4294967295
  %add.ptr.i = getelementptr inbounds i8, ptr %call.i.i.i, i64 %idx.ext.i
  store i8 %conv, ptr %add.ptr.i, align 1, !noalias !62
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %conv2 = trunc i64 %value to i16
  %d16.sroa.0.0.copyload78 = load i64, ptr %d, align 8
  %d16.sroa.6.0.d.sroa_idx = getelementptr inbounds i8, ptr %d, i64 8
  %d16.sroa.6.0.copyload79 = load ptr, ptr %d16.sroa.6.0.d.sroa_idx, align 8
  %d16.sroa.8.0.d.sroa_idx = getelementptr inbounds i8, ptr %d, i64 16
  %d16.sroa.8.0.copyload80 = load ptr, ptr %d16.sroa.8.0.d.sroa_idx, align 8
  %3 = trunc i64 %d16.sroa.0.0.copyload78 to i32
  %add.i.i20 = add i32 %3, 2
  br label %while.cond.i.i24

while.cond.i.i24:                                 ; preds = %while.cond.i.i24, %sw.bb1
  %newsize.0.i.i21 = phi i32 [ 2, %sw.bb1 ], [ %mul.i.i23, %while.cond.i.i24 ]
  %cmp1.i.i22 = icmp ugt i32 %add.i.i20, %newsize.0.i.i21
  %mul.i.i23 = shl i32 %newsize.0.i.i21, 1
  br i1 %cmp1.i.i22, label %while.cond.i.i24, label %while.end.i.i28

while.end.i.i28:                                  ; preds = %while.cond.i.i24
  %conv.i.i25 = zext i32 %newsize.0.i.i21 to i64
  %call.i.i.i26 = tail call ptr @realloc(ptr noundef %d16.sroa.6.0.copyload79, i64 noundef %conv.i.i25) #21, !noalias !63
  %tobool.not.i.i.i27 = icmp eq ptr %call.i.i.i26, null
  br i1 %tobool.not.i.i.i27, label %if.then.i.i.i29, label %data_append_data.exit32

if.then.i.i.i29:                                  ; preds = %while.end.i.i28
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.3, i64 noundef %conv.i.i25) #22, !noalias !63
  unreachable

data_append_data.exit32:                          ; preds = %while.end.i.i28
  %rev.i = tail call i16 @llvm.bswap.i16(i16 %conv2) #20
  %idx.ext.i30 = and i64 %d16.sroa.0.0.copyload78, 4294967295
  %add.ptr.i31 = getelementptr inbounds i8, ptr %call.i.i.i26, i64 %idx.ext.i30
  store i16 %rev.i, ptr %add.ptr.i31, align 1, !noalias !68
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %conv4 = trunc i64 %value to i32
  %d34.sroa.0.0.copyload88 = load i64, ptr %d, align 8
  %d34.sroa.6.0.d.sroa_idx = getelementptr inbounds i8, ptr %d, i64 8
  %d34.sroa.6.0.copyload89 = load ptr, ptr %d34.sroa.6.0.d.sroa_idx, align 8
  %d34.sroa.8.0.d.sroa_idx = getelementptr inbounds i8, ptr %d, i64 16
  %d34.sroa.8.0.copyload90 = load ptr, ptr %d34.sroa.8.0.d.sroa_idx, align 8
  %4 = trunc i64 %d34.sroa.0.0.copyload88 to i32
  %add.i.i38 = add i32 %4, 4
  br label %while.cond.i.i42

while.cond.i.i42:                                 ; preds = %while.cond.i.i42, %sw.bb3
  %newsize.0.i.i39 = phi i32 [ 4, %sw.bb3 ], [ %mul.i.i41, %while.cond.i.i42 ]
  %cmp1.i.i40 = icmp ugt i32 %add.i.i38, %newsize.0.i.i39
  %mul.i.i41 = shl i32 %newsize.0.i.i39, 1
  br i1 %cmp1.i.i40, label %while.cond.i.i42, label %while.end.i.i46

while.end.i.i46:                                  ; preds = %while.cond.i.i42
  %conv.i.i43 = zext i32 %newsize.0.i.i39 to i64
  %call.i.i.i44 = tail call ptr @realloc(ptr noundef %d34.sroa.6.0.copyload89, i64 noundef %conv.i.i43) #21, !noalias !69
  %tobool.not.i.i.i45 = icmp eq ptr %call.i.i.i44, null
  br i1 %tobool.not.i.i.i45, label %if.then.i.i.i47, label %data_append_data.exit50

if.then.i.i.i47:                                  ; preds = %while.end.i.i46
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.3, i64 noundef %conv.i.i43) #22, !noalias !69
  unreachable

data_append_data.exit50:                          ; preds = %while.end.i.i46
  %rev.i33 = tail call i32 @llvm.bswap.i32(i32 %conv4) #20
  %idx.ext.i48 = and i64 %d34.sroa.0.0.copyload88, 4294967295
  %add.ptr.i49 = getelementptr inbounds i8, ptr %call.i.i.i44, i64 %idx.ext.i48
  store i32 %rev.i33, ptr %add.ptr.i49, align 1, !noalias !74
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %d51.sroa.0.0.copyload98 = load i64, ptr %d, align 8
  %d51.sroa.6.0.d.sroa_idx = getelementptr inbounds i8, ptr %d, i64 8
  %d51.sroa.6.0.copyload99 = load ptr, ptr %d51.sroa.6.0.d.sroa_idx, align 8
  %d51.sroa.8.0.d.sroa_idx = getelementptr inbounds i8, ptr %d, i64 16
  %d51.sroa.8.0.copyload100 = load ptr, ptr %d51.sroa.8.0.d.sroa_idx, align 8
  %5 = trunc i64 %d51.sroa.0.0.copyload98 to i32
  %add.i.i55 = add i32 %5, 8
  br label %while.cond.i.i59

while.cond.i.i59:                                 ; preds = %while.cond.i.i59, %sw.bb6
  %newsize.0.i.i56 = phi i32 [ 8, %sw.bb6 ], [ %mul.i.i58, %while.cond.i.i59 ]
  %cmp1.i.i57 = icmp ugt i32 %add.i.i55, %newsize.0.i.i56
  %mul.i.i58 = shl i32 %newsize.0.i.i56, 1
  br i1 %cmp1.i.i57, label %while.cond.i.i59, label %while.end.i.i63

while.end.i.i63:                                  ; preds = %while.cond.i.i59
  %conv.i.i60 = zext i32 %newsize.0.i.i56 to i64
  %call.i.i.i61 = tail call ptr @realloc(ptr noundef %d51.sroa.6.0.copyload99, i64 noundef %conv.i.i60) #21, !noalias !75
  %tobool.not.i.i.i62 = icmp eq ptr %call.i.i.i61, null
  br i1 %tobool.not.i.i.i62, label %if.then.i.i.i64, label %data_append_data.exit67

if.then.i.i.i64:                                  ; preds = %while.end.i.i63
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.3, i64 noundef %conv.i.i60) #22, !noalias !75
  unreachable

data_append_data.exit67:                          ; preds = %while.end.i.i63
  %or26.i = tail call i64 @llvm.bswap.i64(i64 %value) #20
  %idx.ext.i65 = and i64 %d51.sroa.0.0.copyload98, 4294967295
  %add.ptr.i66 = getelementptr inbounds i8, ptr %call.i.i.i61, i64 %idx.ext.i65
  store i64 %or26.i, ptr %add.ptr.i66, align 1, !noalias !80
  br label %cleanup

sw.default:                                       ; preds = %entry
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.2, i32 noundef %bits) #25
  unreachable

cleanup:                                          ; preds = %data_append_data.exit67, %data_append_data.exit50, %data_append_data.exit32, %data_append_data.exit
  %add.i.i55.sink = phi i32 [ %add.i.i55, %data_append_data.exit67 ], [ %add.i.i38, %data_append_data.exit50 ], [ %add.i.i20, %data_append_data.exit32 ], [ %add.i.i, %data_append_data.exit ]
  %d51.sroa.0.sroa.6.0.extract.shift.sink.in = phi i64 [ %d51.sroa.0.0.copyload98, %data_append_data.exit67 ], [ %d34.sroa.0.0.copyload88, %data_append_data.exit50 ], [ %d16.sroa.0.0.copyload78, %data_append_data.exit32 ], [ %d15.sroa.0.0.copyload68, %data_append_data.exit ]
  %call.i.i.i61.sink = phi ptr [ %call.i.i.i61, %data_append_data.exit67 ], [ %call.i.i.i44, %data_append_data.exit50 ], [ %call.i.i.i26, %data_append_data.exit32 ], [ %call.i.i.i, %data_append_data.exit ]
  %d51.sroa.8.0.copyload100.sink = phi ptr [ %d51.sroa.8.0.copyload100, %data_append_data.exit67 ], [ %d34.sroa.8.0.copyload90, %data_append_data.exit50 ], [ %d16.sroa.8.0.copyload80, %data_append_data.exit32 ], [ %d15.sroa.8.0.copyload70, %data_append_data.exit ]
  %d51.sroa.0.sroa.6.0.extract.shift.sink = and i64 %d51.sroa.0.sroa.6.0.extract.shift.sink.in, -4294967296
  %d51.sroa.0.sroa.0.0.insert.ext101 = zext i32 %add.i.i55.sink to i64
  %d51.sroa.0.sroa.0.0.insert.insert103 = or i64 %d51.sroa.0.sroa.6.0.extract.shift.sink, %d51.sroa.0.sroa.0.0.insert.ext101
  store i64 %d51.sroa.0.sroa.0.0.insert.insert103, ptr %agg.result, align 8
  %d51.sroa.6.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i64 8
  store ptr %call.i.i.i61.sink, ptr %d51.sroa.6.0.agg.result.sroa_idx, align 8
  %d51.sroa.8.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i64 16
  store ptr %d51.sroa.8.0.copyload100.sink, ptr %d51.sroa.8.0.agg.result.sroa_idx, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @data_append_re(ptr noalias nocapture writeonly sret(%struct.data) align 8 %agg.result, ptr nocapture noundef readonly byval(%struct.data) align 8 %d, i64 noundef %address, i64 noundef %size) local_unnamed_addr #0 {
entry:
  %d5.sroa.0.0.copyload6 = load i64, ptr %d, align 8
  %d5.sroa.6.0.d.sroa_idx = getelementptr inbounds i8, ptr %d, i64 8
  %d5.sroa.6.0.copyload7 = load ptr, ptr %d5.sroa.6.0.d.sroa_idx, align 8
  %d5.sroa.8.0.d.sroa_idx = getelementptr inbounds i8, ptr %d, i64 16
  %d5.sroa.8.0.copyload8 = load ptr, ptr %d5.sroa.8.0.d.sroa_idx, align 8
  %0 = trunc i64 %d5.sroa.0.0.copyload6 to i32
  %add.i.i = add i32 %0, 16
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i, %entry
  %newsize.0.i.i = phi i32 [ 16, %entry ], [ %mul.i.i, %while.cond.i.i ]
  %cmp1.i.i = icmp ugt i32 %add.i.i, %newsize.0.i.i
  %mul.i.i = shl i32 %newsize.0.i.i, 1
  br i1 %cmp1.i.i, label %while.cond.i.i, label %while.end.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  %conv.i.i = zext i32 %newsize.0.i.i to i64
  %call.i.i.i = tail call ptr @realloc(ptr noundef %d5.sroa.6.0.copyload7, i64 noundef %conv.i.i) #21, !noalias !81
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %data_append_data.exit

if.then.i.i.i:                                    ; preds = %while.end.i.i
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.3, i64 noundef %conv.i.i) #22, !noalias !81
  unreachable

data_append_data.exit:                            ; preds = %while.end.i.i
  %d5.sroa.0.sroa.6.0.extract.shift = and i64 %d5.sroa.0.0.copyload6, -4294967296
  %or26.i4 = tail call i64 @llvm.bswap.i64(i64 %size) #20
  %or26.i = tail call i64 @llvm.bswap.i64(i64 %address) #20
  %idx.ext.i = and i64 %d5.sroa.0.0.copyload6, 4294967295
  %add.ptr.i = getelementptr inbounds i8, ptr %call.i.i.i, i64 %idx.ext.i
  store i64 %or26.i, ptr %add.ptr.i, align 1, !noalias !86
  %re.sroa.4.0.add.ptr.i.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i, i64 8
  store i64 %or26.i4, ptr %re.sroa.4.0.add.ptr.i.sroa_idx, align 1, !noalias !86
  %d5.sroa.0.sroa.0.0.insert.ext9 = zext i32 %add.i.i to i64
  %d5.sroa.0.sroa.0.0.insert.insert11 = or i64 %d5.sroa.0.sroa.6.0.extract.shift, %d5.sroa.0.sroa.0.0.insert.ext9
  store i64 %d5.sroa.0.sroa.0.0.insert.insert11, ptr %agg.result, align 8, !tbaa.struct !15
  %d5.sroa.6.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i64 8
  store ptr %call.i.i.i, ptr %d5.sroa.6.0.agg.result.sroa_idx, align 8, !tbaa.struct !19
  %d5.sroa.8.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i64 16
  store ptr %d5.sroa.8.0.copyload8, ptr %d5.sroa.8.0.agg.result.sroa_idx, align 8, !tbaa.struct !18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @data_append_cell(ptr noalias nocapture writeonly sret(%struct.data) align 8 %agg.result, ptr nocapture noundef readonly byval(%struct.data) align 8 %d, i32 noundef %word) local_unnamed_addr #0 {
entry:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %d1.sroa.0.0.copyload = load i64, ptr %d, align 8
  %d1.sroa.4.0.d.sroa_idx = getelementptr inbounds i8, ptr %d, i64 8
  %d1.sroa.4.0.copyload = load ptr, ptr %d1.sroa.4.0.d.sroa_idx, align 8
  %d1.sroa.5.0.d.sroa_idx = getelementptr inbounds i8, ptr %d, i64 16
  %d1.sroa.5.0.copyload = load ptr, ptr %d1.sroa.5.0.d.sroa_idx, align 8
  %0 = trunc i64 %d1.sroa.0.0.copyload to i32
  %add.i.i38.i = add i32 %0, 4
  br label %while.cond.i.i42.i

while.cond.i.i42.i:                               ; preds = %while.cond.i.i42.i, %entry
  %newsize.0.i.i39.i = phi i32 [ 4, %entry ], [ %mul.i.i41.i, %while.cond.i.i42.i ]
  %cmp1.i.i40.i = icmp ugt i32 %add.i.i38.i, %newsize.0.i.i39.i
  %mul.i.i41.i = shl i32 %newsize.0.i.i39.i, 1
  br i1 %cmp1.i.i40.i, label %while.cond.i.i42.i, label %while.end.i.i46.i

while.end.i.i46.i:                                ; preds = %while.cond.i.i42.i
  %conv.i.i43.i = zext i32 %newsize.0.i.i39.i to i64
  %call.i.i.i44.i = tail call ptr @realloc(ptr noundef %d1.sroa.4.0.copyload, i64 noundef %conv.i.i43.i) #21, !noalias !90
  %tobool.not.i.i.i45.i = icmp eq ptr %call.i.i.i44.i, null
  br i1 %tobool.not.i.i.i45.i, label %if.then.i.i.i47.i, label %data_append_integer.exit

if.then.i.i.i47.i:                                ; preds = %while.end.i.i46.i
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.3, i64 noundef %conv.i.i43.i) #22, !noalias !90
  unreachable

data_append_integer.exit:                         ; preds = %while.end.i.i46.i
  %rev.i33.i = tail call i32 @llvm.bswap.i32(i32 %word) #20
  %idx.ext.i48.i = and i64 %d1.sroa.0.0.copyload, 4294967295
  %add.ptr.i49.i = getelementptr inbounds i8, ptr %call.i.i.i44.i, i64 %idx.ext.i48.i
  store i32 %rev.i33.i, ptr %add.ptr.i49.i, align 1, !noalias !95
  %d51.sroa.0.sroa.6.0.extract.shift.sink.i = and i64 %d1.sroa.0.0.copyload, -4294967296
  %d51.sroa.0.sroa.0.0.insert.ext101.i = zext i32 %add.i.i38.i to i64
  %d51.sroa.0.sroa.0.0.insert.insert103.i = or i64 %d51.sroa.0.sroa.6.0.extract.shift.sink.i, %d51.sroa.0.sroa.0.0.insert.ext101.i
  store i64 %d51.sroa.0.sroa.0.0.insert.insert103.i, ptr %agg.result, align 8, !alias.scope !87
  %d51.sroa.6.0.agg.result.sroa_idx.i = getelementptr inbounds i8, ptr %agg.result, i64 8
  store ptr %call.i.i.i44.i, ptr %d51.sroa.6.0.agg.result.sroa_idx.i, align 8, !alias.scope !87
  %d51.sroa.8.0.agg.result.sroa_idx.i = getelementptr inbounds i8, ptr %agg.result, i64 16
  store ptr %d1.sroa.5.0.copyload, ptr %d51.sroa.8.0.agg.result.sroa_idx.i, align 8, !alias.scope !87
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @data_append_addr(ptr noalias nocapture writeonly sret(%struct.data) align 8 %agg.result, ptr nocapture noundef readonly byval(%struct.data) align 8 %d, i64 noundef %addr) local_unnamed_addr #0 {
entry:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %d1.sroa.0.0.copyload = load i64, ptr %d, align 8
  %d1.sroa.4.0.d.sroa_idx = getelementptr inbounds i8, ptr %d, i64 8
  %d1.sroa.4.0.copyload = load ptr, ptr %d1.sroa.4.0.d.sroa_idx, align 8
  %d1.sroa.5.0.d.sroa_idx = getelementptr inbounds i8, ptr %d, i64 16
  %d1.sroa.5.0.copyload = load ptr, ptr %d1.sroa.5.0.d.sroa_idx, align 8
  %0 = trunc i64 %d1.sroa.0.0.copyload to i32
  %add.i.i55.i = add i32 %0, 8
  br label %while.cond.i.i59.i

while.cond.i.i59.i:                               ; preds = %while.cond.i.i59.i, %entry
  %newsize.0.i.i56.i = phi i32 [ 8, %entry ], [ %mul.i.i58.i, %while.cond.i.i59.i ]
  %cmp1.i.i57.i = icmp ugt i32 %add.i.i55.i, %newsize.0.i.i56.i
  %mul.i.i58.i = shl i32 %newsize.0.i.i56.i, 1
  br i1 %cmp1.i.i57.i, label %while.cond.i.i59.i, label %while.end.i.i63.i

while.end.i.i63.i:                                ; preds = %while.cond.i.i59.i
  %conv.i.i60.i = zext i32 %newsize.0.i.i56.i to i64
  %call.i.i.i61.i = tail call ptr @realloc(ptr noundef %d1.sroa.4.0.copyload, i64 noundef %conv.i.i60.i) #21, !noalias !99
  %tobool.not.i.i.i62.i = icmp eq ptr %call.i.i.i61.i, null
  br i1 %tobool.not.i.i.i62.i, label %if.then.i.i.i64.i, label %data_append_integer.exit

if.then.i.i.i64.i:                                ; preds = %while.end.i.i63.i
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.3, i64 noundef %conv.i.i60.i) #22, !noalias !99
  unreachable

data_append_integer.exit:                         ; preds = %while.end.i.i63.i
  %or26.i.i = tail call i64 @llvm.bswap.i64(i64 %addr) #20
  %idx.ext.i65.i = and i64 %d1.sroa.0.0.copyload, 4294967295
  %add.ptr.i66.i = getelementptr inbounds i8, ptr %call.i.i.i61.i, i64 %idx.ext.i65.i
  store i64 %or26.i.i, ptr %add.ptr.i66.i, align 1, !noalias !104
  %d51.sroa.0.sroa.6.0.extract.shift.sink.i = and i64 %d1.sroa.0.0.copyload, -4294967296
  %d51.sroa.0.sroa.0.0.insert.ext101.i = zext i32 %add.i.i55.i to i64
  %d51.sroa.0.sroa.0.0.insert.insert103.i = or i64 %d51.sroa.0.sroa.6.0.extract.shift.sink.i, %d51.sroa.0.sroa.0.0.insert.ext101.i
  store i64 %d51.sroa.0.sroa.0.0.insert.insert103.i, ptr %agg.result, align 8, !alias.scope !96
  %d51.sroa.6.0.agg.result.sroa_idx.i = getelementptr inbounds i8, ptr %agg.result, i64 8
  store ptr %call.i.i.i61.i, ptr %d51.sroa.6.0.agg.result.sroa_idx.i, align 8, !alias.scope !96
  %d51.sroa.8.0.agg.result.sroa_idx.i = getelementptr inbounds i8, ptr %agg.result, i64 16
  store ptr %d1.sroa.5.0.copyload, ptr %d51.sroa.8.0.agg.result.sroa_idx.i, align 8, !alias.scope !96
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @data_append_byte(ptr noalias nocapture writeonly sret(%struct.data) align 8 %agg.result, ptr nocapture noundef readonly byval(%struct.data) align 8 %d, i8 noundef zeroext %byte) local_unnamed_addr #0 {
entry:
  %d1.sroa.0.0.copyload2 = load i64, ptr %d, align 8
  %d1.sroa.6.0.d.sroa_idx = getelementptr inbounds i8, ptr %d, i64 8
  %d1.sroa.6.0.copyload3 = load ptr, ptr %d1.sroa.6.0.d.sroa_idx, align 8
  %d1.sroa.8.0.d.sroa_idx = getelementptr inbounds i8, ptr %d, i64 16
  %d1.sroa.8.0.copyload4 = load ptr, ptr %d1.sroa.8.0.d.sroa_idx, align 8
  %0 = trunc i64 %d1.sroa.0.0.copyload2 to i32
  %add.i.i = add i32 %0, 1
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i, %entry
  %newsize.0.i.i = phi i32 [ 1, %entry ], [ %mul.i.i, %while.cond.i.i ]
  %cmp1.i.i = icmp ugt i32 %add.i.i, %newsize.0.i.i
  %mul.i.i = shl i32 %newsize.0.i.i, 1
  br i1 %cmp1.i.i, label %while.cond.i.i, label %while.end.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  %conv.i.i = zext i32 %newsize.0.i.i to i64
  %call.i.i.i = tail call ptr @realloc(ptr noundef %d1.sroa.6.0.copyload3, i64 noundef %conv.i.i) #21, !noalias !105
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %data_append_data.exit

if.then.i.i.i:                                    ; preds = %while.end.i.i
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.3, i64 noundef %conv.i.i) #22, !noalias !105
  unreachable

data_append_data.exit:                            ; preds = %while.end.i.i
  %d1.sroa.0.sroa.6.0.extract.shift = and i64 %d1.sroa.0.0.copyload2, -4294967296
  %idx.ext.i = and i64 %d1.sroa.0.0.copyload2, 4294967295
  %add.ptr.i = getelementptr inbounds i8, ptr %call.i.i.i, i64 %idx.ext.i
  store i8 %byte, ptr %add.ptr.i, align 1, !noalias !110
  %d1.sroa.0.sroa.0.0.insert.ext5 = zext i32 %add.i.i to i64
  %d1.sroa.0.sroa.0.0.insert.insert7 = or i64 %d1.sroa.0.sroa.6.0.extract.shift, %d1.sroa.0.sroa.0.0.insert.ext5
  store i64 %d1.sroa.0.sroa.0.0.insert.insert7, ptr %agg.result, align 8, !tbaa.struct !15
  %d1.sroa.6.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i64 8
  store ptr %call.i.i.i, ptr %d1.sroa.6.0.agg.result.sroa_idx, align 8, !tbaa.struct !19
  %d1.sroa.8.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i64 16
  store ptr %d1.sroa.8.0.copyload4, ptr %d1.sroa.8.0.agg.result.sroa_idx, align 8, !tbaa.struct !18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @data_append_zeroes(ptr noalias nocapture writeonly sret(%struct.data) align 8 %agg.result, ptr nocapture noundef byval(%struct.data) align 8 %d, i32 noundef %len) local_unnamed_addr #0 {
entry:
  %d5.sroa.5.0.d.sroa_idx = getelementptr inbounds i8, ptr %d, i64 8
  %d5.sroa.5.0.copyload = load ptr, ptr %d5.sroa.5.0.d.sroa_idx, align 8
  %cmp.i = icmp eq i32 %len, 0
  br i1 %cmp.i, label %entry.data_grow_for.exit_crit_edge, label %if.end.i

entry.data_grow_for.exit_crit_edge:               ; preds = %entry
  %.pre = load i32, ptr %d, align 8, !tbaa !23
  %.pre9 = add nuw nsw i32 %.pre, %len
  br label %data_grow_for.exit

if.end.i:                                         ; preds = %entry
  %d5.sroa.0.0.copyload = load i64, ptr %d, align 8
  %0 = trunc i64 %d5.sroa.0.0.copyload to i32
  %add.i = add i32 %0, %len
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i, %if.end.i
  %newsize.0.i = phi i32 [ %len, %if.end.i ], [ %mul.i, %while.cond.i ]
  %cmp1.i = icmp ugt i32 %add.i, %newsize.0.i
  %mul.i = shl i32 %newsize.0.i, 1
  br i1 %cmp1.i, label %while.cond.i, label %while.end.i

while.end.i:                                      ; preds = %while.cond.i
  %conv.i = zext i32 %newsize.0.i to i64
  %call.i.i = tail call ptr @realloc(ptr noundef %d5.sroa.5.0.copyload, i64 noundef %conv.i) #21, !noalias !111
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %data_grow_for.exit

if.then.i.i:                                      ; preds = %while.end.i
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.3, i64 noundef %conv.i) #22, !noalias !111
  unreachable

data_grow_for.exit:                               ; preds = %while.end.i, %entry.data_grow_for.exit_crit_edge
  %add.pre-phi = phi i32 [ %.pre9, %entry.data_grow_for.exit_crit_edge ], [ %add.i, %while.end.i ]
  %1 = phi i32 [ %.pre, %entry.data_grow_for.exit_crit_edge ], [ %0, %while.end.i ]
  %tmp.sroa.5.0 = phi ptr [ %d5.sroa.5.0.copyload, %entry.data_grow_for.exit_crit_edge ], [ %call.i.i, %while.end.i ]
  store ptr %tmp.sroa.5.0, ptr %d5.sroa.5.0.d.sroa_idx, align 8, !tbaa.struct !19
  %idx.ext = zext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, ptr %tmp.sroa.5.0, i64 %idx.ext
  %conv = sext i32 %len to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %add.ptr, i8 0, i64 %conv, i1 false)
  store i32 %add.pre-phi, ptr %d, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %agg.result, ptr noundef nonnull align 8 dereferenceable(24) %d, i64 24, i1 false), !tbaa.struct !15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @data_append_align(ptr noalias nocapture writeonly sret(%struct.data) align 8 %agg.result, ptr nocapture noundef readonly byval(%struct.data) align 8 %d, i32 noundef %align) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr %d, align 8, !tbaa !23
  %add = add i32 %align, -1
  %sub = add i32 %add, %0
  %neg = sub i32 0, %align
  %and = and i32 %sub, %neg
  %sub3 = sub i32 %and, %0
  %d5.sroa.0.0.copyload6 = load i64, ptr %d, align 8
  %d5.sroa.7.0.d.sroa_idx = getelementptr inbounds i8, ptr %d, i64 8
  %d5.sroa.7.0.copyload7 = load ptr, ptr %d5.sroa.7.0.d.sroa_idx, align 8
  %d5.sroa.9.0.d.sroa_idx = getelementptr inbounds i8, ptr %d, i64 16
  %d5.sroa.9.0.copyload8 = load ptr, ptr %d5.sroa.9.0.d.sroa_idx, align 8
  %cmp.i.i = icmp eq i32 %sub3, 0
  %d5.sroa.0.sroa.0.0.extract.trunc = trunc i64 %d5.sroa.0.0.copyload6 to i32
  br i1 %cmp.i.i, label %data_append_zeroes.exit, label %if.end.i.i

if.end.i.i:                                       ; preds = %entry
  %add.i.i = add i32 %sub3, %d5.sroa.0.sroa.0.0.extract.trunc
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i, %if.end.i.i
  %newsize.0.i.i = phi i32 [ %sub3, %if.end.i.i ], [ %mul.i.i, %while.cond.i.i ]
  %cmp1.i.i = icmp ugt i32 %add.i.i, %newsize.0.i.i
  %mul.i.i = shl i32 %newsize.0.i.i, 1
  br i1 %cmp1.i.i, label %while.cond.i.i, label %while.end.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  %conv.i.i = zext i32 %newsize.0.i.i to i64
  %call.i.i.i = tail call ptr @realloc(ptr noundef %d5.sroa.7.0.copyload7, i64 noundef %conv.i.i) #21, !noalias !114
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %data_append_zeroes.exit

if.then.i.i.i:                                    ; preds = %while.end.i.i
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.3, i64 noundef %conv.i.i) #22, !noalias !114
  unreachable

data_append_zeroes.exit:                          ; preds = %while.end.i.i, %entry
  %add.pre-phi.i = phi i32 [ %add.i.i, %while.end.i.i ], [ %d5.sroa.0.sroa.0.0.extract.trunc, %entry ]
  %tmp.sroa.5.0.i = phi ptr [ %call.i.i.i, %while.end.i.i ], [ %d5.sroa.7.0.copyload7, %entry ]
  %d5.sroa.0.sroa.7.0.extract.shift = and i64 %d5.sroa.0.0.copyload6, -4294967296
  %idx.ext.i = and i64 %d5.sroa.0.0.copyload6, 4294967295
  %add.ptr.i = getelementptr inbounds i8, ptr %tmp.sroa.5.0.i, i64 %idx.ext.i
  %conv.i = sext i32 %sub3 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %add.ptr.i, i8 0, i64 %conv.i, i1 false) #20, !noalias !119
  %d5.sroa.0.sroa.0.0.insert.ext9 = zext i32 %add.pre-phi.i to i64
  %d5.sroa.0.sroa.0.0.insert.insert11 = or i64 %d5.sroa.0.sroa.7.0.extract.shift, %d5.sroa.0.sroa.0.0.insert.ext9
  store i64 %d5.sroa.0.sroa.0.0.insert.insert11, ptr %agg.result, align 8, !tbaa.struct !15
  %d5.sroa.7.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i64 8
  store ptr %tmp.sroa.5.0.i, ptr %d5.sroa.7.0.agg.result.sroa_idx, align 8, !tbaa.struct !19
  %d5.sroa.9.0.agg.result.sroa_idx = getelementptr inbounds i8, ptr %agg.result, i64 16
  store ptr %d5.sroa.9.0.copyload8, ptr %d5.sroa.9.0.agg.result.sroa_idx, align 8, !tbaa.struct !18
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind readonly uwtable
define dso_local zeroext i1 @data_is_one_string(ptr nocapture noundef readonly byval(%struct.data) align 8 %d) local_unnamed_addr #11 {
entry:
  %0 = load i32, ptr %d, align 8, !tbaa !23
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %sub = add i32 %0, -1
  %cmp222 = icmp sgt i32 %0, 1
  %val = getelementptr inbounds %struct.data, ptr %d, i64 0, i32 1
  %1 = load ptr, ptr %val, align 8, !tbaa !14
  br i1 %cmp222, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %wide.trip.count = zext i32 %sub to i64
  br label %for.body

for.cond:                                         ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.cond ]
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 %indvars.iv
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !32
  %cmp3 = icmp eq i8 %2, 0
  br i1 %cmp3, label %cleanup, label %for.cond

for.end:                                          ; preds = %for.cond, %for.cond.preheader
  %idxprom9 = sext i32 %sub to i64
  %arrayidx10 = getelementptr inbounds i8, ptr %1, i64 %idxprom9
  %3 = load i8, ptr %arrayidx10, align 1, !tbaa !32
  %cmp12.not = icmp eq i8 %3, 0
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.body, %entry
  %retval.0 = phi i1 [ false, %entry ], [ %cmp12.not, %for.end ], [ false, %for.body ]
  ret i1 %retval.0
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn allocsize(1)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #13

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #13

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #14

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #17

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: inaccessiblememonly nofree nounwind willreturn allocsize(0,1)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #19

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind readonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn allocsize(1) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn }
attributes #14 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #18 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #19 = { inaccessiblememonly nofree nounwind willreturn allocsize(0,1) "alloc-family"="malloc" }
attributes #20 = { nounwind }
attributes #21 = { nounwind allocsize(1) }
attributes #22 = { noreturn nounwind }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { nounwind readnone willreturn }
attributes #25 = { noreturn }
attributes #26 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!5 = !{!6, !10, i64 16}
!6 = !{!"data", !7, i64 0, !10, i64 8, !10, i64 16}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!12, !10, i64 16}
!12 = !{!"marker", !8, i64 0, !7, i64 4, !10, i64 8, !10, i64 16}
!13 = !{!12, !10, i64 8}
!14 = !{!6, !10, i64 8}
!15 = !{i64 0, i64 4, !16, i64 8, i64 8, !17, i64 16, i64 8, !17}
!16 = !{!7, !7, i64 0}
!17 = !{!10, !10, i64 0}
!18 = !{i64 0, i64 8, !17}
!19 = !{i64 0, i64 8, !17, i64 8, i64 8, !17}
!20 = !{!21}
!21 = distinct !{!21, !22, !"data_grow_for: %agg.result"}
!22 = distinct !{!22, !"data_grow_for"}
!23 = !{!6, !7, i64 0}
!24 = !{!25}
!25 = distinct !{!25, !26, !"data_add_marker: %agg.result"}
!26 = distinct !{!26, !"data_add_marker"}
!27 = !{!12, !7, i64 4}
!28 = !{!12, !8, i64 0}
!29 = !{!30}
!30 = distinct !{!30, !31, !"data_grow_for: %agg.result"}
!31 = distinct !{!31, !"data_grow_for"}
!32 = !{!8, !8, i64 0}
!33 = !{!34}
!34 = distinct !{!34, !35, !"data_append_markers: %agg.result"}
!35 = distinct !{!35, !"data_append_markers"}
!36 = !{!37}
!37 = distinct !{!37, !38, !"data_add_marker: %agg.result"}
!38 = distinct !{!38, !"data_add_marker"}
!39 = !{!40}
!40 = distinct !{!40, !41, !"data_grow_for: %agg.result"}
!41 = distinct !{!41, !"data_grow_for"}
!42 = !{!43}
!43 = distinct !{!43, !44, !"data_grow_for: %agg.result"}
!44 = distinct !{!44, !"data_grow_for"}
!45 = !{!46}
!46 = distinct !{!46, !47, !"data_grow_for: %agg.result"}
!47 = distinct !{!47, !"data_grow_for"}
!48 = !{!49, !51}
!49 = distinct !{!49, !50, !"data_grow_for: %agg.result"}
!50 = distinct !{!50, !"data_grow_for"}
!51 = distinct !{!51, !52, !"data_append_data: %agg.result"}
!52 = distinct !{!52, !"data_append_data"}
!53 = !{!51}
!54 = !{!55}
!55 = distinct !{!55, !56, !"data_append_markers: %agg.result"}
!56 = distinct !{!56, !"data_append_markers"}
!57 = !{!58, !60}
!58 = distinct !{!58, !59, !"data_grow_for: %agg.result"}
!59 = distinct !{!59, !"data_grow_for"}
!60 = distinct !{!60, !61, !"data_append_data: %agg.result"}
!61 = distinct !{!61, !"data_append_data"}
!62 = !{!60}
!63 = !{!64, !66}
!64 = distinct !{!64, !65, !"data_grow_for: %agg.result"}
!65 = distinct !{!65, !"data_grow_for"}
!66 = distinct !{!66, !67, !"data_append_data: %agg.result"}
!67 = distinct !{!67, !"data_append_data"}
!68 = !{!66}
!69 = !{!70, !72}
!70 = distinct !{!70, !71, !"data_grow_for: %agg.result"}
!71 = distinct !{!71, !"data_grow_for"}
!72 = distinct !{!72, !73, !"data_append_data: %agg.result"}
!73 = distinct !{!73, !"data_append_data"}
!74 = !{!72}
!75 = !{!76, !78}
!76 = distinct !{!76, !77, !"data_grow_for: %agg.result"}
!77 = distinct !{!77, !"data_grow_for"}
!78 = distinct !{!78, !79, !"data_append_data: %agg.result"}
!79 = distinct !{!79, !"data_append_data"}
!80 = !{!78}
!81 = !{!82, !84}
!82 = distinct !{!82, !83, !"data_grow_for: %agg.result"}
!83 = distinct !{!83, !"data_grow_for"}
!84 = distinct !{!84, !85, !"data_append_data: %agg.result"}
!85 = distinct !{!85, !"data_append_data"}
!86 = !{!84}
!87 = !{!88}
!88 = distinct !{!88, !89, !"data_append_integer: %agg.result"}
!89 = distinct !{!89, !"data_append_integer"}
!90 = !{!91, !93, !88}
!91 = distinct !{!91, !92, !"data_grow_for: %agg.result"}
!92 = distinct !{!92, !"data_grow_for"}
!93 = distinct !{!93, !94, !"data_append_data: %agg.result"}
!94 = distinct !{!94, !"data_append_data"}
!95 = !{!93, !88}
!96 = !{!97}
!97 = distinct !{!97, !98, !"data_append_integer: %agg.result"}
!98 = distinct !{!98, !"data_append_integer"}
!99 = !{!100, !102, !97}
!100 = distinct !{!100, !101, !"data_grow_for: %agg.result"}
!101 = distinct !{!101, !"data_grow_for"}
!102 = distinct !{!102, !103, !"data_append_data: %agg.result"}
!103 = distinct !{!103, !"data_append_data"}
!104 = !{!102, !97}
!105 = !{!106, !108}
!106 = distinct !{!106, !107, !"data_grow_for: %agg.result"}
!107 = distinct !{!107, !"data_grow_for"}
!108 = distinct !{!108, !109, !"data_append_data: %agg.result"}
!109 = distinct !{!109, !"data_append_data"}
!110 = !{!108}
!111 = !{!112}
!112 = distinct !{!112, !113, !"data_grow_for: %agg.result"}
!113 = distinct !{!113, !"data_grow_for"}
!114 = !{!115, !117}
!115 = distinct !{!115, !116, !"data_grow_for: %agg.result"}
!116 = distinct !{!116, !"data_grow_for"}
!117 = distinct !{!117, !118, !"data_append_zeroes: %agg.result"}
!118 = distinct !{!118, !"data_append_zeroes"}
!119 = !{!117}
