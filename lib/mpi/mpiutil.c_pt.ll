; ModuleID = '/llk/IR_all_yes/lib/mpi/mpiutil.c_pt.bc'
source_filename = "../lib/mpi/mpiutil.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mpi_const\22, \22a\22\09"
module asm "\09.weak\09__crc_mpi_const\09\09\09\09"
module asm "\09.long\09__crc_mpi_const\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_const:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_const\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_const:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mpi_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_mpi_alloc\09\09\09\09"
module asm "\09.long\09__crc_mpi_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mpi_clear\22, \22a\22\09"
module asm "\09.weak\09__crc_mpi_clear\09\09\09\09"
module asm "\09.long\09__crc_mpi_clear\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_clear:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_clear\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_clear:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mpi_free\22, \22a\22\09"
module asm "\09.weak\09__crc_mpi_free\09\09\09\09"
module asm "\09.long\09__crc_mpi_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_free:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_free\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mpi_set\22, \22a\22\09"
module asm "\09.weak\09__crc_mpi_set\09\09\09\09"
module asm "\09.long\09__crc_mpi_set\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_set:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_set\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mpi_set_ui\22, \22a\22\09"
module asm "\09.weak\09__crc_mpi_set_ui\09\09\09\09"
module asm "\09.long\09__crc_mpi_set_ui\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpi_set_ui:\09\09\09\09\09"
module asm "\09.asciz \09\22mpi_set_ui\22\09\09\09\09\09"
module asm "__kstrtabns_mpi_set_ui:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.gcry_mpi = type { i32, i32, i32, i32, i32, ptr }

@__initcall__kmod_mpi__226_64_mpi_init2 = internal global ptr @mpi_init, section ".initcall2.init", align 4
@mpi_const._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013MPI: invalid mpi_const selector %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mpi_const\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lib/mpi/mpiutil.c\00", [46 x i8] zeroinitializer }, align 32
@mpi_const._entry_ptr = internal global ptr @mpi_const._entry, section ".printk_index", align 4
@constants = internal global { [6 x ptr], [40 x i8] } zeroinitializer, align 32
@mpi_const._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013MPI: MPI subsystem not initialized\0A\00", [58 x i8] zeroinitializer }, align 32
@mpi_const._entry_ptr.5 = internal global ptr @mpi_const._entry.3, section ".printk_index", align 4
@__kstrtab_mpi_const = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_const = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_const = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_const to i32), ptr @__kstrtab_mpi_const, ptr @__kstrtabns_mpi_const }, section "___ksymtab_gpl+mpi_const", align 4
@__kstrtab_mpi_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_alloc to i32), ptr @__kstrtab_mpi_alloc, ptr @__kstrtabns_mpi_alloc }, section "___ksymtab_gpl+mpi_alloc", align 4
@__kstrtab_mpi_clear = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_clear = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_clear = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_clear to i32), ptr @__kstrtab_mpi_clear, ptr @__kstrtabns_mpi_clear }, section "___ksymtab_gpl+mpi_clear", align 4
@mpi_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016invalid flag value in mpi\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mpi_free\00", [23 x i8] zeroinitializer }, align 32
@mpi_free._entry_ptr = internal global ptr @mpi_free._entry, section ".printk_index", align 4
@__kstrtab_mpi_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_free = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_free to i32), ptr @__kstrtab_mpi_free, ptr @__kstrtabns_mpi_free }, section "___ksymtab_gpl+mpi_free", align 4
@__kstrtab_mpi_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_set = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_set to i32), ptr @__kstrtab_mpi_set, ptr @__kstrtabns_mpi_set }, section "___ksymtab_gpl+mpi_set", align 4
@__kstrtab_mpi_set_ui = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpi_set_ui = external dso_local constant [0 x i8], align 1
@__ksymtab_mpi_set_ui = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpi_set_ui to i32), ptr @__kstrtab_mpi_set_ui, ptr @__kstrtabns_mpi_set_ui }, section "___ksymtab_gpl+mpi_set_ui", align 4
@__UNIQUE_ID_description227 = internal constant [45 x i8] c"mpi.description=Multiprecision maths library\00", section ".modinfo", align 1
@__UNIQUE_ID_file228 = internal constant [21 x i8] c"mpi.file=lib/mpi/mpi\00", section ".modinfo", align 1
@__UNIQUE_ID_license229 = internal constant [16 x i8] c"mpi.license=GPL\00", section ".modinfo", align 1
@mpi_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.8, ptr @.str.2, i32 55, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mpi_init\00", [23 x i8] zeroinitializer }, align 32
@mpi_init._entry_ptr = internal global ptr @mpi_init._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@switch.table.mpi_init = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 8], [40 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 73, i32 3 }
@___asan_gen_.21 = private unnamed_addr constant [10 x i8] c"constants\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 24, i32 12 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 75, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 186, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private constant [21 x i8] c"../lib/mpi/mpiutil.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 55, i32 4 }
@___asan_gen_.45 = private unnamed_addr constant [22 x i8] c"switch.table.mpi_init\00", align 1
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_description227, ptr @__UNIQUE_ID_file228, ptr @__UNIQUE_ID_license229, ptr @__initcall__kmod_mpi__226_64_mpi_init2, ptr @__ksymtab_mpi_alloc, ptr @__ksymtab_mpi_clear, ptr @__ksymtab_mpi_const, ptr @__ksymtab_mpi_free, ptr @__ksymtab_mpi_set, ptr @__ksymtab_mpi_set_ui, ptr @mpi_const._entry, ptr @mpi_const._entry.3, ptr @mpi_const._entry_ptr, ptr @mpi_const._entry_ptr.5, ptr @mpi_free._entry, ptr @mpi_free._entry_ptr, ptr @mpi_init._entry, ptr @mpi_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @constants, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @switch.table.mpi_init], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi_const._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @constants to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi_const._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpi_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mpi_init to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mpi_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %switch.lookup.for.body_crit_edge, %entry
  %idx.015 = phi i32 [ 0, %entry ], [ %inc, %switch.lookup.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %idx.015)
  %0 = icmp ult i32 %idx.015, 6
  br i1 %0, label %switch.lookup, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %idx.015) #12
  br label %cleanup

