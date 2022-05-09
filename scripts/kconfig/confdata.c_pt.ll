; ModuleID = '/llk/IR_all_yes/scripts/kconfig/confdata.c_pt.bc'
source_filename = "../scripts/kconfig/confdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr }
%struct.comment_style = type { ptr, ptr, ptr }
%struct.symbol = type { ptr, ptr, i32, %struct.symbol_value, [4 x %struct.symbol_value], i32, i32, ptr, %struct.expr_value, %struct.expr_value, %struct.expr_value }
%struct.symbol_value = type { ptr, i32 }
%struct.expr_value = type { ptr, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.property = type { ptr, i32, ptr, %struct.expr_value, ptr, ptr, ptr, i32 }
%struct.file = type { ptr, ptr, ptr, i32 }
%struct.expr = type { i32, %union.expr_data, %union.expr_data }
%union.expr_data = type { ptr }

@conf_message_callback = internal unnamed_addr global ptr @conf_default_message_callback, align 8
@.str = private unnamed_addr constant [15 x i8] c"KCONFIG_CONFIG\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c".config\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"KCONFIG_DEFCONFIG_LIST\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"using defaults found in %s\00", align 1
@conf_filename = internal unnamed_addr global ptr null, align 8
@conf_lineno = internal unnamed_addr global i32 0, align 4
@conf_warnings = internal unnamed_addr global i32 0, align 4
@symbol_hash = external local_unnamed_addr global [9973 x ptr], align 16
@.str.4 = private unnamed_addr constant [11 x i8] c"is not set\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"override: reassigning to symbol %s\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"unexpected data: %.*s\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"%s creates inconsistent choice state\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"override: %s changes choice state\00", align 1
@modules_sym = external local_unnamed_addr global ptr, align 8
@stdout = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@rootmenu = external global %struct.menu, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [22 x i8] c"config name is empty\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"%s: Is a directory\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"KCONFIG_OVERWRITECONFIG\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"%s.%d.tmp\00", align 1
@comment_style_pound = internal constant %struct.comment_style { ptr @.str.36, ptr @.str.36, ptr @.str.36 }, align 8
@.str.15 = private unnamed_addr constant [11 x i8] c"\0A#\0A# %s\0A#\0A\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"# end of %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"No change to %s\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"%s.old\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"configuration written to %s\00", align 1
@comment_style_c = internal constant %struct.comment_style { ptr @.str.55, ptr @.str.56, ptr @.str.57 }, align 8
@conf_changed_callback = internal unnamed_addr global ptr null, align 8
@conf_changed = internal unnamed_addr global i8 0, align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"#\0A# \00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"CONFIG_\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"%s:%d:warning: \00", align 1
@depfile_prefix_len = internal unnamed_addr global i64 0, align 8
@depfile_path = internal global [4096 x i8] zeroinitializer, align 16
@.str.26 = private unnamed_addr constant [33 x i8] c"symbol value '%s' invalid for %s\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"\22\\\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"invalid string found\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"# %s%s is not set\0A\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"%s%s=%s\0A\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.34 = private unnamed_addr constant [47 x i8] c"%s Automatically generated file; DO NOT EDIT.\0A\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"KCONFIG_AUTOCONFIG\00", align 1
@.str.38 = private unnamed_addr constant [25 x i8] c"include/config/auto.conf\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"%s.cmd\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"%s.cmd.tmp\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"fopen\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"deps_config := \\\0A\00", align 1
@file_list = external local_unnamed_addr global ptr, align 8
@.str.43 = private unnamed_addr constant [7 x i8] c"\09%s \\\0A\00", align 1
@.str.44 = private unnamed_addr constant [22 x i8] c"\0A%s: $(deps_config)\0A\0A\00", align 1
@.str.45 = private unnamed_addr constant [20 x i8] c"\0A$(deps_config): ;\0A\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"rename\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"%s.tmp\00", align 1
@.str.48 = private unnamed_addr constant [19 x i8] c"KCONFIG_AUTOHEADER\00", align 1
@.str.49 = private unnamed_addr constant [29 x i8] c"include/generated/autoconf.h\00", align 1
@.str.50 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"_MODULE\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.54 = private unnamed_addr constant [21 x i8] c"#define %s%s%s %s%s\0A\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c" *\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"/*\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c" */\00", align 1
@str = private unnamed_addr constant [3 x i8] c"\0A#\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @conf_set_message_callback(ptr noundef %fn) local_unnamed_addr #0 {
entry:
  store ptr %fn, ptr @conf_message_callback, align 8, !tbaa !5
  ret void
}

; Function Attrs: nofree nounwind readonly uwtable
define dso_local ptr @conf_get_configname() local_unnamed_addr #1 {
entry:
  %call = tail call ptr @getenv(ptr noundef nonnull @.str) #19
  %tobool.not = icmp eq ptr %call, null
  %cond = select i1 %tobool.not, ptr @.str.1, ptr %call
  ret ptr %cond
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind readonly
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @conf_read_simple(ptr noundef %name, i32 noundef %def) local_unnamed_addr #4 {
entry:
  %tobool.not = icmp eq ptr %name, null
  br i1 %tobool.not, label %if.else, label %if.end43

if.else:                                          ; preds = %entry
  %call.i = tail call ptr @getenv(ptr noundef nonnull @.str) #19
  %tobool.not.i = icmp eq ptr %call.i, null
  %cond.i = select i1 %tobool.not.i, ptr @.str.1, ptr %call.i
  %call2 = tail call ptr @zconf_fopen(ptr noundef %cond.i) #19
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end, label %load

if.end:                                           ; preds = %if.else
  %0 = load ptr, ptr @conf_changed_callback, align 8, !tbaa !5
  %tobool.not.i389 = icmp eq ptr %0, null
  %1 = load i8, ptr @conf_changed, align 1
  %cmp.not.i = icmp eq i8 %1, 1
  %or.cond = select i1 %tobool.not.i389, i1 true, i1 %cmp.not.i
  br i1 %or.cond, label %conf_set_changed.exit, label %if.then.i

if.then.i:                                        ; preds = %if.end
  tail call void %0() #19
  br label %conf_set_changed.exit

conf_set_changed.exit:                            ; preds = %if.then.i, %if.end
  store i8 1, ptr @conf_changed, align 1, !tbaa !9
  %call5 = tail call ptr @getenv(ptr noundef nonnull @.str.2) #19
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %cleanup284, label %while.cond.preheader

while.cond.preheader:                             ; preds = %conf_set_changed.exit
  %call10 = tail call ptr @__ctype_b_loc() #20
  br label %while.cond

while.cond:                                       ; preds = %if.end35, %while.cond.preheader
  %env.0 = phi ptr [ %add.ptr, %if.end35 ], [ %call5, %while.cond.preheader ]
  %2 = load ptr, ptr %call10, align 8, !tbaa !5
  br label %while.cond9

while.cond9:                                      ; preds = %while.cond9, %while.cond
  %env.1 = phi ptr [ %env.0, %while.cond ], [ %incdec.ptr, %while.cond9 ]
  %3 = load i8, ptr %env.1, align 1, !tbaa !11
  %idxprom = sext i8 %3 to i64
  %arrayidx = getelementptr inbounds i16, ptr %2, i64 %idxprom
  %4 = load i16, ptr %arrayidx, align 2, !tbaa !12
  %5 = and i16 %4, 8192
  %tobool12.not = icmp eq i16 %5, 0
  %incdec.ptr = getelementptr inbounds i8, ptr %env.1, i64 1
  br i1 %tobool12.not, label %while.end, label %while.cond9

while.end:                                        ; preds = %while.cond9
  %tobool14.not = icmp eq i8 %3, 0
  br i1 %tobool14.not, label %cleanup284, label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %while.end
  %6 = and i16 %4, 8192
  %tobool26.not549 = icmp eq i16 %6, 0
  br i1 %tobool26.not549, label %while.body27, label %while.end29

while.body27:                                     ; preds = %while.body27.land.rhs_crit_edge, %land.rhs.preheader
  %tobool26.not551 = phi i1 [ %tobool26.not, %while.body27.land.rhs_crit_edge ], [ %tobool26.not549, %land.rhs.preheader ]
  %p.0506550 = phi ptr [ %incdec.ptr28, %while.body27.land.rhs_crit_edge ], [ %env.1, %land.rhs.preheader ]
  %incdec.ptr28 = getelementptr inbounds i8, ptr %p.0506550, i64 1
  %7 = load i8, ptr %incdec.ptr28, align 1, !tbaa !11
  %tobool19.not = icmp eq i8 %7, 0
  br i1 %tobool19.not, label %while.end29, label %while.body27.land.rhs_crit_edge

while.body27.land.rhs_crit_edge:                  ; preds = %while.body27
  %idxprom22.phi.trans.insert = sext i8 %7 to i64
  %arrayidx23.phi.trans.insert = getelementptr inbounds i16, ptr %2, i64 %idxprom22.phi.trans.insert
  %.pre = load i16, ptr %arrayidx23.phi.trans.insert, align 2, !tbaa !12
  %8 = and i16 %.pre, 8192
  %tobool26.not = icmp eq i16 %8, 0
  br i1 %tobool26.not, label %while.body27, label %while.end29

while.end29:                                      ; preds = %while.body27.land.rhs_crit_edge, %while.body27, %land.rhs.preheader
  %tobool26.not.lcssa = phi i1 [ %tobool26.not549, %land.rhs.preheader ], [ %tobool26.not551, %while.body27 ], [ %tobool26.not, %while.body27.land.rhs_crit_edge ]
  %p.0.lcssa.ph = phi ptr [ %env.1, %land.rhs.preheader ], [ %incdec.ptr28, %while.body27.land.rhs_crit_edge ], [ %incdec.ptr28, %while.body27 ]
  store i8 0, ptr %p.0.lcssa.ph, align 1, !tbaa !11
  %call32 = tail call ptr @zconf_fopen(ptr noundef nonnull %env.1) #19
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %if.end35, label %cleanup.thread464

cleanup.thread464:                                ; preds = %while.end29
  tail call void (ptr, ...) @conf_message(ptr noundef nonnull @.str.3, ptr noundef nonnull %env.1)
  br label %load

if.end35:                                         ; preds = %while.end29
  %add.ptr = getelementptr inbounds i8, ptr %p.0.lcssa.ph, i64 1
  br i1 %tobool26.not.lcssa, label %cleanup284, label %while.cond

if.end43:                                         ; preds = %entry
  %call = tail call ptr @zconf_fopen(ptr noundef nonnull %name) #19
  %tobool44.not = icmp eq ptr %call, null
  br i1 %tobool44.not, label %cleanup284, label %load

load:                                             ; preds = %if.end43, %cleanup.thread464, %if.else
  %in.4 = phi ptr [ %call, %if.end43 ], [ %call32, %cleanup.thread464 ], [ %call2, %if.else ]
  %name.addr.1 = phi ptr [ %name, %if.end43 ], [ %cond.i, %cleanup.thread464 ], [ %cond.i, %if.else ]
  store ptr %name.addr.1, ptr @conf_filename, align 8, !tbaa !5
  store i32 0, ptr @conf_lineno, align 4, !tbaa !14
  store i32 0, ptr @conf_warnings, align 4, !tbaa !14
  %shl = shl i32 65536, %def
  %neg = xor i32 %shl, -129
  %idxprom63 = sext i32 %def to i64
  br label %for.body

while.cond81.preheader:                           ; preds = %for.inc79
  %cmp34.not.i = icmp eq i32 %def, 1
  %cmp113 = icmp eq i32 %def, 0
  %neg240 = xor i32 %shl, -1
  br label %for.cond.i

for.body:                                         ; preds = %for.inc79, %load
  %indvars.iv = phi i64 [ 0, %load ], [ %indvars.iv.next, %for.inc79 ]
  %arrayidx50 = getelementptr inbounds [9973 x ptr], ptr @symbol_hash, i64 0, i64 %indvars.iv
  %sym.0511 = load ptr, ptr %arrayidx50, align 8, !tbaa !5
  %tobool52.not512 = icmp eq ptr %sym.0511, null
  br i1 %tobool52.not512, label %for.inc79, label %for.body53

for.body53:                                       ; preds = %sw.default, %for.body
  %sym.0513 = phi ptr [ %sym.0, %sw.default ], [ %sym.0511, %for.body ]
  %flags = getelementptr inbounds %struct.symbol, ptr %sym.0513, i64 0, i32 6
  %9 = load i32, ptr %flags, align 4, !tbaa !16
  %or = or i32 %9, 1024
  %and56 = and i32 %or, %neg
  %and.i = and i32 %9, 16
  %tobool.i.not = icmp eq i32 %and.i, 0
  %or60 = select i1 %tobool.i.not, i32 0, i32 %shl
  %spec.select = or i32 %and56, %or60
  store i32 %spec.select, ptr %flags, align 4, !tbaa !16
  %type = getelementptr inbounds %struct.symbol, ptr %sym.0513, i64 0, i32 2
  %10 = load i32, ptr %type, align 8, !tbaa !20
  %.off = add i32 %10, -3
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %for.body53
  %arrayidx64 = getelementptr inbounds %struct.symbol, ptr %sym.0513, i64 0, i32 4, i64 %idxprom63
  %11 = load ptr, ptr %arrayidx64, align 8, !tbaa !21
  %tobool65.not = icmp eq ptr %11, null
  br i1 %tobool65.not, label %sw.default, label %if.then66

if.then66:                                        ; preds = %sw.bb
  tail call void @free(ptr noundef nonnull %11) #19
  br label %sw.default

sw.default:                                       ; preds = %if.then66, %sw.bb, %for.body53
  %arrayidx74 = getelementptr inbounds %struct.symbol, ptr %sym.0513, i64 0, i32 4, i64 %idxprom63
  store ptr null, ptr %arrayidx74, align 8, !tbaa !21
  %tri = getelementptr inbounds %struct.symbol, ptr %sym.0513, i64 0, i32 4, i64 %idxprom63, i32 1
  store i32 0, ptr %tri, align 8, !tbaa !22
  %sym.0 = load ptr, ptr %sym.0513, align 8, !tbaa !5
  %tobool52.not = icmp eq ptr %sym.0, null
  br i1 %tobool52.not, label %for.inc79, label %for.body53

for.inc79:                                        ; preds = %sw.default, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 9973
  br i1 %exitcond.not, label %while.cond81.preheader, label %for.body

