; ModuleID = '/llk/IR_all_yes/lib/mpi/mpi-sub-ui.c_pt.bc'
source_filename = "../lib/mpi/mpi-sub-ui.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mpi_sub_ui\22, \22a\22\09"
module asm "\09.weak\09__crc_mpi_sub_ui\09\09\09\09"
module asm "\09.long\09__crc_mpi_sub_ui\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_sub_ui:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_sub_ui\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_sub_ui:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.gcry_mpi = type { i32, i32, i32, i32, i32, ptr }

@__kstrtab_mpi_sub_ui = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_sub_ui = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_sub_ui = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_sub_ui to i32), ptr @__kstrtab_mpi_sub_ui, ptr @__kstrtabns_mpi_sub_ui }, section "___ksymtab_gpl+mpi_sub_ui", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_mpi_sub_ui], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpi_sub_ui(ptr noundef %w, ptr nocapture noundef readonly %u, i32 noundef %vval) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %u, i32 0, i32 1
  %0 = ptrtoint ptr %nlimbs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nlimbs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %call = tail call i32 @mpi_resize(ptr noundef %w, i32 noundef 1) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then.return_crit_edge, label %if.end

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %w, i32 0, i32 5
  %2 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %vval, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vval)
  %cmp3 = icmp ne i32 %vval, 0
  %conv = zext i1 %cmp3 to i32
  %nlimbs4 = getelementptr inbounds %struct.gcry_mpi, ptr %w, i32 0, i32 1
  %5 = ptrtoint ptr %nlimbs4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %nlimbs4, align 4
  %sign = getelementptr inbounds %struct.gcry_mpi, ptr %w, i32 0, i32 3
  %6 = ptrtoint ptr %sign to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %sign, align 4
  br label %return

if.end7:                                          ; preds = %entry
  %add = add i32 %1, 1
  %call9 = tail call i32 @mpi_resize(ptr noundef %w, i32 noundef %add) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end11, label %if.end7.return_crit_edge

if.end7.return_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.end11:                                         ; preds = %if.end7
  %sign12 = getelementptr inbounds %struct.gcry_mpi, ptr %u, i32 0, i32 3
  %7 = ptrtoint ptr %sign12 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sign12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool13.not = icmp eq i32 %8, 0
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end11
  %d15 = getelementptr inbounds %struct.gcry_mpi, ptr %w, i32 0, i32 5
  %9 = ptrtoint ptr %d15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d15, align 4
  %d16 = getelementptr inbounds %struct.gcry_mpi, ptr %u, i32 0, i32 5
  %11 = ptrtoint ptr %d16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %d16, align 4
  %13 = ptrtoint ptr %nlimbs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nlimbs, align 4
  %incdec.ptr.i = getelementptr i32, ptr %12, i32 1
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %12, align 4
  %add.i = add i32 %16, %vval
  %incdec.ptr1.i = getelementptr i32, ptr %10, i32 1
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add.i, ptr %10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %16)
  %cmp.i = icmp ult i32 %add.i, %16
  br i1 %cmp.i, label %if.then14.while.cond.i_crit_edge, label %if.then14.leave.i_crit_edge

if.then14.leave.i_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #4
  br label %leave.i

if.then14.while.cond.i_crit_edge:                 ; preds = %if.then14
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.then14.while.cond.i_crit_edge
  %res_ptr.addr.0.i = phi ptr [ %incdec.ptr4.i, %while.body.i.while.cond.i_crit_edge ], [ %incdec.ptr1.i, %if.then14.while.cond.i_crit_edge ]
  %s1_ptr.addr.0.i = phi ptr [ %incdec.ptr2.i, %while.body.i.while.cond.i_crit_edge ], [ %incdec.ptr.i, %if.then14.while.cond.i_crit_edge ]
  %s1_size.addr.0.i = phi i32 [ %dec.i, %while.body.i.while.cond.i_crit_edge ], [ %14, %if.then14.while.cond.i_crit_edge ]
  %dec.i = add i32 %s1_size.addr.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.cond.i.mpihelp_add_1.exit_crit_edge, label %while.body.i

while.cond.i.mpihelp_add_1.exit_crit_edge:        ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %mpihelp_add_1.exit

