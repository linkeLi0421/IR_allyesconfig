; ModuleID = '/llk/IR_all_yes/scripts/kallsyms.c_pt.bc'
source_filename = "../scripts/kallsyms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addr_range = type { ptr, ptr, i64, i64 }
%struct.sym_entry = type { i64, i32, i32, i32, [0 x i8] }

@.str = private unnamed_addr constant [14 x i8] c"--all-symbols\00", align 1
@all_symbols = internal unnamed_addr global i1 false, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"--absolute-percpu\00", align 1
@absolute_percpu = internal unnamed_addr global i1 false, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"--base-relative\00", align 1
@base_relative = internal unnamed_addr global i1 false, align 4
@stdin = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [68 x i8] c"Usage: kallsyms [--all-symbols] [--base-relative] < in.map > out.S\0A\00", align 1
@table_cnt = internal unnamed_addr global i32 0, align 4
@table_size = internal unnamed_addr global i32 0, align 4
@table = internal unnamed_addr global ptr null, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"%llx %c %499s\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Read error or end of file.\0A\00", align 1
@.str.7 = private unnamed_addr constant [106 x i8] c"Symbol %s too long for kallsyms (%zu >= %d).\0APlease increase KSYM_NAME_LEN both in kernel and kallsyms.c\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"_text\00", align 1
@_text = internal unnamed_addr global i64 0, align 8
@text_ranges = internal unnamed_addr global [2 x %struct.addr_range] [%struct.addr_range { ptr @.str.40, ptr @.str.41, i64 0, i64 0 }, %struct.addr_range { ptr @.str.42, ptr @.str.43, i64 0, i64 0 }], align 16
@percpu_range = internal unnamed_addr global %struct.addr_range { ptr @.str.44, ptr @.str.45, i64 -1, i64 0 }, align 8
@.str.9 = private unnamed_addr constant [64 x i8] c"kallsyms failure: unable to allocate required amount of memory\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"kallsyms_addresses\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"kallsyms_offsets\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"kallsyms_relative_base\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"kallsyms_num_syms\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"kallsyms_names\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"kallsyms_markers\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"kallsyms_token_table\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"kallsyms_token_index\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"_SDA_BASE_\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"_SDA2_BASE_\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"__crc_\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"__efistub_\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"__kvm_nvhe_\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"__AArch64ADRPThunk_\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"__ARMV5PILongThunk_\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"__ARMV7PILongThunk_\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"__ThumbV7PILongThunk_\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"__LA25Thunk_\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"__microLA25Thunk_\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"_from_arm\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"_from_thumb\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"_veneer\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c".long_branch.\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c".plt_branch.\00", align 1
@.str.36 = private unnamed_addr constant [27 x i8] c"__kernel_syscall_via_break\00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"__kernel_syscall_via_epc\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"__kernel_sigtramp\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"__gp\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"_stext\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"_etext\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"_sinittext\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"_einittext\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"__per_cpu_start\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"__per_cpu_end\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"No valid symbol.\0A\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"start_\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"stop_\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"end_\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"_start\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"_end\00", align 1
@relative_base = internal unnamed_addr global i64 0, align 8
@token_profit = internal unnamed_addr global [65536 x i32] zeroinitializer, align 16
@best_table = internal global [256 x [2 x i8]] zeroinitializer, align 16
@best_table_len = internal unnamed_addr global [256 x i8] zeroinitializer, align 16
@.str.62 = private unnamed_addr constant [71 x i8] c"kallsyms failure: %s symbol value %#llx out of range in relative mode\0A\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"absolute\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"relative\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"\09.long\09%#x\0A\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"\09PTR\09%#llx\0A\00", align 1
@.str.68 = private unnamed_addr constant [11 x i8] c"\09.long\09%u\0A\00", align 1
@.str.69 = private unnamed_addr constant [54 x i8] c"kallsyms failure: unable to allocate required memory\0A\00", align 1
@.str.70 = private unnamed_addr constant [14 x i8] c"\09.byte 0x%02x\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c", 0x%02x\00", align 1
@.str.72 = private unnamed_addr constant [14 x i8] c"\09.asciz\09\22%s\22\0A\00", align 1
@.str.73 = private unnamed_addr constant [12 x i8] c"\09.short\09%d\0A\00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c".globl %s\0A\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@.str.77 = private unnamed_addr constant [20 x i8] c"\09PTR\09_text + %#llx\0A\00", align 1
@.str.78 = private unnamed_addr constant [20 x i8] c"\09PTR\09_text - %#llx\0A\00", align 1
@str = private unnamed_addr constant [29 x i8] c"#include <asm/bitsperlong.h>\00", align 1
@str.79 = private unnamed_addr constant [24 x i8] c"#if BITS_PER_LONG == 64\00", align 1
@str.80 = private unnamed_addr constant [18 x i8] c"#define PTR .quad\00", align 1
@str.81 = private unnamed_addr constant [23 x i8] c"#define ALGN .balign 8\00", align 1
@str.82 = private unnamed_addr constant [6 x i8] c"#else\00", align 1
@str.83 = private unnamed_addr constant [18 x i8] c"#define PTR .long\00", align 1
@str.84 = private unnamed_addr constant [23 x i8] c"#define ALGN .balign 4\00", align 1
@str.85 = private unnamed_addr constant [7 x i8] c"#endif\00", align 1
@str.86 = private unnamed_addr constant [23 x i8] c"\09.section .rodata, \22a\22\00", align 1
@str.87 = private unnamed_addr constant [6 x i8] c"\09ALGN\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr nocapture noundef readonly %argv) local_unnamed_addr #0 {
entry:
  %best_idx.i = alloca [256 x i32], align 16
  %buf.i = alloca [128 x i8], align 16
  %name.i.i = alloca [500 x i8], align 16
  %type.i.i = alloca i8, align 1
  %addr.i.i = alloca i64, align 8
  %cmp = icmp sgt i32 %argc, 1
  br i1 %cmp, label %for.body.preheader, label %if.else18

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %argc to i64
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.preheader
  %indvars.iv = phi i64 [ 1, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr inbounds ptr, ptr %argv, i64 %indvars.iv
  %0 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(14) @.str) #19
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %for.inc, label %if.else

if.else:                                          ; preds = %for.body
  %call6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(18) @.str.1) #19
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %for.inc, label %if.else9

if.else9:                                         ; preds = %if.else
  %call12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(16) @.str.2) #19
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %for.inc, label %if.else15

if.else15:                                        ; preds = %if.else9
  %1 = load ptr, ptr @stderr, align 8, !tbaa !5
  %2 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 67, i64 1, ptr %1) #20
  tail call void @exit(i32 noundef 1) #21
  unreachable

for.inc:                                          ; preds = %if.else9, %if.else, %for.body
  %all_symbols.sink = phi ptr [ @all_symbols, %for.body ], [ @absolute_percpu, %if.else ], [ @base_relative, %if.else9 ]
  store i1 true, ptr %all_symbols.sink, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %if.end22, label %for.body

if.else18:                                        ; preds = %entry
  %cmp19.not = icmp eq i32 %argc, 1
  br i1 %cmp19.not, label %if.end22, label %if.then20

if.then20:                                        ; preds = %if.else18
  %3 = load ptr, ptr @stderr, align 8, !tbaa !5
  %4 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 67, i64 1, ptr %3) #20
  tail call void @exit(i32 noundef 1) #21
  unreachable

if.end22:                                         ; preds = %if.else18, %for.inc
  %5 = load ptr, ptr @stdin, align 8, !tbaa !5
  %call16.i = tail call i32 @feof(ptr noundef %5) #22
  %tobool.not17.i = icmp eq i32 %call16.i, 0
  br i1 %tobool.not17.i, label %while.body.i, label %read_map.exit

while.body.i:                                     ; preds = %while.cond.backedge.i, %if.end22
  call void @llvm.lifetime.start.p0(i64 500, ptr nonnull %name.i.i) #22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %type.i.i) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %addr.i.i) #22
  %call.i.i = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %5, ptr noundef nonnull @.str.5, ptr noundef nonnull %addr.i.i, ptr noundef nonnull %type.i.i, ptr noundef nonnull %name.i.i) #22
  switch i32 %call.i.i, label %land.lhs.true.i.i [
    i32 3, label %if.end7.i.i
    i32 -1, label %read_symbol.exit.i
  ]

land.lhs.true.i.i:                                ; preds = %while.body.i
  %call3.i.i = call ptr @fgets(ptr noundef nonnull %name.i.i, i32 noundef 500, ptr noundef %5) #22
  %cmp4.i.i = icmp eq ptr %call3.i.i, null
  br i1 %cmp4.i.i, label %if.then5.i.i, label %read_symbol.exit.i

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  %6 = load ptr, ptr @stderr, align 8, !tbaa !5
  %7 = call i64 @fwrite(ptr nonnull @.str.6, i64 27, i64 1, ptr %6) #20
  br label %read_symbol.exit.i

if.end7.i.i:                                      ; preds = %while.body.i
  %call9.i.i = call i64 @strlen(ptr noundef nonnull %name.i.i) #19
  %cmp10.i.i = icmp ugt i64 %call9.i.i, 127
  br i1 %cmp10.i.i, label %if.then11.i.i, label %if.end16.i.i

if.then11.i.i:                                    ; preds = %if.end7.i.i
  %8 = load ptr, ptr @stderr, align 8, !tbaa !5
  %call15.i.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.7, ptr noundef nonnull %name.i.i, i64 noundef %call9.i.i, i32 noundef 128) #20
  br label %read_symbol.exit.i

if.end16.i.i:                                     ; preds = %if.end7.i.i
  %bcmp.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %name.i.i, ptr noundef nonnull dereferenceable(6) @.str.8, i64 6) #22
  %cmp19.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp19.i.i, label %if.then20.i.i, label %if.end21.i.i

if.then20.i.i:                                    ; preds = %if.end16.i.i
  %9 = load i64, ptr %addr.i.i, align 8, !tbaa !9
  store i64 %9, ptr @_text, align 8, !tbaa !9
  br label %if.end21.i.i

if.end21.i.i:                                     ; preds = %if.then20.i.i, %if.end16.i.i
  %10 = load i8, ptr %type.i.i, align 1, !tbaa !11
  %bcmp80.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(19) %name.i.i, ptr noundef nonnull dereferenceable(19) @.str.10, i64 19) #22
  %tobool1.not.i.i.i = icmp eq i32 %bcmp80.i.i, 0
  br i1 %tobool1.not.i.i.i, label %read_symbol.exit.i, label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %if.end21.i.i
  %bcmp81.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(17) %name.i.i, ptr noundef nonnull dereferenceable(17) @.str.11, i64 17) #22
  %tobool1.not.1.i.i.i = icmp eq i32 %bcmp81.i.i, 0
  br i1 %tobool1.not.1.i.i.i, label %read_symbol.exit.i, label %for.cond.1.i.i.i

for.cond.1.i.i.i:                                 ; preds = %for.cond.i.i.i
  %bcmp82.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(23) %name.i.i, ptr noundef nonnull dereferenceable(23) @.str.12, i64 23) #22
  %tobool1.not.2.i.i.i = icmp eq i32 %bcmp82.i.i, 0
  br i1 %tobool1.not.2.i.i.i, label %read_symbol.exit.i, label %for.cond.2.i.i.i

for.cond.2.i.i.i:                                 ; preds = %for.cond.1.i.i.i
  %bcmp83.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(18) %name.i.i, ptr noundef nonnull dereferenceable(18) @.str.13, i64 18) #22
  %tobool1.not.3.i.i.i = icmp eq i32 %bcmp83.i.i, 0
  br i1 %tobool1.not.3.i.i.i, label %read_symbol.exit.i, label %for.cond.3.i.i.i

for.cond.3.i.i.i:                                 ; preds = %for.cond.2.i.i.i
  %bcmp84.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(15) %name.i.i, ptr noundef nonnull dereferenceable(15) @.str.14, i64 15) #22
  %tobool1.not.4.i.i.i = icmp eq i32 %bcmp84.i.i, 0
  br i1 %tobool1.not.4.i.i.i, label %read_symbol.exit.i, label %for.cond.4.i.i.i

for.cond.4.i.i.i:                                 ; preds = %for.cond.3.i.i.i
  %bcmp85.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(17) %name.i.i, ptr noundef nonnull dereferenceable(17) @.str.15, i64 17) #22
  %tobool1.not.5.i.i.i = icmp eq i32 %bcmp85.i.i, 0
  br i1 %tobool1.not.5.i.i.i, label %read_symbol.exit.i, label %for.cond.5.i.i.i

for.cond.5.i.i.i:                                 ; preds = %for.cond.4.i.i.i
  %bcmp86.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(21) %name.i.i, ptr noundef nonnull dereferenceable(21) @.str.16, i64 21) #22
  %tobool1.not.6.i.i.i = icmp eq i32 %bcmp86.i.i, 0
  br i1 %tobool1.not.6.i.i.i, label %read_symbol.exit.i, label %for.cond.6.i.i.i

for.cond.6.i.i.i:                                 ; preds = %for.cond.5.i.i.i
  %bcmp87.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(21) %name.i.i, ptr noundef nonnull dereferenceable(21) @.str.17, i64 21) #22
  %tobool1.not.7.i.i.i = icmp eq i32 %bcmp87.i.i, 0
  br i1 %tobool1.not.7.i.i.i, label %read_symbol.exit.i, label %for.cond.7.i.i.i

for.cond.7.i.i.i:                                 ; preds = %for.cond.6.i.i.i
  %bcmp88.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(11) %name.i.i, ptr noundef nonnull dereferenceable(11) @.str.18, i64 11) #22
  %tobool1.not.8.i.i.i = icmp eq i32 %bcmp88.i.i, 0
  br i1 %tobool1.not.8.i.i.i, label %read_symbol.exit.i, label %for.cond.8.i.i.i

for.cond.8.i.i.i:                                 ; preds = %for.cond.7.i.i.i
  %bcmp89.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(12) %name.i.i, ptr noundef nonnull dereferenceable(12) @.str.19, i64 12) #22
  %tobool1.not.9.i.i.i = icmp eq i32 %bcmp89.i.i, 0
  %lhsc.i.i.i = load i8, ptr %name.i.i, align 16
  %tobool7.not.i.i.i = icmp eq i8 %lhsc.i.i.i, 36
  %or.cond.i.i = select i1 %tobool1.not.9.i.i.i, i1 true, i1 %tobool7.not.i.i.i
  %lhsv.i.i = load i64, ptr %name.i.i, align 16
  %.not.i.i = icmp eq i64 %lhsv.i.i, 4850462841154653230
  %or.cond104.i.i = select i1 %or.cond.i.i, i1 true, i1 %.not.i.i
  br i1 %or.cond104.i.i, label %read_symbol.exit.i, label %for.cond2.1.i.i.i

for.cond2.1.i.i.i:                                ; preds = %for.cond.8.i.i.i
  %bcmp91.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %name.i.i, ptr noundef nonnull dereferenceable(6) @.str.22, i64 6) #22
  %tobool7.not.2.i.i.i = icmp eq i32 %bcmp91.i.i, 0
  br i1 %tobool7.not.2.i.i.i, label %read_symbol.exit.i, label %for.cond2.2.i.i.i

