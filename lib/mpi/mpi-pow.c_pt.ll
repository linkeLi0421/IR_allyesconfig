; ModuleID = '/llk/IR_all_yes/lib/mpi/mpi-pow.c_pt.bc'
source_filename = "../lib/mpi/mpi-pow.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mpi_powm\22, \22a\22\09"
module asm "\09.weak\09__crc_mpi_powm\09\09\09\09"
module asm "\09.long\09__crc_mpi_powm\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_powm:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_powm\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_powm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.karatsuba_ctx = type { ptr, ptr, i32, ptr, i32 }
%struct.gcry_mpi = type { i32, i32, i32, i32, i32, ptr }

@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lib/mpi/mpi-pow.c\00", [46 x i8] zeroinitializer }, align 32
@__kstrtab_mpi_powm = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_powm = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_powm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_powm to i32), ptr @__kstrtab_mpi_powm, ptr @__kstrtabns_mpi_powm }, section "___ksymtab_gpl+mpi_powm", align 4
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [21 x i8] c"../lib/mpi/mpi-pow.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 245, i32 5 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_mpi_powm, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpi_powm(ptr noundef %res, ptr nocapture noundef readonly %base, ptr nocapture noundef readonly %exp, ptr nocapture noundef readonly %mod) #0 align 64 {
entry:
  %karactx = alloca %struct.karatsuba_ctx, align 4
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %karactx) #5
  %0 = call ptr @memset(ptr %karactx, i32 0, i32 20)
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %exp, i32 0, i32 1
  %1 = ptrtoint ptr %nlimbs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nlimbs, align 4
  %nlimbs1 = getelementptr inbounds %struct.gcry_mpi, ptr %mod, i32 0, i32 1
  %3 = ptrtoint ptr %nlimbs1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nlimbs1, align 4
  %mul = shl i32 %4, 1
  %sign = getelementptr inbounds %struct.gcry_mpi, ptr %mod, i32 0, i32 3
  %5 = ptrtoint ptr %sign to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sign, align 4
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %res, i32 0, i32 5
  %7 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %d, align 4
  %d2 = getelementptr inbounds %struct.gcry_mpi, ptr %exp, i32 0, i32 5
  %9 = ptrtoint ptr %d2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup377_crit_edge, label %if.end

entry.cleanup377_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup377

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool3.not = icmp eq i32 %2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end18

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %land.end, label %land.end.thread

land.end.thread:                                  ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  %nlimbs7637 = getelementptr inbounds %struct.gcry_mpi, ptr %res, i32 0, i32 1
  %11 = ptrtoint ptr %nlimbs7637 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %nlimbs7637, align 4
  br label %if.then10

land.end:                                         ; preds = %if.then4
  %d5 = getelementptr inbounds %struct.gcry_mpi, ptr %mod, i32 0, i32 5
  %12 = ptrtoint ptr %d5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d5, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp6 = icmp ne i32 %15, 1
  %phi.cast = zext i1 %cmp6 to i32
  %nlimbs7 = getelementptr inbounds %struct.gcry_mpi, ptr %res, i32 0, i32 1
  %16 = ptrtoint ptr %nlimbs7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %phi.cast, ptr %nlimbs7, align 4
  br i1 %cmp6, label %land.end.if.then10_crit_edge, label %land.end.enomem.thread.sink.split_crit_edge

land.end.enomem.thread.sink.split_crit_edge:      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %enomem.thread.sink.split

land.end.if.then10_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.then10:                                        ; preds = %land.end.if.then10_crit_edge, %land.end.thread
  %call = tail call i32 @mpi_resize(ptr noundef %res, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp11 = icmp slt i32 %call, 0
  br i1 %cmp11, label %if.then10.enomem.thread_crit_edge, label %if.end13

if.then10.enomem.thread_crit_edge:                ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %enomem.thread

if.end13:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %18, align 4
  br label %enomem.thread.sink.split

if.end18:                                         ; preds = %if.end
  %call19 = tail call ptr @mpi_alloc_limb_space(i32 noundef %4) #5
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.end18.enomem.thread_crit_edge, label %if.end22

if.end18.enomem.thread_crit_edge:                 ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %enomem.thread

if.end22:                                         ; preds = %if.end18
  %d23 = getelementptr inbounds %struct.gcry_mpi, ptr %mod, i32 0, i32 5
  %20 = ptrtoint ptr %d23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %d23, align 4
  %sub = add i32 %4, -1
  %arrayidx24 = getelementptr i32, ptr %21, i32 %sub
  %22 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx24, align 4
  %24 = tail call i32 @llvm.ctlz.i32(i32 %23, i1 false) #5, !range !13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool26.not = icmp eq i32 %24, 0
  br i1 %tobool26.not, label %for.cond.preheader, label %if.then27

for.cond.preheader:                               ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp30696 = icmp sgt i32 %4, 0
  br i1 %cmp30696, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.end34_crit_edge

for.cond.preheader.if.end34_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %call29 = tail call i32 @mpihelp_lshift(ptr noundef nonnull %call19, ptr noundef %21, i32 noundef %4, i32 noundef %24) #5
  br label %if.end34

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %_i.0697 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %25 = ptrtoint ptr %d23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %d23, align 4
  %arrayidx32 = getelementptr i32, ptr %26, i32 %_i.0697
  %27 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx32, align 4
  %arrayidx33 = getelementptr i32, ptr %call19, i32 %_i.0697
  %29 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx33, align 4
  %inc = add nuw nsw i32 %_i.0697, 1
  %exitcond.not = icmp eq i32 %inc, %4
  br i1 %exitcond.not, label %for.body.if.end34_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.if.end34_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.end34:                                         ; preds = %for.body.if.end34_crit_edge, %if.then27, %for.cond.preheader.if.end34_crit_edge
  %nlimbs35 = getelementptr inbounds %struct.gcry_mpi, ptr %base, i32 0, i32 1
  %30 = ptrtoint ptr %nlimbs35 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nlimbs35, align 4
  %sign36 = getelementptr inbounds %struct.gcry_mpi, ptr %base, i32 0, i32 3
  %32 = ptrtoint ptr %sign36 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sign36, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %4)
  %cmp37 = icmp sgt i32 %31, %4
  br i1 %cmp37, label %if.then38, label %if.else66

if.then38:                                        ; preds = %if.end34
  %add = add i32 %31, 1
  %call39 = tail call ptr @mpi_alloc_limb_space(i32 noundef %add) #5
  %tobool40.not = icmp eq ptr %call39, null
  br i1 %tobool40.not, label %if.then38.enomem.thread_crit_edge, label %for.cond45.preheader

if.then38.enomem.thread_crit_edge:                ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #7
  br label %enomem.thread

for.cond45.preheader:                             ; preds = %if.then38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp46698 = icmp sgt i32 %31, 0
  br i1 %cmp46698, label %for.body47.lr.ph, label %for.cond45.preheader.for.end53_crit_edge

for.cond45.preheader.for.end53_crit_edge:         ; preds = %for.cond45.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end53

for.body47.lr.ph:                                 ; preds = %for.cond45.preheader
  %d48 = getelementptr inbounds %struct.gcry_mpi, ptr %base, i32 0, i32 5
  br label %for.body47

for.body47:                                       ; preds = %for.body47.for.body47_crit_edge, %for.body47.lr.ph
  %_i44.0699 = phi i32 [ 0, %for.body47.lr.ph ], [ %inc52, %for.body47.for.body47_crit_edge ]
  %34 = ptrtoint ptr %d48 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %d48, align 4
  %arrayidx49 = getelementptr i32, ptr %35, i32 %_i44.0699
  %36 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx49, align 4
  %arrayidx50 = getelementptr i32, ptr %call39, i32 %_i44.0699
  %38 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx50, align 4
  %inc52 = add nuw nsw i32 %_i44.0699, 1
  %exitcond715.not = icmp eq i32 %inc52, %31
  br i1 %exitcond715.not, label %for.body47.for.end53_crit_edge, label %for.body47.for.body47_crit_edge

