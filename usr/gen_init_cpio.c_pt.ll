; ModuleID = '/llk/IR_all_yes/usr/gen_init_cpio.c_pt.bc'
source_filename = "../usr/gen_init_cpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_handler = type { ptr, ptr }
%struct.generic_type = type { ptr, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@default_mtime = internal unnamed_addr global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"t:h\00", align 1
@optarg = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Invalid timestamp: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"ERROR: Timestamp too large for cpio format\0A\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"ERROR: unable to open '%s': %s\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.7 = private unnamed_addr constant [67 x i8] c"ERROR: incorrect format, could not locate file type line %d: '%s'\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [57 x i8] c"ERROR: incorrect format, newline required line %d: '%s'\0A\00", align 1
@file_handler_table = internal unnamed_addr constant [7 x %struct.file_handler] [%struct.file_handler { ptr @.str.13, ptr @cpio_mkfile_line }, %struct.file_handler { ptr @.str.14, ptr @cpio_mknod_line }, %struct.file_handler { ptr @.str.15, ptr @cpio_mkdir_line }, %struct.file_handler { ptr @.str.16, ptr @cpio_mkslink_line }, %struct.file_handler { ptr @.str.17, ptr @cpio_mkpipe_line }, %struct.file_handler { ptr @.str.18, ptr @cpio_mksock_line }, %struct.file_handler zeroinitializer], align 16
@.str.10 = private unnamed_addr constant [10 x i8] c" line %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"unknown file type line %d: '%s'\0A\00", align 1
@.str.12 = private unnamed_addr constant [1238 x i8] c"Usage:\0A\09%s [-t <timestamp>] <cpio_list>\0A\0A<cpio_list> is a file containing newline separated entries that\0Adescribe the files to be included in the initramfs archive:\0A\0A# a comment\0Afile <name> <location> <mode> <uid> <gid> [<hard links>]\0Adir <name> <mode> <uid> <gid>\0Anod <name> <mode> <uid> <gid> <dev_type> <maj> <min>\0Aslink <name> <target> <mode> <uid> <gid>\0Apipe <name> <mode> <uid> <gid>\0Asock <name> <mode> <uid> <gid>\0A\0A<name>       name of the file/dir/nod/etc in the archive\0A<location>   location of the file in the current filesystem\0A             expands shell variables quoted with ${}\0A<target>     link target\0A<mode>       mode/permissions of the file\0A<uid>        user id (0=root)\0A<gid>        group id (0=root)\0A<dev_type>   device type (b=block, c=character)\0A<maj>        major number of nod\0A<min>        minor number of nod\0A<hard links> space separated list of other links to file\0A\0Aexample:\0A# A simple initramfs\0Adir /dev 0755 0 0\0Anod /dev/console 0600 0 0 c 5 1\0Adir /root 0700 0 0\0Adir /sbin 0755 0 0\0Afile /sbin/kinit /usr/src/klibc/kinit/kinit 0755 0 0\0A\0A<timestamp> is time in seconds since Epoch that will be used\0Aas mtime for symlinks, special files and directories. The default\0Ais to use the current time for these entries.\0A\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"nod\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"slink\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"sock\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"%4096s %4096s %o %d %d %n\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"Unrecognized file format '%s'\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"out of memory (%d)\0A\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"%4096s %n\00", align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"File %s could not be opened for reading\0A\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"File %s could not be stat()'ed\0A\00", align 1
@.str.25 = private unnamed_addr constant [57 x i8] c"%s: Timestamp exceeds maximum cpio timestamp, clipping.\0A\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"Can not read %s file\0A\00", align 1
@.str.28 = private unnamed_addr constant [59 x i8] c"%s%08X%08X%08lX%08lX%08X%08lX%08lX%08X%08X%08X%08X%08X%08X\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"070701\00", align 1
@ino = internal unnamed_addr global i32 721, align 4
@stdout = external local_unnamed_addr global ptr, align 8
@.str.30 = private unnamed_addr constant [24 x i8] c"writing filebuf failed\0A\00", align 1
@offset = internal unnamed_addr global i32 0, align 4
@.str.31 = private unnamed_addr constant [3 x i8] c"${\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.33 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"%4096s %o %d %d %c %u %u\00", align 1
@.str.35 = private unnamed_addr constant [29 x i8] c"Unrecognized nod format '%s'\00", align 1
@.str.36 = private unnamed_addr constant [58 x i8] c"%s%08X%08X%08lX%08lX%08X%08lX%08X%08X%08X%08X%08X%08X%08X\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"%4096s %o %d %d\00", align 1
@.str.38 = private unnamed_addr constant [28 x i8] c"Unrecognized %s format '%s'\00", align 1
@generic_type_table = internal unnamed_addr constant [3 x %struct.generic_type] [%struct.generic_type { ptr @.str.15, i32 16384 }, %struct.generic_type { ptr @.str.17, i32 4096 }, %struct.generic_type { ptr @.str.18, i32 49152 }], align 16
@.str.39 = private unnamed_addr constant [23 x i8] c"%4096s %4096s %o %d %d\00", align 1
@.str.40 = private unnamed_addr constant [29 x i8] c"Unrecognized dir format '%s'\00", align 1
@__const.cpio_trailer.name = private unnamed_addr constant [11 x i8] c"TRAILER!!!\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) local_unnamed_addr #0 {
entry:
  %s.i = alloca [256 x i8], align 16
  %name.i = alloca [11 x i8], align 1
  %line = alloca [8242 x i8], align 16
  %invalid = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8242, ptr nonnull %line) #18
  %call = tail call i64 @time(ptr noundef null) #18
  store i64 %call, ptr @default_mtime, align 8, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %cleanup, %entry
  %call1 = tail call i32 @getopt(i32 noundef %argc, ptr noundef %argv, ptr noundef nonnull @.str) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %invalid) #18
  switch i32 %call1, label %cleanup [
    i32 -1, label %while.end
    i32 116, label %sw.bb
    i32 104, label %sw.bb7
    i32 63, label %sw.bb7
  ]

sw.bb:                                            ; preds = %while.cond
  %0 = load ptr, ptr @optarg, align 8, !tbaa !9
  %call2 = call i64 @strtol(ptr noundef %0, ptr noundef nonnull %invalid, i32 noundef 10) #18
  store i64 %call2, ptr @default_mtime, align 8, !tbaa !5
  %1 = load ptr, ptr @optarg, align 8, !tbaa !9
  %2 = load i8, ptr %1, align 1, !tbaa !11
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %3 = load ptr, ptr %invalid, align 8, !tbaa !9
  %4 = load i8, ptr %3, align 1, !tbaa !11
  %tobool3.not = icmp eq i8 %4, 0
  br i1 %tobool3.not, label %cleanup, label %if.then4

if.then4:                                         ; preds = %lor.lhs.false, %sw.bb
  %5 = load ptr, ptr @stderr, align 8, !tbaa !9
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.1, ptr noundef nonnull %1) #19
  %6 = load ptr, ptr %argv, align 8, !tbaa !9
  tail call fastcc void @usage(ptr noundef %6)
  tail call void @exit(i32 noundef 1) #20
  unreachable

