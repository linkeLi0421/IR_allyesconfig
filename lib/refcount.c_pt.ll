; ModuleID = '/llk/IR_all_yes/lib/refcount.c_pt.bc'
source_filename = "../lib/refcount.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+refcount_warn_saturate\22, \22a\22\09"
module asm "\09.weak\09__crc_refcount_warn_saturate\09\09\09\09"
module asm "\09.long\09__crc_refcount_warn_saturate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_refcount_warn_saturate:\09\09\09\09\09"
module asm "\09.asciz \09\22refcount_warn_saturate\22\09\09\09\09\09"
module asm "__kstrtabns_refcount_warn_saturate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+refcount_dec_if_one\22, \22a\22\09"
module asm "\09.weak\09__crc_refcount_dec_if_one\09\09\09\09"
module asm "\09.long\09__crc_refcount_dec_if_one\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_refcount_dec_if_one:\09\09\09\09\09"
module asm "\09.asciz \09\22refcount_dec_if_one\22\09\09\09\09\09"
module asm "__kstrtabns_refcount_dec_if_one:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+refcount_dec_not_one\22, \22a\22\09"
module asm "\09.weak\09__crc_refcount_dec_not_one\09\09\09\09"
module asm "\09.long\09__crc_refcount_dec_not_one\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_refcount_dec_not_one:\09\09\09\09\09"
module asm "\09.asciz \09\22refcount_dec_not_one\22\09\09\09\09\09"
module asm "__kstrtabns_refcount_dec_not_one:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+refcount_dec_and_mutex_lock\22, \22a\22\09"
module asm "\09.weak\09__crc_refcount_dec_and_mutex_lock\09\09\09\09"
module asm "\09.long\09__crc_refcount_dec_and_mutex_lock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_refcount_dec_and_mutex_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22refcount_dec_and_mutex_lock\22\09\09\09\09\09"
module asm "__kstrtabns_refcount_dec_and_mutex_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+refcount_dec_and_lock\22, \22a\22\09"
module asm "\09.weak\09__crc_refcount_dec_and_lock\09\09\09\09"
module asm "\09.long\09__crc_refcount_dec_and_lock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_refcount_dec_and_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22refcount_dec_and_lock\22\09\09\09\09\09"
module asm "__kstrtabns_refcount_dec_and_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+refcount_dec_and_lock_irqsave\22, \22a\22\09"
module asm "\09.weak\09__crc_refcount_dec_and_lock_irqsave\09\09\09\09"
module asm "\09.long\09__crc_refcount_dec_and_lock_irqsave\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_refcount_dec_and_lock_irqsave:\09\09\09\09\09"
module asm "\09.asciz \09\22refcount_dec_and_lock_irqsave\22\09\09\09\09\09"
module asm "__kstrtabns_refcount_dec_and_lock_irqsave:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@refcount_warn_saturate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lib/refcount.c\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"refcount_t: saturated; leaking memory.\0A\00", [56 x i8] zeroinitializer }, align 32
@refcount_warn_saturate.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@refcount_warn_saturate.__already_done.3 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"refcount_t: addition on 0; use-after-free.\0A\00", [52 x i8] zeroinitializer }, align 32
@refcount_warn_saturate.__already_done.5 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"refcount_t: underflow; use-after-free.\0A\00", [56 x i8] zeroinitializer }, align 32
@refcount_warn_saturate.__already_done.7 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"refcount_t: decrement hit 0; leaking memory.\0A\00", [50 x i8] zeroinitializer }, align 32
@refcount_warn_saturate.__already_done.9 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"refcount_t: unknown saturation event!?.\0A\00", [55 x i8] zeroinitializer }, align 32
@__kstrtab_refcount_warn_saturate = external dso_local constant [0 x i8], align 1
@__kstrtabns_refcount_warn_saturate = external dso_local constant [0 x i8], align 1
@__ksymtab_refcount_warn_saturate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @refcount_warn_saturate to i32), ptr @__kstrtab_refcount_warn_saturate, ptr @__kstrtabns_refcount_warn_saturate }, section "___ksymtab+refcount_warn_saturate", align 4
@__kstrtab_refcount_dec_if_one = external dso_local constant [0 x i8], align 1
@__kstrtabns_refcount_dec_if_one = external dso_local constant [0 x i8], align 1
@__ksymtab_refcount_dec_if_one = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @refcount_dec_if_one to i32), ptr @__kstrtab_refcount_dec_if_one, ptr @__kstrtabns_refcount_dec_if_one }, section "___ksymtab+refcount_dec_if_one", align 4
@refcount_dec_not_one.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_refcount_dec_not_one = external dso_local constant [0 x i8], align 1
@__kstrtabns_refcount_dec_not_one = external dso_local constant [0 x i8], align 1
@__ksymtab_refcount_dec_not_one = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @refcount_dec_not_one to i32), ptr @__kstrtab_refcount_dec_not_one, ptr @__kstrtabns_refcount_dec_not_one }, section "___ksymtab+refcount_dec_not_one", align 4
@__kstrtab_refcount_dec_and_mutex_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_refcount_dec_and_mutex_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_refcount_dec_and_mutex_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @refcount_dec_and_mutex_lock to i32), ptr @__kstrtab_refcount_dec_and_mutex_lock, ptr @__kstrtabns_refcount_dec_and_mutex_lock }, section "___ksymtab+refcount_dec_and_mutex_lock", align 4
@__kstrtab_refcount_dec_and_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_refcount_dec_and_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_refcount_dec_and_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @refcount_dec_and_lock to i32), ptr @__kstrtab_refcount_dec_and_lock, ptr @__kstrtabns_refcount_dec_and_lock }, section "___ksymtab+refcount_dec_and_lock", align 4
@__kstrtab_refcount_dec_and_lock_irqsave = external dso_local constant [0 x i8], align 1
@__kstrtabns_refcount_dec_and_lock_irqsave = external dso_local constant [0 x i8], align 1
@__ksymtab_refcount_dec_and_lock_irqsave = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @refcount_dec_and_lock_irqsave to i32), ptr @__kstrtab_refcount_dec_and_lock_irqsave, ptr @__kstrtabns_refcount_dec_and_lock_irqsave }, section "___ksymtab+refcount_dec_and_lock_irqsave", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3221225472]
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 19, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 25, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 28, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 31, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private constant [18 x i8] c"../lib/refcount.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 34, i32 3 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__ksymtab_refcount_dec_and_lock, ptr @__ksymtab_refcount_dec_and_lock_irqsave, ptr @__ksymtab_refcount_dec_and_mutex_lock, ptr @__ksymtab_refcount_dec_if_one, ptr @__ksymtab_refcount_dec_not_one, ptr @__ksymtab_refcount_warn_saturate, ptr @.str, ptr @.str.1, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.10], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @refcount_warn_saturate(ptr noundef %r, i32 noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r, i32 noundef 4) #6
  %0 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 -1073741824, ptr %r, align 4
  %1 = zext i32 %t to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %t, label %land.end235 [
    i32 0, label %land.end
    i32 1, label %land.end40
    i32 2, label %land.end89
    i32 3, label %land.end138
    i32 4, label %land.end187
  ]

