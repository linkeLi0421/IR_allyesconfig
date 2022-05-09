; ModuleID = '/llk/IR_all_yes/scripts/kconfig/conf.c_pt.bc'
source_filename = "../scripts/kconfig/conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.menu = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr }
%struct.timeval = type { i64, i64 }
%struct.symbol = type { ptr, ptr, i32, %struct.symbol_value, [4 x %struct.symbol_value], i32, i32, ptr, %struct.expr_value, %struct.expr_value, %struct.expr_value }
%struct.symbol_value = type { ptr, i32 }
%struct.expr_value = type { ptr, i32 }
%struct.property = type { ptr, i32, ptr, %struct.expr_value, ptr, ptr, ptr, i32 }
%struct.expr = type { i32, %union.expr_data, %union.expr_data }
%union.expr_data = type { ptr }
%struct.gstr = type { i64, ptr, i32 }

@tty_stdio = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"hs\00", align 1
@long_opts = internal constant [19 x %struct.option] [%struct.option { ptr @.str.19, i32 0, ptr null, i32 104 }, %struct.option { ptr @.str.20, i32 0, ptr null, i32 115 }, %struct.option { ptr @.str.21, i32 0, ptr @input_mode_opt, i32 0 }, %struct.option { ptr @.str.22, i32 0, ptr @input_mode_opt, i32 2 }, %struct.option { ptr @.str.23, i32 0, ptr @input_mode_opt, i32 1 }, %struct.option { ptr @.str.24, i32 1, ptr @input_mode_opt, i32 8 }, %struct.option { ptr @.str.25, i32 1, ptr @input_mode_opt, i32 9 }, %struct.option { ptr @.str.26, i32 0, ptr @input_mode_opt, i32 3 }, %struct.option { ptr @.str.27, i32 0, ptr @input_mode_opt, i32 4 }, %struct.option { ptr @.str.28, i32 0, ptr @input_mode_opt, i32 5 }, %struct.option { ptr @.str.29, i32 0, ptr @input_mode_opt, i32 6 }, %struct.option { ptr @.str.30, i32 0, ptr @input_mode_opt, i32 7 }, %struct.option { ptr @.str.31, i32 0, ptr @input_mode_opt, i32 10 }, %struct.option { ptr @.str.32, i32 0, ptr @input_mode_opt, i32 11 }, %struct.option { ptr @.str.33, i32 0, ptr @input_mode_opt, i32 12 }, %struct.option { ptr @.str.34, i32 0, ptr @input_mode_opt, i32 13 }, %struct.option { ptr @.str.35, i32 0, ptr @input_mode_opt, i32 14 }, %struct.option { ptr @.str.36, i32 0, ptr @input_mode_opt, i32 15 }, %struct.option zeroinitializer], align 16
@input_mode_opt = internal global i32 0, align 4
@input_mode = internal unnamed_addr global i32 0, align 4
@sync_kconfig = internal unnamed_addr global i1 false, align 4
@optarg = external local_unnamed_addr global ptr, align 8
@optind = external local_unnamed_addr global i32, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"%s: Kconfig file missing\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"***\0A*** Can't find default configuration \22%s\22!\0A***\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"KCONFIG_ALLCONFIG\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"*** Can't read seed configuration \22%s\22!\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"allno.config\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"allyes.config\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"allmod.config\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"alldef.config\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"allrandom.config\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"all.config\00", align 1
@.str.13 = private unnamed_addr constant [67 x i8] c"*** KCONFIG_ALLCONFIG set, but no \22%s\22 or \22all.config\22 file found\0A\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"KCONFIG_NOSILENTUPDATE\00", align 1
@.str.15 = private unnamed_addr constant [51 x i8] c"\0A*** The configuration requires explicit update.\0A\0A\00", align 1
@rootmenu = external global %struct.menu, align 8
@rootEntry = internal unnamed_addr global ptr null, align 8
@conf_cnt = internal unnamed_addr global i32 0, align 4
@.str.16 = private unnamed_addr constant [43 x i8] c"n*** Error while saving defconfig to: %s\0A\0A\00", align 1
@.str.17 = private unnamed_addr constant [50 x i8] c"\0A*** Error during writing of the configuration.\0A\0A\00", align 1
@.str.18 = private unnamed_addr constant [47 x i8] c"\0A*** Error during sync of the configuration.\0A\0A\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"silent\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"oldaskconfig\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"oldconfig\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"syncconfig\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"defconfig\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"savedefconfig\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"allnoconfig\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"allyesconfig\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"allmodconfig\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"alldefconfig\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"randconfig\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"listnewconfig\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"helpnewconfig\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"olddefconfig\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"yes2modconfig\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"mod2yesconfig\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"mod2noconfig\00", align 1
@.str.37 = private unnamed_addr constant [36 x i8] c"Usage: %s [options] <kconfig-file>\0A\00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"KCONFIG_SEED\00", align 1
@.str.61 = private unnamed_addr constant [19 x i8] c"KCONFIG_SEED=0x%X\0A\00", align 1
@.str.62 = private unnamed_addr constant [20 x i8] c"KCONFIG_PROBABILITY\00", align 1
@symbol_hash = external local_unnamed_addr global [9973 x ptr], align 16
@.str.63 = private unnamed_addr constant [16 x i8] c"%*c\0A%*c %s\0A%*c\0A\00", align 1
@indent = internal unnamed_addr global i32 1, align 4
@.str.64 = private unnamed_addr constant [7 x i8] c"%*s%s\0A\00", align 1
@line = internal global [4096 x i8] zeroinitializer, align 16
@.str.65 = private unnamed_addr constant [8 x i8] c"%*c %s\0A\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"%*c\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c" %d. %s\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c" (%s)\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c" (NEW)\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"%*schoice\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"[1-%d?]: \00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str.74 = private unnamed_addr constant [35 x i8] c"\0AError in reading or end of file.\0A\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"\0A%s\0A\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"%*s%s \00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"(%s) \00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"[%s] \00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"(NEW) \00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"/n\00", align 1
@.str.83 = private unnamed_addr constant [3 x i8] c"/m\00", align 1
@.str.84 = private unnamed_addr constant [3 x i8] c"/y\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"/?] \00", align 1
@.str.86 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.87 = private unnamed_addr constant [3 x i8] c"es\00", align 1
@str = private unnamed_addr constant [17 x i8] c"Generic options:\00", align 1
@str.90 = private unnamed_addr constant [55 x i8] c"  -h, --help              Print this message and exit.\00", align 1
@str.91 = private unnamed_addr constant [44 x i8] c"  -s, --silent            Do not print log.\00", align 1
@str.92 = private unnamed_addr constant [14 x i8] c"Mode options:\00", align 1
@str.93 = private unnamed_addr constant [43 x i8] c"  --listnewconfig         List new options\00", align 1
@str.94 = private unnamed_addr constant [57 x i8] c"  --helpnewconfig         List new options and help text\00", align 1
@str.95 = private unnamed_addr constant [82 x i8] c"  --oldaskconfig          Start a new configuration using a line-oriented program\00", align 1
@str.96 = private unnamed_addr constant [82 x i8] c"  --oldconfig             Update a configuration using a provided .config as base\00", align 1
@str.97 = private unnamed_addr constant [133 x i8] c"  --syncconfig            Similar to oldconfig but generates configuration in\0A                          include/{generated/,config/}\00", align 1
@str.98 = private unnamed_addr constant [88 x i8] c"  --olddefconfig          Same as oldconfig but sets new symbols to their default value\00", align 1
@str.99 = private unnamed_addr constant [68 x i8] c"  --defconfig <file>      New config with default defined in <file>\00", align 1
@str.100 = private unnamed_addr constant [75 x i8] c"  --savedefconfig <file>  Save the minimal current configuration to <file>\00", align 1
@str.101 = private unnamed_addr constant [76 x i8] c"  --allnoconfig           New config where all options are answered with no\00", align 1
@str.102 = private unnamed_addr constant [77 x i8] c"  --allyesconfig          New config where all options are answered with yes\00", align 1
@str.103 = private unnamed_addr constant [77 x i8] c"  --allmodconfig          New config where all options are answered with mod\00", align 1
@str.104 = private unnamed_addr constant [69 x i8] c"  --alldefconfig          New config with all symbols set to default\00", align 1
@str.105 = private unnamed_addr constant [71 x i8] c"  --randconfig            New config with random answer to all options\00", align 1
@str.106 = private unnamed_addr constant [69 x i8] c"  --yes2modconfig         Change answers from yes to mod if possible\00", align 1
@str.107 = private unnamed_addr constant [69 x i8] c"  --mod2yesconfig         Change answers from mod to yes if possible\00", align 1
@str.108 = private unnamed_addr constant [68 x i8] c"  --mod2noconfig          Change answers from mod to no if possible\00", align 1
@str.109 = private unnamed_addr constant [65 x i8] c"  (If none of the above is given, --oldaskconfig is the default)\00", align 1
@str.111 = private unnamed_addr constant [6 x i8] c"-----\00", align 1
@str.112 = private unnamed_addr constant [24 x i8] c"*\0A* Restart config...\0A*\00", align 1
@str.113 = private unnamed_addr constant [7 x i8] c"[1]: 1\00", align 1
@reltable.main = private unnamed_addr constant [5 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.7 to i64), i64 ptrtoint (ptr @reltable.main to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.8 to i64), i64 ptrtoint (ptr @reltable.main to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.9 to i64), i64 ptrtoint (ptr @reltable.main to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.10 to i64), i64 ptrtoint (ptr @reltable.main to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.11 to i64), i64 ptrtoint (ptr @reltable.main to i64)) to i32)], align 4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %ac, ptr noundef %av) local_unnamed_addr #0 {
entry:
  %endp.i = alloca ptr, align 8
  %now.i = alloca %struct.timeval, align 8
  %0 = load ptr, ptr %av, align 8, !tbaa !5
  %call = tail call i32 @isatty(i32 noundef 0) #15
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call1 = tail call i32 @isatty(i32 noundef 1) #15
  %tobool2 = icmp ne i32 %call1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ]
  %land.ext = zext i1 %1 to i32
  store i32 %land.ext, ptr @tty_stdio, align 4, !tbaa !9
  %tv_usec.i = getelementptr inbounds %struct.timeval, ptr %now.i, i64 0, i32 1
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %sw.bb7, %land.end
  %defconfig_file.0.ph = phi ptr [ %3, %sw.bb7 ], [ null, %land.end ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %while.cond.outer
  %call3 = tail call i32 @getopt_long(i32 noundef %ac, ptr noundef nonnull %av, ptr noundef nonnull @.str, ptr noundef nonnull @long_opts, ptr noundef null) #15
  switch i32 %call3, label %while.cond.backedge [
    i32 -1, label %while.end
    i32 104, label %sw.bb
    i32 115, label %sw.bb4
    i32 0, label %sw.bb5
  ]

while.cond.backedge:                              ; preds = %set_randconfig_seed.exit, %sw.bb6, %sw.bb5, %sw.bb4, %while.cond
  br label %while.cond

sw.bb:                                            ; preds = %while.cond
  tail call fastcc void @conf_usage(ptr noundef %0)
  tail call void @exit(i32 noundef 1) #16
  unreachable

sw.bb4:                                           ; preds = %while.cond
  tail call void @conf_set_message_callback(ptr noundef null) #15
  br label %while.cond.backedge

sw.bb5:                                           ; preds = %while.cond
  %2 = load i32, ptr @input_mode_opt, align 4, !tbaa !9
  store i32 %2, ptr @input_mode, align 4, !tbaa !11
  switch i32 %2, label %while.cond.backedge [
    i32 1, label %sw.bb6
    i32 8, label %sw.bb7
    i32 9, label %sw.bb7
    i32 7, label %sw.bb8
  ]

sw.bb6:                                           ; preds = %sw.bb5
  tail call void @conf_set_message_callback(ptr noundef null) #15
  store i1 true, ptr @sync_kconfig, align 4
  br label %while.cond.backedge

sw.bb7:                                           ; preds = %sw.bb5, %sw.bb5
  %3 = load ptr, ptr @optarg, align 8, !tbaa !5
  br label %while.cond.outer

sw.bb8:                                           ; preds = %sw.bb5
  %call.i = tail call ptr @getenv(ptr noundef nonnull @.str.60) #15
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then9.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %sw.bb8
  %4 = load i8, ptr %call.i, align 1, !tbaa !11
  %tobool1.not.i = icmp eq i8 %4, 0
  br i1 %tobool1.not.i, label %if.then9.i, label %if.end7.i

if.end7.i:                                        ; preds = %land.lhs.true.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %endp.i) #15
  %call2.i = call i64 @strtol(ptr noundef nonnull %call.i, ptr noundef nonnull %endp.i, i32 noundef 0) #15
  %5 = load ptr, ptr %endp.i, align 8, !tbaa !5
  %6 = load i8, ptr %5, align 1, !tbaa !11
  %cmp.i = icmp eq i8 %6, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %endp.i) #15
  br i1 %cmp.i, label %set_randconfig_seed.exit, label %if.then9.i

if.then9.i:                                       ; preds = %if.end7.i, %land.lhs.true.i, %sw.bb8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %now.i) #15
  %call10.i = call i32 @gettimeofday(ptr noundef nonnull %now.i, ptr noundef null) #15
  %7 = load i64, ptr %now.i, align 8, !tbaa !12
  %add.i = add nsw i64 %7, 1
  %8 = load i64, ptr %tv_usec.i, align 8, !tbaa !15
  %add11.i = add nsw i64 %8, 1
  %mul.i = mul nsw i64 %add11.i, %add.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %now.i) #15
  br label %set_randconfig_seed.exit