for.cond2.2.i.i.i:                                ; preds = %for.cond2.1.i.i.i
  %bcmp92.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(10) %name.i.i, ptr noundef nonnull dereferenceable(10) @.str.23, i64 10) #22
  %tobool7.not.3.i.i.i = icmp eq i32 %bcmp92.i.i, 0
  br i1 %tobool7.not.3.i.i.i, label %read_symbol.exit.i, label %for.cond2.3.i.i.i

for.cond2.3.i.i.i:                                ; preds = %for.cond2.2.i.i.i
  %bcmp93.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(11) %name.i.i, ptr noundef nonnull dereferenceable(11) @.str.24, i64 11) #22
  %tobool7.not.4.i.i.i = icmp eq i32 %bcmp93.i.i, 0
  br i1 %tobool7.not.4.i.i.i, label %read_symbol.exit.i, label %for.cond2.4.i.i.i

for.cond2.4.i.i.i:                                ; preds = %for.cond2.3.i.i.i
  %bcmp94.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(19) %name.i.i, ptr noundef nonnull dereferenceable(19) @.str.25, i64 19) #22
  %tobool7.not.5.i.i.i = icmp eq i32 %bcmp94.i.i, 0
  br i1 %tobool7.not.5.i.i.i, label %read_symbol.exit.i, label %for.cond2.5.i.i.i

for.cond2.5.i.i.i:                                ; preds = %for.cond2.4.i.i.i
  %bcmp95.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(19) %name.i.i, ptr noundef nonnull dereferenceable(19) @.str.26, i64 19) #22
  %tobool7.not.6.i.i.i = icmp eq i32 %bcmp95.i.i, 0
  br i1 %tobool7.not.6.i.i.i, label %read_symbol.exit.i, label %for.cond2.6.i.i.i

for.cond2.6.i.i.i:                                ; preds = %for.cond2.5.i.i.i
  %bcmp96.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(19) %name.i.i, ptr noundef nonnull dereferenceable(19) @.str.27, i64 19) #22
  %tobool7.not.7.i.i.i = icmp eq i32 %bcmp96.i.i, 0
  br i1 %tobool7.not.7.i.i.i, label %read_symbol.exit.i, label %for.cond2.7.i.i.i

for.cond2.7.i.i.i:                                ; preds = %for.cond2.6.i.i.i
  %bcmp97.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(21) %name.i.i, ptr noundef nonnull dereferenceable(21) @.str.28, i64 21) #22
  %tobool7.not.8.i.i.i = icmp eq i32 %bcmp97.i.i, 0
  br i1 %tobool7.not.8.i.i.i, label %read_symbol.exit.i, label %for.cond2.8.i.i.i

for.cond2.8.i.i.i:                                ; preds = %for.cond2.7.i.i.i
  %bcmp98.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(12) %name.i.i, ptr noundef nonnull dereferenceable(12) @.str.29, i64 12) #22
  %tobool7.not.9.i.i.i = icmp eq i32 %bcmp98.i.i, 0
  br i1 %tobool7.not.9.i.i.i, label %read_symbol.exit.i, label %for.cond2.9.i.i.i

for.cond2.9.i.i.i:                                ; preds = %for.cond2.8.i.i.i
  %bcmp99.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(17) %name.i.i, ptr noundef nonnull dereferenceable(17) @.str.30, i64 17) #22
  %tobool7.not.10.i.i.i = icmp eq i32 %bcmp99.i.i, 0
  br i1 %tobool7.not.10.i.i.i, label %read_symbol.exit.i, label %for.cond2.10.i.i.i

for.cond2.10.i.i.i:                               ; preds = %for.cond2.9.i.i.i
  %call16.i.i.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %name.i.i) #19
  %sub.i.i.i = add i64 %call16.i.i.i, -9
  %11 = and i64 %sub.i.i.i, 2147483648
  %cmp.i.i.i = icmp eq i64 %11, 0
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.i, label %for.inc23.critedge.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.cond2.10.i.i.i
  %sext.i.i.i = shl i64 %sub.i.i.i, 32
  %idx.ext.i.i.i = ashr exact i64 %sext.i.i.i, 32
  %add.ptr.i.i.i = getelementptr inbounds i8, ptr %name.i.i, i64 %idx.ext.i.i.i
  %call19.i.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %add.ptr.i.i.i, ptr noundef nonnull dereferenceable(10) @.str.31) #19
  %tobool20.not.i.i.i = icmp eq i32 %call19.i.i.i, 0
  br i1 %tobool20.not.i.i.i, label %read_symbol.exit.i, label %for.inc23.critedge.i.i.i

for.inc23.critedge.i.i.i:                         ; preds = %land.lhs.true.i.i.i, %for.cond2.10.i.i.i
  %sub.1.i.i.i = add i64 %call16.i.i.i, -11
  %12 = and i64 %sub.1.i.i.i, 2147483648
  %cmp.1.i.i.i = icmp eq i64 %12, 0
  br i1 %cmp.1.i.i.i, label %land.lhs.true.1.i.i.i, label %for.inc23.critedge.1.i.i.i

land.lhs.true.1.i.i.i:                            ; preds = %for.inc23.critedge.i.i.i
  %sext.1.i.i.i = shl i64 %sub.1.i.i.i, 32
  %idx.ext.1.i.i.i = ashr exact i64 %sext.1.i.i.i, 32
  %add.ptr.1.i.i.i = getelementptr inbounds i8, ptr %name.i.i, i64 %idx.ext.1.i.i.i
  %call19.1.i.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %add.ptr.1.i.i.i, ptr noundef nonnull dereferenceable(12) @.str.32) #19
  %tobool20.not.1.i.i.i = icmp eq i32 %call19.1.i.i.i, 0
  br i1 %tobool20.not.1.i.i.i, label %read_symbol.exit.i, label %for.inc23.critedge.1.i.i.i

for.inc23.critedge.1.i.i.i:                       ; preds = %land.lhs.true.1.i.i.i, %for.inc23.critedge.i.i.i
  %sub.2.i.i.i = add i64 %call16.i.i.i, -7
  %13 = and i64 %sub.2.i.i.i, 2147483648
  %cmp.2.i.i.i = icmp eq i64 %13, 0
  br i1 %cmp.2.i.i.i, label %land.lhs.true.2.i.i.i, label %for.inc23.critedge.2.i.i.i

land.lhs.true.2.i.i.i:                            ; preds = %for.inc23.critedge.1.i.i.i
  %sext.2.i.i.i = shl i64 %sub.2.i.i.i, 32
  %idx.ext.2.i.i.i = ashr exact i64 %sext.2.i.i.i, 32
  %add.ptr.2.i.i.i = getelementptr inbounds i8, ptr %name.i.i, i64 %idx.ext.2.i.i.i
  %call19.2.i.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %add.ptr.2.i.i.i, ptr noundef nonnull dereferenceable(8) @.str.33) #19
  %tobool20.not.2.i.i.i = icmp eq i32 %call19.2.i.i.i, 0
  br i1 %tobool20.not.2.i.i.i, label %read_symbol.exit.i, label %for.inc23.critedge.2.i.i.i

for.inc23.critedge.2.i.i.i:                       ; preds = %land.lhs.true.2.i.i.i, %for.inc23.critedge.1.i.i.i
  %call29.i.i.i = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %name.i.i, ptr noundef nonnull @.str.34) #19
  %tobool30.not.i.i.i = icmp eq ptr %call29.i.i.i, null
  br i1 %tobool30.not.i.i.i, label %for.cond26.i.i.i, label %read_symbol.exit.i

for.cond26.i.i.i:                                 ; preds = %for.inc23.critedge.2.i.i.i
  %call29.1.i.i.i = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %name.i.i, ptr noundef nonnull @.str.35) #19
  %tobool30.not.1.i.i.i = icmp eq ptr %call29.1.i.i.i, null
  br i1 %tobool30.not.1.i.i.i, label %for.cond26.1.i.i.i, label %read_symbol.exit.i

for.cond26.1.i.i.i:                               ; preds = %for.cond26.i.i.i
  switch i8 %10, label %if.end52.i.i.i [
    i8 117, label %read_symbol.exit.i
    i8 110, label %read_symbol.exit.i
    i8 85, label %read_symbol.exit.i
    i8 78, label %read_symbol.exit.i
  ]

if.end52.i.i.i:                                   ; preds = %for.cond26.1.i.i.i
  %call53.i.i.i = tail call ptr @__ctype_toupper_loc() #23
  %14 = load ptr, ptr %call53.i.i.i, align 8, !tbaa !5
  %idxprom.i.i.i = sext i8 %10 to i64
  %arrayidx.i.i.i = getelementptr inbounds i32, ptr %14, i64 %idxprom.i.i.i
  %15 = load i32, ptr %arrayidx.i.i.i, align 4, !tbaa !12
  %cmp55.i.i.i = icmp eq i32 %15, 65
  br i1 %cmp55.i.i.i, label %if.then57.i.i.i, label %if.end25.i.i

if.then57.i.i.i:                                  ; preds = %if.end52.i.i.i
  %bcmp100.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(27) %name.i.i, ptr noundef nonnull dereferenceable(27) @.str.36, i64 27) #22
  %tobool59.not.i.i.i = icmp eq i32 %bcmp100.i.i, 0
  br i1 %tobool59.not.i.i.i, label %if.end25.i.i, label %land.lhs.true60.i.i.i

land.lhs.true60.i.i.i:                            ; preds = %if.then57.i.i.i
  %bcmp101.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(25) %name.i.i, ptr noundef nonnull dereferenceable(25) @.str.37, i64 25) #22
  %tobool62.not.i.i.i = icmp eq i32 %bcmp101.i.i, 0
  br i1 %tobool62.not.i.i.i, label %if.end25.i.i, label %land.lhs.true63.i.i.i

land.lhs.true63.i.i.i:                            ; preds = %land.lhs.true60.i.i.i
  %bcmp102.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(18) %name.i.i, ptr noundef nonnull dereferenceable(18) @.str.38, i64 18) #22
  %tobool65.not.i.i.i = icmp eq i32 %bcmp102.i.i, 0
  br i1 %tobool65.not.i.i.i, label %if.end25.i.i, label %land.lhs.true66.i.i.i

land.lhs.true66.i.i.i:                            ; preds = %land.lhs.true63.i.i.i
  %bcmp103.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %name.i.i, ptr noundef nonnull dereferenceable(5) @.str.39, i64 5) #22
  %tobool68.not.i.i.i = icmp eq i32 %bcmp103.i.i, 0
  br i1 %tobool68.not.i.i.i, label %if.end25.i.i, label %read_symbol.exit.i

if.end25.i.i:                                     ; preds = %land.lhs.true66.i.i.i, %land.lhs.true63.i.i.i, %land.lhs.true60.i.i.i, %if.then57.i.i.i, %if.end52.i.i.i
  %16 = load i64, ptr %addr.i.i, align 8, !tbaa !9
  %17 = load ptr, ptr @text_ranges, align 16, !tbaa !14
  %call.i58.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.i.i, ptr noundef nonnull dereferenceable(1) %17) #19
  %cmp2.i.i.i = icmp eq i32 %call.i58.i.i, 0
  br i1 %cmp2.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i, %if.end25.i.i
  %i.020.i.lcssa.i.i = phi i64 [ 0, %if.end25.i.i ], [ 1, %for.inc.i.i.i ]
  %start.i.i.i = getelementptr inbounds %struct.addr_range, ptr @text_ranges, i64 %i.020.i.lcssa.i.i, i32 2
  br label %cleanup.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end25.i.i
  %18 = load ptr, ptr getelementptr inbounds ([2 x %struct.addr_range], ptr @text_ranges, i64 0, i64 0, i32 1), align 8, !tbaa !16
  %call4.i.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.i.i, ptr noundef nonnull dereferenceable(1) %18) #19
  %cmp5.i.i.i = icmp eq i32 %call4.i.i.i, 0
  br i1 %cmp5.i.i.i, label %if.then7.i.i.i, label %for.inc.i.i.i

if.then7.i.i.i:                                   ; preds = %if.else.i.1.i.i, %if.else.i.i.i
  %i.020.i.lcssa111.i.i = phi i64 [ 0, %if.else.i.i.i ], [ 1, %if.else.i.1.i.i ]
  %end.i.i.i = getelementptr inbounds %struct.addr_range, ptr @text_ranges, i64 %i.020.i.lcssa111.i.i, i32 3
  br label %cleanup.sink.split.i.i.i

for.inc.i.i.i:                                    ; preds = %if.else.i.i.i
  %19 = load ptr, ptr getelementptr inbounds ([2 x %struct.addr_range], ptr @text_ranges, i64 0, i64 1), align 16, !tbaa !14
  %call.i58.1.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.i.i, ptr noundef nonnull dereferenceable(1) %19) #19
  %cmp2.i.1.i.i = icmp eq i32 %call.i58.1.i.i, 0
  br i1 %cmp2.i.1.i.i, label %if.then.i.i.i, label %if.else.i.1.i.i

if.else.i.1.i.i:                                  ; preds = %for.inc.i.i.i
  %20 = load ptr, ptr getelementptr inbounds ([2 x %struct.addr_range], ptr @text_ranges, i64 0, i64 1, i32 1), align 8, !tbaa !16
  %call4.i.1.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.i.i, ptr noundef nonnull dereferenceable(1) %20) #19
  %cmp5.i.1.i.i = icmp eq i32 %call4.i.1.i.i, 0
  br i1 %cmp5.i.1.i.i, label %if.then7.i.i.i, label %check_symbol_range.exit.i.i

cleanup.sink.split.i.i.i:                         ; preds = %if.then7.i.i.i, %if.then.i.i.i
  %end.sink.i.i.i = phi ptr [ %end.i.i.i, %if.then7.i.i.i ], [ %start.i.i.i, %if.then.i.i.i ]
  store i64 %16, ptr %end.sink.i.i.i, align 8, !tbaa !9
  br label %check_symbol_range.exit.i.i

check_symbol_range.exit.i.i:                      ; preds = %cleanup.sink.split.i.i.i, %if.else.i.1.i.i
  %21 = load ptr, ptr @percpu_range, align 8, !tbaa !14
  %call.i61.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.i.i, ptr noundef nonnull dereferenceable(1) %21) #19
  %cmp2.i62.i.i = icmp eq i32 %call.i61.i.i, 0
  br i1 %cmp2.i62.i.i, label %cleanup.sink.split.i76.i.i, label %if.else.i69.i.i

if.else.i69.i.i:                                  ; preds = %check_symbol_range.exit.i.i
  %22 = load ptr, ptr getelementptr inbounds (%struct.addr_range, ptr @percpu_range, i64 0, i32 1), align 8, !tbaa !16
  %call4.i67.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %name.i.i, ptr noundef nonnull dereferenceable(1) %22) #19
  %cmp5.i68.i.i = icmp eq i32 %call4.i67.i.i, 0
  br i1 %cmp5.i68.i.i, label %cleanup.sink.split.i76.i.i, label %check_symbol_range.exit77.i.i

cleanup.sink.split.i76.i.i:                       ; preds = %if.else.i69.i.i, %check_symbol_range.exit.i.i
  %end.sink.i75.i.i = phi ptr [ getelementptr inbounds (%struct.addr_range, ptr @percpu_range, i64 0, i32 2), %check_symbol_range.exit.i.i ], [ getelementptr inbounds (%struct.addr_range, ptr @percpu_range, i64 0, i32 3), %if.else.i69.i.i ]
  store i64 %16, ptr %end.sink.i75.i.i, align 8, !tbaa !9
  br label %check_symbol_range.exit77.i.i

