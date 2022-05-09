; ModuleID = '/llk/IR_all_yes/scripts/recordmcount.c_pt.bc'
source_filename = "../scripts/recordmcount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.Elf64_Shdr = type { i32, i32, i64, i64, i64, i64, i32, i32, i64, i64 }
%struct.Elf64_Rel = type { i64, i64 }
%struct.Elf32_Shdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.Elf32_Rel = type { i32, i32 }
%struct.Elf32_Ehdr = type { [16 x i8], i16, i16, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.Elf32_Sym = type { i32, i32, i32, i8, i8, i16 }
%struct.Elf32_Rela = type { i32, i32, i32 }
%struct.Elf64_Ehdr = type { [16 x i8], i16, i16, i32, i64, i64, i64, i32, i16, i16, i16, i16, i16, i16 }
%struct.Elf64_Sym = type { i32, i8, i8, i16, i64, i64 }
%struct.Elf64_Rela = type { i64, i64, i64 }

@__const.main.ftrace = private unnamed_addr constant [10 x i8] c"/ftrace.o\00", align 1
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@warn_on_notrace_sect = internal unnamed_addr global i1 false, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"usage: recordmcount [-w] file.o...\0A\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"%s: failed\0A\00", align 1
@w = internal unnamed_addr global ptr null, align 8
@w2 = internal unnamed_addr global ptr null, align 8
@w8 = internal unnamed_addr global ptr null, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"unrecognized ELF data encoding %d: %s\0A\00", align 1
@ideal_nop4_arm_le = internal global [4 x i8] c"\00\00\A0\E1", align 1
@ideal_nop4_arm = internal unnamed_addr global ptr null, align 8
@bl_mcount_arm_le = internal global [4 x i8] c"\FE\FF\FF\EB", align 1
@bl_mcount_arm = internal unnamed_addr global ptr null, align 8
@push_arm_le = internal global [4 x i8] c"\04\E0-\E5", align 1
@push_arm = internal unnamed_addr global ptr null, align 8
@ideal_nop2_thumb_le = internal global [2 x i8] c"\00\BF", align 1
@ideal_nop2_thumb = internal unnamed_addr global ptr null, align 8
@push_bl_mcount_thumb_le = internal global [6 x i8] c"\00\B5\FF\F7\FE\FF", align 1
@push_bl_mcount_thumb = internal unnamed_addr global ptr null, align 8
@ideal_nop4_arm_be = internal global [4 x i8] c"\E1\A0\00\00", align 1
@bl_mcount_arm_be = internal global [4 x i8] c"\EB\FF\FF\FE", align 1
@push_arm_be = internal global [4 x i8] c"\E5-\E0\04", align 1
@ideal_nop2_thumb_be = internal global [2 x i8] c"\BF\00", align 1
@push_bl_mcount_thumb_be = internal global [6 x i8] c"\B5\00\F7\FF\FF\FE", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"\7FELF\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"unrecognized ET_REL file %s\0A\00", align 1
@gpfx = internal unnamed_addr global i1 false, align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"unrecognized e_machine %u %s\0A\00", align 1
@make_nop = internal unnamed_addr global ptr null, align 8
@ideal_nop5_x86_32 = internal global [5 x i8] c">\8Dt&\00", align 1
@ideal_nop = internal unnamed_addr global ptr null, align 8
@mcount_adjust_32 = internal unnamed_addr global i1 false, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"__gnu_mcount_nc\00", align 1
@altmcount = internal unnamed_addr global ptr null, align 8
@is_fake_mcount32 = internal unnamed_addr global ptr @fn_is_fake_mcount32, align 8
@ideal_nop4_arm64 = internal global [4 x i8] c"\1F \03\D5", align 1
@is_fake_mcount64 = internal unnamed_addr global ptr @fn_is_fake_mcount64, align 8
@ideal_nop5_x86_64 = internal global [5 x i8] c"\0F\1FD\00\00", align 1
@mcount_adjust_64 = internal unnamed_addr global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"unrecognized ELF class %d %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"unrecognized ET_REL file: %s\0A\00", align 1
@Elf64_r_sym = internal unnamed_addr global ptr @fn_ELF64_R_SYM, align 8
@Elf64_r_info = internal unnamed_addr global ptr @fn_ELF64_R_INFO, align 8
@fd_map = internal unnamed_addr global i32 0, align 4
@mmap_failed = internal unnamed_addr global i1 false, align 4
@file_map = internal unnamed_addr global ptr null, align 8
@file_ptr = internal unnamed_addr global ptr null, align 8
@file_updated = internal unnamed_addr global i1 false, align 4
@sb = internal global %struct.stat zeroinitializer, align 8
@.str.10 = private unnamed_addr constant [24 x i8] c"not a regular file: %s\0A\00", align 1
@file_end = internal unnamed_addr global ptr null, align 8
@.str.11 = private unnamed_addr constant [26 x i8] c"malloc failed: %zu bytes\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"lseek: seek before file\0A\00", align 1
@file_append_size = internal unnamed_addr global i64 0, align 8
@file_append = internal unnamed_addr global ptr null, align 8
@.str.13 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@MIPS32_is_fake_mcount.old_r_offset = internal unnamed_addr global i32 -1, align 4
@.str.14 = private unnamed_addr constant [13 x i8] c"__mcount_loc\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"warning: __mcount_loc already exists: %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c".text\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c".init.text\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c".ref.text\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c".sched.text\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c".spinlock.text\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c".irqentry.text\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c".softirqentry.text\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c".kprobes.text\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c".cpuidle.text\00", align 1
@.str.26 = private unnamed_addr constant [40 x i8] c"Cannot find symbol for section %u: %s.\0A\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"_mcount\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"mcount\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"__fentry__\00", align 1
@.str.30 = private unnamed_addr constant [45 x i8] c"Section %s has mcount callers being ignored\0A\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c".rela__mcount_loc\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c".rel__mcount_loc\00", align 1
@MIPS64_is_fake_mcount.old_r_offset = internal unnamed_addr global i64 -1, align 8
@.str.33 = private unnamed_addr constant [6 x i8] c"%s.rc\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) local_unnamed_addr #0 {
entry:
  %mcsec.i.i162.i = alloca %struct.Elf64_Shdr, align 8
  %rel.i.i163.i = alloca %struct.Elf64_Rel, align 8
  %mcsec.i.i.i = alloca %struct.Elf32_Shdr, align 4
  %rel.i.i.i = alloca %struct.Elf32_Rel, align 8
  %call63 = tail call i32 @getopt(i32 noundef %argc, ptr noundef %argv, ptr noundef nonnull @.str) #18
  %cmp64 = icmp sgt i32 %call63, -1
  br i1 %cmp64, label %while.body, label %while.end

while.body:                                       ; preds = %sw.bb, %entry
  %call65 = phi i32 [ %call, %sw.bb ], [ %call63, %entry ]
  %cond = icmp eq i32 %call65, 119
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %while.body
  store i1 true, ptr @warn_on_notrace_sect, align 4
  %call = tail call i32 @getopt(i32 noundef %argc, ptr noundef %argv, ptr noundef nonnull @.str) #18
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end

sw.default:                                       ; preds = %while.body
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %1 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 35, i64 1, ptr %0) #19
  br label %cleanup22

while.end:                                        ; preds = %sw.bb, %entry
  %2 = load i32, ptr @optind, align 4, !tbaa !9
  %cmp2.not = icmp slt i32 %2, %argc
  br i1 %cmp2.not, label %for.body.lr.ph, label %if.then

for.body.lr.ph:                                   ; preds = %while.end
  %sh_type.i289.i.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %mcsec.i.i162.i, i64 0, i32 1
  %sh_flags.i.i368.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %mcsec.i.i162.i, i64 0, i32 2
  %sh_addr.i.i369.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %mcsec.i.i162.i, i64 0, i32 3
  %sh_offset59.i.i.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %mcsec.i.i162.i, i64 0, i32 4
  %sh_size61.i.i.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %mcsec.i.i162.i, i64 0, i32 5
  %sh_link.i293.i.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %mcsec.i.i162.i, i64 0, i32 6
  %sh_info.i294.i.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %mcsec.i.i162.i, i64 0, i32 7
  %sh_addralign.i.i370.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %mcsec.i.i162.i, i64 0, i32 8
  %sh_entsize.i295.i.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %mcsec.i.i162.i, i64 0, i32 9
  %r_info.i76.i.i.i = getelementptr inbounds %struct.Elf32_Rel, ptr %rel.i.i.i, i64 0, i32 1
  %sh_type.i303.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %mcsec.i.i.i, i64 0, i32 1
  %sh_flags.i.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %mcsec.i.i.i, i64 0, i32 2
  %sh_addr.i.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %mcsec.i.i.i, i64 0, i32 3
  %sh_offset73.i.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %mcsec.i.i.i, i64 0, i32 4
  %sh_size76.i.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %mcsec.i.i.i, i64 0, i32 5
  %sh_link.i307.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %mcsec.i.i.i, i64 0, i32 6
  %sh_info.i308.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %mcsec.i.i.i, i64 0, i32 7
  %sh_addralign.i.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %mcsec.i.i.i, i64 0, i32 8
  %sh_entsize.i309.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %mcsec.i.i.i, i64 0, i32 9
  %3 = sext i32 %2 to i64
  br label %for.body

if.then:                                          ; preds = %while.end
  %4 = load ptr, ptr @stderr, align 8, !tbaa !5
  %5 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 35, i64 1, ptr %4) #19
  br label %cleanup22

for.body:                                         ; preds = %cleanup, %for.body.lr.ph
  %indvars.iv = phi i64 [ %3, %for.body.lr.ph ], [ %indvars.iv.next, %cleanup ]
  %n_error.068 = phi i32 [ 0, %for.body.lr.ph ], [ %n_error.2, %cleanup ]
  %arrayidx = getelementptr inbounds ptr, ptr %argv, i64 %indvars.iv
  %6 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %call5 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #20
  %conv = trunc i64 %call5 to i32
  %cmp6 = icmp sgt i32 %conv, 8
  br i1 %cmp6, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %for.body
  %sub8 = add i64 %call5, 4294967287
  %7 = and i64 %sub8, 4294967295
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 %7
  %call9 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %add.ptr, ptr noundef nonnull dereferenceable(10) @__const.main.ftrace) #20
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %cleanup, label %if.end13

if.end13:                                         ; preds = %land.lhs.true, %for.body
  store i32 -1, ptr @fd_map, align 4, !tbaa !9
  store i1 true, ptr @mmap_failed, align 4
  store ptr null, ptr @file_map, align 8, !tbaa !5
  store ptr null, ptr @file_ptr, align 8, !tbaa !5
  store i1 false, ptr @file_updated, align 4
  store i64 0, ptr getelementptr inbounds (%struct.stat, ptr @sb, i64 0, i32 8), align 8, !tbaa !11
  %call.i.i = call i32 (ptr, i32, ...) @open(ptr noundef %6, i32 noundef 0) #18
  store i32 %call.i.i, ptr @fd_map, align 4, !tbaa !9
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %mmap_file.exit.thread.i, label %if.end.i.i

mmap_file.exit.thread.i:                          ; preds = %if.end13
  call void @perror(ptr noundef %6) #21
  br label %out.i

if.end.i.i:                                       ; preds = %if.end13
  %call.i.i.i = call i32 @__fxstat(i32 noundef 1, i32 noundef %call.i.i, ptr noundef nonnull @sb) #18
  %cmp2.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp2.i.i, label %if.then3.i.i, label %if.end4.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @perror(ptr noundef %6) #21
  br label %mmap_file.exit.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  %8 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @sb, i64 0, i32 3), align 8, !tbaa !15
  %and.i.i = and i32 %8, 61440
  %cmp5.i.i = icmp eq i32 %and.i.i, 32768
  br i1 %cmp5.i.i, label %if.end8.i.i, label %if.then6.i.i

if.then6.i.i:                                     ; preds = %if.end4.i.i
  %9 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call7.i.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.10, ptr noundef %6) #21
  br label %mmap_file.exit.i

if.end8.i.i:                                      ; preds = %if.end4.i.i
  %10 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @sb, i64 0, i32 8), align 8, !tbaa !11
  %11 = load i32, ptr @fd_map, align 4, !tbaa !9
  %call9.i.i = call ptr @mmap(ptr noundef null, i64 noundef %10, i32 noundef 3, i32 noundef 2, i32 noundef %11, i64 noundef 0) #18
  store ptr %call9.i.i, ptr @file_map, align 8, !tbaa !5
  %cmp10.i.i = icmp eq ptr %call9.i.i, inttoptr (i64 -1 to ptr)
  br i1 %cmp10.i.i, label %if.then11.i.i, label %if.else.i.i

if.then11.i.i:                                    ; preds = %if.end8.i.i
  store i1 true, ptr @mmap_failed, align 4
  %12 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @sb, i64 0, i32 8), align 8, !tbaa !11
  %call.i26.i.i = call noalias ptr @malloc(i64 noundef %12) #22
  %cmp.i.i.i = icmp eq ptr %call.i26.i.i, null
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end14.i.i

if.then.i.i.i:                                    ; preds = %if.then11.i.i
  %13 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1.i.i.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.11, i64 noundef %12) #21
  %14 = load ptr, ptr @file_append, align 8, !tbaa !5
  call void @free(ptr noundef %14) #18
  store ptr null, ptr @file_append, align 8, !tbaa !5
  store i64 0, ptr @file_append_size, align 8, !tbaa !16
  store i1 false, ptr @file_updated, align 4
  %.b.i.i.i.i = load i1, ptr @mmap_failed, align 4
  %15 = load ptr, ptr @file_map, align 8, !tbaa !5
  br i1 %.b.i.i.i.i, label %if.else.i.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.then.i.i.i
  %16 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @sb, i64 0, i32 8), align 8, !tbaa !11
  %call.i.i.i.i = call i32 @munmap(ptr noundef %15, i64 noundef %16) #18
  br label %if.then13.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i.i.i
  call void @free(ptr noundef %15) #18
  br label %if.then13.i.i

if.then13.i.i:                                    ; preds = %if.else.i.i.i.i, %if.then.i.i.i.i
  store ptr null, ptr @file_map, align 8, !tbaa !5
  call void @perror(ptr noundef %6) #21
  br label %mmap_file.exit.i

if.end14.i.i:                                     ; preds = %if.then11.i.i
  store ptr %call.i26.i.i, ptr @file_map, align 8, !tbaa !5
  %17 = load i32, ptr @fd_map, align 4, !tbaa !9
  %call15.i.i = call i64 @read(i32 noundef %17, ptr noundef nonnull %call.i26.i.i, i64 noundef %12) #18
  %18 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @sb, i64 0, i32 8), align 8, !tbaa !11
  %cmp16.not.i.i = icmp eq i64 %call15.i.i, %18
  br i1 %cmp16.not.i.i, label %mmap_file.exit.i, label %if.then17.i.i

if.then17.i.i:                                    ; preds = %if.end14.i.i
  call void @perror(ptr noundef %6) #21
  %19 = load ptr, ptr @file_map, align 8, !tbaa !5
  call void @free(ptr noundef %19) #18
  store ptr null, ptr @file_map, align 8, !tbaa !5
  br label %mmap_file.exit.i

if.else.i.i:                                      ; preds = %if.end8.i.i
  store i1 false, ptr @mmap_failed, align 4
  br label %mmap_file.exit.i

mmap_file.exit.i:                                 ; preds = %if.else.i.i, %if.then17.i.i, %if.end14.i.i, %if.then13.i.i, %if.then6.i.i, %if.then3.i.i
  %20 = load i32, ptr @fd_map, align 4, !tbaa !9
  %call20.i.i = call i32 @close(i32 noundef %20) #18
  store i32 -1, ptr @fd_map, align 4, !tbaa !9
  %21 = load ptr, ptr @file_map, align 8, !tbaa !5
  %22 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @sb, i64 0, i32 8), align 8, !tbaa !11
  %add.ptr.i.i = getelementptr i8, ptr %21, i64 %22
  store ptr %add.ptr.i.i, ptr @file_end, align 8, !tbaa !5
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %out.i, label %if.end.i

if.end.i:                                         ; preds = %mmap_file.exit.i
  store ptr @w4nat, ptr @w, align 8, !tbaa !5
  store ptr @w2nat, ptr @w2, align 8, !tbaa !5
  store ptr @w8nat, ptr @w8, align 8, !tbaa !5
  %arrayidx.i = getelementptr inbounds [16 x i8], ptr %21, i64 0, i64 5
  %23 = load i8, ptr %arrayidx.i, align 1, !tbaa !17
  switch i8 %23, label %sw.default.i [
    i8 1, label %sw.epilog.i
    i8 2, label %if.then13.i
  ]

sw.default.i:                                     ; preds = %if.end.i
  %conv.i = zext i8 %23 to i32
  %24 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call4.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.3, i32 noundef %conv.i, ptr noundef %6) #21
  br label %out.i

if.then13.i:                                      ; preds = %if.end.i
  store ptr @w4rev, ptr @w, align 8, !tbaa !5
  store ptr @w2rev, ptr @w2, align 8, !tbaa !5
  store ptr @w8rev, ptr @w8, align 8, !tbaa !5
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.then13.i, %if.end.i
  %25 = phi ptr [ @w2rev, %if.then13.i ], [ @w2nat, %if.end.i ]
  %storemerge146.i = phi ptr [ @ideal_nop4_arm_be, %if.then13.i ], [ @ideal_nop4_arm_le, %if.end.i ]
  %storemerge145.i = phi ptr [ @bl_mcount_arm_be, %if.then13.i ], [ @bl_mcount_arm_le, %if.end.i ]
  %storemerge144.i = phi ptr [ @push_arm_be, %if.then13.i ], [ @push_arm_le, %if.end.i ]
  %storemerge143.i = phi ptr [ @ideal_nop2_thumb_be, %if.then13.i ], [ @ideal_nop2_thumb_le, %if.end.i ]
  %storemerge.i = phi ptr [ @push_bl_mcount_thumb_be, %if.then13.i ], [ @push_bl_mcount_thumb_le, %if.end.i ]
  store ptr %storemerge146.i, ptr @ideal_nop4_arm, align 8, !tbaa !5
  store ptr %storemerge145.i, ptr @bl_mcount_arm, align 8, !tbaa !5
  store ptr %storemerge144.i, ptr @push_arm, align 8, !tbaa !5
  store ptr %storemerge143.i, ptr @ideal_nop2_thumb, align 8, !tbaa !5
  store ptr %storemerge.i, ptr @push_bl_mcount_thumb, align 8, !tbaa !5
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) @.str.4, ptr noundef nonnull dereferenceable(4) %21, i64 4) #18
  %cmp17.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp17.not.i, label %lor.lhs.false.i, label %if.then28.i

lor.lhs.false.i:                                  ; preds = %sw.epilog.i
  %e_type.i = getelementptr inbounds %struct.Elf32_Ehdr, ptr %21, i64 0, i32 1
  %26 = load i16, ptr %e_type.i, align 4, !tbaa !18
  %call19.i = call i32 %25(i16 noundef zeroext %26) #18, !callees !21
  %cmp20.not.i = icmp eq i32 %call19.i, 1
  br i1 %cmp20.not.i, label %lor.lhs.false22.i, label %if.then28.i

lor.lhs.false22.i:                                ; preds = %lor.lhs.false.i
  %arrayidx24.i = getelementptr inbounds [16 x i8], ptr %21, i64 0, i64 6
  %27 = load i8, ptr %arrayidx24.i, align 2, !tbaa !17
  %cmp26.not.i = icmp eq i8 %27, 1
  br i1 %cmp26.not.i, label %if.end30.i, label %if.then28.i

if.then28.i:                                      ; preds = %lor.lhs.false22.i, %lor.lhs.false.i, %sw.epilog.i
  %28 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call29.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str.5, ptr noundef %6) #21
  br label %out.i

if.end30.i:                                       ; preds = %lor.lhs.false22.i
  store i1 true, ptr @gpfx, align 1
  %29 = load ptr, ptr @w2, align 8, !tbaa !5
  %e_machine.i = getelementptr inbounds %struct.Elf32_Ehdr, ptr %21, i64 0, i32 2
  %30 = load i16, ptr %e_machine.i, align 2, !tbaa !22
  %call31.i = call i32 %29(i16 noundef zeroext %30) #18, !callees !21
  switch i32 %call31.i, label %sw.default32.i [
    i32 3, label %sw.bb36.i
    i32 40, label %sw.bb37.i
    i32 183, label %sw.bb38.i
    i32 50, label %sw.bb39.i
    i32 8, label %sw.epilog45.i
    i32 20, label %sw.bb40.i
    i32 21, label %sw.bb41.i
    i32 22, label %sw.epilog45.i
    i32 42, label %sw.bb42.i
    i32 43, label %sw.bb43.i
    i32 62, label %sw.bb44.i
  ]

sw.default32.i:                                   ; preds = %if.end30.i
  %31 = load ptr, ptr @stderr, align 8, !tbaa !5
  %32 = load ptr, ptr @w2, align 8, !tbaa !5
  %33 = load i16, ptr %e_machine.i, align 2, !tbaa !22
  %call34.i = call i32 %32(i16 noundef zeroext %33) #18, !callees !21
  %call35.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef nonnull @.str.6, i32 noundef %call34.i, ptr noundef %6) #21
  br label %out.i

sw.bb36.i:                                        ; preds = %if.end30.i
  store ptr @make_nop_x86, ptr @make_nop, align 8, !tbaa !5
  store ptr @ideal_nop5_x86_32, ptr @ideal_nop, align 8, !tbaa !5
  store i1 true, ptr @mcount_adjust_32, align 4
  store i1 false, ptr @gpfx, align 1
  br label %sw.epilog45.i

sw.bb37.i:                                        ; preds = %if.end30.i
  store ptr @.str.7, ptr @altmcount, align 8, !tbaa !5
  store ptr @make_nop_arm, ptr @make_nop, align 8, !tbaa !5
  store ptr @arm_is_fake_mcount, ptr @is_fake_mcount32, align 8, !tbaa !5
  store i1 false, ptr @gpfx, align 1
  br label %sw.epilog45.i

sw.bb38.i:                                        ; preds = %if.end30.i
  store ptr @make_nop_arm64, ptr @make_nop, align 8, !tbaa !5
  store ptr @ideal_nop4_arm64, ptr @ideal_nop, align 8, !tbaa !5
  store ptr @arm64_is_fake_mcount, ptr @is_fake_mcount64, align 8, !tbaa !5
  br label %sw.epilog45.i

sw.bb39.i:                                        ; preds = %if.end30.i
  br label %sw.epilog45.i

sw.bb40.i:                                        ; preds = %if.end30.i
  br label %sw.epilog45.i

sw.bb41.i:                                        ; preds = %if.end30.i
  br label %sw.epilog45.i

sw.bb42.i:                                        ; preds = %if.end30.i
  store i1 false, ptr @gpfx, align 1
  br label %sw.epilog45.i

sw.bb43.i:                                        ; preds = %if.end30.i
  br label %sw.epilog45.i

sw.bb44.i:                                        ; preds = %if.end30.i
  store ptr @make_nop_x86, ptr @make_nop, align 8, !tbaa !5
  store ptr @ideal_nop5_x86_64, ptr @ideal_nop, align 8, !tbaa !5
  store i32 -1, ptr @mcount_adjust_64, align 4, !tbaa !9
  store i1 false, ptr @gpfx, align 1
  br label %sw.epilog45.i

sw.epilog45.i:                                    ; preds = %sw.bb44.i, %sw.bb43.i, %sw.bb42.i, %sw.bb41.i, %sw.bb40.i, %sw.bb39.i, %sw.bb38.i, %sw.bb37.i, %sw.bb36.i, %if.end30.i, %if.end30.i
  %reltype.0.i = phi i32 [ 1, %sw.bb44.i ], [ 32, %sw.bb43.i ], [ 1, %sw.bb42.i ], [ 38, %sw.bb41.i ], [ 1, %sw.bb40.i ], [ 0, %if.end30.i ], [ 0, %if.end30.i ], [ 35, %sw.bb39.i ], [ 257, %sw.bb38.i ], [ 2, %sw.bb37.i ], [ 1, %sw.bb36.i ]
  %arrayidx47.i = getelementptr inbounds [16 x i8], ptr %21, i64 0, i64 4
  %34 = load i8, ptr %arrayidx47.i, align 4, !tbaa !17
  switch i8 %34, label %sw.default49.i [
    i8 1, label %sw.bb54.i
    i8 2, label %sw.bb78.i
  ]

sw.default49.i:                                   ; preds = %sw.epilog45.i
  %conv48.i = zext i8 %34 to i32
  %35 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call53.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef nonnull @.str.8, i32 noundef %conv48.i, ptr noundef %6) #21
  br label %out.i

sw.bb54.i:                                        ; preds = %sw.epilog45.i
  %36 = load ptr, ptr @w2, align 8, !tbaa !5
  %e_ehsize.i = getelementptr inbounds %struct.Elf32_Ehdr, ptr %21, i64 0, i32 8
  %37 = load i16, ptr %e_ehsize.i, align 4, !tbaa !23
  %call55.i = call i32 %36(i16 noundef zeroext %37) #18, !callees !21
  %cmp57.not.i = icmp eq i32 %call55.i, 52
  br i1 %cmp57.not.i, label %lor.lhs.false59.i, label %if.then64.i

lor.lhs.false59.i:                                ; preds = %sw.bb54.i
  %38 = load ptr, ptr @w2, align 8, !tbaa !5
  %e_shentsize.i = getelementptr inbounds %struct.Elf32_Ehdr, ptr %21, i64 0, i32 11
  %39 = load i16, ptr %e_shentsize.i, align 2, !tbaa !24
  %call60.i = call i32 %38(i16 noundef zeroext %39) #18, !callees !21
  %cmp62.not.i = icmp eq i32 %call60.i, 40
  br i1 %cmp62.not.i, label %if.end66.i, label %if.then64.i

if.then64.i:                                      ; preds = %lor.lhs.false59.i, %sw.bb54.i
  %40 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call65.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef nonnull @.str.9, ptr noundef %6) #21
  br label %out.i

if.end66.i:                                       ; preds = %lor.lhs.false59.i
  %41 = load ptr, ptr @w2, align 8, !tbaa !5
  %42 = load i16, ptr %e_machine.i, align 2, !tbaa !22
  %call68.i = call i32 %41(i16 noundef zeroext %42) #18, !callees !21
  %cmp69.i = icmp eq i32 %call68.i, 8
  br i1 %cmp69.i, label %if.then71.i, label %if.end72.i

if.then71.i:                                      ; preds = %if.end66.i
  store ptr @MIPS32_is_fake_mcount, ptr @is_fake_mcount32, align 8, !tbaa !5
  br label %if.end72.i

if.end72.i:                                       ; preds = %if.then71.i, %if.end66.i
  %reltype.1.i = phi i32 [ 2, %if.then71.i ], [ %reltype.0.i, %if.end66.i ]
  %43 = load ptr, ptr @w, align 8, !tbaa !5
  %e_shoff.i.i = getelementptr inbounds %struct.Elf32_Ehdr, ptr %21, i64 0, i32 6
  %44 = load i32, ptr %e_shoff.i.i, align 4, !tbaa !25
  %call.i147.i = call i32 %43(i32 noundef %44) #18, !callees !26
  %idx.ext.i.i = zext i32 %call.i147.i to i64
  %add.ptr.i148.i = getelementptr i8, ptr %21, i64 %idx.ext.i.i
  %tobool.not.i.i.i = icmp ne ptr %add.ptr.i148.i, null
  %e_shnum2.phi.trans.insert.i.i.i = getelementptr inbounds %struct.Elf32_Ehdr, ptr %21, i64 0, i32 12
  %.pre.i.i.i = load i16, ptr %e_shnum2.phi.trans.insert.i.i.i, align 4, !tbaa !27
  %tobool1.not.i.i.i = icmp eq i16 %.pre.i.i.i, 0
  %or.cond.i.i.i = select i1 %tobool.not.i.i.i, i1 %tobool1.not.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %if.then.i.i150.i, label %if.end.i.i.i

if.then.i.i150.i:                                 ; preds = %if.end72.i
  %45 = load ptr, ptr @w, align 8, !tbaa !5
  %sh_size.i.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %add.ptr.i148.i, i64 0, i32 5
  %46 = load i32, ptr %sh_size.i.i.i, align 4, !tbaa !28
  %call.i.i149.i = call i32 %45(i32 noundef %46) #18, !callees !26
  br label %get_shnum32.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end72.i
  %47 = load ptr, ptr @w2, align 8, !tbaa !5
  %call3.i.i.i = call i32 %47(i16 noundef zeroext %.pre.i.i.i) #18, !callees !21
  br label %get_shnum32.exit.i.i

get_shnum32.exit.i.i:                             ; preds = %if.end.i.i.i, %if.then.i.i150.i
  %retval.0.i.i.i = phi i32 [ %call3.i.i.i, %if.end.i.i.i ], [ %call.i.i149.i, %if.then.i.i150.i ]
  %e_shstrndx.i.i.i = getelementptr inbounds %struct.Elf32_Ehdr, ptr %21, i64 0, i32 13
  %48 = load i16, ptr %e_shstrndx.i.i.i, align 2, !tbaa !30
  %cmp.not.i.i.i = icmp eq i16 %48, -1
  br i1 %cmp.not.i.i.i, label %if.end.i129.i.i, label %if.then.i127.i.i

if.then.i127.i.i:                                 ; preds = %get_shnum32.exit.i.i
  %49 = load ptr, ptr @w2, align 8, !tbaa !5
  %call.i126.i.i = call i32 %49(i16 noundef zeroext %48) #18, !callees !21
  br label %get_shstrndx32.exit.i.i

if.end.i129.i.i:                                  ; preds = %get_shnum32.exit.i.i
  %50 = load ptr, ptr @w, align 8, !tbaa !5
  %sh_link.i.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %add.ptr.i148.i, i64 0, i32 6
  %51 = load i32, ptr %sh_link.i.i.i, align 4, !tbaa !31
  %call3.i128.i.i = call i32 %50(i32 noundef %51) #18, !callees !26
  br label %get_shstrndx32.exit.i.i