switch.lookup:                                    ; preds = %for.body
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.mpi_init, i32 0, i32 %idx.015
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call6 = tail call ptr @mpi_alloc_set_ui(i32 noundef %switch.load)
  %arrayidx = getelementptr [6 x ptr], ptr @constants, i32 0, i32 %idx.015
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call6, ptr %arrayidx, align 4
  %flags = getelementptr inbounds %struct.gcry_mpi, ptr %call6, i32 0, i32 4
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 48, ptr %flags, align 4
  %inc = add nuw nsw i32 %idx.015, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %switch.lookup.cleanup_crit_edge, label %switch.lookup.for.body_crit_edge

switch.lookup.for.body_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -14, %do.end ], [ 0, %switch.lookup.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mpi_const(i32 noundef %no) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %no)
  %cmp1 = icmp ugt i32 %no, 6
  br i1 %cmp1, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %no) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %arrayidx = getelementptr [6 x ptr], ptr @constants, i32 0, i32 %no
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end4, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

do.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #12
  br label %if.end7

if.end7:                                          ; preds = %do.end4, %if.end.if.end7_crit_edge
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  ret ptr %3
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mpi_alloc(i32 noundef %nlimbs) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 24) #13
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nlimbs)
  %tobool1.not = icmp eq i32 %nlimbs, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %mul.i = shl i32 %nlimbs, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %tobool.not.i = icmp eq i32 %mul.i, 0
  br i1 %tobool.not.i, label %mpi_alloc_limb_space.exit.thread, label %if.end8.i.i

mpi_alloc_limb_space.exit.thread:                 ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %d25 = getelementptr inbounds %struct.gcry_mpi, ptr %call7.i, i32 0, i32 5
  %1 = ptrtoint ptr %d25 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %d25, align 4
  br label %if.then6

if.end8.i.i:                                      ; preds = %if.then2
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i, i32 noundef 3264) #14
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %call7.i, i32 0, i32 5
  %2 = ptrtoint ptr %d to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9.i.i, ptr %d, align 4
  %tobool5.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool5.not, label %if.end8.i.i.if.then6_crit_edge, label %if.end8.i.i.if.end9_crit_edge

if.end8.i.i.if.end9_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.end8.i.i.if.then6_crit_edge:                   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

if.then6:                                         ; preds = %if.end8.i.i.if.then6_crit_edge, %mpi_alloc_limb_space.exit.thread
  tail call void @kfree(ptr noundef nonnull %call7.i) #9
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %d8 = getelementptr inbounds %struct.gcry_mpi, ptr %call7.i, i32 0, i32 5
  %3 = ptrtoint ptr %d8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %d8, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.end8.i.i.if.end9_crit_edge
  %4 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %nlimbs, ptr %call7.i, align 8
  %nlimbs10 = getelementptr inbounds %struct.gcry_mpi, ptr %call7.i, i32 0, i32 1
  %5 = call ptr @memset(ptr %nlimbs10, i32 0, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i, %if.end9 ], [ null, %if.then6 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mpi_alloc_limb_space(i32 noundef %nlimbs) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %nlimbs, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool.not = icmp eq i32 %mul, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end8.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3264) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end8.i, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %call9.i, %if.end8.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpi_free_limb_space(ptr noundef %a) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %a, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree_sensitive(ptr noundef nonnull %a) #9
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpi_assign_limb_space(ptr nocapture noundef %a, ptr noundef %ap, i32 noundef %nlimbs) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %a, i32 0, i32 5
  %0 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.mpi_free_limb_space.exit_crit_edge, label %if.end.i

entry.mpi_free_limb_space.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mpi_free_limb_space.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree_sensitive(ptr noundef nonnull %1) #9
  br label %mpi_free_limb_space.exit

mpi_free_limb_space.exit:                         ; preds = %if.end.i, %entry.mpi_free_limb_space.exit_crit_edge
  %2 = ptrtoint ptr %d to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ap, ptr %d, align 4
  %3 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %nlimbs, ptr %a, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpi_resize(ptr nocapture noundef %a, i32 noundef %nlimbs) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %a, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %nlimbs)
  %cmp.not = icmp ult i32 %1, %nlimbs
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %a, i32 0, i32 5
  %2 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d, align 4
  %tobool.not = icmp eq ptr %3, null
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nlimbs, i32 4) #9
  %5 = extractvalue { i32, i1 } %4, 1
  %6 = extractvalue { i32, i1 } %4, 0
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  br i1 %5, label %if.then1.cleanup_crit_edge, label %if.end7.i.i, !prof !49

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.then1
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %6, i32 noundef 3520) #14
  %tobool2.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool2.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end4

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %d, align 4
  %9 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %a, align 4
  %mul = shl i32 %10, 2
  %11 = call ptr @memcpy(ptr %call8.i.i, ptr %8, i32 %mul)
  tail call void @kfree_sensitive(ptr noundef %8) #9
  %12 = ptrtoint ptr %d to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call8.i.i, ptr %d, align 4
  br label %if.end15