sw.bb7:                                           ; preds = %while.cond, %while.cond
  %7 = load ptr, ptr %argv, align 8, !tbaa !9
  tail call fastcc void @usage(ptr noundef %7)
  %cmp9 = icmp ne i32 %call1, 104
  %cond = zext i1 %cmp9 to i32
  tail call void @exit(i32 noundef %cond) #20
  unreachable

cleanup:                                          ; preds = %lor.lhs.false, %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %invalid) #18
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %invalid) #18
  %8 = load i64, ptr @default_mtime, align 8, !tbaa !5
  %cmp12 = icmp sgt i64 %8, 4294967295
  br i1 %cmp12, label %if.then14, label %if.end16

if.then14:                                        ; preds = %while.end
  %9 = load ptr, ptr @stderr, align 8, !tbaa !9
  %10 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 43, i64 1, ptr %9) #19
  tail call void @exit(i32 noundef 1) #20
  unreachable

if.end16:                                         ; preds = %while.end
  %11 = load i32, ptr @optind, align 4, !tbaa !12
  %sub = sub nsw i32 %argc, %11
  %cmp17.not = icmp eq i32 %sub, 1
  br i1 %cmp17.not, label %if.end21, label %if.then19

if.then19:                                        ; preds = %if.end16
  %12 = load ptr, ptr %argv, align 8, !tbaa !9
  tail call fastcc void @usage(ptr noundef %12)
  tail call void @exit(i32 noundef 1) #20
  unreachable

if.end21:                                         ; preds = %if.end16
  %idxprom = sext i32 %11 to i64
  %arrayidx22 = getelementptr inbounds ptr, ptr %argv, i64 %idxprom
  %13 = load ptr, ptr %arrayidx22, align 8, !tbaa !9
  %call23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(2) @.str.3) #21
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end21
  %14 = load ptr, ptr @stdin, align 8, !tbaa !9
  br label %if.end34

if.else:                                          ; preds = %if.end21
  %call26 = tail call ptr @fopen(ptr noundef %13, ptr noundef nonnull @.str.4)
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %if.then28, label %if.end34

if.then28:                                        ; preds = %if.else
  %15 = load ptr, ptr @stderr, align 8, !tbaa !9
  %call29 = tail call ptr @__errno_location() #22
  %16 = load i32, ptr %call29, align 4, !tbaa !12
  %call30 = tail call ptr @strerror(i32 noundef %16) #18
  %call31 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.5, ptr noundef %13, ptr noundef %call30) #19
  %17 = load ptr, ptr %argv, align 8, !tbaa !9
  tail call fastcc void @usage(ptr noundef %17)
  tail call void @exit(i32 noundef 1) #20
  unreachable

if.end34:                                         ; preds = %if.else, %if.then25
  %cpio_list.0 = phi ptr [ %call26, %if.else ], [ %14, %if.then25 ]
  %call36154 = call ptr @fgets(ptr noundef nonnull %line, i32 noundef 8242, ptr noundef %cpio_list.0)
  %tobool37.not155 = icmp eq ptr %call36154, null
  br i1 %tobool37.not155, label %if.then109, label %while.body38

while.body38:                                     ; preds = %cleanup102, %if.end34
  %ec.0157 = phi i32 [ %ec.6, %cleanup102 ], [ 0, %if.end34 ]
  %line_nr.0156 = phi i32 [ %inc, %cleanup102 ], [ 0, %if.end34 ]
  %call40 = call i64 @strlen(ptr noundef nonnull %line) #21
  %inc = add nuw nsw i32 %line_nr.0156, 1
  %18 = load i8, ptr %line, align 16, !tbaa !11
  %cmp43 = icmp eq i8 %18, 35
  br i1 %cmp43, label %cleanup102, label %if.end46

if.end46:                                         ; preds = %while.body38
  %call48 = call ptr @strtok(ptr noundef nonnull %line, ptr noundef nonnull @.str.6) #18
  %tobool49.not = icmp eq ptr %call48, null
  br i1 %tobool49.not, label %while.end106.thread, label %if.end53

while.end106.thread:                              ; preds = %if.end46
  %19 = load ptr, ptr @stderr, align 8, !tbaa !9
  %call52 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.7, i32 noundef %inc, ptr noundef nonnull %line) #19
  br label %if.end110

if.end53:                                         ; preds = %if.end46
  %20 = load i8, ptr %call48, align 1, !tbaa !11
  %cmp55 = icmp eq i8 %20, 10
  br i1 %cmp55, label %cleanup102, label %if.end58

if.end58:                                         ; preds = %if.end53
  %call59 = call i64 @strlen(ptr noundef nonnull %call48) #21
  %cmp60 = icmp eq i64 %call40, %call59
  br i1 %cmp60, label %cleanup102, label %if.end63

if.end63:                                         ; preds = %if.end58
  %call64 = call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.8) #18
  %tobool65.not = icmp eq ptr %call64, null
  br i1 %tobool65.not, label %if.then66, label %if.end69

if.then66:                                        ; preds = %if.end63
  %21 = load ptr, ptr @stderr, align 8, !tbaa !9
  %call68 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.9, i32 noundef %inc, ptr noundef nonnull %line) #19
  br label %if.end69

if.end69:                                         ; preds = %if.then66, %if.end63
  %ec.1 = phi i32 [ %ec.0157, %if.end63 ], [ -1, %if.then66 ]
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %line, ptr noundef nonnull dereferenceable(5) @.str.13, i64 5)
  %tobool79.not = icmp eq i32 %bcmp, 0
  br i1 %tobool79.not, label %if.then80, label %for.inc

if.then80:                                        ; preds = %for.inc.4, %for.inc.3, %for.inc.2, %for.inc.1, %for.inc, %if.end69
  %type_idx.0153.lcssa.wide = phi i64 [ 0, %if.end69 ], [ 1, %for.inc ], [ 2, %for.inc.1 ], [ 3, %for.inc.2 ], [ 4, %for.inc.3 ], [ 5, %for.inc.4 ]
  %handler = getelementptr inbounds [7 x %struct.file_handler], ptr @file_handler_table, i64 0, i64 %type_idx.0153.lcssa.wide, i32 1
  %22 = load ptr, ptr %handler, align 8, !tbaa !14
  %call83 = call i32 %22(ptr noundef %call64) #18
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %cleanup102, label %if.then85

if.then85:                                        ; preds = %if.then80
  %23 = load ptr, ptr @stderr, align 8, !tbaa !9
  %call86 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.10, i32 noundef %inc) #19
  br label %cleanup102

for.inc:                                          ; preds = %if.end69
  %lhsv = load i32, ptr %line, align 16
  %.not = icmp eq i32 %lhsv, 6582126
  br i1 %.not, label %if.then80, label %for.inc.1

for.inc.1:                                        ; preds = %for.inc
  %lhsv164 = load i32, ptr %line, align 16
  %.not166 = icmp eq i32 %lhsv164, 7498084
  br i1 %.not166, label %if.then80, label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.1
  %bcmp167 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %line, ptr noundef nonnull dereferenceable(6) @.str.16, i64 6)
  %tobool79.not.3 = icmp eq i32 %bcmp167, 0
  br i1 %tobool79.not.3, label %if.then80, label %for.inc.3

for.inc.3:                                        ; preds = %for.inc.2
  %bcmp168 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %line, ptr noundef nonnull dereferenceable(5) @.str.17, i64 5)
  %tobool79.not.4 = icmp eq i32 %bcmp168, 0
  br i1 %tobool79.not.4, label %if.then80, label %for.inc.4

