; ModuleID = '/llk/IR_all_yes/drivers/rtc/lib.c_pt.bc'
source_filename = "../drivers/rtc/lib.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+rtc_month_days\22, \22a\22\09"
module asm "\09.weak\09__crc_rtc_month_days\09\09\09\09"
module asm "\09.long\09__crc_rtc_month_days\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtc_month_days:\09\09\09\09\09"
module asm "\09.asciz \09\22rtc_month_days\22\09\09\09\09\09"
module asm "__kstrtabns_rtc_month_days:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rtc_year_days\22, \22a\22\09"
module asm "\09.weak\09__crc_rtc_year_days\09\09\09\09"
module asm "\09.long\09__crc_rtc_year_days\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtc_year_days:\09\09\09\09\09"
module asm "\09.asciz \09\22rtc_year_days\22\09\09\09\09\09"
module asm "__kstrtabns_rtc_year_days:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rtc_time64_to_tm\22, \22a\22\09"
module asm "\09.weak\09__crc_rtc_time64_to_tm\09\09\09\09"
module asm "\09.long\09__crc_rtc_time64_to_tm\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtc_time64_to_tm:\09\09\09\09\09"
module asm "\09.asciz \09\22rtc_time64_to_tm\22\09\09\09\09\09"
module asm "__kstrtabns_rtc_time64_to_tm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rtc_valid_tm\22, \22a\22\09"
module asm "\09.weak\09__crc_rtc_valid_tm\09\09\09\09"
module asm "\09.long\09__crc_rtc_valid_tm\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtc_valid_tm:\09\09\09\09\09"
module asm "\09.asciz \09\22rtc_valid_tm\22\09\09\09\09\09"
module asm "__kstrtabns_rtc_valid_tm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rtc_tm_to_time64\22, \22a\22\09"
module asm "\09.weak\09__crc_rtc_tm_to_time64\09\09\09\09"
module asm "\09.long\09__crc_rtc_tm_to_time64\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtc_tm_to_time64:\09\09\09\09\09"
module asm "\09.asciz \09\22rtc_tm_to_time64\22\09\09\09\09\09"
module asm "__kstrtabns_rtc_tm_to_time64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rtc_tm_to_ktime\22, \22a\22\09"
module asm "\09.weak\09__crc_rtc_tm_to_ktime\09\09\09\09"
module asm "\09.long\09__crc_rtc_tm_to_ktime\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtc_tm_to_ktime:\09\09\09\09\09"
module asm "\09.asciz \09\22rtc_tm_to_ktime\22\09\09\09\09\09"
module asm "__kstrtabns_rtc_tm_to_ktime:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rtc_ktime_to_tm\22, \22a\22\09"
module asm "\09.weak\09__crc_rtc_ktime_to_tm\09\09\09\09"
module asm "\09.long\09__crc_rtc_ktime_to_tm\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtc_ktime_to_tm:\09\09\09\09\09"
module asm "\09.asciz \09\22rtc_ktime_to_tm\22\09\09\09\09\09"
module asm "__kstrtabns_rtc_ktime_to_tm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.timespec64 = type { i64, i32 }

