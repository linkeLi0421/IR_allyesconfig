; ModuleID = '/llk/IR_all_yes/scripts/dtc/fdtoverlay.c_pt.bc'
source_filename = "../scripts/dtc/fdtoverlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.fdt_header = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@verbose = dso_local local_unnamed_addr global i32 0, align 4
@usage_short_opts = internal constant [8 x i8] c"i:o:vhV\00", align 1
@usage_long_opts = internal constant [6 x %struct.option] [%struct.option { ptr @.str.7, i32 1, ptr null, i32 105 }, %struct.option { ptr @.str.8, i32 1, ptr null, i32 111 }, %struct.option { ptr @.str.9, i32 0, ptr null, i32 118 }, %struct.option { ptr @.str.10, i32 0, ptr null, i32 104 }, %struct.option { ptr @.str.11, i32 0, ptr null, i32 86 }, %struct.option zeroinitializer], align 16
@usage_synopsis = internal constant [213 x i8] c"apply a number of overlays to a base blob\0A\09fdtoverlay <options> [<overlay.dtbo> [<overlay.dtbo>]]\0A\0A<type>\09s=string, i=int, u=unsigned, x=hex\0A\09Optional modifier prefix:\0A\09\09hh or b=byte, h=2 byte, l=4 byte (default)\00", align 16
@usage_opts_help = internal constant [6 x ptr] [ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr null], align 16
@.str = private unnamed_addr constant [15 x i8] c"unknown option\00", align 1
@optarg = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"missing input file\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"missing output file\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"missing overlay file(s)\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"input  = %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"output = %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"overlay[%d] = %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"Input base DT blob\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"Output DT blob\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"Verbose messages\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"Print this help and exit\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"Print version and exit\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.17 = private unnamed_addr constant [22 x i8] c"\0AFailed to read '%s'\0A\00", align 1
@.str.18 = private unnamed_addr constant [48 x i8] c"\0ABase blob is incomplete (%lu / %u bytes read)\0A\00", align 1
@.str.19 = private unnamed_addr constant [51 x i8] c"\0AOverlay '%s' is incomplete (%lu / %u bytes read)\0A\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"\0AFailed to write '%s'\0A\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"malloc() failed\0A\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"FATAL ERROR: \00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"\0AFailed to make temporary copy: %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"\0AFailed to apply '%s': %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"realloc() failed (len=%zd)\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) local_unnamed_addr #0 {
entry:
  %buf_len.i = alloca i64, align 8
  %ov_len.i = alloca i64, align 8
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %sw.bb3, %entry
  %input_filename.0.ph = phi ptr [ %0, %sw.bb3 ], [ null, %entry ]
  %output_filename.0.ph = phi ptr [ %output_filename.0.ph221, %sw.bb3 ], [ null, %entry ]
  br label %while.cond.outer220