land.end:                                         ; preds = %entry
  %.b298 = load i1, ptr @refcount_warn_saturate.__already_done, align 1
  br i1 %.b298, label %land.end.sw.epilog_crit_edge, label %if.then, !prof !40

land.end.sw.epilog_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @refcount_warn_saturate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 19, i32 noundef 9, ptr noundef nonnull @.str.1) #6
  br label %sw.epilog

land.end40:                                       ; preds = %entry
  %.b289297 = load i1, ptr @refcount_warn_saturate.__already_done.2, align 1
  br i1 %.b289297, label %land.end40.sw.epilog_crit_edge, label %if.then47, !prof !40

land.end40.sw.epilog_crit_edge:                   ; preds = %land.end40
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then47:                                        ; preds = %land.end40
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @refcount_warn_saturate.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 22, i32 noundef 9, ptr noundef nonnull @.str.1) #6
  br label %sw.epilog

land.end89:                                       ; preds = %entry
  %.b290296 = load i1, ptr @refcount_warn_saturate.__already_done.3, align 1
  br i1 %.b290296, label %land.end89.sw.epilog_crit_edge, label %if.then96, !prof !40

land.end89.sw.epilog_crit_edge:                   ; preds = %land.end89
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then96:                                        ; preds = %land.end89
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @refcount_warn_saturate.__already_done.3, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 25, i32 noundef 9, ptr noundef nonnull @.str.4) #6
  br label %sw.epilog