check_symbol_range.exit77.i.i:                    ; preds = %cleanup.sink.split.i76.i.i, %if.else.i69.i.i
  %add32.i.i = add nuw nsw i64 %call9.i.i, 26
  %call33.i.i = call noalias ptr @malloc(i64 noundef %add32.i.i) #24
  %tobool.not.i.i = icmp eq ptr %call33.i.i, null
  br i1 %tobool.not.i.i, label %if.then34.i.i, label %if.end.i

if.then34.i.i:                                    ; preds = %check_symbol_range.exit77.i.i
  %23 = load ptr, ptr @stderr, align 8, !tbaa !5
  %24 = call i64 @fwrite(ptr nonnull @.str.9, i64 63, i64 1, ptr %23) #20
  call void @exit(i32 noundef 1) #21
  unreachable

read_symbol.exit.i:                               ; preds = %land.lhs.true66.i.i.i, %for.cond26.1.i.i.i, %for.cond26.1.i.i.i, %for.cond26.1.i.i.i, %for.cond26.1.i.i.i, %for.cond26.i.i.i, %for.inc23.critedge.2.i.i.i, %land.lhs.true.2.i.i.i, %land.lhs.true.1.i.i.i, %land.lhs.true.i.i.i, %for.cond2.9.i.i.i, %for.cond2.8.i.i.i, %for.cond2.7.i.i.i, %for.cond2.6.i.i.i, %for.cond2.5.i.i.i, %for.cond2.4.i.i.i, %for.cond2.3.i.i.i, %for.cond2.2.i.i.i, %for.cond2.1.i.i.i, %for.cond.8.i.i.i, %for.cond.7.i.i.i, %for.cond.6.i.i.i, %for.cond.5.i.i.i, %for.cond.4.i.i.i, %for.cond.3.i.i.i, %for.cond.2.i.i.i, %for.cond.1.i.i.i, %for.cond.i.i.i, %if.end21.i.i, %if.then11.i.i, %if.then5.i.i, %land.lhs.true.i.i, %while.body.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %addr.i.i) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %type.i.i) #22
  call void @llvm.lifetime.end.p0(i64 500, ptr nonnull %name.i.i) #22
  br label %while.cond.backedge.i

if.end.i:                                         ; preds = %check_symbol_range.exit77.i.i
  %25 = trunc i64 %call9.i.i to i32
  %conv.i.i = add nuw nsw i32 %25, 1
  store i64 %16, ptr %call33.i.i, align 8, !tbaa !9
  %len38.i.i = getelementptr inbounds %struct.sym_entry, ptr %call33.i.i, i64 0, i32 1
  store i32 %conv.i.i, ptr %len38.i.i, align 8, !tbaa !12
  %sym39.i.i = getelementptr inbounds %struct.sym_entry, ptr %call33.i.i, i64 0, i32 4
  store i8 %10, ptr %sym39.i.i, align 4, !tbaa !11
  %add.ptr.i78.i.i = getelementptr inbounds %struct.sym_entry, ptr %call33.i.i, i64 0, i32 4, i64 1
  %call42.i.i = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %add.ptr.i78.i.i, ptr noundef nonnull %name.i.i) #22
  %percpu_absolute.i.i = getelementptr inbounds %struct.sym_entry, ptr %call33.i.i, i64 0, i32 3
  store i32 0, ptr %percpu_absolute.i.i, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %addr.i.i) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %type.i.i) #22
  call void @llvm.lifetime.end.p0(i64 500, ptr nonnull %name.i.i) #22
  %26 = load i32, ptr @table_cnt, align 4, !tbaa !12
  %start_pos.i = getelementptr inbounds %struct.sym_entry, ptr %call33.i.i, i64 0, i32 2
  store i32 %26, ptr %start_pos.i, align 4, !tbaa !12
  %27 = load i32, ptr @table_size, align 4, !tbaa !12
  %cmp.not.i = icmp ult i32 %26, %27
  br i1 %cmp.not.i, label %if.end.if.end9_crit_edge.i, label %if.then3.i

if.end.if.end9_crit_edge.i:                       ; preds = %if.end.i
  %.pre.i = load ptr, ptr @table, align 8, !tbaa !5
  br label %if.end9.i

if.then3.i:                                       ; preds = %if.end.i
  %add.i = add i32 %27, 10000
  store i32 %add.i, ptr @table_size, align 4, !tbaa !12
  %28 = load ptr, ptr @table, align 8, !tbaa !5
  %conv.i = zext i32 %add.i to i64
  %mul.i = shl nuw nsw i64 %conv.i, 3
  %call4.i = call ptr @realloc(ptr noundef %28, i64 noundef %mul.i) #25
  store ptr %call4.i, ptr @table, align 8, !tbaa !5
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end9.i

if.then6.i:                                       ; preds = %if.then3.i
  %29 = load ptr, ptr @stderr, align 8, !tbaa !5
  %30 = call i64 @fwrite(ptr nonnull @.str.4, i64 14, i64 1, ptr %29) #20
  call void @exit(i32 noundef 1) #21
  unreachable

if.end9.i:                                        ; preds = %if.then3.i, %if.end.if.end9_crit_edge.i
  %31 = phi ptr [ %.pre.i, %if.end.if.end9_crit_edge.i ], [ %call4.i, %if.then3.i ]
  %inc.i = add i32 %26, 1
  store i32 %inc.i, ptr @table_cnt, align 4, !tbaa !12
  %idxprom.i = zext i32 %26 to i64
  %arrayidx.i = getelementptr inbounds ptr, ptr %31, i64 %idxprom.i
  store ptr %call33.i.i, ptr %arrayidx.i, align 8, !tbaa !5
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.end9.i, %read_symbol.exit.i
  %call.i = call i32 @feof(ptr noundef %5) #22
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %read_map.exit

read_map.exit:                                    ; preds = %while.cond.backedge.i, %if.end22
  %32 = load i32, ptr @table_cnt, align 4, !tbaa !12
  %cmp25.not.i = icmp eq i32 %32, 0
  br i1 %cmp25.not.i, label %for.end.thread.i, label %for.body.lr.ph.i

for.end.thread.i:                                 ; preds = %read_map.exit
  store i32 0, ptr @table_cnt, align 4, !tbaa !12
  br label %if.then12.i

for.body.lr.ph.i:                                 ; preds = %read_map.exit
  %33 = load ptr, ptr @table, align 8, !tbaa !5
  %.b.i.i = load i1, ptr @all_symbols, align 4
  %wide.trip.count.i = zext i32 %32 to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %for.body.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.inc.i ]
  %pos.029.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %pos.1.i, %for.inc.i ]
  %arrayidx.i38 = getelementptr inbounds ptr, ptr %33, i64 %indvars.iv.i
  %34 = load ptr, ptr %arrayidx.i38, align 8, !tbaa !5
  %add.ptr.i.i.i39 = getelementptr inbounds %struct.sym_entry, ptr %34, i64 0, i32 4, i64 1
  br i1 %.b.i.i, label %if.then.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body.i
  %35 = load i64, ptr %34, align 8, !tbaa !9
  %36 = load i64, ptr getelementptr inbounds ([2 x %struct.addr_range], ptr @text_ranges, i64 0, i64 0, i32 2), align 16, !tbaa !17
  %cmp2.not.i.i.i = icmp ult i64 %35, %36
  %37 = load i64, ptr getelementptr inbounds ([2 x %struct.addr_range], ptr @text_ranges, i64 0, i64 0, i32 3), align 8
  %cmp5.not.i.i.i = icmp ugt i64 %35, %37
  %or.cond.i.i40 = select i1 %cmp2.not.i.i.i, i1 true, i1 %cmp5.not.i.i.i
  br i1 %or.cond.i.i40, label %for.inc.i.i.i41, label %if.end.i.i

for.inc.i.i.i41:                                  ; preds = %if.then.i.i
  %38 = load i64, ptr getelementptr inbounds ([2 x %struct.addr_range], ptr @text_ranges, i64 0, i64 1, i32 2), align 16, !tbaa !17
  %cmp2.not.i.1.i.i = icmp ult i64 %35, %38
  %39 = load i64, ptr getelementptr inbounds ([2 x %struct.addr_range], ptr @text_ranges, i64 0, i64 1, i32 3), align 8
  %cmp5.not.i.1.i.i = icmp ugt i64 %35, %39
  %or.cond20.i.i = select i1 %cmp2.not.i.1.i.i, i1 true, i1 %cmp5.not.i.1.i.i
  br i1 %or.cond20.i.i, label %if.else.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %for.inc.i.i.i41, %if.then.i.i
  %cmp3.i.i = icmp eq i64 %35, %37
  br i1 %cmp3.i.i, label %land.lhs.true.i.i42, label %lor.lhs.false.i.i

land.lhs.true.i.i42:                              ; preds = %if.end.i.i
  %40 = load ptr, ptr getelementptr inbounds ([2 x %struct.addr_range], ptr @text_ranges, i64 0, i64 0, i32 1), align 8, !tbaa !16
  %call4.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %add.ptr.i.i.i39, ptr noundef nonnull dereferenceable(1) %40) #19
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %lor.lhs.false.i.i, label %if.else.i

lor.lhs.false.i.i:                                ; preds = %land.lhs.true.i.i42, %if.end.i.i
  %41 = load i64, ptr getelementptr inbounds ([2 x %struct.addr_range], ptr @text_ranges, i64 0, i64 1, i32 3), align 8, !tbaa !18
  %cmp7.i.i = icmp eq i64 %35, %41
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.then.i

land.lhs.true8.i.i:                               ; preds = %lor.lhs.false.i.i
  %42 = load ptr, ptr getelementptr inbounds ([2 x %struct.addr_range], ptr @text_ranges, i64 0, i64 1, i32 1), align 8, !tbaa !16
  %call9.i.i43 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %add.ptr.i.i.i39, ptr noundef nonnull dereferenceable(1) %42) #19
  %tobool10.not.i.i = icmp eq i32 %call9.i.i43, 0
  br i1 %tobool10.not.i.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true8.i.i, %lor.lhs.false.i.i, %for.body.i
  %43 = zext i32 %pos.029.i to i64
  %cmp1.not.i = icmp eq i64 %indvars.iv.i, %43
  br i1 %cmp1.not.i, label %if.end.i45, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i
  %arrayidx6.i = getelementptr inbounds ptr, ptr %33, i64 %43
  store ptr %34, ptr %arrayidx6.i, align 8, !tbaa !5
  br label %if.end.i45

if.end.i45:                                       ; preds = %if.then2.i, %if.then.i
  %inc.i44 = add i32 %pos.029.i, 1
  br label %for.inc.i

