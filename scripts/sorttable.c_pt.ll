; ModuleID = '/llk/IR_all_yes/scripts/sorttable.c_pt.bc'
source_filename = "../scripts/sorttable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_mcount_loc_64 = type { ptr, ptr, i64, i64 }
%struct.elf_mcount_loc_32 = type { ptr, ptr, i32, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.Elf32_Ehdr = type { [16 x i8], i16, i16, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.Elf32_Shdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.Elf32_Sym = type { i32, i32, i32, i8, i8, i16 }
%struct.Elf64_Ehdr = type { [16 x i8], i16, i16, i32, i64, i64, i64, i32, i16, i16, i16, i16, i16, i16 }
%struct.Elf64_Shdr = type { i32, i32, i64, i64, i64, i64, i32, i32, i64, i64 }
%struct.Elf64_Sym = type { i32, i8, i8, i16, i64, i64 }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [29 x i8] c"usage: sorttable vmlinux...\0A\00", align 1
@mcount_sort_thread = dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"not a regular file: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Could not mmap file: %s\0A\00", align 1
@r = internal unnamed_addr global ptr null, align 8
@r2 = internal unnamed_addr global ptr null, align 8
@r8 = internal unnamed_addr global ptr null, align 8
@w = internal unnamed_addr global ptr null, align 8
@w8 = internal unnamed_addr global ptr null, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"unrecognized ELF data encoding %d: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"\7FELF\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"unrecognized ET_EXEC/ET_DYN file %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"unrecognized e_machine %d %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"unrecognized ET_EXEC/ET_DYN file: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"unrecognized ELF class %d %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"__ex_table\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c".symtab\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c".strtab\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c".init.data\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"incomplete mcount's sort in file: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [51 x i8] c"pthread_create mcount_sort_thread failed '%s': %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"no __ex_table in file: %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"no .symtab in file: %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"no .strtab in file: %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"main_extable_sort_needed\00", align 1
@.str.19 = private unnamed_addr constant [48 x i8] c"no main_extable_sort_needed symbol in file: %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"pthread_join failed '%s': %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [32 x i8] c"failed to sort mcount '%s': %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [50 x i8] c" grep start_mcount System.map | awk '{print $1}' \00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"get start_mcount_loc error!\00", align 1
@.str.25 = private unnamed_addr constant [49 x i8] c" grep stop_mcount System.map | awk '{print $1}' \00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"get stop_mcount_loc error!\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr nocapture noundef readonly %argv) local_unnamed_addr #0 {
entry:
  %start_buff.i.i105.i = alloca [20 x i8], align 16
  %stop_buff.i.i106.i = alloca [20 x i8], align 16
  %mstruct.i107.i = alloca %struct.elf_mcount_loc_64, align 8
  %retval167.i.i = alloca ptr, align 8
  %start_buff.i.i.i = alloca [20 x i8], align 16
  %stop_buff.i.i.i = alloca [20 x i8], align 16
  %mstruct.i.i = alloca %struct.elf_mcount_loc_32, align 8
  %retval175.i.i = alloca ptr, align 8
  %sb.i = alloca %struct.stat, align 8
  %cmp = icmp slt i32 %argc, 2
  br i1 %cmp, label %if.then, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %st_mode.i = getelementptr inbounds %struct.stat, ptr %sb.i, i64 0, i32 3
  %st_size.i = getelementptr inbounds %struct.stat, ptr %sb.i, i64 0, i32 8
  %init_data_sec.i129.i = getelementptr inbounds %struct.elf_mcount_loc_64, ptr %mstruct.i107.i, i64 0, i32 1
  %start_mcount_loc.i130.i = getelementptr inbounds %struct.elf_mcount_loc_64, ptr %mstruct.i107.i, i64 0, i32 2
  %stop_mcount_loc.i131.i = getelementptr inbounds %struct.elf_mcount_loc_64, ptr %mstruct.i107.i, i64 0, i32 3
  %init_data_sec.i.i = getelementptr inbounds %struct.elf_mcount_loc_32, ptr %mstruct.i.i, i64 0, i32 1
  %start_mcount_loc.i.i = getelementptr inbounds %struct.elf_mcount_loc_32, ptr %mstruct.i.i, i64 0, i32 2
  %stop_mcount_loc.i.i = getelementptr inbounds %struct.elf_mcount_loc_32, ptr %mstruct.i.i, i64 0, i32 3
  %wide.trip.count = zext i32 %argc to i64
  br label %for.body

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %1 = tail call i64 @fwrite(ptr nonnull @.str, i64 28, i64 1, ptr %0) #14
  br label %cleanup

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %n_error.071 = phi i32 [ 0, %for.body.lr.ph ], [ %n_error.2, %for.inc ]
  %size.068 = phi i64 [ 0, %for.body.lr.ph ], [ %size.236, %for.inc ]
  %arrayidx = getelementptr inbounds ptr, ptr %argv, i64 %indvars.iv
  %2 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %sb.i) #15
  %call.i = call i32 (ptr, i32, ...) @open(ptr noundef %2, i32 noundef 2) #15
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %mmap_file.exit.thread, label %if.end.i

mmap_file.exit.thread:                            ; preds = %for.body
  call void @perror(ptr noundef %2) #16
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %sb.i) #15
  br label %for.inc

if.end.i:                                         ; preds = %for.body
  %call.i.i = call i32 @__fxstat(i32 noundef 1, i32 noundef %call.i, ptr noundef nonnull %sb.i) #15
  %cmp2.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp2.i, label %if.then3.i, label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @perror(ptr noundef %2) #16
  br label %mmap_file.exit.thread38

if.end4.i:                                        ; preds = %if.end.i
  %3 = load i32, ptr %st_mode.i, align 8, !tbaa !9
  %and.i = and i32 %3, 61440
  %cmp5.i = icmp eq i32 %and.i, 32768
  br i1 %cmp5.i, label %if.end8.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end4.i
  %4 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call7.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.1, ptr noundef %2) #16
  br label %mmap_file.exit.thread38

if.end8.i:                                        ; preds = %if.end4.i
  %5 = load i64, ptr %st_size.i, align 8, !tbaa !14
  %call9.i = call ptr @mmap(ptr noundef null, i64 noundef %5, i32 noundef 3, i32 noundef 1, i32 noundef %call.i, i64 noundef 0) #15
  %cmp10.i = icmp eq ptr %call9.i, inttoptr (i64 -1 to ptr)
  br i1 %cmp10.i, label %mmap_file.exit.thread53, label %mmap_file.exit

mmap_file.exit.thread53:                          ; preds = %if.end8.i
  %6 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call12.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.2, ptr noundef %2) #16
  %call15.i56 = call i32 @close(i32 noundef %call.i) #15
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %sb.i) #15
  br label %if.end4

mmap_file.exit.thread38:                          ; preds = %if.then6.i, %if.then3.i
  %call15.i41 = call i32 @close(i32 noundef %call.i) #15
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %sb.i) #15
  br label %for.inc

mmap_file.exit:                                   ; preds = %if.end8.i
  %7 = load i64, ptr %st_size.i, align 8, !tbaa !14
  %call15.i = call i32 @close(i32 noundef %call.i) #15
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %sb.i) #15
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %for.inc, label %if.end4

if.end4:                                          ; preds = %mmap_file.exit, %mmap_file.exit.thread53
  %size.158 = phi i64 [ %size.068, %mmap_file.exit.thread53 ], [ %7, %mmap_file.exit ]
  %8 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %arrayidx.i = getelementptr inbounds [16 x i8], ptr %call9.i, i64 0, i64 5
  %9 = load i8, ptr %arrayidx.i, align 1, !tbaa !15
  switch i8 %9, label %sw.default.i [
    i8 1, label %sw.epilog.i
    i8 2, label %sw.bb1.i
  ]

sw.bb1.i:                                         ; preds = %if.end4
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end4
  %conv.i = zext i8 %9 to i32
  %10 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call.i28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.3, i32 noundef %conv.i, ptr noundef %8) #16
  br label %do_file.exit.thread

sw.epilog.i:                                      ; preds = %sw.bb1.i, %if.end4
  %storemerge104.i = phi ptr [ @rbe, %sw.bb1.i ], [ @rle, %if.end4 ]
  %storemerge103.i = phi ptr [ @r2be, %sw.bb1.i ], [ @r2le, %if.end4 ]
  %storemerge102.i = phi ptr [ @r8be, %sw.bb1.i ], [ @r8le, %if.end4 ]
  %storemerge101.i = phi ptr [ @wbe, %sw.bb1.i ], [ @wle, %if.end4 ]
  %storemerge.i = phi ptr [ @w8be, %sw.bb1.i ], [ @w8le, %if.end4 ]
  store ptr %storemerge104.i, ptr @r, align 8, !tbaa !5
  store ptr %storemerge103.i, ptr @r2, align 8, !tbaa !5
  store ptr %storemerge102.i, ptr @r8, align 8, !tbaa !5
  store ptr %storemerge101.i, ptr @w, align 8, !tbaa !5
  store ptr %storemerge.i, ptr @w8, align 8, !tbaa !5
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) @.str.4, ptr noundef nonnull dereferenceable(4) %call9.i, i64 4) #15
  %cmp.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.then.i29

lor.lhs.false.i:                                  ; preds = %sw.epilog.i
  %e_type.i = getelementptr inbounds %struct.Elf32_Ehdr, ptr %call9.i, i64 0, i32 1
  %call8.i = call zeroext i16 %storemerge103.i(ptr noundef nonnull %e_type.i) #15, !callees !16
  %cmp10.not.i = icmp eq i16 %call8.i, 2
  br i1 %cmp10.not.i, label %lor.lhs.false17.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %11 = load ptr, ptr @r2, align 8, !tbaa !5
  %call13.i = call zeroext i16 %11(ptr noundef nonnull %e_type.i) #15, !callees !16
  %cmp15.not.i = icmp eq i16 %call13.i, 3
  br i1 %cmp15.not.i, label %lor.lhs.false17.i, label %if.then.i29

lor.lhs.false17.i:                                ; preds = %land.lhs.true.i, %lor.lhs.false.i
  %arrayidx19.i = getelementptr inbounds [16 x i8], ptr %call9.i, i64 0, i64 6
  %12 = load i8, ptr %arrayidx19.i, align 2, !tbaa !15
  %cmp21.not.i = icmp eq i8 %12, 1
  br i1 %cmp21.not.i, label %if.end.i30, label %if.then.i29

if.then.i29:                                      ; preds = %lor.lhs.false17.i, %land.lhs.true.i, %sw.epilog.i
  %13 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call23.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.5, ptr noundef %8) #16
  br label %do_file.exit.thread

if.end.i30:                                       ; preds = %lor.lhs.false17.i
  %14 = load ptr, ptr @r2, align 8, !tbaa !5
  %e_machine.i = getelementptr inbounds %struct.Elf32_Ehdr, ptr %call9.i, i64 0, i32 2
  %call24.i = call zeroext i16 %14(ptr noundef nonnull %e_machine.i) #15, !callees !16
  switch i16 %call24.i, label %sw.default30.i [
    i16 3, label %sw.bb26.i
    i16 183, label %sw.bb26.i
    i16 243, label %sw.bb26.i
    i16 62, label %sw.bb26.i
    i16 22, label %sw.bb27.i
    i16 15, label %sw.bb28.i
    i16 20, label %sw.bb28.i
    i16 21, label %sw.bb28.i
    i16 93, label %sw.epilog35.i
    i16 195, label %sw.epilog35.i
    i16 40, label %sw.epilog35.i
    i16 189, label %sw.epilog35.i
    i16 8, label %sw.epilog35.i
    i16 94, label %sw.epilog35.i
  ]

sw.bb26.i:                                        ; preds = %if.end.i30, %if.end.i30, %if.end.i30, %if.end.i30
  br label %sw.epilog35.i

sw.bb27.i:                                        ; preds = %if.end.i30
  br label %sw.epilog35.i

sw.bb28.i:                                        ; preds = %if.end.i30, %if.end.i30, %if.end.i30
  br label %sw.epilog35.i

sw.default30.i:                                   ; preds = %if.end.i30
  %15 = load ptr, ptr @stderr, align 8, !tbaa !5
  %16 = load ptr, ptr @r2, align 8, !tbaa !5
  %call32.i = call zeroext i16 %16(ptr noundef nonnull %e_machine.i) #15, !callees !16
  %conv33.i = zext i16 %call32.i to i32
  %call34.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.6, i32 noundef %conv33.i, ptr noundef %8) #16
  br label %do_file.exit.thread

sw.epilog35.i:                                    ; preds = %sw.bb28.i, %sw.bb27.i, %sw.bb26.i, %if.end.i30, %if.end.i30, %if.end.i30, %if.end.i30, %if.end.i30, %if.end.i30
  %tobool108.not.i.i = phi i1 [ true, %if.end.i30 ], [ true, %if.end.i30 ], [ true, %if.end.i30 ], [ true, %if.end.i30 ], [ true, %if.end.i30 ], [ true, %if.end.i30 ], [ false, %sw.bb28.i ], [ false, %sw.bb27.i ], [ false, %sw.bb26.i ]
  %custom_sort.0.i = phi ptr [ null, %if.end.i30 ], [ null, %if.end.i30 ], [ null, %if.end.i30 ], [ null, %if.end.i30 ], [ null, %if.end.i30 ], [ null, %if.end.i30 ], [ @sort_relative_table, %sw.bb28.i ], [ @s390_sort_relative_table, %sw.bb27.i ], [ @sort_relative_table_with_data, %sw.bb26.i ]
  %arrayidx37.i = getelementptr inbounds [16 x i8], ptr %call9.i, i64 0, i64 4
  %17 = load i8, ptr %arrayidx37.i, align 4, !tbaa !15
  switch i8 %17, label %sw.default69.i [
    i8 1, label %sw.bb39.i
    i8 2, label %sw.bb53.i
  ]

sw.bb39.i:                                        ; preds = %sw.epilog35.i
  %18 = load ptr, ptr @r2, align 8, !tbaa !5
  %e_ehsize.i = getelementptr inbounds %struct.Elf32_Ehdr, ptr %call9.i, i64 0, i32 8
  %call40.i = call zeroext i16 %18(ptr noundef nonnull %e_ehsize.i) #15, !callees !16
  %cmp42.not.i = icmp eq i16 %call40.i, 52
  br i1 %cmp42.not.i, label %lor.lhs.false44.i, label %if.then49.i

lor.lhs.false44.i:                                ; preds = %sw.bb39.i
  %19 = load ptr, ptr @r2, align 8, !tbaa !5
  %e_shentsize.i = getelementptr inbounds %struct.Elf32_Ehdr, ptr %call9.i, i64 0, i32 11
  %call45.i = call zeroext i16 %19(ptr noundef nonnull %e_shentsize.i) #15, !callees !16
  %cmp47.not.i = icmp eq i16 %call45.i, 40
  br i1 %cmp47.not.i, label %if.end51.i, label %if.then49.i

if.then49.i:                                      ; preds = %lor.lhs.false44.i, %sw.bb39.i
  %20 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call50.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.7, ptr noundef %8) #16
  br label %do_file.exit.thread

