; ModuleID = '/llk/IR_all_yes/scripts/insert-sys-cert.c_pt.bc'
source_filename = "../scripts/insert-sys-cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.sym = type { ptr, i64, i64, ptr, i32 }
%struct.Elf64_Ehdr = type { [16 x i8], i16, i16, i32, i64, i64, i64, i32, i16, i16, i16, i16, i16, i16 }
%struct.Elf64_Shdr = type { i32, i32, i64, i64, i64, i64, i32, i32, i64, i64 }
%struct.Elf64_Sym = type { i32, i8, i8, i16, i64, i64 }

@.str = private unnamed_addr constant [7 x i8] c"b:c:s:\00", align 1
@optarg = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"ERROR:   Invalid ELF file.\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"ERROR:   Invalid ELF magic.\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"ERROR:   ELF class mismatch.\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"ERROR:   ELF endian mismatch.\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"ERROR:   Could not find section header.\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [43 x i8] c"WARNING: Could not find the symbol table.\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"ERROR:   Please provide a System.map file.\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"system_extra_cert\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"system_extra_cert_used\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"system_certificate_list_size\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"INFO:    Symbol table found.\0A\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"WARNING: System.map is ignored.\0A\00", align 1
@.str.14 = private unnamed_addr constant [56 x i8] c"ERROR:   Certificate is larger than the reserved area!\0A\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"WARNING: Certificate was already inserted.\0A\00", align 1
@.str.16 = private unnamed_addr constant [53 x i8] c"WARNING: Replacing previously inserted certificate.\0A\00", align 1
@.str.17 = private unnamed_addr constant [48 x i8] c"INFO:    Inserted the contents of %s into %lx.\0A\00", align 1
@.str.18 = private unnamed_addr constant [50 x i8] c"INFO:    Used %d bytes out of %d bytes reserved.\0A\00", align 1
@.str.19 = private unnamed_addr constant [55 x i8] c"Usage %s [-s <System.map>] -b <vmlinux> -c <certfile>\0A\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"Could not determine file size\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"Allocating memory failed\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"File read failed\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"Mapping to memory failed\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"File seek failed\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"ERROR:   Missing line ending.\0A\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"ERROR:   Unable to find symbol: %s\0A\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"INFO:    sym:    %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"INFO:    addr:   0x%lx\0A\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"INFO:    size:   %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"INFO:    offset: 0x%lx\0A\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) local_unnamed_addr #0 {
entry:
  %st.i178 = alloca %struct.stat, align 8
  %st.i = alloca %struct.stat, align 8
  %cert_sym = alloca %struct.sym, align 8
  %lsize_sym = alloca %struct.sym, align 8
  %used_sym = alloca %struct.sym, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %cert_sym) #15
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %lsize_sym) #15
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %used_sym) #15
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %sw.bb2, %entry
  %cert_file.0.ph = phi ptr [ %2, %sw.bb2 ], [ null, %entry ]
  %vmlinux_file.0.ph = phi ptr [ %vmlinux_file.0.ph386, %sw.bb2 ], [ null, %entry ]
  %system_map_file.0.ph = phi ptr [ %system_map_file.0.ph389, %sw.bb2 ], [ null, %entry ]
  br label %while.cond.outer385

while.cond.outer385:                              ; preds = %sw.bb1, %while.cond.outer
  %vmlinux_file.0.ph386 = phi ptr [ %vmlinux_file.0.ph, %while.cond.outer ], [ %1, %sw.bb1 ]
  %system_map_file.0.ph387 = phi ptr [ %system_map_file.0.ph, %while.cond.outer ], [ %system_map_file.0.ph389, %sw.bb1 ]
  br label %while.cond.outer388

while.cond.outer388:                              ; preds = %sw.bb, %while.cond.outer385
  %system_map_file.0.ph389 = phi ptr [ %system_map_file.0.ph387, %while.cond.outer385 ], [ %0, %sw.bb ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %while.cond.outer388
  %call = tail call i32 @getopt(i32 noundef %argc, ptr noundef %argv, ptr noundef nonnull @.str) #15
  switch i32 %call, label %while.cond [
    i32 -1, label %while.end
    i32 115, label %sw.bb
    i32 98, label %sw.bb1
    i32 99, label %sw.bb2
  ]

sw.bb:                                            ; preds = %while.cond
  %0 = load ptr, ptr @optarg, align 8, !tbaa !5
  br label %while.cond.outer388

sw.bb1:                                           ; preds = %while.cond
  %1 = load ptr, ptr @optarg, align 8, !tbaa !5
  br label %while.cond.outer385

sw.bb2:                                           ; preds = %while.cond
  %2 = load ptr, ptr @optarg, align 8, !tbaa !5
  br label %while.cond.outer

while.end:                                        ; preds = %while.cond
  %tobool = icmp ne ptr %vmlinux_file.0.ph386, null
  %tobool3 = icmp ne ptr %cert_file.0.ph, null
  %or.cond = select i1 %tobool, i1 %tobool3, i1 false
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %while.end
  %3 = load ptr, ptr %argv, align 8, !tbaa !5
  tail call fastcc void @print_usage(ptr noundef %3)
  tail call void @exit(i32 noundef 1) #16
  unreachable

if.end:                                           ; preds = %while.end
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %st.i) #15
  %call.i = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %cert_file.0.ph, i32 noundef 0) #15
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  tail call void @perror(ptr noundef nonnull %cert_file.0.ph) #17
  br label %if.then6

if.end.i:                                         ; preds = %if.end
  %call.i.i = call i32 @__fxstat(i32 noundef 1, i32 noundef %call.i, ptr noundef nonnull %st.i) #15
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end4.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @perror(ptr noundef nonnull @.str.20) #17
  %call3.i = call i32 @close(i32 noundef %call.i) #15
  br label %if.then6

if.end4.i:                                        ; preds = %if.end.i
  %st_size.i = getelementptr inbounds %struct.stat, ptr %st.i, i64 0, i32 8
  %4 = load i64, ptr %st_size.i, align 8, !tbaa !9
  %conv.i = trunc i64 %4 to i32
  %sext.i = shl i64 %4, 32
  %conv5.i = ashr exact i64 %sext.i, 32
  %call6.i = call noalias ptr @malloc(i64 noundef %conv5.i) #18
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %if.then8.i, label %if.end10.i

if.then8.i:                                       ; preds = %if.end4.i
  call void @perror(ptr noundef nonnull @.str.21) #17
  %call9.i = call i32 @close(i32 noundef %call.i) #15
  br label %if.then6

if.end10.i:                                       ; preds = %if.end4.i
  %call12.i = call i64 @read(i32 noundef %call.i, ptr noundef nonnull %call6.i, i64 noundef %conv5.i) #15
  %cmp14.not.i = icmp eq i64 %call12.i, %conv5.i
  br i1 %cmp14.not.i, label %if.end7, label %if.then16.i

if.then16.i:                                      ; preds = %if.end10.i
  call void @perror(ptr noundef nonnull @.str.22) #17
  %call17.i = call i32 @close(i32 noundef %call.i) #15
  br label %if.then6

if.then6:                                         ; preds = %if.then16.i, %if.then8.i, %if.then2.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %st.i) #15
  call void @exit(i32 noundef 1) #16
  unreachable