for.body47.for.body47_crit_edge:                  ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body47

for.body47.for.end53_crit_edge:                   ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end53

for.end53:                                        ; preds = %for.body47.for.end53_crit_edge, %for.cond45.preheader.for.end53_crit_edge
  %add.ptr = getelementptr i32, ptr %call39, i32 %4
  %call56 = tail call i32 @mpihelp_divrem(ptr noundef %add.ptr, i32 noundef 0, ptr noundef nonnull %call39, i32 noundef %31, ptr noundef nonnull %call19, i32 noundef %4) #5
  %smin = call i32 @llvm.smin.i32(i32 %4, i32 0)
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %for.end53
  %bsize.0 = phi i32 [ %4, %for.end53 ], [ %sub59, %while.body.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bsize.0)
  %cmp58 = icmp sgt i32 %bsize.0, 0
  br i1 %cmp58, label %while.body, label %while.cond.if.end68_crit_edge

while.cond.if.end68_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68

while.body:                                       ; preds = %while.cond
  %sub59 = add nsw i32 %bsize.0, -1
  %arrayidx60 = getelementptr i32, ptr %call39, i32 %sub59
  %39 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx60, align 4
  %tobool61.not = icmp eq i32 %40, 0
  br i1 %tobool61.not, label %while.body.while.cond_crit_edge, label %while.body.if.end73_crit_edge

while.body.if.end73_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end73

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

if.else66:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  %d67 = getelementptr inbounds %struct.gcry_mpi, ptr %base, i32 0, i32 5
  %41 = ptrtoint ptr %d67 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %d67, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.else66, %while.cond.if.end68_crit_edge
  %bp_marker.0 = phi ptr [ null, %if.else66 ], [ %call39, %while.cond.if.end68_crit_edge ]
  %bp.0 = phi ptr [ %42, %if.else66 ], [ %call39, %while.cond.if.end68_crit_edge ]
  %bsize.1 = phi i32 [ %31, %if.else66 ], [ %smin, %while.cond.if.end68_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bsize.1)
  %tobool69.not = icmp eq i32 %bsize.1, 0
  br i1 %tobool69.not, label %if.then70, label %if.end68.if.end73_crit_edge

if.end68.if.end73_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end73

if.then70:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  %nlimbs71 = getelementptr inbounds %struct.gcry_mpi, ptr %res, i32 0, i32 1
  %43 = ptrtoint ptr %nlimbs71 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %nlimbs71, align 4
  br label %enomem.thread.sink.split

if.end73:                                         ; preds = %if.end68.if.end73_crit_edge, %while.body.if.end73_crit_edge
  %bsize.1645 = phi i32 [ %bsize.1, %if.end68.if.end73_crit_edge ], [ %bsize.0, %while.body.if.end73_crit_edge ]
  %bp.0644 = phi ptr [ %bp.0, %if.end68.if.end73_crit_edge ], [ %call39, %while.body.if.end73_crit_edge ]
  %bp_marker.0643 = phi ptr [ %bp_marker.0, %if.end68.if.end73_crit_edge ], [ %call39, %while.body.if.end73_crit_edge ]
  %44 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %res, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %mul)
  %cmp74 = icmp slt i32 %45, %mul
  br i1 %cmp74, label %if.then75, label %if.else92

if.then75:                                        ; preds = %if.end73
  %cmp76 = icmp eq ptr %8, %10
  %cmp77 = icmp eq ptr %8, %call19
  %or.cond = select i1 %cmp76, i1 true, i1 %cmp77
  %cmp79 = icmp eq ptr %8, %bp.0644
  %or.cond636 = select i1 %or.cond, i1 true, i1 %cmp79
  br i1 %or.cond636, label %if.then80, label %if.else85

if.then80:                                        ; preds = %if.then75
  %call81 = tail call ptr @mpi_alloc_limb_space(i32 noundef %mul) #5
  %tobool82.not = icmp eq ptr %call81, null
  br i1 %tobool82.not, label %if.then80.enomem.thread_crit_edge, label %if.then80.do.body183_crit_edge

if.then80.do.body183_crit_edge:                   ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body183

if.then80.enomem.thread_crit_edge:                ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #7
  br label %enomem.thread

if.else85:                                        ; preds = %if.then75
  %call86 = tail call i32 @mpi_resize(ptr noundef %res, i32 noundef %mul) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %cmp87 = icmp slt i32 %call86, 0
  br i1 %cmp87, label %if.else85.enomem.thread_crit_edge, label %if.end89

if.else85.enomem.thread_crit_edge:                ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #7
  br label %enomem.thread

if.end89:                                         ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %d, align 4
  br label %do.body183

if.else92:                                        ; preds = %if.end73
  %cmp93 = icmp eq ptr %8, %bp.0644
  br i1 %cmp93, label %do.body95, label %if.else92.if.end125_crit_edge

if.else92.if.end125_crit_edge:                    ; preds = %if.else92
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end125

do.body95:                                        ; preds = %if.else92
  %tobool96.not = icmp eq ptr %bp_marker.0643, null
  br i1 %tobool96.not, label %do.end108, label %do.body100, !prof !14

do.body100:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/mpi/mpi-pow.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 121, 0\0A.popsection", ""() #5, !srcloc !15
  unreachable

do.end108:                                        ; preds = %do.body95
  %call109 = tail call ptr @mpi_alloc_limb_space(i32 noundef %bsize.1645) #5
  %tobool110.not = icmp eq ptr %call109, null
  br i1 %tobool110.not, label %do.end108.enomem.thread_crit_edge, label %for.cond115.preheader

do.end108.enomem.thread_crit_edge:                ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #7
  br label %enomem.thread

for.cond115.preheader:                            ; preds = %do.end108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bsize.1645)
  %cmp116700 = icmp sgt i32 %bsize.1645, 0
  br i1 %cmp116700, label %for.cond115.preheader.for.body117_crit_edge, label %for.cond115.preheader.if.end125_crit_edge

for.cond115.preheader.if.end125_crit_edge:        ; preds = %for.cond115.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end125

for.cond115.preheader.for.body117_crit_edge:      ; preds = %for.cond115.preheader
  br label %for.body117

for.body117:                                      ; preds = %for.body117.for.body117_crit_edge, %for.cond115.preheader.for.body117_crit_edge
  %_i114.0701 = phi i32 [ %inc121, %for.body117.for.body117_crit_edge ], [ 0, %for.cond115.preheader.for.body117_crit_edge ]
  %arrayidx118 = getelementptr i32, ptr %8, i32 %_i114.0701
  %48 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx118, align 4
  %arrayidx119 = getelementptr i32, ptr %call109, i32 %_i114.0701
  %50 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %arrayidx119, align 4
  %inc121 = add nuw nsw i32 %_i114.0701, 1
  %exitcond716.not = icmp eq i32 %inc121, %bsize.1645
  br i1 %exitcond716.not, label %for.body117.if.end125_crit_edge, label %for.body117.for.body117_crit_edge

for.body117.for.body117_crit_edge:                ; preds = %for.body117
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body117

for.body117.if.end125_crit_edge:                  ; preds = %for.body117
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end125

