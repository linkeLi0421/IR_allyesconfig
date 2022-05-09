; ModuleID = '/llk/IR_all_yes/scripts/dtc/dtc.c_pt.bc'
source_filename = "../scripts/dtc/dtc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.dt_info = type { i32, ptr, i32, ptr, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.node = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, i8, i8 }

@phandle_format = dso_local local_unnamed_addr global i32 2, align 4
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@quiet = dso_local local_unnamed_addr global i32 0, align 4
@reservenum = dso_local local_unnamed_addr global i32 0, align 4
@minsize = dso_local local_unnamed_addr global i32 0, align 4
@padsize = dso_local local_unnamed_addr global i32 0, align 4
@alignsize = dso_local local_unnamed_addr global i32 0, align 4
@usage_short_opts = internal constant [37 x i8] c"qI:O:o:V:d:R:S:p:a:fb:i:H:sW:E:@AThv\00", align 16
@usage_long_opts = internal constant [23 x %struct.option] [%struct.option { ptr @.str.27, i32 0, ptr null, i32 113 }, %struct.option { ptr @.str.28, i32 1, ptr null, i32 73 }, %struct.option { ptr @.str.29, i32 1, ptr null, i32 111 }, %struct.option { ptr @.str.30, i32 1, ptr null, i32 79 }, %struct.option { ptr @.str.31, i32 1, ptr null, i32 86 }, %struct.option { ptr @.str.32, i32 1, ptr null, i32 100 }, %struct.option { ptr @.str.33, i32 1, ptr null, i32 82 }, %struct.option { ptr @.str.34, i32 1, ptr null, i32 83 }, %struct.option { ptr @.str.35, i32 1, ptr null, i32 112 }, %struct.option { ptr @.str.36, i32 1, ptr null, i32 97 }, %struct.option { ptr @.str.37, i32 1, ptr null, i32 98 }, %struct.option { ptr @.str.38, i32 0, ptr null, i32 102 }, %struct.option { ptr @.str.39, i32 1, ptr null, i32 105 }, %struct.option { ptr @.str.40, i32 0, ptr null, i32 115 }, %struct.option { ptr @.str.41, i32 1, ptr null, i32 72 }, %struct.option { ptr @.str.42, i32 1, ptr null, i32 87 }, %struct.option { ptr @.str.43, i32 1, ptr null, i32 69 }, %struct.option { ptr @.str.44, i32 0, ptr null, i32 64 }, %struct.option { ptr @.str.45, i32 0, ptr null, i32 65 }, %struct.option { ptr @.str.46, i32 0, ptr null, i32 84 }, %struct.option { ptr @.str.47, i32 0, ptr null, i32 104 }, %struct.option { ptr @.str.48, i32 0, ptr null, i32 118 }, %struct.option zeroinitializer], align 16
@optarg = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Invalid argument \22%d\22 to -a option\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"legacy\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"epapr\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Invalid argument \22%s\22 to -H option\0A\00", align 1
@generate_symbols = dso_local local_unnamed_addr global i32 0, align 4
@auto_label_aliases = dso_local local_unnamed_addr global i32 0, align 4
@annotate = dso_local local_unnamed_addr global i32 0, align 4
@usage_synopsis = internal constant [27 x i8] c"dtc [options] <input file>\00", align 16
@usage_opts_help = internal constant [23 x ptr] [ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr null], align 16
@.str.6 = private unnamed_addr constant [15 x i8] c"unknown option\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"missing files\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Can't set both -p and -S\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@depfile = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [38 x i8] c"Couldn't open dependency file %s: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"dts\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"dtb\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"--annotate requires -I dts -O dts\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"fs\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"Unknown input format \22%s\22\0A\00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@generate_fixups = dso_local local_unnamed_addr global i32 0, align 4
@.str.18 = private unnamed_addr constant [8 x i8] c"aliases\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"__symbols__\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"__fixups__\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"__local_fixups__\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.22 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"Couldn't open output file %s: %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"asm\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"Unknown output format \22%s\22\0A\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"in-format\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"out-format\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"out-version\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"out-dependency\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"reserve\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"space\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"pad\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"align\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"boot-cpu\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"sort\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"phandle\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"warning\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"symbols\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"auto-alias\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"annotate\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.49 = private unnamed_addr constant [14 x i8] c"FATAL ERROR: \00", align 1
@.str.50 = private unnamed_addr constant [52 x i8] c"\0A\09Quiet: -q suppress warnings, -qq errors, -qqq all\00", align 1
@.str.51 = private unnamed_addr constant [120 x i8] c"\0A\09Input formats are:\0A\09\09dts - device tree source text\0A\09\09dtb - device tree blob\0A\09\09fs  - /proc/device-tree style directory\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"\0A\09Output file\00", align 1
@.str.53 = private unnamed_addr constant [104 x i8] c"\0A\09Output formats are:\0A\09\09dts - device tree source text\0A\09\09dtb - device tree blob\0A\09\09asm - assembler source\00", align 1
@.str.54 = private unnamed_addr constant [67 x i8] c"\0A\09Blob version to produce, defaults to 17 (for dtb and asm output)\00", align 1
@.str.55 = private unnamed_addr constant [25 x i8] c"\0A\09Output dependency file\00", align 1
@.str.56 = private unnamed_addr constant [71 x i8] c"\0A\09Make space for <number> reserve map entries (for dtb and asm output)\00", align 1
@.str.57 = private unnamed_addr constant [52 x i8] c"\0A\09Make the blob at least <bytes> long (extra space)\00", align 1
@.str.58 = private unnamed_addr constant [56 x i8] c"\0A\09Add padding to the blob of <bytes> long (extra space)\00", align 1
@.str.59 = private unnamed_addr constant [51 x i8] c"\0A\09Make the blob align to the <bytes> (extra space)\00", align 1
@.str.60 = private unnamed_addr constant [28 x i8] c"\0A\09Set the physical boot cpu\00", align 1
@.str.61 = private unnamed_addr constant [58 x i8] c"\0A\09Try to produce output even if the input tree has errors\00", align 1
@.str.62 = private unnamed_addr constant [41 x i8] c"\0A\09Add a path to search for include files\00", align 1
@.str.63 = private unnamed_addr constant [75 x i8] c"\0A\09Sort nodes and properties before outputting (useful for comparing trees)\00", align 1
@.str.64 = private unnamed_addr constant [166 x i8] c"\0A\09Valid phandle formats are:\0A\09\09legacy - \22linux,phandle\22 properties only\0A\09\09epapr  - \22phandle\22 properties only\0A\09\09both   - Both \22linux,phandle\22 and \22phandle\22 properties\00", align 1
@.str.65 = private unnamed_addr constant [46 x i8] c"\0A\09Enable/disable warnings (prefix with \22no-\22)\00", align 1
@.str.66 = private unnamed_addr constant [44 x i8] c"\0A\09Enable/disable errors (prefix with \22no-\22)\00", align 1
@.str.67 = private unnamed_addr constant [31 x i8] c"\0A\09Enable generation of symbols\00", align 1
@.str.68 = private unnamed_addr constant [30 x i8] c"\0A\09Enable auto-alias of labels\00", align 1
@.str.69 = private unnamed_addr constant [80 x i8] c"\0A\09Annotate output .dts with input source file and line (-T -T for more details)\00", align 1
@.str.70 = private unnamed_addr constant [27 x i8] c"\0A\09Print this help and exit\00", align 1
@.str.71 = private unnamed_addr constant [25 x i8] c"\0A\09Print version and exit\00", align 1
@.str.72 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c".dts\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c".yaml\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"yaml\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c".dtbo\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c".dtb\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) local_unnamed_addr #0 {
entry:
  store i32 0, ptr @quiet, align 4, !tbaa !5
  store i32 0, ptr @reservenum, align 4, !tbaa !5
  store i32 0, ptr @minsize, align 4, !tbaa !5
  store i32 0, ptr @padsize, align 4, !tbaa !5
  store i32 0, ptr @alignsize, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %inform.0 = phi ptr [ null, %entry ], [ %inform.0.be, %while.cond.backedge ]
  %outform.0 = phi ptr [ null, %entry ], [ %outform.0.be, %while.cond.backedge ]
  %outname.0 = phi ptr [ @.str, %entry ], [ %outname.0.be, %while.cond.backedge ]
  %depname.0 = phi ptr [ null, %entry ], [ %depname.0.be, %while.cond.backedge ]
  %force.0 = phi i8 [ 0, %entry ], [ %force.0.be, %while.cond.backedge ]
  %sort.0 = phi i8 [ 0, %entry ], [ %sort.0.be, %while.cond.backedge ]
  %outversion.0 = phi i32 [ 17, %entry ], [ %outversion.0.be, %while.cond.backedge ]
  %cmdline_boot_cpuid.0 = phi i64 [ -1, %entry ], [ %cmdline_boot_cpuid.0.be, %while.cond.backedge ]
  %call = tail call i32 @getopt_long(i32 noundef %argc, ptr noundef %argv, ptr noundef nonnull @usage_short_opts, ptr noundef nonnull @usage_long_opts, ptr noundef null) #17
  switch i32 %call, label %sw.default [
    i32 -1, label %while.end
    i32 73, label %sw.bb
    i32 79, label %sw.bb1
    i32 111, label %sw.bb2
    i32 86, label %sw.bb3
    i32 100, label %sw.bb5
    i32 82, label %sw.bb6
    i32 83, label %sw.bb9
    i32 112, label %sw.bb12
    i32 97, label %sw.bb15
    i32 102, label %while.cond.backedge
    i32 113, label %sw.bb20
    i32 98, label %sw.bb21
    i32 105, label %sw.bb23
    i32 118, label %sw.bb24
    i32 72, label %sw.bb25
    i32 115, label %sw.bb43
    i32 87, label %sw.bb44
    i32 69, label %sw.bb45
    i32 64, label %sw.bb46
    i32 65, label %sw.bb47
    i32 84, label %sw.bb48
    i32 104, label %sw.bb50
  ]

