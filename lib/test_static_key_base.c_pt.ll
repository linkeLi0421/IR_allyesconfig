; ModuleID = '/llk/IR_all_yes/lib/test_static_key_base.c_pt.bc'
source_filename = "../lib/test_static_key_base.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+base_old_true_key\22, \22a\22\09"
module asm "\09.weak\09__crc_base_old_true_key\09\09\09\09"
module asm "\09.long\09__crc_base_old_true_key\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_base_old_true_key:\09\09\09\09\09"
module asm "\09.asciz \09\22base_old_true_key\22\09\09\09\09\09"
module asm "__kstrtabns_base_old_true_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+base_inv_old_true_key\22, \22a\22\09"
module asm "\09.weak\09__crc_base_inv_old_true_key\09\09\09\09"
module asm "\09.long\09__crc_base_inv_old_true_key\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_base_inv_old_true_key:\09\09\09\09\09"
module asm "\09.asciz \09\22base_inv_old_true_key\22\09\09\09\09\09"
module asm "__kstrtabns_base_inv_old_true_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+base_old_false_key\22, \22a\22\09"
module asm "\09.weak\09__crc_base_old_false_key\09\09\09\09"
module asm "\09.long\09__crc_base_old_false_key\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_base_old_false_key:\09\09\09\09\09"
module asm "\09.asciz \09\22base_old_false_key\22\09\09\09\09\09"
module asm "__kstrtabns_base_old_false_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+base_inv_old_false_key\22, \22a\22\09"
module asm "\09.weak\09__crc_base_inv_old_false_key\09\09\09\09"
module asm "\09.long\09__crc_base_inv_old_false_key\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_base_inv_old_false_key:\09\09\09\09\09"
module asm "\09.asciz \09\22base_inv_old_false_key\22\09\09\09\09\09"
module asm "__kstrtabns_base_inv_old_false_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+base_true_key\22, \22a\22\09"
module asm "\09.weak\09__crc_base_true_key\09\09\09\09"
module asm "\09.long\09__crc_base_true_key\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_base_true_key:\09\09\09\09\09"
module asm "\09.asciz \09\22base_true_key\22\09\09\09\09\09"
module asm "__kstrtabns_base_true_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+base_inv_true_key\22, \22a\22\09"
module asm "\09.weak\09__crc_base_inv_true_key\09\09\09\09"
module asm "\09.long\09__crc_base_inv_true_key\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_base_inv_true_key:\09\09\09\09\09"
module asm "\09.asciz \09\22base_inv_true_key\22\09\09\09\09\09"
module asm "__kstrtabns_base_inv_true_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+base_false_key\22, \22a\22\09"
module asm "\09.weak\09__crc_base_false_key\09\09\09\09"
module asm "\09.long\09__crc_base_false_key\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_base_false_key:\09\09\09\09\09"
module asm "\09.asciz \09\22base_false_key\22\09\09\09\09\09"
module asm "__kstrtabns_base_false_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+base_inv_false_key\22, \22a\22\09"
module asm "\09.weak\09__crc_base_inv_false_key\09\09\09\09"
module asm "\09.long\09__crc_base_inv_false_key\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_base_inv_false_key:\09\09\09\09\09"
module asm "\09.asciz \09\22base_inv_false_key\22\09\09\09\09\09"
module asm "__kstrtabns_base_inv_false_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }

