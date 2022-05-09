; ModuleID = '/llk/IR_all_yes/scripts/basic/fixdep.c_pt.bc'
source_filename = "../scripts/basic/fixdep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item = type { ptr, i32, i32, [0 x i8] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [15 x i8] c"cmd_%s := %s\0A\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"Usage: fixdep <depfile> <target> <cmdline>\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"fixdep\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"fixdep: error opening file: \00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"fixdep: error fstat'ing file: \00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"fixdep: malloc\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"fixdep: read\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"source_%s := %s\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"deps_%s := \\\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"  %s \\\0A\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"fixdep: parse error; no targets found\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"\0A%s: $(deps_%s)\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"$(deps_%s):\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"include/generated/autoconf.h\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"include/generated/autoksyms.h\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"CONFIG_\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"_MODULE\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"    $(wildcard include/config/%.*s) \\\0A\00", align 1
@hashtab = internal unnamed_addr global [256 x ptr] zeroinitializer, align 16
@.str.18 = private unnamed_addr constant [14 x i8] c"fixdep:malloc\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr nocapture noundef readonly %argv) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i32 %argc, 4
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %1 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 43, i64 1, ptr %0) #15
  tail call void @exit(i32 noundef 1) #16
  unreachable

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds ptr, ptr %argv, i64 1
  %2 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %arrayidx1 = getelementptr inbounds ptr, ptr %argv, i64 2
  %3 = load ptr, ptr %arrayidx1, align 8, !tbaa !5
  %arrayidx2 = getelementptr inbounds ptr, ptr %argv, i64 3
  %4 = load ptr, ptr %arrayidx2, align 8, !tbaa !5
  tail call void (ptr, ...) @xprintf(ptr noundef nonnull @.str, ptr noundef %3, ptr noundef %4)
  %call = tail call fastcc ptr @read_file(ptr noundef %2)
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end46.i, %if.end
  %saw_any_target.0.i = phi i32 [ 0, %if.end ], [ %saw_any_target.3.i, %if.end46.i ]
  %is_first_dep.0.i = phi i32 [ 0, %if.end ], [ %is_first_dep.2.i, %if.end46.i ]
  %m.addr.0.i = phi ptr [ %call, %if.end ], [ %add.ptr50.i, %if.end46.i ]
  br label %while.cond1.i

while.cond1.i:                                    ; preds = %while.body9.i, %while.cond.i
  %m.addr.1.i = phi ptr [ %m.addr.0.i, %while.cond.i ], [ %incdec.ptr.i, %while.body9.i ]
  %5 = load i8, ptr %m.addr.1.i, align 1, !tbaa !9
  switch i8 %5, label %while.cond10.i [
    i8 32, label %while.body9.i
    i8 92, label %while.body9.i
    i8 10, label %while.body9.i
    i8 0, label %while.end51.i
  ]

while.body9.i:                                    ; preds = %while.cond1.i, %while.cond1.i, %while.cond1.i
  %incdec.ptr.i = getelementptr inbounds i8, ptr %m.addr.1.i, i64 1
  br label %while.cond1.i

while.cond10.i:                                   ; preds = %while.body23.i, %while.cond1.i
  %6 = phi i8 [ %.pr.i, %while.body23.i ], [ %5, %while.cond1.i ]
  %p.0.i = phi ptr [ %incdec.ptr24.i, %while.body23.i ], [ %m.addr.1.i, %while.cond1.i ]
  switch i8 %6, label %while.body23.i [
    i8 0, label %while.end25.i
    i8 32, label %while.end25.i
    i8 92, label %while.end25.i
    i8 10, label %while.end25.i
  ]

while.body23.i:                                   ; preds = %while.cond10.i
  %incdec.ptr24.i = getelementptr inbounds i8, ptr %p.0.i, i64 1
  %.pr.i = load i8, ptr %incdec.ptr24.i, align 1, !tbaa !9
  br label %while.cond10.i

