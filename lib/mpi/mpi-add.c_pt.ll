; ModuleID = '/llk/IR_all_yes/lib/mpi/mpi-add.c_pt.bc'
source_filename = "../lib/mpi/mpi-add.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mpi_add\22, \22a\22\09"
module asm "\09.weak\09__crc_mpi_add\09\09\09\09"
module asm "\09.long\09__crc_mpi_add\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_add:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_add\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mpi_addm\22, \22a\22\09"
module asm "\09.weak\09__crc_mpi_addm\09\09\09\09"
module asm "\09.long\09__crc_mpi_addm\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_addm:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_addm\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_addm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mpi_subm\22, \22a\22\09"
module asm "\09.weak\09__crc_mpi_subm\09\09\09\09"
module asm "\09.long\09__crc_mpi_subm\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_subm:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_subm\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_subm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.gcry_mpi = type { i32, i32, i32, i32, i32, ptr }

@__kstrtab_mpi_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_add = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_add to i32), ptr @__kstrtab_mpi_add, ptr @__kstrtabns_mpi_add }, section "___ksymtab_gpl+mpi_add", align 4
@__kstrtab_mpi_addm = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_addm = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_addm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_addm to i32), ptr @__kstrtab_mpi_addm, ptr @__kstrtabns_mpi_addm }, section "___ksymtab_gpl+mpi_addm", align 4
@__kstrtab_mpi_subm = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_subm = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_subm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_subm to i32), ptr @__kstrtab_mpi_subm, ptr @__kstrtabns_mpi_subm }, section "___ksymtab_gpl+mpi_subm", align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_mpi_add, ptr @__ksymtab_mpi_addm, ptr @__ksymtab_mpi_subm], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpi_add_ui(ptr noundef %w, ptr nocapture noundef readonly %u, i32 noundef %v) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %u, i32 0, i32 1
  %0 = ptrtoint ptr %nlimbs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nlimbs, align 4
  %sign = getelementptr inbounds %struct.gcry_mpi, ptr %u, i32 0, i32 3
  %2 = ptrtoint ptr %sign to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sign, align 4
  %add = add i32 %1, 1
  %4 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %w, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add)
  %cmp = icmp slt i32 %5, %add
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 @mpi_resize(ptr noundef %w, i32 noundef %add) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %u, i32 0, i32 5
  %6 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d, align 4
  %d1 = getelementptr inbounds %struct.gcry_mpi, ptr %w, i32 0, i32 5
  %8 = ptrtoint ptr %d1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %v, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %v)
  %tobool3.not = icmp ne i32 %v, 0
  %cond = zext i1 %tobool3.not to i32
  br label %if.end24

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool4.not = icmp eq i32 %3, 0
  br i1 %tobool4.not, label %if.then5, label %if.else9

if.then5:                                         ; preds = %if.else
  %incdec.ptr.i = getelementptr i32, ptr %7, i32 1
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %7, align 4
  %add.i = add i32 %12, %v
  %incdec.ptr1.i = getelementptr i32, ptr %9, i32 1
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add.i, ptr %9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %12)
  %cmp.i = icmp ult i32 %add.i, %12
  br i1 %cmp.i, label %if.then5.while.cond.i_crit_edge, label %if.then5.leave.i_crit_edge

if.then5.leave.i_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #5
  br label %leave.i

if.then5.while.cond.i_crit_edge:                  ; preds = %if.then5
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.then5.while.cond.i_crit_edge
  %res_ptr.addr.0.i = phi ptr [ %incdec.ptr4.i, %while.body.i.while.cond.i_crit_edge ], [ %incdec.ptr1.i, %if.then5.while.cond.i_crit_edge ]
  %s1_ptr.addr.0.i = phi ptr [ %incdec.ptr2.i, %while.body.i.while.cond.i_crit_edge ], [ %incdec.ptr.i, %if.then5.while.cond.i_crit_edge ]
  %s1_size.addr.0.i = phi i32 [ %dec.i, %while.body.i.while.cond.i_crit_edge ], [ %1, %if.then5.while.cond.i_crit_edge ]
  %dec.i = add i32 %s1_size.addr.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.cond.i.mpihelp_add_1.exit_crit_edge, label %while.body.i

while.cond.i.mpihelp_add_1.exit_crit_edge:        ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %mpihelp_add_1.exit

while.body.i:                                     ; preds = %while.cond.i
  %incdec.ptr2.i = getelementptr i32, ptr %s1_ptr.addr.0.i, i32 1
  %14 = ptrtoint ptr %s1_ptr.addr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %s1_ptr.addr.0.i, align 4
  %add3.i = add i32 %15, 1
  %incdec.ptr4.i = getelementptr i32, ptr %res_ptr.addr.0.i, i32 1
  %16 = ptrtoint ptr %res_ptr.addr.0.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add3.i, ptr %res_ptr.addr.0.i, align 4
  %tobool5.not.i = icmp eq i32 %add3.i, 0
  br i1 %tobool5.not.i, label %while.body.i.while.cond.i_crit_edge, label %while.body.i.leave.i_crit_edge

while.body.i.leave.i_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %leave.i

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.i

leave.i:                                          ; preds = %while.body.i.leave.i_crit_edge, %if.then5.leave.i_crit_edge
  %res_ptr.addr.1.i = phi ptr [ %incdec.ptr1.i, %if.then5.leave.i_crit_edge ], [ %incdec.ptr4.i, %while.body.i.leave.i_crit_edge ]
  %s1_ptr.addr.1.i = phi ptr [ %incdec.ptr.i, %if.then5.leave.i_crit_edge ], [ %incdec.ptr2.i, %while.body.i.leave.i_crit_edge ]
  %s1_size.addr.1.i = phi i32 [ %1, %if.then5.leave.i_crit_edge ], [ %dec.i, %while.body.i.leave.i_crit_edge ]
  %cmp8.not.i = icmp eq ptr %res_ptr.addr.1.i, %s1_ptr.addr.1.i
  br i1 %cmp8.not.i, label %leave.i.mpihelp_add_1.exit_crit_edge, label %for.cond.preheader.i