sw.bb:                                            ; preds = %while.cond
  %0 = load ptr, ptr @optarg, align 8, !tbaa !9
  br label %while.cond.backedge

sw.bb1:                                           ; preds = %while.cond
  %1 = load ptr, ptr @optarg, align 8, !tbaa !9
  br label %while.cond.backedge

sw.bb2:                                           ; preds = %while.cond
  %2 = load ptr, ptr @optarg, align 8, !tbaa !9
  br label %while.cond.backedge

sw.bb3:                                           ; preds = %while.cond
  %3 = load ptr, ptr @optarg, align 8, !tbaa !9
  %call4 = tail call i64 @strtol(ptr nocapture noundef %3, ptr noundef null, i32 noundef 0) #17
  %conv = trunc i64 %call4 to i32
  br label %while.cond.backedge

sw.bb5:                                           ; preds = %while.cond
  %4 = load ptr, ptr @optarg, align 8, !tbaa !9
  br label %while.cond.backedge

sw.bb6:                                           ; preds = %while.cond
  %5 = load ptr, ptr @optarg, align 8, !tbaa !9
  %call7 = tail call i64 @strtoul(ptr nocapture noundef %5, ptr noundef null, i32 noundef 0) #17
  %conv8 = trunc i64 %call7 to i32
  store i32 %conv8, ptr @reservenum, align 4, !tbaa !5
  br label %while.cond.backedge

sw.bb9:                                           ; preds = %while.cond
  %6 = load ptr, ptr @optarg, align 8, !tbaa !9
  %call10 = tail call i64 @strtol(ptr nocapture noundef %6, ptr noundef null, i32 noundef 0) #17
  %conv11 = trunc i64 %call10 to i32
  store i32 %conv11, ptr @minsize, align 4, !tbaa !5
  br label %while.cond.backedge