if.end51.i:                                       ; preds = %lor.lhs.false44.i
  %21 = load ptr, ptr @r, align 8, !tbaa !5
  %e_shoff.i.i = getelementptr inbounds %struct.Elf32_Ehdr, ptr %call9.i, i64 0, i32 6
  %call.i.i31 = call i32 %21(ptr noundef nonnull %e_shoff.i.i) #15, !callees !17
  %idx.ext.i.i = zext i32 %call.i.i31 to i64
  %add.ptr.i.i = getelementptr inbounds i8, ptr %call9.i, i64 %idx.ext.i.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mstruct.i.i) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %mstruct.i.i, i8 0, i64 24, i1 false) #15
  %22 = load ptr, ptr @r2, align 8, !tbaa !5
  %e_shstrndx.i.i = getelementptr inbounds %struct.Elf32_Ehdr, ptr %call9.i, i64 0, i32 13
  %call1.i.i = call zeroext i16 %22(ptr noundef nonnull %e_shstrndx.i.i) #15, !callees !16
  %conv.i.i = zext i16 %call1.i.i to i32
  %cmp.i.i = icmp eq i16 %call1.i.i, -1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end51.i
  %23 = load ptr, ptr @r, align 8, !tbaa !5
  %sh_link.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %add.ptr.i.i, i64 0, i32 6
  %call3.i.i = call i32 %23(ptr noundef nonnull %sh_link.i.i) #15, !callees !17
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end51.i
  %shstrndx.0.i.i = phi i32 [ %call3.i.i, %if.then.i.i ], [ %conv.i.i, %if.end51.i ]
  %24 = load ptr, ptr @r, align 8, !tbaa !5
  %idxprom.i.i = zext i32 %shstrndx.0.i.i to i64
  %arrayidx4.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %add.ptr.i.i, i64 %idxprom.i.i
  %sh_offset.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %arrayidx4.i.i, i64 0, i32 4
  %call5.i.i = call i32 %24(ptr noundef nonnull %sh_offset.i.i) #15, !callees !17
  %idx.ext6.i.i = zext i32 %call5.i.i to i64
  %add.ptr7.i.i = getelementptr inbounds i8, ptr %call9.i, i64 %idx.ext6.i.i
  %25 = load ptr, ptr @r2, align 8, !tbaa !5
  %e_shnum.i.i = getelementptr inbounds %struct.Elf32_Ehdr, ptr %call9.i, i64 0, i32 12
  %call8.i.i = call zeroext i16 %25(ptr noundef nonnull %e_shnum.i.i) #15, !callees !16
  %conv9.i.i = zext i16 %call8.i.i to i32
  %cmp10.i.i = icmp eq i16 %call8.i.i, 0
  br i1 %cmp10.i.i, label %if.then12.i.i, label %if.end15.i.i

if.then12.i.i:                                    ; preds = %if.end.i.i
  %26 = load ptr, ptr @r, align 8, !tbaa !5
  %sh_size.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %add.ptr.i.i, i64 0, i32 5
  %call14.i.i = call i32 %26(ptr noundef nonnull %sh_size.i.i) #15, !callees !17
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.then12.i.i, %if.end.i.i
  %shnum.0.i.i = phi i32 [ %call14.i.i, %if.then12.i.i ], [ %conv9.i.i, %if.end.i.i ]
  %idx.ext16.i.i = zext i32 %shnum.0.i.i to i64
  %add.ptr17.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %add.ptr.i.i, i64 %idx.ext16.i.i
  %cmp18269.not.i.i = icmp eq i32 %shnum.0.i.i, 0
  br i1 %cmp18269.not.i.i, label %if.then79.i.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i, %if.end15.i.i
  %s.0282.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i ], [ %add.ptr.i.i, %if.end15.i.i ]
  %i.0281.i.i = phi i32 [ %inc.i.i, %for.inc.i.i ], [ 0, %if.end15.i.i ]
  %extab_index.0280.i.i = phi i32 [ %spec.select257.i.i, %for.inc.i.i ], [ 0, %if.end15.i.i ]
  %strtab_sec.0279.i.i = phi ptr [ %strtab_sec.1.i.i, %for.inc.i.i ], [ null, %if.end15.i.i ]
  %symtab_sec.0278.i.i = phi ptr [ %symtab_sec.1.i.i, %for.inc.i.i ], [ null, %if.end15.i.i ]
  %extab_sec.0277.i.i = phi ptr [ %spec.select.i.i, %for.inc.i.i ], [ null, %if.end15.i.i ]
  %relocs_size.0275.i.i = phi i32 [ %relocs_size.1.i.i, %for.inc.i.i ], [ 0, %if.end15.i.i ]
  %relocs.0273.i.i = phi ptr [ %relocs.1.i.i, %for.inc.i.i ], [ null, %if.end15.i.i ]
  %symtab_shndx.0272.i.i = phi ptr [ %symtab_shndx.1.i.i, %for.inc.i.i ], [ null, %if.end15.i.i ]
  %_stop_mcount_loc.0271.i.i = phi i32 [ %_stop_mcount_loc.2.i.i, %for.inc.i.i ], [ 0, %if.end15.i.i ]
  %_start_mcount_loc.0270.i.i = phi i32 [ %_start_mcount_loc.2.i.i, %for.inc.i.i ], [ 0, %if.end15.i.i ]
  %27 = load ptr, ptr @r, align 8, !tbaa !5
  %call20.i.i = call i32 %27(ptr noundef %s.0282.i.i) #15, !callees !17
  %idx.ext21.i.i = sext i32 %call20.i.i to i64
  %add.ptr22.i.i = getelementptr inbounds i8, ptr %add.ptr7.i.i, i64 %idx.ext21.i.i
  %call23.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %add.ptr22.i.i, ptr noundef nonnull dereferenceable(11) @.str.9) #17
  %tobool.not.i.i = icmp eq i32 %call23.i.i, 0
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr %s.0282.i.i, ptr %extab_sec.0277.i.i
  %spec.select257.i.i = select i1 %tobool.not.i.i, i32 %i.0281.i.i, i32 %extab_index.0280.i.i
  %call28.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %add.ptr22.i.i, ptr noundef nonnull dereferenceable(8) @.str.10) #17
  %tobool29.not.i.i = icmp eq i32 %call28.i.i, 0
  %symtab_sec.1.i.i = select i1 %tobool29.not.i.i, ptr %s.0282.i.i, ptr %symtab_sec.0278.i.i
  %call34.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %add.ptr22.i.i, ptr noundef nonnull dereferenceable(8) @.str.11) #17
  %tobool35.not.i.i = icmp eq i32 %call34.i.i, 0
  %strtab_sec.1.i.i = select i1 %tobool35.not.i.i, ptr %s.0282.i.i, ptr %strtab_sec.0279.i.i
  %28 = load ptr, ptr @r, align 8, !tbaa !5
  %sh_type.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %s.0282.i.i, i64 0, i32 1
  %call38.i.i = call i32 %28(ptr noundef nonnull %sh_type.i.i) #15, !callees !17
  %cmp39.i.i = icmp eq i32 %call38.i.i, 9
  br i1 %cmp39.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i

lor.lhs.false.i.i:                                ; preds = %for.body.i.i
  %29 = load ptr, ptr @r, align 8, !tbaa !5
  %call42.i.i = call i32 %29(ptr noundef nonnull %sh_type.i.i) #15, !callees !17
  %cmp43.i.i = icmp eq i32 %call42.i.i, 4
  br i1 %cmp43.i.i, label %land.lhs.true.i.i, label %if.end55.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i, %for.body.i.i
  %30 = load ptr, ptr @r, align 8, !tbaa !5
  %sh_info.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %s.0282.i.i, i64 0, i32 7
  %call45.i.i = call i32 %30(ptr noundef nonnull %sh_info.i.i) #15, !callees !17
  %cmp46.i.i = icmp eq i32 %call45.i.i, %spec.select257.i.i
  br i1 %cmp46.i.i, label %if.then48.i.i, label %if.end55.i.i

if.then48.i.i:                                    ; preds = %land.lhs.true.i.i
  %31 = load ptr, ptr @r, align 8, !tbaa !5
  %sh_offset49.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %s.0282.i.i, i64 0, i32 4
  %call50.i.i = call i32 %31(ptr noundef nonnull %sh_offset49.i.i) #15, !callees !17
  %idx.ext51.i.i = zext i32 %call50.i.i to i64
  %add.ptr52.i.i = getelementptr i8, ptr %call9.i, i64 %idx.ext51.i.i
  %32 = load ptr, ptr @r, align 8, !tbaa !5
  %sh_size53.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %s.0282.i.i, i64 0, i32 5
  %call54.i.i = call i32 %32(ptr noundef nonnull %sh_size53.i.i) #15, !callees !17
  br label %if.end55.i.i

if.end55.i.i:                                     ; preds = %if.then48.i.i, %land.lhs.true.i.i, %lor.lhs.false.i.i
  %relocs.1.i.i = phi ptr [ %add.ptr52.i.i, %if.then48.i.i ], [ %relocs.0273.i.i, %land.lhs.true.i.i ], [ %relocs.0273.i.i, %lor.lhs.false.i.i ]
  %relocs_size.1.i.i = phi i32 [ %call54.i.i, %if.then48.i.i ], [ %relocs_size.0275.i.i, %land.lhs.true.i.i ], [ %relocs_size.0275.i.i, %lor.lhs.false.i.i ]
  %33 = load ptr, ptr @r, align 8, !tbaa !5
  %call57.i.i = call i32 %33(ptr noundef nonnull %sh_type.i.i) #15, !callees !17
  %cmp58.i.i = icmp eq i32 %call57.i.i, 18
  br i1 %cmp58.i.i, label %if.then60.i.i, label %if.end65.i.i

if.then60.i.i:                                    ; preds = %if.end55.i.i
  %34 = load ptr, ptr @r, align 8, !tbaa !5
  %sh_offset61.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %s.0282.i.i, i64 0, i32 4
  %call62.i.i = call i32 %34(ptr noundef nonnull %sh_offset61.i.i) #15, !callees !17
  %idx.ext63.i.i = zext i32 %call62.i.i to i64
  %add.ptr64.i.i = getelementptr inbounds i8, ptr %call9.i, i64 %idx.ext63.i.i
  br label %if.end65.i.i

if.end65.i.i:                                     ; preds = %if.then60.i.i, %if.end55.i.i
  %symtab_shndx.1.i.i = phi ptr [ %add.ptr64.i.i, %if.then60.i.i ], [ %symtab_shndx.0272.i.i, %if.end55.i.i ]
  %call68.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %add.ptr22.i.i, ptr noundef nonnull dereferenceable(11) @.str.12) #17
  %tobool69.not.i.i = icmp eq i32 %call68.i.i, 0
  br i1 %tobool69.not.i.i, label %if.then70.i.i, label %for.inc.i.i

if.then70.i.i:                                    ; preds = %if.end65.i.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %start_buff.i.i.i) #15
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %stop_buff.i.i.i) #15
  %call.i.i.i = call ptr @popen(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #15
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.then70.i.i
  %35 = load ptr, ptr @stderr, align 8, !tbaa !5
  %36 = call i64 @fwrite(ptr nonnull @.str.24, i64 27, i64 1, ptr %35) #16
  br label %get_mcount_loc_32.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then70.i.i
  %call2.i.i.i = call ptr @popen(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.23) #15
  %tobool3.not.i.i.i = icmp eq ptr %call2.i.i.i, null
  br i1 %tobool3.not.i.i.i, label %if.then4.i.i.i, label %while.cond.preheader.i.i.i

while.cond.preheader.i.i.i:                       ; preds = %if.end.i.i.i
  %call843.i.i.i = call ptr @fgets(ptr noundef nonnull %start_buff.i.i.i, i32 noundef 20, ptr noundef nonnull %call.i.i.i) #15
  %cmp.not44.i.i.i = icmp eq ptr %call843.i.i.i, null
  br i1 %cmp.not44.i.i.i, label %while.end.i.i.i, label %while.body.i.i.i

if.then4.i.i.i:                                   ; preds = %if.end.i.i.i
  %37 = load ptr, ptr @stderr, align 8, !tbaa !5
  %38 = call i64 @fwrite(ptr nonnull @.str.26, i64 26, i64 1, ptr %37) #16
  %call6.i.i.i = call i32 @pclose(ptr noundef nonnull %call.i.i.i) #15
  br label %get_mcount_loc_32.exit.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i, %while.cond.preheader.i.i.i
  %call10.i.i.i = call i64 @strlen(ptr noundef nonnull %start_buff.i.i.i) #17
  %sub.i.i.i = shl i64 %call10.i.i.i, 32
  %sext42.i.i.i = add i64 %sub.i.i.i, -4294967296
  %idxprom.i.i.i = ashr exact i64 %sext42.i.i.i, 32
  %arrayidx.i.i.i = getelementptr inbounds [20 x i8], ptr %start_buff.i.i.i, i64 0, i64 %idxprom.i.i.i
  store i8 0, ptr %arrayidx.i.i.i, align 1, !tbaa !15
  %call8.i.i.i = call ptr @fgets(ptr noundef nonnull %start_buff.i.i.i, i32 noundef 20, ptr noundef nonnull %call.i.i.i) #15
  %cmp.not.i.i.i = icmp eq ptr %call8.i.i.i, null
  br i1 %cmp.not.i.i.i, label %while.end.i.i.i, label %while.body.i.i.i

while.end.i.i.i:                                  ; preds = %while.body.i.i.i, %while.cond.preheader.i.i.i
  %call12.i.i.i = call i64 @strtoul(ptr nocapture noundef nonnull %start_buff.i.i.i, ptr noundef null, i32 noundef 16) #15
  %conv13.i.i.i = trunc i64 %call12.i.i.i to i32
  %call1645.i.i.i = call ptr @fgets(ptr noundef nonnull %stop_buff.i.i.i, i32 noundef 20, ptr noundef nonnull %call2.i.i.i) #15
  %cmp17.not46.i.i.i = icmp eq ptr %call1645.i.i.i, null
  br i1 %cmp17.not46.i.i.i, label %while.end26.i.i.i, label %while.body19.i.i.i

while.body19.i.i.i:                               ; preds = %while.body19.i.i.i, %while.end.i.i.i
  %call21.i.i.i = call i64 @strlen(ptr noundef nonnull %stop_buff.i.i.i) #17
  %sub23.i.i.i = shl i64 %call21.i.i.i, 32
  %sext.i.i.i = add i64 %sub23.i.i.i, -4294967296
  %idxprom24.i.i.i = ashr exact i64 %sext.i.i.i, 32
  %arrayidx25.i.i.i = getelementptr inbounds [20 x i8], ptr %stop_buff.i.i.i, i64 0, i64 %idxprom24.i.i.i
  store i8 0, ptr %arrayidx25.i.i.i, align 1, !tbaa !15
  %call16.i.i.i = call ptr @fgets(ptr noundef nonnull %stop_buff.i.i.i, i32 noundef 20, ptr noundef nonnull %call2.i.i.i) #15
  %cmp17.not.i.i.i = icmp eq ptr %call16.i.i.i, null
  br i1 %cmp17.not.i.i.i, label %while.end26.i.i.i, label %while.body19.i.i.i

while.end26.i.i.i:                                ; preds = %while.body19.i.i.i, %while.end.i.i.i
  %call28.i.i.i = call i64 @strtoul(ptr nocapture noundef nonnull %stop_buff.i.i.i, ptr noundef null, i32 noundef 16) #15
  %conv29.i.i.i = trunc i64 %call28.i.i.i to i32
  %call30.i.i.i = call i32 @pclose(ptr noundef nonnull %call.i.i.i) #15
  %call31.i.i.i = call i32 @pclose(ptr noundef nonnull %call2.i.i.i) #15
  br label %get_mcount_loc_32.exit.i.i

get_mcount_loc_32.exit.i.i:                       ; preds = %while.end26.i.i.i, %if.then4.i.i.i, %if.then.i.i.i
  %_start_mcount_loc.1.i.i = phi i32 [ %_start_mcount_loc.0270.i.i, %if.then.i.i.i ], [ %_start_mcount_loc.0270.i.i, %if.then4.i.i.i ], [ %conv13.i.i.i, %while.end26.i.i.i ]
  %_stop_mcount_loc.1.i.i = phi i32 [ %_stop_mcount_loc.0271.i.i, %if.then.i.i.i ], [ %_stop_mcount_loc.0271.i.i, %if.then4.i.i.i ], [ %conv29.i.i.i, %while.end26.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %stop_buff.i.i.i) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %start_buff.i.i.i) #15
  store ptr %call9.i, ptr %mstruct.i.i, align 8, !tbaa !18
  store ptr %s.0282.i.i, ptr %init_data_sec.i.i, align 8, !tbaa !20
  store i32 %_start_mcount_loc.1.i.i, ptr %start_mcount_loc.i.i, align 8, !tbaa !21
  store i32 %_stop_mcount_loc.1.i.i, ptr %stop_mcount_loc.i.i, align 4, !tbaa !22
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %get_mcount_loc_32.exit.i.i, %if.end65.i.i
  %_start_mcount_loc.2.i.i = phi i32 [ %_start_mcount_loc.1.i.i, %get_mcount_loc_32.exit.i.i ], [ %_start_mcount_loc.0270.i.i, %if.end65.i.i ]
  %_stop_mcount_loc.2.i.i = phi i32 [ %_stop_mcount_loc.1.i.i, %get_mcount_loc_32.exit.i.i ], [ %_stop_mcount_loc.0271.i.i, %if.end65.i.i ]
  %inc.i.i = add nuw nsw i32 %i.0281.i.i, 1
  %incdec.ptr.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %s.0282.i.i, i64 1
  %cmp18.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr17.i.i
  br i1 %cmp18.i.i, label %for.body.i.i, label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  %.pre.i.i = load ptr, ptr %init_data_sec.i.i, align 8, !tbaa !20
  %tobool74.i.i = icmp ne ptr %.pre.i.i, null
  %tobool76.i.i = icmp ne i32 %_start_mcount_loc.2.i.i, 0
  %or.cond.i.i = select i1 %tobool74.i.i, i1 %tobool76.i.i, i1 false
  %tobool78.i.i = icmp ne i32 %_stop_mcount_loc.2.i.i, 0
  %or.cond189.i.i = select i1 %or.cond.i.i, i1 %tobool78.i.i, i1 false
  br i1 %or.cond189.i.i, label %if.end81.i.i, label %if.then79.i.i