set_randconfig_seed.exit:                         ; preds = %if.then9.i, %if.end7.i
  %seed.1.in.i = phi i64 [ %call2.i, %if.end7.i ], [ %mul.i, %if.then9.i ]
  %seed.1.i = trunc i64 %seed.1.in.i to i32
  %call14.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.61, i32 noundef %seed.1.i) #15
  tail call void @srand(i32 noundef %seed.1.i) #15
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  %9 = load i32, ptr @optind, align 4, !tbaa !9
  %cmp11 = icmp eq i32 %9, %ac
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %10 = load ptr, ptr @stderr, align 8, !tbaa !5
  %11 = load ptr, ptr %av, align 8, !tbaa !5
  %call13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.1, ptr noundef %11) #17
  tail call fastcc void @conf_usage(ptr noundef %0)
  tail call void @exit(i32 noundef 1) #16
  unreachable

if.end:                                           ; preds = %while.end
  %idxprom = sext i32 %9 to i64
  %arrayidx14 = getelementptr inbounds ptr, ptr %av, i64 %idxprom
  %12 = load ptr, ptr %arrayidx14, align 8, !tbaa !5
  tail call void @conf_parse(ptr noundef %12) #15
  %13 = load i32, ptr @input_mode, align 4, !tbaa !11
  switch i32 %13, label %sw.epilog55 [
    i32 8, label %sw.bb15
    i32 9, label %sw.bb21
    i32 1, label %sw.bb21
    i32 0, label %sw.bb21
    i32 2, label %sw.bb21
    i32 10, label %sw.bb21
    i32 11, label %sw.bb21
    i32 12, label %sw.bb21
    i32 13, label %sw.bb21
    i32 14, label %sw.bb21
    i32 15, label %sw.bb21
    i32 3, label %sw.bb23
    i32 4, label %sw.bb23
    i32 5, label %sw.bb23
    i32 6, label %sw.bb23
    i32 7, label %sw.bb23
  ]

sw.bb15:                                          ; preds = %if.end
  %call16 = tail call i32 @conf_read(ptr noundef %defconfig_file.0.ph) #15
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %sw.epilog55, label %if.then18

if.then18:                                        ; preds = %sw.bb15
  %14 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.2, ptr noundef %defconfig_file.0.ph) #17
  tail call void @exit(i32 noundef 1) #16
  unreachable

sw.bb21:                                          ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %call22 = tail call i32 @conf_read(ptr noundef null) #15
  br label %sw.epilog55

sw.bb23:                                          ; preds = %if.end, %if.end, %if.end, %if.end, %if.end
  %call24 = tail call ptr @getenv(ptr noundef nonnull @.str.3) #15
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %sw.epilog55, label %if.end27

if.end27:                                         ; preds = %sw.bb23
  %strcmpload = load i8, ptr %call24, align 1
  %cmp29.not = icmp eq i8 %strcmpload, 0
  br i1 %cmp29.not, label %if.end38, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end27
  %call30 = tail call i32 @strcmp(ptr noundef nonnull %call24, ptr noundef nonnull dereferenceable(2) @.str.5) #18
  %cmp31.not = icmp eq i32 %call30, 0
  br i1 %cmp31.not, label %if.end38, label %if.then32

if.then32:                                        ; preds = %land.lhs.true
  %call33 = tail call i32 @conf_read_simple(ptr noundef nonnull %call24, i32 noundef 0) #15
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %sw.epilog55, label %if.then35

if.then35:                                        ; preds = %if.then32
  %15 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call36 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.6, ptr noundef nonnull %call24) #17
  tail call void @exit(i32 noundef 1) #16
  unreachable

if.end38:                                         ; preds = %land.lhs.true, %if.end27
  %switch.tableidx = add i32 %13, -3
  %16 = icmp ult i32 %switch.tableidx, 5
  br i1 %16, label %switch.lookup, label %sw.epilog45

switch.lookup:                                    ; preds = %if.end38
  %17 = sext i32 %switch.tableidx to i64
  %reltable.shift = shl i64 %17, 2
  %reltable.intrinsic = call ptr @llvm.load.relative.i64(ptr @reltable.main, i64 %reltable.shift)
  br label %sw.epilog45

sw.epilog45:                                      ; preds = %switch.lookup, %if.end38
  %name.0 = phi ptr [ %call24, %if.end38 ], [ %reltable.intrinsic, %switch.lookup ]
  %call46 = tail call i32 @conf_read_simple(ptr noundef nonnull %name.0, i32 noundef 0) #15
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %sw.epilog55, label %land.lhs.true48

land.lhs.true48:                                  ; preds = %sw.epilog45
  %call49 = tail call i32 @conf_read_simple(ptr noundef nonnull @.str.12, i32 noundef 0) #15
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %sw.epilog55, label %if.then51

if.then51:                                        ; preds = %land.lhs.true48
  %18 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call52 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.13, ptr noundef nonnull %name.0) #17
  tail call void @exit(i32 noundef 1) #16
  unreachable

sw.epilog55:                                      ; preds = %land.lhs.true48, %sw.epilog45, %if.then32, %sw.bb23, %sw.bb21, %sw.bb15, %if.end
  %.b146 = load i1, ptr @sync_kconfig, align 4
  br i1 %.b146, label %if.then57, label %if.end68

if.then57:                                        ; preds = %sw.epilog55
  %call58 = tail call ptr @getenv(ptr noundef nonnull @.str.14) #15
  %tobool59.not = icmp eq ptr %call58, null
  br i1 %tobool59.not, label %if.end68, label %land.lhs.true60

land.lhs.true60:                                  ; preds = %if.then57
  %19 = load i8, ptr %call58, align 1, !tbaa !11
  %tobool61.not = icmp eq i8 %19, 0
  br i1 %tobool61.not, label %if.end68, label %if.then62

if.then62:                                        ; preds = %land.lhs.true60
  %call63 = tail call zeroext i1 @conf_get_changed() #15
  br i1 %call63, label %if.then64, label %if.end68

if.then64:                                        ; preds = %if.then62
  %20 = load ptr, ptr @stderr, align 8, !tbaa !5
  %21 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 50, i64 1, ptr %20) #17
  br label %cleanup

if.end68:                                         ; preds = %if.then62, %land.lhs.true60, %if.then57, %sw.epilog55
  %tobool107.not = phi i1 [ true, %if.then57 ], [ true, %land.lhs.true60 ], [ true, %sw.epilog55 ], [ false, %if.then62 ]
  %22 = load i32, ptr @input_mode, align 4, !tbaa !11
  switch i32 %22, label %sw.epilog92 [
    i32 3, label %sw.bb69
    i32 4, label %sw.bb71
    i32 5, label %sw.bb73
    i32 6, label %sw.bb75
    i32 7, label %while.cond78
    i32 8, label %sw.bb82
    i32 1, label %do.body.preheader
    i32 13, label %for.body.i
    i32 14, label %for.body.i154
    i32 15, label %for.body.i174
    i32 0, label %sw.bb87
    i32 2, label %do.body.preheader
    i32 10, label %do.body.preheader
    i32 11, label %do.body.preheader
  ]

sw.bb69:                                          ; preds = %if.end68
  %call70 = tail call fastcc zeroext i1 @conf_set_all_new_symbols(i32 noundef 3)
  br label %sw.epilog92thread-pre-split

sw.bb71:                                          ; preds = %if.end68
  %call72 = tail call fastcc zeroext i1 @conf_set_all_new_symbols(i32 noundef 1)
  br label %sw.epilog92thread-pre-split

sw.bb73:                                          ; preds = %if.end68
  %call74 = tail call fastcc zeroext i1 @conf_set_all_new_symbols(i32 noundef 2)
  br label %sw.epilog92thread-pre-split

sw.bb75:                                          ; preds = %if.end68
  %call76 = tail call fastcc zeroext i1 @conf_set_all_new_symbols(i32 noundef 0)
  br label %sw.epilog92thread-pre-split

while.cond78:                                     ; preds = %while.cond78, %if.end68
  %call79 = tail call fastcc zeroext i1 @conf_set_all_new_symbols(i32 noundef 4)
  br i1 %call79, label %while.cond78, label %sw.epilog92thread-pre-split

sw.bb82:                                          ; preds = %if.end68
  %call83 = tail call fastcc zeroext i1 @conf_set_all_new_symbols(i32 noundef 0)
  br label %sw.epilog92thread-pre-split

for.body.i:                                       ; preds = %for.inc9.i, %if.end68
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.inc9.i ], [ 0, %if.end68 ]
  %arrayidx.i = getelementptr inbounds [9973 x ptr], ptr @symbol_hash, i64 0, i64 %indvars.iv.i
  %sym.017.i = load ptr, ptr %arrayidx.i, align 8, !tbaa !5
  %tobool.not18.i = icmp eq ptr %sym.017.i, null
  br i1 %tobool.not18.i, label %for.inc9.i, label %for.body2.i

for.body2.i:                                      ; preds = %for.inc.i, %for.body.i
  %sym.019.i = phi ptr [ %sym.0.i, %for.inc.i ], [ %sym.017.i, %for.body.i ]
  %call.i147 = tail call i32 @sym_get_type(ptr noundef nonnull %sym.019.i) #15
  %cmp3.i = icmp eq i32 %call.i147, 2
  br i1 %cmp3.i, label %land.lhs.true.i148, label %for.inc.i

land.lhs.true.i148:                               ; preds = %for.body2.i
  %tri.i = getelementptr inbounds %struct.symbol, ptr %sym.019.i, i64 0, i32 4, i64 0, i32 1
  %23 = load i32, ptr %tri.i, align 8, !tbaa !16
  %cmp5.i = icmp eq i32 %23, 2
  br i1 %cmp5.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true.i148
  store i32 1, ptr %tri.i, align 8, !tbaa !16
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %land.lhs.true.i148, %for.body2.i
  %sym.0.i = load ptr, ptr %sym.019.i, align 8, !tbaa !5
  %tobool.not.i149 = icmp eq ptr %sym.0.i, null
  br i1 %tobool.not.i149, label %for.inc9.i, label %for.body2.i

for.inc9.i:                                       ; preds = %for.inc.i, %for.body.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 9973
  br i1 %exitcond.not.i, label %conf_rewrite_tristates.exit, label %for.body.i

conf_rewrite_tristates.exit:                      ; preds = %for.inc9.i
  tail call void @sym_clear_all_valid() #15
  br label %sw.epilog92thread-pre-split

for.body.i154:                                    ; preds = %for.inc9.i168, %if.end68
  %indvars.iv.i150 = phi i64 [ %indvars.iv.next.i166, %for.inc9.i168 ], [ 0, %if.end68 ]
  %arrayidx.i151 = getelementptr inbounds [9973 x ptr], ptr @symbol_hash, i64 0, i64 %indvars.iv.i150
  %sym.017.i152 = load ptr, ptr %arrayidx.i151, align 8, !tbaa !5
  %tobool.not18.i153 = icmp eq ptr %sym.017.i152, null
  br i1 %tobool.not18.i153, label %for.inc9.i168, label %for.body2.i158

for.body2.i158:                                   ; preds = %for.inc.i165, %for.body.i154
  %sym.019.i155 = phi ptr [ %sym.0.i163, %for.inc.i165 ], [ %sym.017.i152, %for.body.i154 ]
  %call.i156 = tail call i32 @sym_get_type(ptr noundef nonnull %sym.019.i155) #15
  %cmp3.i157 = icmp eq i32 %call.i156, 2
  br i1 %cmp3.i157, label %land.lhs.true.i161, label %for.inc.i165

land.lhs.true.i161:                               ; preds = %for.body2.i158
  %tri.i159 = getelementptr inbounds %struct.symbol, ptr %sym.019.i155, i64 0, i32 4, i64 0, i32 1
  %24 = load i32, ptr %tri.i159, align 8, !tbaa !16
  %cmp5.i160 = icmp eq i32 %24, 1
  br i1 %cmp5.i160, label %if.then.i162, label %for.inc.i165

if.then.i162:                                     ; preds = %land.lhs.true.i161
  store i32 2, ptr %tri.i159, align 8, !tbaa !16
  br label %for.inc.i165

for.inc.i165:                                     ; preds = %if.then.i162, %land.lhs.true.i161, %for.body2.i158
  %sym.0.i163 = load ptr, ptr %sym.019.i155, align 8, !tbaa !5
  %tobool.not.i164 = icmp eq ptr %sym.0.i163, null
  br i1 %tobool.not.i164, label %for.inc9.i168, label %for.body2.i158

for.inc9.i168:                                    ; preds = %for.inc.i165, %for.body.i154
  %indvars.iv.next.i166 = add nuw nsw i64 %indvars.iv.i150, 1
  %exitcond.not.i167 = icmp eq i64 %indvars.iv.next.i166, 9973
  br i1 %exitcond.not.i167, label %conf_rewrite_tristates.exit169, label %for.body.i154

conf_rewrite_tristates.exit169:                   ; preds = %for.inc9.i168
  tail call void @sym_clear_all_valid() #15
  br label %sw.epilog92thread-pre-split