land.end138:                                      ; preds = %entry
  %.b291295 = load i1, ptr @refcount_warn_saturate.__already_done.5, align 1
  br i1 %.b291295, label %land.end138.sw.epilog_crit_edge, label %if.then145, !prof !40

land.end138.sw.epilog_crit_edge:                  ; preds = %land.end138
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then145:                                       ; preds = %land.end138
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @refcount_warn_saturate.__already_done.5, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 28, i32 noundef 9, ptr noundef nonnull @.str.6) #6
  br label %sw.epilog

land.end187:                                      ; preds = %entry
  %.b292294 = load i1, ptr @refcount_warn_saturate.__already_done.7, align 1
  br i1 %.b292294, label %land.end187.sw.epilog_crit_edge, label %if.then194, !prof !40

land.end187.sw.epilog_crit_edge:                  ; preds = %land.end187
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then194:                                       ; preds = %land.end187
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @refcount_warn_saturate.__already_done.7, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 31, i32 noundef 9, ptr noundef nonnull @.str.8) #6
  br label %sw.epilog

land.end235:                                      ; preds = %entry
  %.b293299 = load i1, ptr @refcount_warn_saturate.__already_done.9, align 1
  br i1 %.b293299, label %land.end235.sw.epilog_crit_edge, label %if.then242, !prof !40

land.end235.sw.epilog_crit_edge:                  ; preds = %land.end235
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then242:                                       ; preds = %land.end235
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @refcount_warn_saturate.__already_done.9, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 34, i32 noundef 9, ptr noundef nonnull @.str.10) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then242, %land.end235.sw.epilog_crit_edge, %if.then194, %land.end187.sw.epilog_crit_edge, %if.then145, %land.end138.sw.epilog_crit_edge, %if.then96, %land.end89.sw.epilog_crit_edge, %if.then47, %land.end40.sw.epilog_crit_edge, %if.then, %land.end.sw.epilog_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @refcount_dec_if_one(ptr noundef %r) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %val, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r, i32 noundef 4) #6
  %call.i3.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %val, i32 noundef 4) #6
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !41
  call void @llvm.prefetch.p0(ptr %r, i32 1, i32 3, i32 1) #6
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %entry
  %3 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %r, ptr %r, i32 %2, i32 0, ptr elementtype(i32) %r) #6, !srcloc !42
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %3, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %arch_atomic_cmpxchg_release.exit.i.i, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_release.exit.i.i:             ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %3, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult3.i.i.i.i, i32 %2)
  %cmp.not.i.i = icmp eq i32 %asmresult3.i.i.i.i, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i1 %cmp.not.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @refcount_dec_not_one(ptr noundef %r) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %r, i32 noundef 4) #6
  %0 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %r, align 4
  br label %do.body

do.body:                                          ; preds = %arch_atomic_cmpxchg_release.exit.i.i.do.body_crit_edge, %entry
  %2 = phi i32 [ %1, %entry ], [ %asmresult3.i.i.i.i, %arch_atomic_cmpxchg_release.exit.i.i.do.body_crit_edge ]
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %val, align 4
  %4 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %2, label %do.cond54 [
    i32 -1073741824, label %do.body.cleanup.loopexit_crit_edge
    i32 1, label %do.body.cleanup_crit_edge
    i32 0, label %land.end
  ], !prof !43

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body.cleanup.loopexit_crit_edge:               ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.loopexit

land.end:                                         ; preds = %do.body
  %.b66 = load i1, ptr @refcount_dec_not_one.__already_done, align 1
  br i1 %.b66, label %land.end.cleanup_crit_edge, label %if.then22, !prof !40

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then22:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @refcount_dec_not_one.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 87, i32 noundef 9, ptr noundef nonnull @.str.6) #6
  br label %cleanup

do.cond54:                                        ; preds = %do.body
  %sub = add i32 %2, -1
  %call.i.i67 = call zeroext i1 @__kasan_check_write(ptr noundef %r, i32 noundef 4) #6
  %call.i3.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %val, i32 noundef 4) #6
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !41
  call void @llvm.prefetch.p0(ptr %r, i32 1, i32 3, i32 1) #6
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %do.cond54
  %7 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %r, ptr %r, i32 %6, i32 %sub, ptr elementtype(i32) %r) #6, !srcloc !42
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %7, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %arch_atomic_cmpxchg_release.exit.i.i, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_release.exit.i.i:             ; preds = %do.body.i.i.i.i
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %7, 1
  %cmp.not.i.i = icmp eq i32 %asmresult3.i.i.i.i, %6
  br i1 %cmp.not.i.i, label %arch_atomic_cmpxchg_release.exit.i.i.cleanup.loopexit_crit_edge, label %arch_atomic_cmpxchg_release.exit.i.i.do.body_crit_edge, !prof !40