if.then79.i.i:                                    ; preds = %for.end.i.i, %if.end15.i.i
  %39 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call80.i.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef nonnull @.str.13, ptr noundef %8) #16
  br label %out.i.i

if.end81.i.i:                                     ; preds = %for.end.i.i
  %call82.i.i = call i32 @pthread_create(ptr noundef nonnull @mcount_sort_thread, ptr noundef null, ptr noundef nonnull @sort_mcount_loc_32, ptr noundef nonnull %mstruct.i.i) #15
  %tobool83.not.i.i = icmp eq i32 %call82.i.i, 0
  br i1 %tobool83.not.i.i, label %if.end88.i.i, label %if.then84.i.i

if.then84.i.i:                                    ; preds = %if.end81.i.i
  %40 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call85.i.i = tail call ptr @__errno_location() #18
  %41 = load i32, ptr %call85.i.i, align 4, !tbaa !23
  %call86.i.i = call ptr @strerror(i32 noundef %41) #15
  %call87.i.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef nonnull @.str.14, ptr noundef %call86.i.i, ptr noundef %8) #16
  br label %out.i.i

if.end88.i.i:                                     ; preds = %if.end81.i.i
  %tobool89.not.i.i = icmp eq ptr %spec.select.i.i, null
  br i1 %tobool89.not.i.i, label %if.then90.i.i, label %if.end92.i.i

if.then90.i.i:                                    ; preds = %if.end88.i.i
  %42 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call91.i.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef nonnull @.str.15, ptr noundef %8) #16
  br label %out.i.i

if.end92.i.i:                                     ; preds = %if.end88.i.i
  %tobool93.not.i.i = icmp eq ptr %symtab_sec.1.i.i, null
  br i1 %tobool93.not.i.i, label %if.then94.i.i, label %if.end96.i.i

if.then94.i.i:                                    ; preds = %if.end92.i.i
  %43 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call95.i.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %43, ptr noundef nonnull @.str.16, ptr noundef %8) #16
  br label %out.i.i

if.end96.i.i:                                     ; preds = %if.end92.i.i
  %tobool97.not.i.i = icmp eq ptr %strtab_sec.1.i.i, null
  br i1 %tobool97.not.i.i, label %if.then98.i.i, label %if.end100.i.i

if.then98.i.i:                                    ; preds = %if.end96.i.i
  %44 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call99.i.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef nonnull @.str.17, ptr noundef %8) #16
  br label %out.i.i

if.end100.i.i:                                    ; preds = %if.end96.i.i
  %45 = load ptr, ptr @r, align 8, !tbaa !5
  %sh_offset101.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %spec.select.i.i, i64 0, i32 4
  %call102.i.i = call i32 %45(ptr noundef nonnull %sh_offset101.i.i) #15, !callees !17
  %idx.ext103.i.i = zext i32 %call102.i.i to i64
  %add.ptr104.i.i = getelementptr i8, ptr %call9.i, i64 %idx.ext103.i.i
  %46 = load ptr, ptr @r, align 8, !tbaa !5
  %sh_offset105.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %strtab_sec.1.i.i, i64 0, i32 4
  %call106.i.i = call i32 %46(ptr noundef nonnull %sh_offset105.i.i) #15, !callees !17
  %idx.ext107.i.i = zext i32 %call106.i.i to i64
  %add.ptr108.i.i = getelementptr inbounds i8, ptr %call9.i, i64 %idx.ext107.i.i
  %47 = load ptr, ptr @r, align 8, !tbaa !5
  %sh_offset109.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %symtab_sec.1.i.i, i64 0, i32 4
  %call110.i.i = call i32 %47(ptr noundef nonnull %sh_offset109.i.i) #15, !callees !17
  %idx.ext111.i.i = zext i32 %call110.i.i to i64
  %add.ptr112.i.i = getelementptr inbounds i8, ptr %call9.i, i64 %idx.ext111.i.i
  %48 = load ptr, ptr @r, align 8, !tbaa !5
  %sh_size117.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %spec.select.i.i, i64 0, i32 5
  %call118.i.i = call i32 %48(ptr noundef nonnull %sh_size117.i.i) #15
  br i1 %tobool108.not.i.i, label %if.else.i.i, label %if.then114.i.i

if.then114.i.i:                                   ; preds = %if.end100.i.i
  call void %custom_sort.0.i(ptr noundef %add.ptr104.i.i, i32 noundef %call118.i.i) #15, !callees !24
  br label %if.end120.i.i

if.else.i.i:                                      ; preds = %if.end100.i.i
  %div256.i.i = lshr i32 %call118.i.i, 3
  %49 = zext i32 %div256.i.i to i64
  call void @qsort(ptr noundef %add.ptr104.i.i, i64 noundef %49, i64 noundef 8, ptr noundef nonnull @compare_extable_32) #15
  br label %if.end120.i.i

if.end120.i.i:                                    ; preds = %if.else.i.i, %if.then114.i.i
  %tobool121.not.i.i = icmp eq ptr %relocs.1.i.i, null
  br i1 %tobool121.not.i.i, label %if.end124.i.i, label %if.then122.i.i

if.then122.i.i:                                   ; preds = %if.end120.i.i
  %conv123.i.i = sext i32 %relocs_size.1.i.i to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %relocs.1.i.i, i8 0, i64 %conv123.i.i, i1 false) #15
  br label %if.end124.i.i

if.end124.i.i:                                    ; preds = %if.then122.i.i, %if.end120.i.i
  %50 = load ptr, ptr @r, align 8, !tbaa !5
  %call126.i.i = call i32 %50(ptr noundef nonnull %sh_offset109.i.i) #15, !callees !17
  %sh_size130.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %symtab_sec.1.i.i, i64 0, i32 5
  %51 = load ptr, ptr @r, align 8, !tbaa !5
  %call131292.i.i = call i32 %51(ptr noundef nonnull %sh_size130.i.i) #15, !callees !17
  %cmp135.not293.i.i = icmp ult i32 %call131292.i.i, 16
  br i1 %cmp135.not293.i.i, label %if.then154.i.i, label %for.body137.preheader.i.i

for.body137.preheader.i.i:                        ; preds = %if.end124.i.i
  %idx.ext127.i.i = zext i32 %call126.i.i to i64
  %add.ptr128.i.i = getelementptr i8, ptr %call9.i, i64 %idx.ext127.i.i
  br label %for.body137.i.i

for.body137.i.i:                                  ; preds = %for.inc150.i.i, %for.body137.preheader.i.i
  %sym.0294.i.i = phi ptr [ %incdec.ptr151.i.i, %for.inc150.i.i ], [ %add.ptr128.i.i, %for.body137.preheader.i.i ]
  %st_info.i.i = getelementptr inbounds %struct.Elf32_Sym, ptr %sym.0294.i.i, i64 0, i32 3
  %52 = load i8, ptr %st_info.i.i, align 4, !tbaa !25
  %53 = and i8 %52, 15
  %cmp139.not.i.i = icmp eq i8 %53, 1
  br i1 %cmp139.not.i.i, label %if.end142.i.i, label %for.inc150.i.i

if.end142.i.i:                                    ; preds = %for.body137.i.i
  %54 = load ptr, ptr @r, align 8, !tbaa !5
  %call143.i.i = call i32 %54(ptr noundef nonnull %sym.0294.i.i) #15, !callees !17
  %idx.ext144.i.i = zext i32 %call143.i.i to i64
  %add.ptr145.i.i = getelementptr inbounds i8, ptr %add.ptr108.i.i, i64 %idx.ext144.i.i
  %call146.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %add.ptr145.i.i, ptr noundef nonnull dereferenceable(25) @.str.18) #17
  %tobool147.not.i.i = icmp eq i32 %call146.i.i, 0
  br i1 %tobool147.not.i.i, label %if.end156.i.i, label %for.inc150.i.i

for.inc150.i.i:                                   ; preds = %if.end142.i.i, %for.body137.i.i
  %incdec.ptr151.i.i = getelementptr inbounds %struct.Elf32_Sym, ptr %sym.0294.i.i, i64 1
  %55 = load ptr, ptr @r, align 8, !tbaa !5
  %call131.i.i = call i32 %55(ptr noundef nonnull %sh_size130.i.i) #15, !callees !17
  %cmp135.not.i.i = icmp ult i32 %call131.i.i, 16
  br i1 %cmp135.not.i.i, label %if.then154.i.i, label %for.body137.i.i

if.then154.i.i:                                   ; preds = %for.inc150.i.i, %if.end124.i.i
  %56 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call155.i.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %56, ptr noundef nonnull @.str.19, ptr noundef %8) #16
  br label %out.i.i

if.end156.i.i:                                    ; preds = %if.end142.i.i
  %57 = load ptr, ptr @r2, align 8, !tbaa !5
  %st_shndx.i.i = getelementptr inbounds %struct.Elf32_Sym, ptr %sym.0294.i.i, i64 0, i32 5
  %call157.i.i = call zeroext i16 %57(ptr noundef nonnull %st_shndx.i.i) #15, !callees !16
  %conv158.i.i = zext i16 %call157.i.i to i32
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %sym.0294.i.i to i64
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr112.i.i to i64
  %sub.ptr.sub.i.i = sub i64 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %58 = lshr exact i64 %sub.ptr.sub.i.i, 4
  %59 = add i16 %call157.i.i, 1
  %60 = icmp ult i16 %59, -255
  br i1 %60, label %if.end.i261.i.i, label %if.then.i260.i.i

if.then.i260.i.i:                                 ; preds = %if.end156.i.i
  %sub.i259.i.i = or i32 %conv158.i.i, -65536
  br label %get_secindex.exit.i.i

if.end.i261.i.i:                                  ; preds = %if.end156.i.i
  %cmp.i.i.i.i = icmp eq i16 %call157.i.i, -1
  br i1 %cmp.i.i.i.i, label %if.end2.i.i.i, label %get_secindex.exit.i.i

if.end2.i.i.i:                                    ; preds = %if.end.i261.i.i
  %61 = load ptr, ptr @r, align 8, !tbaa !5
  %idxprom.i262.i.i = and i64 %58, 4294967295
  %arrayidx.i263.i.i = getelementptr inbounds i32, ptr %symtab_shndx.1.i.i, i64 %idxprom.i262.i.i
  %call3.i.i.i = call i32 %61(ptr noundef %arrayidx.i263.i.i) #15, !callees !17
  br label %get_secindex.exit.i.i

get_secindex.exit.i.i:                            ; preds = %if.end2.i.i.i, %if.end.i261.i.i, %if.then.i260.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i259.i.i, %if.then.i260.i.i ], [ %call3.i.i.i, %if.end2.i.i.i ], [ %conv158.i.i, %if.end.i261.i.i ]
  %idxprom161.i.i = zext i32 %retval.0.i.i.i to i64
  %arrayidx162.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %add.ptr.i.i, i64 %idxprom161.i.i
  %62 = load ptr, ptr @r, align 8, !tbaa !5
  %sh_offset163.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %arrayidx162.i.i, i64 0, i32 4
  %call164.i.i = call i32 %62(ptr noundef nonnull %sh_offset163.i.i) #15, !callees !17
  %idx.ext165.i.i = zext i32 %call164.i.i to i64
  %add.ptr166.i.i = getelementptr i8, ptr %call9.i, i64 %idx.ext165.i.i
  %63 = load ptr, ptr @r, align 8, !tbaa !5
  %st_value.i.i = getelementptr inbounds %struct.Elf32_Sym, ptr %sym.0294.i.i, i64 0, i32 1
  %call167.i.i = call i32 %63(ptr noundef nonnull %st_value.i.i) #15, !callees !17
  %idx.ext168.i.i = zext i32 %call167.i.i to i64
  %add.ptr169.i.i = getelementptr i8, ptr %add.ptr166.i.i, i64 %idx.ext168.i.i
  %64 = load ptr, ptr @r, align 8, !tbaa !5
  %sh_addr.i.i = getelementptr inbounds %struct.Elf32_Shdr, ptr %arrayidx162.i.i, i64 0, i32 3
  %call170.i.i = call i32 %64(ptr noundef nonnull %sh_addr.i.i) #15, !callees !17
  %idx.ext171.i.i = zext i32 %call170.i.i to i64
  %idx.neg.i.i = sub nsw i64 0, %idx.ext171.i.i
  %add.ptr172.i.i = getelementptr i8, ptr %add.ptr169.i.i, i64 %idx.neg.i.i
  %65 = load ptr, ptr @w, align 8, !tbaa !5
  call void %65(i32 noundef 0, ptr noundef %add.ptr172.i.i) #15, !callees !28
  br label %out.i.i

out.i.i:                                          ; preds = %get_secindex.exit.i.i, %if.then154.i.i, %if.then98.i.i, %if.then94.i.i, %if.then90.i.i, %if.then84.i.i, %if.then79.i.i
  %rc.0.i.i = phi i32 [ -1, %if.then84.i.i ], [ 0, %get_secindex.exit.i.i ], [ -1, %if.then154.i.i ], [ -1, %if.then98.i.i ], [ -1, %if.then94.i.i ], [ -1, %if.then90.i.i ], [ -1, %if.then79.i.i ]
  %66 = load i64, ptr @mcount_sort_thread, align 8, !tbaa !29
  %tobool173.not.i.i = icmp eq i64 %66, 0
  br i1 %tobool173.not.i.i, label %do_sort_32.exit.i, label %if.then174.i.i