while.end25.i:                                    ; preds = %while.cond10.i, %while.cond10.i, %while.cond10.i, %while.cond10.i
  %cmp27.i = icmp eq i8 %6, 0
  %add.ptr.i = getelementptr inbounds i8, ptr %p.0.i, i64 -1
  %7 = load i8, ptr %add.ptr.i, align 1, !tbaa !9
  %cmp30.i = icmp eq i8 %7, 58
  br i1 %cmp30.i, label %if.end46.i, label %if.else.i

if.else.i:                                        ; preds = %while.end25.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %p.0.i to i64
  %sub.ptr.rhs.cast.i = ptrtoint ptr %m.addr.1.i to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv34.i = trunc i64 %sub.ptr.sub.i to i32
  %cmp.i.i.i = icmp slt i32 %conv34.i, 28
  br i1 %cmp.i.i.i, label %if.then36.i, label %str_ends_with.exit.i.i

str_ends_with.exit.i.i:                           ; preds = %if.else.i
  %idx.ext.i24.i.i = and i64 %sub.ptr.sub.i, 4294967295
  %add.ptr.i.i.i = getelementptr inbounds i8, ptr %m.addr.1.i, i64 %idx.ext.i24.i.i
  %add.ptr3.i.i.i = getelementptr inbounds i8, ptr %add.ptr.i.i.i, i64 -28
  %bcmp.i.i.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(28) %add.ptr3.i.i.i, ptr noundef nonnull dereferenceable(28) @.str.13, i64 28) #17
  %tobool.not.i.not.i.i = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %tobool.not.i.not.i.i, label %if.end46.i, label %lor.rhs.i.i

lor.rhs.i.i:                                      ; preds = %str_ends_with.exit.i.i
  %cmp.i7.i.i = icmp ult i32 %conv34.i, 29
  br i1 %cmp.i7.i.i, label %if.then36.i, label %is_ignored_file.exit.i

is_ignored_file.exit.i:                           ; preds = %lor.rhs.i.i
  %add.ptr3.i13.i.i = getelementptr inbounds i8, ptr %add.ptr.i.i.i, i64 -29
  %bcmp.i14.i.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(29) %add.ptr3.i13.i.i, ptr noundef nonnull dereferenceable(29) @.str.14, i64 29) #17
  %tobool.not.i15.i.not.i = icmp eq i32 %bcmp.i14.i.i, 0
  br i1 %tobool.not.i15.i.not.i, label %if.end46.i, label %if.then36.i

if.then36.i:                                      ; preds = %is_ignored_file.exit.i, %lor.rhs.i.i, %if.else.i
  store i8 0, ptr %p.0.i, align 1, !tbaa !9
  %tobool37.not.i = icmp eq i32 %is_first_dep.0.i, 0
  br i1 %tobool37.not.i, label %if.else42.i, label %if.then38.i

if.then38.i:                                      ; preds = %if.then36.i
  %tobool39.not.i = icmp eq i32 %saw_any_target.0.i, 0
  br i1 %tobool39.not.i, label %if.then40.i, label %if.end43.i

if.then40.i:                                      ; preds = %if.then38.i
  tail call void (ptr, ...) @xprintf(ptr noundef nonnull @.str.7, ptr noundef %3, ptr noundef nonnull %m.addr.1.i) #17
  tail call void (ptr, ...) @xprintf(ptr noundef nonnull @.str.8, ptr noundef %3) #17
  br label %if.end43.i

if.else42.i:                                      ; preds = %if.then36.i
  tail call void (ptr, ...) @xprintf(ptr noundef nonnull @.str.9, ptr noundef nonnull %m.addr.1.i) #17
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.else42.i, %if.then40.i, %if.then38.i
  %saw_any_target.2.i = phi i32 [ %saw_any_target.0.i, %if.else42.i ], [ 1, %if.then40.i ], [ 1, %if.then38.i ]
  %call44.i = tail call fastcc ptr @read_file(ptr noundef nonnull %m.addr.1.i) #17
  %call63.i.i = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %call44.i, ptr noundef nonnull @.str.15) #18
  %tobool.not64.i.i = icmp eq ptr %call63.i.i, null
  br i1 %tobool.not64.i.i, label %parse_config_file.exit.i, label %while.body.i.preheader.i