get_shstrndx32.exit.i.i:                          ; preds = %if.end.i129.i.i, %if.then.i127.i.i
  %retval.0.i130.i.i = phi i32 [ %call.i126.i.i, %if.then.i127.i.i ], [ %call3.i128.i.i, %if.end.i129.i.i ]
  %idxprom.i.i = sext i32 %retval.0.i130.i.i to i64
  %arrayidx.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %add.ptr.i148.i, i64 %idxprom.i.i
  %52 = load ptr, ptr @w, align 8, !tbaa !5
  %sh_offset.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %arrayidx.i.i, i64 0, i32 4
  %53 = load i32, ptr %sh_offset.i.i, align 4, !tbaa !32
  %call3.i.i = call i32 %52(i32 noundef %53) #18, !callees !26
  %idx.ext4.i.i = zext i32 %call3.i.i to i64
  %add.ptr5.i.i = getelementptr i8, ptr %21, i64 %idx.ext4.i.i
  %tobool.not14.i.i.i = icmp eq i32 %retval.0.i.i.i, 0
  br i1 %tobool.not14.i.i.i, label %sw.epilog110.i, label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i, %get_shstrndx32.exit.i.i
  %nhdr.addr.017.i.i.i = phi i32 [ %dec.i.i.i, %for.inc.i.i.i ], [ %retval.0.i.i.i, %get_shstrndx32.exit.i.i ]
  %shdrp.016.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %for.inc.i.i.i ], [ %add.ptr.i148.i, %get_shstrndx32.exit.i.i ]
  %totrelsz.015.i.i.i = phi i32 [ %totrelsz.1.i.i.i, %for.inc.i.i.i ], [ 0, %get_shstrndx32.exit.i.i ]
  %call.i131.i.i = call fastcc ptr @has32_rel_mcount(ptr noundef %shdrp.016.i.i.i, ptr noundef %add.ptr.i148.i, ptr noundef %add.ptr5.i.i, ptr noundef %6) #18
  %cmp.i.i151.i = icmp eq ptr %call.i131.i.i, @.str.16
  br i1 %cmp.i.i151.i, label %sw.epilog110.i, label %if.end.i133.i.i

if.end.i133.i.i:                                  ; preds = %for.body.i.i.i
  %tobool1.not.i132.i.i = icmp eq ptr %call.i131.i.i, null
  br i1 %tobool1.not.i132.i.i, label %for.inc.i.i.i, label %land.lhs.true.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i133.i.i
  %call2.i.i.i = call fastcc i32 @is_mcounted_section_name(ptr noundef nonnull %call.i131.i.i) #18
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %for.inc.i.i.i, label %if.then4.i.i.i

if.then4.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %54 = load ptr, ptr @w, align 8, !tbaa !5
  %sh_size.i134.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdrp.016.i.i.i, i64 0, i32 5
  %55 = load i32, ptr %sh_size.i134.i.i, align 4, !tbaa !28
  %call5.i.i.i = call i32 %54(i32 noundef %55) #18, !callees !26
  %add.i.i.i = add i32 %call5.i.i.i, %totrelsz.015.i.i.i
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.then4.i.i.i, %land.lhs.true.i.i.i, %if.end.i133.i.i
  %totrelsz.1.i.i.i = phi i32 [ %add.i.i.i, %if.then4.i.i.i ], [ %totrelsz.015.i.i.i, %land.lhs.true.i.i.i ], [ %totrelsz.015.i.i.i, %if.end.i133.i.i ]
  %dec.i.i.i = add i32 %nhdr.addr.017.i.i.i, -1
  %incdec.ptr.i.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdrp.016.i.i.i, i64 1
  %tobool.not.i135.i.i = icmp eq i32 %dec.i.i.i, 0
  br i1 %tobool.not.i135.i.i, label %tot32_relsize.exit.i.i, label %for.body.i.i.i

tot32_relsize.exit.i.i:                           ; preds = %for.inc.i.i.i
  %cmp.i152.i = icmp eq i32 %totrelsz.1.i.i.i, 0
  br i1 %cmp.i152.i, label %sw.epilog110.i, label %if.end.i153.i

if.end.i153.i:                                    ; preds = %tot32_relsize.exit.i.i
  %conv.i.i = zext i32 %totrelsz.1.i.i.i to i64
  %call.i136.i.i = call noalias ptr @malloc(i64 noundef %conv.i.i) #22
  %cmp.i137.i.i = icmp eq ptr %call.i136.i.i, null
  br i1 %cmp.i137.i.i, label %if.then.i138.i.i, label %if.end9.i.i

if.then.i138.i.i:                                 ; preds = %if.end.i153.i
  %56 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1.i.i154.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %56, ptr noundef nonnull @.str.11, i64 noundef %conv.i.i) #21
  %57 = load ptr, ptr @file_append, align 8, !tbaa !5
  call void @free(ptr noundef %57) #18
  store ptr null, ptr @file_append, align 8, !tbaa !5
  store i64 0, ptr @file_append_size, align 8, !tbaa !16
  store i1 false, ptr @file_updated, align 4
  %.b.i.i.i155.i = load i1, ptr @mmap_failed, align 4
  %58 = load ptr, ptr @file_map, align 8, !tbaa !5
  br i1 %.b.i.i.i155.i, label %if.else.i.i.i158.i, label %if.then.i.i.i157.i

if.then.i.i.i157.i:                               ; preds = %if.then.i138.i.i
  %59 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @sb, i64 0, i32 8), align 8, !tbaa !11
  %call.i.i.i156.i = call i32 @munmap(ptr noundef %58, i64 noundef %59) #18
  br label %umalloc.exit.thread.i.i

if.else.i.i.i158.i:                               ; preds = %if.then.i138.i.i
  call void @free(ptr noundef %58) #18
  br label %umalloc.exit.thread.i.i

umalloc.exit.thread.i.i:                          ; preds = %if.else.i.i.i158.i, %if.then.i.i.i157.i
  store ptr null, ptr @file_map, align 8, !tbaa !5
  br label %out.i

if.end9.i.i:                                      ; preds = %if.end.i153.i
  %shr.i.i = lshr i32 %totrelsz.1.i.i.i, 1
  %conv10.i.i = zext i32 %shr.i.i to i64
  %call.i139.i.i = call noalias ptr @malloc(i64 noundef %conv10.i.i) #22
  %cmp.i140.i.i = icmp eq ptr %call.i139.i.i, null
  br i1 %cmp.i140.i.i, label %if.then.i143.i.i, label %for.body.i149.i.i

if.then.i143.i.i:                                 ; preds = %if.end9.i.i
  %60 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1.i141.i.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef nonnull @.str.11, i64 noundef %conv10.i.i) #21
  %61 = load ptr, ptr @file_append, align 8, !tbaa !5
  call void @free(ptr noundef %61) #18
  store ptr null, ptr @file_append, align 8, !tbaa !5
  store i64 0, ptr @file_append_size, align 8, !tbaa !16
  store i1 false, ptr @file_updated, align 4
  %.b.i.i142.i.i = load i1, ptr @mmap_failed, align 4
  %62 = load ptr, ptr @file_map, align 8, !tbaa !5
  br i1 %.b.i.i142.i.i, label %if.else.i.i146.i.i, label %if.then.i.i145.i.i

if.then.i.i145.i.i:                               ; preds = %if.then.i143.i.i
  %63 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @sb, i64 0, i32 8), align 8, !tbaa !11
  %call.i.i144.i.i = call i32 @munmap(ptr noundef %62, i64 noundef %63) #18
  br label %if.then13.i159.i

if.else.i.i146.i.i:                               ; preds = %if.then.i143.i.i
  call void @free(ptr noundef %62) #18
  br label %if.then13.i159.i

if.then13.i159.i:                                 ; preds = %if.else.i.i146.i.i, %if.then.i.i145.i.i
  store ptr null, ptr @file_map, align 8, !tbaa !5
  call void @free(ptr noundef nonnull %call.i136.i.i) #18
  br label %out.i

for.body.i149.i.i:                                ; preds = %for.body.backedge.i.i.i, %if.end9.i.i
  %symtab.0.i.i = phi ptr [ %symtab.1.i.i, %for.body.backedge.i.i.i ], [ null, %if.end9.i.i ]
  %symtab_shndx.0.i.i = phi ptr [ %symtab_shndx.2.i.i, %for.body.backedge.i.i.i ], [ null, %if.end9.i.i ]
  %k.026.i.i.i = phi i32 [ %k.026.be.i.i.i, %for.body.backedge.i.i.i ], [ %retval.0.i.i.i, %if.end9.i.i ]
  %relhdr.023.i.i.i = phi ptr [ %relhdr.023.be.i.i.i, %for.body.backedge.i.i.i ], [ %add.ptr.i148.i, %if.end9.i.i ]
  %sh_type.i.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %relhdr.023.i.i.i, i64 0, i32 1
  %64 = load i32, ptr %sh_type.i.i.i, align 4, !tbaa !33
  switch i32 %64, label %if.end7.i.i.i [
    i32 2, label %if.then.i150.i.i
    i32 18, label %if.then3.i.i.i
  ]

if.then.i150.i.i:                                 ; preds = %for.body.i149.i.i
  %sh_offset.i.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %relhdr.023.i.i.i, i64 0, i32 4
  %65 = load i32, ptr %sh_offset.i.i.i, align 4, !tbaa !32
  %idx.ext.i.i.i = zext i32 %65 to i64
  %add.ptr.i.i.i = getelementptr i8, ptr %21, i64 %idx.ext.i.i.i
  br label %if.end7.i.i.i

if.then3.i.i.i:                                   ; preds = %for.body.i149.i.i
  %sh_offset4.i.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %relhdr.023.i.i.i, i64 0, i32 4
  %66 = load i32, ptr %sh_offset4.i.i.i, align 4, !tbaa !32
  %idx.ext5.i.i.i = zext i32 %66 to i64
  %add.ptr6.i.i.i = getelementptr i8, ptr %21, i64 %idx.ext5.i.i.i
  br label %if.end7.i.i.i

if.end7.i.i.i:                                    ; preds = %if.then3.i.i.i, %if.then.i150.i.i, %for.body.i149.i.i
  %symtab.1.i.i = phi ptr [ %add.ptr.i.i.i, %if.then.i150.i.i ], [ %symtab.0.i.i, %if.then3.i.i.i ], [ %symtab.0.i.i, %for.body.i149.i.i ]
  %symtab_shndx.2.i.i = phi ptr [ %symtab_shndx.0.i.i, %if.then.i150.i.i ], [ %add.ptr6.i.i.i, %if.then3.i.i.i ], [ %symtab_shndx.0.i.i, %for.body.i149.i.i ]
  %tobool8.not.i.i.i = icmp eq ptr %symtab.1.i.i, null
  br i1 %tobool8.not.i.i.i, label %for.inc.i155.i.i, label %land.lhs.true.i154.i.i

land.lhs.true.i154.i.i:                           ; preds = %if.end7.i.i.i
  %tobool9.not.i.i.i = icmp ne ptr %symtab_shndx.2.i.i, null
  %dec.i151.i.i = add i32 %k.026.i.i.i, -1
  %tobool.not.i152.i.i = icmp eq i32 %dec.i151.i.i, 0
  %or.cond.i153.i.i = select i1 %tobool9.not.i.i.i, i1 true, i1 %tobool.not.i152.i.i
  br i1 %or.cond.i153.i.i, label %for.body.lr.ph.i.i, label %for.body.backedge.i.i.i

for.inc.i155.i.i:                                 ; preds = %if.end7.i.i.i
  %dec.old.i.i.i = add i32 %k.026.i.i.i, -1
  %tobool.not.old.i.i.i = icmp eq i32 %dec.old.i.i.i, 0
  br i1 %tobool.not.old.i.i.i, label %for.body.lr.ph.i.i, label %for.body.backedge.i.i.i

for.body.backedge.i.i.i:                          ; preds = %for.inc.i155.i.i, %land.lhs.true.i154.i.i
  %k.026.be.i.i.i = phi i32 [ %dec.old.i.i.i, %for.inc.i155.i.i ], [ %dec.i151.i.i, %land.lhs.true.i154.i.i ]
  %relhdr.023.be.i.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %relhdr.023.i.i.i, i64 1
  br label %for.body.i149.i.i

for.body.lr.ph.i.i:                               ; preds = %for.inc.i155.i.i, %land.lhs.true.i154.i.i
  %67 = ptrtoint ptr %symtab.1.i.i to i64
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %call.i139.i.i to i64
  %and.i.i.i.i = and i32 %reltype.1.i, 255
  %sub.ptr.rhs.cast.i231.i.i = ptrtoint ptr %21 to i64
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i, %for.body.lr.ph.i.i
  %symsec_sh_link.0393.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %symsec_sh_link.2.ph.i.i, %for.inc.i.i ]
  %rel_entsize.0392.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %rel_entsize.3.ph.i.i, %for.inc.i.i ]
  %mlocp.0391.i.i = phi ptr [ %call.i139.i.i, %for.body.lr.ph.i.i ], [ %mlocp.3.ph.i.i, %for.inc.i.i ]
  %relhdr.0389.i.i = phi ptr [ %add.ptr.i148.i, %for.body.lr.ph.i.i ], [ %incdec.ptr.i.i, %for.inc.i.i ]
  %k.0388.i.i = phi i32 [ %retval.0.i.i.i, %for.body.lr.ph.i.i ], [ %dec.i.i, %for.inc.i.i ]
  %mrelp.0386.i.i = phi ptr [ %call.i136.i.i, %for.body.lr.ph.i.i ], [ %mrelp.3.ph.i.i, %for.inc.i.i ]
  %call16.i.i = call fastcc ptr @has32_rel_mcount(ptr noundef %relhdr.0389.i.i, ptr noundef %add.ptr.i148.i, ptr noundef %add.ptr5.i.i, ptr noundef %6) #18
  %cmp17.i.i = icmp eq ptr %call16.i.i, @.str.16
  br i1 %cmp17.i.i, label %if.then19.i.i, label %if.end20.i.i

if.then19.i.i:                                    ; preds = %for.body.i.i
  store i1 false, ptr @file_updated, align 4
  br label %do32.exit.i

if.end20.i.i:                                     ; preds = %for.body.i.i
  %tobool21.not.i.i = icmp eq ptr %call16.i.i, null
  br i1 %tobool21.not.i.i, label %for.inc.i.i, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %if.end20.i.i
  %call22.i.i = call fastcc i32 @is_mcounted_section_name(ptr noundef nonnull %call16.i.i) #18
  %tobool23.not.i.i = icmp eq i32 %call22.i.i, 0
  br i1 %tobool23.not.i.i, label %land.lhs.true38.critedge.i.i, label %if.then24.i.i

if.then24.i.i:                                    ; preds = %land.lhs.true.i.i
  %68 = load ptr, ptr @w, align 8, !tbaa !5
  %sh_link.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %relhdr.0389.i.i, i64 0, i32 6
  %69 = load i32, ptr %sh_link.i.i, align 4, !tbaa !31
  %call25.i.i = call i32 %68(i32 noundef %69) #18, !callees !26
  %70 = load ptr, ptr @w, align 8, !tbaa !5
  %sh_info.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %relhdr.0389.i.i, i64 0, i32 7
  %71 = load i32, ptr %sh_info.i.i, align 4, !tbaa !34
  %call26.i.i = call i32 %70(i32 noundef %71) #18, !callees !26
  %idxprom27.i.i = zext i32 %call25.i.i to i64
  %arrayidx28.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %add.ptr.i148.i, i64 %idxprom27.i.i
  %72 = load ptr, ptr @w, align 8, !tbaa !5
  %sh_offset.i156.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %arrayidx28.i.i, i64 0, i32 4
  %73 = load i32, ptr %sh_offset.i156.i.i, align 4, !tbaa !32
  %call.i157.i.i = call i32 %72(i32 noundef %73) #18, !callees !26
  %idx.ext.i158.i.i = zext i32 %call.i157.i.i to i64
  %add.ptr.i159.i.i = getelementptr i8, ptr %21, i64 %idx.ext.i158.i.i
  %74 = load ptr, ptr @w, align 8, !tbaa !5
  %sh_size.i160.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %arrayidx28.i.i, i64 0, i32 5
  %75 = load i32, ptr %sh_size.i160.i.i, align 4, !tbaa !28
  %call1.i161.i.i = call i32 %74(i32 noundef %75) #18, !callees !26
  %76 = load ptr, ptr @w, align 8, !tbaa !5
  %sh_entsize.i.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %arrayidx28.i.i, i64 0, i32 9
  %77 = load i32, ptr %sh_entsize.i.i.i, align 4, !tbaa !35
  %call2.i162.i.i = call i32 %76(i32 noundef %77) #18, !callees !26
  %tobool.not40.i.i.i = icmp ugt i32 %call2.i162.i.i, %call1.i161.i.i
  br i1 %tobool.not40.i.i.i, label %cleanup.i.i, label %for.body.lr.ph.i.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.then24.i.i
  %div.i.i.i = udiv i32 %call1.i161.i.i, %call2.i162.i.i
  br label %for.body.i164.i.i

for.body.i164.i.i:                                ; preds = %for.inc.i172.i.i, %for.body.lr.ph.i.i.i
  %t.043.i.i.i = phi i32 [ %div.i.i.i, %for.body.lr.ph.i.i.i ], [ %dec.i169.i.i, %for.inc.i172.i.i ]
  %symp.041.i.i.i = phi ptr [ %add.ptr.i159.i.i, %for.body.lr.ph.i.i.i ], [ %incdec.ptr.i170.i.i, %for.inc.i172.i.i ]
  %st_info.i.i.i = getelementptr inbounds %struct.Elf32_Sym, ptr %symp.041.i.i.i, i64 0, i32 3
  %78 = load i8, ptr %st_info.i.i.i, align 4, !tbaa !36
  %79 = load ptr, ptr @w2, align 8, !tbaa !5
  %st_shndx.i.i.i.i = getelementptr inbounds %struct.Elf32_Sym, ptr %symp.041.i.i.i, i64 0, i32 5
  %80 = load i16, ptr %st_shndx.i.i.i.i, align 2, !tbaa !38
  %call.i.i163.i.i = call i32 %79(i16 noundef zeroext %80) #18, !callees !21
  %conv1.i.i.i.i = and i32 %call.i.i163.i.i, 65535
  %81 = add nsw i32 %conv1.i.i.i.i, -1
  %82 = icmp ult i32 %81, 65279
  br i1 %82, label %get_symindex32.exit.i.i.i, label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i164.i.i
  %cmp8.i.i.i.i = icmp eq i32 %conv1.i.i.i.i, 65535
  br i1 %cmp8.i.i.i.i, label %if.then10.i.i.i.i, label %get_symindex32.exit.i.i.i

if.then10.i.i.i.i:                                ; preds = %if.end.i.i.i.i
  %83 = ptrtoint ptr %symp.041.i.i.i to i64
  %sub.i.i.i.i = sub i64 %83, %67
  %84 = load ptr, ptr @w, align 8, !tbaa !5
  %85 = shl i64 %sub.i.i.i.i, 28
  %idxprom.i.i.i.i = ashr i64 %85, 32
  %arrayidx.i.i.i.i = getelementptr inbounds i32, ptr %symtab_shndx.2.i.i, i64 %idxprom.i.i.i.i
  %86 = load i32, ptr %arrayidx.i.i.i.i, align 4, !tbaa !9
  %call12.i.i.i.i = call i32 %84(i32 noundef %86) #18, !callees !26
  br label %get_symindex32.exit.i.i.i

get_symindex32.exit.i.i.i:                        ; preds = %if.then10.i.i.i.i, %if.end.i.i.i.i, %for.body.i164.i.i
  %retval.0.i.i.i.i = phi i32 [ %call12.i.i.i.i, %if.then10.i.i.i.i ], [ %conv1.i.i.i.i, %for.body.i164.i.i ], [ 0, %if.end.i.i.i.i ]
  %cmp.i165.i.i = icmp eq i32 %retval.0.i.i.i.i, %call26.i.i
  br i1 %cmp.i165.i.i, label %land.lhs.true.i167.i.i, label %for.inc.i172.i.i

land.lhs.true.i167.i.i:                           ; preds = %get_symindex32.exit.i.i.i
  %cmp5.i.i.i = icmp ult i8 %78, 16
  %.mask.i.i.i = and i8 %78, -16
  %cmp7.i.i.i = icmp eq i8 %.mask.i.i.i, 16
  %or.cond.i166.i.i = or i1 %cmp5.i.i.i, %cmp7.i.i.i
  br i1 %or.cond.i166.i.i, label %if.then.i168.i.i, label %for.inc.i172.i.i

if.then.i168.i.i:                                 ; preds = %land.lhs.true.i167.i.i
  %87 = load ptr, ptr @w2, align 8, !tbaa !5
  %88 = load i16, ptr %e_machine.i, align 2, !tbaa !22
  %call9.i.i.i = call i32 %87(i16 noundef zeroext %88) #18, !callees !21
  %cmp10.i.i.i = icmp eq i32 %call9.i.i.i, 40
  br i1 %cmp10.i.i.i, label %land.lhs.true12.i.i.i, label %if.end32.i.i

land.lhs.true12.i.i.i:                            ; preds = %if.then.i168.i.i
  %89 = load i8, ptr %st_info.i.i.i, align 4, !tbaa !36
  %90 = and i8 %89, 15
  %cmp15.i.i.i = icmp eq i8 %90, 2
  br i1 %cmp15.i.i.i, label %for.inc.i172.i.i, label %if.end32.i.i

for.inc.i172.i.i:                                 ; preds = %land.lhs.true12.i.i.i, %land.lhs.true.i167.i.i, %get_symindex32.exit.i.i.i
  %dec.i169.i.i = add i32 %t.043.i.i.i, -1
  %incdec.ptr.i170.i.i = getelementptr inbounds %struct.Elf32_Sym, ptr %symp.041.i.i.i, i64 1
  %tobool.not.i171.i.i = icmp eq i32 %dec.i169.i.i, 0
  br i1 %tobool.not.i171.i.i, label %cleanup.i.i, label %for.body.i164.i.i

if.end32.i.i:                                     ; preds = %land.lhs.true12.i.i.i, %if.then.i168.i.i
  %91 = load ptr, ptr @w, align 8, !tbaa !5
  %st_value.i.i.i = getelementptr inbounds %struct.Elf32_Sym, ptr %symp.041.i.i.i, i64 0, i32 1
  %92 = load i32, ptr %st_value.i.i.i, align 4, !tbaa !39
  %call18.i.i.i = call i32 %91(i32 noundef %92) #18, !callees !26
  %93 = load ptr, ptr @w, align 8, !tbaa !5
  %sh_entsize.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %relhdr.0389.i.i, i64 0, i32 9
  %94 = load i32, ptr %sh_entsize.i.i, align 4, !tbaa !35
  %call33.i.i = call i32 %93(i32 noundef %94) #18, !callees !26
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %mlocp.0391.i.i to i64
  %sub.ptr.sub.i.i = sub i64 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv34.i.i = trunc i64 %sub.ptr.sub.i.i to i32
  %95 = load ptr, ptr @w, align 8, !tbaa !5
  %96 = load i32, ptr %sh_entsize.i.i, align 4, !tbaa !35
  %call.i174.i.i = call i32 %95(i32 noundef %96) #18, !callees !26
  %97 = load ptr, ptr @w, align 8, !tbaa !5
  %sh_size.i175.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %relhdr.0389.i.i, i64 0, i32 5
  %98 = load i32, ptr %sh_size.i175.i.i, align 4, !tbaa !28
  %call1.i176.i.i = call i32 %97(i32 noundef %98) #18, !callees !26
  %99 = load ptr, ptr @w, align 8, !tbaa !5
  %100 = load i32, ptr %e_shoff.i.i, align 4, !tbaa !25
  %call.i.i177.i.i = call i32 %99(i32 noundef %100) #18, !callees !26
  %idx.ext.i.i.i.i = zext i32 %call.i.i177.i.i to i64
  %add.ptr.i.i.i.i = getelementptr i8, ptr %21, i64 %idx.ext.i.i.i.i
  %101 = load ptr, ptr @w, align 8, !tbaa !5
  %102 = load i32, ptr %sh_link.i.i, align 4, !tbaa !31
  %call1.i.i.i.i = call i32 %101(i32 noundef %102) #18, !callees !26
  %idxprom.i.i178.i.i = zext i32 %call1.i.i.i.i to i64
  %arrayidx.i.i179.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %add.ptr.i.i.i.i, i64 %idxprom.i.i178.i.i
  %103 = load ptr, ptr @w, align 8, !tbaa !5
  %sh_link2.i.i.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %arrayidx.i.i179.i.i, i64 0, i32 6
  %104 = load i32, ptr %sh_link2.i.i.i.i, align 4, !tbaa !31
  %call3.i.i.i.i = call i32 %103(i32 noundef %104) #18, !callees !26
  %idxprom4.i.i.i.i = zext i32 %call3.i.i.i.i to i64
  %arrayidx5.i.i.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %add.ptr.i.i.i.i, i64 %idxprom4.i.i.i.i
  %105 = load ptr, ptr @w, align 8, !tbaa !5
  %sh_offset.i.i.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %relhdr.0389.i.i, i64 0, i32 4
  %106 = load i32, ptr %sh_offset.i.i.i.i, align 4, !tbaa !32
  %call6.i.i.i.i = call i32 %105(i32 noundef %106) #18, !callees !26
  %107 = load ptr, ptr @w, align 8, !tbaa !5
  %sh_offset9.i.i.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %arrayidx.i.i179.i.i, i64 0, i32 4
  %108 = load i32, ptr %sh_offset9.i.i.i.i, align 4, !tbaa !32
  %call10.i.i.i.i = call i32 %107(i32 noundef %108) #18, !callees !26
  %idx.ext11.i.i.i.i = zext i32 %call10.i.i.i.i to i64
  %add.ptr12.i.i.i.i = getelementptr i8, ptr %21, i64 %idx.ext11.i.i.i.i
  %109 = load ptr, ptr @w, align 8, !tbaa !5
  %sh_offset13.i.i.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %arrayidx5.i.i.i.i, i64 0, i32 4
  %110 = load i32, ptr %sh_offset13.i.i.i.i, align 4, !tbaa !32
  %call14.i.i.i.i = call i32 %109(i32 noundef %110) #18, !callees !26
  %idx.ext15.i.i.i.i = zext i32 %call14.i.i.i.i to i64
  %add.ptr16.i.i.i.i = getelementptr i8, ptr %21, i64 %idx.ext15.i.i.i.i
  %tobool.not60.i.i.i = icmp ugt i32 %call.i174.i.i, %call1.i176.i.i
  br i1 %tobool.not60.i.i.i, label %for.inc.i.i, label %for.body.lr.ph.i182.i.i

for.body.lr.ph.i182.i.i:                          ; preds = %if.end32.i.i
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %symp.041.i.i.i to i64
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %add.ptr.i159.i.i to i64
  %sub.ptr.sub.i.i.i = sub i64 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %111 = trunc i64 %sub.ptr.sub.i.i.i to i32
  %div.i180.i.i = udiv i32 %call1.i176.i.i, %call.i174.i.i
  %idx.ext7.i.i.i.i = zext i32 %call6.i.i.i.i to i64
  %add.ptr8.i.i.i.i = getelementptr i8, ptr %21, i64 %idx.ext7.i.i.i.i
  %112 = shl i32 %111, 4
  %shl.i.i.i.i = and i32 %112, -256
  %add.i.i.i.i = or i32 %shl.i.i.i.i, %and.i.i.i.i
  %conv16.i.i.i = zext i32 %call.i174.i.i to i64
  %cmp17.i.i.i = icmp eq i32 %call.i174.i.i, 12
  br label %for.body.i183.i.i

for.body.i183.i.i:                                ; preds = %if.end22.i.i.i, %for.body.lr.ph.i182.i.i
  %mlocp.addr.068.i.i.i = phi ptr [ %mlocp.0391.i.i, %for.body.lr.ph.i182.i.i ], [ %mlocp.addr.2.i.i.i, %if.end22.i.i.i ]
  %t.067.i.i.i = phi i32 [ %div.i180.i.i, %for.body.lr.ph.i182.i.i ], [ %dec.i195.i.i, %if.end22.i.i.i ]
  %mcountsym.066.i.i.i = phi i32 [ 0, %for.body.lr.ph.i182.i.i ], [ %mcountsym.155.i.i.i, %if.end22.i.i.i ]
  %mrelp.063.i.i.i = phi ptr [ %mrelp.0386.i.i, %for.body.lr.ph.i182.i.i ], [ %mrelp.1.i.i.i, %if.end22.i.i.i ]
  %relp.061.i.i.i = phi ptr [ %add.ptr8.i.i.i.i, %for.body.lr.ph.i182.i.i ], [ %add.ptr24.i.i.i, %if.end22.i.i.i ]
  %tobool2.not.i.i.i = icmp eq i32 %mcountsym.066.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %if.then.i185.i.i, label %land.lhs.true.i189.i.i