for.body.i174:                                    ; preds = %for.inc9.i188, %if.end68
  %indvars.iv.i170 = phi i64 [ %indvars.iv.next.i186, %for.inc9.i188 ], [ 0, %if.end68 ]
  %arrayidx.i171 = getelementptr inbounds [9973 x ptr], ptr @symbol_hash, i64 0, i64 %indvars.iv.i170
  %sym.017.i172 = load ptr, ptr %arrayidx.i171, align 8, !tbaa !5
  %tobool.not18.i173 = icmp eq ptr %sym.017.i172, null
  br i1 %tobool.not18.i173, label %for.inc9.i188, label %for.body2.i178

for.body2.i178:                                   ; preds = %for.inc.i185, %for.body.i174
  %sym.019.i175 = phi ptr [ %sym.0.i183, %for.inc.i185 ], [ %sym.017.i172, %for.body.i174 ]
  %call.i176 = tail call i32 @sym_get_type(ptr noundef nonnull %sym.019.i175) #15
  %cmp3.i177 = icmp eq i32 %call.i176, 2
  br i1 %cmp3.i177, label %land.lhs.true.i181, label %for.inc.i185

land.lhs.true.i181:                               ; preds = %for.body2.i178
  %tri.i179 = getelementptr inbounds %struct.symbol, ptr %sym.019.i175, i64 0, i32 4, i64 0, i32 1
  %25 = load i32, ptr %tri.i179, align 8, !tbaa !16
  %cmp5.i180 = icmp eq i32 %25, 1
  br i1 %cmp5.i180, label %if.then.i182, label %for.inc.i185

if.then.i182:                                     ; preds = %land.lhs.true.i181
  store i32 0, ptr %tri.i179, align 8, !tbaa !16
  br label %for.inc.i185

for.inc.i185:                                     ; preds = %if.then.i182, %land.lhs.true.i181, %for.body2.i178
  %sym.0.i183 = load ptr, ptr %sym.019.i175, align 8, !tbaa !5
  %tobool.not.i184 = icmp eq ptr %sym.0.i183, null
  br i1 %tobool.not.i184, label %for.inc9.i188, label %for.body2.i178

for.inc9.i188:                                    ; preds = %for.inc.i185, %for.body.i174
  %indvars.iv.next.i186 = add nuw nsw i64 %indvars.iv.i170, 1
  %exitcond.not.i187 = icmp eq i64 %indvars.iv.next.i186, 9973
  br i1 %exitcond.not.i187, label %conf_rewrite_tristates.exit189, label %for.body.i174

conf_rewrite_tristates.exit189:                   ; preds = %for.inc9.i188
  tail call void @sym_clear_all_valid() #15
  br label %sw.epilog92thread-pre-split

sw.bb87:                                          ; preds = %if.end68
  store ptr @rootmenu, ptr @rootEntry, align 8, !tbaa !5
  tail call fastcc void @conf(ptr noundef nonnull @rootmenu)
  store i32 2, ptr @input_mode, align 4, !tbaa !11
  br label %do.body.preheader

do.body.preheader:                                ; preds = %sw.bb87, %if.end68, %if.end68, %if.end68, %if.end68
  br label %do.body

do.body:                                          ; preds = %do.body, %do.body.preheader
  store i32 0, ptr @conf_cnt, align 4, !tbaa !9
  tail call fastcc void @check_conf(ptr noundef nonnull @rootmenu)
  %26 = load i32, ptr @conf_cnt, align 4, !tbaa !9
  %tobool89.not = icmp eq i32 %26, 0
  br i1 %tobool89.not, label %sw.epilog92thread-pre-split, label %do.body

sw.epilog92thread-pre-split:                      ; preds = %do.body, %conf_rewrite_tristates.exit189, %conf_rewrite_tristates.exit169, %conf_rewrite_tristates.exit, %sw.bb82, %while.cond78, %sw.bb75, %sw.bb73, %sw.bb71, %sw.bb69
  %.pr = load i32, ptr @input_mode, align 4, !tbaa !11
  br label %sw.epilog92

sw.epilog92:                                      ; preds = %sw.epilog92thread-pre-split, %if.end68
  %27 = phi i32 [ %.pr, %sw.epilog92thread-pre-split ], [ %22, %if.end68 ]
  %cmp93 = icmp eq i32 %27, 9
  br i1 %cmp93, label %if.then95, label %if.else

if.then95:                                        ; preds = %sw.epilog92
  %call96 = tail call i32 @conf_write_defconfig(ptr noundef %defconfig_file.0.ph) #15
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %cleanup, label %if.then98

if.then98:                                        ; preds = %if.then95
  %28 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call99 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str.16, ptr noundef %defconfig_file.0.ph) #17
  br label %cleanup

if.else:                                          ; preds = %sw.epilog92
  %29 = add i32 %27, -12
  %30 = icmp ult i32 %29, -2
  br i1 %30, label %if.then106, label %cleanup

if.then106:                                       ; preds = %if.else
  br i1 %tobool107.not, label %land.lhs.true108, label %if.end113

land.lhs.true108:                                 ; preds = %if.then106
  %call109 = tail call i32 @conf_write(ptr noundef null) #15
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.end113, label %if.then111

if.then111:                                       ; preds = %land.lhs.true108
  %31 = load ptr, ptr @stderr, align 8, !tbaa !5
  %32 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 49, i64 1, ptr %31) #17
  tail call void @exit(i32 noundef 1) #16
  unreachable

if.end113:                                        ; preds = %land.lhs.true108, %if.then106
  %.b145 = load i1, ptr @sync_kconfig, align 4
  %33 = zext i1 %.b145 to i32
  %call114 = tail call i32 @conf_write_autoconf(i32 noundef %33) #15
  %tobool115 = icmp ne i32 %call114, 0
  %.b = load i1, ptr @sync_kconfig, align 4
  %or.cond127 = select i1 %tobool115, i1 %.b, i1 false
  br i1 %or.cond127, label %if.then118, label %cleanup

if.then118:                                       ; preds = %if.end113
  %34 = load ptr, ptr @stderr, align 8, !tbaa !5
  %35 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 46, i64 1, ptr %34) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then118, %if.end113, %if.else, %if.then98, %if.then95, %if.then64
  %retval.0 = phi i32 [ 1, %if.then64 ], [ 1, %if.then98 ], [ 1, %if.then118 ], [ 0, %if.else ], [ 0, %if.end113 ], [ 0, %if.then95 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @conf_usage(ptr noundef %progname) unnamed_addr #3 {
entry:
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.37, ptr noundef %progname)
  %0 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call.i = tail call i32 @putc(i32 noundef 10, ptr noundef %0) #15
  %puts = tail call i32 @puts(ptr nonnull @str)
  %puts24 = tail call i32 @puts(ptr nonnull @str.90)
  %puts25 = tail call i32 @puts(ptr nonnull @str.91)
  %1 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call.i45 = tail call i32 @putc(i32 noundef 10, ptr noundef %1) #15
  %puts27 = tail call i32 @puts(ptr nonnull @str.92)
  %puts28 = tail call i32 @puts(ptr nonnull @str.93)
  %puts29 = tail call i32 @puts(ptr nonnull @str.94)
  %puts30 = tail call i32 @puts(ptr nonnull @str.95)
  %puts31 = tail call i32 @puts(ptr nonnull @str.96)
  %puts32 = tail call i32 @puts(ptr nonnull @str.97)
  %puts33 = tail call i32 @puts(ptr nonnull @str.98)
  %puts34 = tail call i32 @puts(ptr nonnull @str.99)
  %puts35 = tail call i32 @puts(ptr nonnull @str.100)
  %puts36 = tail call i32 @puts(ptr nonnull @str.101)
  %puts37 = tail call i32 @puts(ptr nonnull @str.102)
  %puts38 = tail call i32 @puts(ptr nonnull @str.103)
  %puts39 = tail call i32 @puts(ptr nonnull @str.104)
  %puts40 = tail call i32 @puts(ptr nonnull @str.105)
  %puts41 = tail call i32 @puts(ptr nonnull @str.106)
  %puts42 = tail call i32 @puts(ptr nonnull @str.107)
  %puts43 = tail call i32 @puts(ptr nonnull @str.108)
  %puts44 = tail call i32 @puts(ptr nonnull @str.109)
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

declare void @conf_set_message_callback(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

declare void @conf_parse(ptr noundef) local_unnamed_addr #5

declare i32 @conf_read(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind readonly
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

declare i32 @conf_read_simple(ptr noundef, i32 noundef) local_unnamed_addr #5

declare zeroext i1 @conf_get_changed() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @conf_set_all_new_symbols(i32 noundef %mode) unnamed_addr #0 {
entry:
  %endp = alloca ptr, align 8
  %cmp = icmp eq i32 %mode, 4
  br i1 %cmp, label %if.then, label %if.end32

if.then:                                          ; preds = %entry
  %call = tail call ptr @getenv(ptr noundef nonnull @.str.62) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %sw.epilog, label %land.rhs

land.rhs:                                         ; preds = %if.then
  %0 = load i8, ptr %call, align 1, !tbaa !11
  %tobool1.not = icmp eq i8 %0, 0
  br i1 %tobool1.not, label %sw.epilog, label %while.body

while.body:                                       ; preds = %land.rhs
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %endp) #15
  %call2 = call i64 @strtol(ptr noundef nonnull %call, ptr noundef nonnull %endp, i32 noundef 10) #15
  %conv3 = trunc i64 %call2 to i32
  %1 = icmp ult i32 %conv3, 101
  br i1 %1, label %if.then8, label %if.else

if.then8:                                         ; preds = %while.body
  %2 = load ptr, ptr %endp, align 8, !tbaa !5
  %3 = load i8, ptr %2, align 1, !tbaa !11
  %cmp11 = icmp eq i8 %3, 58
  %cond.idx = zext i1 %cmp11 to i64
  %cond = getelementptr i8, ptr %2, i64 %cond.idx
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %endp) #15
  %tobool.not.1 = icmp eq ptr %cond, null
  br i1 %tobool.not.1, label %sw.bb, label %land.rhs.1

land.rhs.1:                                       ; preds = %if.then8
  %4 = load i8, ptr %cond, align 1, !tbaa !11
  %tobool1.not.1 = icmp eq i8 %4, 0
  br i1 %tobool1.not.1, label %sw.bb, label %while.body.1

while.body.1:                                     ; preds = %land.rhs.1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %endp) #15
  %call2.1 = call i64 @strtol(ptr noundef nonnull %cond, ptr noundef nonnull %endp, i32 noundef 10) #15
  %conv3.1 = trunc i64 %call2.1 to i32
  %5 = icmp ult i32 %conv3.1, 101
  br i1 %5, label %if.then8.1, label %if.else

if.then8.1:                                       ; preds = %while.body.1
  %6 = load ptr, ptr %endp, align 8, !tbaa !5
  %7 = load i8, ptr %6, align 1, !tbaa !11
  %cmp11.1 = icmp eq i8 %7, 58
  %cond.idx.1 = zext i1 %cmp11.1 to i64
  %cond.1 = getelementptr i8, ptr %6, i64 %cond.idx.1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %endp) #15
  %tobool.not.2 = icmp eq ptr %cond.1, null
  br i1 %tobool.not.2, label %sw.bb19, label %land.rhs.2

land.rhs.2:                                       ; preds = %if.then8.1
  %8 = load i8, ptr %cond.1, align 1, !tbaa !11
  %tobool1.not.2 = icmp eq i8 %8, 0
  br i1 %tobool1.not.2, label %sw.bb19, label %while.body.2

while.body.2:                                     ; preds = %land.rhs.2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %endp) #15
  %call2.2 = call i64 @strtol(ptr noundef nonnull %cond.1, ptr noundef nonnull %endp, i32 noundef 10) #15
  %conv3.2 = trunc i64 %call2.2 to i32
  %9 = icmp ult i32 %conv3.2, 101
  br i1 %9, label %sw.bb22, label %if.else

if.else:                                          ; preds = %while.body.2, %while.body.1, %while.body
  %call9 = tail call ptr @__errno_location() #19
  store i32 34, ptr %call9, align 4, !tbaa !9
  tail call void @perror(ptr noundef nonnull @.str.62) #17
  tail call void @exit(i32 noundef 1) #16
  unreachable

sw.bb:                                            ; preds = %land.rhs.1, %if.then8
  %div301.lhs.trunc = trunc i64 %call2 to i32
  %div301302303 = lshr i32 %div301.lhs.trunc, 1
  %div301.zext = and i32 %div301302303, 127
  %sub = sub nsw i32 %conv3, %div301.zext
  br label %sw.epilog

sw.bb19:                                          ; preds = %land.rhs.2, %if.then8.1
  %add = add nuw nsw i32 %conv3.1, %conv3
  br label %sw.epilog

sw.bb22:                                          ; preds = %while.body.2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %endp) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb22, %sw.bb19, %sw.bb, %land.rhs, %if.then
  %pby.0 = phi i32 [ %conv3, %sw.bb22 ], [ %add, %sw.bb19 ], [ %conv3, %sw.bb ], [ 50, %if.then ], [ 50, %land.rhs ]
  %pty.0 = phi i32 [ %conv3.1, %sw.bb22 ], [ %conv3, %sw.bb19 ], [ %sub, %sw.bb ], [ 33, %if.then ], [ 33, %land.rhs ]
  %ptm.0 = phi i32 [ %conv3.2, %sw.bb22 ], [ %conv3.1, %sw.bb19 ], [ %div301.zext, %sw.bb ], [ 33, %if.then ], [ 33, %land.rhs ]
  %add26 = add nsw i32 %ptm.0, %pty.0
  %cmp27 = icmp sgt i32 %add26, 100
  br i1 %cmp27, label %if.then29, label %if.end32