leave.i.mpihelp_add_1.exit_crit_edge:             ; preds = %leave.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %mpihelp_add_1.exit

for.cond.preheader.i:                             ; preds = %leave.i
  %sub.i = add i32 %s1_size.addr.1.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp1030.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp1030.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.mpihelp_add_1.exit_crit_edge

for.cond.preheader.i.mpihelp_add_1.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %mpihelp_add_1.exit

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.031.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %s1_ptr.addr.1.i, i32 %i.031.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  %arrayidx11.i = getelementptr i32, ptr %res_ptr.addr.1.i, i32 %i.031.i
  %19 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx11.i, align 4
  %inc.i = add nuw nsw i32 %i.031.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %sub.i
  br i1 %exitcond.not.i, label %for.body.i.mpihelp_add_1.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.body.i.mpihelp_add_1.exit_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %mpihelp_add_1.exit

mpihelp_add_1.exit:                               ; preds = %for.body.i.mpihelp_add_1.exit_crit_edge, %for.cond.preheader.i.mpihelp_add_1.exit_crit_edge, %leave.i.mpihelp_add_1.exit_crit_edge, %while.cond.i.mpihelp_add_1.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %leave.i.mpihelp_add_1.exit_crit_edge ], [ 0, %for.cond.preheader.i.mpihelp_add_1.exit_crit_edge ], [ 0, %for.body.i.mpihelp_add_1.exit_crit_edge ], [ 1, %while.cond.i.mpihelp_add_1.exit_crit_edge ]
  %arrayidx7 = getelementptr i32, ptr %9, i32 %1
  %20 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %retval.0.i, ptr %arrayidx7, align 4
  %add8 = add i32 %retval.0.i, %1
  br label %if.end24

if.else9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp10 = icmp eq i32 %1, 1
  br i1 %cmp10, label %land.lhs.true, label %if.else9.if.else16_crit_edge

if.else9.if.else16_crit_edge:                     ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else16

land.lhs.true:                                    ; preds = %if.else9
  %21 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %v)
  %cmp12 = icmp ult i32 %22, %v
  br i1 %cmp12, label %if.then13, label %land.lhs.true.if.else16_crit_edge

land.lhs.true.if.else16_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else16

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %sub = sub i32 %v, %22
  %23 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub, ptr %9, align 4
  br label %if.end24

if.else16:                                        ; preds = %land.lhs.true.if.else16_crit_edge, %if.else9.if.else16_crit_edge
  %incdec.ptr.i58 = getelementptr i32, ptr %7, i32 1
  %24 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %7, align 4
  %sub.i59 = sub i32 %25, %v
  %incdec.ptr1.i60 = getelementptr i32, ptr %9, i32 1
  %26 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub.i59, ptr %9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %v)
  %cmp.i61 = icmp ult i32 %25, %v
  br i1 %cmp.i61, label %if.else16.while.cond.i67_crit_edge, label %if.else16.leave.i76_crit_edge

if.else16.leave.i76_crit_edge:                    ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #5
  br label %leave.i76

if.else16.while.cond.i67_crit_edge:               ; preds = %if.else16
  br label %while.cond.i67

while.cond.i67:                                   ; preds = %while.body.i71.while.cond.i67_crit_edge, %if.else16.while.cond.i67_crit_edge
  %res_ptr.addr.0.i62 = phi ptr [ %incdec.ptr4.i69, %while.body.i71.while.cond.i67_crit_edge ], [ %incdec.ptr1.i60, %if.else16.while.cond.i67_crit_edge ]
  %s1_ptr.addr.0.i63 = phi ptr [ %incdec.ptr2.i68, %while.body.i71.while.cond.i67_crit_edge ], [ %incdec.ptr.i58, %if.else16.while.cond.i67_crit_edge ]
  %s1_size.addr.0.i64 = phi i32 [ %dec.i65, %while.body.i71.while.cond.i67_crit_edge ], [ %1, %if.else16.while.cond.i67_crit_edge ]
  %dec.i65 = add i32 %s1_size.addr.0.i64, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i65)
  %tobool.not.i66 = icmp eq i32 %dec.i65, 0
  br i1 %tobool.not.i66, label %while.cond.i67.mpihelp_sub_1.exit_crit_edge, label %while.body.i71

while.cond.i67.mpihelp_sub_1.exit_crit_edge:      ; preds = %while.cond.i67
  call void @__sanitizer_cov_trace_pc() #5
  br label %mpihelp_sub_1.exit

while.body.i71:                                   ; preds = %while.cond.i67
  %incdec.ptr2.i68 = getelementptr i32, ptr %s1_ptr.addr.0.i63, i32 1
  %27 = ptrtoint ptr %s1_ptr.addr.0.i63 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %s1_ptr.addr.0.i63, align 4
  %sub3.i = add i32 %28, -1
  %incdec.ptr4.i69 = getelementptr i32, ptr %res_ptr.addr.0.i62, i32 1
  %29 = ptrtoint ptr %res_ptr.addr.0.i62 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub3.i, ptr %res_ptr.addr.0.i62, align 4
  %tobool5.not.i70 = icmp eq i32 %28, 0
  br i1 %tobool5.not.i70, label %while.body.i71.while.cond.i67_crit_edge, label %while.body.i71.leave.i76_crit_edge

while.body.i71.leave.i76_crit_edge:               ; preds = %while.body.i71
  call void @__sanitizer_cov_trace_pc() #5
  br label %leave.i76

while.body.i71.while.cond.i67_crit_edge:          ; preds = %while.body.i71
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.i67