for.cond.i:                                       ; preds = %for.cond.i.backedge, %while.cond81.preheader
  %line_asize.1 = phi i64 [ 0, %while.cond81.preheader ], [ %line_asize.1.be, %for.cond.i.backedge ]
  %line.0.i = phi ptr [ null, %while.cond81.preheader ], [ %line.0.i.be, %for.cond.i.backedge ]
  %slen.0.i = phi i64 [ 0, %while.cond81.preheader ], [ %slen.0.i.be, %for.cond.i.backedge ]
  %call.i390 = tail call i32 @getc(ptr noundef %in.4) #19
  switch i32 %call.i390, label %sw.default.i [
    i32 10, label %sw.bb.i
    i32 -1, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %for.cond.i
  %add.i.i = add i64 %slen.0.i, 1
  %cmp.i.i = icmp ugt i64 %add.i.i, %line_asize.1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i

if.then.i.i:                                      ; preds = %sw.bb.i
  %add1.i.i = shl i64 %slen.0.i, 1
  %mul.i.i = add i64 %add1.i.i, 32
  %call.i.i = tail call ptr @xrealloc(ptr noundef %line.0.i, i64 noundef %mul.i.i) #19
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %e_out.i, label %if.end.i

if.end.i:                                         ; preds = %if.then.i.i, %sw.bb.i
  %line_asize.2 = phi i64 [ %line_asize.1, %sw.bb.i ], [ %mul.i.i, %if.then.i.i ]
  %line.1.i = phi ptr [ %line.0.i, %sw.bb.i ], [ %call.i.i, %if.then.i.i ]
  %arrayidx.i.i = getelementptr inbounds i8, ptr %line.1.i, i64 %slen.0.i
  store i8 10, ptr %arrayidx.i.i, align 1, !tbaa !11
  br label %sw.bb2.i

sw.bb2.i:                                         ; preds = %if.end.i, %for.cond.i
  %line_asize.3 = phi i64 [ %line_asize.2, %if.end.i ], [ %line_asize.1, %for.cond.i ]
  %line.3.i = phi ptr [ %line.1.i, %if.end.i ], [ %line.0.i, %for.cond.i ]
  %slen.1.i = phi i64 [ %add.i.i, %if.end.i ], [ %slen.0.i, %for.cond.i ]
  %add.i32.i = add i64 %slen.1.i, 1
  %cmp.i33.i = icmp ugt i64 %add.i32.i, %line_asize.3
  br i1 %cmp.i33.i, label %if.then.i40.i, label %cleanup.thread77.i

if.then.i40.i:                                    ; preds = %sw.bb2.i
  %add1.i36.i = shl i64 %slen.1.i, 1
  %mul.i37.i = add i64 %add1.i36.i, 32
  %call.i38.i = tail call ptr @xrealloc(ptr noundef %line.3.i, i64 noundef %mul.i37.i) #19
  %tobool.not.i39.i = icmp eq ptr %call.i38.i, null
  br i1 %tobool.not.i39.i, label %e_out.i, label %cleanup.thread77.i

cleanup.thread77.i:                               ; preds = %if.then.i40.i, %sw.bb2.i
  %line_asize.4 = phi i64 [ %line_asize.3, %sw.bb2.i ], [ %mul.i37.i, %if.then.i40.i ]
  %line.4.i = phi ptr [ %line.3.i, %sw.bb2.i ], [ %call.i38.i, %if.then.i40.i ]
  %arrayidx.i42.i = getelementptr inbounds i8, ptr %line.4.i, i64 %slen.1.i
  store i8 0, ptr %arrayidx.i42.i, align 1, !tbaa !11
  switch i64 %slen.1.i, label %while.body85 [
    i64 0, label %while.end282
    i64 -1, label %while.end282
  ]

sw.default.i:                                     ; preds = %for.cond.i
  %add.i46.i = add i64 %slen.0.i, 1
  %cmp.i47.i = icmp ugt i64 %add.i46.i, %line_asize.1
  br i1 %cmp.i47.i, label %if.then.i54.i, label %cleanup.i

if.then.i54.i:                                    ; preds = %sw.default.i
  %add1.i50.i = shl i64 %slen.0.i, 1
  %mul.i51.i = add i64 %add1.i50.i, 32
  %call.i52.i = tail call ptr @xrealloc(ptr noundef %line.0.i, i64 noundef %mul.i51.i) #19
  %tobool.not.i53.i = icmp eq ptr %call.i52.i, null
  br i1 %tobool.not.i53.i, label %e_out.i, label %cleanup.i

cleanup.i:                                        ; preds = %if.then.i54.i, %sw.default.i
  %line_asize.5 = phi i64 [ %line_asize.1, %sw.default.i ], [ %mul.i51.i, %if.then.i54.i ]
  %line.6.i = phi ptr [ %line.0.i, %sw.default.i ], [ %call.i52.i, %if.then.i54.i ]
  %conv.i.i = trunc i32 %call.i390 to i8
  %arrayidx.i56.i = getelementptr inbounds i8, ptr %line.6.i, i64 %slen.0.i
  store i8 %conv.i.i, ptr %arrayidx.i56.i, align 1, !tbaa !11
  br label %for.cond.i.backedge

for.cond.i.backedge:                              ; preds = %sw.epilog258, %land.lhs.true221, %if.then214, %if.else205, %if.else205, %if.then64.i, %if.else.i, %sw.bb53.thread.i, %if.then50.critedge.i, %if.then31.i, %if.end28.i, %conf_set_changed.exit436, %if.end6.i, %if.end.i428, %if.then187, %if.then160, %conf_set_changed.exit408, %if.end107, %if.end99, %if.then91, %cleanup.i
  %line_asize.1.be = phi i64 [ %line_asize.5, %cleanup.i ], [ %line_asize.4, %land.lhs.true221 ], [ %line_asize.4, %sw.epilog258 ], [ %line_asize.4, %if.then214 ], [ %line_asize.4, %if.else205 ], [ %line_asize.4, %if.else205 ], [ %line_asize.4, %if.then64.i ], [ %line_asize.4, %if.else.i ], [ %line_asize.4, %sw.bb53.thread.i ], [ %line_asize.4, %if.then50.critedge.i ], [ %line_asize.4, %if.then31.i ], [ %line_asize.4, %if.end28.i ], [ %line_asize.4, %conf_set_changed.exit436 ], [ %line_asize.4, %if.then187 ], [ %line_asize.4, %if.end.i428 ], [ %line_asize.4, %if.end6.i ], [ %line_asize.4, %conf_set_changed.exit408 ], [ %line_asize.4, %if.then91 ], [ %line_asize.4, %if.end99 ], [ %line_asize.4, %if.end107 ], [ %line_asize.4, %if.then160 ]
  %line.0.i.be = phi ptr [ %line.6.i, %cleanup.i ], [ %line.4.i, %land.lhs.true221 ], [ %line.4.i, %sw.epilog258 ], [ %line.4.i, %if.then214 ], [ %line.4.i, %if.else205 ], [ %line.4.i, %if.else205 ], [ %line.4.i, %if.then64.i ], [ %line.4.i, %if.else.i ], [ %line.4.i, %sw.bb53.thread.i ], [ %line.4.i, %if.then50.critedge.i ], [ %line.4.i, %if.then31.i ], [ %line.4.i, %if.end28.i ], [ %line.4.i, %conf_set_changed.exit436 ], [ %line.4.i, %if.then187 ], [ %line.4.i, %if.end.i428 ], [ %line.4.i, %if.end6.i ], [ %line.4.i, %conf_set_changed.exit408 ], [ %line.4.i, %if.then91 ], [ %line.4.i, %if.end99 ], [ %line.4.i, %if.end107 ], [ %line.4.i, %if.then160 ]
  %slen.0.i.be = phi i64 [ %add.i46.i, %cleanup.i ], [ 0, %land.lhs.true221 ], [ 0, %sw.epilog258 ], [ 0, %if.then214 ], [ 0, %if.else205 ], [ 0, %if.else205 ], [ 0, %if.then64.i ], [ 0, %if.else.i ], [ 0, %sw.bb53.thread.i ], [ 0, %if.then50.critedge.i ], [ 0, %if.then31.i ], [ 0, %if.end28.i ], [ 0, %conf_set_changed.exit436 ], [ 0, %if.then187 ], [ 0, %if.end.i428 ], [ 0, %if.end6.i ], [ 0, %conf_set_changed.exit408 ], [ 0, %if.then91 ], [ 0, %if.end99 ], [ 0, %if.end107 ], [ 0, %if.then160 ]
  br label %for.cond.i

e_out.i:                                          ; preds = %if.then.i54.i, %if.then.i40.i, %if.then.i.i
  %line.8.ph.i = phi ptr [ %line.0.i, %if.then.i54.i ], [ %line.0.i, %if.then.i.i ], [ %line.3.i, %if.then.i40.i ]
  %slen.2.ph.i = phi i64 [ %slen.0.i, %if.then.i54.i ], [ %slen.0.i, %if.then.i.i ], [ %slen.1.i, %if.then.i40.i ]
  %sub.i = add i64 %slen.2.ph.i, -1
  %arrayidx.i = getelementptr inbounds i8, ptr %line.8.ph.i, i64 %sub.i
  store i8 0, ptr %arrayidx.i, align 1, !tbaa !11
  br label %while.end282

while.body85:                                     ; preds = %cleanup.thread77.i
  %12 = load i32, ptr @conf_lineno, align 4, !tbaa !14
  %inc86 = add nsw i32 %12, 1
  store i32 %inc86, ptr @conf_lineno, align 4, !tbaa !14
  %13 = load i8, ptr %line.4.i, align 1, !tbaa !11
  %cmp89 = icmp eq i8 %13, 35
  br i1 %cmp89, label %if.then91, label %if.else153

if.then91:                                        ; preds = %while.body85
  %add.ptr92 = getelementptr inbounds i8, ptr %line.4.i, i64 2
  %call.i391 = tail call ptr @getenv(ptr noundef nonnull @.str.24) #19
  %tobool.not.i392 = icmp eq ptr %call.i391, null
  %call..str.24.i = select i1 %tobool.not.i392, ptr @.str.24, ptr %call.i391
  %call95 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %call..str.24.i) #21
  %bcmp385 = tail call i32 @bcmp(ptr nonnull %add.ptr92, ptr %call..str.24.i, i64 %call95)
  %tobool97.not = icmp eq i32 %bcmp385, 0
  br i1 %tobool97.not, label %if.end99, label %for.cond.i.backedge

if.end99:                                         ; preds = %if.then91
  %add.ptr103 = getelementptr inbounds i8, ptr %add.ptr92, i64 %call95
  %call104 = tail call ptr @strchr(ptr noundef nonnull %add.ptr103, i32 noundef 32) #21
  %tobool105.not = icmp eq ptr %call104, null
  br i1 %tobool105.not, label %for.cond.i.backedge, label %if.end107

if.end107:                                        ; preds = %if.end99
  %incdec.ptr108 = getelementptr inbounds i8, ptr %call104, i64 1
  store i8 0, ptr %call104, align 1, !tbaa !11
  %call109 = tail call i32 @strncmp(ptr noundef nonnull %incdec.ptr108, ptr noundef nonnull dereferenceable(11) @.str.4, i64 noundef 10) #21
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.end112, label %for.cond.i.backedge

if.end112:                                        ; preds = %if.end107
  %call.i399 = tail call ptr @getenv(ptr noundef nonnull @.str.24) #19
  %tobool.not.i400 = icmp eq ptr %call.i399, null
  %call..str.24.i401 = select i1 %tobool.not.i400, ptr @.str.24, ptr %call.i399
  %call118 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %call..str.24.i401) #21
  %add.ptr119 = getelementptr inbounds i8, ptr %add.ptr92, i64 %call118
  br i1 %cmp113, label %if.then115, label %if.else124

if.then115:                                       ; preds = %if.end112
  %call120 = tail call ptr @sym_find(ptr noundef nonnull %add.ptr119) #19
  %tobool121.not = icmp eq ptr %call120, null
  br i1 %tobool121.not, label %if.then122, label %if.end136

if.then122:                                       ; preds = %if.then115
  %14 = load ptr, ptr @conf_changed_callback, align 8, !tbaa !5
  %tobool.not.i402 = icmp eq ptr %14, null
  %15 = load i8, ptr @conf_changed, align 1
  %cmp.not.i404 = icmp eq i8 %15, 1
  %or.cond492 = select i1 %tobool.not.i402, i1 true, i1 %cmp.not.i404
  br i1 %or.cond492, label %conf_set_changed.exit408, label %if.then.i406

if.then.i406:                                     ; preds = %if.then122
  tail call void %14() #19
  br label %conf_set_changed.exit408

conf_set_changed.exit408:                         ; preds = %if.then.i406, %if.then122
  store i8 1, ptr @conf_changed, align 1, !tbaa !9
  br label %for.cond.i.backedge

if.else124:                                       ; preds = %if.end112
  %call129 = tail call ptr @sym_lookup(ptr noundef nonnull %add.ptr119, i32 noundef 0) #19
  %type130 = getelementptr inbounds %struct.symbol, ptr %call129, i64 0, i32 2
  %16 = load i32, ptr %type130, align 8, !tbaa !20
  %cmp131 = icmp eq i32 %16, 0
  br i1 %cmp131, label %if.then133, label %if.end136

if.then133:                                       ; preds = %if.else124
  store i32 1, ptr %type130, align 8, !tbaa !20
  br label %if.end136

if.end136:                                        ; preds = %if.then133, %if.else124, %if.then115
  %sym.1 = phi ptr [ %call120, %if.then115 ], [ %call129, %if.then133 ], [ %call129, %if.else124 ]
  %flags137 = getelementptr inbounds %struct.symbol, ptr %sym.1, i64 0, i32 6
  %17 = load i32, ptr %flags137, align 4, !tbaa !16
  %and138 = and i32 %17, %shl
  %tobool139.not = icmp eq i32 %and138, 0
  br i1 %tobool139.not, label %if.end142, label %if.then140

if.then140:                                       ; preds = %if.end136
  %name141 = getelementptr inbounds %struct.symbol, ptr %sym.1, i64 0, i32 1
  %18 = load ptr, ptr %name141, align 8, !tbaa !23
  tail call void (ptr, ...) @conf_warning(ptr noundef nonnull @.str.5, ptr noundef %18)
  br label %if.end142

if.end142:                                        ; preds = %if.then140, %if.end136
  %type143 = getelementptr inbounds %struct.symbol, ptr %sym.1, i64 0, i32 2
  %19 = load i32, ptr %type143, align 8, !tbaa !20
  %.off386 = add i32 %19, -1
  %switch387 = icmp ult i32 %.off386, 2
  br i1 %switch387, label %sw.bb144, label %land.lhs.true221

sw.bb144:                                         ; preds = %if.end142
  %tri148 = getelementptr inbounds %struct.symbol, ptr %sym.1, i64 0, i32 4, i64 %idxprom63, i32 1
  store i32 0, ptr %tri148, align 8, !tbaa !22
  br label %land.lhs.true221.sink.split

if.else153:                                       ; preds = %while.body85
  %call.i412 = tail call ptr @getenv(ptr noundef nonnull @.str.24) #19
  %tobool.not.i413 = icmp eq ptr %call.i412, null
  %call..str.24.i414 = select i1 %tobool.not.i413, ptr @.str.24, ptr %call.i412
  %call156 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %call..str.24.i414) #21
  %bcmp = tail call i32 @bcmp(ptr nonnull %line.4.i, ptr %call..str.24.i414, i64 %call156)
  %cmp158 = icmp eq i32 %bcmp, 0
  br i1 %cmp158, label %if.then160, label %if.else205

if.then160:                                       ; preds = %if.else153
  %add.ptr163 = getelementptr inbounds i8, ptr %line.4.i, i64 %call156
  %call164 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %add.ptr163, i32 noundef 61) #21
  %tobool165.not = icmp eq ptr %call164, null
  br i1 %tobool165.not, label %for.cond.i.backedge, label %if.end167

if.end167:                                        ; preds = %if.then160
  %incdec.ptr168 = getelementptr inbounds i8, ptr %call164, i64 1
  store i8 0, ptr %call164, align 1, !tbaa !11
  %call169 = tail call ptr @strchr(ptr noundef nonnull %incdec.ptr168, i32 noundef 10) #21
  %tobool170.not = icmp eq ptr %call169, null
  br i1 %tobool170.not, label %if.end178, label %if.then171

if.then171:                                       ; preds = %if.end167
  %incdec.ptr172 = getelementptr inbounds i8, ptr %call169, i64 -1
  store i8 0, ptr %call169, align 1, !tbaa !11
  %20 = load i8, ptr %incdec.ptr172, align 1, !tbaa !11
  %cmp174 = icmp eq i8 %20, 13
  br i1 %cmp174, label %if.then176, label %if.end178

if.then176:                                       ; preds = %if.then171
  store i8 0, ptr %incdec.ptr172, align 1, !tbaa !11
  br label %if.end178

if.end178:                                        ; preds = %if.then176, %if.then171, %if.end167
  %call.i421 = tail call ptr @getenv(ptr noundef nonnull @.str.24) #19
  %tobool.not.i422 = icmp eq ptr %call.i421, null
  %call..str.24.i423 = select i1 %tobool.not.i422, ptr @.str.24, ptr %call.i421
  %call180 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %call..str.24.i423) #21
  %add.ptr181 = getelementptr inbounds i8, ptr %line.4.i, i64 %call180
  %call182 = tail call ptr @sym_find(ptr noundef nonnull %add.ptr181) #19
  %tobool183.not = icmp eq ptr %call182, null
  br i1 %tobool183.not, label %if.then184, label %if.end194

if.then184:                                       ; preds = %if.end178
  br i1 %cmp34.not.i, label %if.then187, label %if.else192

if.then187:                                       ; preds = %if.then184
  %call.i424 = tail call ptr @getenv(ptr noundef nonnull @.str.24) #19
  %tobool.not.i425 = icmp eq ptr %call.i424, null
  %call..str.24.i426 = select i1 %tobool.not.i425, ptr @.str.24, ptr %call.i424
  %call189 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %call..str.24.i426) #21
  %add.ptr190 = getelementptr inbounds i8, ptr %line.4.i, i64 %call189
  %21 = load i64, ptr @depfile_prefix_len, align 8, !tbaa !24
  %call.i427 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %add.ptr190) #21
  %add.i = add i64 %21, -4096
  %22 = add i64 %add.i, %call.i427
  %cmp.i = icmp ult i64 %22, -4097
  br i1 %cmp.i, label %for.cond.i.backedge, label %if.end.i428

if.end.i428:                                      ; preds = %if.then187
  %add.ptr.i = getelementptr inbounds i8, ptr @depfile_path, i64 %21
  %call2.i = tail call ptr @strcpy(ptr noundef nonnull %add.ptr.i, ptr noundef nonnull dereferenceable(1) %add.ptr190) #19
  %call3.i = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull @depfile_path, i32 noundef 577, i32 noundef 420) #19
  %cmp4.i = icmp eq i32 %call3.i, -1
  br i1 %cmp4.i, label %for.cond.i.backedge, label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i428
  %call7.i = tail call i32 @close(i32 noundef %call3.i) #19
  br label %for.cond.i.backedge