if.else:                                          ; preds = %if.end
  br i1 %5, label %kcalloc.exit62.thread, label %if.end7.i.i60, !prof !49

kcalloc.exit62.thread:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %d to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %d, align 4
  br label %cleanup

if.end7.i.i60:                                    ; preds = %if.else
  %call8.i.i59 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %6, i32 noundef 3520) #14
  %14 = ptrtoint ptr %d to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call8.i.i59, ptr %d, align 4
  %tobool12.not = icmp eq ptr %call8.i.i59, null
  br i1 %tobool12.not, label %if.end7.i.i60.cleanup_crit_edge, label %if.end7.i.i60.if.end15_crit_edge

if.end7.i.i60.if.end15_crit_edge:                 ; preds = %if.end7.i.i60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.end7.i.i60.cleanup_crit_edge:                  ; preds = %if.end7.i.i60
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.end7.i.i60.if.end15_crit_edge, %if.end4
  %15 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %nlimbs, ptr %a, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end7.i.i60.cleanup_crit_edge, %kcalloc.exit62.thread, %if.end7.i.i.cleanup_crit_edge, %if.then1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %if.end7.i.i60.cleanup_crit_edge ], [ -12, %kcalloc.exit62.thread ], [ -12, %if.then1.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @mpi_clear(ptr noundef writeonly %a) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %a, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %nlimbs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %nlimbs, align 4
  %flags = getelementptr inbounds %struct.gcry_mpi, ptr %a, i32 0, i32 4
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %flags, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpi_free(ptr noundef %a) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %a, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.gcry_mpi, ptr %a, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %d3 = getelementptr inbounds %struct.gcry_mpi, ptr %a, i32 0, i32 5
  %2 = ptrtoint ptr %d3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d3, align 4
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree_sensitive(ptr noundef %3) #9
  br label %if.end4

if.else:                                          ; preds = %if.end
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.else.if.end4_crit_edge, label %if.end.i

if.else.if.end4_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree_sensitive(ptr noundef nonnull %3) #9
  br label %if.end4

if.end4:                                          ; preds = %if.end.i, %if.else.if.end4_crit_edge, %if.then2
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %tobool7.not = icmp ult i32 %5, 8
  br i1 %tobool7.not, label %if.end4.if.end9_crit_edge, label %do.end

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #12
  br label %if.end9

if.end9:                                          ; preds = %do.end, %if.end4.if.end9_crit_edge
  tail call void @kfree(ptr noundef nonnull %a) #9
  br label %return

return:                                           ; preds = %if.end9, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mpi_copy(ptr noundef readonly %a) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %a, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %nlimbs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nlimbs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 24) #13
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.then.mpi_alloc.exit_crit_edge, label %if.end.i

if.then.mpi_alloc.exit_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %mpi_alloc.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not.i = icmp eq i32 %1, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  %mul.i.i = shl i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i.i)
  %tobool.not.i.i = icmp eq i32 %mul.i.i, 0
  br i1 %tobool.not.i.i, label %mpi_alloc_limb_space.exit.thread.i, label %if.end8.i.i.i

mpi_alloc_limb_space.exit.thread.i:               ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  %d25.i = getelementptr inbounds %struct.gcry_mpi, ptr %call7.i.i, i32 0, i32 5
  %3 = ptrtoint ptr %d25.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %d25.i, align 4
  br label %if.then6.i

if.end8.i.i.i:                                    ; preds = %if.then2.i
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i.i, i32 noundef 3264) #14
  %d.i = getelementptr inbounds %struct.gcry_mpi, ptr %call7.i.i, i32 0, i32 5
  %4 = ptrtoint ptr %d.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9.i.i.i, ptr %d.i, align 4
  %tobool5.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool5.not.i, label %if.end8.i.i.i.if.then6.i_crit_edge, label %if.end8.i.i.i.if.end9.i_crit_edge

if.end8.i.i.i.if.end9.i_crit_edge:                ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

if.end8.i.i.i.if.then6.i_crit_edge:               ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6.i

if.then6.i:                                       ; preds = %if.end8.i.i.i.if.then6.i_crit_edge, %mpi_alloc_limb_space.exit.thread.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %mpi_alloc.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %d8.i = getelementptr inbounds %struct.gcry_mpi, ptr %call7.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %d8.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %d8.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.else.i, %if.end8.i.i.i.if.end9.i_crit_edge
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %1, ptr %call7.i.i, align 8
  %nlimbs10.i = getelementptr inbounds %struct.gcry_mpi, ptr %call7.i.i, i32 0, i32 1
  %7 = call ptr @memset(ptr %nlimbs10.i, i32 0, i32 16)
  br label %mpi_alloc.exit

mpi_alloc.exit:                                   ; preds = %if.end9.i, %if.then6.i, %if.then.mpi_alloc.exit_crit_edge
  %retval.0.i = phi ptr [ %call7.i.i, %if.end9.i ], [ null, %if.then6.i ], [ null, %if.then.mpi_alloc.exit_crit_edge ]
  %8 = ptrtoint ptr %nlimbs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nlimbs, align 4
  %nlimbs2 = getelementptr inbounds %struct.gcry_mpi, ptr %retval.0.i, i32 0, i32 1
  %10 = ptrtoint ptr %nlimbs2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %nlimbs2, align 4
  %sign = getelementptr inbounds %struct.gcry_mpi, ptr %a, i32 0, i32 3
  %11 = ptrtoint ptr %sign to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sign, align 4
  %sign3 = getelementptr inbounds %struct.gcry_mpi, ptr %retval.0.i, i32 0, i32 3
  %13 = ptrtoint ptr %sign3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %sign3, align 4
  %flags = getelementptr inbounds %struct.gcry_mpi, ptr %a, i32 0, i32 4
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %flags4 = getelementptr inbounds %struct.gcry_mpi, ptr %retval.0.i, i32 0, i32 4
  %and = and i32 %15, -49
  %16 = ptrtoint ptr %flags4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and, ptr %flags4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp23 = icmp sgt i32 %9, 0
  br i1 %cmp23, label %for.body.lr.ph, label %mpi_alloc.exit.if.end_crit_edge

