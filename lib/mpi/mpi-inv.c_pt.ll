; ModuleID = '/llk/IR_all_yes/lib/mpi/mpi-inv.c_pt.bc'
source_filename = "../lib/mpi/mpi-inv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mpi_invm\22, \22a\22\09"
module asm "\09.weak\09__crc_mpi_invm\09\09\09\09"
module asm "\09.long\09__crc_mpi_invm\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_invm:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_invm\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_invm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.gcry_mpi = type { i32, i32, i32, i32, i32, ptr }

@__kstrtab_mpi_invm = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_invm = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_invm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_invm to i32), ptr @__kstrtab_mpi_invm, ptr @__kstrtabns_mpi_invm }, section "___ksymtab_gpl+mpi_invm", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_mpi_invm], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpi_invm(ptr noundef %x, ptr noundef %a, ptr noundef %n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mpi_cmp_ui(ptr noundef %a, i32 noundef 0) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @mpi_cmp_ui(ptr noundef %n, i32 noundef 1) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @mpi_copy(ptr noundef %a) #2
  %call6 = tail call ptr @mpi_copy(ptr noundef %n) #2
  %call7220 = tail call i32 @mpi_test_bit(ptr noundef %call5, i32 noundef 0) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7220)
  %tobool8.not221 = icmp eq i32 %call7220, 0
  br i1 %tobool8.not221, label %if.end4.land.rhs_crit_edge, label %if.end4.for.end_crit_edge

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

if.end4.land.rhs_crit_edge:                       ; preds = %if.end4
  br label %land.rhs

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %if.end4.land.rhs_crit_edge
  %call9 = tail call i32 @mpi_test_bit(ptr noundef %call6, i32 noundef 0) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %for.body, label %land.rhs.for.end_crit_edge

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.body:                                         ; preds = %land.rhs
  tail call void @mpi_rshift(ptr noundef %call5, ptr noundef %call5, i32 noundef 1) #2
  tail call void @mpi_rshift(ptr noundef %call6, ptr noundef %call6, i32 noundef 1) #2
  %call7 = tail call i32 @mpi_test_bit(ptr noundef %call5, i32 noundef 0) #2
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %for.body.land.rhs_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %land.rhs

for.end:                                          ; preds = %for.body.for.end_crit_edge, %land.rhs.for.end_crit_edge, %if.end4.for.end_crit_edge
  %call11 = tail call i32 @mpi_test_bit(ptr noundef %call6, i32 noundef 0) #2
  %call12 = tail call ptr @mpi_alloc_set_ui(i32 noundef 1) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool13.not = icmp eq i32 %call11, 0
  br i1 %tobool13.not, label %if.then14, label %for.end.if.end16_crit_edge

for.end.if.end16_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end16

if.then14:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #4
  %call15 = tail call ptr @mpi_alloc_set_ui(i32 noundef 0) #2
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %for.end.if.end16_crit_edge
  %u2.0 = phi ptr [ null, %for.end.if.end16_crit_edge ], [ %call15, %if.then14 ]
  %call17 = tail call ptr @mpi_copy(ptr noundef %call5) #2
  %call18 = tail call ptr @mpi_copy(ptr noundef %call6) #2
  br i1 %tobool13.not, label %if.then20, label %if.end16.if.end22_crit_edge

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end22

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #4
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %call5, i32 0, i32 1
  %0 = ptrtoint ptr %nlimbs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nlimbs, align 4
  %call21 = tail call ptr @mpi_alloc(i32 noundef %1) #2
  tail call void @mpi_sub(ptr noundef %call21, ptr noundef %call12, ptr noundef %call5) #2
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end16.if.end22_crit_edge
  %v2.0 = phi ptr [ null, %if.end16.if.end22_crit_edge ], [ %call21, %if.then20 ]
  %call23 = tail call ptr @mpi_copy(ptr noundef %call6) #2
  %call24 = tail call i32 @mpi_test_bit(ptr noundef %call5, i32 noundef 0) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.end22
  %call27 = tail call ptr @mpi_alloc_set_ui(i32 noundef 0) #2
  br i1 %tobool13.not, label %if.then29, label %if.then26.if.end32_crit_edge