if.end125:                                        ; preds = %for.body117.if.end125_crit_edge, %for.cond115.preheader.if.end125_crit_edge, %if.else92.if.end125_crit_edge
  %bp_marker.1 = phi ptr [ %bp_marker.0643, %if.else92.if.end125_crit_edge ], [ %call109, %for.cond115.preheader.if.end125_crit_edge ], [ %call109, %for.body117.if.end125_crit_edge ]
  %bp.1 = phi ptr [ %bp.0644, %if.else92.if.end125_crit_edge ], [ %call109, %for.cond115.preheader.if.end125_crit_edge ], [ %call109, %for.body117.if.end125_crit_edge ]
  %cmp126 = icmp eq ptr %8, %10
  br i1 %cmp126, label %if.then127, label %if.end125.if.end144_crit_edge

if.end125.if.end144_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end144

if.then127:                                       ; preds = %if.end125
  %call128 = tail call ptr @mpi_alloc_limb_space(i32 noundef %2) #5
  %tobool129.not = icmp eq ptr %call128, null
  br i1 %tobool129.not, label %if.then127.enomem.thread_crit_edge, label %for.cond134.preheader

if.then127.enomem.thread_crit_edge:               ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #7
  br label %enomem.thread

for.cond134.preheader:                            ; preds = %if.then127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp135702 = icmp sgt i32 %2, 0
  br i1 %cmp135702, label %for.cond134.preheader.for.body136_crit_edge, label %for.cond134.preheader.if.end144_crit_edge

for.cond134.preheader.if.end144_crit_edge:        ; preds = %for.cond134.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end144

for.cond134.preheader.for.body136_crit_edge:      ; preds = %for.cond134.preheader
  br label %for.body136

for.body136:                                      ; preds = %for.body136.for.body136_crit_edge, %for.cond134.preheader.for.body136_crit_edge
  %_i133.0703 = phi i32 [ %inc140, %for.body136.for.body136_crit_edge ], [ 0, %for.cond134.preheader.for.body136_crit_edge ]
  %arrayidx137 = getelementptr i32, ptr %8, i32 %_i133.0703
  %51 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx137, align 4
  %arrayidx138 = getelementptr i32, ptr %call128, i32 %_i133.0703
  %53 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %arrayidx138, align 4
  %inc140 = add nuw nsw i32 %_i133.0703, 1
  %exitcond717.not = icmp eq i32 %inc140, %2
  br i1 %exitcond717.not, label %for.body136.if.end144_crit_edge, label %for.body136.for.body136_crit_edge

for.body136.for.body136_crit_edge:                ; preds = %for.body136
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body136

for.body136.if.end144_crit_edge:                  ; preds = %for.body136
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end144

if.end144:                                        ; preds = %for.body136.if.end144_crit_edge, %for.cond134.preheader.if.end144_crit_edge, %if.end125.if.end144_crit_edge
  %ep_marker.0 = phi ptr [ null, %if.end125.if.end144_crit_edge ], [ %call128, %for.cond134.preheader.if.end144_crit_edge ], [ %call128, %for.body136.if.end144_crit_edge ]
  %ep.0 = phi ptr [ %10, %if.end125.if.end144_crit_edge ], [ %call128, %for.cond134.preheader.if.end144_crit_edge ], [ %call128, %for.body136.if.end144_crit_edge ]
  %cmp145 = icmp eq ptr %8, %call19
  br i1 %cmp145, label %do.body156, label %if.end144.do.body183_crit_edge

if.end144.do.body183_crit_edge:                   ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body183

do.body156:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/mpi/mpi-pow.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 136, 0\0A.popsection", ""() #5, !srcloc !16
  unreachable

do.body183:                                       ; preds = %if.end144.do.body183_crit_edge, %if.end89, %if.then80.do.body183_crit_edge
  %bp_marker.2 = phi ptr [ %bp_marker.0643, %if.end89 ], [ %bp_marker.1, %if.end144.do.body183_crit_edge ], [ %bp_marker.0643, %if.then80.do.body183_crit_edge ]
  %ep_marker.1 = phi ptr [ null, %if.end89 ], [ %ep_marker.0, %if.end144.do.body183_crit_edge ], [ null, %if.then80.do.body183_crit_edge ]
  %rp.1 = phi ptr [ %47, %if.end89 ], [ %8, %if.end144.do.body183_crit_edge ], [ %call81, %if.then80.do.body183_crit_edge ]
  %ep.1 = phi ptr [ %10, %if.end89 ], [ %ep.0, %if.end144.do.body183_crit_edge ], [ %10, %if.then80.do.body183_crit_edge ]
  %bp.2 = phi ptr [ %bp.0644, %if.end89 ], [ %bp.1, %if.end144.do.body183_crit_edge ], [ %bp.0644, %if.then80.do.body183_crit_edge ]
  %tobool359.not = phi i1 [ true, %if.end89 ], [ true, %if.end144.do.body183_crit_edge ], [ false, %if.then80.do.body183_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bsize.1645)
  %cmp186704 = icmp sgt i32 %bsize.1645, 0
  br i1 %cmp186704, label %do.body183.for.body187_crit_edge, label %do.body183.for.end192_crit_edge

do.body183.for.end192_crit_edge:                  ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end192

do.body183.for.body187_crit_edge:                 ; preds = %do.body183
  br label %for.body187

for.body187:                                      ; preds = %for.body187.for.body187_crit_edge, %do.body183.for.body187_crit_edge
  %_i184.0705 = phi i32 [ %inc191, %for.body187.for.body187_crit_edge ], [ 0, %do.body183.for.body187_crit_edge ]
  %arrayidx188 = getelementptr i32, ptr %bp.2, i32 %_i184.0705
  %54 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx188, align 4
  %arrayidx189 = getelementptr i32, ptr %rp.1, i32 %_i184.0705
  %56 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %arrayidx189, align 4
  %inc191 = add nuw nsw i32 %_i184.0705, 1
  %exitcond718.not = icmp eq i32 %inc191, %bsize.1645
  br i1 %exitcond718.not, label %for.body187.for.end192_crit_edge, label %for.body187.for.body187_crit_edge

for.body187.for.body187_crit_edge:                ; preds = %for.body187
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body187

for.body187.for.end192_crit_edge:                 ; preds = %for.body187
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end192

for.end192:                                       ; preds = %for.body187.for.end192_crit_edge, %do.body183.for.end192_crit_edge
  %mul196 = add i32 %mul, 2
  %call197 = tail call ptr @mpi_alloc_limb_space(i32 noundef %mul196) #5
  %tobool198.not = icmp eq ptr %call197, null
  br i1 %tobool198.not, label %for.end192.enomem_crit_edge, label %if.end200

for.end192.enomem_crit_edge:                      ; preds = %for.end192
  call void @__sanitizer_cov_trace_pc() #7
  br label %enomem

if.end200:                                        ; preds = %for.end192
  %57 = ptrtoint ptr %ep.1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ep.1, align 4
  %and = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool202.not = icmp eq i32 %and, 0
  br i1 %tobool202.not, label %if.end200.land.end206_crit_edge, label %land.rhs203

if.end200.land.end206_crit_edge:                  ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.end206

land.rhs203:                                      ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #7
  %59 = ptrtoint ptr %sign36 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %sign36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool205 = icmp eq i32 %60, 0
  br label %land.end206

land.end206:                                      ; preds = %land.rhs203, %if.end200.land.end206_crit_edge
  %61 = phi i1 [ true, %if.end200.land.end206_crit_edge ], [ %tobool205, %land.rhs203 ]
  %sub207 = add i32 %2, -1
  %arrayidx208 = getelementptr i32, ptr %ep.1, i32 %sub207
  %62 = ptrtoint ptr %arrayidx208 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx208, align 4
  %64 = tail call i32 @llvm.ctlz.i32(i32 %63, i1 false) #5, !range !13
  %shl = shl i32 %63, %64
  %shl210 = shl i32 %shl, 1
  %sub211 = sub nsw i32 31, %64
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %bsize.1645)
  %cmp246 = icmp slt i32 %bsize.1645, 16
  br label %for.cond212