for.inc.4:                                        ; preds = %for.inc.3
  %bcmp169 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %line, ptr noundef nonnull dereferenceable(5) @.str.18, i64 5)
  %tobool79.not.5 = icmp eq i32 %bcmp169, 0
  br i1 %tobool79.not.5, label %if.then80, label %for.inc.5

for.inc.5:                                        ; preds = %for.inc.4
  %24 = load ptr, ptr @stderr, align 8, !tbaa !9
  %call100 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.11, i32 noundef %inc, ptr noundef nonnull %line) #19
  br label %cleanup102

cleanup102:                                       ; preds = %for.inc.5, %if.then85, %if.then80, %if.end58, %if.end53, %while.body38
  %ec.6 = phi i32 [ %ec.0157, %while.body38 ], [ %ec.0157, %if.end53 ], [ %ec.0157, %if.end58 ], [ %ec.1, %for.inc.5 ], [ %ec.1, %if.then80 ], [ %call83, %if.then85 ]
  %call36 = call ptr @fgets(ptr noundef nonnull %line, i32 noundef 8242, ptr noundef %cpio_list.0)
  %tobool37.not = icmp eq ptr %call36, null
  br i1 %tobool37.not, label %while.end106, label %while.body38

while.end106:                                     ; preds = %cleanup102
  %cmp107 = icmp eq i32 %ec.6, 0
  br i1 %cmp107, label %if.then109, label %if.end110

if.then109:                                       ; preds = %while.end106, %if.end34
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %s.i) #18
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %name.i) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %name.i, ptr noundef nonnull align 1 dereferenceable(11) @__const.cpio_trailer.name, i64 11, i1 false) #18
  %call.i = call i64 @strlen(ptr noundef nonnull %name.i) #21
  %conv.i = trunc i64 %call.i to i32
  %add.i = add i32 %conv.i, 1
  %call2.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %s.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.29, i32 noundef 0, i32 noundef 0, i64 noundef 0, i64 noundef 0, i32 noundef 1, i64 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %add.i, i32 noundef 0) #18
  %25 = load ptr, ptr @stdout, align 8, !tbaa !9
  %call.i.i = call i32 @fputs(ptr noundef nonnull %s.i, ptr noundef %25) #18
  %26 = load i32, ptr @offset, align 4, !tbaa !12
  %add.i.i = add i32 %26, 110
  store i32 %add.i.i, ptr @offset, align 4, !tbaa !12
  %call.i6.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %name.i) #21
  %27 = trunc i64 %call.i6.i to i32
  %conv.i.i = add i32 %27, 1
  %28 = load ptr, ptr @stdout, align 8, !tbaa !9
  %call1.i.i = call i32 @fputs(ptr noundef nonnull %name.i, ptr noundef %28) #18
  %29 = load ptr, ptr @stdout, align 8, !tbaa !9
  %call.i.i.i = call i32 @putc(i32 noundef 0, ptr noundef %29) #18
  %30 = load i32, ptr @offset, align 4, !tbaa !12
  %add3.i.i = add i32 %conv.i.i, %30
  store i32 %add3.i.i, ptr @offset, align 4, !tbaa !12
  %add4.i.i = add i32 %27, 111
  %and11.i.i = and i32 %add4.i.i, 3
  %tobool.not12.i.i = icmp eq i32 %and11.i.i, 0
  br i1 %tobool.not12.i.i, label %push_rest.exit.i, label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i, %if.then109
  %tmp_ofs.013.i.i = phi i32 [ %inc6.i.i, %while.body.i.i ], [ %add4.i.i, %if.then109 ]
  %31 = load ptr, ptr @stdout, align 8, !tbaa !9
  %call.i10.i.i = call i32 @putc(i32 noundef 0, ptr noundef %31) #18
  %32 = load i32, ptr @offset, align 4, !tbaa !12
  %inc.i.i = add i32 %32, 1
  store i32 %inc.i.i, ptr @offset, align 4, !tbaa !12
  %inc6.i.i = add i32 %tmp_ofs.013.i.i, 1
  %and.i.i = and i32 %inc6.i.i, 3
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %push_rest.exit.i, label %while.body.i.i

push_rest.exit.i:                                 ; preds = %while.body.i.i, %if.then109
  %33 = phi i32 [ %add3.i.i, %if.then109 ], [ %inc.i.i, %while.body.i.i ]
  %rem8.i = and i32 %33, 511
  %tobool.not9.i = icmp eq i32 %rem8.i, 0
  br i1 %tobool.not9.i, label %cpio_trailer.exit, label %while.body.i

while.body.i:                                     ; preds = %while.body.i, %push_rest.exit.i
  %34 = load ptr, ptr @stdout, align 8, !tbaa !9
  %call.i7.i = call i32 @putc(i32 noundef 0, ptr noundef %34) #18
  %35 = load i32, ptr @offset, align 4, !tbaa !12
  %inc.i = add i32 %35, 1
  store i32 %inc.i, ptr @offset, align 4, !tbaa !12
  %rem.i = and i32 %inc.i, 511
  %tobool.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i, label %cpio_trailer.exit, label %while.body.i

cpio_trailer.exit:                                ; preds = %while.body.i, %push_rest.exit.i
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %name.i) #18
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %s.i) #18
  br label %if.end110

if.end110:                                        ; preds = %cpio_trailer.exit, %while.end106, %while.end106.thread
  %ec.7148 = phi i32 [ -1, %while.end106.thread ], [ 0, %cpio_trailer.exit ], [ %ec.6, %while.end106 ]
  call void @exit(i32 noundef %ec.7148) #20
  unreachable
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @usage(ptr noundef %prog) unnamed_addr #5 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !9
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef %prog) #19
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn
declare ptr @strtok(ptr noundef, ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i32 @cpio_mkfile_line(ptr noundef %line) #9 {
entry:
  %s.i = alloca [256 x i8], align 16
  %buf.i = alloca %struct.stat, align 8
  %expanded.i = alloca [4097 x i8], align 16
  %name = alloca [4097 x i8], align 16
  %location = alloca [4097 x i8], align 16
  %mode = alloca i32, align 4
  %uid = alloca i32, align 4
  %gid = alloca i32, align 4
  %end = alloca i32, align 4
  %nend = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4097, ptr nonnull %name) #18
  call void @llvm.lifetime.start.p0(i64 4097, ptr nonnull %location) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uid) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gid) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %end) #18
  store i32 0, ptr %end, align 4, !tbaa !12
  %call = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %line, ptr noundef nonnull @.str.19, ptr noundef nonnull %name, ptr noundef nonnull %location, ptr noundef nonnull %mode, ptr noundef nonnull %uid, ptr noundef nonnull %gid, ptr noundef nonnull %end) #18
  %cmp = icmp slt i32 %call, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !9
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef %line) #19
  br label %cleanup54

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %end, align 4, !tbaa !12
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end47, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call3 = tail call ptr @__ctype_b_loc() #22
  %2 = load ptr, ptr %call3, align 8, !tbaa !9
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i8, ptr %line, i64 %idxprom
  %3 = load i8, ptr %arrayidx, align 1, !tbaa !11
  %idxprom4 = sext i8 %3 to i64
  %arrayidx5 = getelementptr inbounds i16, ptr %2, i64 %idxprom4
  %4 = load i16, ptr %arrayidx5, align 2, !tbaa !16
  %tobool7.not = icmp sgt i16 %4, -1
  br i1 %tobool7.not, label %if.end47, label %if.then8