if.else192:                                       ; preds = %if.then184
  %23 = load ptr, ptr @conf_changed_callback, align 8, !tbaa !5
  %tobool.not.i430 = icmp eq ptr %23, null
  %24 = load i8, ptr @conf_changed, align 1
  %cmp.not.i432 = icmp eq i8 %24, 1
  %or.cond493 = select i1 %tobool.not.i430, i1 true, i1 %cmp.not.i432
  br i1 %or.cond493, label %conf_set_changed.exit436, label %if.then.i434

if.then.i434:                                     ; preds = %if.else192
  tail call void %23() #19
  br label %conf_set_changed.exit436

conf_set_changed.exit436:                         ; preds = %if.then.i434, %if.else192
  store i8 1, ptr @conf_changed, align 1, !tbaa !9
  br label %for.cond.i.backedge

if.end194:                                        ; preds = %if.end178
  %flags195 = getelementptr inbounds %struct.symbol, ptr %call182, i64 0, i32 6
  %25 = load i32, ptr %flags195, align 4, !tbaa !16
  %and196 = and i32 %25, %shl
  %tobool197.not = icmp eq i32 %and196, 0
  br i1 %tobool197.not, label %if.end200, label %if.then198

if.then198:                                       ; preds = %if.end194
  %name199 = getelementptr inbounds %struct.symbol, ptr %call182, i64 0, i32 1
  %26 = load ptr, ptr %name199, align 8, !tbaa !23
  tail call void (ptr, ...) @conf_warning(ptr noundef nonnull @.str.5, ptr noundef %26)
  br label %if.end200

if.end200:                                        ; preds = %if.then198, %if.end194
  %type.i = getelementptr inbounds %struct.symbol, ptr %call182, i64 0, i32 2
  %27 = load i32, ptr %type.i, align 8, !tbaa !20
  switch i32 %27, label %land.lhs.true221 [
    i32 2, label %sw.bb.i438
    i32 1, label %sw.bb4thread-pre-split.i
    i32 5, label %sw.bb33.i
    i32 3, label %sw.bb53.i
    i32 4, label %sw.bb53.i
  ]

sw.bb.i438:                                       ; preds = %if.end200
  %28 = load i8, ptr %incdec.ptr168, align 1, !tbaa !11
  %cmp.i437 = icmp eq i8 %28, 109
  br i1 %cmp.i437, label %if.then.i440, label %sw.bb4.i

if.then.i440:                                     ; preds = %sw.bb.i438
  %tri.i = getelementptr inbounds %struct.symbol, ptr %call182, i64 0, i32 4, i64 %idxprom63, i32 1
  store i32 1, ptr %tri.i, align 8, !tbaa !22
  br label %land.lhs.true221.sink.split

sw.bb4thread-pre-split.i:                         ; preds = %if.end200
  %.pr.i = load i8, ptr %incdec.ptr168, align 1, !tbaa !11
  br label %sw.bb4.i

sw.bb4.i:                                         ; preds = %sw.bb4thread-pre-split.i, %sw.bb.i438
  %29 = phi i8 [ %.pr.i, %sw.bb4thread-pre-split.i ], [ %28, %sw.bb.i438 ]
  switch i8 %29, label %if.end28.i [
    i8 121, label %if.then9.i
    i8 110, label %if.then21.i
  ]

if.then9.i:                                       ; preds = %sw.bb4.i
  %tri13.i = getelementptr inbounds %struct.symbol, ptr %call182, i64 0, i32 4, i64 %idxprom63, i32 1
  store i32 2, ptr %tri13.i, align 8, !tbaa !22
  br label %land.lhs.true221.sink.split

if.then21.i:                                      ; preds = %sw.bb4.i
  %tri25.i = getelementptr inbounds %struct.symbol, ptr %call182, i64 0, i32 4, i64 %idxprom63, i32 1
  store i32 0, ptr %tri25.i, align 8, !tbaa !22
  br label %land.lhs.true221.sink.split

if.end28.i:                                       ; preds = %sw.bb4.i
  br i1 %cmp34.not.i, label %for.cond.i.backedge, label %if.then31.i

if.then31.i:                                      ; preds = %if.end28.i
  %name.i = getelementptr inbounds %struct.symbol, ptr %call182, i64 0, i32 1
  %30 = load ptr, ptr %name.i, align 8, !tbaa !23
  tail call void (ptr, ...) @conf_warning(ptr noundef nonnull @.str.26, ptr noundef nonnull %incdec.ptr168, ptr noundef %30) #19
  br label %for.cond.i.backedge

sw.bb33.i:                                        ; preds = %if.end200
  br i1 %cmp34.not.i, label %sw.bb53.thread.i, label %if.then36.i

if.then36.i:                                      ; preds = %sw.bb33.i
  %incdec.ptr.i = getelementptr inbounds i8, ptr %call164, i64 2
  %31 = load i8, ptr %incdec.ptr168, align 1, !tbaa !11
  %cmp38.not.i = icmp eq i8 %31, 34
  br i1 %cmp38.not.i, label %for.cond.preheader.i, label %land.lhs.true221

for.cond.preheader.i:                             ; preds = %if.then36.i
  %call110.i = tail call ptr @strpbrk(ptr noundef nonnull %incdec.ptr.i, ptr noundef nonnull @.str.27) #21
  %tobool.not111.i = icmp eq ptr %call110.i, null
  br i1 %tobool.not111.i, label %if.then50.critedge.i, label %for.body.i

for.body.i:                                       ; preds = %if.end46.i, %for.cond.preheader.i
  %call112.i = phi ptr [ %call.i442, %if.end46.i ], [ %call110.i, %for.cond.preheader.i ]
  %32 = load i8, ptr %call112.i, align 1, !tbaa !11
  %cmp43.i = icmp eq i8 %32, 34
  br i1 %cmp43.i, label %if.then45.i, label %if.end46.i

if.then45.i:                                      ; preds = %for.body.i
  store i8 0, ptr %call112.i, align 1, !tbaa !11
  br label %sw.bb53.i

if.end46.i:                                       ; preds = %for.body.i
  %add.ptr.i441 = getelementptr inbounds i8, ptr %call112.i, i64 1
  %call47.i = tail call i64 @strlen(ptr noundef nonnull %call112.i) #21
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %call112.i, ptr nonnull align 1 %add.ptr.i441, i64 %call47.i, i1 false) #19
  %call.i442 = tail call ptr @strpbrk(ptr noundef nonnull %add.ptr.i441, ptr noundef nonnull @.str.27) #21
  %tobool.not.i443 = icmp eq ptr %call.i442, null
  br i1 %tobool.not.i443, label %if.then50.critedge.i, label %for.body.i

if.then50.critedge.i:                             ; preds = %if.end46.i, %for.cond.preheader.i
  tail call void (ptr, ...) @conf_warning(ptr noundef nonnull @.str.28) #19
  br label %for.cond.i.backedge

sw.bb53.i:                                        ; preds = %if.then45.i, %if.end200, %if.end200
  %p.addr.0.i = phi ptr [ %incdec.ptr168, %if.end200 ], [ %incdec.ptr168, %if.end200 ], [ %incdec.ptr.i, %if.then45.i ]
  %call54.i = tail call zeroext i1 @sym_string_valid(ptr noundef nonnull %call182, ptr noundef nonnull %p.addr.0.i) #19
  br i1 %call54.i, label %if.then55.i, label %if.else.i

sw.bb53.thread.i:                                 ; preds = %sw.bb33.i
  %call54104.i = tail call zeroext i1 @sym_string_valid(ptr noundef nonnull %call182, ptr noundef nonnull %incdec.ptr168) #19
  br i1 %call54104.i, label %if.then55.i, label %for.cond.i.backedge

if.then55.i:                                      ; preds = %sw.bb53.thread.i, %sw.bb53.i
  %p.addr.0105.i = phi ptr [ %incdec.ptr168, %sw.bb53.thread.i ], [ %p.addr.0.i, %sw.bb53.i ]
  %call56.i = tail call ptr @xstrdup(ptr noundef %p.addr.0105.i) #19
  %arrayidx59.i = getelementptr inbounds %struct.symbol, ptr %call182, i64 0, i32 4, i64 %idxprom63
  store ptr %call56.i, ptr %arrayidx59.i, align 8, !tbaa !21
  br label %land.lhs.true221.sink.split

if.else.i:                                        ; preds = %sw.bb53.i
  br i1 %cmp34.not.i, label %for.cond.i.backedge, label %if.then64.i

if.then64.i:                                      ; preds = %if.else.i
  %name65.i = getelementptr inbounds %struct.symbol, ptr %call182, i64 0, i32 1
  %33 = load ptr, ptr %name65.i, align 8, !tbaa !23
  tail call void (ptr, ...) @conf_warning(ptr noundef nonnull @.str.26, ptr noundef nonnull %p.addr.0.i, ptr noundef %33) #19
  br label %for.cond.i.backedge

if.else205:                                       ; preds = %if.else153
  switch i8 %13, label %if.then214 [
    i8 13, label %for.cond.i.backedge
    i8 10, label %for.cond.i.backedge
  ]

if.then214:                                       ; preds = %if.else205
  %call215 = tail call i64 @strcspn(ptr noundef nonnull %line.4.i, ptr noundef nonnull @.str.7) #21
  %conv216 = trunc i64 %call215 to i32
  tail call void (ptr, ...) @conf_warning(ptr noundef nonnull @.str.6, i32 noundef %conv216, ptr noundef nonnull %line.4.i)
  br label %for.cond.i.backedge

land.lhs.true221.sink.split:                      ; preds = %if.then55.i, %if.then21.i, %if.then9.i, %if.then.i440, %sw.bb144
  %flags195.sink537 = phi ptr [ %flags195, %if.then.i440 ], [ %flags195, %if.then9.i ], [ %flags195, %if.then21.i ], [ %flags195, %if.then55.i ], [ %flags137, %sw.bb144 ]
  %sym.2.ph = phi ptr [ %call182, %if.then.i440 ], [ %call182, %if.then9.i ], [ %call182, %if.then21.i ], [ %call182, %if.then55.i ], [ %sym.1, %sw.bb144 ]
  %34 = load i32, ptr %flags195.sink537, align 4, !tbaa !16
  %or.i = or i32 %34, %shl
  store i32 %or.i, ptr %flags195.sink537, align 4, !tbaa !16
  br label %land.lhs.true221

land.lhs.true221:                                 ; preds = %land.lhs.true221.sink.split, %if.then36.i, %if.end200, %if.end142
  %sym.2 = phi ptr [ %sym.1, %if.end142 ], [ %call182, %if.end200 ], [ %call182, %if.then36.i ], [ %sym.2.ph, %land.lhs.true221.sink.split ]
  %flags.i446 = getelementptr inbounds %struct.symbol, ptr %sym.2, i64 0, i32 6
  %35 = load i32, ptr %flags.i446, align 4, !tbaa !16
  %and.i447 = and i32 %35, 32
  %tobool.i448.not = icmp eq i32 %and.i447, 0
  br i1 %tobool.i448.not, label %for.cond.i.backedge, label %if.then224

if.then224:                                       ; preds = %land.lhs.true221
  %call225 = tail call ptr @sym_get_choice_prop(ptr noundef nonnull %sym.2) #19
  %call226 = tail call ptr @prop_get_symbol(ptr noundef %call225) #19
  %tri230 = getelementptr inbounds %struct.symbol, ptr %sym.2, i64 0, i32 4, i64 %idxprom63, i32 1
  %36 = load i32, ptr %tri230, align 8, !tbaa !22
  switch i32 %36, label %sw.epilog258 [
    i32 2, label %sw.bb244
    i32 1, label %sw.bb231
  ]

sw.bb231:                                         ; preds = %if.then224
  %tri235 = getelementptr inbounds %struct.symbol, ptr %call226, i64 0, i32 4, i64 %idxprom63, i32 1
  %37 = load i32, ptr %tri235, align 8, !tbaa !22
  %cmp236 = icmp eq i32 %37, 2
  br i1 %cmp236, label %if.then238, label %sw.epilog258

if.then238:                                       ; preds = %sw.bb231
  %name239 = getelementptr inbounds %struct.symbol, ptr %sym.2, i64 0, i32 1
  %38 = load ptr, ptr %name239, align 8, !tbaa !23
  tail call void (ptr, ...) @conf_warning(ptr noundef nonnull @.str.8, ptr noundef %38)
  %flags241 = getelementptr inbounds %struct.symbol, ptr %call226, i64 0, i32 6
  %39 = load i32, ptr %flags241, align 4, !tbaa !16
  %and242 = and i32 %39, %neg240
  store i32 %and242, ptr %flags241, align 4, !tbaa !16
  br label %sw.epilog258

sw.bb244:                                         ; preds = %if.then224
  %arrayidx247 = getelementptr inbounds %struct.symbol, ptr %call226, i64 0, i32 4, i64 %idxprom63
  %tri248 = getelementptr inbounds %struct.symbol, ptr %call226, i64 0, i32 4, i64 %idxprom63, i32 1
  %40 = load i32, ptr %tri248, align 8, !tbaa !22
  %cmp249.not = icmp eq i32 %40, 0
  br i1 %cmp249.not, label %if.end253, label %if.then251

if.then251:                                       ; preds = %sw.bb244
  %name252 = getelementptr inbounds %struct.symbol, ptr %sym.2, i64 0, i32 1
  %41 = load ptr, ptr %name252, align 8, !tbaa !23
  tail call void (ptr, ...) @conf_warning(ptr noundef nonnull @.str.9, ptr noundef %41)
  br label %if.end253

if.end253:                                        ; preds = %if.then251, %sw.bb244
  store ptr %sym.2, ptr %arrayidx247, align 8, !tbaa !21
  br label %sw.epilog258

sw.epilog258:                                     ; preds = %if.end253, %if.then238, %sw.bb231, %if.then224
  %tri262 = getelementptr inbounds %struct.symbol, ptr %call226, i64 0, i32 4, i64 %idxprom63, i32 1
  %42 = load i32, ptr %tri262, align 8, !tbaa !22
  %43 = load i32, ptr %tri230, align 8, !tbaa !22
  %44 = tail call i32 @llvm.umax.i32(i32 %42, i32 %43)
  store i32 %44, ptr %tri262, align 8, !tbaa !22
  br label %for.cond.i.backedge

while.end282:                                     ; preds = %e_out.i, %cleanup.thread77.i, %cleanup.thread77.i
  %line.1483 = phi ptr [ %line.8.ph.i, %e_out.i ], [ %line.4.i, %cleanup.thread77.i ], [ %line.4.i, %cleanup.thread77.i ]
  tail call void @free(ptr noundef nonnull %line.1483) #19
  %call283 = tail call i32 @fclose(ptr noundef %in.4)
  br label %cleanup284

cleanup284:                                       ; preds = %while.end282, %if.end43, %if.end35, %while.end, %conf_set_changed.exit
  %retval.1 = phi i32 [ 0, %while.end282 ], [ 1, %if.end43 ], [ 1, %conf_set_changed.exit ], [ 1, %if.end35 ], [ 1, %while.end ]
  ret i32 %retval.1
}

declare ptr @zconf_fopen(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @conf_set_changed(i1 noundef zeroext %val) local_unnamed_addr #4 {
entry:
  %0 = load ptr, ptr @conf_changed_callback, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre = zext i1 %val to i8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, ptr @conf_changed, align 1, !tbaa !9, !range !26
  %2 = zext i1 %val to i8
  %cmp.not = icmp eq i8 %1, %2
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  tail call void %0() #19
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry.if.end_crit_edge
  %frombool.pre-phi = phi i8 [ %.pre, %entry.if.end_crit_edge ], [ %2, %if.then ], [ %2, %land.lhs.true ]
  store i8 %frombool.pre-phi, ptr @conf_changed, align 1, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_b_loc() local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal void @conf_message(ptr nocapture noundef readonly %fmt, ...) unnamed_addr #4 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %buf = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ap) #19
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %buf) #19
  %0 = load ptr, ptr @conf_message_callback, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void @llvm.va_start(ptr nonnull %ap)
  %call = call i32 @vsnprintf(ptr noundef nonnull %buf, i64 noundef 4096, ptr noundef %fmt, ptr noundef nonnull %ap) #19
  %1 = load ptr, ptr @conf_message_callback, align 8, !tbaa !5
  call void %1(ptr noundef nonnull %buf) #19
  call void @llvm.va_end(ptr nonnull %ap)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %buf) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ap) #19
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #8

declare ptr @sym_find(ptr noundef) local_unnamed_addr #5