while.body.i.preheader.i:                         ; preds = %if.end43.i
  %call1.i.i = tail call ptr @__ctype_b_loc() #19
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.cond.backedge.i.i, %while.body.i.preheader.i
  %call65.i.i = phi ptr [ %call.i.i, %while.cond.backedge.i.i ], [ %call63.i.i, %while.body.i.preheader.i ]
  %cmp.i.i = icmp ugt ptr %call65.i.i, %call44.i
  %8 = load ptr, ptr %call1.i.i, align 8, !tbaa !5
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %while.cond10.i.i.preheader

while.cond10.i.i.preheader:                       ; preds = %land.lhs.true.i.i, %while.body.i.i
  br label %while.cond10.i.i

land.lhs.true.i.i:                                ; preds = %while.body.i.i
  %arrayidx.i.i = getelementptr inbounds i8, ptr %call65.i.i, i64 -1
  %9 = load i8, ptr %arrayidx.i.i, align 1, !tbaa !9
  %idxprom.i.i = sext i8 %9 to i64
  %arrayidx2.i.i = getelementptr inbounds i16, ptr %8, i64 %idxprom.i.i
  %10 = load i16, ptr %arrayidx2.i.i, align 2, !tbaa !10
  %11 = and i16 %10, 8
  %tobool4.not.i.i = icmp ne i16 %11, 0
  %cmp7.i.i = icmp eq i8 %9, 95
  %or.cond.i.i = select i1 %tobool4.not.i.i, i1 true, i1 %cmp7.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %while.cond10.i.i.preheader

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  %add.ptr.i.i = getelementptr inbounds i8, ptr %call65.i.i, i64 7
  br label %while.cond.backedge.i.i

while.cond.backedge.i.i:                          ; preds = %define_config.exit.i.i.i, %land.lhs.true4.i.i.i.i, %16, %if.then.i.i
  %p.addr.0.be.i.i = phi ptr [ %add.ptr.i.i, %if.then.i.i ], [ %q.0.ptr.i.i.le, %define_config.exit.i.i.i ], [ %q.0.ptr.i.i.le, %16 ], [ %q.0.ptr.i.i.le, %land.lhs.true4.i.i.i.i ]
  %call.i.i = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %p.addr.0.be.i.i, ptr noundef nonnull @.str.15) #18
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %parse_config_file.exit.i, label %while.body.i.i

while.cond10.i.i:                                 ; preds = %while.cond10.i.i, %while.cond10.i.i.preheader
  %q.0.idx.i.i = phi i64 [ %q.0.add56.i.i, %while.cond10.i.i ], [ 7, %while.cond10.i.i.preheader ]
  %q.0.ptr.i.i = getelementptr inbounds i8, ptr %call65.i.i, i64 %q.0.idx.i.i
  %12 = load i8, ptr %q.0.ptr.i.i, align 1, !tbaa !9
  %idxprom13.i.i = sext i8 %12 to i64
  %arrayidx14.i.i = getelementptr inbounds i16, ptr %8, i64 %idxprom13.i.i
  %13 = load i16, ptr %arrayidx14.i.i, align 2, !tbaa !10
  %14 = and i16 %13, 8
  %tobool17.not.i.i = icmp ne i16 %14, 0
  %cmp19.i.i = icmp eq i8 %12, 95
  %or.cond57.i.i = select i1 %tobool17.not.i.i, i1 true, i1 %cmp19.i.i
  %q.0.add56.i.i = add nuw nsw i64 %q.0.idx.i.i, 1
  br i1 %or.cond57.i.i, label %while.cond10.i.i, label %while.end.i.i

