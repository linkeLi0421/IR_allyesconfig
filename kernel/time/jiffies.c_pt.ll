; ModuleID = '/llk/IR_all_yes/kernel/time/jiffies.c_pt.bc'
source_filename = "../kernel/time/jiffies.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+get_jiffies_64\22, \22a\22\09"
module asm "\09.weak\09__crc_get_jiffies_64\09\09\09\09"
module asm "\09.long\09__crc_get_jiffies_64\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_jiffies_64:\09\09\09\09\09"
module asm "\09.asciz \09\22get_jiffies_64\22\09\09\09\09\09"
module asm "__kstrtabns_get_jiffies_64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+jiffies\22, \22a\22\09"
module asm "\09.weak\09__crc_jiffies\09\09\09\09"
module asm "\09.long\09__crc_jiffies\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_jiffies:\09\09\09\09\09"
module asm "\09.asciz \09\22jiffies\22\09\09\09\09\09"
module asm "__kstrtabns_jiffies:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.clocksource = type { ptr, i64, i32, i32, i64, i32, i32, i64, ptr, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }

@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"jiffies_lock\00", [19 x i8] zeroinitializer }, align 32
@jiffies_lock = dso_local global %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, section ".data..cacheline_aligned", align 128
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"jiffies_seq.seqcount\00", [43 x i8] zeroinitializer }, align 32
@jiffies_seq = dso_local global %struct.seqcount_raw_spinlock { %struct.seqcount { i32 0, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 0, i8 0, i32 0, i32 0 } }, ptr @jiffies_lock }, section ".data..cacheline_aligned", align 128
@jiffies_64 = external dso_local local_unnamed_addr global i64, section ".data..cacheline_aligned", align 128
@__kstrtab_get_jiffies_64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_jiffies_64 = external dso_local constant [0 x i8], align 1
@__ksymtab_get_jiffies_64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_jiffies_64 to i32), ptr @__kstrtab_get_jiffies_64, ptr @__kstrtabns_get_jiffies_64 }, section "___ksymtab+get_jiffies_64", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__kstrtab_jiffies = external dso_local constant [0 x i8], align 1
@__kstrtabns_jiffies = external dso_local constant [0 x i8], align 1
@__ksymtab_jiffies = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @jiffies to i32), ptr @__kstrtab_jiffies, ptr @__kstrtabns_jiffies }, section "___ksymtab+jiffies", align 4
@__initcall__kmod_jiffies__160_69_init_jiffies_clocksource1 = internal global ptr @init_jiffies_clocksource, section ".initcall1.init", align 4
@clocksource_jiffies = internal global { %struct.clocksource, [56 x i8] } { %struct.clocksource { ptr @jiffies_read, i64 4294967295, i32 -1734967296, i32 8, i64 0, i32 0, i32 32000000, i64 10, ptr @.str.3, %struct.list_head zeroinitializer, i32 1, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@refined_jiffies = internal global { %struct.clocksource, [56 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"refined-jiffies\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"jiffies\00", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 43, i32 28 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 45, i32 2 }
@___asan_gen_.10 = private unnamed_addr constant [20 x i8] c"clocksource_jiffies\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 32, i32 27 }
@___asan_gen_.13 = private unnamed_addr constant [16 x i8] c"refined_jiffies\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 76, i32 27 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 86, i32 25 }
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.20 = private constant [25 x i8] c"../kernel/time/jiffies.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 33, i32 12 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__initcall__kmod_jiffies__160_69_init_jiffies_clocksource1, ptr @__ksymtab_get_jiffies_64, ptr @__ksymtab_jiffies, ptr @.str, ptr @.str.1, ptr @clocksource_jiffies, ptr @refined_jiffies, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clocksource_jiffies to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @refined_jiffies to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @get_jiffies_64() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #5, !srcloc !30
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @trace_hardirqs_off() #5
  %1 = tail call ptr @llvm.returnaddress(i32 0) #5
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef getelementptr inbounds (%struct.seqcount_raw_spinlock, ptr @jiffies_seq, i32 0, i32 0, i32 1), i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #5
  tail call void @lock_release(ptr noundef getelementptr inbounds (%struct.seqcount_raw_spinlock, ptr @jiffies_seq, i32 0, i32 0, i32 1), i32 noundef %2) #5
  tail call void @trace_hardirqs_on() #5
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %3 = tail call ptr @llvm.returnaddress(i32 0) #5
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef getelementptr inbounds (%struct.seqcount_raw_spinlock, ptr @jiffies_seq, i32 0, i32 0, i32 1), i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #5
  tail call void @lock_release(ptr noundef getelementptr inbounds (%struct.seqcount_raw_spinlock, ptr @jiffies_seq, i32 0, i32 0, i32 1), i32 noundef %4) #5
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !31
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !32

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @warn_bogus_irq_restore() #5
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #5, !srcloc !33
  %6 = load volatile i32, ptr @jiffies_seq, align 128
  %and23 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool.not24 = icmp eq i32 %and23, 0
  br i1 %tobool.not24, label %seqcount_lockdep_reader_access.exit.while.end_crit_edge, label %seqcount_lockdep_reader_access.exit.do.end_crit_edge

seqcount_lockdep_reader_access.exit.do.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  br label %do.end

seqcount_lockdep_reader_access.exit.while.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !34
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !35
  %7 = load volatile i32, ptr @jiffies_seq, align 128
  %and = and i32 %7, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %6, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %7, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !36
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @jiffies_64 to i32))
  %8 = load i64, ptr @jiffies_64, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !37
  %9 = load volatile i32, ptr @jiffies_seq, align 128
  %cmp.i.i.not = icmp eq i32 %9, %.lcssa
  br i1 %cmp.i.i.not, label %do.end21, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.end21:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  ret i64 %8
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_jiffies_clocksource() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__clocksource_register_scale(ptr noundef nonnull @clocksource_jiffies, i32 noundef 1, i32 noundef 0) #5
  ret i32 %call.i
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define weak dso_local ptr @clocksource_default_clock() local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @clocksource_jiffies
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @register_refined_jiffies(i32 noundef %cycles_per_second) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr @refined_jiffies, ptr @clocksource_jiffies, i32 104)
  store ptr @.str.2, ptr getelementptr inbounds (%struct.clocksource, ptr @refined_jiffies, i32 0, i32 8), align 8
  %1 = load i32, ptr getelementptr inbounds (%struct.clocksource, ptr @refined_jiffies, i32 0, i32 10), align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr getelementptr inbounds (%struct.clocksource, ptr @refined_jiffies, i32 0, i32 10), align 4
  %add = add i32 %cycles_per_second, 50
  %div = sdiv i32 %add, 100
  %conv = sext i32 %cycles_per_second to i64
  %shl = shl nsw i64 %conv, 8
  %div1 = sdiv i32 %add, 200
  %conv2 = sext i32 %div1 to i64
  %add3 = add nsw i64 %shl, %conv2
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add3)
  %cmp172 = icmp ult i64 %add3, 4294967296
  br i1 %cmp172, label %if.then176, label %if.else182, !prof !38