@rtc_days_in_month = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\1F\1C\1F\1E\1F\1E\1F\1F\1E\1F\1E\1F", [20 x i8] zeroinitializer }, align 32
@__kstrtab_rtc_month_days = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtc_month_days = external dso_local constant [0 x i8], align 1
@__ksymtab_rtc_month_days = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtc_month_days to i32), ptr @__kstrtab_rtc_month_days, ptr @__kstrtabns_rtc_month_days }, section "___ksymtab+rtc_month_days", align 4
@rtc_ydays = internal constant { [2 x [13 x i16]], [44 x i8] } { [2 x [13 x i16]] [[13 x i16] [i16 0, i16 31, i16 59, i16 90, i16 120, i16 151, i16 181, i16 212, i16 243, i16 273, i16 304, i16 334, i16 365], [13 x i16] [i16 0, i16 31, i16 60, i16 91, i16 121, i16 152, i16 182, i16 213, i16 244, i16 274, i16 305, i16 335, i16 366]], [44 x i8] zeroinitializer }, align 32
@__kstrtab_rtc_year_days = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtc_year_days = external dso_local constant [0 x i8], align 1
@__ksymtab_rtc_year_days = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtc_year_days to i32), ptr @__kstrtab_rtc_year_days, ptr @__kstrtabns_rtc_year_days }, section "___ksymtab+rtc_year_days", align 4
@__kstrtab_rtc_time64_to_tm = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtc_time64_to_tm = external dso_local constant [0 x i8], align 1
@__ksymtab_rtc_time64_to_tm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtc_time64_to_tm to i32), ptr @__kstrtab_rtc_time64_to_tm, ptr @__kstrtabns_rtc_time64_to_tm }, section "___ksymtab+rtc_time64_to_tm", align 4
@__kstrtab_rtc_valid_tm = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtc_valid_tm = external dso_local constant [0 x i8], align 1
@__ksymtab_rtc_valid_tm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtc_valid_tm to i32), ptr @__kstrtab_rtc_valid_tm, ptr @__kstrtabns_rtc_valid_tm }, section "___ksymtab+rtc_valid_tm", align 4
@__kstrtab_rtc_tm_to_time64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtc_tm_to_time64 = external dso_local constant [0 x i8], align 1
@__ksymtab_rtc_tm_to_time64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtc_tm_to_time64 to i32), ptr @__kstrtab_rtc_tm_to_time64, ptr @__kstrtabns_rtc_tm_to_time64 }, section "___ksymtab+rtc_tm_to_time64", align 4
@__kstrtab_rtc_tm_to_ktime = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtc_tm_to_ktime = external dso_local constant [0 x i8], align 1
@__ksymtab_rtc_tm_to_ktime = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtc_tm_to_ktime to i32), ptr @__kstrtab_rtc_tm_to_ktime, ptr @__kstrtabns_rtc_tm_to_ktime }, section "___ksymtab_gpl+rtc_tm_to_ktime", align 4
@__kstrtab_rtc_ktime_to_tm = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtc_ktime_to_tm = external dso_local constant [0 x i8], align 1
@__ksymtab_rtc_ktime_to_tm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtc_ktime_to_tm to i32), ptr @__kstrtab_rtc_ktime_to_tm, ptr @__kstrtabns_rtc_ktime_to_tm }, section "___ksymtab_gpl+rtc_ktime_to_tm", align 4
@___asan_gen_.1 = private unnamed_addr constant [18 x i8] c"rtc_days_in_month\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 16, i32 28 }
@___asan_gen_.4 = private unnamed_addr constant [10 x i8] c"rtc_ydays\00", align 1
@___asan_gen_.5 = private constant [21 x i8] c"../drivers/rtc/lib.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 20, i32 29 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_rtc_ktime_to_tm, ptr @__ksymtab_rtc_month_days, ptr @__ksymtab_rtc_time64_to_tm, ptr @__ksymtab_rtc_tm_to_ktime, ptr @__ksymtab_rtc_tm_to_time64, ptr @__ksymtab_rtc_valid_tm, ptr @__ksymtab_rtc_year_days, ptr @rtc_days_in_month, ptr @rtc_ydays], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_days_in_month to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_ydays to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rtc_month_days(i32 noundef %month, i32 noundef %year) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [12 x i8], ptr @rtc_days_in_month, i32 0, i32 %month
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %rem.i = and i32 %year, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  %rem1.i = urem i32 %year, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem1.i)
  %tobool2.not.i = icmp ne i32 %rem1.i, 0
  %or.cond.i.not = and i1 %tobool.not.i, %tobool2.not.i
  %rem3.i = urem i32 %year, 400
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem3.i)
  %tobool4.not.i = icmp eq i32 %rem3.i, 0
  %or.cond = or i1 %tobool4.not.i, %or.cond.i.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %month)
  %phi.cast6.in = icmp eq i32 %month, 1
  %narrow = and i1 %or.cond, %phi.cast6.in
  %2 = zext i1 %narrow to i32
  %conv = zext i8 %1 to i32
  %add = add nuw nsw i32 %conv, %2
  ret i32 %add
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rtc_year_days(i32 noundef %day, i32 noundef %month, i32 noundef %year) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rem.i = and i32 %year, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  %rem1.i = urem i32 %year, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem1.i)
  %tobool2.not.i = icmp ne i32 %rem1.i, 0
  %rem3.i = urem i32 %year, 400
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem3.i)
  %tobool4.not.i = icmp eq i32 %rem3.i, 0
  %not.or.cond.i = and i1 %tobool.not.i, %tobool2.not.i
  %narrow = or i1 %not.or.cond.i, %tobool4.not.i
  %0 = zext i1 %narrow to i32
  %arrayidx1 = getelementptr [2 x [13 x i16]], ptr @rtc_ydays, i32 0, i32 %0, i32 %month
  %1 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %arrayidx1, align 2
  %conv = zext i16 %2 to i32
  %add = add i32 %day, -1
  %sub = add i32 %add, %conv
  ret i32 %sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtc_time64_to_tm(i64 noundef %time, ptr nocapture noundef writeonly %tm) #1 align 64 {