while.end.i.i:                                    ; preds = %while.cond10.i.i
  %q.0.ptr.i.i.le = getelementptr inbounds i8, ptr %call65.i.i, i64 %q.0.idx.i.i
  %add.ptr9.ptr.i.i = getelementptr inbounds i8, ptr %call65.i.i, i64 7
  %15 = trunc i64 %q.0.idx.i.i to i32
  %conv22.i.i = add i32 %15, -7
  %cmp.i.i84.i = icmp slt i32 %conv22.i.i, 7
  br i1 %cmp.i.i84.i, label %str_ends_with.exit.thread.i.i, label %str_ends_with.exit.i88.i

str_ends_with.exit.i88.i:                         ; preds = %while.end.i.i
  %idx.ext.i66.i.i = zext i32 %conv22.i.i to i64
  %add.ptr3.i.i85.i = getelementptr inbounds i8, ptr %call65.i.i, i64 %idx.ext.i66.i.i
  %bcmp.i.i86.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %add.ptr3.i.i85.i, ptr noundef nonnull dereferenceable(7) @.str.16, i64 7) #17
  %tobool.not.i.not.i87.i = icmp eq i32 %bcmp.i.i86.i, 0
  %q.0.add.i.i = add nsw i64 %q.0.idx.i.i, -7
  br i1 %tobool.not.i.not.i87.i, label %16, label %str_ends_with.exit.thread.i.i

str_ends_with.exit.thread.i.i:                    ; preds = %str_ends_with.exit.i88.i, %while.end.i.i
  br label %16

16:                                               ; preds = %str_ends_with.exit.thread.i.i, %str_ends_with.exit.i88.i
  %17 = phi i64 [ %q.0.idx.i.i, %str_ends_with.exit.thread.i.i ], [ %q.0.add.i.i, %str_ends_with.exit.i88.i ]
  %cmp28.i.i = icmp sgt i64 %17, 7
  br i1 %cmp28.i.i, label %if.then30.i.i, label %while.cond.backedge.i.i

if.then30.i.i:                                    ; preds = %16
  %18 = trunc i64 %17 to i32
  %conv34.i.i = add i32 %18, -7
  %cmp4.not.i.i.i.i = icmp eq i32 %conv34.i.i, 0
  br i1 %cmp4.not.i.i.i.i, label %strhash.exit.i.i.i, label %for.body.preheader.i.i.i.i

for.body.preheader.i.i.i.i:                       ; preds = %if.then30.i.i
  %wide.trip.count.i.i.i.i = zext i32 %conv34.i.i to i64
  %19 = add nsw i64 %wide.trip.count.i.i.i.i, -1
  %xtraiter = and i64 %wide.trip.count.i.i.i.i, 3
  %20 = icmp ult i64 %19, 3
  br i1 %20, label %strhash.exit.i.i.i.loopexit.unr-lcssa, label %for.body.preheader.i.i.i.i.new