if.end7:                                          ; preds = %if.end10.i
  %call19.i = call i32 @close(i32 noundef %call.i) #15
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %st.i) #15
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %st.i178) #15
  %call.i179 = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %vmlinux_file.0.ph386, i32 noundef 2) #15
  %cmp.i180 = icmp slt i32 %call.i179, 0
  br i1 %cmp.i180, label %if.then.i181, label %if.end.i184

if.then.i181:                                     ; preds = %if.end7
  call void @perror(ptr noundef nonnull %vmlinux_file.0.ph386) #17
  br label %map_file.exit.thread

if.end.i184:                                      ; preds = %if.end7
  %call.i.i182 = call i32 @__fxstat(i32 noundef 1, i32 noundef %call.i179, ptr noundef nonnull %st.i178) #15
  %tobool.not.i183 = icmp eq i32 %call.i.i182, 0
  br i1 %tobool.not.i183, label %if.end4.i192, label %if.then2.i186

if.then2.i186:                                    ; preds = %if.end.i184
  call void @perror(ptr noundef nonnull @.str.20) #17
  %call3.i185 = call i32 @close(i32 noundef %call.i179) #15
  br label %map_file.exit.thread

if.end4.i192:                                     ; preds = %if.end.i184
  %st_size.i187 = getelementptr inbounds %struct.stat, ptr %st.i178, i64 0, i32 8
  %5 = load i64, ptr %st_size.i187, align 8, !tbaa !9
  %sext.i189 = shl i64 %5, 32
  %conv5.i190 = ashr exact i64 %sext.i189, 32
  %call6.i191 = call ptr @mmap(ptr noundef null, i64 noundef %conv5.i190, i32 noundef 3, i32 noundef 1, i32 noundef %call.i179, i64 noundef 0) #15
  %cmp7.i = icmp eq ptr %call6.i191, inttoptr (i64 -1 to ptr)
  br i1 %cmp7.i, label %if.then9.i, label %map_file.exit

if.then9.i:                                       ; preds = %if.end4.i192
  call void @perror(ptr noundef nonnull @.str.23) #17
  %call10.i = call i32 @close(i32 noundef %call.i179) #15
  br label %map_file.exit.thread

map_file.exit.thread:                             ; preds = %if.then9.i, %if.then2.i186, %if.then.i181
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %st.i178) #15
  br label %if.then10

map_file.exit:                                    ; preds = %if.end4.i192
  %call12.i193 = call i32 @close(i32 noundef %call.i179) #15
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %st.i178) #15
  %tobool9.not = icmp eq ptr %call6.i191, null
  br i1 %tobool9.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %map_file.exit, %map_file.exit.thread
  call void @exit(i32 noundef 1) #16
  unreachable

if.end11:                                         ; preds = %map_file.exit
  %6 = and i64 %5, 4294967232
  %cmp12 = icmp eq i64 %6, 0
  br i1 %cmp12, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end11
  %7 = load ptr, ptr @stderr, align 8, !tbaa !5
  %8 = call i64 @fwrite(ptr nonnull @.str.1, i64 27, i64 1, ptr %7) #19
  call void @exit(i32 noundef 1) #16
  unreachable

if.end16:                                         ; preds = %if.end11
  %9 = load i8, ptr %call6.i191, align 8, !tbaa !14
  %cmp19.not = icmp eq i8 %9, 127
  br i1 %cmp19.not, label %lor.lhs.false21, label %if.then39

lor.lhs.false21:                                  ; preds = %if.end16
  %arrayidx23 = getelementptr inbounds [16 x i8], ptr %call6.i191, i64 0, i64 1
  %10 = load i8, ptr %arrayidx23, align 1, !tbaa !14
  %cmp25.not = icmp eq i8 %10, 69
  br i1 %cmp25.not, label %lor.lhs.false27, label %if.then39

lor.lhs.false27:                                  ; preds = %lor.lhs.false21
  %arrayidx29 = getelementptr inbounds [16 x i8], ptr %call6.i191, i64 0, i64 2
  %11 = load i8, ptr %arrayidx29, align 2, !tbaa !14
  %cmp31.not = icmp eq i8 %11, 76
  br i1 %cmp31.not, label %lor.lhs.false33, label %if.then39

lor.lhs.false33:                                  ; preds = %lor.lhs.false27
  %arrayidx35 = getelementptr inbounds [16 x i8], ptr %call6.i191, i64 0, i64 3
  %12 = load i8, ptr %arrayidx35, align 1, !tbaa !14
  %cmp37.not = icmp eq i8 %12, 70
  br i1 %cmp37.not, label %if.end41, label %if.then39

if.then39:                                        ; preds = %lor.lhs.false33, %lor.lhs.false27, %lor.lhs.false21, %if.end16
  %13 = load ptr, ptr @stderr, align 8, !tbaa !5
  %14 = call i64 @fwrite(ptr nonnull @.str.2, i64 28, i64 1, ptr %13) #19
  call void @exit(i32 noundef 1) #16
  unreachable

if.end41:                                         ; preds = %lor.lhs.false33
  %arrayidx43 = getelementptr inbounds [16 x i8], ptr %call6.i191, i64 0, i64 4
  %15 = load i8, ptr %arrayidx43, align 4, !tbaa !14
  %cmp45.not = icmp eq i8 %15, 2
  br i1 %cmp45.not, label %if.end49, label %if.then47

if.then47:                                        ; preds = %if.end41
  %16 = load ptr, ptr @stderr, align 8, !tbaa !5
  %17 = call i64 @fwrite(ptr nonnull @.str.3, i64 29, i64 1, ptr %16) #19
  call void @exit(i32 noundef 1) #16
  unreachable

if.end49:                                         ; preds = %if.end41
  %arrayidx51 = getelementptr inbounds [16 x i8], ptr %call6.i191, i64 0, i64 5
  %18 = load i8, ptr %arrayidx51, align 1, !tbaa !14
  %cmp55.not = icmp eq i8 %18, 1
  br i1 %cmp55.not, label %if.end59, label %if.then57

if.then57:                                        ; preds = %if.end49
  %19 = load ptr, ptr @stderr, align 8, !tbaa !5
  %20 = call i64 @fwrite(ptr nonnull @.str.4, i64 30, i64 1, ptr %19) #19
  call void @exit(i32 noundef 1) #16
  unreachable

if.end59:                                         ; preds = %if.end49
  %e_shoff = getelementptr inbounds %struct.Elf64_Ehdr, ptr %call6.i191, i64 0, i32 6
  %21 = load i64, ptr %e_shoff, align 8, !tbaa !15
  %cmp61 = icmp ugt i64 %21, %conv5.i190
  br i1 %cmp61, label %if.then63, label %if.end65

if.then63:                                        ; preds = %if.end59
  %22 = load ptr, ptr @stderr, align 8, !tbaa !5
  %23 = call i64 @fwrite(ptr nonnull @.str.5, i64 40, i64 1, ptr %22) #19
  call void @exit(i32 noundef 1) #16
  unreachable