sw.bb12:                                          ; preds = %while.cond
  %7 = load ptr, ptr @optarg, align 8, !tbaa !9
  %call13 = tail call i64 @strtol(ptr nocapture noundef %7, ptr noundef null, i32 noundef 0) #17
  %conv14 = trunc i64 %call13 to i32
  store i32 %conv14, ptr @padsize, align 4, !tbaa !5
  br label %while.cond.backedge

sw.bb15:                                          ; preds = %while.cond
  %8 = load ptr, ptr @optarg, align 8, !tbaa !9
  %call16 = tail call i64 @strtol(ptr nocapture noundef %8, ptr noundef null, i32 noundef 0) #17
  %conv17 = trunc i64 %call16 to i32
  store i32 %conv17, ptr @alignsize, align 4, !tbaa !5
  %cmp.i = icmp slt i32 %conv17, 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %conv17) #17, !range !11
  %cmp1.i = icmp ugt i32 %9, 1
  %or.cond234 = or i1 %cmp.i, %cmp1.i
  br i1 %or.cond234, label %if.then, label %while.cond.backedge

while.cond.backedge:                              ; preds = %sw.bb48, %sw.bb47, %sw.bb46, %sw.bb45, %sw.bb44, %sw.bb43, %if.then38, %if.then33, %if.then29, %sw.bb23, %sw.bb21, %sw.bb20, %sw.bb15, %sw.bb12, %sw.bb9, %sw.bb6, %sw.bb5, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb, %while.cond
  %inform.0.be = phi ptr [ %inform.0, %sw.bb48 ], [ %inform.0, %sw.bb47 ], [ %inform.0, %sw.bb46 ], [ %inform.0, %sw.bb45 ], [ %inform.0, %sw.bb44 ], [ %inform.0, %sw.bb43 ], [ %inform.0, %if.then29 ], [ %inform.0, %if.then33 ], [ %inform.0, %if.then38 ], [ %inform.0, %sw.bb23 ], [ %inform.0, %sw.bb21 ], [ %inform.0, %sw.bb20 ], [ %inform.0, %sw.bb12 ], [ %inform.0, %sw.bb9 ], [ %inform.0, %sw.bb6 ], [ %inform.0, %sw.bb5 ], [ %inform.0, %sw.bb3 ], [ %inform.0, %sw.bb2 ], [ %inform.0, %sw.bb1 ], [ %0, %sw.bb ], [ %inform.0, %while.cond ], [ %inform.0, %sw.bb15 ]
  %outform.0.be = phi ptr [ %outform.0, %sw.bb48 ], [ %outform.0, %sw.bb47 ], [ %outform.0, %sw.bb46 ], [ %outform.0, %sw.bb45 ], [ %outform.0, %sw.bb44 ], [ %outform.0, %sw.bb43 ], [ %outform.0, %if.then29 ], [ %outform.0, %if.then33 ], [ %outform.0, %if.then38 ], [ %outform.0, %sw.bb23 ], [ %outform.0, %sw.bb21 ], [ %outform.0, %sw.bb20 ], [ %outform.0, %sw.bb12 ], [ %outform.0, %sw.bb9 ], [ %outform.0, %sw.bb6 ], [ %outform.0, %sw.bb5 ], [ %outform.0, %sw.bb3 ], [ %outform.0, %sw.bb2 ], [ %1, %sw.bb1 ], [ %outform.0, %sw.bb ], [ %outform.0, %while.cond ], [ %outform.0, %sw.bb15 ]
  %outname.0.be = phi ptr [ %outname.0, %sw.bb48 ], [ %outname.0, %sw.bb47 ], [ %outname.0, %sw.bb46 ], [ %outname.0, %sw.bb45 ], [ %outname.0, %sw.bb44 ], [ %outname.0, %sw.bb43 ], [ %outname.0, %if.then29 ], [ %outname.0, %if.then33 ], [ %outname.0, %if.then38 ], [ %outname.0, %sw.bb23 ], [ %outname.0, %sw.bb21 ], [ %outname.0, %sw.bb20 ], [ %outname.0, %sw.bb12 ], [ %outname.0, %sw.bb9 ], [ %outname.0, %sw.bb6 ], [ %outname.0, %sw.bb5 ], [ %outname.0, %sw.bb3 ], [ %2, %sw.bb2 ], [ %outname.0, %sw.bb1 ], [ %outname.0, %sw.bb ], [ %outname.0, %while.cond ], [ %outname.0, %sw.bb15 ]
  %depname.0.be = phi ptr [ %depname.0, %sw.bb48 ], [ %depname.0, %sw.bb47 ], [ %depname.0, %sw.bb46 ], [ %depname.0, %sw.bb45 ], [ %depname.0, %sw.bb44 ], [ %depname.0, %sw.bb43 ], [ %depname.0, %if.then29 ], [ %depname.0, %if.then33 ], [ %depname.0, %if.then38 ], [ %depname.0, %sw.bb23 ], [ %depname.0, %sw.bb21 ], [ %depname.0, %sw.bb20 ], [ %depname.0, %sw.bb12 ], [ %depname.0, %sw.bb9 ], [ %depname.0, %sw.bb6 ], [ %4, %sw.bb5 ], [ %depname.0, %sw.bb3 ], [ %depname.0, %sw.bb2 ], [ %depname.0, %sw.bb1 ], [ %depname.0, %sw.bb ], [ %depname.0, %while.cond ], [ %depname.0, %sw.bb15 ]
  %force.0.be = phi i8 [ %force.0, %sw.bb48 ], [ %force.0, %sw.bb47 ], [ %force.0, %sw.bb46 ], [ %force.0, %sw.bb45 ], [ %force.0, %sw.bb44 ], [ %force.0, %sw.bb43 ], [ %force.0, %if.then29 ], [ %force.0, %if.then33 ], [ %force.0, %if.then38 ], [ %force.0, %sw.bb23 ], [ %force.0, %sw.bb21 ], [ %force.0, %sw.bb20 ], [ %force.0, %sw.bb12 ], [ %force.0, %sw.bb9 ], [ %force.0, %sw.bb6 ], [ %force.0, %sw.bb5 ], [ %force.0, %sw.bb3 ], [ %force.0, %sw.bb2 ], [ %force.0, %sw.bb1 ], [ %force.0, %sw.bb ], [ 1, %while.cond ], [ %force.0, %sw.bb15 ]
  %sort.0.be = phi i8 [ %sort.0, %sw.bb48 ], [ %sort.0, %sw.bb47 ], [ %sort.0, %sw.bb46 ], [ %sort.0, %sw.bb45 ], [ %sort.0, %sw.bb44 ], [ 1, %sw.bb43 ], [ %sort.0, %if.then29 ], [ %sort.0, %if.then33 ], [ %sort.0, %if.then38 ], [ %sort.0, %sw.bb23 ], [ %sort.0, %sw.bb21 ], [ %sort.0, %sw.bb20 ], [ %sort.0, %sw.bb12 ], [ %sort.0, %sw.bb9 ], [ %sort.0, %sw.bb6 ], [ %sort.0, %sw.bb5 ], [ %sort.0, %sw.bb3 ], [ %sort.0, %sw.bb2 ], [ %sort.0, %sw.bb1 ], [ %sort.0, %sw.bb ], [ %sort.0, %while.cond ], [ %sort.0, %sw.bb15 ]
  %outversion.0.be = phi i32 [ %outversion.0, %sw.bb48 ], [ %outversion.0, %sw.bb47 ], [ %outversion.0, %sw.bb46 ], [ %outversion.0, %sw.bb45 ], [ %outversion.0, %sw.bb44 ], [ %outversion.0, %sw.bb43 ], [ %outversion.0, %if.then29 ], [ %outversion.0, %if.then33 ], [ %outversion.0, %if.then38 ], [ %outversion.0, %sw.bb23 ], [ %outversion.0, %sw.bb21 ], [ %outversion.0, %sw.bb20 ], [ %outversion.0, %sw.bb12 ], [ %outversion.0, %sw.bb9 ], [ %outversion.0, %sw.bb6 ], [ %outversion.0, %sw.bb5 ], [ %conv, %sw.bb3 ], [ %outversion.0, %sw.bb2 ], [ %outversion.0, %sw.bb1 ], [ %outversion.0, %sw.bb ], [ %outversion.0, %while.cond ], [ %outversion.0, %sw.bb15 ]
  %cmdline_boot_cpuid.0.be = phi i64 [ %cmdline_boot_cpuid.0, %sw.bb48 ], [ %cmdline_boot_cpuid.0, %sw.bb47 ], [ %cmdline_boot_cpuid.0, %sw.bb46 ], [ %cmdline_boot_cpuid.0, %sw.bb45 ], [ %cmdline_boot_cpuid.0, %sw.bb44 ], [ %cmdline_boot_cpuid.0, %sw.bb43 ], [ %cmdline_boot_cpuid.0, %if.then29 ], [ %cmdline_boot_cpuid.0, %if.then33 ], [ %cmdline_boot_cpuid.0, %if.then38 ], [ %cmdline_boot_cpuid.0, %sw.bb23 ], [ %call22, %sw.bb21 ], [ %cmdline_boot_cpuid.0, %sw.bb20 ], [ %cmdline_boot_cpuid.0, %sw.bb12 ], [ %cmdline_boot_cpuid.0, %sw.bb9 ], [ %cmdline_boot_cpuid.0, %sw.bb6 ], [ %cmdline_boot_cpuid.0, %sw.bb5 ], [ %cmdline_boot_cpuid.0, %sw.bb3 ], [ %cmdline_boot_cpuid.0, %sw.bb2 ], [ %cmdline_boot_cpuid.0, %sw.bb1 ], [ %cmdline_boot_cpuid.0, %sw.bb ], [ %cmdline_boot_cpuid.0, %while.cond ], [ %cmdline_boot_cpuid.0, %sw.bb15 ]
  br label %while.cond