if.then29:                                        ; preds = %sw.epilog
  %call30 = tail call ptr @__errno_location() #19
  store i32 34, ptr %call30, align 4, !tbaa !9
  tail call void @perror(ptr noundef nonnull @.str.62) #17
  tail call void @exit(i32 noundef 1) #16
  unreachable

if.end32:                                         ; preds = %sw.epilog, %entry
  %pby.1 = phi i32 [ 50, %entry ], [ %pby.0, %sw.epilog ]
  %pty.1 = phi i32 [ 33, %entry ], [ %pty.0, %sw.epilog ]
  %ptm.1 = phi i32 [ 33, %entry ], [ %ptm.0, %sw.epilog ]
  %add72 = add nsw i32 %ptm.1, %pty.1
  br label %for.body

for.body:                                         ; preds = %for.inc101, %if.end32
  %indvars.iv = phi i64 [ 0, %if.end32 ], [ %indvars.iv.next, %for.inc101 ]
  %has_changed.0259 = phi i8 [ 0, %if.end32 ], [ %has_changed.1.lcssa, %for.inc101 ]
  %arrayidx36 = getelementptr inbounds [9973 x ptr], ptr @symbol_hash, i64 0, i64 %indvars.iv
  %sym.0254 = load ptr, ptr %arrayidx36, align 8, !tbaa !5
  %tobool38.not255 = icmp eq ptr %sym.0254, null
  br i1 %tobool38.not255, label %for.inc101, label %for.body39

for.body39:                                       ; preds = %for.inc, %for.body
  %sym.0257 = phi ptr [ %sym.0, %for.inc ], [ %sym.0254, %for.body ]
  %has_changed.1256 = phi i8 [ %has_changed.2, %for.inc ], [ %has_changed.0259, %for.body ]
  %flags.i = getelementptr inbounds %struct.symbol, ptr %sym.0257, i64 0, i32 6
  %10 = load i32, ptr %flags.i, align 4, !tbaa !18
  %11 = and i32 %10, 65664
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %if.end44, label %for.inc

if.end44:                                         ; preds = %for.body39
  %call45 = tail call i32 @sym_get_type(ptr noundef nonnull %sym.0257) #15
  %call45.off = add i32 %call45, -1
  %switch = icmp ult i32 %call45.off, 2
  br i1 %switch, label %sw.bb46, label %for.inc

sw.bb46:                                          ; preds = %if.end44
  switch i32 %mode, label %for.inc [
    i32 1, label %sw.bb47
    i32 2, label %sw.bb49
    i32 3, label %sw.bb53
    i32 4, label %sw.bb57
  ]

sw.bb47:                                          ; preds = %sw.bb46
  %tri = getelementptr inbounds %struct.symbol, ptr %sym.0257, i64 0, i32 4, i64 0, i32 1
  store i32 2, ptr %tri, align 8, !tbaa !16
  br label %sw.epilog90

sw.bb49:                                          ; preds = %sw.bb46
  %tri52 = getelementptr inbounds %struct.symbol, ptr %sym.0257, i64 0, i32 4, i64 0, i32 1
  store i32 1, ptr %tri52, align 8, !tbaa !16
  br label %sw.epilog90

sw.bb53:                                          ; preds = %sw.bb46
  %tri56 = getelementptr inbounds %struct.symbol, ptr %sym.0257, i64 0, i32 4, i64 0, i32 1
  store i32 0, ptr %tri56, align 8, !tbaa !16
  br label %sw.epilog90

sw.bb57:                                          ; preds = %sw.bb46
  %tri60 = getelementptr inbounds %struct.symbol, ptr %sym.0257, i64 0, i32 4, i64 0, i32 1
  store i32 0, ptr %tri60, align 8, !tbaa !16
  %call61 = tail call i32 @rand() #15
  %rem = srem i32 %call61, 100
  %type = getelementptr inbounds %struct.symbol, ptr %sym.0257, i64 0, i32 2
  %13 = load i32, ptr %type, align 8, !tbaa !21
  %cmp62 = icmp eq i32 %13, 2
  br i1 %cmp62, label %if.then64, label %if.else81

if.then64:                                        ; preds = %sw.bb57
  %cmp65 = icmp slt i32 %rem, %pty.1
  br i1 %cmp65, label %if.then67, label %if.else71

if.then67:                                        ; preds = %if.then64
  store i32 2, ptr %tri60, align 8, !tbaa !16
  br label %sw.epilog90

if.else71:                                        ; preds = %if.then64
  %cmp73 = icmp slt i32 %rem, %add72
  br i1 %cmp73, label %if.then75, label %sw.epilog90

if.then75:                                        ; preds = %if.else71
  store i32 1, ptr %tri60, align 8, !tbaa !16
  br label %sw.epilog90

if.else81:                                        ; preds = %sw.bb57
  %cmp82 = icmp slt i32 %rem, %pby.1
  br i1 %cmp82, label %if.then84, label %sw.epilog90

if.then84:                                        ; preds = %if.else81
  store i32 2, ptr %tri60, align 8, !tbaa !16
  br label %sw.epilog90

sw.epilog90:                                      ; preds = %if.then84, %if.else81, %if.then75, %if.else71, %if.then67, %sw.bb53, %sw.bb49, %sw.bb47
  %14 = load i32, ptr %flags.i, align 4, !tbaa !18
  %and.i232 = and i32 %14, 16
  %tobool.i233 = icmp ne i32 %and.i232, 0
  %or.cond175 = and i1 %cmp, %tobool.i233
  br i1 %or.cond175, label %for.inc, label %if.then96

if.then96:                                        ; preds = %sw.epilog90
  %or = or i32 %14, 65536
  store i32 %or, ptr %flags.i, align 4, !tbaa !18
  br label %for.inc

for.inc:                                          ; preds = %if.then96, %sw.epilog90, %sw.bb46, %if.end44, %for.body39
  %has_changed.2 = phi i8 [ %has_changed.1256, %for.body39 ], [ %has_changed.1256, %if.end44 ], [ 1, %sw.bb46 ], [ 1, %sw.epilog90 ], [ 1, %if.then96 ]
  %sym.0 = load ptr, ptr %sym.0257, align 8, !tbaa !5
  %tobool38.not = icmp eq ptr %sym.0, null
  br i1 %tobool38.not, label %for.inc101, label %for.body39

for.inc101:                                       ; preds = %for.inc, %for.body
  %has_changed.1.lcssa = phi i8 [ %has_changed.0259, %for.body ], [ %has_changed.2, %for.inc ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 9973
  br i1 %exitcond.not, label %for.end103, label %for.body

for.end103:                                       ; preds = %for.inc101
  tail call void @sym_clear_all_valid() #15
  br i1 %cmp, label %for.body137.preheader, label %for.body110

for.body110:                                      ; preds = %for.inc130, %for.end103
  %indvars.iv272 = phi i64 [ %indvars.iv.next273, %for.inc130 ], [ 0, %for.end103 ]
  %arrayidx112 = getelementptr inbounds [9973 x ptr], ptr @symbol_hash, i64 0, i64 %indvars.iv272
  %csym.0260 = load ptr, ptr %arrayidx112, align 8, !tbaa !5
  %tobool114.not261 = icmp eq ptr %csym.0260, null
  br i1 %tobool114.not261, label %for.inc130, label %for.body115

for.body115:                                      ; preds = %for.inc127, %for.body110
  %csym.0262 = phi ptr [ %csym.0, %for.inc127 ], [ %csym.0260, %for.body110 ]
  %flags.i234 = getelementptr inbounds %struct.symbol, ptr %csym.0262, i64 0, i32 6
  %15 = load i32, ptr %flags.i234, align 4, !tbaa !18
  %16 = and i32 %15, 65552
  %.not = icmp eq i32 %16, 16
  %and.i241 = and i32 %15, 32
  %tobool.i242 = icmp ne i32 %and.i241, 0
  %or.cond252 = or i1 %.not, %tobool.i242
  br i1 %or.cond252, label %if.then123, label %for.inc127

if.then123:                                       ; preds = %for.body115
  %or125 = or i32 %15, 1048576
  store i32 %or125, ptr %flags.i234, align 4, !tbaa !18
  br label %for.inc127

for.inc127:                                       ; preds = %if.then123, %for.body115
  %csym.0 = load ptr, ptr %csym.0262, align 8, !tbaa !5
  %tobool114.not = icmp eq ptr %csym.0, null
  br i1 %tobool114.not, label %for.inc130, label %for.body115

for.inc130:                                       ; preds = %for.inc127, %for.body110
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 1
  %exitcond275.not = icmp eq i64 %indvars.iv.next273, 9973
  br i1 %exitcond275.not, label %for.body137.preheader, label %for.body110

for.body137.preheader:                            ; preds = %for.inc130, %for.end103
  br label %for.body137

for.body137:                                      ; preds = %for.inc163, %for.body137.preheader
  %indvars.iv276 = phi i64 [ %indvars.iv.next277, %for.inc163 ], [ 0, %for.body137.preheader ]
  %has_changed.3270 = phi i8 [ %has_changed.4.lcssa, %for.inc163 ], [ %has_changed.1.lcssa, %for.body137.preheader ]
  %arrayidx139 = getelementptr inbounds [9973 x ptr], ptr @symbol_hash, i64 0, i64 %indvars.iv276
  %csym.1264 = load ptr, ptr %arrayidx139, align 8, !tbaa !5
  %tobool141.not265 = icmp eq ptr %csym.1264, null
  br i1 %tobool141.not265, label %for.inc163, label %for.body142

for.body142:                                      ; preds = %for.inc160, %for.body137
  %csym.1267 = phi ptr [ %csym.1, %for.inc160 ], [ %csym.1264, %for.body137 ]
  %has_changed.4266 = phi i8 [ %has_changed.5, %for.inc160 ], [ %has_changed.3270, %for.body137 ]
  %flags.i243 = getelementptr inbounds %struct.symbol, ptr %csym.1267, i64 0, i32 6
  %17 = load i32, ptr %flags.i243, align 4, !tbaa !18
  %18 = and i32 %17, 65552
  %19 = icmp eq i32 %18, 16
  br i1 %19, label %if.end148, label %for.inc160

if.end148:                                        ; preds = %for.body142
  tail call void @sym_calc_value(ptr noundef nonnull %csym.1267) #15
  br i1 %cmp, label %if.then151, label %if.else158

if.then151:                                       ; preds = %if.end148
  %tri.i = getelementptr inbounds %struct.symbol, ptr %csym.1267, i64 0, i32 3, i32 1
  %20 = load i32, ptr %tri.i, align 8, !tbaa !22
  %cmp.not.i = icmp eq i32 %20, 2
  br i1 %cmp.not.i, label %if.end.i, label %randomize_choice_values.exit

if.end.i:                                         ; preds = %if.then151
  %call.i = tail call ptr @sym_get_choice_prop(ptr noundef nonnull %csym.1267) #15
  %expr.i = getelementptr inbounds %struct.property, ptr %call.i, i64 0, i32 4
  %e.050.i = load ptr, ptr %expr.i, align 8, !tbaa !11
  %tobool.not51.i = icmp eq ptr %e.050.i, null
  br i1 %tobool.not51.i, label %for.end.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %for.body.i, %if.end.i
  %e.053.i = phi ptr [ %e.0.i, %for.body.i ], [ %e.050.i, %if.end.i ]
  %cnt.052.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %if.end.i ]
  %right.i = getelementptr inbounds %struct.expr, ptr %e.053.i, i64 0, i32 2
  %21 = load ptr, ptr %right.i, align 8, !tbaa !11
  %tobool1.not.i = icmp eq ptr %21, null
  br i1 %tobool1.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %land.rhs.i
  %inc.i = add nuw nsw i32 %cnt.052.i, 1
  %left.i = getelementptr inbounds %struct.expr, ptr %e.053.i, i64 0, i32 1
  %e.0.i = load ptr, ptr %left.i, align 8, !tbaa !11
  %tobool.not.i = icmp eq ptr %e.0.i, null
  br i1 %tobool.not.i, label %for.end.i, label %land.rhs.i

for.end.i:                                        ; preds = %for.body.i, %land.rhs.i, %if.end.i
  %cnt.0.lcssa.i = phi i32 [ 0, %if.end.i ], [ %cnt.052.i, %land.rhs.i ], [ %inc.i, %for.body.i ]
  %call2.i = tail call i32 @rand() #15
  %rem.i = srem i32 %call2.i, %cnt.0.lcssa.i
  %e.155.i = load ptr, ptr %expr.i, align 8, !tbaa !11
  %tobool5.not56.i = icmp eq ptr %e.155.i, null
  br i1 %tobool5.not56.i, label %for.end25.i, label %land.rhs6.lr.ph.i

land.rhs6.lr.ph.i:                                ; preds = %for.end.i
  %def16.i = getelementptr inbounds %struct.symbol, ptr %csym.1267, i64 0, i32 4
  br label %land.rhs6.i