leave.i76:                                        ; preds = %while.body.i71.leave.i76_crit_edge, %if.else16.leave.i76_crit_edge
  %res_ptr.addr.1.i72 = phi ptr [ %incdec.ptr1.i60, %if.else16.leave.i76_crit_edge ], [ %incdec.ptr4.i69, %while.body.i71.leave.i76_crit_edge ]
  %s1_ptr.addr.1.i73 = phi ptr [ %incdec.ptr.i58, %if.else16.leave.i76_crit_edge ], [ %incdec.ptr2.i68, %while.body.i71.leave.i76_crit_edge ]
  %s1_size.addr.1.i74 = phi i32 [ %1, %if.else16.leave.i76_crit_edge ], [ %dec.i65, %while.body.i71.leave.i76_crit_edge ]
  %cmp8.not.i75 = icmp eq ptr %res_ptr.addr.1.i72, %s1_ptr.addr.1.i73
  br i1 %cmp8.not.i75, label %leave.i76.mpihelp_sub_1.exit_crit_edge, label %for.cond.preheader.i77

leave.i76.mpihelp_sub_1.exit_crit_edge:           ; preds = %leave.i76
  call void @__sanitizer_cov_trace_pc() #5
  br label %mpihelp_sub_1.exit

for.cond.preheader.i77:                           ; preds = %leave.i76
  %sub10.i = add i32 %s1_size.addr.1.i74, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub10.i)
  %cmp1131.i = icmp sgt i32 %sub10.i, 0
  br i1 %cmp1131.i, label %for.cond.preheader.i77.for.body.i81_crit_edge, label %for.cond.preheader.i77.mpihelp_sub_1.exit_crit_edge

for.cond.preheader.i77.mpihelp_sub_1.exit_crit_edge: ; preds = %for.cond.preheader.i77
  call void @__sanitizer_cov_trace_pc() #5
  br label %mpihelp_sub_1.exit

for.cond.preheader.i77.for.body.i81_crit_edge:    ; preds = %for.cond.preheader.i77
  br label %for.body.i81

for.body.i81:                                     ; preds = %for.body.i81.for.body.i81_crit_edge, %for.cond.preheader.i77.for.body.i81_crit_edge
  %i.032.i = phi i32 [ %inc.i79, %for.body.i81.for.body.i81_crit_edge ], [ 0, %for.cond.preheader.i77.for.body.i81_crit_edge ]
  %arrayidx.i78 = getelementptr i32, ptr %s1_ptr.addr.1.i73, i32 %i.032.i
  %30 = ptrtoint ptr %arrayidx.i78 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i78, align 4
  %arrayidx12.i = getelementptr i32, ptr %res_ptr.addr.1.i72, i32 %i.032.i
  %32 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx12.i, align 4
  %inc.i79 = add nuw nsw i32 %i.032.i, 1
  %exitcond.not.i80 = icmp eq i32 %inc.i79, %sub10.i
  br i1 %exitcond.not.i80, label %for.body.i81.mpihelp_sub_1.exit_crit_edge, label %for.body.i81.for.body.i81_crit_edge

for.body.i81.for.body.i81_crit_edge:              ; preds = %for.body.i81
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i81

for.body.i81.mpihelp_sub_1.exit_crit_edge:        ; preds = %for.body.i81
  call void @__sanitizer_cov_trace_pc() #5
  br label %mpihelp_sub_1.exit

mpihelp_sub_1.exit:                               ; preds = %for.body.i81.mpihelp_sub_1.exit_crit_edge, %for.cond.preheader.i77.mpihelp_sub_1.exit_crit_edge, %leave.i76.mpihelp_sub_1.exit_crit_edge, %while.cond.i67.mpihelp_sub_1.exit_crit_edge
  %sub18 = add i32 %1, -1
  %arrayidx19 = getelementptr i32, ptr %9, i32 %sub18
  %33 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp20 = icmp eq i32 %34, 0
  %conv.neg = sext i1 %cmp20 to i32
  %sub21 = add i32 %1, %conv.neg
  br label %if.end24

if.end24:                                         ; preds = %mpihelp_sub_1.exit, %if.then13, %mpihelp_add_1.exit, %if.then2
  %wsize.0 = phi i32 [ 1, %if.then13 ], [ %sub21, %mpihelp_sub_1.exit ], [ %add8, %mpihelp_add_1.exit ], [ %cond, %if.then2 ]
  %wsign.0 = phi i32 [ 0, %if.then13 ], [ 1, %mpihelp_sub_1.exit ], [ 0, %mpihelp_add_1.exit ], [ 0, %if.then2 ]
  %nlimbs25 = getelementptr inbounds %struct.gcry_mpi, ptr %w, i32 0, i32 1
  %35 = ptrtoint ptr %nlimbs25 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %wsize.0, ptr %nlimbs25, align 4
  %sign26 = getelementptr inbounds %struct.gcry_mpi, ptr %w, i32 0, i32 3
  %36 = ptrtoint ptr %sign26 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %wsign.0, ptr %sign26, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi_resize(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpi_add(ptr noundef %w, ptr nocapture noundef readonly %u, ptr nocapture noundef readonly %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %u, i32 0, i32 1
  %0 = ptrtoint ptr %nlimbs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nlimbs, align 4
  %nlimbs1 = getelementptr inbounds %struct.gcry_mpi, ptr %v, i32 0, i32 1
  %2 = ptrtoint ptr %nlimbs1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nlimbs1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %sign = getelementptr inbounds %struct.gcry_mpi, ptr %v, i32 0, i32 3
  %4 = ptrtoint ptr %sign to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sign, align 4
  %sign4 = getelementptr inbounds %struct.gcry_mpi, ptr %u, i32 0, i32 3
  %6 = ptrtoint ptr %sign4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sign4, align 4
  %add = add i32 %3, 1
  %8 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %w, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %add)
  %cmp5 = icmp slt i32 %9, %add
  br i1 %cmp5, label %if.then.if.end23.sink.split_crit_edge, label %if.then.if.end23_crit_edge

if.then.if.end23_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23

if.then.if.end23.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23.sink.split

if.else:                                          ; preds = %entry
  %sign9 = getelementptr inbounds %struct.gcry_mpi, ptr %u, i32 0, i32 3
  %10 = ptrtoint ptr %sign9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sign9, align 4
  %sign11 = getelementptr inbounds %struct.gcry_mpi, ptr %v, i32 0, i32 3
  %12 = ptrtoint ptr %sign11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sign11, align 4
  %add12 = add i32 %1, 1
  %14 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %w, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %add12)
  %cmp15 = icmp slt i32 %15, %add12
  br i1 %cmp15, label %if.else.if.end23.sink.split_crit_edge, label %if.else.if.end23_crit_edge

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23

