; ModuleID = '/llk/IR_all_yes/arch/arm/kernel/fiq.c_pt.bc'
source_filename = "../arch/arm/kernel/fiq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+set_fiq_handler\22, \22a\22\09"
module asm "\09.weak\09__crc_set_fiq_handler\09\09\09\09"
module asm "\09.long\09__crc_set_fiq_handler\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_set_fiq_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22set_fiq_handler\22\09\09\09\09\09"
module asm "__kstrtabns_set_fiq_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__set_fiq_regs\22, \22a\22\09"
module asm "\09.weak\09__crc___set_fiq_regs\09\09\09\09"
module asm "\09.long\09__crc___set_fiq_regs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___set_fiq_regs:\09\09\09\09\09"
module asm "\09.asciz \09\22__set_fiq_regs\22\09\09\09\09\09"
module asm "__kstrtabns___set_fiq_regs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__get_fiq_regs\22, \22a\22\09"
module asm "\09.weak\09__crc___get_fiq_regs\09\09\09\09"
module asm "\09.long\09__crc___get_fiq_regs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___get_fiq_regs:\09\09\09\09\09"
module asm "\09.asciz \09\22__get_fiq_regs\22\09\09\09\09\09"
module asm "__kstrtabns___get_fiq_regs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+claim_fiq\22, \22a\22\09"
module asm "\09.weak\09__crc_claim_fiq\09\09\09\09"
module asm "\09.long\09__crc_claim_fiq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_claim_fiq:\09\09\09\09\09"
module asm "\09.asciz \09\22claim_fiq\22\09\09\09\09\09"
module asm "__kstrtabns_claim_fiq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+release_fiq\22, \22a\22\09"
module asm "\09.weak\09__crc_release_fiq\09\09\09\09"
module asm "\09.long\09__crc_release_fiq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_release_fiq:\09\09\09\09\09"
module asm "\09.asciz \09\22release_fiq\22\09\09\09\09\09"
module asm "__kstrtabns_release_fiq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+enable_fiq\22, \22a\22\09"
module asm "\09.weak\09__crc_enable_fiq\09\09\09\09"
module asm "\09.long\09__crc_enable_fiq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_enable_fiq:\09\09\09\09\09"
module asm "\09.asciz \09\22enable_fiq\22\09\09\09\09\09"
module asm "__kstrtabns_enable_fiq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+disable_fiq\22, \22a\22\09"
module asm "\09.weak\09__crc_disable_fiq\09\09\09\09"
module asm "\09.long\09__crc_disable_fiq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_disable_fiq:\09\09\09\09\09"
module asm "\09.asciz \09\22disable_fiq\22\09\09\09\09\09"
module asm "__kstrtabns_disable_fiq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.fiq_handler = type { ptr, ptr, ptr, ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pt_regs = type { [18 x i32] }