if.then.i185.i.i:                                 ; preds = %for.body.i183.i.i
  %113 = load ptr, ptr @w, align 8, !tbaa !5
  %r_info.i.i.i.i.i = getelementptr inbounds %struct.Elf32_Rel, ptr %relp.061.i.i.i, i64 0, i32 1
  %114 = load i32, ptr %r_info.i.i.i.i.i, align 4, !tbaa !40
  %call.i.i.i.i.i = call i32 %113(i32 noundef %114) #18, !callees !26
  %shr.i.i.i.i.i = lshr i32 %call.i.i.i.i.i, 8
  %idxprom.i43.i.i.i = zext i32 %shr.i.i.i.i.i to i64
  %arrayidx.i44.i.i.i = getelementptr inbounds %struct.Elf32_Sym, ptr %add.ptr12.i.i.i.i, i64 %idxprom.i43.i.i.i
  %115 = load ptr, ptr @w, align 8, !tbaa !5
  %116 = load i32, ptr %arrayidx.i44.i.i.i, align 4, !tbaa !42
  %call1.i45.i.i.i = call i32 %115(i32 noundef %116) #18, !callees !26
  %idxprom2.i.i.i.i = zext i32 %call1.i45.i.i.i to i64
  %arrayidx3.i.i.i.i = getelementptr inbounds i8, ptr %add.ptr16.i.i.i.i, i64 %idxprom2.i.i.i.i
  %.b.i.i184.i.i = load i1, ptr @gpfx, align 1
  %cond.i.i.i.i = select i1 %.b.i.i184.i.i, ptr @.str.27, ptr @.str.28
  %117 = load i8, ptr %arrayidx3.i.i.i.i, align 1, !tbaa !17
  %cmp7.i.i.i.i = icmp eq i8 %117, 46
  %spec.select.idx.i.i.i.i = zext i1 %cmp7.i.i.i.i to i64
  %spec.select.i.i.i.i = getelementptr i8, ptr %arrayidx3.i.i.i.i, i64 %spec.select.idx.i.i.i.i
  %call9.i.i.i.i = call i32 @strcmp(ptr noundef nonnull %cond.i.i.i.i, ptr noundef nonnull %spec.select.i.i.i.i) #20
  %cmp10.i.i.i.i = icmp eq i32 %call9.i.i.i.i, 0
  br i1 %cmp10.i.i.i.i, label %if.end.i187.i.i, label %lor.lhs.false.i.i.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %if.then.i185.i.i
  %118 = load ptr, ptr @altmcount, align 8, !tbaa !5
  %tobool.not.i.i.i.i = icmp eq ptr %118, null
  br i1 %tobool.not.i.i.i.i, label %lor.lhs.false15.i.i.i.i, label %land.lhs.true.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %lor.lhs.false.i.i.i.i
  %call12.i.i186.i.i = call i32 @strcmp(ptr noundef nonnull %118, ptr noundef nonnull %spec.select.i.i.i.i) #20
  %cmp13.i.i.i.i = icmp eq i32 %call12.i.i186.i.i, 0
  br i1 %cmp13.i.i.i.i, label %if.end.i187.i.i, label %lor.lhs.false15.i.i.i.i

lor.lhs.false15.i.i.i.i:                          ; preds = %land.lhs.true.i.i.i.i, %lor.lhs.false.i.i.i.i
  %call16.i.i.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(11) @.str.29, ptr noundef nonnull %spec.select.i.i.i.i) #20
  %cmp17.i.i.i.i = icmp eq i32 %call16.i.i.i.i, 0
  br i1 %cmp17.i.i.i.i, label %if.end.i187.i.i, label %if.end22.i.i.i

if.end.i187.i.i:                                  ; preds = %lor.lhs.false15.i.i.i.i, %land.lhs.true.i.i.i.i, %if.then.i185.i.i
  %119 = load ptr, ptr @w, align 8, !tbaa !5
  %120 = load i32, ptr %r_info.i.i.i.i.i, align 4, !tbaa !40
  %call.i28.i.i.i.i = call i32 %119(i32 noundef %120) #18, !callees !26
  %shr.i29.i.i.i.i = lshr i32 %call.i28.i.i.i.i, 8
  %tobool4.not.i.i.i = icmp ult i32 %call.i28.i.i.i.i, 256
  br i1 %tobool4.not.i.i.i, label %if.end22.i.i.i, label %land.lhs.true.i189.i.i

land.lhs.true.i189.i.i:                           ; preds = %if.end.i187.i.i, %for.body.i183.i.i
  %mcountsym.159.i.i.i = phi i32 [ %shr.i29.i.i.i.i, %if.end.i187.i.i ], [ %mcountsym.066.i.i.i, %for.body.i183.i.i ]
  %121 = load ptr, ptr @w, align 8, !tbaa !5
  %r_info.i.i.i.i = getelementptr inbounds %struct.Elf32_Rel, ptr %relp.061.i.i.i, i64 0, i32 1
  %122 = load i32, ptr %r_info.i.i.i.i, align 4, !tbaa !40
  %call.i46.i.i.i = call i32 %121(i32 noundef %122) #18, !callees !26
  %shr.i.i.i.i = lshr i32 %call.i46.i.i.i, 8
  %cmp.i188.i.i = icmp eq i32 %mcountsym.159.i.i.i, %shr.i.i.i.i
  br i1 %cmp.i188.i.i, label %land.lhs.true6.i.i.i, label %if.end22.i.i.i

land.lhs.true6.i.i.i:                             ; preds = %land.lhs.true.i189.i.i
  %123 = load ptr, ptr @is_fake_mcount32, align 8, !tbaa !5
  %call7.i.i.i = call i32 %123(ptr noundef nonnull %relp.061.i.i.i) #18, !callees !43
  %tobool8.not.i190.i.i = icmp eq i32 %call7.i.i.i, 0
  br i1 %tobool8.not.i190.i.i, label %if.then9.i.i.i, label %if.end22.i.i.i

if.then9.i.i.i:                                   ; preds = %land.lhs.true6.i.i.i
  %124 = load ptr, ptr @w, align 8, !tbaa !5
  %125 = load i32, ptr %relp.061.i.i.i, align 4, !tbaa !44
  %call10.i.i.i = call i32 %124(i32 noundef %125) #18, !callees !26
  %sub.i.i.i = sub i32 %call10.i.i.i, %call18.i.i.i
  %.b.i.i.i = load i1, ptr @mcount_adjust_32, align 4
  %126 = sext i1 %.b.i.i.i to i32
  %add.i191.i.i = add i32 %sub.i.i.i, %126
  %call11.i.i.i = call i32 %124(i32 noundef %add.i191.i.i) #18, !callees !26
  %127 = load ptr, ptr @w, align 8, !tbaa !5
  %sub.ptr.lhs.cast.i192.i.i = ptrtoint ptr %mlocp.addr.068.i.i.i to i64
  %sub.ptr.sub.i193.i.i = sub i64 %sub.ptr.lhs.cast.i192.i.i, %sub.ptr.lhs.cast.i.i
  %128 = trunc i64 %sub.ptr.sub.i193.i.i to i32
  %conv13.i.i.i = add i32 %128, %conv34.i.i
  %call14.i.i.i = call i32 %127(i32 noundef %conv13.i.i.i) #18, !callees !26
  store i32 %call14.i.i.i, ptr %mrelp.063.i.i.i, align 4, !tbaa !44
  %129 = load ptr, ptr @w, align 8, !tbaa !5
  %call.i47.i.i.i = call i32 %129(i32 noundef %add.i.i.i.i) #18, !callees !26
  %r_info.i48.i.i.i = getelementptr inbounds %struct.Elf32_Rel, ptr %mrelp.063.i.i.i, i64 0, i32 1
  store i32 %call.i47.i.i.i, ptr %r_info.i48.i.i.i, align 4, !tbaa !40
  br i1 %cmp17.i.i.i, label %if.then19.i.i.i, label %if.end21.i.i.i

if.then19.i.i.i:                                  ; preds = %if.then9.i.i.i
  %r_addend.i.i.i = getelementptr inbounds %struct.Elf32_Rela, ptr %mrelp.063.i.i.i, i64 0, i32 2
  store i32 %call11.i.i.i, ptr %r_addend.i.i.i, align 4, !tbaa !45
  br label %if.end21.i.i.i

if.end21.i.i.i:                                   ; preds = %if.then19.i.i.i, %if.then9.i.i.i
  %storemerge.i.i.i = phi i32 [ 0, %if.then19.i.i.i ], [ %call11.i.i.i, %if.then9.i.i.i ]
  %mlocp.addr.1.i.i.i = getelementptr inbounds i32, ptr %mlocp.addr.068.i.i.i, i64 1
  store i32 %storemerge.i.i.i, ptr %mlocp.addr.068.i.i.i, align 4, !tbaa !9
  %add.ptr.i194.i.i = getelementptr i8, ptr %mrelp.063.i.i.i, i64 %conv16.i.i.i
  br label %if.end22.i.i.i

if.end22.i.i.i:                                   ; preds = %if.end21.i.i.i, %land.lhs.true6.i.i.i, %land.lhs.true.i189.i.i, %if.end.i187.i.i, %lor.lhs.false15.i.i.i.i
  %mcountsym.155.i.i.i = phi i32 [ %mcountsym.159.i.i.i, %land.lhs.true6.i.i.i ], [ %mcountsym.159.i.i.i, %if.end21.i.i.i ], [ %mcountsym.159.i.i.i, %land.lhs.true.i189.i.i ], [ 0, %if.end.i187.i.i ], [ 0, %lor.lhs.false15.i.i.i.i ]
  %mrelp.1.i.i.i = phi ptr [ %mrelp.063.i.i.i, %land.lhs.true6.i.i.i ], [ %add.ptr.i194.i.i, %if.end21.i.i.i ], [ %mrelp.063.i.i.i, %land.lhs.true.i189.i.i ], [ %mrelp.063.i.i.i, %if.end.i187.i.i ], [ %mrelp.063.i.i.i, %lor.lhs.false15.i.i.i.i ]
  %mlocp.addr.2.i.i.i = phi ptr [ %mlocp.addr.068.i.i.i, %land.lhs.true6.i.i.i ], [ %mlocp.addr.1.i.i.i, %if.end21.i.i.i ], [ %mlocp.addr.068.i.i.i, %land.lhs.true.i189.i.i ], [ %mlocp.addr.068.i.i.i, %if.end.i187.i.i ], [ %mlocp.addr.068.i.i.i, %lor.lhs.false15.i.i.i.i ]
  %add.ptr24.i.i.i = getelementptr i8, ptr %relp.061.i.i.i, i64 %conv16.i.i.i
  %dec.i195.i.i = add i32 %t.067.i.i.i, -1
  %tobool.not.i196.i.i = icmp eq i32 %dec.i195.i.i, 0
  br i1 %tobool.not.i196.i.i, label %for.inc.i.i, label %for.body.i183.i.i

cleanup.i.i:                                      ; preds = %for.inc.i172.i.i, %if.then24.i.i
  %130 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call21.i.i.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %130, ptr noundef nonnull @.str.26, i32 noundef %call26.i.i, ptr noundef nonnull %call16.i.i) #21
  br label %do32.exit.i

land.lhs.true38.critedge.i.i:                     ; preds = %land.lhs.true.i.i
  %.b.i.i = load i1, ptr @warn_on_notrace_sect, align 4
  %131 = load ptr, ptr @make_nop, align 8
  %tobool40.i.i = icmp ne ptr %131, null
  %or.cond.i.i = select i1 %.b.i.i, i1 true, i1 %tobool40.i.i
  br i1 %or.cond.i.i, label %if.then41.i.i, label %for.inc.i.i

if.then41.i.i:                                    ; preds = %land.lhs.true38.critedge.i.i
  %132 = load ptr, ptr @w, align 8, !tbaa !5
  %133 = load i32, ptr %e_shoff.i.i, align 4, !tbaa !25
  %call.i198.i.i = call i32 %132(i32 noundef %133) #18, !callees !26
  %134 = load ptr, ptr @w, align 8, !tbaa !5
  %sh_info.i.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %relhdr.0389.i.i, i64 0, i32 7
  %135 = load i32, ptr %sh_info.i.i.i, align 4, !tbaa !34
  %call1.i199.i.i = call i32 %134(i32 noundef %135) #18, !callees !26
  %136 = load ptr, ptr @w, align 8, !tbaa !5
  %sh_entsize.i200.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %relhdr.0389.i.i, i64 0, i32 9
  %137 = load i32, ptr %sh_entsize.i200.i.i, align 4, !tbaa !35
  %call2.i201.i.i = call i32 %136(i32 noundef %137) #18, !callees !26
  %138 = load ptr, ptr @w, align 8, !tbaa !5
  %sh_size.i202.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %relhdr.0389.i.i, i64 0, i32 5
  %139 = load i32, ptr %sh_size.i202.i.i, align 4, !tbaa !28
  %call3.i203.i.i = call i32 %138(i32 noundef %139) #18, !callees !26
  %140 = load ptr, ptr @w, align 8, !tbaa !5
  %141 = load i32, ptr %e_shoff.i.i, align 4, !tbaa !25
  %call.i.i204.i.i = call i32 %140(i32 noundef %141) #18, !callees !26
  %idx.ext.i.i205.i.i = zext i32 %call.i.i204.i.i to i64
  %add.ptr.i.i206.i.i = getelementptr i8, ptr %21, i64 %idx.ext.i.i205.i.i
  %142 = load ptr, ptr @w, align 8, !tbaa !5
  %sh_link.i.i207.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %relhdr.0389.i.i, i64 0, i32 6
  %143 = load i32, ptr %sh_link.i.i207.i.i, align 4, !tbaa !31
  %call1.i.i208.i.i = call i32 %142(i32 noundef %143) #18, !callees !26
  %idxprom.i.i209.i.i = zext i32 %call1.i.i208.i.i to i64
  %arrayidx.i.i210.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %add.ptr.i.i206.i.i, i64 %idxprom.i.i209.i.i
  %144 = load ptr, ptr @w, align 8, !tbaa !5
  %sh_link2.i.i211.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %arrayidx.i.i210.i.i, i64 0, i32 6
  %145 = load i32, ptr %sh_link2.i.i211.i.i, align 4, !tbaa !31
  %call3.i.i212.i.i = call i32 %144(i32 noundef %145) #18, !callees !26
  %idxprom4.i.i213.i.i = zext i32 %call3.i.i212.i.i to i64
  %arrayidx5.i.i214.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %add.ptr.i.i206.i.i, i64 %idxprom4.i.i213.i.i
  %146 = load ptr, ptr @w, align 8, !tbaa !5
  %sh_offset.i.i215.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %relhdr.0389.i.i, i64 0, i32 4
  %147 = load i32, ptr %sh_offset.i.i215.i.i, align 4, !tbaa !32
  %call6.i.i216.i.i = call i32 %146(i32 noundef %147) #18, !callees !26
  %148 = load ptr, ptr @w, align 8, !tbaa !5
  %sh_offset9.i.i217.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %arrayidx.i.i210.i.i, i64 0, i32 4
  %149 = load i32, ptr %sh_offset9.i.i217.i.i, align 4, !tbaa !32
  %call10.i.i218.i.i = call i32 %148(i32 noundef %149) #18, !callees !26
  %idx.ext11.i.i219.i.i = zext i32 %call10.i.i218.i.i to i64
  %add.ptr12.i.i220.i.i = getelementptr i8, ptr %21, i64 %idx.ext11.i.i219.i.i
  %150 = load ptr, ptr @w, align 8, !tbaa !5
  %sh_offset13.i.i221.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %arrayidx5.i.i214.i.i, i64 0, i32 4
  %151 = load i32, ptr %sh_offset13.i.i221.i.i, align 4, !tbaa !32
  %call14.i.i222.i.i = call i32 %150(i32 noundef %151) #18, !callees !26
  %idx.ext15.i.i223.i.i = zext i32 %call14.i.i222.i.i to i64
  %add.ptr16.i.i224.i.i = getelementptr i8, ptr %21, i64 %idx.ext15.i.i223.i.i
  %tobool.not96.i.i.i = icmp ugt i32 %call2.i201.i.i, %call3.i203.i.i
  br i1 %tobool.not96.i.i.i, label %for.inc.i.i, label %for.body.lr.ph.i232.i.i

for.body.lr.ph.i232.i.i:                          ; preds = %if.then41.i.i
  %div.i225.i.i = udiv i32 %call3.i203.i.i, %call2.i201.i.i
  %idx.ext7.i.i226.i.i = zext i32 %call6.i.i216.i.i to i64
  %add.ptr8.i.i227.i.i = getelementptr i8, ptr %21, i64 %idx.ext7.i.i226.i.i
  %idx.ext.i228.i.i = zext i32 %call.i198.i.i to i64
  %add.ptr.i229.i.i = getelementptr i8, ptr %21, i64 %idx.ext.i228.i.i
  %idxprom.i.i.i = zext i32 %call1.i199.i.i to i64
  %arrayidx.i.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %add.ptr.i229.i.i, i64 %idxprom.i.i.i
  %sh_offset.i230.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %arrayidx.i.i.i, i64 0, i32 4
  %idx.ext41.i.i.i = zext i32 %call2.i201.i.i to i64
  br label %for.body.i234.i.i

for.body.i234.i.i:                                ; preds = %for.inc.i276.i.i, %for.body.lr.ph.i232.i.i
  %once.0103.i.i.i = phi i32 [ 0, %for.body.lr.ph.i232.i.i ], [ %once.187.i.i.i, %for.inc.i276.i.i ]
  %t.0102.i.i.i = phi i32 [ %div.i225.i.i, %for.body.lr.ph.i232.i.i ], [ %dec.i274.i.i, %for.inc.i276.i.i ]
  %mcountsym.0101.i.i.i = phi i32 [ 0, %for.body.lr.ph.i232.i.i ], [ %mcountsym.1.i.i.i, %for.inc.i276.i.i ]
  %relp.097.i.i.i = phi ptr [ %add.ptr8.i.i227.i.i, %for.body.lr.ph.i232.i.i ], [ %add.ptr42.i.i.i, %for.inc.i276.i.i ]
  %tobool4.not.i233.i.i = icmp eq i32 %mcountsym.0101.i.i.i, 0
  br i1 %tobool4.not.i233.i.i, label %if.then.i247.i.i, label %if.end.i261.i.i

if.then.i247.i.i:                                 ; preds = %for.body.i234.i.i
  %152 = load ptr, ptr @w, align 8, !tbaa !5
  %r_info.i.i.i235.i.i = getelementptr inbounds %struct.Elf32_Rel, ptr %relp.097.i.i.i, i64 0, i32 1
  %153 = load i32, ptr %r_info.i.i.i235.i.i, align 4, !tbaa !40
  %call.i.i.i236.i.i = call i32 %152(i32 noundef %153) #18, !callees !26
  %shr.i.i.i237.i.i = lshr i32 %call.i.i.i236.i.i, 8
  %idxprom.i68.i.i.i = zext i32 %shr.i.i.i237.i.i to i64
  %arrayidx.i69.i.i.i = getelementptr inbounds %struct.Elf32_Sym, ptr %add.ptr12.i.i220.i.i, i64 %idxprom.i68.i.i.i
  %154 = load ptr, ptr @w, align 8, !tbaa !5
  %155 = load i32, ptr %arrayidx.i69.i.i.i, align 4, !tbaa !42
  %call1.i70.i.i.i = call i32 %154(i32 noundef %155) #18, !callees !26
  %idxprom2.i.i238.i.i = zext i32 %call1.i70.i.i.i to i64
  %arrayidx3.i.i239.i.i = getelementptr inbounds i8, ptr %add.ptr16.i.i224.i.i, i64 %idxprom2.i.i238.i.i
  %.b.i.i240.i.i = load i1, ptr @gpfx, align 1
  %cond.i.i241.i.i = select i1 %.b.i.i240.i.i, ptr @.str.27, ptr @.str.28
  %156 = load i8, ptr %arrayidx3.i.i239.i.i, align 1, !tbaa !17
  %cmp7.i.i242.i.i = icmp eq i8 %156, 46
  %spec.select.idx.i.i243.i.i = zext i1 %cmp7.i.i242.i.i to i64
  %spec.select.i.i244.i.i = getelementptr i8, ptr %arrayidx3.i.i239.i.i, i64 %spec.select.idx.i.i243.i.i
  %call9.i.i245.i.i = call i32 @strcmp(ptr noundef nonnull %cond.i.i241.i.i, ptr noundef nonnull %spec.select.i.i244.i.i) #20
  %cmp10.i.i246.i.i = icmp eq i32 %call9.i.i245.i.i, 0
  br i1 %cmp10.i.i246.i.i, label %if.then19.i.i.i.i, label %lor.lhs.false.i.i249.i.i

lor.lhs.false.i.i249.i.i:                         ; preds = %if.then.i247.i.i
  %157 = load ptr, ptr @altmcount, align 8, !tbaa !5
  %tobool.not.i.i248.i.i = icmp eq ptr %157, null
  br i1 %tobool.not.i.i248.i.i, label %lor.lhs.false15.i.i255.i.i, label %land.lhs.true.i.i252.i.i

land.lhs.true.i.i252.i.i:                         ; preds = %lor.lhs.false.i.i249.i.i
  %call12.i.i250.i.i = call i32 @strcmp(ptr noundef nonnull %157, ptr noundef nonnull %spec.select.i.i244.i.i) #20
  %cmp13.i.i251.i.i = icmp eq i32 %call12.i.i250.i.i, 0
  br i1 %cmp13.i.i251.i.i, label %if.then19.i.i.i.i, label %lor.lhs.false15.i.i255.i.i

lor.lhs.false15.i.i255.i.i:                       ; preds = %land.lhs.true.i.i252.i.i, %lor.lhs.false.i.i249.i.i
  %call16.i.i253.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(11) @.str.29, ptr noundef nonnull %spec.select.i.i244.i.i) #20
  %cmp17.i.i254.i.i = icmp eq i32 %call16.i.i253.i.i, 0
  br i1 %cmp17.i.i254.i.i, label %if.then19.i.i.i.i, label %if.end.i261.i.i

if.then19.i.i.i.i:                                ; preds = %lor.lhs.false15.i.i255.i.i, %land.lhs.true.i.i252.i.i, %if.then.i247.i.i
  %158 = load ptr, ptr @w, align 8, !tbaa !5
  %159 = load i32, ptr %r_info.i.i.i235.i.i, align 4, !tbaa !40
  %call.i28.i.i256.i.i = call i32 %158(i32 noundef %159) #18, !callees !26
  %shr.i29.i.i257.i.i = lshr i32 %call.i28.i.i256.i.i, 8
  br label %if.end.i261.i.i

if.end.i261.i.i:                                  ; preds = %if.then19.i.i.i.i, %lor.lhs.false15.i.i255.i.i, %for.body.i234.i.i
  %mcountsym.1.i.i.i = phi i32 [ %mcountsym.0101.i.i.i, %for.body.i234.i.i ], [ %shr.i29.i.i257.i.i, %if.then19.i.i.i.i ], [ 0, %lor.lhs.false15.i.i255.i.i ]
  %160 = load ptr, ptr @w, align 8, !tbaa !5
  %r_info.i.i258.i.i = getelementptr inbounds %struct.Elf32_Rel, ptr %relp.097.i.i.i, i64 0, i32 1
  %161 = load i32, ptr %r_info.i.i258.i.i, align 4, !tbaa !40
  %call.i71.i.i.i = call i32 %160(i32 noundef %161) #18, !callees !26
  %shr.i.i259.i.i = lshr i32 %call.i71.i.i.i, 8
  %cmp.i260.i.i = icmp eq i32 %mcountsym.1.i.i.i, %shr.i.i259.i.i
  br i1 %cmp.i260.i.i, label %land.lhs.true.i264.i.i, label %for.inc.i276.i.i

land.lhs.true.i264.i.i:                           ; preds = %if.end.i261.i.i
  %162 = load ptr, ptr @is_fake_mcount32, align 8, !tbaa !5
  %call7.i262.i.i = call i32 %162(ptr noundef nonnull %relp.097.i.i.i) #18, !callees !43
  %tobool8.not.i263.i.i = icmp eq i32 %call7.i262.i.i, 0
  br i1 %tobool8.not.i263.i.i, label %if.then9.i265.i.i, label %for.inc.i276.i.i

if.then9.i265.i.i:                                ; preds = %land.lhs.true.i264.i.i
  %163 = load ptr, ptr @make_nop, align 8, !tbaa !5
  %tobool10.not.i.i.i = icmp eq ptr %163, null
  br i1 %tobool10.not.i.i.i, label %if.end15.i.i.i, label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.then9.i265.i.i
  %164 = load ptr, ptr @w, align 8, !tbaa !5
  %165 = load i32, ptr %sh_offset.i230.i.i, align 4, !tbaa !32
  %call12.i.i.i = call i32 %164(i32 noundef %165) #18, !callees !26
  %166 = load ptr, ptr @w, align 8, !tbaa !5
  %167 = load i32, ptr %relp.097.i.i.i, align 4, !tbaa !44
  %call13.i.i.i = call i32 %166(i32 noundef %167) #18, !callees !26
  %add.i266.i.i = add i32 %call13.i.i.i, %call12.i.i.i
  %conv.i.i.i = zext i32 %add.i266.i.i to i64
  %call14.i267.i.i = call i32 %163(ptr noundef %21, i64 noundef %conv.i.i.i) #18, !callees !47
  br label %if.end15.i.i.i

if.end15.i.i.i:                                   ; preds = %if.then11.i.i.i, %if.then9.i265.i.i
  %ret.0.i.i.i = phi i32 [ %call14.i267.i.i, %if.then11.i.i.i ], [ -1, %if.then9.i265.i.i ]
  %.b.i268.i.i = load i1, ptr @warn_on_notrace_sect, align 4
  %tobool16.i.i.i = xor i1 %.b.i268.i.i, true
  %tobool18.i.i.i = icmp ne i32 %once.0103.i.i.i, 0
  %or.cond.i269.i.i = select i1 %tobool16.i.i.i, i1 true, i1 %tobool18.i.i.i
  br i1 %or.cond.i269.i.i, label %if.end25.i.i.i, label %if.then19.i270.i.i

if.then19.i270.i.i:                               ; preds = %if.end15.i.i.i
  %call20.i.i.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.30, ptr noundef nonnull %call16.i.i) #18
  %168 = load ptr, ptr @make_nop, align 8, !tbaa !5
  %tobool21.not.i.i.i = icmp eq ptr %168, null
  br i1 %tobool21.not.i.i.i, label %for.inc.i.i, label %if.end25.i.i.i

if.end25.i.i.i:                                   ; preds = %if.then19.i270.i.i, %if.end15.i.i.i
  %once.1.i.i.i = phi i32 [ %once.0103.i.i.i, %if.end15.i.i.i ], [ 1, %if.then19.i270.i.i ]
  %tobool26.not.i.i.i = icmp eq i32 %ret.0.i.i.i, 0
  br i1 %tobool26.not.i.i.i, label %if.then27.i.i.i, label %for.inc.i276.i.i

if.then27.i.i.i:                                  ; preds = %if.end25.i.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rel.i.i.i) #18
  %169 = load i64, ptr %relp.097.i.i.i, align 4
  store i64 %169, ptr %rel.i.i.i, align 8
  %170 = load ptr, ptr @w, align 8, !tbaa !5
  %171 = lshr i64 %169, 32
  %172 = trunc i64 %171 to i32
  %call.i73.i.i.i = call i32 %170(i32 noundef %172) #18, !callees !26
  %shr.i74.i.i.i = and i32 %call.i73.i.i.i, -256
  %173 = load ptr, ptr @w, align 8, !tbaa !5
  %call.i75.i.i.i = call i32 %173(i32 noundef %shr.i74.i.i.i) #18, !callees !26
  store i32 %call.i75.i.i.i, ptr %r_info.i76.i.i.i, align 4, !tbaa !40
  %sub.ptr.lhs.cast.i271.i.i = ptrtoint ptr %relp.097.i.i.i to i64
  %sub.ptr.sub.i272.i.i = sub i64 %sub.ptr.lhs.cast.i271.i.i, %sub.ptr.rhs.cast.i231.i.i
  %174 = load ptr, ptr @file_map, align 8, !tbaa !5
  %add.ptr.i77.i.i.i = getelementptr i8, ptr %174, i64 %sub.ptr.sub.i272.i.i
  store ptr %add.ptr.i77.i.i.i, ptr @file_ptr, align 8, !tbaa !5
  %cmp.i.i.i.i = icmp ult ptr %add.ptr.i77.i.i.i, %174
  br i1 %cmp.i.i.i.i, label %ulseek.exit.thread.i.i.i, label %ulseek.exit.i.i.i

ulseek.exit.thread.i.i.i:                         ; preds = %if.then27.i.i.i
  %175 = load ptr, ptr @stderr, align 8, !tbaa !5
  %176 = call i64 @fwrite(ptr nonnull @.str.12, i64 24, i64 1, ptr %175) #21
  br label %cleanup.thread.i.i.i

ulseek.exit.i.i.i:                                ; preds = %if.then27.i.i.i
  %cmp31.i.i.i = icmp slt i64 %sub.ptr.sub.i272.i.i, 0
  br i1 %cmp31.i.i.i, label %cleanup.thread.i.i.i, label %cleanup.i273.i.i

cleanup.thread.i.i.i:                             ; preds = %ulseek.exit.i.i.i, %ulseek.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rel.i.i.i) #18
  br label %do32.exit.i

cleanup.i273.i.i:                                 ; preds = %ulseek.exit.i.i.i
  %call35.i.i.i = call fastcc i64 @uwrite(ptr noundef nonnull %rel.i.i.i, i64 noundef 8) #18
  %cmp36.i.i.i = icmp slt i64 %call35.i.i.i, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rel.i.i.i) #18
  br i1 %cmp36.i.i.i, label %do32.exit.i, label %for.inc.i276.i.i

for.inc.i276.i.i:                                 ; preds = %cleanup.i273.i.i, %if.end25.i.i.i, %land.lhs.true.i264.i.i, %if.end.i261.i.i
  %once.187.i.i.i = phi i32 [ %once.1.i.i.i, %if.end25.i.i.i ], [ %once.1.i.i.i, %cleanup.i273.i.i ], [ %once.0103.i.i.i, %land.lhs.true.i264.i.i ], [ %once.0103.i.i.i, %if.end.i261.i.i ]
  %add.ptr42.i.i.i = getelementptr i8, ptr %relp.097.i.i.i, i64 %idx.ext41.i.i.i
  %dec.i274.i.i = add i32 %t.0102.i.i.i, -1
  %tobool.not.i275.i.i = icmp eq i32 %dec.i274.i.i, 0
  br i1 %tobool.not.i275.i.i, label %for.inc.i.i, label %for.body.i234.i.i