if.then8:                                         ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nend) #18
  %call9 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %line) #21
  %call10 = call noalias ptr @malloc(i64 noundef %call9) #23
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.then8
  %call16 = call i64 @strlen(ptr noundef nonnull %name) #21
  %5 = trunc i64 %call16 to i32
  %conv17 = add i32 %5, 1
  %conv19 = sext i32 %conv17 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %call10, ptr nonnull align 16 %name, i64 %conv19, i1 false)
  br label %do.body

do.body:                                          ; preds = %if.end25, %if.end14
  %6 = phi i32 [ %1, %if.end14 ], [ %add35, %if.end25 ]
  %nlinks.0 = phi i32 [ 1, %if.end14 ], [ %inc, %if.end25 ]
  %dname_len.0 = phi i32 [ %conv17, %if.end14 ], [ %add34, %if.end25 ]
  store i32 0, ptr %nend, align 4, !tbaa !12
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds i8, ptr %line, i64 %idx.ext
  %call21 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %add.ptr, ptr noundef nonnull @.str.22, ptr noundef nonnull %name, ptr noundef nonnull %nend) #18
  %cmp22 = icmp slt i32 %call21, 1
  br i1 %cmp22, label %cleanup.thread, label %if.end25

if.end25:                                         ; preds = %do.body
  %call27 = call i64 @strlen(ptr noundef nonnull %name) #21
  %7 = trunc i64 %call27 to i32
  %conv29 = add i32 %7, 1
  %idx.ext30 = sext i32 %dname_len.0 to i64
  %add.ptr31 = getelementptr inbounds i8, ptr %call10, i64 %idx.ext30
  %conv33 = sext i32 %conv29 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr31, ptr nonnull align 16 %name, i64 %conv33, i1 false)
  %add34 = add nsw i32 %conv29, %dname_len.0
  %inc = add nuw nsw i32 %nlinks.0, 1
  %8 = load i32, ptr %nend, align 4, !tbaa !12
  %9 = load i32, ptr %end, align 4, !tbaa !12
  %add35 = add nsw i32 %9, %8
  store i32 %add35, ptr %end, align 4, !tbaa !12
  %10 = load ptr, ptr %call3, align 8, !tbaa !9
  %idxprom37 = sext i32 %add35 to i64
  %arrayidx38 = getelementptr inbounds i8, ptr %line, i64 %idxprom37
  %11 = load i8, ptr %arrayidx38, align 1, !tbaa !11
  %idxprom40 = sext i8 %11 to i64
  %arrayidx41 = getelementptr inbounds i16, ptr %10, i64 %idxprom40
  %12 = load i16, ptr %arrayidx41, align 2, !tbaa !16
  %tobool44.not = icmp sgt i16 %12, -1
  br i1 %tobool44.not, label %cleanup.thread, label %do.body

cleanup.thread:                                   ; preds = %if.end25, %do.body
  %nlinks.2.ph = phi i32 [ %inc, %if.end25 ], [ %nlinks.0, %do.body ]
  %dname_len.2.ph = phi i32 [ %add34, %if.end25 ], [ %dname_len.0, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nend) #18
  br label %if.end47

cleanup:                                          ; preds = %if.then8
  %13 = load ptr, ptr @stderr, align 8, !tbaa !9
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.21, i32 noundef 0) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nend) #18
  br label %cleanup54

if.end47:                                         ; preds = %cleanup.thread, %land.lhs.true, %if.end
  %dname.0 = phi ptr [ %name, %land.lhs.true ], [ %name, %if.end ], [ %call10, %cleanup.thread ]
  %nlinks.3 = phi i32 [ 1, %land.lhs.true ], [ 1, %if.end ], [ %nlinks.2.ph, %cleanup.thread ]
  %dname_len.3 = phi i32 [ 0, %land.lhs.true ], [ 0, %if.end ], [ %dname_len.2.ph, %cleanup.thread ]
  call void @llvm.lifetime.start.p0(i64 4097, ptr nonnull %expanded.i) #18
  %call17.i = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %location, ptr noundef nonnull @.str.31) #21
  %tobool.not18.i = icmp eq ptr %call17.i, null
  br i1 %tobool.not18.i, label %cpio_replace_env.exit, label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i, %if.end47
  %call19.i = phi ptr [ %call.i, %while.body.i ], [ %call17.i, %if.end47 ]
  %add.ptr.i = getelementptr inbounds i8, ptr %call19.i, i64 2
  %call1.i = call ptr @strchr(ptr noundef nonnull %add.ptr.i, i32 noundef 125) #21
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %cpio_replace_env.exit, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  store i8 0, ptr %call1.i, align 1, !tbaa !11
  store i8 0, ptr %call19.i, align 1, !tbaa !11
  %call4.i = call ptr @getenv(ptr noundef nonnull %add.ptr.i) #18
  %tobool5.not.i = icmp eq ptr %call4.i, null
  %cond.i = select i1 %tobool5.not.i, ptr @.str.33, ptr %call4.i
  %add.ptr6.i = getelementptr inbounds i8, ptr %call1.i, i64 1
  %call7.i = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %expanded.i, i64 noundef 4097, ptr noundef nonnull @.str.32, ptr noundef nonnull %location, ptr noundef %cond.i, ptr noundef nonnull %add.ptr6.i) #18
  %call9.i = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %location, ptr noundef nonnull %expanded.i) #18
  %call.i = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %location, ptr noundef nonnull @.str.31) #21
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %cpio_replace_env.exit, label %land.rhs.i

cpio_replace_env.exit:                            ; preds = %while.body.i, %land.rhs.i, %if.end47
  call void @llvm.lifetime.end.p0(i64 4097, ptr nonnull %expanded.i) #18
  %14 = load i32, ptr %mode, align 4, !tbaa !12
  %15 = load i32, ptr %uid, align 4, !tbaa !12
  %16 = load i32, ptr %gid, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %s.i) #18
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %buf.i) #18
  %or.i = or i32 %14, 32768
  %call.i80 = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %location, i32 noundef 0) #18
  %cmp.i = icmp slt i32 %call.i80, 0
  br i1 %cmp.i, label %if.end60.thread117.i, label %if.end.i

if.end60.thread117.i:                             ; preds = %cpio_replace_env.exit
  %17 = load ptr, ptr @stderr, align 8, !tbaa !9
  %call2.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.23, ptr noundef nonnull %location) #24
  br label %fail

if.end.i:                                         ; preds = %cpio_replace_env.exit
  %call.i.i = call i32 @__fxstat(i32 noundef 1, i32 noundef %call.i80, ptr noundef nonnull %buf.i) #18
  %tobool.not.i81 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i81, label %if.end6.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  %18 = load ptr, ptr @stderr, align 8, !tbaa !9
  %call5.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.24, ptr noundef nonnull %location) #24
  br label %if.then63.i

if.end6.i:                                        ; preds = %if.end.i
  %st_mtim.i = getelementptr inbounds %struct.stat, ptr %buf.i, i64 0, i32 12
  %19 = load i64, ptr %st_mtim.i, align 8, !tbaa !18
  %cmp7.i = icmp sgt i64 %19, 4294967295
  br i1 %cmp7.i, label %if.then8.i, label %if.end12.i