while.body.i:                                     ; preds = %while.cond.i
  %incdec.ptr2.i = getelementptr i32, ptr %s1_ptr.addr.0.i, i32 1
  %18 = ptrtoint ptr %s1_ptr.addr.0.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s1_ptr.addr.0.i, align 4
  %add3.i = add i32 %19, 1
  %incdec.ptr4.i = getelementptr i32, ptr %res_ptr.addr.0.i, i32 1
  %20 = ptrtoint ptr %res_ptr.addr.0.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add3.i, ptr %res_ptr.addr.0.i, align 4
  %tobool5.not.i = icmp eq i32 %add3.i, 0
  br i1 %tobool5.not.i, label %while.body.i.while.cond.i_crit_edge, label %while.body.i.leave.i_crit_edge

while.body.i.leave.i_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %leave.i

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.cond.i

leave.i:                                          ; preds = %while.body.i.leave.i_crit_edge, %if.then14.leave.i_crit_edge
  %res_ptr.addr.1.i = phi ptr [ %incdec.ptr1.i, %if.then14.leave.i_crit_edge ], [ %incdec.ptr4.i, %while.body.i.leave.i_crit_edge ]
  %s1_ptr.addr.1.i = phi ptr [ %incdec.ptr.i, %if.then14.leave.i_crit_edge ], [ %incdec.ptr2.i, %while.body.i.leave.i_crit_edge ]
  %s1_size.addr.1.i = phi i32 [ %14, %if.then14.leave.i_crit_edge ], [ %dec.i, %while.body.i.leave.i_crit_edge ]
  %cmp8.not.i = icmp eq ptr %res_ptr.addr.1.i, %s1_ptr.addr.1.i
  br i1 %cmp8.not.i, label %leave.i.mpihelp_add_1.exit_crit_edge, label %for.cond.preheader.i

leave.i.mpihelp_add_1.exit_crit_edge:             ; preds = %leave.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %mpihelp_add_1.exit

for.cond.preheader.i:                             ; preds = %leave.i
  %sub.i = add i32 %s1_size.addr.1.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp1030.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp1030.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.mpihelp_add_1.exit_crit_edge

for.cond.preheader.i.mpihelp_add_1.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %mpihelp_add_1.exit

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.031.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %s1_ptr.addr.1.i, i32 %i.031.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  %arrayidx11.i = getelementptr i32, ptr %res_ptr.addr.1.i, i32 %i.031.i
  %23 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx11.i, align 4
  %inc.i = add nuw nsw i32 %i.031.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %sub.i
  br i1 %exitcond.not.i, label %for.body.i.mpihelp_add_1.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i

for.body.i.mpihelp_add_1.exit_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %mpihelp_add_1.exit

mpihelp_add_1.exit:                               ; preds = %for.body.i.mpihelp_add_1.exit_crit_edge, %for.cond.preheader.i.mpihelp_add_1.exit_crit_edge, %leave.i.mpihelp_add_1.exit_crit_edge, %while.cond.i.mpihelp_add_1.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %leave.i.mpihelp_add_1.exit_crit_edge ], [ 0, %for.cond.preheader.i.mpihelp_add_1.exit_crit_edge ], [ 0, %for.body.i.mpihelp_add_1.exit_crit_edge ], [ 1, %while.cond.i.mpihelp_add_1.exit_crit_edge ]
  %24 = ptrtoint ptr %d15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %d15, align 4
  %26 = ptrtoint ptr %nlimbs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nlimbs, align 4
  %arrayidx21 = getelementptr i32, ptr %25, i32 %27
  %28 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %retval.0.i, ptr %arrayidx21, align 4
  %29 = load i32, ptr %nlimbs, align 4
  %add23 = add i32 %29, %retval.0.i
  br label %if.end56

if.else:                                          ; preds = %if.end11
  %30 = ptrtoint ptr %nlimbs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nlimbs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp27 = icmp eq i32 %31, 1
  br i1 %cmp27, label %land.lhs.true, label %if.else.if.else40_crit_edge

if.else.if.else40_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else40

land.lhs.true:                                    ; preds = %if.else
  %d29 = getelementptr inbounds %struct.gcry_mpi, ptr %u, i32 0, i32 5
  %32 = ptrtoint ptr %d29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %d29, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %vval)
  %cmp31 = icmp ult i32 %35, %vval
  br i1 %cmp31, label %if.then33, label %land.lhs.true.if.else40_crit_edge

land.lhs.true.if.else40_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else40

if.then33:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  %sub = sub i32 %vval, %35
  %d36 = getelementptr inbounds %struct.gcry_mpi, ptr %w, i32 0, i32 5
  %36 = ptrtoint ptr %d36 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %d36, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %sub, ptr %37, align 4
  br label %if.end56