if.end65:                                         ; preds = %if.end59
  %add.ptr.i = getelementptr i8, ptr %call6.i191, i64 %21
  %e_shnum.i = getelementptr inbounds %struct.Elf64_Ehdr, ptr %call6.i191, i64 0, i32 12
  %24 = load i16, ptr %e_shnum.i, align 4, !tbaa !18
  %cmp.i195 = icmp eq i16 %24, 0
  br i1 %cmp.i195, label %if.then.i196, label %if.else.i

if.then.i196:                                     ; preds = %if.end65
  %sh_size.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %add.ptr.i, i64 0, i32 5
  %25 = load i64, ptr %sh_size.i, align 8, !tbaa !19
  %conv2.i = trunc i64 %25 to i32
  br label %if.end.i198

if.else.i:                                        ; preds = %if.end65
  %conv.i197 = zext i16 %24 to i32
  br label %if.end.i198

if.end.i198:                                      ; preds = %if.else.i, %if.then.i196
  %num_sections.0.i = phi i32 [ %conv2.i, %if.then.i196 ], [ %conv.i197, %if.else.i ]
  %cmp524.i = icmp ugt i32 %num_sections.0.i, 1
  br i1 %cmp524.i, label %for.body.preheader.i, label %if.then68

for.body.preheader.i:                             ; preds = %if.end.i198
  %wide.trip.count.i = zext i32 %num_sections.0.i to i64
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %if.then68, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i, %for.body.preheader.i
  %indvars.iv.i = phi i64 [ 1, %for.body.preheader.i ], [ %indvars.iv.next.i, %for.cond.i ]
  %arrayidx7.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %add.ptr.i, i64 %indvars.iv.i
  %sh_type.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %arrayidx7.i, i64 0, i32 1
  %26 = load i32, ptr %sh_type.i, align 4, !tbaa !21
  %cmp8.i = icmp eq i32 %26, 2
  br i1 %cmp8.i, label %if.else, label %for.cond.i

if.then68:                                        ; preds = %for.cond.i, %if.end.i198
  %27 = load ptr, ptr @stdout, align 8, !tbaa !5
  %28 = call i64 @fwrite(ptr nonnull @.str.6, i64 42, i64 1, ptr %27)
  %tobool70.not = icmp eq ptr %system_map_file.0.ph389, null
  br i1 %tobool70.not, label %if.then71, label %if.end74

if.then71:                                        ; preds = %if.then68
  %29 = load ptr, ptr @stderr, align 8, !tbaa !5
  %30 = call i64 @fwrite(ptr nonnull @.str.7, i64 43, i64 1, ptr %29) #19
  %31 = load ptr, ptr %argv, align 8, !tbaa !5
  call fastcc void @print_usage(ptr noundef %31)
  call void @exit(i32 noundef 1) #16
  unreachable

if.end74:                                         ; preds = %if.then68
  %call75 = call ptr @fopen(ptr noundef nonnull %system_map_file.0.ph389, ptr noundef nonnull @.str.8)
  %tobool76.not = icmp eq ptr %call75, null
  br i1 %tobool76.not, label %if.then77, label %if.end78

if.then77:                                        ; preds = %if.end74
  call void @perror(ptr noundef nonnull %system_map_file.0.ph389) #19
  call void @exit(i32 noundef 1) #16
  unreachable

if.end78:                                         ; preds = %if.end74
  call fastcc void @get_symbol_from_map(ptr noundef nonnull %call6.i191, ptr noundef nonnull %call75, ptr noundef nonnull @.str.9, ptr noundef nonnull %cert_sym)
  call fastcc void @get_symbol_from_map(ptr noundef nonnull %call6.i191, ptr noundef nonnull %call75, ptr noundef nonnull @.str.10, ptr noundef nonnull %used_sym)
  call fastcc void @get_symbol_from_map(ptr noundef nonnull %call6.i191, ptr noundef nonnull %call75, ptr noundef nonnull @.str.11, ptr noundef nonnull %lsize_sym)
  %address = getelementptr inbounds %struct.sym, ptr %used_sym, i64 0, i32 1
  %32 = load i64, ptr %address, align 8, !tbaa !22
  %address79 = getelementptr inbounds %struct.sym, ptr %cert_sym, i64 0, i32 1
  %33 = load i64, ptr %address79, align 8, !tbaa !22
  %sub = sub i64 %32, %33
  %conv80 = trunc i64 %sub to i32
  %size = getelementptr inbounds %struct.sym, ptr %cert_sym, i64 0, i32 4
  store i32 %conv80, ptr %size, align 8, !tbaa !24
  %offset.phi.trans.insert = getelementptr inbounds %struct.sym, ptr %cert_sym, i64 0, i32 2
  %.pre361 = load i64, ptr %offset.phi.trans.insert, align 8, !tbaa !25
  %offset89.phi.trans.insert = getelementptr inbounds %struct.sym, ptr %lsize_sym, i64 0, i32 2
  %.pre362 = load i64, ptr %offset89.phi.trans.insert, align 8
  %offset92.phi.trans.insert = getelementptr inbounds %struct.sym, ptr %used_sym, i64 0, i32 2
  %.pre363 = load i64, ptr %offset92.phi.trans.insert, align 8
  br label %if.end86

if.else:                                          ; preds = %for.body.i
  %34 = load ptr, ptr @stderr, align 8, !tbaa !5
  %35 = call i64 @fwrite(ptr nonnull @.str.12, i64 29, i64 1, ptr %34) #19
  %tobool82.not = icmp eq ptr %system_map_file.0.ph389, null
  br i1 %tobool82.not, label %if.end85, label %if.then83

if.then83:                                        ; preds = %if.else
  %36 = load ptr, ptr @stdout, align 8, !tbaa !5
  %37 = call i64 @fwrite(ptr nonnull @.str.13, i64 32, i64 1, ptr %36)
  br label %if.end85

if.end85:                                         ; preds = %if.then83, %if.else
  %38 = load i64, ptr %e_shoff, align 8, !tbaa !15
  %add.ptr.i201 = getelementptr i8, ptr %call6.i191, i64 %38
  %size.i = getelementptr inbounds %struct.sym, ptr %cert_sym, i64 0, i32 4
  %address.i = getelementptr inbounds %struct.sym, ptr %cert_sym, i64 0, i32 1
  %offset.i = getelementptr inbounds %struct.sym, ptr %cert_sym, i64 0, i32 2
  %sh_link.i.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %arrayidx7.i, i64 0, i32 6
  %39 = load i32, ptr %sh_link.i.i, align 8, !tbaa !26
  %sh_offset.i.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %arrayidx7.i, i64 0, i32 4
  %40 = load i64, ptr %sh_offset.i.i, align 8, !tbaa !27
  %add.ptr1.i.i = getelementptr i8, ptr %call6.i191, i64 %40
  %sh_size.i.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %arrayidx7.i, i64 0, i32 5
  %41 = load i64, ptr %sh_size.i.i, align 8, !tbaa !19
  %sh_entsize.i.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %arrayidx7.i, i64 0, i32 9
  %42 = load i64, ptr %sh_entsize.i.i, align 8, !tbaa !28
  %div.i.i = udiv i64 %41, %42
  %conv.i.i = trunc i64 %div.i.i to i32
  %idxprom.i.i = zext i32 %39 to i64
  %arrayidx.i.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %add.ptr.i201, i64 %idxprom.i.i
  %sh_offset2.i.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %arrayidx.i.i, i64 0, i32 4
  %43 = load i64, ptr %sh_offset2.i.i, align 8, !tbaa !27
  %add.ptr3.i.i = getelementptr i8, ptr %call6.i191, i64 %43
  %cmp28.i.i = icmp sgt i32 %conv.i.i, 0
  br i1 %cmp28.i.i, label %for.body.preheader.i.i, label %find_elf_symbol.exit.thread.i