if.then174.i.i:                                   ; preds = %out.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %retval175.i.i) #15
  store ptr null, ptr %retval175.i.i, align 8, !tbaa !5
  %call176.i.i = call i32 @pthread_join(i64 noundef %66, ptr noundef nonnull %retval175.i.i) #15
  %tobool177.not.i.i = icmp eq i32 %call176.i.i, 0
  br i1 %tobool177.not.i.i, label %if.else182.i.i, label %if.then178.i.i

if.then178.i.i:                                   ; preds = %if.then174.i.i
  %67 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call179.i.i = tail call ptr @__errno_location() #18
  %68 = load i32, ptr %call179.i.i, align 4, !tbaa !23
  %call180.i.i = call ptr @strerror(i32 noundef %68) #15
  %call181.i.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %67, ptr noundef nonnull @.str.20, ptr noundef %call180.i.i, ptr noundef %8) #16
  br label %if.end187.i.i

if.else182.i.i:                                   ; preds = %if.then174.i.i
  %69 = load ptr, ptr %retval175.i.i, align 8, !tbaa !5
  %tobool183.not.i.i = icmp eq ptr %69, null
  br i1 %tobool183.not.i.i, label %if.end187.i.i, label %if.then184.i.i

if.then184.i.i:                                   ; preds = %if.else182.i.i
  %70 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call185.i.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %70, ptr noundef nonnull @.str.21, ptr noundef nonnull %69, ptr noundef %8) #16
  br label %if.end187.i.i

if.end187.i.i:                                    ; preds = %if.then184.i.i, %if.else182.i.i, %if.then178.i.i
  %rc.1.i.i = phi i32 [ %call176.i.i, %if.then178.i.i ], [ -1, %if.then184.i.i ], [ 0, %if.else182.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %retval175.i.i) #15
  br label %do_sort_32.exit.i

do_sort_32.exit.i:                                ; preds = %if.end187.i.i, %out.i.i
  %rc.2.i.i = phi i32 [ %rc.1.i.i, %if.end187.i.i ], [ %rc.0.i.i, %out.i.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mstruct.i.i) #15
  br label %do_file.exit

sw.bb53.i:                                        ; preds = %sw.epilog35.i
  %71 = load ptr, ptr @r2, align 8, !tbaa !5
  %e_ehsize54.i = getelementptr inbounds %struct.Elf64_Ehdr, ptr %call9.i, i64 0, i32 8
  %call55.i = call zeroext i16 %71(ptr noundef nonnull %e_ehsize54.i) #15, !callees !16
  %cmp57.not.i = icmp eq i16 %call55.i, 64
  br i1 %cmp57.not.i, label %lor.lhs.false59.i, label %if.then65.i

lor.lhs.false59.i:                                ; preds = %sw.bb53.i
  %72 = load ptr, ptr @r2, align 8, !tbaa !5
  %e_shentsize60.i = getelementptr inbounds %struct.Elf64_Ehdr, ptr %call9.i, i64 0, i32 11
  %call61.i = call zeroext i16 %72(ptr noundef nonnull %e_shentsize60.i) #15, !callees !16
  %cmp63.not.i = icmp eq i16 %call61.i, 64
  br i1 %cmp63.not.i, label %if.end67.i, label %if.then65.i

if.then65.i:                                      ; preds = %lor.lhs.false59.i, %sw.bb53.i
  %73 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call66.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %73, ptr noundef nonnull @.str.7, ptr noundef %8) #16
  br label %do_file.exit.thread

if.end67.i:                                       ; preds = %lor.lhs.false59.i
  %74 = load ptr, ptr @r8, align 8, !tbaa !5
  %e_shoff.i108.i = getelementptr inbounds %struct.Elf64_Ehdr, ptr %call9.i, i64 0, i32 6
  %call.i109.i = call i64 %74(ptr noundef nonnull %e_shoff.i108.i) #15, !callees !30
  %add.ptr.i110.i = getelementptr inbounds i8, ptr %call9.i, i64 %call.i109.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mstruct.i107.i) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %mstruct.i107.i, i8 0, i64 32, i1 false) #15
  %75 = load ptr, ptr @r2, align 8, !tbaa !5
  %e_shstrndx.i111.i = getelementptr inbounds %struct.Elf64_Ehdr, ptr %call9.i, i64 0, i32 13
  %call1.i112.i = call zeroext i16 %75(ptr noundef nonnull %e_shstrndx.i111.i) #15, !callees !16
  %conv.i113.i = zext i16 %call1.i112.i to i32
  %cmp.i114.i = icmp eq i16 %call1.i112.i, -1
  br i1 %cmp.i114.i, label %if.then.i117.i, label %if.end.i124.i

if.then.i117.i:                                   ; preds = %if.end67.i
  %76 = load ptr, ptr @r, align 8, !tbaa !5
  %sh_link.i115.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %add.ptr.i110.i, i64 0, i32 6
  %call3.i116.i = call i32 %76(ptr noundef nonnull %sh_link.i115.i) #15, !callees !17
  br label %if.end.i124.i

if.end.i124.i:                                    ; preds = %if.then.i117.i, %if.end67.i
  %shstrndx.0.i118.i = phi i32 [ %call3.i116.i, %if.then.i117.i ], [ %conv.i113.i, %if.end67.i ]
  %77 = load ptr, ptr @r8, align 8, !tbaa !5
  %idxprom.i119.i = zext i32 %shstrndx.0.i118.i to i64
  %arrayidx4.i120.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %add.ptr.i110.i, i64 %idxprom.i119.i
  %sh_offset.i121.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %arrayidx4.i120.i, i64 0, i32 4
  %call5.i122.i = call i64 %77(ptr noundef nonnull %sh_offset.i121.i) #15, !callees !30
  %add.ptr6.i.i = getelementptr inbounds i8, ptr %call9.i, i64 %call5.i122.i
  %78 = load ptr, ptr @r2, align 8, !tbaa !5
  %e_shnum.i123.i = getelementptr inbounds %struct.Elf64_Ehdr, ptr %call9.i, i64 0, i32 12
  %call7.i.i = call zeroext i16 %78(ptr noundef nonnull %e_shnum.i123.i) #15, !callees !16
  %conv8.i.i = zext i16 %call7.i.i to i64
  %cmp9.i.i = icmp eq i16 %call7.i.i, 0
  br i1 %cmp9.i.i, label %if.then11.i.i, label %if.end15.i128.i

if.then11.i.i:                                    ; preds = %if.end.i124.i
  %79 = load ptr, ptr @r8, align 8, !tbaa !5
  %sh_size.i125.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %add.ptr.i110.i, i64 0, i32 5
  %call13.i.i = call i64 %79(ptr noundef nonnull %sh_size.i125.i) #15, !callees !30
  br label %if.end15.i128.i

if.end15.i128.i:                                  ; preds = %if.then11.i.i, %if.end.i124.i
  %shnum.0.i126.i = phi i64 [ %call13.i.i, %if.then11.i.i ], [ %conv8.i.i, %if.end.i124.i ]
  %idx.ext.i127.i = and i64 %shnum.0.i126.i, 4294967295
  %add.ptr16.i.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %add.ptr.i110.i, i64 %idx.ext.i127.i
  %cmp17261.not.i.i = icmp eq i64 %idx.ext.i127.i, 0
  br i1 %cmp17261.not.i.i, label %if.then77.i.i, label %for.body.i138.i

for.body.i138.i:                                  ; preds = %for.inc.i171.i, %if.end15.i128.i
  %s.0274.i.i = phi ptr [ %incdec.ptr.i170.i, %for.inc.i171.i ], [ %add.ptr.i110.i, %if.end15.i128.i ]
  %i.0273.i.i = phi i32 [ %inc.i169.i, %for.inc.i171.i ], [ 0, %if.end15.i128.i ]
  %extab_index.0272.i.i = phi i32 [ %spec.select249.i.i, %for.inc.i171.i ], [ 0, %if.end15.i128.i ]
  %strtab_sec.0271.i.i = phi ptr [ %strtab_sec.1.i136.i, %for.inc.i171.i ], [ null, %if.end15.i128.i ]
  %symtab_sec.0270.i.i = phi ptr [ %symtab_sec.1.i135.i, %for.inc.i171.i ], [ null, %if.end15.i128.i ]
  %extab_sec.0269.i.i = phi ptr [ %spec.select.i134.i, %for.inc.i171.i ], [ null, %if.end15.i128.i ]
  %relocs_size.0267.i.i = phi i32 [ %relocs_size.1.i143.i, %for.inc.i171.i ], [ 0, %if.end15.i128.i ]
  %relocs.0265.i.i = phi ptr [ %relocs.1.i142.i, %for.inc.i171.i ], [ null, %if.end15.i128.i ]
  %symtab_shndx.0264.i.i = phi ptr [ %symtab_shndx.1.i144.i, %for.inc.i171.i ], [ null, %if.end15.i128.i ]
  %_stop_mcount_loc.0263.i.i = phi i64 [ %_stop_mcount_loc.2.i168.i, %for.inc.i171.i ], [ 0, %if.end15.i128.i ]
  %_start_mcount_loc.0262.i.i = phi i64 [ %_start_mcount_loc.2.i167.i, %for.inc.i171.i ], [ 0, %if.end15.i128.i ]
  %80 = load ptr, ptr @r, align 8, !tbaa !5
  %call19.i.i = call i32 %80(ptr noundef %s.0274.i.i) #15, !callees !17
  %idx.ext20.i.i = sext i32 %call19.i.i to i64
  %add.ptr21.i.i = getelementptr inbounds i8, ptr %add.ptr6.i.i, i64 %idx.ext20.i.i
  %call22.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %add.ptr21.i.i, ptr noundef nonnull dereferenceable(11) @.str.9) #17
  %tobool.not.i133.i = icmp eq i32 %call22.i.i, 0
  %spec.select.i134.i = select i1 %tobool.not.i133.i, ptr %s.0274.i.i, ptr %extab_sec.0269.i.i
  %spec.select249.i.i = select i1 %tobool.not.i133.i, i32 %i.0273.i.i, i32 %extab_index.0272.i.i
  %call27.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %add.ptr21.i.i, ptr noundef nonnull dereferenceable(8) @.str.10) #17
  %tobool28.not.i.i = icmp eq i32 %call27.i.i, 0
  %symtab_sec.1.i135.i = select i1 %tobool28.not.i.i, ptr %s.0274.i.i, ptr %symtab_sec.0270.i.i
  %call33.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %add.ptr21.i.i, ptr noundef nonnull dereferenceable(8) @.str.11) #17
  %tobool34.not.i.i = icmp eq i32 %call33.i.i, 0
  %strtab_sec.1.i136.i = select i1 %tobool34.not.i.i, ptr %s.0274.i.i, ptr %strtab_sec.0271.i.i
  %81 = load ptr, ptr @r, align 8, !tbaa !5
  %sh_type.i137.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %s.0274.i.i, i64 0, i32 1
  %call37.i.i = call i32 %81(ptr noundef nonnull %sh_type.i137.i) #15, !callees !17
  %cmp38.i.i = icmp eq i32 %call37.i.i, 9
  br i1 %cmp38.i.i, label %land.lhs.true.i141.i, label %lor.lhs.false.i139.i

lor.lhs.false.i139.i:                             ; preds = %for.body.i138.i
  %82 = load ptr, ptr @r, align 8, !tbaa !5
  %call41.i.i = call i32 %82(ptr noundef nonnull %sh_type.i137.i) #15, !callees !17
  %cmp42.i.i = icmp eq i32 %call41.i.i, 4
  br i1 %cmp42.i.i, label %land.lhs.true.i141.i, label %if.end54.i.i

land.lhs.true.i141.i:                             ; preds = %lor.lhs.false.i139.i, %for.body.i138.i
  %83 = load ptr, ptr @r, align 8, !tbaa !5
  %sh_info.i140.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %s.0274.i.i, i64 0, i32 7
  %call44.i.i = call i32 %83(ptr noundef nonnull %sh_info.i140.i) #15, !callees !17
  %cmp45.i.i = icmp eq i32 %call44.i.i, %spec.select249.i.i
  br i1 %cmp45.i.i, label %if.then47.i.i, label %if.end54.i.i

if.then47.i.i:                                    ; preds = %land.lhs.true.i141.i
  %84 = load ptr, ptr @r8, align 8, !tbaa !5
  %sh_offset48.i.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %s.0274.i.i, i64 0, i32 4
  %call49.i.i = call i64 %84(ptr noundef nonnull %sh_offset48.i.i) #15, !callees !30
  %add.ptr50.i.i = getelementptr i8, ptr %call9.i, i64 %call49.i.i
  %85 = load ptr, ptr @r8, align 8, !tbaa !5
  %sh_size51.i.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %s.0274.i.i, i64 0, i32 5
  %call52.i.i = call i64 %85(ptr noundef nonnull %sh_size51.i.i) #15, !callees !30
  %conv53.i.i = trunc i64 %call52.i.i to i32
  br label %if.end54.i.i

if.end54.i.i:                                     ; preds = %if.then47.i.i, %land.lhs.true.i141.i, %lor.lhs.false.i139.i
  %relocs.1.i142.i = phi ptr [ %add.ptr50.i.i, %if.then47.i.i ], [ %relocs.0265.i.i, %land.lhs.true.i141.i ], [ %relocs.0265.i.i, %lor.lhs.false.i139.i ]
  %relocs_size.1.i143.i = phi i32 [ %conv53.i.i, %if.then47.i.i ], [ %relocs_size.0267.i.i, %land.lhs.true.i141.i ], [ %relocs_size.0267.i.i, %lor.lhs.false.i139.i ]
  %86 = load ptr, ptr @r, align 8, !tbaa !5
  %call56.i.i = call i32 %86(ptr noundef nonnull %sh_type.i137.i) #15, !callees !17
  %cmp57.i.i = icmp eq i32 %call56.i.i, 18
  br i1 %cmp57.i.i, label %if.then59.i.i, label %if.end63.i.i

if.then59.i.i:                                    ; preds = %if.end54.i.i
  %87 = load ptr, ptr @r8, align 8, !tbaa !5
  %sh_offset60.i.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %s.0274.i.i, i64 0, i32 4
  %call61.i.i = call i64 %87(ptr noundef nonnull %sh_offset60.i.i) #15, !callees !30
  %add.ptr62.i.i = getelementptr inbounds i8, ptr %call9.i, i64 %call61.i.i
  br label %if.end63.i.i

if.end63.i.i:                                     ; preds = %if.then59.i.i, %if.end54.i.i
  %symtab_shndx.1.i144.i = phi ptr [ %add.ptr62.i.i, %if.then59.i.i ], [ %symtab_shndx.0264.i.i, %if.end54.i.i ]
  %call66.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %add.ptr21.i.i, ptr noundef nonnull dereferenceable(11) @.str.12) #17
  %tobool67.not.i.i = icmp eq i32 %call66.i.i, 0
  br i1 %tobool67.not.i.i, label %if.then68.i.i, label %for.inc.i171.i