if.else40:                                        ; preds = %land.lhs.true.if.else40_crit_edge, %if.else.if.else40_crit_edge
  %d41 = getelementptr inbounds %struct.gcry_mpi, ptr %w, i32 0, i32 5
  %39 = ptrtoint ptr %d41 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %d41, align 4
  %d42 = getelementptr inbounds %struct.gcry_mpi, ptr %u, i32 0, i32 5
  %41 = ptrtoint ptr %d42 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %d42, align 4
  %incdec.ptr.i94 = getelementptr i32, ptr %42, i32 1
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %sub.i95 = sub i32 %44, %vval
  %incdec.ptr1.i96 = getelementptr i32, ptr %40, i32 1
  %45 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %sub.i95, ptr %40, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %vval)
  %cmp.i97 = icmp ult i32 %44, %vval
  br i1 %cmp.i97, label %if.else40.while.cond.i103_crit_edge, label %if.else40.leave.i112_crit_edge

if.else40.leave.i112_crit_edge:                   ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #4
  br label %leave.i112

if.else40.while.cond.i103_crit_edge:              ; preds = %if.else40
  br label %while.cond.i103

while.cond.i103:                                  ; preds = %while.body.i107.while.cond.i103_crit_edge, %if.else40.while.cond.i103_crit_edge
  %res_ptr.addr.0.i98 = phi ptr [ %incdec.ptr4.i105, %while.body.i107.while.cond.i103_crit_edge ], [ %incdec.ptr1.i96, %if.else40.while.cond.i103_crit_edge ]
  %s1_ptr.addr.0.i99 = phi ptr [ %incdec.ptr2.i104, %while.body.i107.while.cond.i103_crit_edge ], [ %incdec.ptr.i94, %if.else40.while.cond.i103_crit_edge ]
  %s1_size.addr.0.i100 = phi i32 [ %dec.i101, %while.body.i107.while.cond.i103_crit_edge ], [ %31, %if.else40.while.cond.i103_crit_edge ]
  %dec.i101 = add i32 %s1_size.addr.0.i100, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i101)
  %tobool.not.i102 = icmp eq i32 %dec.i101, 0
  br i1 %tobool.not.i102, label %while.cond.i103.mpihelp_sub_1.exit_crit_edge, label %while.body.i107

while.cond.i103.mpihelp_sub_1.exit_crit_edge:     ; preds = %while.cond.i103
  call void @__sanitizer_cov_trace_pc() #4
  br label %mpihelp_sub_1.exit

while.body.i107:                                  ; preds = %while.cond.i103
  %incdec.ptr2.i104 = getelementptr i32, ptr %s1_ptr.addr.0.i99, i32 1
  %46 = ptrtoint ptr %s1_ptr.addr.0.i99 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %s1_ptr.addr.0.i99, align 4
  %sub3.i = add i32 %47, -1
  %incdec.ptr4.i105 = getelementptr i32, ptr %res_ptr.addr.0.i98, i32 1
  %48 = ptrtoint ptr %res_ptr.addr.0.i98 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %sub3.i, ptr %res_ptr.addr.0.i98, align 4
  %tobool5.not.i106 = icmp eq i32 %47, 0
  br i1 %tobool5.not.i106, label %while.body.i107.while.cond.i103_crit_edge, label %while.body.i107.leave.i112_crit_edge

while.body.i107.leave.i112_crit_edge:             ; preds = %while.body.i107
  call void @__sanitizer_cov_trace_pc() #4
  br label %leave.i112

while.body.i107.while.cond.i103_crit_edge:        ; preds = %while.body.i107
  call void @__sanitizer_cov_trace_pc() #4
  br label %while.cond.i103

leave.i112:                                       ; preds = %while.body.i107.leave.i112_crit_edge, %if.else40.leave.i112_crit_edge
  %res_ptr.addr.1.i108 = phi ptr [ %incdec.ptr1.i96, %if.else40.leave.i112_crit_edge ], [ %incdec.ptr4.i105, %while.body.i107.leave.i112_crit_edge ]
  %s1_ptr.addr.1.i109 = phi ptr [ %incdec.ptr.i94, %if.else40.leave.i112_crit_edge ], [ %incdec.ptr2.i104, %while.body.i107.leave.i112_crit_edge ]
  %s1_size.addr.1.i110 = phi i32 [ %31, %if.else40.leave.i112_crit_edge ], [ %dec.i101, %while.body.i107.leave.i112_crit_edge ]
  %cmp8.not.i111 = icmp eq ptr %res_ptr.addr.1.i108, %s1_ptr.addr.1.i109
  br i1 %cmp8.not.i111, label %leave.i112.mpihelp_sub_1.exit_crit_edge, label %for.cond.preheader.i113