if.then:                                          ; preds = %sw.bb15
  %conv17.le = trunc i64 %call16 to i32
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.1, i32 noundef %conv17.le) #18
  unreachable

sw.bb20:                                          ; preds = %while.cond
  %10 = load i32, ptr @quiet, align 4, !tbaa !5
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr @quiet, align 4, !tbaa !5
  br label %while.cond.backedge

sw.bb21:                                          ; preds = %while.cond
  %11 = load ptr, ptr @optarg, align 8, !tbaa !9
  %call22 = tail call i64 @strtoll(ptr nocapture noundef %11, ptr noundef null, i32 noundef 0) #17
  br label %while.cond.backedge

sw.bb23:                                          ; preds = %while.cond
  %12 = load ptr, ptr @optarg, align 8, !tbaa !9
  tail call void @srcfile_add_search_path(ptr noundef %12) #17
  br label %while.cond.backedge

sw.bb24:                                          ; preds = %while.cond
  tail call void @util_version() #19
  unreachable

sw.bb25:                                          ; preds = %while.cond
  %13 = load ptr, ptr @optarg, align 8, !tbaa !9
  %call26 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(7) @.str.2) #20
  %cmp27 = icmp eq i32 %call26, 0
  br i1 %cmp27, label %if.then29, label %if.else

if.then29:                                        ; preds = %sw.bb25
  store i32 1, ptr @phandle_format, align 4, !tbaa !5
  br label %while.cond.backedge

if.else:                                          ; preds = %sw.bb25
  %call30 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(6) @.str.3) #20
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %if.then33, label %if.else34

if.then33:                                        ; preds = %if.else
  store i32 2, ptr @phandle_format, align 4, !tbaa !5
  br label %while.cond.backedge

if.else34:                                        ; preds = %if.else
  %call35 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(5) @.str.4) #20
  %cmp36 = icmp eq i32 %call35, 0
  br i1 %cmp36, label %if.then38, label %if.else39

if.then38:                                        ; preds = %if.else34
  store i32 3, ptr @phandle_format, align 4, !tbaa !5
  br label %while.cond.backedge

if.else39:                                        ; preds = %if.else34
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.5, ptr noundef %13) #18
  unreachable