for.body.preheader.i.i.i.i.new:                   ; preds = %for.body.preheader.i.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i.i, 4294967292
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.body.i.i.i.i, %for.body.preheader.i.i.i.i.new
  %indvars.iv.i.i.i.i = phi i64 [ 0, %for.body.preheader.i.i.i.i.new ], [ %indvars.iv.next.i.i.i.i.3, %for.body.i.i.i.i ]
  %hash.06.i.i.i.i = phi i32 [ -2128831035, %for.body.preheader.i.i.i.i.new ], [ %mul.i.i.i.i.3, %for.body.i.i.i.i ]
  %niter = phi i64 [ 0, %for.body.preheader.i.i.i.i.new ], [ %niter.next.3, %for.body.i.i.i.i ]
  %arrayidx.i.i.i.i = getelementptr inbounds i8, ptr %add.ptr9.ptr.i.i, i64 %indvars.iv.i.i.i.i
  %21 = load i8, ptr %arrayidx.i.i.i.i, align 1, !tbaa !9
  %conv.i.i.i.i = sext i8 %21 to i32
  %xor.i.i.i.i = xor i32 %hash.06.i.i.i.i, %conv.i.i.i.i
  %mul.i.i.i.i = mul i32 %xor.i.i.i.i, 16777619
  %indvars.iv.next.i.i.i.i = or i64 %indvars.iv.i.i.i.i, 1
  %arrayidx.i.i.i.i.1 = getelementptr inbounds i8, ptr %add.ptr9.ptr.i.i, i64 %indvars.iv.next.i.i.i.i
  %22 = load i8, ptr %arrayidx.i.i.i.i.1, align 1, !tbaa !9
  %conv.i.i.i.i.1 = sext i8 %22 to i32
  %xor.i.i.i.i.1 = xor i32 %mul.i.i.i.i, %conv.i.i.i.i.1
  %mul.i.i.i.i.1 = mul i32 %xor.i.i.i.i.1, 16777619
  %indvars.iv.next.i.i.i.i.1 = or i64 %indvars.iv.i.i.i.i, 2
  %arrayidx.i.i.i.i.2 = getelementptr inbounds i8, ptr %add.ptr9.ptr.i.i, i64 %indvars.iv.next.i.i.i.i.1
  %23 = load i8, ptr %arrayidx.i.i.i.i.2, align 1, !tbaa !9
  %conv.i.i.i.i.2 = sext i8 %23 to i32
  %xor.i.i.i.i.2 = xor i32 %mul.i.i.i.i.1, %conv.i.i.i.i.2
  %mul.i.i.i.i.2 = mul i32 %xor.i.i.i.i.2, 16777619
  %indvars.iv.next.i.i.i.i.2 = or i64 %indvars.iv.i.i.i.i, 3
  %arrayidx.i.i.i.i.3 = getelementptr inbounds i8, ptr %add.ptr9.ptr.i.i, i64 %indvars.iv.next.i.i.i.i.2
  %24 = load i8, ptr %arrayidx.i.i.i.i.3, align 1, !tbaa !9
  %conv.i.i.i.i.3 = sext i8 %24 to i32
  %xor.i.i.i.i.3 = xor i32 %mul.i.i.i.i.2, %conv.i.i.i.i.3
  %mul.i.i.i.i.3 = mul i32 %xor.i.i.i.i.3, 16777619
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i, 4
  %niter.next.3 = add i64 %niter, 4
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %strhash.exit.i.i.i.loopexit.unr-lcssa, label %for.body.i.i.i.i