if.else.if.end23.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23.sink.split

if.end23.sink.split:                              ; preds = %if.else.if.end23.sink.split_crit_edge, %if.then.if.end23.sink.split_crit_edge
  %add12.sink = phi i32 [ %add, %if.then.if.end23.sink.split_crit_edge ], [ %add12, %if.else.if.end23.sink.split_crit_edge ]
  %v.pn.ph = phi ptr [ %v, %if.then.if.end23.sink.split_crit_edge ], [ %u, %if.else.if.end23.sink.split_crit_edge ]
  %u.pn.ph = phi ptr [ %u, %if.then.if.end23.sink.split_crit_edge ], [ %v, %if.else.if.end23.sink.split_crit_edge ]
  %usize.0.ph = phi i32 [ %3, %if.then.if.end23.sink.split_crit_edge ], [ %1, %if.else.if.end23.sink.split_crit_edge ]
  %vsize.0.ph = phi i32 [ %1, %if.then.if.end23.sink.split_crit_edge ], [ %3, %if.else.if.end23.sink.split_crit_edge ]
  %usign.0.ph = phi i32 [ %5, %if.then.if.end23.sink.split_crit_edge ], [ %11, %if.else.if.end23.sink.split_crit_edge ]
  %vsign.0.ph = phi i32 [ %7, %if.then.if.end23.sink.split_crit_edge ], [ %13, %if.else.if.end23.sink.split_crit_edge ]
  %call17 = tail call i32 @mpi_resize(ptr noundef %w, i32 noundef %add12.sink) #3
  br label %if.end23

if.end23:                                         ; preds = %if.end23.sink.split, %if.else.if.end23_crit_edge, %if.then.if.end23_crit_edge
  %v.pn = phi ptr [ %v, %if.then.if.end23_crit_edge ], [ %u, %if.else.if.end23_crit_edge ], [ %v.pn.ph, %if.end23.sink.split ]
  %u.pn = phi ptr [ %u, %if.then.if.end23_crit_edge ], [ %v, %if.else.if.end23_crit_edge ], [ %u.pn.ph, %if.end23.sink.split ]
  %usize.0 = phi i32 [ %3, %if.then.if.end23_crit_edge ], [ %1, %if.else.if.end23_crit_edge ], [ %usize.0.ph, %if.end23.sink.split ]
  %vsize.0 = phi i32 [ %1, %if.then.if.end23_crit_edge ], [ %3, %if.else.if.end23_crit_edge ], [ %vsize.0.ph, %if.end23.sink.split ]
  %usign.0 = phi i32 [ %5, %if.then.if.end23_crit_edge ], [ %11, %if.else.if.end23_crit_edge ], [ %usign.0.ph, %if.end23.sink.split ]
  %vsign.0 = phi i32 [ %7, %if.then.if.end23_crit_edge ], [ %13, %if.else.if.end23_crit_edge ], [ %vsign.0.ph, %if.end23.sink.split ]
  %vp.0.in = getelementptr inbounds %struct.gcry_mpi, ptr %u.pn, i32 0, i32 5
  %16 = ptrtoint ptr %vp.0.in to i32
  call void @__asan_load4_noabort(i32 %16)
  %vp.0 = load ptr, ptr %vp.0.in, align 4
  %up.0.in = getelementptr inbounds %struct.gcry_mpi, ptr %v.pn, i32 0, i32 5
  %17 = ptrtoint ptr %up.0.in to i32
  call void @__asan_load4_noabort(i32 %17)
  %up.0 = load ptr, ptr %up.0.in, align 4
  %d24 = getelementptr inbounds %struct.gcry_mpi, ptr %w, i32 0, i32 5
  %18 = ptrtoint ptr %d24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %d24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vsize.0)
  %tobool.not = icmp eq i32 %vsize.0, 0
  br i1 %tobool.not, label %for.cond.preheader, label %if.else31

for.cond.preheader:                               ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %usize.0)
  %cmp27210 = icmp sgt i32 %usize.0, 0
  br i1 %cmp27210, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.end94_crit_edge

for.cond.preheader.if.end94_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end94

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %_i.0211 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %up.0, i32 %_i.0211
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %arrayidx28 = getelementptr i32, ptr %19, i32 %_i.0211
  %22 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx28, align 4
  %inc = add nuw nsw i32 %_i.0211, 1
  %exitcond.not = icmp eq i32 %inc, %usize.0
  br i1 %exitcond.not, label %for.body.if.end94_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.body.if.end94_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end94

if.else31:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_cmp4(i32 %usign.0, i32 %vsign.0)
  %cmp32.not = icmp eq i32 %usign.0, %vsign.0
  br i1 %cmp32.not, label %if.else86, label %if.then33

if.then33:                                        ; preds = %if.else31
  call void @__sanitizer_cov_trace_cmp4(i32 %usize.0, i32 %vsize.0)
  %cmp34.not = icmp eq i32 %usize.0, %vsize.0
  br i1 %cmp34.not, label %if.else45, label %if.then2.i