entry:
  %secs = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %secs) #5
  %0 = ptrtoint ptr %secs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %secs, align 4, !annotation !27
  %call = call i64 @div_s64_rem(i64 noundef %time, i32 noundef 86400, ptr noundef nonnull %secs) #5
  %conv = trunc i64 %call to i32
  %add = add i32 %conv, 4
  %rem = srem i32 %add, 7
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %1 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %rem, ptr %tm_wday, align 4
  %add1 = shl i32 %conv, 2
  %add2 = add i32 %add1, 2877875
  %add2.frozen = freeze i32 %add2
  %div = udiv i32 %add2.frozen, 146097
  %2 = mul i32 %div, 146097
  %rem3.decomposed = sub i32 %add2.frozen, %2
  %div493 = and i32 %rem3.decomposed, 262140
  %add6 = or i32 %div493, 3
  %conv7 = zext i32 %add6 to i64
  %mul8 = mul nuw nsw i64 %conv7, 2939745
  %shr = lshr i64 %mul8, 32
  %conv10 = trunc i64 %shr to i32
  %conv11 = trunc i64 %mul8 to i32
  %div13 = udiv i32 %conv11, 11758980
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv10)
  %cmp.not = icmp eq i32 %conv10, 0
  %div.conv10 = select i1 %cmp.not, i32 %div, i32 %conv10
  %cond.in.in = and i32 %div.conv10, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.in.in)
  %cond.in = icmp eq i32 %cond.in.in, 0
  %mul23 = mul nuw nsw i32 %div13, 2141
  %add24 = add nuw nsw i32 %mul23, 132377
  %shr25 = lshr i32 %add24, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -696719417, i32 %conv11)
  %cmp29 = icmp ugt i32 %conv11, -696719417
  %sub = add nsw i32 %shr25, -12
  %cond40 = select i1 %cmp29, i32 %sub, i32 %shr25
  %sub45 = add nsw i32 %div13, -306
  %add48 = add nuw nsw i32 %div13, 59
  %conv50 = zext i1 %cond.in to i32
  %add51 = add nuw nsw i32 %add48, %conv50
  %cond53 = select i1 %cmp29, i32 %sub45, i32 %add51
  %div28.lhs.trunc = trunc i32 %add24 to i16
  %div2894 = udiv i16 %div28.lhs.trunc, 2141
  %narrow = add nuw nsw i16 %div2894, 1
  %add41 = zext i16 %narrow to i32
  %mul14 = mul nuw nsw i32 %div, 100
  %conv33 = zext i1 %cmp29 to i32
  %add15 = add nsw i32 %mul14, -1900
  %add34 = add nsw i32 %add15, %conv10
  %sub54 = add nsw i32 %add34, %conv33
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %3 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %sub54, ptr %tm_year, align 4
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %4 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond40, ptr %tm_mon, align 4
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %5 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add41, ptr %tm_mday, align 4
  %add55 = add nsw i32 %cond53, 1
  %tm_yday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 7
  %6 = ptrtoint ptr %tm_yday to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add55, ptr %tm_yday, align 4
  %7 = ptrtoint ptr %secs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %secs, align 4
  %div56 = udiv i32 %8, 3600
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %9 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %div56, ptr %tm_hour, align 4
  %mul58.neg = mul i32 %div56, -3600
  %sub59 = add i32 %mul58.neg, %8
  %div60 = udiv i32 %sub59, 60
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %10 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div60, ptr %tm_min, align 4
  %mul62.neg = mul i32 %div60, -60
  %sub63 = add i32 %mul62.neg, %sub59
  %11 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub63, ptr %tm, align 4
  %tm_isdst = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 8
  %12 = ptrtoint ptr %tm_isdst to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %tm_isdst, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %secs) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rtc_valid_tm(ptr nocapture noundef readonly %tm) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %0 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tm_year, align 4
  %2 = add i32 %1, -2147481748
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147481678, i32 %2)
  %3 = icmp ult i32 %2, -2147481678
  br i1 %3, label %entry.return_crit_edge, label %lor.lhs.false3

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