arch_atomic_cmpxchg_release.exit.i.i.do.body_crit_edge: ; preds = %arch_atomic_cmpxchg_release.exit.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

arch_atomic_cmpxchg_release.exit.i.i.cleanup.loopexit_crit_edge: ; preds = %arch_atomic_cmpxchg_release.exit.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.loopexit

cleanup.loopexit:                                 ; preds = %arch_atomic_cmpxchg_release.exit.i.i.cleanup.loopexit_crit_edge, %do.body.cleanup.loopexit_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %if.then22, %land.end.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.then22 ], [ true, %land.end.cleanup_crit_edge ], [ true, %cleanup.loopexit ], [ false, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @refcount_dec_and_mutex_lock(ptr noundef %r, ptr noundef %lock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call zeroext i1 @refcount_dec_not_one(ptr noundef %r)
  br i1 %call, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @llvm.prefetch.p0(ptr %r, i32 1, i32 3, i32 1) #6
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r, ptr %r, i32 1, ptr elementtype(i32) %r) #6, !srcloc !45
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %refcount_dec_and_test.exit, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.then2_crit_edge, label %if.then10.i.i.i, !prof !40

if.end5.i.i.i.if.then2_crit_edge:                 ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then2

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r, i32 noundef 4) #6
  %1 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 -1073741824, ptr %r, align 4
  %.b291295.i.i.i = load i1, ptr @refcount_warn_saturate.__already_done.5, align 1
  br i1 %.b291295.i.i.i, label %if.then10.i.i.i.if.then2_crit_edge, label %if.then145.i.i.i, !prof !40

if.then10.i.i.i.if.then2_crit_edge:               ; preds = %if.then10.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then2

if.then145.i.i.i:                                 ; preds = %if.then10.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @refcount_warn_saturate.__already_done.5, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 28, i32 noundef 9, ptr noundef nonnull @.str.6) #6
  br label %if.then2

refcount_dec_and_test.exit:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !46
  br label %return

if.then2:                                         ; preds = %if.then145.i.i.i, %if.then10.i.i.i.if.then2_crit_edge, %if.end5.i.i.i.if.then2_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %return

return:                                           ; preds = %if.then2, %refcount_dec_and_test.exit, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %if.then2 ], [ false, %entry.return_crit_edge ], [ true, %refcount_dec_and_test.exit ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @refcount_dec_and_lock(ptr noundef %r, ptr noundef %lock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call zeroext i1 @refcount_dec_not_one(ptr noundef %r)
  br i1 %call, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @llvm.prefetch.p0(ptr %r, i32 1, i32 3, i32 1) #6
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r, ptr %r, i32 1, ptr elementtype(i32) %r) #6, !srcloc !45
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %refcount_dec_and_test.exit, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.then2_crit_edge, label %if.then10.i.i.i, !prof !40

if.end5.i.i.i.if.then2_crit_edge:                 ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then2

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r, i32 noundef 4) #6
  %1 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 -1073741824, ptr %r, align 4
  %.b291295.i.i.i = load i1, ptr @refcount_warn_saturate.__already_done.5, align 1
  br i1 %.b291295.i.i.i, label %if.then10.i.i.i.if.then2_crit_edge, label %if.then145.i.i.i, !prof !40

if.then10.i.i.i.if.then2_crit_edge:               ; preds = %if.then10.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then2

if.then145.i.i.i:                                 ; preds = %if.then10.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @refcount_warn_saturate.__already_done.5, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 28, i32 noundef 9, ptr noundef nonnull @.str.6) #6
  br label %if.then2

refcount_dec_and_test.exit:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !46
  br label %return

if.then2:                                         ; preds = %if.then145.i.i.i, %if.then10.i.i.i.if.then2_crit_edge, %if.end5.i.i.i.if.then2_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  br label %return