declare ptr @sym_lookup(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind uwtable
define internal void @conf_warning(ptr nocapture noundef readonly %fmt, ...) unnamed_addr #9 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ap) #19
  call void @llvm.va_start(ptr nonnull %ap)
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %1 = load ptr, ptr @conf_filename, align 8, !tbaa !5
  %2 = load i32, ptr @conf_lineno, align 4, !tbaa !14
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef %1, i32 noundef %2) #22
  %3 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call2 = call i32 @vfprintf(ptr noundef %3, ptr noundef %fmt, ptr noundef nonnull %ap) #22
  %4 = load ptr, ptr @stderr, align 8, !tbaa !5
  %fputc = call i32 @fputc(i32 10, ptr %4)
  call void @llvm.va_end(ptr nonnull %ap)
  %5 = load i32, ptr @conf_warnings, align 4, !tbaa !14
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr @conf_warnings, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ap) #19
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

declare ptr @prop_get_symbol(ptr noundef) local_unnamed_addr #5

declare ptr @sym_get_choice_prop(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local i32 @conf_read(ptr noundef %name) local_unnamed_addr #4 {
entry:
  %0 = load ptr, ptr @conf_changed_callback, align 8, !tbaa !5
  %tobool.not.i = icmp eq ptr %0, null
  %1 = load i8, ptr @conf_changed, align 1
  %cmp.not.i = icmp eq i8 %1, 0
  %or.cond134 = select i1 %tobool.not.i, i1 true, i1 %cmp.not.i
  br i1 %or.cond134, label %conf_set_changed.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  tail call void %0() #19
  br label %conf_set_changed.exit

conf_set_changed.exit:                            ; preds = %if.then.i, %entry
  store i8 0, ptr @conf_changed, align 1, !tbaa !9
  %call = tail call i32 @conf_read_simple(ptr noundef %name, i32 noundef 0)
  %tobool.not = icmp eq i32 %call, 0
  %2 = load ptr, ptr @modules_sym, align 8, !tbaa !5
  tail call void @sym_calc_value(ptr noundef %2) #19
  br i1 %tobool.not, label %for.body, label %cleanup

for.body:                                         ; preds = %for.inc33, %conf_set_changed.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc33 ], [ 0, %conf_set_changed.exit ]
  %conf_unsaved.0143 = phi i32 [ %conf_unsaved.1.lcssa, %for.inc33 ], [ 0, %conf_set_changed.exit ]
  %arrayidx = getelementptr inbounds [9973 x ptr], ptr @symbol_hash, i64 0, i64 %indvars.iv
  %sym.0138 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %tobool2.not139 = icmp eq ptr %sym.0138, null
  br i1 %tobool2.not139, label %for.inc33, label %for.body3

for.body3:                                        ; preds = %for.inc, %for.body
  %sym.0142 = phi ptr [ %sym.0, %for.inc ], [ %sym.0138, %for.body ]
  %conf_unsaved.1140 = phi i32 [ %conf_unsaved.2, %for.inc ], [ %conf_unsaved.0143, %for.body ]
  tail call void @sym_calc_value(ptr noundef nonnull %sym.0142) #19
  %flags.i = getelementptr inbounds %struct.symbol, ptr %sym.0142, i64 0, i32 6
  %3 = load i32, ptr %flags.i, align 4, !tbaa !16
  %4 = and i32 %3, 4112
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %if.end7, label %for.inc

if.end7:                                          ; preds = %for.body3
  %and.i117 = and i32 %3, 65536
  %tobool.i118.not = icmp eq i32 %and.i117, 0
  %and28 = and i32 %3, 512
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool.i118.not, label %land.lhs.true26, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end7
  br i1 %tobool29.not, label %if.end32, label %if.then12

if.then12:                                        ; preds = %land.lhs.true
  %type = getelementptr inbounds %struct.symbol, ptr %sym.0142, i64 0, i32 2
  %6 = load i32, ptr %type, align 8, !tbaa !20
  %.off = add i32 %6, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.then12
  %tri = getelementptr inbounds %struct.symbol, ptr %sym.0142, i64 0, i32 4, i64 0, i32 1
  %7 = load i32, ptr %tri, align 8, !tbaa !22
  %tri.i = getelementptr inbounds %struct.symbol, ptr %sym.0142, i64 0, i32 3, i32 1
  %8 = load i32, ptr %tri.i, align 8, !tbaa !27
  %cmp15 = icmp eq i32 %7, %8
  br i1 %cmp15, label %for.inc, label %if.end32

sw.default:                                       ; preds = %if.then12
  %curr = getelementptr inbounds %struct.symbol, ptr %sym.0142, i64 0, i32 3
  %9 = load ptr, ptr %curr, align 8, !tbaa !28
  %def18 = getelementptr inbounds %struct.symbol, ptr %sym.0142, i64 0, i32 4
  %10 = load ptr, ptr %def18, align 8, !tbaa !21
  %call21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %10) #21
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %for.inc, label %if.end32

land.lhs.true26:                                  ; preds = %if.end7
  br i1 %tobool29.not, label %for.inc, label %if.end32

if.end32:                                         ; preds = %land.lhs.true26, %sw.default, %sw.bb, %land.lhs.true
  %inc = add nsw i32 %conf_unsaved.1140, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end32, %land.lhs.true26, %sw.default, %sw.bb, %for.body3
  %conf_unsaved.2 = phi i32 [ %conf_unsaved.1140, %for.body3 ], [ %inc, %if.end32 ], [ %conf_unsaved.1140, %sw.default ], [ %conf_unsaved.1140, %sw.bb ], [ %conf_unsaved.1140, %land.lhs.true26 ]
  %sym.0 = load ptr, ptr %sym.0142, align 8, !tbaa !5
  %tobool2.not = icmp eq ptr %sym.0, null
  br i1 %tobool2.not, label %for.inc33, label %for.body3

for.inc33:                                        ; preds = %for.inc, %for.body
  %conf_unsaved.1.lcssa = phi i32 [ %conf_unsaved.0143, %for.body ], [ %conf_unsaved.2, %for.inc ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 9973
  br i1 %exitcond.not, label %for.body38, label %for.body

for.body38:                                       ; preds = %for.inc72, %for.inc33
  %indvars.iv153 = phi i64 [ %indvars.iv.next154, %for.inc72 ], [ 0, %for.inc33 ]
  %conf_unsaved.3150 = phi i32 [ %conf_unsaved.4.lcssa, %for.inc72 ], [ %conf_unsaved.1.lcssa, %for.inc33 ]
  %arrayidx40 = getelementptr inbounds [9973 x ptr], ptr @symbol_hash, i64 0, i64 %indvars.iv153
  %sym.1145 = load ptr, ptr %arrayidx40, align 8, !tbaa !5
  %tobool42.not146 = icmp eq ptr %sym.1145, null
  br i1 %tobool42.not146, label %for.inc72, label %for.body43

for.body43:                                       ; preds = %for.inc69, %for.body38
  %sym.1148 = phi ptr [ %sym.1, %for.inc69 ], [ %sym.1145, %for.body38 ]
  %conf_unsaved.4147 = phi i32 [ %conf_unsaved.5, %for.inc69 ], [ %conf_unsaved.3150, %for.body38 ]
  %flags.i122 = getelementptr inbounds %struct.symbol, ptr %sym.1148, i64 0, i32 6
  %11 = load i32, ptr %flags.i122, align 4, !tbaa !16
  %12 = and i32 %11, 65568
  %.not = icmp eq i32 %12, 65536
  br i1 %.not, label %if.then47, label %for.inc69

if.then47:                                        ; preds = %for.body43
  %visible = getelementptr inbounds %struct.symbol, ptr %sym.1148, i64 0, i32 5
  %13 = load i32, ptr %visible, align 8, !tbaa !29
  %cmp48 = icmp ne i32 %13, 0
  %tobool50 = icmp ne i32 %conf_unsaved.4147, 0
  %or.cond = select i1 %cmp48, i1 true, i1 %tobool50
  br i1 %or.cond, label %if.end54, label %if.then51

if.then51:                                        ; preds = %if.then47
  %and53 = and i32 %11, -65537
  store i32 %and53, ptr %flags.i122, align 4, !tbaa !16
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %if.then47
  %type55 = getelementptr inbounds %struct.symbol, ptr %sym.1148, i64 0, i32 2
  %14 = load i32, ptr %type55, align 8, !tbaa !20
  %.off114 = add i32 %14, -3
  %switch115 = icmp ult i32 %.off114, 3
  br i1 %switch115, label %sw.bb56, label %for.inc69

sw.bb56:                                          ; preds = %if.end54
  %def57 = getelementptr inbounds %struct.symbol, ptr %sym.1148, i64 0, i32 4
  %15 = load ptr, ptr %def57, align 8, !tbaa !21
  %call60 = tail call zeroext i1 @sym_string_within_range(ptr noundef nonnull %sym.1148, ptr noundef %15) #19
  br i1 %call60, label %for.inc69, label %if.end62

if.end62:                                         ; preds = %sw.bb56
  %16 = load i32, ptr %flags.i122, align 4, !tbaa !16
  %and64 = and i32 %16, -65665
  store i32 %and64, ptr %flags.i122, align 4, !tbaa !16
  %inc65 = add nsw i32 %conf_unsaved.4147, 1
  br label %for.inc69

for.inc69:                                        ; preds = %if.end62, %sw.bb56, %if.end54, %for.body43
  %conf_unsaved.5 = phi i32 [ %conf_unsaved.4147, %if.end54 ], [ %conf_unsaved.4147, %sw.bb56 ], [ %inc65, %if.end62 ], [ %conf_unsaved.4147, %for.body43 ]
  %sym.1 = load ptr, ptr %sym.1148, align 8, !tbaa !5
  %tobool42.not = icmp eq ptr %sym.1, null
  br i1 %tobool42.not, label %for.inc72, label %for.body43

for.inc72:                                        ; preds = %for.inc69, %for.body38
  %conf_unsaved.4.lcssa = phi i32 [ %conf_unsaved.3150, %for.body38 ], [ %conf_unsaved.5, %for.inc69 ]
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1
  %exitcond156.not = icmp eq i64 %indvars.iv.next154, 9973
  br i1 %exitcond156.not, label %for.end74, label %for.body38

for.end74:                                        ; preds = %for.inc72
  %17 = load i32, ptr @conf_warnings, align 4, !tbaa !14
  %tobool75 = icmp ne i32 %17, 0
  %tobool77 = icmp ne i32 %conf_unsaved.4.lcssa, 0
  %or.cond82 = select i1 %tobool75, i1 true, i1 %tobool77
  br i1 %or.cond82, label %if.then78, label %cleanup

if.then78:                                        ; preds = %for.end74
  %18 = load ptr, ptr @conf_changed_callback, align 8, !tbaa !5
  %tobool.not.i128 = icmp eq ptr %18, null
  %19 = load i8, ptr @conf_changed, align 1
  %cmp.not.i130 = icmp eq i8 %19, 1
  %or.cond137 = select i1 %tobool.not.i128, i1 true, i1 %cmp.not.i130
  br i1 %or.cond137, label %conf_set_changed.exit133, label %if.then.i132

if.then.i132:                                     ; preds = %if.then78
  tail call void %18() #19
  br label %conf_set_changed.exit133

conf_set_changed.exit133:                         ; preds = %if.then.i132, %if.then78
  store i8 1, ptr @conf_changed, align 1, !tbaa !9
  br label %cleanup

cleanup:                                          ; preds = %conf_set_changed.exit133, %for.end74, %conf_set_changed.exit
  %retval.0 = phi i32 [ 0, %for.end74 ], [ 0, %conf_set_changed.exit133 ], [ 1, %conf_set_changed.exit ]
  ret i32 %retval.0
}

declare void @sym_calc_value(ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

declare zeroext i1 @sym_string_within_range(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @print_symbol_for_listconfig(ptr noundef %sym) local_unnamed_addr #4 {
entry:
  %0 = load ptr, ptr @stdout, align 8, !tbaa !5
  %type.i = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 2
  %1 = load i32, ptr %type.i, align 8, !tbaa !20
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %__print_symbol.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %call.i = tail call ptr @sym_get_string_value(ptr noundef nonnull %sym) #19
  %2 = load i32, ptr %type.i, align 8, !tbaa !20
  %cond = icmp eq i32 %2, 5
  br i1 %cond, label %if.then22.i, label %if.end24.i

if.then22.i:                                      ; preds = %if.end.i
  %call23.i = tail call fastcc ptr @escape_string_value(ptr noundef %call.i) #19
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then22.i, %if.end.i
  %val.0.i = phi ptr [ %call23.i, %if.then22.i ], [ %call.i, %if.end.i ]
  %escaped.0.i = phi ptr [ %call23.i, %if.then22.i ], [ null, %if.end.i ]
  %call.i41.i = tail call ptr @getenv(ptr noundef nonnull @.str.24) #19
  %tobool.not.i42.i = icmp eq ptr %call.i41.i, null
  %call..str.24.i43.i = select i1 %tobool.not.i42.i, ptr @.str.24, ptr %call.i41.i
  %name26.i = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 1
  %3 = load ptr, ptr %name26.i, align 8, !tbaa !23
  %call27.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.30, ptr noundef %call..str.24.i43.i, ptr noundef %3, ptr noundef %val.0.i) #19
  tail call void @free(ptr noundef %escaped.0.i) #19
  br label %__print_symbol.exit

__print_symbol.exit:                              ; preds = %if.end24.i, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @__print_symbol(ptr nocapture noundef %fp, ptr noundef %sym, i32 noundef %output_n, i1 noundef zeroext %escape_string) unnamed_addr #4 {
entry:
  %type = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 2
  %0 = load i32, ptr %type, align 8, !tbaa !20
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call ptr @sym_get_string_value(ptr noundef nonnull %sym) #19
  %1 = load i32, ptr %type, align 8, !tbaa !20
  %cmp2 = icmp eq i32 %1, 1
  br i1 %cmp2, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %cmp4 = icmp eq i32 %1, 2
  %cmp5 = icmp ne i32 %output_n, 0
  %or.cond = and i1 %cmp5, %cmp4
  br i1 %or.cond, label %land.lhs.true6, label %if.end16

land.lhs.true:                                    ; preds = %if.end
  %cmp5.old.not = icmp eq i32 %output_n, 0
  br i1 %cmp5.old.not, label %if.end24, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %land.lhs.true, %lor.lhs.false
  %2 = load i8, ptr %call, align 1, !tbaa !11
  %cmp7 = icmp eq i8 %2, 110
  br i1 %cmp7, label %if.then9, label %if.end24

if.then9:                                         ; preds = %land.lhs.true6
  %cmp10 = icmp eq i32 %output_n, 1
  br i1 %cmp10, label %if.then12, label %cleanup

if.then12:                                        ; preds = %if.then9
  %call.i = tail call ptr @getenv(ptr noundef nonnull @.str.24) #19
  %tobool.not.i = icmp eq ptr %call.i, null
  %call..str.24.i = select i1 %tobool.not.i, ptr @.str.24, ptr %call.i
  %name = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 1
  %3 = load ptr, ptr %name, align 8, !tbaa !23
  %call14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fp, ptr noundef nonnull @.str.29, ptr noundef %call..str.24.i, ptr noundef %3)
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false
  %cmp18 = icmp eq i32 %1, 5
  %4 = and i1 %cmp18, %escape_string
  br i1 %4, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end16
  %call23 = tail call fastcc ptr @escape_string_value(ptr noundef %call)
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end16, %land.lhs.true6, %land.lhs.true
  %val.0 = phi ptr [ %call23, %if.then22 ], [ %call, %if.end16 ], [ %call, %land.lhs.true6 ], [ %call, %land.lhs.true ]
  %escaped.0 = phi ptr [ %call23, %if.then22 ], [ null, %if.end16 ], [ null, %land.lhs.true6 ], [ null, %land.lhs.true ]
  %call.i41 = tail call ptr @getenv(ptr noundef nonnull @.str.24) #19
  %tobool.not.i42 = icmp eq ptr %call.i41, null
  %call..str.24.i43 = select i1 %tobool.not.i42, ptr @.str.24, ptr %call.i41
  %name26 = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 1
  %5 = load ptr, ptr %name26, align 8, !tbaa !23
  %call27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fp, ptr noundef nonnull @.str.30, ptr noundef %call..str.24.i43, ptr noundef %5, ptr noundef %val.0)
  tail call void @free(ptr noundef %escaped.0) #19
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then12, %if.then9, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @conf_write_defconfig(ptr nocapture noundef readonly %filename) local_unnamed_addr #4 {
entry:
  %call = tail call ptr @fopen(ptr noundef %filename, ptr noundef nonnull @.str.10)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cleanup62, label %if.end