lor.lhs.false3:                                   ; preds = %entry
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %4 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tm_mon, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %5)
  %cmp4 = icmp ugt i32 %5, 11
  br i1 %cmp4, label %lor.lhs.false3.return_crit_edge, label %lor.lhs.false5

lor.lhs.false3.return_crit_edge:                  ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %6 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tm_mday, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp6 = icmp slt i32 %7, 1
  br i1 %cmp6, label %lor.lhs.false5.return_crit_edge, label %lor.lhs.false7

lor.lhs.false5.return_crit_edge:                  ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %add = add nuw nsw i32 %1, 1900
  %arrayidx.i = getelementptr [12 x i8], ptr @rtc_days_in_month, i32 0, i32 %5
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %rem.i.i = and i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool.not.i.i = icmp eq i32 %rem.i.i, 0
  %rem1.i.i = urem i32 %add, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem1.i.i)
  %tobool2.not.i.i = icmp ne i32 %rem1.i.i, 0
  %or.cond.i.not.i = and i1 %tobool.not.i.i, %tobool2.not.i.i
  %rem3.i.i = urem i32 %add, 400
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem3.i.i)
  %tobool4.not.i.i = icmp eq i32 %rem3.i.i, 0
  %or.cond.i = or i1 %tobool4.not.i.i, %or.cond.i.not.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %phi.cast6.in.i = icmp eq i32 %5, 1
  %narrow.i = and i1 %or.cond.i, %phi.cast6.in.i
  %10 = zext i1 %narrow.i to i32
  %conv.i = zext i8 %9 to i32
  %add.i = add nuw nsw i32 %conv.i, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %add.i)
  %cmp11 = icmp ugt i32 %7, %add.i
  br i1 %cmp11, label %lor.lhs.false7.return_crit_edge, label %lor.lhs.false12

lor.lhs.false7.return_crit_edge:                  ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

lor.lhs.false12:                                  ; preds = %lor.lhs.false7
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %11 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tm_hour, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %12)
  %cmp13 = icmp ugt i32 %12, 23
  br i1 %cmp13, label %lor.lhs.false12.return_crit_edge, label %lor.lhs.false14

lor.lhs.false12.return_crit_edge:                 ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

lor.lhs.false14:                                  ; preds = %lor.lhs.false12
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %13 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tm_min, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %14)
  %cmp15 = icmp ugt i32 %14, 59
  br i1 %cmp15, label %lor.lhs.false14.return_crit_edge, label %lor.lhs.false16

lor.lhs.false14.return_crit_edge:                 ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

lor.lhs.false16:                                  ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %16)
  %cmp17 = icmp ugt i32 %16, 59
  %spec.select = select i1 %cmp17, i32 -22, i32 0
  br label %return