mpi_alloc.exit.if.end_crit_edge:                  ; preds = %mpi_alloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.lr.ph:                                   ; preds = %mpi_alloc.exit
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %a, i32 0, i32 5
  %d7 = getelementptr inbounds %struct.gcry_mpi, ptr %retval.0.i, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.024 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %17 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d, align 4
  %arrayidx = getelementptr i32, ptr %18, i32 %i.024
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %21 = ptrtoint ptr %d7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %d7, align 4
  %arrayidx8 = getelementptr i32, ptr %22, i32 %i.024
  %23 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %20, ptr %arrayidx8, align 4
  %inc = add nuw nsw i32 %i.024, 1
  %24 = ptrtoint ptr %nlimbs2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nlimbs2, align 4
  %cmp = icmp slt i32 %inc, %25
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end:                                           ; preds = %for.body.if.end_crit_edge, %mpi_alloc.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %b.0 = phi ptr [ null, %entry.if.end_crit_edge ], [ %retval.0.i, %mpi_alloc.exit.if.end_crit_edge ], [ %retval.0.i, %for.body.if.end_crit_edge ]
  ret ptr %b.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mpi_alloc_like(ptr noundef readonly %a) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %a, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %nlimbs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nlimbs, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 24) #13
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.then.mpi_alloc.exit_crit_edge, label %if.end.i

if.then.mpi_alloc.exit_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %mpi_alloc.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not.i = icmp eq i32 %1, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  %mul.i.i = shl i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i.i)
  %tobool.not.i.i = icmp eq i32 %mul.i.i, 0
  br i1 %tobool.not.i.i, label %mpi_alloc_limb_space.exit.thread.i, label %if.end8.i.i.i

mpi_alloc_limb_space.exit.thread.i:               ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  %d25.i = getelementptr inbounds %struct.gcry_mpi, ptr %call7.i.i, i32 0, i32 5
  %3 = ptrtoint ptr %d25.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %d25.i, align 4
  br label %if.then6.i

if.end8.i.i.i:                                    ; preds = %if.then2.i
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i.i, i32 noundef 3264) #14
  %d.i = getelementptr inbounds %struct.gcry_mpi, ptr %call7.i.i, i32 0, i32 5
  %4 = ptrtoint ptr %d.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9.i.i.i, ptr %d.i, align 4
  %tobool5.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool5.not.i, label %if.end8.i.i.i.if.then6.i_crit_edge, label %if.end8.i.i.i.if.end9.i_crit_edge

if.end8.i.i.i.if.end9.i_crit_edge:                ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

if.end8.i.i.i.if.then6.i_crit_edge:               ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6.i

if.then6.i:                                       ; preds = %if.end8.i.i.i.if.then6.i_crit_edge, %mpi_alloc_limb_space.exit.thread.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %mpi_alloc.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %d8.i = getelementptr inbounds %struct.gcry_mpi, ptr %call7.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %d8.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %d8.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.else.i, %if.end8.i.i.i.if.end9.i_crit_edge
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %1, ptr %call7.i.i, align 8
  %nlimbs10.i = getelementptr inbounds %struct.gcry_mpi, ptr %call7.i.i, i32 0, i32 1
  %7 = call ptr @memset(ptr %nlimbs10.i, i32 0, i32 16)
  br label %mpi_alloc.exit

mpi_alloc.exit:                                   ; preds = %if.end9.i, %if.then6.i, %if.then.mpi_alloc.exit_crit_edge
  %retval.0.i = phi ptr [ %call7.i.i, %if.end9.i ], [ null, %if.then6.i ], [ null, %if.then.mpi_alloc.exit_crit_edge ]
  %nlimbs1 = getelementptr inbounds %struct.gcry_mpi, ptr %retval.0.i, i32 0, i32 1
  %8 = ptrtoint ptr %nlimbs1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %nlimbs1, align 4
  %sign = getelementptr inbounds %struct.gcry_mpi, ptr %retval.0.i, i32 0, i32 3
  %9 = ptrtoint ptr %sign to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %sign, align 4
  %flags = getelementptr inbounds %struct.gcry_mpi, ptr %a, i32 0, i32 4
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %flags2 = getelementptr inbounds %struct.gcry_mpi, ptr %retval.0.i, i32 0, i32 4
  %12 = ptrtoint ptr %flags2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %flags2, align 8
  br label %if.end

if.end:                                           ; preds = %mpi_alloc.exit, %entry.if.end_crit_edge
  %b.0 = phi ptr [ %retval.0.i, %mpi_alloc.exit ], [ null, %entry.if.end_crit_edge ]
  ret ptr %b.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpi_snatch(ptr noundef %w, ptr noundef %u) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %w, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %u, i32 0, i32 5
  %0 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d, align 4
  %2 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %u, align 4
  %d.i = getelementptr inbounds %struct.gcry_mpi, ptr %w, i32 0, i32 5
  %4 = ptrtoint ptr %d.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.then.mpi_assign_limb_space.exit_crit_edge, label %if.end.i.i

if.then.mpi_assign_limb_space.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %mpi_assign_limb_space.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree_sensitive(ptr noundef nonnull %5) #9
  br label %mpi_assign_limb_space.exit