if.then68.i.i:                                    ; preds = %if.end63.i.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %start_buff.i.i105.i) #15
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %stop_buff.i.i106.i) #15
  %call.i.i145.i = call ptr @popen(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #15
  %tobool.not.i.i146.i = icmp eq ptr %call.i.i145.i, null
  br i1 %tobool.not.i.i146.i, label %if.then.i.i147.i, label %if.end.i.i150.i

if.then.i.i147.i:                                 ; preds = %if.then68.i.i
  %88 = load ptr, ptr @stderr, align 8, !tbaa !5
  %89 = call i64 @fwrite(ptr nonnull @.str.24, i64 27, i64 1, ptr %88) #16
  br label %get_mcount_loc_64.exit.i.i

if.end.i.i150.i:                                  ; preds = %if.then68.i.i
  %call2.i.i148.i = call ptr @popen(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.23) #15
  %tobool3.not.i.i149.i = icmp eq ptr %call2.i.i148.i, null
  br i1 %tobool3.not.i.i149.i, label %if.then4.i.i153.i, label %while.cond.preheader.i.i151.i

while.cond.preheader.i.i151.i:                    ; preds = %if.end.i.i150.i
  %call841.i.i.i = call ptr @fgets(ptr noundef nonnull %start_buff.i.i105.i, i32 noundef 20, ptr noundef nonnull %call.i.i145.i) #15
  %cmp.not42.i.i.i = icmp eq ptr %call841.i.i.i, null
  br i1 %cmp.not42.i.i.i, label %while.end.i.i162.i, label %while.body.i.i160.i

if.then4.i.i153.i:                                ; preds = %if.end.i.i150.i
  %90 = load ptr, ptr @stderr, align 8, !tbaa !5
  %91 = call i64 @fwrite(ptr nonnull @.str.26, i64 26, i64 1, ptr %90) #16
  %call6.i.i152.i = call i32 @pclose(ptr noundef nonnull %call.i.i145.i) #15
  br label %get_mcount_loc_64.exit.i.i

while.body.i.i160.i:                              ; preds = %while.body.i.i160.i, %while.cond.preheader.i.i151.i
  %call10.i.i154.i = call i64 @strlen(ptr noundef nonnull %start_buff.i.i105.i) #17
  %sub.i.i155.i = shl i64 %call10.i.i154.i, 32
  %sext40.i.i.i = add i64 %sub.i.i155.i, -4294967296
  %idxprom.i.i156.i = ashr exact i64 %sext40.i.i.i, 32
  %arrayidx.i.i157.i = getelementptr inbounds [20 x i8], ptr %start_buff.i.i105.i, i64 0, i64 %idxprom.i.i156.i
  store i8 0, ptr %arrayidx.i.i157.i, align 1, !tbaa !15
  %call8.i.i158.i = call ptr @fgets(ptr noundef nonnull %start_buff.i.i105.i, i32 noundef 20, ptr noundef nonnull %call.i.i145.i) #15
  %cmp.not.i.i159.i = icmp eq ptr %call8.i.i158.i, null
  br i1 %cmp.not.i.i159.i, label %while.end.i.i162.i, label %while.body.i.i160.i

while.end.i.i162.i:                               ; preds = %while.body.i.i160.i, %while.cond.preheader.i.i151.i
  %call12.i.i161.i = call i64 @strtoul(ptr nocapture noundef nonnull %start_buff.i.i105.i, ptr noundef null, i32 noundef 16) #15
  %call1543.i.i.i = call ptr @fgets(ptr noundef nonnull %stop_buff.i.i106.i, i32 noundef 20, ptr noundef nonnull %call2.i.i148.i) #15
  %cmp16.not44.i.i.i = icmp eq ptr %call1543.i.i.i, null
  br i1 %cmp16.not44.i.i.i, label %while.end25.i.i.i, label %while.body18.i.i.i

while.body18.i.i.i:                               ; preds = %while.body18.i.i.i, %while.end.i.i162.i
  %call20.i.i.i = call i64 @strlen(ptr noundef nonnull %stop_buff.i.i106.i) #17
  %sub22.i.i.i = shl i64 %call20.i.i.i, 32
  %sext.i.i163.i = add i64 %sub22.i.i.i, -4294967296
  %idxprom23.i.i.i = ashr exact i64 %sext.i.i163.i, 32
  %arrayidx24.i.i.i = getelementptr inbounds [20 x i8], ptr %stop_buff.i.i106.i, i64 0, i64 %idxprom23.i.i.i
  store i8 0, ptr %arrayidx24.i.i.i, align 1, !tbaa !15
  %call15.i.i.i = call ptr @fgets(ptr noundef nonnull %stop_buff.i.i106.i, i32 noundef 20, ptr noundef nonnull %call2.i.i148.i) #15
  %cmp16.not.i.i.i = icmp eq ptr %call15.i.i.i, null
  br i1 %cmp16.not.i.i.i, label %while.end25.i.i.i, label %while.body18.i.i.i

while.end25.i.i.i:                                ; preds = %while.body18.i.i.i, %while.end.i.i162.i
  %call27.i.i.i = call i64 @strtoul(ptr nocapture noundef nonnull %stop_buff.i.i106.i, ptr noundef null, i32 noundef 16) #15
  %call28.i.i164.i = call i32 @pclose(ptr noundef nonnull %call.i.i145.i) #15
  %call29.i.i.i = call i32 @pclose(ptr noundef nonnull %call2.i.i148.i) #15
  br label %get_mcount_loc_64.exit.i.i

get_mcount_loc_64.exit.i.i:                       ; preds = %while.end25.i.i.i, %if.then4.i.i153.i, %if.then.i.i147.i
  %_start_mcount_loc.1.i165.i = phi i64 [ %_start_mcount_loc.0262.i.i, %if.then.i.i147.i ], [ %_start_mcount_loc.0262.i.i, %if.then4.i.i153.i ], [ %call12.i.i161.i, %while.end25.i.i.i ]
  %_stop_mcount_loc.1.i166.i = phi i64 [ %_stop_mcount_loc.0263.i.i, %if.then.i.i147.i ], [ %_stop_mcount_loc.0263.i.i, %if.then4.i.i153.i ], [ %call27.i.i.i, %while.end25.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %stop_buff.i.i106.i) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %start_buff.i.i105.i) #15
  store ptr %call9.i, ptr %mstruct.i107.i, align 8, !tbaa !31
  store ptr %s.0274.i.i, ptr %init_data_sec.i129.i, align 8, !tbaa !33
  store i64 %_start_mcount_loc.1.i165.i, ptr %start_mcount_loc.i130.i, align 8, !tbaa !34
  store i64 %_stop_mcount_loc.1.i166.i, ptr %stop_mcount_loc.i131.i, align 8, !tbaa !35
  br label %for.inc.i171.i

for.inc.i171.i:                                   ; preds = %get_mcount_loc_64.exit.i.i, %if.end63.i.i
  %_start_mcount_loc.2.i167.i = phi i64 [ %_start_mcount_loc.1.i165.i, %get_mcount_loc_64.exit.i.i ], [ %_start_mcount_loc.0262.i.i, %if.end63.i.i ]
  %_stop_mcount_loc.2.i168.i = phi i64 [ %_stop_mcount_loc.1.i166.i, %get_mcount_loc_64.exit.i.i ], [ %_stop_mcount_loc.0263.i.i, %if.end63.i.i ]
  %inc.i169.i = add nuw nsw i32 %i.0273.i.i, 1
  %incdec.ptr.i170.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %s.0274.i.i, i64 1
  %cmp17.i.i = icmp ult ptr %incdec.ptr.i170.i, %add.ptr16.i.i
  br i1 %cmp17.i.i, label %for.body.i138.i, label %for.end.i176.i

for.end.i176.i:                                   ; preds = %for.inc.i171.i
  %.pre.i172.i = load ptr, ptr %init_data_sec.i129.i, align 8, !tbaa !33
  %tobool72.i.i = icmp ne ptr %.pre.i172.i, null
  %tobool74.i173.i = icmp ne i64 %_start_mcount_loc.2.i167.i, 0
  %or.cond.i174.i = select i1 %tobool72.i.i, i1 %tobool74.i173.i, i1 false
  %tobool76.i175.i = icmp ne i64 %_stop_mcount_loc.2.i168.i, 0
  %or.cond181.i.i = select i1 %or.cond.i174.i, i1 %tobool76.i175.i, i1 false
  br i1 %or.cond181.i.i, label %if.end79.i.i, label %if.then77.i.i

if.then77.i.i:                                    ; preds = %for.end.i176.i, %if.end15.i128.i
  %92 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call78.i.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %92, ptr noundef nonnull @.str.13, ptr noundef %8) #16
  br label %out.i197.i

if.end79.i.i:                                     ; preds = %for.end.i176.i
  %call80.i177.i = call i32 @pthread_create(ptr noundef nonnull @mcount_sort_thread, ptr noundef null, ptr noundef nonnull @sort_mcount_loc_64, ptr noundef nonnull %mstruct.i107.i) #15
  %tobool81.not.i.i = icmp eq i32 %call80.i177.i, 0
  br i1 %tobool81.not.i.i, label %if.end86.i.i, label %if.then82.i.i

if.then82.i.i:                                    ; preds = %if.end79.i.i
  %93 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call83.i.i = tail call ptr @__errno_location() #18
  %94 = load i32, ptr %call83.i.i, align 4, !tbaa !23
  %call84.i.i = call ptr @strerror(i32 noundef %94) #15
  %call85.i178.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %93, ptr noundef nonnull @.str.14, ptr noundef %call84.i.i, ptr noundef %8) #16
  br label %out.i197.i

if.end86.i.i:                                     ; preds = %if.end79.i.i
  %tobool87.not.i.i = icmp eq ptr %spec.select.i134.i, null
  br i1 %tobool87.not.i.i, label %if.then88.i.i, label %if.end90.i.i

if.then88.i.i:                                    ; preds = %if.end86.i.i
  %95 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call89.i.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %95, ptr noundef nonnull @.str.15, ptr noundef %8) #16
  br label %out.i197.i

if.end90.i.i:                                     ; preds = %if.end86.i.i
  %tobool91.not.i.i = icmp eq ptr %symtab_sec.1.i135.i, null
  br i1 %tobool91.not.i.i, label %if.then92.i.i, label %if.end94.i.i

if.then92.i.i:                                    ; preds = %if.end90.i.i
  %96 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call93.i.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %96, ptr noundef nonnull @.str.16, ptr noundef %8) #16
  br label %out.i197.i

if.end94.i.i:                                     ; preds = %if.end90.i.i
  %tobool95.not.i.i = icmp eq ptr %strtab_sec.1.i136.i, null
  br i1 %tobool95.not.i.i, label %if.then96.i.i, label %if.end98.i.i

if.then96.i.i:                                    ; preds = %if.end94.i.i
  %97 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call97.i.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %97, ptr noundef nonnull @.str.17, ptr noundef %8) #16
  br label %out.i197.i

if.end98.i.i:                                     ; preds = %if.end94.i.i
  %98 = load ptr, ptr @r8, align 8, !tbaa !5
  %sh_offset99.i.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %spec.select.i134.i, i64 0, i32 4
  %call100.i.i = call i64 %98(ptr noundef nonnull %sh_offset99.i.i) #15, !callees !30
  %add.ptr101.i.i = getelementptr i8, ptr %call9.i, i64 %call100.i.i
  %99 = load ptr, ptr @r8, align 8, !tbaa !5
  %sh_offset102.i.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %strtab_sec.1.i136.i, i64 0, i32 4
  %call103.i.i = call i64 %99(ptr noundef nonnull %sh_offset102.i.i) #15, !callees !30
  %add.ptr104.i179.i = getelementptr inbounds i8, ptr %call9.i, i64 %call103.i.i
  %100 = load ptr, ptr @r8, align 8, !tbaa !5
  %sh_offset105.i180.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %symtab_sec.1.i135.i, i64 0, i32 4
  %call106.i181.i = call i64 %100(ptr noundef nonnull %sh_offset105.i180.i) #15, !callees !30
  %add.ptr107.i.i = getelementptr inbounds i8, ptr %call9.i, i64 %call106.i181.i
  %101 = load ptr, ptr @r8, align 8, !tbaa !5
  %sh_size113.i.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %spec.select.i134.i, i64 0, i32 5
  %call114.i.i = call i64 %101(ptr noundef nonnull %sh_size113.i.i) #15
  br i1 %tobool108.not.i.i, label %if.else.i182.i, label %if.then109.i.i

if.then109.i.i:                                   ; preds = %if.end98.i.i
  %conv112.i.i = trunc i64 %call114.i.i to i32
  call void %custom_sort.0.i(ptr noundef %add.ptr101.i.i, i32 noundef %conv112.i.i) #15, !callees !24
  br label %if.end117.i.i

if.else.i182.i:                                   ; preds = %if.end98.i.i
  %102 = shl i64 %call114.i.i, 28
  %conv116.i.i = ashr i64 %102, 32
  call void @qsort(ptr noundef %add.ptr101.i.i, i64 noundef %conv116.i.i, i64 noundef 16, ptr noundef nonnull @compare_extable_64) #15
  br label %if.end117.i.i

if.end117.i.i:                                    ; preds = %if.else.i182.i, %if.then109.i.i
  %tobool118.not.i.i = icmp eq ptr %relocs.1.i142.i, null
  br i1 %tobool118.not.i.i, label %if.end121.i.i, label %if.then119.i.i

if.then119.i.i:                                   ; preds = %if.end117.i.i
  %conv120.i.i = sext i32 %relocs_size.1.i143.i to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %relocs.1.i142.i, i8 0, i64 %conv120.i.i, i1 false) #15
  br label %if.end121.i.i

if.end121.i.i:                                    ; preds = %if.then119.i.i, %if.end117.i.i
  %103 = load ptr, ptr @r8, align 8, !tbaa !5
  %call123.i.i = call i64 %103(ptr noundef nonnull %sh_offset105.i180.i) #15, !callees !30
  %sh_size126.i.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %symtab_sec.1.i135.i, i64 0, i32 5
  %104 = load ptr, ptr @r8, align 8, !tbaa !5
  %call127284.i.i = call i64 %104(ptr noundef nonnull %sh_size126.i.i) #15, !callees !30
  %105 = icmp ult i64 %call127284.i.i, 24
  br i1 %105, label %if.then149.i.i, label %for.body132.preheader.i.i

for.body132.preheader.i.i:                        ; preds = %if.end121.i.i
  %add.ptr124.i.i = getelementptr i8, ptr %call9.i, i64 %call123.i.i
  br label %for.body132.i.i

for.body132.i.i:                                  ; preds = %for.inc145.i.i, %for.body132.preheader.i.i
  %sym.0285.i.i = phi ptr [ %incdec.ptr146.i.i, %for.inc145.i.i ], [ %add.ptr124.i.i, %for.body132.preheader.i.i ]
  %st_info.i183.i = getelementptr inbounds %struct.Elf64_Sym, ptr %sym.0285.i.i, i64 0, i32 1
  %106 = load i8, ptr %st_info.i183.i, align 4, !tbaa !36
  %107 = and i8 %106, 15
  %cmp134.not.i.i = icmp eq i8 %107, 1
  br i1 %cmp134.not.i.i, label %if.end137.i.i, label %for.inc145.i.i

if.end137.i.i:                                    ; preds = %for.body132.i.i
  %108 = load ptr, ptr @r, align 8, !tbaa !5
  %call138.i.i = call i32 %108(ptr noundef nonnull %sym.0285.i.i) #15, !callees !17
  %idx.ext139.i.i = zext i32 %call138.i.i to i64
  %add.ptr140.i.i = getelementptr inbounds i8, ptr %add.ptr104.i179.i, i64 %idx.ext139.i.i
  %call141.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %add.ptr140.i.i, ptr noundef nonnull dereferenceable(25) @.str.18) #17
  %tobool142.not.i.i = icmp eq i32 %call141.i.i, 0
  br i1 %tobool142.not.i.i, label %if.end151.i.i, label %for.inc145.i.i

for.inc145.i.i:                                   ; preds = %if.end137.i.i, %for.body132.i.i
  %incdec.ptr146.i.i = getelementptr inbounds %struct.Elf64_Sym, ptr %sym.0285.i.i, i64 1
  %109 = load ptr, ptr @r8, align 8, !tbaa !5
  %call127.i.i = call i64 %109(ptr noundef nonnull %sh_size126.i.i) #15, !callees !30
  %110 = icmp ult i64 %call127.i.i, 24
  br i1 %110, label %if.then149.i.i, label %for.body132.i.i

