; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-mc146818-lib.c_pt.bc'
source_filename = "../drivers/rtc/rtc-mc146818-lib.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mc146818_avoid_UIP\22, \22a\22\09"
module asm "\09.weak\09__crc_mc146818_avoid_UIP\09\09\09\09"
module asm "\09.long\09__crc_mc146818_avoid_UIP\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mc146818_avoid_UIP:\09\09\09\09\09"
module asm "\09.asciz \09\22mc146818_avoid_UIP\22\09\09\09\09\09"
module asm "__kstrtabns_mc146818_avoid_UIP:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mc146818_does_rtc_work\22, \22a\22\09"
module asm "\09.weak\09__crc_mc146818_does_rtc_work\09\09\09\09"
module asm "\09.long\09__crc_mc146818_does_rtc_work\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mc146818_does_rtc_work:\09\09\09\09\09"
module asm "\09.asciz \09\22mc146818_does_rtc_work\22\09\09\09\09\09"
module asm "__kstrtabns_mc146818_does_rtc_work:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mc146818_get_time\22, \22a\22\09"
module asm "\09.weak\09__crc_mc146818_get_time\09\09\09\09"
module asm "\09.long\09__crc_mc146818_get_time\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mc146818_get_time:\09\09\09\09\09"
module asm "\09.asciz \09\22mc146818_get_time\22\09\09\09\09\09"
module asm "__kstrtabns_mc146818_get_time:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mc146818_set_time\22, \22a\22\09"
module asm "\09.weak\09__crc_mc146818_set_time\09\09\09\09"
module asm "\09.long\09__crc_mc146818_set_time\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mc146818_set_time:\09\09\09\09\09"
module asm "\09.asciz \09\22mc146818_set_time\22\09\09\09\09\09"
module asm "__kstrtabns_mc146818_set_time:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mc146818_get_time_callback_param = type { ptr, i8 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@rtc_lock = external dso_local global %struct.spinlock, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__kstrtab_mc146818_avoid_UIP = external dso_local constant [0 x i8], align 1
@__kstrtabns_mc146818_avoid_UIP = external dso_local constant [0 x i8], align 1
@__ksymtab_mc146818_avoid_UIP = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mc146818_avoid_UIP to i32), ptr @__kstrtab_mc146818_avoid_UIP, ptr @__kstrtabns_mc146818_avoid_UIP }, section "___ksymtab_gpl+mc146818_avoid_UIP", align 4
@__kstrtab_mc146818_does_rtc_work = external dso_local constant [0 x i8], align 1
@__kstrtabns_mc146818_does_rtc_work = external dso_local constant [0 x i8], align 1
@__ksymtab_mc146818_does_rtc_work = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mc146818_does_rtc_work to i32), ptr @__kstrtab_mc146818_does_rtc_work, ptr @__kstrtabns_mc146818_does_rtc_work }, section "___ksymtab_gpl+mc146818_does_rtc_work", align 4
@__kstrtab_mc146818_get_time = external dso_local constant [0 x i8], align 1
@__kstrtabns_mc146818_get_time = external dso_local constant [0 x i8], align 1
@__ksymtab_mc146818_get_time = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mc146818_get_time to i32), ptr @__kstrtab_mc146818_get_time, ptr @__kstrtabns_mc146818_get_time }, section "___ksymtab_gpl+mc146818_get_time", align 4
@__kstrtab_mc146818_set_time = external dso_local constant [0 x i8], align 1
@__kstrtabns_mc146818_set_time = external dso_local constant [0 x i8], align 1
@__ksymtab_mc146818_set_time = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mc146818_set_time to i32), ptr @__kstrtab_mc146818_set_time, ptr @__kstrtabns_mc146818_set_time }, section "___ksymtab_gpl+mc146818_set_time", align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_mc146818_avoid_UIP, ptr @__ksymtab_mc146818_does_rtc_work, ptr @__ksymtab_mc146818_get_time, ptr @__ksymtab_mc146818_set_time], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mc146818_avoid_UIP(ptr noundef readonly %callback, ptr noundef %param) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool19.not = icmp eq ptr %callback, null
  br label %do.body1

do.body1:                                         ; preds = %for.inc.do.body1_crit_edge, %entry
  %cmp50 = phi i1 [ true, %entry ], [ %cmp, %for.inc.do.body1_crit_edge ]
  %i.049 = phi i32 [ 0, %entry ], [ %inc, %for.inc.do.body1_crit_edge ]
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @rtc_lock) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 0) #4, !srcloc !18
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr)) #4, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 10) #4, !srcloc !18
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr)) #4, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %tobool.not = icmp sgt i8 %1, -1
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @rtc_lock, i32 noundef %call3) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #4
  br label %for.inc