strhash.exit.i.i.i.loopexit.unr-lcssa:            ; preds = %for.body.i.i.i.i, %for.body.preheader.i.i.i.i
  %mul.i.i.i.i.lcssa.ph = phi i32 [ undef, %for.body.preheader.i.i.i.i ], [ %mul.i.i.i.i.3, %for.body.i.i.i.i ]
  %indvars.iv.i.i.i.i.unr = phi i64 [ 0, %for.body.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.3, %for.body.i.i.i.i ]
  %hash.06.i.i.i.i.unr = phi i32 [ -2128831035, %for.body.preheader.i.i.i.i ], [ %mul.i.i.i.i.3, %for.body.i.i.i.i ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %strhash.exit.i.i.i, label %for.body.i.i.i.i.epil

for.body.i.i.i.i.epil:                            ; preds = %for.body.i.i.i.i.epil, %strhash.exit.i.i.i.loopexit.unr-lcssa
  %indvars.iv.i.i.i.i.epil = phi i64 [ %indvars.iv.next.i.i.i.i.epil, %for.body.i.i.i.i.epil ], [ %indvars.iv.i.i.i.i.unr, %strhash.exit.i.i.i.loopexit.unr-lcssa ]
  %hash.06.i.i.i.i.epil = phi i32 [ %mul.i.i.i.i.epil, %for.body.i.i.i.i.epil ], [ %hash.06.i.i.i.i.unr, %strhash.exit.i.i.i.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.next, %for.body.i.i.i.i.epil ], [ 0, %strhash.exit.i.i.i.loopexit.unr-lcssa ]
  %arrayidx.i.i.i.i.epil = getelementptr inbounds i8, ptr %add.ptr9.ptr.i.i, i64 %indvars.iv.i.i.i.i.epil
  %25 = load i8, ptr %arrayidx.i.i.i.i.epil, align 1, !tbaa !9
  %conv.i.i.i.i.epil = sext i8 %25 to i32
  %xor.i.i.i.i.epil = xor i32 %hash.06.i.i.i.i.epil, %conv.i.i.i.i.epil
  %mul.i.i.i.i.epil = mul i32 %xor.i.i.i.i.epil, 16777619
  %indvars.iv.next.i.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %strhash.exit.i.i.i, label %for.body.i.i.i.i.epil, !llvm.loop !12

strhash.exit.i.i.i:                               ; preds = %for.body.i.i.i.i.epil, %strhash.exit.i.i.i.loopexit.unr-lcssa, %if.then30.i.i
  %hash.0.lcssa.i.i.i.i = phi i32 [ -2128831035, %if.then30.i.i ], [ %mul.i.i.i.i.lcssa.ph, %strhash.exit.i.i.i.loopexit.unr-lcssa ], [ %mul.i.i.i.i.epil, %for.body.i.i.i.i.epil ]
  %rem.i.i.i.i = and i32 %hash.0.lcssa.i.i.i.i, 255
  %idxprom.i.i.i.i = zext i32 %rem.i.i.i.i to i64
  %arrayidx.i9.i.i.i = getelementptr inbounds [256 x ptr], ptr @hashtab, i64 0, i64 %idxprom.i.i.i.i
  %aux.014.i.i.i.i = load ptr, ptr %arrayidx.i9.i.i.i, align 8, !tbaa !5
  %tobool.not15.i.i.i.i = icmp eq ptr %aux.014.i.i.i.i, null
  %.pre.i.i.i = sext i32 %conv34.i.i to i64
  br i1 %tobool.not15.i.i.i.i, label %if.end.i58.i.i, label %for.body.i11.i.i.i

for.body.i11.i.i.i:                               ; preds = %for.inc.i.i.i.i, %strhash.exit.i.i.i
  %aux.016.i.i.i.i = phi ptr [ %aux.0.i.i.i.i, %for.inc.i.i.i.i ], [ %aux.014.i.i.i.i, %strhash.exit.i.i.i ]
  %hash1.i.i.i.i = getelementptr inbounds %struct.item, ptr %aux.016.i.i.i.i, i64 0, i32 2
  %26 = load i32, ptr %hash1.i.i.i.i, align 4, !tbaa !14
  %cmp.i.i.i.i = icmp eq i32 %26, %hash.0.lcssa.i.i.i.i
  br i1 %cmp.i.i.i.i, label %land.lhs.true.i.i.i.i, label %for.inc.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %for.body.i11.i.i.i
  %len2.i.i.i.i = getelementptr inbounds %struct.item, ptr %aux.016.i.i.i.i, i64 0, i32 1
  %27 = load i32, ptr %len2.i.i.i.i, align 8, !tbaa !14
  %cmp3.i.i.i.i = icmp eq i32 %27, %conv34.i.i
  br i1 %cmp3.i.i.i.i, label %land.lhs.true4.i.i.i.i, label %for.inc.i.i.i.i

land.lhs.true4.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %name5.i.i.i.i = getelementptr inbounds %struct.item, ptr %aux.016.i.i.i.i, i64 0, i32 3
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull %name5.i.i.i.i, ptr nonnull %add.ptr9.ptr.i.i, i64 %.pre.i.i.i) #17
  %cmp6.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %cmp6.i.i.i.i, label %while.cond.backedge.i.i, label %for.inc.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %land.lhs.true4.i.i.i.i, %land.lhs.true.i.i.i.i, %for.body.i11.i.i.i
  %aux.0.i.i.i.i = load ptr, ptr %aux.016.i.i.i.i, align 8, !tbaa !5
  %tobool.not.i.i.i.i = icmp eq ptr %aux.0.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i58.i.i, label %for.body.i11.i.i.i