land.rhs6.i:                                      ; preds = %if.end21.i, %land.rhs6.lr.ph.i
  %e.158.i = phi ptr [ %e.155.i, %land.rhs6.lr.ph.i ], [ %e.1.i, %if.end21.i ]
  %cnt.157.i = phi i32 [ 0, %land.rhs6.lr.ph.i ], [ %inc11.i, %if.end21.i ]
  %right7.i = getelementptr inbounds %struct.expr, ptr %e.158.i, i64 0, i32 2
  %22 = load ptr, ptr %right7.i, align 8, !tbaa !11
  %tobool8.not.i = icmp eq ptr %22, null
  br i1 %tobool8.not.i, label %for.end25.i, label %for.body10.i

for.body10.i:                                     ; preds = %land.rhs6.i
  %inc11.i = add nuw nsw i32 %cnt.157.i, 1
  %cmp12.i = icmp eq i32 %rem.i, %cnt.157.i
  br i1 %cmp12.i, label %if.then13.i, label %if.end21.i

if.then13.i:                                      ; preds = %for.body10.i
  store ptr %22, ptr %def16.i, align 8, !tbaa !23
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then13.i, %for.body10.i
  %.sink.i = phi i32 [ 2, %if.then13.i ], [ 0, %for.body10.i ]
  %23 = getelementptr inbounds %struct.symbol, ptr %22, i64 0, i32 4, i64 0, i32 1
  store i32 %.sink.i, ptr %23, align 8
  %flags.i249 = getelementptr inbounds %struct.symbol, ptr %22, i64 0, i32 6
  %24 = load i32, ptr %flags.i249, align 4, !tbaa !18
  %or.i = and i32 %24, -65665
  %and.i250 = or i32 %or.i, 65536
  store i32 %and.i250, ptr %flags.i249, align 4, !tbaa !18
  %left24.i = getelementptr inbounds %struct.expr, ptr %e.158.i, i64 0, i32 1
  %e.1.i = load ptr, ptr %left24.i, align 8, !tbaa !11
  %tobool5.not.i = icmp eq ptr %e.1.i, null
  br i1 %tobool5.not.i, label %for.end25.i, label %land.rhs6.i

for.end25.i:                                      ; preds = %if.end21.i, %land.rhs6.i, %for.end.i
  %25 = load i32, ptr %flags.i243, align 4, !tbaa !18
  %or27.i = and i32 %25, -65665
  %and29.i = or i32 %or27.i, 65536
  store i32 %and29.i, ptr %flags.i243, align 4, !tbaa !18
  br label %randomize_choice_values.exit

randomize_choice_values.exit:                     ; preds = %for.end25.i, %if.then151
  %conv153 = zext i1 %cmp.not.i to i8
  %26 = and i8 %has_changed.4266, 1
  %or156 = or i8 %26, %conv153
  br label %for.inc160

if.else158:                                       ; preds = %if.end148
  tail call void @set_all_choice_values(ptr noundef nonnull %csym.1267) #15
  br label %for.inc160

for.inc160:                                       ; preds = %if.else158, %randomize_choice_values.exit, %for.body142
  %has_changed.5 = phi i8 [ %has_changed.4266, %for.body142 ], [ %or156, %randomize_choice_values.exit ], [ 1, %if.else158 ]
  %csym.1 = load ptr, ptr %csym.1267, align 8, !tbaa !5
  %tobool141.not = icmp eq ptr %csym.1, null
  br i1 %tobool141.not, label %for.inc163, label %for.body142

for.inc163:                                       ; preds = %for.inc160, %for.body137
  %has_changed.4.lcssa = phi i8 [ %has_changed.3270, %for.body137 ], [ %has_changed.5, %for.inc160 ]
  %indvars.iv.next277 = add nuw nsw i64 %indvars.iv276, 1
  %exitcond278.not = icmp eq i64 %indvars.iv.next277, 9973
  br i1 %exitcond278.not, label %for.end165, label %for.body137

for.end165:                                       ; preds = %for.inc163
  %27 = and i8 %has_changed.4.lcssa, 1
  %tobool166 = icmp ne i8 %27, 0
  ret i1 %tobool166
}

; Function Attrs: nounwind uwtable
define internal fastcc void @conf(ptr noundef %menu) unnamed_addr #0 {
entry:
  %help.i82 = alloca %struct.gstr, align 8
  %help.i = alloca %struct.gstr, align 8
  %help.i.i = alloca %struct.gstr, align 8
  %call = tail call zeroext i1 @menu_is_visible(ptr noundef %menu) #15
  br i1 %call, label %if.end, label %cleanup37

if.end:                                           ; preds = %entry
  %sym1 = getelementptr inbounds %struct.menu, ptr %menu, i64 0, i32 3
  %0 = load ptr, ptr %sym1, align 8, !tbaa !24
  %prompt = getelementptr inbounds %struct.menu, ptr %menu, i64 0, i32 4
  %1 = load ptr, ptr %prompt, align 8, !tbaa !26
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end13, label %if.then2

if.then2:                                         ; preds = %if.end
  %type = getelementptr inbounds %struct.property, ptr %1, i64 0, i32 1
  %2 = load i32, ptr %type, align 8, !tbaa !27
  switch i32 %2, label %if.end13 [
    i32 3, label %sw.bb
    i32 2, label %sw.bb7
  ]

sw.bb:                                            ; preds = %if.then2
  %3 = load i32, ptr @input_mode, align 4, !tbaa !11
  %cmp.not = icmp eq i32 %3, 0
  %4 = load ptr, ptr @rootEntry, align 8
  %cmp4.not = icmp eq ptr %4, %menu
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp4.not
  br i1 %or.cond, label %sw.bb7, label %if.then5

if.then5:                                         ; preds = %sw.bb
  tail call fastcc void @check_conf(ptr noundef nonnull %menu)
  br label %cleanup37

sw.bb7:                                           ; preds = %sw.bb, %if.then2
  %call8 = tail call ptr @menu_get_prompt(ptr noundef nonnull %menu) #15
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end13, label %if.then10

if.then10:                                        ; preds = %sw.bb7
  %5 = load i32, ptr @indent, align 4, !tbaa !9
  %call11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.63, i32 noundef %5, i32 noundef 42, i32 noundef %5, i32 noundef 42, ptr noundef nonnull %call8, i32 noundef %5, i32 noundef 42)
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %sw.bb7, %if.then2, %if.end
  %tobool14.not = icmp eq ptr %0, null
  br i1 %tobool14.not, label %if.end32, label %if.end16

if.end16:                                         ; preds = %if.end13
  %flags.i = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %flags.i, align 4, !tbaa !18
  %and.i = and i32 %6, 16
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end23, label %if.then18

if.then18:                                        ; preds = %if.end16
  %7 = load ptr, ptr %sym1, align 8, !tbaa !24
  %flags.i106 = getelementptr inbounds %struct.symbol, ptr %7, i64 0, i32 6
  %8 = load i32, ptr %flags.i106, align 4, !tbaa !18
  %and.i107 = and i32 %8, 65536
  %tobool.i108.not = icmp eq i32 %and.i107, 0
  %call2.i = tail call zeroext i1 @sym_is_changeable(ptr noundef %7) #15
  br i1 %call2.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then18
  tail call fastcc void @conf_sym(ptr noundef nonnull %menu) #15
  tail call void @sym_calc_value(ptr noundef nonnull %7) #15
  %tri.i105 = getelementptr inbounds %struct.symbol, ptr %7, i64 0, i32 3, i32 1
  %9 = load i32, ptr %tri.i105, align 8, !tbaa !22
  %switch.i = icmp ult i32 %9, 2
  br i1 %switch.i, label %conf_choice.exit, label %if.end.i

if.else.i:                                        ; preds = %if.then18
  %tri.i = getelementptr inbounds %struct.symbol, ptr %7, i64 0, i32 3, i32 1
  %10 = load i32, ptr %tri.i, align 8, !tbaa !22
  switch i32 %10, label %if.end.i [
    i32 0, label %conf_choice.exit
    i32 1, label %sw.bb8.i
  ]

sw.bb8.i:                                         ; preds = %if.else.i
  %11 = load i32, ptr @indent, align 4, !tbaa !9
  %sub.i = add nsw i32 %11, -1
  %call9.i = tail call ptr @menu_get_prompt(ptr noundef nonnull %menu) #15
  %call10.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.64, i32 noundef %sub.i, ptr noundef nonnull @.str.4, ptr noundef %call9.i) #15
  br label %conf_choice.exit

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %curr.i = getelementptr inbounds %struct.symbol, ptr %7, i64 0, i32 3
  %list.i = getelementptr inbounds %struct.menu, ptr %menu, i64 0, i32 2
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.backedge, %if.end.i
  %12 = load i32, ptr @indent, align 4, !tbaa !9
  %sub12.i = add nsw i32 %12, -1
  %call13.i = call ptr @menu_get_prompt(ptr noundef %menu) #15
  %call14.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.64, i32 noundef %sub12.i, ptr noundef nonnull @.str.4, ptr noundef %call13.i) #15
  %13 = load ptr, ptr %curr.i, align 8, !tbaa !29
  store i8 0, ptr @line, align 16, !tbaa !11
  %child.0.i111 = load ptr, ptr %list.i, align 8, !tbaa !5
  %tobool.not.i112 = icmp eq ptr %child.0.i111, null
  br i1 %tobool.not.i112, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %while.cond.i
  %child.0.i115 = phi ptr [ %child.0.i, %for.inc.i ], [ %child.0.i111, %while.cond.i ]
  %def.0.i114 = phi i32 [ %def.2.i, %for.inc.i ], [ 0, %while.cond.i ]
  %cnt.0.i113 = phi i32 [ %cnt.1.i, %for.inc.i ], [ 0, %while.cond.i ]
  %call16.i = call zeroext i1 @menu_is_visible(ptr noundef nonnull %child.0.i115) #15
  br i1 %call16.i, label %if.end18.i, label %for.inc.i

if.end18.i:                                       ; preds = %for.body.i
  %sym19.i = getelementptr inbounds %struct.menu, ptr %child.0.i115, i64 0, i32 3
  %14 = load ptr, ptr %sym19.i, align 8, !tbaa !24
  %tobool20.not.i = icmp eq ptr %14, null
  br i1 %tobool20.not.i, label %if.then21.i, label %if.end24.i

if.then21.i:                                      ; preds = %if.end18.i
  %15 = load i32, ptr @indent, align 4, !tbaa !9
  %call22.i = call ptr @menu_get_prompt(ptr noundef nonnull %child.0.i115) #15
  %call23.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.65, i32 noundef %15, i32 noundef 42, ptr noundef %call22.i) #15
  br label %for.inc.i

if.end24.i:                                       ; preds = %if.end18.i
  %inc.i = add nsw i32 %cnt.0.i113, 1
  %cmp.i = icmp eq ptr %14, %13
  %16 = load i32, ptr @indent, align 4, !tbaa !9
  %. = select i1 %cmp.i, i32 62, i32 32
  %inc.i.def.0.i114 = select i1 %cmp.i, i32 %inc.i, i32 %def.0.i114
  %call29.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.66, i32 noundef %16, i32 noundef %.) #15
  %call31.i = call ptr @menu_get_prompt(ptr noundef nonnull %child.0.i115) #15
  %call32.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.67, i32 noundef %inc.i, ptr noundef %call31.i) #15
  %17 = load ptr, ptr %sym19.i, align 8, !tbaa !24
  %name.i = getelementptr inbounds %struct.symbol, ptr %17, i64 0, i32 1
  %18 = load ptr, ptr %name.i, align 8, !tbaa !30
  %tobool34.not.i = icmp eq ptr %18, null
  br i1 %tobool34.not.i, label %if.end39.i, label %if.then35.i

if.then35.i:                                      ; preds = %if.end24.i
  %call38.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.68, ptr noundef nonnull %18) #15
  %.pre = load ptr, ptr %sym19.i, align 8, !tbaa !24
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then35.i, %if.end24.i
  %19 = phi ptr [ %.pre, %if.then35.i ], [ %17, %if.end24.i ]
  %flags.i102 = getelementptr inbounds %struct.symbol, ptr %19, i64 0, i32 6
  %20 = load i32, ptr %flags.i102, align 4, !tbaa !18
  %and.i103 = and i32 %20, 65536
  %tobool.i104.not = icmp eq i32 %and.i103, 0
  br i1 %tobool.i104.not, label %if.then42.i, label %if.end44.i

if.then42.i:                                      ; preds = %if.end39.i
  %call43.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.69) #15
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then42.i, %if.end39.i
  %21 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call.i101 = call i32 @putc(i32 noundef 10, ptr noundef %21) #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end44.i, %if.then21.i, %for.body.i
  %cnt.1.i = phi i32 [ %inc.i, %if.end44.i ], [ %cnt.0.i113, %if.then21.i ], [ %cnt.0.i113, %for.body.i ]
  %def.2.i = phi i32 [ %inc.i.def.0.i114, %if.end44.i ], [ %def.0.i114, %if.then21.i ], [ %def.0.i114, %for.body.i ]
  %child.0.i = load ptr, ptr %child.0.i115, align 8, !tbaa !5
  %tobool.not.i = icmp eq ptr %child.0.i, null
  br i1 %tobool.not.i, label %for.end.i, label %for.body.i

for.end.i:                                        ; preds = %for.inc.i, %while.cond.i
  %cnt.0.i.lcssa = phi i32 [ 0, %while.cond.i ], [ %cnt.1.i, %for.inc.i ]
  %def.0.i.lcssa = phi i32 [ 0, %while.cond.i ], [ %def.2.i, %for.inc.i ]
  %22 = load i32, ptr @indent, align 4, !tbaa !9
  %sub46.i = add nsw i32 %22, -1
  %call47.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.70, i32 noundef %sub46.i, ptr noundef nonnull @.str.4) #15
  %cmp48.i = icmp eq i32 %cnt.0.i.lcssa, 1
  br i1 %cmp48.i, label %if.then49.i, label %if.end51.i