if.then176:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv177 = trunc i64 %add3 to i32
  %div180 = udiv i32 %conv177, %div
  br label %if.else408

if.else182:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div, i64 %add3) #8, !srcloc !39
  %asmresult1.i = extractvalue { i64, i64 } %2, 1
  %extract.t656 = trunc i64 %asmresult1.i to i32
  br label %if.else408

if.else408:                                       ; preds = %if.else182, %if.then176
  %shift_hz.0.off0 = phi i32 [ %div180, %if.then176 ], [ %extract.t656, %if.else182 ]
  %div189577 = lshr i32 %shift_hz.0.off0, 1
  %conv190 = zext i32 %div189577 to i64
  %add191 = add nuw nsw i64 %conv190, 256000000000
  %3 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shift_hz.0.off0, i64 %add191) #8, !srcloc !39
  %asmresult1.i605 = extractvalue { i64, i64 } %3, 1
  %extract.t654 = trunc i64 %asmresult1.i605 to i32
  %shl415 = shl i32 %extract.t654, 8
  store i32 %shl415, ptr getelementptr inbounds (%struct.clocksource, ptr @refined_jiffies, i32 0, i32 2), align 8
  %call.i = tail call i32 @__clocksource_register_scale(ptr noundef nonnull @refined_jiffies, i32 noundef 1, i32 noundef 0) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @jiffies_read(ptr nocapture noundef readnone %cs) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %conv = zext i32 %0 to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clocksource_register_scale(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/time/jiffies.c", i32 43, i32 28}
!2 = !{ptr @jiffies_lock, !1, !"jiffies_lock", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../kernel/time/jiffies.c", i32 45, i32 2}
!5 = !{ptr @jiffies_seq, !6, !"jiffies_seq", i1 false, i1 false}
!6 = !{!"../kernel/time/jiffies.c", i32 44, i32 52}
!7 = !{ptr @__ksymtab_get_jiffies_64, !8, !"__ksymtab_get_jiffies_64", i1 false, i1 false}
!8 = !{!"../kernel/time/jiffies.c", i32 59, i32 1}
!9 = !{ptr @__ksymtab_jiffies, !10, !"__ksymtab_jiffies", i1 false, i1 false}
!10 = !{!"../kernel/time/jiffies.c", i32 62, i32 1}
!11 = !{ptr @__initcall__kmod_jiffies__160_69_init_jiffies_clocksource1, !12, !"__initcall__kmod_jiffies__160_69_init_jiffies_clocksource1", i1 false, i1 false}
!12 = !{!"../kernel/time/jiffies.c", i32 69, i32 1}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../kernel/time/jiffies.c", i32 86, i32 25}
!15 = !{ptr @refined_jiffies, !16, !"refined_jiffies", i1 false, i1 false}
!16 = !{!"../kernel/time/jiffies.c", i32 76, i32 27}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../kernel/time/jiffies.c", i32 33, i32 12}
!19 = !{ptr @clocksource_jiffies, !20, !"clocksource_jiffies", i1 false, i1 false}
!20 = !{!"../kernel/time/jiffies.c", i32 32, i32 27}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{i64 618246, i64 618307}
!31 = !{i64 620978}
!32 = !{!"branch_weights", i32 1, i32 2000}
!33 = !{i64 621263}
!34 = !{i64 2152270220}
!35 = !{i64 2152270062}
!36 = !{i64 2152270390}
!37 = !{i64 2149950744}
!38 = !{!"branch_weights", i32 2000, i32 1}
!39 = !{i64 2148021985, i64 2148022265, i64 2148022599, i64 2148022933}