mpi_assign_limb_space.exit:                       ; preds = %if.end.i.i, %if.then.mpi_assign_limb_space.exit_crit_edge
  %6 = ptrtoint ptr %d.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %1, ptr %d.i, align 4
  %7 = ptrtoint ptr %w to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %3, ptr %w, align 4
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %u, i32 0, i32 1
  %8 = ptrtoint ptr %nlimbs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nlimbs, align 4
  %nlimbs1 = getelementptr inbounds %struct.gcry_mpi, ptr %w, i32 0, i32 1
  %10 = ptrtoint ptr %nlimbs1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %nlimbs1, align 4
  %sign = getelementptr inbounds %struct.gcry_mpi, ptr %u, i32 0, i32 3
  %11 = ptrtoint ptr %sign to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sign, align 4
  %sign2 = getelementptr inbounds %struct.gcry_mpi, ptr %w, i32 0, i32 3
  %13 = ptrtoint ptr %sign2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %sign2, align 4
  %flags = getelementptr inbounds %struct.gcry_mpi, ptr %u, i32 0, i32 4
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %flags3 = getelementptr inbounds %struct.gcry_mpi, ptr %w, i32 0, i32 4
  %16 = ptrtoint ptr %flags3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %flags3, align 4
  %17 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %u, align 4
  store i32 0, ptr %nlimbs, align 4
  %18 = ptrtoint ptr %d to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %d, align 4
  br label %if.end

if.end:                                           ; preds = %mpi_assign_limb_space.exit, %entry.if.end_crit_edge
  %tobool.not.i = icmp eq ptr %u, null
  br i1 %tobool.not.i, label %if.end.mpi_free.exit_crit_edge, label %if.end.i

if.end.mpi_free.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %mpi_free.exit

if.end.i:                                         ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.gcry_mpi, ptr %u, i32 0, i32 4
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  %d3.i = getelementptr inbounds %struct.gcry_mpi, ptr %u, i32 0, i32 5
  %21 = ptrtoint ptr %d3.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %d3.i, align 4
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree_sensitive(ptr noundef %22) #9
  br label %if.end4.i

if.else.i:                                        ; preds = %if.end.i
  %tobool.not.i.i19 = icmp eq ptr %22, null
  br i1 %tobool.not.i.i19, label %if.else.i.if.end4.i_crit_edge, label %if.end.i.i20

if.else.i.if.end4.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

if.end.i.i20:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree_sensitive(ptr noundef nonnull %22) #9
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.end.i.i20, %if.else.i.if.end4.i_crit_edge, %if.then2.i
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %24)
  %tobool7.not.i = icmp ult i32 %24, 8
  br i1 %tobool7.not.i, label %if.end4.i.if.end9.i_crit_edge, label %do.end.i

if.end4.i.if.end9.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

do.end.i:                                         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #12
  br label %if.end9.i

if.end9.i:                                        ; preds = %do.end.i, %if.end4.i.if.end9.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %u) #9
  br label %mpi_free.exit

mpi_free.exit:                                    ; preds = %if.end9.i, %if.end.mpi_free.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mpi_set(ptr noundef %w, ptr nocapture noundef readonly %u) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %u, i32 0, i32 1
  %0 = ptrtoint ptr %nlimbs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nlimbs, align 4
  %sign = getelementptr inbounds %struct.gcry_mpi, ptr %u, i32 0, i32 3
  %2 = ptrtoint ptr %sign to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sign, align 4
  %tobool.not = icmp eq ptr %w, null
  br i1 %tobool.not, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 24) #13
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.then.do.body_crit_edge, label %if.end.i

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not.i = icmp eq i32 %1, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  %mul.i.i = shl i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i.i)
  %tobool.not.i.i = icmp eq i32 %mul.i.i, 0
  br i1 %tobool.not.i.i, label %mpi_alloc_limb_space.exit.thread.i, label %if.end8.i.i.i

mpi_alloc_limb_space.exit.thread.i:               ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  %d25.i = getelementptr inbounds %struct.gcry_mpi, ptr %call7.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %d25.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %d25.i, align 4
  br label %if.then6.i

if.end8.i.i.i:                                    ; preds = %if.then2.i
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i.i, i32 noundef 3264) #14
  %d.i = getelementptr inbounds %struct.gcry_mpi, ptr %call7.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %d.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9.i.i.i, ptr %d.i, align 4
  %tobool5.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool5.not.i, label %if.end8.i.i.i.if.then6.i_crit_edge, label %if.end8.i.i.i.if.end9.i_crit_edge

if.end8.i.i.i.if.end9.i_crit_edge:                ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

if.end8.i.i.i.if.then6.i_crit_edge:               ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6.i

if.then6.i:                                       ; preds = %if.end8.i.i.i.if.then6.i_crit_edge, %mpi_alloc_limb_space.exit.thread.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %do.body

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %d8.i = getelementptr inbounds %struct.gcry_mpi, ptr %call7.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %d8.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %d8.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.else.i, %if.end8.i.i.i.if.end9.i_crit_edge
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %1, ptr %call7.i.i, align 8
  %nlimbs10.i = getelementptr inbounds %struct.gcry_mpi, ptr %call7.i.i, i32 0, i32 1
  %9 = call ptr @memset(ptr %nlimbs10.i, i32 0, i32 16)
  br label %do.body