if.then149.i.i:                                   ; preds = %for.inc145.i.i, %if.end121.i.i
  %111 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call150.i.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %111, ptr noundef nonnull @.str.19, ptr noundef %8) #16
  br label %out.i197.i

if.end151.i.i:                                    ; preds = %if.end137.i.i
  %112 = load ptr, ptr @r2, align 8, !tbaa !5
  %st_shndx.i184.i = getelementptr inbounds %struct.Elf64_Sym, ptr %sym.0285.i.i, i64 0, i32 3
  %call152.i.i = call zeroext i16 %112(ptr noundef nonnull %st_shndx.i184.i) #15, !callees !16
  %conv153.i.i = zext i16 %call152.i.i to i32
  %sub.ptr.lhs.cast.i185.i = ptrtoint ptr %sym.0285.i.i to i64
  %sub.ptr.rhs.cast.i186.i = ptrtoint ptr %add.ptr107.i.i to i64
  %sub.ptr.sub.i187.i = sub i64 %sub.ptr.lhs.cast.i185.i, %sub.ptr.rhs.cast.i186.i
  %sub.ptr.div.i.i = sdiv exact i64 %sub.ptr.sub.i187.i, 24
  %113 = add i16 %call152.i.i, 1
  %114 = icmp ult i16 %113, -255
  br i1 %114, label %if.end.i253.i.i, label %if.then.i252.i.i

if.then.i252.i.i:                                 ; preds = %if.end151.i.i
  %sub.i251.i.i = or i32 %conv153.i.i, -65536
  br label %get_secindex.exit.i195.i

if.end.i253.i.i:                                  ; preds = %if.end151.i.i
  %cmp.i.i.i188.i = icmp eq i16 %call152.i.i, -1
  br i1 %cmp.i.i.i188.i, label %if.end2.i.i190.i, label %get_secindex.exit.i195.i

if.end2.i.i190.i:                                 ; preds = %if.end.i253.i.i
  %115 = load ptr, ptr @r, align 8, !tbaa !5
  %idxprom.i254.i.i = and i64 %sub.ptr.div.i.i, 4294967295
  %arrayidx.i255.i.i = getelementptr inbounds i32, ptr %symtab_shndx.1.i144.i, i64 %idxprom.i254.i.i
  %call3.i.i189.i = call i32 %115(ptr noundef %arrayidx.i255.i.i) #15, !callees !17
  br label %get_secindex.exit.i195.i

get_secindex.exit.i195.i:                         ; preds = %if.end2.i.i190.i, %if.end.i253.i.i, %if.then.i252.i.i
  %retval.0.i.i191.i = phi i32 [ %sub.i251.i.i, %if.then.i252.i.i ], [ %call3.i.i189.i, %if.end2.i.i190.i ], [ %conv153.i.i, %if.end.i253.i.i ]
  %idxprom156.i.i = zext i32 %retval.0.i.i191.i to i64
  %arrayidx157.i.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %add.ptr.i110.i, i64 %idxprom156.i.i
  %116 = load ptr, ptr @r8, align 8, !tbaa !5
  %sh_offset158.i.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %arrayidx157.i.i, i64 0, i32 4
  %call159.i.i = call i64 %116(ptr noundef nonnull %sh_offset158.i.i) #15, !callees !30
  %add.ptr160.i.i = getelementptr i8, ptr %call9.i, i64 %call159.i.i
  %117 = load ptr, ptr @r8, align 8, !tbaa !5
  %st_value.i192.i = getelementptr inbounds %struct.Elf64_Sym, ptr %sym.0285.i.i, i64 0, i32 4
  %call161.i.i = call i64 %117(ptr noundef nonnull %st_value.i192.i) #15, !callees !30
  %add.ptr162.i.i = getelementptr i8, ptr %add.ptr160.i.i, i64 %call161.i.i
  %118 = load ptr, ptr @r8, align 8, !tbaa !5
  %sh_addr.i193.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %arrayidx157.i.i, i64 0, i32 3
  %call163.i.i = call i64 %118(ptr noundef nonnull %sh_addr.i193.i) #15, !callees !30
  %idx.neg.i194.i = sub i64 0, %call163.i.i
  %add.ptr164.i.i = getelementptr i8, ptr %add.ptr162.i.i, i64 %idx.neg.i194.i
  %119 = load ptr, ptr @w, align 8, !tbaa !5
  call void %119(i32 noundef 0, ptr noundef %add.ptr164.i.i) #15, !callees !28
  br label %out.i197.i

out.i197.i:                                       ; preds = %get_secindex.exit.i195.i, %if.then149.i.i, %if.then96.i.i, %if.then92.i.i, %if.then88.i.i, %if.then82.i.i, %if.then77.i.i
  %rc.0.i196.i = phi i32 [ -1, %if.then82.i.i ], [ 0, %get_secindex.exit.i195.i ], [ -1, %if.then149.i.i ], [ -1, %if.then96.i.i ], [ -1, %if.then92.i.i ], [ -1, %if.then88.i.i ], [ -1, %if.then77.i.i ]
  %120 = load i64, ptr @mcount_sort_thread, align 8, !tbaa !29
  %tobool165.not.i.i = icmp eq i64 %120, 0
  br i1 %tobool165.not.i.i, label %do_sort_64.exit.i, label %if.then166.i.i

if.then166.i.i:                                   ; preds = %out.i197.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %retval167.i.i) #15
  store ptr null, ptr %retval167.i.i, align 8, !tbaa !5
  %call168.i.i = call i32 @pthread_join(i64 noundef %120, ptr noundef nonnull %retval167.i.i) #15
  %tobool169.not.i.i = icmp eq i32 %call168.i.i, 0
  br i1 %tobool169.not.i.i, label %if.else174.i.i, label %if.then170.i.i

if.then170.i.i:                                   ; preds = %if.then166.i.i
  %121 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call171.i.i = tail call ptr @__errno_location() #18
  %122 = load i32, ptr %call171.i.i, align 4, !tbaa !23
  %call172.i.i = call ptr @strerror(i32 noundef %122) #15
  %call173.i.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %121, ptr noundef nonnull @.str.20, ptr noundef %call172.i.i, ptr noundef %8) #16
  br label %if.end179.i.i

if.else174.i.i:                                   ; preds = %if.then166.i.i
  %123 = load ptr, ptr %retval167.i.i, align 8, !tbaa !5
  %tobool175.not.i.i = icmp eq ptr %123, null
  br i1 %tobool175.not.i.i, label %if.end179.i.i, label %if.then176.i.i

if.then176.i.i:                                   ; preds = %if.else174.i.i
  %124 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call177.i.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %124, ptr noundef nonnull @.str.21, ptr noundef nonnull %123, ptr noundef %8) #16
  br label %if.end179.i.i

if.end179.i.i:                                    ; preds = %if.then176.i.i, %if.else174.i.i, %if.then170.i.i
  %rc.1.i198.i = phi i32 [ %call168.i.i, %if.then170.i.i ], [ -1, %if.then176.i.i ], [ 0, %if.else174.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %retval167.i.i) #15
  br label %do_sort_64.exit.i

do_sort_64.exit.i:                                ; preds = %if.end179.i.i, %out.i197.i
  %rc.2.i199.i = phi i32 [ %rc.1.i198.i, %if.end179.i.i ], [ %rc.0.i196.i, %out.i197.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mstruct.i107.i) #15
  br label %do_file.exit

sw.default69.i:                                   ; preds = %sw.epilog35.i
  %conv38.i = zext i8 %17 to i32
  %125 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call73.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %125, ptr noundef nonnull @.str.8, i32 noundef %conv38.i, ptr noundef %8) #16
  br label %do_file.exit.thread

do_file.exit:                                     ; preds = %do_sort_64.exit.i, %do_sort_32.exit.i
  %retval.0.i32 = phi i32 [ %rc.2.i.i, %do_sort_32.exit.i ], [ %rc.2.i199.i, %do_sort_64.exit.i ]
  %tobool8.not = icmp ne i32 %retval.0.i32, 0
  %inc10 = zext i1 %tobool8.not to i32
  br label %do_file.exit.thread

do_file.exit.thread:                              ; preds = %do_file.exit, %sw.default69.i, %if.then65.i, %if.then49.i, %sw.default30.i, %if.then.i29, %sw.default.i
  %inc10.sink = phi i32 [ %inc10, %do_file.exit ], [ 1, %sw.default.i ], [ 1, %if.then.i29 ], [ 1, %sw.default30.i ], [ 1, %sw.default69.i ], [ 1, %if.then49.i ], [ 1, %if.then65.i ]
  %call12 = call i32 @munmap(ptr noundef nonnull %call9.i, i64 noundef %size.158) #15
  br label %for.inc