if.else.i:                                        ; preds = %land.lhs.true8.i.i, %land.lhs.true.i.i42, %for.inc.i.i.i41
  call void @free(ptr noundef nonnull %34) #22
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.end.i45
  %pos.1.i = phi i32 [ %inc.i44, %if.end.i45 ], [ %pos.029.i, %if.else.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  store i32 %pos.1.i, ptr @table_cnt, align 4, !tbaa !12
  %tobool11.not.i = icmp eq i32 %pos.1.i, 0
  br i1 %tobool11.not.i, label %if.then12.i, label %shrink_table.exit

if.then12.i:                                      ; preds = %for.end.i, %for.end.thread.i
  %44 = load ptr, ptr @stderr, align 8, !tbaa !5
  %45 = call i64 @fwrite(ptr nonnull @.str.46, i64 17, i64 1, ptr %44) #20
  call void @exit(i32 noundef 1) #21
  unreachable

shrink_table.exit:                                ; preds = %for.end.i
  %.b = load i1, ptr @absolute_percpu, align 4
  %wide.trip.count.i46 = zext i32 %pos.1.i to i64
  br i1 %.b, label %for.body.lr.ph.i47, label %if.end24

for.body.lr.ph.i47:                               ; preds = %shrink_table.exit
  %.pre15.i = load i64, ptr getelementptr inbounds (%struct.addr_range, ptr @percpu_range, i64 0, i32 2), align 8, !tbaa !17
  %.pre114 = load i64, ptr getelementptr inbounds (%struct.addr_range, ptr @percpu_range, i64 0, i32 3), align 8
  %xtraiter = and i64 %wide.trip.count.i46, 1
  %46 = icmp eq i32 %pos.1.i, 1
  br i1 %46, label %if.end24.loopexit.unr-lcssa, label %for.body.lr.ph.i47.new

for.body.lr.ph.i47.new:                           ; preds = %for.body.lr.ph.i47
  %unroll_iter = and i64 %wide.trip.count.i46, 4294967294
  br label %for.body.i50

for.body.i50:                                     ; preds = %for.inc.i55.1, %for.body.lr.ph.i47.new
  %47 = phi i64 [ %.pre114, %for.body.lr.ph.i47.new ], [ %57, %for.inc.i55.1 ]
  %48 = phi i64 [ %.pre15.i, %for.body.lr.ph.i47.new ], [ %58, %for.inc.i55.1 ]
  %indvars.iv.i48 = phi i64 [ 0, %for.body.lr.ph.i47.new ], [ %indvars.iv.next.i53.1, %for.inc.i55.1 ]
  %niter = phi i64 [ 0, %for.body.lr.ph.i47.new ], [ %niter.next.1, %for.inc.i55.1 ]
  %arrayidx.i49 = getelementptr inbounds ptr, ptr %33, i64 %indvars.iv.i48
  %49 = load ptr, ptr %arrayidx.i49, align 8, !tbaa !5
  %50 = load i64, ptr %49, align 8, !tbaa !9
  %cmp2.not.i.i = icmp ult i64 %50, %48
  %cmp5.not.i.i = icmp ugt i64 %50, %47
  %or.cond.i = select i1 %cmp2.not.i.i, i1 true, i1 %cmp5.not.i.i
  br i1 %or.cond.i, label %for.inc.i55, label %if.then.i52

if.then.i52:                                      ; preds = %for.body.i50
  %sym.i = getelementptr inbounds %struct.sym_entry, ptr %49, i64 0, i32 4
  store i8 65, ptr %sym.i, align 4, !tbaa !11
  %51 = load ptr, ptr %arrayidx.i49, align 8, !tbaa !5
  %percpu_absolute.i = getelementptr inbounds %struct.sym_entry, ptr %51, i64 0, i32 3
  store i32 1, ptr %percpu_absolute.i, align 8, !tbaa !12
  %.pre.i51 = load i64, ptr getelementptr inbounds (%struct.addr_range, ptr @percpu_range, i64 0, i32 2), align 8, !tbaa !17
  %.pre = load i64, ptr getelementptr inbounds (%struct.addr_range, ptr @percpu_range, i64 0, i32 3), align 8
  br label %for.inc.i55

for.inc.i55:                                      ; preds = %if.then.i52, %for.body.i50
  %52 = phi i64 [ %.pre, %if.then.i52 ], [ %47, %for.body.i50 ]
  %53 = phi i64 [ %.pre.i51, %if.then.i52 ], [ %48, %for.body.i50 ]
  %indvars.iv.next.i53 = or i64 %indvars.iv.i48, 1
  %arrayidx.i49.1 = getelementptr inbounds ptr, ptr %33, i64 %indvars.iv.next.i53
  %54 = load ptr, ptr %arrayidx.i49.1, align 8, !tbaa !5
  %55 = load i64, ptr %54, align 8, !tbaa !9
  %cmp2.not.i.i.1 = icmp ult i64 %55, %53
  %cmp5.not.i.i.1 = icmp ugt i64 %55, %52
  %or.cond.i.1 = select i1 %cmp2.not.i.i.1, i1 true, i1 %cmp5.not.i.i.1
  br i1 %or.cond.i.1, label %for.inc.i55.1, label %if.then.i52.1

if.then.i52.1:                                    ; preds = %for.inc.i55
  %sym.i.1 = getelementptr inbounds %struct.sym_entry, ptr %54, i64 0, i32 4
  store i8 65, ptr %sym.i.1, align 4, !tbaa !11
  %56 = load ptr, ptr %arrayidx.i49.1, align 8, !tbaa !5
  %percpu_absolute.i.1 = getelementptr inbounds %struct.sym_entry, ptr %56, i64 0, i32 3
  store i32 1, ptr %percpu_absolute.i.1, align 8, !tbaa !12
  %.pre.i51.1 = load i64, ptr getelementptr inbounds (%struct.addr_range, ptr @percpu_range, i64 0, i32 2), align 8, !tbaa !17
  %.pre.1 = load i64, ptr getelementptr inbounds (%struct.addr_range, ptr @percpu_range, i64 0, i32 3), align 8
  br label %for.inc.i55.1

for.inc.i55.1:                                    ; preds = %if.then.i52.1, %for.inc.i55
  %57 = phi i64 [ %.pre.1, %if.then.i52.1 ], [ %52, %for.inc.i55 ]
  %58 = phi i64 [ %.pre.i51.1, %if.then.i52.1 ], [ %53, %for.inc.i55 ]
  %indvars.iv.next.i53.1 = add nuw nsw i64 %indvars.iv.i48, 2
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %if.end24.loopexit.unr-lcssa, label %for.body.i50

if.end24.loopexit.unr-lcssa:                      ; preds = %for.inc.i55.1, %for.body.lr.ph.i47
  %.unr = phi i64 [ %.pre114, %for.body.lr.ph.i47 ], [ %57, %for.inc.i55.1 ]
  %.unr145 = phi i64 [ %.pre15.i, %for.body.lr.ph.i47 ], [ %58, %for.inc.i55.1 ]
  %indvars.iv.i48.unr = phi i64 [ 0, %for.body.lr.ph.i47 ], [ %indvars.iv.next.i53.1, %for.inc.i55.1 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %if.end24, label %for.body.i50.epil

for.body.i50.epil:                                ; preds = %if.end24.loopexit.unr-lcssa
  %arrayidx.i49.epil = getelementptr inbounds ptr, ptr %33, i64 %indvars.iv.i48.unr
  %59 = load ptr, ptr %arrayidx.i49.epil, align 8, !tbaa !5
  %60 = load i64, ptr %59, align 8, !tbaa !9
  %cmp2.not.i.i.epil = icmp ult i64 %60, %.unr145
  %cmp5.not.i.i.epil = icmp ugt i64 %60, %.unr
  %or.cond.i.epil = select i1 %cmp2.not.i.i.epil, i1 true, i1 %cmp5.not.i.i.epil
  br i1 %or.cond.i.epil, label %if.end24, label %if.then.i52.epil

if.then.i52.epil:                                 ; preds = %for.body.i50.epil
  %sym.i.epil = getelementptr inbounds %struct.sym_entry, ptr %59, i64 0, i32 4
  store i8 65, ptr %sym.i.epil, align 4, !tbaa !11
  %61 = load ptr, ptr %arrayidx.i49.epil, align 8, !tbaa !5
  %percpu_absolute.i.epil = getelementptr inbounds %struct.sym_entry, ptr %61, i64 0, i32 3
  store i32 1, ptr %percpu_absolute.i.epil, align 8, !tbaa !12
  br label %if.end24

if.end24:                                         ; preds = %if.then.i52.epil, %for.body.i50.epil, %if.end24.loopexit.unr-lcssa, %shrink_table.exit
  call void @qsort(ptr noundef nonnull %33, i64 noundef %wide.trip.count.i46, i64 noundef 8, ptr noundef nonnull @compare_symbols) #22
  %.b36 = load i1, ptr @base_relative, align 4
  %62 = load i32, ptr @table_cnt, align 4, !tbaa !12
  br i1 %.b36, label %if.then26, label %if.end24.if.end27_crit_edge

if.end24.if.end27_crit_edge:                      ; preds = %if.end24
  %.pre.i68.pre = load ptr, ptr @table, align 8
  br label %if.end27

if.then26:                                        ; preds = %if.end24
  %cmp6.not.i = icmp eq i32 %62, 0
  %.pre.i6890 = load ptr, ptr @table, align 8
  br i1 %cmp6.not.i, label %insert_real_symbols_in_table.exit.i, label %for.body.lr.ph.i59

for.body.lr.ph.i59:                               ; preds = %if.then26
  %wide.trip.count.i58 = zext i32 %62 to i64
  br label %for.body.i66

for.cond.i:                                       ; preds = %for.body.i66
  %indvars.iv.next.i60 = add nuw nsw i64 %indvars.iv.i62, 1
  %exitcond.not.i61 = icmp eq i64 %indvars.iv.next.i60, %wide.trip.count.i58
  br i1 %exitcond.not.i61, label %if.end27, label %for.body.i66

for.body.i66:                                     ; preds = %for.cond.i, %for.body.lr.ph.i59
  %indvars.iv.i62 = phi i64 [ 0, %for.body.lr.ph.i59 ], [ %indvars.iv.next.i60, %for.cond.i ]
  %arrayidx.i63 = getelementptr inbounds ptr, ptr %.pre.i6890, i64 %indvars.iv.i62
  %63 = load ptr, ptr %arrayidx.i63, align 8, !tbaa !5
  %percpu_absolute.i.i64 = getelementptr inbounds %struct.sym_entry, ptr %63, i64 0, i32 3
  %64 = load i32, ptr %percpu_absolute.i.i64, align 8, !tbaa !12
  %tobool.not.i65 = icmp eq i32 %64, 0
  br i1 %tobool.not.i65, label %if.then.i67, label %for.cond.i

if.then.i67:                                      ; preds = %for.body.i66
  %65 = load i64, ptr %63, align 8, !tbaa !9
  store i64 %65, ptr @relative_base, align 8, !tbaa !9
  br label %if.end27

if.end27:                                         ; preds = %if.then.i67, %for.cond.i, %if.end24.if.end27_crit_edge
  %.pre.i68 = phi ptr [ %.pre.i68.pre, %if.end24.if.end27_crit_edge ], [ %.pre.i6890, %if.then.i67 ], [ %.pre.i6890, %for.cond.i ]
  %cmp6.not.i.i = icmp eq i32 %62, 0
  br i1 %cmp6.not.i.i, label %insert_real_symbols_in_table.exit.i, label %for.body.lr.ph.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end27
  %wide.trip.count.i.i = zext i32 %62 to i64
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %learn_symbol.exit.i.i, %for.body.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %for.body.lr.ph.i.i ], [ %indvars.iv.next.i.i, %learn_symbol.exit.i.i ]
  %arrayidx.i.i = getelementptr inbounds ptr, ptr %.pre.i68, i64 %indvars.iv.i.i
  %66 = load ptr, ptr %arrayidx.i.i, align 8, !tbaa !5
  %sym.i.i = getelementptr inbounds %struct.sym_entry, ptr %66, i64 0, i32 4
  %len.i.i = getelementptr inbounds %struct.sym_entry, ptr %66, i64 0, i32 1
  %67 = load i32, ptr %len.i.i, align 8, !tbaa !12
  %cmp12.i.i.i = icmp sgt i32 %67, 1
  br i1 %cmp12.i.i.i, label %for.body.preheader.i.i.i, label %learn_symbol.exit.i.i

for.body.preheader.i.i.i:                         ; preds = %for.body.i.i
  %sub.i.i.i69 = add nsw i32 %67, -1
  %wide.trip.count.i.i.i = zext i32 %sub.i.i.i69 to i64
  %.pre.i.i.i = load i8, ptr %sym.i.i, align 1, !tbaa !11
  %xtraiter146 = and i64 %wide.trip.count.i.i.i, 1
  %68 = icmp eq i32 %sub.i.i.i69, 1
  br i1 %68, label %learn_symbol.exit.i.i.loopexit.unr-lcssa, label %for.body.preheader.i.i.i.new

for.body.preheader.i.i.i.new:                     ; preds = %for.body.preheader.i.i.i
  %unroll_iter149 = and i64 %wide.trip.count.i.i.i, 4294967294
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i, %for.body.preheader.i.i.i.new
  %69 = phi i8 [ %.pre.i.i.i, %for.body.preheader.i.i.i.new ], [ %72, %for.body.i.i.i ]
  %indvars.iv.i.i.i = phi i64 [ 0, %for.body.preheader.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %for.body.i.i.i ]
  %niter150 = phi i64 [ 0, %for.body.preheader.i.i.i.new ], [ %niter150.next.1, %for.body.i.i.i ]
  %conv.i.i.i = zext i8 %69 to i64
  %indvars.iv.next.i.i.i = or i64 %indvars.iv.i.i.i, 1
  %arrayidx2.i.i.i = getelementptr inbounds i8, ptr %sym.i.i, i64 %indvars.iv.next.i.i.i
  %70 = load i8, ptr %arrayidx2.i.i.i, align 1, !tbaa !11
  %conv3.i.i.i = zext i8 %70 to i64
  %shl.i.i.i = shl nuw nsw i64 %conv3.i.i.i, 8
  %add4.i.i.i = or i64 %shl.i.i.i, %conv.i.i.i
  %arrayidx6.i.i.i = getelementptr inbounds [65536 x i32], ptr @token_profit, i64 0, i64 %add4.i.i.i
  %71 = load i32, ptr %arrayidx6.i.i.i, align 4, !tbaa !12
  %inc.i.i.i = add nsw i32 %71, 1
  store i32 %inc.i.i.i, ptr %arrayidx6.i.i.i, align 4, !tbaa !12
  %conv.i.i.i.1 = zext i8 %70 to i64
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2
  %arrayidx2.i.i.i.1 = getelementptr inbounds i8, ptr %sym.i.i, i64 %indvars.iv.next.i.i.i.1
  %72 = load i8, ptr %arrayidx2.i.i.i.1, align 1, !tbaa !11
  %conv3.i.i.i.1 = zext i8 %72 to i64
  %shl.i.i.i.1 = shl nuw nsw i64 %conv3.i.i.i.1, 8
  %add4.i.i.i.1 = or i64 %shl.i.i.i.1, %conv.i.i.i.1
  %arrayidx6.i.i.i.1 = getelementptr inbounds [65536 x i32], ptr @token_profit, i64 0, i64 %add4.i.i.i.1
  %73 = load i32, ptr %arrayidx6.i.i.i.1, align 4, !tbaa !12
  %inc.i.i.i.1 = add nsw i32 %73, 1
  store i32 %inc.i.i.i.1, ptr %arrayidx6.i.i.i.1, align 4, !tbaa !12
  %niter150.next.1 = add i64 %niter150, 2
  %niter150.ncmp.1 = icmp eq i64 %niter150.next.1, %unroll_iter149
  br i1 %niter150.ncmp.1, label %learn_symbol.exit.i.i.loopexit.unr-lcssa, label %for.body.i.i.i

learn_symbol.exit.i.i.loopexit.unr-lcssa:         ; preds = %for.body.i.i.i, %for.body.preheader.i.i.i
  %.unr147 = phi i8 [ %.pre.i.i.i, %for.body.preheader.i.i.i ], [ %72, %for.body.i.i.i ]
  %indvars.iv.i.i.i.unr = phi i64 [ 0, %for.body.preheader.i.i.i ], [ %indvars.iv.next.i.i.i.1, %for.body.i.i.i ]
  %lcmp.mod148.not = icmp eq i64 %xtraiter146, 0
  br i1 %lcmp.mod148.not, label %learn_symbol.exit.i.i, label %for.body.i.i.i.epil

for.body.i.i.i.epil:                              ; preds = %learn_symbol.exit.i.i.loopexit.unr-lcssa
  %conv.i.i.i.epil = zext i8 %.unr147 to i64
  %indvars.iv.next.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.unr, 1
  %arrayidx2.i.i.i.epil = getelementptr inbounds i8, ptr %sym.i.i, i64 %indvars.iv.next.i.i.i.epil
  %74 = load i8, ptr %arrayidx2.i.i.i.epil, align 1, !tbaa !11
  %conv3.i.i.i.epil = zext i8 %74 to i64
  %shl.i.i.i.epil = shl nuw nsw i64 %conv3.i.i.i.epil, 8
  %add4.i.i.i.epil = or i64 %shl.i.i.i.epil, %conv.i.i.i.epil
  %arrayidx6.i.i.i.epil = getelementptr inbounds [65536 x i32], ptr @token_profit, i64 0, i64 %add4.i.i.i.epil
  %75 = load i32, ptr %arrayidx6.i.i.i.epil, align 4, !tbaa !12
  %inc.i.i.i.epil = add nsw i32 %75, 1
  store i32 %inc.i.i.i.epil, ptr %arrayidx6.i.i.i.epil, align 4, !tbaa !12
  br label %learn_symbol.exit.i.i

learn_symbol.exit.i.i:                            ; preds = %for.body.i.i.i.epil, %learn_symbol.exit.i.i.loopexit.unr-lcssa, %for.body.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %for.cond1.preheader.i.i, label %for.body.i.i

for.cond1.preheader.i.i:                          ; preds = %for.inc14.i.i, %learn_symbol.exit.i.i
  %indvars.iv30.i.i = phi i64 [ %indvars.iv.next31.i.i, %for.inc14.i.i ], [ 0, %learn_symbol.exit.i.i ]
  %arrayidx.i2.i = getelementptr inbounds ptr, ptr %.pre.i68, i64 %indvars.iv30.i.i
  %76 = load ptr, ptr %arrayidx.i2.i, align 8, !tbaa !5
  %len24.i.i = getelementptr inbounds %struct.sym_entry, ptr %76, i64 0, i32 1
  %77 = load i32, ptr %len24.i.i, align 8, !tbaa !12
  %cmp225.not.i.i = icmp eq i32 %77, 0
  br i1 %cmp225.not.i.i, label %for.inc14.i.i, label %for.body3.i.i

for.body3.i.i:                                    ; preds = %for.body3.i.i, %for.cond1.preheader.i.i
  %indvars.iv.i3.i = phi i64 [ %indvars.iv.next.i4.i, %for.body3.i.i ], [ 0, %for.cond1.preheader.i.i ]
  %78 = phi ptr [ %80, %for.body3.i.i ], [ %76, %for.cond1.preheader.i.i ]
  %arrayidx7.i.i = getelementptr inbounds %struct.sym_entry, ptr %78, i64 0, i32 4, i64 %indvars.iv.i3.i
  %79 = load i8, ptr %arrayidx7.i.i, align 1, !tbaa !11
  %idxprom9.i.i = zext i8 %79 to i64
  %arrayidx10.i.i = getelementptr inbounds [256 x [2 x i8]], ptr @best_table, i64 0, i64 %idxprom9.i.i
  store i8 %79, ptr %arrayidx10.i.i, align 2, !tbaa !11
  %arrayidx13.i.i = getelementptr inbounds [256 x i8], ptr @best_table_len, i64 0, i64 %idxprom9.i.i
  store i8 1, ptr %arrayidx13.i.i, align 1, !tbaa !11
  %indvars.iv.next.i4.i = add nuw nsw i64 %indvars.iv.i3.i, 1
  %80 = load ptr, ptr %arrayidx.i2.i, align 8, !tbaa !5
  %len.i5.i = getelementptr inbounds %struct.sym_entry, ptr %80, i64 0, i32 1
  %81 = load i32, ptr %len.i5.i, align 8, !tbaa !12
  %82 = zext i32 %81 to i64
  %cmp2.i.i = icmp ult i64 %indvars.iv.next.i4.i, %82
  br i1 %cmp2.i.i, label %for.body3.i.i, label %for.inc14.i.i

for.inc14.i.i:                                    ; preds = %for.body3.i.i, %for.cond1.preheader.i.i
  %indvars.iv.next31.i.i = add nuw nsw i64 %indvars.iv30.i.i, 1
  %exitcond.not.i6.i = icmp eq i64 %indvars.iv.next31.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i6.i, label %insert_real_symbols_in_table.exit.i, label %for.cond1.preheader.i.i

insert_real_symbols_in_table.exit.i:              ; preds = %for.inc14.i.i, %if.end27, %if.then26
  %.pre.i6892 = phi ptr [ %.pre.i68, %if.end27 ], [ %.pre.i6890, %if.then26 ], [ %.pre.i68, %for.inc14.i.i ]
  %cmp6.not.i.i91 = phi i1 [ true, %if.end27 ], [ true, %if.then26 ], [ false, %for.inc14.i.i ]
  %wide.trip.count.i.i7.pre-phi.i = phi i64 [ 0, %if.end27 ], [ 0, %if.then26 ], [ %wide.trip.count.i.i, %for.inc14.i.i ]
  br label %for.body.i10.i

for.body.i10.i:                                   ; preds = %for.inc.i.i, %insert_real_symbols_in_table.exit.i
  %indvars.iv.i8.i = phi i64 [ 255, %insert_real_symbols_in_table.exit.i ], [ %indvars.iv.next.i16.i, %for.inc.i.i ]
  %arrayidx.i9.i = getelementptr inbounds [256 x i8], ptr @best_table_len, i64 0, i64 %indvars.iv.i8.i
  %83 = load i8, ptr %arrayidx.i9.i, align 1, !tbaa !11
  %tobool.not.i.i70 = icmp eq i8 %83, 0
  br i1 %tobool.not.i.i70, label %for.body.i.i14.i, label %for.inc.i.i

for.body.i.i14.i:                                 ; preds = %for.body.i.i14.i, %for.body.i10.i
  %indvars.iv.i.i11.i = phi i64 [ %indvars.iv.next.i.i12.i.1, %for.body.i.i14.i ], [ 0, %for.body.i10.i ]
  %bestprofit.011.i.i.i = phi i32 [ %89, %for.body.i.i14.i ], [ -10000, %for.body.i10.i ]
  %best.010.i.i.i = phi i32 [ %spec.select.i.i.i.1, %for.body.i.i14.i ], [ 0, %for.body.i10.i ]
  %arrayidx.i.i.i71 = getelementptr inbounds [65536 x i32], ptr @token_profit, i64 0, i64 %indvars.iv.i.i11.i
  %84 = load i32, ptr %arrayidx.i.i.i71, align 8, !tbaa !12
  %cmp1.i.i.i = icmp sgt i32 %84, %bestprofit.011.i.i.i
  %85 = trunc i64 %indvars.iv.i.i11.i to i32
  %spec.select.i.i.i = select i1 %cmp1.i.i.i, i32 %85, i32 %best.010.i.i.i
  %86 = call i32 @llvm.smax.i32(i32 %84, i32 %bestprofit.011.i.i.i) #22
  %indvars.iv.next.i.i12.i = or i64 %indvars.iv.i.i11.i, 1
  %arrayidx.i.i.i71.1 = getelementptr inbounds [65536 x i32], ptr @token_profit, i64 0, i64 %indvars.iv.next.i.i12.i
  %87 = load i32, ptr %arrayidx.i.i.i71.1, align 4, !tbaa !12
  %cmp1.i.i.i.1 = icmp sgt i32 %87, %86
  %88 = trunc i64 %indvars.iv.next.i.i12.i to i32
  %spec.select.i.i.i.1 = select i1 %cmp1.i.i.i.1, i32 %88, i32 %spec.select.i.i.i
  %89 = call i32 @llvm.smax.i32(i32 %87, i32 %86) #22
  %indvars.iv.next.i.i12.i.1 = add nuw nsw i64 %indvars.iv.i.i11.i, 2
  %exitcond.not.i.i13.i.1 = icmp eq i64 %indvars.iv.next.i.i12.i.1, 65536
  br i1 %exitcond.not.i.i13.i.1, label %find_best_token.exit.i.i, label %for.body.i.i14.i

find_best_token.exit.i.i:                         ; preds = %for.body.i.i14.i
  %idxprom1.i.i = sext i32 %spec.select.i.i.i.1 to i64
  %arrayidx2.i.i = getelementptr inbounds [65536 x i32], ptr @token_profit, i64 0, i64 %idxprom1.i.i
  %90 = load i32, ptr %arrayidx2.i.i, align 4, !tbaa !12
  %cmp3.i.i72 = icmp eq i32 %90, 0
  br i1 %cmp3.i.i72, label %optimize_token_table.exit, label %if.end.i.i74

if.end.i.i74:                                     ; preds = %find_best_token.exit.i.i
  store i8 2, ptr %arrayidx.i9.i, align 1, !tbaa !11
  %conv.i.i73 = trunc i32 %spec.select.i.i.i.1 to i8
  %arrayidx8.i.i = getelementptr inbounds [256 x [2 x i8]], ptr @best_table, i64 0, i64 %indvars.iv.i8.i
  store i8 %conv.i.i73, ptr %arrayidx8.i.i, align 2, !tbaa !11
  %91 = lshr i32 %spec.select.i.i.i.1, 8
  %conv11.i.i = trunc i32 %91 to i8
  %arrayidx14.i.i = getelementptr inbounds [256 x [2 x i8]], ptr @best_table, i64 0, i64 %indvars.iv.i8.i, i64 1
  store i8 %conv11.i.i, ptr %arrayidx14.i.i, align 1, !tbaa !11
  br i1 %cmp6.not.i.i91, label %for.inc.i.i, label %for.body.lr.ph.i.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.end.i.i74
  %arrayidx8.i.i.i.i = getelementptr inbounds i8, ptr %arrayidx8.i.i, i64 1
  %conv.i.i15.i = trunc i64 %indvars.iv.i8.i to i8
  br label %for.body.i29.i.i

for.body.i29.i.i:                                 ; preds = %for.inc.i.i.i76, %for.body.lr.ph.i.i.i
  %indvars.iv.i27.i.i = phi i64 [ 0, %for.body.lr.ph.i.i.i ], [ %indvars.iv.next.i30.i.i, %for.inc.i.i.i76 ]
  %arrayidx.i28.i.i = getelementptr inbounds ptr, ptr %.pre.i6892, i64 %indvars.iv.i27.i.i
  %92 = load ptr, ptr %arrayidx.i28.i.i, align 8, !tbaa !5
  %len1.i.i.i = getelementptr inbounds %struct.sym_entry, ptr %92, i64 0, i32 1
  %93 = load i32, ptr %len1.i.i.i, align 8, !tbaa !12
  %sym.i.i.i = getelementptr inbounds %struct.sym_entry, ptr %92, i64 0, i32 4
  %cmp23.i.i.i.i = icmp sgt i32 %93, 1
  br i1 %cmp23.i.i.i.i, label %for.body.lr.ph.i.i.i.i, label %for.inc.i.i.i76

for.body.lr.ph.i.i.i.i:                           ; preds = %for.body.i29.i.i
  %sub.i.i.i.i = add nsw i32 %93, -1
  %94 = load i8, ptr %arrayidx8.i.i, align 2, !tbaa !11
  %wide.trip.count.i.i.i.i = zext i32 %sub.i.i.i.i to i64
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i, %for.body.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %for.body.lr.ph.i.i.i.i ], [ %96, %for.inc.i.i.i.i ]
  %arrayidx.i.i.i.i = getelementptr inbounds i8, ptr %sym.i.i.i, i64 %indvars.iv.i.i.i.i
  %95 = load i8, ptr %arrayidx.i.i.i.i, align 1, !tbaa !11
  %cmp3.i.i.i.i = icmp eq i8 %95, %94
  %96 = add nuw nsw i64 %indvars.iv.i.i.i.i, 1
  br i1 %cmp3.i.i.i.i, label %land.lhs.true.i.i.i.i, label %for.inc.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %for.body.i.i.i.i
  %arrayidx6.i.i.i.i = getelementptr inbounds i8, ptr %sym.i.i.i, i64 %96
  %97 = load i8, ptr %arrayidx6.i.i.i.i, align 1, !tbaa !11
  %98 = load i8, ptr %arrayidx8.i.i.i.i, align 1, !tbaa !11
  %cmp10.i.i.i.i = icmp eq i8 %97, %98
  br i1 %cmp10.i.i.i.i, label %for.body.preheader.i.i.i.i, label %for.inc.i.i.i.i