for.inc.i.i:                                      ; preds = %for.inc.i276.i.i, %if.then19.i270.i.i, %if.then41.i.i, %land.lhs.true38.critedge.i.i, %if.end22.i.i.i, %if.end32.i.i, %if.end20.i.i
  %mrelp.3.ph.i.i = phi ptr [ %mrelp.0386.i.i, %land.lhs.true38.critedge.i.i ], [ %mrelp.0386.i.i, %if.end20.i.i ], [ %mrelp.0386.i.i, %if.end32.i.i ], [ %mrelp.0386.i.i, %if.then41.i.i ], [ %mrelp.0386.i.i, %if.then19.i270.i.i ], [ %mrelp.0386.i.i, %for.inc.i276.i.i ], [ %mrelp.1.i.i.i, %if.end22.i.i.i ]
  %mlocp.3.ph.i.i = phi ptr [ %mlocp.0391.i.i, %land.lhs.true38.critedge.i.i ], [ %mlocp.0391.i.i, %if.end20.i.i ], [ %mlocp.0391.i.i, %if.end32.i.i ], [ %mlocp.0391.i.i, %if.then41.i.i ], [ %mlocp.0391.i.i, %if.then19.i270.i.i ], [ %mlocp.0391.i.i, %for.inc.i276.i.i ], [ %mlocp.addr.2.i.i.i, %if.end22.i.i.i ]
  %rel_entsize.3.ph.i.i = phi i32 [ %rel_entsize.0392.i.i, %land.lhs.true38.critedge.i.i ], [ %rel_entsize.0392.i.i, %if.end20.i.i ], [ %call33.i.i, %if.end32.i.i ], [ %rel_entsize.0392.i.i, %if.then41.i.i ], [ %rel_entsize.0392.i.i, %if.then19.i270.i.i ], [ %rel_entsize.0392.i.i, %for.inc.i276.i.i ], [ %call33.i.i, %if.end22.i.i.i ]
  %symsec_sh_link.2.ph.i.i = phi i32 [ %symsec_sh_link.0393.i.i, %land.lhs.true38.critedge.i.i ], [ %symsec_sh_link.0393.i.i, %if.end20.i.i ], [ %call25.i.i, %if.end32.i.i ], [ %symsec_sh_link.0393.i.i, %if.then41.i.i ], [ %symsec_sh_link.0393.i.i, %if.then19.i270.i.i ], [ %symsec_sh_link.0393.i.i, %for.inc.i276.i.i ], [ %call25.i.i, %if.end22.i.i.i ]
  %dec.i.i = add i32 %k.0388.i.i, -1
  %incdec.ptr.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %relhdr.0389.i.i, i64 1
  %tobool15.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool15.not.i.i, label %land.lhs.true53.i.i, label %for.body.i.i

land.lhs.true53.i.i:                              ; preds = %for.inc.i.i
  %cmp54.not.i.i = icmp eq ptr %call.i139.i.i, %mlocp.3.ph.i.i
  br i1 %cmp54.not.i.i, label %do32.exit.i, label %if.then56.i.i

if.then56.i.i:                                    ; preds = %land.lhs.true53.i.i
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %mcsec.i.i.i) #18
  %cmp.i277.i.i = icmp eq i32 %rel_entsize.3.ph.i.i, 12
  %cond.i.i.i = select i1 %cmp.i277.i.i, ptr @.str.31, ptr @.str.32
  %177 = load ptr, ptr @w, align 8, !tbaa !5
  %178 = load i32, ptr %e_shoff.i.i, align 4, !tbaa !25
  %call.i279.i.i = call i32 %177(i32 noundef %178) #18, !callees !26
  %179 = load ptr, ptr @w, align 8, !tbaa !5
  %sh_size.i280.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %arrayidx.i.i, i64 0, i32 5
  %180 = load i32, ptr %sh_size.i280.i.i, align 4, !tbaa !28
  %call2.i281.i.i = call i32 %179(i32 noundef %180) #18, !callees !26
  %181 = load ptr, ptr @w, align 8, !tbaa !5
  %182 = load i32, ptr %sh_offset.i.i, align 4, !tbaa !32
  %call3.i283.i.i = call i32 %181(i32 noundef %182) #18, !callees !26
  %idx.ext.i284.i.i = zext i32 %call.i279.i.i to i64
  %add.ptr.i285.i.i = getelementptr i8, ptr %21, i64 %idx.ext.i284.i.i
  %tobool.not.i.i286.i.i = icmp ne ptr %add.ptr.i285.i.i, null
  %.pre.i.i.i.i = load i16, ptr %e_shnum2.phi.trans.insert.i.i.i, align 4, !tbaa !27
  %tobool1.not.i.i.i.i = icmp eq i16 %.pre.i.i.i.i, 0
  %or.cond.i.i.i.i = select i1 %tobool.not.i.i286.i.i, i1 %tobool1.not.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i, label %if.then.i.i288.i.i, label %if.end.i.i290.i.i

if.then.i.i288.i.i:                               ; preds = %if.then56.i.i
  %183 = load ptr, ptr @w, align 8, !tbaa !5
  %sh_size.i.i.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %add.ptr.i285.i.i, i64 0, i32 5
  %184 = load i32, ptr %sh_size.i.i.i.i, align 4, !tbaa !28
  %call.i.i287.i.i = call i32 %183(i32 noundef %184) #18, !callees !26
  br label %get_shnum32.exit.i.i.i

if.end.i.i290.i.i:                                ; preds = %if.then56.i.i
  %185 = load ptr, ptr @w2, align 8, !tbaa !5
  %call3.i.i289.i.i = call i32 %185(i16 noundef zeroext %.pre.i.i.i.i) #18, !callees !21
  br label %get_shnum32.exit.i.i.i

get_shnum32.exit.i.i.i:                           ; preds = %if.end.i.i290.i.i, %if.then.i.i288.i.i
  %retval.0.i.i291.i.i = phi i32 [ %call3.i.i289.i.i, %if.end.i.i290.i.i ], [ %call.i.i287.i.i, %if.then.i.i288.i.i ]
  %add.i292.i.i = add i32 %retval.0.i.i291.i.i, 2
  %add6.i.i.i = select i1 %cmp.i277.i.i, i32 18, i32 17
  %186 = load ptr, ptr @w, align 8, !tbaa !5
  %187 = load i32, ptr %sh_size.i280.i.i, align 4, !tbaa !28
  %call8.i.i.i = call i32 %186(i32 noundef %187) #18, !callees !26
  %add10.i.i.i = add i32 %call8.i.i.i, %add6.i.i.i
  %188 = load ptr, ptr @w, align 8, !tbaa !5
  %call12.i293.i.i = call i32 %188(i32 noundef %add10.i.i.i) #18, !callees !26
  store i32 %call12.i293.i.i, ptr %sh_size.i280.i.i, align 4, !tbaa !28
  %189 = load ptr, ptr @w, align 8, !tbaa !5
  %190 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @sb, i64 0, i32 8), align 8, !tbaa !11
  %conv14.i.i.i = trunc i64 %190 to i32
  %call15.i.i.i = call i32 %189(i32 noundef %conv14.i.i.i) #18, !callees !26
  store i32 %call15.i.i.i, ptr %sh_offset.i.i, align 4, !tbaa !32
  %191 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @sb, i64 0, i32 8), align 8, !tbaa !11
  %192 = trunc i64 %191 to i32
  %conv19.i294.i.i = add i32 %add10.i.i.i, %192
  %sub.i295.i.i = sub i32 0, %conv19.i294.i.i
  %and.i.i.i = and i32 %sub.i295.i.i, 3
  %add20.i.i.i = add i32 %and.i.i.i, %conv19.i294.i.i
  %cmp.i.i296.i.i = icmp ugt i32 %add.i292.i.i, 65279
  br i1 %cmp.i.i296.i.i, label %if.then.i201.i.i.i, label %if.else.i.i298.i.i

if.then.i201.i.i.i:                               ; preds = %get_shnum32.exit.i.i.i
  store i16 0, ptr %e_shnum2.phi.trans.insert.i.i.i, align 4, !tbaa !27
  %193 = load ptr, ptr @w, align 8, !tbaa !5
  %call.i199.i.i.i = call i32 %193(i32 noundef %add.i292.i.i) #18, !callees !26
  %sh_size.i200.i.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %add.ptr.i285.i.i, i64 0, i32 5
  store i32 %call.i199.i.i.i, ptr %sh_size.i200.i.i.i, align 4, !tbaa !28
  br label %set_shnum32.exit.i.i.i

if.else.i.i298.i.i:                               ; preds = %get_shnum32.exit.i.i.i
  %194 = load ptr, ptr @w2, align 8, !tbaa !5
  %conv.i.i.i.i = trunc i32 %add.i292.i.i to i16
  %call1.i.i297.i.i = call i32 %194(i16 noundef zeroext %conv.i.i.i.i) #18, !callees !21
  %conv2.i.i.i.i = trunc i32 %call1.i.i297.i.i to i16
  store i16 %conv2.i.i.i.i, ptr %e_shnum2.phi.trans.insert.i.i.i, align 4, !tbaa !27
  br label %set_shnum32.exit.i.i.i

set_shnum32.exit.i.i.i:                           ; preds = %if.else.i.i298.i.i, %if.then.i201.i.i.i
  %195 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @sb, i64 0, i32 8), align 8, !tbaa !11
  %196 = load ptr, ptr @file_map, align 8, !tbaa !5
  %add.ptr.i.i299.i.i = getelementptr i8, ptr %196, i64 %195
  store ptr %add.ptr.i.i299.i.i, ptr @file_ptr, align 8, !tbaa !5
  %cmp.i203.i.i.i = icmp ult ptr %add.ptr.i.i299.i.i, %196
  br i1 %cmp.i203.i.i.i, label %ulseek.exit.thread.i300.i.i, label %ulseek.exit.i301.i.i

ulseek.exit.thread.i300.i.i:                      ; preds = %set_shnum32.exit.i.i.i
  %197 = load ptr, ptr @stderr, align 8, !tbaa !5
  %198 = call i64 @fwrite(ptr nonnull @.str.12, i64 24, i64 1, ptr %197) #21
  br label %append32.exit.i.i

ulseek.exit.i301.i.i:                             ; preds = %set_shnum32.exit.i.i.i
  %cmp22.i.i.i = icmp slt i64 %195, 0
  br i1 %cmp22.i.i.i, label %append32.exit.i.i, label %if.end.i302.i.i

if.end.i302.i.i:                                  ; preds = %ulseek.exit.i301.i.i
  %idx.ext24.i.i.i = zext i32 %call3.i283.i.i to i64
  %add.ptr25.i.i.i = getelementptr i8, ptr %21, i64 %idx.ext24.i.i.i
  %conv26.i.i.i = zext i32 %call2.i281.i.i to i64
  %call27.i.i.i = call fastcc i64 @uwrite(ptr noundef %add.ptr25.i.i.i, i64 noundef %conv26.i.i.i) #18
  %cmp28.i.i.i = icmp slt i64 %call27.i.i.i, 0
  br i1 %cmp28.i.i.i, label %append32.exit.i.i, label %if.end31.i.i.i

if.end31.i.i.i:                                   ; preds = %if.end.i302.i.i
  %add33.i.i.i = select i1 %cmp.i277.i.i, i64 18, i64 17
  %call34.i.i.i = call fastcc i64 @uwrite(ptr noundef nonnull %cond.i.i.i, i64 noundef %add33.i.i.i) #18
  %cmp35.i.i.i = icmp slt i64 %call34.i.i.i, 0
  br i1 %cmp35.i.i.i, label %append32.exit.i.i, label %if.end38.i.i.i

if.end38.i.i.i:                                   ; preds = %if.end31.i.i.i
  %conv39.i.i.i = zext i32 %add20.i.i.i to i64
  %199 = load ptr, ptr @file_map, align 8, !tbaa !5
  %add.ptr.i206.i.i.i = getelementptr i8, ptr %199, i64 %conv39.i.i.i
  store ptr %add.ptr.i206.i.i.i, ptr @file_ptr, align 8, !tbaa !5
  %cmp.i207.i.i.i = icmp ult ptr %add.ptr.i206.i.i.i, %199
  br i1 %cmp.i207.i.i.i, label %ulseek.exit210.thread.i.i.i, label %if.end44.i.i.i

ulseek.exit210.thread.i.i.i:                      ; preds = %if.end38.i.i.i
  %200 = load ptr, ptr @stderr, align 8, !tbaa !5
  %201 = call i64 @fwrite(ptr nonnull @.str.12, i64 24, i64 1, ptr %200) #21
  br label %append32.exit.i.i

if.end44.i.i.i:                                   ; preds = %if.end38.i.i.i
  %conv45.i.i.i = zext i32 %retval.0.i.i291.i.i to i64
  %mul.i.i.i = mul nuw nsw i64 %conv45.i.i.i, 40
  %call53.i.i.i = call fastcc i64 @uwrite(ptr noundef %add.ptr.i285.i.i, i64 noundef %mul.i.i.i) #18
  %cmp54.i.i.i = icmp slt i64 %call53.i.i.i, 0
  br i1 %cmp54.i.i.i, label %append32.exit.i.i, label %if.end57.i.i.i

if.end57.i.i.i:                                   ; preds = %if.end44.i.i.i
  %202 = trunc i64 %mul.i.i.i to i32
  %conv48.i.i.i = add i32 %202, 80
  %add59.i.i.i = add i32 %conv48.i.i.i, %add20.i.i.i
  %203 = load ptr, ptr @w, align 8, !tbaa !5
  %add65.i.i.i = select i1 %cmp.i277.i.i, i32 5, i32 4
  %add67.i.i.i = add i32 %call2.i281.i.i, %add65.i.i.i
  %call69.i.i.i = call i32 %203(i32 noundef %add67.i.i.i) #18, !callees !26
  store i32 %call69.i.i.i, ptr %mcsec.i.i.i, align 4, !tbaa !48
  %204 = load ptr, ptr @w, align 8, !tbaa !5
  %call70.i.i.i = call i32 %204(i32 noundef 1) #18, !callees !26
  store i32 %call70.i.i.i, ptr %sh_type.i303.i.i, align 4, !tbaa !33
  %205 = load ptr, ptr @w, align 8, !tbaa !5
  %call71.i.i.i = call i32 %205(i32 noundef 2) #18, !callees !26
  store i32 %call71.i.i.i, ptr %sh_flags.i.i.i, align 4, !tbaa !49
  store i32 0, ptr %sh_addr.i.i.i, align 4, !tbaa !50
  %206 = load ptr, ptr @w, align 8, !tbaa !5
  %call72.i.i.i = call i32 %206(i32 noundef %add59.i.i.i) #18, !callees !26
  store i32 %call72.i.i.i, ptr %sh_offset73.i.i.i, align 4, !tbaa !32
  %207 = load ptr, ptr @w, align 8, !tbaa !5
  %sub.ptr.lhs.cast.i304.i.i = ptrtoint ptr %mlocp.3.ph.i.i to i64
  %sub.ptr.sub.i306.i.i = sub i64 %sub.ptr.lhs.cast.i304.i.i, %sub.ptr.rhs.cast.i.i
  %conv74.i.i.i = trunc i64 %sub.ptr.sub.i306.i.i to i32
  %call75.i.i.i = call i32 %207(i32 noundef %conv74.i.i.i) #18, !callees !26
  store i32 %call75.i.i.i, ptr %sh_size76.i.i.i, align 4, !tbaa !28
  store i32 0, ptr %sh_link.i307.i.i, align 4, !tbaa !31
  store i32 0, ptr %sh_info.i308.i.i, align 4, !tbaa !34
  %208 = load ptr, ptr @w, align 8, !tbaa !5
  %call77.i.i.i = call i32 %208(i32 noundef 4) #18, !callees !26
  store i32 %call77.i.i.i, ptr %sh_addralign.i.i.i, align 4, !tbaa !51
  %209 = load ptr, ptr @w, align 8, !tbaa !5
  %call78.i.i.i = call i32 %209(i32 noundef 4) #18, !callees !26
  store i32 %call78.i.i.i, ptr %sh_entsize.i309.i.i, align 4, !tbaa !35
  %call79.i.i.i = call fastcc i64 @uwrite(ptr noundef nonnull %mcsec.i.i.i, i64 noundef 40) #18
  %cmp80.i.i.i = icmp slt i64 %call79.i.i.i, 0
  br i1 %cmp80.i.i.i, label %append32.exit.i.i, label %if.end83.i.i.i

if.end83.i.i.i:                                   ; preds = %if.end57.i.i.i
  %210 = load ptr, ptr @w, align 8, !tbaa !5
  %call84.i.i.i = call i32 %210(i32 noundef %call2.i281.i.i) #18, !callees !26
  store i32 %call84.i.i.i, ptr %mcsec.i.i.i, align 4, !tbaa !48
  %211 = load ptr, ptr @w, align 8, !tbaa !5
  %..i.i.i = select i1 %cmp.i277.i.i, i32 4, i32 9
  %call90.i.i.i = call i32 %211(i32 noundef %..i.i.i) #18
  store i32 %call90.i.i.i, ptr %sh_type.i303.i.i, align 4, !tbaa !33
  store i32 0, ptr %sh_flags.i.i.i, align 4, !tbaa !49
  store i32 0, ptr %sh_addr.i.i.i, align 4, !tbaa !50
  %212 = load ptr, ptr @w, align 8, !tbaa !5
  %conv100.i.i.i = add i32 %add59.i.i.i, %conv74.i.i.i
  %call101.i.i.i = call i32 %212(i32 noundef %conv100.i.i.i) #18, !callees !26
  store i32 %call101.i.i.i, ptr %sh_offset73.i.i.i, align 4, !tbaa !32
  %213 = load ptr, ptr @w, align 8, !tbaa !5
  %sub.ptr.lhs.cast103.i.i.i = ptrtoint ptr %mrelp.3.ph.i.i to i64
  %sub.ptr.rhs.cast104.i.i.i = ptrtoint ptr %call.i136.i.i to i64
  %sub.ptr.sub105.i.i.i = sub i64 %sub.ptr.lhs.cast103.i.i.i, %sub.ptr.rhs.cast104.i.i.i
  %conv106.i.i.i = trunc i64 %sub.ptr.sub105.i.i.i to i32
  %call107.i.i.i = call i32 %213(i32 noundef %conv106.i.i.i) #18, !callees !26
  store i32 %call107.i.i.i, ptr %sh_size76.i.i.i, align 4, !tbaa !28
  %214 = load ptr, ptr @w, align 8, !tbaa !5
  %call109.i.i.i = call i32 %214(i32 noundef %symsec_sh_link.2.ph.i.i) #18, !callees !26
  store i32 %call109.i.i.i, ptr %sh_link.i307.i.i, align 4, !tbaa !31
  %215 = load ptr, ptr @w, align 8, !tbaa !5
  %call111.i.i.i = call i32 %215(i32 noundef %retval.0.i.i291.i.i) #18, !callees !26
  store i32 %call111.i.i.i, ptr %sh_info.i308.i.i, align 4, !tbaa !34
  %216 = load ptr, ptr @w, align 8, !tbaa !5
  %call113.i.i.i = call i32 %216(i32 noundef 4) #18, !callees !26
  store i32 %call113.i.i.i, ptr %sh_addralign.i.i.i, align 4, !tbaa !51
  %217 = load ptr, ptr @w, align 8, !tbaa !5
  %call115.i.i.i = call i32 %217(i32 noundef %rel_entsize.3.ph.i.i) #18, !callees !26
  store i32 %call115.i.i.i, ptr %sh_entsize.i309.i.i, align 4, !tbaa !35
  %call117.i.i.i = call fastcc i64 @uwrite(ptr noundef nonnull %mcsec.i.i.i, i64 noundef 40) #18
  %cmp118.i.i.i = icmp slt i64 %call117.i.i.i, 0
  br i1 %cmp118.i.i.i, label %append32.exit.i.i, label %if.end121.i.i.i

if.end121.i.i.i:                                  ; preds = %if.end83.i.i.i
  %call125.i.i.i = call fastcc i64 @uwrite(ptr noundef nonnull %call.i139.i.i, i64 noundef %sub.ptr.sub.i306.i.i) #18
  %cmp126.i.i.i = icmp slt i64 %call125.i.i.i, 0
  br i1 %cmp126.i.i.i, label %append32.exit.i.i, label %if.end129.i.i.i

if.end129.i.i.i:                                  ; preds = %if.end121.i.i.i
  %call133.i.i.i = call fastcc i64 @uwrite(ptr noundef nonnull %call.i136.i.i, i64 noundef %sub.ptr.sub105.i.i.i) #18
  %cmp134.i.i.i = icmp slt i64 %call133.i.i.i, 0
  br i1 %cmp134.i.i.i, label %append32.exit.i.i, label %if.end144.i.i.i

if.end144.i.i.i:                                  ; preds = %if.end129.i.i.i
  %218 = load ptr, ptr @w, align 8, !tbaa !5
  %call138.i.i.i = call i32 %218(i32 noundef %add20.i.i.i) #18, !callees !26
  store i32 %call138.i.i.i, ptr %e_shoff.i.i, align 4, !tbaa !25
  %219 = load ptr, ptr @file_map, align 8, !tbaa !5
  store ptr %219, ptr @file_ptr, align 8, !tbaa !5
  %call145.i.i.i = call fastcc i64 @uwrite(ptr noundef nonnull %21, i64 noundef 52) #18
  %call145.lobit.i.i.i = ashr i64 %call145.i.i.i, 63
  %220 = trunc i64 %call145.lobit.i.i.i to i32
  br label %append32.exit.i.i

append32.exit.i.i:                                ; preds = %if.end144.i.i.i, %if.end129.i.i.i, %if.end121.i.i.i, %if.end83.i.i.i, %if.end57.i.i.i, %if.end44.i.i.i, %ulseek.exit210.thread.i.i.i, %if.end31.i.i.i, %if.end.i302.i.i, %ulseek.exit.i301.i.i, %ulseek.exit.thread.i300.i.i
  %retval.0.i310.i.i = phi i32 [ -1, %ulseek.exit.i301.i.i ], [ -1, %if.end.i302.i.i ], [ -1, %if.end31.i.i.i ], [ -1, %if.end44.i.i.i ], [ -1, %if.end57.i.i.i ], [ -1, %if.end83.i.i.i ], [ -1, %if.end121.i.i.i ], [ -1, %if.end129.i.i.i ], [ %220, %if.end144.i.i.i ], [ -1, %ulseek.exit.thread.i300.i.i ], [ -1, %ulseek.exit210.thread.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %mcsec.i.i.i) #18
  br label %do32.exit.i

do32.exit.i:                                      ; preds = %append32.exit.i.i, %land.lhs.true53.i.i, %cleanup.i273.i.i, %cleanup.thread.i.i.i, %cleanup.i.i, %if.then19.i.i
  %result.3.i.i = phi i32 [ %retval.0.i310.i.i, %append32.exit.i.i ], [ 0, %land.lhs.true53.i.i ], [ 0, %if.then19.i.i ], [ -1, %cleanup.i.i ], [ -1, %cleanup.thread.i.i.i ], [ -1, %cleanup.i273.i.i ]
  call void @free(ptr noundef %call.i136.i.i) #18
  call void @free(ptr noundef %call.i139.i.i) #18
  %cmp74.i = icmp slt i32 %result.3.i.i, 0
  br i1 %cmp74.i, label %out.i, label %sw.epilog110.i

sw.bb78.i:                                        ; preds = %sw.epilog45.i
  %221 = load ptr, ptr @w2, align 8, !tbaa !5
  %e_ehsize79.i = getelementptr inbounds %struct.Elf64_Ehdr, ptr %21, i64 0, i32 8
  %222 = load i16, ptr %e_ehsize79.i, align 4, !tbaa !52
  %call80.i = call i32 %221(i16 noundef zeroext %222) #18, !callees !21
  %cmp82.not.i = icmp eq i32 %call80.i, 64
  br i1 %cmp82.not.i, label %lor.lhs.false84.i, label %if.then90.i

lor.lhs.false84.i:                                ; preds = %sw.bb78.i
  %223 = load ptr, ptr @w2, align 8, !tbaa !5
  %e_shentsize85.i = getelementptr inbounds %struct.Elf64_Ehdr, ptr %21, i64 0, i32 11
  %224 = load i16, ptr %e_shentsize85.i, align 2, !tbaa !54
  %call86.i = call i32 %223(i16 noundef zeroext %224) #18, !callees !21
  %cmp88.not.i = icmp eq i32 %call86.i, 64
  br i1 %cmp88.not.i, label %if.end92.i, label %if.then90.i

if.then90.i:                                      ; preds = %lor.lhs.false84.i, %sw.bb78.i
  %225 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call91.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %225, ptr noundef nonnull @.str.9, ptr noundef %6) #21
  br label %out.i

if.end92.i:                                       ; preds = %lor.lhs.false84.i
  %226 = load ptr, ptr @w2, align 8, !tbaa !5
  %227 = load i16, ptr %e_machine.i, align 2, !tbaa !55
  %call94.i = call i32 %226(i16 noundef zeroext %227) #18, !callees !21
  %cmp95.i = icmp eq i32 %call94.i, 22
  br i1 %cmp95.i, label %if.then97.i, label %if.end98.i

if.then97.i:                                      ; preds = %if.end92.i
  store i32 -14, ptr @mcount_adjust_64, align 4, !tbaa !9
  br label %if.end98.i

if.end98.i:                                       ; preds = %if.then97.i, %if.end92.i
  %reltype.2.i = phi i32 [ 22, %if.then97.i ], [ %reltype.0.i, %if.end92.i ]
  %228 = load ptr, ptr @w2, align 8, !tbaa !5
  %229 = load i16, ptr %e_machine.i, align 2, !tbaa !55
  %call100.i = call i32 %228(i16 noundef zeroext %229) #18, !callees !21
  %cmp101.i = icmp eq i32 %call100.i, 8
  br i1 %cmp101.i, label %if.then103.i, label %if.end104.i

if.then103.i:                                     ; preds = %if.end98.i
  store ptr @MIPS64_r_sym, ptr @Elf64_r_sym, align 8, !tbaa !5
  store ptr @MIPS64_r_info, ptr @Elf64_r_info, align 8, !tbaa !5
  store ptr @MIPS64_is_fake_mcount, ptr @is_fake_mcount64, align 8, !tbaa !5
  br label %if.end104.i

if.end104.i:                                      ; preds = %if.then103.i, %if.end98.i
  %reltype.3.i = phi i32 [ 18, %if.then103.i ], [ %reltype.2.i, %if.end98.i ]
  %230 = load ptr, ptr @w8, align 8, !tbaa !5
  %e_shoff.i164.i = getelementptr inbounds %struct.Elf64_Ehdr, ptr %21, i64 0, i32 6
  %231 = load i64, ptr %e_shoff.i164.i, align 8, !tbaa !56
  %call.i165.i = call i64 %230(i64 noundef %231) #18, !callees !57
  %add.ptr.i166.i = getelementptr i8, ptr %21, i64 %call.i165.i
  %tobool.not.i.i167.i = icmp ne ptr %add.ptr.i166.i, null
  %e_shnum2.phi.trans.insert.i.i168.i = getelementptr inbounds %struct.Elf64_Ehdr, ptr %21, i64 0, i32 12
  %.pre.i.i169.i = load i16, ptr %e_shnum2.phi.trans.insert.i.i168.i, align 4, !tbaa !58
  %tobool1.not.i.i170.i = icmp eq i16 %.pre.i.i169.i, 0
  %or.cond.i.i171.i = select i1 %tobool.not.i.i167.i, i1 %tobool1.not.i.i170.i, i1 false
  br i1 %or.cond.i.i171.i, label %if.then.i.i175.i, label %if.end.i.i177.i

if.then.i.i175.i:                                 ; preds = %if.end104.i
  %232 = load ptr, ptr @w, align 8, !tbaa !5
  %sh_size.i.i172.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %add.ptr.i166.i, i64 0, i32 5
  %233 = load i64, ptr %sh_size.i.i172.i, align 8, !tbaa !59
  %conv.i.i173.i = trunc i64 %233 to i32
  %call.i.i174.i = call i32 %232(i32 noundef %conv.i.i173.i) #18, !callees !26
  br label %get_shnum64.exit.i.i

if.end.i.i177.i:                                  ; preds = %if.end104.i
  %234 = load ptr, ptr @w2, align 8, !tbaa !5
  %call3.i.i176.i = call i32 %234(i16 noundef zeroext %.pre.i.i169.i) #18, !callees !21
  br label %get_shnum64.exit.i.i

get_shnum64.exit.i.i:                             ; preds = %if.end.i.i177.i, %if.then.i.i175.i
  %retval.0.i.i178.i = phi i32 [ %call3.i.i176.i, %if.end.i.i177.i ], [ %call.i.i174.i, %if.then.i.i175.i ]
  %e_shstrndx.i.i179.i = getelementptr inbounds %struct.Elf64_Ehdr, ptr %21, i64 0, i32 13
  %235 = load i16, ptr %e_shstrndx.i.i179.i, align 2, !tbaa !61
  %cmp.not.i.i180.i = icmp eq i16 %235, -1
  br i1 %cmp.not.i.i180.i, label %if.end.i129.i185.i, label %if.then.i127.i182.i

if.then.i127.i182.i:                              ; preds = %get_shnum64.exit.i.i
  %236 = load ptr, ptr @w2, align 8, !tbaa !5
  %call.i126.i181.i = call i32 %236(i16 noundef zeroext %235) #18, !callees !21
  br label %get_shstrndx64.exit.i.i

if.end.i129.i185.i:                               ; preds = %get_shnum64.exit.i.i
  %237 = load ptr, ptr @w, align 8, !tbaa !5
  %sh_link.i.i183.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %add.ptr.i166.i, i64 0, i32 6
  %238 = load i32, ptr %sh_link.i.i183.i, align 8, !tbaa !62
  %call3.i128.i184.i = call i32 %237(i32 noundef %238) #18, !callees !26
  br label %get_shstrndx64.exit.i.i

get_shstrndx64.exit.i.i:                          ; preds = %if.end.i129.i185.i, %if.then.i127.i182.i
  %retval.0.i130.i186.i = phi i32 [ %call.i126.i181.i, %if.then.i127.i182.i ], [ %call3.i128.i184.i, %if.end.i129.i185.i ]
  %idxprom.i187.i = sext i32 %retval.0.i130.i186.i to i64
  %arrayidx.i188.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %add.ptr.i166.i, i64 %idxprom.i187.i
  %239 = load ptr, ptr @w8, align 8, !tbaa !5
  %sh_offset.i189.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %arrayidx.i188.i, i64 0, i32 4
  %240 = load i64, ptr %sh_offset.i189.i, align 8, !tbaa !63
  %call3.i190.i = call i64 %239(i64 noundef %240) #18, !callees !57
  %add.ptr4.i.i = getelementptr i8, ptr %21, i64 %call3.i190.i
  %tobool.not15.i.i.i = icmp eq i32 %retval.0.i.i178.i, 0
  br i1 %tobool.not15.i.i.i, label %sw.epilog110.i, label %for.body.i.i193.i