for.inc:                                          ; preds = %do_file.exit.thread, %mmap_file.exit, %mmap_file.exit.thread38, %mmap_file.exit.thread
  %size.236 = phi i64 [ %size.158, %do_file.exit.thread ], [ %size.068, %mmap_file.exit.thread ], [ %7, %mmap_file.exit ], [ %size.068, %mmap_file.exit.thread38 ]
  %inc10.sink.pn = phi i32 [ %inc10.sink, %do_file.exit.thread ], [ 1, %mmap_file.exit.thread ], [ 1, %mmap_file.exit ], [ 1, %mmap_file.exit.thread38 ]
  %n_error.2 = add nsw i32 %n_error.071, %inc10.sink.pn
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  %tobool14 = icmp ne i32 %n_error.2, 0
  %lnot.ext = zext i1 %tobool14 to i32
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %lnot.ext, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @close(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @__fxstat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define internal i32 @rle(ptr nocapture noundef readonly %x) #6 {
entry:
  %0 = load i8, ptr %x, align 1, !tbaa !15
  %conv.i.i = zext i8 %0 to i32
  %arrayidx1.i.i = getelementptr inbounds i8, ptr %x, i64 1
  %1 = load i8, ptr %arrayidx1.i.i, align 1, !tbaa !15
  %conv2.i.i = zext i8 %1 to i32
  %shl.i.i = shl nuw nsw i32 %conv2.i.i, 8
  %or.i.i = or i32 %shl.i.i, %conv.i.i
  %arrayidx3.i.i = getelementptr inbounds i8, ptr %x, i64 2
  %2 = load i8, ptr %arrayidx3.i.i, align 1, !tbaa !15
  %conv4.i.i = zext i8 %2 to i32
  %shl5.i.i = shl nuw nsw i32 %conv4.i.i, 16
  %or6.i.i = or i32 %or.i.i, %shl5.i.i
  %arrayidx7.i.i = getelementptr inbounds i8, ptr %x, i64 3
  %3 = load i8, ptr %arrayidx7.i.i, align 1, !tbaa !15
  %conv8.i.i = zext i8 %3 to i32
  %shl9.i.i = shl nuw i32 %conv8.i.i, 24
  %or10.i.i = or i32 %or6.i.i, %shl9.i.i
  ret i32 %or10.i.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define internal zeroext i16 @r2le(ptr nocapture noundef readonly %x) #6 {
entry:
  %0 = load i8, ptr %x, align 1, !tbaa !15
  %conv.i.i = zext i8 %0 to i16
  %arrayidx1.i.i = getelementptr inbounds i8, ptr %x, i64 1
  %1 = load i8, ptr %arrayidx1.i.i, align 1, !tbaa !15
  %conv2.i.i = zext i8 %1 to i16
  %shl.i.i = shl nuw i16 %conv2.i.i, 8
  %or.i.i = or i16 %shl.i.i, %conv.i.i
  ret i16 %or.i.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define internal i64 @r8le(ptr nocapture noundef readonly %x) #6 {
entry:
  %add.ptr.i.i = getelementptr inbounds i8, ptr %x, i64 4
  %0 = load i8, ptr %add.ptr.i.i, align 1, !tbaa !15
  %conv.i.i.i = zext i8 %0 to i64
  %arrayidx1.i.i.i = getelementptr inbounds i8, ptr %x, i64 5
  %1 = load i8, ptr %arrayidx1.i.i.i, align 1, !tbaa !15
  %conv2.i.i.i = zext i8 %1 to i64
  %arrayidx3.i.i.i = getelementptr inbounds i8, ptr %x, i64 6
  %2 = load i8, ptr %arrayidx3.i.i.i, align 1, !tbaa !15
  %conv4.i.i.i = zext i8 %2 to i64
  %arrayidx7.i.i.i = getelementptr inbounds i8, ptr %x, i64 7
  %3 = load i8, ptr %arrayidx7.i.i.i, align 1, !tbaa !15
  %conv8.i.i.i = zext i8 %3 to i64
  %4 = shl nuw i64 %conv8.i.i.i, 56
  %5 = shl nuw nsw i64 %conv4.i.i.i, 48
  %6 = shl nuw nsw i64 %conv2.i.i.i, 40
  %7 = shl nuw nsw i64 %conv.i.i.i, 32
  %8 = load i8, ptr %x, align 1, !tbaa !15
  %conv.i4.i.i = zext i8 %8 to i64
  %arrayidx1.i5.i.i = getelementptr inbounds i8, ptr %x, i64 1
  %9 = load i8, ptr %arrayidx1.i5.i.i, align 1, !tbaa !15
  %conv2.i6.i.i = zext i8 %9 to i64
  %shl.i7.i.i = shl nuw nsw i64 %conv2.i6.i.i, 8
  %arrayidx3.i9.i.i = getelementptr inbounds i8, ptr %x, i64 2
  %10 = load i8, ptr %arrayidx3.i9.i.i, align 1, !tbaa !15
  %conv4.i10.i.i = zext i8 %10 to i64
  %shl5.i11.i.i = shl nuw nsw i64 %conv4.i10.i.i, 16
  %arrayidx7.i13.i.i = getelementptr inbounds i8, ptr %x, i64 3
  %11 = load i8, ptr %arrayidx7.i13.i.i, align 1, !tbaa !15
  %conv8.i14.i.i = zext i8 %11 to i64
  %shl9.i15.i.i = shl nuw nsw i64 %conv8.i14.i.i, 24
  %or.i8.i.i = or i64 %6, %7
  %or6.i12.i.i = or i64 %or.i8.i.i, %5
  %or10.i16.i.i = or i64 %or6.i12.i.i, %4
  %12 = or i64 %or10.i16.i.i, %conv.i4.i.i
  %13 = or i64 %12, %shl.i7.i.i
  %shl.i.i = or i64 %13, %shl5.i11.i.i
  %or.i.i = or i64 %shl.i.i, %shl9.i15.i.i
  ret i64 %or.i.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define internal void @wle(i32 noundef %val, ptr nocapture noundef writeonly %x) #7 {
entry:
  %shr.i.i = lshr i32 %val, 16
  %add.ptr.i.i = getelementptr inbounds i8, ptr %x, i64 2
  %conv.i.i.i = trunc i32 %shr.i.i to i8
  %incdec.ptr.i.i.i = getelementptr inbounds i8, ptr %x, i64 3
  store i8 %conv.i.i.i, ptr %add.ptr.i.i, align 1, !tbaa !15
  %sum.shift.i.i = lshr i32 %val, 24
  %conv2.i.i.i = trunc i32 %sum.shift.i.i to i8
  store i8 %conv2.i.i.i, ptr %incdec.ptr.i.i.i, align 1, !tbaa !15
  %conv.i4.i.i = trunc i32 %val to i8
  %incdec.ptr.i5.i.i = getelementptr inbounds i8, ptr %x, i64 1
  store i8 %conv.i4.i.i, ptr %x, align 1, !tbaa !15
  %0 = lshr i32 %val, 8
  %conv2.i6.i.i = trunc i32 %0 to i8
  store i8 %conv2.i6.i.i, ptr %incdec.ptr.i5.i.i, align 1, !tbaa !15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define internal void @w8le(i64 noundef %val, ptr nocapture noundef writeonly %x) #7 {
entry:
  %shr.i.i = lshr i64 %val, 32
  %add.ptr.i.i = getelementptr inbounds i8, ptr %x, i64 4
  %add.ptr.i.i.i = getelementptr inbounds i8, ptr %x, i64 6
  %shr.i13.i.i = lshr i64 %val, 48
  %conv.i.i.i.i = trunc i64 %shr.i13.i.i to i8
  %incdec.ptr.i.i.i.i = getelementptr inbounds i8, ptr %x, i64 7
  store i8 %conv.i.i.i.i, ptr %add.ptr.i.i.i, align 1, !tbaa !15
  %sum.shift.i14.i.i = lshr i64 %val, 56
  %conv2.i.i.i.i = trunc i64 %sum.shift.i14.i.i to i8
  store i8 %conv2.i.i.i.i, ptr %incdec.ptr.i.i.i.i, align 1, !tbaa !15
  %conv.i4.i.i.i = trunc i64 %shr.i.i to i8
  %incdec.ptr.i5.i.i.i = getelementptr inbounds i8, ptr %x, i64 5
  store i8 %conv.i4.i.i.i, ptr %add.ptr.i.i, align 1, !tbaa !15
  %sum.shift.i.i = lshr i64 %val, 40
  %conv2.i6.i.i.i = trunc i64 %sum.shift.i.i to i8
  store i8 %conv2.i6.i.i.i, ptr %incdec.ptr.i5.i.i.i, align 1, !tbaa !15
  %add.ptr.i5.i.i = getelementptr inbounds i8, ptr %x, i64 2
  %shr.i415.i.i = lshr i64 %val, 16
  %conv.i.i6.i.i = trunc i64 %shr.i415.i.i to i8
  %incdec.ptr.i.i7.i.i = getelementptr inbounds i8, ptr %x, i64 3
  store i8 %conv.i.i6.i.i, ptr %add.ptr.i5.i.i, align 1, !tbaa !15
  %sum.shift.i816.i.i = lshr i64 %val, 24
  %conv2.i.i9.i.i = trunc i64 %sum.shift.i816.i.i to i8
  store i8 %conv2.i.i9.i.i, ptr %incdec.ptr.i.i7.i.i, align 1, !tbaa !15
  %conv.i4.i10.i.i = trunc i64 %val to i8
  %incdec.ptr.i5.i11.i.i = getelementptr inbounds i8, ptr %x, i64 1
  store i8 %conv.i4.i10.i.i, ptr %x, align 1, !tbaa !15
  %0 = lshr i64 %val, 8
  %conv2.i6.i12.i.i = trunc i64 %0 to i8
  store i8 %conv2.i6.i12.i.i, ptr %incdec.ptr.i5.i11.i.i, align 1, !tbaa !15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define internal i32 @rbe(ptr nocapture noundef readonly %x) #6 {
entry:
  %0 = load i8, ptr %x, align 1, !tbaa !15
  %conv.i.i = zext i8 %0 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %arrayidx1.i.i = getelementptr inbounds i8, ptr %x, i64 1
  %1 = load i8, ptr %arrayidx1.i.i, align 1, !tbaa !15
  %conv2.i.i = zext i8 %1 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %or.i.i = or i32 %shl3.i.i, %shl.i.i
  %arrayidx4.i.i = getelementptr inbounds i8, ptr %x, i64 2
  %2 = load i8, ptr %arrayidx4.i.i, align 1, !tbaa !15
  %conv5.i.i = zext i8 %2 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or7.i.i = or i32 %or.i.i, %shl6.i.i
  %arrayidx8.i.i = getelementptr inbounds i8, ptr %x, i64 3
  %3 = load i8, ptr %arrayidx8.i.i, align 1, !tbaa !15
  %conv9.i.i = zext i8 %3 to i32
  %or10.i.i = or i32 %or7.i.i, %conv9.i.i
  ret i32 %or10.i.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define internal zeroext i16 @r2be(ptr nocapture noundef readonly %x) #6 {
entry:
  %0 = load i8, ptr %x, align 1, !tbaa !15
  %conv.i.i = zext i8 %0 to i16
  %shl.i.i = shl nuw i16 %conv.i.i, 8
  %arrayidx1.i.i = getelementptr inbounds i8, ptr %x, i64 1
  %1 = load i8, ptr %arrayidx1.i.i, align 1, !tbaa !15
  %conv2.i.i = zext i8 %1 to i16
  %or.i.i = or i16 %shl.i.i, %conv2.i.i
  ret i16 %or.i.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define internal i64 @r8be(ptr nocapture noundef readonly %x) #6 {
entry:
  %0 = load i8, ptr %x, align 1, !tbaa !15
  %conv.i.i.i = zext i8 %0 to i64
  %shl.i.i.i = shl nuw nsw i64 %conv.i.i.i, 24
  %arrayidx1.i.i.i = getelementptr inbounds i8, ptr %x, i64 1
  %1 = load i8, ptr %arrayidx1.i.i.i, align 1, !tbaa !15
  %conv2.i.i.i = zext i8 %1 to i64
  %shl3.i.i.i = shl nuw nsw i64 %conv2.i.i.i, 16
  %or.i.i.i = or i64 %shl3.i.i.i, %shl.i.i.i
  %arrayidx4.i.i.i = getelementptr inbounds i8, ptr %x, i64 2
  %2 = load i8, ptr %arrayidx4.i.i.i, align 1, !tbaa !15
  %conv5.i.i.i = zext i8 %2 to i64
  %shl6.i.i.i = shl nuw nsw i64 %conv5.i.i.i, 8
  %or7.i.i.i = or i64 %or.i.i.i, %shl6.i.i.i
  %arrayidx8.i.i.i = getelementptr inbounds i8, ptr %x, i64 3
  %3 = load i8, ptr %arrayidx8.i.i.i, align 1, !tbaa !15
  %conv9.i.i.i = zext i8 %3 to i64
  %or10.i.i.i = or i64 %or7.i.i.i, %conv9.i.i.i
  %shl.i.i = shl nuw i64 %or10.i.i.i, 32
  %add.ptr.i.i = getelementptr inbounds i8, ptr %x, i64 4
  %4 = load i8, ptr %add.ptr.i.i, align 1, !tbaa !15
  %conv.i4.i.i = zext i8 %4 to i64
  %shl.i5.i.i = shl nuw nsw i64 %conv.i4.i.i, 24
  %arrayidx1.i6.i.i = getelementptr inbounds i8, ptr %x, i64 5
  %5 = load i8, ptr %arrayidx1.i6.i.i, align 1, !tbaa !15
  %conv2.i7.i.i = zext i8 %5 to i64
  %shl3.i8.i.i = shl nuw nsw i64 %conv2.i7.i.i, 16
  %or.i9.i.i = or i64 %shl3.i8.i.i, %shl.i5.i.i
  %arrayidx4.i10.i.i = getelementptr inbounds i8, ptr %x, i64 6
  %6 = load i8, ptr %arrayidx4.i10.i.i, align 1, !tbaa !15
  %conv5.i11.i.i = zext i8 %6 to i64
  %shl6.i12.i.i = shl nuw nsw i64 %conv5.i11.i.i, 8
  %arrayidx8.i14.i.i = getelementptr inbounds i8, ptr %x, i64 7
  %7 = load i8, ptr %arrayidx8.i14.i.i, align 1, !tbaa !15
  %conv9.i15.i.i = zext i8 %7 to i64
  %or7.i13.i.i = or i64 %or.i9.i.i, %shl.i.i
  %or10.i16.i.i = or i64 %or7.i13.i.i, %shl6.i12.i.i
  %or.i.i = or i64 %or10.i16.i.i, %conv9.i15.i.i
  ret i64 %or.i.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define internal void @wbe(i32 noundef %val, ptr nocapture noundef writeonly %x) #7 {
entry:
  %shr.i.i = lshr i32 %val, 16
  %0 = lshr i32 %val, 24
  %conv1.i.i.i = trunc i32 %0 to i8
  %incdec.ptr.i.i.i = getelementptr inbounds i8, ptr %x, i64 1
  store i8 %conv1.i.i.i, ptr %x, align 1, !tbaa !15
  %conv2.i.i.i = trunc i32 %shr.i.i to i8
  store i8 %conv2.i.i.i, ptr %incdec.ptr.i.i.i, align 1, !tbaa !15
  %add.ptr.i.i = getelementptr inbounds i8, ptr %x, i64 2
  %1 = lshr i32 %val, 8
  %conv1.i4.i.i = trunc i32 %1 to i8
  %incdec.ptr.i5.i.i = getelementptr inbounds i8, ptr %x, i64 3
  store i8 %conv1.i4.i.i, ptr %add.ptr.i.i, align 1, !tbaa !15
  %conv2.i6.i.i = trunc i32 %val to i8
  store i8 %conv2.i6.i.i, ptr %incdec.ptr.i5.i.i, align 1, !tbaa !15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define internal void @w8be(i64 noundef %val, ptr nocapture noundef writeonly %x) #7 {
entry:
  %shr.i.i = lshr i64 %val, 32
  %0 = lshr i64 %val, 56
  %conv1.i.i.i.i = trunc i64 %0 to i8
  %incdec.ptr.i.i.i.i = getelementptr inbounds i8, ptr %x, i64 1
  store i8 %conv1.i.i.i.i, ptr %x, align 1, !tbaa !15
  %shr.i12.i.i = lshr i64 %val, 48
  %conv2.i.i.i.i = trunc i64 %shr.i12.i.i to i8
  store i8 %conv2.i.i.i.i, ptr %incdec.ptr.i.i.i.i, align 1, !tbaa !15
  %add.ptr.i.i.i = getelementptr inbounds i8, ptr %x, i64 2
  %1 = lshr i64 %val, 40
  %conv1.i4.i.i.i = trunc i64 %1 to i8
  %incdec.ptr.i5.i.i.i = getelementptr inbounds i8, ptr %x, i64 3
  store i8 %conv1.i4.i.i.i, ptr %add.ptr.i.i.i, align 1, !tbaa !15
  %conv2.i6.i.i.i = trunc i64 %shr.i.i to i8
  store i8 %conv2.i6.i.i.i, ptr %incdec.ptr.i5.i.i.i, align 1, !tbaa !15
  %add.ptr.i.i = getelementptr inbounds i8, ptr %x, i64 4
  %2 = lshr i64 %val, 24
  %conv1.i.i5.i.i = trunc i64 %2 to i8
  %incdec.ptr.i.i6.i.i = getelementptr inbounds i8, ptr %x, i64 5
  store i8 %conv1.i.i5.i.i, ptr %add.ptr.i.i, align 1, !tbaa !15
  %shr.i413.i.i = lshr i64 %val, 16
  %conv2.i.i7.i.i = trunc i64 %shr.i413.i.i to i8
  store i8 %conv2.i.i7.i.i, ptr %incdec.ptr.i.i6.i.i, align 1, !tbaa !15
  %add.ptr.i8.i.i = getelementptr inbounds i8, ptr %x, i64 6
  %3 = lshr i64 %val, 8
  %conv1.i4.i9.i.i = trunc i64 %3 to i8
  %incdec.ptr.i5.i10.i.i = getelementptr inbounds i8, ptr %x, i64 7
  store i8 %conv1.i4.i9.i.i, ptr %add.ptr.i8.i.i, align 1, !tbaa !15
  %conv2.i6.i11.i.i = trunc i64 %val to i8
  store i8 %conv2.i6.i11.i.i, ptr %incdec.ptr.i5.i10.i.i, align 1, !tbaa !15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sort_relative_table_with_data(ptr noundef %extab_image, i32 noundef %image_size) unnamed_addr #0 {
entry:
  %cmp45 = icmp sgt i32 %image_size, 0
  br i1 %cmp45, label %while.body, label %while.end.thread

while.end.thread:                                 ; preds = %entry
  %image_size.nonneg = sub i32 0, %image_size
  %div4951 = udiv i32 %image_size.nonneg, 12
  %div4951.neg = sub nsw i32 0, %div4951
  %conv850 = sext i32 %div4951.neg to i64
  tail call void @qsort(ptr noundef %extab_image, i64 noundef %conv850, i64 noundef 12, ptr noundef nonnull @compare_relative_table) #15
  br label %while.end25

while.body:                                       ; preds = %while.body, %entry
  %i.046 = phi i32 [ %add6, %while.body ], [ 0, %entry ]
  %idx.ext = sext i32 %i.046 to i64
  %add.ptr = getelementptr inbounds i8, ptr %extab_image, i64 %idx.ext
  %0 = load ptr, ptr @w, align 8, !tbaa !5
  %1 = load ptr, ptr @r, align 8, !tbaa !5
  %call = tail call i32 %1(ptr noundef %add.ptr) #15, !callees !17
  %add = add i32 %call, %i.046
  tail call void %0(i32 noundef %add, ptr noundef %add.ptr) #15, !callees !28
  %2 = load ptr, ptr @w, align 8, !tbaa !5
  %3 = load ptr, ptr @r, align 8, !tbaa !5
  %add.ptr1 = getelementptr inbounds i32, ptr %add.ptr, i64 1
  %call2 = tail call i32 %3(ptr noundef nonnull %add.ptr1) #15, !callees !17
  %add3 = add i32 %i.046, 4
  %add4 = add i32 %add3, %call2
  tail call void %2(i32 noundef %add4, ptr noundef nonnull %add.ptr1) #15, !callees !28
  %add6 = add i32 %i.046, 12
  %cmp = icmp slt i32 %add6, %image_size
  br i1 %cmp, label %while.body, label %while.end

while.end:                                        ; preds = %while.body
  %div = sdiv i32 %image_size, 12
  %conv8 = sext i32 %div to i64
  tail call void @qsort(ptr noundef %extab_image, i64 noundef %conv8, i64 noundef 12, ptr noundef nonnull @compare_relative_table) #15
  br i1 %cmp45, label %while.body12, label %while.end25

while.body12:                                     ; preds = %while.body12, %while.end
  %i.148 = phi i32 [ %add23, %while.body12 ], [ 0, %while.end ]
  %idx.ext14 = sext i32 %i.148 to i64
  %add.ptr15 = getelementptr inbounds i8, ptr %extab_image, i64 %idx.ext14
  %4 = load ptr, ptr @w, align 8, !tbaa !5
  %5 = load ptr, ptr @r, align 8, !tbaa !5
  %call16 = tail call i32 %5(ptr noundef %add.ptr15) #15, !callees !17
  %sub = sub i32 %call16, %i.148
  tail call void %4(i32 noundef %sub, ptr noundef %add.ptr15) #15, !callees !28
  %6 = load ptr, ptr @w, align 8, !tbaa !5
  %7 = load ptr, ptr @r, align 8, !tbaa !5
  %add.ptr17 = getelementptr inbounds i32, ptr %add.ptr15, i64 1
  %call18 = tail call i32 %7(ptr noundef nonnull %add.ptr17) #15, !callees !17
  %add19.neg = sub nuw nsw i32 -4, %i.148
  %sub20 = add i32 %add19.neg, %call18
  tail call void %6(i32 noundef %sub20, ptr noundef nonnull %add.ptr17) #15, !callees !28
  %add23 = add i32 %i.148, 12
  %cmp10 = icmp slt i32 %add23, %image_size
  br i1 %cmp10, label %while.body12, label %while.end25

while.end25:                                      ; preds = %while.body12, %while.end, %while.end.thread
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @s390_sort_relative_table(ptr noundef %extab_image, i32 noundef %image_size) unnamed_addr #0 {
entry:
  %cmp68 = icmp sgt i32 %image_size, 0
  br i1 %cmp68, label %for.body, label %for.end.thread

for.end.thread:                                   ; preds = %entry
  %image_size.nonneg = sub i32 0, %image_size
  %div808283 = lshr i32 %image_size.nonneg, 4
  %div8082.neg = sub nsw i32 0, %div808283
  %conv1281 = sext i32 %div8082.neg to i64
  tail call void @qsort(ptr noundef %extab_image, i64 noundef %conv1281, i64 noundef 16, ptr noundef nonnull @compare_relative_table) #15
  br label %for.end38

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %add.ptr = getelementptr inbounds i8, ptr %extab_image, i64 %indvars.iv
  %0 = load ptr, ptr @w, align 8, !tbaa !5
  %1 = load ptr, ptr @r, align 8, !tbaa !5
  %call = tail call i32 %1(ptr noundef %add.ptr) #15, !callees !17
  %2 = trunc i64 %indvars.iv to i32
  %add = add i32 %call, %2
  tail call void %0(i32 noundef %add, ptr noundef %add.ptr) #15, !callees !28
  %3 = load ptr, ptr @w, align 8, !tbaa !5
  %4 = load ptr, ptr @r, align 8, !tbaa !5
  %add.ptr1 = getelementptr inbounds i8, ptr %add.ptr, i64 4
  %call2 = tail call i32 %4(ptr noundef nonnull %add.ptr1) #15, !callees !17
  %5 = trunc i64 %indvars.iv to i32
  %6 = or i32 %5, 4
  %add4 = add i32 %6, %call2
  tail call void %3(i32 noundef %add4, ptr noundef nonnull %add.ptr1) #15, !callees !28
  %7 = load ptr, ptr @r8, align 8, !tbaa !5
  %add.ptr6 = getelementptr inbounds i8, ptr %add.ptr, i64 8
  %call7 = tail call i64 %7(ptr noundef nonnull %add.ptr6) #15, !callees !30
  %tobool.not = icmp eq i64 %call7, 0
  %8 = or i64 %indvars.iv, 8
  %add9 = add i64 %call7, %8
  %handler.0 = select i1 %tobool.not, i64 0, i64 %add9
  %9 = load ptr, ptr @w8, align 8, !tbaa !5
  tail call void %9(i64 noundef %handler.0, ptr noundef nonnull %add.ptr6) #15, !callees !38
  %indvars.iv.next = add nuw i64 %indvars.iv, 16
  %10 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %10, %image_size
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body
  %div = sdiv i32 %image_size, 16
  %conv12 = sext i32 %div to i64
  tail call void @qsort(ptr noundef %extab_image, i64 noundef %conv12, i64 noundef 16, ptr noundef nonnull @compare_relative_table) #15
  br i1 %cmp68, label %for.body16, label %for.end38

for.body16:                                       ; preds = %for.body16, %for.end
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %for.body16 ], [ 0, %for.end ]
  %add.ptr19 = getelementptr inbounds i8, ptr %extab_image, i64 %indvars.iv75
  %11 = load ptr, ptr @w, align 8, !tbaa !5
  %12 = load ptr, ptr @r, align 8, !tbaa !5
  %call21 = tail call i32 %12(ptr noundef %add.ptr19) #15, !callees !17
  %13 = trunc i64 %indvars.iv75 to i32
  %sub = sub i32 %call21, %13
  tail call void %11(i32 noundef %sub, ptr noundef %add.ptr19) #15, !callees !28
  %14 = load ptr, ptr @w, align 8, !tbaa !5
  %15 = load ptr, ptr @r, align 8, !tbaa !5
  %add.ptr22 = getelementptr inbounds i8, ptr %add.ptr19, i64 4
  %call23 = tail call i32 %15(ptr noundef nonnull %add.ptr22) #15, !callees !17
  %16 = trunc i64 %indvars.iv75 to i32
  %17 = sub nuw nsw i32 -4, %16
  %sub25 = add i32 %17, %call23
  tail call void %14(i32 noundef %sub25, ptr noundef nonnull %add.ptr22) #15, !callees !28
  %18 = load ptr, ptr @r8, align 8, !tbaa !5
  %add.ptr27 = getelementptr inbounds i8, ptr %add.ptr19, i64 8
  %call28 = tail call i64 %18(ptr noundef nonnull %add.ptr27) #15, !callees !30
  %tobool29.not = icmp eq i64 %call28, 0
  %19 = or i64 %indvars.iv75, 8
  %sub33 = sub i64 %call28, %19
  %handler20.0 = select i1 %tobool29.not, i64 0, i64 %sub33
  %20 = load ptr, ptr @w8, align 8, !tbaa !5
  tail call void %20(i64 noundef %handler20.0, ptr noundef nonnull %add.ptr27) #15, !callees !38
  %indvars.iv.next76 = add nuw i64 %indvars.iv75, 16
  %21 = trunc i64 %indvars.iv.next76 to i32
  %cmp14 = icmp slt i32 %21, %image_size
  br i1 %cmp14, label %for.body16, label %for.end38