for.cond212:                                      ; preds = %if.end277, %land.end206
  %tspace.0 = phi ptr [ null, %land.end206 ], [ %tspace.1.lcssa, %if.end277 ]
  %rp.2 = phi ptr [ %rp.1, %land.end206 ], [ %rp.3.lcssa, %if.end277 ]
  %rsize.0 = phi i32 [ %bsize.1645, %land.end206 ], [ %rsize.1.lcssa, %if.end277 ]
  %tsize.0 = phi i32 [ 0, %land.end206 ], [ %tsize.1.lcssa, %if.end277 ]
  %i.0 = phi i32 [ %sub207, %land.end206 ], [ %dec274, %if.end277 ]
  %xp.0 = phi ptr [ %call197, %land.end206 ], [ %xp.1.lcssa, %if.end277 ]
  %c.0 = phi i32 [ %sub211, %land.end206 ], [ 32, %if.end277 ]
  %e.0 = phi i32 [ %shl210, %land.end206 ], [ %67, %if.end277 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.0)
  %tobool214.not742 = icmp eq i32 %c.0, 0
  br i1 %tobool214.not742, label %for.cond212.while.end273_crit_edge, label %for.cond212.while.body215_crit_edge

for.cond212.while.body215_crit_edge:              ; preds = %for.cond212
  br label %while.body215

for.cond212.while.end273_crit_edge:               ; preds = %for.cond212
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end273

while.body215:                                    ; preds = %cleanup269.while.body215_crit_edge, %for.cond212.while.body215_crit_edge
  %e.1752 = phi i32 [ %shl265, %cleanup269.while.body215_crit_edge ], [ %e.0, %for.cond212.while.body215_crit_edge ]
  %c.1751 = phi i32 [ %dec266, %cleanup269.while.body215_crit_edge ], [ %c.0, %for.cond212.while.body215_crit_edge ]
  %xp.1749 = phi ptr [ %xp.2, %cleanup269.while.body215_crit_edge ], [ %xp.0, %for.cond212.while.body215_crit_edge ]
  %tsize.1748 = phi i32 [ %tsize.3, %cleanup269.while.body215_crit_edge ], [ %tsize.0, %for.cond212.while.body215_crit_edge ]
  %rsize.1747 = phi i32 [ %rsize.2, %cleanup269.while.body215_crit_edge ], [ %rsize.0, %for.cond212.while.body215_crit_edge ]
  %rp.3744 = phi ptr [ %rp.4, %cleanup269.while.body215_crit_edge ], [ %rp.2, %for.cond212.while.body215_crit_edge ]
  %tspace.1743 = phi ptr [ %tspace.3, %cleanup269.while.body215_crit_edge ], [ %tspace.0, %for.cond212.while.body215_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %rsize.1747)
  %cmp216 = icmp slt i32 %rsize.1747, 16
  br i1 %cmp216, label %if.then217, label %if.else218

if.then217:                                       ; preds = %while.body215
  call void @__sanitizer_cov_trace_pc() #7
  call void @mpih_sqr_n_basecase(ptr noundef %xp.1749, ptr noundef %rp.3744, i32 noundef %rsize.1747) #5
  br label %if.end237

if.else218:                                       ; preds = %while.body215
  %tobool219.not = icmp eq ptr %tspace.1743, null
  %mul221 = shl nuw i32 %rsize.1747, 1
  br i1 %tobool219.not, label %if.then220, label %if.else226

if.then220:                                       ; preds = %if.else218
  %call222 = call ptr @mpi_alloc_limb_space(i32 noundef %mul221) #5
  %tobool223.not = icmp eq ptr %call222, null
  br i1 %tobool223.not, label %if.then220.enomem_crit_edge, label %if.then220.if.end236_crit_edge

if.then220.if.end236_crit_edge:                   ; preds = %if.then220
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end236

if.then220.enomem_crit_edge:                      ; preds = %if.then220
  call void @__sanitizer_cov_trace_pc() #7
  br label %enomem

if.else226:                                       ; preds = %if.else218
  call void @__sanitizer_cov_trace_cmp4(i32 %tsize.1748, i32 %mul221)
  %cmp228 = icmp slt i32 %tsize.1748, %mul221
  br i1 %cmp228, label %if.then229, label %if.else226.if.end236_crit_edge

if.else226.if.end236_crit_edge:                   ; preds = %if.else226
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end236

if.then229:                                       ; preds = %if.else226
  call void @mpi_free_limb_space(ptr noundef nonnull %tspace.1743) #5
  %call231 = call ptr @mpi_alloc_limb_space(i32 noundef %mul221) #5
  %tobool232.not = icmp eq ptr %call231, null
  br i1 %tobool232.not, label %if.then229.enomem_crit_edge, label %if.then229.if.end236_crit_edge

if.then229.if.end236_crit_edge:                   ; preds = %if.then229
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end236

if.then229.enomem_crit_edge:                      ; preds = %if.then229
  call void @__sanitizer_cov_trace_pc() #7
  br label %enomem

if.end236:                                        ; preds = %if.then229.if.end236_crit_edge, %if.else226.if.end236_crit_edge, %if.then220.if.end236_crit_edge
  %tspace.2 = phi ptr [ %call231, %if.then229.if.end236_crit_edge ], [ %tspace.1743, %if.else226.if.end236_crit_edge ], [ %call222, %if.then220.if.end236_crit_edge ]
  %tsize.2 = phi i32 [ %mul221, %if.then229.if.end236_crit_edge ], [ %tsize.1748, %if.else226.if.end236_crit_edge ], [ %mul221, %if.then220.if.end236_crit_edge ]
  call void @mpih_sqr_n(ptr noundef %xp.1749, ptr noundef %rp.3744, i32 noundef %rsize.1747, ptr noundef nonnull %tspace.2) #5
  br label %if.end237

if.end237:                                        ; preds = %if.end236, %if.then217
  %tspace.3 = phi ptr [ %tspace.1743, %if.then217 ], [ %tspace.2, %if.end236 ]
  %tsize.3 = phi i32 [ %tsize.1748, %if.then217 ], [ %tsize.2, %if.end236 ]
  %mul238 = shl i32 %rsize.1747, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul238, i32 %4)
  %cmp239 = icmp sgt i32 %mul238, %4
  br i1 %cmp239, label %if.then240, label %if.end237.if.end243_crit_edge

if.end237.if.end243_crit_edge:                    ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end243

if.then240:                                       ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr241 = getelementptr i32, ptr %xp.1749, i32 %4
  %call242 = call i32 @mpihelp_divrem(ptr noundef %add.ptr241, i32 noundef 0, ptr noundef %xp.1749, i32 noundef %mul238, ptr noundef nonnull %call19, i32 noundef %4) #5
  br label %if.end243

if.end243:                                        ; preds = %if.then240, %if.end237.if.end243_crit_edge
  %xsize.0 = phi i32 [ %4, %if.then240 ], [ %mul238, %if.end237.if.end243_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %e.1752)
  %cmp244 = icmp slt i32 %e.1752, 0
  br i1 %cmp244, label %if.then245, label %if.end243.cleanup269_crit_edge

if.end243.cleanup269_crit_edge:                   ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup269

if.then245:                                       ; preds = %if.end243
  br i1 %cmp246, label %if.then247, label %if.else252