if.then8.i:                                       ; preds = %if.end6.i
  %20 = load ptr, ptr @stderr, align 8, !tbaa !9
  %call9.i82 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.25, ptr noundef nonnull %location) #24
  store i64 4294967295, ptr %st_mtim.i, align 8, !tbaa !18
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then8.i, %if.end6.i
  %st_size.i = getelementptr inbounds %struct.stat, ptr %buf.i, i64 0, i32 8
  %21 = load i64, ptr %st_size.i, align 8, !tbaa !21
  %call13.i = call noalias ptr @malloc(i64 noundef %21) #23
  %tobool14.not.i = icmp eq ptr %call13.i, null
  br i1 %tobool14.not.i, label %if.then15.i, label %if.end17.i

if.then15.i:                                      ; preds = %if.end12.i
  %22 = load ptr, ptr @stderr, align 8, !tbaa !9
  %23 = call i64 @fwrite(ptr nonnull @.str.26, i64 14, i64 1, ptr %22) #24
  br label %if.then63.i

if.end17.i:                                       ; preds = %if.end12.i
  %call19.i83 = call i64 @read(i32 noundef %call.i80, ptr noundef nonnull %call13.i, i64 noundef %21) #18
  %24 = and i64 %call19.i83, 2147483648
  %cmp20.not.i = icmp eq i64 %24, 0
  br i1 %cmp20.not.i, label %for.cond.preheader.i, label %if.then59.thread.i

for.cond.preheader.i:                             ; preds = %if.end17.i
  %conv39.i = zext i32 %15 to i64
  %conv40.i = zext i32 %16 to i64
  br label %for.body.i

if.then59.thread.i:                               ; preds = %if.end17.i
  %25 = load ptr, ptr @stderr, align 8, !tbaa !9
  %call23.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.27, ptr noundef nonnull %location) #24
  call void @free(ptr noundef nonnull %call13.i) #18
  br label %if.then63.i

for.body.i:                                       ; preds = %if.end56.i, %for.cond.preheader.i
  %i.0123.i = phi i32 [ 1, %for.cond.preheader.i ], [ %inc.i, %if.end56.i ]
  %name.addr.0122.i = phi ptr [ %dname.0, %for.cond.preheader.i ], [ %add.ptr.i84, %if.end56.i ]
  %size.0121.i = phi i64 [ 0, %for.cond.preheader.i ], [ %spec.select.i, %if.end56.i ]
  %cmp27.i = icmp eq i32 %i.0123.i, %nlinks.3
  %26 = load i64, ptr %st_size.i, align 8
  %spec.select.i = select i1 %cmp27.i, i64 %26, i64 %size.0121.i
  %27 = load i8, ptr %name.addr.0122.i, align 1, !tbaa !11
  %cmp33.i = icmp eq i8 %27, 47
  %name.addr.1.idx.i = zext i1 %cmp33.i to i64
  %name.addr.1.i = getelementptr i8, ptr %name.addr.0122.i, i64 %name.addr.1.idx.i
  %call37.i = call i64 @strlen(ptr noundef nonnull %name.addr.1.i) #21
  %28 = trunc i64 %call37.i to i32
  %conv38.i = add i32 %28, 1
  %29 = load i32, ptr @ino, align 4, !tbaa !12
  %30 = load i64, ptr %st_mtim.i, align 8, !tbaa !18
  %call43.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %s.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef %29, i32 noundef %or.i, i64 noundef %conv39.i, i64 noundef %conv40.i, i32 noundef %nlinks.3, i64 noundef %30, i64 noundef %spec.select.i, i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef %conv38.i, i32 noundef 0) #18
  %31 = load ptr, ptr @stdout, align 8, !tbaa !9
  %call.i92.i = call i32 @fputs(ptr noundef nonnull %s.i, ptr noundef %31) #18
  %32 = load i32, ptr @offset, align 4, !tbaa !12
  %add.i.i = add i32 %32, 110
  store i32 %add.i.i, ptr @offset, align 4, !tbaa !12
  %call.i93.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %name.addr.1.i) #21
  %33 = trunc i64 %call.i93.i to i32
  %conv.i.i = add i32 %33, 1
  %34 = load ptr, ptr @stdout, align 8, !tbaa !9
  %call1.i.i = call i32 @fputs(ptr noundef %name.addr.1.i, ptr noundef %34) #18
  %35 = load ptr, ptr @stdout, align 8, !tbaa !9
  %call.i.i.i = call i32 @putc(i32 noundef 0, ptr noundef %35) #18
  %36 = load i32, ptr @offset, align 4, !tbaa !12
  %add3.i.i = add i32 %conv.i.i, %36
  store i32 %add3.i.i, ptr @offset, align 4, !tbaa !12
  %and1.i.i = and i32 %add3.i.i, 3
  %tobool.not2.i.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not2.i.i, label %push_pad.exit.i, label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i, %for.body.i
  %37 = load ptr, ptr @stdout, align 8, !tbaa !9
  %call.i.i94.i = call i32 @putc(i32 noundef 0, ptr noundef %37) #18
  %38 = load i32, ptr @offset, align 4, !tbaa !12
  %inc.i.i = add i32 %38, 1
  store i32 %inc.i.i, ptr @offset, align 4, !tbaa !12
  %and.i.i = and i32 %inc.i.i, 3
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %push_pad.exit.i, label %while.body.i.i

push_pad.exit.i:                                  ; preds = %while.body.i.i, %for.body.i
  %tobool45.not.i = icmp eq i64 %spec.select.i, 0
  br i1 %tobool45.not.i, label %if.end56.i, label %if.then46.i

if.then46.i:                                      ; preds = %push_pad.exit.i
  %39 = load ptr, ptr @stdout, align 8, !tbaa !9
  %call47.i = call i64 @fwrite(ptr noundef nonnull %call13.i, i64 noundef %spec.select.i, i64 noundef 1, ptr noundef %39) #18
  %cmp48.not.i = icmp eq i64 %call47.i, 1
  br i1 %cmp48.not.i, label %if.end52.i, label %if.then50.i

if.then50.i:                                      ; preds = %if.then46.i
  %40 = load ptr, ptr @stderr, align 8, !tbaa !9
  %41 = call i64 @fwrite(ptr nonnull @.str.30, i64 23, i64 1, ptr %40) #24
  br label %if.then59.i

if.end52.i:                                       ; preds = %if.then46.i
  %42 = load i32, ptr @offset, align 4, !tbaa !12
  %43 = trunc i64 %spec.select.i to i32
  %conv55.i = add i32 %42, %43
  store i32 %conv55.i, ptr @offset, align 4, !tbaa !12
  %and1.i95.i = and i32 %conv55.i, 3
  %tobool.not2.i96.i = icmp eq i32 %and1.i95.i, 0
  br i1 %tobool.not2.i96.i, label %if.end56.i, label %while.body.i101.i