do.body:                                          ; preds = %if.end9.i, %if.then6.i, %if.then.do.body_crit_edge, %entry.do.body_crit_edge
  %w.addr.0 = phi ptr [ %w, %entry.do.body_crit_edge ], [ %call7.i.i, %if.end9.i ], [ null, %if.then6.i ], [ null, %if.then.do.body_crit_edge ]
  %10 = ptrtoint ptr %w.addr.0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %w.addr.0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %1)
  %cmp = icmp slt i32 %11, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %1)
  %cmp.not.i = icmp ult i32 %11, %1
  %or.cond = and i1 %cmp, %cmp.not.i
  br i1 %or.cond, label %if.end.i35, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.i35:                                       ; preds = %do.body
  %d.i33 = getelementptr inbounds %struct.gcry_mpi, ptr %w.addr.0, i32 0, i32 5
  %12 = ptrtoint ptr %d.i33 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d.i33, align 4
  %tobool.not.i34 = icmp eq ptr %13, null
  %14 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 4) #9
  %15 = extractvalue { i32, i1 } %14, 1
  %16 = extractvalue { i32, i1 } %14, 0
  br i1 %tobool.not.i34, label %if.else.i39, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i35
  br i1 %15, label %if.then1.i.do.end_crit_edge, label %if.end7.i.i.i, !prof !49

if.then1.i.do.end_crit_edge:                      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end7.i.i.i:                                    ; preds = %if.then1.i
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %16, i32 noundef 3520) #14
  %tobool2.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool2.not.i, label %if.end7.i.i.i.for.body.preheader_crit_edge, label %if.end4.i

if.end7.i.i.i.for.body.preheader_crit_edge:       ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader

if.end4.i:                                        ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %d.i33 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d.i33, align 4
  %19 = ptrtoint ptr %w.addr.0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %w.addr.0, align 4
  %mul.i = shl i32 %20, 2
  %21 = call ptr @memcpy(ptr %call8.i.i.i, ptr %18, i32 %mul.i)
  tail call void @kfree_sensitive(ptr noundef %18) #9
  %22 = ptrtoint ptr %d.i33 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call8.i.i.i, ptr %d.i33, align 4
  br label %if.end15.i

if.else.i39:                                      ; preds = %if.end.i35
  br i1 %15, label %kcalloc.exit62.thread.i, label %if.end7.i.i60.i, !prof !49

kcalloc.exit62.thread.i:                          ; preds = %if.else.i39
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %d.i33 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %d.i33, align 4
  br label %do.end

if.end7.i.i60.i:                                  ; preds = %if.else.i39
  %call8.i.i59.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %16, i32 noundef 3520) #14
  %24 = ptrtoint ptr %d.i33 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call8.i.i59.i, ptr %d.i33, align 4
  %tobool12.not.i = icmp eq ptr %call8.i.i59.i, null
  br i1 %tobool12.not.i, label %if.end7.i.i60.i.for.body.preheader_crit_edge, label %if.end7.i.i60.i.if.end15.i_crit_edge

if.end7.i.i60.i.if.end15.i_crit_edge:             ; preds = %if.end7.i.i60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.end7.i.i60.i.for.body.preheader_crit_edge:     ; preds = %if.end7.i.i60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader

if.end15.i:                                       ; preds = %if.end7.i.i60.i.if.end15.i_crit_edge, %if.end4.i
  %25 = ptrtoint ptr %w.addr.0 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %1, ptr %w.addr.0, align 4
  br label %for.body.preheader

do.end:                                           ; preds = %kcalloc.exit62.thread.i, %if.then1.i.do.end_crit_edge, %do.body.do.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp741 = icmp sgt i32 %1, 0
  br i1 %cmp741, label %do.end.for.body.preheader_crit_edge, label %do.end.for.end_crit_edge

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

do.end.for.body.preheader_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.end.for.body.preheader_crit_edge, %if.end15.i, %if.end7.i.i60.i.for.body.preheader_crit_edge, %if.end7.i.i.i.for.body.preheader_crit_edge
  %.in46 = getelementptr inbounds %struct.gcry_mpi, ptr %w.addr.0, i32 0, i32 5
  %26 = ptrtoint ptr %.in46 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %.in46, align 4
  %.in = getelementptr inbounds %struct.gcry_mpi, ptr %u, i32 0, i32 5
  %28 = ptrtoint ptr %.in to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %.in, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %_i.042 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr i32, ptr %29, i32 %_i.042
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx, align 4
  %arrayidx8 = getelementptr i32, ptr %27, i32 %_i.042
  %32 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx8, align 4
  %inc = add nuw nsw i32 %_i.042, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  %nlimbs11 = getelementptr inbounds %struct.gcry_mpi, ptr %w.addr.0, i32 0, i32 1
  %33 = ptrtoint ptr %nlimbs11 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %1, ptr %nlimbs11, align 4
  %flags = getelementptr inbounds %struct.gcry_mpi, ptr %u, i32 0, i32 4
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags, align 4
  %flags12 = getelementptr inbounds %struct.gcry_mpi, ptr %w.addr.0, i32 0, i32 4
  %and = and i32 %35, -49
  %36 = ptrtoint ptr %flags12 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %and, ptr %flags12, align 4
  %sign14 = getelementptr inbounds %struct.gcry_mpi, ptr %w.addr.0, i32 0, i32 3
  %37 = ptrtoint ptr %sign14 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %3, ptr %sign14, align 4
  ret ptr %w.addr.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mpi_set_ui(ptr noundef %w, i32 noundef %u) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %w, null
  br i1 %tobool.not, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 24) #13
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.then.do.body_crit_edge, label %if.end.i

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end.i:                                         ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 4) #13
  %d.i = getelementptr inbounds %struct.gcry_mpi, ptr %call7.i.i, i32 0, i32 5
  %2 = ptrtoint ptr %d.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i.i, ptr %d.i, align 4
  %tobool5.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool5.not.i, label %if.then6.i, label %do.body.thread

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %do.body