if.then247:                                       ; preds = %if.then245
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #5
  %65 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %tmp, align 4, !annotation !17
  %call248 = call i32 @mpihelp_mul(ptr noundef %rp.3744, ptr noundef %xp.1749, i32 noundef %xsize.0, ptr noundef %bp.2, i32 noundef %bsize.1645, ptr noundef nonnull %tmp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call248)
  %cmp249 = icmp slt i32 %call248, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #5
  br i1 %cmp249, label %if.then247.enomem_crit_edge, label %if.then247.if.end257_crit_edge

if.then247.if.end257_crit_edge:                   ; preds = %if.then247
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end257

if.then247.enomem_crit_edge:                      ; preds = %if.then247
  call void @__sanitizer_cov_trace_pc() #7
  br label %enomem

if.else252:                                       ; preds = %if.then245
  %call253 = call i32 @mpihelp_mul_karatsuba_case(ptr noundef %rp.3744, ptr noundef %xp.1749, i32 noundef %xsize.0, ptr noundef %bp.2, i32 noundef %bsize.1645, ptr noundef nonnull %karactx) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call253)
  %cmp254 = icmp slt i32 %call253, 0
  br i1 %cmp254, label %if.else252.enomem_crit_edge, label %if.else252.if.end257_crit_edge

if.else252.if.end257_crit_edge:                   ; preds = %if.else252
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end257

if.else252.enomem_crit_edge:                      ; preds = %if.else252
  call void @__sanitizer_cov_trace_pc() #7
  br label %enomem

if.end257:                                        ; preds = %if.else252.if.end257_crit_edge, %if.then247.if.end257_crit_edge
  %add258 = add i32 %xsize.0, %bsize.1645
  call void @__sanitizer_cov_trace_cmp4(i32 %add258, i32 %4)
  %cmp259 = icmp sgt i32 %add258, %4
  br i1 %cmp259, label %if.then260, label %if.end257.cleanup269_crit_edge

if.end257.cleanup269_crit_edge:                   ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup269

if.then260:                                       ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr261 = getelementptr i32, ptr %rp.3744, i32 %4
  %call262 = call i32 @mpihelp_divrem(ptr noundef %add.ptr261, i32 noundef 0, ptr noundef %rp.3744, i32 noundef %add258, ptr noundef nonnull %call19, i32 noundef %4) #5
  br label %cleanup269

cleanup269:                                       ; preds = %if.then260, %if.end257.cleanup269_crit_edge, %if.end243.cleanup269_crit_edge
  %rp.4 = phi ptr [ %xp.1749, %if.end243.cleanup269_crit_edge ], [ %rp.3744, %if.then260 ], [ %rp.3744, %if.end257.cleanup269_crit_edge ]
  %rsize.2 = phi i32 [ %xsize.0, %if.end243.cleanup269_crit_edge ], [ %4, %if.then260 ], [ %add258, %if.end257.cleanup269_crit_edge ]
  %xp.2 = phi ptr [ %rp.3744, %if.end243.cleanup269_crit_edge ], [ %xp.1749, %if.then260 ], [ %xp.1749, %if.end257.cleanup269_crit_edge ]
  %shl265 = shl i32 %e.1752, 1
  %dec266 = add i32 %c.1751, -1
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 245, i32 noundef 0) #5
  %call.i = call i32 @__cond_resched() #5
  %tobool214.not = icmp eq i32 %dec266, 0
  br i1 %tobool214.not, label %cleanup269.while.end273_crit_edge, label %cleanup269.while.body215_crit_edge

cleanup269.while.body215_crit_edge:               ; preds = %cleanup269
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body215

cleanup269.while.end273_crit_edge:                ; preds = %cleanup269
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end273

while.end273:                                     ; preds = %cleanup269.while.end273_crit_edge, %for.cond212.while.end273_crit_edge
  %tspace.1.lcssa = phi ptr [ %tspace.0, %for.cond212.while.end273_crit_edge ], [ %tspace.3, %cleanup269.while.end273_crit_edge ]
  %rp.3.lcssa = phi ptr [ %rp.2, %for.cond212.while.end273_crit_edge ], [ %rp.4, %cleanup269.while.end273_crit_edge ]
  %rsize.1.lcssa = phi i32 [ %rsize.0, %for.cond212.while.end273_crit_edge ], [ %rsize.2, %cleanup269.while.end273_crit_edge ]
  %tsize.1.lcssa = phi i32 [ %tsize.0, %for.cond212.while.end273_crit_edge ], [ %tsize.3, %cleanup269.while.end273_crit_edge ]
  %xp.1.lcssa = phi ptr [ %xp.0, %for.cond212.while.end273_crit_edge ], [ %xp.2, %cleanup269.while.end273_crit_edge ]
  %dec274 = add i32 %i.0, -1
  %cmp275 = icmp slt i32 %dec274, 0
  br i1 %cmp275, label %for.end279, label %if.end277

if.end277:                                        ; preds = %while.end273
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx278 = getelementptr i32, ptr %ep.1, i32 %dec274
  %66 = ptrtoint ptr %arrayidx278 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx278, align 4
  br label %for.cond212

for.end279:                                       ; preds = %while.end273
  br i1 %tobool26.not, label %for.cond293.preheader, label %if.then281

for.cond293.preheader:                            ; preds = %for.end279
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rsize.1.lcssa)
  %cmp294706 = icmp sgt i32 %rsize.1.lcssa, 0
  br i1 %cmp294706, label %for.cond293.preheader.for.body295_crit_edge, label %for.cond293.preheader.for.end301_crit_edge

for.cond293.preheader.for.end301_crit_edge:       ; preds = %for.cond293.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end301

for.cond293.preheader.for.body295_crit_edge:      ; preds = %for.cond293.preheader
  br label %for.body295

if.then281:                                       ; preds = %for.end279
  %68 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %d, align 4
  %call283 = call i32 @mpihelp_lshift(ptr noundef %69, ptr noundef %rp.3.lcssa, i32 noundef %rsize.1.lcssa, i32 noundef %24) #5
  %70 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %d, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call283)
  %tobool285.not = icmp eq i32 %call283, 0
  br i1 %tobool285.not, label %if.then281.if.end305_crit_edge, label %if.then286

if.then281.if.end305_crit_edge:                   ; preds = %if.then281
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end305

if.then286:                                       ; preds = %if.then281
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx287 = getelementptr i32, ptr %71, i32 %rsize.1.lcssa
  %72 = ptrtoint ptr %arrayidx287 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %call283, ptr %arrayidx287, align 4
  %inc288 = add i32 %rsize.1.lcssa, 1
  br label %if.end305

for.body295:                                      ; preds = %for.body295.for.body295_crit_edge, %for.cond293.preheader.for.body295_crit_edge
  %_i292.0707 = phi i32 [ %inc300, %for.body295.for.body295_crit_edge ], [ 0, %for.cond293.preheader.for.body295_crit_edge ]
  %arrayidx296 = getelementptr i32, ptr %rp.3.lcssa, i32 %_i292.0707
  %73 = ptrtoint ptr %arrayidx296 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx296, align 4
  %75 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %d, align 4
  %arrayidx298 = getelementptr i32, ptr %76, i32 %_i292.0707
  %77 = ptrtoint ptr %arrayidx298 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %74, ptr %arrayidx298, align 4
  %inc300 = add nuw nsw i32 %_i292.0707, 1
  %exitcond719.not = icmp eq i32 %inc300, %rsize.1.lcssa
  br i1 %exitcond719.not, label %for.body295.for.end301_crit_edge, label %for.body295.for.body295_crit_edge

for.body295.for.body295_crit_edge:                ; preds = %for.body295
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body295