if.end.i58.i.i:                                   ; preds = %for.inc.i.i.i.i, %strhash.exit.i.i.i
  %add.i.i.i.i = add nsw i64 %.pre.i.i.i, 16
  %call.i.i.i.i = tail call noalias ptr @malloc(i64 noundef %add.i.i.i.i) #20
  %tobool.not.i13.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i13.i.i.i, label %if.then.i.i.i.i, label %define_config.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end.i58.i.i
  tail call void @perror(ptr noundef nonnull @.str.18) #15
  tail call void @exit(i32 noundef 1) #16
  unreachable

define_config.exit.i.i.i:                         ; preds = %if.end.i58.i.i
  %name1.i.i.i.i = getelementptr inbounds %struct.item, ptr %call.i.i.i.i, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %name1.i.i.i.i, ptr nonnull align 1 %add.ptr9.ptr.i.i, i64 %.pre.i.i.i, i1 false) #17
  %len3.i.i.i.i = getelementptr inbounds %struct.item, ptr %call.i.i.i.i, i64 0, i32 1
  store i32 %conv34.i.i, ptr %len3.i.i.i.i, align 8, !tbaa !14
  %hash4.i.i.i.i = getelementptr inbounds %struct.item, ptr %call.i.i.i.i, i64 0, i32 2
  store i32 %hash.0.lcssa.i.i.i.i, ptr %hash4.i.i.i.i, align 4, !tbaa !14
  store ptr %aux.014.i.i.i.i, ptr %call.i.i.i.i, align 8, !tbaa !5
  store ptr %call.i.i.i.i, ptr %arrayidx.i9.i.i.i, align 8, !tbaa !5
  tail call void (ptr, ...) @xprintf(ptr noundef nonnull @.str.17, i32 noundef %conv34.i.i, ptr noundef nonnull %add.ptr9.ptr.i.i) #17
  br label %while.cond.backedge.i.i

parse_config_file.exit.i:                         ; preds = %while.cond.backedge.i.i, %if.end43.i
  tail call void @free(ptr noundef %call44.i) #17
  br label %if.end46.i

if.end46.i:                                       ; preds = %parse_config_file.exit.i, %is_ignored_file.exit.i, %str_ends_with.exit.i.i, %while.end25.i
  %saw_any_target.3.i = phi i32 [ %saw_any_target.0.i, %is_ignored_file.exit.i ], [ %saw_any_target.2.i, %parse_config_file.exit.i ], [ %saw_any_target.0.i, %while.end25.i ], [ %saw_any_target.0.i, %str_ends_with.exit.i.i ]
  %is_first_dep.2.i = phi i32 [ %is_first_dep.0.i, %is_ignored_file.exit.i ], [ 0, %parse_config_file.exit.i ], [ 1, %while.end25.i ], [ %is_first_dep.0.i, %str_ends_with.exit.i.i ]
  %add.ptr50.i = getelementptr inbounds i8, ptr %p.0.i, i64 1
  br i1 %cmp27.i, label %while.end51.i, label %while.cond.i

while.end51.i:                                    ; preds = %if.end46.i, %while.cond1.i
  %saw_any_target.4.i = phi i32 [ %saw_any_target.0.i, %while.cond1.i ], [ %saw_any_target.3.i, %if.end46.i ]
  %tobool52.not.i = icmp eq i32 %saw_any_target.4.i, 0
  br i1 %tobool52.not.i, label %if.then53.i, label %parse_dep_file.exit

if.then53.i:                                      ; preds = %while.end51.i
  %28 = load ptr, ptr @stderr, align 8, !tbaa !5
  %29 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 38, i64 1, ptr %28) #15
  tail call void @exit(i32 noundef 1) #16
  unreachable