if.then49.i:                                      ; preds = %for.end.i
  %puts.i = call i32 @puts(ptr nonnull @str.113) #15
  br label %conf_childs.i

if.end51.i:                                       ; preds = %for.end.i
  %call52.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.72, i32 noundef %cnt.0.i.lcssa) #15
  %23 = load i32, ptr @input_mode, align 4, !tbaa !11
  switch i32 %23, label %conf_childs.i [
    i32 2, label %sw.bb53.i
    i32 1, label %sw.bb53.i
    i32 0, label %sw.bb58.i
  ]

sw.bb53.i:                                        ; preds = %if.end51.i, %if.end51.i
  br i1 %tobool.i108.not, label %sw.bb58.i, label %if.then55.i

if.then55.i:                                      ; preds = %sw.bb53.i
  %call56.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.73, i32 noundef %def.0.i.lcssa) #15
  br label %conf_childs.i

sw.bb58.i:                                        ; preds = %sw.bb53.i, %if.end51.i
  %24 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call59.i = call i32 @fflush(ptr noundef %24) #15
  %25 = load ptr, ptr @stdin, align 8, !tbaa !5
  %call.i96 = call ptr @fgets(ptr noundef nonnull @line, i32 noundef 4096, ptr noundef %25) #15
  %tobool.not.i97 = icmp eq ptr %call.i96, null
  br i1 %tobool.not.i97, label %if.then.i98, label %if.end.i99

if.then.i98:                                      ; preds = %sw.bb58.i
  %26 = load ptr, ptr @stderr, align 8, !tbaa !5
  %27 = call i64 @fwrite(ptr nonnull @.str.74, i64 34, i64 1, ptr %26) #20
  br label %if.end.i99

if.end.i99:                                       ; preds = %if.then.i98, %sw.bb58.i
  %28 = load i32, ptr @tty_stdio, align 4, !tbaa !9
  %tobool2.not.i = icmp eq i32 %28, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %xfgets.exit

if.then3.i:                                       ; preds = %if.end.i99
  %call4.i100 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.75, ptr noundef nonnull @line) #15
  br label %xfgets.exit

xfgets.exit:                                      ; preds = %if.then3.i, %if.end.i99
  %call.i85 = tail call ptr @__ctype_b_loc() #19
  %29 = load ptr, ptr %call.i85, align 8, !tbaa !5
  br label %while.cond.i89

while.cond.i89:                                   ; preds = %while.cond.i89, %xfgets.exit
  %p.0.i = phi ptr [ @line, %xfgets.exit ], [ %incdec.ptr.i, %while.cond.i89 ]
  %30 = load i8, ptr %p.0.i, align 1, !tbaa !11
  %idxprom.i86 = sext i8 %30 to i64
  %arrayidx.i87 = getelementptr inbounds i16, ptr %29, i64 %idxprom.i86
  %31 = load i16, ptr %arrayidx.i87, align 2, !tbaa !31
  %32 = and i16 %31, 8192
  %tobool.not.i88 = icmp eq i16 %32, 0
  %incdec.ptr.i = getelementptr inbounds i8, ptr %p.0.i, i64 1
  br i1 %tobool.not.i88, label %while.end.i, label %while.cond.i89

while.end.i:                                      ; preds = %while.cond.i89
  %call2.i90 = call i64 @strlen(ptr noundef nonnull %p.0.i) #18
  %conv3.i = trunc i64 %call2.i90 to i32
  %cmp.not.i = icmp eq ptr %p.0.i, @line
  br i1 %cmp.not.i, label %if.end.i94, label %if.then.i92

if.then.i92:                                      ; preds = %while.end.i
  %add.i91 = shl i64 %call2.i90, 32
  %sext1.i = add i64 %add.i91, 4294967296
  %conv5.i = ashr exact i64 %sext1.i, 32
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 @line, ptr nonnull align 1 %p.0.i, i64 %conv5.i, i1 false) #15
  br label %if.end.i94

if.end.i94:                                       ; preds = %if.then.i92, %while.end.i
  %tobool6.not.i93 = icmp eq i32 %conv3.i, 0
  br i1 %tobool6.not.i93, label %strip.exit, label %if.end8.i95

if.end8.i95:                                      ; preds = %if.end.i94
  %sext.i = shl i64 %call2.i90, 32
  %idx.ext.i = ashr exact i64 %sext.i, 32
  %p.12.i = getelementptr inbounds i8, ptr getelementptr inbounds ([4096 x i8], ptr @line, i64 -1, i64 4095), i64 %idx.ext.i
  %33 = load ptr, ptr %call.i85, align 8, !tbaa !5
  %34 = load i8, ptr %p.12.i, align 1, !tbaa !11
  %idxprom133.i = sext i8 %34 to i64
  %arrayidx144.i = getelementptr inbounds i16, ptr %33, i64 %idxprom133.i
  %35 = load i16, ptr %arrayidx144.i, align 2, !tbaa !31
  %36 = and i16 %35, 8192
  %tobool17.not5.i = icmp eq i16 %36, 0
  br i1 %tobool17.not5.i, label %strip.exit, label %while.body18.i

while.body18.i:                                   ; preds = %while.body18.i, %if.end8.i95
  %p.16.i = phi ptr [ %p.1.i, %while.body18.i ], [ %p.12.i, %if.end8.i95 ]
  store i8 0, ptr %p.16.i, align 1, !tbaa !11
  %p.1.i = getelementptr inbounds i8, ptr %p.16.i, i64 -1
  %37 = load ptr, ptr %call.i85, align 8, !tbaa !5
  %38 = load i8, ptr %p.1.i, align 1, !tbaa !11
  %idxprom13.i = sext i8 %38 to i64
  %arrayidx14.i = getelementptr inbounds i16, ptr %37, i64 %idxprom13.i
  %39 = load i16, ptr %arrayidx14.i, align 2, !tbaa !31
  %40 = and i16 %39, 8192
  %tobool17.not.i = icmp eq i16 %40, 0
  br i1 %tobool17.not.i, label %strip.exit, label %while.body18.i

strip.exit:                                       ; preds = %while.body18.i, %if.end8.i95, %if.end.i94
  %41 = load i8, ptr @line, align 16, !tbaa !11
  switch i8 %41, label %if.else66.i [
    i8 63, label %if.then62.i
    i8 0, label %conf_childs.i
  ]

if.then62.i:                                      ; preds = %strip.exit
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %help.i82) #15
  call void @str_new(ptr nonnull sret(%struct.gstr) align 8 %help.i82) #15
  call void @menu_get_ext_help(ptr noundef %menu, ptr noundef nonnull %help.i82) #15
  %call.i83 = call ptr @str_get(ptr noundef nonnull %help.i82) #15
  %call1.i84 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.76, ptr noundef %call.i83) #15
  call void @str_free(ptr noundef nonnull %help.i82) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %help.i82) #15
  br label %while.cond.i.backedge

if.else66.i:                                      ; preds = %strip.exit
  %42 = load ptr, ptr %call.i85, align 8, !tbaa !5
  %idxprom.i = sext i8 %41 to i64
  %arrayidx.i = getelementptr inbounds i16, ptr %42, i64 %idxprom.i
  %43 = load i16, ptr %arrayidx.i, align 2, !tbaa !31
  %44 = and i16 %43, 2048
  %tobool70.not.i = icmp eq i16 %44, 0
  br i1 %tobool70.not.i, label %while.cond.i.backedge, label %if.then71.i

if.then71.i:                                      ; preds = %if.else66.i
  %call.i80 = call i64 @strtol(ptr nocapture noundef nonnull @line, ptr noundef null, i32 noundef 10) #15
  %conv.i81 = trunc i64 %call.i80 to i32
  br label %conf_childs.i

conf_childs.i:                                    ; preds = %if.then71.i, %strip.exit, %if.then55.i, %if.end51.i, %if.then49.i
  %cnt.2.i = phi i32 [ 1, %if.then49.i ], [ %cnt.0.i.lcssa, %if.end51.i ], [ %conv.i81, %if.then71.i ], [ %def.0.i.lcssa, %if.then55.i ], [ %def.0.i.lcssa, %strip.exit ]
  %child.1.i117 = load ptr, ptr %list.i, align 8, !tbaa !5
  %tobool79.not.i118 = icmp eq ptr %child.1.i117, null
  br i1 %tobool79.not.i118, label %while.cond.i.backedge, label %for.body80.i

while.cond.i.backedge:                            ; preds = %if.then103.i, %for.inc89.i, %conf_childs.i, %if.else66.i, %if.then62.i
  br label %while.cond.i

for.body80.i:                                     ; preds = %for.inc89.i, %conf_childs.i
  %child.1.i120 = phi ptr [ %child.1.i, %for.inc89.i ], [ %child.1.i117, %conf_childs.i ]
  %cnt.3.i119 = phi i32 [ %cnt.4.i, %for.inc89.i ], [ %cnt.2.i, %conf_childs.i ]
  %sym81.i = getelementptr inbounds %struct.menu, ptr %child.1.i120, i64 0, i32 3
  %45 = load ptr, ptr %sym81.i, align 8, !tbaa !24
  %tobool82.not.i = icmp eq ptr %45, null
  br i1 %tobool82.not.i, label %for.inc89.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %for.body80.i
  %call83.i = call zeroext i1 @menu_is_visible(ptr noundef nonnull %child.1.i120) #15
  br i1 %call83.i, label %if.end85.i, label %for.inc89.i

if.end85.i:                                       ; preds = %lor.lhs.false.i
  %dec.i = add nsw i32 %cnt.3.i119, -1
  %tobool86.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool86.not.i, label %if.end94.i, label %for.inc89.i

for.inc89.i:                                      ; preds = %if.end85.i, %lor.lhs.false.i, %for.body80.i
  %cnt.4.i = phi i32 [ %dec.i, %if.end85.i ], [ %cnt.3.i119, %lor.lhs.false.i ], [ %cnt.3.i119, %for.body80.i ]
  %child.1.i = load ptr, ptr %child.1.i120, align 8, !tbaa !5
  %tobool79.not.i = icmp eq ptr %child.1.i, null
  br i1 %tobool79.not.i, label %while.cond.i.backedge, label %for.body80.i

if.end94.i:                                       ; preds = %if.end85.i
  %46 = load i8, ptr @line, align 16, !tbaa !11
  %tobool96.not.i = icmp eq i8 %46, 0
  br i1 %tobool96.not.i, label %if.end104.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end94.i
  %call97.i = call i64 @strlen(ptr noundef nonnull @line) #18
  %sub98.i = add i64 %call97.i, -1
  %arrayidx99.i = getelementptr inbounds [4096 x i8], ptr @line, i64 0, i64 %sub98.i
  %47 = load i8, ptr %arrayidx99.i, align 1, !tbaa !11
  %cmp101.i = icmp eq i8 %47, 63
  br i1 %cmp101.i, label %if.then103.i, label %if.end104.i

if.then103.i:                                     ; preds = %land.lhs.true.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %help.i) #15
  call void @str_new(ptr nonnull sret(%struct.gstr) align 8 %help.i) #15
  call void @menu_get_ext_help(ptr noundef nonnull %child.1.i120, ptr noundef nonnull %help.i) #15
  %call.i79 = call ptr @str_get(ptr noundef nonnull %help.i) #15
  %call1.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.76, ptr noundef %call.i79) #15
  call void @str_free(ptr noundef nonnull %help.i) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %help.i) #15
  br label %while.cond.i.backedge

if.end104.i:                                      ; preds = %land.lhs.true.i, %if.end94.i
  %sym81.i.le.le = getelementptr inbounds %struct.menu, ptr %child.1.i120, i64 0, i32 3
  %48 = load ptr, ptr %sym81.i.le.le, align 8, !tbaa !24
  %call.i78 = call zeroext i1 @sym_set_tristate_value(ptr noundef %48, i32 noundef 2) #15
  %list107.i = getelementptr inbounds %struct.menu, ptr %child.1.i120, i64 0, i32 2
  %child.2.i121 = load ptr, ptr %list107.i, align 8, !tbaa !5
  %tobool109.not.i122 = icmp eq ptr %child.2.i121, null
  br i1 %tobool109.not.i122, label %conf_choice.exit, label %for.body110.i.preheader

for.body110.i.preheader:                          ; preds = %if.end104.i
  %.pre128 = load i32, ptr @indent, align 4, !tbaa !9
  br label %for.body110.i

for.body110.i:                                    ; preds = %for.body110.i, %for.body110.i.preheader
  %49 = phi i32 [ %sub111.i, %for.body110.i ], [ %.pre128, %for.body110.i.preheader ]
  %child.2.i123 = phi ptr [ %child.2.i, %for.body110.i ], [ %child.2.i121, %for.body110.i.preheader ]
  %add.i = add nsw i32 %49, 2
  store i32 %add.i, ptr @indent, align 4, !tbaa !9
  call fastcc void @conf(ptr noundef nonnull %child.2.i123) #15
  %50 = load i32, ptr @indent, align 4, !tbaa !9
  %sub111.i = add nsw i32 %50, -2
  store i32 %sub111.i, ptr @indent, align 4, !tbaa !9
  %child.2.i = load ptr, ptr %child.2.i123, align 8, !tbaa !5
  %tobool109.not.i = icmp eq ptr %child.2.i, null
  br i1 %tobool109.not.i, label %conf_choice.exit, label %for.body110.i