return:                                           ; preds = %if.then2, %refcount_dec_and_test.exit, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %if.then2 ], [ false, %entry.return_crit_edge ], [ true, %refcount_dec_and_test.exit ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @refcount_dec_and_lock_irqsave(ptr noundef %r, ptr noundef %lock, ptr nocapture noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call zeroext i1 @refcount_dec_not_one(ptr noundef %r)
  br i1 %call, label %entry.return_crit_edge, label %do.body1

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

do.body1:                                         ; preds = %entry
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call3, ptr %flags, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @llvm.prefetch.p0(ptr %r, i32 1, i32 3, i32 1) #6
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r, ptr %r, i32 1, ptr elementtype(i32) %r) #6, !srcloc !45
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %refcount_dec_and_test.exit, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %do.body1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.then6_crit_edge, label %if.then10.i.i.i, !prof !40

if.end5.i.i.i.if.then6_crit_edge:                 ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then6

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r, i32 noundef 4) #6
  %2 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 -1073741824, ptr %r, align 4
  %.b291295.i.i.i = load i1, ptr @refcount_warn_saturate.__already_done.5, align 1
  br i1 %.b291295.i.i.i, label %if.then10.i.i.i.if.then6_crit_edge, label %if.then145.i.i.i, !prof !40

if.then10.i.i.i.if.then6_crit_edge:               ; preds = %if.then10.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then6

if.then145.i.i.i:                                 ; preds = %if.then10.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @refcount_warn_saturate.__already_done.5, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 28, i32 noundef 9, ptr noundef nonnull @.str.6) #6
  br label %if.then6

refcount_dec_and_test.exit:                       ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !46
  br label %return

if.then6:                                         ; preds = %if.then145.i.i.i, %if.then10.i.i.i.if.then6_crit_edge, %if.end5.i.i.i.if.then6_crit_edge
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %4) #6
  br label %return

return:                                           ; preds = %if.then6, %refcount_dec_and_test.exit, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %if.then6 ], [ false, %entry.return_crit_edge ], [ true, %refcount_dec_and_test.exit ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind uwtable(sync) }
attributes #5 = { nomerge }
attributes #6 = { nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !22, !24, !26, !28, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../lib/refcount.c", i32 19, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../lib/refcount.c", i32 22, i32 3}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../lib/refcount.c", i32 25, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../lib/refcount.c", i32 28, i32 3}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../lib/refcount.c", i32 31, i32 3}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../lib/refcount.c", i32 34, i32 3}
!17 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @__ksymtab_refcount_warn_saturate, !19, !"__ksymtab_refcount_warn_saturate", i1 false, i1 false}
!19 = !{!"../lib/refcount.c", i32 37, i32 1}
!20 = !{ptr @__ksymtab_refcount_dec_if_one, !21, !"__ksymtab_refcount_dec_if_one", i1 false, i1 false}
!21 = !{!"../lib/refcount.c", i32 61, i32 1}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../lib/refcount.c", i32 87, i32 4}
!24 = !{ptr @__ksymtab_refcount_dec_not_one, !25, !"__ksymtab_refcount_dec_not_one", i1 false, i1 false}
!25 = !{!"../lib/refcount.c", i32 95, i32 1}
!26 = !{ptr @__ksymtab_refcount_dec_and_mutex_lock, !27, !"__ksymtab_refcount_dec_and_mutex_lock", i1 false, i1 false}
!27 = !{!"../lib/refcount.c", i32 126, i32 1}
!28 = !{ptr @__ksymtab_refcount_dec_and_lock, !29, !"__ksymtab_refcount_dec_and_lock", i1 false, i1 false}
!29 = !{!"../lib/refcount.c", i32 157, i32 1}
!30 = !{ptr @__ksymtab_refcount_dec_and_lock_irqsave, !31, !"__ksymtab_refcount_dec_and_lock_irqsave", i1 false, i1 false}
!31 = !{!"../lib/refcount.c", i32 186, i32 1}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{!"branch_weights", i32 2000, i32 1}
!41 = !{i64 2148456769}
!42 = !{i64 840898, i64 840922, i64 840943, i64 840960, i64 840977}
!43 = !{!"branch_weights", i32 2000, i32 4, i32 4000, i32 2000}
!44 = !{i64 2148444916}
!45 = !{i64 2148359380, i64 2148359412, i64 2148359441, i64 2148359475, i64 2148359506, i64 2148359529}
!46 = !{i64 2149127227}