for.inc.i.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.i, %for.body.i.i.i.i
  %exitcond.not.i.i.i.i = icmp eq i64 %96, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %for.inc.i.i.i76, label %for.body.i.i.i.i

for.body.preheader.i.i.i.i:                       ; preds = %land.lhs.true.i.i.i.i
  %.pre.i.i.i.i = load i8, ptr %sym.i.i.i, align 1, !tbaa !11
  %xtraiter151 = and i64 %wide.trip.count.i.i.i.i, 1
  %99 = icmp eq i32 %sub.i.i.i.i, 1
  br i1 %99, label %forget_symbol.exit.i.i.i.unr-lcssa, label %for.body.preheader.i.i.i.i.new

for.body.preheader.i.i.i.i.new:                   ; preds = %for.body.preheader.i.i.i.i
  %unroll_iter154 = and i64 %wide.trip.count.i.i.i.i, 4294967294
  br label %for.body.i53.i.i.i

for.body.i53.i.i.i:                               ; preds = %for.body.i53.i.i.i, %for.body.preheader.i.i.i.i.new
  %100 = phi i8 [ %.pre.i.i.i.i, %for.body.preheader.i.i.i.i.new ], [ %103, %for.body.i53.i.i.i ]
  %indvars.iv.i50.i.i.i = phi i64 [ 0, %for.body.preheader.i.i.i.i.new ], [ %indvars.iv.next.i.i.i.i.1, %for.body.i53.i.i.i ]
  %niter155 = phi i64 [ 0, %for.body.preheader.i.i.i.i.new ], [ %niter155.next.1, %for.body.i53.i.i.i ]
  %conv.i.i.i.i = zext i8 %100 to i64
  %indvars.iv.next.i.i.i.i = or i64 %indvars.iv.i50.i.i.i, 1
  %arrayidx2.i.i.i.i = getelementptr inbounds i8, ptr %sym.i.i.i, i64 %indvars.iv.next.i.i.i.i
  %101 = load i8, ptr %arrayidx2.i.i.i.i, align 1, !tbaa !11
  %conv3.i.i.i.i = zext i8 %101 to i64
  %shl.i.i.i.i = shl nuw nsw i64 %conv3.i.i.i.i, 8
  %add4.i.i.i.i = or i64 %shl.i.i.i.i, %conv.i.i.i.i
  %arrayidx6.i51.i.i.i = getelementptr inbounds [65536 x i32], ptr @token_profit, i64 0, i64 %add4.i.i.i.i
  %102 = load i32, ptr %arrayidx6.i51.i.i.i, align 4, !tbaa !12
  %dec.i.i.i.i = add nsw i32 %102, -1
  store i32 %dec.i.i.i.i, ptr %arrayidx6.i51.i.i.i, align 4, !tbaa !12
  %conv.i.i.i.i.1 = zext i8 %101 to i64
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i50.i.i.i, 2
  %arrayidx2.i.i.i.i.1 = getelementptr inbounds i8, ptr %sym.i.i.i, i64 %indvars.iv.next.i.i.i.i.1
  %103 = load i8, ptr %arrayidx2.i.i.i.i.1, align 1, !tbaa !11
  %conv3.i.i.i.i.1 = zext i8 %103 to i64
  %shl.i.i.i.i.1 = shl nuw nsw i64 %conv3.i.i.i.i.1, 8
  %add4.i.i.i.i.1 = or i64 %shl.i.i.i.i.1, %conv.i.i.i.i.1
  %arrayidx6.i51.i.i.i.1 = getelementptr inbounds [65536 x i32], ptr @token_profit, i64 0, i64 %add4.i.i.i.i.1
  %104 = load i32, ptr %arrayidx6.i51.i.i.i.1, align 4, !tbaa !12
  %dec.i.i.i.i.1 = add nsw i32 %104, -1
  store i32 %dec.i.i.i.i.1, ptr %arrayidx6.i51.i.i.i.1, align 4, !tbaa !12
  %niter155.next.1 = add i64 %niter155, 2
  %niter155.ncmp.1 = icmp eq i64 %niter155.next.1, %unroll_iter154
  br i1 %niter155.ncmp.1, label %forget_symbol.exit.i.i.i.unr-lcssa, label %for.body.i53.i.i.i

forget_symbol.exit.i.i.i.unr-lcssa:               ; preds = %for.body.i53.i.i.i, %for.body.preheader.i.i.i.i
  %.unr152 = phi i8 [ %.pre.i.i.i.i, %for.body.preheader.i.i.i.i ], [ %103, %for.body.i53.i.i.i ]
  %indvars.iv.i50.i.i.i.unr = phi i64 [ 0, %for.body.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.1, %for.body.i53.i.i.i ]
  %lcmp.mod153.not = icmp eq i64 %xtraiter151, 0
  br i1 %lcmp.mod153.not, label %forget_symbol.exit.i.i.i, label %for.body.i53.i.i.i.epil

for.body.i53.i.i.i.epil:                          ; preds = %forget_symbol.exit.i.i.i.unr-lcssa
  %conv.i.i.i.i.epil = zext i8 %.unr152 to i64
  %indvars.iv.next.i.i.i.i.epil = add nuw nsw i64 %indvars.iv.i50.i.i.i.unr, 1
  %arrayidx2.i.i.i.i.epil = getelementptr inbounds i8, ptr %sym.i.i.i, i64 %indvars.iv.next.i.i.i.i.epil
  %105 = load i8, ptr %arrayidx2.i.i.i.i.epil, align 1, !tbaa !11
  %conv3.i.i.i.i.epil = zext i8 %105 to i64
  %shl.i.i.i.i.epil = shl nuw nsw i64 %conv3.i.i.i.i.epil, 8
  %add4.i.i.i.i.epil = or i64 %shl.i.i.i.i.epil, %conv.i.i.i.i.epil
  %arrayidx6.i51.i.i.i.epil = getelementptr inbounds [65536 x i32], ptr @token_profit, i64 0, i64 %add4.i.i.i.i.epil
  %106 = load i32, ptr %arrayidx6.i51.i.i.i.epil, align 4, !tbaa !12
  %dec.i.i.i.i.epil = add nsw i32 %106, -1
  store i32 %dec.i.i.i.i.epil, ptr %arrayidx6.i51.i.i.i.epil, align 4, !tbaa !12
  br label %forget_symbol.exit.i.i.i