conf_choice.exit:                                 ; preds = %for.body110.i, %if.end104.i, %sw.bb8.i, %if.else.i, %if.then.i
  %tri = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 3, i32 1
  %51 = load i32, ptr %tri, align 8, !tbaa !22
  %cmp20.not = icmp eq i32 %51, 1
  br i1 %cmp20.not, label %if.then31, label %cleanup37

if.end23:                                         ; preds = %if.end16
  %type24 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 2
  %52 = load i32, ptr %type24, align 8, !tbaa !21
  %.off = add i32 %52, -3
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %sw.bb25, label %sw.default27

sw.bb25:                                          ; preds = %if.end23
  %53 = load ptr, ptr %sym1, align 8, !tbaa !24
  %name.i64 = getelementptr inbounds %struct.symbol, ptr %53, i64 0, i32 1
  br label %while.cond.i69

while.cond.i69:                                   ; preds = %while.cond.i69.backedge, %sw.bb25
  %54 = load i32, ptr @indent, align 4, !tbaa !9
  %sub.i65 = add nsw i32 %54, -1
  %55 = load ptr, ptr %prompt, align 8, !tbaa !26
  %text.i = getelementptr inbounds %struct.property, ptr %55, i64 0, i32 2
  %56 = load ptr, ptr %text.i, align 8, !tbaa !33
  %call.i66 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.77, i32 noundef %sub.i65, ptr noundef nonnull @.str.4, ptr noundef %56) #15
  %57 = load ptr, ptr %name.i64, align 8, !tbaa !30
  %call2.i67 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.78, ptr noundef %57) #15
  %call3.i = call ptr @sym_get_string_value(ptr noundef %53) #15
  %tobool.not.i68 = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i68, label %if.end.i72, label %if.then.i71

if.then.i71:                                      ; preds = %while.cond.i69
  %call4.i70 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.79, ptr noundef nonnull %call3.i) #15
  br label %if.end.i72

if.end.i72:                                       ; preds = %if.then.i71, %while.cond.i69
  %call5.i = call fastcc i32 @conf_askvalue(ptr noundef nonnull %53, ptr noundef %call3.i) #15
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.then31, label %if.end8.i

if.end8.i:                                        ; preds = %if.end.i72
  %58 = load i8, ptr @line, align 16, !tbaa !11
  %conv.i = sext i8 %58 to i32
  switch i32 %conv.i, label %sw.epilog.thread3.i [
    i32 10, label %sw.epilog.i
    i32 63, label %sw.bb.i
  ]

sw.bb.i:                                          ; preds = %if.end8.i
  %59 = load i8, ptr getelementptr inbounds ([4096 x i8], ptr @line, i64 0, i64 1), align 1, !tbaa !11
  %cmp.i73 = icmp eq i8 %59, 10
  br i1 %cmp.i73, label %sw.epilog.thread.i, label %sw.epilog.thread3.i

sw.epilog.thread.i:                               ; preds = %sw.bb.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %help.i.i) #15
  call void @str_new(ptr nonnull sret(%struct.gstr) align 8 %help.i.i) #15
  call void @menu_get_ext_help(ptr noundef nonnull %menu, ptr noundef nonnull %help.i.i) #15
  %call.i.i = call ptr @str_get(ptr noundef nonnull %help.i.i) #15
  %call1.i.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.76, ptr noundef %call.i.i) #15
  call void @str_free(ptr noundef nonnull %help.i.i) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %help.i.i) #15
  br label %while.cond.i69.backedge

sw.epilog.thread3.i:                              ; preds = %sw.bb.i, %if.end8.i
  %call13.i74 = call i64 @strlen(ptr noundef nonnull @line) #18
  %sub14.i = add i64 %call13.i74, -1
  %arrayidx.i75 = getelementptr inbounds [4096 x i8], ptr @line, i64 0, i64 %sub14.i
  store i8 0, ptr %arrayidx.i75, align 1, !tbaa !11
  br label %land.lhs.true.i77

sw.epilog.i:                                      ; preds = %if.end8.i
  br i1 %tobool.not.i68, label %while.cond.i69.backedge, label %land.lhs.true.i77

land.lhs.true.i77:                                ; preds = %sw.epilog.i, %sw.epilog.thread3.i
  %def.06.i = phi ptr [ @line, %sw.epilog.thread3.i ], [ %call3.i, %sw.epilog.i ]
  %call16.i76 = call zeroext i1 @sym_set_string_value(ptr noundef nonnull %53, ptr noundef nonnull %def.06.i) #15
  br i1 %call16.i76, label %if.then31, label %while.cond.i69.backedge

while.cond.i69.backedge:                          ; preds = %land.lhs.true.i77, %sw.epilog.i, %sw.epilog.thread.i
  br label %while.cond.i69

sw.default27:                                     ; preds = %if.end23
  tail call fastcc void @conf_sym(ptr noundef nonnull %menu)
  br label %if.then31

if.then31:                                        ; preds = %sw.default27, %land.lhs.true.i77, %if.end.i72, %conf_choice.exit
  %60 = load i32, ptr @indent, align 4, !tbaa !9
  %add = add nsw i32 %60, 2
  store i32 %add, ptr @indent, align 4, !tbaa !9
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end13
  %list = getelementptr inbounds %struct.menu, ptr %menu, i64 0, i32 2
  %child.0124 = load ptr, ptr %list, align 8, !tbaa !5
  %tobool33.not125 = icmp eq ptr %child.0124, null
  br i1 %tobool33.not125, label %for.end, label %for.body

for.body:                                         ; preds = %for.body, %if.end32
  %child.0126 = phi ptr [ %child.0, %for.body ], [ %child.0124, %if.end32 ]
  call fastcc void @conf(ptr noundef nonnull %child.0126)
  %child.0 = load ptr, ptr %child.0126, align 8, !tbaa !5
  %tobool33.not = icmp eq ptr %child.0, null
  br i1 %tobool33.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end32
  br i1 %tobool14.not, label %cleanup37, label %if.then35

if.then35:                                        ; preds = %for.end
  %61 = load i32, ptr @indent, align 4, !tbaa !9
  %sub = add nsw i32 %61, -2
  store i32 %sub, ptr @indent, align 4, !tbaa !9
  br label %cleanup37

cleanup37:                                        ; preds = %if.then35, %for.end, %conf_choice.exit, %if.then5, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @check_conf(ptr noundef %menu) unnamed_addr #0 {
entry:
  %help.i = alloca %struct.gstr, align 8
  %call = tail call zeroext i1 @menu_is_visible(ptr noundef %menu) #15
  br i1 %call, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %sym1 = getelementptr inbounds %struct.menu, ptr %menu, i64 0, i32 3
  %0 = load ptr, ptr %sym1, align 8, !tbaa !24
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end20, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 6
  %1 = load i32, ptr %flags.i, align 4, !tbaa !18
  %and.i = and i32 %1, 65536
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %land.lhs.true3, label %if.end20

land.lhs.true3:                                   ; preds = %land.lhs.true
  %call4 = tail call zeroext i1 @sym_is_changeable(ptr noundef nonnull %0) #15
  br i1 %call4, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true3
  %2 = load i32, ptr %flags.i, align 4, !tbaa !18
  %and.i38 = and i32 %2, 16
  %tobool.i39.not = icmp eq i32 %and.i38, 0
  br i1 %tobool.i39.not, label %if.end20, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %lor.lhs.false
  %tri.i = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 3, i32 1
  %3 = load i32, ptr %tri.i, align 8, !tbaa !22
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then8, label %if.end20

if.then8:                                         ; preds = %land.lhs.true6, %land.lhs.true3
  %4 = load i32, ptr @input_mode, align 4, !tbaa !11
  switch i32 %4, label %sw.default [
    i32 10, label %sw.bb
    i32 11, label %sw.bb12
  ]

sw.bb:                                            ; preds = %if.then8
  %name = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %name, align 8, !tbaa !30
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %if.end20, label %if.then10

if.then10:                                        ; preds = %sw.bb
  tail call void @print_symbol_for_listconfig(ptr noundef nonnull %0) #15
  br label %if.end20

sw.bb12:                                          ; preds = %if.then8
  %puts = tail call i32 @puts(ptr nonnull @str.111)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %help.i) #15
  call void @str_new(ptr nonnull sret(%struct.gstr) align 8 %help.i) #15
  call void @menu_get_ext_help(ptr noundef nonnull %menu, ptr noundef nonnull %help.i) #15
  %call.i = call ptr @str_get(ptr noundef nonnull %help.i) #15
  %call1.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.76, ptr noundef %call.i) #15
  call void @str_free(ptr noundef nonnull %help.i) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %help.i) #15
  %puts35 = call i32 @puts(ptr nonnull @str.111)
  br label %if.end20

sw.default:                                       ; preds = %if.then8
  %6 = load i32, ptr @conf_cnt, align 4, !tbaa !9
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr @conf_cnt, align 4, !tbaa !9
  %tobool15.not = icmp eq i32 %6, 0
  br i1 %tobool15.not, label %if.then16, label %if.end18

if.then16:                                        ; preds = %sw.default
  %puts36 = tail call i32 @puts(ptr nonnull @str.112)
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %sw.default
  %call19 = tail call ptr @menu_get_parent_menu(ptr noundef nonnull %menu) #15
  store ptr %call19, ptr @rootEntry, align 8, !tbaa !5
  tail call fastcc void @conf(ptr noundef %call19)
  br label %if.end20

if.end20:                                         ; preds = %if.end18, %sw.bb12, %if.then10, %sw.bb, %land.lhs.true6, %lor.lhs.false, %land.lhs.true, %if.end
  %list = getelementptr inbounds %struct.menu, ptr %menu, i64 0, i32 2
  %child.040 = load ptr, ptr %list, align 8, !tbaa !5
  %tobool21.not41 = icmp eq ptr %child.040, null
  br i1 %tobool21.not41, label %cleanup, label %for.body

for.body:                                         ; preds = %for.body, %if.end20
  %child.042 = phi ptr [ %child.0, %for.body ], [ %child.040, %if.end20 ]
  call fastcc void @check_conf(ptr noundef nonnull %child.042)
  %child.0 = load ptr, ptr %child.042, align 8, !tbaa !5
  %tobool21.not = icmp eq ptr %child.0, null
  br i1 %tobool21.not, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.body, %if.end20, %entry
  ret void
}

declare i32 @conf_write_defconfig(ptr noundef) local_unnamed_addr #5

declare i32 @conf_write(ptr noundef) local_unnamed_addr #5

declare i32 @conf_write_autoconf(i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @srand(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #6

declare i32 @sym_get_type(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #2

declare void @sym_clear_all_valid() local_unnamed_addr #5

declare void @sym_calc_value(ptr noundef) local_unnamed_addr #5

declare void @set_all_choice_values(ptr noundef) local_unnamed_addr #5

declare ptr @sym_get_choice_prop(ptr noundef) local_unnamed_addr #5

declare zeroext i1 @menu_is_visible(ptr noundef) local_unnamed_addr #5

declare ptr @menu_get_prompt(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @conf_sym(ptr noundef %menu) unnamed_addr #0 {
entry:
  %help.i = alloca %struct.gstr, align 8
  %sym1 = getelementptr inbounds %struct.menu, ptr %menu, i64 0, i32 3
  %0 = load ptr, ptr %sym1, align 8, !tbaa !24
  %prompt = getelementptr inbounds %struct.menu, ptr %menu, i64 0, i32 4
  %name = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 1
  %tri.i = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 3, i32 1
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %1 = load i32, ptr @indent, align 4, !tbaa !9
  %sub = add nsw i32 %1, -1
  %2 = load ptr, ptr %prompt, align 8, !tbaa !26
  %text = getelementptr inbounds %struct.property, ptr %2, i64 0, i32 2
  %3 = load ptr, ptr %text, align 8, !tbaa !33
  %call = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.77, i32 noundef %sub, ptr noundef nonnull @.str.4, ptr noundef %3)
  %4 = load ptr, ptr %name, align 8, !tbaa !30
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.cond
  %call3 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.78, ptr noundef nonnull %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.cond
  %5 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call.i = call i32 @putc(i32 noundef 91, ptr noundef %5) #15
  %6 = load i32, ptr %tri.i, align 8, !tbaa !22
  switch i32 %6, label %land.lhs.true [
    i32 0, label %sw.epilog
    i32 1, label %land.lhs.true.sink.split
    i32 2, label %sw.bb9
  ]

sw.bb9:                                           ; preds = %if.end
  br label %land.lhs.true.sink.split

sw.epilog:                                        ; preds = %if.end
  %7 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call.i3 = call i32 @putc(i32 noundef 78, ptr noundef %7) #15
  br label %land.lhs.true16

land.lhs.true.sink.split:                         ; preds = %sw.bb9, %if.end
  %.sink = phi i32 [ 89, %sw.bb9 ], [ 77, %if.end ]
  %8 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call.i4 = call i32 @putc(i32 noundef %.sink, ptr noundef %8) #15
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %land.lhs.true.sink.split, %if.end
  %call11 = call zeroext i1 @sym_tristate_within_range(ptr noundef nonnull %0, i32 noundef 0) #15
  br i1 %call11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %land.lhs.true
  %call13 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.82)
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %land.lhs.true
  %cond2 = icmp eq i32 %6, 1
  br i1 %cond2, label %land.lhs.true22, label %land.lhs.true16

land.lhs.true16:                                  ; preds = %if.end14, %sw.epilog
  %call17 = call zeroext i1 @sym_tristate_within_range(ptr noundef nonnull %0, i32 noundef 1) #15
  br i1 %call17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %land.lhs.true16
  %call19 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.83)
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %land.lhs.true16
  %cmp21.not = icmp eq i32 %6, 2
  br i1 %cmp21.not, label %if.end26, label %land.lhs.true22

land.lhs.true22:                                  ; preds = %if.end20, %if.end14
  %call23 = call zeroext i1 @sym_tristate_within_range(ptr noundef nonnull %0, i32 noundef 2) #15
  br i1 %call23, label %if.then24, label %if.end26

if.then24:                                        ; preds = %land.lhs.true22
  %call25 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.84)
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %land.lhs.true22, %if.end20
  %call27 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.85)
  %call28 = call ptr @sym_get_string_value(ptr noundef nonnull %0) #15
  %call29 = call fastcc i32 @conf_askvalue(ptr noundef nonnull %0, ptr noundef %call28)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %cleanup, label %if.end32