while.cond.outer220:                              ; preds = %sw.bb4, %while.cond.outer
  %output_filename.0.ph221 = phi ptr [ %output_filename.0.ph, %while.cond.outer ], [ %1, %sw.bb4 ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %while.cond.outer220
  %call = tail call i32 @getopt_long(i32 noundef %argc, ptr noundef %argv, ptr noundef nonnull @usage_short_opts, ptr noundef nonnull @usage_long_opts, ptr noundef null) #15
  switch i32 %call, label %while.cond.backedge [
    i32 -1, label %while.end
    i32 104, label %sw.bb
    i32 86, label %sw.bb1
    i32 63, label %sw.bb2
    i32 105, label %sw.bb3
    i32 111, label %sw.bb4
    i32 118, label %sw.bb5
  ]

while.cond.backedge:                              ; preds = %sw.bb5, %while.cond
  br label %while.cond

sw.bb:                                            ; preds = %while.cond
  tail call void @util_usage(ptr noundef null, ptr noundef nonnull @usage_synopsis, ptr noundef nonnull @usage_short_opts, ptr noundef nonnull @usage_long_opts, ptr noundef nonnull @usage_opts_help) #16
  unreachable

sw.bb1:                                           ; preds = %while.cond
  tail call void @util_version() #16
  unreachable

sw.bb2:                                           ; preds = %while.cond
  tail call void @util_usage(ptr noundef nonnull @.str, ptr noundef nonnull @usage_synopsis, ptr noundef nonnull @usage_short_opts, ptr noundef nonnull @usage_long_opts, ptr noundef nonnull @usage_opts_help) #16
  unreachable

sw.bb3:                                           ; preds = %while.cond
  %0 = load ptr, ptr @optarg, align 8, !tbaa !5
  br label %while.cond.outer

sw.bb4:                                           ; preds = %while.cond
  %1 = load ptr, ptr @optarg, align 8, !tbaa !5
  br label %while.cond.outer220

sw.bb5:                                           ; preds = %while.cond
  store i32 1, ptr @verbose, align 4, !tbaa !9
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  %tobool.not = icmp eq ptr %input_filename.0.ph, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  tail call void @util_usage(ptr noundef nonnull @.str.1, ptr noundef nonnull @usage_synopsis, ptr noundef nonnull @usage_short_opts, ptr noundef nonnull @usage_long_opts, ptr noundef nonnull @usage_opts_help) #16
  unreachable

if.end:                                           ; preds = %while.end
  %tobool6.not = icmp eq ptr %output_filename.0.ph221, null
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  tail call void @util_usage(ptr noundef nonnull @.str.2, ptr noundef nonnull @usage_synopsis, ptr noundef nonnull @usage_short_opts, ptr noundef nonnull @usage_long_opts, ptr noundef nonnull @usage_opts_help) #16
  unreachable

if.end8:                                          ; preds = %if.end
  %2 = load i32, ptr @optind, align 4, !tbaa !9
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds ptr, ptr %argv, i64 %idx.ext
  %sub = sub i32 %argc, %2
  %cmp9 = icmp slt i32 %sub, 1
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end8
  tail call void @util_usage(ptr noundef nonnull @.str.3, ptr noundef nonnull @usage_synopsis, ptr noundef nonnull @usage_short_opts, ptr noundef nonnull @usage_long_opts, ptr noundef nonnull @usage_opts_help) #16
  unreachable

if.end11:                                         ; preds = %if.end8
  %3 = load i32, ptr @verbose, align 4, !tbaa !9
  %tobool12.not = icmp eq i32 %3, 0
  br i1 %tobool12.not, label %if.end18, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end11
  %call14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, ptr noundef nonnull %input_filename.0.ph)
  %call15 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, ptr noundef nonnull %output_filename.0.ph221)
  %wide.trip.count = zext i32 %sub to i64
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds ptr, ptr %add.ptr, i64 %indvars.iv
  %4 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %5 = trunc i64 %indvars.iv to i32
  %call17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6, i32 noundef %5, ptr noundef %4)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %if.end18, label %for.body

if.end18:                                         ; preds = %for.body, %if.end11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf_len.i) #15
  %call.i = call ptr @utilfdt_read(ptr noundef nonnull %input_filename.0.ph, ptr noundef nonnull %buf_len.i) #15
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end18
  %6 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.17, ptr noundef nonnull %input_filename.0.ph) #17
  br label %do_fdtoverlay.exit.thread

if.end.i:                                         ; preds = %if.end18
  %totalsize.i = getelementptr inbounds %struct.fdt_header, ptr %call.i, i64 0, i32 1
  %7 = load i8, ptr %totalsize.i, align 1, !tbaa !11
  %conv.i.i = zext i8 %7 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr inbounds i8, ptr %totalsize.i, i64 1
  %8 = load i8, ptr %arrayidx1.i.i, align 1, !tbaa !11
  %conv2.i.i = zext i8 %8 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr inbounds i8, ptr %totalsize.i, i64 2
  %9 = load i8, ptr %arrayidx4.i.i, align 1, !tbaa !11
  %conv5.i.i = zext i8 %9 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr inbounds i8, ptr %totalsize.i, i64 3
  %10 = load i8, ptr %arrayidx8.i.i, align 1, !tbaa !11
  %conv9.i.i = zext i8 %10 to i32
  %or10.i.i = or i32 %or7.i.i, %conv9.i.i
  %conv.i = zext i32 %or10.i.i to i64
  %11 = load i64, ptr %buf_len.i, align 8, !tbaa !12
  %cmp.i = icmp ult i64 %11, %conv.i
  br i1 %cmp.i, label %if.then4.i, label %if.end8.i