forget_symbol.exit.i.i.i:                         ; preds = %for.body.i53.i.i.i.epil, %forget_symbol.exit.i.i.i.unr-lcssa
  %idxprom.le.i.i.i.i = and i64 %indvars.iv.i.i.i.i, 4294967295
  %arrayidx.le.i.i.i.i = getelementptr inbounds i8, ptr %sym.i.i.i, i64 %idxprom.le.i.i.i.i
  store i8 %conv.i.i15.i, ptr %arrayidx.le.i.i.i.i, align 1, !tbaa !11
  %incdec.ptr99.i.i.i = getelementptr inbounds i8, ptr %arrayidx.le.i.i.i.i, i64 1
  %sub.ptr.lhs.cast100.i.i.i = ptrtoint ptr %incdec.ptr99.i.i.i to i64
  %sub.ptr.rhs.cast101.i.i.i = ptrtoint ptr %sym.i.i.i to i64
  %sub.ptr.sub.neg102.i.i.i = sub i64 %sub.ptr.rhs.cast101.i.i.i, %sub.ptr.lhs.cast100.i.i.i
  %107 = trunc i64 %sub.ptr.sub.neg102.i.i.i to i32
  %conv9103.i.i.i = add i32 %93, %107
  %add.ptr104.i.i.i = getelementptr inbounds i8, ptr %arrayidx.le.i.i.i.i, i64 2
  %conv10105.i.i.i = zext i32 %conv9103.i.i.i to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %incdec.ptr99.i.i.i, ptr nonnull align 1 %add.ptr104.i.i.i, i64 %conv10105.i.i.i, i1 false) #22
  %cmp23.i54107.i.i.i = icmp sgt i32 %conv9103.i.i.i, 1
  br i1 %cmp23.i54107.i.i.i, label %for.body.lr.ph.i58.i.i.i, label %do.end.i.i.i

for.body.lr.ph.i58.i.i.i:                         ; preds = %find_token.exit72.i.i.i, %forget_symbol.exit.i.i.i
  %dec111.i.i.i = phi i32 [ %dec.i.i.i, %find_token.exit72.i.i.i ], [ %sub.i.i.i.i, %forget_symbol.exit.i.i.i ]
  %conv9110.i.i.i = phi i32 [ %conv9.i.i.i, %find_token.exit72.i.i.i ], [ %conv9103.i.i.i, %forget_symbol.exit.i.i.i ]
  %incdec.ptr109.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %find_token.exit72.i.i.i ], [ %incdec.ptr99.i.i.i, %forget_symbol.exit.i.i.i ]
  %len.0108.i.i.i = phi i32 [ %dec111.i.i.i, %find_token.exit72.i.i.i ], [ %93, %forget_symbol.exit.i.i.i ]
  %sub.i55.i.i.i = add nsw i32 %conv9110.i.i.i, -1
  %108 = load i8, ptr %arrayidx8.i.i, align 2, !tbaa !11
  %wide.trip.count.i57.i.i.i = zext i32 %sub.i55.i.i.i to i64
  br label %for.body.i62.i.i.i

for.body.i62.i.i.i:                               ; preds = %for.inc.i67.i.i.i, %for.body.lr.ph.i58.i.i.i
  %indvars.iv.i59.i.i.i = phi i64 [ 0, %for.body.lr.ph.i58.i.i.i ], [ %110, %for.inc.i67.i.i.i ]
  %arrayidx.i60.i.i.i = getelementptr inbounds i8, ptr %incdec.ptr109.i.i.i, i64 %indvars.iv.i59.i.i.i
  %109 = load i8, ptr %arrayidx.i60.i.i.i, align 1, !tbaa !11
  %cmp3.i61.i.i.i = icmp eq i8 %109, %108
  %110 = add nuw nsw i64 %indvars.iv.i59.i.i.i, 1
  br i1 %cmp3.i61.i.i.i, label %land.lhs.true.i65.i.i.i, label %for.inc.i67.i.i.i

land.lhs.true.i65.i.i.i:                          ; preds = %for.body.i62.i.i.i
  %arrayidx6.i63.i.i.i = getelementptr inbounds i8, ptr %incdec.ptr109.i.i.i, i64 %110
  %111 = load i8, ptr %arrayidx6.i63.i.i.i, align 1, !tbaa !11
  %112 = load i8, ptr %arrayidx8.i.i.i.i, align 1, !tbaa !11
  %cmp10.i64.i.i.i = icmp eq i8 %111, %112
  br i1 %cmp10.i64.i.i.i, label %find_token.exit72.i.i.i, label %for.inc.i67.i.i.i

for.inc.i67.i.i.i:                                ; preds = %land.lhs.true.i65.i.i.i, %for.body.i62.i.i.i
  %exitcond.not.i66.i.i.i = icmp eq i64 %110, %wide.trip.count.i57.i.i.i
  br i1 %exitcond.not.i66.i.i.i, label %do.end.i.i.i, label %for.body.i62.i.i.i

find_token.exit72.i.i.i:                          ; preds = %land.lhs.true.i65.i.i.i
  %idxprom.le.i68.i.i.i = and i64 %indvars.iv.i59.i.i.i, 4294967295
  %arrayidx.le.i69.i.i.i = getelementptr inbounds i8, ptr %incdec.ptr109.i.i.i, i64 %idxprom.le.i68.i.i.i
  store i8 %conv.i.i15.i, ptr %arrayidx.le.i69.i.i.i, align 1, !tbaa !11
  %incdec.ptr.i.i.i = getelementptr inbounds i8, ptr %arrayidx.le.i69.i.i.i, i64 1
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %incdec.ptr.i.i.i to i64
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %incdec.ptr109.i.i.i to i64
  %sub.ptr.sub.neg.i.i.i = sub i64 %sub.ptr.rhs.cast.i.i.i, %sub.ptr.lhs.cast.i.i.i
  %113 = trunc i64 %sub.ptr.sub.neg.i.i.i to i32
  %conv9.i.i.i = add i32 %conv9110.i.i.i, %113
  %add.ptr.i.i.i75 = getelementptr inbounds i8, ptr %arrayidx.le.i69.i.i.i, i64 2
  %conv10.i.i.i = zext i32 %conv9.i.i.i to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %incdec.ptr.i.i.i, ptr nonnull align 1 %add.ptr.i.i.i75, i64 %conv10.i.i.i, i1 false) #22
  %dec.i.i.i = add i32 %dec111.i.i.i, -1
  %cmp23.i54.i.i.i = icmp sgt i32 %conv9.i.i.i, 1
  br i1 %cmp23.i54.i.i.i, label %for.body.lr.ph.i58.i.i.i, label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %find_token.exit72.i.i.i, %for.inc.i67.i.i.i, %forget_symbol.exit.i.i.i
  %len.098.i.i.i = phi i32 [ %93, %forget_symbol.exit.i.i.i ], [ %len.0108.i.i.i, %for.inc.i67.i.i.i ], [ %dec111.i.i.i, %find_token.exit72.i.i.i ]
  %dec96.i.i.i = phi i32 [ %sub.i.i.i.i, %forget_symbol.exit.i.i.i ], [ %dec111.i.i.i, %for.inc.i67.i.i.i ], [ %dec.i.i.i, %find_token.exit72.i.i.i ]
  %114 = load ptr, ptr %arrayidx.i28.i.i, align 8, !tbaa !5
  %len19.i.i.i = getelementptr inbounds %struct.sym_entry, ptr %114, i64 0, i32 1
  store i32 %dec96.i.i.i, ptr %len19.i.i.i, align 8, !tbaa !12
  %sym22.i.i.i = getelementptr inbounds %struct.sym_entry, ptr %114, i64 0, i32 4
  %cmp12.i.i.i.i = icmp sgt i32 %dec96.i.i.i, 1
  br i1 %cmp12.i.i.i.i, label %for.body.preheader.i76.i.i.i, label %for.inc.i.i.i76

for.body.preheader.i76.i.i.i:                     ; preds = %do.end.i.i.i
  %sub.i73.i.i.i = add i32 %len.098.i.i.i, -2
  %wide.trip.count.i74.i.i.i = zext i32 %sub.i73.i.i.i to i64
  %.pre.i75.i.i.i = load i8, ptr %sym22.i.i.i, align 1, !tbaa !11
  %xtraiter156 = and i64 %wide.trip.count.i74.i.i.i, 1
  %115 = icmp eq i32 %sub.i73.i.i.i, 1
  br i1 %115, label %for.inc.i.i.i76.loopexit.unr-lcssa, label %for.body.preheader.i76.i.i.i.new

for.body.preheader.i76.i.i.i.new:                 ; preds = %for.body.preheader.i76.i.i.i
  %unroll_iter159 = and i64 %wide.trip.count.i74.i.i.i, 4294967294
  br label %for.body.i86.i.i.i

for.body.i86.i.i.i:                               ; preds = %for.body.i86.i.i.i, %for.body.preheader.i76.i.i.i.new
  %116 = phi i8 [ %.pre.i75.i.i.i, %for.body.preheader.i76.i.i.i.new ], [ %119, %for.body.i86.i.i.i ]
  %indvars.iv.i77.i.i.i = phi i64 [ 0, %for.body.preheader.i76.i.i.i.new ], [ %indvars.iv.next.i79.i.i.i.1, %for.body.i86.i.i.i ]
  %niter160 = phi i64 [ 0, %for.body.preheader.i76.i.i.i.new ], [ %niter160.next.1, %for.body.i86.i.i.i ]
  %conv.i78.i.i.i = zext i8 %116 to i64
  %indvars.iv.next.i79.i.i.i = or i64 %indvars.iv.i77.i.i.i, 1
  %arrayidx2.i80.i.i.i = getelementptr inbounds i8, ptr %sym22.i.i.i, i64 %indvars.iv.next.i79.i.i.i
  %117 = load i8, ptr %arrayidx2.i80.i.i.i, align 1, !tbaa !11
  %conv3.i81.i.i.i = zext i8 %117 to i64
  %shl.i82.i.i.i = shl nuw nsw i64 %conv3.i81.i.i.i, 8
  %add4.i83.i.i.i = or i64 %shl.i82.i.i.i, %conv.i78.i.i.i
  %arrayidx6.i84.i.i.i = getelementptr inbounds [65536 x i32], ptr @token_profit, i64 0, i64 %add4.i83.i.i.i
  %118 = load i32, ptr %arrayidx6.i84.i.i.i, align 4, !tbaa !12
  %inc.i.i.i.i = add nsw i32 %118, 1
  store i32 %inc.i.i.i.i, ptr %arrayidx6.i84.i.i.i, align 4, !tbaa !12
  %conv.i78.i.i.i.1 = zext i8 %117 to i64
  %indvars.iv.next.i79.i.i.i.1 = add nuw nsw i64 %indvars.iv.i77.i.i.i, 2
  %arrayidx2.i80.i.i.i.1 = getelementptr inbounds i8, ptr %sym22.i.i.i, i64 %indvars.iv.next.i79.i.i.i.1
  %119 = load i8, ptr %arrayidx2.i80.i.i.i.1, align 1, !tbaa !11
  %conv3.i81.i.i.i.1 = zext i8 %119 to i64
  %shl.i82.i.i.i.1 = shl nuw nsw i64 %conv3.i81.i.i.i.1, 8
  %add4.i83.i.i.i.1 = or i64 %shl.i82.i.i.i.1, %conv.i78.i.i.i.1
  %arrayidx6.i84.i.i.i.1 = getelementptr inbounds [65536 x i32], ptr @token_profit, i64 0, i64 %add4.i83.i.i.i.1
  %120 = load i32, ptr %arrayidx6.i84.i.i.i.1, align 4, !tbaa !12
  %inc.i.i.i.i.1 = add nsw i32 %120, 1
  store i32 %inc.i.i.i.i.1, ptr %arrayidx6.i84.i.i.i.1, align 4, !tbaa !12
  %niter160.next.1 = add i64 %niter160, 2
  %niter160.ncmp.1 = icmp eq i64 %niter160.next.1, %unroll_iter159
  br i1 %niter160.ncmp.1, label %for.inc.i.i.i76.loopexit.unr-lcssa, label %for.body.i86.i.i.i

for.inc.i.i.i76.loopexit.unr-lcssa:               ; preds = %for.body.i86.i.i.i, %for.body.preheader.i76.i.i.i
  %.unr157 = phi i8 [ %.pre.i75.i.i.i, %for.body.preheader.i76.i.i.i ], [ %119, %for.body.i86.i.i.i ]
  %indvars.iv.i77.i.i.i.unr = phi i64 [ 0, %for.body.preheader.i76.i.i.i ], [ %indvars.iv.next.i79.i.i.i.1, %for.body.i86.i.i.i ]
  %lcmp.mod158.not = icmp eq i64 %xtraiter156, 0
  br i1 %lcmp.mod158.not, label %for.inc.i.i.i76, label %for.body.i86.i.i.i.epil

for.body.i86.i.i.i.epil:                          ; preds = %for.inc.i.i.i76.loopexit.unr-lcssa
  %conv.i78.i.i.i.epil = zext i8 %.unr157 to i64
  %indvars.iv.next.i79.i.i.i.epil = add nuw nsw i64 %indvars.iv.i77.i.i.i.unr, 1
  %arrayidx2.i80.i.i.i.epil = getelementptr inbounds i8, ptr %sym22.i.i.i, i64 %indvars.iv.next.i79.i.i.i.epil
  %121 = load i8, ptr %arrayidx2.i80.i.i.i.epil, align 1, !tbaa !11
  %conv3.i81.i.i.i.epil = zext i8 %121 to i64
  %shl.i82.i.i.i.epil = shl nuw nsw i64 %conv3.i81.i.i.i.epil, 8
  %add4.i83.i.i.i.epil = or i64 %shl.i82.i.i.i.epil, %conv.i78.i.i.i.epil
  %arrayidx6.i84.i.i.i.epil = getelementptr inbounds [65536 x i32], ptr @token_profit, i64 0, i64 %add4.i83.i.i.i.epil
  %122 = load i32, ptr %arrayidx6.i84.i.i.i.epil, align 4, !tbaa !12
  %inc.i.i.i.i.epil = add nsw i32 %122, 1
  store i32 %inc.i.i.i.i.epil, ptr %arrayidx6.i84.i.i.i.epil, align 4, !tbaa !12
  br label %for.inc.i.i.i76

for.inc.i.i.i76:                                  ; preds = %for.body.i86.i.i.i.epil, %for.inc.i.i.i76.loopexit.unr-lcssa, %do.end.i.i.i, %for.inc.i.i.i.i, %for.body.i29.i.i
  %indvars.iv.next.i30.i.i = add nuw nsw i64 %indvars.iv.i27.i.i, 1
  %exitcond.not.i31.i.i = icmp eq i64 %indvars.iv.next.i30.i.i, %wide.trip.count.i.i7.pre-phi.i
  br i1 %exitcond.not.i31.i.i, label %for.inc.i.i, label %for.body.i29.i.i