if.then26.if.end32_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end32

if.then29:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #4
  %call30 = tail call ptr @mpi_alloc_set_ui(i32 noundef 1) #2
  %sign31 = getelementptr inbounds %struct.gcry_mpi, ptr %call30, i32 0, i32 3
  %2 = ptrtoint ptr %sign31 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %sign31, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.then26.if.end32_crit_edge
  %t2.0 = phi ptr [ null, %if.then26.if.end32_crit_edge ], [ %call30, %if.then29 ]
  %call33 = tail call ptr @mpi_copy(ptr noundef %call6) #2
  %sign34 = getelementptr inbounds %struct.gcry_mpi, ptr %call33, i32 0, i32 3
  %3 = ptrtoint ptr %sign34 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sign34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool35.not = icmp eq i32 %4, 0
  %lnot.ext = zext i1 %tobool35.not to i32
  %5 = ptrtoint ptr %sign34 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %lnot.ext, ptr %sign34, align 4
  br label %Y4

if.else:                                          ; preds = %if.end22
  %call38 = tail call ptr @mpi_alloc_set_ui(i32 noundef 1) #2
  br i1 %tobool13.not, label %if.then40, label %if.else.if.end42_crit_edge

if.else.if.end42_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end42

if.then40:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  %call41 = tail call ptr @mpi_alloc_set_ui(i32 noundef 0) #2
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.else.if.end42_crit_edge
  %t2.1 = phi ptr [ null, %if.else.if.end42_crit_edge ], [ %call41, %if.then40 ]
  %call43 = tail call ptr @mpi_copy(ptr noundef %call5) #2
  br label %do.body45

do.body45:                                        ; preds = %do.cond103.do.body45_crit_edge, %Y4.do.body45_crit_edge, %if.end42
  %t1.0 = phi ptr [ %t1.1, %Y4.do.body45_crit_edge ], [ %t1.1, %do.cond103.do.body45_crit_edge ], [ %call38, %if.end42 ]
  %t2.2 = phi ptr [ %t2.3, %Y4.do.body45_crit_edge ], [ %t2.3, %do.cond103.do.body45_crit_edge ], [ %t2.1, %if.end42 ]
  %t3.0 = phi ptr [ %t3.1, %Y4.do.body45_crit_edge ], [ %t3.1, %do.cond103.do.body45_crit_edge ], [ %call43, %if.end42 ]
  %call48 = tail call i32 @mpi_test_bit(ptr noundef %t1.0, i32 noundef 0) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool13.not, label %if.then47, label %if.else54

if.then47:                                        ; preds = %do.body45
  br i1 %tobool49.not, label %lor.lhs.false, label %if.then47.if.then52_crit_edge

if.then47.if.then52_crit_edge:                    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then52

lor.lhs.false:                                    ; preds = %if.then47
  %call50 = tail call i32 @mpi_test_bit(ptr noundef %t2.2, i32 noundef 0) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %lor.lhs.false.if.end53_crit_edge, label %lor.lhs.false.if.then52_crit_edge

lor.lhs.false.if.then52_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then52

lor.lhs.false.if.end53_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end53

if.then52:                                        ; preds = %lor.lhs.false.if.then52_crit_edge, %if.then47.if.then52_crit_edge
  tail call void @mpi_add(ptr noundef %t1.0, ptr noundef %t1.0, ptr noundef %call6) #2
  tail call void @mpi_sub(ptr noundef %t2.2, ptr noundef %t2.2, ptr noundef %call5) #2
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %lor.lhs.false.if.end53_crit_edge
  tail call void @mpi_rshift(ptr noundef %t1.0, ptr noundef %t1.0, i32 noundef 1) #2
  tail call void @mpi_rshift(ptr noundef %t2.2, ptr noundef %t2.2, i32 noundef 1) #2
  tail call void @mpi_rshift(ptr noundef %t3.0, ptr noundef %t3.0, i32 noundef 1) #2
  br label %Y4