if.then2.i:                                       ; preds = %if.then33
  %call.i = tail call i32 @mpihelp_sub_n(ptr noundef %19, ptr noundef %up.0, ptr noundef %vp.0, i32 noundef %vsize.0) #3
  %sub.i = sub i32 %usize.0, %vsize.0
  %add.ptr.i = getelementptr i32, ptr %19, i32 %vsize.0
  %add.ptr3.i = getelementptr i32, ptr %up.0, i32 %vsize.0
  %incdec.ptr.i.i = getelementptr i32, ptr %add.ptr3.i, i32 1
  %23 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr3.i, align 4
  %sub.i.i = sub i32 %24, %call.i
  %incdec.ptr1.i.i = getelementptr i32, ptr %add.ptr.i, i32 1
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub.i.i, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %call.i)
  %cmp.i.i = icmp ult i32 %24, %call.i
  br i1 %cmp.i.i, label %if.then2.i.while.cond.i.i_crit_edge, label %if.then2.i.leave.i.i_crit_edge

if.then2.i.leave.i.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %leave.i.i

if.then2.i.while.cond.i.i_crit_edge:              ; preds = %if.then2.i
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %if.then2.i.while.cond.i.i_crit_edge
  %res_ptr.addr.0.i.i = phi ptr [ %incdec.ptr4.i.i, %while.body.i.i.while.cond.i.i_crit_edge ], [ %incdec.ptr1.i.i, %if.then2.i.while.cond.i.i_crit_edge ]
  %s1_ptr.addr.0.i.i = phi ptr [ %incdec.ptr2.i.i, %while.body.i.i.while.cond.i.i_crit_edge ], [ %incdec.ptr.i.i, %if.then2.i.while.cond.i.i_crit_edge ]
  %s1_size.addr.0.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.cond.i.i_crit_edge ], [ %sub.i, %if.then2.i.while.cond.i.i_crit_edge ]
  %dec.i.i = add i32 %s1_size.addr.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %while.cond.i.i.mpihelp_sub.exit_crit_edge, label %while.body.i.i

while.cond.i.i.mpihelp_sub.exit_crit_edge:        ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %mpihelp_sub.exit

while.body.i.i:                                   ; preds = %while.cond.i.i
  %incdec.ptr2.i.i = getelementptr i32, ptr %s1_ptr.addr.0.i.i, i32 1
  %26 = ptrtoint ptr %s1_ptr.addr.0.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %s1_ptr.addr.0.i.i, align 4
  %sub3.i.i = add i32 %27, -1
  %incdec.ptr4.i.i = getelementptr i32, ptr %res_ptr.addr.0.i.i, i32 1
  %28 = ptrtoint ptr %res_ptr.addr.0.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub3.i.i, ptr %res_ptr.addr.0.i.i, align 4
  %tobool5.not.i.i = icmp eq i32 %27, 0
  br i1 %tobool5.not.i.i, label %while.body.i.i.while.cond.i.i_crit_edge, label %while.body.i.i.leave.i.i_crit_edge

while.body.i.i.leave.i.i_crit_edge:               ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %leave.i.i

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.i.i

leave.i.i:                                        ; preds = %while.body.i.i.leave.i.i_crit_edge, %if.then2.i.leave.i.i_crit_edge
  %res_ptr.addr.1.i.i = phi ptr [ %incdec.ptr1.i.i, %if.then2.i.leave.i.i_crit_edge ], [ %incdec.ptr4.i.i, %while.body.i.i.leave.i.i_crit_edge ]
  %s1_ptr.addr.1.i.i = phi ptr [ %incdec.ptr.i.i, %if.then2.i.leave.i.i_crit_edge ], [ %incdec.ptr2.i.i, %while.body.i.i.leave.i.i_crit_edge ]
  %s1_size.addr.1.i.i = phi i32 [ %sub.i, %if.then2.i.leave.i.i_crit_edge ], [ %dec.i.i, %while.body.i.i.leave.i.i_crit_edge ]
  %cmp8.not.i.i = icmp eq ptr %res_ptr.addr.1.i.i, %s1_ptr.addr.1.i.i
  br i1 %cmp8.not.i.i, label %leave.i.i.mpihelp_sub.exit_crit_edge, label %for.cond.preheader.i.i

leave.i.i.mpihelp_sub.exit_crit_edge:             ; preds = %leave.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %mpihelp_sub.exit

for.cond.preheader.i.i:                           ; preds = %leave.i.i
  %sub10.i.i = add i32 %s1_size.addr.1.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub10.i.i)
  %cmp1131.i.i = icmp sgt i32 %sub10.i.i, 0
  br i1 %cmp1131.i.i, label %for.cond.preheader.i.i.for.body.i.i_crit_edge, label %for.cond.preheader.i.i.mpihelp_sub.exit_crit_edge

for.cond.preheader.i.i.mpihelp_sub.exit_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %mpihelp_sub.exit

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.032.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i32, ptr %s1_ptr.addr.1.i.i, i32 %i.032.i.i
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx12.i.i = getelementptr i32, ptr %res_ptr.addr.1.i.i, i32 %i.032.i.i
  %31 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %arrayidx12.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.032.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %sub10.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.mpihelp_sub.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i.i

for.body.i.i.mpihelp_sub.exit_crit_edge:          ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %mpihelp_sub.exit

mpihelp_sub.exit:                                 ; preds = %for.body.i.i.mpihelp_sub.exit_crit_edge, %for.cond.preheader.i.i.mpihelp_sub.exit_crit_edge, %leave.i.i.mpihelp_sub.exit_crit_edge, %while.cond.i.i.mpihelp_sub.exit_crit_edge
  %smin = call i32 @llvm.smin.i32(i32 %usize.0, i32 0)
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %mpihelp_sub.exit
  %wsize.0 = phi i32 [ %usize.0, %mpihelp_sub.exit ], [ %sub, %while.body.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wsize.0)
  %cmp38 = icmp sgt i32 %wsize.0, 0
  br i1 %cmp38, label %while.body, label %while.cond.if.end94_crit_edge

while.cond.if.end94_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end94