@current_fiq = internal global { ptr, [28 x i8] } { ptr @default_owner, [28 x i8] zeroinitializer }, align 32
@default_owner = internal global { %struct.fiq_handler, [16 x i8] } { %struct.fiq_handler { ptr null, ptr @.str.5, ptr @fiq_def_op, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%*s:              %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"FIQ\00", [28 x i8] zeroinitializer }, align 32
@vectors_page = external dso_local local_unnamed_addr global ptr, align 4
@vector_fiq_offset = external dso_local global ptr, align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@release_fiq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s FIQ trying to release %s FIQ\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"release_fiq\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"arch/arm/kernel/fiq.c\00", [42 x i8] zeroinitializer }, align 32
@release_fiq._entry_ptr = internal global ptr @release_fiq._entry, section ".printk_index", align 4
@fiq_start = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_set_fiq_handler = external dso_local constant [0 x i8], align 1
@__kstrtabns_set_fiq_handler = external dso_local constant [0 x i8], align 1
@__ksymtab_set_fiq_handler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @set_fiq_handler to i32), ptr @__kstrtab_set_fiq_handler, ptr @__kstrtabns_set_fiq_handler }, section "___ksymtab+set_fiq_handler", align 4
@__kstrtab___set_fiq_regs = external dso_local constant [0 x i8], align 1
@__kstrtabns___set_fiq_regs = external dso_local constant [0 x i8], align 1
@__ksymtab___set_fiq_regs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__set_fiq_regs to i32), ptr @__kstrtab___set_fiq_regs, ptr @__kstrtabns___set_fiq_regs }, section "___ksymtab+__set_fiq_regs", align 4
@__kstrtab___get_fiq_regs = external dso_local constant [0 x i8], align 1
@__kstrtabns___get_fiq_regs = external dso_local constant [0 x i8], align 1
@__ksymtab___get_fiq_regs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__get_fiq_regs to i32), ptr @__kstrtab___get_fiq_regs, ptr @__kstrtabns___get_fiq_regs }, section "___ksymtab+__get_fiq_regs", align 4
@__kstrtab_claim_fiq = external dso_local constant [0 x i8], align 1
@__kstrtabns_claim_fiq = external dso_local constant [0 x i8], align 1
@__ksymtab_claim_fiq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @claim_fiq to i32), ptr @__kstrtab_claim_fiq, ptr @__kstrtabns_claim_fiq }, section "___ksymtab+claim_fiq", align 4
@__kstrtab_release_fiq = external dso_local constant [0 x i8], align 1
@__kstrtabns_release_fiq = external dso_local constant [0 x i8], align 1
@__ksymtab_release_fiq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @release_fiq to i32), ptr @__kstrtab_release_fiq, ptr @__kstrtabns_release_fiq }, section "___ksymtab+release_fiq", align 4
@__kstrtab_enable_fiq = external dso_local constant [0 x i8], align 1
@__kstrtabns_enable_fiq = external dso_local constant [0 x i8], align 1
@__ksymtab_enable_fiq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @enable_fiq to i32), ptr @__kstrtab_enable_fiq, ptr @__kstrtabns_enable_fiq }, section "___ksymtab+enable_fiq", align 4
@__kstrtab_disable_fiq = external dso_local constant [0 x i8], align 1
@__kstrtabns_disable_fiq = external dso_local constant [0 x i8], align 1
@__ksymtab_disable_fiq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @disable_fiq to i32), ptr @__kstrtab_disable_fiq, ptr @__kstrtabns_disable_fiq }, section "___ksymtab+disable_fiq", align 4
@dfl_fiq_insn = internal global { i32, [28 x i8] } zeroinitializer, align 32
@dfl_fiq_regs = internal global { %struct.pt_regs, [56 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"default\00", [24 x i8] zeroinitializer }, align 32
@cacheid = external dso_local local_unnamed_addr global i32, align 4
@___asan_gen_.6 = private unnamed_addr constant [12 x i8] c"current_fiq\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 83, i32 28 }
@___asan_gen_.9 = private unnamed_addr constant [14 x i8] c"default_owner\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 78, i32 27 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 88, i32 17 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 88, i32 49 }
@___asan_gen_.18 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 128, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant [10 x i8] c"fiq_start\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 139, i32 12 }
@___asan_gen_.33 = private unnamed_addr constant [13 x i8] c"dfl_fiq_insn\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 56, i32 22 }
@___asan_gen_.36 = private unnamed_addr constant [13 x i8] c"dfl_fiq_regs\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 57, i32 23 }
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.40 = private constant [25 x i8] c"../arch/arm/kernel/fiq.c\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 79, i32 10 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__ksymtab___get_fiq_regs, ptr @__ksymtab___set_fiq_regs, ptr @__ksymtab_claim_fiq, ptr @__ksymtab_disable_fiq, ptr @__ksymtab_enable_fiq, ptr @__ksymtab_release_fiq, ptr @__ksymtab_set_fiq_handler, ptr @release_fiq._entry, ptr @release_fiq._entry_ptr, ptr @current_fiq, ptr @default_owner, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @fiq_start, ptr @dfl_fiq_insn, ptr @dfl_fiq_regs, ptr @.str.5], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @current_fiq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_owner to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @release_fiq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fiq_start to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfl_fiq_insn to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfl_fiq_regs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @show_fiq_list(ptr noundef %p, i32 noundef %prec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @current_fiq, align 4
  %cmp.not = icmp eq ptr %0, @default_owner
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.fiq_handler, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %p, ptr noundef nonnull @.str, i32 noundef %prec, ptr noundef nonnull @.str.1, ptr noundef %2) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @set_fiq_handler(ptr nocapture noundef readonly %start, i32 noundef %length) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vectors_page to i32))
  %0 = load ptr, ptr @vectors_page, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 ptrtoint (ptr @vector_fiq_offset to i32)
  %1 = call ptr @memcpy(ptr %add.ptr, ptr %start, i32 %length)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cacheid to i32))
  %2 = load i32, ptr @cacheid, align 4
  %and2.i = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not = icmp eq i32 %and2.i, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5), align 4
  %4 = ptrtoint ptr %0 to i32
  %add = add i32 %4, ptrtoint (ptr @vector_fiq_offset to i32)
  %add2 = add i32 %add, %length
  tail call void %3(i32 noundef %add, i32 noundef %add2) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5), align 4
  %add5 = add i32 %length, add (i32 ptrtoint (ptr @vector_fiq_offset to i32), i32 -65536)
  tail call void %5(i32 noundef add (i32 ptrtoint (ptr @vector_fiq_offset to i32), i32 -65536), i32 noundef %add5) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @claim_fiq(ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @current_fiq, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.then5_crit_edge, label %if.then

entry.if.then5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then5

if.then:                                          ; preds = %entry
  %fiq_op = getelementptr inbounds %struct.fiq_handler, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %fiq_op to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fiq_op, align 4
  %cmp.not = icmp eq ptr %2, null
  br i1 %cmp.not, label %if.then.if.end6_crit_edge, label %if.end3

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.end3:                                          ; preds = %if.then
  %dev_id = getelementptr inbounds %struct.fiq_handler, ptr %0, i32 0, i32 3
  %3 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_id, align 4
  %call = tail call i32 %2(ptr noundef %4, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end3.if.then5_crit_edge, label %if.end3.if.end6_crit_edge

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.end3.if.then5_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then5

if.then5:                                         ; preds = %if.end3.if.then5_crit_edge, %entry.if.then5_crit_edge
  %5 = load ptr, ptr @current_fiq, align 4
  %6 = ptrtoint ptr %f to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %f, align 4
  store ptr %f, ptr @current_fiq, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3.if.end6_crit_edge, %if.then.if.end6_crit_edge
  %ret.012 = phi i32 [ 0, %if.then5 ], [ %call, %if.end3.if.end6_crit_edge ], [ -16, %if.then.if.end6_crit_edge ]
  ret i32 %ret.012
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @release_fiq(ptr nocapture noundef readonly %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @current_fiq, align 4
  %cmp.not = icmp eq ptr %0, %f
  br i1 %cmp.not, label %entry.do.body2_crit_edge, label %do.end

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.fiq_handler, ptr %f, i32 0, i32 1
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name, align 4
  %name1 = getelementptr inbounds %struct.fiq_handler, ptr %0, i32 0, i32 1
  %3 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name1, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %2, ptr noundef %4) #7
  tail call void @dump_stack() #7
  br label %do.end4

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %5 = load ptr, ptr @current_fiq, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  store ptr %7, ptr @current_fiq, align 4
  %fiq_op = getelementptr inbounds %struct.fiq_handler, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %fiq_op to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fiq_op, align 4
  %dev_id = getelementptr inbounds %struct.fiq_handler, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_id, align 4
  %call3 = tail call i32 %9(ptr noundef %11, i32 noundef 0) #4
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %do.body2.do.end4_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body2

do.body2.do.end4_crit_edge:                       ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end4

do.end4:                                          ; preds = %do.body2.do.end4_crit_edge, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @enable_fiq(i32 noundef %fiq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @fiq_start, align 4
  %add = add i32 %0, %fiq
  tail call void @enable_irq(i32 noundef %add) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @disable_fiq(i32 noundef %fiq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @fiq_start, align 4
  %add = add i32 %0, %fiq
  tail call void @disable_irq(i32 noundef %add) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__set_fiq_regs(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__get_fiq_regs(ptr noundef) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @init_FIQ(i32 noundef %start) local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 add (i32 ptrtoint (ptr @vector_fiq_offset to i32), i32 -65536))
  %0 = load i32, ptr inttoptr (i32 add (i32 ptrtoint (ptr @vector_fiq_offset to i32), i32 -65536) to ptr), align 4
  store i32 %0, ptr @dfl_fiq_insn, align 4
  tail call void @__get_fiq_regs(ptr noundef getelementptr inbounds (%struct.pt_regs, ptr @dfl_fiq_regs, i32 0, i32 0, i32 8)) #4
  store i32 %start, ptr @fiq_start, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fiq_def_op(ptr nocapture noundef readnone %ref, i32 noundef %relinquish) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %relinquish)
  %tobool.not = icmp eq i32 %relinquish, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "cpsid f\09@ __clf", "~{memory},~{cc}"() #4, !srcloc !45
  tail call void @__set_fiq_regs(ptr noundef getelementptr inbounds (%struct.pt_regs, ptr @dfl_fiq_regs, i32 0, i32 0, i32 8)) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vectors_page to i32))
  %0 = load ptr, ptr @vectors_page, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 ptrtoint (ptr @vector_fiq_offset to i32)
  %1 = load i32, ptr @dfl_fiq_insn, align 4
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 %1, ptr %add.ptr.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cacheid to i32))
  %3 = load i32, ptr @cacheid, align 4
  %and2.i.i = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.set_fiq_handler.exit_crit_edge