if.end32:                                         ; preds = %if.end26
  %call.i6 = tail call ptr @__ctype_b_loc() #19
  %9 = load ptr, ptr %call.i6, align 8, !tbaa !5
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i, %if.end32
  %p.0.i = phi ptr [ @line, %if.end32 ], [ %incdec.ptr.i, %while.cond.i ]
  %10 = load i8, ptr %p.0.i, align 1, !tbaa !11
  %idxprom.i = sext i8 %10 to i64
  %arrayidx.i = getelementptr inbounds i16, ptr %9, i64 %idxprom.i
  %11 = load i16, ptr %arrayidx.i, align 2, !tbaa !31
  %12 = and i16 %11, 8192
  %tobool.not.i = icmp eq i16 %12, 0
  %incdec.ptr.i = getelementptr inbounds i8, ptr %p.0.i, i64 1
  br i1 %tobool.not.i, label %while.end.i, label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  %call2.i = call i64 @strlen(ptr noundef nonnull %p.0.i) #18
  %conv3.i = trunc i64 %call2.i to i32
  %cmp.not.i = icmp eq ptr %p.0.i, @line
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %while.end.i
  %add.i = shl i64 %call2.i, 32
  %sext1.i = add i64 %add.i, 4294967296
  %conv5.i = ashr exact i64 %sext1.i, 32
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 @line, ptr nonnull align 1 %p.0.i, i64 %conv5.i, i1 false) #15
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.end.i
  %tobool6.not.i = icmp eq i32 %conv3.i, 0
  br i1 %tobool6.not.i, label %strip.exit, label %if.end8.i

if.end8.i:                                        ; preds = %if.end.i
  %sext.i = shl i64 %call2.i, 32
  %idx.ext.i = ashr exact i64 %sext.i, 32
  %p.12.i = getelementptr inbounds i8, ptr getelementptr inbounds ([4096 x i8], ptr @line, i64 -1, i64 4095), i64 %idx.ext.i
  %13 = load ptr, ptr %call.i6, align 8, !tbaa !5
  %14 = load i8, ptr %p.12.i, align 1, !tbaa !11
  %idxprom133.i = sext i8 %14 to i64
  %arrayidx144.i = getelementptr inbounds i16, ptr %13, i64 %idxprom133.i
  %15 = load i16, ptr %arrayidx144.i, align 2, !tbaa !31
  %16 = and i16 %15, 8192
  %tobool17.not5.i = icmp eq i16 %16, 0
  br i1 %tobool17.not5.i, label %strip.exit, label %while.body18.i

while.body18.i:                                   ; preds = %while.body18.i, %if.end8.i
  %p.16.i = phi ptr [ %p.1.i, %while.body18.i ], [ %p.12.i, %if.end8.i ]
  store i8 0, ptr %p.16.i, align 1, !tbaa !11
  %p.1.i = getelementptr inbounds i8, ptr %p.16.i, i64 -1
  %17 = load ptr, ptr %call.i6, align 8, !tbaa !5
  %18 = load i8, ptr %p.1.i, align 1, !tbaa !11
  %idxprom13.i = sext i8 %18 to i64
  %arrayidx14.i = getelementptr inbounds i16, ptr %17, i64 %idxprom13.i
  %19 = load i16, ptr %arrayidx14.i, align 2, !tbaa !31
  %20 = and i16 %19, 8192
  %tobool17.not.i = icmp eq i16 %20, 0
  br i1 %tobool17.not.i, label %strip.exit, label %while.body18.i

strip.exit:                                       ; preds = %while.body18.i, %if.end8.i, %if.end.i
  %21 = load i8, ptr @line, align 16, !tbaa !11
  %conv = sext i8 %21 to i32
  switch i32 %conv, label %while.cond.backedge [
    i32 110, label %sw.bb33
    i32 78, label %sw.bb33
    i32 109, label %sw.bb39
    i32 77, label %sw.bb39
    i32 121, label %sw.bb43
    i32 89, label %sw.bb43
    i32 0, label %sw.epilog52
    i32 63, label %help
  ]

sw.bb33:                                          ; preds = %strip.exit, %strip.exit
  %22 = load i8, ptr getelementptr inbounds ([4096 x i8], ptr @line, i64 0, i64 1), align 1, !tbaa !11
  %tobool34.not = icmp eq i8 %22, 0
  br i1 %tobool34.not, label %sw.epilog52, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb33
  %bcmp1 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) getelementptr inbounds ([4096 x i8], ptr @line, i64 0, i64 1), ptr noundef nonnull dereferenceable(2) @.str.86, i64 2)
  %tobool36.not = icmp eq i32 %bcmp1, 0
  br i1 %tobool36.not, label %sw.epilog52, label %while.cond.backedge

sw.bb39:                                          ; preds = %strip.exit, %strip.exit
  %23 = load i8, ptr getelementptr inbounds ([4096 x i8], ptr @line, i64 0, i64 1), align 1, !tbaa !11
  %tobool40.not = icmp eq i8 %23, 0
  br i1 %tobool40.not, label %sw.epilog52, label %while.cond.backedge

sw.bb43:                                          ; preds = %strip.exit, %strip.exit
  %24 = load i8, ptr getelementptr inbounds ([4096 x i8], ptr @line, i64 0, i64 1), align 1, !tbaa !11
  %tobool44.not = icmp eq i8 %24, 0
  br i1 %tobool44.not, label %sw.epilog52, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %sw.bb43
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) getelementptr inbounds ([4096 x i8], ptr @line, i64 0, i64 1), ptr noundef nonnull dereferenceable(3) @.str.87, i64 3)
  %tobool47.not = icmp eq i32 %bcmp, 0
  br i1 %tobool47.not, label %sw.epilog52, label %while.cond.backedge

sw.epilog52:                                      ; preds = %lor.lhs.false45, %sw.bb43, %sw.bb39, %lor.lhs.false, %sw.bb33, %strip.exit
  %newval.0 = phi i32 [ 2, %lor.lhs.false45 ], [ 2, %sw.bb43 ], [ 1, %sw.bb39 ], [ 0, %lor.lhs.false ], [ 0, %sw.bb33 ], [ %6, %strip.exit ]
  %call53 = call zeroext i1 @sym_set_tristate_value(ptr noundef %0, i32 noundef %newval.0) #15
  br i1 %call53, label %cleanup, label %help

help:                                             ; preds = %sw.epilog52, %strip.exit
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %help.i) #15
  call void @str_new(ptr nonnull sret(%struct.gstr) align 8 %help.i) #15
  call void @menu_get_ext_help(ptr noundef %menu, ptr noundef nonnull %help.i) #15
  %call.i7 = call ptr @str_get(ptr noundef nonnull %help.i) #15
  %call1.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.76, ptr noundef %call.i7) #15
  call void @str_free(ptr noundef nonnull %help.i) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %help.i) #15
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %help, %lor.lhs.false45, %sw.bb39, %lor.lhs.false, %strip.exit
  br label %while.cond

cleanup:                                          ; preds = %sw.epilog52, %if.end26
  ret void
}

declare zeroext i1 @sym_is_changeable(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #11

declare void @str_new(ptr sret(%struct.gstr) align 8) local_unnamed_addr #5

declare void @menu_get_ext_help(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @str_get(ptr noundef) local_unnamed_addr #5

declare void @str_free(ptr noundef) local_unnamed_addr #5

declare zeroext i1 @sym_set_tristate_value(ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @sym_get_string_value(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc i32 @conf_askvalue(ptr noundef %sym, ptr nocapture noundef readonly %def) unnamed_addr #0 {
entry:
  %flags.i = getelementptr inbounds %struct.symbol, ptr %sym, i64 0, i32 6
  %0 = load i32, ptr %flags.i, align 4, !tbaa !18
  %and.i = and i32 %0, 65536
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.80)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i8 10, ptr @line, align 16, !tbaa !11
  store i8 0, ptr getelementptr inbounds ([4096 x i8], ptr @line, i64 0, i64 1), align 1, !tbaa !11
  %call2 = tail call zeroext i1 @sym_is_changeable(ptr noundef nonnull %sym) #15
  br i1 %call2, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) %def)
  store i8 10, ptr @line, align 16, !tbaa !11
  store i8 0, ptr getelementptr inbounds ([4096 x i8], ptr @line, i64 0, i64 1), align 1, !tbaa !11
  br label %return

if.end5:                                          ; preds = %if.end
  %1 = load i32, ptr @input_mode, align 4, !tbaa !11
  %.off = add i32 %1, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end5
  %2 = load i32, ptr %flags.i, align 4, !tbaa !18
  %and.i16 = and i32 %2, 65536
  %tobool.i17.not = icmp eq i32 %and.i16, 0
  br i1 %tobool.i17.not, label %sw.default, label %if.then7

if.then7:                                         ; preds = %sw.bb
  %puts14 = tail call i32 @puts(ptr nonnull dereferenceable(1) %def)
  br label %return

sw.default:                                       ; preds = %sw.bb, %if.end5
  %3 = load ptr, ptr @stdout, align 8, !tbaa !5
  %call10 = tail call i32 @fflush(ptr noundef %3)
  %4 = load ptr, ptr @stdin, align 8, !tbaa !5
  %call.i = tail call ptr @fgets(ptr noundef nonnull @line, i32 noundef 4096, ptr noundef %4) #15
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.default
  %5 = load ptr, ptr @stderr, align 8, !tbaa !5
  %6 = tail call i64 @fwrite(ptr nonnull @.str.74, i64 34, i64 1, ptr %5) #20
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.default
  %7 = load i32, ptr @tty_stdio, align 4, !tbaa !9
  %tobool2.not.i = icmp eq i32 %7, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %return

if.then3.i:                                       ; preds = %if.end.i
  %call4.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.75, ptr noundef nonnull @line) #15
  br label %return

return:                                           ; preds = %if.then3.i, %if.end.i, %if.then7, %if.then3
  %retval.0 = phi i32 [ 0, %if.then7 ], [ 0, %if.then3 ], [ 1, %if.end.i ], [ 1, %if.then3.i ]
  ret i32 %retval.0
}

declare zeroext i1 @sym_set_string_value(ptr noundef, ptr noundef) local_unnamed_addr #5

declare zeroext i1 @sym_tristate_within_range(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #6

declare void @print_symbol_for_listconfig(ptr noundef) local_unnamed_addr #5

declare ptr @menu_get_parent_menu(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #13

; Function Attrs: argmemonly nocallback nofree nosync nounwind readonly willreturn
declare ptr @llvm.load.relative.i64(ptr, i64) #14

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind readonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { nofree nounwind }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { argmemonly nocallback nofree nosync nounwind readonly willreturn }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { cold }
attributes #18 = { nounwind readonly willreturn }
attributes #19 = { nounwind readnone willreturn }
attributes #20 = { cold nounwind }

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
!12 = !{!13, !14, i64 0}
!13 = !{!"timeval", !14, i64 0, !14, i64 8}
!14 = !{!"long", !7, i64 0}
!15 = !{!13, !14, i64 8}
!16 = !{!17, !7, i64 8}
!17 = !{!"symbol_value", !6, i64 0, !7, i64 8}
!18 = !{!19, !10, i64 108}
!19 = !{!"symbol", !6, i64 0, !6, i64 8, !7, i64 16, !17, i64 24, !7, i64 40, !7, i64 104, !10, i64 108, !6, i64 112, !20, i64 120, !20, i64 136, !20, i64 152}
!20 = !{!"expr_value", !6, i64 0, !7, i64 8}
!21 = !{!19, !7, i64 16}
!22 = !{!19, !7, i64 32}
!23 = !{!17, !6, i64 0}
!24 = !{!25, !6, i64 24}
!25 = !{!"menu", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !10, i64 56, !6, i64 64, !6, i64 72, !10, i64 80, !6, i64 88}
!26 = !{!25, !6, i64 32}
!27 = !{!28, !7, i64 8}
!28 = !{!"property", !6, i64 0, !7, i64 8, !6, i64 16, !20, i64 24, !6, i64 40, !6, i64 48, !6, i64 56, !10, i64 64}
!29 = !{!19, !6, i64 24}
!30 = !{!19, !6, i64 8}
!31 = !{!32, !32, i64 0}
!32 = !{!"short", !7, i64 0}
!33 = !{!28, !6, i64 16}
