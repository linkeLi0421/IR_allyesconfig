; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/hw.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ath_hw_setbssidmask\22, \22a\22\09"
module asm "\09.weak\09__crc_ath_hw_setbssidmask\09\09\09\09"
module asm "\09.long\09__crc_ath_hw_setbssidmask\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath_hw_setbssidmask:\09\09\09\09\09"
module asm "\09.asciz \09\22ath_hw_setbssidmask\22\09\09\09\09\09"
module asm "__kstrtabns_ath_hw_setbssidmask:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath_hw_cycle_counters_update\22, \22a\22\09"
module asm "\09.weak\09__crc_ath_hw_cycle_counters_update\09\09\09\09"
module asm "\09.long\09__crc_ath_hw_cycle_counters_update\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath_hw_cycle_counters_update:\09\09\09\09\09"
module asm "\09.asciz \09\22ath_hw_cycle_counters_update\22\09\09\09\09\09"
module asm "__kstrtabns_ath_hw_cycle_counters_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ath_hw_get_listen_time\22, \22a\22\09"
module asm "\09.weak\09__crc_ath_hw_get_listen_time\09\09\09\09"
module asm "\09.long\09__crc_ath_hw_get_listen_time\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ath_hw_get_listen_time:\09\09\09\09\09"
module asm "\09.asciz \09\22ath_hw_get_listen_time\22\09\09\09\09\09"
module asm "__kstrtabns_ath_hw_get_listen_time:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ath_common = type { ptr, ptr, ptr, i32, i32, i32, %struct.ath_ani, i16, i16, [6 x i8], [6 x i8], [6 x i8], i32, i32, [4 x i32], [4 x i32], [4 x i32], i32, i32, %struct.spinlock, %struct.ath_cycle_counters, %struct.ath_cycle_counters, %struct.ath_regulatory, %struct.ath_regulatory, ptr, ptr, ptr, i8, i8, i8, i32, [6 x %struct.ieee80211_supported_band] }
%struct.ath_ani = type { i8, i32, i32, i32, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.ath_cycle_counters = type { i32, i32, i32, i32 }
%struct.ath_regulatory = type { [2 x i8], i32, i16, i16, i16, i16, ptr }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.ath_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_ath_hw_setbssidmask = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath_hw_setbssidmask = external dso_local constant [0 x i8], align 1
@__ksymtab_ath_hw_setbssidmask = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath_hw_setbssidmask to i32), ptr @__kstrtab_ath_hw_setbssidmask, ptr @__kstrtabns_ath_hw_setbssidmask }, section "___ksymtab+ath_hw_setbssidmask", align 4
@__kstrtab_ath_hw_cycle_counters_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath_hw_cycle_counters_update = external dso_local constant [0 x i8], align 1
@__ksymtab_ath_hw_cycle_counters_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath_hw_cycle_counters_update to i32), ptr @__kstrtab_ath_hw_cycle_counters_update, ptr @__kstrtabns_ath_hw_cycle_counters_update }, section "___ksymtab+ath_hw_cycle_counters_update", align 4
@__kstrtab_ath_hw_get_listen_time = external dso_local constant [0 x i8], align 1
@__kstrtabns_ath_hw_get_listen_time = external dso_local constant [0 x i8], align 1
@__ksymtab_ath_hw_get_listen_time = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ath_hw_get_listen_time to i32), ptr @__kstrtab_ath_hw_get_listen_time, ptr @__kstrtabns_ath_hw_get_listen_time }, section "___ksymtab+ath_hw_get_listen_time", align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_ath_hw_cycle_counters_update, ptr @__ksymtab_ath_hw_get_listen_time, ptr @__ksymtab_ath_hw_setbssidmask], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_hw_setbssidmask(ptr nocapture noundef readonly %common) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common, align 4
  %ops = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 24
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %write = getelementptr inbounds %struct.ath_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write, align 4
  %macaddr = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 9
  %6 = ptrtoint ptr %macaddr to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %macaddr, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #3
  tail call void %5(ptr noundef %1, i32 noundef %8, i32 noundef 32768) #3
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %call3 = tail call i32 %12(ptr noundef %1, i32 noundef 32772) #3
  %and = and i32 %call3, -65536
  %add.ptr = getelementptr %struct.ath_common, ptr %common, i32 0, i32 9, i32 4
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %add.ptr, align 1
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #3
  %conv = zext i16 %15 to i32
  %or = or i32 %and, %conv
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops, align 4
  %write8 = getelementptr inbounds %struct.ath_ops, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %write8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write8, align 4
  tail call void %19(ptr noundef %1, i32 noundef %or, i32 noundef 32772) #3
  %20 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops, align 4
  %write10 = getelementptr inbounds %struct.ath_ops, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %write10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write10, align 4
  %bssidmask = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 11
  %24 = ptrtoint ptr %bssidmask to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %bssidmask, align 1
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #3
  tail call void %23(ptr noundef %1, i32 noundef %26, i32 noundef 32992) #3
  %27 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops, align 4
  %write14 = getelementptr inbounds %struct.ath_ops, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %write14 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %write14, align 4
  %add.ptr17 = getelementptr %struct.ath_common, ptr %common, i32 0, i32 11, i32 4
  %31 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %add.ptr17, align 1
  %33 = tail call i16 @llvm.bswap.i16(i16 %32) #3
  %conv19 = zext i16 %33 to i32
  tail call void %30(ptr noundef %1, i32 noundef %conv19, i32 noundef 32996) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath_hw_cycle_counters_update(ptr nocapture noundef %common) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common, align 4
  %ops = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 24
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %write = getelementptr inbounds %struct.ath_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write, align 4
  tail call void %5(ptr noundef %1, i32 noundef 2, i32 noundef 64) #3
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call = tail call i32 %9(ptr noundef %1, i32 noundef 33016) #3
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %call5 = tail call i32 %13(ptr noundef %1, i32 noundef 33012) #3
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %call8 = tail call i32 %17(ptr noundef %1, i32 noundef 33008) #3
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %call11 = tail call i32 %21(ptr noundef %1, i32 noundef 33004) #3
  %22 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops, align 4
  %write13 = getelementptr inbounds %struct.ath_ops, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %write13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write13, align 4
  tail call void %25(ptr noundef %1, i32 noundef 0, i32 noundef 33016) #3
  %26 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops, align 4
  %write15 = getelementptr inbounds %struct.ath_ops, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %write15 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write15, align 4
  tail call void %29(ptr noundef %1, i32 noundef 0, i32 noundef 33008) #3
  %30 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops, align 4
  %write17 = getelementptr inbounds %struct.ath_ops, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %write17 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write17, align 4
  tail call void %33(ptr noundef %1, i32 noundef 0, i32 noundef 33012) #3
  %34 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ops, align 4
  %write19 = getelementptr inbounds %struct.ath_ops, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %write19 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write19, align 4
  tail call void %37(ptr noundef %1, i32 noundef 0, i32 noundef 33004) #3
  %38 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops, align 4
  %write21 = getelementptr inbounds %struct.ath_ops, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %write21 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write21, align 4
  tail call void %41(ptr noundef %1, i32 noundef 0, i32 noundef 64) #3
  %cc_ani = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 20
  %42 = ptrtoint ptr %cc_ani to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cc_ani, align 4
  %add = add i32 %43, %call
  store i32 %add, ptr %cc_ani, align 4
  %rx_busy = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 20, i32 1
  %44 = ptrtoint ptr %rx_busy to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rx_busy, align 4
  %add24 = add i32 %45, %call5
  store i32 %add24, ptr %rx_busy, align 4
  %rx_frame = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 20, i32 2
  %46 = ptrtoint ptr %rx_frame to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rx_frame, align 4
  %add26 = add i32 %47, %call8
  store i32 %add26, ptr %rx_frame, align 4
  %tx_frame = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 20, i32 3
  %48 = ptrtoint ptr %tx_frame to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tx_frame, align 4
  %add28 = add i32 %49, %call11
  store i32 %add28, ptr %tx_frame, align 4
  %cc_survey = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 21
  %50 = ptrtoint ptr %cc_survey to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cc_survey, align 4
  %add30 = add i32 %51, %call
  store i32 %add30, ptr %cc_survey, align 4
  %rx_busy32 = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 21, i32 1
  %52 = ptrtoint ptr %rx_busy32 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rx_busy32, align 4
  %add33 = add i32 %53, %call5
  store i32 %add33, ptr %rx_busy32, align 4
  %rx_frame35 = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 21, i32 2
  %54 = ptrtoint ptr %rx_frame35 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rx_frame35, align 4
  %add36 = add i32 %55, %call8
  store i32 %add36, ptr %rx_frame35, align 4
  %tx_frame38 = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 21, i32 3
  %56 = ptrtoint ptr %tx_frame38 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tx_frame38, align 4
  %add39 = add i32 %57, %call11
  store i32 %add39, ptr %tx_frame38, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ath_hw_get_listen_time(ptr nocapture noundef %common) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %cc_ani = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 20
  %0 = ptrtoint ptr %cc_ani to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cc_ani, align 4
  %rx_frame = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 20, i32 2
  %2 = ptrtoint ptr %rx_frame to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_frame, align 4
  %tx_frame = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 20, i32 3
  %4 = ptrtoint ptr %tx_frame to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_frame, align 4
  %6 = add i32 %3, %5
  %sub1 = sub i32 %1, %6
  %clockrate = getelementptr inbounds %struct.ath_common, ptr %common, i32 0, i32 18
  %7 = ptrtoint ptr %clockrate to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %clockrate, align 4
  %mul = mul i32 %8, 1000
  %div = udiv i32 %sub1, %mul
  %9 = call ptr @memset(ptr %cc_ani, i32 0, i32 16)
  ret i32 %div
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @__ksymtab_ath_hw_setbssidmask, !1, !"__ksymtab_ath_hw_setbssidmask", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/hw.c", i32 131, i32 1}
!2 = !{ptr @__ksymtab_ath_hw_cycle_counters_update, !3, !"__ksymtab_ath_hw_cycle_counters_update", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/hw.c", i32 176, i32 1}
!4 = !{ptr @__ksymtab_ath_hw_get_listen_time, !5, !"__ksymtab_ath_hw_get_listen_time", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/hw.c", i32 190, i32 1}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