if.end:                                           ; preds = %entry
  tail call void @sym_clear_all_valid() #19
  %0 = load ptr, ptr getelementptr inbounds (%struct.menu, ptr @rootmenu, i64 0, i32 2), align 8, !tbaa !30
  %cmp.not103 = icmp eq ptr %0, null
  br i1 %cmp.not103, label %while.end60, label %while.body

while.body:                                       ; preds = %while.body.backedge, %if.end
  %menu.0104 = phi ptr [ %menu.0104.be, %while.body.backedge ], [ %0, %if.end ]
  %sym1 = getelementptr inbounds %struct.menu, ptr %menu.0104, i64 0, i32 3
  %1 = load ptr, ptr %sym1, align 8, !tbaa !32
  %cmp2 = icmp eq ptr %1, null
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %while.body
  %call4 = tail call zeroext i1 @menu_is_visible(ptr noundef nonnull %menu.0104) #19
  br label %next_menu

if.else:                                          ; preds = %while.body
  %flags.i = getelementptr inbounds %struct.symbol, ptr %1, i64 0, i32 6
  %2 = load i32, ptr %flags.i, align 4, !tbaa !16
  %and.i = and i32 %2, 16
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then8, label %next_menu

if.then8:                                         ; preds = %if.else
  tail call void @sym_calc_value(ptr noundef nonnull %1) #19
  %3 = load i32, ptr %flags.i, align 4, !tbaa !16
  %and = and i32 %3, 512
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %next_menu, label %if.end11

if.end11:                                         ; preds = %if.then8
  %and13 = and i32 %3, -513
  store i32 %and13, ptr %flags.i, align 4, !tbaa !16
  %call14 = tail call zeroext i1 @sym_is_changeable(ptr noundef nonnull %1) #19
  br i1 %call14, label %if.end16, label %next_menu

if.end16:                                         ; preds = %if.end11
  %call17 = tail call ptr @sym_get_string_value(ptr noundef nonnull %1) #19
  %call18 = tail call ptr @sym_get_string_default(ptr noundef nonnull %1) #19
  %call19 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call17, ptr noundef nonnull dereferenceable(1) %call18) #21
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %next_menu, label %if.end22

if.end22:                                         ; preds = %if.end16
  %4 = load i32, ptr %flags.i, align 4, !tbaa !16
  %and.i96 = and i32 %4, 32
  %tobool.i97.not = icmp eq i32 %and.i96, 0
  br i1 %tobool.i97.not, label %if.end39, label %if.then24

if.then24:                                        ; preds = %if.end22
  %call25 = tail call ptr @sym_get_choice_prop(ptr noundef nonnull %1) #19
  %call26 = tail call ptr @prop_get_symbol(ptr noundef %call25) #19
  %call27 = tail call ptr @sym_choice_default(ptr noundef %call26) #19
  %flags.i98 = getelementptr inbounds %struct.symbol, ptr %call26, i64 0, i32 6
  %5 = load i32, ptr %flags.i98, align 4, !tbaa !16
  %and.i99 = and i32 %5, 256
  %tobool.i100.not = icmp eq i32 %and.i99, 0
  %cmp29 = icmp eq ptr %1, %call27
  %or.cond = select i1 %tobool.i100.not, i1 %cmp29, i1 false
  br i1 %or.cond, label %if.then30, label %if.end39

if.then30:                                        ; preds = %if.then24
  %type = getelementptr inbounds %struct.symbol, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %type, align 8, !tbaa !20
  %cmp31 = icmp eq i32 %6, 1
  br i1 %cmp31, label %land.lhs.true32, label %if.end39

land.lhs.true32:                                  ; preds = %if.then30
  %tri.i = getelementptr inbounds %struct.symbol, ptr %1, i64 0, i32 3, i32 1
  %7 = load i32, ptr %tri.i, align 8, !tbaa !27
  %cmp34 = icmp eq i32 %7, 2
  br i1 %cmp34, label %next_menu, label %if.end39

if.end39:                                         ; preds = %land.lhs.true32, %if.then30, %if.then24, %if.end22
  tail call fastcc void @__print_symbol(ptr noundef nonnull %call, ptr noundef nonnull %1, i32 noundef 1, i1 noundef zeroext true) #19
  br label %next_menu

next_menu:                                        ; preds = %if.end39, %land.lhs.true32, %if.end16, %if.end11, %if.then8, %if.else, %if.then3
  %list = getelementptr inbounds %struct.menu, ptr %menu.0104, i64 0, i32 2
  %8 = load ptr, ptr %list, align 8, !tbaa !30
  %cmp42.not = icmp eq ptr %8, null
  br i1 %cmp42.not, label %if.else45, label %while.body.backedge

if.else45:                                        ; preds = %next_menu
  %9 = load ptr, ptr %menu.0104, align 8, !tbaa !33
  %cmp46.not = icmp eq ptr %9, null
  br i1 %cmp46.not, label %while.cond50, label %while.body.backedge

while.body.backedge:                              ; preds = %while.body52, %if.else45, %next_menu
  %menu.0104.be = phi ptr [ %8, %next_menu ], [ %9, %if.else45 ], [ %11, %while.body52 ]
  br label %while.body

while.cond50:                                     ; preds = %while.body52, %if.else45
  %menu.1 = phi ptr [ %10, %while.body52 ], [ %menu.0104, %if.else45 ]
  %parent = getelementptr inbounds %struct.menu, ptr %menu.1, i64 0, i32 1
  %10 = load ptr, ptr %parent, align 8, !tbaa !34
  %tobool51.not = icmp eq ptr %10, null
  br i1 %tobool51.not, label %while.end60, label %while.body52

while.body52:                                     ; preds = %while.cond50
  %11 = load ptr, ptr %10, align 8, !tbaa !33
  %cmp54.not = icmp eq ptr %11, null
  br i1 %cmp54.not, label %while.cond50, label %while.body.backedge

while.end60:                                      ; preds = %while.cond50, %if.end
  %call61 = tail call i32 @fclose(ptr noundef nonnull %call)
  br label %cleanup62

cleanup62:                                        ; preds = %while.end60, %entry
  %retval.0 = phi i32 [ 0, %while.end60 ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #10

declare void @sym_clear_all_valid() local_unnamed_addr #5

declare zeroext i1 @menu_is_visible(ptr noundef) local_unnamed_addr #5

declare zeroext i1 @sym_is_changeable(ptr noundef) local_unnamed_addr #5

declare ptr @sym_get_string_value(ptr noundef) local_unnamed_addr #5

declare ptr @sym_get_string_default(ptr noundef) local_unnamed_addr #5

declare ptr @sym_choice_default(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @conf_write(ptr noundef %name) local_unnamed_addr #4 {
entry:
  %st1.i = alloca %struct.stat, align 8
  %st2.i = alloca %struct.stat, align 8
  %st.i = alloca %struct.stat, align 8
  %tmpname = alloca [4097 x i8], align 16
  %oldname = alloca [4097 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4097, ptr nonnull %tmpname) #19
  call void @llvm.lifetime.start.p0(i64 4097, ptr nonnull %oldname) #19
  %tobool.not = icmp eq ptr %name, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call ptr @getenv(ptr noundef nonnull @.str) #19
  %tobool.not.i = icmp eq ptr %call.i, null
  %cond.i = select i1 %tobool.not.i, ptr @.str.1, ptr %call.i
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %name.addr.0 = phi ptr [ %name, %entry ], [ %cond.i, %if.then ]
  %0 = load i8, ptr %name.addr.0, align 1, !tbaa !11
  %tobool1.not = icmp eq i8 %0, 0
  br i1 %tobool1.not, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %1 = load ptr, ptr @stderr, align 8, !tbaa !5
  %2 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 21, i64 1, ptr %1) #22
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %st.i) #19
  %call.i.i = call i32 @__xstat(i32 noundef 1, ptr noundef nonnull %name.addr.0, ptr noundef nonnull %st.i) #19
  %tobool.not.i176 = icmp eq i32 %call.i.i, 0
  %st_mode.i = getelementptr inbounds %struct.stat, ptr %st.i, i64 0, i32 3
  %3 = load i32, ptr %st_mode.i, align 8
  %and.i = and i32 %3, 61440
  %cmp.i = icmp eq i32 %and.i, 16384
  %retval.0.i = select i1 %tobool.not.i176, i1 %cmp.i, i1 false
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %st.i) #19
  br i1 %retval.0.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end4
  %4 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.12, ptr noundef nonnull %name.addr.0) #22
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call9 = call fastcc i32 @make_parent_dir(ptr noundef nonnull %name.addr.0)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %cleanup

if.end12:                                         ; preds = %if.end8
  %call13 = call ptr @getenv(ptr noundef nonnull @.str.13) #19
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end12
  %5 = load i8, ptr %call13, align 1, !tbaa !11
  %tobool15.not = icmp eq i8 %5, 0
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %land.lhs.true
  store i8 0, ptr %tmpname, align 16, !tbaa !11
  br label %if.end23

if.else:                                          ; preds = %land.lhs.true, %if.end12
  %call19 = call i32 @getpid() #19
  %call20 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %tmpname, i64 noundef 4097, ptr noundef nonnull @.str.14, ptr noundef nonnull %name.addr.0, i32 noundef %call19) #19
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then16
  %tmpname.sink = phi ptr [ %tmpname, %if.else ], [ %name.addr.0, %if.then16 ]
  %call22 = call ptr @fopen(ptr noundef nonnull %tmpname.sink, ptr noundef nonnull @.str.10)
  %tobool24.not = icmp eq ptr %call22, null
  br i1 %tobool24.not, label %cleanup, label %if.end26

if.end26:                                         ; preds = %if.end23
  %call.i177 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %call22, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.36) #19
  %call1.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %call22, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.36) #19
  %6 = load ptr, ptr getelementptr inbounds (%struct.menu, ptr @rootmenu, i64 0, i32 4), align 8, !tbaa !35
  %text.i = getelementptr inbounds %struct.property, ptr %6, i64 0, i32 2
  %7 = load ptr, ptr %text.i, align 8, !tbaa !36
  %call3.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %call22, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, ptr noundef %7) #19
  %call4.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %call22, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.36) #19
  %8 = load i8, ptr @conf_changed, align 1, !tbaa !9, !range !26
  %tobool.i.not = icmp eq i8 %8, 0
  br i1 %tobool.i.not, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end26
  call void @sym_clear_all_valid() #19
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end26
  %9 = load ptr, ptr getelementptr inbounds (%struct.menu, ptr @rootmenu, i64 0, i32 2), align 8, !tbaa !30
  %tobool30.not209 = icmp eq ptr %9, null
  br i1 %tobool30.not209, label %while.end87, label %while.body

while.body:                                       ; preds = %while.body.backedge, %if.end29
  %need_newline.0211 = phi i8 [ %need_newline.0211.be, %while.body.backedge ], [ 0, %if.end29 ]
  %menu.0210 = phi ptr [ %menu.0210.be, %while.body.backedge ], [ %9, %if.end29 ]
  %sym31 = getelementptr inbounds %struct.menu, ptr %menu.0210, i64 0, i32 3
  %10 = load ptr, ptr %sym31, align 8, !tbaa !32
  %tobool32.not = icmp eq ptr %10, null
  br i1 %tobool32.not, label %if.then33, label %if.else39

if.then33:                                        ; preds = %while.body
  %call34 = call zeroext i1 @menu_is_visible(ptr noundef nonnull %menu.0210) #19
  br i1 %call34, label %if.end36, label %next

if.end36:                                         ; preds = %if.then33
  %call37 = call ptr @menu_get_prompt(ptr noundef nonnull %menu.0210) #19
  %call38 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %call22, ptr noundef nonnull @.str.15, ptr noundef %call37)
  br label %next

if.else39:                                        ; preds = %while.body
  %flags = getelementptr inbounds %struct.symbol, ptr %10, i64 0, i32 6
  %11 = load i32, ptr %flags, align 4, !tbaa !16
  %12 = and i32 %11, 2064
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %if.then45, label %next

if.then45:                                        ; preds = %if.else39
  call void @sym_calc_value(ptr noundef nonnull %10) #19
  %14 = load i32, ptr %flags, align 4, !tbaa !16
  %and47 = and i32 %14, 512
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %next, label %if.end50

if.end50:                                         ; preds = %if.then45
  %15 = and i8 %need_newline.0211, 1
  %tobool51.not = icmp eq i8 %15, 0
  br i1 %tobool51.not, label %if.end54, label %if.then52

if.then52:                                        ; preds = %if.end50
  %fputc = call i32 @fputc(i32 10, ptr nonnull %call22)
  %.pre = load i32, ptr %flags, align 4, !tbaa !16
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %if.end50
  %16 = phi i32 [ %.pre, %if.then52 ], [ %14, %if.end50 ]
  %need_newline.1 = phi i8 [ 0, %if.then52 ], [ %need_newline.0211, %if.end50 ]
  %or = or i32 %16, 2048
  store i32 %or, ptr %flags, align 4, !tbaa !16
  call fastcc void @__print_symbol(ptr noundef nonnull %call22, ptr noundef nonnull %10, i32 noundef 1, i1 noundef zeroext true) #19
  br label %next

next:                                             ; preds = %if.end54, %if.then45, %if.else39, %if.end36, %if.then33
  %need_newline.2 = phi i8 [ %need_newline.0211, %if.else39 ], [ %need_newline.1, %if.end54 ], [ %need_newline.0211, %if.then45 ], [ 0, %if.end36 ], [ %need_newline.0211, %if.then33 ]
  %list = getelementptr inbounds %struct.menu, ptr %menu.0210, i64 0, i32 2
  %17 = load ptr, ptr %list, align 8, !tbaa !30
  %tobool58.not = icmp eq ptr %17, null
  br i1 %tobool58.not, label %if.end61, label %while.body.backedge

if.end61:                                         ; preds = %next
  %18 = load ptr, ptr %menu.0210, align 8, !tbaa !33
  %tobool63.not = icmp eq ptr %18, null
  br i1 %tobool63.not, label %while.cond67, label %while.body.backedge

while.body.backedge:                              ; preds = %if.end80, %if.end61, %next
  %need_newline.0211.be = phi i8 [ %need_newline.2, %next ], [ %need_newline.2, %if.end61 ], [ %need_newline.4, %if.end80 ]
  %menu.0210.be = phi ptr [ %17, %next ], [ %18, %if.end61 ], [ %21, %if.end80 ]
  br label %while.body

while.cond67:                                     ; preds = %if.end80, %if.end61
  %menu.1 = phi ptr [ %19, %if.end80 ], [ %menu.0210, %if.end61 ]
  %need_newline.3 = phi i8 [ %need_newline.4, %if.end80 ], [ %need_newline.2, %if.end61 ]
  %parent = getelementptr inbounds %struct.menu, ptr %menu.1, i64 0, i32 1
  %19 = load ptr, ptr %parent, align 8, !tbaa !34
  %tobool68.not = icmp eq ptr %19, null
  br i1 %tobool68.not, label %while.end87, label %while.body69

while.body69:                                     ; preds = %while.cond67
  %sym70 = getelementptr inbounds %struct.menu, ptr %19, i64 0, i32 3
  %20 = load ptr, ptr %sym70, align 8, !tbaa !32
  %tobool71.not = icmp eq ptr %20, null
  br i1 %tobool71.not, label %land.lhs.true72, label %if.end80

land.lhs.true72:                                  ; preds = %while.body69
  %call73 = call zeroext i1 @menu_is_visible(ptr noundef nonnull %19) #19
  %cmp = icmp ne ptr %19, @rootmenu
  %or.cond = select i1 %call73, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then77, label %if.end80

if.then77:                                        ; preds = %land.lhs.true72
  %call78 = call ptr @menu_get_prompt(ptr noundef nonnull %19) #19
  %call79 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %call22, ptr noundef nonnull @.str.17, ptr noundef %call78)
  br label %if.end80

if.end80:                                         ; preds = %if.then77, %land.lhs.true72, %while.body69
  %need_newline.4 = phi i8 [ %need_newline.3, %while.body69 ], [ 1, %if.then77 ], [ %need_newline.3, %land.lhs.true72 ]
  %21 = load ptr, ptr %19, align 8, !tbaa !33
  %tobool82.not = icmp eq ptr %21, null
  br i1 %tobool82.not, label %while.cond67, label %while.body.backedge

while.end87:                                      ; preds = %while.cond67, %if.end29
  %call88 = call i32 @fclose(ptr noundef nonnull %call22)
  br label %for.body