for.inc.i.i:                                      ; preds = %for.inc.i.i.i76, %if.end.i.i74, %for.body.i10.i
  %indvars.iv.next.i16.i = add nsw i64 %indvars.iv.i8.i, -1
  %cmp.not.i.i = icmp eq i64 %indvars.iv.i8.i, 0
  br i1 %cmp.not.i.i, label %optimize_token_table.exit, label %for.body.i10.i

optimize_token_table.exit:                        ; preds = %for.inc.i.i, %find_best_token.exit.i.i
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %best_idx.i) #22
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buf.i) #22
  %puts.i = call i32 @puts(ptr nonnull @str) #22
  %puts217.i = call i32 @puts(ptr nonnull @str.79) #22
  %puts218.i = call i32 @puts(ptr nonnull @str.80) #22
  %puts219.i = call i32 @puts(ptr nonnull @str.81) #22
  %puts220.i = call i32 @puts(ptr nonnull @str.82) #22
  %puts221.i = call i32 @puts(ptr nonnull @str.83) #22
  %puts222.i = call i32 @puts(ptr nonnull @str.84) #22
  %puts223.i = call i32 @puts(ptr nonnull @str.85) #22
  %puts224.i = call i32 @puts(ptr nonnull @str.86) #22
  %.b216.i = load i1, ptr @base_relative, align 4
  %.str.11..str.10.i = select i1 %.b216.i, ptr @.str.11, ptr @.str.10
  %call.i233.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.74, ptr noundef nonnull %.str.11..str.10.i) #22
  %puts.i234.i = call i32 @puts(ptr nonnull @str.87) #22
  %call2.i235.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.76, ptr noundef nonnull %.str.11..str.10.i) #22
  %123 = load i32, ptr @table_cnt, align 4, !tbaa !12
  %cmp268.not.i = icmp eq i32 %123, 0
  br i1 %cmp268.not.i, label %for.end.i85, label %for.body.i78

for.body.i78:                                     ; preds = %for.inc.i84, %optimize_token_table.exit
  %indvars.iv.i77 = phi i64 [ %indvars.iv.next.i83, %for.inc.i84 ], [ 0, %optimize_token_table.exit ]
  %.b215.i = load i1, ptr @base_relative, align 4
  br i1 %.b215.i, label %if.then10.i, label %if.else54.i

if.then10.i:                                      ; preds = %for.body.i78
  %.b.i = load i1, ptr @absolute_percpu, align 4
  %124 = load ptr, ptr @table, align 8, !tbaa !5
  %arrayidx17.i = getelementptr inbounds ptr, ptr %124, i64 %indvars.iv.i77
  %125 = load ptr, ptr %arrayidx17.i, align 8, !tbaa !5
  br i1 %.b.i, label %if.else15.i, label %if.end41.i

if.else15.i:                                      ; preds = %if.then10.i
  %percpu_absolute.i.i79 = getelementptr inbounds %struct.sym_entry, ptr %125, i64 0, i32 3
  %126 = load i32, ptr %percpu_absolute.i.i79, align 8, !tbaa !12
  %tobool19.not.i = icmp eq i32 %126, 0
  br i1 %tobool19.not.i, label %if.else29.i, label %if.then20.i

if.then20.i:                                      ; preds = %if.else15.i
  %127 = load i64, ptr %125, align 8, !tbaa !9
  %128 = icmp ugt i64 %127, 2147483647
  br i1 %128, label %if.then43.i, label %if.end52.i

if.else29.i:                                      ; preds = %if.else15.i
  %129 = load i64, ptr @relative_base, align 8, !tbaa !9
  %130 = load i64, ptr %125, align 8, !tbaa !9
  %131 = xor i64 %130, -1
  %sub34.i = add i64 %129, %131
  %132 = icmp ult i64 %sub34.i, -2147483648
  br i1 %132, label %if.then43.i, label %if.end52.i

if.end41.i:                                       ; preds = %if.then10.i
  %133 = load i64, ptr %125, align 8, !tbaa !9
  %134 = load i64, ptr @relative_base, align 8, !tbaa !9
  %sub.i = sub i64 %133, %134
  %135 = icmp ugt i64 %sub.i, 4294967295
  br i1 %135, label %if.then43.i, label %if.end52.i

if.then43.i:                                      ; preds = %if.end41.i, %if.else29.i, %if.then20.i
  %136 = load ptr, ptr @stderr, align 8, !tbaa !5
  %idxprom44.i = and i64 %indvars.iv.i77, 4294967295
  %arrayidx45.i = getelementptr inbounds ptr, ptr %124, i64 %idxprom44.i
  %137 = load ptr, ptr %arrayidx45.i, align 8, !tbaa !5
  %percpu_absolute.i236.i = getelementptr inbounds %struct.sym_entry, ptr %137, i64 0, i32 3
  %138 = load i32, ptr %percpu_absolute.i236.i, align 8, !tbaa !12
  %tobool47.not.i = icmp eq i32 %138, 0
  %cond.i = select i1 %tobool47.not.i, ptr @.str.64, ptr @.str.63
  %139 = load i64, ptr %137, align 8, !tbaa !9
  %call51.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %136, ptr noundef nonnull @.str.62, ptr noundef nonnull %cond.i, i64 noundef %139) #20
  call void @exit(i32 noundef 1) #21
  unreachable

if.end52.i:                                       ; preds = %if.end41.i, %if.else29.i, %if.then20.i
  %offset.0266.i = phi i64 [ %127, %if.then20.i ], [ %sub.i, %if.end41.i ], [ %sub34.i, %if.else29.i ]
  %conv.i80 = trunc i64 %offset.0266.i to i32
  %call53.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.65, i32 noundef %conv.i80) #22
  br label %for.inc.i84

if.else54.i:                                      ; preds = %for.body.i78
  %140 = load ptr, ptr @table, align 8, !tbaa !5
  %arrayidx56.i = getelementptr inbounds ptr, ptr %140, i64 %indvars.iv.i77
  %141 = load ptr, ptr %arrayidx56.i, align 8, !tbaa !5
  %percpu_absolute.i237.i = getelementptr inbounds %struct.sym_entry, ptr %141, i64 0, i32 3
  %142 = load i32, ptr %percpu_absolute.i237.i, align 8, !tbaa !12
  %tobool58.not.i = icmp eq i32 %142, 0
  %143 = load i64, ptr %141, align 8, !tbaa !9
  br i1 %tobool58.not.i, label %if.then59.i, label %if.else63.i

if.then59.i:                                      ; preds = %if.else54.i
  %144 = load i64, ptr @_text, align 8, !tbaa !9
  %cmp.not.i.i81 = icmp ugt i64 %144, %143
  br i1 %cmp.not.i.i81, label %if.else.i.i, label %if.then.i.i82

if.then.i.i82:                                    ; preds = %if.then59.i
  %sub.i.i = sub i64 %143, %144
  %call.i238.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.77, i64 noundef %sub.i.i) #22
  br label %for.inc.i84

if.else.i.i:                                      ; preds = %if.then59.i
  %sub1.i.i = sub i64 %144, %143
  %call2.i239.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.78, i64 noundef %sub1.i.i) #22
  br label %for.inc.i84

if.else63.i:                                      ; preds = %if.else54.i
  %call67.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.66, i64 noundef %143) #22
  br label %for.inc.i84

for.inc.i84:                                      ; preds = %if.else63.i, %if.else.i.i, %if.then.i.i82, %if.end52.i
  %indvars.iv.next.i83 = add nuw nsw i64 %indvars.iv.i77, 1
  %145 = load i32, ptr @table_cnt, align 4, !tbaa !12
  %146 = zext i32 %145 to i64
  %cmp.i = icmp ult i64 %indvars.iv.next.i83, %146
  br i1 %cmp.i, label %for.body.i78, label %for.end.i85

for.end.i85:                                      ; preds = %for.inc.i84, %optimize_token_table.exit
  %putchar.i = call i32 @putchar(i32 10) #22
  %.b214.i = load i1, ptr @base_relative, align 4
  br i1 %.b214.i, label %if.then72.i, label %if.end74.i

if.then72.i:                                      ; preds = %for.end.i85
  %call.i240.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.12) #22
  %puts.i241.i = call i32 @puts(ptr nonnull @str.87) #22
  %call2.i242.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.12) #22
  %147 = load i64, ptr @relative_base, align 8, !tbaa !9
  %148 = load i64, ptr @_text, align 8, !tbaa !9
  %cmp.not.i243.i = icmp ugt i64 %148, %147
  br i1 %cmp.not.i243.i, label %if.else.i249.i, label %if.then.i246.i

if.then.i246.i:                                   ; preds = %if.then72.i
  %sub.i244.i = sub i64 %147, %148
  %call.i245.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.77, i64 noundef %sub.i244.i) #22
  br label %output_address.exit250.i

if.else.i249.i:                                   ; preds = %if.then72.i
  %sub1.i247.i = sub i64 %148, %147
  %call2.i248.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.78, i64 noundef %sub1.i247.i) #22
  br label %output_address.exit250.i

output_address.exit250.i:                         ; preds = %if.else.i249.i, %if.then.i246.i
  %putchar232.i = call i32 @putchar(i32 10) #22
  br label %if.end74.i

if.end74.i:                                       ; preds = %output_address.exit250.i, %for.end.i85
  %call.i251.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.13) #22
  %puts.i252.i = call i32 @puts(ptr nonnull @str.87) #22
  %call2.i253.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.13) #22
  %149 = load i32, ptr @table_cnt, align 4, !tbaa !12
  %call75.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.68, i32 noundef %149) #22
  %putchar225.i = call i32 @putchar(i32 10) #22
  %150 = load i32, ptr @table_cnt, align 4, !tbaa !12
  %add.i86 = add i32 %150, 255
  %151 = lshr i32 %add.i86, 6
  %152 = and i32 %151, 67108860
  %mul.i87 = zext i32 %152 to i64
  %call78.i = call noalias ptr @malloc(i64 noundef %mul.i87) #24
  %tobool79.not.i = icmp eq ptr %call78.i, null
  br i1 %tobool79.not.i, label %if.then80.i, label %if.end82.i

if.then80.i:                                      ; preds = %if.end74.i
  %153 = load ptr, ptr @stderr, align 8, !tbaa !5
  %154 = call i64 @fwrite(ptr nonnull @.str.69, i64 53, i64 1, ptr %153) #20
  call void @exit(i32 noundef 1) #21
  unreachable

if.end82.i:                                       ; preds = %if.end74.i
  %call.i254.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.14) #22
  %puts.i255.i = call i32 @puts(ptr nonnull @str.87) #22
  %call2.i256.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.14) #22
  %155 = load i32, ptr @table_cnt, align 4, !tbaa !12
  %cmp84276.not.i = icmp eq i32 %155, 0
  br i1 %cmp84276.not.i, label %for.end120.i, label %for.body86.i

for.body86.i:                                     ; preds = %for.end111.i, %if.end82.i
  %indvars.iv292.i = phi i64 [ %indvars.iv.next293.i, %for.end111.i ], [ 0, %if.end82.i ]
  %off.0277.i = phi i32 [ %add117.i, %for.end111.i ], [ 0, %if.end82.i ]
  %and305.i = and i64 %indvars.iv292.i, 255
  %cmp87.i = icmp eq i64 %and305.i, 0
  br i1 %cmp87.i, label %if.then89.i, label %if.end92.i

if.then89.i:                                      ; preds = %for.body86.i
  %shr.i = lshr i64 %indvars.iv292.i, 8
  %idxprom90.i = and i64 %shr.i, 16777215
  %arrayidx91.i = getelementptr inbounds i32, ptr %call78.i, i64 %idxprom90.i
  store i32 %off.0277.i, ptr %arrayidx91.i, align 4, !tbaa !12
  br label %if.end92.i

if.end92.i:                                       ; preds = %if.then89.i, %for.body86.i
  %156 = load ptr, ptr @table, align 8, !tbaa !5
  %arrayidx94.i = getelementptr inbounds ptr, ptr %156, i64 %indvars.iv292.i
  %157 = load ptr, ptr %arrayidx94.i, align 8, !tbaa !5
  %len.i = getelementptr inbounds %struct.sym_entry, ptr %157, i64 0, i32 1
  %158 = load i32, ptr %len.i, align 8, !tbaa !12
  %call95.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.70, i32 noundef %158) #22
  %159 = load ptr, ptr @table, align 8, !tbaa !5
  %arrayidx98272.i = getelementptr inbounds ptr, ptr %159, i64 %indvars.iv292.i
  %160 = load ptr, ptr %arrayidx98272.i, align 8, !tbaa !5
  %len99273.i = getelementptr inbounds %struct.sym_entry, ptr %160, i64 0, i32 1
  %161 = load i32, ptr %len99273.i, align 8, !tbaa !12
  %cmp100274.not.i = icmp eq i32 %161, 0
  br i1 %cmp100274.not.i, label %for.end111.i, label %for.body102.i

for.body102.i:                                    ; preds = %for.body102.i, %if.end92.i
  %indvars.iv289.i = phi i64 [ %indvars.iv.next290.i, %for.body102.i ], [ 0, %if.end92.i ]
  %162 = phi ptr [ %165, %for.body102.i ], [ %160, %if.end92.i ]
  %arrayidx106.i = getelementptr inbounds %struct.sym_entry, ptr %162, i64 0, i32 4, i64 %indvars.iv289.i
  %163 = load i8, ptr %arrayidx106.i, align 1, !tbaa !11
  %conv107.i = zext i8 %163 to i32
  %call108.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.71, i32 noundef %conv107.i) #22
  %indvars.iv.next290.i = add nuw nsw i64 %indvars.iv289.i, 1
  %164 = load ptr, ptr @table, align 8, !tbaa !5
  %arrayidx98.i = getelementptr inbounds ptr, ptr %164, i64 %indvars.iv292.i
  %165 = load ptr, ptr %arrayidx98.i, align 8, !tbaa !5
  %len99.i = getelementptr inbounds %struct.sym_entry, ptr %165, i64 0, i32 1
  %166 = load i32, ptr %len99.i, align 8, !tbaa !12
  %167 = zext i32 %166 to i64
  %cmp100.i = icmp ult i64 %indvars.iv.next290.i, %167
  br i1 %cmp100.i, label %for.body102.i, label %for.end111.i

for.end111.i:                                     ; preds = %for.body102.i, %if.end92.i
  %putchar231.i = call i32 @putchar(i32 10) #22
  %168 = load ptr, ptr @table, align 8, !tbaa !5
  %arrayidx114.i = getelementptr inbounds ptr, ptr %168, i64 %indvars.iv292.i
  %169 = load ptr, ptr %arrayidx114.i, align 8, !tbaa !5
  %len115.i = getelementptr inbounds %struct.sym_entry, ptr %169, i64 0, i32 1
  %170 = load i32, ptr %len115.i, align 8, !tbaa !12
  %add116.i = add i32 %off.0277.i, 1
  %add117.i = add i32 %add116.i, %170
  %indvars.iv.next293.i = add nuw nsw i64 %indvars.iv292.i, 1
  %171 = load i32, ptr @table_cnt, align 4, !tbaa !12
  %172 = zext i32 %171 to i64
  %cmp84.i = icmp ult i64 %indvars.iv.next293.i, %172
  br i1 %cmp84.i, label %for.body86.i, label %for.end120.i