if.then4.i:                                       ; preds = %if.end.i
  %12 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call7.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str.18, i64 noundef %11, i32 noundef %or10.i.i) #17
  br label %do_fdtoverlay.exit.thread

if.end8.i:                                        ; preds = %if.end.i
  %conv9.i = sext i32 %sub to i64
  %mul.i = shl nsw i64 %conv9.i, 3
  %calloc.i = call ptr @calloc(i64 1, i64 %mul.i) #15
  %tobool.not.i.i = icmp eq ptr %calloc.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %xmalloc.exit.i

if.then.i.i:                                      ; preds = %if.end8.i
  call void (ptr, ...) @die(ptr noundef nonnull @.str.21) #16
  unreachable

xmalloc.exit.i:                                   ; preds = %if.end8.i
  %cmp13231.i = icmp sgt i32 %sub, 0
  br i1 %cmp13231.i, label %for.body.preheader.i, label %for.end.i

for.body.preheader.i:                             ; preds = %xmalloc.exit.i
  %wide.trip.count.i = zext i32 %sub to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %for.body.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.body.preheader.i ], [ %indvars.iv.next.i, %for.inc.i ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ov_len.i) #15
  %arrayidx.i = getelementptr inbounds ptr, ptr %add.ptr, i64 %indvars.iv.i
  %13 = load ptr, ptr %arrayidx.i, align 8, !tbaa !5
  %call15.i = call ptr @utilfdt_read(ptr noundef %13, ptr noundef nonnull %ov_len.i) #15
  %arrayidx17.i = getelementptr inbounds ptr, ptr %calloc.i, i64 %indvars.iv.i
  store ptr %call15.i, ptr %arrayidx17.i, align 8, !tbaa !5
  %tobool20.not.i = icmp eq ptr %call15.i, null
  br i1 %tobool20.not.i, label %if.then21.i, label %if.end25.i

if.then21.i:                                      ; preds = %for.body.i
  %idxprom.le.i = and i64 %indvars.iv.i, 4294967295
  %arrayidx.le227.i = getelementptr inbounds ptr, ptr %add.ptr, i64 %idxprom.le.i
  %14 = load ptr, ptr @stderr, align 8, !tbaa !5
  %15 = load ptr, ptr %arrayidx.le227.i, align 8, !tbaa !5
  %call24.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.17, ptr noundef %15) #17
  br label %cleanup.thread.i

if.end25.i:                                       ; preds = %for.body.i
  %totalsize28.i = getelementptr inbounds %struct.fdt_header, ptr %call15.i, i64 0, i32 1
  %16 = load i8, ptr %totalsize28.i, align 1, !tbaa !11
  %conv.i147.i = zext i8 %16 to i32
  %shl.i148.i = shl nuw i32 %conv.i147.i, 24
  %arrayidx1.i149.i = getelementptr inbounds i8, ptr %totalsize28.i, i64 1
  %17 = load i8, ptr %arrayidx1.i149.i, align 1, !tbaa !11
  %conv2.i150.i = zext i8 %17 to i32
  %shl3.i151.i = shl nuw nsw i32 %conv2.i150.i, 16
  %or.i152.i = or i32 %shl3.i151.i, %shl.i148.i
  %arrayidx4.i153.i = getelementptr inbounds i8, ptr %totalsize28.i, i64 2
  %18 = load i8, ptr %arrayidx4.i153.i, align 1, !tbaa !11
  %conv5.i154.i = zext i8 %18 to i32
  %shl6.i155.i = shl nuw nsw i32 %conv5.i154.i, 8
  %or7.i156.i = or i32 %or.i152.i, %shl6.i155.i
  %arrayidx8.i157.i = getelementptr inbounds i8, ptr %totalsize28.i, i64 3
  %19 = load i8, ptr %arrayidx8.i157.i, align 1, !tbaa !11
  %conv9.i158.i = zext i8 %19 to i32
  %or10.i159.i = or i32 %or7.i156.i, %conv9.i158.i
  %conv30.i = zext i32 %or10.i159.i to i64
  %20 = load i64, ptr %ov_len.i, align 8, !tbaa !12
  %cmp31.i = icmp ult i64 %20, %conv30.i
  br i1 %cmp31.i, label %if.then33.i, label %for.inc.i