do.body.thread:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %call7.i.i, align 8
  %nlimbs10.i = getelementptr inbounds %struct.gcry_mpi, ptr %call7.i.i, i32 0, i32 1
  %4 = call ptr @memset(ptr %nlimbs10.i, i32 0, i32 16)
  br label %do.end

do.body:                                          ; preds = %if.then6.i, %if.then.do.body_crit_edge, %entry.do.body_crit_edge
  %5 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load i32, ptr %w, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.not.i = icmp eq i32 %.pr, 0
  br i1 %cmp.not.i, label %if.end.i15, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.i15:                                       ; preds = %do.body
  %d.i13 = getelementptr inbounds %struct.gcry_mpi, ptr %w, i32 0, i32 5
  %6 = ptrtoint ptr %d.i13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d.i13, align 4
  %tobool.not.i14 = icmp eq ptr %7, null
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i55.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 4) #13
  br i1 %tobool.not.i14, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i15
  %tobool2.not.i = icmp eq ptr %call7.i.i.i55.i, null
  br i1 %tobool2.not.i, label %if.then1.i.do.end_crit_edge, label %if.end4.i

if.then1.i.do.end_crit_edge:                      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end4.i:                                        ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %d.i13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d.i13, align 4
  %11 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %w, align 4
  %mul.i = shl i32 %12, 2
  %13 = call ptr @memcpy(ptr %call7.i.i.i55.i, ptr %10, i32 %mul.i)
  tail call void @kfree_sensitive(ptr noundef %10) #9
  %14 = ptrtoint ptr %d.i13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i.i55.i, ptr %d.i13, align 4
  br label %if.end15.i

if.else.i:                                        ; preds = %if.end.i15
  %15 = ptrtoint ptr %d.i13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i.i55.i, ptr %d.i13, align 4
  %tobool12.not.i = icmp eq ptr %call7.i.i.i55.i, null
  br i1 %tobool12.not.i, label %if.else.i.do.end_crit_edge, label %if.else.i.if.end15.i_crit_edge

if.else.i.if.end15.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.else.i.do.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end15.i:                                       ; preds = %if.else.i.if.end15.i_crit_edge, %if.end4.i
  %16 = ptrtoint ptr %w to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %w, align 4
  br label %do.end

do.end:                                           ; preds = %if.end15.i, %if.else.i.do.end_crit_edge, %if.then1.i.do.end_crit_edge, %do.body.do.end_crit_edge, %do.body.thread
  %w.addr.019 = phi ptr [ %call7.i.i, %do.body.thread ], [ %w, %do.body.do.end_crit_edge ], [ %w, %if.then1.i.do.end_crit_edge ], [ %w, %if.else.i.do.end_crit_edge ], [ %w, %if.end15.i ]
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %w.addr.019, i32 0, i32 5
  %17 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %d, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %u, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %u)
  %tobool4.not = icmp ne i32 %u, 0
  %cond = zext i1 %tobool4.not to i32
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %w.addr.019, i32 0, i32 1
  %20 = ptrtoint ptr %nlimbs to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %cond, ptr %nlimbs, align 4
  %sign = getelementptr inbounds %struct.gcry_mpi, ptr %w.addr.019, i32 0, i32 3
  %21 = ptrtoint ptr %sign to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %sign, align 4
  %flags = getelementptr inbounds %struct.gcry_mpi, ptr %w.addr.019, i32 0, i32 4
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %flags, align 4
  ret ptr %w.addr.019
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mpi_alloc_set_ui(i32 noundef %u) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 24) #13
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.mpi_alloc.exit_crit_edge, label %if.end.i

entry.mpi_alloc.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mpi_alloc.exit

if.end.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 4) #13
  %d.i = getelementptr inbounds %struct.gcry_mpi, ptr %call7.i.i, i32 0, i32 5
  %2 = ptrtoint ptr %d.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i.i, ptr %d.i, align 4
  %tobool5.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end9.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %mpi_alloc.exit

if.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %call7.i.i, align 8
  %nlimbs10.i = getelementptr inbounds %struct.gcry_mpi, ptr %call7.i.i, i32 0, i32 1
  %4 = call ptr @memset(ptr %nlimbs10.i, i32 0, i32 16)
  br label %mpi_alloc.exit