for.end38:                                        ; preds = %for.body16, %for.end, %for.end.thread
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sort_relative_table(ptr noundef %extab_image, i32 noundef %image_size) unnamed_addr #0 {
entry:
  %cmp25 = icmp sgt i32 %image_size, 0
  br i1 %cmp25, label %while.body, label %while.end.thread

while.end.thread:                                 ; preds = %entry
  %image_size.nonneg = sub i32 0, %image_size
  %div333536 = lshr i32 %image_size.nonneg, 3
  %div3335.neg = sub nsw i32 0, %div333536
  %conv34 = sext i32 %div3335.neg to i64
  tail call void @qsort(ptr noundef %extab_image, i64 noundef %conv34, i64 noundef 8, ptr noundef nonnull @compare_relative_table) #15
  br label %while.end11

while.body:                                       ; preds = %while.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.body ], [ 0, %entry ]
  %add.ptr = getelementptr inbounds i8, ptr %extab_image, i64 %indvars.iv
  %0 = load ptr, ptr @w, align 8, !tbaa !5
  %1 = load ptr, ptr @r, align 8, !tbaa !5
  %call = tail call i32 %1(ptr noundef %add.ptr) #15, !callees !17
  %2 = trunc i64 %indvars.iv to i32
  %add = add i32 %call, %2
  tail call void %0(i32 noundef %add, ptr noundef %add.ptr) #15, !callees !28
  %indvars.iv.next = add nuw i64 %indvars.iv, 4
  %3 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %3, %image_size
  br i1 %cmp, label %while.body, label %while.end

while.end:                                        ; preds = %while.body
  %div = sdiv i32 %image_size, 8
  %conv = sext i32 %div to i64
  tail call void @qsort(ptr noundef %extab_image, i64 noundef %conv, i64 noundef 8, ptr noundef nonnull @compare_relative_table) #15
  br i1 %cmp25, label %while.body5, label %while.end11

while.body5:                                      ; preds = %while.body5, %while.end
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %while.body5 ], [ 0, %while.end ]
  %add.ptr8 = getelementptr inbounds i8, ptr %extab_image, i64 %indvars.iv30
  %4 = load ptr, ptr @w, align 8, !tbaa !5
  %5 = load ptr, ptr @r, align 8, !tbaa !5
  %call9 = tail call i32 %5(ptr noundef %add.ptr8) #15, !callees !17
  %6 = trunc i64 %indvars.iv30 to i32
  %sub = sub i32 %call9, %6
  tail call void %4(i32 noundef %sub, ptr noundef %add.ptr8) #15, !callees !28
  %indvars.iv.next31 = add nuw i64 %indvars.iv30, 4
  %7 = trunc i64 %indvars.iv.next31 to i32
  %cmp3 = icmp slt i32 %7, %image_size
  br i1 %cmp3, label %while.body5, label %while.end11

while.end11:                                      ; preds = %while.body5, %while.end, %while.end.thread
  ret void
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal i32 @compare_relative_table(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %0 = load ptr, ptr @r, align 8, !tbaa !5
  %call = tail call i32 %0(ptr noundef %a) #15, !callees !17
  %1 = load ptr, ptr @r, align 8, !tbaa !5
  %call1 = tail call i32 %1(ptr noundef %b) #15, !callees !17
  %cmp = icmp slt i32 %call, %call1
  %cmp2 = icmp sgt i32 %call, %call1
  %. = zext i1 %cmp2 to i32
  %retval.0 = select i1 %cmp, i32 -1, i32 %.
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal ptr @sort_mcount_loc_32(ptr nocapture noundef readonly %arg) #0 {
entry:
  %start_mcount_loc = getelementptr inbounds %struct.elf_mcount_loc_32, ptr %arg, i64 0, i32 2
  %0 = load i32, ptr %start_mcount_loc, align 8, !tbaa !21
  %1 = load ptr, ptr @r, align 8, !tbaa !5
  %init_data_sec = getelementptr inbounds %struct.elf_mcount_loc_32, ptr %arg, i64 0, i32 1
  %2 = load ptr, ptr %init_data_sec, align 8, !tbaa !20
  %sh_addr = getelementptr inbounds %struct.Elf32_Shdr, ptr %2, i64 0, i32 3
  %call = tail call i32 %1(ptr noundef nonnull %sh_addr) #15, !callees !17
  %sub = sub i32 %0, %call
  %3 = load ptr, ptr @r, align 8, !tbaa !5
  %4 = load ptr, ptr %init_data_sec, align 8, !tbaa !20
  %sh_offset = getelementptr inbounds %struct.Elf32_Shdr, ptr %4, i64 0, i32 4
  %call2 = tail call i32 %3(ptr noundef nonnull %sh_offset) #15, !callees !17
  %add = add i32 %sub, %call2
  %stop_mcount_loc = getelementptr inbounds %struct.elf_mcount_loc_32, ptr %arg, i64 0, i32 3
  %5 = load i32, ptr %stop_mcount_loc, align 4, !tbaa !22
  %6 = load i32, ptr %start_mcount_loc, align 8, !tbaa !21
  %sub4 = sub i32 %5, %6
  %7 = load ptr, ptr %arg, align 8, !tbaa !18
  %idx.ext = zext i32 %add to i64
  %add.ptr = getelementptr i8, ptr %7, i64 %idx.ext
  %8 = lshr i32 %sub4, 2
  %div = zext i32 %8 to i64
  tail call void @qsort(ptr noundef %add.ptr, i64 noundef %div, i64 noundef 4, ptr noundef nonnull @compare_extable_32) #15
  ret ptr null
}

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal i32 @compare_extable_32(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %0 = load ptr, ptr @r, align 8, !tbaa !5
  %call = tail call i32 %0(ptr noundef %a) #15, !callees !17
  %1 = load ptr, ptr @r, align 8, !tbaa !5
  %call1 = tail call i32 %1(ptr noundef %b) #15, !callees !17
  %cmp = icmp ult i32 %call, %call1
  %cmp2 = icmp ugt i32 %call, %call1
  %. = zext i1 %cmp2 to i32
  %retval.0 = select i1 %cmp, i32 -1, i32 %.
  ret i32 %retval.0
}

declare i32 @pthread_join(i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noalias noundef ptr @popen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @pclose(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define internal ptr @sort_mcount_loc_64(ptr nocapture noundef readonly %arg) #0 {
entry:
  %start_mcount_loc = getelementptr inbounds %struct.elf_mcount_loc_64, ptr %arg, i64 0, i32 2
  %0 = load i64, ptr %start_mcount_loc, align 8, !tbaa !34
  %1 = load ptr, ptr @r8, align 8, !tbaa !5
  %init_data_sec = getelementptr inbounds %struct.elf_mcount_loc_64, ptr %arg, i64 0, i32 1
  %2 = load ptr, ptr %init_data_sec, align 8, !tbaa !33
  %sh_addr = getelementptr inbounds %struct.Elf64_Shdr, ptr %2, i64 0, i32 3
  %call = tail call i64 %1(ptr noundef nonnull %sh_addr) #15, !callees !30
  %sub = sub i64 %0, %call
  %3 = load ptr, ptr @r8, align 8, !tbaa !5
  %4 = load ptr, ptr %init_data_sec, align 8, !tbaa !33
  %sh_offset = getelementptr inbounds %struct.Elf64_Shdr, ptr %4, i64 0, i32 4
  %call2 = tail call i64 %3(ptr noundef nonnull %sh_offset) #15, !callees !30
  %add = add i64 %sub, %call2
  %stop_mcount_loc = getelementptr inbounds %struct.elf_mcount_loc_64, ptr %arg, i64 0, i32 3
  %5 = load i64, ptr %stop_mcount_loc, align 8, !tbaa !35
  %6 = load i64, ptr %start_mcount_loc, align 8, !tbaa !34
  %sub4 = sub i64 %5, %6
  %7 = load ptr, ptr %arg, align 8, !tbaa !31
  %add.ptr = getelementptr i8, ptr %7, i64 %add
  %div10 = lshr i64 %sub4, 3
  tail call void @qsort(ptr noundef %add.ptr, i64 noundef %div10, i64 noundef 8, ptr noundef nonnull @compare_extable_64) #15
  ret ptr null
}

; Function Attrs: nounwind uwtable
define internal i32 @compare_extable_64(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %0 = load ptr, ptr @r8, align 8, !tbaa !5
  %call = tail call i64 %0(ptr noundef %a) #15, !callees !30
  %1 = load ptr, ptr @r8, align 8, !tbaa !5
  %call1 = tail call i64 %1(ptr noundef %b) #15, !callees !30
  %cmp = icmp ult i64 %call, %call1
  %cmp2 = icmp ugt i64 %call, %call1
  %. = zext i1 %cmp2 to i32
  %retval.0 = select i1 %cmp, i32 -1, i32 %.
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #13

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { cold }
attributes #15 = { nounwind }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind readonly willreturn }
attributes #18 = { nounwind readnone willreturn }

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
!9 = !{!10, !12, i64 24}
!10 = !{!"stat", !11, i64 0, !11, i64 8, !11, i64 16, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !13, i64 72, !13, i64 88, !13, i64 104, !7, i64 120}
!11 = !{!"long", !7, i64 0}
!12 = !{!"int", !7, i64 0}
!13 = !{!"timespec", !11, i64 0, !11, i64 8}
!14 = !{!10, !11, i64 48}
!15 = !{!7, !7, i64 0}
!16 = !{ptr @r2be, ptr @r2le}
!17 = !{ptr @rbe, ptr @rle}
!18 = !{!19, !6, i64 0}
!19 = !{!"elf_mcount_loc_32", !6, i64 0, !6, i64 8, !12, i64 16, !12, i64 20}
!20 = !{!19, !6, i64 8}
!21 = !{!19, !12, i64 16}
!22 = !{!19, !12, i64 20}
!23 = !{!12, !12, i64 0}
!24 = !{ptr @s390_sort_relative_table, ptr @sort_relative_table, ptr @sort_relative_table_with_data}
!25 = !{!26, !7, i64 12}
!26 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !7, i64 12, !7, i64 13, !27, i64 14}
!27 = !{!"short", !7, i64 0}
!28 = !{ptr @wbe, ptr @wle}
!29 = !{!11, !11, i64 0}
!30 = !{ptr @r8be, ptr @r8le}
!31 = !{!32, !6, i64 0}
!32 = !{!"elf_mcount_loc_64", !6, i64 0, !6, i64 8, !11, i64 16, !11, i64 24}
!33 = !{!32, !6, i64 8}
!34 = !{!32, !11, i64 16}
!35 = !{!32, !11, i64 24}
!36 = !{!37, !7, i64 4}
!37 = !{!"", !12, i64 0, !7, i64 4, !7, i64 5, !27, i64 6, !11, i64 8, !11, i64 16}
!38 = !{ptr @w8be, ptr @w8le}