while.body:                                       ; preds = %while.cond
  %sub = add nsw i32 %wsize.0, -1
  %arrayidx39 = getelementptr i32, ptr %19, i32 %sub
  %32 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx39, align 4
  %tobool40.not = icmp eq i32 %33, 0
  br i1 %tobool40.not, label %while.body.while.cond_crit_edge, label %while.body.if.end94_crit_edge

while.body.if.end94_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end94

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond

if.else45:                                        ; preds = %if.then33
  %call46 = tail call i32 @mpihelp_cmp(ptr noundef %up.0, ptr noundef %vp.0, i32 noundef %usize.0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.then48, label %if.else66

if.then48:                                        ; preds = %if.else45
  %call49 = tail call i32 @mpihelp_sub_n(ptr noundef %19, ptr noundef %vp.0, ptr noundef %up.0, i32 noundef %usize.0) #3
  %smin218 = call i32 @llvm.smin.i32(i32 %usize.0, i32 0)
  br label %while.cond51

while.cond51:                                     ; preds = %while.body53.while.cond51_crit_edge, %if.then48
  %wsize.1 = phi i32 [ %usize.0, %if.then48 ], [ %sub54, %while.body53.while.cond51_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wsize.1)
  %cmp52 = icmp sgt i32 %wsize.1, 0
  br i1 %cmp52, label %while.body53, label %while.cond51.do.end62_crit_edge

while.cond51.do.end62_crit_edge:                  ; preds = %while.cond51
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end62

while.body53:                                     ; preds = %while.cond51
  %sub54 = add nsw i32 %wsize.1, -1
  %arrayidx55 = getelementptr i32, ptr %19, i32 %sub54
  %34 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx55, align 4
  %tobool56.not = icmp eq i32 %35, 0
  br i1 %tobool56.not, label %while.body53.while.cond51_crit_edge, label %while.body53.do.end62_crit_edge

while.body53.do.end62_crit_edge:                  ; preds = %while.body53
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end62

while.body53.while.cond51_crit_edge:              ; preds = %while.body53
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond51

do.end62:                                         ; preds = %while.body53.do.end62_crit_edge, %while.cond51.do.end62_crit_edge
  %wsize.1.lcssa = phi i32 [ %wsize.1, %while.body53.do.end62_crit_edge ], [ %smin218, %while.cond51.do.end62_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %usign.0)
  %tobool63.not = icmp eq i32 %usign.0, 0
  %spec.select = zext i1 %tobool63.not to i32
  br label %if.end94

if.else66:                                        ; preds = %if.else45
  %call67 = tail call i32 @mpihelp_sub_n(ptr noundef %19, ptr noundef %up.0, ptr noundef %vp.0, i32 noundef %usize.0) #3
  %smin217 = call i32 @llvm.smin.i32(i32 %usize.0, i32 0)
  br label %while.cond69

while.cond69:                                     ; preds = %while.body71.while.cond69_crit_edge, %if.else66
  %wsize.2 = phi i32 [ %usize.0, %if.else66 ], [ %sub72, %while.body71.while.cond69_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wsize.2)
  %cmp70 = icmp sgt i32 %wsize.2, 0
  br i1 %cmp70, label %while.body71, label %while.cond69.do.end80_crit_edge

while.cond69.do.end80_crit_edge:                  ; preds = %while.cond69
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end80

while.body71:                                     ; preds = %while.cond69
  %sub72 = add nsw i32 %wsize.2, -1
  %arrayidx73 = getelementptr i32, ptr %19, i32 %sub72
  %36 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx73, align 4
  %tobool74.not = icmp eq i32 %37, 0
  br i1 %tobool74.not, label %while.body71.while.cond69_crit_edge, label %while.body71.do.end80_crit_edge

while.body71.do.end80_crit_edge:                  ; preds = %while.body71
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end80

while.body71.while.cond69_crit_edge:              ; preds = %while.body71
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond69

do.end80:                                         ; preds = %while.body71.do.end80_crit_edge, %while.cond69.do.end80_crit_edge
  %wsize.2.lcssa = phi i32 [ %wsize.2, %while.body71.do.end80_crit_edge ], [ %smin217, %while.cond69.do.end80_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %usign.0)
  %tobool81.not = icmp ne i32 %usign.0, 0
  %spec.select173 = zext i1 %tobool81.not to i32
  br label %if.end94

if.else86:                                        ; preds = %if.else31
  %call.i175 = tail call i32 @mpihelp_add_n(ptr noundef %19, ptr noundef %up.0, ptr noundef %vp.0, i32 noundef %vsize.0) #3
  call void @__sanitizer_cov_trace_cmp4(i32 %usize.0, i32 %vsize.0)
  %tobool1.not.i176 = icmp eq i32 %usize.0, %vsize.0
  br i1 %tobool1.not.i176, label %if.else86.mpihelp_add.exit_crit_edge, label %if.then2.i183

if.else86.mpihelp_add.exit_crit_edge:             ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #5
  br label %mpihelp_add.exit

if.then2.i183:                                    ; preds = %if.else86
  %sub.i177 = sub i32 %usize.0, %vsize.0
  %add.ptr.i178 = getelementptr i32, ptr %19, i32 %vsize.0
  %add.ptr3.i179 = getelementptr i32, ptr %up.0, i32 %vsize.0
  %incdec.ptr.i.i180 = getelementptr i32, ptr %add.ptr3.i179, i32 1
  %38 = ptrtoint ptr %add.ptr3.i179 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr3.i179, align 4
  %add.i.i = add i32 %39, %call.i175
  %incdec.ptr1.i.i181 = getelementptr i32, ptr %add.ptr.i178, i32 1
  %40 = ptrtoint ptr %add.ptr.i178 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add.i.i, ptr %add.ptr.i178, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %39)
  %cmp.i.i182 = icmp ult i32 %add.i.i, %39
  br i1 %cmp.i.i182, label %if.then2.i183.while.cond.i.i189_crit_edge, label %if.then2.i183.leave.i.i198_crit_edge