if.else54:                                        ; preds = %do.body45
  br i1 %tobool49.not, label %if.else54.if.end58_crit_edge, label %if.then57

if.else54.if.end58_crit_edge:                     ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end58

if.then57:                                        ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @mpi_add(ptr noundef %t1.0, ptr noundef %t1.0, ptr noundef %call6) #2
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %if.else54.if.end58_crit_edge
  tail call void @mpi_rshift(ptr noundef %t1.0, ptr noundef %t1.0, i32 noundef 1) #2
  tail call void @mpi_rshift(ptr noundef %t3.0, ptr noundef %t3.0, i32 noundef 1) #2
  br label %Y4

Y4:                                               ; preds = %if.end58, %if.end53, %if.end32
  %t1.1 = phi ptr [ %call27, %if.end32 ], [ %t1.0, %if.end58 ], [ %t1.0, %if.end53 ]
  %t2.3 = phi ptr [ %t2.0, %if.end32 ], [ %t2.2, %if.end58 ], [ %t2.2, %if.end53 ]
  %t3.1 = phi ptr [ %call33, %if.end32 ], [ %t3.0, %if.end58 ], [ %t3.0, %if.end53 ]
  %call60 = tail call i32 @mpi_test_bit(ptr noundef %t3.1, i32 noundef 0) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %Y4.do.body45_crit_edge, label %do.end

Y4.do.body45_crit_edge:                           ; preds = %Y4
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body45

do.end:                                           ; preds = %Y4
  %sign64 = getelementptr inbounds %struct.gcry_mpi, ptr %t3.1, i32 0, i32 3
  %6 = ptrtoint ptr %sign64 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sign64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool65.not = icmp eq i32 %7, 0
  br i1 %tobool65.not, label %if.then66, label %if.else73

if.then66:                                        ; preds = %do.end
  %call67 = tail call ptr @mpi_set(ptr noundef %call12, ptr noundef %t1.1) #2
  br i1 %tobool13.not, label %if.then69, label %if.then66.if.end71_crit_edge

if.then66.if.end71_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end71

if.then69:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #4
  %call70 = tail call ptr @mpi_set(ptr noundef %u2.0, ptr noundef %t2.3) #2
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %if.then66.if.end71_crit_edge
  %call72 = tail call ptr @mpi_set(ptr noundef %call17, ptr noundef %t3.1) #2
  br label %if.end92

if.else73:                                        ; preds = %do.end
  tail call void @mpi_sub(ptr noundef %call18, ptr noundef %call6, ptr noundef %t1.1) #2
  %sign74 = getelementptr inbounds %struct.gcry_mpi, ptr %call5, i32 0, i32 3
  %8 = ptrtoint ptr %sign74 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sign74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool76.not = icmp eq i32 %9, 0
  %lnot.ext78 = zext i1 %tobool76.not to i32
  %10 = ptrtoint ptr %sign74 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %lnot.ext78, ptr %sign74, align 4
  br i1 %tobool13.not, label %if.then81, label %if.else73.if.end82_crit_edge

if.else73.if.end82_crit_edge:                     ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end82

if.then81:                                        ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @mpi_sub(ptr noundef %v2.0, ptr noundef %call5, ptr noundef %t2.3) #2
  br label %if.end82