return:                                           ; preds = %lor.lhs.false16, %lor.lhs.false14.return_crit_edge, %lor.lhs.false12.return_crit_edge, %lor.lhs.false7.return_crit_edge, %lor.lhs.false5.return_crit_edge, %lor.lhs.false3.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false14.return_crit_edge ], [ -22, %lor.lhs.false12.return_crit_edge ], [ -22, %lor.lhs.false7.return_crit_edge ], [ -22, %lor.lhs.false5.return_crit_edge ], [ -22, %lor.lhs.false3.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ %spec.select, %lor.lhs.false16 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @rtc_tm_to_time64(ptr nocapture noundef readonly %tm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %0 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tm_year, align 4
  %add = add i32 %1, 1900
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %2 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tm_mon, align 4
  %add1 = add i32 %3, 1
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %4 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tm_mday, align 4
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %6 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tm_hour, align 4
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %8 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tm_min, align 4
  %10 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tm, align 4
  %call = tail call i64 @mktime64(i32 noundef %add, i32 noundef %add1, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11) #5
  ret i64 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mktime64(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @rtc_tm_to_ktime([9 x i32] %tm.coerce) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tm.coerce.fca.0.extract = extractvalue [9 x i32] %tm.coerce, 0
  %tm.coerce.fca.1.extract = extractvalue [9 x i32] %tm.coerce, 1
  %tm.coerce.fca.2.extract = extractvalue [9 x i32] %tm.coerce, 2
  %tm.coerce.fca.3.extract = extractvalue [9 x i32] %tm.coerce, 3
  %tm.coerce.fca.4.extract = extractvalue [9 x i32] %tm.coerce, 4
  %tm.coerce.fca.5.extract = extractvalue [9 x i32] %tm.coerce, 5
  %add.i = add i32 %tm.coerce.fca.5.extract, 1900
  %add1.i = add i32 %tm.coerce.fca.4.extract, 1
  %call.i = tail call i64 @mktime64(i32 noundef %add.i, i32 noundef %add1.i, i32 noundef %tm.coerce.fca.3.extract, i32 noundef %tm.coerce.fca.2.extract, i32 noundef %tm.coerce.fca.1.extract, i32 noundef %tm.coerce.fca.0.extract) #5
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %call.i)
  %cmp.i = icmp sgt i64 %call.i, 9223372035
  %mul.i = mul i64 %call.i, 1000000000
  %retval.0.i = select i1 %cmp.i, i64 9223372036854775807, i64 %mul.i, !prof !28
  ret i64 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtc_ktime_to_tm(ptr noalias nocapture writeonly sret(%struct.rtc_time) align 4 %agg.result, i64 noundef %kt) #1 align 64 {
entry:
  %secs.i = alloca i32, align 4
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #5
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp, i64 noundef %kt) #5
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %0)
  %ts.sroa.0.0.copyload3 = load i64, ptr %tmp, align 8
  %ts.sroa.7.0.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp, i32 8
  %1 = ptrtoint ptr %ts.sroa.7.0.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %1)
  %ts.sroa.7.0.copyload4 = load i32, ptr %ts.sroa.7.0.tmp.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ts.sroa.7.0.copyload4)
  %tobool.not = icmp ne i32 %ts.sroa.7.0.copyload4, 0
  %inc = zext i1 %tobool.not to i64
  %spec.select = add i64 %ts.sroa.0.0.copyload3, %inc
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %secs.i) #5
  %2 = ptrtoint ptr %secs.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %secs.i, align 4, !annotation !27
  %call.i = call i64 @div_s64_rem(i64 noundef %spec.select, i32 noundef 86400, ptr noundef nonnull %secs.i) #5
  %conv.i = trunc i64 %call.i to i32
  %add.i = add i32 %conv.i, 4
  %rem.i = srem i32 %add.i, 7
  %tm_wday.i = getelementptr inbounds %struct.rtc_time, ptr %agg.result, i32 0, i32 6
  %3 = ptrtoint ptr %tm_wday.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %rem.i, ptr %tm_wday.i, align 4
  %add1.i = shl i32 %conv.i, 2
  %add2.i = add i32 %add1.i, 2877875
  %add2.i.frozen = freeze i32 %add2.i
  %div.i = udiv i32 %add2.i.frozen, 146097
  %4 = mul i32 %div.i, 146097
  %rem3.i.decomposed = sub i32 %add2.i.frozen, %4
  %div493.i = and i32 %rem3.i.decomposed, 262140
  %add6.i = or i32 %div493.i, 3
  %conv7.i = zext i32 %add6.i to i64
  %mul8.i = mul nuw nsw i64 %conv7.i, 2939745
  %shr.i = lshr i64 %mul8.i, 32
  %conv10.i = trunc i64 %shr.i to i32
  %conv11.i = trunc i64 %mul8.i to i32
  %div13.i = udiv i32 %conv11.i, 11758980
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv10.i)
  %cmp.not.i = icmp eq i32 %conv10.i, 0
  %div.conv10.i = select i1 %cmp.not.i, i32 %div.i, i32 %conv10.i
  %cond.in.in.i = and i32 %div.conv10.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.in.in.i)
  %cond.in.i = icmp eq i32 %cond.in.in.i, 0
  %mul23.i = mul nuw nsw i32 %div13.i, 2141
  %add24.i = add nuw nsw i32 %mul23.i, 132377
  %shr25.i = lshr i32 %add24.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -696719417, i32 %conv11.i)
  %cmp29.i = icmp ugt i32 %conv11.i, -696719417
  %sub.i = add nsw i32 %shr25.i, -12
  %cond40.i = select i1 %cmp29.i, i32 %sub.i, i32 %shr25.i
  %sub45.i = add nsw i32 %div13.i, -306
  %add48.i = add nuw nsw i32 %div13.i, 59
  %conv50.i = zext i1 %cond.in.i to i32
  %add51.i = add nuw nsw i32 %add48.i, %conv50.i
  %cond53.i = select i1 %cmp29.i, i32 %sub45.i, i32 %add51.i
  %div28.lhs.trunc.i = trunc i32 %add24.i to i16
  %div2894.i = udiv i16 %div28.lhs.trunc.i, 2141
  %narrow.i = add nuw nsw i16 %div2894.i, 1
  %add41.i = zext i16 %narrow.i to i32
  %mul14.i = mul nuw nsw i32 %div.i, 100
  %conv33.i = zext i1 %cmp29.i to i32
  %add15.i = add nsw i32 %mul14.i, -1900
  %add34.i = add nsw i32 %add15.i, %conv10.i
  %sub54.i = add nsw i32 %add34.i, %conv33.i
  %tm_year.i = getelementptr inbounds %struct.rtc_time, ptr %agg.result, i32 0, i32 5
  %5 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sub54.i, ptr %tm_year.i, align 4
  %tm_mon.i = getelementptr inbounds %struct.rtc_time, ptr %agg.result, i32 0, i32 4
  %6 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond40.i, ptr %tm_mon.i, align 4
  %tm_mday.i = getelementptr inbounds %struct.rtc_time, ptr %agg.result, i32 0, i32 3
  %7 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add41.i, ptr %tm_mday.i, align 4
  %add55.i = add nsw i32 %cond53.i, 1
  %tm_yday.i = getelementptr inbounds %struct.rtc_time, ptr %agg.result, i32 0, i32 7
  %8 = ptrtoint ptr %tm_yday.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add55.i, ptr %tm_yday.i, align 4
  %9 = ptrtoint ptr %secs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %secs.i, align 4
  %div56.i = udiv i32 %10, 3600
  %tm_hour.i = getelementptr inbounds %struct.rtc_time, ptr %agg.result, i32 0, i32 2
  %11 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %div56.i, ptr %tm_hour.i, align 4
  %mul58.neg.i = mul i32 %div56.i, -3600
  %sub59.i = add i32 %mul58.neg.i, %10
  %div60.i = udiv i32 %sub59.i, 60
  %tm_min.i = getelementptr inbounds %struct.rtc_time, ptr %agg.result, i32 0, i32 1
  %12 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %div60.i, ptr %tm_min.i, align 4
  %mul62.neg.i = mul i32 %div60.i, -60
  %sub63.i = add i32 %mul62.neg.i, %sub59.i
  %13 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub63.i, ptr %agg.result, align 4
  %tm_isdst.i = getelementptr inbounds %struct.rtc_time, ptr %agg.result, i32 0, i32 8
  %14 = ptrtoint ptr %tm_isdst.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %tm_isdst.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %secs.i) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @__ksymtab_rtc_month_days, !1, !"__ksymtab_rtc_month_days", i1 false, i1 false}