if.then2.i183.leave.i.i198_crit_edge:             ; preds = %if.then2.i183
  call void @__sanitizer_cov_trace_pc() #5
  br label %leave.i.i198

if.then2.i183.while.cond.i.i189_crit_edge:        ; preds = %if.then2.i183
  br label %while.cond.i.i189

while.cond.i.i189:                                ; preds = %while.body.i.i193.while.cond.i.i189_crit_edge, %if.then2.i183.while.cond.i.i189_crit_edge
  %res_ptr.addr.0.i.i184 = phi ptr [ %incdec.ptr4.i.i191, %while.body.i.i193.while.cond.i.i189_crit_edge ], [ %incdec.ptr1.i.i181, %if.then2.i183.while.cond.i.i189_crit_edge ]
  %s1_ptr.addr.0.i.i185 = phi ptr [ %incdec.ptr2.i.i190, %while.body.i.i193.while.cond.i.i189_crit_edge ], [ %incdec.ptr.i.i180, %if.then2.i183.while.cond.i.i189_crit_edge ]
  %s1_size.addr.0.i.i186 = phi i32 [ %dec.i.i187, %while.body.i.i193.while.cond.i.i189_crit_edge ], [ %sub.i177, %if.then2.i183.while.cond.i.i189_crit_edge ]
  %dec.i.i187 = add i32 %s1_size.addr.0.i.i186, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i187)
  %tobool.not.i.i188 = icmp eq i32 %dec.i.i187, 0
  br i1 %tobool.not.i.i188, label %while.cond.i.i189.mpihelp_add.exit_crit_edge, label %while.body.i.i193

while.cond.i.i189.mpihelp_add.exit_crit_edge:     ; preds = %while.cond.i.i189
  call void @__sanitizer_cov_trace_pc() #5
  br label %mpihelp_add.exit

while.body.i.i193:                                ; preds = %while.cond.i.i189
  %incdec.ptr2.i.i190 = getelementptr i32, ptr %s1_ptr.addr.0.i.i185, i32 1
  %41 = ptrtoint ptr %s1_ptr.addr.0.i.i185 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %s1_ptr.addr.0.i.i185, align 4
  %add3.i.i = add i32 %42, 1
  %incdec.ptr4.i.i191 = getelementptr i32, ptr %res_ptr.addr.0.i.i184, i32 1
  %43 = ptrtoint ptr %res_ptr.addr.0.i.i184 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add3.i.i, ptr %res_ptr.addr.0.i.i184, align 4
  %tobool5.not.i.i192 = icmp eq i32 %add3.i.i, 0
  br i1 %tobool5.not.i.i192, label %while.body.i.i193.while.cond.i.i189_crit_edge, label %while.body.i.i193.leave.i.i198_crit_edge

while.body.i.i193.leave.i.i198_crit_edge:         ; preds = %while.body.i.i193
  call void @__sanitizer_cov_trace_pc() #5
  br label %leave.i.i198

while.body.i.i193.while.cond.i.i189_crit_edge:    ; preds = %while.body.i.i193
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond.i.i189

leave.i.i198:                                     ; preds = %while.body.i.i193.leave.i.i198_crit_edge, %if.then2.i183.leave.i.i198_crit_edge
  %res_ptr.addr.1.i.i194 = phi ptr [ %incdec.ptr1.i.i181, %if.then2.i183.leave.i.i198_crit_edge ], [ %incdec.ptr4.i.i191, %while.body.i.i193.leave.i.i198_crit_edge ]
  %s1_ptr.addr.1.i.i195 = phi ptr [ %incdec.ptr.i.i180, %if.then2.i183.leave.i.i198_crit_edge ], [ %incdec.ptr2.i.i190, %while.body.i.i193.leave.i.i198_crit_edge ]
  %s1_size.addr.1.i.i196 = phi i32 [ %sub.i177, %if.then2.i183.leave.i.i198_crit_edge ], [ %dec.i.i187, %while.body.i.i193.leave.i.i198_crit_edge ]
  %cmp8.not.i.i197 = icmp eq ptr %res_ptr.addr.1.i.i194, %s1_ptr.addr.1.i.i195
  br i1 %cmp8.not.i.i197, label %leave.i.i198.mpihelp_add.exit_crit_edge, label %for.cond.preheader.i.i200

leave.i.i198.mpihelp_add.exit_crit_edge:          ; preds = %leave.i.i198
  call void @__sanitizer_cov_trace_pc() #5
  br label %mpihelp_add.exit

for.cond.preheader.i.i200:                        ; preds = %leave.i.i198
  %sub.i.i199 = add i32 %s1_size.addr.1.i.i196, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i199)
  %cmp1030.i.i = icmp sgt i32 %sub.i.i199, 0
  br i1 %cmp1030.i.i, label %for.cond.preheader.i.i200.for.body.i.i204_crit_edge, label %for.cond.preheader.i.i200.mpihelp_add.exit_crit_edge

for.cond.preheader.i.i200.mpihelp_add.exit_crit_edge: ; preds = %for.cond.preheader.i.i200
  call void @__sanitizer_cov_trace_pc() #5
  br label %mpihelp_add.exit

for.cond.preheader.i.i200.for.body.i.i204_crit_edge: ; preds = %for.cond.preheader.i.i200
  br label %for.body.i.i204

for.body.i.i204:                                  ; preds = %for.body.i.i204.for.body.i.i204_crit_edge, %for.cond.preheader.i.i200.for.body.i.i204_crit_edge
  %i.031.i.i = phi i32 [ %inc.i.i202, %for.body.i.i204.for.body.i.i204_crit_edge ], [ 0, %for.cond.preheader.i.i200.for.body.i.i204_crit_edge ]
  %arrayidx.i.i201 = getelementptr i32, ptr %s1_ptr.addr.1.i.i195, i32 %i.031.i.i
  %44 = ptrtoint ptr %arrayidx.i.i201 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i.i201, align 4
  %arrayidx11.i.i = getelementptr i32, ptr %res_ptr.addr.1.i.i194, i32 %i.031.i.i
  %46 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %arrayidx11.i.i, align 4
  %inc.i.i202 = add nuw nsw i32 %i.031.i.i, 1
  %exitcond.not.i.i203 = icmp eq i32 %inc.i.i202, %sub.i.i199
  br i1 %exitcond.not.i.i203, label %for.body.i.i204.mpihelp_add.exit_crit_edge, label %for.body.i.i204.for.body.i.i204_crit_edge