for.body.i.i193.i:                                ; preds = %for.inc.i.i206.i, %get_shstrndx64.exit.i.i
  %nhdr.addr.018.i.i.i = phi i32 [ %dec.i.i203.i, %for.inc.i.i206.i ], [ %retval.0.i.i178.i, %get_shstrndx64.exit.i.i ]
  %shdrp.017.i.i.i = phi ptr [ %incdec.ptr.i.i204.i, %for.inc.i.i206.i ], [ %add.ptr.i166.i, %get_shstrndx64.exit.i.i ]
  %totrelsz.016.i.i.i = phi i32 [ %totrelsz.1.i.i202.i, %for.inc.i.i206.i ], [ 0, %get_shstrndx64.exit.i.i ]
  %call.i131.i191.i = call fastcc ptr @has64_rel_mcount(ptr noundef %shdrp.017.i.i.i, ptr noundef %add.ptr.i166.i, ptr noundef %add.ptr4.i.i, ptr noundef %6) #18
  %cmp.i.i192.i = icmp eq ptr %call.i131.i191.i, @.str.16
  br i1 %cmp.i.i192.i, label %sw.epilog110.i, label %if.end.i133.i195.i

if.end.i133.i195.i:                               ; preds = %for.body.i.i193.i
  %tobool1.not.i132.i194.i = icmp eq ptr %call.i131.i191.i, null
  br i1 %tobool1.not.i132.i194.i, label %for.inc.i.i206.i, label %land.lhs.true.i.i198.i

land.lhs.true.i.i198.i:                           ; preds = %if.end.i133.i195.i
  %call2.i.i196.i = call fastcc i32 @is_mcounted_section_name(ptr noundef nonnull %call.i131.i191.i) #18
  %tobool3.not.i.i197.i = icmp eq i32 %call2.i.i196.i, 0
  br i1 %tobool3.not.i.i197.i, label %for.inc.i.i206.i, label %if.then4.i.i201.i

if.then4.i.i201.i:                                ; preds = %land.lhs.true.i.i198.i
  %241 = load ptr, ptr @w8, align 8, !tbaa !5
  %sh_size.i134.i199.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdrp.017.i.i.i, i64 0, i32 5
  %242 = load i64, ptr %sh_size.i134.i199.i, align 8, !tbaa !59
  %call5.i.i200.i = call i64 %241(i64 noundef %242) #18, !callees !57
  %243 = trunc i64 %call5.i.i200.i to i32
  %conv6.i.i.i = add i32 %totrelsz.016.i.i.i, %243
  br label %for.inc.i.i206.i

for.inc.i.i206.i:                                 ; preds = %if.then4.i.i201.i, %land.lhs.true.i.i198.i, %if.end.i133.i195.i
  %totrelsz.1.i.i202.i = phi i32 [ %conv6.i.i.i, %if.then4.i.i201.i ], [ %totrelsz.016.i.i.i, %land.lhs.true.i.i198.i ], [ %totrelsz.016.i.i.i, %if.end.i133.i195.i ]
  %dec.i.i203.i = add i32 %nhdr.addr.018.i.i.i, -1
  %incdec.ptr.i.i204.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdrp.017.i.i.i, i64 1
  %tobool.not.i135.i205.i = icmp eq i32 %dec.i.i203.i, 0
  br i1 %tobool.not.i135.i205.i, label %tot64_relsize.exit.i.i, label %for.body.i.i193.i

tot64_relsize.exit.i.i:                           ; preds = %for.inc.i.i206.i
  %cmp.i207.i = icmp eq i32 %totrelsz.1.i.i202.i, 0
  br i1 %cmp.i207.i, label %sw.epilog110.i, label %if.end.i211.i

if.end.i211.i:                                    ; preds = %tot64_relsize.exit.i.i
  %conv.i208.i = zext i32 %totrelsz.1.i.i202.i to i64
  %call.i136.i209.i = call noalias ptr @malloc(i64 noundef %conv.i208.i) #22
  %cmp.i137.i210.i = icmp eq ptr %call.i136.i209.i, null
  br i1 %cmp.i137.i210.i, label %if.then.i138.i214.i, label %if.end8.i222.i

if.then.i138.i214.i:                              ; preds = %if.end.i211.i
  %244 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1.i.i212.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %244, ptr noundef nonnull @.str.11, i64 noundef %conv.i208.i) #21
  %245 = load ptr, ptr @file_append, align 8, !tbaa !5
  call void @free(ptr noundef %245) #18
  store ptr null, ptr @file_append, align 8, !tbaa !5
  store i64 0, ptr @file_append_size, align 8, !tbaa !16
  store i1 false, ptr @file_updated, align 4
  %.b.i.i.i213.i = load i1, ptr @mmap_failed, align 4
  %246 = load ptr, ptr @file_map, align 8, !tbaa !5
  br i1 %.b.i.i.i213.i, label %if.else.i.i.i217.i, label %if.then.i.i.i216.i

if.then.i.i.i216.i:                               ; preds = %if.then.i138.i214.i
  %247 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @sb, i64 0, i32 8), align 8, !tbaa !11
  %call.i.i.i215.i = call i32 @munmap(ptr noundef %246, i64 noundef %247) #18
  br label %umalloc.exit.thread.i218.i

if.else.i.i.i217.i:                               ; preds = %if.then.i138.i214.i
  call void @free(ptr noundef %246) #18
  br label %umalloc.exit.thread.i218.i

umalloc.exit.thread.i218.i:                       ; preds = %if.else.i.i.i217.i, %if.then.i.i.i216.i
  store ptr null, ptr @file_map, align 8, !tbaa !5
  br label %out.i

if.end8.i222.i:                                   ; preds = %if.end.i211.i
  %shr.i219.i = lshr i32 %totrelsz.1.i.i202.i, 1
  %conv9.i.i = zext i32 %shr.i219.i to i64
  %call.i139.i220.i = call noalias ptr @malloc(i64 noundef %conv9.i.i) #22
  %cmp.i140.i221.i = icmp eq ptr %call.i139.i220.i, null
  br i1 %cmp.i140.i221.i, label %if.then.i143.i225.i, label %for.body.i149.i232.i

if.then.i143.i225.i:                              ; preds = %if.end8.i222.i
  %248 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1.i141.i223.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %248, ptr noundef nonnull @.str.11, i64 noundef %conv9.i.i) #21
  %249 = load ptr, ptr @file_append, align 8, !tbaa !5
  call void @free(ptr noundef %249) #18
  store ptr null, ptr @file_append, align 8, !tbaa !5
  store i64 0, ptr @file_append_size, align 8, !tbaa !16
  store i1 false, ptr @file_updated, align 4
  %.b.i.i142.i224.i = load i1, ptr @mmap_failed, align 4
  %250 = load ptr, ptr @file_map, align 8, !tbaa !5
  br i1 %.b.i.i142.i224.i, label %if.else.i.i146.i228.i, label %if.then.i.i145.i227.i

if.then.i.i145.i227.i:                            ; preds = %if.then.i143.i225.i
  %251 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @sb, i64 0, i32 8), align 8, !tbaa !11
  %call.i.i144.i226.i = call i32 @munmap(ptr noundef %250, i64 noundef %251) #18
  br label %if.then12.i.i

if.else.i.i146.i228.i:                            ; preds = %if.then.i143.i225.i
  call void @free(ptr noundef %250) #18
  br label %if.then12.i.i

if.then12.i.i:                                    ; preds = %if.else.i.i146.i228.i, %if.then.i.i145.i227.i
  store ptr null, ptr @file_map, align 8, !tbaa !5
  call void @free(ptr noundef nonnull %call.i136.i209.i) #18
  br label %out.i

for.body.i149.i232.i:                             ; preds = %for.body.backedge.i.i248.i, %if.end8.i222.i
  %symtab.0.i229.i = phi ptr [ %symtab.1.i238.i, %for.body.backedge.i.i248.i ], [ null, %if.end8.i222.i ]
  %symtab_shndx.0.i230.i = phi ptr [ %symtab_shndx.2.i239.i, %for.body.backedge.i.i248.i ], [ null, %if.end8.i222.i ]
  %k.025.i.i.i = phi i32 [ %k.025.be.i.i.i, %for.body.backedge.i.i248.i ], [ %retval.0.i.i178.i, %if.end8.i222.i ]
  %relhdr.022.i.i.i = phi ptr [ %relhdr.022.be.i.i.i, %for.body.backedge.i.i248.i ], [ %add.ptr.i166.i, %if.end8.i222.i ]
  %sh_type.i.i231.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %relhdr.022.i.i.i, i64 0, i32 1
  %252 = load i32, ptr %sh_type.i.i231.i, align 4, !tbaa !64
  switch i32 %252, label %if.end6.i.i.i [
    i32 2, label %if.then.i150.i235.i
    i32 18, label %if.then3.i.i237.i
  ]

if.then.i150.i235.i:                              ; preds = %for.body.i149.i232.i
  %sh_offset.i.i233.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %relhdr.022.i.i.i, i64 0, i32 4
  %253 = load i64, ptr %sh_offset.i.i233.i, align 8, !tbaa !63
  %add.ptr.i.i234.i = getelementptr i8, ptr %21, i64 %253
  br label %if.end6.i.i.i

if.then3.i.i237.i:                                ; preds = %for.body.i149.i232.i
  %sh_offset4.i.i236.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %relhdr.022.i.i.i, i64 0, i32 4
  %254 = load i64, ptr %sh_offset4.i.i236.i, align 8, !tbaa !63
  %add.ptr5.i.i.i = getelementptr i8, ptr %21, i64 %254
  br label %if.end6.i.i.i

if.end6.i.i.i:                                    ; preds = %if.then3.i.i237.i, %if.then.i150.i235.i, %for.body.i149.i232.i
  %symtab.1.i238.i = phi ptr [ %add.ptr.i.i234.i, %if.then.i150.i235.i ], [ %symtab.0.i229.i, %if.then3.i.i237.i ], [ %symtab.0.i229.i, %for.body.i149.i232.i ]
  %symtab_shndx.2.i239.i = phi ptr [ %symtab_shndx.0.i230.i, %if.then.i150.i235.i ], [ %add.ptr5.i.i.i, %if.then3.i.i237.i ], [ %symtab_shndx.0.i230.i, %for.body.i149.i232.i ]
  %tobool7.not.i.i.i = icmp eq ptr %symtab.1.i238.i, null
  br i1 %tobool7.not.i.i.i, label %for.inc.i155.i247.i, label %land.lhs.true.i154.i244.i

land.lhs.true.i154.i244.i:                        ; preds = %if.end6.i.i.i
  %tobool8.not.i.i240.i = icmp ne ptr %symtab_shndx.2.i239.i, null
  %dec.i151.i241.i = add i32 %k.025.i.i.i, -1
  %tobool.not.i152.i242.i = icmp eq i32 %dec.i151.i241.i, 0
  %or.cond.i153.i243.i = select i1 %tobool8.not.i.i240.i, i1 true, i1 %tobool.not.i152.i242.i
  br i1 %or.cond.i153.i243.i, label %for.body.lr.ph.i251.i, label %for.body.backedge.i.i248.i

for.inc.i155.i247.i:                              ; preds = %if.end6.i.i.i
  %dec.old.i.i245.i = add i32 %k.025.i.i.i, -1
  %tobool.not.old.i.i246.i = icmp eq i32 %dec.old.i.i245.i, 0
  br i1 %tobool.not.old.i.i246.i, label %for.body.lr.ph.i251.i, label %for.body.backedge.i.i248.i

for.body.backedge.i.i248.i:                       ; preds = %for.inc.i155.i247.i, %land.lhs.true.i154.i244.i
  %k.025.be.i.i.i = phi i32 [ %dec.old.i.i245.i, %for.inc.i155.i247.i ], [ %dec.i151.i241.i, %land.lhs.true.i154.i244.i ]
  %relhdr.022.be.i.i.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %relhdr.022.i.i.i, i64 1
  br label %for.body.i149.i232.i

for.body.lr.ph.i251.i:                            ; preds = %for.inc.i155.i247.i, %land.lhs.true.i154.i244.i
  %255 = ptrtoint ptr %symtab.1.i238.i to i64
  %sub.ptr.rhs.cast.i250.i = ptrtoint ptr %call.i139.i220.i to i64
  %sub.ptr.rhs.cast.i225.i.i = ptrtoint ptr %21 to i64
  br label %for.body.i253.i

for.body.i253.i:                                  ; preds = %for.inc.i349.i, %for.body.lr.ph.i251.i
  %symsec_sh_link.0379.i.i = phi i32 [ 0, %for.body.lr.ph.i251.i ], [ %symsec_sh_link.2.ph.i346.i, %for.inc.i349.i ]
  %rel_entsize.0378.i.i = phi i32 [ 0, %for.body.lr.ph.i251.i ], [ %rel_entsize.3.ph.i345.i, %for.inc.i349.i ]
  %mlocp.0377.i.i = phi ptr [ %call.i139.i220.i, %for.body.lr.ph.i251.i ], [ %mlocp.3.ph.i344.i, %for.inc.i349.i ]
  %relhdr.0375.i.i = phi ptr [ %add.ptr.i166.i, %for.body.lr.ph.i251.i ], [ %incdec.ptr.i348.i, %for.inc.i349.i ]
  %k.0374.i.i = phi i32 [ %retval.0.i.i178.i, %for.body.lr.ph.i251.i ], [ %dec.i347.i, %for.inc.i349.i ]
  %mrelp.0372.i.i = phi ptr [ %call.i136.i209.i, %for.body.lr.ph.i251.i ], [ %mrelp.3.ph.i343.i, %for.inc.i349.i ]
  %call15.i252.i = call fastcc ptr @has64_rel_mcount(ptr noundef %relhdr.0375.i.i, ptr noundef %add.ptr.i166.i, ptr noundef %add.ptr4.i.i, ptr noundef %6) #18
  %cmp16.i.i = icmp eq ptr %call15.i252.i, @.str.16
  br i1 %cmp16.i.i, label %if.then18.i.i, label %if.end19.i.i

if.then18.i.i:                                    ; preds = %for.body.i253.i
  store i1 false, ptr @file_updated, align 4
  br label %do64.exit.i

if.end19.i.i:                                     ; preds = %for.body.i253.i
  %tobool20.not.i.i = icmp eq ptr %call15.i252.i, null
  br i1 %tobool20.not.i.i, label %for.inc.i349.i, label %land.lhs.true.i254.i

land.lhs.true.i254.i:                             ; preds = %if.end19.i.i
  %call21.i.i = call fastcc i32 @is_mcounted_section_name(ptr noundef nonnull %call15.i252.i) #18
  %tobool22.not.i.i = icmp eq i32 %call21.i.i, 0
  br i1 %tobool22.not.i.i, label %land.lhs.true38.critedge.i326.i, label %if.then23.i.i

if.then23.i.i:                                    ; preds = %land.lhs.true.i254.i
  %256 = load ptr, ptr @w, align 8, !tbaa !5
  %sh_link.i255.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %relhdr.0375.i.i, i64 0, i32 6
  %257 = load i32, ptr %sh_link.i255.i, align 8, !tbaa !62
  %call24.i.i = call i32 %256(i32 noundef %257) #18, !callees !26
  %258 = load ptr, ptr @w, align 8, !tbaa !5
  %sh_info.i256.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %relhdr.0375.i.i, i64 0, i32 7
  %259 = load i32, ptr %sh_info.i256.i, align 4, !tbaa !65
  %call25.i257.i = call i32 %258(i32 noundef %259) #18, !callees !26
  %idxprom26.i.i = zext i32 %call24.i.i to i64
  %arrayidx27.i.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %add.ptr.i166.i, i64 %idxprom26.i.i
  %260 = load ptr, ptr @w8, align 8, !tbaa !5
  %sh_offset.i156.i258.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %arrayidx27.i.i, i64 0, i32 4
  %261 = load i64, ptr %sh_offset.i156.i258.i, align 8, !tbaa !63
  %call.i157.i259.i = call i64 %260(i64 noundef %261) #18, !callees !57
  %add.ptr.i158.i.i = getelementptr i8, ptr %21, i64 %call.i157.i259.i
  %262 = load ptr, ptr @w8, align 8, !tbaa !5
  %sh_size.i159.i.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %arrayidx27.i.i, i64 0, i32 5
  %263 = load i64, ptr %sh_size.i159.i.i, align 8, !tbaa !59
  %call1.i160.i.i = call i64 %262(i64 noundef %263) #18, !callees !57
  %264 = load ptr, ptr @w8, align 8, !tbaa !5
  %sh_entsize.i.i260.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %arrayidx27.i.i, i64 0, i32 9
  %265 = load i64, ptr %sh_entsize.i.i260.i, align 8, !tbaa !66
  %call2.i161.i.i = call i64 %264(i64 noundef %265) #18, !callees !57
  %div.i.i261.i = udiv i64 %call1.i160.i.i, %call2.i161.i.i
  %conv.i162.i.i = trunc i64 %div.i.i261.i to i32
  %tobool.not41.i.i.i = icmp eq i32 %conv.i162.i.i, 0
  br i1 %tobool.not41.i.i.i, label %cleanup.i322.i, label %for.body.i164.i266.i

for.body.i164.i266.i:                             ; preds = %for.inc.i172.i284.i, %if.then23.i.i
  %t.044.i.i.i = phi i32 [ %dec.i169.i281.i, %for.inc.i172.i284.i ], [ %conv.i162.i.i, %if.then23.i.i ]
  %symp.042.i.i.i = phi ptr [ %incdec.ptr.i170.i282.i, %for.inc.i172.i284.i ], [ %add.ptr.i158.i.i, %if.then23.i.i ]
  %st_info.i.i262.i = getelementptr inbounds %struct.Elf64_Sym, ptr %symp.042.i.i.i, i64 0, i32 1
  %266 = load i8, ptr %st_info.i.i262.i, align 4, !tbaa !67
  %267 = load ptr, ptr @w2, align 8, !tbaa !5
  %st_shndx.i.i.i263.i = getelementptr inbounds %struct.Elf64_Sym, ptr %symp.042.i.i.i, i64 0, i32 3
  %268 = load i16, ptr %st_shndx.i.i.i263.i, align 2, !tbaa !69
  %call.i.i163.i264.i = call i32 %267(i16 noundef zeroext %268) #18, !callees !21
  %conv1.i.i.i265.i = and i32 %call.i.i163.i264.i, 65535
  %269 = add nsw i32 %conv1.i.i.i265.i, -1
  %270 = icmp ult i32 %269, 65279
  br i1 %270, label %get_symindex64.exit.i.i.i, label %if.end.i.i.i268.i

if.end.i.i.i268.i:                                ; preds = %for.body.i164.i266.i
  %cmp8.i.i.i267.i = icmp eq i32 %conv1.i.i.i265.i, 65535
  br i1 %cmp8.i.i.i267.i, label %if.then10.i.i.i273.i, label %get_symindex64.exit.i.i.i

if.then10.i.i.i273.i:                             ; preds = %if.end.i.i.i268.i
  %271 = ptrtoint ptr %symp.042.i.i.i to i64
  %sub.i.i.i269.i = sub i64 %271, %255
  %div.i.i.i.i = udiv i64 %sub.i.i.i269.i, 24
  %272 = load ptr, ptr @w, align 8, !tbaa !5
  %sext.i.i.i.i = shl i64 %div.i.i.i.i, 32
  %idxprom.i.i.i270.i = ashr exact i64 %sext.i.i.i.i, 32
  %arrayidx.i.i.i271.i = getelementptr inbounds i32, ptr %symtab_shndx.2.i239.i, i64 %idxprom.i.i.i270.i
  %273 = load i32, ptr %arrayidx.i.i.i271.i, align 4, !tbaa !9
  %call12.i.i.i272.i = call i32 %272(i32 noundef %273) #18, !callees !26
  br label %get_symindex64.exit.i.i.i

get_symindex64.exit.i.i.i:                        ; preds = %if.then10.i.i.i273.i, %if.end.i.i.i268.i, %for.body.i164.i266.i
  %retval.0.i.i.i274.i = phi i32 [ %call12.i.i.i272.i, %if.then10.i.i.i273.i ], [ %conv1.i.i.i265.i, %for.body.i164.i266.i ], [ 0, %if.end.i.i.i268.i ]
  %cmp.i165.i275.i = icmp eq i32 %retval.0.i.i.i274.i, %call25.i257.i
  br i1 %cmp.i165.i275.i, label %land.lhs.true.i167.i278.i, label %for.inc.i172.i284.i

land.lhs.true.i167.i278.i:                        ; preds = %get_symindex64.exit.i.i.i
  %cmp6.i.i.i = icmp ult i8 %266, 16
  %.mask.i.i276.i = and i8 %266, -16
  %cmp8.i.i.i = icmp eq i8 %.mask.i.i276.i, 16
  %or.cond.i166.i277.i = or i1 %cmp6.i.i.i, %cmp8.i.i.i
  br i1 %or.cond.i166.i277.i, label %if.then.i168.i280.i, label %for.inc.i172.i284.i

if.then.i168.i280.i:                              ; preds = %land.lhs.true.i167.i278.i
  %274 = load ptr, ptr @w2, align 8, !tbaa !5
  %275 = load i16, ptr %e_machine.i, align 2, !tbaa !55
  %call10.i.i279.i = call i32 %274(i16 noundef zeroext %275) #18, !callees !21
  %cmp11.i.i.i = icmp eq i32 %call10.i.i279.i, 40
  br i1 %cmp11.i.i.i, label %land.lhs.true13.i.i.i, label %if.end31.i.i

land.lhs.true13.i.i.i:                            ; preds = %if.then.i168.i280.i
  %276 = load i8, ptr %st_info.i.i262.i, align 4, !tbaa !67
  %277 = and i8 %276, 15
  %cmp16.i.i.i = icmp eq i8 %277, 2
  br i1 %cmp16.i.i.i, label %for.inc.i172.i284.i, label %if.end31.i.i

for.inc.i172.i284.i:                              ; preds = %land.lhs.true13.i.i.i, %land.lhs.true.i167.i278.i, %get_symindex64.exit.i.i.i
  %dec.i169.i281.i = add i32 %t.044.i.i.i, -1
  %incdec.ptr.i170.i282.i = getelementptr inbounds %struct.Elf64_Sym, ptr %symp.042.i.i.i, i64 1
  %tobool.not.i171.i283.i = icmp eq i32 %dec.i169.i281.i, 0
  br i1 %tobool.not.i171.i283.i, label %cleanup.i322.i, label %for.body.i164.i266.i

if.end31.i.i:                                     ; preds = %land.lhs.true13.i.i.i, %if.then.i168.i280.i
  %278 = load ptr, ptr @w8, align 8, !tbaa !5
  %st_value.i.i285.i = getelementptr inbounds %struct.Elf64_Sym, ptr %symp.042.i.i.i, i64 0, i32 4
  %279 = load i64, ptr %st_value.i.i285.i, align 8, !tbaa !70
  %call19.i.i.i = call i64 %278(i64 noundef %279) #18, !callees !57
  %sub.ptr.lhs.cast.i.i286.i = ptrtoint ptr %symp.042.i.i.i to i64
  %sub.ptr.rhs.cast.i.i287.i = ptrtoint ptr %add.ptr.i158.i.i to i64
  %sub.ptr.sub.i.i288.i = sub i64 %sub.ptr.lhs.cast.i.i286.i, %sub.ptr.rhs.cast.i.i287.i
  %sub.ptr.div.i.i.i = sdiv exact i64 %sub.ptr.sub.i.i288.i, 24
  %conv20.i.i.i = trunc i64 %sub.ptr.div.i.i.i to i32
  %280 = load ptr, ptr @w8, align 8, !tbaa !5
  %sh_entsize.i289.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %relhdr.0375.i.i, i64 0, i32 9
  %281 = load i64, ptr %sh_entsize.i289.i, align 8, !tbaa !66
  %call32.i.i = call i64 %280(i64 noundef %281) #18, !callees !57
  %conv33.i.i = trunc i64 %call32.i.i to i32
  %282 = load ptr, ptr @w8, align 8, !tbaa !5
  %283 = load i64, ptr %sh_entsize.i289.i, align 8, !tbaa !66
  %call.i174.i290.i = call i64 %282(i64 noundef %283) #18, !callees !57
  %284 = load ptr, ptr @w8, align 8, !tbaa !5
  %sh_size.i175.i291.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %relhdr.0375.i.i, i64 0, i32 5
  %285 = load i64, ptr %sh_size.i175.i291.i, align 8, !tbaa !59
  %call1.i176.i292.i = call i64 %284(i64 noundef %285) #18, !callees !57
  %conv2.i.i.i = and i64 %call.i174.i290.i, 4294967295
  %div.i177.i.i = udiv i64 %call1.i176.i292.i, %conv2.i.i.i
  %conv3.i.i.i = trunc i64 %div.i177.i.i to i32
  %286 = load ptr, ptr @w8, align 8, !tbaa !5
  %287 = load i64, ptr %e_shoff.i164.i, align 8, !tbaa !56
  %call.i.i178.i.i = call i64 %286(i64 noundef %287) #18, !callees !57
  %add.ptr.i.i.i293.i = getelementptr i8, ptr %21, i64 %call.i.i178.i.i
  %288 = load ptr, ptr @w, align 8, !tbaa !5
  %289 = load i32, ptr %sh_link.i255.i, align 8, !tbaa !62
  %call1.i.i.i294.i = call i32 %288(i32 noundef %289) #18, !callees !26
  %idxprom.i.i179.i.i = zext i32 %call1.i.i.i294.i to i64
  %arrayidx.i.i180.i.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %add.ptr.i.i.i293.i, i64 %idxprom.i.i179.i.i
  %290 = load ptr, ptr @w, align 8, !tbaa !5
  %sh_link2.i.i.i295.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %arrayidx.i.i180.i.i, i64 0, i32 6
  %291 = load i32, ptr %sh_link2.i.i.i295.i, align 8, !tbaa !62
  %call3.i.i.i296.i = call i32 %290(i32 noundef %291) #18, !callees !26
  %idxprom4.i.i.i297.i = zext i32 %call3.i.i.i296.i to i64
  %arrayidx5.i.i.i298.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %add.ptr.i.i.i293.i, i64 %idxprom4.i.i.i297.i
  %292 = load ptr, ptr @w8, align 8, !tbaa !5
  %sh_offset.i.i.i299.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %relhdr.0375.i.i, i64 0, i32 4
  %293 = load i64, ptr %sh_offset.i.i.i299.i, align 8, !tbaa !63
  %call6.i.i.i300.i = call i64 %292(i64 noundef %293) #18, !callees !57
  %294 = load ptr, ptr @w8, align 8, !tbaa !5
  %sh_offset8.i.i.i.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %arrayidx.i.i180.i.i, i64 0, i32 4
  %295 = load i64, ptr %sh_offset8.i.i.i.i, align 8, !tbaa !63
  %call9.i.i.i301.i = call i64 %294(i64 noundef %295) #18, !callees !57
  %add.ptr10.i.i.i.i = getelementptr i8, ptr %21, i64 %call9.i.i.i301.i
  %296 = load ptr, ptr @w8, align 8, !tbaa !5
  %sh_offset11.i.i.i.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %arrayidx5.i.i.i298.i, i64 0, i32 4
  %297 = load i64, ptr %sh_offset11.i.i.i.i, align 8, !tbaa !63
  %call12.i.i181.i.i = call i64 %296(i64 noundef %297) #18, !callees !57
  %add.ptr13.i.i.i.i = getelementptr i8, ptr %21, i64 %call12.i.i181.i.i
  %tobool.not63.i.i.i = icmp eq i32 %conv3.i.i.i, 0
  br i1 %tobool.not63.i.i.i, label %for.inc.i349.i, label %for.body.lr.ph.i184.i.i

for.body.lr.ph.i184.i.i:                          ; preds = %if.end31.i.i
  %sub.ptr.lhs.cast.i302.i = ptrtoint ptr %mlocp.0377.i.i to i64
  %sub.ptr.sub.i303.i = sub i64 %sub.ptr.lhs.cast.i302.i, %sub.ptr.rhs.cast.i250.i
  %add.ptr7.i.i.i.i = getelementptr i8, ptr %21, i64 %call6.i.i.i300.i
  %conv17.i.i.i = and i64 %sub.ptr.sub.i303.i, 4294967295
  %sub.ptr.sub.i183.i.i = sub i64 %conv17.i.i.i, %sub.ptr.lhs.cast.i302.i
  %cmp22.i.i304.i = icmp eq i64 %conv2.i.i.i, 24
  br label %for.body.i185.i.i

for.body.i185.i.i:                                ; preds = %if.end27.i.i.i, %for.body.lr.ph.i184.i.i
  %mlocp.addr.071.i.i.i = phi ptr [ %mlocp.0377.i.i, %for.body.lr.ph.i184.i.i ], [ %mlocp.addr.2.i.i321.i, %if.end27.i.i.i ]
  %t.070.i.i.i = phi i32 [ %conv3.i.i.i, %for.body.lr.ph.i184.i.i ], [ %dec.i194.i.i, %if.end27.i.i.i ]
  %mcountsym.069.i.i.i = phi i32 [ 0, %for.body.lr.ph.i184.i.i ], [ %mcountsym.158.i.i.i, %if.end27.i.i.i ]
  %mrelp.066.i.i.i = phi ptr [ %mrelp.0372.i.i, %for.body.lr.ph.i184.i.i ], [ %mrelp.1.i.i320.i, %if.end27.i.i.i ]
  %relp.064.i.i.i = phi ptr [ %add.ptr7.i.i.i.i, %for.body.lr.ph.i184.i.i ], [ %add.ptr29.i.i.i, %if.end27.i.i.i ]
  %tobool4.not.i.i305.i = icmp eq i32 %mcountsym.069.i.i.i, 0
  br i1 %tobool4.not.i.i305.i, label %if.then.i187.i.i, label %land.lhs.true.i190.i.i