sw.bb43:                                          ; preds = %while.cond
  br label %while.cond.backedge

sw.bb44:                                          ; preds = %while.cond
  %14 = load ptr, ptr @optarg, align 8, !tbaa !9
  tail call void @parse_checks_option(i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef %14) #17
  br label %while.cond.backedge

sw.bb45:                                          ; preds = %while.cond
  %15 = load ptr, ptr @optarg, align 8, !tbaa !9
  tail call void @parse_checks_option(i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef %15) #17
  br label %while.cond.backedge

sw.bb46:                                          ; preds = %while.cond
  store i32 1, ptr @generate_symbols, align 4, !tbaa !5
  br label %while.cond.backedge

sw.bb47:                                          ; preds = %while.cond
  store i32 1, ptr @auto_label_aliases, align 4, !tbaa !5
  br label %while.cond.backedge

sw.bb48:                                          ; preds = %while.cond
  %16 = load i32, ptr @annotate, align 4, !tbaa !5
  %inc49 = add nsw i32 %16, 1
  store i32 %inc49, ptr @annotate, align 4, !tbaa !5
  br label %while.cond.backedge

sw.bb50:                                          ; preds = %while.cond
  tail call void @util_usage(ptr noundef null, ptr noundef nonnull @usage_synopsis, ptr noundef nonnull @usage_short_opts, ptr noundef nonnull @usage_long_opts, ptr noundef nonnull @usage_opts_help) #19
  unreachable

sw.default:                                       ; preds = %while.cond
  tail call void @util_usage(ptr noundef nonnull @.str.6, ptr noundef nonnull @usage_synopsis, ptr noundef nonnull @usage_short_opts, ptr noundef nonnull @usage_long_opts, ptr noundef nonnull @usage_opts_help) #19
  unreachable

while.end:                                        ; preds = %while.cond
  %17 = load i32, ptr @optind, align 4, !tbaa !5
  %add = add nsw i32 %17, 1
  %cmp51 = icmp slt i32 %add, %argc
  br i1 %cmp51, label %if.then53, label %if.else54

if.then53:                                        ; preds = %while.end
  tail call void @util_usage(ptr noundef nonnull @.str.7, ptr noundef nonnull @usage_synopsis, ptr noundef nonnull @usage_short_opts, ptr noundef nonnull @usage_long_opts, ptr noundef nonnull @usage_opts_help) #19
  unreachable

if.else54:                                        ; preds = %while.end
  %cmp56.not = icmp slt i32 %17, %argc
  br i1 %cmp56.not, label %if.else59, label %if.end61

if.else59:                                        ; preds = %if.else54
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %argv, i64 %idxprom
  %18 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  br label %if.end61

if.end61:                                         ; preds = %if.else59, %if.else54
  %arg.0 = phi ptr [ %18, %if.else59 ], [ @.str, %if.else54 ]
  %19 = load i32, ptr @minsize, align 4, !tbaa !5
  %tobool62 = icmp ne i32 %19, 0
  %20 = load i32, ptr @padsize, align 4
  %tobool63 = icmp ne i32 %20, 0
  %or.cond = select i1 %tobool62, i1 %tobool63, i1 false
  br i1 %or.cond, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.end61
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.8) #18
  unreachable

if.end65:                                         ; preds = %if.end61
  %tobool66.not = icmp eq ptr %depname.0, null
  br i1 %tobool66.not, label %if.end75, label %if.then67

if.then67:                                        ; preds = %if.end65
  %call68 = tail call ptr @fopen(ptr noundef nonnull %depname.0, ptr noundef nonnull @.str.9)
  store ptr %call68, ptr @depfile, align 8, !tbaa !9
  %tobool69.not = icmp eq ptr %call68, null
  br i1 %tobool69.not, label %if.then70, label %if.end73

if.then70:                                        ; preds = %if.then67
  %call71 = tail call ptr @__errno_location() #21
  %21 = load i32, ptr %call71, align 4, !tbaa !5
  %call72 = tail call ptr @strerror(i32 noundef %21) #17
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.10, ptr noundef nonnull %depname.0, ptr noundef %call72) #18
  unreachable

if.end73:                                         ; preds = %if.then67
  %call74 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %call68, ptr noundef nonnull @.str.11, ptr noundef %outname.0)
  br label %if.end75

if.end75:                                         ; preds = %if.end73, %if.end65
  %cmp76 = icmp eq ptr %inform.0, null
  br i1 %cmp76, label %if.then78, label %if.end80

if.then78:                                        ; preds = %if.end75
  %call79 = tail call fastcc ptr @guess_input_format(ptr noundef %arg.0)
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %if.end75
  %inform.2 = phi ptr [ %call79, %if.then78 ], [ %inform.0, %if.end75 ]
  %cmp81 = icmp eq ptr %outform.0, null
  br i1 %cmp81, label %if.then83, label %if.end95

if.then83:                                        ; preds = %if.end80
  %call84 = tail call fastcc ptr @guess_type_by_name(ptr noundef %outname.0, ptr noundef null)
  %cmp85 = icmp eq ptr %call84, null
  br i1 %cmp85, label %if.then87, label %if.end95

if.then87:                                        ; preds = %if.then83
  %call88 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %inform.2, ptr noundef nonnull dereferenceable(4) @.str.12) #20
  %cmp89 = icmp eq i32 %call88, 0
  %.str.13..str.12 = select i1 %cmp89, ptr @.str.13, ptr @.str.12
  br label %if.end95

if.end95:                                         ; preds = %if.then87, %if.then83, %if.end80
  %outform.2 = phi ptr [ %call84, %if.then83 ], [ %outform.0, %if.end80 ], [ %.str.13..str.12, %if.then87 ]
  %22 = load i32, ptr @annotate, align 4, !tbaa !5
  %tobool96.not = icmp eq i32 %22, 0
  br i1 %tobool96.not, label %if.end105, label %land.lhs.true97