if.then33.i:                                      ; preds = %if.end25.i
  %idxprom.le229.i = and i64 %indvars.iv.i, 4294967295
  %arrayidx.le.i = getelementptr inbounds ptr, ptr %add.ptr, i64 %idxprom.le229.i
  %21 = load ptr, ptr @stderr, align 8, !tbaa !5
  %22 = load ptr, ptr %arrayidx.le.i, align 8, !tbaa !5
  %call40.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.19, ptr noundef %22, i64 noundef %20, i32 noundef %or10.i159.i) #17
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.then33.i, %if.then21.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ov_len.i) #15
  br label %out_err.i

for.inc.i:                                        ; preds = %if.end25.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ov_len.i) #15
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.end.loopexit.i, label %for.body.i

for.end.loopexit.i:                               ; preds = %for.inc.i
  %.pre.i = load i8, ptr %totalsize.i, align 1, !tbaa !11
  %.pre279.i = load i8, ptr %arrayidx1.i.i, align 1, !tbaa !11
  %.pre280.i = load i8, ptr %arrayidx4.i.i, align 1, !tbaa !11
  %.pre281.i = load i8, ptr %arrayidx8.i.i, align 1, !tbaa !11
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.loopexit.i, %xmalloc.exit.i
  %23 = phi i8 [ %.pre281.i, %for.end.loopexit.i ], [ %10, %xmalloc.exit.i ]
  %24 = phi i8 [ %.pre280.i, %for.end.loopexit.i ], [ %9, %xmalloc.exit.i ]
  %25 = phi i8 [ %.pre279.i, %for.end.loopexit.i ], [ %8, %xmalloc.exit.i ]
  %26 = phi i8 [ %.pre.i, %for.end.loopexit.i ], [ %7, %xmalloc.exit.i ]
  %conv.i173.i = zext i8 %26 to i64
  %shl.i174.i = shl nuw nsw i64 %conv.i173.i, 24
  %conv2.i176.i = zext i8 %25 to i64
  %shl3.i177.i = shl nuw nsw i64 %conv2.i176.i, 16
  %or.i178.i = or i64 %shl.i174.i, %shl3.i177.i
  %conv5.i180.i = zext i8 %24 to i64
  %shl6.i181.i = shl nuw nsw i64 %conv5.i180.i, 8
  %or7.i182.i = or i64 %or.i178.i, %shl6.i181.i
  %conv9.i184.i = zext i8 %23 to i64
  %or10.i185.i = or i64 %or7.i182.i, %conv9.i184.i
  store i64 %or10.i185.i, ptr %buf_len.i, align 8, !tbaa !12
  br i1 %cmp13231.i, label %for.body48.preheader.i, label %for.end59.i

for.body48.preheader.i:                           ; preds = %for.end.i
  %wide.trip.count272.i = zext i32 %sub to i64
  br label %for.body48.i