if.then.i187.i.i:                                 ; preds = %for.body.i185.i.i
  %298 = load ptr, ptr @Elf64_r_sym, align 8, !tbaa !5
  %call.i48.i.i.i = call i64 %298(ptr noundef %relp.064.i.i.i) #18, !callees !71
  %arrayidx.i49.i.i.i = getelementptr inbounds %struct.Elf64_Sym, ptr %add.ptr10.i.i.i.i, i64 %call.i48.i.i.i
  %299 = load ptr, ptr @w, align 8, !tbaa !5
  %300 = load i32, ptr %arrayidx.i49.i.i.i, align 8, !tbaa !72
  %call1.i50.i.i.i = call i32 %299(i32 noundef %300) #18, !callees !26
  %idxprom.i51.i.i.i = zext i32 %call1.i50.i.i.i to i64
  %arrayidx2.i.i.i.i = getelementptr inbounds i8, ptr %add.ptr13.i.i.i.i, i64 %idxprom.i51.i.i.i
  %.b.i.i186.i.i = load i1, ptr @gpfx, align 1
  %cond.i.i.i306.i = select i1 %.b.i.i186.i.i, ptr @.str.27, ptr @.str.28
  %301 = load i8, ptr %arrayidx2.i.i.i.i, align 1, !tbaa !17
  %cmp6.i.i.i.i = icmp eq i8 %301, 46
  %spec.select.idx.i.i.i307.i = zext i1 %cmp6.i.i.i.i to i64
  %spec.select.i.i.i308.i = getelementptr i8, ptr %arrayidx2.i.i.i.i, i64 %spec.select.idx.i.i.i307.i
  %call8.i.i.i.i = call i32 @strcmp(ptr noundef nonnull %cond.i.i.i306.i, ptr noundef nonnull %spec.select.i.i.i308.i) #20
  %cmp9.i.i.i.i = icmp eq i32 %call8.i.i.i.i, 0
  br i1 %cmp9.i.i.i.i, label %if.end.i188.i.i, label %lor.lhs.false.i.i.i310.i

lor.lhs.false.i.i.i310.i:                         ; preds = %if.then.i187.i.i
  %302 = load ptr, ptr @altmcount, align 8, !tbaa !5
  %tobool.not.i.i.i309.i = icmp eq ptr %302, null
  br i1 %tobool.not.i.i.i309.i, label %lor.lhs.false14.i.i.i.i, label %land.lhs.true.i.i.i311.i

land.lhs.true.i.i.i311.i:                         ; preds = %lor.lhs.false.i.i.i310.i
  %call11.i.i.i.i = call i32 @strcmp(ptr noundef nonnull %302, ptr noundef nonnull %spec.select.i.i.i308.i) #20
  %cmp12.i.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %cmp12.i.i.i.i, label %if.end.i188.i.i, label %lor.lhs.false14.i.i.i.i

lor.lhs.false14.i.i.i.i:                          ; preds = %land.lhs.true.i.i.i311.i, %lor.lhs.false.i.i.i310.i
  %call15.i.i.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(11) @.str.29, ptr noundef nonnull %spec.select.i.i.i308.i) #20
  %cmp16.i.i.i.i = icmp eq i32 %call15.i.i.i.i, 0
  br i1 %cmp16.i.i.i.i, label %if.end.i188.i.i, label %if.end27.i.i.i

if.end.i188.i.i:                                  ; preds = %lor.lhs.false14.i.i.i.i, %land.lhs.true.i.i.i311.i, %if.then.i187.i.i
  %303 = load ptr, ptr @Elf64_r_sym, align 8, !tbaa !5
  %call19.i.i.i.i = call i64 %303(ptr noundef %relp.064.i.i.i) #18, !callees !71
  %conv20.i.i.i.i = trunc i64 %call19.i.i.i.i to i32
  %tobool6.not.i.i.i = icmp eq i32 %conv20.i.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %if.end27.i.i.i, label %land.lhs.true.i190.i.i

land.lhs.true.i190.i.i:                           ; preds = %if.end.i188.i.i, %for.body.i185.i.i
  %mcountsym.162.i.i.i = phi i32 [ %conv20.i.i.i.i, %if.end.i188.i.i ], [ %mcountsym.069.i.i.i, %for.body.i185.i.i ]
  %conv7.i.i.i = zext i32 %mcountsym.162.i.i.i to i64
  %304 = load ptr, ptr @Elf64_r_sym, align 8, !tbaa !5
  %call8.i.i312.i = call i64 %304(ptr noundef %relp.064.i.i.i) #18, !callees !71
  %cmp.i189.i.i = icmp eq i64 %call8.i.i312.i, %conv7.i.i.i
  br i1 %cmp.i189.i.i, label %land.lhs.true10.i.i.i, label %if.end27.i.i.i

land.lhs.true10.i.i.i:                            ; preds = %land.lhs.true.i190.i.i
  %305 = load ptr, ptr @is_fake_mcount64, align 8, !tbaa !5
  %call11.i.i313.i = call i32 %305(ptr noundef %relp.064.i.i.i) #18, !callees !73
  %tobool12.not.i.i.i = icmp eq i32 %call11.i.i313.i, 0
  br i1 %tobool12.not.i.i.i, label %if.then13.i.i.i, label %if.end27.i.i.i

if.then13.i.i.i:                                  ; preds = %land.lhs.true10.i.i.i
  %306 = load ptr, ptr @w8, align 8, !tbaa !5
  %307 = load i64, ptr %relp.064.i.i.i, align 8, !tbaa !74
  %call14.i.i314.i = call i64 %306(i64 noundef %307) #18, !callees !57
  %sub.i.i315.i = sub i64 %call14.i.i314.i, %call19.i.i.i
  %308 = load i32, ptr @mcount_adjust_64, align 4, !tbaa !9
  %conv15.i.i.i = sext i32 %308 to i64
  %add.i.i316.i = add i64 %sub.i.i315.i, %conv15.i.i.i
  %call16.i.i.i = call i64 %306(i64 noundef %add.i.i316.i) #18, !callees !57
  %309 = load ptr, ptr @w8, align 8, !tbaa !5
  %sub.ptr.lhs.cast.i191.i.i = ptrtoint ptr %mlocp.addr.071.i.i.i to i64
  %add18.i.i.i = add i64 %sub.ptr.sub.i183.i.i, %sub.ptr.lhs.cast.i191.i.i
  %call19.i192.i.i = call i64 %309(i64 noundef %add18.i.i.i) #18, !callees !57
  store i64 %call19.i192.i.i, ptr %mrelp.066.i.i.i, align 8, !tbaa !74
  %310 = load ptr, ptr @Elf64_r_info, align 8, !tbaa !5
  call void %310(ptr noundef nonnull %mrelp.066.i.i.i, i32 noundef %conv20.i.i.i, i32 noundef %reltype.3.i) #18, !callees !76
  br i1 %cmp22.i.i304.i, label %if.then24.i.i.i, label %if.end26.i.i.i

if.then24.i.i.i:                                  ; preds = %if.then13.i.i.i
  %r_addend.i.i317.i = getelementptr inbounds %struct.Elf64_Rela, ptr %mrelp.066.i.i.i, i64 0, i32 2
  store i64 %call16.i.i.i, ptr %r_addend.i.i317.i, align 8, !tbaa !77
  br label %if.end26.i.i.i

if.end26.i.i.i:                                   ; preds = %if.then24.i.i.i, %if.then13.i.i.i
  %storemerge.i.i318.i = phi i64 [ 0, %if.then24.i.i.i ], [ %call16.i.i.i, %if.then13.i.i.i ]
  %mlocp.addr.1.i.i319.i = getelementptr inbounds i64, ptr %mlocp.addr.071.i.i.i, i64 1
  store i64 %storemerge.i.i318.i, ptr %mlocp.addr.071.i.i.i, align 8, !tbaa !16
  %add.ptr.i193.i.i = getelementptr i8, ptr %mrelp.066.i.i.i, i64 %conv2.i.i.i
  br label %if.end27.i.i.i

if.end27.i.i.i:                                   ; preds = %if.end26.i.i.i, %land.lhs.true10.i.i.i, %land.lhs.true.i190.i.i, %if.end.i188.i.i, %lor.lhs.false14.i.i.i.i
  %mcountsym.158.i.i.i = phi i32 [ %mcountsym.162.i.i.i, %land.lhs.true10.i.i.i ], [ %mcountsym.162.i.i.i, %if.end26.i.i.i ], [ %mcountsym.162.i.i.i, %land.lhs.true.i190.i.i ], [ 0, %if.end.i188.i.i ], [ 0, %lor.lhs.false14.i.i.i.i ]
  %mrelp.1.i.i320.i = phi ptr [ %mrelp.066.i.i.i, %land.lhs.true10.i.i.i ], [ %add.ptr.i193.i.i, %if.end26.i.i.i ], [ %mrelp.066.i.i.i, %land.lhs.true.i190.i.i ], [ %mrelp.066.i.i.i, %if.end.i188.i.i ], [ %mrelp.066.i.i.i, %lor.lhs.false14.i.i.i.i ]
  %mlocp.addr.2.i.i321.i = phi ptr [ %mlocp.addr.071.i.i.i, %land.lhs.true10.i.i.i ], [ %mlocp.addr.1.i.i319.i, %if.end26.i.i.i ], [ %mlocp.addr.071.i.i.i, %land.lhs.true.i190.i.i ], [ %mlocp.addr.071.i.i.i, %if.end.i188.i.i ], [ %mlocp.addr.071.i.i.i, %lor.lhs.false14.i.i.i.i ]
  %add.ptr29.i.i.i = getelementptr i8, ptr %relp.064.i.i.i, i64 %conv2.i.i.i
  %dec.i194.i.i = add i32 %t.070.i.i.i, -1
  %tobool.not.i195.i.i = icmp eq i32 %dec.i194.i.i, 0
  br i1 %tobool.not.i195.i.i, label %for.inc.i349.i, label %for.body.i185.i.i

cleanup.i322.i:                                   ; preds = %for.inc.i172.i284.i, %if.then23.i.i
  %311 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call22.i.i.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %311, ptr noundef nonnull @.str.26, i32 noundef %call25.i257.i, ptr noundef nonnull %call15.i252.i) #21
  br label %do64.exit.i

land.lhs.true38.critedge.i326.i:                  ; preds = %land.lhs.true.i254.i
  %.b.i323.i = load i1, ptr @warn_on_notrace_sect, align 4
  %312 = load ptr, ptr @make_nop, align 8
  %tobool40.i324.i = icmp ne ptr %312, null
  %or.cond.i325.i = select i1 %.b.i323.i, i1 true, i1 %tobool40.i324.i
  br i1 %or.cond.i325.i, label %if.then41.i329.i, label %for.inc.i349.i

if.then41.i329.i:                                 ; preds = %land.lhs.true38.critedge.i326.i
  %313 = load ptr, ptr @w8, align 8, !tbaa !5
  %314 = load i64, ptr %e_shoff.i164.i, align 8, !tbaa !56
  %call.i197.i.i = call i64 %313(i64 noundef %314) #18, !callees !57
  %315 = load ptr, ptr @w, align 8, !tbaa !5
  %sh_info.i.i327.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %relhdr.0375.i.i, i64 0, i32 7
  %316 = load i32, ptr %sh_info.i.i327.i, align 4, !tbaa !65
  %call1.i198.i.i = call i32 %315(i32 noundef %316) #18, !callees !26
  %317 = load ptr, ptr @w8, align 8, !tbaa !5
  %sh_entsize.i199.i.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %relhdr.0375.i.i, i64 0, i32 9
  %318 = load i64, ptr %sh_entsize.i199.i.i, align 8, !tbaa !66
  %call2.i200.i.i = call i64 %317(i64 noundef %318) #18, !callees !57
  %319 = load ptr, ptr @w8, align 8, !tbaa !5
  %sh_size.i201.i.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %relhdr.0375.i.i, i64 0, i32 5
  %320 = load i64, ptr %sh_size.i201.i.i, align 8, !tbaa !59
  %call3.i202.i.i = call i64 %319(i64 noundef %320) #18, !callees !57
  %conv4.i.i.i = and i64 %call2.i200.i.i, 4294967295
  %div.i203.i.i = udiv i64 %call3.i202.i.i, %conv4.i.i.i
  %conv5.i.i.i = trunc i64 %div.i203.i.i to i32
  %321 = load ptr, ptr @w8, align 8, !tbaa !5
  %322 = load i64, ptr %e_shoff.i164.i, align 8, !tbaa !56
  %call.i.i204.i328.i = call i64 %321(i64 noundef %322) #18, !callees !57
  %add.ptr.i.i205.i.i = getelementptr i8, ptr %21, i64 %call.i.i204.i328.i
  %323 = load ptr, ptr @w, align 8, !tbaa !5
  %sh_link.i.i206.i.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %relhdr.0375.i.i, i64 0, i32 6
  %324 = load i32, ptr %sh_link.i.i206.i.i, align 8, !tbaa !62
  %call1.i.i207.i.i = call i32 %323(i32 noundef %324) #18, !callees !26
  %idxprom.i.i208.i.i = zext i32 %call1.i.i207.i.i to i64
  %arrayidx.i.i209.i.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %add.ptr.i.i205.i.i, i64 %idxprom.i.i208.i.i
  %325 = load ptr, ptr @w, align 8, !tbaa !5
  %sh_link2.i.i210.i.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %arrayidx.i.i209.i.i, i64 0, i32 6
  %326 = load i32, ptr %sh_link2.i.i210.i.i, align 8, !tbaa !62
  %call3.i.i211.i.i = call i32 %325(i32 noundef %326) #18, !callees !26
  %idxprom4.i.i212.i.i = zext i32 %call3.i.i211.i.i to i64
  %arrayidx5.i.i213.i.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %add.ptr.i.i205.i.i, i64 %idxprom4.i.i212.i.i
  %327 = load ptr, ptr @w8, align 8, !tbaa !5
  %sh_offset.i.i214.i.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %relhdr.0375.i.i, i64 0, i32 4
  %328 = load i64, ptr %sh_offset.i.i214.i.i, align 8, !tbaa !63
  %call6.i.i215.i.i = call i64 %327(i64 noundef %328) #18, !callees !57
  %329 = load ptr, ptr @w8, align 8, !tbaa !5
  %sh_offset8.i.i216.i.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %arrayidx.i.i209.i.i, i64 0, i32 4
  %330 = load i64, ptr %sh_offset8.i.i216.i.i, align 8, !tbaa !63
  %call9.i.i217.i.i = call i64 %329(i64 noundef %330) #18, !callees !57
  %add.ptr10.i.i218.i.i = getelementptr i8, ptr %21, i64 %call9.i.i217.i.i
  %331 = load ptr, ptr @w8, align 8, !tbaa !5
  %sh_offset11.i.i219.i.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %arrayidx5.i.i213.i.i, i64 0, i32 4
  %332 = load i64, ptr %sh_offset11.i.i219.i.i, align 8, !tbaa !63
  %call12.i.i220.i.i = call i64 %331(i64 noundef %332) #18, !callees !57
  %add.ptr13.i.i221.i.i = getelementptr i8, ptr %21, i64 %call12.i.i220.i.i
  %tobool.not95.i.i.i = icmp eq i32 %conv5.i.i.i, 0
  br i1 %tobool.not95.i.i.i, label %for.inc.i349.i, label %for.body.lr.ph.i226.i.i

for.body.lr.ph.i226.i.i:                          ; preds = %if.then41.i329.i
  %add.ptr7.i.i222.i.i = getelementptr i8, ptr %21, i64 %call6.i.i215.i.i
  %add.ptr.i223.i.i = getelementptr i8, ptr %21, i64 %call.i197.i.i
  %idxprom.i.i330.i = zext i32 %call1.i198.i.i to i64
  %arrayidx.i.i331.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %add.ptr.i223.i.i, i64 %idxprom.i.i330.i
  %sh_offset.i224.i.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %arrayidx.i.i331.i, i64 0, i32 4
  br label %for.body.i228.i.i

for.body.i228.i.i:                                ; preds = %for.inc.i262.i.i, %for.body.lr.ph.i226.i.i
  %once.0102.i.i.i = phi i32 [ 0, %for.body.lr.ph.i226.i.i ], [ %once.186.i.i.i, %for.inc.i262.i.i ]
  %t.0101.i.i.i = phi i32 [ %conv5.i.i.i, %for.body.lr.ph.i226.i.i ], [ %dec.i260.i.i, %for.inc.i262.i.i ]
  %mcountsym.0100.i.i.i = phi i32 [ 0, %for.body.lr.ph.i226.i.i ], [ %mcountsym.1.i.i332.i, %for.inc.i262.i.i ]
  %relp.096.i.i.i = phi ptr [ %add.ptr7.i.i222.i.i, %for.body.lr.ph.i226.i.i ], [ %add.ptr46.i.i.i, %for.inc.i262.i.i ]
  %tobool6.not.i227.i.i = icmp eq i32 %mcountsym.0100.i.i.i, 0
  br i1 %tobool6.not.i227.i.i, label %if.then.i237.i.i, label %if.end.i249.i.i

if.then.i237.i.i:                                 ; preds = %for.body.i228.i.i
  %333 = load ptr, ptr @Elf64_r_sym, align 8, !tbaa !5
  %call.i72.i.i.i = call i64 %333(ptr noundef %relp.096.i.i.i) #18, !callees !71
  %arrayidx.i73.i.i.i = getelementptr inbounds %struct.Elf64_Sym, ptr %add.ptr10.i.i218.i.i, i64 %call.i72.i.i.i
  %334 = load ptr, ptr @w, align 8, !tbaa !5
  %335 = load i32, ptr %arrayidx.i73.i.i.i, align 8, !tbaa !72
  %call1.i74.i.i.i = call i32 %334(i32 noundef %335) #18, !callees !26
  %idxprom.i75.i.i.i = zext i32 %call1.i74.i.i.i to i64
  %arrayidx2.i.i229.i.i = getelementptr inbounds i8, ptr %add.ptr13.i.i221.i.i, i64 %idxprom.i75.i.i.i
  %.b.i.i230.i.i = load i1, ptr @gpfx, align 1
  %cond.i.i231.i.i = select i1 %.b.i.i230.i.i, ptr @.str.27, ptr @.str.28
  %336 = load i8, ptr %arrayidx2.i.i229.i.i, align 1, !tbaa !17
  %cmp6.i.i232.i.i = icmp eq i8 %336, 46
  %spec.select.idx.i.i233.i.i = zext i1 %cmp6.i.i232.i.i to i64
  %spec.select.i.i234.i.i = getelementptr i8, ptr %arrayidx2.i.i229.i.i, i64 %spec.select.idx.i.i233.i.i
  %call8.i.i235.i.i = call i32 @strcmp(ptr noundef nonnull %cond.i.i231.i.i, ptr noundef nonnull %spec.select.i.i234.i.i) #20
  %cmp9.i.i236.i.i = icmp eq i32 %call8.i.i235.i.i, 0
  br i1 %cmp9.i.i236.i.i, label %if.then18.i.i.i.i, label %lor.lhs.false.i.i239.i.i

lor.lhs.false.i.i239.i.i:                         ; preds = %if.then.i237.i.i
  %337 = load ptr, ptr @altmcount, align 8, !tbaa !5
  %tobool.not.i.i238.i.i = icmp eq ptr %337, null
  br i1 %tobool.not.i.i238.i.i, label %lor.lhs.false14.i.i245.i.i, label %land.lhs.true.i.i242.i.i

land.lhs.true.i.i242.i.i:                         ; preds = %lor.lhs.false.i.i239.i.i
  %call11.i.i240.i.i = call i32 @strcmp(ptr noundef nonnull %337, ptr noundef nonnull %spec.select.i.i234.i.i) #20
  %cmp12.i.i241.i.i = icmp eq i32 %call11.i.i240.i.i, 0
  br i1 %cmp12.i.i241.i.i, label %if.then18.i.i.i.i, label %lor.lhs.false14.i.i245.i.i

lor.lhs.false14.i.i245.i.i:                       ; preds = %land.lhs.true.i.i242.i.i, %lor.lhs.false.i.i239.i.i
  %call15.i.i243.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(11) @.str.29, ptr noundef nonnull %spec.select.i.i234.i.i) #20
  %cmp16.i.i244.i.i = icmp eq i32 %call15.i.i243.i.i, 0
  br i1 %cmp16.i.i244.i.i, label %if.then18.i.i.i.i, label %if.end.i249.i.i

if.then18.i.i.i.i:                                ; preds = %lor.lhs.false14.i.i245.i.i, %land.lhs.true.i.i242.i.i, %if.then.i237.i.i
  %338 = load ptr, ptr @Elf64_r_sym, align 8, !tbaa !5
  %call19.i.i246.i.i = call i64 %338(ptr noundef %relp.096.i.i.i) #18, !callees !71
  %conv20.i.i247.i.i = trunc i64 %call19.i.i246.i.i to i32
  br label %if.end.i249.i.i

if.end.i249.i.i:                                  ; preds = %if.then18.i.i.i.i, %lor.lhs.false14.i.i245.i.i, %for.body.i228.i.i
  %mcountsym.1.i.i332.i = phi i32 [ %mcountsym.0100.i.i.i, %for.body.i228.i.i ], [ %conv20.i.i247.i.i, %if.then18.i.i.i.i ], [ 0, %lor.lhs.false14.i.i245.i.i ]
  %conv8.i.i.i = zext i32 %mcountsym.1.i.i332.i to i64
  %339 = load ptr, ptr @Elf64_r_sym, align 8, !tbaa !5
  %call9.i.i333.i = call i64 %339(ptr noundef %relp.096.i.i.i) #18, !callees !71
  %cmp.i248.i.i = icmp eq i64 %call9.i.i333.i, %conv8.i.i.i
  br i1 %cmp.i248.i.i, label %land.lhs.true.i252.i.i, label %for.inc.i262.i.i

land.lhs.true.i252.i.i:                           ; preds = %if.end.i249.i.i
  %340 = load ptr, ptr @is_fake_mcount64, align 8, !tbaa !5
  %call11.i250.i.i = call i32 %340(ptr noundef %relp.096.i.i.i) #18, !callees !73
  %tobool12.not.i251.i.i = icmp eq i32 %call11.i250.i.i, 0
  br i1 %tobool12.not.i251.i.i, label %if.then13.i253.i.i, label %for.inc.i262.i.i

if.then13.i253.i.i:                               ; preds = %land.lhs.true.i252.i.i
  %341 = load ptr, ptr @make_nop, align 8, !tbaa !5
  %tobool14.not.i.i.i = icmp eq ptr %341, null
  br i1 %tobool14.not.i.i.i, label %if.end19.i.i.i, label %if.then15.i.i.i

if.then15.i.i.i:                                  ; preds = %if.then13.i253.i.i
  %342 = load ptr, ptr @w8, align 8, !tbaa !5
  %343 = load i64, ptr %sh_offset.i224.i.i, align 8, !tbaa !63
  %call16.i254.i.i = call i64 %342(i64 noundef %343) #18, !callees !57
  %344 = load ptr, ptr @w8, align 8, !tbaa !5
  %345 = load i64, ptr %relp.096.i.i.i, align 8, !tbaa !74
  %call17.i.i.i = call i64 %344(i64 noundef %345) #18, !callees !57
  %add.i255.i.i = add i64 %call17.i.i.i, %call16.i254.i.i
  %call18.i.i334.i = call i32 %341(ptr noundef %21, i64 noundef %add.i255.i.i) #18, !callees !47
  br label %if.end19.i.i.i

if.end19.i.i.i:                                   ; preds = %if.then15.i.i.i, %if.then13.i253.i.i
  %ret.0.i.i335.i = phi i32 [ %call18.i.i334.i, %if.then15.i.i.i ], [ -1, %if.then13.i253.i.i ]
  %.b.i.i336.i = load i1, ptr @warn_on_notrace_sect, align 4
  %tobool20.i.i.i = xor i1 %.b.i.i336.i, true
  %tobool22.i.i.i = icmp ne i32 %once.0102.i.i.i, 0
  %or.cond.i256.i.i = select i1 %tobool20.i.i.i, i1 true, i1 %tobool22.i.i.i
  br i1 %or.cond.i256.i.i, label %if.end29.i.i.i, label %if.then23.i.i.i

if.then23.i.i.i:                                  ; preds = %if.end19.i.i.i
  %call24.i.i.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.30, ptr noundef nonnull %call15.i252.i) #18
  %346 = load ptr, ptr @make_nop, align 8, !tbaa !5
  %tobool25.not.i.i.i = icmp eq ptr %346, null
  br i1 %tobool25.not.i.i.i, label %for.inc.i349.i, label %if.end29.i.i.i

if.end29.i.i.i:                                   ; preds = %if.then23.i.i.i, %if.end19.i.i.i
  %once.1.i.i337.i = phi i32 [ %once.0102.i.i.i, %if.end19.i.i.i ], [ 1, %if.then23.i.i.i ]
  %tobool30.not.i.i.i = icmp eq i32 %ret.0.i.i335.i, 0
  br i1 %tobool30.not.i.i.i, label %if.then31.i.i.i, label %for.inc.i262.i.i

if.then31.i.i.i:                                  ; preds = %if.end29.i.i.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rel.i.i163.i) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %rel.i.i163.i, ptr noundef nonnull align 8 dereferenceable(16) %relp.096.i.i.i, i64 16, i1 false) #18, !tbaa.struct !79
  %347 = load ptr, ptr @Elf64_r_info, align 8, !tbaa !5
  %348 = load ptr, ptr @Elf64_r_sym, align 8, !tbaa !5
  %call32.i.i.i = call i64 %348(ptr noundef %relp.096.i.i.i) #18, !callees !71
  %conv33.i.i.i = trunc i64 %call32.i.i.i to i32
  call void %347(ptr noundef nonnull %rel.i.i163.i, i32 noundef %conv33.i.i.i, i32 noundef 0) #18, !callees !76
  %sub.ptr.lhs.cast.i257.i.i = ptrtoint ptr %relp.096.i.i.i to i64
  %sub.ptr.sub.i258.i.i = sub i64 %sub.ptr.lhs.cast.i257.i.i, %sub.ptr.rhs.cast.i225.i.i
  %349 = load ptr, ptr @file_map, align 8, !tbaa !5
  %add.ptr.i76.i.i.i = getelementptr i8, ptr %349, i64 %sub.ptr.sub.i258.i.i
  store ptr %add.ptr.i76.i.i.i, ptr @file_ptr, align 8, !tbaa !5
  %cmp.i.i.i338.i = icmp ult ptr %add.ptr.i76.i.i.i, %349
  br i1 %cmp.i.i.i338.i, label %ulseek.exit.thread.i.i339.i, label %ulseek.exit.i.i341.i

ulseek.exit.thread.i.i339.i:                      ; preds = %if.then31.i.i.i
  %350 = load ptr, ptr @stderr, align 8, !tbaa !5
  %351 = call i64 @fwrite(ptr nonnull @.str.12, i64 24, i64 1, ptr %350) #21
  br label %cleanup.thread.i.i342.i

ulseek.exit.i.i341.i:                             ; preds = %if.then31.i.i.i
  %cmp36.i.i340.i = icmp slt i64 %sub.ptr.sub.i258.i.i, 0
  br i1 %cmp36.i.i340.i, label %cleanup.thread.i.i342.i, label %cleanup.i259.i.i

cleanup.thread.i.i342.i:                          ; preds = %ulseek.exit.i.i341.i, %ulseek.exit.thread.i.i339.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rel.i.i163.i) #18
  br label %do64.exit.i

cleanup.i259.i.i:                                 ; preds = %ulseek.exit.i.i341.i
  %call40.i.i.i = call fastcc i64 @uwrite(ptr noundef nonnull %rel.i.i163.i, i64 noundef 16) #18
  %cmp41.i.i.i = icmp slt i64 %call40.i.i.i, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rel.i.i163.i) #18
  br i1 %cmp41.i.i.i, label %do64.exit.i, label %for.inc.i262.i.i

for.inc.i262.i.i:                                 ; preds = %cleanup.i259.i.i, %if.end29.i.i.i, %land.lhs.true.i252.i.i, %if.end.i249.i.i
  %once.186.i.i.i = phi i32 [ %once.1.i.i337.i, %if.end29.i.i.i ], [ %once.1.i.i337.i, %cleanup.i259.i.i ], [ %once.0102.i.i.i, %land.lhs.true.i252.i.i ], [ %once.0102.i.i.i, %if.end.i249.i.i ]
  %add.ptr46.i.i.i = getelementptr i8, ptr %relp.096.i.i.i, i64 %conv4.i.i.i
  %dec.i260.i.i = add i32 %t.0101.i.i.i, -1
  %tobool.not.i261.i.i = icmp eq i32 %dec.i260.i.i, 0
  br i1 %tobool.not.i261.i.i, label %for.inc.i349.i, label %for.body.i228.i.i

for.inc.i349.i:                                   ; preds = %for.inc.i262.i.i, %if.then23.i.i.i, %if.then41.i329.i, %land.lhs.true38.critedge.i326.i, %if.end27.i.i.i, %if.end31.i.i, %if.end19.i.i
  %mrelp.3.ph.i343.i = phi ptr [ %mrelp.0372.i.i, %land.lhs.true38.critedge.i326.i ], [ %mrelp.0372.i.i, %if.end19.i.i ], [ %mrelp.0372.i.i, %if.end31.i.i ], [ %mrelp.0372.i.i, %if.then41.i329.i ], [ %mrelp.0372.i.i, %if.then23.i.i.i ], [ %mrelp.0372.i.i, %for.inc.i262.i.i ], [ %mrelp.1.i.i320.i, %if.end27.i.i.i ]
  %mlocp.3.ph.i344.i = phi ptr [ %mlocp.0377.i.i, %land.lhs.true38.critedge.i326.i ], [ %mlocp.0377.i.i, %if.end19.i.i ], [ %mlocp.0377.i.i, %if.end31.i.i ], [ %mlocp.0377.i.i, %if.then41.i329.i ], [ %mlocp.0377.i.i, %if.then23.i.i.i ], [ %mlocp.0377.i.i, %for.inc.i262.i.i ], [ %mlocp.addr.2.i.i321.i, %if.end27.i.i.i ]
  %rel_entsize.3.ph.i345.i = phi i32 [ %rel_entsize.0378.i.i, %land.lhs.true38.critedge.i326.i ], [ %rel_entsize.0378.i.i, %if.end19.i.i ], [ %conv33.i.i, %if.end31.i.i ], [ %rel_entsize.0378.i.i, %if.then41.i329.i ], [ %rel_entsize.0378.i.i, %if.then23.i.i.i ], [ %rel_entsize.0378.i.i, %for.inc.i262.i.i ], [ %conv33.i.i, %if.end27.i.i.i ]
  %symsec_sh_link.2.ph.i346.i = phi i32 [ %symsec_sh_link.0379.i.i, %land.lhs.true38.critedge.i326.i ], [ %symsec_sh_link.0379.i.i, %if.end19.i.i ], [ %call24.i.i, %if.end31.i.i ], [ %symsec_sh_link.0379.i.i, %if.then41.i329.i ], [ %symsec_sh_link.0379.i.i, %if.then23.i.i.i ], [ %symsec_sh_link.0379.i.i, %for.inc.i262.i.i ], [ %call24.i.i, %if.end27.i.i.i ]
  %dec.i347.i = add i32 %k.0374.i.i, -1
  %incdec.ptr.i348.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %relhdr.0375.i.i, i64 1
  %tobool14.not.i.i = icmp eq i32 %dec.i347.i, 0
  br i1 %tobool14.not.i.i, label %land.lhs.true53.i351.i, label %for.body.i253.i