land.lhs.true97:                                  ; preds = %if.end95
  %call98 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %inform.2, ptr noundef nonnull dereferenceable(4) @.str.12) #20
  %cmp99 = icmp eq i32 %call98, 0
  br i1 %cmp99, label %lor.lhs.false, label %if.then104

lor.lhs.false:                                    ; preds = %land.lhs.true97
  %call101 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %outform.2, ptr noundef nonnull dereferenceable(4) @.str.12) #20
  %cmp102 = icmp eq i32 %call101, 0
  br i1 %cmp102, label %if.end105, label %if.then104

if.then104:                                       ; preds = %lor.lhs.false, %land.lhs.true97
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.14) #18
  unreachable

if.end105:                                        ; preds = %lor.lhs.false, %if.end95
  %call106 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %inform.2, ptr noundef nonnull dereferenceable(4) @.str.12) #20
  %cmp107 = icmp eq i32 %call106, 0
  br i1 %cmp107, label %if.then109, label %if.else111

if.then109:                                       ; preds = %if.end105
  %call110 = tail call ptr @dt_from_source(ptr noundef %arg.0) #17
  br label %if.end126

if.else111:                                       ; preds = %if.end105
  %call112 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %inform.2, ptr noundef nonnull dereferenceable(3) @.str.15) #20
  %cmp113 = icmp eq i32 %call112, 0
  br i1 %cmp113, label %if.then115, label %if.else117

if.then115:                                       ; preds = %if.else111
  %call116 = tail call ptr @dt_from_fs(ptr noundef %arg.0) #17
  br label %if.end126

if.else117:                                       ; preds = %if.else111
  %call118 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %inform.2, ptr noundef nonnull dereferenceable(4) @.str.13) #20
  %cmp119 = icmp eq i32 %call118, 0
  br i1 %cmp119, label %if.then121, label %if.else123

if.then121:                                       ; preds = %if.else117
  %call122 = tail call ptr @dt_from_blob(ptr noundef %arg.0) #17
  br label %if.end126

if.else123:                                       ; preds = %if.else117
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.16, ptr noundef %inform.2) #18
  unreachable

if.end126:                                        ; preds = %if.then121, %if.then115, %if.then109
  %dti.0 = phi ptr [ %call110, %if.then109 ], [ %call116, %if.then115 ], [ %call122, %if.then121 ]
  %outname127 = getelementptr inbounds %struct.dt_info, ptr %dti.0, i64 0, i32 4
  store ptr %outname.0, ptr %outname127, align 8, !tbaa !12
  %23 = load ptr, ptr @depfile, align 8, !tbaa !9
  %tobool128.not = icmp eq ptr %23, null
  br i1 %tobool128.not, label %if.end132, label %if.then129

if.then129:                                       ; preds = %if.end126
  %call130 = tail call i32 @fputc(i32 noundef 10, ptr noundef nonnull %23)
  %24 = load ptr, ptr @depfile, align 8, !tbaa !9
  %call131 = tail call i32 @fclose(ptr noundef %24)
  br label %if.end132

if.end132:                                        ; preds = %if.then129, %if.end126
  %cmp133.not = icmp eq i64 %cmdline_boot_cpuid.0, -1
  br i1 %cmp133.not, label %if.end137, label %if.then135

if.then135:                                       ; preds = %if.end132
  %conv136 = trunc i64 %cmdline_boot_cpuid.0 to i32
  %boot_cpuid_phys = getelementptr inbounds %struct.dt_info, ptr %dti.0, i64 0, i32 2
  store i32 %conv136, ptr %boot_cpuid_phys, align 8, !tbaa !14
  br label %if.end137

if.end137:                                        ; preds = %if.then135, %if.end132
  %dt = getelementptr inbounds %struct.dt_info, ptr %dti.0, i64 0, i32 3
  %25 = load ptr, ptr %dt, align 8, !tbaa !15
  tail call fastcc void @fill_fullpaths(ptr noundef %25, ptr noundef nonnull @.str.17)
  %26 = load i32, ptr %dti.0, align 8, !tbaa !16
  %and = and i32 %26, 2
  %tobool138.not = icmp eq i32 %and, 0
  br i1 %tobool138.not, label %if.end140, label %if.then139

if.then139:                                       ; preds = %if.end137
  store i32 1, ptr @generate_fixups, align 4, !tbaa !5
  br label %if.end140

if.end140:                                        ; preds = %if.then139, %if.end137
  %tobool141 = icmp ne i8 %force.0, 0
  tail call void @process_checks(i1 noundef zeroext %tobool141, ptr noundef nonnull %dti.0) #17
  %27 = load i32, ptr @auto_label_aliases, align 4, !tbaa !5
  %tobool142.not = icmp eq i32 %27, 0
  br i1 %tobool142.not, label %if.end144, label %if.then143

if.then143:                                       ; preds = %if.end140
  tail call void @generate_label_tree(ptr noundef nonnull %dti.0, ptr noundef nonnull @.str.18, i1 noundef zeroext false) #17
  br label %if.end144

if.end144:                                        ; preds = %if.then143, %if.end140
  %28 = load i32, ptr @generate_symbols, align 4, !tbaa !5
  %tobool145.not = icmp eq i32 %28, 0
  br i1 %tobool145.not, label %if.end147, label %if.then146

if.then146:                                       ; preds = %if.end144
  tail call void @generate_label_tree(ptr noundef nonnull %dti.0, ptr noundef nonnull @.str.19, i1 noundef zeroext true) #17
  br label %if.end147

if.end147:                                        ; preds = %if.then146, %if.end144
  %29 = load i32, ptr @generate_fixups, align 4, !tbaa !5
  %tobool148.not = icmp eq i32 %29, 0
  br i1 %tobool148.not, label %if.end150, label %if.then149

if.then149:                                       ; preds = %if.end147
  tail call void @generate_fixups_tree(ptr noundef nonnull %dti.0, ptr noundef nonnull @.str.20) #17
  tail call void @generate_local_fixups_tree(ptr noundef nonnull %dti.0, ptr noundef nonnull @.str.21) #17
  br label %if.end150