for.end120.i:                                     ; preds = %for.end111.i, %if.end82.i
  %putchar227.i = call i32 @putchar(i32 10) #22
  %call.i257.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.15) #22
  %puts.i258.i = call i32 @puts(ptr nonnull @str.87) #22
  %call2.i259.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.15) #22
  %173 = load i32, ptr @table_cnt, align 4, !tbaa !12
  %add123280.i = add i32 %173, 255
  %cmp125282.not.i = icmp ult i32 %add123280.i, 256
  br i1 %cmp125282.not.i, label %for.end133.i, label %for.body127.i

for.body127.i:                                    ; preds = %for.body127.i, %for.end120.i
  %indvars.iv295.i = phi i64 [ %indvars.iv.next296.i, %for.body127.i ], [ 0, %for.end120.i ]
  %arrayidx129.i = getelementptr inbounds i32, ptr %call78.i, i64 %indvars.iv295.i
  %174 = load i32, ptr %arrayidx129.i, align 4, !tbaa !12
  %call130.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.68, i32 noundef %174) #22
  %indvars.iv.next296.i = add nuw nsw i64 %indvars.iv295.i, 1
  %175 = load i32, ptr @table_cnt, align 4, !tbaa !12
  %add123.i = add i32 %175, 255
  %shr124.i = lshr i32 %add123.i, 8
  %176 = zext i32 %shr124.i to i64
  %cmp125.i = icmp ult i64 %indvars.iv.next296.i, %176
  br i1 %cmp125.i, label %for.body127.i, label %for.end133.i

for.end133.i:                                     ; preds = %for.body127.i, %for.end120.i
  %putchar228.i = call i32 @putchar(i32 10) #22
  call void @free(ptr noundef %call78.i) #22
  %call.i260.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.16) #22
  %puts.i261.i = call i32 @puts(ptr nonnull @str.87) #22
  %call2.i262.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.16) #22
  br label %for.body138.i

for.body138.i:                                    ; preds = %for.body138.i, %for.end133.i
  %indvars.iv298.i = phi i64 [ 0, %for.end133.i ], [ %indvars.iv.next299.i, %for.body138.i ]
  %off.1284.i = phi i32 [ 0, %for.end133.i ], [ %conv155.i, %for.body138.i ]
  %arrayidx140.i = getelementptr inbounds [256 x i32], ptr %best_idx.i, i64 0, i64 %indvars.iv298.i
  store i32 %off.1284.i, ptr %arrayidx140.i, align 4, !tbaa !12
  %arrayidx142.i = getelementptr inbounds [256 x [2 x i8]], ptr @best_table, i64 0, i64 %indvars.iv298.i
  %arrayidx144.i = getelementptr inbounds [256 x i8], ptr @best_table_len, i64 0, i64 %indvars.iv298.i
  %177 = load i8, ptr %arrayidx144.i, align 1, !tbaa !11
  %conv145.i = zext i8 %177 to i32
  %call147.i = call fastcc i32 @expand_symbol(ptr noundef nonnull %arrayidx142.i, i32 noundef %conv145.i, ptr noundef nonnull %buf.i) #22
  %call149.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.72, ptr noundef nonnull %buf.i) #22
  %call151.i = call i64 @strlen(ptr noundef nonnull %buf.i) #19
  %178 = trunc i64 %call151.i to i32
  %179 = add i32 %off.1284.i, 1
  %conv155.i = add i32 %179, %178
  %indvars.iv.next299.i = add nuw nsw i64 %indvars.iv298.i, 1
  %exitcond.not.i88 = icmp eq i64 %indvars.iv.next299.i, 256
  br i1 %exitcond.not.i88, label %for.end158.i, label %for.body138.i

for.end158.i:                                     ; preds = %for.body138.i
  %putchar229.i = call i32 @putchar(i32 10) #22
  %call.i263.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.17) #22
  %puts.i264.i = call i32 @puts(ptr nonnull @str.87) #22
  %call2.i265.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.17) #22
  br label %for.body163.i

for.body163.i:                                    ; preds = %for.body163.i, %for.end158.i
  %indvars.iv301.i = phi i64 [ 0, %for.end158.i ], [ %indvars.iv.next302.i, %for.body163.i ]
  %arrayidx165.i = getelementptr inbounds [256 x i32], ptr %best_idx.i, i64 0, i64 %indvars.iv301.i
  %180 = load i32, ptr %arrayidx165.i, align 4, !tbaa !12
  %call166.i = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.73, i32 noundef %180) #22
  %indvars.iv.next302.i = add nuw nsw i64 %indvars.iv301.i, 1
  %exitcond304.not.i = icmp eq i64 %indvars.iv.next302.i, 256
  br i1 %exitcond304.not.i, label %write_src.exit, label %for.body163.i

write_src.exit:                                   ; preds = %for.body163.i
  %putchar230.i = call i32 @putchar(i32 10) #22
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buf.i) #22
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %best_idx.i) #22
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @feof(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn allocsize(1)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #5

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_toupper_loc() local_unnamed_addr #9

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind readonly willreturn uwtable
define internal i32 @compare_symbols(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #12 {
entry:
  %0 = load ptr, ptr %a, align 8, !tbaa !5
  %1 = load ptr, ptr %b, align 8, !tbaa !5
  %2 = load i64, ptr %0, align 8, !tbaa !9
  %3 = load i64, ptr %1, align 8, !tbaa !9
  %cmp = icmp ugt i64 %2, %3
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %cmp4 = icmp ult i64 %2, %3
  br i1 %cmp4, label %cleanup, label %if.end6

if.end6:                                          ; preds = %if.end
  %sym = getelementptr inbounds %struct.sym_entry, ptr %0, i64 0, i32 4
  %4 = load i8, ptr %sym, align 4, !tbaa !11
  %5 = and i8 %4, -33
  %6 = icmp eq i8 %5, 87
  %sym14 = getelementptr inbounds %struct.sym_entry, ptr %1, i64 0, i32 4
  %7 = load i8, ptr %sym14, align 4, !tbaa !11
  %8 = and i8 %7, -33
  %9 = icmp eq i8 %8, 87
  %10 = xor i1 %6, %9
  br i1 %10, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end6
  %.neg = sext i1 %9 to i32
  %11 = zext i1 %6 to i32
  %sub = add nsw i32 %.neg, %11
  br label %cleanup

if.end30:                                         ; preds = %if.end6
  %call = tail call fastcc i32 @may_be_linker_script_provide_symbol(ptr noundef nonnull %0)
  %call31 = tail call fastcc i32 @may_be_linker_script_provide_symbol(ptr noundef nonnull %1)
  %cmp32.not = icmp eq i32 %call, %call31
  br i1 %cmp32.not, label %if.end36, label %if.then34

if.then34:                                        ; preds = %if.end30
  %sub35 = sub nsw i32 %call, %call31
  br label %cleanup

if.end36:                                         ; preds = %if.end30
  %add.ptr.i = getelementptr inbounds %struct.sym_entry, ptr %0, i64 0, i32 4, i64 1
  %call38 = tail call i64 @strspn(ptr noundef nonnull %add.ptr.i, ptr noundef nonnull @.str.47) #19
  %conv39 = trunc i64 %call38 to i32
  %add.ptr.i77 = getelementptr inbounds %struct.sym_entry, ptr %1, i64 0, i32 4, i64 1
  %call41 = tail call i64 @strspn(ptr noundef nonnull %add.ptr.i77, ptr noundef nonnull @.str.47) #19
  %conv42 = trunc i64 %call41 to i32
  %cmp43.not = icmp eq i32 %conv39, %conv42
  br i1 %cmp43.not, label %if.end47, label %if.then45

if.then45:                                        ; preds = %if.end36
  %sub46 = sub nsw i32 %conv39, %conv42
  br label %cleanup

if.end47:                                         ; preds = %if.end36
  %start_pos = getelementptr inbounds %struct.sym_entry, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %start_pos, align 4, !tbaa !12
  %start_pos48 = getelementptr inbounds %struct.sym_entry, ptr %1, i64 0, i32 2
  %13 = load i32, ptr %start_pos48, align 4, !tbaa !12
  %sub49 = sub i32 %12, %13
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.then45, %if.then34, %if.then29, %if.end, %entry
  %retval.0 = phi i32 [ %sub, %if.then29 ], [ %sub35, %if.then34 ], [ %sub46, %if.then45 ], [ %sub49, %if.end47 ], [ 1, %entry ], [ -1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn uwtable
define internal fastcc i32 @may_be_linker_script_provide_symbol(ptr nocapture noundef readonly %se) unnamed_addr #13 {
entry:
  %add.ptr.i = getelementptr inbounds %struct.sym_entry, ptr %se, i64 0, i32 4, i64 1
  %len1 = getelementptr inbounds %struct.sym_entry, ptr %se, i64 0, i32 1
  %0 = load i32, ptr %len1, align 8, !tbaa !12
  %sub = add i32 %0, -1
  %cmp = icmp slt i32 %sub, 8
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i8, ptr %add.ptr.i, align 1, !tbaa !11
  %cmp2.not = icmp eq i8 %1, 95
  br i1 %cmp2.not, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %arrayidx4 = getelementptr inbounds %struct.sym_entry, ptr %se, i64 0, i32 4, i64 2
  %2 = load i8, ptr %arrayidx4, align 1, !tbaa !11
  %cmp6.not = icmp eq i8 %2, 95
  br i1 %cmp6.not, label %if.end9, label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  %add.ptr = getelementptr inbounds %struct.sym_entry, ptr %se, i64 0, i32 4, i64 3
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %add.ptr, ptr noundef nonnull dereferenceable(6) @.str.48, i64 6)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.end9
  %bcmp46 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %add.ptr, ptr noundef nonnull dereferenceable(5) @.str.49, i64 5)
  %tobool15.not = icmp eq i32 %bcmp46, 0
  br i1 %tobool15.not, label %cleanup, label %if.end17

if.end17:                                         ; preds = %if.end12
  %bcmp47 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %add.ptr, ptr noundef nonnull dereferenceable(4) @.str.50, i64 4)
  %tobool20.not = icmp eq i32 %bcmp47, 0
  br i1 %tobool20.not, label %cleanup, label %if.end22

if.end22:                                         ; preds = %if.end17
  %idx.ext50 = zext i32 %sub to i64
  %add.ptr23 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.ext50
  %add.ptr24 = getelementptr inbounds i8, ptr %add.ptr23, i64 -6
  %bcmp48 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %add.ptr24, ptr noundef nonnull dereferenceable(6) @.str.51, i64 6)
  %tobool26.not = icmp eq i32 %bcmp48, 0
  br i1 %tobool26.not, label %cleanup, label %if.end28

if.end28:                                         ; preds = %if.end22
  %add.ptr31 = getelementptr inbounds i8, ptr %add.ptr23, i64 -4
  %bcmp49 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %add.ptr31, ptr noundef nonnull dereferenceable(4) @.str.52, i64 4)
  %tobool33.not = icmp eq i32 %bcmp49, 0
  %. = zext i1 %tobool33.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end22, %if.end17, %if.end12, %if.end9, %lor.lhs.false, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %lor.lhs.false ], [ 0, %if.end ], [ 1, %if.end9 ], [ 1, %if.end12 ], [ 1, %if.end17 ], [ 1, %if.end22 ], [ %., %if.end28 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #14

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind uwtable
define internal fastcc i32 @expand_symbol(ptr nocapture noundef readonly %data, i32 noundef %len, ptr nocapture noundef writeonly %result) unnamed_addr #15 {
entry:
  %tobool.not29 = icmp eq i32 %len, 0
  br i1 %tobool.not29, label %while.end, label %while.body

while.body:                                       ; preds = %if.end, %entry
  %total.033 = phi i32 [ %total.1, %if.end ], [ 0, %entry ]
  %data.addr.032 = phi ptr [ %incdec.ptr15, %if.end ], [ %data, %entry ]
  %len.addr.031 = phi i32 [ %dec, %if.end ], [ %len, %entry ]
  %result.addr.030 = phi ptr [ %result.addr.1, %if.end ], [ %result, %entry ]
  %0 = load i8, ptr %data.addr.032, align 1, !tbaa !11
  %1 = zext i8 %0 to i64
  %arrayidx = getelementptr inbounds [256 x [2 x i8]], ptr @best_table, i64 0, i64 %1
  %2 = load i8, ptr %arrayidx, align 2, !tbaa !11
  %cmp = icmp eq i8 %2, %0
  %arrayidx5 = getelementptr inbounds [256 x i8], ptr @best_table_len, i64 0, i64 %1
  %3 = load i8, ptr %arrayidx5, align 1, !tbaa !11
  %cmp7 = icmp eq i8 %3, 1
  %or.cond = select i1 %cmp, i1 %cmp7, i1 false
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %incdec.ptr = getelementptr inbounds i8, ptr %result.addr.030, i64 1
  store i8 %0, ptr %result.addr.030, align 1, !tbaa !11
  %inc = add nsw i32 %total.033, 1
  br label %if.end

if.else:                                          ; preds = %while.body
  %conv14 = zext i8 %3 to i32
  %call = tail call fastcc i32 @expand_symbol(ptr noundef nonnull %arrayidx, i32 noundef %conv14, ptr noundef %result.addr.030)
  %add = add nsw i32 %call, %total.033
  %idx.ext = sext i32 %call to i64
  %add.ptr = getelementptr inbounds i8, ptr %result.addr.030, i64 %idx.ext
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %result.addr.1 = phi ptr [ %incdec.ptr, %if.then ], [ %add.ptr, %if.else ]
  %total.1 = phi i32 [ %inc, %if.then ], [ %add, %if.else ]
  %incdec.ptr15 = getelementptr inbounds i8, ptr %data.addr.032, i64 1
  %dec = add nsw i32 %len.addr.031, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.end:                                        ; preds = %if.end, %entry
  %result.addr.0.lcssa = phi ptr [ %result, %entry ], [ %result.addr.1, %if.end ]
  %total.0.lcssa = phi i32 [ 0, %entry ], [ %total.1, %if.end ]
  store i8 0, ptr %result.addr.0.lcssa, align 1, !tbaa !11
  ret i32 %total.0.lcssa
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #16

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #18

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn allocsize(1) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { argmemonly mustprogress nofree nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { argmemonly nofree nounwind willreturn }
attributes #15 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { argmemonly nofree nounwind readonly willreturn }
attributes #18 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #19 = { nounwind readonly willreturn }
attributes #20 = { cold nounwind }
attributes #21 = { noreturn nounwind }
attributes #22 = { nounwind }
attributes #23 = { nounwind readnone willreturn }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { nounwind allocsize(1) }

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
!10 = !{!"long long", !7, i64 0}
!11 = !{!7, !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !7, i64 0}
!14 = !{!15, !6, i64 0}
!15 = !{!"addr_range", !6, i64 0, !6, i64 8, !10, i64 16, !10, i64 24}
!16 = !{!15, !6, i64 8}
!17 = !{!15, !10, i64 16}
!18 = !{!15, !10, i64 24}