if.end82:                                         ; preds = %if.then81, %if.else73.if.end82_crit_edge
  %11 = ptrtoint ptr %sign74 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %9, ptr %sign74, align 4
  %12 = ptrtoint ptr %sign64 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sign64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool86.not = icmp eq i32 %13, 0
  %lnot.ext88 = zext i1 %tobool86.not to i32
  %14 = ptrtoint ptr %sign64 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %lnot.ext88, ptr %sign64, align 4
  %call90 = tail call ptr @mpi_set(ptr noundef %call23, ptr noundef %t3.1) #2
  %15 = ptrtoint ptr %sign64 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %13, ptr %sign64, align 4
  br label %if.end92

if.end92:                                         ; preds = %if.end82, %if.end71
  tail call void @mpi_sub(ptr noundef %t1.1, ptr noundef %call12, ptr noundef %call18) #2
  br i1 %tobool13.not, label %if.then94, label %if.end92.if.end95_crit_edge

if.end92.if.end95_crit_edge:                      ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end95

if.then94:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @mpi_sub(ptr noundef %t2.3, ptr noundef %u2.0, ptr noundef %v2.0) #2
  br label %if.end95

if.end95:                                         ; preds = %if.then94, %if.end92.if.end95_crit_edge
  tail call void @mpi_sub(ptr noundef %t3.1, ptr noundef %call17, ptr noundef %call23) #2
  %sign96 = getelementptr inbounds %struct.gcry_mpi, ptr %t1.1, i32 0, i32 3
  %16 = ptrtoint ptr %sign96 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sign96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool97.not = icmp eq i32 %17, 0
  br i1 %tobool97.not, label %if.end95.do.cond103_crit_edge, label %if.then98

if.end95.do.cond103_crit_edge:                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.cond103

if.then98:                                        ; preds = %if.end95
  tail call void @mpi_add(ptr noundef %t1.1, ptr noundef %t1.1, ptr noundef %call6) #2
  br i1 %tobool13.not, label %if.then100, label %if.then98.do.cond103_crit_edge

if.then98.do.cond103_crit_edge:                   ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.cond103

if.then100:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @mpi_sub(ptr noundef %t2.3, ptr noundef %t2.3, ptr noundef %call5) #2
  br label %do.cond103

do.cond103:                                       ; preds = %if.then100, %if.then98.do.cond103_crit_edge, %if.end95.do.cond103_crit_edge
  %call104 = tail call i32 @mpi_cmp_ui(ptr noundef %t3.1, i32 noundef 0) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %do.end106, label %do.cond103.do.body45_crit_edge

do.cond103.do.body45_crit_edge:                   ; preds = %do.cond103
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body45

do.end106:                                        ; preds = %do.cond103
  %call107 = tail call ptr @mpi_set(ptr noundef %x, ptr noundef %call12) #2
  tail call void @mpi_free(ptr noundef %call12) #2
  tail call void @mpi_free(ptr noundef %call18) #2
  tail call void @mpi_free(ptr noundef %t1.1) #2
  br i1 %tobool13.not, label %if.then109, label %do.end106.if.end110_crit_edge

do.end106.if.end110_crit_edge:                    ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end110

if.then109:                                       ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @mpi_free(ptr noundef %u2.0) #2
  tail call void @mpi_free(ptr noundef %v2.0) #2
  tail call void @mpi_free(ptr noundef %t2.3) #2
  br label %if.end110

if.end110:                                        ; preds = %if.then109, %do.end106.if.end110_crit_edge
  tail call void @mpi_free(ptr noundef %call17) #2
  tail call void @mpi_free(ptr noundef %call23) #2
  tail call void @mpi_free(ptr noundef %t3.1) #2
  tail call void @mpi_free(ptr noundef %call5) #2
  tail call void @mpi_free(ptr noundef %call6) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end110, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end110 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi_cmp_ui(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_copy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi_test_bit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_rshift(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_alloc_set_ui(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_alloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_sub(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

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

!0 = !{ptr @__ksymtab_mpi_invm, !1, !"__ksymtab_mpi_invm", i1 false, i1 false}
!1 = !{!"../lib/mpi/mpi-inv.c", i32 143, i32 1}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