mpi_alloc.exit:                                   ; preds = %if.end9.i, %if.then6.i, %entry.mpi_alloc.exit_crit_edge
  %retval.0.i = phi ptr [ %call7.i.i, %if.end9.i ], [ null, %if.then6.i ], [ null, %entry.mpi_alloc.exit_crit_edge ]
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %retval.0.i, i32 0, i32 5
  %5 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %d, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %u, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %u)
  %tobool.not = icmp ne i32 %u, 0
  %cond = zext i1 %tobool.not to i32
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %retval.0.i, i32 0, i32 1
  %8 = ptrtoint ptr %nlimbs to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cond, ptr %nlimbs, align 4
  %sign = getelementptr inbounds %struct.gcry_mpi, ptr %retval.0.i, i32 0, i32 3
  %9 = ptrtoint ptr %sign to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %sign, align 4
  ret ptr %retval.0.i
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mpi_swap_cond(ptr nocapture noundef %a, ptr nocapture noundef %b, i32 noundef %swap) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = sub i32 0, %swap
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %a, align 4
  %2 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %b, align 4
  %4 = tail call i32 @llvm.smin.i32(i32 %1, i32 %3)
  %nlimbs4 = getelementptr inbounds %struct.gcry_mpi, ptr %a, i32 0, i32 1
  %5 = ptrtoint ptr %nlimbs4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nlimbs4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %4)
  %cmp5 = icmp sgt i32 %6, %4
  br i1 %cmp5, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %nlimbs6 = getelementptr inbounds %struct.gcry_mpi, ptr %b, i32 0, i32 1
  %7 = ptrtoint ptr %nlimbs6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nlimbs6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %4)
  %cmp7 = icmp sgt i32 %8, %4
  br i1 %cmp7, label %lor.lhs.false.cleanup_crit_edge, label %for.cond.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1084 = icmp sgt i32 %4, 0
  br i1 %cmp1084, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %a, i32 0, i32 5
  %d11 = getelementptr inbounds %struct.gcry_mpi, ptr %b, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.085 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %9 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %d, align 4
  %arrayidx = getelementptr i32, ptr %10, i32 %i.085
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %13 = ptrtoint ptr %d11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %d11, align 4
  %arrayidx12 = getelementptr i32, ptr %14, i32 %i.085
  %15 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx12, align 4
  %xor = xor i32 %16, %12
  %and = and i32 %xor, %sub
  %xor15 = xor i32 %and, %12
  store i32 %xor15, ptr %arrayidx, align 4
  %17 = load ptr, ptr %d11, align 4
  %arrayidx19 = getelementptr i32, ptr %17, i32 %i.085
  %18 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx19, align 4
  %xor20 = xor i32 %19, %and
  store i32 %xor20, ptr %arrayidx19, align 4
  %inc = add nuw nsw i32 %i.085, 1
  %exitcond.not = icmp eq i32 %inc, %4
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %20 = ptrtoint ptr %nlimbs4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nlimbs4, align 4
  %22 = ptrtoint ptr %nlimbs6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nlimbs6, align 4
  %xor25 = xor i32 %23, %21
  %and26 = and i32 %xor25, %sub
  %xor28 = xor i32 %and26, %21
  store i32 %xor28, ptr %nlimbs4, align 4
  %24 = load i32, ptr %nlimbs6, align 4
  %xor31 = xor i32 %24, %and26
  store i32 %xor31, ptr %nlimbs6, align 4
  %sign = getelementptr inbounds %struct.gcry_mpi, ptr %a, i32 0, i32 3
  %25 = ptrtoint ptr %sign to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sign, align 4
  %sign33 = getelementptr inbounds %struct.gcry_mpi, ptr %b, i32 0, i32 3
  %27 = ptrtoint ptr %sign33 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sign33, align 4
  %xor34 = xor i32 %28, %26
  %and35 = and i32 %xor34, %sub
  %xor37 = xor i32 %and35, %26
  store i32 %xor37, ptr %sign, align 4
  %29 = load i32, ptr %sign33, align 4
  %xor40 = xor i32 %29, %and35
  store i32 %xor40, ptr %sign33, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !18, !20, !21, !22, !23, !25, !27, !29, !31, !33, !34, !36, !38, !39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__initcall__kmod_mpi__226_64_mpi_init2, !1, !"__initcall__kmod_mpi__226_64_mpi_init2", i1 false, i1 false}
!1 = !{!"../lib/mpi/mpiutil.c", i32 64, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../lib/mpi/mpiutil.c", i32 73, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mpi_const._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @mpi_const._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../lib/mpi/mpiutil.c", i32 75, i32 3}
!10 = !{ptr @mpi_const._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @mpi_const._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @__ksymtab_mpi_const, !13, !"__ksymtab_mpi_const", i1 false, i1 false}
!13 = !{!"../lib/mpi/mpiutil.c", i32 78, i32 1}
!14 = !{ptr @__ksymtab_mpi_alloc, !15, !"__ksymtab_mpi_alloc", i1 false, i1 false}
!15 = !{!"../lib/mpi/mpiutil.c", i32 112, i32 1}
!16 = !{ptr @__ksymtab_mpi_clear, !17, !"__ksymtab_mpi_clear", i1 false, i1 false}
!17 = !{!"../lib/mpi/mpiutil.c", i32 173, i32 1}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../lib/mpi/mpiutil.c", i32 186, i32 3}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @mpi_free._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @mpi_free._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @__ksymtab_mpi_free, !24, !"__ksymtab_mpi_free", i1 false, i1 false}
!24 = !{!"../lib/mpi/mpiutil.c", i32 189, i32 1}
!25 = !{ptr @__ksymtab_mpi_set, !26, !"__ksymtab_mpi_set", i1 false, i1 false}
!26 = !{!"../lib/mpi/mpiutil.c", i32 268, i32 1}
!27 = !{ptr @__ksymtab_mpi_set_ui, !28, !"__ksymtab_mpi_set_ui", i1 false, i1 false}
!28 = !{!"../lib/mpi/mpiutil.c", i32 284, i32 1}
!29 = !{ptr @__UNIQUE_ID_description227, !30, !"__UNIQUE_ID_description227", i1 false, i1 false}
!30 = !{!"../lib/mpi/mpiutil.c", i32 329, i32 1}
!31 = !{ptr @__UNIQUE_ID_file228, !32, !"__UNIQUE_ID_file228", i1 false, i1 false}
!32 = !{!"../lib/mpi/mpiutil.c", i32 330, i32 1}
!33 = !{ptr @__UNIQUE_ID_license229, !32, !"__UNIQUE_ID_license229", i1 false, i1 false}
!34 = !{ptr @constants, !35, !"constants", i1 false, i1 false}
!35 = !{!"../lib/mpi/mpiutil.c", i32 24, i32 12}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../lib/mpi/mpiutil.c", i32 55, i32 4}
!38 = !{ptr @mpi_init._entry, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @mpi_init._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{!"branch_weights", i32 1, i32 2000}