for.body48.i:                                     ; preds = %for.inc57.i, %for.body48.preheader.i
  %indvars.iv269.i = phi i64 [ 0, %for.body48.preheader.i ], [ %indvars.iv.next270.i, %for.inc57.i ]
  %blob.0234.i = phi ptr [ %call.i, %for.body48.preheader.i ], [ %call.i4472.i.i, %for.inc57.i ]
  %arrayidx50.i = getelementptr inbounds ptr, ptr %calloc.i, i64 %indvars.iv269.i
  %27 = load ptr, ptr %arrayidx50.i, align 8, !tbaa !5
  %arrayidx52.i = getelementptr inbounds ptr, ptr %add.ptr, i64 %indvars.iv269.i
  %28 = load ptr, ptr %arrayidx52.i, align 8, !tbaa !5
  %totalsize.i.i = getelementptr inbounds %struct.fdt_header, ptr %27, i64 0, i32 1
  %29 = load i8, ptr %totalsize.i.i, align 1, !tbaa !11
  %conv.i.i.i = zext i8 %29 to i64
  %shl.i.i.i = shl nuw nsw i64 %conv.i.i.i, 24
  %arrayidx1.i.i.i = getelementptr inbounds i8, ptr %totalsize.i.i, i64 1
  %30 = load i8, ptr %arrayidx1.i.i.i, align 1, !tbaa !11
  %conv2.i.i.i = zext i8 %30 to i64
  %shl3.i.i.i = shl nuw nsw i64 %conv2.i.i.i, 16
  %or.i.i.i = or i64 %shl3.i.i.i, %shl.i.i.i
  %arrayidx4.i.i.i = getelementptr inbounds i8, ptr %totalsize.i.i, i64 2
  %31 = load i8, ptr %arrayidx4.i.i.i, align 1, !tbaa !11
  %conv5.i.i.i = zext i8 %31 to i64
  %shl6.i.i.i = shl nuw nsw i64 %conv5.i.i.i, 8
  %or7.i.i.i = or i64 %or.i.i.i, %shl6.i.i.i
  %arrayidx8.i.i.i = getelementptr inbounds i8, ptr %totalsize.i.i, i64 3
  %32 = load i8, ptr %arrayidx8.i.i.i, align 1, !tbaa !11
  %conv9.i.i.i = zext i8 %32 to i64
  %or10.i.i.i = or i64 %or7.i.i.i, %conv9.i.i.i
  %call.i.i.i = call noalias ptr @malloc(i64 noundef %or10.i.i.i) #18
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %do.body.preheader.i.i

do.body.preheader.i.i:                            ; preds = %for.body48.i
  %33 = load i64, ptr %buf_len.i, align 8, !tbaa !12
  %malloc.i.i = call ptr @malloc(i64 %33) #15
  %tobool.not.i4571.i.i = icmp eq ptr %malloc.i.i, null
  br i1 %tobool.not.i4571.i.i, label %if.then.i46.i.i, label %xrealloc.exit.i.i

if.then.i.i.i:                                    ; preds = %for.body48.i
  call void (ptr, ...) @die(ptr noundef nonnull @.str.21) #16
  unreachable

if.then.i46.i.i:                                  ; preds = %if.then12.i.i, %do.body.preheader.i.i
  %.lcssa.i.i = phi i64 [ %add.i.i, %if.then12.i.i ], [ %33, %do.body.preheader.i.i ]
  call void (ptr, ...) @die(ptr noundef nonnull @.str.25, i64 noundef %.lcssa.i.i) #16
  unreachable

xrealloc.exit.i.i:                                ; preds = %if.then12.i.i, %do.body.preheader.i.i
  %call.i4472.i.i = phi ptr [ %call.i44.i.i, %if.then12.i.i ], [ %malloc.i.i, %do.body.preheader.i.i ]
  %34 = phi i64 [ %add.i.i, %if.then12.i.i ], [ %33, %do.body.preheader.i.i ]
  %conv3.i.i = trunc i64 %34 to i32
  %call4.i.i = call i32 @fdt_open_into(ptr noundef %blob.0234.i, ptr noundef nonnull %call.i4472.i.i, i32 noundef %conv3.i.i) #15
  %tobool.not.i186.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool.not.i186.i, label %if.end.i.i, label %if.then.i187.i

if.then.i187.i:                                   ; preds = %xrealloc.exit.i.i
  %35 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call5.i.i = call ptr @fdt_strerror(i32 noundef %call4.i.i) #15
  %call6.i.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef nonnull @.str.23, ptr noundef %call5.i.i) #17
  br label %apply_one.exit.thread.i