for.body.preheader.i.i:                           ; preds = %if.end85
  %wide.trip.count.i.i = and i64 %div.i.i, 4294967295
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %find_elf_symbol.exit.thread.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i, %for.body.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %for.body.preheader.i.i ], [ %indvars.iv.next.i.i, %for.cond.i.i ]
  %arrayidx6.i.i = getelementptr inbounds %struct.Elf64_Sym, ptr %add.ptr1.i.i, i64 %indvars.iv.i.i
  %44 = load i32, ptr %arrayidx6.i.i, align 8, !tbaa !29
  %idx.ext.i.i = zext i32 %44 to i64
  %add.ptr7.i.i = getelementptr inbounds i8, ptr %add.ptr3.i.i, i64 %idx.ext.i.i
  %call.i.i202 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %add.ptr7.i.i, ptr noundef nonnull dereferenceable(18) @.str.9) #20
  %cmp8.i.i = icmp eq i32 %call.i.i202, 0
  br i1 %cmp8.i.i, label %if.end.i203, label %for.cond.i.i

find_elf_symbol.exit.thread.i:                    ; preds = %for.cond.i.i, %if.end85
  %45 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call10.i.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.9) #17
  %.pre = load i64, ptr %e_shoff, align 8, !tbaa !15
  %.pre350 = load i32, ptr %sh_link.i.i, align 8, !tbaa !26
  %.pre351 = load i64, ptr %sh_offset.i.i, align 8, !tbaa !27
  %.pre352 = load i64, ptr %sh_size.i.i, align 8, !tbaa !19
  %.pre353 = load i64, ptr %sh_entsize.i.i, align 8, !tbaa !28
  %add.ptr.i206.phi.trans.insert = getelementptr i8, ptr %call6.i191, i64 %.pre
  %idxprom.i.i217.phi.trans.insert = zext i32 %.pre350 to i64
  %arrayidx.i.i218.phi.trans.insert = getelementptr inbounds %struct.Elf64_Shdr, ptr %add.ptr.i206.phi.trans.insert, i64 %idxprom.i.i217.phi.trans.insert
  %sh_offset2.i.i219.phi.trans.insert = getelementptr inbounds %struct.Elf64_Shdr, ptr %arrayidx.i.i218.phi.trans.insert, i64 0, i32 4
  %.pre354 = load i64, ptr %sh_offset2.i.i219.phi.trans.insert, align 8, !tbaa !27
  %.pre364 = udiv i64 %.pre352, %.pre353
  %.pre365 = trunc i64 %.pre364 to i32
  br label %get_symbol_from_table.exit

if.end.i203:                                      ; preds = %for.body.i.i
  %st_shndx.i = getelementptr inbounds %struct.Elf64_Sym, ptr %arrayidx6.i.i, i64 0, i32 3
  %46 = load i16, ptr %st_shndx.i, align 2, !tbaa !31
  %tobool1.not.i = icmp eq i16 %46, 0
  br i1 %tobool1.not.i, label %get_symbol_from_table.exit, label %if.end3.i

if.end3.i:                                        ; preds = %if.end.i203
  %idxprom.i = zext i16 %46 to i64
  %arrayidx.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %add.ptr.i201, i64 %idxprom.i
  %st_size.i204 = getelementptr inbounds %struct.Elf64_Sym, ptr %arrayidx6.i.i, i64 0, i32 5
  %47 = load i64, ptr %st_size.i204, align 8, !tbaa !32
  %conv4.i = trunc i64 %47 to i32
  store i32 %conv4.i, ptr %size.i, align 8, !tbaa !24
  %st_value.i = getelementptr inbounds %struct.Elf64_Sym, ptr %arrayidx6.i.i, i64 0, i32 4
  %48 = load i64, ptr %st_value.i, align 8, !tbaa !33
  store i64 %48, ptr %address.i, align 8, !tbaa !22
  %sh_addr.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %arrayidx.i, i64 0, i32 3
  %49 = load i64, ptr %sh_addr.i, align 8, !tbaa !34
  %sub.i = sub i64 %48, %49
  %sh_offset.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %arrayidx.i, i64 0, i32 4
  %50 = load i64, ptr %sh_offset.i, align 8, !tbaa !27
  %add.i = add i64 %sub.i, %50
  store i64 %add.i, ptr %offset.i, align 8, !tbaa !25
  store ptr @.str.9, ptr %cert_sym, align 8, !tbaa !35
  %add.ptr11.i = getelementptr i8, ptr %call6.i191, i64 %add.i
  %content.i = getelementptr inbounds %struct.sym, ptr %cert_sym, i64 0, i32 3
  store ptr %add.ptr11.i, ptr %content.i, align 8, !tbaa !36
  br label %get_symbol_from_table.exit

get_symbol_from_table.exit:                       ; preds = %if.end3.i, %if.end.i203, %find_elf_symbol.exit.thread.i
  %conv.i.i216.pre-phi = phi i32 [ %.pre365, %find_elf_symbol.exit.thread.i ], [ %conv.i.i, %if.end.i203 ], [ %conv.i.i, %if.end3.i ]
  %div.i.i215.pre-phi = phi i64 [ %.pre364, %find_elf_symbol.exit.thread.i ], [ %div.i.i, %if.end.i203 ], [ %div.i.i, %if.end3.i ]
  %51 = phi i32 [ 0, %find_elf_symbol.exit.thread.i ], [ 0, %if.end.i203 ], [ %conv4.i, %if.end3.i ]
  %52 = phi i64 [ 0, %find_elf_symbol.exit.thread.i ], [ 0, %if.end.i203 ], [ %48, %if.end3.i ]
  %53 = phi i64 [ 0, %find_elf_symbol.exit.thread.i ], [ 0, %if.end.i203 ], [ %add.i, %if.end3.i ]
  %54 = phi i64 [ %.pre354, %find_elf_symbol.exit.thread.i ], [ %43, %if.end.i203 ], [ %43, %if.end3.i ]
  %55 = phi i64 [ %.pre351, %find_elf_symbol.exit.thread.i ], [ %40, %if.end.i203 ], [ %40, %if.end3.i ]
  %56 = phi i64 [ %.pre, %find_elf_symbol.exit.thread.i ], [ %38, %if.end.i203 ], [ %38, %if.end3.i ]
  %add.ptr.i206 = getelementptr i8, ptr %call6.i191, i64 %56
  %size.i207 = getelementptr inbounds %struct.sym, ptr %used_sym, i64 0, i32 4
  store i32 0, ptr %size.i207, align 8, !tbaa !24
  %address.i208 = getelementptr inbounds %struct.sym, ptr %used_sym, i64 0, i32 1
  %offset.i209 = getelementptr inbounds %struct.sym, ptr %used_sym, i64 0, i32 2
  %add.ptr1.i.i212 = getelementptr i8, ptr %call6.i191, i64 %55
  %add.ptr3.i.i220 = getelementptr i8, ptr %call6.i191, i64 %54
  %cmp28.i.i221 = icmp sgt i32 %conv.i.i216.pre-phi, 0
  br i1 %cmp28.i.i221, label %for.body.preheader.i.i223, label %find_elf_symbol.exit.thread.i235