while.body.i101.i:                                ; preds = %while.body.i101.i, %if.end52.i
  %44 = load ptr, ptr @stdout, align 8, !tbaa !9
  %call.i.i97.i = call i32 @putc(i32 noundef 0, ptr noundef %44) #18
  %45 = load i32, ptr @offset, align 4, !tbaa !12
  %inc.i98.i = add i32 %45, 1
  store i32 %inc.i98.i, ptr @offset, align 4, !tbaa !12
  %and.i99.i = and i32 %inc.i98.i, 3
  %tobool.not.i100.i = icmp eq i32 %and.i99.i, 0
  br i1 %tobool.not.i100.i, label %if.end56.i, label %while.body.i101.i

if.end56.i:                                       ; preds = %while.body.i101.i, %if.end52.i, %push_pad.exit.i
  %idx.ext.i = sext i32 %conv38.i to i64
  %add.ptr.i84 = getelementptr inbounds i8, ptr %name.addr.1.i, i64 %idx.ext.i
  %inc.i = add i32 %i.0123.i, 1
  %cmp25.not.i = icmp ugt i32 %inc.i, %nlinks.3
  br i1 %cmp25.not.i, label %for.end.i, label %for.body.i

for.end.i:                                        ; preds = %if.end56.i
  %46 = load i32, ptr @ino, align 4, !tbaa !12
  %inc57.i = add i32 %46, 1
  store i32 %inc57.i, ptr @ino, align 4, !tbaa !12
  br label %if.then59.i

if.then59.i:                                      ; preds = %for.end.i, %if.then50.i
  %rc.0112.i = phi i32 [ -1, %if.then50.i ], [ 0, %for.end.i ]
  call void @free(ptr noundef nonnull %call13.i) #18
  %cmp61.i = icmp sgt i32 %call.i80, -1
  br i1 %cmp61.i, label %if.then63.i, label %fail

if.then63.i:                                      ; preds = %if.then59.i, %if.then59.thread.i, %if.then15.i, %if.then4.i
  %rc.0106116.i = phi i32 [ %rc.0112.i, %if.then59.i ], [ -1, %if.then15.i ], [ -1, %if.then4.i ], [ -1, %if.then59.thread.i ]
  %call64.i = call i32 @close(i32 noundef %call.i80) #18
  br label %fail

fail:                                             ; preds = %if.then63.i, %if.then59.i, %if.end60.thread117.i
  %rc.0106115.i = phi i32 [ %rc.0106116.i, %if.then63.i ], [ %rc.0112.i, %if.then59.i ], [ -1, %if.end60.thread117.i ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %buf.i) #18
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %s.i) #18
  %tobool51.not = icmp eq i32 %dname_len.3, 0
  br i1 %tobool51.not, label %cleanup54, label %if.then52

if.then52:                                        ; preds = %fail
  call void @free(ptr noundef %dname.0) #18
  br label %cleanup54

cleanup54:                                        ; preds = %if.then52, %fail, %cleanup, %if.then
  %rc.093 = phi i32 [ %rc.0106115.i, %fail ], [ %rc.0106115.i, %if.then52 ], [ -1, %if.then ], [ -1, %cleanup ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %end) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gid) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uid) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode) #18
  call void @llvm.lifetime.end.p0(i64 4097, ptr nonnull %location) #18
  call void @llvm.lifetime.end.p0(i64 4097, ptr nonnull %name) #18
  ret i32 %rc.093
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @cpio_mknod_line(ptr noundef %line) #5 {
entry:
  %s.i = alloca [256 x i8], align 16
  %name = alloca [4097 x i8], align 16
  %mode = alloca i32, align 4
  %uid = alloca i32, align 4
  %gid = alloca i32, align 4
  %dev_type = alloca i8, align 1
  %maj = alloca i32, align 4
  %min = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4097, ptr nonnull %name) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uid) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gid) #18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dev_type) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %maj) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %min) #18
  %call = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %line, ptr noundef nonnull @.str.34, ptr noundef nonnull %name, ptr noundef nonnull %mode, ptr noundef nonnull %uid, ptr noundef nonnull %gid, ptr noundef nonnull %dev_type, ptr noundef nonnull %maj, ptr noundef nonnull %min) #18
  %cmp.not = icmp eq i32 %call, 7
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !9
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.35, ptr noundef %line) #19
  br label %fail

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %mode, align 4, !tbaa !12
  %2 = load i32, ptr %uid, align 4, !tbaa !12
  %3 = load i32, ptr %gid, align 4, !tbaa !12
  %4 = load i8, ptr %dev_type, align 1, !tbaa !11
  %5 = load i32, ptr %maj, align 4, !tbaa !12
  %6 = load i32, ptr %min, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %s.i) #18
  %cmp.i = icmp eq i8 %4, 98
  %mode.addr.0.v.i = select i1 %cmp.i, i32 24576, i32 8192
  %mode.addr.0.i = or i32 %mode.addr.0.v.i, %1
  %7 = load i8, ptr %name, align 16, !tbaa !11
  %cmp4.i = icmp eq i8 %7, 47
  %name.addr.0.idx.i = zext i1 %cmp4.i to i64
  %name.addr.0.i = getelementptr i8, ptr %name, i64 %name.addr.0.idx.i
  %8 = load i32, ptr @ino, align 4, !tbaa !12
  %inc.i = add i32 %8, 1
  store i32 %inc.i, ptr @ino, align 4, !tbaa !12
  %conv8.i = zext i32 %2 to i64
  %conv9.i = zext i32 %3 to i64
  %9 = load i64, ptr @default_mtime, align 8, !tbaa !5
  %call.i = call i64 @strlen(ptr noundef nonnull %name.addr.0.i) #21
  %conv10.i = trunc i64 %call.i to i32
  %add.i = add i32 %conv10.i, 1
  %call11.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %s.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.29, i32 noundef %8, i32 noundef %mode.addr.0.i, i64 noundef %conv8.i, i64 noundef %conv9.i, i32 noundef 1, i64 noundef %9, i32 noundef 0, i32 noundef 3, i32 noundef 1, i32 noundef %5, i32 noundef %6, i32 noundef %add.i, i32 noundef 0) #18
  %10 = load ptr, ptr @stdout, align 8, !tbaa !9
  %call.i.i = call i32 @fputs(ptr noundef nonnull %s.i, ptr noundef %10) #18
  %11 = load i32, ptr @offset, align 4, !tbaa !12
  %add.i.i = add i32 %11, 110
  store i32 %add.i.i, ptr @offset, align 4, !tbaa !12
  %call.i1.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %name.addr.0.i) #21
  %12 = trunc i64 %call.i1.i to i32
  %conv.i.i = add i32 %12, 1
  %13 = load ptr, ptr @stdout, align 8, !tbaa !9
  %call1.i.i = call i32 @fputs(ptr noundef %name.addr.0.i, ptr noundef %13) #18
  %14 = load ptr, ptr @stdout, align 8, !tbaa !9
  %call.i.i.i = call i32 @putc(i32 noundef 0, ptr noundef %14) #18
  %15 = load i32, ptr @offset, align 4, !tbaa !12
  %add3.i.i = add i32 %conv.i.i, %15
  store i32 %add3.i.i, ptr @offset, align 4, !tbaa !12
  %add4.i.i = add i32 %12, 111
  %and11.i.i = and i32 %add4.i.i, 3
  %tobool.not12.i.i = icmp eq i32 %and11.i.i, 0
  br i1 %tobool.not12.i.i, label %cpio_mknod.exit, label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i, %if.end
  %tmp_ofs.013.i.i = phi i32 [ %inc6.i.i, %while.body.i.i ], [ %add4.i.i, %if.end ]
  %16 = load ptr, ptr @stdout, align 8, !tbaa !9
  %call.i10.i.i = call i32 @putc(i32 noundef 0, ptr noundef %16) #18
  %17 = load i32, ptr @offset, align 4, !tbaa !12
  %inc.i.i = add i32 %17, 1
  store i32 %inc.i.i, ptr @offset, align 4, !tbaa !12
  %inc6.i.i = add i32 %tmp_ofs.013.i.i, 1
  %and.i.i = and i32 %inc6.i.i, 3
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %cpio_mknod.exit, label %while.body.i.i