for.body:                                         ; preds = %for.inc97.1, %while.end87
  %indvars.iv = phi i64 [ 0, %while.end87 ], [ %indvars.iv.next.1, %for.inc97.1 ]
  %arrayidx = getelementptr inbounds [9973 x ptr], ptr @symbol_hash, i64 0, i64 %indvars.iv
  %sym.0212 = load ptr, ptr %arrayidx, align 16, !tbaa !5
  %tobool92.not213 = icmp eq ptr %sym.0212, null
  br i1 %tobool92.not213, label %for.inc97, label %for.body93

for.body93:                                       ; preds = %for.body93, %for.body
  %sym.0214 = phi ptr [ %sym.0, %for.body93 ], [ %sym.0212, %for.body ]
  %flags94 = getelementptr inbounds %struct.symbol, ptr %sym.0214, i64 0, i32 6
  %22 = load i32, ptr %flags94, align 4, !tbaa !16
  %and95 = and i32 %22, -2049
  store i32 %and95, ptr %flags94, align 4, !tbaa !16
  %sym.0 = load ptr, ptr %sym.0214, align 8, !tbaa !5
  %tobool92.not = icmp eq ptr %sym.0, null
  br i1 %tobool92.not, label %for.inc97, label %for.body93

for.inc97:                                        ; preds = %for.body93, %for.body
  %indvars.iv.next = or i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 9973
  br i1 %exitcond.not, label %for.end98, label %for.body.1

for.body.1:                                       ; preds = %for.inc97
  %arrayidx.1 = getelementptr inbounds [9973 x ptr], ptr @symbol_hash, i64 0, i64 %indvars.iv.next
  %sym.0212.1 = load ptr, ptr %arrayidx.1, align 8, !tbaa !5
  %tobool92.not213.1 = icmp eq ptr %sym.0212.1, null
  br i1 %tobool92.not213.1, label %for.inc97.1, label %for.body93.1

for.body93.1:                                     ; preds = %for.body93.1, %for.body.1
  %sym.0214.1 = phi ptr [ %sym.0.1, %for.body93.1 ], [ %sym.0212.1, %for.body.1 ]
  %flags94.1 = getelementptr inbounds %struct.symbol, ptr %sym.0214.1, i64 0, i32 6
  %23 = load i32, ptr %flags94.1, align 4, !tbaa !16
  %and95.1 = and i32 %23, -2049
  store i32 %and95.1, ptr %flags94.1, align 4, !tbaa !16
  %sym.0.1 = load ptr, ptr %sym.0214.1, align 8, !tbaa !5
  %tobool92.not.1 = icmp eq ptr %sym.0.1, null
  br i1 %tobool92.not.1, label %for.inc97.1, label %for.body93.1

for.inc97.1:                                      ; preds = %for.body93.1, %for.body.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  br label %for.body

for.end98:                                        ; preds = %for.inc97
  %24 = load i8, ptr %tmpname, align 16, !tbaa !11
  %tobool100.not = icmp eq i8 %24, 0
  br i1 %tobool100.not, label %if.end117, label %if.then101

if.then101:                                       ; preds = %for.end98
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %st1.i) #19
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %st2.i) #19
  %call.i178 = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %name.addr.0, i32 noundef 0) #19
  %cmp.i179 = icmp slt i32 %call.i178, 0
  br i1 %cmp.i179, label %is_same.exit.thread, label %if.end.i

is_same.exit.thread:                              ; preds = %if.then101
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %st2.i) #19
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %st1.i) #19
  br label %if.end107

if.end.i:                                         ; preds = %if.then101
  %call1.i180 = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %tmpname, i32 noundef 0) #19
  %cmp2.i = icmp slt i32 %call1.i180, 0
  br i1 %cmp2.i, label %is_same.exit.thread193, label %if.end4.i

is_same.exit.thread193:                           ; preds = %if.end.i
  %call36.i195 = call i32 @close(i32 noundef %call.i178) #19
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %st2.i) #19
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %st1.i) #19
  br label %if.end107

if.end4.i:                                        ; preds = %if.end.i
  %call.i.i181 = call i32 @__fxstat(i32 noundef 1, i32 noundef %call.i178, ptr noundef nonnull %st1.i) #19
  %tobool6.not.i = icmp eq i32 %call.i.i181, 0
  br i1 %tobool6.not.i, label %if.end9.i, label %if.then104.critedge

if.end9.i:                                        ; preds = %if.end4.i
  %call.i55.i = call i32 @__fxstat(i32 noundef 1, i32 noundef %call1.i180, ptr noundef nonnull %st2.i) #19
  %tobool11.not.i = icmp eq i32 %call.i55.i, 0
  br i1 %tobool11.not.i, label %if.end15.i, label %if.then104.critedge196

if.end15.i:                                       ; preds = %if.end9.i
  %st_size.i = getelementptr inbounds %struct.stat, ptr %st1.i, i64 0, i32 8
  %25 = load i64, ptr %st_size.i, align 8, !tbaa !38
  %st_size16.i = getelementptr inbounds %struct.stat, ptr %st2.i, i64 0, i32 8
  %26 = load i64, ptr %st_size16.i, align 8, !tbaa !38
  %cmp17.not.i = icmp eq i64 %25, %26
  br i1 %cmp17.not.i, label %if.end19.i, label %if.end107.critedge

if.end19.i:                                       ; preds = %if.end15.i
  %call21.i = call ptr @mmap(ptr noundef null, i64 noundef %25, i32 noundef 1, i32 noundef 2, i32 noundef %call.i178, i64 noundef 0) #19
  %cmp22.i = icmp eq ptr %call21.i, inttoptr (i64 -1 to ptr)
  br i1 %cmp22.i, label %if.end107.critedge201, label %if.end24.i

if.end24.i:                                       ; preds = %if.end19.i
  %27 = load i64, ptr %st_size16.i, align 8, !tbaa !38
  %call26.i = call ptr @mmap(ptr noundef null, i64 noundef %27, i32 noundef 1, i32 noundef 2, i32 noundef %call1.i180, i64 noundef 0) #19
  %cmp27.i = icmp eq ptr %call26.i, inttoptr (i64 -1 to ptr)
  br i1 %cmp27.i, label %if.end107.critedge204, label %if.end29.i

if.end29.i:                                       ; preds = %if.end24.i
  %28 = load i64, ptr %st_size.i, align 8, !tbaa !38
  %call31.i = call i32 @bcmp(ptr noundef %call21.i, ptr noundef %call26.i, i64 noundef %28) #21
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  %call35.i = call i32 @close(i32 noundef %call1.i180) #19
  %call36.i = call i32 @close(i32 noundef %call.i178) #19
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %st2.i) #19
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %st1.i) #19
  br i1 %tobool32.not.i, label %if.then104, label %if.end107

if.then104.critedge:                              ; preds = %if.end4.i
  %call35.i.c = call i32 @close(i32 noundef %call1.i180) #19
  %call36.i.c = call i32 @close(i32 noundef %call.i178) #19
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %st2.i) #19
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %st1.i) #19
  br label %if.then104

if.then104.critedge196:                           ; preds = %if.end9.i
  %call35.i.c197 = call i32 @close(i32 noundef %call1.i180) #19
  %call36.i.c198 = call i32 @close(i32 noundef %call.i178) #19
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %st2.i) #19
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %st1.i) #19
  br label %if.then104

if.then104:                                       ; preds = %if.then104.critedge196, %if.then104.critedge, %if.end29.i
  call void (ptr, ...) @conf_message(ptr noundef nonnull @.str.18, ptr noundef nonnull %name.addr.0)
  %call106 = call i32 @unlink(ptr noundef nonnull %tmpname) #19
  %29 = load ptr, ptr @conf_changed_callback, align 8, !tbaa !5
  %tobool.not.i183 = icmp eq ptr %29, null
  %30 = load i8, ptr @conf_changed, align 1
  %cmp.not.i = icmp eq i8 %30, 0
  %or.cond207 = select i1 %tobool.not.i183, i1 true, i1 %cmp.not.i
  br i1 %or.cond207, label %conf_set_changed.exit, label %if.then.i

if.then.i:                                        ; preds = %if.then104
  call void %29() #19
  br label %conf_set_changed.exit

conf_set_changed.exit:                            ; preds = %if.then.i, %if.then104
  store i8 0, ptr @conf_changed, align 1, !tbaa !9
  br label %cleanup

if.end107.critedge:                               ; preds = %if.end15.i
  %call35.i.c199 = call i32 @close(i32 noundef %call1.i180) #19
  %call36.i.c200 = call i32 @close(i32 noundef %call.i178) #19
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %st2.i) #19
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %st1.i) #19
  br label %if.end107

if.end107.critedge201:                            ; preds = %if.end19.i
  %call35.i.c202 = call i32 @close(i32 noundef %call1.i180) #19
  %call36.i.c203 = call i32 @close(i32 noundef %call.i178) #19
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %st2.i) #19
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %st1.i) #19
  br label %if.end107

if.end107.critedge204:                            ; preds = %if.end24.i
  %call35.i.c205 = call i32 @close(i32 noundef %call1.i180) #19
  %call36.i.c206 = call i32 @close(i32 noundef %call.i178) #19
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %st2.i) #19
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %st1.i) #19
  br label %if.end107

if.end107:                                        ; preds = %if.end107.critedge204, %if.end107.critedge201, %if.end107.critedge, %if.end29.i, %is_same.exit.thread193, %is_same.exit.thread
  %call109 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %oldname, i64 noundef 4097, ptr noundef nonnull @.str.19, ptr noundef nonnull %name.addr.0) #19
  %call111 = call i32 @rename(ptr noundef nonnull %name.addr.0, ptr noundef nonnull %oldname) #19
  %call113 = call i32 @rename(ptr noundef nonnull %tmpname, ptr noundef nonnull %name.addr.0) #19
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.end117, label %cleanup

if.end117:                                        ; preds = %if.end107, %for.end98
  call void (ptr, ...) @conf_message(ptr noundef nonnull @.str.20, ptr noundef nonnull %name.addr.0)
  %31 = load ptr, ptr @conf_changed_callback, align 8, !tbaa !5
  %tobool.not.i185 = icmp eq ptr %31, null
  %32 = load i8, ptr @conf_changed, align 1
  %cmp.not.i187 = icmp eq i8 %32, 0
  %or.cond208 = select i1 %tobool.not.i185, i1 true, i1 %cmp.not.i187
  br i1 %or.cond208, label %conf_set_changed.exit191, label %if.then.i189

if.then.i189:                                     ; preds = %if.end117
  call void %31() #19
  br label %conf_set_changed.exit191

conf_set_changed.exit191:                         ; preds = %if.then.i189, %if.end117
  store i8 0, ptr @conf_changed, align 1, !tbaa !9
  br label %cleanup

cleanup:                                          ; preds = %conf_set_changed.exit191, %if.end107, %conf_set_changed.exit, %if.end23, %if.end8, %if.then6, %if.then2
  %retval.0 = phi i32 [ -1, %if.then6 ], [ 0, %conf_set_changed.exit ], [ 0, %conf_set_changed.exit191 ], [ -1, %if.then2 ], [ -1, %if.end8 ], [ 1, %if.end23 ], [ 1, %if.end107 ]
  call void @llvm.lifetime.end.p0(i64 4097, ptr nonnull %oldname) #19
  call void @llvm.lifetime.end.p0(i64 4097, ptr nonnull %tmpname) #19
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal fastcc i32 @make_parent_dir(ptr nocapture noundef readonly %path) unnamed_addr #4 {
entry:
  %st.i = alloca %struct.stat, align 8
  %tmp = alloca [4097 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4097, ptr nonnull %tmp) #19
  %call = call ptr @strncpy(ptr noundef nonnull %tmp, ptr noundef nonnull dereferenceable(1) %path, i64 noundef 4097) #19
  %arrayidx = getelementptr inbounds [4097 x i8], ptr %tmp, i64 0, i64 4096
  store i8 0, ptr %arrayidx, align 16, !tbaa !11
  %call2 = call ptr @strrchr(ptr noundef nonnull %tmp, i32 noundef 47) #21
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds i8, ptr %call2, i64 1
  store i8 0, ptr %add.ptr, align 1, !tbaa !11
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %if.end
  %p.0 = phi ptr [ %tmp, %if.end ], [ %incdec.ptr, %while.cond ]
  %0 = load i8, ptr %p.0, align 1, !tbaa !11
  %cmp = icmp eq i8 %0, 47
  %incdec.ptr = getelementptr inbounds i8, ptr %p.0, i64 1
  br i1 %cmp, label %while.cond, label %while.cond5.preheader

while.cond5.preheader:                            ; preds = %while.cond
  %call634 = call ptr @strchr(ptr noundef nonnull %p.0, i32 noundef 47) #21
  %tobool7.not35 = icmp eq ptr %call634, null
  br i1 %tobool7.not35, label %cleanup, label %while.body8.lr.ph

while.body8.lr.ph:                                ; preds = %while.cond5.preheader
  %st_mode.i = getelementptr inbounds %struct.stat, ptr %st.i, i64 0, i32 3
  br label %while.body8

while.cond5.loopexit:                             ; preds = %while.body20
  %call6 = call ptr @strchr(ptr noundef nonnull %incdec.ptr21, i32 noundef 47) #21
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %cleanup, label %while.body8

while.body8:                                      ; preds = %while.cond5.loopexit, %while.body8.lr.ph
  %call636 = phi ptr [ %call634, %while.body8.lr.ph ], [ %call6, %while.cond5.loopexit ]
  store i8 0, ptr %call636, align 1, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %st.i) #19
  %call.i.i = call i32 @__xstat(i32 noundef 1, ptr noundef nonnull %tmp, ptr noundef nonnull %st.i) #19
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  %1 = load i32, ptr %st_mode.i, align 8
  %and.i = and i32 %1, 61440
  %cmp.i = icmp eq i32 %and.i, 16384
  %retval.0.i = select i1 %tobool.not.i, i1 %cmp.i, i1 false
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %st.i) #19
  br i1 %retval.0.i, label %if.end15, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body8
  %call12 = call i32 @mkdir(ptr noundef nonnull %tmp, i32 noundef 493) #19
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %cleanup

if.end15:                                         ; preds = %land.lhs.true, %while.body8
  store i8 47, ptr %call636, align 1, !tbaa !11
  br label %while.body20

while.body20:                                     ; preds = %while.body20, %if.end15
  %p.233 = phi ptr [ %call636, %if.end15 ], [ %incdec.ptr21, %while.body20 ]
  %incdec.ptr21 = getelementptr inbounds i8, ptr %p.233, i64 1
  %.pr = load i8, ptr %incdec.ptr21, align 1, !tbaa !11
  %cmp18 = icmp eq i8 %.pr, 47
  br i1 %cmp18, label %while.body20, label %while.cond5.loopexit

cleanup:                                          ; preds = %land.lhs.true, %while.cond5.loopexit, %while.cond5.preheader, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %while.cond5.preheader ], [ -1, %land.lhs.true ], [ 0, %while.cond5.loopexit ]
  call void @llvm.lifetime.end.p0(i64 4097, ptr nonnull %tmp) #19
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local zeroext i1 @conf_get_changed() local_unnamed_addr #12 {
entry:
  %0 = load i8, ptr @conf_changed, align 1, !tbaa !9, !range !26
  %tobool = icmp ne i8 %0, 0
  ret i1 %tobool
}

declare ptr @menu_get_prompt(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @rename(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local i32 @conf_write_autoconf(i32 noundef %overwrite) local_unnamed_addr #4 {
entry:
  %name.i = alloca [4096 x i8], align 16
  %tmp.i = alloca [4096 x i8], align 16
  %st.i = alloca %struct.stat, align 8
  %call.i = tail call ptr @getenv(ptr noundef nonnull @.str.37) #19
  %tobool.not.i = icmp eq ptr %call.i, null
  %cond.i = select i1 %tobool.not.i, ptr @.str.38, ptr %call.i
  %tobool.not = icmp eq i32 %overwrite, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %st.i) #19
  %call.i.i = call i32 @__xstat(i32 noundef 1, ptr noundef nonnull %cond.i, ptr noundef nonnull %st.i) #19
  %tobool.not.i37 = icmp eq i32 %call.i.i, 0
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %st.i) #19
  br i1 %tobool.not.i37, label %cleanup, label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %name.i) #19
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %tmp.i) #19
  %call.i38 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %name.i, i64 noundef 4096, ptr noundef nonnull @.str.39, ptr noundef %cond.i) #19
  %cmp.i = icmp ugt i32 %call.i38, 4095
  br i1 %cmp.i, label %conf_write_autoconf_cmd.exit.thread, label %if.end.i

if.end.i:                                         ; preds = %if.end
  %call3.i = call fastcc i32 @make_parent_dir(ptr noundef nonnull %name.i) #19
  %tobool.not.i39 = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i39, label %if.end5.i, label %conf_write_autoconf_cmd.exit.thread