for.body.preheader.i.i223:                        ; preds = %get_symbol_from_table.exit
  %wide.trip.count.i.i222 = and i64 %div.i.i215.pre-phi, 4294967295
  br label %for.body.i.i233

for.cond.i.i226:                                  ; preds = %for.body.i.i233
  %indvars.iv.next.i.i224 = add nuw nsw i64 %indvars.iv.i.i227, 1
  %exitcond.not.i.i225 = icmp eq i64 %indvars.iv.next.i.i224, %wide.trip.count.i.i222
  br i1 %exitcond.not.i.i225, label %find_elf_symbol.exit.thread.i235, label %for.body.i.i233

for.body.i.i233:                                  ; preds = %for.cond.i.i226, %for.body.preheader.i.i223
  %indvars.iv.i.i227 = phi i64 [ 0, %for.body.preheader.i.i223 ], [ %indvars.iv.next.i.i224, %for.cond.i.i226 ]
  %arrayidx6.i.i228 = getelementptr inbounds %struct.Elf64_Sym, ptr %add.ptr1.i.i212, i64 %indvars.iv.i.i227
  %57 = load i32, ptr %arrayidx6.i.i228, align 8, !tbaa !29
  %idx.ext.i.i229 = zext i32 %57 to i64
  %add.ptr7.i.i230 = getelementptr inbounds i8, ptr %add.ptr3.i.i220, i64 %idx.ext.i.i229
  %call.i.i231 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %add.ptr7.i.i230, ptr noundef nonnull dereferenceable(23) @.str.10) #20
  %cmp8.i.i232 = icmp eq i32 %call.i.i231, 0
  br i1 %cmp8.i.i232, label %if.end.i238, label %for.cond.i.i226

find_elf_symbol.exit.thread.i235:                 ; preds = %for.cond.i.i226, %get_symbol_from_table.exit
  %58 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call10.i.i234 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.10) #17
  %.pre355 = load i64, ptr %e_shoff, align 8, !tbaa !15
  %.pre356 = load i32, ptr %sh_link.i.i, align 8, !tbaa !26
  %.pre357 = load i64, ptr %sh_offset.i.i, align 8, !tbaa !27
  %.pre358 = load i64, ptr %sh_size.i.i, align 8, !tbaa !19
  %.pre359 = load i64, ptr %sh_entsize.i.i, align 8, !tbaa !28
  %add.ptr.i253.phi.trans.insert = getelementptr i8, ptr %call6.i191, i64 %.pre355
  %idxprom.i.i264.phi.trans.insert = zext i32 %.pre356 to i64
  %arrayidx.i.i265.phi.trans.insert = getelementptr inbounds %struct.Elf64_Shdr, ptr %add.ptr.i253.phi.trans.insert, i64 %idxprom.i.i264.phi.trans.insert
  %sh_offset2.i.i266.phi.trans.insert = getelementptr inbounds %struct.Elf64_Shdr, ptr %arrayidx.i.i265.phi.trans.insert, i64 0, i32 4
  %.pre360 = load i64, ptr %sh_offset2.i.i266.phi.trans.insert, align 8, !tbaa !27
  %.pre366 = udiv i64 %.pre358, %.pre359
  %.pre367 = trunc i64 %.pre366 to i32
  br label %get_symbol_from_table.exit251

if.end.i238:                                      ; preds = %for.body.i.i233
  %st_shndx.i236 = getelementptr inbounds %struct.Elf64_Sym, ptr %arrayidx6.i.i228, i64 0, i32 3
  %59 = load i16, ptr %st_shndx.i236, align 2, !tbaa !31
  %tobool1.not.i237 = icmp eq i16 %59, 0
  br i1 %tobool1.not.i237, label %get_symbol_from_table.exit251, label %if.end3.i250

if.end3.i250:                                     ; preds = %if.end.i238
  %idxprom.i239 = zext i16 %59 to i64
  %arrayidx.i240 = getelementptr inbounds %struct.Elf64_Shdr, ptr %add.ptr.i206, i64 %idxprom.i239
  %st_size.i241 = getelementptr inbounds %struct.Elf64_Sym, ptr %arrayidx6.i.i228, i64 0, i32 5
  %60 = load i64, ptr %st_size.i241, align 8, !tbaa !32
  %conv4.i242 = trunc i64 %60 to i32
  store i32 %conv4.i242, ptr %size.i207, align 8, !tbaa !24
  %st_value.i243 = getelementptr inbounds %struct.Elf64_Sym, ptr %arrayidx6.i.i228, i64 0, i32 4
  %61 = load i64, ptr %st_value.i243, align 8, !tbaa !33
  store i64 %61, ptr %address.i208, align 8, !tbaa !22
  %sh_addr.i244 = getelementptr inbounds %struct.Elf64_Shdr, ptr %arrayidx.i240, i64 0, i32 3
  %62 = load i64, ptr %sh_addr.i244, align 8, !tbaa !34
  %sub.i245 = sub i64 %61, %62
  %sh_offset.i246 = getelementptr inbounds %struct.Elf64_Shdr, ptr %arrayidx.i240, i64 0, i32 4
  %63 = load i64, ptr %sh_offset.i246, align 8, !tbaa !27
  %add.i247 = add i64 %sub.i245, %63
  store i64 %add.i247, ptr %offset.i209, align 8, !tbaa !25
  store ptr @.str.10, ptr %used_sym, align 8, !tbaa !35
  %add.ptr11.i248 = getelementptr i8, ptr %call6.i191, i64 %add.i247
  %content.i249 = getelementptr inbounds %struct.sym, ptr %used_sym, i64 0, i32 3
  store ptr %add.ptr11.i248, ptr %content.i249, align 8, !tbaa !36
  br label %get_symbol_from_table.exit251

get_symbol_from_table.exit251:                    ; preds = %if.end3.i250, %if.end.i238, %find_elf_symbol.exit.thread.i235
  %conv.i.i263.pre-phi = phi i32 [ %.pre367, %find_elf_symbol.exit.thread.i235 ], [ %conv.i.i216.pre-phi, %if.end.i238 ], [ %conv.i.i216.pre-phi, %if.end3.i250 ]
  %div.i.i262.pre-phi = phi i64 [ %.pre366, %find_elf_symbol.exit.thread.i235 ], [ %div.i.i215.pre-phi, %if.end.i238 ], [ %div.i.i215.pre-phi, %if.end3.i250 ]
  %64 = phi i64 [ 0, %find_elf_symbol.exit.thread.i235 ], [ 0, %if.end.i238 ], [ %61, %if.end3.i250 ]
  %65 = phi i64 [ 0, %find_elf_symbol.exit.thread.i235 ], [ 0, %if.end.i238 ], [ %add.i247, %if.end3.i250 ]
  %66 = phi i64 [ %.pre360, %find_elf_symbol.exit.thread.i235 ], [ %54, %if.end.i238 ], [ %54, %if.end3.i250 ]
  %67 = phi i64 [ %.pre357, %find_elf_symbol.exit.thread.i235 ], [ %55, %if.end.i238 ], [ %55, %if.end3.i250 ]
  %68 = phi i64 [ %.pre355, %find_elf_symbol.exit.thread.i235 ], [ %56, %if.end.i238 ], [ %56, %if.end3.i250 ]
  %add.ptr.i253 = getelementptr i8, ptr %call6.i191, i64 %68
  %size.i254 = getelementptr inbounds %struct.sym, ptr %lsize_sym, i64 0, i32 4
  %address.i255 = getelementptr inbounds %struct.sym, ptr %lsize_sym, i64 0, i32 1
  %offset.i256 = getelementptr inbounds %struct.sym, ptr %lsize_sym, i64 0, i32 2
  %add.ptr1.i.i259 = getelementptr i8, ptr %call6.i191, i64 %67
  %add.ptr3.i.i267 = getelementptr i8, ptr %call6.i191, i64 %66
  %cmp28.i.i268 = icmp sgt i32 %conv.i.i263.pre-phi, 0
  br i1 %cmp28.i.i268, label %for.body.preheader.i.i270, label %find_elf_symbol.exit.thread.i282