leave.i112.mpihelp_sub_1.exit_crit_edge:          ; preds = %leave.i112
  call void @__sanitizer_cov_trace_pc() #4
  br label %mpihelp_sub_1.exit

for.cond.preheader.i113:                          ; preds = %leave.i112
  %sub10.i = add i32 %s1_size.addr.1.i110, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub10.i)
  %cmp113.i = icmp sgt i32 %sub10.i, 0
  br i1 %cmp113.i, label %for.cond.preheader.i113.for.body.i117_crit_edge, label %for.cond.preheader.i113.mpihelp_sub_1.exit_crit_edge

for.cond.preheader.i113.mpihelp_sub_1.exit_crit_edge: ; preds = %for.cond.preheader.i113
  call void @__sanitizer_cov_trace_pc() #4
  br label %mpihelp_sub_1.exit

for.cond.preheader.i113.for.body.i117_crit_edge:  ; preds = %for.cond.preheader.i113
  br label %for.body.i117

for.body.i117:                                    ; preds = %for.body.i117.for.body.i117_crit_edge, %for.cond.preheader.i113.for.body.i117_crit_edge
  %i.04.i = phi i32 [ %inc.i115, %for.body.i117.for.body.i117_crit_edge ], [ 0, %for.cond.preheader.i113.for.body.i117_crit_edge ]
  %arrayidx.i114 = getelementptr i32, ptr %s1_ptr.addr.1.i109, i32 %i.04.i
  %49 = ptrtoint ptr %arrayidx.i114 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i114, align 4
  %arrayidx12.i = getelementptr i32, ptr %res_ptr.addr.1.i108, i32 %i.04.i
  %51 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %arrayidx12.i, align 4
  %inc.i115 = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i116 = icmp eq i32 %inc.i115, %sub10.i
  br i1 %exitcond.not.i116, label %for.body.i117.mpihelp_sub_1.exit_crit_edge, label %for.body.i117.for.body.i117_crit_edge

for.body.i117.for.body.i117_crit_edge:            ; preds = %for.body.i117
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i117

for.body.i117.mpihelp_sub_1.exit_crit_edge:       ; preds = %for.body.i117
  call void @__sanitizer_cov_trace_pc() #4
  br label %mpihelp_sub_1.exit

mpihelp_sub_1.exit:                               ; preds = %for.body.i117.mpihelp_sub_1.exit_crit_edge, %for.cond.preheader.i113.mpihelp_sub_1.exit_crit_edge, %leave.i112.mpihelp_sub_1.exit_crit_edge, %while.cond.i103.mpihelp_sub_1.exit_crit_edge
  %52 = ptrtoint ptr %nlimbs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nlimbs, align 4
  %54 = ptrtoint ptr %d41 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %d41, align 4
  %sub48 = add i32 %53, -1
  %arrayidx49 = getelementptr i32, ptr %55, i32 %sub48
  %56 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp50 = icmp eq i32 %57, 0
  %conv51.neg = sext i1 %cmp50 to i32
  %sub52 = add i32 %53, %conv51.neg
  br label %if.end56

if.end56:                                         ; preds = %mpihelp_sub_1.exit, %if.then33, %mpihelp_add_1.exit
  %.sink130 = phi i32 [ 1, %if.then33 ], [ %sub52, %mpihelp_sub_1.exit ], [ %add23, %mpihelp_add_1.exit ]
  %.sink = phi i32 [ 1, %if.then33 ], [ 0, %mpihelp_sub_1.exit ], [ 1, %mpihelp_add_1.exit ]
  %nlimbs38 = getelementptr inbounds %struct.gcry_mpi, ptr %w, i32 0, i32 1
  %58 = ptrtoint ptr %nlimbs38 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %.sink130, ptr %nlimbs38, align 4
  %sign39 = getelementptr inbounds %struct.gcry_mpi, ptr %w, i32 0, i32 3
  %59 = ptrtoint ptr %sign39 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %.sink, ptr %sign39, align 4
  tail call void @mpi_normalize(ptr noundef %w) #2
  br label %return

return:                                           ; preds = %if.end56, %if.end7.return_crit_edge, %if.end, %if.then.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 0, %if.end56 ], [ -12, %if.then.return_crit_edge ], [ -12, %if.end7.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi_resize(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_normalize(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @__ksymtab_mpi_sub_ui, !1, !"__ksymtab_mpi_sub_ui", i1 false, i1 false}
!1 = !{!"../lib/mpi/mpi-sub-ui.c", i32 78, i32 1}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