if.end5.i:                                        ; preds = %if.end.i
  %call7.i = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %tmp.i, i64 noundef 4096, ptr noundef nonnull @.str.40, ptr noundef %cond.i) #19
  %cmp9.i = icmp ugt i32 %call7.i, 4095
  br i1 %cmp9.i, label %conf_write_autoconf_cmd.exit.thread, label %if.end12.i

if.end12.i:                                       ; preds = %if.end5.i
  %call14.i = call ptr @fopen(ptr noundef nonnull %tmp.i, ptr noundef nonnull @.str.10) #19
  %tobool15.not.i = icmp eq ptr %call14.i, null
  br i1 %tobool15.not.i, label %cleanup.sink.split.i, label %if.end17.i

if.end17.i:                                       ; preds = %if.end12.i
  %0 = call i64 @fwrite(ptr nonnull @.str.42, i64 17, i64 1, ptr nonnull %call14.i) #19
  %file.053.i = load ptr, ptr @file_list, align 8, !tbaa !5
  %tobool19.not54.i = icmp eq ptr %file.053.i, null
  br i1 %tobool19.not54.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %if.end17.i
  %file.055.i = phi ptr [ %file.0.i, %for.body.i ], [ %file.053.i, %if.end17.i ]
  %name20.i = getelementptr inbounds %struct.file, ptr %file.055.i, i64 0, i32 2
  %1 = load ptr, ptr %name20.i, align 8, !tbaa !41
  %call21.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %call14.i, ptr noundef nonnull @.str.43, ptr noundef %1) #19
  %file.0.i = load ptr, ptr %file.055.i, align 8, !tbaa !5
  %tobool19.not.i = icmp eq ptr %file.0.i, null
  br i1 %tobool19.not.i, label %for.end.i, label %for.body.i

for.end.i:                                        ; preds = %for.body.i, %if.end17.i
  %call22.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %call14.i, ptr noundef nonnull @.str.44, ptr noundef %cond.i) #19
  call void @env_write_dep(ptr noundef nonnull %call14.i, ptr noundef %cond.i) #19
  %2 = call i64 @fwrite(ptr nonnull @.str.45, i64 19, i64 1, ptr nonnull %call14.i) #19
  %call24.i = call i32 @ferror(ptr noundef nonnull %call14.i) #19
  %call25.i = call i32 @fclose(ptr noundef nonnull %call14.i) #19
  %tobool26.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool26.not.i, label %if.end28.i, label %conf_write_autoconf_cmd.exit.thread

if.end28.i:                                       ; preds = %for.end.i
  %call31.i = call i32 @rename(ptr noundef nonnull %tmp.i, ptr noundef nonnull %name.i) #19
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.end5, label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end28.i, %if.end12.i
  %.str.46.sink.i = phi ptr [ @.str.41, %if.end12.i ], [ @.str.46, %if.end28.i ]
  call void @perror(ptr noundef nonnull %.str.46.sink.i) #23
  br label %conf_write_autoconf_cmd.exit.thread

conf_write_autoconf_cmd.exit.thread:              ; preds = %cleanup.sink.split.i, %for.end.i, %if.end5.i, %if.end.i, %if.end
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %tmp.i) #19
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %name.i) #19
  br label %cleanup

if.end5:                                          ; preds = %if.end28.i
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %tmp.i) #19
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %name.i) #19
  %call.i.i40 = call ptr @getenv(ptr noundef nonnull @.str.37) #19
  %tobool.not.i.i = icmp eq ptr %call.i.i40, null
  %cond.i.i = select i1 %tobool.not.i.i, ptr @.str.38, ptr %call.i.i40
  %call1.i = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %cond.i.i, i32 noundef 47) #21
  %tobool.not.i41 = icmp eq ptr %call1.i, null
  %sub.ptr.lhs.cast.i = ptrtoint ptr %call1.i to i64
  %sub.ptr.rhs.cast.i = ptrtoint ptr %cond.i.i to i64
  %sub.ptr.sub.i = add i64 %sub.ptr.lhs.cast.i, 1
  %add.i = sub i64 %sub.ptr.sub.i, %sub.ptr.rhs.cast.i
  %cond.i42 = select i1 %tobool.not.i41, i64 0, i64 %add.i
  store i64 %cond.i42, ptr @depfile_prefix_len, align 8, !tbaa !24
  %3 = add i64 %cond.i42, -4096
  %cmp.i43 = icmp ult i64 %3, -4097
  br i1 %cmp.i43, label %cleanup, label %if.end.i45

if.end.i45:                                       ; preds = %if.end5
  %call3.i44 = call ptr @strncpy(ptr noundef nonnull @depfile_path, ptr noundef %cond.i.i, i64 noundef %cond.i42) #19
  %arrayidx.i = getelementptr inbounds [4096 x i8], ptr @depfile_path, i64 0, i64 %cond.i42
  store i8 0, ptr %arrayidx.i, align 1, !tbaa !11
  %call4.i = call i32 @conf_read_simple(ptr noundef %cond.i.i, i32 noundef 1) #19
  %4 = load ptr, ptr @modules_sym, align 8, !tbaa !5
  call void @sym_calc_value(ptr noundef %4) #19
  br label %for.body.i46

for.body.i46:                                     ; preds = %for.inc57.i, %if.end.i45
  %indvars.iv.i = phi i64 [ 0, %if.end.i45 ], [ %indvars.iv.next.i, %for.inc57.i ]
  %arrayidx6.i = getelementptr inbounds [9973 x ptr], ptr @symbol_hash, i64 0, i64 %indvars.iv.i
  %sym.090.i = load ptr, ptr %arrayidx6.i, align 8, !tbaa !5
  %tobool8.not91.i = icmp eq ptr %sym.090.i, null
  br i1 %tobool8.not91.i, label %for.inc57.i, label %for.body9.i

for.body9.i:                                      ; preds = %for.inc.i, %for.body.i46
  %sym.092.i = phi ptr [ %sym.0.i, %for.inc.i ], [ %sym.090.i, %for.body.i46 ]
  call void @sym_calc_value(ptr noundef nonnull %sym.092.i) #19
  %flags.i = getelementptr inbounds %struct.symbol, ptr %sym.092.i, i64 0, i32 6
  %5 = load i32, ptr %flags.i, align 4, !tbaa !16
  %and.i = and i32 %5, 4096
  %tobool10.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool10.not.i, label %lor.lhs.false.i, label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body9.i
  %name11.i = getelementptr inbounds %struct.symbol, ptr %sym.092.i, i64 0, i32 1
  %6 = load ptr, ptr %name11.i, align 8, !tbaa !23
  %tobool12.not.i = icmp eq ptr %6, null
  br i1 %tobool12.not.i, label %for.inc.i, label %if.end14.i

if.end14.i:                                       ; preds = %lor.lhs.false.i
  %and16.i = and i32 %5, 512
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  %and47.i = and i32 %5, 131072
  %tobool48.not.i = icmp eq i32 %and47.i, 0
  br i1 %tobool17.not.i, label %if.else45.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.end14.i
  %type36.i = getelementptr inbounds %struct.symbol, ptr %sym.092.i, i64 0, i32 2
  %7 = load i32, ptr %type36.i, align 8, !tbaa !20
  br i1 %tobool48.not.i, label %if.else.i, label %if.then22.i

if.then22.i:                                      ; preds = %if.then18.i
  switch i32 %7, label %if.end51.i [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb.i
    i32 5, label %sw.bb28.i
    i32 4, label %sw.bb28.i
    i32 3, label %sw.bb28.i
  ]

sw.bb.i:                                          ; preds = %if.then22.i, %if.then22.i
  %tri.i.i = getelementptr inbounds %struct.symbol, ptr %sym.092.i, i64 0, i32 3, i32 1
  %8 = load i32, ptr %tri.i.i, align 8, !tbaa !27
  %tri.i = getelementptr inbounds %struct.symbol, ptr %sym.092.i, i64 0, i32 4, i64 1, i32 1
  %9 = load i32, ptr %tri.i, align 8, !tbaa !22
  %cmp25.i = icmp eq i32 %8, %9
  br i1 %cmp25.i, label %for.inc.i, label %if.end51.i

sw.bb28.i:                                        ; preds = %if.then22.i, %if.then22.i, %if.then22.i
  %call29.i = call ptr @sym_get_string_value(ptr noundef nonnull %sym.092.i) #19
  %arrayidx31.i = getelementptr inbounds %struct.symbol, ptr %sym.092.i, i64 0, i32 4, i64 1
  %10 = load ptr, ptr %arrayidx31.i, align 8, !tbaa !21
  %call32.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %call29.i, ptr noundef nonnull dereferenceable(1) %10) #21
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %for.inc.i, label %sw.bb28.if.end51_crit_edge.i

sw.bb28.if.end51_crit_edge.i:                     ; preds = %sw.bb28.i
  %.pre.i = load ptr, ptr %name11.i, align 8, !tbaa !23
  br label %if.end51.i

if.else.i:                                        ; preds = %if.then18.i
  %.off.i = add i32 %7, -1
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %sw.bb37.i, label %if.end51.i

sw.bb37.i:                                        ; preds = %if.else.i
  %tri.i85.i = getelementptr inbounds %struct.symbol, ptr %sym.092.i, i64 0, i32 3, i32 1
  %11 = load i32, ptr %tri.i85.i, align 8, !tbaa !27
  %cmp39.i = icmp eq i32 %11, 0
  br i1 %cmp39.i, label %for.inc.i, label %if.end51.i

if.else45.i:                                      ; preds = %if.end14.i
  br i1 %tobool48.not.i, label %for.inc.i, label %if.end51.i

if.end51.i:                                       ; preds = %if.else45.i, %sw.bb37.i, %if.else.i, %sw.bb28.if.end51_crit_edge.i, %sw.bb.i, %if.then22.i
  %12 = phi ptr [ %.pre.i, %sw.bb28.if.end51_crit_edge.i ], [ %6, %if.else.i ], [ %6, %if.else45.i ], [ %6, %if.then22.i ], [ %6, %sw.bb.i ], [ %6, %sw.bb37.i ]
  %13 = load i64, ptr @depfile_prefix_len, align 8, !tbaa !24
  %call.i86.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %12) #21
  %add.i.i = add i64 %13, -4096
  %14 = add i64 %add.i.i, %call.i86.i
  %cmp.i.i = icmp ult i64 %14, -4097
  br i1 %cmp.i.i, label %cleanup, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end51.i
  %add.ptr.i.i = getelementptr inbounds i8, ptr @depfile_path, i64 %13
  %call2.i.i = call ptr @strcpy(ptr noundef nonnull %add.ptr.i.i, ptr noundef nonnull dereferenceable(1) %12) #19
  %call3.i.i = call i32 (ptr, i32, ...) @open(ptr noundef nonnull @depfile_path, i32 noundef 577, i32 noundef 420) #19
  %cmp4.i.i = icmp eq i32 %call3.i.i, -1
  br i1 %cmp4.i.i, label %cleanup, label %conf_touch_dep.exit.i

conf_touch_dep.exit.i:                            ; preds = %if.end.i.i
  %call7.i.i = call i32 @close(i32 noundef %call3.i.i) #19
  br label %for.inc.i

for.inc.i:                                        ; preds = %conf_touch_dep.exit.i, %if.else45.i, %sw.bb37.i, %sw.bb28.i, %sw.bb.i, %lor.lhs.false.i, %for.body9.i
  %sym.0.i = load ptr, ptr %sym.092.i, align 8, !tbaa !5
  %tobool8.not.i = icmp eq ptr %sym.0.i, null
  br i1 %tobool8.not.i, label %for.inc57.i, label %for.body9.i

for.inc57.i:                                      ; preds = %for.inc.i, %for.body.i46
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 9973
  br i1 %exitcond.not.i, label %for.body, label %for.body.i46

for.body:                                         ; preds = %for.inc13, %for.inc57.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc13 ], [ 0, %for.inc57.i ]
  %arrayidx = getelementptr inbounds [9973 x ptr], ptr @symbol_hash, i64 0, i64 %indvars.iv
  %sym.058 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %tobool11.not59 = icmp eq ptr %sym.058, null
  br i1 %tobool11.not59, label %for.inc13, label %for.body12

for.body12:                                       ; preds = %for.body12, %for.body
  %sym.060 = phi ptr [ %sym.0, %for.body12 ], [ %sym.058, %for.body ]
  call void @sym_calc_value(ptr noundef nonnull %sym.060) #19
  %sym.0 = load ptr, ptr %sym.060, align 8, !tbaa !5
  %tobool11.not = icmp eq ptr %sym.0, null
  br i1 %tobool11.not, label %for.inc13, label %for.body12

for.inc13:                                        ; preds = %for.body12, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 9973
  br i1 %exitcond.not, label %for.end14, label %for.body

for.end14:                                        ; preds = %for.inc13
  %call.i48 = call ptr @getenv(ptr noundef nonnull @.str.48) #19
  %tobool.not.i49 = icmp eq ptr %call.i48, null
  %cond.i50 = select i1 %tobool.not.i49, ptr @.str.49, ptr %call.i48
  %call16 = call fastcc i32 @__conf_write_autoconf(ptr noundef %cond.i50, ptr noundef nonnull @print_symbol_for_c, ptr noundef nonnull @comment_style_c)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %cleanup

if.end19:                                         ; preds = %for.end14
  %call.i51 = call ptr @getenv(ptr noundef nonnull @.str.37) #19
  %tobool.not.i52 = icmp eq ptr %call.i51, null
  %cond.i53 = select i1 %tobool.not.i52, ptr @.str.38, ptr %call.i51
  %call21 = call fastcc i32 @__conf_write_autoconf(ptr noundef %cond.i53, ptr noundef nonnull @print_symbol_for_autoconf, ptr noundef nonnull @comment_style_pound)
  %tobool22.not = icmp ne i32 %call21, 0
  %. = sext i1 %tobool22.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %for.end14, %if.end.i.i, %if.end51.i, %if.end5, %conf_write_autoconf_cmd.exit.thread, %land.lhs.true
  %retval.0 = phi i32 [ 0, %land.lhs.true ], [ %call16, %for.end14 ], [ %., %if.end19 ], [ -1, %conf_write_autoconf_cmd.exit.thread ], [ 1, %if.end5 ], [ 1, %if.end51.i ], [ 1, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @__conf_write_autoconf(ptr noundef %filename, ptr nocapture noundef readonly %print_symbol, ptr nocapture noundef readonly %comment_style) unnamed_addr #4 {
entry:
  %tmp = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %tmp) #19
  %call = tail call fastcc i32 @make_parent_dir(ptr noundef %filename)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %tmp, i64 noundef 4096, ptr noundef nonnull @.str.47, ptr noundef %filename) #19
  %cmp = icmp ugt i32 %call1, 4095
  br i1 %cmp, label %cleanup, label %if.end4

if.end4:                                          ; preds = %if.end
  %call6 = call ptr @fopen(ptr noundef nonnull %tmp, ptr noundef nonnull @.str.10)
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %cleanup.sink.split, label %if.end9

if.end9:                                          ; preds = %if.end4
  %prefix.i = getelementptr inbounds %struct.comment_style, ptr %comment_style, i64 0, i32 1
  %0 = load ptr, ptr %prefix.i, align 8, !tbaa !43
  %call.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %call6, ptr noundef nonnull @.str.33, ptr noundef %0) #19
  %1 = load ptr, ptr %comment_style, align 8, !tbaa !45
  %call1.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %call6, ptr noundef nonnull @.str.34, ptr noundef %1) #19
  %2 = load ptr, ptr %comment_style, align 8, !tbaa !45
  %3 = load ptr, ptr getelementptr inbounds (%struct.menu, ptr @rootmenu, i64 0, i32 4), align 8, !tbaa !35
  %text.i = getelementptr inbounds %struct.property, ptr %3, i64 0, i32 2
  %4 = load ptr, ptr %text.i, align 8, !tbaa !36
  %call3.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %call6, ptr noundef nonnull @.str.35, ptr noundef %2, ptr noundef %4) #19
  %postfix.i = getelementptr inbounds %struct.comment_style, ptr %comment_style, i64 0, i32 2
  %5 = load ptr, ptr %postfix.i, align 8, !tbaa !46
  %call4.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %call6, ptr noundef nonnull @.str.33, ptr noundef %5) #19
  br label %for.body

for.body:                                         ; preds = %for.inc19, %if.end9
  %indvars.iv = phi i64 [ 0, %if.end9 ], [ %indvars.iv.next, %for.inc19 ]
  %arrayidx = getelementptr inbounds [9973 x ptr], ptr @symbol_hash, i64 0, i64 %indvars.iv
  %sym.048 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %tobool13.not49 = icmp eq ptr %sym.048, null
  br i1 %tobool13.not49, label %for.inc19, label %for.body14