if.end:                                           ; preds = %do.body1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 0) #4, !srcloc !18
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr)) #4, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  call void @__sanitizer_cov_trace_cmp1(i8 %0, i8 %3)
  %cmp15.not = icmp eq i8 %0, %3
  br i1 %cmp15.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @rtc_lock, i32 noundef %call3) #4
  br label %for.inc

if.end18:                                         ; preds = %if.end
  br i1 %tobool19.not, label %if.end18.if.end21_crit_edge, label %if.then20

if.end18.if.end21_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %callback(i8 noundef zeroext %0, ptr noundef %param) #4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end18.if.end21_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 10) #4, !srcloc !18
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr)) #4, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %4)
  %tobool26.not = icmp sgt i8 %4, -1
  br i1 %tobool26.not, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @rtc_lock, i32 noundef %call3) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #4
  br label %for.inc

if.end28:                                         ; preds = %if.end21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 0) #4, !srcloc !18
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr)) #4, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  call void @__sanitizer_cov_trace_cmp1(i8 %0, i8 %6)
  %cmp33.not = icmp eq i8 %0, %6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @rtc_lock, i32 noundef %call3) #4
  br i1 %cmp33.not, label %if.end28.cleanup_crit_edge, label %if.end28.for.inc_crit_edge

if.end28.for.inc_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc:                                          ; preds = %if.end28.for.inc_crit_edge, %if.then27, %if.then17, %if.then
  %inc = add nuw nsw i32 %i.049, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.049)
  %cmp = icmp ult i32 %i.049, 9
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.do.body1_crit_edge

for.inc.do.body1_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body1

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end28.cleanup_crit_edge
  %cmp48 = phi i1 [ %cmp50, %if.end28.cleanup_crit_edge ], [ %cmp, %for.inc.cleanup_crit_edge ]
  ret i1 %cmp48
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mc146818_does_rtc_work() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @mc146818_avoid_UIP(ptr noundef null, ptr noundef null)
  ret i1 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mc146818_get_time(ptr noundef %time) #0 align 64 {
entry:
  %p = alloca %struct.mc146818_get_time_callback_param, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %p) #4
  %0 = ptrtoint ptr %p to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -4278190081, ptr %p, align 8, !annotation !21
  store ptr %time, ptr %p, align 8
  %call = call zeroext i1 @mc146818_avoid_UIP(ptr noundef nonnull @mc146818_get_time_callback, ptr noundef nonnull %p)
  br i1 %call, label %cond.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %1 = call ptr @memset(ptr %time, i32 0, i32 36)
  br label %cleanup