if.end.i.i:                                       ; preds = %xrealloc.exit.i.i
  %36 = load i8, ptr %totalsize.i.i, align 1, !tbaa !11
  %conv.i47.i.i = zext i8 %36 to i64
  %shl.i48.i.i = shl nuw nsw i64 %conv.i47.i.i, 24
  %37 = load i8, ptr %arrayidx1.i.i.i, align 1, !tbaa !11
  %conv2.i50.i.i = zext i8 %37 to i64
  %shl3.i51.i.i = shl nuw nsw i64 %conv2.i50.i.i, 16
  %or.i52.i.i = or i64 %shl3.i51.i.i, %shl.i48.i.i
  %38 = load i8, ptr %arrayidx4.i.i.i, align 1, !tbaa !11
  %conv5.i54.i.i = zext i8 %38 to i64
  %shl6.i55.i.i = shl nuw nsw i64 %conv5.i54.i.i, 8
  %or7.i56.i.i = or i64 %or.i52.i.i, %shl6.i55.i.i
  %39 = load i8, ptr %arrayidx8.i.i.i, align 1, !tbaa !11
  %conv9.i58.i.i = zext i8 %39 to i64
  %or10.i59.i.i = or i64 %or7.i56.i.i, %conv9.i58.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %call.i.i.i, ptr nonnull align 1 %27, i64 %or10.i59.i.i, i1 false) #15
  %call10.i.i = call i32 @fdt_overlay_apply(ptr noundef nonnull %call.i4472.i.i, ptr noundef nonnull %call.i.i.i) #15
  switch i32 %call10.i.i, label %if.then17.i.i [
    i32 -3, label %if.then12.i.i
    i32 0, label %for.inc57.i
  ]

if.then12.i.i:                                    ; preds = %if.end.i.i
  %40 = load i64, ptr %buf_len.i, align 8, !tbaa !12
  %add.i.i = add i64 %40, 65536
  store i64 %add.i.i, ptr %buf_len.i, align 8, !tbaa !12
  %call.i44.i.i = call ptr @realloc(ptr noundef nonnull %call.i4472.i.i, i64 noundef %add.i.i) #19
  %tobool.not.i45.i.i = icmp eq ptr %call.i44.i.i, null
  br i1 %tobool.not.i45.i.i, label %if.then.i46.i.i, label %xrealloc.exit.i.i

if.then17.i.i:                                    ; preds = %if.end.i.i
  %41 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call18.i.i = call ptr @fdt_strerror(i32 noundef %call10.i.i) #15
  %call19.i.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef nonnull @.str.24, ptr noundef %28, ptr noundef %call18.i.i) #17
  br label %apply_one.exit.thread.i

apply_one.exit.thread.i:                          ; preds = %if.then17.i.i, %if.then.i187.i
  call void @free(ptr noundef %call.i.i.i) #15
  call void @free(ptr noundef nonnull %call.i4472.i.i) #15
  br label %out_err.i

for.inc57.i:                                      ; preds = %if.end.i.i
  call void @free(ptr noundef %blob.0234.i) #15
  call void @free(ptr noundef %call.i.i.i) #15
  %indvars.iv.next270.i = add nuw nsw i64 %indvars.iv269.i, 1
  %exitcond273.not.i = icmp eq i64 %indvars.iv.next270.i, %wide.trip.count272.i
  br i1 %exitcond273.not.i, label %for.end59.i, label %for.body48.i

for.end59.i:                                      ; preds = %for.inc57.i, %for.end.i
  %blob.0.lcssa.i = phi ptr [ %call.i, %for.end.i ], [ %call.i4472.i.i, %for.inc57.i ]
  %call60.i = call i32 @fdt_pack(ptr noundef nonnull %blob.0.lcssa.i) #15
  %call61.i = call i32 @utilfdt_write(ptr noundef nonnull %output_filename.0.ph221, ptr noundef nonnull %blob.0.lcssa.i) #15
  %tobool62.not.i = icmp eq i32 %call61.i, 0
  br i1 %tobool62.not.i, label %out_err.i, label %if.then63.i