if.then.set_fiq_handler.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %set_fiq_handler.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5), align 4
  %5 = ptrtoint ptr %0 to i32
  %add.i = add i32 %5, ptrtoint (ptr @vector_fiq_offset to i32)
  %add2.i = add i32 %5, add (i32 ptrtoint (ptr @vector_fiq_offset to i32), i32 4)
  tail call void %4(i32 noundef %add.i, i32 noundef %add2.i) #4
  br label %set_fiq_handler.exit

set_fiq_handler.exit:                             ; preds = %if.then.i, %if.then.set_fiq_handler.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5), align 4
  tail call void %6(i32 noundef add (i32 ptrtoint (ptr @vector_fiq_offset to i32), i32 -65536), i32 noundef add (i32 ptrtoint (ptr @vector_fiq_offset to i32), i32 -65532)) #4
  tail call void asm sideeffect "cpsie f\09@ __stf", "~{memory},~{cc}"() #4, !srcloc !46
  br label %if.end

if.end:                                           ; preds = %set_fiq_handler.exit, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/kernel/fiq.c", i32 88, i32 17}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/kernel/fiq.c", i32 88, i32 49}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../arch/arm/kernel/fiq.c", i32 128, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @release_fiq._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @release_fiq._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @__ksymtab_set_fiq_handler, !11, !"__ksymtab_set_fiq_handler", i1 false, i1 false}
!11 = !{!"../arch/arm/kernel/fiq.c", i32 151, i32 1}
!12 = !{ptr @__ksymtab___set_fiq_regs, !13, !"__ksymtab___set_fiq_regs", i1 false, i1 false}
!13 = !{!"../arch/arm/kernel/fiq.c", i32 152, i32 1}
!14 = !{ptr @__ksymtab___get_fiq_regs, !15, !"__ksymtab___get_fiq_regs", i1 false, i1 false}
!15 = !{!"../arch/arm/kernel/fiq.c", i32 153, i32 1}
!16 = !{ptr @__ksymtab_claim_fiq, !17, !"__ksymtab_claim_fiq", i1 false, i1 false}
!17 = !{!"../arch/arm/kernel/fiq.c", i32 154, i32 1}
!18 = !{ptr @__ksymtab_release_fiq, !19, !"__ksymtab_release_fiq", i1 false, i1 false}
!19 = !{!"../arch/arm/kernel/fiq.c", i32 155, i32 1}
!20 = !{ptr @__ksymtab_enable_fiq, !21, !"__ksymtab_enable_fiq", i1 false, i1 false}
!21 = !{!"../arch/arm/kernel/fiq.c", i32 156, i32 1}
!22 = !{ptr @__ksymtab_disable_fiq, !23, !"__ksymtab_disable_fiq", i1 false, i1 false}
!23 = !{!"../arch/arm/kernel/fiq.c", i32 157, i32 1}
!24 = !{ptr @dfl_fiq_insn, !25, !"dfl_fiq_insn", i1 false, i1 false}
!25 = !{!"../arch/arm/kernel/fiq.c", i32 56, i32 22}
!26 = !{ptr @dfl_fiq_regs, !27, !"dfl_fiq_regs", i1 false, i1 false}
!27 = !{!"../arch/arm/kernel/fiq.c", i32 57, i32 23}
!28 = !{ptr @fiq_start, !29, !"fiq_start", i1 false, i1 false}
!29 = !{!"../arch/arm/kernel/fiq.c", i32 139, i32 12}
!30 = !{ptr @current_fiq, !31, !"current_fiq", i1 false, i1 false}
!31 = !{!"../arch/arm/kernel/fiq.c", i32 83, i32 28}
!32 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../arch/arm/kernel/fiq.c", i32 79, i32 10}
!34 = !{ptr @default_owner, !35, !"default_owner", i1 false, i1 false}
!35 = !{!"../arch/arm/kernel/fiq.c", i32 78, i32 27}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{i64 2153876653}
!46 = !{i64 2153876701}