if.end150:                                        ; preds = %if.then149, %if.end147
  %tobool151.not = icmp eq i8 %sort.0, 0
  br i1 %tobool151.not, label %if.end153, label %if.then152

if.then152:                                       ; preds = %if.end150
  tail call void @sort_tree(ptr noundef nonnull %dti.0) #17
  br label %if.end153

if.end153:                                        ; preds = %if.then152, %if.end150
  %call154 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %outname.0, ptr noundef nonnull dereferenceable(2) @.str) #20
  %cmp155 = icmp eq i32 %call154, 0
  br i1 %cmp155, label %if.then157, label %if.else158

if.then157:                                       ; preds = %if.end153
  %30 = load ptr, ptr @stdout, align 8, !tbaa !9
  br label %if.end165

if.else158:                                       ; preds = %if.end153
  %call159 = tail call ptr @fopen(ptr noundef %outname.0, ptr noundef nonnull @.str.22)
  %tobool160.not = icmp eq ptr %call159, null
  br i1 %tobool160.not, label %if.then161, label %if.end165

if.then161:                                       ; preds = %if.else158
  %call162 = tail call ptr @__errno_location() #21
  %31 = load i32, ptr %call162, align 4, !tbaa !5
  %call163 = tail call ptr @strerror(i32 noundef %31) #17
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.23, ptr noundef %outname.0, ptr noundef %call163) #18
  unreachable

if.end165:                                        ; preds = %if.else158, %if.then157
  %outf.0 = phi ptr [ %30, %if.then157 ], [ %call159, %if.else158 ]
  %call166 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %outform.2, ptr noundef nonnull dereferenceable(4) @.str.12) #20
  %cmp167 = icmp eq i32 %call166, 0
  br i1 %cmp167, label %if.then169, label %if.else170

if.then169:                                       ; preds = %if.end165
  tail call void @dt_to_source(ptr noundef %outf.0, ptr noundef nonnull %dti.0) #17
  br label %if.end189

if.else170:                                       ; preds = %if.end165
  %call171 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %outform.2, ptr noundef nonnull dereferenceable(4) @.str.13) #20
  %cmp172 = icmp eq i32 %call171, 0
  br i1 %cmp172, label %if.then174, label %if.else175

if.then174:                                       ; preds = %if.else170
  tail call void @dt_to_blob(ptr noundef %outf.0, ptr noundef nonnull %dti.0, i32 noundef %outversion.0) #17
  br label %if.end189

if.else175:                                       ; preds = %if.else170
  %call176 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %outform.2, ptr noundef nonnull dereferenceable(4) @.str.24) #20
  %cmp177 = icmp eq i32 %call176, 0
  br i1 %cmp177, label %if.then179, label %if.else180

if.then179:                                       ; preds = %if.else175
  tail call void @dt_to_asm(ptr noundef %outf.0, ptr noundef nonnull %dti.0, i32 noundef %outversion.0) #17
  br label %if.end189

if.else180:                                       ; preds = %if.else175
  %call181 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %outform.2, ptr noundef nonnull dereferenceable(5) @.str.25) #20
  %cmp182 = icmp eq i32 %call181, 0
  br i1 %cmp182, label %if.end189, label %if.else185

if.else185:                                       ; preds = %if.else180
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.26, ptr noundef %outform.2) #18
  unreachable

if.end189:                                        ; preds = %if.else180, %if.then179, %if.then174, %if.then169
  tail call void @exit(i32 noundef 0) #19
  unreachable
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint noreturn nounwind uwtable
define internal void @die(ptr nocapture noundef readonly %str, ...) unnamed_addr #4 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ap) #17
  call void @llvm.va_start(ptr nonnull %ap)
  %0 = load ptr, ptr @stderr, align 8, !tbaa !9
  %1 = call i64 @fwrite(ptr nonnull @.str.49, i64 13, i64 1, ptr %0) #22
  %2 = load ptr, ptr @stderr, align 8, !tbaa !9
  %call2 = call i32 @vfprintf(ptr noundef %2, ptr noundef %str, ptr noundef nonnull %ap) #22
  call void @llvm.va_end(ptr nonnull %ap)
  call void @exit(i32 noundef 1) #19
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

declare void @srcfile_add_search_path(ptr noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @util_version() local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

declare void @parse_checks_option(i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @util_usage(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc ptr @guess_input_format(ptr noundef %fname) unnamed_addr #10 {
entry:
  %statbuf = alloca %struct.stat, align 8
  %magic = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %statbuf) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %magic) #17
  %call.i = call i32 @__xstat(i32 noundef 1, ptr noundef nonnull %fname, ptr noundef nonnull %statbuf) #17
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %st_mode = getelementptr inbounds %struct.stat, ptr %statbuf, i64 0, i32 3
  %0 = load i32, ptr %st_mode, align 8, !tbaa !17
  %1 = trunc i32 %0 to i16
  %trunc = and i16 %1, -4096
  switch i16 %trunc, label %if.then7 [
    i16 16384, label %cleanup
    i16 -32768, label %if.end8
  ]

if.then7:                                         ; preds = %if.end
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = call ptr @fopen(ptr noundef nonnull %fname, ptr noundef nonnull @.str.72)
  %cmp10 = icmp eq ptr %call9, null
  br i1 %cmp10, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.end8
  %call13 = call i64 @fread(ptr noundef nonnull %magic, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %call9)
  %cmp14.not = icmp eq i64 %call13, 1
  %call18 = call i32 @fclose(ptr noundef nonnull %call9)
  br i1 %cmp14.not, label %if.end17, label %cleanup

if.end17:                                         ; preds = %if.end12
  %2 = load i32, ptr %magic, align 4, !tbaa !5
  %cmp20 = icmp eq i32 %2, -302117424
  br i1 %cmp20, label %cleanup, label %if.end22

if.end22:                                         ; preds = %if.end17
  %call23 = call fastcc ptr @guess_type_by_name(ptr noundef nonnull %fname, ptr noundef nonnull @.str.12)
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end17, %if.end12, %if.end8, %if.then7, %if.end, %entry
  %retval.0 = phi ptr [ %call23, %if.end22 ], [ @.str.12, %if.then7 ], [ @.str.12, %entry ], [ @.str.15, %if.end ], [ @.str.12, %if.end8 ], [ @.str.13, %if.end17 ], [ @.str.12, %if.end12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %magic) #17
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %statbuf) #17
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn uwtable
define internal fastcc ptr @guess_type_by_name(ptr noundef readonly %fname, ptr noundef readnone %fallback) unnamed_addr #11 {
entry:
  %call = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %fname, i32 noundef 46) #20
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @strcasecmp(ptr noundef nonnull %call, ptr noundef nonnull @.str.73) #20
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cleanup, label %if.end3

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @strcasecmp(ptr noundef nonnull %call, ptr noundef nonnull @.str.74) #20
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end3
  %call8 = tail call i32 @strcasecmp(ptr noundef nonnull %call, ptr noundef nonnull @.str.76) #20
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.end7
  %call12 = tail call i32 @strcasecmp(ptr noundef nonnull %call, ptr noundef nonnull @.str.77) #20
  %tobool13.not = icmp eq i32 %call12, 0
  %.str.13.fallback = select i1 %tobool13.not, ptr @.str.13, ptr %fallback
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end7, %if.end3, %if.end, %entry
  %retval.0 = phi ptr [ %fallback, %entry ], [ @.str.12, %if.end ], [ @.str.75, %if.end3 ], [ @.str.13, %if.end7 ], [ %.str.13.fallback, %if.end11 ]
  ret ptr %retval.0
}