for.body.i.i204.for.body.i.i204_crit_edge:        ; preds = %for.body.i.i204
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i.i204

for.body.i.i204.mpihelp_add.exit_crit_edge:       ; preds = %for.body.i.i204
  call void @__sanitizer_cov_trace_pc() #5
  br label %mpihelp_add.exit

mpihelp_add.exit:                                 ; preds = %for.body.i.i204.mpihelp_add.exit_crit_edge, %for.cond.preheader.i.i200.mpihelp_add.exit_crit_edge, %leave.i.i198.mpihelp_add.exit_crit_edge, %while.cond.i.i189.mpihelp_add.exit_crit_edge, %if.else86.mpihelp_add.exit_crit_edge
  %cy.1.i = phi i32 [ %call.i175, %if.else86.mpihelp_add.exit_crit_edge ], [ 0, %leave.i.i198.mpihelp_add.exit_crit_edge ], [ 0, %for.cond.preheader.i.i200.mpihelp_add.exit_crit_edge ], [ 0, %for.body.i.i204.mpihelp_add.exit_crit_edge ], [ 1, %while.cond.i.i189.mpihelp_add.exit_crit_edge ]
  %arrayidx88 = getelementptr i32, ptr %19, i32 %usize.0
  %47 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %cy.1.i, ptr %arrayidx88, align 4
  %add89 = add i32 %cy.1.i, %usize.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %usign.0)
  %tobool90.not = icmp ne i32 %usign.0, 0
  %spec.select174 = zext i1 %tobool90.not to i32
  br label %if.end94

if.end94:                                         ; preds = %mpihelp_add.exit, %do.end80, %do.end62, %while.body.if.end94_crit_edge, %while.cond.if.end94_crit_edge, %for.body.if.end94_crit_edge, %for.cond.preheader.if.end94_crit_edge
  %wsize.3 = phi i32 [ %add89, %mpihelp_add.exit ], [ %wsize.1.lcssa, %do.end62 ], [ %wsize.2.lcssa, %do.end80 ], [ %usize.0, %for.cond.preheader.if.end94_crit_edge ], [ %usize.0, %for.body.if.end94_crit_edge ], [ %smin, %while.cond.if.end94_crit_edge ], [ %wsize.0, %while.body.if.end94_crit_edge ]
  %wsign.1 = phi i32 [ %spec.select174, %mpihelp_add.exit ], [ %spec.select, %do.end62 ], [ %spec.select173, %do.end80 ], [ %usign.0, %for.cond.preheader.if.end94_crit_edge ], [ %usign.0, %for.body.if.end94_crit_edge ], [ %usign.0, %while.body.if.end94_crit_edge ], [ %usign.0, %while.cond.if.end94_crit_edge ]
  %nlimbs95 = getelementptr inbounds %struct.gcry_mpi, ptr %w, i32 0, i32 1
  %48 = ptrtoint ptr %nlimbs95 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %wsize.3, ptr %nlimbs95, align 4
  %sign96 = getelementptr inbounds %struct.gcry_mpi, ptr %w, i32 0, i32 3
  %49 = ptrtoint ptr %sign96 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %wsign.1, ptr %sign96, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpihelp_cmp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpihelp_sub_n(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpi_sub(ptr noundef %w, ptr nocapture noundef readonly %u, ptr noundef %v) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mpi_copy(ptr noundef %v) #3
  %sign = getelementptr inbounds %struct.gcry_mpi, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %sign to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sign, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %lnot.ext = zext i1 %tobool.not to i32
  %2 = ptrtoint ptr %sign to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %lnot.ext, ptr %sign, align 4
  tail call void @mpi_add(ptr noundef %w, ptr noundef %u, ptr noundef %call)
  tail call void @mpi_free(ptr noundef %call) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_copy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpi_addm(ptr noundef %w, ptr nocapture noundef readonly %u, ptr nocapture noundef readonly %v, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mpi_add(ptr noundef %w, ptr noundef %u, ptr noundef %v)
  tail call void @mpi_mod(ptr noundef %w, ptr noundef %w, ptr noundef %m) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_mod(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpi_subm(ptr noundef %w, ptr nocapture noundef readonly %u, ptr noundef %v, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @mpi_copy(ptr noundef %v) #3
  %sign.i = getelementptr inbounds %struct.gcry_mpi, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %sign.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sign.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  %lnot.ext.i = zext i1 %tobool.not.i to i32
  %2 = ptrtoint ptr %sign.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %lnot.ext.i, ptr %sign.i, align 4
  tail call void @mpi_add(ptr noundef %w, ptr noundef %u, ptr noundef %call.i) #3
  tail call void @mpi_free(ptr noundef %call.i) #3
  tail call void @mpi_mod(ptr noundef %w, ptr noundef %w, ptr noundef %m) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpihelp_add_n(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @__ksymtab_mpi_add, !1, !"__ksymtab_mpi_add", i1 false, i1 false}
!1 = !{!"../lib/mpi/mpi-add.c", i32 132, i32 1}
!2 = !{ptr @__ksymtab_mpi_addm, !3, !"__ksymtab_mpi_addm", i1 false, i1 false}
!3 = !{!"../lib/mpi/mpi-add.c", i32 148, i32 1}
!4 = !{ptr @__ksymtab_mpi_subm, !5, !"__ksymtab_mpi_subm", i1 false, i1 false}
!5 = !{!"../lib/mpi/mpi-add.c", i32 155, i32 1}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