for.body295.for.end301_crit_edge:                 ; preds = %for.body295
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end301

for.end301:                                       ; preds = %for.body295.for.end301_crit_edge, %for.cond293.preheader.for.end301_crit_edge
  %78 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %d, align 4
  br label %if.end305

if.end305:                                        ; preds = %for.end301, %if.then286, %if.then281.if.end305_crit_edge
  %rp.6 = phi ptr [ %71, %if.then286 ], [ %71, %if.then281.if.end305_crit_edge ], [ %79, %for.end301 ]
  %rsize.4 = phi i32 [ %inc288, %if.then286 ], [ %rsize.1.lcssa, %if.then281.if.end305_crit_edge ], [ %rsize.1.lcssa, %for.end301 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %rsize.4, i32 %4)
  %cmp306.not = icmp slt i32 %rsize.4, %4
  br i1 %cmp306.not, label %if.end305.if.end310_crit_edge, label %if.then307

if.end305.if.end310_crit_edge:                    ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end310

if.then307:                                       ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr308 = getelementptr i32, ptr %rp.6, i32 %4
  %call309 = call i32 @mpihelp_divrem(ptr noundef %add.ptr308, i32 noundef 0, ptr noundef %rp.6, i32 noundef %rsize.4, ptr noundef nonnull %call19, i32 noundef %4) #5
  br label %if.end310

if.end310:                                        ; preds = %if.then307, %if.end305.if.end310_crit_edge
  %rsize.5 = phi i32 [ %4, %if.then307 ], [ %rsize.4, %if.end305.if.end310_crit_edge ]
  br i1 %tobool26.not, label %if.end310.do.body315_crit_edge, label %if.then312

if.end310.do.body315_crit_edge:                   ; preds = %if.end310
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body315

if.then312:                                       ; preds = %if.end310
  call void @__sanitizer_cov_trace_pc() #7
  %call313 = call i32 @mpihelp_rshift(ptr noundef %rp.6, ptr noundef %rp.6, i32 noundef %rsize.5, i32 noundef %24) #5
  br label %do.body315

do.body315:                                       ; preds = %if.then312, %if.end310.do.body315_crit_edge
  %smin720 = call i32 @llvm.smin.i32(i32 %rsize.4, i32 %4)
  %smin721 = call i32 @llvm.smin.i32(i32 %smin720, i32 0)
  br label %while.cond316

while.cond316:                                    ; preds = %while.body318.while.cond316_crit_edge, %do.body315
  %rsize.6 = phi i32 [ %rsize.5, %do.body315 ], [ %sub319, %while.body318.while.cond316_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rsize.6)
  %cmp317 = icmp sgt i32 %rsize.6, 0
  br i1 %cmp317, label %while.body318, label %while.cond316.cleanup.cont334_crit_edge

while.cond316.cleanup.cont334_crit_edge:          ; preds = %while.cond316
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.cont334

while.body318:                                    ; preds = %while.cond316
  %sub319 = add nsw i32 %rsize.6, -1
  %arrayidx320 = getelementptr i32, ptr %rp.6, i32 %sub319
  %80 = ptrtoint ptr %arrayidx320 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx320, align 4
  %tobool321.not = icmp eq i32 %81, 0
  br i1 %tobool321.not, label %while.body318.while.cond316_crit_edge, label %while.body318.cleanup.cont334_crit_edge

while.body318.cleanup.cont334_crit_edge:          ; preds = %while.body318
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.cont334

while.body318.while.cond316_crit_edge:            ; preds = %while.body318
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond316

cleanup.cont334:                                  ; preds = %while.body318.cleanup.cont334_crit_edge, %while.cond316.cleanup.cont334_crit_edge
  %rsize.6.lcssa = phi i32 [ %smin721, %while.cond316.cleanup.cont334_crit_edge ], [ %rsize.6, %while.body318.cleanup.cont334_crit_edge ]
  br i1 %61, label %cleanup.cont334.if.end356_crit_edge, label %land.lhs.true

cleanup.cont334.if.end356_crit_edge:              ; preds = %cleanup.cont334
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end356

land.lhs.true:                                    ; preds = %cleanup.cont334
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rsize.6.lcssa)
  %tobool336.not = icmp eq i32 %rsize.6.lcssa, 0
  br i1 %tobool336.not, label %land.lhs.true.if.end356_crit_edge, label %if.then337

land.lhs.true.if.end356_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end356

if.then337:                                       ; preds = %land.lhs.true
  br i1 %tobool26.not, label %if.then337.if.end341_crit_edge, label %if.then339

if.then337.if.end341_crit_edge:                   ; preds = %if.then337
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end341

if.then339:                                       ; preds = %if.then337
  call void @__sanitizer_cov_trace_pc() #7
  %call340 = call i32 @mpihelp_rshift(ptr noundef nonnull %call19, ptr noundef nonnull %call19, i32 noundef %4, i32 noundef %24) #5
  br label %if.end341

if.end341:                                        ; preds = %if.then339, %if.then337.if.end341_crit_edge
  call fastcc void @mpihelp_sub(ptr noundef %rp.6, ptr noundef nonnull %call19, i32 noundef %4, ptr noundef %rp.6, i32 noundef %rsize.6.lcssa)
  %smin722 = call i32 @llvm.smin.i32(i32 %4, i32 0)
  br label %while.cond344

while.cond344:                                    ; preds = %while.body346.while.cond344_crit_edge, %if.end341
  %rsize.8 = phi i32 [ %4, %if.end341 ], [ %sub347, %while.body346.while.cond344_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rsize.8)
  %cmp345 = icmp sgt i32 %rsize.8, 0
  br i1 %cmp345, label %while.body346, label %while.cond344.if.end356_crit_edge

while.cond344.if.end356_crit_edge:                ; preds = %while.cond344
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end356

while.body346:                                    ; preds = %while.cond344
  %sub347 = add nsw i32 %rsize.8, -1
  %arrayidx348 = getelementptr i32, ptr %rp.6, i32 %sub347
  %82 = ptrtoint ptr %arrayidx348 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx348, align 4
  %tobool349.not = icmp eq i32 %83, 0
  br i1 %tobool349.not, label %while.body346.while.cond344_crit_edge, label %while.body346.if.end356_crit_edge

while.body346.if.end356_crit_edge:                ; preds = %while.body346
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end356

while.body346.while.cond344_crit_edge:            ; preds = %while.body346
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond344

if.end356:                                        ; preds = %while.body346.if.end356_crit_edge, %while.cond344.if.end356_crit_edge, %land.lhs.true.if.end356_crit_edge, %cleanup.cont334.if.end356_crit_edge
  %rsize.9 = phi i32 [ 0, %land.lhs.true.if.end356_crit_edge ], [ %rsize.6.lcssa, %cleanup.cont334.if.end356_crit_edge ], [ %smin722, %while.cond344.if.end356_crit_edge ], [ %rsize.8, %while.body346.if.end356_crit_edge ]
  %rsign.0 = phi i32 [ %33, %land.lhs.true.if.end356_crit_edge ], [ %33, %cleanup.cont334.if.end356_crit_edge ], [ %6, %while.body346.if.end356_crit_edge ], [ %6, %while.cond344.if.end356_crit_edge ]
  %nlimbs357 = getelementptr inbounds %struct.gcry_mpi, ptr %res, i32 0, i32 1
  %84 = ptrtoint ptr %nlimbs357 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %rsize.9, ptr %nlimbs357, align 4
  %sign358 = getelementptr inbounds %struct.gcry_mpi, ptr %res, i32 0, i32 3
  %85 = ptrtoint ptr %sign358 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %rsign.0, ptr %sign358, align 4
  br label %enomem