for.body.preheader.i.i270:                        ; preds = %get_symbol_from_table.exit251
  %wide.trip.count.i.i269 = and i64 %div.i.i262.pre-phi, 4294967295
  br label %for.body.i.i280

for.cond.i.i273:                                  ; preds = %for.body.i.i280
  %indvars.iv.next.i.i271 = add nuw nsw i64 %indvars.iv.i.i274, 1
  %exitcond.not.i.i272 = icmp eq i64 %indvars.iv.next.i.i271, %wide.trip.count.i.i269
  br i1 %exitcond.not.i.i272, label %find_elf_symbol.exit.thread.i282, label %for.body.i.i280

for.body.i.i280:                                  ; preds = %for.cond.i.i273, %for.body.preheader.i.i270
  %indvars.iv.i.i274 = phi i64 [ 0, %for.body.preheader.i.i270 ], [ %indvars.iv.next.i.i271, %for.cond.i.i273 ]
  %arrayidx6.i.i275 = getelementptr inbounds %struct.Elf64_Sym, ptr %add.ptr1.i.i259, i64 %indvars.iv.i.i274
  %69 = load i32, ptr %arrayidx6.i.i275, align 8, !tbaa !29
  %idx.ext.i.i276 = zext i32 %69 to i64
  %add.ptr7.i.i277 = getelementptr inbounds i8, ptr %add.ptr3.i.i267, i64 %idx.ext.i.i276
  %call.i.i278 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %add.ptr7.i.i277, ptr noundef nonnull dereferenceable(29) @.str.11) #20
  %cmp8.i.i279 = icmp eq i32 %call.i.i278, 0
  br i1 %cmp8.i.i279, label %if.end.i285, label %for.cond.i.i273

find_elf_symbol.exit.thread.i282:                 ; preds = %for.cond.i.i273, %get_symbol_from_table.exit251
  %70 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call10.i.i281 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %70, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.11) #17
  br label %if.then94

if.end.i285:                                      ; preds = %for.body.i.i280
  %st_shndx.i283 = getelementptr inbounds %struct.Elf64_Sym, ptr %arrayidx6.i.i275, i64 0, i32 3
  %71 = load i16, ptr %st_shndx.i283, align 2, !tbaa !31
  %tobool1.not.i284 = icmp eq i16 %71, 0
  br i1 %tobool1.not.i284, label %if.then94, label %if.end3.i297

if.end3.i297:                                     ; preds = %if.end.i285
  %idxprom.i286 = zext i16 %71 to i64
  %arrayidx.i287 = getelementptr inbounds %struct.Elf64_Shdr, ptr %add.ptr.i253, i64 %idxprom.i286
  %st_size.i288 = getelementptr inbounds %struct.Elf64_Sym, ptr %arrayidx6.i.i275, i64 0, i32 5
  %72 = load i64, ptr %st_size.i288, align 8, !tbaa !32
  %conv4.i289 = trunc i64 %72 to i32
  store i32 %conv4.i289, ptr %size.i254, align 8, !tbaa !24
  %st_value.i290 = getelementptr inbounds %struct.Elf64_Sym, ptr %arrayidx6.i.i275, i64 0, i32 4
  %73 = load i64, ptr %st_value.i290, align 8, !tbaa !33
  store i64 %73, ptr %address.i255, align 8, !tbaa !22
  %sh_addr.i291 = getelementptr inbounds %struct.Elf64_Shdr, ptr %arrayidx.i287, i64 0, i32 3
  %74 = load i64, ptr %sh_addr.i291, align 8, !tbaa !34
  %sub.i292 = sub i64 %73, %74
  %sh_offset.i293 = getelementptr inbounds %struct.Elf64_Shdr, ptr %arrayidx.i287, i64 0, i32 4
  %75 = load i64, ptr %sh_offset.i293, align 8, !tbaa !27
  %add.i294 = add i64 %sub.i292, %75
  store i64 %add.i294, ptr %offset.i256, align 8, !tbaa !25
  store ptr @.str.11, ptr %lsize_sym, align 8, !tbaa !35
  %add.ptr11.i295 = getelementptr i8, ptr %call6.i191, i64 %add.i294
  %content.i296 = getelementptr inbounds %struct.sym, ptr %lsize_sym, i64 0, i32 3
  store ptr %add.ptr11.i295, ptr %content.i296, align 8, !tbaa !36
  br label %if.end86

if.end86:                                         ; preds = %if.end3.i297, %if.end78
  %76 = phi i64 [ %64, %if.end3.i297 ], [ %32, %if.end78 ]
  %77 = phi i32 [ %51, %if.end3.i297 ], [ %conv80, %if.end78 ]
  %78 = phi i64 [ %52, %if.end3.i297 ], [ %33, %if.end78 ]
  %79 = phi i64 [ %65, %if.end3.i297 ], [ %.pre363, %if.end78 ]
  %80 = phi i64 [ %add.i294, %if.end3.i297 ], [ %.pre362, %if.end78 ]
  %81 = phi i64 [ %53, %if.end3.i297 ], [ %.pre361, %if.end78 ]
  %tobool87 = icmp ne i64 %81, 0
  %tobool90 = icmp ne i64 %80, 0
  %or.cond136 = select i1 %tobool87, i1 %tobool90, i1 false
  %tobool93 = icmp ne i64 %79, 0
  %or.cond137 = select i1 %or.cond136, i1 %tobool93, i1 false
  br i1 %or.cond137, label %if.end95, label %if.then94

if.then94:                                        ; preds = %if.end86, %if.end.i285, %find_elf_symbol.exit.thread.i282
  call void @exit(i32 noundef 1) #16
  unreachable