declare ptr @dt_from_source(ptr noundef) local_unnamed_addr #5

declare ptr @dt_from_fs(ptr noundef) local_unnamed_addr #5

declare ptr @dt_from_blob(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc void @fill_fullpaths(ptr nocapture noundef %tree, ptr noundef %prefix) unnamed_addr #10 {
entry:
  %name = getelementptr inbounds %struct.node, ptr %tree, i64 0, i32 1
  %0 = load ptr, ptr %name, align 8, !tbaa !21
  %call = tail call ptr @join_path(ptr noundef %prefix, ptr noundef %0) #17
  %fullpath = getelementptr inbounds %struct.node, ptr %tree, i64 0, i32 6
  store ptr %call, ptr %fullpath, align 8, !tbaa !24
  %1 = load ptr, ptr %name, align 8, !tbaa !21
  %call2 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 64) #20
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %sub.ptr.lhs.cast = ptrtoint ptr %call2 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %if.end

if.else:                                          ; preds = %entry
  %call5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %conv.sink.in = phi i64 [ %call5, %if.else ], [ %sub.ptr.sub, %if.then ]
  %conv.sink = trunc i64 %conv.sink.in to i32
  %2 = getelementptr inbounds %struct.node, ptr %tree, i64 0, i32 7
  store i32 %conv.sink, ptr %2, align 8
  %children = getelementptr inbounds %struct.node, ptr %tree, i64 0, i32 3
  %child.025 = load ptr, ptr %children, align 8, !tbaa !9
  %tobool8.not26 = icmp eq ptr %child.025, null
  br i1 %tobool8.not26, label %for.end, label %for.body

for.body:                                         ; preds = %for.inc, %if.end
  %child.027 = phi ptr [ %child.0, %for.inc ], [ %child.025, %if.end ]
  %3 = load i8, ptr %child.027, align 8, !tbaa !25, !range !26
  %tobool9.not = icmp eq i8 %3, 0
  br i1 %tobool9.not, label %if.then10, label %for.inc

if.then10:                                        ; preds = %for.body
  %4 = load ptr, ptr %fullpath, align 8, !tbaa !24
  tail call fastcc void @fill_fullpaths(ptr noundef nonnull %child.027, ptr noundef %4)
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %for.body
  %next_sibling = getelementptr inbounds %struct.node, ptr %child.027, i64 0, i32 5
  %child.0 = load ptr, ptr %next_sibling, align 8, !tbaa !9
  %tobool8.not = icmp eq ptr %child.0, null
  br i1 %tobool8.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end
  ret void
}

declare void @process_checks(i1 noundef zeroext, ptr noundef) local_unnamed_addr #5

declare void @generate_label_tree(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

declare void @generate_fixups_tree(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @generate_local_fixups_tree(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @sort_tree(ptr noundef) local_unnamed_addr #5

declare void @dt_to_source(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @dt_to_blob(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @dt_to_asm(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #13

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #13

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare i32 @__xstat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #14

declare ptr @join_path(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #15

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #16

attributes #0 = { noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn }
attributes #14 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nofree nounwind }
attributes #17 = { nounwind }
attributes #18 = { noreturn }
attributes #19 = { noreturn nounwind }
attributes #20 = { nounwind readonly willreturn }
attributes #21 = { nounwind readnone willreturn }
attributes #22 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{i32 0, i32 33}
!12 = !{!13, !10, i64 32}
!13 = !{!"dt_info", !6, i64 0, !10, i64 8, !6, i64 16, !10, i64 24, !10, i64 32}
!14 = !{!13, !6, i64 16}
!15 = !{!13, !10, i64 24}
!16 = !{!13, !6, i64 0}
!17 = !{!18, !6, i64 24}
!18 = !{!"stat", !19, i64 0, !19, i64 8, !19, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !19, i64 40, !19, i64 48, !19, i64 56, !19, i64 64, !20, i64 72, !20, i64 88, !20, i64 104, !7, i64 120}
!19 = !{!"long", !7, i64 0}
!20 = !{!"timespec", !19, i64 0, !19, i64 8}
!21 = !{!22, !10, i64 8}
!22 = !{!"node", !23, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !10, i64 72, !10, i64 80, !10, i64 88, !23, i64 96, !23, i64 97}
!23 = !{!"_Bool", !7, i64 0}
!24 = !{!22, !10, i64 48}
!25 = !{!22, !23, i64 0}
!26 = !{i8 0, i8 2}