enomem.thread.sink.split:                         ; preds = %if.then70, %if.end13, %land.end.enomem.thread.sink.split_crit_edge
  %mp_marker.2.ph.ph = phi ptr [ %call19, %if.then70 ], [ null, %if.end13 ], [ null, %land.end.enomem.thread.sink.split_crit_edge ]
  %bp_marker.4.ph.ph = phi ptr [ %bp_marker.0, %if.then70 ], [ null, %if.end13 ], [ null, %land.end.enomem.thread.sink.split_crit_edge ]
  %sign72 = getelementptr inbounds %struct.gcry_mpi, ptr %res, i32 0, i32 3
  %86 = ptrtoint ptr %sign72 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %sign72, align 4
  br label %enomem.thread

enomem.thread:                                    ; preds = %enomem.thread.sink.split, %if.then127.enomem.thread_crit_edge, %do.end108.enomem.thread_crit_edge, %if.else85.enomem.thread_crit_edge, %if.then80.enomem.thread_crit_edge, %if.then38.enomem.thread_crit_edge, %if.end18.enomem.thread_crit_edge, %if.then10.enomem.thread_crit_edge
  %mp_marker.2.ph = phi ptr [ null, %if.then10.enomem.thread_crit_edge ], [ null, %if.end18.enomem.thread_crit_edge ], [ %call19, %if.then38.enomem.thread_crit_edge ], [ %call19, %do.end108.enomem.thread_crit_edge ], [ %call19, %if.then127.enomem.thread_crit_edge ], [ %call19, %if.else85.enomem.thread_crit_edge ], [ %call19, %if.then80.enomem.thread_crit_edge ], [ %mp_marker.2.ph.ph, %enomem.thread.sink.split ]
  %bp_marker.4.ph = phi ptr [ null, %if.then10.enomem.thread_crit_edge ], [ null, %if.end18.enomem.thread_crit_edge ], [ null, %if.then38.enomem.thread_crit_edge ], [ null, %do.end108.enomem.thread_crit_edge ], [ %bp_marker.1, %if.then127.enomem.thread_crit_edge ], [ %bp_marker.0643, %if.else85.enomem.thread_crit_edge ], [ %bp_marker.0643, %if.then80.enomem.thread_crit_edge ], [ %bp_marker.4.ph.ph, %enomem.thread.sink.split ]
  %rc.0.ph = phi i32 [ -12, %if.then10.enomem.thread_crit_edge ], [ -12, %if.end18.enomem.thread_crit_edge ], [ -12, %if.then38.enomem.thread_crit_edge ], [ -12, %do.end108.enomem.thread_crit_edge ], [ -12, %if.then127.enomem.thread_crit_edge ], [ -12, %if.else85.enomem.thread_crit_edge ], [ -12, %if.then80.enomem.thread_crit_edge ], [ 0, %enomem.thread.sink.split ]
  call void @mpihelp_release_karatsuba_ctx(ptr noundef nonnull %karactx) #5
  br label %if.end361

enomem:                                           ; preds = %if.end356, %if.else252.enomem_crit_edge, %if.then247.enomem_crit_edge, %if.then229.enomem_crit_edge, %if.then220.enomem_crit_edge, %for.end192.enomem_crit_edge
  %tspace.7 = phi ptr [ %tspace.1.lcssa, %if.end356 ], [ null, %for.end192.enomem_crit_edge ], [ %tspace.3, %if.then247.enomem_crit_edge ], [ null, %if.then220.enomem_crit_edge ], [ null, %if.then229.enomem_crit_edge ], [ %tspace.3, %if.else252.enomem_crit_edge ]
  %rp.9 = phi ptr [ %rp.6, %if.end356 ], [ %rp.1, %for.end192.enomem_crit_edge ], [ %xp.1749, %if.then247.enomem_crit_edge ], [ %rp.3744, %if.then220.enomem_crit_edge ], [ %rp.3744, %if.then229.enomem_crit_edge ], [ %xp.1749, %if.else252.enomem_crit_edge ]
  %rc.0 = phi i32 [ 0, %if.end356 ], [ -12, %for.end192.enomem_crit_edge ], [ -12, %if.then220.enomem_crit_edge ], [ -12, %if.then229.enomem_crit_edge ], [ -12, %if.else252.enomem_crit_edge ], [ -12, %if.then247.enomem_crit_edge ]
  call void @mpihelp_release_karatsuba_ctx(ptr noundef nonnull %karactx) #5
  br i1 %tobool359.not, label %enomem.if.end361_crit_edge, label %if.then360

enomem.if.end361_crit_edge:                       ; preds = %enomem
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end361

if.then360:                                       ; preds = %enomem
  call void @__sanitizer_cov_trace_pc() #7
  call void @mpi_assign_limb_space(ptr noundef %res, ptr noundef %rp.9, i32 noundef %mul) #5
  br label %if.end361

if.end361:                                        ; preds = %if.then360, %enomem.if.end361_crit_edge, %enomem.thread
  %rc.0688 = phi i32 [ %rc.0.ph, %enomem.thread ], [ %rc.0, %if.then360 ], [ %rc.0, %enomem.if.end361_crit_edge ]
  %tspace.7687 = phi ptr [ null, %enomem.thread ], [ %tspace.7, %if.then360 ], [ %tspace.7, %enomem.if.end361_crit_edge ]
  %xp_marker.1686 = phi ptr [ null, %enomem.thread ], [ %call197, %if.then360 ], [ %call197, %enomem.if.end361_crit_edge ]
  %ep_marker.3685 = phi ptr [ null, %enomem.thread ], [ %ep_marker.1, %if.then360 ], [ %ep_marker.1, %enomem.if.end361_crit_edge ]
  %bp_marker.4684 = phi ptr [ %bp_marker.4.ph, %enomem.thread ], [ %bp_marker.2, %if.then360 ], [ %bp_marker.2, %enomem.if.end361_crit_edge ]
  %mp_marker.2683 = phi ptr [ %mp_marker.2.ph, %enomem.thread ], [ %call19, %if.then360 ], [ %call19, %enomem.if.end361_crit_edge ]
  %tobool362.not = icmp eq ptr %mp_marker.2683, null
  br i1 %tobool362.not, label %if.end361.if.end364_crit_edge, label %if.then363

if.end361.if.end364_crit_edge:                    ; preds = %if.end361
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end364

if.then363:                                       ; preds = %if.end361
  call void @__sanitizer_cov_trace_pc() #7
  call void @mpi_free_limb_space(ptr noundef nonnull %mp_marker.2683) #5
  br label %if.end364

if.end364:                                        ; preds = %if.then363, %if.end361.if.end364_crit_edge
  %tobool365.not = icmp eq ptr %bp_marker.4684, null
  br i1 %tobool365.not, label %if.end364.if.end367_crit_edge, label %if.then366

if.end364.if.end367_crit_edge:                    ; preds = %if.end364
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end367

if.then366:                                       ; preds = %if.end364
  call void @__sanitizer_cov_trace_pc() #7
  call void @mpi_free_limb_space(ptr noundef nonnull %bp_marker.4684) #5
  br label %if.end367

if.end367:                                        ; preds = %if.then366, %if.end364.if.end367_crit_edge
  %tobool368.not = icmp eq ptr %ep_marker.3685, null
  br i1 %tobool368.not, label %if.end367.if.end370_crit_edge, label %if.then369

if.end367.if.end370_crit_edge:                    ; preds = %if.end367
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end370

if.then369:                                       ; preds = %if.end367
  call void @__sanitizer_cov_trace_pc() #7
  call void @mpi_free_limb_space(ptr noundef nonnull %ep_marker.3685) #5
  br label %if.end370