parse_dep_file.exit:                              ; preds = %while.end51.i
  tail call void (ptr, ...) @xprintf(ptr noundef nonnull @.str.11, ptr noundef %3, ptr noundef %3) #17
  tail call void (ptr, ...) @xprintf(ptr noundef nonnull @.str.12, ptr noundef %3) #17
  tail call void @free(ptr noundef %call) #17
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @xprintf(ptr nocapture noundef readonly %format, ...) unnamed_addr #0 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ap) #17
  call void @llvm.va_start(ptr nonnull %ap)
  %0 = load ptr, ptr @stdout, align 8, !tbaa !5, !noalias !16
  %call.i = call i32 @vfprintf(ptr noundef %0, ptr noundef %format, ptr noundef nonnull %ap) #17
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @perror(ptr noundef nonnull @.str.2) #21
  call void @exit(i32 noundef 1) #16
  unreachable

if.end:                                           ; preds = %entry
  call void @llvm.va_end(ptr nonnull %ap)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ap) #17
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noalias ptr @read_file(ptr nocapture noundef readonly %filename) unnamed_addr #0 {
entry:
  %st = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %st) #17
  %call = tail call i32 (ptr, i32, ...) @open(ptr noundef %filename, i32 noundef 0) #17
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %1 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 28, i64 1, ptr %0) #21
  tail call void @perror(ptr noundef %filename) #21
  tail call void @exit(i32 noundef 2) #16
  unreachable

if.end:                                           ; preds = %entry
  %call.i = call i32 @__fxstat(i32 noundef 1, i32 noundef %call, ptr noundef nonnull %st) #17
  %cmp3 = icmp slt i32 %call.i, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  %3 = call i64 @fwrite(ptr nonnull @.str.4, i64 30, i64 1, ptr %2) #21
  call void @perror(ptr noundef %filename) #21
  call void @exit(i32 noundef 2) #16
  unreachable

if.end6:                                          ; preds = %if.end
  %st_size = getelementptr inbounds %struct.stat, ptr %st, i64 0, i32 8
  %4 = load i64, ptr %st_size, align 8, !tbaa !19
  %add = add nsw i64 %4, 1
  %call7 = call noalias ptr @malloc(i64 noundef %add) #20
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  call void @perror(ptr noundef nonnull @.str.5) #21
  call void @exit(i32 noundef 2) #16
  unreachable

if.end9:                                          ; preds = %if.end6
  %call11 = call i64 @read(i32 noundef %call, ptr noundef nonnull %call7, i64 noundef %4) #17
  %5 = load i64, ptr %st_size, align 8, !tbaa !19
  %cmp13.not = icmp eq i64 %call11, %5
  br i1 %cmp13.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end9
  call void @perror(ptr noundef nonnull @.str.6) #21
  call void @exit(i32 noundef 2) #16
  unreachable

if.end15:                                         ; preds = %if.end9
  %arrayidx = getelementptr inbounds i8, ptr %call7, i64 %call11
  store i8 0, ptr %arrayidx, align 1, !tbaa !9
  %call17 = call i32 @close(i32 noundef %call) #17
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %st) #17
  ret ptr %call7
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

; Function Attrs: nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #6

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

declare i32 @close(i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @__fxstat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #14

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { argmemonly nofree nounwind willreturn }
attributes #13 = { nofree nounwind }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { cold nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { nounwind }
attributes #18 = { nounwind readonly willreturn }
attributes #19 = { nounwind readnone willreturn }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"short", !7, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !7, i64 0}
!16 = !{!17}
!17 = distinct !{!17, !18, !"vprintf: %__fmt"}
!18 = distinct !{!18, !"vprintf"}
!19 = !{!20, !21, i64 48}
!20 = !{!"stat", !21, i64 0, !21, i64 8, !21, i64 16, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36, !21, i64 40, !21, i64 48, !21, i64 56, !21, i64 64, !22, i64 72, !22, i64 88, !22, i64 104, !7, i64 120}
!21 = !{!"long", !7, i64 0}
!22 = !{!"timespec", !21, i64 0, !21, i64 8}