land.lhs.true53.i351.i:                           ; preds = %for.inc.i349.i
  %cmp54.not.i350.i = icmp eq ptr %call.i139.i220.i, %mlocp.3.ph.i344.i
  br i1 %cmp54.not.i350.i, label %do64.exit.i, label %if.then56.i356.i

if.then56.i356.i:                                 ; preds = %land.lhs.true53.i351.i
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %mcsec.i.i162.i) #18
  %conv.i263.i.i = zext i32 %rel_entsize.3.ph.i345.i to i64
  %cmp.i264.i.i = icmp eq i32 %rel_entsize.3.ph.i345.i, 24
  %cond.i.i352.i = select i1 %cmp.i264.i.i, ptr @.str.31, ptr @.str.32
  %352 = load ptr, ptr @w8, align 8, !tbaa !5
  %353 = load i64, ptr %e_shoff.i164.i, align 8, !tbaa !56
  %call.i266.i.i = call i64 %352(i64 noundef %353) #18, !callees !57
  %354 = load ptr, ptr @w8, align 8, !tbaa !5
  %sh_size.i267.i.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %arrayidx.i188.i, i64 0, i32 5
  %355 = load i64, ptr %sh_size.i267.i.i, align 8, !tbaa !59
  %call2.i268.i.i = call i64 %354(i64 noundef %355) #18, !callees !57
  %356 = load ptr, ptr @w8, align 8, !tbaa !5
  %357 = load i64, ptr %sh_offset.i189.i, align 8, !tbaa !63
  %call3.i270.i.i = call i64 %356(i64 noundef %357) #18, !callees !57
  %add.ptr.i271.i.i = getelementptr i8, ptr %21, i64 %call.i266.i.i
  %tobool.not.i.i272.i.i = icmp ne ptr %add.ptr.i271.i.i, null
  %.pre.i.i.i353.i = load i16, ptr %e_shnum2.phi.trans.insert.i.i168.i, align 4, !tbaa !58
  %tobool1.not.i.i.i354.i = icmp eq i16 %.pre.i.i.i353.i, 0
  %or.cond.i.i.i355.i = select i1 %tobool.not.i.i272.i.i, i1 %tobool1.not.i.i.i354.i, i1 false
  br i1 %or.cond.i.i.i355.i, label %if.then.i.i274.i.i, label %if.end.i.i276.i.i

if.then.i.i274.i.i:                               ; preds = %if.then56.i356.i
  %358 = load ptr, ptr @w, align 8, !tbaa !5
  %sh_size.i.i.i357.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %add.ptr.i271.i.i, i64 0, i32 5
  %359 = load i64, ptr %sh_size.i.i.i357.i, align 8, !tbaa !59
  %conv.i.i.i358.i = trunc i64 %359 to i32
  %call.i.i273.i.i = call i32 %358(i32 noundef %conv.i.i.i358.i) #18, !callees !26
  br label %get_shnum64.exit.i.i.i

if.end.i.i276.i.i:                                ; preds = %if.then56.i356.i
  %360 = load ptr, ptr @w2, align 8, !tbaa !5
  %call3.i.i275.i.i = call i32 %360(i16 noundef zeroext %.pre.i.i.i353.i) #18, !callees !21
  br label %get_shnum64.exit.i.i.i

get_shnum64.exit.i.i.i:                           ; preds = %if.end.i.i276.i.i, %if.then.i.i274.i.i
  %retval.0.i.i277.i.i = phi i32 [ %call3.i.i275.i.i, %if.end.i.i276.i.i ], [ %call.i.i273.i.i, %if.then.i.i274.i.i ]
  %add.i278.i.i = add i32 %retval.0.i.i277.i.i, 2
  %add6.i.i359.i = select i1 %cmp.i264.i.i, i64 18, i64 17
  %361 = load ptr, ptr @w8, align 8, !tbaa !5
  %362 = load i64, ptr %sh_size.i267.i.i, align 8, !tbaa !59
  %call8.i279.i.i = call i64 %361(i64 noundef %362) #18, !callees !57
  %add9.i.i.i = add i64 %call8.i279.i.i, %add6.i.i359.i
  %363 = load ptr, ptr @w8, align 8, !tbaa !5
  %call10.i280.i.i = call i64 %363(i64 noundef %add9.i.i.i) #18, !callees !57
  store i64 %call10.i280.i.i, ptr %sh_size.i267.i.i, align 8, !tbaa !59
  %364 = load ptr, ptr @w8, align 8, !tbaa !5
  %365 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @sb, i64 0, i32 8), align 8, !tbaa !11
  %call12.i.i360.i = call i64 %364(i64 noundef %365) #18, !callees !57
  store i64 %call12.i.i360.i, ptr %sh_offset.i189.i, align 8, !tbaa !63
  %366 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @sb, i64 0, i32 8), align 8, !tbaa !11
  %add14.i.i.i = add i64 %366, %add9.i.i.i
  %sub.i281.i.i = sub i64 0, %add14.i.i.i
  %and.i.i361.i = and i64 %sub.i281.i.i, 7
  %add15.i.i.i = add i64 %and.i.i361.i, %add14.i.i.i
  %cmp.i.i282.i.i = icmp ugt i32 %add.i278.i.i, 65279
  br i1 %cmp.i.i282.i.i, label %if.then.i186.i.i.i, label %if.else.i.i284.i.i

if.then.i186.i.i.i:                               ; preds = %get_shnum64.exit.i.i.i
  store i16 0, ptr %e_shnum2.phi.trans.insert.i.i168.i, align 4, !tbaa !58
  %367 = load ptr, ptr @w, align 8, !tbaa !5
  %call.i183.i.i.i = call i32 %367(i32 noundef %add.i278.i.i) #18, !callees !26
  %conv.i184.i.i.i = zext i32 %call.i183.i.i.i to i64
  %sh_size.i185.i.i.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %add.ptr.i271.i.i, i64 0, i32 5
  store i64 %conv.i184.i.i.i, ptr %sh_size.i185.i.i.i, align 8, !tbaa !59
  br label %set_shnum64.exit.i.i.i

if.else.i.i284.i.i:                               ; preds = %get_shnum64.exit.i.i.i
  %368 = load ptr, ptr @w2, align 8, !tbaa !5
  %conv1.i.i283.i.i = trunc i32 %add.i278.i.i to i16
  %call2.i.i.i.i = call i32 %368(i16 noundef zeroext %conv1.i.i283.i.i) #18, !callees !21
  %conv3.i.i.i.i = trunc i32 %call2.i.i.i.i to i16
  store i16 %conv3.i.i.i.i, ptr %e_shnum2.phi.trans.insert.i.i168.i, align 4, !tbaa !58
  br label %set_shnum64.exit.i.i.i

set_shnum64.exit.i.i.i:                           ; preds = %if.else.i.i284.i.i, %if.then.i186.i.i.i
  %369 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @sb, i64 0, i32 8), align 8, !tbaa !11
  %370 = load ptr, ptr @file_map, align 8, !tbaa !5
  %add.ptr.i.i285.i.i = getelementptr i8, ptr %370, i64 %369
  store ptr %add.ptr.i.i285.i.i, ptr @file_ptr, align 8, !tbaa !5
  %cmp.i188.i.i.i = icmp ult ptr %add.ptr.i.i285.i.i, %370
  br i1 %cmp.i188.i.i.i, label %ulseek.exit.thread.i286.i.i, label %ulseek.exit.i287.i.i

ulseek.exit.thread.i286.i.i:                      ; preds = %set_shnum64.exit.i.i.i
  %371 = load ptr, ptr @stderr, align 8, !tbaa !5
  %372 = call i64 @fwrite(ptr nonnull @.str.12, i64 24, i64 1, ptr %371) #21
  br label %append64.exit.i.i

ulseek.exit.i287.i.i:                             ; preds = %set_shnum64.exit.i.i.i
  %cmp17.i.i362.i = icmp slt i64 %369, 0
  br i1 %cmp17.i.i362.i, label %append64.exit.i.i, label %if.end.i288.i.i

if.end.i288.i.i:                                  ; preds = %ulseek.exit.i287.i.i
  %add.ptr19.i.i.i = getelementptr i8, ptr %21, i64 %call3.i270.i.i
  %call20.i.i363.i = call fastcc i64 @uwrite(ptr noundef %add.ptr19.i.i.i, i64 noundef %call2.i268.i.i) #18
  %cmp21.i.i.i = icmp slt i64 %call20.i.i363.i, 0
  br i1 %cmp21.i.i.i, label %append64.exit.i.i, label %if.end24.i.i.i

if.end24.i.i.i:                                   ; preds = %if.end.i288.i.i
  %call27.i.i364.i = call fastcc i64 @uwrite(ptr noundef nonnull %cond.i.i352.i, i64 noundef %add6.i.i359.i) #18
  %cmp28.i.i365.i = icmp slt i64 %call27.i.i364.i, 0
  br i1 %cmp28.i.i365.i, label %append64.exit.i.i, label %if.end31.i.i366.i

if.end31.i.i366.i:                                ; preds = %if.end24.i.i.i
  %373 = load ptr, ptr @file_map, align 8, !tbaa !5
  %add.ptr.i191.i.i.i = getelementptr i8, ptr %373, i64 %add15.i.i.i
  store ptr %add.ptr.i191.i.i.i, ptr @file_ptr, align 8, !tbaa !5
  %cmp.i192.i.i.i = icmp ult ptr %add.ptr.i191.i.i.i, %373
  br i1 %cmp.i192.i.i.i, label %ulseek.exit195.thread.i.i.i, label %ulseek.exit195.i.i.i

ulseek.exit195.thread.i.i.i:                      ; preds = %if.end31.i.i366.i
  %374 = load ptr, ptr @stderr, align 8, !tbaa !5
  %375 = call i64 @fwrite(ptr nonnull @.str.12, i64 24, i64 1, ptr %374) #21
  br label %append64.exit.i.i

ulseek.exit195.i.i.i:                             ; preds = %if.end31.i.i366.i
  %cmp33.i.i.i = icmp slt i64 %add15.i.i.i, 0
  br i1 %cmp33.i.i.i, label %append64.exit.i.i, label %if.end36.i.i.i

if.end36.i.i.i:                                   ; preds = %ulseek.exit195.i.i.i
  %conv37.i.i.i = zext i32 %retval.0.i.i277.i.i to i64
  %mul.i.i367.i = shl nuw nsw i64 %conv37.i.i.i, 6
  %call42.i.i.i = call fastcc i64 @uwrite(ptr noundef %add.ptr.i271.i.i, i64 noundef %mul.i.i367.i) #18
  %cmp43.i.i.i = icmp slt i64 %call42.i.i.i, 0
  br i1 %cmp43.i.i.i, label %append64.exit.i.i, label %if.end46.i.i.i

if.end46.i.i.i:                                   ; preds = %if.end36.i.i.i
  %add38.i.i.i = add nuw nsw i64 %mul.i.i367.i, 128
  %add47.i.i.i = add nuw i64 %add38.i.i.i, %add15.i.i.i
  %376 = load ptr, ptr @w, align 8, !tbaa !5
  %add52.i.i.i = select i1 %cmp.i264.i.i, i64 5, i64 4
  %add53.i.i.i = add i64 %call2.i268.i.i, %add52.i.i.i
  %conv54.i.i.i = trunc i64 %add53.i.i.i to i32
  %call55.i.i.i = call i32 %376(i32 noundef %conv54.i.i.i) #18, !callees !26
  store i32 %call55.i.i.i, ptr %mcsec.i.i162.i, align 8, !tbaa !80
  %377 = load ptr, ptr @w, align 8, !tbaa !5
  %call56.i.i.i = call i32 %377(i32 noundef 1) #18, !callees !26
  store i32 %call56.i.i.i, ptr %sh_type.i289.i.i, align 4, !tbaa !64
  %378 = load ptr, ptr @w8, align 8, !tbaa !5
  %call57.i.i.i = call i64 %378(i64 noundef 2) #18, !callees !57
  store i64 %call57.i.i.i, ptr %sh_flags.i.i368.i, align 8, !tbaa !81
  store i64 0, ptr %sh_addr.i.i369.i, align 8, !tbaa !82
  %379 = load ptr, ptr @w8, align 8, !tbaa !5
  %call58.i.i.i = call i64 %379(i64 noundef %add47.i.i.i) #18, !callees !57
  store i64 %call58.i.i.i, ptr %sh_offset59.i.i.i, align 8, !tbaa !63
  %380 = load ptr, ptr @w8, align 8, !tbaa !5
  %sub.ptr.lhs.cast.i290.i.i = ptrtoint ptr %mlocp.3.ph.i344.i to i64
  %sub.ptr.sub.i292.i.i = sub i64 %sub.ptr.lhs.cast.i290.i.i, %sub.ptr.rhs.cast.i250.i
  %call60.i.i.i = call i64 %380(i64 noundef %sub.ptr.sub.i292.i.i) #18, !callees !57
  store i64 %call60.i.i.i, ptr %sh_size61.i.i.i, align 8, !tbaa !59
  store i32 0, ptr %sh_link.i293.i.i, align 8, !tbaa !62
  store i32 0, ptr %sh_info.i294.i.i, align 4, !tbaa !65
  %381 = load ptr, ptr @w8, align 8, !tbaa !5
  %call62.i.i.i = call i64 %381(i64 noundef 8) #18, !callees !57
  store i64 %call62.i.i.i, ptr %sh_addralign.i.i370.i, align 8, !tbaa !83
  %382 = load ptr, ptr @w8, align 8, !tbaa !5
  %call63.i.i.i = call i64 %382(i64 noundef 8) #18, !callees !57
  store i64 %call63.i.i.i, ptr %sh_entsize.i295.i.i, align 8, !tbaa !66
  %call64.i.i.i = call fastcc i64 @uwrite(ptr noundef nonnull %mcsec.i.i162.i, i64 noundef 64) #18
  %cmp65.i.i.i = icmp slt i64 %call64.i.i.i, 0
  br i1 %cmp65.i.i.i, label %append64.exit.i.i, label %if.end68.i.i.i

if.end68.i.i.i:                                   ; preds = %if.end46.i.i.i
  %383 = load ptr, ptr @w, align 8, !tbaa !5
  %conv69.i.i.i = trunc i64 %call2.i268.i.i to i32
  %call70.i.i371.i = call i32 %383(i32 noundef %conv69.i.i.i) #18, !callees !26
  store i32 %call70.i.i371.i, ptr %mcsec.i.i162.i, align 8, !tbaa !80
  %384 = load ptr, ptr @w, align 8, !tbaa !5
  %..i.i372.i = select i1 %cmp.i264.i.i, i32 4, i32 9
  %call76.i.i.i = call i32 %384(i32 noundef %..i.i372.i) #18
  store i32 %call76.i.i.i, ptr %sh_type.i289.i.i, align 4, !tbaa !64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %sh_flags.i.i368.i, i8 0, i64 16, i1 false) #18
  %385 = load ptr, ptr @w8, align 8, !tbaa !5
  %add84.i.i.i = add i64 %add47.i.i.i, %sub.ptr.sub.i292.i.i
  %call85.i.i.i = call i64 %385(i64 noundef %add84.i.i.i) #18, !callees !57
  store i64 %call85.i.i.i, ptr %sh_offset59.i.i.i, align 8, !tbaa !63
  %386 = load ptr, ptr @w8, align 8, !tbaa !5
  %sub.ptr.lhs.cast87.i.i.i = ptrtoint ptr %mrelp.3.ph.i343.i to i64
  %sub.ptr.rhs.cast88.i.i.i = ptrtoint ptr %call.i136.i209.i to i64
  %sub.ptr.sub89.i.i.i = sub i64 %sub.ptr.lhs.cast87.i.i.i, %sub.ptr.rhs.cast88.i.i.i
  %call90.i.i373.i = call i64 %386(i64 noundef %sub.ptr.sub89.i.i.i) #18, !callees !57
  store i64 %call90.i.i373.i, ptr %sh_size61.i.i.i, align 8, !tbaa !59
  %387 = load ptr, ptr @w, align 8, !tbaa !5
  %call92.i.i.i = call i32 %387(i32 noundef %symsec_sh_link.2.ph.i346.i) #18, !callees !26
  store i32 %call92.i.i.i, ptr %sh_link.i293.i.i, align 8, !tbaa !62
  %388 = load ptr, ptr @w, align 8, !tbaa !5
  %call94.i.i.i = call i32 %388(i32 noundef %retval.0.i.i277.i.i) #18, !callees !26
  store i32 %call94.i.i.i, ptr %sh_info.i294.i.i, align 4, !tbaa !65
  %389 = load ptr, ptr @w8, align 8, !tbaa !5
  %call96.i.i.i = call i64 %389(i64 noundef 8) #18, !callees !57
  store i64 %call96.i.i.i, ptr %sh_addralign.i.i370.i, align 8, !tbaa !83
  %390 = load ptr, ptr @w8, align 8, !tbaa !5
  %call99.i.i.i = call i64 %390(i64 noundef %conv.i263.i.i) #18, !callees !57
  store i64 %call99.i.i.i, ptr %sh_entsize.i295.i.i, align 8, !tbaa !66
  %call101.i.i374.i = call fastcc i64 @uwrite(ptr noundef nonnull %mcsec.i.i162.i, i64 noundef 64) #18
  %cmp102.i.i.i = icmp slt i64 %call101.i.i374.i, 0
  br i1 %cmp102.i.i.i, label %append64.exit.i.i, label %if.end105.i.i.i

if.end105.i.i.i:                                  ; preds = %if.end68.i.i.i
  %call109.i.i375.i = call fastcc i64 @uwrite(ptr noundef nonnull %call.i139.i220.i, i64 noundef %sub.ptr.sub.i292.i.i) #18
  %cmp110.i.i.i = icmp slt i64 %call109.i.i375.i, 0
  br i1 %cmp110.i.i.i, label %append64.exit.i.i, label %if.end113.i.i.i

if.end113.i.i.i:                                  ; preds = %if.end105.i.i.i
  %call117.i.i376.i = call fastcc i64 @uwrite(ptr noundef nonnull %call.i136.i209.i, i64 noundef %sub.ptr.sub89.i.i.i) #18
  %cmp118.i.i377.i = icmp slt i64 %call117.i.i376.i, 0
  br i1 %cmp118.i.i377.i, label %append64.exit.i.i, label %if.end128.i.i.i

if.end128.i.i.i:                                  ; preds = %if.end113.i.i.i
  %391 = load ptr, ptr @w8, align 8, !tbaa !5
  %call122.i.i.i = call i64 %391(i64 noundef %add15.i.i.i) #18, !callees !57
  store i64 %call122.i.i.i, ptr %e_shoff.i164.i, align 8, !tbaa !56
  %392 = load ptr, ptr @file_map, align 8, !tbaa !5
  store ptr %392, ptr @file_ptr, align 8, !tbaa !5
  %call129.i.i.i = call fastcc i64 @uwrite(ptr noundef nonnull %21, i64 noundef 64) #18
  %call129.lobit.i.i.i = ashr i64 %call129.i.i.i, 63
  %393 = trunc i64 %call129.lobit.i.i.i to i32
  br label %append64.exit.i.i

append64.exit.i.i:                                ; preds = %if.end128.i.i.i, %if.end113.i.i.i, %if.end105.i.i.i, %if.end68.i.i.i, %if.end46.i.i.i, %if.end36.i.i.i, %ulseek.exit195.i.i.i, %ulseek.exit195.thread.i.i.i, %if.end24.i.i.i, %if.end.i288.i.i, %ulseek.exit.i287.i.i, %ulseek.exit.thread.i286.i.i
  %retval.0.i296.i.i = phi i32 [ -1, %ulseek.exit.i287.i.i ], [ -1, %if.end.i288.i.i ], [ -1, %if.end24.i.i.i ], [ -1, %ulseek.exit195.i.i.i ], [ -1, %if.end36.i.i.i ], [ -1, %if.end46.i.i.i ], [ -1, %if.end68.i.i.i ], [ -1, %if.end105.i.i.i ], [ -1, %if.end113.i.i.i ], [ %393, %if.end128.i.i.i ], [ -1, %ulseek.exit.thread.i286.i.i ], [ -1, %ulseek.exit195.thread.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %mcsec.i.i162.i) #18
  br label %do64.exit.i

do64.exit.i:                                      ; preds = %append64.exit.i.i, %land.lhs.true53.i351.i, %cleanup.i259.i.i, %cleanup.thread.i.i342.i, %cleanup.i322.i, %if.then18.i.i
  %result.3.i378.i = phi i32 [ %retval.0.i296.i.i, %append64.exit.i.i ], [ 0, %land.lhs.true53.i351.i ], [ 0, %if.then18.i.i ], [ -1, %cleanup.i322.i ], [ -1, %cleanup.thread.i.i342.i ], [ -1, %cleanup.i259.i.i ]
  call void @free(ptr noundef %call.i136.i209.i) #18
  call void @free(ptr noundef %call.i139.i220.i) #18
  %cmp106.i = icmp slt i32 %result.3.i378.i, 0
  br i1 %cmp106.i, label %out.i, label %sw.epilog110.i

sw.epilog110.i:                                   ; preds = %do64.exit.i, %tot64_relsize.exit.i.i, %for.body.i.i193.i, %get_shstrndx64.exit.i.i, %do32.exit.i, %tot32_relsize.exit.i.i, %for.body.i.i.i, %get_shstrndx32.exit.i.i
  %call111.i = call fastcc i32 @write_file(ptr noundef %6) #18
  br label %out.i

out.i:                                            ; preds = %sw.epilog110.i, %do64.exit.i, %if.then12.i.i, %umalloc.exit.thread.i218.i, %if.then90.i, %do32.exit.i, %if.then13.i159.i, %umalloc.exit.thread.i.i, %if.then64.i, %sw.default49.i, %sw.default32.i, %if.then28.i, %sw.default.i, %mmap_file.exit.i, %mmap_file.exit.thread.i
  %rc.0.i = phi i32 [ -1, %sw.default.i ], [ -1, %if.then28.i ], [ -1, %sw.default32.i ], [ -1, %sw.default49.i ], [ %call111.i, %sw.epilog110.i ], [ -1, %if.then64.i ], [ -1, %do32.exit.i ], [ -1, %mmap_file.exit.i ], [ -1, %mmap_file.exit.thread.i ], [ -1, %if.then90.i ], [ -1, %if.then13.i159.i ], [ -1, %umalloc.exit.thread.i.i ], [ -1, %umalloc.exit.thread.i218.i ], [ -1, %if.then12.i.i ], [ -1, %do64.exit.i ]
  %394 = load ptr, ptr @file_append, align 8, !tbaa !5
  call void @free(ptr noundef %394) #18
  store ptr null, ptr @file_append, align 8, !tbaa !5
  store i64 0, ptr @file_append_size, align 8, !tbaa !16
  store i1 false, ptr @file_updated, align 4
  %.b.i381.i = load i1, ptr @mmap_failed, align 4
  %395 = load ptr, ptr @file_map, align 8, !tbaa !5
  br i1 %.b.i381.i, label %if.else.i384.i, label %if.then.i383.i

if.then.i383.i:                                   ; preds = %out.i
  %396 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @sb, i64 0, i32 8), align 8, !tbaa !11
  %call.i382.i = call i32 @munmap(ptr noundef %395, i64 noundef %396) #18
  br label %do_file.exit

if.else.i384.i:                                   ; preds = %out.i
  call void @free(ptr noundef %395) #18
  br label %do_file.exit

do_file.exit:                                     ; preds = %if.else.i384.i, %if.then.i383.i
  store ptr null, ptr @file_map, align 8, !tbaa !5
  %tobool.not = icmp eq i32 %rc.0.i, 0
  br i1 %tobool.not, label %cleanup, label %if.then15

if.then15:                                        ; preds = %do_file.exit
  %397 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %397, ptr noundef nonnull @.str.2, ptr noundef %6) #19
  %inc = add nsw i32 %n_error.068, 1
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %do_file.exit, %land.lhs.true
  %n_error.2 = phi i32 [ %n_error.068, %land.lhs.true ], [ %inc, %if.then15 ], [ %n_error.068, %do_file.exit ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %lftr.wideiv, %argc
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %cleanup
  %tobool20 = icmp ne i32 %n_error.2, 0
  %lnot.ext = zext i1 %tobool20 to i32
  br label %cleanup22

cleanup22:                                        ; preds = %for.end, %if.then, %sw.default
  %retval.0 = phi i32 [ 0, %sw.default ], [ 0, %if.then ], [ %lnot.ext, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind
declare i32 @getopt(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define internal i32 @w4nat(i32 noundef returned %x) #6 {
entry:
  ret i32 %x
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define internal i32 @w2nat(i16 noundef zeroext %x) #6 {
entry:
  %conv = zext i16 %x to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define internal i64 @w8nat(i64 noundef returned %x) #6 {
entry:
  ret i64 %x
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn uwtable
define internal i32 @w4rev(i32 noundef %x) #7 {
entry:
  %or11 = tail call i32 @llvm.bswap.i32(i32 %x)
  ret i32 %or11
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn uwtable
define internal i32 @w2rev(i16 noundef zeroext %x) #7 {
entry:
  %rev = tail call i16 @llvm.bswap.i16(i16 %x)
  %or = zext i16 %rev to i32
  ret i32 %or
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn uwtable
define internal i64 @w8rev(i64 noundef %x) #7 {
entry:
  %or27 = tail call i64 @llvm.bswap.i64(i64 %x)
  ret i64 %or27
}

; Function Attrs: nounwind uwtable
define internal i32 @make_nop_x86(ptr nocapture noundef readonly %map, i64 noundef %offset) #0 {
entry:
  %add.ptr = getelementptr i8, ptr %map, i64 %offset
  %0 = load i32, ptr %add.ptr, align 4, !tbaa !9
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i64 -1
  %1 = load i8, ptr %add.ptr2, align 1, !tbaa !17
  %cmp3.not = icmp eq i8 %1, -24
  br i1 %cmp3.not, label %if.end6, label %cleanup

if.end6:                                          ; preds = %if.end
  %sub = add i64 %offset, -1
  %2 = load ptr, ptr @file_map, align 8, !tbaa !5
  %add.ptr.i = getelementptr i8, ptr %2, i64 %sub
  store ptr %add.ptr.i, ptr @file_ptr, align 8, !tbaa !5
  %cmp.i = icmp ult ptr %add.ptr.i, %2
  br i1 %cmp.i, label %ulseek.exit.thread, label %ulseek.exit

ulseek.exit.thread:                               ; preds = %if.end6
  %3 = load ptr, ptr @stderr, align 8, !tbaa !5
  %4 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 24, i64 1, ptr %3) #21
  br label %cleanup

ulseek.exit:                                      ; preds = %if.end6
  %cmp7 = icmp slt i64 %sub, 0
  br i1 %cmp7, label %cleanup, label %if.end10

if.end10:                                         ; preds = %ulseek.exit
  %5 = load ptr, ptr @ideal_nop, align 8, !tbaa !5
  %call11 = tail call fastcc i64 @uwrite(ptr noundef %5, i64 noundef 5)
  %call11.lobit = ashr i64 %call11, 63
  %6 = trunc i64 %call11.lobit to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %ulseek.exit, %ulseek.exit.thread, %if.end, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ -1, %if.end ], [ -1, %ulseek.exit ], [ %6, %if.end10 ], [ -1, %ulseek.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define internal i32 @make_nop_arm(ptr nocapture noundef readonly %map, i64 noundef %offset) #0 {
entry:
  %add.ptr = getelementptr i8, ptr %map, i64 %offset
  %0 = load ptr, ptr @bl_mcount_arm, align 8, !tbaa !5
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %add.ptr, ptr noundef nonnull dereferenceable(4) %0, i64 4)
  %cmp = icmp eq i32 %bcmp, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %add.ptr1 = getelementptr inbounds i8, ptr %add.ptr, i64 -4
  %1 = load ptr, ptr @push_arm, align 8, !tbaa !5
  %bcmp33 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %add.ptr1, ptr noundef nonnull dereferenceable(4) %1, i64 4)
  %cmp3 = icmp eq i32 %bcmp33, 0
  %sub = add i64 %offset, -4
  %spec.select = select i1 %cmp3, i32 2, i32 1
  %spec.select34 = select i1 %cmp3, i64 %sub, i64 %offset
  br label %if.end12

if.else:                                          ; preds = %entry
  %add.ptr5 = getelementptr inbounds i8, ptr %add.ptr, i64 -2
  %2 = load ptr, ptr @push_bl_mcount_thumb, align 8, !tbaa !5
  %bcmp32 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %add.ptr5, ptr noundef nonnull dereferenceable(6) %2, i64 6)
  %cmp7 = icmp eq i32 %bcmp32, 0
  br i1 %cmp7, label %if.then8, label %cleanup