cond.end:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %time, align 4
  %conv4 = trunc i32 %3 to i8
  %call10 = call i32 @_bcd2bin(i8 noundef zeroext %conv4) #7
  %4 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call10, ptr %time, align 4
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %time, i32 0, i32 1
  %5 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tm_min, align 4
  %conv12 = trunc i32 %6 to i8
  %call23 = call i32 @_bcd2bin(i8 noundef zeroext %conv12) #7
  %7 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call23, ptr %tm_min, align 4
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %time, i32 0, i32 2
  %8 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tm_hour, align 4
  %conv27 = trunc i32 %9 to i8
  %call38 = call i32 @_bcd2bin(i8 noundef zeroext %conv27) #7
  %10 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call38, ptr %tm_hour, align 4
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %time, i32 0, i32 3
  %11 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tm_mday, align 4
  %conv42 = trunc i32 %12 to i8
  %call53 = call i32 @_bcd2bin(i8 noundef zeroext %conv42) #7
  %13 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call53, ptr %tm_mday, align 4
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %time, i32 0, i32 4
  %14 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tm_mon, align 4
  %conv57 = trunc i32 %15 to i8
  %call68 = call i32 @_bcd2bin(i8 noundef zeroext %conv57) #7
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %time, i32 0, i32 5
  %16 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tm_year, align 4
  %conv72 = trunc i32 %17 to i8
  %call83 = call i32 @_bcd2bin(i8 noundef zeroext %conv72) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 70, i32 %call83)
  %cmp = icmp slt i32 %call83, 70
  %add92 = add i32 %call83, 100
  %spec.select = select i1 %cmp, i32 %add92, i32 %call83
  %18 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %spec.select, ptr %tm_year, align 4
  %dec = add i32 %call68, -1
  %19 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %dec, ptr %tm_mon, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then
  %retval.0 = phi i32 [ 0, %cond.end ], [ -5, %if.then ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mc146818_get_time_callback(i8 noundef zeroext %seconds, ptr nocapture noundef %param_in) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %seconds to i32
  %0 = ptrtoint ptr %param_in to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %param_in, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 2) #4, !srcloc !18
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr)) #4, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  %conv1 = zext i8 %3 to i32
  %4 = ptrtoint ptr %param_in to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %param_in, align 4
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv1, ptr %tm_min, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 4) #4, !srcloc !18
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr)) #4, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  %conv5 = zext i8 %7 to i32
  %8 = ptrtoint ptr %param_in to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %param_in, align 4
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv5, ptr %tm_hour, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 7) #4, !srcloc !18
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr)) #4, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  %conv9 = zext i8 %11 to i32
  %12 = ptrtoint ptr %param_in to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %param_in, align 4
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv9, ptr %tm_mday, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 8) #4, !srcloc !18
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr)) #4, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  %conv13 = zext i8 %15 to i32
  %16 = ptrtoint ptr %param_in to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %param_in, align 4
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv13, ptr %tm_mon, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 9) #4, !srcloc !18
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr)) #4, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  %conv17 = zext i8 %19 to i32
  %20 = ptrtoint ptr %param_in to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %param_in, align 4
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv17, ptr %tm_year, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 11) #4, !srcloc !18
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr)) #4, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  %ctrl = getelementptr inbounds %struct.mc146818_get_time_callback_param, ptr %param_in, i32 0, i32 1
  %24 = ptrtoint ptr %ctrl to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %ctrl, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mc146818_set_time(ptr nocapture noundef readonly %time) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %time, i32 0, i32 5
  %0 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tm_year, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 169, i32 %1)
  %cmp6 = icmp ugt i32 %1, 169
  br i1 %cmp6, label %entry.cleanup_crit_edge, label %if.end9

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %time, align 4
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %time, i32 0, i32 1
  %4 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tm_min, align 4
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %time, i32 0, i32 2
  %6 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tm_hour, align 4
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %time, i32 0, i32 3
  %8 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tm_mday, align 4
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %time, i32 0, i32 4
  %10 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tm_mon, align 4
  %conv = add i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %1)
  %cmp10 = icmp ugt i32 %1, 99
  %sub = add nsw i32 %1, -100
  %spec.select = select i1 %cmp10, i32 %sub, i32 %1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 11) #4, !srcloc !18
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr)) #4, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  %conv19 = and i32 %3, 255
  %call20 = tail call zeroext i8 @_bin2bcd(i32 noundef %conv19) #7
  %conv31 = and i32 %5, 255
  %call32 = tail call zeroext i8 @_bin2bcd(i32 noundef %conv31) #7
  %conv45 = and i32 %7, 255
  %call46 = tail call zeroext i8 @_bin2bcd(i32 noundef %conv45) #7
  %conv59 = and i32 %9, 255
  %call60 = tail call zeroext i8 @_bin2bcd(i32 noundef %conv59) #7
  %conv73 = and i32 %conv, 255
  %call74 = tail call zeroext i8 @_bin2bcd(i32 noundef %conv73) #7
  %call86 = tail call zeroext i8 @_bin2bcd(i32 noundef %spec.select) #7
  %call110 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @rtc_lock) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 11) #4, !srcloc !18
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr)) #4, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 11) #4, !srcloc !18
  %14 = or i8 %13, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr), i8 %14) #4, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 10) #4, !srcloc !18
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr)) #4, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 10) #4, !srcloc !18
  %16 = or i8 %15, 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr), i8 %16) #4, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 9) #4, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr), i8 %call86) #4, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 8) #4, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr), i8 %call74) #4, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 7) #4, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr), i8 %call60) #4, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 4) #4, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr), i8 %call46) #4, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 2) #4, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr), i8 %call32) #4, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 0) #4, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr), i8 %call20) #4, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 11) #4, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr), i8 %13) #4, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874256 to ptr), i8 10) #4, !srcloc !18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18874255 to ptr), i8 %15) #4, !srcloc !18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @rtc_lock, i32 noundef %call110) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @__ksymtab_mc146818_avoid_UIP, !1, !"__ksymtab_mc146818_avoid_UIP", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-mc146818-lib.c", i32 79, i32 1}
!2 = !{ptr @__ksymtab_mc146818_does_rtc_work, !3, !"__ksymtab_mc146818_does_rtc_work", i1 false, i1 false}
!3 = !{!"../drivers/rtc/rtc-mc146818-lib.c", i32 89, i32 1}
!4 = !{ptr @__ksymtab_mc146818_get_time, !5, !"__ksymtab_mc146818_get_time", i1 false, i1 false}
!5 = !{!"../drivers/rtc/rtc-mc146818-lib.c", i32 177, i32 1}
!6 = !{ptr @__ksymtab_mc146818_set_time, !7, !"__ksymtab_mc146818_set_time", i1 false, i1 false}
!7 = !{!"../drivers/rtc/rtc-mc146818-lib.c", i32 274, i32 1}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i64 2150516524}
!18 = !{i64 2980468}
!19 = !{i64 2980863}
!20 = !{i64 2150514539}
!21 = !{!"auto-init"}