cpio_mknod.exit:                                  ; preds = %while.body.i.i, %if.end
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %s.i) #18
  br label %fail

fail:                                             ; preds = %cpio_mknod.exit, %if.then
  %rc.0 = phi i32 [ -1, %if.then ], [ 0, %cpio_mknod.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %maj) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dev_type) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gid) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uid) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode) #18
  call void @llvm.lifetime.end.p0(i64 4097, ptr nonnull %name) #18
  ret i32 %rc.0
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @cpio_mkdir_line(ptr noundef %line) #5 {
entry:
  %call = tail call fastcc i32 @cpio_mkgeneric_line(ptr noundef %line, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @cpio_mkslink_line(ptr noundef %line) #5 {
entry:
  %s.i = alloca [256 x i8], align 16
  %name = alloca [4097 x i8], align 16
  %target = alloca [4097 x i8], align 16
  %mode = alloca i32, align 4
  %uid = alloca i32, align 4
  %gid = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4097, ptr nonnull %name) #18
  call void @llvm.lifetime.start.p0(i64 4097, ptr nonnull %target) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uid) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gid) #18
  %call = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %line, ptr noundef nonnull @.str.39, ptr noundef nonnull %name, ptr noundef nonnull %target, ptr noundef nonnull %mode, ptr noundef nonnull %uid, ptr noundef nonnull %gid) #18
  %cmp.not = icmp eq i32 %call, 5
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !9
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.40, ptr noundef %line) #19
  br label %fail

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %mode, align 4, !tbaa !12
  %2 = load i32, ptr %uid, align 4, !tbaa !12
  %3 = load i32, ptr %gid, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %s.i) #18
  %4 = load i8, ptr %name, align 16, !tbaa !11
  %cmp.i = icmp eq i8 %4, 47
  %spec.select.idx.i = zext i1 %cmp.i to i64
  %spec.select.i = getelementptr i8, ptr %name, i64 %spec.select.idx.i
  %5 = load i32, ptr @ino, align 4, !tbaa !12
  %inc.i = add i32 %5, 1
  store i32 %inc.i, ptr @ino, align 4, !tbaa !12
  %or.i = or i32 %1, 40960
  %conv2.i = zext i32 %2 to i64
  %conv3.i = zext i32 %3 to i64
  %6 = load i64, ptr @default_mtime, align 8, !tbaa !5
  %call.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %target) #21
  %conv4.i = trunc i64 %call.i to i32
  %add.i = add i32 %conv4.i, 1
  %call5.i = call i64 @strlen(ptr noundef nonnull %spec.select.i) #21
  %conv6.i = trunc i64 %call5.i to i32
  %add7.i = add i32 %conv6.i, 1
  %call8.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %s.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.29, i32 noundef %5, i32 noundef %or.i, i64 noundef %conv2.i, i64 noundef %conv3.i, i32 noundef 1, i64 noundef %6, i32 noundef %add.i, i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef %add7.i, i32 noundef 0) #18
  %7 = load ptr, ptr @stdout, align 8, !tbaa !9
  %call.i.i = call i32 @fputs(ptr noundef nonnull %s.i, ptr noundef %7) #18
  %8 = load i32, ptr @offset, align 4, !tbaa !12
  %add.i.i = add i32 %8, 110
  store i32 %add.i.i, ptr @offset, align 4, !tbaa !12
  %call.i1.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.select.i) #21
  %9 = trunc i64 %call.i1.i to i32
  %conv.i.i = add i32 %9, 1
  %10 = load ptr, ptr @stdout, align 8, !tbaa !9
  %call1.i.i = call i32 @fputs(ptr noundef %spec.select.i, ptr noundef %10) #18
  %11 = load ptr, ptr @stdout, align 8, !tbaa !9
  %call.i.i.i = call i32 @putc(i32 noundef 0, ptr noundef %11) #18
  %12 = load i32, ptr @offset, align 4, !tbaa !12
  %add3.i.i = add i32 %conv.i.i, %12
  store i32 %add3.i.i, ptr @offset, align 4, !tbaa !12
  %and1.i.i = and i32 %add3.i.i, 3
  %tobool.not2.i.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not2.i.i, label %push_pad.exit.i, label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i, %if.end
  %13 = load ptr, ptr @stdout, align 8, !tbaa !9
  %call.i.i2.i = call i32 @putc(i32 noundef 0, ptr noundef %13) #18
  %14 = load i32, ptr @offset, align 4, !tbaa !12
  %inc.i.i = add i32 %14, 1
  store i32 %inc.i.i, ptr @offset, align 4, !tbaa !12
  %and.i.i = and i32 %inc.i.i, 3
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %push_pad.exit.i, label %while.body.i.i

push_pad.exit.i:                                  ; preds = %while.body.i.i, %if.end
  %call.i3.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %target) #21
  %15 = trunc i64 %call.i3.i to i32
  %conv.i4.i = add i32 %15, 1
  %16 = load ptr, ptr @stdout, align 8, !tbaa !9
  %call1.i5.i = call i32 @fputs(ptr noundef nonnull %target, ptr noundef %16) #18
  %17 = load ptr, ptr @stdout, align 8, !tbaa !9
  %call.i.i6.i = call i32 @putc(i32 noundef 0, ptr noundef %17) #18
  %18 = load i32, ptr @offset, align 4, !tbaa !12
  %add3.i7.i = add i32 %conv.i4.i, %18
  store i32 %add3.i7.i, ptr @offset, align 4, !tbaa !12
  %and1.i8.i = and i32 %add3.i7.i, 3
  %tobool.not2.i9.i = icmp eq i32 %and1.i8.i, 0
  br i1 %tobool.not2.i9.i, label %cpio_mkslink.exit, label %while.body.i14.i

while.body.i14.i:                                 ; preds = %while.body.i14.i, %push_pad.exit.i
  %19 = load ptr, ptr @stdout, align 8, !tbaa !9
  %call.i.i10.i = call i32 @putc(i32 noundef 0, ptr noundef %19) #18
  %20 = load i32, ptr @offset, align 4, !tbaa !12
  %inc.i11.i = add i32 %20, 1
  store i32 %inc.i11.i, ptr @offset, align 4, !tbaa !12
  %and.i12.i = and i32 %inc.i11.i, 3
  %tobool.not.i13.i = icmp eq i32 %and.i12.i, 0
  br i1 %tobool.not.i13.i, label %cpio_mkslink.exit, label %while.body.i14.i

cpio_mkslink.exit:                                ; preds = %while.body.i14.i, %push_pad.exit.i
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %s.i) #18
  br label %fail