if.then63.i:                                      ; preds = %for.end59.i
  %42 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call64.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef nonnull @.str.20, ptr noundef nonnull %output_filename.0.ph221) #17
  br label %out_err.i

out_err.i:                                        ; preds = %if.then63.i, %for.end59.i, %apply_one.exit.thread.i, %cleanup.thread.i
  %blob.1.i = phi ptr [ %blob.0.lcssa.i, %if.then63.i ], [ %blob.0.lcssa.i, %for.end59.i ], [ %call.i, %cleanup.thread.i ], [ null, %apply_one.exit.thread.i ]
  %tobool20.not = phi i32 [ 1, %if.then63.i ], [ 0, %for.end59.i ], [ 1, %cleanup.thread.i ], [ 1, %apply_one.exit.thread.i ]
  br i1 %cmp13231.i, label %for.body71.preheader.i, label %do_fdtoverlay.exit

for.body71.preheader.i:                           ; preds = %out_err.i
  %wide.trip.count277.i = zext i32 %sub to i64
  br label %for.body71.i

for.body71.i:                                     ; preds = %for.inc79.i, %for.body71.preheader.i
  %indvars.iv274.i = phi i64 [ 0, %for.body71.preheader.i ], [ %indvars.iv.next275.i, %for.inc79.i ]
  %arrayidx73.i = getelementptr inbounds ptr, ptr %calloc.i, i64 %indvars.iv274.i
  %43 = load ptr, ptr %arrayidx73.i, align 8, !tbaa !5
  %tobool74.not.i = icmp eq ptr %43, null
  br i1 %tobool74.not.i, label %for.inc79.i, label %if.then75.i

if.then75.i:                                      ; preds = %for.body71.i
  call void @free(ptr noundef nonnull %43) #15
  br label %for.inc79.i

for.inc79.i:                                      ; preds = %if.then75.i, %for.body71.i
  %indvars.iv.next275.i = add nuw nsw i64 %indvars.iv274.i, 1
  %exitcond278.not.i = icmp eq i64 %indvars.iv.next275.i, %wide.trip.count277.i
  br i1 %exitcond278.not.i, label %do_fdtoverlay.exit, label %for.body71.i

do_fdtoverlay.exit.thread:                        ; preds = %if.then4.i, %if.then.i
  call void @free(ptr noundef %call.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf_len.i) #15
  br label %44

do_fdtoverlay.exit:                               ; preds = %for.inc79.i, %out_err.i
  call void @free(ptr noundef %calloc.i) #15
  call void @free(ptr noundef %blob.1.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf_len.i) #15
  br label %44

44:                                               ; preds = %do_fdtoverlay.exit, %do_fdtoverlay.exit.thread
  %45 = phi i32 [ 1, %do_fdtoverlay.exit.thread ], [ %tobool20.not, %do_fdtoverlay.exit ]
  ret i32 %45
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @util_usage(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @util_version() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare ptr @utilfdt_read(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

declare i32 @fdt_pack(ptr noundef) local_unnamed_addr #5

declare i32 @utilfdt_write(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint noreturn nounwind uwtable
define internal void @die(ptr nocapture noundef readonly %str, ...) unnamed_addr #8 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ap) #15
  call void @llvm.va_start(ptr nonnull %ap)
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %1 = call i64 @fwrite(ptr nonnull @.str.22, i64 13, i64 1, ptr %0) #20
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call2 = call i32 @vfprintf(ptr noundef %2, ptr noundef %str, ptr noundef nonnull %ap) #20
  call void @llvm.va_end(ptr nonnull %ap)
  call void @exit(i32 noundef 1) #16
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #9

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #9

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #10

declare i32 @fdt_open_into(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @fdt_strerror(i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

declare i32 @fdt_overlay_apply(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn allocsize(1)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: inaccessiblememonly nofree nounwind willreturn allocsize(0,1)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #14

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn }
attributes #10 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn allocsize(1) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { inaccessiblememonly nofree nounwind willreturn allocsize(0,1) "alloc-family"="malloc" }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind allocsize(1) }
attributes #20 = { cold }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!7, !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !7, i64 0}