if.end370:                                        ; preds = %if.then369, %if.end367.if.end370_crit_edge
  %tobool371.not = icmp eq ptr %xp_marker.1686, null
  br i1 %tobool371.not, label %if.end370.if.end373_crit_edge, label %if.then372

if.end370.if.end373_crit_edge:                    ; preds = %if.end370
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end373

if.then372:                                       ; preds = %if.end370
  call void @__sanitizer_cov_trace_pc() #7
  call void @mpi_free_limb_space(ptr noundef nonnull %xp_marker.1686) #5
  br label %if.end373

if.end373:                                        ; preds = %if.then372, %if.end370.if.end373_crit_edge
  %tobool374.not = icmp eq ptr %tspace.7687, null
  br i1 %tobool374.not, label %if.end373.cleanup377_crit_edge, label %if.then375

if.end373.cleanup377_crit_edge:                   ; preds = %if.end373
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup377

if.then375:                                       ; preds = %if.end373
  call void @__sanitizer_cov_trace_pc() #7
  call void @mpi_free_limb_space(ptr noundef nonnull %tspace.7687) #5
  br label %cleanup377

cleanup377:                                       ; preds = %if.then375, %if.end373.cleanup377_crit_edge, %entry.cleanup377_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup377_crit_edge ], [ %rc.0688, %if.then375 ], [ %rc.0688, %if.end373.cleanup377_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %karactx) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi_resize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_alloc_limb_space(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpihelp_lshift(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpihelp_divrem(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpih_sqr_n_basecase(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_free_limb_space(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpih_sqr_n(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpihelp_mul(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpihelp_mul_karatsuba_case(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpihelp_rshift(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mpihelp_sub(ptr noundef %res_ptr, ptr noundef %s1_ptr, i32 noundef %s1_size, ptr noundef %s2_ptr, i32 noundef %s2_size) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @mpihelp_sub_n(ptr noundef %res_ptr, ptr noundef %s1_ptr, ptr noundef %s2_ptr, i32 noundef %s2_size) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %s1_size, i32 %s2_size)
  %tobool1.not = icmp eq i32 %s1_size, %s2_size
  br i1 %tobool1.not, label %entry.if.end6_crit_edge, label %if.then2

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then2:                                         ; preds = %entry
  %sub = sub i32 %s1_size, %s2_size
  %add.ptr = getelementptr i32, ptr %res_ptr, i32 %s2_size
  %add.ptr3 = getelementptr i32, ptr %s1_ptr, i32 %s2_size
  %incdec.ptr.i = getelementptr i32, ptr %add.ptr3, i32 1
  %0 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr3, align 4
  %sub.i = sub i32 %1, %call
  %incdec.ptr1.i = getelementptr i32, ptr %add.ptr, i32 1
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %sub.i, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %call)
  %cmp.i = icmp ult i32 %1, %call
  br i1 %cmp.i, label %if.then2.while.cond.i_crit_edge, label %if.then2.leave.i_crit_edge

if.then2.leave.i_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %leave.i

if.then2.while.cond.i_crit_edge:                  ; preds = %if.then2
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.then2.while.cond.i_crit_edge
  %res_ptr.addr.0.i = phi ptr [ %incdec.ptr4.i, %while.body.i.while.cond.i_crit_edge ], [ %incdec.ptr1.i, %if.then2.while.cond.i_crit_edge ]
  %s1_ptr.addr.0.i = phi ptr [ %incdec.ptr2.i, %while.body.i.while.cond.i_crit_edge ], [ %incdec.ptr.i, %if.then2.while.cond.i_crit_edge ]
  %s1_size.addr.0.i = phi i32 [ %dec.i, %while.body.i.while.cond.i_crit_edge ], [ %sub, %if.then2.while.cond.i_crit_edge ]
  %dec.i = add i32 %s1_size.addr.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.cond.i.if.end6_crit_edge, label %while.body.i

while.cond.i.if.end6_crit_edge:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

while.body.i:                                     ; preds = %while.cond.i
  %incdec.ptr2.i = getelementptr i32, ptr %s1_ptr.addr.0.i, i32 1
  %3 = ptrtoint ptr %s1_ptr.addr.0.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %s1_ptr.addr.0.i, align 4
  %sub3.i = add i32 %4, -1
  %incdec.ptr4.i = getelementptr i32, ptr %res_ptr.addr.0.i, i32 1
  %5 = ptrtoint ptr %res_ptr.addr.0.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sub3.i, ptr %res_ptr.addr.0.i, align 4
  %tobool5.not.i = icmp eq i32 %4, 0
  br i1 %tobool5.not.i, label %while.body.i.while.cond.i_crit_edge, label %while.body.i.leave.i_crit_edge

while.body.i.leave.i_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %leave.i

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i

leave.i:                                          ; preds = %while.body.i.leave.i_crit_edge, %if.then2.leave.i_crit_edge
  %res_ptr.addr.1.i = phi ptr [ %incdec.ptr1.i, %if.then2.leave.i_crit_edge ], [ %incdec.ptr4.i, %while.body.i.leave.i_crit_edge ]
  %s1_ptr.addr.1.i = phi ptr [ %incdec.ptr.i, %if.then2.leave.i_crit_edge ], [ %incdec.ptr2.i, %while.body.i.leave.i_crit_edge ]
  %s1_size.addr.1.i = phi i32 [ %sub, %if.then2.leave.i_crit_edge ], [ %dec.i, %while.body.i.leave.i_crit_edge ]
  %cmp8.not.i = icmp eq ptr %res_ptr.addr.1.i, %s1_ptr.addr.1.i
  br i1 %cmp8.not.i, label %leave.i.if.end6_crit_edge, label %for.cond.preheader.i

leave.i.if.end6_crit_edge:                        ; preds = %leave.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

for.cond.preheader.i:                             ; preds = %leave.i
  %sub10.i = add i32 %s1_size.addr.1.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub10.i)
  %cmp1131.i = icmp sgt i32 %sub10.i, 0
  br i1 %cmp1131.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.if.end6_crit_edge

for.cond.preheader.i.if.end6_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.032.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %s1_ptr.addr.1.i, i32 %i.032.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %arrayidx12.i = getelementptr i32, ptr %res_ptr.addr.1.i, i32 %i.032.i
  %8 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx12.i, align 4
  %inc.i = add nuw nsw i32 %i.032.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %sub10.i
  br i1 %exitcond.not.i, label %for.body.i.if.end6_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.if.end6_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.end6:                                          ; preds = %for.body.i.if.end6_crit_edge, %for.cond.preheader.i.if.end6_crit_edge, %leave.i.if.end6_crit_edge, %while.cond.i.if.end6_crit_edge, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpihelp_release_karatsuba_ctx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_assign_limb_space(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpihelp_sub_n(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../lib/mpi/mpi-pow.c", i32 245, i32 5}
!2 = !{ptr @__ksymtab_mpi_powm, !3, !"__ksymtab_mpi_powm", i1 false, i1 false}
!3 = !{!"../lib/mpi/mpi-pow.c", i32 314, i32 1}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i32 0, i32 33}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2153669133, i64 2153669615, i64 2153669170, i64 2153669226, i64 2153669260, i64 2153669284, i64 2153669325, i64 2153669346, i64 2153669374, i64 2153669408}
!16 = !{i64 2153670929, i64 2153671411, i64 2153670966, i64 2153671022, i64 2153671056, i64 2153671080, i64 2153671121, i64 2153671142, i64 2153671170, i64 2153671204}
!17 = !{!"auto-init"}