!1 = !{!"../drivers/rtc/lib.c", i32 34, i32 1}
!2 = !{ptr @__ksymtab_rtc_year_days, !3, !"__ksymtab_rtc_year_days", i1 false, i1 false}
!3 = !{!"../drivers/rtc/lib.c", i32 43, i32 1}
!4 = !{ptr @__ksymtab_rtc_time64_to_tm, !5, !"__ksymtab_rtc_time64_to_tm", i1 false, i1 false}
!5 = !{!"../drivers/rtc/lib.c", i32 142, i32 1}
!6 = !{ptr @__ksymtab_rtc_valid_tm, !7, !"__ksymtab_rtc_valid_tm", i1 false, i1 false}
!7 = !{!"../drivers/rtc/lib.c", i32 162, i32 1}
!8 = !{ptr @__ksymtab_rtc_tm_to_time64, !9, !"__ksymtab_rtc_tm_to_time64", i1 false, i1 false}
!9 = !{!"../drivers/rtc/lib.c", i32 173, i32 1}
!10 = !{ptr @__ksymtab_rtc_tm_to_ktime, !11, !"__ksymtab_rtc_tm_to_ktime", i1 false, i1 false}
!11 = !{!"../drivers/rtc/lib.c", i32 182, i32 1}
!12 = !{ptr @__ksymtab_rtc_ktime_to_tm, !13, !"__ksymtab_rtc_ktime_to_tm", i1 false, i1 false}
!13 = !{!"../drivers/rtc/lib.c", i32 199, i32 1}
!14 = !{ptr @rtc_days_in_month, !15, !"rtc_days_in_month", i1 false, i1 false}
!15 = !{!"../drivers/rtc/lib.c", i32 16, i32 28}
!16 = !{ptr @rtc_ydays, !17, !"rtc_ydays", i1 false, i1 false}
!17 = !{!"../drivers/rtc/lib.c", i32 20, i32 29}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{!"auto-init"}
!28 = !{!"branch_weights", i32 1, i32 2000}