@base_old_true_key = dso_local global { { %struct.atomic_t, { ptr } }, [24 x i8] } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_base_old_true_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_base_old_true_key = external dso_local constant [0 x i8], align 1
@__ksymtab_base_old_true_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @base_old_true_key to i32), ptr @__kstrtab_base_old_true_key, ptr @__kstrtabns_base_old_true_key }, section "___ksymtab_gpl+base_old_true_key", align 4
@base_inv_old_true_key = dso_local global { { %struct.atomic_t, { ptr } }, [24 x i8] } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_base_inv_old_true_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_base_inv_old_true_key = external dso_local constant [0 x i8], align 1
@__ksymtab_base_inv_old_true_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @base_inv_old_true_key to i32), ptr @__kstrtab_base_inv_old_true_key, ptr @__kstrtabns_base_inv_old_true_key }, section "___ksymtab_gpl+base_inv_old_true_key", align 4
@base_old_false_key = dso_local global { { %struct.atomic_t, { ptr } }, [24 x i8] } zeroinitializer, align 32
@__kstrtab_base_old_false_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_base_old_false_key = external dso_local constant [0 x i8], align 1
@__ksymtab_base_old_false_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @base_old_false_key to i32), ptr @__kstrtab_base_old_false_key, ptr @__kstrtabns_base_old_false_key }, section "___ksymtab_gpl+base_old_false_key", align 4
@base_inv_old_false_key = dso_local global { { %struct.atomic_t, { ptr } }, [24 x i8] } zeroinitializer, align 32
@__kstrtab_base_inv_old_false_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_base_inv_old_false_key = external dso_local constant [0 x i8], align 1
@__ksymtab_base_inv_old_false_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @base_inv_old_false_key to i32), ptr @__kstrtab_base_inv_old_false_key, ptr @__kstrtabns_base_inv_old_false_key }, section "___ksymtab_gpl+base_inv_old_false_key", align 4
@base_true_key = dso_local global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_base_true_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_base_true_key = external dso_local constant [0 x i8], align 1
@__ksymtab_base_true_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @base_true_key to i32), ptr @__kstrtab_base_true_key, ptr @__kstrtabns_base_true_key }, section "___ksymtab_gpl+base_true_key", align 4
@base_inv_true_key = dso_local global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_base_inv_true_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_base_inv_true_key = external dso_local constant [0 x i8], align 1
@__ksymtab_base_inv_true_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @base_inv_true_key to i32), ptr @__kstrtab_base_inv_true_key, ptr @__kstrtabns_base_inv_true_key }, section "___ksymtab_gpl+base_inv_true_key", align 4
@base_false_key = dso_local global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } zeroinitializer, align 32
@__kstrtab_base_false_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_base_false_key = external dso_local constant [0 x i8], align 1
@__ksymtab_base_false_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @base_false_key to i32), ptr @__kstrtab_base_false_key, ptr @__kstrtabns_base_false_key }, section "___ksymtab_gpl+base_false_key", align 4
@base_inv_false_key = dso_local global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } zeroinitializer, align 32
@__kstrtab_base_inv_false_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_base_inv_false_key = external dso_local constant [0 x i8], align 1
@__ksymtab_base_inv_false_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @base_inv_false_key to i32), ptr @__kstrtab_base_inv_false_key, ptr @__kstrtabns_base_inv_false_key }, section "___ksymtab_gpl+base_inv_false_key", align 4
@__UNIQUE_ID_author106 = internal constant [39 x i8] c"author=Jason Baron <jbaron@akamai.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license107 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@___asan_gen_.1 = private unnamed_addr constant [18 x i8] c"base_old_true_key\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 15, i32 19 }
@___asan_gen_.4 = private unnamed_addr constant [22 x i8] c"base_inv_old_true_key\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 17, i32 19 }
@___asan_gen_.7 = private unnamed_addr constant [19 x i8] c"base_old_false_key\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 19, i32 19 }
@___asan_gen_.10 = private unnamed_addr constant [23 x i8] c"base_inv_old_false_key\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 21, i32 19 }
@___asan_gen_.13 = private unnamed_addr constant [14 x i8] c"base_true_key\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 25, i32 1 }
@___asan_gen_.16 = private unnamed_addr constant [18 x i8] c"base_inv_true_key\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 27, i32 1 }
@___asan_gen_.19 = private unnamed_addr constant [15 x i8] c"base_false_key\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 29, i32 1 }
@___asan_gen_.22 = private unnamed_addr constant [19 x i8] c"base_inv_false_key\00", align 1
@___asan_gen_.23 = private constant [30 x i8] c"../lib/test_static_key_base.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 31, i32 1 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_author106, ptr @__UNIQUE_ID_license107, ptr @__ksymtab_base_false_key, ptr @__ksymtab_base_inv_false_key, ptr @__ksymtab_base_inv_old_false_key, ptr @__ksymtab_base_inv_old_true_key, ptr @__ksymtab_base_inv_true_key, ptr @__ksymtab_base_old_false_key, ptr @__ksymtab_base_old_true_key, ptr @__ksymtab_base_true_key, ptr @base_old_true_key, ptr @base_inv_old_true_key, ptr @base_old_false_key, ptr @base_inv_old_false_key, ptr @base_true_key, ptr @base_inv_true_key, ptr @base_false_key, ptr @base_inv_false_key], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @base_old_true_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @base_inv_old_true_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @base_old_false_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @base_inv_old_false_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @base_true_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @base_inv_true_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @base_false_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @base_inv_false_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @invert_key(ptr noundef nonnull @base_inv_old_true_key)
  tail call fastcc void @invert_key(ptr noundef nonnull @base_inv_old_false_key)
  tail call fastcc void @invert_key(ptr noundef nonnull @base_inv_true_key)
  tail call fastcc void @invert_key(ptr noundef nonnull @base_inv_false_key)
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @invert_key(ptr noundef %key) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 @static_key_count(ptr noundef %key) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @static_key_disable(ptr noundef %key) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @static_key_enable(ptr noundef %key) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @static_key_count(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_enable(ptr noundef) local_unnamed_addr #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind uwtable(sync) }
attributes #5 = { nomerge }
attributes #6 = { nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @base_old_true_key, !1, !"base_old_true_key", i1 false, i1 false}
!1 = !{!"../lib/test_static_key_base.c", i32 15, i32 19}
!2 = !{ptr @__ksymtab_base_old_true_key, !3, !"__ksymtab_base_old_true_key", i1 false, i1 false}
!3 = !{!"../lib/test_static_key_base.c", i32 16, i32 1}
!4 = !{ptr @base_inv_old_true_key, !5, !"base_inv_old_true_key", i1 false, i1 false}
!5 = !{!"../lib/test_static_key_base.c", i32 17, i32 19}
!6 = !{ptr @__ksymtab_base_inv_old_true_key, !7, !"__ksymtab_base_inv_old_true_key", i1 false, i1 false}
!7 = !{!"../lib/test_static_key_base.c", i32 18, i32 1}
!8 = !{ptr @base_old_false_key, !9, !"base_old_false_key", i1 false, i1 false}
!9 = !{!"../lib/test_static_key_base.c", i32 19, i32 19}
!10 = !{ptr @__ksymtab_base_old_false_key, !11, !"__ksymtab_base_old_false_key", i1 false, i1 false}
!11 = !{!"../lib/test_static_key_base.c", i32 20, i32 1}
!12 = !{ptr @base_inv_old_false_key, !13, !"base_inv_old_false_key", i1 false, i1 false}
!13 = !{!"../lib/test_static_key_base.c", i32 21, i32 19}
!14 = !{ptr @__ksymtab_base_inv_old_false_key, !15, !"__ksymtab_base_inv_old_false_key", i1 false, i1 false}
!15 = !{!"../lib/test_static_key_base.c", i32 22, i32 1}
!16 = !{ptr @base_true_key, !17, !"base_true_key", i1 false, i1 false}
!17 = !{!"../lib/test_static_key_base.c", i32 25, i32 1}
!18 = !{ptr @__ksymtab_base_true_key, !19, !"__ksymtab_base_true_key", i1 false, i1 false}
!19 = !{!"../lib/test_static_key_base.c", i32 26, i32 1}
!20 = !{ptr @base_inv_true_key, !21, !"base_inv_true_key", i1 false, i1 false}
!21 = !{!"../lib/test_static_key_base.c", i32 27, i32 1}
!22 = !{ptr @__ksymtab_base_inv_true_key, !23, !"__ksymtab_base_inv_true_key", i1 false, i1 false}
!23 = !{!"../lib/test_static_key_base.c", i32 28, i32 1}
!24 = !{ptr @base_false_key, !25, !"base_false_key", i1 false, i1 false}
!25 = !{!"../lib/test_static_key_base.c", i32 29, i32 1}
!26 = !{ptr @__ksymtab_base_false_key, !27, !"__ksymtab_base_false_key", i1 false, i1 false}
!27 = !{!"../lib/test_static_key_base.c", i32 30, i32 1}
!28 = !{ptr @base_inv_false_key, !29, !"base_inv_false_key", i1 false, i1 false}
!29 = !{!"../lib/test_static_key_base.c", i32 31, i32 1}
!30 = !{ptr @__ksymtab_base_inv_false_key, !31, !"__ksymtab_base_inv_false_key", i1 false, i1 false}
!31 = !{!"../lib/test_static_key_base.c", i32 32, i32 1}
!32 = !{ptr @__UNIQUE_ID_author106, !33, !"__UNIQUE_ID_author106", i1 false, i1 false}
!33 = !{!"../lib/test_static_key_base.c", i32 59, i32 1}
!34 = !{ptr @__UNIQUE_ID_license107, !35, !"__UNIQUE_ID_license107", i1 false, i1 false}
!35 = !{!"../lib/test_static_key_base.c", i32 60, i32 1}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