if.then8:                                         ; preds = %if.else
  %sub9 = add i64 %offset, -2
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.then
  %storemerge.in = phi ptr [ @ideal_nop2_thumb, %if.then8 ], [ @ideal_nop4_arm, %if.then ]
  %cnt.1 = phi i32 [ 3, %if.then8 ], [ %spec.select, %if.then ]
  %nop_size.0 = phi i64 [ 2, %if.then8 ], [ 4, %if.then ]
  %off.1 = phi i64 [ %sub9, %if.then8 ], [ %spec.select34, %if.then ]
  %storemerge = load ptr, ptr %storemerge.in, align 8, !tbaa !5
  store ptr %storemerge, ptr @ideal_nop, align 8, !tbaa !5
  %3 = load ptr, ptr @file_map, align 8, !tbaa !5
  %add.ptr.i = getelementptr i8, ptr %3, i64 %off.1
  store ptr %add.ptr.i, ptr @file_ptr, align 8, !tbaa !5
  %cmp.i = icmp ult ptr %add.ptr.i, %3
  br i1 %cmp.i, label %ulseek.exit.thread, label %ulseek.exit

ulseek.exit.thread:                               ; preds = %if.end12
  %4 = load ptr, ptr @stderr, align 8, !tbaa !5
  %5 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 24, i64 1, ptr %4) #21
  br label %cleanup

ulseek.exit:                                      ; preds = %if.end12
  %cmp14 = icmp slt i64 %off.1, 0
  br i1 %cmp14, label %cleanup, label %do.body.preheader

do.body.preheader:                                ; preds = %ulseek.exit
  %call1737 = tail call fastcc i64 @uwrite(ptr noundef %storemerge, i64 noundef %nop_size.0)
  %cmp1838 = icmp slt i64 %call1737, 0
  br i1 %cmp1838, label %cleanup, label %do.cond

do.cond:                                          ; preds = %do.cond.do.body_crit_edge, %do.body.preheader
  %cnt.239 = phi i32 [ %dec, %do.cond.do.body_crit_edge ], [ %cnt.1, %do.body.preheader ]
  %cmp22 = icmp sgt i32 %cnt.239, 1
  br i1 %cmp22, label %do.cond.do.body_crit_edge, label %cleanup

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  %dec = add nsw i32 %cnt.239, -1
  %.pre = load ptr, ptr @ideal_nop, align 8, !tbaa !5
  %call17 = tail call fastcc i64 @uwrite(ptr noundef %.pre, i64 noundef %nop_size.0)
  %cmp18 = icmp slt i64 %call17, 0
  br i1 %cmp18, label %cleanup, label %do.cond

cleanup:                                          ; preds = %do.cond.do.body_crit_edge, %do.cond, %do.body.preheader, %ulseek.exit, %ulseek.exit.thread, %if.else
  %retval.0 = phi i32 [ -1, %if.else ], [ -1, %ulseek.exit ], [ -1, %ulseek.exit.thread ], [ -1, %do.body.preheader ], [ 0, %do.cond ], [ -1, %do.cond.do.body_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define internal i32 @arm_is_fake_mcount(ptr nocapture noundef readonly %rp) #0 {
entry:
  %0 = load ptr, ptr @w, align 8, !tbaa !5
  %r_info = getelementptr inbounds %struct.Elf32_Rel, ptr %rp, i64 0, i32 1
  %1 = load i32, ptr %r_info, align 4, !tbaa !40
  %call = tail call i32 %0(i32 noundef %1) #18, !callees !26
  %trunc = trunc i32 %call to i8
  switch i8 %trunc, label %sw.epilog [
    i8 10, label %return
    i8 28, label %return
    i8 1, label %return
  ]

sw.epilog:                                        ; preds = %entry
  br label %return

return:                                           ; preds = %sw.epilog, %entry, %entry, %entry
  %retval.0 = phi i32 [ 1, %sw.epilog ], [ 0, %entry ], [ 0, %entry ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define internal i32 @make_nop_arm64(ptr nocapture noundef readonly %map, i64 noundef %offset) #0 {
entry:
  %add.ptr = getelementptr i8, ptr %map, i64 %offset
  %0 = load i32, ptr %add.ptr, align 4, !tbaa !9
  %cmp.not = icmp eq i32 %0, -1811939328
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @file_map, align 8, !tbaa !5
  %add.ptr.i = getelementptr i8, ptr %1, i64 %offset
  store ptr %add.ptr.i, ptr @file_ptr, align 8, !tbaa !5
  %cmp.i = icmp ult ptr %add.ptr.i, %1
  br i1 %cmp.i, label %ulseek.exit.thread, label %ulseek.exit

ulseek.exit.thread:                               ; preds = %if.end
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  %3 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 24, i64 1, ptr %2) #21
  br label %cleanup

ulseek.exit:                                      ; preds = %if.end
  %cmp1 = icmp slt i64 %offset, 0
  br i1 %cmp1, label %cleanup, label %if.end3

if.end3:                                          ; preds = %ulseek.exit
  %4 = load ptr, ptr @ideal_nop, align 8, !tbaa !5
  %call4 = tail call fastcc i64 @uwrite(ptr noundef %4, i64 noundef 4)
  %call4.lobit = ashr i64 %call4, 63
  %5 = trunc i64 %call4.lobit to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %ulseek.exit, %ulseek.exit.thread, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ -1, %ulseek.exit ], [ %5, %if.end3 ], [ -1, %ulseek.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define internal i32 @arm64_is_fake_mcount(ptr nocapture noundef readonly %rp) #0 {
entry:
  %0 = load ptr, ptr @w8, align 8, !tbaa !5
  %r_info = getelementptr inbounds %struct.Elf64_Rel, ptr %rp, i64 0, i32 1
  %1 = load i64, ptr %r_info, align 8, !tbaa !84
  %call = tail call i64 %0(i64 noundef %1) #18, !callees !57
  %and = and i64 %call, 4294967295
  %cmp = icmp ne i64 %and, 283
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @MIPS32_is_fake_mcount(ptr nocapture noundef readonly %rp) #0 {
entry:
  %0 = load ptr, ptr @w, align 8, !tbaa !5
  %1 = load i32, ptr %rp, align 4, !tbaa !44
  %call = tail call i32 %0(i32 noundef %1) #18, !callees !26
  %2 = load i32, ptr @MIPS32_is_fake_mcount.old_r_offset, align 4, !tbaa !9
  %cmp = icmp ne i32 %2, -1
  %sub = sub i32 %call, %2
  %cmp1 = icmp eq i32 %sub, 4
  %3 = select i1 %cmp, i1 %cmp1, i1 false
  %land.ext = zext i1 %3 to i32
  store i32 %call, ptr @MIPS32_is_fake_mcount.old_r_offset, align 4, !tbaa !9
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal i64 @MIPS64_r_sym(ptr nocapture noundef readonly %rp) #0 {
entry:
  %0 = load ptr, ptr @w, align 8, !tbaa !5
  %r_info = getelementptr inbounds %struct.Elf64_Rel, ptr %rp, i64 0, i32 1
  %1 = load i64, ptr %r_info, align 8, !tbaa !84
  %.compoundliteral.sroa.0.0.extract.trunc = trunc i64 %1 to i32
  %call = tail call i32 %0(i32 noundef %.compoundliteral.sroa.0.0.extract.trunc) #18, !callees !26
  %conv = zext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: nounwind uwtable
define internal void @MIPS64_r_info(ptr nocapture noundef writeonly %rp, i32 noundef %sym, i32 noundef %type) #0 {
entry:
  %0 = load ptr, ptr @w, align 8, !tbaa !5
  %call = tail call i32 %0(i32 noundef %sym) #18, !callees !26
  %.compoundliteral.sroa.5.0.insert.ext = zext i32 %type to i64
  %.compoundliteral.sroa.5.0.insert.shift = shl i64 %.compoundliteral.sroa.5.0.insert.ext, 56
  %.compoundliteral.sroa.0.0.insert.ext = zext i32 %call to i64
  %.compoundliteral.sroa.0.0.insert.insert = or i64 %.compoundliteral.sroa.5.0.insert.shift, %.compoundliteral.sroa.0.0.insert.ext
  %r_info = getelementptr inbounds %struct.Elf64_Rel, ptr %rp, i64 0, i32 1
  store i64 %.compoundliteral.sroa.0.0.insert.insert, ptr %r_info, align 8, !tbaa !84
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @MIPS64_is_fake_mcount(ptr nocapture noundef readonly %rp) #0 {
entry:
  %0 = load ptr, ptr @w8, align 8, !tbaa !5
  %1 = load i64, ptr %rp, align 8, !tbaa !74
  %call = tail call i64 %0(i64 noundef %1) #18, !callees !57
  %2 = load i64, ptr @MIPS64_is_fake_mcount.old_r_offset, align 8, !tbaa !16
  %cmp = icmp ne i64 %2, -1
  %sub = sub i64 %call, %2
  %cmp1 = icmp eq i64 %sub, 4
  %3 = select i1 %cmp, i1 %cmp1, i1 false
  %land.ext = zext i1 %3 to i32
  store i64 %call, ptr @MIPS64_is_fake_mcount.old_r_offset, align 8, !tbaa !16
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @write_file(ptr noundef %fname) unnamed_addr #0 {
entry:
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %fname) #20
  %add = add i64 %call, 4
  %vla = alloca i8, i64 %add, align 16
  %.b = load i1, ptr @file_updated, align 4
  br i1 %.b, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %vla, ptr noundef nonnull @.str.33, ptr noundef %fname) #18
  %0 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @sb, i64 0, i32 3), align 8, !tbaa !15
  %call2 = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %vla, i32 noundef 577, i32 noundef %0) #18
  store i32 %call2, ptr @fd_map, align 4, !tbaa !9
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @perror(ptr noundef %fname) #19
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %1 = load ptr, ptr @file_map, align 8, !tbaa !5
  %2 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @sb, i64 0, i32 8), align 8, !tbaa !11
  %call5 = tail call i64 @write(i32 noundef %call2, ptr noundef %1, i64 noundef %2) #18
  %3 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @sb, i64 0, i32 8), align 8, !tbaa !11
  %cmp6.not = icmp eq i64 %call5, %3
  br i1 %cmp6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end4
  tail call void @perror(ptr noundef nonnull @.str.13) #19
  %4 = load i32, ptr @fd_map, align 4, !tbaa !9
  %call8 = tail call i32 @close(i32 noundef %4) #18
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %5 = load i64, ptr @file_append_size, align 8, !tbaa !16
  %tobool10.not = icmp eq i64 %5, 0
  br i1 %tobool10.not, label %if.end17, label %if.then11

if.then11:                                        ; preds = %if.end9
  %6 = load i32, ptr @fd_map, align 4, !tbaa !9
  %7 = load ptr, ptr @file_append, align 8, !tbaa !5
  %call12 = tail call i64 @write(i32 noundef %6, ptr noundef %7, i64 noundef %5) #18
  %8 = load i64, ptr @file_append_size, align 8, !tbaa !16
  %cmp13.not = icmp eq i64 %call12, %8
  br i1 %cmp13.not, label %if.end17, label %if.then14

if.then14:                                        ; preds = %if.then11
  tail call void @perror(ptr noundef nonnull @.str.13) #19
  %9 = load i32, ptr @fd_map, align 4, !tbaa !9
  %call15 = tail call i32 @close(i32 noundef %9) #18
  br label %cleanup

if.end17:                                         ; preds = %if.then11, %if.end9
  %10 = load i32, ptr @fd_map, align 4, !tbaa !9
  %call18 = tail call i32 @close(i32 noundef %10) #18
  %call19 = call i32 @rename(ptr noundef nonnull %vla, ptr noundef %fname) #18
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then21, label %cleanup

if.then21:                                        ; preds = %if.end17
  tail call void @perror(ptr noundef %fname) #19
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.end17, %if.then14, %if.then7, %if.then3, %entry
  %retval.0 = phi i32 [ -1, %if.then3 ], [ -1, %if.then7 ], [ -1, %if.then14 ], [ -1, %if.then21 ], [ 0, %entry ], [ 0, %if.end17 ]
  ret i32 %retval.0
}

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #9

declare i32 @close(i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @__fxstat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define internal fastcc i64 @uwrite(ptr nocapture noundef readonly %buf, i64 noundef %count) unnamed_addr #0 {
entry:
  store i1 true, ptr @file_updated, align 4
  %0 = load ptr, ptr @file_ptr, align 8, !tbaa !5
  %add.ptr = getelementptr i8, ptr %0, i64 %count
  %1 = load ptr, ptr @file_end, align 8, !tbaa !5
  %cmp.not = icmp ult ptr %add.ptr, %1
  br i1 %cmp.not, label %if.end12, label %if.then

if.then:                                          ; preds = %entry
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %2 = load i64, ptr @file_append_size, align 8, !tbaa !16
  %cmp2 = icmp ugt i64 %sub.ptr.sub, %2
  %3 = load ptr, ptr @file_append, align 8, !tbaa !5
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %call = tail call ptr @realloc(ptr noundef %3, i64 noundef %sub.ptr.sub) #23
  store ptr %call, ptr @file_append, align 8, !tbaa !5
  store i64 %sub.ptr.sub, ptr @file_append_size, align 8, !tbaa !16
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %4 = phi ptr [ %call, %if.then3 ], [ %3, %if.then ]
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.then4, label %cleanup

if.then4:                                         ; preds = %if.end
  tail call void @perror(ptr noundef nonnull @.str.13) #19
  %5 = load ptr, ptr @file_append, align 8, !tbaa !5
  tail call void @free(ptr noundef %5) #18
  store ptr null, ptr @file_append, align 8, !tbaa !5
  store i64 0, ptr @file_append_size, align 8, !tbaa !16
  store i1 false, ptr @file_updated, align 4
  %.b.i = load i1, ptr @mmap_failed, align 4
  %6 = load ptr, ptr @file_map, align 8, !tbaa !5
  br i1 %.b.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then4
  %7 = load i64, ptr getelementptr inbounds (%struct.stat, ptr @sb, i64 0, i32 8), align 8, !tbaa !11
  %call.i = tail call i32 @munmap(ptr noundef %6, i64 noundef %7) #18
  br label %cleanup.thread

if.else.i:                                        ; preds = %if.then4
  tail call void @free(ptr noundef %6) #18
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.else.i, %if.then.i
  store ptr null, ptr @file_map, align 8, !tbaa !5
  br label %cleanup23

cleanup:                                          ; preds = %if.end
  %cmp6 = icmp ult ptr %0, %1
  %sub.ptr.rhs.cast9 = ptrtoint ptr %0 to i64
  %sub.ptr.sub10 = sub i64 %sub.ptr.rhs.cast, %sub.ptr.rhs.cast9
  %sub = sub i64 %sub.ptr.sub, %count
  br i1 %cmp6, label %if.end12, label %if.end15

if.end12:                                         ; preds = %cleanup, %entry
  %cnt.2 = phi i64 [ %count, %entry ], [ %sub.ptr.sub10, %cleanup ]
  %tobool13.not = icmp eq i64 %cnt.2, 0
  br i1 %tobool13.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %buf, i64 %cnt.2, i1 false)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end12, %cleanup
  %idx.248 = phi i64 [ 0, %if.then14 ], [ 0, %if.end12 ], [ %sub, %cleanup ]
  %cnt.247 = phi i64 [ %cnt.2, %if.then14 ], [ 0, %if.end12 ], [ 0, %cleanup ]
  %cmp16 = icmp ult i64 %cnt.247, %count
  br i1 %cmp16, label %if.then17, label %if.end21

if.then17:                                        ; preds = %if.end15
  %8 = load ptr, ptr @file_append, align 8, !tbaa !5
  %add.ptr18 = getelementptr i8, ptr %8, i64 %idx.248
  %add.ptr19 = getelementptr i8, ptr %buf, i64 %cnt.247
  %sub20 = sub i64 %count, %cnt.247
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr18, ptr align 1 %add.ptr19, i64 %sub20, i1 false)
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.end15
  store ptr %add.ptr, ptr @file_ptr, align 8, !tbaa !5
  br label %cleanup23

cleanup23:                                        ; preds = %if.end21, %cleanup.thread
  %retval.1 = phi i64 [ %count, %if.end21 ], [ -1, %cleanup.thread ]
  ret i64 %retval.1
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn allocsize(1)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define internal i32 @fn_is_fake_mcount32(ptr nocapture noundef readnone %rp) #6 {
entry:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define internal i32 @fn_is_fake_mcount64(ptr nocapture noundef readnone %rp) #6 {
entry:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @has32_rel_mcount(ptr nocapture noundef readonly %relhdr, ptr nocapture noundef readonly %shdr0, ptr noundef readonly %shstrtab, ptr noundef %fname) unnamed_addr #0 {
entry:
  %0 = load ptr, ptr @w, align 8, !tbaa !5
  %sh_type = getelementptr inbounds %struct.Elf32_Shdr, ptr %relhdr, i64 0, i32 1
  %1 = load i32, ptr %sh_type, align 4, !tbaa !33
  %call = tail call i32 %0(i32 noundef %1) #18, !callees !26
  %cmp.not = icmp eq i32 %call, 9
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr @w, align 8, !tbaa !5
  %3 = load i32, ptr %sh_type, align 4, !tbaa !33
  %call2 = tail call i32 %2(i32 noundef %3) #18, !callees !26
  %cmp3.not = icmp eq i32 %call2, 4
  br i1 %cmp3.not, label %if.end, label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load ptr, ptr @w, align 8, !tbaa !5
  %sh_info.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %relhdr, i64 0, i32 7
  %5 = load i32, ptr %sh_info.i, align 4, !tbaa !34
  %call.i = tail call i32 %4(i32 noundef %5) #18, !callees !26
  %idxprom.i = zext i32 %call.i to i64
  %arrayidx.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr0, i64 %idxprom.i
  %6 = load ptr, ptr @w, align 8, !tbaa !5
  %7 = load i32, ptr %arrayidx.i, align 4, !tbaa !48
  %call1.i = tail call i32 %6(i32 noundef %7) #18, !callees !26
  %idxprom2.i = zext i32 %call1.i to i64
  %arrayidx3.i = getelementptr inbounds i8, ptr %shstrtab, i64 %idxprom2.i
  %call4.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(13) @.str.14, ptr noundef nonnull dereferenceable(1) %arrayidx3.i) #20
  %cmp.i = icmp eq i32 %call4.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  %8 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call5.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.15, ptr noundef %fname) #21
  br label %return

if.end.i:                                         ; preds = %if.end
  %9 = load ptr, ptr @w, align 8, !tbaa !5
  %sh_type.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr0, i64 %idxprom.i, i32 1
  %10 = load i32, ptr %sh_type.i, align 4, !tbaa !33
  %call6.i = tail call i32 %9(i32 noundef %10) #18, !callees !26
  %cmp7.not.i = icmp eq i32 %call6.i, 1
  br i1 %cmp7.not.i, label %lor.lhs.false.i, label %return

lor.lhs.false.i:                                  ; preds = %if.end.i
  %11 = load ptr, ptr @w, align 8, !tbaa !5
  %sh_flags.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %shdr0, i64 %idxprom.i, i32 2
  %12 = load i32, ptr %sh_flags.i, align 4, !tbaa !49
  %call8.i = tail call i32 %11(i32 noundef %12) #18, !callees !26
  %and.i = and i32 %call8.i, 4
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %arrayidx3.i
  br label %return

return:                                           ; preds = %lor.lhs.false.i, %if.end.i, %if.then.i, %land.lhs.true
  %retval.0 = phi ptr [ null, %land.lhs.true ], [ @.str.16, %if.then.i ], [ null, %if.end.i ], [ %spec.select.i, %lor.lhs.false.i ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn uwtable
define internal fastcc i32 @is_mcounted_section_name(ptr nocapture noundef readonly %txtname) unnamed_addr #13 {
entry:
  %call = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(6) @.str.17, ptr noundef nonnull dereferenceable(1) %txtname, i64 noundef 5) #20
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(11) @.str.18, ptr noundef nonnull dereferenceable(1) %txtname) #20
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %lor.end, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(10) @.str.19, ptr noundef nonnull dereferenceable(1) %txtname) #20
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %lor.end, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %call7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(12) @.str.20, ptr noundef nonnull dereferenceable(1) %txtname) #20
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %lor.end, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %call10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(15) @.str.21, ptr noundef nonnull dereferenceable(1) %txtname) #20
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %lor.end, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %call13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(15) @.str.22, ptr noundef nonnull dereferenceable(1) %txtname) #20
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %lor.end, label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %lor.lhs.false12
  %call16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(19) @.str.23, ptr noundef nonnull dereferenceable(1) %txtname) #20
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %lor.end, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false15
  %call19 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(14) @.str.24, ptr noundef nonnull dereferenceable(1) %txtname) #20
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false18
  %call21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(14) @.str.25, ptr noundef nonnull dereferenceable(1) %txtname) #20
  %cmp22 = icmp eq i32 %call21, 0
  %phi.cast = zext i1 %cmp22 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false18, %lor.lhs.false15, %lor.lhs.false12, %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %entry
  %0 = phi i32 [ 1, %lor.lhs.false18 ], [ 1, %lor.lhs.false15 ], [ 1, %lor.lhs.false12 ], [ 1, %lor.lhs.false9 ], [ 1, %lor.lhs.false6 ], [ 1, %lor.lhs.false3 ], [ 1, %lor.lhs.false ], [ 1, %entry ], [ %phi.cast, %lor.rhs ]
  ret i32 %0
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal i64 @fn_ELF64_R_SYM(ptr nocapture noundef readonly %rp) #0 {
entry:
  %0 = load ptr, ptr @w8, align 8, !tbaa !5
  %r_info = getelementptr inbounds %struct.Elf64_Rel, ptr %rp, i64 0, i32 1
  %1 = load i64, ptr %r_info, align 8, !tbaa !84
  %call = tail call i64 %0(i64 noundef %1) #18, !callees !57
  %shr = lshr i64 %call, 32
  ret i64 %shr
}

; Function Attrs: nounwind uwtable
define internal void @fn_ELF64_R_INFO(ptr nocapture noundef writeonly %rp, i32 noundef %sym, i32 noundef %type) #0 {
entry:
  %0 = load ptr, ptr @w8, align 8, !tbaa !5
  %conv = zext i32 %sym to i64
  %shl = shl nuw i64 %conv, 32
  %conv1 = zext i32 %type to i64
  %add = or i64 %shl, %conv1
  %call = tail call i64 %0(i64 noundef %add) #18, !callees !57
  %r_info = getelementptr inbounds %struct.Elf64_Rel, ptr %rp, i64 0, i32 1
  store i64 %call, ptr %r_info, align 8, !tbaa !84
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @has64_rel_mcount(ptr nocapture noundef readonly %relhdr, ptr nocapture noundef readonly %shdr0, ptr noundef readonly %shstrtab, ptr noundef %fname) unnamed_addr #0 {
entry:
  %0 = load ptr, ptr @w, align 8, !tbaa !5
  %sh_type = getelementptr inbounds %struct.Elf64_Shdr, ptr %relhdr, i64 0, i32 1
  %1 = load i32, ptr %sh_type, align 4, !tbaa !64
  %call = tail call i32 %0(i32 noundef %1) #18, !callees !26
  %cmp.not = icmp eq i32 %call, 9
  br i1 %cmp.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr @w, align 8, !tbaa !5
  %3 = load i32, ptr %sh_type, align 4, !tbaa !64
  %call2 = tail call i32 %2(i32 noundef %3) #18, !callees !26
  %cmp3.not = icmp eq i32 %call2, 4
  br i1 %cmp3.not, label %if.end, label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load ptr, ptr @w, align 8, !tbaa !5
  %sh_info.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %relhdr, i64 0, i32 7
  %5 = load i32, ptr %sh_info.i, align 4, !tbaa !65
  %call.i = tail call i32 %4(i32 noundef %5) #18, !callees !26
  %idxprom.i = zext i32 %call.i to i64
  %arrayidx.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr0, i64 %idxprom.i
  %6 = load ptr, ptr @w, align 8, !tbaa !5
  %7 = load i32, ptr %arrayidx.i, align 8, !tbaa !80
  %call1.i = tail call i32 %6(i32 noundef %7) #18, !callees !26
  %idxprom2.i = zext i32 %call1.i to i64
  %arrayidx3.i = getelementptr inbounds i8, ptr %shstrtab, i64 %idxprom2.i
  %call4.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(13) @.str.14, ptr noundef nonnull dereferenceable(1) %arrayidx3.i) #20
  %cmp.i = icmp eq i32 %call4.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  %8 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call5.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.15, ptr noundef %fname) #21
  br label %return

if.end.i:                                         ; preds = %if.end
  %9 = load ptr, ptr @w, align 8, !tbaa !5
  %sh_type.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr0, i64 %idxprom.i, i32 1
  %10 = load i32, ptr %sh_type.i, align 4, !tbaa !64
  %call6.i = tail call i32 %9(i32 noundef %10) #18, !callees !26
  %cmp7.not.i = icmp eq i32 %call6.i, 1
  br i1 %cmp7.not.i, label %lor.lhs.false.i, label %return

lor.lhs.false.i:                                  ; preds = %if.end.i
  %11 = load ptr, ptr @w8, align 8, !tbaa !5
  %sh_flags.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %shdr0, i64 %idxprom.i, i32 2
  %12 = load i64, ptr %sh_flags.i, align 8, !tbaa !81
  %call8.i = tail call i64 %11(i64 noundef %12) #18, !callees !57
  %and.i = and i64 %call8.i, 4
  %tobool.not.i = icmp eq i64 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %arrayidx3.i
  br label %return

return:                                           ; preds = %lor.lhs.false.i, %if.end.i, %if.then.i, %land.lhs.true
  %retval.0 = phi ptr [ null, %land.lhs.true ], [ @.str.16, %if.then.i ], [ null, %if.end.i ], [ %spec.select.i, %lor.lhs.false.i ]
  ret ptr %retval.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @rename(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #16

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn allocsize(1) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { argmemonly mustprogress nofree nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { argmemonly nofree nounwind readonly willreturn }
attributes #16 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { argmemonly nofree nounwind willreturn writeonly }
attributes #18 = { nounwind }
attributes #19 = { cold }
attributes #20 = { nounwind readonly willreturn }
attributes #21 = { cold nounwind }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { nounwind allocsize(1) }

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
!11 = !{!12, !13, i64 48}
!12 = !{!"stat", !13, i64 0, !13, i64 8, !13, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !14, i64 72, !14, i64 88, !14, i64 104, !7, i64 120}
!13 = !{!"long", !7, i64 0}
!14 = !{!"timespec", !13, i64 0, !13, i64 8}
!15 = !{!12, !10, i64 24}
!16 = !{!13, !13, i64 0}
!17 = !{!7, !7, i64 0}
!18 = !{!19, !20, i64 16}
!19 = !{!"", !7, i64 0, !20, i64 16, !20, i64 18, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !20, i64 40, !20, i64 42, !20, i64 44, !20, i64 46, !20, i64 48, !20, i64 50}
!20 = !{!"short", !7, i64 0}
!21 = !{ptr @w2nat, ptr @w2rev}
!22 = !{!19, !20, i64 18}
!23 = !{!19, !20, i64 40}
!24 = !{!19, !20, i64 46}
!25 = !{!19, !10, i64 32}
!26 = !{ptr @w4nat, ptr @w4rev}
!27 = !{!19, !20, i64 48}
!28 = !{!29, !10, i64 20}
!29 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36}
!30 = !{!19, !20, i64 50}
!31 = !{!29, !10, i64 24}
!32 = !{!29, !10, i64 16}
!33 = !{!29, !10, i64 4}
!34 = !{!29, !10, i64 28}
!35 = !{!29, !10, i64 36}
!36 = !{!37, !7, i64 12}
!37 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !7, i64 12, !7, i64 13, !20, i64 14}
!38 = !{!37, !20, i64 14}
!39 = !{!37, !10, i64 4}
!40 = !{!41, !10, i64 4}
!41 = !{!"", !10, i64 0, !10, i64 4}
!42 = !{!37, !10, i64 0}
!43 = !{ptr @MIPS32_is_fake_mcount, ptr @arm_is_fake_mcount, ptr @fn_is_fake_mcount32}
!44 = !{!41, !10, i64 0}
!45 = !{!46, !10, i64 8}
!46 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8}
!47 = !{ptr @make_nop_arm, ptr @make_nop_arm64, ptr @make_nop_x86}
!48 = !{!29, !10, i64 0}
!49 = !{!29, !10, i64 8}
!50 = !{!29, !10, i64 12}
!51 = !{!29, !10, i64 32}
!52 = !{!53, !20, i64 52}
!53 = !{!"", !7, i64 0, !20, i64 16, !20, i64 18, !10, i64 20, !13, i64 24, !13, i64 32, !13, i64 40, !10, i64 48, !20, i64 52, !20, i64 54, !20, i64 56, !20, i64 58, !20, i64 60, !20, i64 62}
!54 = !{!53, !20, i64 58}
!55 = !{!53, !20, i64 18}
!56 = !{!53, !13, i64 40}
!57 = !{ptr @w8nat, ptr @w8rev}
!58 = !{!53, !20, i64 60}
!59 = !{!60, !13, i64 32}
!60 = !{!"", !10, i64 0, !10, i64 4, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !10, i64 40, !10, i64 44, !13, i64 48, !13, i64 56}
!61 = !{!53, !20, i64 62}
!62 = !{!60, !10, i64 40}
!63 = !{!60, !13, i64 24}
!64 = !{!60, !10, i64 4}
!65 = !{!60, !10, i64 44}
!66 = !{!60, !13, i64 56}
!67 = !{!68, !7, i64 4}
!68 = !{!"", !10, i64 0, !7, i64 4, !7, i64 5, !20, i64 6, !13, i64 8, !13, i64 16}
!69 = !{!68, !20, i64 6}
!70 = !{!68, !13, i64 8}
!71 = !{ptr @MIPS64_r_sym, ptr @fn_ELF64_R_SYM}
!72 = !{!68, !10, i64 0}
!73 = !{ptr @MIPS64_is_fake_mcount, ptr @arm64_is_fake_mcount, ptr @fn_is_fake_mcount64}
!74 = !{!75, !13, i64 0}
!75 = !{!"", !13, i64 0, !13, i64 8}
!76 = !{ptr @MIPS64_r_info, ptr @fn_ELF64_R_INFO}
!77 = !{!78, !13, i64 16}
!78 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16}
!79 = !{i64 0, i64 8, !16, i64 8, i64 8, !16}
!80 = !{!60, !10, i64 0}
!81 = !{!60, !13, i64 8}
!82 = !{!60, !13, i64 16}
!83 = !{!60, !13, i64 48}
!84 = !{!75, !13, i64 8}