if.end95:                                         ; preds = %if.end86
  %82 = load ptr, ptr @stderr, align 8, !tbaa !5
  %83 = load ptr, ptr %cert_sym, align 8, !tbaa !35
  %call.i299 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %82, ptr noundef nonnull @.str.27, ptr noundef %83) #17
  %84 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %84, ptr noundef nonnull @.str.28, i64 noundef %78) #17
  %85 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call2.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %85, ptr noundef nonnull @.str.29, i32 noundef %77) #17
  %86 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call3.i303 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %86, ptr noundef nonnull @.str.30, i64 noundef %81) #17
  %87 = load ptr, ptr @stderr, align 8, !tbaa !5
  %88 = load ptr, ptr %used_sym, align 8, !tbaa !35
  %call.i304 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %87, ptr noundef nonnull @.str.27, ptr noundef %88) #17
  %89 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call1.i306 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %89, ptr noundef nonnull @.str.28, i64 noundef %76) #17
  %90 = load ptr, ptr @stderr, align 8, !tbaa !5
  %size.i307 = getelementptr inbounds %struct.sym, ptr %used_sym, i64 0, i32 4
  %91 = load i32, ptr %size.i307, align 8, !tbaa !24
  %call2.i308 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %90, ptr noundef nonnull @.str.29, i32 noundef %91) #17
  %92 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call3.i310 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %92, ptr noundef nonnull @.str.30, i64 noundef %79) #17
  %93 = load ptr, ptr @stderr, align 8, !tbaa !5
  %94 = load ptr, ptr %lsize_sym, align 8, !tbaa !35
  %call.i311 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %93, ptr noundef nonnull @.str.27, ptr noundef %94) #17
  %95 = load ptr, ptr @stderr, align 8, !tbaa !5
  %address.i312 = getelementptr inbounds %struct.sym, ptr %lsize_sym, i64 0, i32 1
  %96 = load i64, ptr %address.i312, align 8, !tbaa !22
  %call1.i313 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %95, ptr noundef nonnull @.str.28, i64 noundef %96) #17
  %97 = load ptr, ptr @stderr, align 8, !tbaa !5
  %size.i314 = getelementptr inbounds %struct.sym, ptr %lsize_sym, i64 0, i32 4
  %98 = load i32, ptr %size.i314, align 8, !tbaa !24
  %call2.i315 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %97, ptr noundef nonnull @.str.29, i32 noundef %98) #17
  %99 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call3.i317 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %99, ptr noundef nonnull @.str.30, i64 noundef %80) #17
  %content = getelementptr inbounds %struct.sym, ptr %lsize_sym, i64 0, i32 3
  %100 = load ptr, ptr %content, align 8, !tbaa !36
  %content96 = getelementptr inbounds %struct.sym, ptr %used_sym, i64 0, i32 3
  %101 = load ptr, ptr %content96, align 8, !tbaa !36
  %cmp98 = icmp slt i32 %77, %conv.i
  br i1 %cmp98, label %if.then100, label %if.end102

if.then100:                                       ; preds = %if.end95
  %102 = load ptr, ptr @stderr, align 8, !tbaa !5
  %103 = call i64 @fwrite(ptr nonnull @.str.14, i64 55, i64 1, ptr %102) #19
  call void @exit(i32 noundef 1) #16
  unreachable

if.end102:                                        ; preds = %if.end95
  %104 = load i32, ptr %101, align 4, !tbaa !37
  %cmp103 = icmp eq i32 %104, %conv.i
  br i1 %cmp103, label %land.lhs.true, label %if.end112

land.lhs.true:                                    ; preds = %if.end102
  %content105 = getelementptr inbounds %struct.sym, ptr %cert_sym, i64 0, i32 3
  %105 = load ptr, ptr %content105, align 8, !tbaa !36
  %call107 = call i32 @strncmp(ptr noundef %105, ptr noundef nonnull %call6.i, i64 noundef %conv5.i) #20
  %cmp108 = icmp eq i32 %call107, 0
  br i1 %cmp108, label %if.then110, label %if.end112

if.then110:                                       ; preds = %land.lhs.true
  %106 = load ptr, ptr @stdout, align 8, !tbaa !5
  %107 = call i64 @fwrite(ptr nonnull @.str.15, i64 43, i64 1, ptr %106)
  call void @exit(i32 noundef 0) #16
  unreachable

if.end112:                                        ; preds = %land.lhs.true, %if.end102
  %cmp113 = icmp sgt i32 %104, 0
  br i1 %cmp113, label %if.then115, label %if.end117

if.then115:                                       ; preds = %if.end112
  %108 = load ptr, ptr @stdout, align 8, !tbaa !5
  %109 = call i64 @fwrite(ptr nonnull @.str.16, i64 52, i64 1, ptr %108)
  br label %if.end117

if.end117:                                        ; preds = %if.then115, %if.end112
  %content118 = getelementptr inbounds %struct.sym, ptr %cert_sym, i64 0, i32 3
  %110 = load ptr, ptr %content118, align 8, !tbaa !36
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %110, ptr nonnull align 1 %call6.i, i64 %conv5.i, i1 false)
  %cmp121 = icmp sgt i32 %77, %conv.i
  br i1 %cmp121, label %if.then123, label %if.end128

if.then123:                                       ; preds = %if.end117
  %add.ptr = getelementptr i8, ptr %110, i64 %conv5.i
  %sub126 = sub nsw i32 %77, %conv.i
  %conv127 = sext i32 %sub126 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr, i8 0, i64 %conv127, i1 false)
  br label %if.end128

if.end128:                                        ; preds = %if.then123, %if.end117
  %111 = load i64, ptr %100, align 8, !tbaa !38
  %add = add i64 %111, %conv5.i
  %112 = load i32, ptr %101, align 4, !tbaa !37
  %conv130 = sext i32 %112 to i64
  %sub131 = sub i64 %add, %conv130
  store i64 %sub131, ptr %100, align 8, !tbaa !38
  store i32 %conv.i, ptr %101, align 4, !tbaa !37
  %113 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call133 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %113, ptr noundef nonnull @.str.17, ptr noundef nonnull %cert_file.0.ph, i64 noundef %78) #19
  %114 = load ptr, ptr @stderr, align 8, !tbaa !5
  %115 = load i32, ptr %101, align 4, !tbaa !37
  %call135 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %114, ptr noundef nonnull @.str.18, i32 noundef %115, i32 noundef %77) #19
  call void @exit(i32 noundef 0) #16
  unreachable
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare i32 @getopt(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @print_usage(ptr noundef %e) unnamed_addr #3 {
entry:
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.19, ptr noundef %e)
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @get_symbol_from_map(ptr noundef %hdr, ptr nocapture noundef %f, ptr noundef %name, ptr nocapture noundef writeonly %s) unnamed_addr #6 {
entry:
  %l = alloca [100 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %l) #15
  %size = getelementptr inbounds %struct.sym, ptr %s, i64 0, i32 4
  store i32 0, ptr %size, align 8, !tbaa !24
  %address = getelementptr inbounds %struct.sym, ptr %s, i64 0, i32 1
  %offset = getelementptr inbounds %struct.sym, ptr %s, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %address, i8 0, i64 16, i1 false)
  %call = tail call i32 @fseek(ptr noundef %f, i64 noundef 0, i32 noundef 0)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %while.cond, label %if.then

if.then:                                          ; preds = %entry
  tail call void @perror(ptr noundef nonnull @.str.24) #19
  tail call void @exit(i32 noundef 1) #16
  unreachable

while.cond:                                       ; preds = %if.end7, %entry
  %call1 = call ptr @fgets(ptr noundef nonnull %l, i32 noundef 100, ptr noundef %f)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.then14, label %while.body