for.body14:                                       ; preds = %for.inc, %for.body
  %sym.050 = phi ptr [ %sym.0, %for.inc ], [ %sym.048, %for.body ]
  %flags = getelementptr inbounds %struct.symbol, ptr %sym.050, i64 0, i32 6
  %6 = load i32, ptr %flags, align 4, !tbaa !16
  %and = and i32 %6, 512
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body14
  %name = getelementptr inbounds %struct.symbol, ptr %sym.050, i64 0, i32 1
  %7 = load ptr, ptr %name, align 8, !tbaa !23
  %tobool16.not = icmp eq ptr %7, null
  br i1 %tobool16.not, label %for.inc, label %if.then17

if.then17:                                        ; preds = %land.lhs.true
  tail call void %print_symbol(ptr noundef nonnull %call6, ptr noundef nonnull %sym.050) #19, !callees !47
  br label %for.inc

for.inc:                                          ; preds = %if.then17, %land.lhs.true, %for.body14
  %sym.0 = load ptr, ptr %sym.050, align 8, !tbaa !5
  %tobool13.not = icmp eq ptr %sym.0, null
  br i1 %tobool13.not, label %for.inc19, label %for.body14

for.inc19:                                        ; preds = %for.inc, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 9973
  br i1 %exitcond.not, label %for.end20, label %for.body

for.end20:                                        ; preds = %for.inc19
  %call21 = tail call i32 @ferror(ptr noundef nonnull %call6) #19
  %call22 = tail call i32 @fclose(ptr noundef nonnull %call6)
  %tobool23.not = icmp eq i32 %call21, 0
  br i1 %tobool23.not, label %if.end25, label %cleanup

if.end25:                                         ; preds = %for.end20
  %call27 = call i32 @rename(ptr noundef nonnull %tmp, ptr noundef %filename) #19
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %cleanup, label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end25, %if.end4
  %.str.46.sink = phi ptr [ @.str.41, %if.end4 ], [ @.str.46, %if.end25 ]
  tail call void @perror(ptr noundef nonnull %.str.46.sink) #22
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end25, %for.end20, %if.end, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ -1, %if.end ], [ -1, %for.end20 ], [ 0, %if.end25 ], [ -1, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %tmp) #19
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define internal void @print_symbol_for_c(ptr nocapture noundef %fp, ptr noundef %sym) #4 {
entry:
  %type = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 2
  %0 = load i32, ptr %type, align 8, !tbaa !20
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call ptr @sym_get_string_value(ptr noundef nonnull %sym) #19
  %1 = load i32, ptr %type, align 8, !tbaa !20
  switch i32 %1, label %sw.epilog21 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 4, label %sw.bb4
    i32 5, label %sw.bb18
  ]

sw.bb:                                            ; preds = %if.end, %if.end
  %2 = load i8, ptr %call, align 1, !tbaa !11
  %conv = sext i8 %2 to i32
  switch i32 %conv, label %sw.epilog21 [
    i32 110, label %cleanup
    i32 109, label %sw.bb3
  ]

sw.bb3:                                           ; preds = %sw.bb
  br label %sw.epilog21

sw.bb4:                                           ; preds = %if.end
  %3 = load i8, ptr %call, align 1, !tbaa !11
  %cmp6.not = icmp eq i8 %3, 48
  br i1 %cmp6.not, label %lor.lhs.false, label %if.then16

lor.lhs.false:                                    ; preds = %sw.bb4
  %arrayidx8 = getelementptr inbounds i8, ptr %call, i64 1
  %4 = load i8, ptr %arrayidx8, align 1, !tbaa !11
  switch i8 %4, label %if.then16 [
    i8 120, label %sw.epilog21
    i8 88, label %sw.epilog21
  ]

if.then16:                                        ; preds = %lor.lhs.false, %sw.bb4
  br label %sw.epilog21

sw.bb18:                                          ; preds = %if.end
  %call19 = tail call fastcc ptr @escape_string_value(ptr noundef %call)
  br label %sw.epilog21

sw.epilog21:                                      ; preds = %sw.bb18, %if.then16, %lor.lhs.false, %lor.lhs.false, %sw.bb3, %sw.bb, %if.end
  %val.0 = phi ptr [ %call, %if.end ], [ %call19, %sw.bb18 ], [ %call, %if.then16 ], [ %call, %lor.lhs.false ], [ @.str.52, %sw.bb ], [ @.str.52, %sw.bb3 ], [ %call, %lor.lhs.false ]
  %sym_suffix.1 = phi ptr [ @.str.50, %if.end ], [ @.str.50, %sw.bb18 ], [ @.str.50, %if.then16 ], [ @.str.50, %lor.lhs.false ], [ @.str.50, %sw.bb ], [ @.str.51, %sw.bb3 ], [ @.str.50, %lor.lhs.false ]
  %val_prefix.0 = phi ptr [ @.str.50, %if.end ], [ @.str.50, %sw.bb18 ], [ @.str.53, %if.then16 ], [ @.str.50, %lor.lhs.false ], [ @.str.50, %sw.bb ], [ @.str.50, %sw.bb3 ], [ @.str.50, %lor.lhs.false ]
  %escaped.0 = phi ptr [ null, %if.end ], [ %call19, %sw.bb18 ], [ null, %if.then16 ], [ null, %lor.lhs.false ], [ null, %sw.bb ], [ null, %sw.bb3 ], [ null, %lor.lhs.false ]
  %call.i = tail call ptr @getenv(ptr noundef nonnull @.str.24) #19
  %tobool.not.i = icmp eq ptr %call.i, null
  %call..str.24.i = select i1 %tobool.not.i, ptr @.str.24, ptr %call.i
  %name = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 1
  %5 = load ptr, ptr %name, align 8, !tbaa !23
  %call23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fp, ptr noundef nonnull @.str.54, ptr noundef %call..str.24.i, ptr noundef %5, ptr noundef nonnull %sym_suffix.1, ptr noundef nonnull %val_prefix.0, ptr noundef %val.0)
  tail call void @free(ptr noundef %escaped.0) #19
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog21, %sw.bb, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_symbol_for_autoconf(ptr nocapture noundef %fp, ptr noundef %sym) #4 {
entry:
  %type.i = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 2
  %0 = load i32, ptr %type.i, align 8, !tbaa !20
  %cmp.i = icmp eq i32 %0, 0
  br i1 %cmp.i, label %__print_symbol.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %call.i = tail call ptr @sym_get_string_value(ptr noundef nonnull %sym) #19
  %1 = load i32, ptr %type.i, align 8, !tbaa !20
  %.off = add i32 %1, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %land.lhs.true6.i, label %if.end24.i

land.lhs.true6.i:                                 ; preds = %if.end.i
  %2 = load i8, ptr %call.i, align 1, !tbaa !11
  %cmp7.i = icmp eq i8 %2, 110
  br i1 %cmp7.i, label %__print_symbol.exit, label %if.end24.i

if.end24.i:                                       ; preds = %land.lhs.true6.i, %if.end.i
  %call.i41.i = tail call ptr @getenv(ptr noundef nonnull @.str.24) #19
  %tobool.not.i42.i = icmp eq ptr %call.i41.i, null
  %call..str.24.i43.i = select i1 %tobool.not.i42.i, ptr @.str.24, ptr %call.i41.i
  %name26.i = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 1
  %3 = load ptr, ptr %name26.i, align 8, !tbaa !23
  %call27.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fp, ptr noundef nonnull @.str.30, ptr noundef %call..str.24.i43.i, ptr noundef %3, ptr noundef %call.i) #19
  br label %__print_symbol.exit

__print_symbol.exit:                              ; preds = %if.end24.i, %land.lhs.true6.i, %entry
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @conf_set_changed_callback(ptr noundef %fn) local_unnamed_addr #0 {
entry:
  store ptr %fn, ptr @conf_changed_callback, align 8, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @set_all_choice_values(ptr noundef %csym) local_unnamed_addr #4 {
entry:
  %call = tail call ptr @sym_get_choice_prop(ptr noundef %csym) #19
  %expr = getelementptr inbounds %struct.property, ptr %call, i64 0, i32 4
  %e.09 = load ptr, ptr %expr, align 8, !tbaa !11
  %tobool.not10 = icmp eq ptr %e.09, null
  br i1 %tobool.not10, label %for.end, label %land.rhs

land.rhs:                                         ; preds = %for.inc, %entry
  %e.011 = phi ptr [ %e.0, %for.inc ], [ %e.09, %entry ]
  %right = getelementptr inbounds %struct.expr, ptr %e.011, i64 0, i32 2
  %0 = load ptr, ptr %right, align 8, !tbaa !11
  %tobool1.not = icmp eq ptr %0, null
  br i1 %tobool1.not, label %for.end, label %for.body

for.body:                                         ; preds = %land.rhs
  %flags.i = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 6
  %1 = load i32, ptr %flags.i, align 4, !tbaa !16
  %and.i = and i32 %1, 65536
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %tri = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 4, i64 0, i32 1
  store i32 0, ptr %tri, align 8, !tbaa !22
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body
  %left = getelementptr inbounds %struct.expr, ptr %e.011, i64 0, i32 1
  %e.0 = load ptr, ptr %left, align 8, !tbaa !11
  %tobool.not = icmp eq ptr %e.0, null
  br i1 %tobool.not, label %for.end, label %land.rhs

for.end:                                          ; preds = %for.inc, %land.rhs, %entry
  %flags = getelementptr inbounds %struct.symbol, ptr %csym, i64 0, i32 6
  %2 = load i32, ptr %flags, align 4, !tbaa !16
  %or = and i32 %2, -1114241
  %and = or i32 %or, 65536
  store i32 %and, ptr %flags, align 4, !tbaa !16
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @conf_default_message_callback(ptr noundef %s) #9 {
entry:
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.21)
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.22, ptr noundef %s)
  %puts = tail call i32 @puts(ptr nonnull @str)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #13

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr nocapture noundef, i64 noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #13

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #10

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #14

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #15

declare i32 @close(i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strpbrk(ptr noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #16

declare zeroext i1 @sym_string_valid(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc ptr @escape_string_value(ptr nocapture noundef readonly %in) unnamed_addr #4 {
entry:
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %in) #21
  %add1 = add i64 %call, 3
  %call246 = tail call i64 @strcspn(ptr noundef %in, ptr noundef nonnull @.str.27) #21
  %add.ptr47 = getelementptr inbounds i8, ptr %in, i64 %call246
  %0 = load i8, ptr %add.ptr47, align 1, !tbaa !11
  %cmp48 = icmp eq i8 %0, 0
  br i1 %cmp48, label %while.end, label %if.end

if.end:                                           ; preds = %if.end, %entry
  %add.ptr50 = phi ptr [ %add.ptr, %if.end ], [ %add.ptr47, %entry ]
  %len.049 = phi i64 [ %inc, %if.end ], [ %add1, %entry ]
  %inc = add i64 %len.049, 1
  %incdec.ptr = getelementptr inbounds i8, ptr %add.ptr50, i64 1
  %call2 = tail call i64 @strcspn(ptr noundef nonnull %incdec.ptr, ptr noundef nonnull @.str.27) #21
  %add.ptr = getelementptr inbounds i8, ptr %incdec.ptr, i64 %call2
  %1 = load i8, ptr %add.ptr, align 1, !tbaa !11
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %while.end, label %if.end

while.end:                                        ; preds = %if.end, %entry
  %len.0.lcssa = phi i64 [ %add1, %entry ], [ %inc, %if.end ]
  %call4 = tail call ptr @xmalloc(i64 noundef %len.0.lcssa) #19
  store i8 0, ptr %call4, align 1, !tbaa !11
  %strlen = tail call i64 @strlen(ptr nonnull %call4)
  %endptr = getelementptr i8, ptr %call4, i64 %strlen
  store i16 34, ptr %endptr, align 1
  %call951 = tail call i64 @strcspn(ptr noundef %in, ptr noundef nonnull @.str.27) #21
  %call1052 = tail call ptr @strncat(ptr noundef nonnull %call4, ptr noundef %in, i64 noundef %call951) #19
  %add.ptr1153 = getelementptr inbounds i8, ptr %in, i64 %call951
  %2 = load i8, ptr %add.ptr1153, align 1, !tbaa !11
  %cmp1454 = icmp eq i8 %2, 0
  br i1 %cmp1454, label %while.end21, label %if.end17

if.end17:                                         ; preds = %if.end17, %while.end
  %add.ptr1155 = phi ptr [ %add.ptr11, %if.end17 ], [ %add.ptr1153, %while.end ]
  %strlen42 = tail call i64 @strlen(ptr nonnull %call4)
  %endptr43 = getelementptr i8, ptr %call4, i64 %strlen42
  store i16 92, ptr %endptr43, align 1
  %incdec.ptr19 = getelementptr inbounds i8, ptr %add.ptr1155, i64 1
  %call20 = tail call ptr @strncat(ptr noundef nonnull %call4, ptr noundef nonnull %add.ptr1155, i64 noundef 1) #19
  %call9 = tail call i64 @strcspn(ptr noundef nonnull %incdec.ptr19, ptr noundef nonnull @.str.27) #21
  %call10 = tail call ptr @strncat(ptr noundef nonnull %call4, ptr noundef nonnull %incdec.ptr19, i64 noundef %call9) #19
  %add.ptr11 = getelementptr inbounds i8, ptr %incdec.ptr19, i64 %call9
  %3 = load i8, ptr %add.ptr11, align 1, !tbaa !11
  %cmp14 = icmp eq i8 %3, 0
  br i1 %cmp14, label %while.end21, label %if.end17

while.end21:                                      ; preds = %if.end17, %while.end
  %strlen44 = tail call i64 @strlen(ptr nonnull %call4)
  %endptr45 = getelementptr i8, ptr %call4, i64 %strlen44
  store i16 34, ptr %endptr45, align 1
  ret ptr %call4
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare ptr @strncat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare i32 @__xstat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #14

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @mkdir(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @__fxstat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #10

declare void @env_write_dep(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind readonly
declare noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #18

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind readonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn }
attributes #14 = { argmemonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { argmemonly nofree nounwind willreturn }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #19 = { nounwind }
attributes #20 = { nounwind readnone willreturn }
attributes #21 = { nounwind readonly willreturn }
attributes #22 = { cold }
attributes #23 = { cold nounwind }

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
!10 = !{!"_Bool", !7, i64 0}
!11 = !{!7, !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"short", !7, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !7, i64 0}
!16 = !{!17, !15, i64 108}
!17 = !{!"symbol", !6, i64 0, !6, i64 8, !7, i64 16, !18, i64 24, !7, i64 40, !7, i64 104, !15, i64 108, !6, i64 112, !19, i64 120, !19, i64 136, !19, i64 152}
!18 = !{!"symbol_value", !6, i64 0, !7, i64 8}
!19 = !{!"expr_value", !6, i64 0, !7, i64 8}
!20 = !{!17, !7, i64 16}
!21 = !{!18, !6, i64 0}
!22 = !{!18, !7, i64 8}
!23 = !{!17, !6, i64 8}
!24 = !{!25, !25, i64 0}
!25 = !{!"long", !7, i64 0}
!26 = !{i8 0, i8 2}
!27 = !{!17, !7, i64 32}
!28 = !{!17, !6, i64 24}
!29 = !{!17, !7, i64 104}
!30 = !{!31, !6, i64 16}
!31 = !{!"menu", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !15, i64 56, !6, i64 64, !6, i64 72, !15, i64 80, !6, i64 88}
!32 = !{!31, !6, i64 24}
!33 = !{!31, !6, i64 0}
!34 = !{!31, !6, i64 8}
!35 = !{!31, !6, i64 32}
!36 = !{!37, !6, i64 16}
!37 = !{!"property", !6, i64 0, !7, i64 8, !6, i64 16, !19, i64 24, !6, i64 40, !6, i64 48, !6, i64 56, !15, i64 64}
!38 = !{!39, !25, i64 48}
!39 = !{!"stat", !25, i64 0, !25, i64 8, !25, i64 16, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36, !25, i64 40, !25, i64 48, !25, i64 56, !25, i64 64, !40, i64 72, !40, i64 88, !40, i64 104, !7, i64 120}
!40 = !{!"timespec", !25, i64 0, !25, i64 8}
!41 = !{!42, !6, i64 16}
!42 = !{!"file", !6, i64 0, !6, i64 8, !6, i64 16, !15, i64 24}
!43 = !{!44, !6, i64 8}
!44 = !{!"comment_style", !6, i64 0, !6, i64 8, !6, i64 16}
!45 = !{!44, !6, i64 0}
!46 = !{!44, !6, i64 16}
!47 = !{ptr @print_symbol_for_autoconf, ptr @print_symbol_for_c}