fail:                                             ; preds = %cpio_mkslink.exit, %if.then
  %rc.0 = phi i32 [ -1, %if.then ], [ 0, %cpio_mkslink.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gid) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uid) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode) #18
  call void @llvm.lifetime.end.p0(i64 4097, ptr nonnull %target) #18
  call void @llvm.lifetime.end.p0(i64 4097, ptr nonnull %name) #18
  ret i32 %rc.0
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @cpio_mkpipe_line(ptr noundef %line) #5 {
entry:
  %call = tail call fastcc i32 @cpio_mkgeneric_line(ptr noundef %line, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @cpio_mksock_line(ptr noundef %line) #5 {
entry:
  %call = tail call fastcc i32 @cpio_mkgeneric_line(ptr noundef %line, i32 noundef 2)
  ret i32 %call
}

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #13

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

declare i32 @close(i32 noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare i32 @__fxstat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind readonly
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #16

; Function Attrs: nofree nounwind uwtable
define internal fastcc i32 @cpio_mkgeneric_line(ptr noundef %line, i32 noundef %gt) unnamed_addr #5 {
entry:
  %s.i = alloca [256 x i8], align 16
  %name = alloca [4097 x i8], align 16
  %mode = alloca i32, align 4
  %uid = alloca i32, align 4
  %gid = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4097, ptr nonnull %name) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uid) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gid) #18
  %call = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %line, ptr noundef nonnull @.str.37, ptr noundef nonnull %name, ptr noundef nonnull %mode, ptr noundef nonnull %uid, ptr noundef nonnull %gid) #18
  %cmp.not = icmp eq i32 %call, 4
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !9
  %idxprom = zext i32 %gt to i64
  %arrayidx = getelementptr inbounds [3 x %struct.generic_type], ptr @generic_type_table, i64 0, i64 %idxprom
  %1 = load ptr, ptr %arrayidx, align 16, !tbaa !22
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.38, ptr noundef %line, ptr noundef %1) #19
  br label %fail

if.end:                                           ; preds = %entry
  %idxprom2 = zext i32 %gt to i64
  %mode4 = getelementptr inbounds [3 x %struct.generic_type], ptr @generic_type_table, i64 0, i64 %idxprom2, i32 1
  %2 = load i32, ptr %mode4, align 8, !tbaa !24
  %3 = load i32, ptr %mode, align 4, !tbaa !12
  %or = or i32 %3, %2
  store i32 %or, ptr %mode, align 4, !tbaa !12
  %4 = load i32, ptr %uid, align 4, !tbaa !12
  %5 = load i32, ptr %gid, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %s.i) #18
  %6 = load i8, ptr %name, align 16, !tbaa !11
  %cmp.i = icmp eq i8 %6, 47
  %spec.select.idx.i = zext i1 %cmp.i to i64
  %spec.select.i = getelementptr i8, ptr %name, i64 %spec.select.idx.i
  %7 = load i32, ptr @ino, align 4, !tbaa !12
  %inc.i = add i32 %7, 1
  store i32 %inc.i, ptr @ino, align 4, !tbaa !12
  %conv2.i = zext i32 %4 to i64
  %conv3.i = zext i32 %5 to i64
  %8 = load i64, ptr @default_mtime, align 8, !tbaa !5
  %call.i = call i64 @strlen(ptr noundef nonnull %spec.select.i) #21
  %conv4.i = trunc i64 %call.i to i32
  %add.i = add i32 %conv4.i, 1
  %call5.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %s.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.29, i32 noundef %7, i32 noundef %or, i64 noundef %conv2.i, i64 noundef %conv3.i, i32 noundef 2, i64 noundef %8, i32 noundef 0, i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef %add.i, i32 noundef 0) #18
  %9 = load ptr, ptr @stdout, align 8, !tbaa !9
  %call.i.i = call i32 @fputs(ptr noundef nonnull %s.i, ptr noundef %9) #18
  %10 = load i32, ptr @offset, align 4, !tbaa !12
  %add.i.i = add i32 %10, 110
  store i32 %add.i.i, ptr @offset, align 4, !tbaa !12
  %call.i1.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.select.i) #21
  %11 = trunc i64 %call.i1.i to i32
  %conv.i.i = add i32 %11, 1
  %12 = load ptr, ptr @stdout, align 8, !tbaa !9
  %call1.i.i = call i32 @fputs(ptr noundef %spec.select.i, ptr noundef %12) #18
  %13 = load ptr, ptr @stdout, align 8, !tbaa !9
  %call.i.i.i = call i32 @putc(i32 noundef 0, ptr noundef %13) #18
  %14 = load i32, ptr @offset, align 4, !tbaa !12
  %add3.i.i = add i32 %conv.i.i, %14
  store i32 %add3.i.i, ptr @offset, align 4, !tbaa !12
  %add4.i.i = add i32 %11, 111
  %and11.i.i = and i32 %add4.i.i, 3
  %tobool.not12.i.i = icmp eq i32 %and11.i.i, 0
  br i1 %tobool.not12.i.i, label %cpio_mkgeneric.exit, label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i, %if.end
  %tmp_ofs.013.i.i = phi i32 [ %inc6.i.i, %while.body.i.i ], [ %add4.i.i, %if.end ]
  %15 = load ptr, ptr @stdout, align 8, !tbaa !9
  %call.i10.i.i = call i32 @putc(i32 noundef 0, ptr noundef %15) #18
  %16 = load i32, ptr @offset, align 4, !tbaa !12
  %inc.i.i = add i32 %16, 1
  store i32 %inc.i.i, ptr @offset, align 4, !tbaa !12
  %inc6.i.i = add i32 %tmp_ofs.013.i.i, 1
  %and.i.i = and i32 %inc6.i.i, 3
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %cpio_mkgeneric.exit, label %while.body.i.i

cpio_mkgeneric.exit:                              ; preds = %while.body.i.i, %if.end
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %s.i) #18
  br label %fail

fail:                                             ; preds = %cpio_mkgeneric.exit, %if.then
  %rc.0 = phi i32 [ -1, %if.then ], [ 0, %cpio_mkgeneric.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gid) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uid) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode) #18
  call void @llvm.lifetime.end.p0(i64 4097, ptr nonnull %name) #18
  ret i32 %rc.0
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #17

attributes #0 = { noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind readonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { argmemonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { argmemonly nofree nounwind readonly willreturn }
attributes #18 = { nounwind }
attributes #19 = { cold }
attributes #20 = { noreturn nounwind }
attributes #21 = { nounwind readonly willreturn }
attributes #22 = { nounwind readnone willreturn }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!7, !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !7, i64 0}
!14 = !{!15, !10, i64 8}
!15 = !{!"file_handler", !10, i64 0, !10, i64 8}
!16 = !{!17, !17, i64 0}
!17 = !{!"short", !7, i64 0}
!18 = !{!19, !6, i64 88}
!19 = !{!"stat", !6, i64 0, !6, i64 8, !6, i64 16, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !20, i64 72, !20, i64 88, !20, i64 104, !7, i64 120}
!20 = !{!"timespec", !6, i64 0, !6, i64 8}
!21 = !{!19, !6, i64 48}
!22 = !{!23, !10, i64 0}
!23 = !{!"generic_type", !10, i64 0, !13, i64 8}
!24 = !{!23, !13, i64 8}