while.body:                                       ; preds = %while.cond
  %call3 = call ptr @strchr(ptr noundef nonnull %l, i32 noundef 10) #20
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.then5, label %if.end7

if.then5:                                         ; preds = %while.body
  %0 = load ptr, ptr @stderr, align 8, !tbaa !5
  %1 = call i64 @fwrite(ptr nonnull @.str.25, i64 30, i64 1, ptr %0) #19
  br label %cleanup

if.end7:                                          ; preds = %while.body
  %call9 = call ptr @strstr(ptr noundef nonnull %l, ptr noundef nonnull dereferenceable(1) %name) #20
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %while.cond, label %if.end16

if.then14:                                        ; preds = %while.cond
  %2 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.26, ptr noundef %name) #19
  br label %cleanup

if.end16:                                         ; preds = %if.end7
  %call18 = call ptr @strchr(ptr noundef nonnull %l, i32 noundef 32) #20
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %cleanup, label %if.end21

if.end21:                                         ; preds = %if.end16
  store i8 0, ptr %call18, align 1, !tbaa !14
  %call23 = call i64 @strtoul(ptr nocapture noundef nonnull %l, ptr noundef null, i32 noundef 16) #15
  store i64 %call23, ptr %address, align 8, !tbaa !22
  %cmp26 = icmp eq i64 %call23, 0
  br i1 %cmp26, label %cleanup, label %if.end28

if.end28:                                         ; preds = %if.end21
  %e_shoff.i = getelementptr inbounds %struct.Elf64_Ehdr, ptr %hdr, i64 0, i32 6
  %3 = load i64, ptr %e_shoff.i, align 8, !tbaa !15
  %add.ptr.i = getelementptr i8, ptr %hdr, i64 %3
  %e_shnum.i = getelementptr inbounds %struct.Elf64_Ehdr, ptr %hdr, i64 0, i32 12
  %4 = load i16, ptr %e_shnum.i, align 4, !tbaa !18
  %cmp.i = icmp eq i16 %4, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end28
  %sh_size.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %add.ptr.i, i64 0, i32 5
  %5 = load i64, ptr %sh_size.i, align 8, !tbaa !19
  %conv2.i = trunc i64 %5 to i32
  br label %if.end.i

if.else.i:                                        ; preds = %if.end28
  %conv.i = zext i16 %4 to i32
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %num_sections.0.i = phi i32 [ %conv2.i, %if.then.i ], [ %conv.i, %if.else.i ]
  %cmp543.i = icmp ugt i32 %num_sections.0.i, 1
  br i1 %cmp543.i, label %for.body.preheader.i, label %get_offset_from_address.exit

for.body.preheader.i:                             ; preds = %if.end.i
  %wide.trip.count.i = zext i32 %num_sections.0.i to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %for.body.preheader.i
  %indvars.iv.i = phi i64 [ 1, %for.body.preheader.i ], [ %indvars.iv.next.i, %for.inc.i ]
  %arrayidx7.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %add.ptr.i, i64 %indvars.iv.i
  %sh_addr.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %arrayidx7.i, i64 0, i32 3
  %6 = load i64, ptr %sh_addr.i, align 8, !tbaa !34
  %cmp13.not.i = icmp ult i64 %call23, %6
  br i1 %cmp13.not.i, label %for.inc.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %sh_size10.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %arrayidx7.i, i64 0, i32 5
  %7 = load i64, ptr %sh_size10.i, align 8, !tbaa !19
  %add.i = add i64 %7, %6
  %cmp15.not.i = icmp ult i64 %add.i, %call23
  br i1 %cmp15.not.i, label %for.inc.i, label %cleanup.i

cleanup.i:                                        ; preds = %land.lhs.true.i
  %sh_offset.le.i = getelementptr inbounds %struct.Elf64_Shdr, ptr %arrayidx7.i, i64 0, i32 4
  %8 = load i64, ptr %sh_offset.le.i, align 8, !tbaa !27
  %sub.i = sub i64 %call23, %6
  %add18.i = add i64 %sub.i, %8
  br label %get_offset_from_address.exit

for.inc.i:                                        ; preds = %land.lhs.true.i, %for.body.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %get_offset_from_address.exit, label %for.body.i

get_offset_from_address.exit:                     ; preds = %for.inc.i, %cleanup.i, %if.end.i
  %retval.2.i = phi i64 [ %add18.i, %cleanup.i ], [ 0, %if.end.i ], [ 0, %for.inc.i ]
  store i64 %retval.2.i, ptr %offset, align 8, !tbaa !25
  store ptr %name, ptr %s, align 8, !tbaa !35
  %add.ptr = getelementptr i8, ptr %hdr, i64 %retval.2.i
  %content = getelementptr inbounds %struct.sym, ptr %s, i64 0, i32 3
  store ptr %add.ptr, ptr %content, align 8, !tbaa !36
  br label %cleanup

cleanup:                                          ; preds = %get_offset_from_address.exit, %if.end21, %if.end16, %if.then14, %if.then5
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %l) #15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #10

declare i32 @close(i32 noundef) local_unnamed_addr #11

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #12

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare i32 @__fxstat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

attributes #0 = { noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { cold }
attributes #20 = { nounwind readonly willreturn }

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
!9 = !{!10, !11, i64 48}
!10 = !{!"stat", !11, i64 0, !11, i64 8, !11, i64 16, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !13, i64 72, !13, i64 88, !13, i64 104, !7, i64 120}
!11 = !{!"long", !7, i64 0}
!12 = !{!"int", !7, i64 0}
!13 = !{!"timespec", !11, i64 0, !11, i64 8}
!14 = !{!7, !7, i64 0}
!15 = !{!16, !11, i64 40}
!16 = !{!"", !7, i64 0, !17, i64 16, !17, i64 18, !12, i64 20, !11, i64 24, !11, i64 32, !11, i64 40, !12, i64 48, !17, i64 52, !17, i64 54, !17, i64 56, !17, i64 58, !17, i64 60, !17, i64 62}
!17 = !{!"short", !7, i64 0}
!18 = !{!16, !17, i64 60}
!19 = !{!20, !11, i64 32}
!20 = !{!"", !12, i64 0, !12, i64 4, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !12, i64 40, !12, i64 44, !11, i64 48, !11, i64 56}
!21 = !{!20, !12, i64 4}
!22 = !{!23, !11, i64 8}
!23 = !{!"sym", !6, i64 0, !11, i64 8, !11, i64 16, !6, i64 24, !12, i64 32}
!24 = !{!23, !12, i64 32}
!25 = !{!23, !11, i64 16}
!26 = !{!20, !12, i64 40}
!27 = !{!20, !11, i64 24}
!28 = !{!20, !11, i64 56}
!29 = !{!30, !12, i64 0}
!30 = !{!"", !12, i64 0, !7, i64 4, !7, i64 5, !17, i64 6, !11, i64 8, !11, i64 16}
!31 = !{!30, !17, i64 6}
!32 = !{!30, !11, i64 16}
!33 = !{!30, !11, i64 8}
!34 = !{!20, !11, i64 16}
!35 = !{!23, !6, i64 0}
!36 = !{!23, !6, i64 24}
!37 = !{!12, !12, i64 0}
!38 = !{!11, !11, i64 0}
