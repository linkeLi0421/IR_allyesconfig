; ModuleID = '/llk/IR_all_yes/kernel/time/timekeeping.c_pt.bc'
source_filename = "../kernel/time/timekeeping.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ktime_get_mono_fast_ns\22, \22a\22\09"
module asm "\09.weak\09__crc_ktime_get_mono_fast_ns\09\09\09\09"
module asm "\09.long\09__crc_ktime_get_mono_fast_ns\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ktime_get_mono_fast_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22ktime_get_mono_fast_ns\22\09\09\09\09\09"
module asm "__kstrtabns_ktime_get_mono_fast_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ktime_get_raw_fast_ns\22, \22a\22\09"
module asm "\09.weak\09__crc_ktime_get_raw_fast_ns\09\09\09\09"
module asm "\09.long\09__crc_ktime_get_raw_fast_ns\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ktime_get_raw_fast_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22ktime_get_raw_fast_ns\22\09\09\09\09\09"
module asm "__kstrtabns_ktime_get_raw_fast_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ktime_get_boot_fast_ns\22, \22a\22\09"
module asm "\09.weak\09__crc_ktime_get_boot_fast_ns\09\09\09\09"
module asm "\09.long\09__crc_ktime_get_boot_fast_ns\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ktime_get_boot_fast_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22ktime_get_boot_fast_ns\22\09\09\09\09\09"
module asm "__kstrtabns_ktime_get_boot_fast_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ktime_get_real_fast_ns\22, \22a\22\09"
module asm "\09.weak\09__crc_ktime_get_real_fast_ns\09\09\09\09"
module asm "\09.long\09__crc_ktime_get_real_fast_ns\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ktime_get_real_fast_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22ktime_get_real_fast_ns\22\09\09\09\09\09"
module asm "__kstrtabns_ktime_get_real_fast_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pvclock_gtod_register_notifier\22, \22a\22\09"
module asm "\09.weak\09__crc_pvclock_gtod_register_notifier\09\09\09\09"
module asm "\09.long\09__crc_pvclock_gtod_register_notifier\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pvclock_gtod_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22pvclock_gtod_register_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_pvclock_gtod_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pvclock_gtod_unregister_notifier\22, \22a\22\09"
module asm "\09.weak\09__crc_pvclock_gtod_unregister_notifier\09\09\09\09"
module asm "\09.long\09__crc_pvclock_gtod_unregister_notifier\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pvclock_gtod_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22pvclock_gtod_unregister_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_pvclock_gtod_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ktime_get_real_ts64\22, \22a\22\09"
module asm "\09.weak\09__crc_ktime_get_real_ts64\09\09\09\09"
module asm "\09.long\09__crc_ktime_get_real_ts64\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ktime_get_real_ts64:\09\09\09\09\09"
module asm "\09.asciz \09\22ktime_get_real_ts64\22\09\09\09\09\09"
module asm "__kstrtabns_ktime_get_real_ts64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ktime_get\22, \22a\22\09"
module asm "\09.weak\09__crc_ktime_get\09\09\09\09"
module asm "\09.long\09__crc_ktime_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ktime_get:\09\09\09\09\09"
module asm "\09.asciz \09\22ktime_get\22\09\09\09\09\09"
module asm "__kstrtabns_ktime_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ktime_get_resolution_ns\22, \22a\22\09"
module asm "\09.weak\09__crc_ktime_get_resolution_ns\09\09\09\09"
module asm "\09.long\09__crc_ktime_get_resolution_ns\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ktime_get_resolution_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22ktime_get_resolution_ns\22\09\09\09\09\09"
module asm "__kstrtabns_ktime_get_resolution_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ktime_get_with_offset\22, \22a\22\09"
module asm "\09.weak\09__crc_ktime_get_with_offset\09\09\09\09"
module asm "\09.long\09__crc_ktime_get_with_offset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ktime_get_with_offset:\09\09\09\09\09"
module asm "\09.asciz \09\22ktime_get_with_offset\22\09\09\09\09\09"
module asm "__kstrtabns_ktime_get_with_offset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ktime_get_coarse_with_offset\22, \22a\22\09"
module asm "\09.weak\09__crc_ktime_get_coarse_with_offset\09\09\09\09"
module asm "\09.long\09__crc_ktime_get_coarse_with_offset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ktime_get_coarse_with_offset:\09\09\09\09\09"
module asm "\09.asciz \09\22ktime_get_coarse_with_offset\22\09\09\09\09\09"
module asm "__kstrtabns_ktime_get_coarse_with_offset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ktime_mono_to_any\22, \22a\22\09"
module asm "\09.weak\09__crc_ktime_mono_to_any\09\09\09\09"
module asm "\09.long\09__crc_ktime_mono_to_any\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ktime_mono_to_any:\09\09\09\09\09"
module asm "\09.asciz \09\22ktime_mono_to_any\22\09\09\09\09\09"
module asm "__kstrtabns_ktime_mono_to_any:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ktime_get_raw\22, \22a\22\09"
module asm "\09.weak\09__crc_ktime_get_raw\09\09\09\09"
module asm "\09.long\09__crc_ktime_get_raw\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ktime_get_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22ktime_get_raw\22\09\09\09\09\09"
module asm "__kstrtabns_ktime_get_raw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ktime_get_ts64\22, \22a\22\09"
module asm "\09.weak\09__crc_ktime_get_ts64\09\09\09\09"
module asm "\09.long\09__crc_ktime_get_ts64\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ktime_get_ts64:\09\09\09\09\09"
module asm "\09.asciz \09\22ktime_get_ts64\22\09\09\09\09\09"
module asm "__kstrtabns_ktime_get_ts64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ktime_get_seconds\22, \22a\22\09"
module asm "\09.weak\09__crc_ktime_get_seconds\09\09\09\09"
module asm "\09.long\09__crc_ktime_get_seconds\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ktime_get_seconds:\09\09\09\09\09"
module asm "\09.asciz \09\22ktime_get_seconds\22\09\09\09\09\09"
module asm "__kstrtabns_ktime_get_seconds:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ktime_get_real_seconds\22, \22a\22\09"
module asm "\09.weak\09__crc_ktime_get_real_seconds\09\09\09\09"
module asm "\09.long\09__crc_ktime_get_real_seconds\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ktime_get_real_seconds:\09\09\09\09\09"
module asm "\09.asciz \09\22ktime_get_real_seconds\22\09\09\09\09\09"
module asm "__kstrtabns_ktime_get_real_seconds:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ktime_get_snapshot\22, \22a\22\09"
module asm "\09.weak\09__crc_ktime_get_snapshot\09\09\09\09"
module asm "\09.long\09__crc_ktime_get_snapshot\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ktime_get_snapshot:\09\09\09\09\09"
module asm "\09.asciz \09\22ktime_get_snapshot\22\09\09\09\09\09"
module asm "__kstrtabns_ktime_get_snapshot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+get_device_system_crosststamp\22, \22a\22\09"
module asm "\09.weak\09__crc_get_device_system_crosststamp\09\09\09\09"
module asm "\09.long\09__crc_get_device_system_crosststamp\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_device_system_crosststamp:\09\09\09\09\09"
module asm "\09.asciz \09\22get_device_system_crosststamp\22\09\09\09\09\09"
module asm "__kstrtabns_get_device_system_crosststamp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+do_settimeofday64\22, \22a\22\09"
module asm "\09.weak\09__crc_do_settimeofday64\09\09\09\09"
module asm "\09.long\09__crc_do_settimeofday64\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_do_settimeofday64:\09\09\09\09\09"
module asm "\09.asciz \09\22do_settimeofday64\22\09\09\09\09\09"
module asm "__kstrtabns_do_settimeofday64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ktime_get_raw_ts64\22, \22a\22\09"
module asm "\09.weak\09__crc_ktime_get_raw_ts64\09\09\09\09"
module asm "\09.long\09__crc_ktime_get_raw_ts64\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ktime_get_raw_ts64:\09\09\09\09\09"
module asm "\09.asciz \09\22ktime_get_raw_ts64\22\09\09\09\09\09"
module asm "__kstrtabns_ktime_get_raw_ts64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+getboottime64\22, \22a\22\09"
module asm "\09.weak\09__crc_getboottime64\09\09\09\09"
module asm "\09.long\09__crc_getboottime64\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_getboottime64:\09\09\09\09\09"
module asm "\09.asciz \09\22getboottime64\22\09\09\09\09\09"
module asm "__kstrtabns_getboottime64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ktime_get_coarse_real_ts64\22, \22a\22\09"
module asm "\09.weak\09__crc_ktime_get_coarse_real_ts64\09\09\09\09"
module asm "\09.long\09__crc_ktime_get_coarse_real_ts64\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ktime_get_coarse_real_ts64:\09\09\09\09\09"
module asm "\09.asciz \09\22ktime_get_coarse_real_ts64\22\09\09\09\09\09"
module asm "__kstrtabns_ktime_get_coarse_real_ts64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ktime_get_coarse_ts64\22, \22a\22\09"
module asm "\09.weak\09__crc_ktime_get_coarse_ts64\09\09\09\09"
module asm "\09.long\09__crc_ktime_get_coarse_ts64\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ktime_get_coarse_ts64:\09\09\09\09\09"
module asm "\09.asciz \09\22ktime_get_coarse_ts64\22\09\09\09\09\09"
module asm "__kstrtabns_ktime_get_coarse_ts64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tk_fast = type { %struct.seqcount_latch_t, [2 x %struct.tk_read_base] }
%struct.seqcount_latch_t = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tk_read_base = type { ptr, i64, i64, i32, i32, i64, i64, i64 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.anon.71 = type { %struct.seqcount_raw_spinlock, %struct.timekeeper }
%struct.seqcount_raw_spinlock = type { %struct.seqcount, ptr }
%struct.timekeeper = type { %struct.tk_read_base, %struct.tk_read_base, i64, i32, %struct.timespec64, i64, i64, i64, i32, i32, i8, i64, i64, %struct.timespec64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.raw_notifier_head = type { ptr }
%struct.timezone = type { i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clocksource = type { ptr, i64, i32, i32, i64, i32, i32, i64, ptr, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.ktime_timestamps = type { i64, i64, i64 }
%struct.system_time_snapshot = type { i64, i64, i64, i32, i32, i8 }
%struct.system_counterval_t = type { i64, ptr }
%struct.system_device_crosststamp = type { i64, i64, i64 }
%struct.audit_ntp_data = type {}
%struct.__kernel_timex = type { i32, i32, i64, i64, i64, i64, i32, i32, i64, i64, i64, %struct.__kernel_timex_timeval, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i32, [44 x i8] }
%struct.__kernel_timex_timeval = type { i64, i64 }

@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"timekeeper_lock\00", [16 x i8] zeroinitializer }, align 32
@timekeeper_lock = dso_local global { %struct.raw_spinlock, [52 x i8] } { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@tk_fast_mono = internal global %struct.tk_fast { %struct.seqcount_latch_t { %struct.seqcount { i32 0, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 0, i8 0, i32 0, i32 0 } } }, [2 x %struct.tk_read_base] [%struct.tk_read_base { ptr @dummy_clock, i64 -1, i64 0, i32 1, i32 0, i64 0, i64 0, i64 0 }, %struct.tk_read_base { ptr @dummy_clock, i64 -1, i64 0, i32 1, i32 0, i64 0, i64 0, i64 0 }] }, align 128
@__kstrtab_ktime_get_mono_fast_ns = external dso_local constant [0 x i8], align 1
@__kstrtabns_ktime_get_mono_fast_ns = external dso_local constant [0 x i8], align 1
@__ksymtab_ktime_get_mono_fast_ns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ktime_get_mono_fast_ns to i32), ptr @__kstrtab_ktime_get_mono_fast_ns, ptr @__kstrtabns_ktime_get_mono_fast_ns }, section "___ksymtab_gpl+ktime_get_mono_fast_ns", align 4
@tk_fast_raw = internal global %struct.tk_fast { %struct.seqcount_latch_t { %struct.seqcount { i32 0, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 0, i8 0, i32 0, i32 0 } } }, [2 x %struct.tk_read_base] [%struct.tk_read_base { ptr @dummy_clock, i64 -1, i64 0, i32 1, i32 0, i64 0, i64 0, i64 0 }, %struct.tk_read_base { ptr @dummy_clock, i64 -1, i64 0, i32 1, i32 0, i64 0, i64 0, i64 0 }] }, align 128
@__kstrtab_ktime_get_raw_fast_ns = external dso_local constant [0 x i8], align 1
@__kstrtabns_ktime_get_raw_fast_ns = external dso_local constant [0 x i8], align 1
@__ksymtab_ktime_get_raw_fast_ns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ktime_get_raw_fast_ns to i32), ptr @__kstrtab_ktime_get_raw_fast_ns, ptr @__kstrtabns_ktime_get_raw_fast_ns }, section "___ksymtab_gpl+ktime_get_raw_fast_ns", align 4
@tk_core = internal global %struct.anon.71 { %struct.seqcount_raw_spinlock { %struct.seqcount { i32 0, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 0, i8 0, i32 0, i32 0 } }, ptr @timekeeper_lock }, %struct.timekeeper zeroinitializer }, align 128
@__kstrtab_ktime_get_boot_fast_ns = external dso_local constant [0 x i8], align 1
@__kstrtabns_ktime_get_boot_fast_ns = external dso_local constant [0 x i8], align 1
@__ksymtab_ktime_get_boot_fast_ns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ktime_get_boot_fast_ns to i32), ptr @__kstrtab_ktime_get_boot_fast_ns, ptr @__kstrtabns_ktime_get_boot_fast_ns }, section "___ksymtab_gpl+ktime_get_boot_fast_ns", align 4
@__kstrtab_ktime_get_real_fast_ns = external dso_local constant [0 x i8], align 1
@__kstrtabns_ktime_get_real_fast_ns = external dso_local constant [0 x i8], align 1
@__ksymtab_ktime_get_real_fast_ns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ktime_get_real_fast_ns to i32), ptr @__kstrtab_ktime_get_real_fast_ns, ptr @__kstrtabns_ktime_get_real_fast_ns }, section "___ksymtab_gpl+ktime_get_real_fast_ns", align 4
@pvclock_gtod_chain = internal global { %struct.raw_notifier_head, [28 x i8] } zeroinitializer, align 32
@__kstrtab_pvclock_gtod_register_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_pvclock_gtod_register_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_pvclock_gtod_register_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pvclock_gtod_register_notifier to i32), ptr @__kstrtab_pvclock_gtod_register_notifier, ptr @__kstrtabns_pvclock_gtod_register_notifier }, section "___ksymtab_gpl+pvclock_gtod_register_notifier", align 4
@__kstrtab_pvclock_gtod_unregister_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_pvclock_gtod_unregister_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_pvclock_gtod_unregister_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pvclock_gtod_unregister_notifier to i32), ptr @__kstrtab_pvclock_gtod_unregister_notifier, ptr @__kstrtabns_pvclock_gtod_unregister_notifier }, section "___ksymtab_gpl+pvclock_gtod_unregister_notifier", align 4
@timekeeping_suspended = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"kernel/time/timekeeping.c\00", [38 x i8] zeroinitializer }, align 32
@__kstrtab_ktime_get_real_ts64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_ktime_get_real_ts64 = external dso_local constant [0 x i8], align 1
@__ksymtab_ktime_get_real_ts64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ktime_get_real_ts64 to i32), ptr @__kstrtab_ktime_get_real_ts64, ptr @__kstrtabns_ktime_get_real_ts64 }, section "___ksymtab+ktime_get_real_ts64", align 4
@__kstrtab_ktime_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_ktime_get = external dso_local constant [0 x i8], align 1
@__ksymtab_ktime_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ktime_get to i32), ptr @__kstrtab_ktime_get, ptr @__kstrtabns_ktime_get }, section "___ksymtab_gpl+ktime_get", align 4
@__kstrtab_ktime_get_resolution_ns = external dso_local constant [0 x i8], align 1
@__kstrtabns_ktime_get_resolution_ns = external dso_local constant [0 x i8], align 1
@__ksymtab_ktime_get_resolution_ns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ktime_get_resolution_ns to i32), ptr @__kstrtab_ktime_get_resolution_ns, ptr @__kstrtabns_ktime_get_resolution_ns }, section "___ksymtab_gpl+ktime_get_resolution_ns", align 4
@offsets = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr getelementptr (i8, ptr @tk_core, i64 184), ptr getelementptr (i8, ptr @tk_core, i64 192), ptr getelementptr (i8, ptr @tk_core, i64 200)], [20 x i8] zeroinitializer }, align 32
@__kstrtab_ktime_get_with_offset = external dso_local constant [0 x i8], align 1
@__kstrtabns_ktime_get_with_offset = external dso_local constant [0 x i8], align 1
@__ksymtab_ktime_get_with_offset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ktime_get_with_offset to i32), ptr @__kstrtab_ktime_get_with_offset, ptr @__kstrtabns_ktime_get_with_offset }, section "___ksymtab_gpl+ktime_get_with_offset", align 4
@__kstrtab_ktime_get_coarse_with_offset = external dso_local constant [0 x i8], align 1
@__kstrtabns_ktime_get_coarse_with_offset = external dso_local constant [0 x i8], align 1
@__ksymtab_ktime_get_coarse_with_offset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ktime_get_coarse_with_offset to i32), ptr @__kstrtab_ktime_get_coarse_with_offset, ptr @__kstrtabns_ktime_get_coarse_with_offset }, section "___ksymtab_gpl+ktime_get_coarse_with_offset", align 4
@__kstrtab_ktime_mono_to_any = external dso_local constant [0 x i8], align 1
@__kstrtabns_ktime_mono_to_any = external dso_local constant [0 x i8], align 1
@__ksymtab_ktime_mono_to_any = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ktime_mono_to_any to i32), ptr @__kstrtab_ktime_mono_to_any, ptr @__kstrtabns_ktime_mono_to_any }, section "___ksymtab_gpl+ktime_mono_to_any", align 4
@__kstrtab_ktime_get_raw = external dso_local constant [0 x i8], align 1
@__kstrtabns_ktime_get_raw = external dso_local constant [0 x i8], align 1
@__ksymtab_ktime_get_raw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ktime_get_raw to i32), ptr @__kstrtab_ktime_get_raw, ptr @__kstrtabns_ktime_get_raw }, section "___ksymtab_gpl+ktime_get_raw", align 4
@__kstrtab_ktime_get_ts64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_ktime_get_ts64 = external dso_local constant [0 x i8], align 1
@__ksymtab_ktime_get_ts64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ktime_get_ts64 to i32), ptr @__kstrtab_ktime_get_ts64, ptr @__kstrtabns_ktime_get_ts64 }, section "___ksymtab_gpl+ktime_get_ts64", align 4
@__kstrtab_ktime_get_seconds = external dso_local constant [0 x i8], align 1
@__kstrtabns_ktime_get_seconds = external dso_local constant [0 x i8], align 1
@__ksymtab_ktime_get_seconds = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ktime_get_seconds to i32), ptr @__kstrtab_ktime_get_seconds, ptr @__kstrtabns_ktime_get_seconds }, section "___ksymtab_gpl+ktime_get_seconds", align 4
@__kstrtab_ktime_get_real_seconds = external dso_local constant [0 x i8], align 1
@__kstrtabns_ktime_get_real_seconds = external dso_local constant [0 x i8], align 1
@__ksymtab_ktime_get_real_seconds = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ktime_get_real_seconds to i32), ptr @__kstrtab_ktime_get_real_seconds, ptr @__kstrtabns_ktime_get_real_seconds }, section "___ksymtab_gpl+ktime_get_real_seconds", align 4
@ktime_get_snapshot.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_ktime_get_snapshot = external dso_local constant [0 x i8], align 1
@__kstrtabns_ktime_get_snapshot = external dso_local constant [0 x i8], align 1
@__ksymtab_ktime_get_snapshot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ktime_get_snapshot to i32), ptr @__kstrtab_ktime_get_snapshot, ptr @__kstrtabns_ktime_get_snapshot }, section "___ksymtab_gpl+ktime_get_snapshot", align 4
@__kstrtab_get_device_system_crosststamp = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_device_system_crosststamp = external dso_local constant [0 x i8], align 1
@__ksymtab_get_device_system_crosststamp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_device_system_crosststamp to i32), ptr @__kstrtab_get_device_system_crosststamp, ptr @__kstrtabns_get_device_system_crosststamp }, section "___ksymtab_gpl+get_device_system_crosststamp", align 4
@__kstrtab_do_settimeofday64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_do_settimeofday64 = external dso_local constant [0 x i8], align 1
@__ksymtab_do_settimeofday64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @do_settimeofday64 to i32), ptr @__kstrtab_do_settimeofday64, ptr @__kstrtabns_do_settimeofday64 }, section "___ksymtab+do_settimeofday64", align 4
@sys_tz = external dso_local local_unnamed_addr global %struct.timezone, align 4
@persistent_clock_is_local = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_ktime_get_raw_ts64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_ktime_get_raw_ts64 = external dso_local constant [0 x i8], align 1
@__ksymtab_ktime_get_raw_ts64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ktime_get_raw_ts64 to i32), ptr @__kstrtab_ktime_get_raw_ts64, ptr @__kstrtabns_ktime_get_raw_ts64 }, section "___ksymtab+ktime_get_raw_ts64", align 4
@persistent_clock_exists = internal global { i1, [31 x i8] } zeroinitializer, align 32
@timekeeping_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.1, i32 1623, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014Persistent clock returned invalid value\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"timekeeping_init\00", [47 x i8] zeroinitializer }, align 32
@timekeeping_init._entry_ptr = internal global ptr @timekeeping_init._entry, section ".printk_index", align 4
@suspend_timing_needed = internal global { i1, [31 x i8] } zeroinitializer, align 32
@timekeeping_suspend_time = internal global { %struct.timespec64, [16 x i8] } zeroinitializer, align 32
@timekeeping_suspend.old_delta.0 = internal global { i64, [24 x i8] } zeroinitializer, align 32
@timekeeping_suspend.old_delta.1 = internal global { i64, [24 x i8] } zeroinitializer, align 32
@__initcall__kmod_timekeeping__237_1898_timekeeping_init_ops6 = internal global ptr @timekeeping_init_ops, section ".initcall6.init", align 4
@__kstrtab_getboottime64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_getboottime64 = external dso_local constant [0 x i8], align 1
@__ksymtab_getboottime64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @getboottime64 to i32), ptr @__kstrtab_getboottime64, ptr @__kstrtabns_getboottime64 }, section "___ksymtab_gpl+getboottime64", align 4
@__kstrtab_ktime_get_coarse_real_ts64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_ktime_get_coarse_real_ts64 = external dso_local constant [0 x i8], align 1
@__ksymtab_ktime_get_coarse_real_ts64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ktime_get_coarse_real_ts64 to i32), ptr @__kstrtab_ktime_get_coarse_real_ts64, ptr @__kstrtabns_ktime_get_coarse_real_ts64 }, section "___ksymtab+ktime_get_coarse_real_ts64", align 4
@__kstrtab_ktime_get_coarse_ts64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_ktime_get_coarse_ts64 = external dso_local constant [0 x i8], align 1
@__ksymtab_ktime_get_coarse_ts64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ktime_get_coarse_ts64 to i32), ptr @__kstrtab_ktime_get_coarse_ts64, ptr @__kstrtabns_ktime_get_coarse_ts64 }, section "___ksymtab+ktime_get_coarse_ts64", align 4
@jiffies_64 = external dso_local local_unnamed_addr global i64, section ".data..cacheline_aligned", align 128
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tk_fast_mono.seq.seqcount\00", [38 x i8] zeroinitializer }, align 32
@dummy_clock = internal global { %struct.clocksource, [56 x i8] } { %struct.clocksource { ptr @dummy_clock_read, i64 0, i32 0, i32 0, i64 0, i32 0, i32 0, i64 0, ptr null, %struct.list_head zeroinitializer, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@cycles_at_suspend = internal global { i64, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tk_fast_raw.seq.seqcount\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tk_core.seq.seqcount\00", [43 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@tk_set_wall_to_mono.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@shadow_timekeeper = internal global { %struct.timekeeper, [64 x i8] } zeroinitializer, align 32
@__timekeeping_inject_sleeptime._entry = internal constant %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.1, i32 1673, ptr null, ptr null }, align 1
@.str.8 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014__timekeeping_inject_sleeptime: Invalid sleep delta value!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"__timekeeping_inject_sleeptime\00", [33 x i8] zeroinitializer }, align 32
@__timekeeping_inject_sleeptime._entry_ptr = internal global ptr @__timekeeping_inject_sleeptime._entry, section ".printk_index", align 4
@halt_fast_timekeeper.tkr_dummy = internal global { %struct.tk_read_base, [40 x i8] } zeroinitializer, align 32
@timekeeping_syscore_ops = internal global { %struct.syscore_ops, [44 x i8] } { %struct.syscore_ops { %struct.list_head zeroinitializer, ptr @timekeeping_suspend, ptr @timekeeping_resume, ptr null }, [44 x i8] zeroinitializer }, align 32
@timekeeping_check_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.1, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [132 x i8], [60 x i8] } { [132 x i8] c"WARNING: timekeeping: Cycle offset (%lld) is larger than allowed by the '%s' clock's max_cycles value (%lld): time overflow danger\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"timekeeping_check_update\00", [39 x i8] zeroinitializer }, align 32
@timekeeping_check_update._entry_ptr = internal global ptr @timekeeping_check_update._entry, section ".printk_index", align 4
@timekeeping_check_update._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.1, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"         timekeeping: Your kernel is sick, but tries to cope by capping time updates\0A\00", [42 x i8] zeroinitializer }, align 32
@timekeeping_check_update._entry_ptr.14 = internal global ptr @timekeeping_check_update._entry.12, section ".printk_index", align 4
@timekeeping_check_update._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.1, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"INFO: timekeeping: Cycle offset (%lld) is larger than the '%s' clock's 50%% safety margin (%lld)\0A\00", [62 x i8] zeroinitializer }, align 32
@timekeeping_check_update._entry_ptr.17 = internal global ptr @timekeeping_check_update._entry.15, section ".printk_index", align 4
@timekeeping_check_update._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.11, ptr @.str.1, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"      timekeeping: Your kernel is still fine, but is feeling a bit nervous\0A\00", [52 x i8] zeroinitializer }, align 32
@timekeeping_check_update._entry_ptr.20 = internal global ptr @timekeeping_check_update._entry.18, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@timekeeping_check_update._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.11, ptr @.str.1, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"WARNING: Underflow in clocksource '%s' observed, time update ignored.\0A\00", [57 x i8] zeroinitializer }, align 32
@timekeeping_check_update._entry_ptr.23 = internal global ptr @timekeeping_check_update._entry.21, section ".printk_index", align 4
@timekeeping_check_update._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.11, ptr @.str.1, i32 220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"         Please report this, consider using a different clocksource, if possible.\0A\00", [45 x i8] zeroinitializer }, align 32
@timekeeping_check_update._entry_ptr.26 = internal global ptr @timekeeping_check_update._entry.24, section ".printk_index", align 4
@timekeeping_check_update._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.11, ptr @.str.1, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"         Your kernel is probably still fine.\0A\00", [50 x i8] zeroinitializer }, align 32
@timekeeping_check_update._entry_ptr.29 = internal global ptr @timekeeping_check_update._entry.27, section ".printk_index", align 4
@timekeeping_check_update._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.11, ptr @.str.1, i32 229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"WARNING: Overflow in clocksource '%s' observed, time update capped.\0A\00", [59 x i8] zeroinitializer }, align 32
@timekeeping_check_update._entry_ptr.32 = internal global ptr @timekeeping_check_update._entry.30, section ".printk_index", align 4
@timekeeping_check_update._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.11, ptr @.str.1, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@timekeeping_check_update._entry_ptr.34 = internal global ptr @timekeeping_check_update._entry.33, section ".printk_index", align 4
@timekeeping_check_update._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.11, ptr @.str.1, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@timekeeping_check_update._entry_ptr.36 = internal global ptr @timekeeping_check_update._entry.35, section ".printk_index", align 4
@timekeeping_adjust.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@timekeeping_adjust._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.1, i32 2014, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014Adjusting %s more than 11%% (%ld vs %ld)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"timekeeping_adjust\00", [45 x i8] zeroinitializer }, align 32
@timekeeping_adjust._entry_ptr = internal global ptr @timekeeping_adjust._entry, section ".printk_index", align 4
@timekeeping_apply_adjustment.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 4294967295]
@___asan_gen_.42 = private unnamed_addr constant [16 x i8] c"timekeeper_lock\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 42, i32 1 }
@___asan_gen_.45 = private unnamed_addr constant [19 x i8] c"pvclock_gtod_chain\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 649, i32 8 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 802, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [8 x i8] c"offsets\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 854, i32 17 }
@___asan_gen_.54 = private unnamed_addr constant [26 x i8] c"persistent_clock_is_local\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1383, i32 5 }
@___asan_gen_.57 = private unnamed_addr constant [24 x i8] c"persistent_clock_exists\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1623, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [22 x i8] c"suspend_timing_needed\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [25 x i8] c"timekeeping_suspend_time\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1657, i32 26 }
@___asan_gen_.71 = private unnamed_addr constant [32 x i8] c"timekeeping_suspend.old_delta.0\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [32 x i8] c"timekeeping_suspend.old_delta.1\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 104, i32 13 }
@___asan_gen_.76 = private unnamed_addr constant [12 x i8] c"dummy_clock\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 84, i32 27 }
@___asan_gen_.79 = private unnamed_addr constant [18 x i8] c"cycles_at_suspend\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 75, i32 12 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 110, i32 13 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 52, i32 9 }
@___asan_gen_.89 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 276, i32 1 }
@___asan_gen_.91 = private unnamed_addr constant [18 x i8] c"shadow_timekeeper\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 55, i32 26 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1671, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [10 x i8] c"tkr_dummy\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 634, i32 29 }
@___asan_gen_.103 = private unnamed_addr constant [24 x i8] c"timekeeping_syscore_ops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1888, i32 27 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 206, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 208, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 211, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 213, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 219, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 220, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 221, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 229, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 230, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 231, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.170 = private constant [29 x i8] c"../kernel/time/timekeeping.c\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 2011, i32 3 }
@llvm.compiler.used = appending global [85 x ptr] [ptr @__initcall__kmod_timekeeping__237_1898_timekeeping_init_ops6, ptr @__ksymtab_do_settimeofday64, ptr @__ksymtab_get_device_system_crosststamp, ptr @__ksymtab_getboottime64, ptr @__ksymtab_ktime_get, ptr @__ksymtab_ktime_get_boot_fast_ns, ptr @__ksymtab_ktime_get_coarse_real_ts64, ptr @__ksymtab_ktime_get_coarse_ts64, ptr @__ksymtab_ktime_get_coarse_with_offset, ptr @__ksymtab_ktime_get_mono_fast_ns, ptr @__ksymtab_ktime_get_raw, ptr @__ksymtab_ktime_get_raw_fast_ns, ptr @__ksymtab_ktime_get_raw_ts64, ptr @__ksymtab_ktime_get_real_fast_ns, ptr @__ksymtab_ktime_get_real_seconds, ptr @__ksymtab_ktime_get_real_ts64, ptr @__ksymtab_ktime_get_resolution_ns, ptr @__ksymtab_ktime_get_seconds, ptr @__ksymtab_ktime_get_snapshot, ptr @__ksymtab_ktime_get_ts64, ptr @__ksymtab_ktime_get_with_offset, ptr @__ksymtab_ktime_mono_to_any, ptr @__ksymtab_pvclock_gtod_register_notifier, ptr @__ksymtab_pvclock_gtod_unregister_notifier, ptr @__timekeeping_inject_sleeptime._entry, ptr @__timekeeping_inject_sleeptime._entry_ptr, ptr @timekeeping_adjust._entry, ptr @timekeeping_adjust._entry_ptr, ptr @timekeeping_check_update._entry, ptr @timekeeping_check_update._entry.12, ptr @timekeeping_check_update._entry.15, ptr @timekeeping_check_update._entry.18, ptr @timekeeping_check_update._entry.21, ptr @timekeeping_check_update._entry.24, ptr @timekeeping_check_update._entry.27, ptr @timekeeping_check_update._entry.30, ptr @timekeeping_check_update._entry.33, ptr @timekeeping_check_update._entry.35, ptr @timekeeping_check_update._entry_ptr, ptr @timekeeping_check_update._entry_ptr.14, ptr @timekeeping_check_update._entry_ptr.17, ptr @timekeeping_check_update._entry_ptr.20, ptr @timekeeping_check_update._entry_ptr.23, ptr @timekeeping_check_update._entry_ptr.26, ptr @timekeeping_check_update._entry_ptr.29, ptr @timekeeping_check_update._entry_ptr.32, ptr @timekeeping_check_update._entry_ptr.34, ptr @timekeeping_check_update._entry_ptr.36, ptr @timekeeping_init._entry, ptr @timekeeping_init._entry_ptr, ptr @.str, ptr @timekeeper_lock, ptr @pvclock_gtod_chain, ptr @.str.1, ptr @offsets, ptr @persistent_clock_is_local, ptr @persistent_clock_exists, ptr @.str.2, ptr @.str.3, ptr @suspend_timing_needed, ptr @timekeeping_suspend_time, ptr @timekeeping_suspend.old_delta.0, ptr @timekeeping_suspend.old_delta.1, ptr @.str.4, ptr @dummy_clock, ptr @cycles_at_suspend, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @shadow_timekeeper, ptr @.str.8, ptr @.str.9, ptr @halt_fast_timekeeper.tkr_dummy, ptr @timekeeping_syscore_ops, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timekeeper_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvclock_gtod_chain to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @offsets to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @persistent_clock_is_local to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @persistent_clock_exists to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timekeeping_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @suspend_timing_needed to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timekeeping_suspend_time to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timekeeping_suspend.old_delta.0 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timekeeping_suspend.old_delta.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_clock to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cycles_at_suspend to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shadow_timekeeper to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @halt_fast_timekeeper.tkr_dummy to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timekeeping_syscore_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timekeeping_check_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timekeeping_check_update._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timekeeping_check_update._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timekeeping_check_update._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timekeeping_check_update._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timekeeping_check_update._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timekeeping_check_update._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timekeeping_check_update._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timekeeping_check_update._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timekeeping_check_update._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timekeeping_adjust._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @ktime_get_mono_fast_ns() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %0 = load volatile i32, ptr @tk_fast_mono, align 128
  %and.i = and i32 %0, 1
  %add.ptr.i = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %and.i
  %base2.i = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %and.i, i32 6
  %1 = ptrtoint ptr %base2.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %base2.i, align 8
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %add.ptr.i, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %call.i.i = tail call i64 %6(ptr noundef %4) #10
  %cycle_last.i = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %and.i, i32 2
  %7 = ptrtoint ptr %cycle_last.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %cycle_last.i, align 8
  %mask.i = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %and.i, i32 1
  %9 = ptrtoint ptr %mask.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %mask.i, align 8
  %mult.i.i = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %and.i, i32 3
  %11 = ptrtoint ptr %mult.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mult.i.i, align 8
  %xtime_nsec.i.i = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %and.i, i32 5
  %13 = ptrtoint ptr %xtime_nsec.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %xtime_nsec.i.i, align 8
  %shift.i.i = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %and.i, i32 4
  %15 = ptrtoint ptr %shift.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %shift.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !164
  %17 = load volatile i32, ptr @tk_fast_mono, align 128
  %cmp.i.i.i.not.i = icmp eq i32 %17, %0
  br i1 %cmp.i.i.i.not.i, label %__ktime_get_fast_ns.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

__ktime_get_fast_ns.exit:                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = sub i64 %call.i.i, %8
  %and.i.i = and i64 %sub.i.i, %10
  %conv.i.i = zext i32 %12 to i64
  %mul.i.i = mul i64 %and.i.i, %conv.i.i
  %add.i.i = add i64 %mul.i.i, %14
  %sh_prom.i.i = zext i32 %16 to i64
  %shr.i.i = lshr i64 %add.i.i, %sh_prom.i.i
  %add.i = add i64 %shr.i.i, %2
  ret i64 %add.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @ktime_get_raw_fast_ns() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %0 = load volatile i32, ptr @tk_fast_raw, align 128
  %and.i = and i32 %0, 1
  %add.ptr.i = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_raw, i32 0, i32 1), i32 %and.i
  %base2.i = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_raw, i32 0, i32 1), i32 %and.i, i32 6
  %1 = ptrtoint ptr %base2.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %base2.i, align 8
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %add.ptr.i, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %call.i.i = tail call i64 %6(ptr noundef %4) #10
  %cycle_last.i = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_raw, i32 0, i32 1), i32 %and.i, i32 2
  %7 = ptrtoint ptr %cycle_last.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %cycle_last.i, align 8
  %mask.i = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_raw, i32 0, i32 1), i32 %and.i, i32 1
  %9 = ptrtoint ptr %mask.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %mask.i, align 8
  %mult.i.i = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_raw, i32 0, i32 1), i32 %and.i, i32 3
  %11 = ptrtoint ptr %mult.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mult.i.i, align 8
  %xtime_nsec.i.i = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_raw, i32 0, i32 1), i32 %and.i, i32 5
  %13 = ptrtoint ptr %xtime_nsec.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %xtime_nsec.i.i, align 8
  %shift.i.i = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_raw, i32 0, i32 1), i32 %and.i, i32 4
  %15 = ptrtoint ptr %shift.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %shift.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !164
  %17 = load volatile i32, ptr @tk_fast_raw, align 128
  %cmp.i.i.i.not.i = icmp eq i32 %17, %0
  br i1 %cmp.i.i.i.not.i, label %__ktime_get_fast_ns.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

__ktime_get_fast_ns.exit:                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = sub i64 %call.i.i, %8
  %and.i.i = and i64 %sub.i.i, %10
  %conv.i.i = zext i32 %12 to i64
  %mul.i.i = mul i64 %and.i.i, %conv.i.i
  %add.i.i = add i64 %mul.i.i, %14
  %sh_prom.i.i = zext i32 %16 to i64
  %shr.i.i = lshr i64 %add.i.i, %sh_prom.i.i
  %add.i = add i64 %shr.i.i, %2
  ret i64 %add.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @ktime_get_boot_fast_ns() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %entry
  %0 = load volatile i32, ptr @tk_fast_mono, align 128
  %and.i.i = and i32 %0, 1
  %add.ptr.i.i = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %and.i.i
  %base2.i.i = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %and.i.i, i32 6
  %1 = ptrtoint ptr %base2.i.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %base2.i.i, align 8
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %add.ptr.i.i, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %call.i.i.i = tail call i64 %6(ptr noundef %4) #10
  %cycle_last.i.i = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %and.i.i, i32 2
  %7 = ptrtoint ptr %cycle_last.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %cycle_last.i.i, align 8
  %mask.i.i = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %and.i.i, i32 1
  %9 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %mask.i.i, align 8
  %mult.i.i.i = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %and.i.i, i32 3
  %11 = ptrtoint ptr %mult.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mult.i.i.i, align 8
  %xtime_nsec.i.i.i = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %and.i.i, i32 5
  %13 = ptrtoint ptr %xtime_nsec.i.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %xtime_nsec.i.i.i, align 8
  %shift.i.i.i = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %and.i.i, i32 4
  %15 = ptrtoint ptr %shift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %shift.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !164
  %17 = load volatile i32, ptr @tk_fast_mono, align 128
  %cmp.i.i.i.not.i.i = icmp eq i32 %17, %0
  br i1 %cmp.i.i.i.not.i.i, label %ktime_get_mono_fast_ns.exit, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

ktime_get_mono_fast_ns.exit:                      ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i.i = sub i64 %call.i.i.i, %8
  %and.i.i.i = and i64 %sub.i.i.i, %10
  %conv.i.i.i = zext i32 %12 to i64
  %mul.i.i.i = mul i64 %and.i.i.i, %conv.i.i.i
  %add.i.i.i = add i64 %mul.i.i.i, %14
  %sh_prom.i.i.i = zext i32 %16 to i64
  %shr.i.i.i = lshr i64 %add.i.i.i, %sh_prom.i.i.i
  %add.i.i = add i64 %shr.i.i.i, %2
  %18 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 6), align 64
  %add = add i64 %add.i.i, %18
  ret i64 %add
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @ktime_get_real_fast_ns() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %0 = load volatile i32, ptr @tk_fast_mono, align 128
  %and.i = and i32 %0, 1
  %add.ptr.i = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %and.i
  %base_real.i = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %and.i, i32 7
  %1 = ptrtoint ptr %base_real.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %base_real.i, align 8
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %add.ptr.i, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %call.i.i = tail call i64 %6(ptr noundef %4) #10
  %cycle_last.i = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %and.i, i32 2
  %7 = ptrtoint ptr %cycle_last.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %cycle_last.i, align 8
  %mask.i = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %and.i, i32 1
  %9 = ptrtoint ptr %mask.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %mask.i, align 8
  %mult.i.i = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %and.i, i32 3
  %11 = ptrtoint ptr %mult.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mult.i.i, align 8
  %xtime_nsec.i.i = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %and.i, i32 5
  %13 = ptrtoint ptr %xtime_nsec.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %xtime_nsec.i.i, align 8
  %shift.i.i = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %and.i, i32 4
  %15 = ptrtoint ptr %shift.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %shift.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !164
  %17 = load volatile i32, ptr @tk_fast_mono, align 128
  %cmp.i.i.i.not.i = icmp eq i32 %17, %0
  br i1 %cmp.i.i.i.not.i, label %__ktime_get_real_fast.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

__ktime_get_real_fast.exit:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.le.i = sub i64 %call.i.i, %8
  %and.i.le.i = and i64 %sub.i.le.i, %10
  %conv.i.le.i = zext i32 %12 to i64
  %mul.i.le.i = mul i64 %and.i.le.i, %conv.i.le.i
  %add.i.le.i = add i64 %mul.i.le.i, %14
  %sh_prom.i.le.i = zext i32 %16 to i64
  %shr.i.le.i = lshr i64 %add.i.le.i, %sh_prom.i.le.i
  %add11.i = add i64 %shr.i.le.i, %2
  ret i64 %add11.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ktime_get_fast_timestamps(ptr noundef %snapshot) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %0 = load volatile i32, ptr @tk_fast_mono, align 128
  %and.i = and i32 %0, 1
  %add.ptr.i = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %and.i
  %base2.i = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %and.i, i32 6
  %1 = ptrtoint ptr %base2.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %base2.i, align 8
  %base_real.i = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %and.i, i32 7
  %3 = ptrtoint ptr %base_real.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %base_real.i, align 8
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %add.ptr.i, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %call.i.i = tail call i64 %8(ptr noundef %6) #10
  %cycle_last.i = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %and.i, i32 2
  %9 = ptrtoint ptr %cycle_last.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %cycle_last.i, align 8
  %mask.i = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %and.i, i32 1
  %11 = ptrtoint ptr %mask.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %mask.i, align 8
  %mult.i.i = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %and.i, i32 3
  %13 = ptrtoint ptr %mult.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mult.i.i, align 8
  %xtime_nsec.i.i = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %and.i, i32 5
  %15 = ptrtoint ptr %xtime_nsec.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %xtime_nsec.i.i, align 8
  %shift.i.i = getelementptr %struct.tk_read_base, ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 %and.i, i32 4
  %17 = ptrtoint ptr %shift.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %shift.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !164
  %19 = load volatile i32, ptr @tk_fast_mono, align 128
  %cmp.i.i.i.not.i = icmp eq i32 %19, %0
  br i1 %cmp.i.i.i.not.i, label %do.end.i, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  %sub.i.le.i = sub i64 %call.i.i, %10
  %and.i.le.i = and i64 %sub.i.le.i, %12
  %conv.i.le.i = zext i32 %14 to i64
  %mul.i.le.i = mul i64 %and.i.le.i, %conv.i.le.i
  %add.i.le.i = add i64 %mul.i.le.i, %16
  %sh_prom.i.le.i = zext i32 %18 to i64
  %shr.i.le.i = lshr i64 %add.i.le.i, %sh_prom.i.le.i
  %tobool10.not.i = icmp eq ptr %snapshot, null
  br i1 %tobool10.not.i, label %do.end.i.__ktime_get_real_fast.exit_crit_edge, label %if.then.i

do.end.i.__ktime_get_real_fast.exit_crit_edge:    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__ktime_get_real_fast.exit

if.then.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.i = add i64 %shr.i.le.i, %2
  %20 = ptrtoint ptr %snapshot to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %add.i, ptr %snapshot, align 8
  br label %__ktime_get_real_fast.exit

__ktime_get_real_fast.exit:                       ; preds = %if.then.i, %do.end.i.__ktime_get_real_fast.exit_crit_edge
  %add11.i = add i64 %shr.i.le.i, %4
  %real = getelementptr inbounds %struct.ktime_timestamps, ptr %snapshot, i32 0, i32 2
  %21 = ptrtoint ptr %real to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %add11.i, ptr %real, align 8
  %22 = ptrtoint ptr %snapshot to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %snapshot, align 8
  %24 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 6), align 64
  %add = add i64 %24, %23
  %boot = getelementptr inbounds %struct.ktime_timestamps, ptr %snapshot, i32 0, i32 1
  %25 = ptrtoint ptr %boot to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %add, ptr %boot, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvclock_gtod_register_notifier(ptr noundef %nb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @timekeeper_lock) #10
  %call1 = tail call i32 @raw_notifier_chain_register(ptr noundef nonnull @pvclock_gtod_chain, ptr noundef %nb) #10
  %call.i = tail call i32 @raw_notifier_call_chain(ptr noundef nonnull @pvclock_gtod_chain, i32 noundef 1, ptr noundef getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1)) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @timekeeper_lock, i32 noundef %call) #10
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pvclock_gtod_unregister_notifier(ptr noundef %nb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @timekeeper_lock) #10
  %call1 = tail call i32 @raw_notifier_chain_unregister(ptr noundef nonnull @pvclock_gtod_chain, ptr noundef %nb) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @timekeeper_lock, i32 noundef %call) #10
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ktime_get_real_ts64(ptr nocapture noundef %ts) #0 align 64 {
entry:
  %dividend.addr.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @timekeeping_suspended, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.body20.preheader_crit_edge, label %do.end, !prof !165

entry.do.body20.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body20.preheader

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 802, i32 noundef 9, ptr noundef null) #10
  br label %do.body20.preheader

do.body20.preheader:                              ; preds = %do.end, %entry.do.body20.preheader_crit_edge
  br label %do.body20

do.body20:                                        ; preds = %timekeeping_get_ns.exit.do.body20_crit_edge, %do.body20.preheader
  tail call fastcc void @seqcount_lockdep_reader_access()
  %1 = load volatile i32, ptr @tk_core, align 128
  %and60 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool23.not61 = icmp eq i32 %and60, 0
  br i1 %tobool23.not61, label %do.body20.while.end_crit_edge, label %do.body20.do.end28_crit_edge

do.body20.do.end28_crit_edge:                     ; preds = %do.body20
  br label %do.end28

do.body20.while.end_crit_edge:                    ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.end28:                                         ; preds = %do.end28.do.end28_crit_edge, %do.body20.do.end28_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !166
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !167
  %2 = load volatile i32, ptr @tk_core, align 128
  %and = and i32 %2, 1
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %do.end28.while.end_crit_edge, label %do.end28.do.end28_crit_edge

do.end28.do.end28_crit_edge:                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end28

do.end28.while.end_crit_edge:                     ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %do.end28.while.end_crit_edge, %do.body20.while.end_crit_edge
  %.lcssa = phi i32 [ %1, %do.body20.while.end_crit_edge ], [ %2, %do.end28.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !168
  %3 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 2), align 8
  %4 = ptrtoint ptr %ts to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %ts, align 8
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %while.end.i.i.do.body.i.i_crit_edge, %while.end
  tail call fastcc void @seqcount_lockdep_reader_access() #10
  %5 = load volatile i32, ptr @tk_core, align 128
  %and53.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i.i)
  %tobool.not54.i.i = icmp eq i32 %and53.i.i, 0
  br i1 %tobool.not54.i.i, label %do.body.i.i.while.end.i.i_crit_edge, label %do.body.i.i.do.end.i.i_crit_edge

do.body.i.i.do.end.i.i_crit_edge:                 ; preds = %do.body.i.i
  br label %do.end.i.i

do.body.i.i.while.end.i.i_crit_edge:              ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %do.body.i.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !169
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !170
  %6 = load volatile i32, ptr @tk_core, align 128
  %and.i.i = and i32 %6, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.while.end.i.i_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

do.end.i.i.while.end.i.i_crit_edge:               ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %do.end.i.i.while.end.i.i_crit_edge, %do.body.i.i.while.end.i.i_crit_edge
  %.lcssa.i.i = phi i32 [ %5, %do.body.i.i.while.end.i.i_crit_edge ], [ %6, %do.end.i.i.while.end.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !171
  %7 = load volatile ptr, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1), align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %call.i.i.i = tail call i64 %9(ptr noundef %7) #10
  %10 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 2), align 8
  %11 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 1), align 16
  %12 = load ptr, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1), align 8
  %max_cycles.i.i = getelementptr inbounds %struct.clocksource, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %max_cycles.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %max_cycles.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !164
  %15 = load volatile i32, ptr @tk_core, align 128
  %cmp.i.i.not.i.i = icmp eq i32 %15, %.lcssa.i.i
  br i1 %cmp.i.i.not.i.i, label %do.end23.i.i, label %while.end.i.i.do.body.i.i_crit_edge

while.end.i.i.do.body.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

do.end23.i.i:                                     ; preds = %while.end.i.i
  %sub.i.i.i = sub i64 %call.i.i.i, %10
  %and.i.i.i = and i64 %sub.i.i.i, %11
  %and25.i.i = xor i64 %and.i.i.i, %11
  %shr.i.i = lshr i64 %11, 3
  call void @__sanitizer_cov_trace_cmp8(i64 %and25.i.i, i64 %shr.i.i)
  %cmp.i.i51 = icmp ult i64 %and25.i.i, %shr.i.i
  br i1 %cmp.i.i51, label %if.end.thread.i.i, label %if.end.i.i, !prof !172

if.end.thread.i.i:                                ; preds = %do.end23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i32 1, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 24), align 64
  br label %timekeeping_get_ns.exit

if.end.i.i:                                       ; preds = %do.end23.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i.i, i64 %14)
  %cmp28.i.i = icmp ugt i64 %and.i.i.i, %14
  br i1 %cmp28.i.i, label %if.then35.i.i, label %if.end.i.i.timekeeping_get_ns.exit_crit_edge, !prof !172

if.end.i.i.timekeeping_get_ns.exit_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %timekeeping_get_ns.exit

if.then35.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i32 1, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 25), align 4
  %16 = load ptr, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1), align 8
  %max_cycles37.i.i = getelementptr inbounds %struct.clocksource, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %max_cycles37.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %max_cycles37.i.i, align 8
  br label %timekeeping_get_ns.exit

timekeeping_get_ns.exit:                          ; preds = %if.then35.i.i, %if.end.i.i.timekeeping_get_ns.exit_crit_edge, %if.end.thread.i.i
  %delta.1.i.i = phi i64 [ %18, %if.then35.i.i ], [ %and.i.i.i, %if.end.i.i.timekeeping_get_ns.exit_crit_edge ], [ 0, %if.end.thread.i.i ]
  %19 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 3), align 64
  %20 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  %21 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 4), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !164
  %22 = load volatile i32, ptr @tk_core, align 128
  %cmp.i.i52.not = icmp eq i32 %22, %.lcssa
  br i1 %cmp.i.i52.not, label %do.end46, label %timekeeping_get_ns.exit.do.body20_crit_edge

timekeeping_get_ns.exit.do.body20_crit_edge:      ; preds = %timekeeping_get_ns.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body20

do.end46:                                         ; preds = %timekeeping_get_ns.exit
  %conv.i.i = zext i32 %19 to i64
  %mul.i.i = mul i64 %delta.1.i.i, %conv.i.i
  %add.i.i = add i64 %mul.i.i, %20
  %sh_prom.i.i = zext i32 %21 to i64
  %shr.i3.i = lshr i64 %add.i.i, %sh_prom.i.i
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %23 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %tv_nsec, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dividend.addr.i.i) #10
  %24 = ptrtoint ptr %dividend.addr.i.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %shr.i3.i, ptr %dividend.addr.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 999999999, i64 %shr.i3.i)
  %cmp1.i.i = icmp ugt i64 %shr.i3.i, 999999999
  %extract.t.i = trunc i64 %shr.i3.i to i32
  br i1 %cmp1.i.i, label %do.end46.while.body.i.i_crit_edge, label %do.end46.timespec64_add_ns.exit_crit_edge

do.end46.timespec64_add_ns.exit_crit_edge:        ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %timespec64_add_ns.exit

do.end46.while.body.i.i_crit_edge:                ; preds = %do.end46
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %do.end46.while.body.i.i_crit_edge
  %ret.02.i.i = phi i32 [ %inc.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 0, %do.end46.while.body.i.i_crit_edge ]
  %25 = phi i64 [ %sub.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %shr.i3.i, %do.end46.while.body.i.i_crit_edge ]
  call void asm "", "=*rm,0"(ptr nonnull elementtype(i64) %dividend.addr.i.i, i64 %25) #10, !srcloc !173
  %26 = ptrtoint ptr %dividend.addr.i.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %dividend.addr.i.i, align 8
  %sub.i.i = add i64 %27, -1000000000
  store i64 %sub.i.i, ptr %dividend.addr.i.i, align 8
  %inc.i.i = add i32 %ret.02.i.i, 1
  %cmp.i.i = icmp ugt i64 %sub.i.i, 999999999
  br i1 %cmp.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %__iter_div_u64_rem.exit.loopexit.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

__iter_div_u64_rem.exit.loopexit.i:               ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %extract.t7.le.i = trunc i64 %sub.i.i to i32
  br label %timespec64_add_ns.exit

timespec64_add_ns.exit:                           ; preds = %__iter_div_u64_rem.exit.loopexit.i, %do.end46.timespec64_add_ns.exit_crit_edge
  %.lcssa.i.off0.i = phi i32 [ %extract.t.i, %do.end46.timespec64_add_ns.exit_crit_edge ], [ %extract.t7.le.i, %__iter_div_u64_rem.exit.loopexit.i ]
  %ret.0.lcssa.i.i = phi i32 [ 0, %do.end46.timespec64_add_ns.exit_crit_edge ], [ %inc.i.i, %__iter_div_u64_rem.exit.loopexit.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dividend.addr.i.i) #10
  %conv1.i = zext i32 %ret.0.lcssa.i.i to i64
  %28 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %ts, align 8
  %add2.i = add i64 %29, %conv1.i
  store i64 %add2.i, ptr %ts, align 8
  %30 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.lcssa.i.off0.i, ptr %tv_nsec, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @seqcount_lockdep_reader_access() unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !174
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %do.body24.critedge

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_off() #10
  %1 = tail call ptr @llvm.returnaddress(i32 0)
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 0, i32 0, i32 1), i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #10
  tail call void @lock_release(ptr noundef getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 0, i32 0, i32 1), i32 noundef %2) #10
  tail call void @trace_hardirqs_on() #10
  br label %do.body24

do.body24.critedge:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = tail call ptr @llvm.returnaddress(i32 0)
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 0, i32 0, i32 1), i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #10
  tail call void @lock_release(ptr noundef getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 0, i32 0, i32 1), i32 noundef %4) #10
  br label %do.body24

do.body24:                                        ; preds = %do.body24.critedge, %if.then
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !175
  %and.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool32.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool32.not, label %if.then36, label %do.body24.do.end39_crit_edge, !prof !172

do.body24.do.end39_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end39

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %do.body24.do.end39_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #10, !srcloc !176
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @ktime_get() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @timekeeping_suspended, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.body20.preheader_crit_edge, label %do.end, !prof !165

entry.do.body20.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body20.preheader

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 824, i32 noundef 9, ptr noundef null) #10
  br label %do.body20.preheader

do.body20.preheader:                              ; preds = %do.end, %entry.do.body20.preheader_crit_edge
  br label %do.body20

do.body20:                                        ; preds = %timekeeping_get_ns.exit.do.body20_crit_edge, %do.body20.preheader
  tail call fastcc void @seqcount_lockdep_reader_access()
  %1 = load volatile i32, ptr @tk_core, align 128
  %and60 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool23.not61 = icmp eq i32 %and60, 0
  br i1 %tobool23.not61, label %do.body20.while.end_crit_edge, label %do.body20.do.end28_crit_edge

do.body20.do.end28_crit_edge:                     ; preds = %do.body20
  br label %do.end28

do.body20.while.end_crit_edge:                    ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.end28:                                         ; preds = %do.end28.do.end28_crit_edge, %do.body20.do.end28_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !177
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !178
  %2 = load volatile i32, ptr @tk_core, align 128
  %and = and i32 %2, 1
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %do.end28.while.end_crit_edge, label %do.end28.do.end28_crit_edge

do.end28.do.end28_crit_edge:                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end28

do.end28.while.end_crit_edge:                     ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %do.end28.while.end_crit_edge, %do.body20.while.end_crit_edge
  %.lcssa = phi i32 [ %1, %do.body20.while.end_crit_edge ], [ %2, %do.end28.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !179
  %3 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 6), align 16
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %while.end.i.i.do.body.i.i_crit_edge, %while.end
  tail call fastcc void @seqcount_lockdep_reader_access() #10
  %4 = load volatile i32, ptr @tk_core, align 128
  %and53.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i.i)
  %tobool.not54.i.i = icmp eq i32 %and53.i.i, 0
  br i1 %tobool.not54.i.i, label %do.body.i.i.while.end.i.i_crit_edge, label %do.body.i.i.do.end.i.i_crit_edge

do.body.i.i.do.end.i.i_crit_edge:                 ; preds = %do.body.i.i
  br label %do.end.i.i

do.body.i.i.while.end.i.i_crit_edge:              ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %do.body.i.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !169
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !170
  %5 = load volatile i32, ptr @tk_core, align 128
  %and.i.i = and i32 %5, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.while.end.i.i_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

do.end.i.i.while.end.i.i_crit_edge:               ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %do.end.i.i.while.end.i.i_crit_edge, %do.body.i.i.while.end.i.i_crit_edge
  %.lcssa.i.i = phi i32 [ %4, %do.body.i.i.while.end.i.i_crit_edge ], [ %5, %do.end.i.i.while.end.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !171
  %6 = load volatile ptr, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1), align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %call.i.i.i = tail call i64 %8(ptr noundef %6) #10
  %9 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 2), align 8
  %10 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 1), align 16
  %11 = load ptr, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1), align 8
  %max_cycles.i.i = getelementptr inbounds %struct.clocksource, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %max_cycles.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %max_cycles.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !164
  %14 = load volatile i32, ptr @tk_core, align 128
  %cmp.i.i.not.i.i = icmp eq i32 %14, %.lcssa.i.i
  br i1 %cmp.i.i.not.i.i, label %do.end23.i.i, label %while.end.i.i.do.body.i.i_crit_edge

while.end.i.i.do.body.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

do.end23.i.i:                                     ; preds = %while.end.i.i
  %sub.i.i.i = sub i64 %call.i.i.i, %9
  %and.i.i.i = and i64 %sub.i.i.i, %10
  %and25.i.i = xor i64 %and.i.i.i, %10
  %shr.i.i = lshr i64 %10, 3
  call void @__sanitizer_cov_trace_cmp8(i64 %and25.i.i, i64 %shr.i.i)
  %cmp.i.i = icmp ult i64 %and25.i.i, %shr.i.i
  br i1 %cmp.i.i, label %if.end.thread.i.i, label %if.end.i.i, !prof !172

if.end.thread.i.i:                                ; preds = %do.end23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i32 1, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 24), align 64
  br label %timekeeping_get_ns.exit

if.end.i.i:                                       ; preds = %do.end23.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i.i, i64 %13)
  %cmp28.i.i = icmp ugt i64 %and.i.i.i, %13
  br i1 %cmp28.i.i, label %if.then35.i.i, label %if.end.i.i.timekeeping_get_ns.exit_crit_edge, !prof !172

if.end.i.i.timekeeping_get_ns.exit_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %timekeeping_get_ns.exit

if.then35.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i32 1, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 25), align 4
  %15 = load ptr, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1), align 8
  %max_cycles37.i.i = getelementptr inbounds %struct.clocksource, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %max_cycles37.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %max_cycles37.i.i, align 8
  br label %timekeeping_get_ns.exit

timekeeping_get_ns.exit:                          ; preds = %if.then35.i.i, %if.end.i.i.timekeeping_get_ns.exit_crit_edge, %if.end.thread.i.i
  %delta.1.i.i = phi i64 [ %17, %if.then35.i.i ], [ %and.i.i.i, %if.end.i.i.timekeeping_get_ns.exit_crit_edge ], [ 0, %if.end.thread.i.i ]
  %18 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 3), align 64
  %19 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  %20 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 4), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !164
  %21 = load volatile i32, ptr @tk_core, align 128
  %cmp.i.i51.not = icmp eq i32 %21, %.lcssa
  br i1 %cmp.i.i51.not, label %do.end48, label %timekeeping_get_ns.exit.do.body20_crit_edge

timekeeping_get_ns.exit.do.body20_crit_edge:      ; preds = %timekeeping_get_ns.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body20

do.end48:                                         ; preds = %timekeeping_get_ns.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i = zext i32 %18 to i64
  %mul.i.i = mul i64 %delta.1.i.i, %conv.i.i
  %add.i.i = add i64 %mul.i.i, %19
  %sh_prom.i.i = zext i32 %20 to i64
  %shr.i3.i = lshr i64 %add.i.i, %sh_prom.i.i
  %add = add i64 %shr.i3.i, %3
  ret i64 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ktime_get_resolution_ns() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @timekeeping_suspended, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.body20.preheader_crit_edge, label %do.end, !prof !165

entry.do.body20.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body20.preheader

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 843, i32 noundef 9, ptr noundef null) #10
  br label %do.body20.preheader

do.body20.preheader:                              ; preds = %do.end, %entry.do.body20.preheader_crit_edge
  br label %do.body20

do.body20:                                        ; preds = %while.end.do.body20_crit_edge, %do.body20.preheader
  tail call fastcc void @seqcount_lockdep_reader_access()
  %1 = load volatile i32, ptr @tk_core, align 128
  %and51 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool23.not52 = icmp eq i32 %and51, 0
  br i1 %tobool23.not52, label %do.body20.while.end_crit_edge, label %do.body20.do.end28_crit_edge

do.body20.do.end28_crit_edge:                     ; preds = %do.body20
  br label %do.end28

do.body20.while.end_crit_edge:                    ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.end28:                                         ; preds = %do.end28.do.end28_crit_edge, %do.body20.do.end28_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !180
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !181
  %2 = load volatile i32, ptr @tk_core, align 128
  %and = and i32 %2, 1
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %do.end28.while.end_crit_edge, label %do.end28.do.end28_crit_edge

do.end28.do.end28_crit_edge:                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end28

do.end28.while.end_crit_edge:                     ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %do.end28.while.end_crit_edge, %do.body20.while.end_crit_edge
  %.lcssa = phi i32 [ %1, %do.body20.while.end_crit_edge ], [ %2, %do.end28.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !182
  %3 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 3), align 64
  %4 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 4), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !164
  %5 = load volatile i32, ptr @tk_core, align 128
  %cmp.i.i.not = icmp eq i32 %5, %.lcssa
  br i1 %cmp.i.i.not, label %do.end46, label %while.end.do.body20_crit_edge

while.end.do.body20_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body20

do.end46:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %shr = lshr i32 %3, %4
  ret i32 %shr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @ktime_get_with_offset(i32 noundef %offs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [3 x ptr], ptr @offsets, i32 0, i32 %offs
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = load i32, ptr @timekeeping_suspended, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.body20.preheader_crit_edge, label %do.end, !prof !165

entry.do.body20.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body20.preheader

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 867, i32 noundef 9, ptr noundef null) #10
  br label %do.body20.preheader

do.body20.preheader:                              ; preds = %do.end, %entry.do.body20.preheader_crit_edge
  br label %do.body20

do.body20:                                        ; preds = %timekeeping_get_ns.exit.do.body20_crit_edge, %do.body20.preheader
  tail call fastcc void @seqcount_lockdep_reader_access()
  %3 = load volatile i32, ptr @tk_core, align 128
  %and62 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool23.not63 = icmp eq i32 %and62, 0
  br i1 %tobool23.not63, label %do.body20.while.end_crit_edge, label %do.body20.do.end28_crit_edge

do.body20.do.end28_crit_edge:                     ; preds = %do.body20
  br label %do.end28

do.body20.while.end_crit_edge:                    ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.end28:                                         ; preds = %do.end28.do.end28_crit_edge, %do.body20.do.end28_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !183
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !184
  %4 = load volatile i32, ptr @tk_core, align 128
  %and = and i32 %4, 1
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %do.end28.while.end_crit_edge, label %do.end28.do.end28_crit_edge

do.end28.do.end28_crit_edge:                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end28

do.end28.while.end_crit_edge:                     ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %do.end28.while.end_crit_edge, %do.body20.while.end_crit_edge
  %.lcssa = phi i32 [ %3, %do.body20.while.end_crit_edge ], [ %4, %do.end28.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !185
  %5 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 6), align 16
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %1, align 8
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %while.end.i.i.do.body.i.i_crit_edge, %while.end
  tail call fastcc void @seqcount_lockdep_reader_access() #10
  %8 = load volatile i32, ptr @tk_core, align 128
  %and53.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i.i)
  %tobool.not54.i.i = icmp eq i32 %and53.i.i, 0
  br i1 %tobool.not54.i.i, label %do.body.i.i.while.end.i.i_crit_edge, label %do.body.i.i.do.end.i.i_crit_edge

do.body.i.i.do.end.i.i_crit_edge:                 ; preds = %do.body.i.i
  br label %do.end.i.i

do.body.i.i.while.end.i.i_crit_edge:              ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %do.body.i.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !169
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !170
  %9 = load volatile i32, ptr @tk_core, align 128
  %and.i.i = and i32 %9, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.while.end.i.i_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

do.end.i.i.while.end.i.i_crit_edge:               ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %do.end.i.i.while.end.i.i_crit_edge, %do.body.i.i.while.end.i.i_crit_edge
  %.lcssa.i.i = phi i32 [ %8, %do.body.i.i.while.end.i.i_crit_edge ], [ %9, %do.end.i.i.while.end.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !171
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1), align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %call.i.i.i = tail call i64 %12(ptr noundef %10) #10
  %13 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 2), align 8
  %14 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 1), align 16
  %15 = load ptr, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1), align 8
  %max_cycles.i.i = getelementptr inbounds %struct.clocksource, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %max_cycles.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %max_cycles.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !164
  %18 = load volatile i32, ptr @tk_core, align 128
  %cmp.i.i.not.i.i = icmp eq i32 %18, %.lcssa.i.i
  br i1 %cmp.i.i.not.i.i, label %do.end23.i.i, label %while.end.i.i.do.body.i.i_crit_edge

while.end.i.i.do.body.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

do.end23.i.i:                                     ; preds = %while.end.i.i
  %sub.i.i.i = sub i64 %call.i.i.i, %13
  %and.i.i.i = and i64 %sub.i.i.i, %14
  %and25.i.i = xor i64 %and.i.i.i, %14
  %shr.i.i = lshr i64 %14, 3
  call void @__sanitizer_cov_trace_cmp8(i64 %and25.i.i, i64 %shr.i.i)
  %cmp.i.i = icmp ult i64 %and25.i.i, %shr.i.i
  br i1 %cmp.i.i, label %if.end.thread.i.i, label %if.end.i.i, !prof !172

if.end.thread.i.i:                                ; preds = %do.end23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i32 1, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 24), align 64
  br label %timekeeping_get_ns.exit

if.end.i.i:                                       ; preds = %do.end23.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i.i, i64 %17)
  %cmp28.i.i = icmp ugt i64 %and.i.i.i, %17
  br i1 %cmp28.i.i, label %if.then35.i.i, label %if.end.i.i.timekeeping_get_ns.exit_crit_edge, !prof !172

if.end.i.i.timekeeping_get_ns.exit_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %timekeeping_get_ns.exit

if.then35.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i32 1, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 25), align 4
  %19 = load ptr, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1), align 8
  %max_cycles37.i.i = getelementptr inbounds %struct.clocksource, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %max_cycles37.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %max_cycles37.i.i, align 8
  br label %timekeeping_get_ns.exit

timekeeping_get_ns.exit:                          ; preds = %if.then35.i.i, %if.end.i.i.timekeeping_get_ns.exit_crit_edge, %if.end.thread.i.i
  %delta.1.i.i = phi i64 [ %21, %if.then35.i.i ], [ %and.i.i.i, %if.end.i.i.timekeeping_get_ns.exit_crit_edge ], [ 0, %if.end.thread.i.i ]
  %22 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 3), align 64
  %23 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  %24 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 4), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !164
  %25 = load volatile i32, ptr @tk_core, align 128
  %cmp.i.i52.not = icmp eq i32 %25, %.lcssa
  br i1 %cmp.i.i52.not, label %do.end48, label %timekeeping_get_ns.exit.do.body20_crit_edge

timekeeping_get_ns.exit.do.body20_crit_edge:      ; preds = %timekeeping_get_ns.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body20

do.end48:                                         ; preds = %timekeeping_get_ns.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i = zext i32 %22 to i64
  %mul.i.i = mul i64 %delta.1.i.i, %conv.i.i
  %add.i.i = add i64 %mul.i.i, %23
  %sh_prom.i.i = zext i32 %24 to i64
  %shr.i3.i = lshr i64 %add.i.i, %sh_prom.i.i
  %add = add i64 %7, %5
  %add49 = add i64 %add, %shr.i3.i
  ret i64 %add49
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @ktime_get_coarse_with_offset(i32 noundef %offs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [3 x ptr], ptr @offsets, i32 0, i32 %offs
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = load i32, ptr @timekeeping_suspended, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.body20.preheader_crit_edge, label %do.end, !prof !165

entry.do.body20.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body20.preheader

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 888, i32 noundef 9, ptr noundef null) #10
  br label %do.body20.preheader

do.body20.preheader:                              ; preds = %do.end, %entry.do.body20.preheader_crit_edge
  br label %do.body20

do.body20:                                        ; preds = %while.end.do.body20_crit_edge, %do.body20.preheader
  tail call fastcc void @seqcount_lockdep_reader_access()
  %3 = load volatile i32, ptr @tk_core, align 128
  %and57 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool23.not58 = icmp eq i32 %and57, 0
  br i1 %tobool23.not58, label %do.body20.while.end_crit_edge, label %do.body20.do.end28_crit_edge

do.body20.do.end28_crit_edge:                     ; preds = %do.body20
  br label %do.end28

do.body20.while.end_crit_edge:                    ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.end28:                                         ; preds = %do.end28.do.end28_crit_edge, %do.body20.do.end28_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !186
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !187
  %4 = load volatile i32, ptr @tk_core, align 128
  %and = and i32 %4, 1
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %do.end28.while.end_crit_edge, label %do.end28.do.end28_crit_edge

do.end28.do.end28_crit_edge:                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end28

do.end28.while.end_crit_edge:                     ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %do.end28.while.end_crit_edge, %do.body20.while.end_crit_edge
  %.lcssa = phi i32 [ %3, %do.body20.while.end_crit_edge ], [ %4, %do.end28.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !188
  %5 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 6), align 16
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %1, align 8
  %8 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  %9 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 4), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !164
  %10 = load volatile i32, ptr @tk_core, align 128
  %cmp.i.i.not = icmp eq i32 %10, %.lcssa
  br i1 %cmp.i.i.not, label %do.end48, label %while.end.do.body20_crit_edge

while.end.do.body20_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body20

do.end48:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %sh_prom = zext i32 %9 to i64
  %shr = lshr i64 %8, %sh_prom
  %add = add i64 %7, %5
  %add49 = add i64 %add, %shr
  ret i64 %add49
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @ktime_mono_to_any(i64 noundef %tmono, i32 noundef %offs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [3 x ptr], ptr @offsets, i32 0, i32 %offs
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  tail call fastcc void @seqcount_lockdep_reader_access()
  %2 = load volatile i32, ptr @tk_core, align 128
  %and23 = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool.not24 = icmp eq i32 %and23, 0
  br i1 %tobool.not24, label %do.body.while.end_crit_edge, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  br label %do.end

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %do.body.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !189
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !190
  %3 = load volatile i32, ptr @tk_core, align 128
  %and = and i32 %3, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %do.body.while.end_crit_edge
  %.lcssa = phi i32 [ %2, %do.body.while.end_crit_edge ], [ %3, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !191
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !164
  %6 = load volatile i32, ptr @tk_core, align 128
  %cmp.i.i.not = icmp eq i32 %6, %.lcssa
  br i1 %cmp.i.i.not, label %do.end21, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end21:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %add = add i64 %5, %tmono
  ret i64 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @ktime_get_raw() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body

do.body:                                          ; preds = %timekeeping_get_ns.exit.do.body_crit_edge, %entry
  tail call fastcc void @seqcount_lockdep_reader_access()
  %0 = load volatile i32, ptr @tk_core, align 128
  %and35 = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool.not36 = icmp eq i32 %and35, 0
  br i1 %tobool.not36, label %do.body.while.end_crit_edge, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  br label %do.end

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %do.body.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !193
  %1 = load volatile i32, ptr @tk_core, align 128
  %and = and i32 %1, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %do.body.while.end_crit_edge
  %.lcssa = phi i32 [ %0, %do.body.while.end_crit_edge ], [ %1, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !194
  %2 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 6), align 8
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %while.end.i.i.do.body.i.i_crit_edge, %while.end
  tail call fastcc void @seqcount_lockdep_reader_access() #10
  %3 = load volatile i32, ptr @tk_core, align 128
  %and53.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i.i)
  %tobool.not54.i.i = icmp eq i32 %and53.i.i, 0
  br i1 %tobool.not54.i.i, label %do.body.i.i.while.end.i.i_crit_edge, label %do.body.i.i.do.end.i.i_crit_edge

do.body.i.i.do.end.i.i_crit_edge:                 ; preds = %do.body.i.i
  br label %do.end.i.i

do.body.i.i.while.end.i.i_crit_edge:              ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %do.body.i.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !169
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !170
  %4 = load volatile i32, ptr @tk_core, align 128
  %and.i.i = and i32 %4, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.while.end.i.i_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

do.end.i.i.while.end.i.i_crit_edge:               ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %do.end.i.i.while.end.i.i_crit_edge, %do.body.i.i.while.end.i.i_crit_edge
  %.lcssa.i.i = phi i32 [ %3, %do.body.i.i.while.end.i.i_crit_edge ], [ %4, %do.end.i.i.while.end.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !171
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1), align 32
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %call.i.i.i = tail call i64 %7(ptr noundef %5) #10
  %8 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 2), align 16
  %9 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 1), align 8
  %10 = load ptr, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1), align 32
  %max_cycles.i.i = getelementptr inbounds %struct.clocksource, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %max_cycles.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %max_cycles.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !164
  %13 = load volatile i32, ptr @tk_core, align 128
  %cmp.i.i.not.i.i = icmp eq i32 %13, %.lcssa.i.i
  br i1 %cmp.i.i.not.i.i, label %do.end23.i.i, label %while.end.i.i.do.body.i.i_crit_edge

while.end.i.i.do.body.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

do.end23.i.i:                                     ; preds = %while.end.i.i
  %sub.i.i.i = sub i64 %call.i.i.i, %8
  %and.i.i.i = and i64 %sub.i.i.i, %9
  %and25.i.i = xor i64 %and.i.i.i, %9
  %shr.i.i = lshr i64 %9, 3
  call void @__sanitizer_cov_trace_cmp8(i64 %and25.i.i, i64 %shr.i.i)
  %cmp.i.i = icmp ult i64 %and25.i.i, %shr.i.i
  br i1 %cmp.i.i, label %if.end.thread.i.i, label %if.end.i.i, !prof !172

if.end.thread.i.i:                                ; preds = %do.end23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i32 1, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 24), align 64
  br label %timekeeping_get_ns.exit

if.end.i.i:                                       ; preds = %do.end23.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i.i, i64 %12)
  %cmp28.i.i = icmp ugt i64 %and.i.i.i, %12
  br i1 %cmp28.i.i, label %if.then35.i.i, label %if.end.i.i.timekeeping_get_ns.exit_crit_edge, !prof !172

if.end.i.i.timekeeping_get_ns.exit_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %timekeeping_get_ns.exit

if.then35.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i32 1, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 25), align 4
  %14 = load ptr, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1), align 32
  %max_cycles37.i.i = getelementptr inbounds %struct.clocksource, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %max_cycles37.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %max_cycles37.i.i, align 8
  br label %timekeeping_get_ns.exit

timekeeping_get_ns.exit:                          ; preds = %if.then35.i.i, %if.end.i.i.timekeeping_get_ns.exit_crit_edge, %if.end.thread.i.i
  %delta.1.i.i = phi i64 [ %16, %if.then35.i.i ], [ %and.i.i.i, %if.end.i.i.timekeeping_get_ns.exit_crit_edge ], [ 0, %if.end.thread.i.i ]
  %17 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 3), align 8
  %18 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 5), align 128
  %19 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 4), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !164
  %20 = load volatile i32, ptr @tk_core, align 128
  %cmp.i.i26.not = icmp eq i32 %20, %.lcssa
  br i1 %cmp.i.i26.not, label %do.end24, label %timekeeping_get_ns.exit.do.body_crit_edge

timekeeping_get_ns.exit.do.body_crit_edge:        ; preds = %timekeeping_get_ns.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end24:                                         ; preds = %timekeeping_get_ns.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i = zext i32 %17 to i64
  %mul.i.i = mul i64 %delta.1.i.i, %conv.i.i
  %add.i.i = add i64 %mul.i.i, %18
  %sh_prom.i.i = zext i32 %19 to i64
  %shr.i3.i = lshr i64 %add.i.i, %sh_prom.i.i
  %add = add i64 %shr.i3.i, %2
  ret i64 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ktime_get_ts64(ptr nocapture noundef %ts) #0 align 64 {
entry:
  %dividend.addr.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @timekeeping_suspended, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.body20.preheader_crit_edge, label %do.end, !prof !165

entry.do.body20.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body20.preheader

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 957, i32 noundef 9, ptr noundef null) #10
  br label %do.body20.preheader

do.body20.preheader:                              ; preds = %do.end, %entry.do.body20.preheader_crit_edge
  br label %do.body20

do.body20:                                        ; preds = %timekeeping_get_ns.exit.do.body20_crit_edge, %do.body20.preheader
  tail call fastcc void @seqcount_lockdep_reader_access()
  %1 = load volatile i32, ptr @tk_core, align 128
  %and69 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool23.not70 = icmp eq i32 %and69, 0
  br i1 %tobool23.not70, label %do.body20.while.end_crit_edge, label %do.body20.do.end28_crit_edge

do.body20.do.end28_crit_edge:                     ; preds = %do.body20
  br label %do.end28

do.body20.while.end_crit_edge:                    ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.end28:                                         ; preds = %do.end28.do.end28_crit_edge, %do.body20.do.end28_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !196
  %2 = load volatile i32, ptr @tk_core, align 128
  %and = and i32 %2, 1
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %do.end28.while.end_crit_edge, label %do.end28.do.end28_crit_edge

do.end28.do.end28_crit_edge:                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end28

do.end28.while.end_crit_edge:                     ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %do.end28.while.end_crit_edge, %do.body20.while.end_crit_edge
  %.lcssa = phi i32 [ %1, %do.body20.while.end_crit_edge ], [ %2, %do.end28.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !197
  %3 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 2), align 8
  %4 = ptrtoint ptr %ts to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %ts, align 8
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %while.end.i.i.do.body.i.i_crit_edge, %while.end
  tail call fastcc void @seqcount_lockdep_reader_access() #10
  %5 = load volatile i32, ptr @tk_core, align 128
  %and53.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i.i)
  %tobool.not54.i.i = icmp eq i32 %and53.i.i, 0
  br i1 %tobool.not54.i.i, label %do.body.i.i.while.end.i.i_crit_edge, label %do.body.i.i.do.end.i.i_crit_edge

do.body.i.i.do.end.i.i_crit_edge:                 ; preds = %do.body.i.i
  br label %do.end.i.i

do.body.i.i.while.end.i.i_crit_edge:              ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %do.body.i.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !169
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !170
  %6 = load volatile i32, ptr @tk_core, align 128
  %and.i.i = and i32 %6, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.while.end.i.i_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

do.end.i.i.while.end.i.i_crit_edge:               ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %do.end.i.i.while.end.i.i_crit_edge, %do.body.i.i.while.end.i.i_crit_edge
  %.lcssa.i.i = phi i32 [ %5, %do.body.i.i.while.end.i.i_crit_edge ], [ %6, %do.end.i.i.while.end.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !171
  %7 = load volatile ptr, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1), align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %call.i.i.i = tail call i64 %9(ptr noundef %7) #10
  %10 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 2), align 8
  %11 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 1), align 16
  %12 = load ptr, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1), align 8
  %max_cycles.i.i = getelementptr inbounds %struct.clocksource, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %max_cycles.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %max_cycles.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !164
  %15 = load volatile i32, ptr @tk_core, align 128
  %cmp.i.i.not.i.i = icmp eq i32 %15, %.lcssa.i.i
  br i1 %cmp.i.i.not.i.i, label %do.end23.i.i, label %while.end.i.i.do.body.i.i_crit_edge

while.end.i.i.do.body.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

do.end23.i.i:                                     ; preds = %while.end.i.i
  %sub.i.i.i = sub i64 %call.i.i.i, %10
  %and.i.i.i = and i64 %sub.i.i.i, %11
  %and25.i.i = xor i64 %and.i.i.i, %11
  %shr.i.i = lshr i64 %11, 3
  call void @__sanitizer_cov_trace_cmp8(i64 %and25.i.i, i64 %shr.i.i)
  %cmp.i.i60 = icmp ult i64 %and25.i.i, %shr.i.i
  br i1 %cmp.i.i60, label %if.end.thread.i.i, label %if.end.i.i, !prof !172

if.end.thread.i.i:                                ; preds = %do.end23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i32 1, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 24), align 64
  br label %timekeeping_get_ns.exit

if.end.i.i:                                       ; preds = %do.end23.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i.i, i64 %14)
  %cmp28.i.i = icmp ugt i64 %and.i.i.i, %14
  br i1 %cmp28.i.i, label %if.then35.i.i, label %if.end.i.i.timekeeping_get_ns.exit_crit_edge, !prof !172

if.end.i.i.timekeeping_get_ns.exit_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %timekeeping_get_ns.exit

if.then35.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i32 1, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 25), align 4
  %16 = load ptr, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1), align 8
  %max_cycles37.i.i = getelementptr inbounds %struct.clocksource, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %max_cycles37.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %max_cycles37.i.i, align 8
  br label %timekeeping_get_ns.exit

timekeeping_get_ns.exit:                          ; preds = %if.then35.i.i, %if.end.i.i.timekeeping_get_ns.exit_crit_edge, %if.end.thread.i.i
  %delta.1.i.i = phi i64 [ %18, %if.then35.i.i ], [ %and.i.i.i, %if.end.i.i.timekeeping_get_ns.exit_crit_edge ], [ 0, %if.end.thread.i.i ]
  %19 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 3), align 64
  %20 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  %21 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 4), align 4
  %tomono.sroa.0.0.copyload52 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 4), align 8
  %tomono.sroa.5.0.copyload53 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 4, i32 1), align 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !164
  %22 = load volatile i32, ptr @tk_core, align 128
  %cmp.i.i61.not = icmp eq i32 %22, %.lcssa
  br i1 %cmp.i.i61.not, label %do.end46, label %timekeeping_get_ns.exit.do.body20_crit_edge

timekeeping_get_ns.exit.do.body20_crit_edge:      ; preds = %timekeeping_get_ns.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body20

do.end46:                                         ; preds = %timekeeping_get_ns.exit
  %conv.i.i = zext i32 %19 to i64
  %mul.i.i = mul i64 %delta.1.i.i, %conv.i.i
  %add.i.i = add i64 %mul.i.i, %20
  %sh_prom.i.i = zext i32 %21 to i64
  %shr.i3.i = lshr i64 %add.i.i, %sh_prom.i.i
  %23 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %ts, align 8
  %add = add i64 %24, %tomono.sroa.0.0.copyload52
  store i64 %add, ptr %ts, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %25 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %tv_nsec, align 8
  %conv = sext i32 %tomono.sroa.5.0.copyload53 to i64
  %add50 = add i64 %shr.i3.i, %conv
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dividend.addr.i.i) #10
  %26 = ptrtoint ptr %dividend.addr.i.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %add50, ptr %dividend.addr.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 999999999, i64 %add50)
  %cmp1.i.i = icmp ugt i64 %add50, 999999999
  %extract.t.i = trunc i64 %add50 to i32
  br i1 %cmp1.i.i, label %do.end46.while.body.i.i_crit_edge, label %do.end46.timespec64_add_ns.exit_crit_edge

do.end46.timespec64_add_ns.exit_crit_edge:        ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %timespec64_add_ns.exit

do.end46.while.body.i.i_crit_edge:                ; preds = %do.end46
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %do.end46.while.body.i.i_crit_edge
  %ret.02.i.i = phi i32 [ %inc.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 0, %do.end46.while.body.i.i_crit_edge ]
  %27 = phi i64 [ %sub.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %add50, %do.end46.while.body.i.i_crit_edge ]
  call void asm "", "=*rm,0"(ptr nonnull elementtype(i64) %dividend.addr.i.i, i64 %27) #10, !srcloc !173
  %28 = ptrtoint ptr %dividend.addr.i.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %dividend.addr.i.i, align 8
  %sub.i.i = add i64 %29, -1000000000
  store i64 %sub.i.i, ptr %dividend.addr.i.i, align 8
  %inc.i.i = add i32 %ret.02.i.i, 1
  %cmp.i.i = icmp ugt i64 %sub.i.i, 999999999
  br i1 %cmp.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %__iter_div_u64_rem.exit.loopexit.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

__iter_div_u64_rem.exit.loopexit.i:               ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %extract.t7.le.i = trunc i64 %sub.i.i to i32
  br label %timespec64_add_ns.exit

timespec64_add_ns.exit:                           ; preds = %__iter_div_u64_rem.exit.loopexit.i, %do.end46.timespec64_add_ns.exit_crit_edge
  %.lcssa.i.off0.i = phi i32 [ %extract.t.i, %do.end46.timespec64_add_ns.exit_crit_edge ], [ %extract.t7.le.i, %__iter_div_u64_rem.exit.loopexit.i ]
  %ret.0.lcssa.i.i = phi i32 [ 0, %do.end46.timespec64_add_ns.exit_crit_edge ], [ %inc.i.i, %__iter_div_u64_rem.exit.loopexit.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dividend.addr.i.i) #10
  %conv1.i = zext i32 %ret.0.lcssa.i.i to i64
  %30 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %ts, align 8
  %add2.i = add i64 %31, %conv1.i
  store i64 %add2.i, ptr %ts, align 8
  %32 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %.lcssa.i.off0.i, ptr %tv_nsec, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @ktime_get_seconds() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @timekeeping_suspended, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !165

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 986, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %1 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 3), align 32
  %conv = zext i32 %1 to i64
  ret i64 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @ktime_get_real_seconds() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  tail call fastcc void @seqcount_lockdep_reader_access()
  %0 = load volatile i32, ptr @tk_core, align 128
  %and23 = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool.not24 = icmp eq i32 %and23, 0
  br i1 %tobool.not24, label %do.body.while.end_crit_edge, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  br label %do.end

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %do.body.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !198
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !199
  %1 = load volatile i32, ptr @tk_core, align 128
  %and = and i32 %1, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %do.body.while.end_crit_edge
  %.lcssa = phi i32 [ %0, %do.body.while.end_crit_edge ], [ %1, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !200
  %2 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 2), align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !164
  %3 = load volatile i32, ptr @tk_core, align 128
  %cmp.i.i.not = icmp eq i32 %3, %.lcssa
  br i1 %cmp.i.i.not, label %do.end21, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end21:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  ret i64 %2
}

; Function Attrs: mustprogress nofree noinline noprofile norecurse nosanitize_coverage nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i64 @__ktime_get_real_seconds() local_unnamed_addr #4 section ".noinstr.text" align 64 {
entry:
  %0 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 2), align 8
  ret i64 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ktime_get_snapshot(ptr nocapture noundef writeonly %systime_snapshot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @timekeeping_suspended, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end28_crit_edge, label %land.rhs

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

land.rhs:                                         ; preds = %entry
  %.b90 = load i1, ptr @ktime_get_snapshot.__already_done, align 1
  br i1 %.b90, label %land.rhs.if.end28_crit_edge, label %if.then, !prof !165

land.rhs.if.end28_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ktime_get_snapshot.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1046, i32 noundef 9, ptr noundef null) #10
  br label %if.end28

if.end28:                                         ; preds = %if.then, %land.rhs.if.end28_crit_edge, %entry.if.end28_crit_edge
  %cs_id = getelementptr inbounds %struct.system_time_snapshot, ptr %systime_snapshot, i32 0, i32 3
  %cs_was_changed_seq59 = getelementptr inbounds %struct.system_time_snapshot, ptr %systime_snapshot, i32 0, i32 5
  %clock_was_set_seq60 = getelementptr inbounds %struct.system_time_snapshot, ptr %systime_snapshot, i32 0, i32 4
  br label %do.body36

do.body36:                                        ; preds = %while.end.do.body36_crit_edge, %if.end28
  tail call fastcc void @seqcount_lockdep_reader_access()
  %1 = load volatile i32, ptr @tk_core, align 128
  %and111 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool39.not112 = icmp eq i32 %and111, 0
  br i1 %tobool39.not112, label %do.body36.while.end_crit_edge, label %do.body36.do.end44_crit_edge

do.body36.do.end44_crit_edge:                     ; preds = %do.body36
  br label %do.end44

do.body36.while.end_crit_edge:                    ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.end44:                                         ; preds = %do.end44.do.end44_crit_edge, %do.body36.do.end44_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !201
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !202
  %2 = load volatile i32, ptr @tk_core, align 128
  %and = and i32 %2, 1
  %tobool39.not = icmp eq i32 %and, 0
  br i1 %tobool39.not, label %do.end44.while.end_crit_edge, label %do.end44.do.end44_crit_edge

do.end44.do.end44_crit_edge:                      ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end44

do.end44.while.end_crit_edge:                     ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %do.end44.while.end_crit_edge, %do.body36.while.end_crit_edge
  %.lcssa = phi i32 [ %1, %do.body36.while.end_crit_edge ], [ %2, %do.end44.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !203
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1), align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %call.i = tail call i64 %5(ptr noundef %3) #10
  %6 = load ptr, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1), align 8
  %id = getelementptr inbounds %struct.clocksource, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 8
  %9 = ptrtoint ptr %cs_id to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %cs_id, align 8
  %10 = load i8, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 10), align 8
  %11 = ptrtoint ptr %cs_was_changed_seq59 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %cs_was_changed_seq59, align 8
  %12 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 9), align 4
  %13 = ptrtoint ptr %clock_was_set_seq60 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %clock_was_set_seq60, align 4
  %14 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 6), align 16
  %15 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 5), align 8
  %16 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 6), align 8
  %17 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 2), align 8
  %18 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 1), align 16
  %19 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 3), align 64
  %20 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  %21 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 4), align 4
  %22 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 2), align 16
  %23 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 1), align 8
  %24 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 3), align 8
  %25 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 5), align 128
  %26 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 4), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !164
  %27 = load volatile i32, ptr @tk_core, align 128
  %cmp.i.i.not = icmp eq i32 %27, %.lcssa
  br i1 %cmp.i.i.not, label %do.end71, label %while.end.do.body36_crit_edge

while.end.do.body36_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body36

do.end71:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i91 = sub i64 %call.i, %22
  %and.i.i92 = and i64 %sub.i.i91, %23
  %conv.i.i93 = zext i32 %24 to i64
  %mul.i.i94 = mul i64 %and.i.i92, %conv.i.i93
  %add.i.i95 = add i64 %mul.i.i94, %25
  %sh_prom.i.i96 = zext i32 %26 to i64
  %shr.i.i97 = lshr i64 %add.i.i95, %sh_prom.i.i96
  %sub.i.i = sub i64 %call.i, %17
  %and.i.i = and i64 %sub.i.i, %18
  %conv.i.i = zext i32 %19 to i64
  %mul.i.i = mul i64 %and.i.i, %conv.i.i
  %add.i.i = add i64 %mul.i.i, %20
  %sh_prom.i.i = zext i32 %21 to i64
  %shr.i.i = lshr i64 %add.i.i, %sh_prom.i.i
  %add = add i64 %15, %14
  %28 = ptrtoint ptr %systime_snapshot to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %call.i, ptr %systime_snapshot, align 8
  %add72 = add i64 %add, %shr.i.i
  %real = getelementptr inbounds %struct.system_time_snapshot, ptr %systime_snapshot, i32 0, i32 1
  %29 = ptrtoint ptr %real to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %add72, ptr %real, align 8
  %add73 = add i64 %shr.i.i97, %16
  %raw = getelementptr inbounds %struct.system_time_snapshot, ptr %systime_snapshot, i32 0, i32 2
  %30 = ptrtoint ptr %raw to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %add73, ptr %raw, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_device_system_crosststamp(ptr nocapture noundef readonly %get_time_fn, ptr noundef %ctx, ptr noundef readonly %history_begin, ptr noundef %xtstamp) #0 align 64 {
entry:
  %corr_raw.i = alloca i64, align 8
  %corr_real.i = alloca i64, align 8
  %system_counterval = alloca %struct.system_counterval_t, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %system_counterval) #10
  %0 = call ptr @memset(ptr %system_counterval, i32 255, i32 16)
  %cs = getelementptr inbounds %struct.system_counterval_t, ptr %system_counterval, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %if.end29.do.body_crit_edge, %entry
  %clock_was_set_seq.0 = phi i32 [ 0, %entry ], [ %clock_was_set_seq.1, %if.end29.do.body_crit_edge ]
  %cs_was_changed_seq.0 = phi i8 [ -1, %entry ], [ %cs_was_changed_seq.1, %if.end29.do.body_crit_edge ]
  call fastcc void @seqcount_lockdep_reader_access()
  %1 = load volatile i32, ptr @tk_core, align 128
  %and160 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and160)
  %tobool.not161 = icmp eq i32 %and160, 0
  br i1 %tobool.not161, label %do.body.while.end_crit_edge, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  br label %do.end

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %do.body.do.end_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !204
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !205
  %2 = load volatile i32, ptr @tk_core, align 128
  %and = and i32 %2, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %do.body.while.end_crit_edge
  %.lcssa = phi i32 [ %1, %do.body.while.end_crit_edge ], [ %2, %do.end.while.end_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !206
  %call17 = call i32 %get_time_fn(ptr noundef %xtstamp, ptr noundef nonnull %system_counterval, ptr noundef %ctx) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end, label %while.end.cleanup72_crit_edge

while.end.cleanup72_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup72

if.end:                                           ; preds = %while.end
  %3 = load ptr, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1), align 8
  %4 = ptrtoint ptr %cs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cs, align 8
  %cmp.not = icmp eq ptr %3, %5
  br i1 %cmp.not, label %if.end20, label %if.end.cleanup72_crit_edge

if.end.cleanup72_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup72

if.end20:                                         ; preds = %if.end
  %6 = ptrtoint ptr %system_counterval to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %system_counterval, align 8
  %8 = load volatile ptr, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1), align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %call.i = call i64 %10(ptr noundef %8) #10
  %11 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 2), align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %11)
  %cmp.i = icmp ugt i64 %7, %11
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %call.i)
  %cmp1.i = icmp ult i64 %7, %call.i
  %or.cond.i = and i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %if.end20.if.end29_crit_edge, label %cycle_between.exit

if.end20.if.end29_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

cycle_between.exit:                               ; preds = %if.end20
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %11)
  %cmp2.i = icmp ult i64 %7, %11
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %call.i)
  %cmp4.i = icmp ugt i64 %11, %call.i
  %or.cond12.i = and i1 %cmp2.i, %cmp4.i
  br i1 %or.cond12.i, label %cycle_between.exit.if.end29_crit_edge, label %if.then26

cycle_between.exit.if.end29_crit_edge:            ; preds = %cycle_between.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then26:                                        ; preds = %cycle_between.exit
  call void @__sanitizer_cov_trace_pc() #12
  %12 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 9), align 4
  %13 = load i8, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 10), align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %cycle_between.exit.if.end29_crit_edge, %if.end20.if.end29_crit_edge
  %retval.0.i137 = phi i1 [ false, %if.then26 ], [ true, %cycle_between.exit.if.end29_crit_edge ], [ true, %if.end20.if.end29_crit_edge ]
  %clock_was_set_seq.1 = phi i32 [ %12, %if.then26 ], [ %clock_was_set_seq.0, %cycle_between.exit.if.end29_crit_edge ], [ %clock_was_set_seq.0, %if.end20.if.end29_crit_edge ]
  %cs_was_changed_seq.1 = phi i8 [ %13, %if.then26 ], [ %cs_was_changed_seq.0, %cycle_between.exit.if.end29_crit_edge ], [ %cs_was_changed_seq.0, %if.end20.if.end29_crit_edge ]
  %cycles.0 = phi i64 [ %11, %if.then26 ], [ %7, %cycle_between.exit.if.end29_crit_edge ], [ %7, %if.end20.if.end29_crit_edge ]
  %14 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 6), align 16
  %15 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 5), align 8
  %16 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 6), align 8
  %17 = ptrtoint ptr %system_counterval to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %system_counterval, align 8
  %19 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 1), align 16
  %20 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 3), align 64
  %21 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  %22 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 4), align 4
  %23 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 2), align 16
  %24 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 1), align 8
  %25 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 3), align 8
  %26 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 5), align 128
  %27 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 4), align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !164
  %28 = load volatile i32, ptr @tk_core, align 128
  %cmp.i.i.not = icmp eq i32 %28, %.lcssa
  br i1 %cmp.i.i.not, label %do.end42, label %if.end29.do.body_crit_edge

if.end29.do.body_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end42:                                         ; preds = %if.end29
  %sub.i.i109 = sub i64 %18, %23
  %and.i.i110 = and i64 %sub.i.i109, %24
  %conv.i.i111 = zext i32 %25 to i64
  %mul.i.i112 = mul i64 %and.i.i110, %conv.i.i111
  %add.i.i113 = add i64 %mul.i.i112, %26
  %sh_prom.i.i114 = zext i32 %27 to i64
  %shr.i.i115 = lshr i64 %add.i.i113, %sh_prom.i.i114
  %sub.i.i = sub i64 %18, %11
  %and.i.i = and i64 %sub.i.i, %19
  %conv.i.i = zext i32 %20 to i64
  %mul.i.i = mul i64 %and.i.i, %conv.i.i
  %add.i.i = add i64 %mul.i.i, %21
  %sh_prom.i.i = zext i32 %22 to i64
  %shr.i.i = lshr i64 %add.i.i, %sh_prom.i.i
  %add = add i64 %15, %14
  %add43 = add i64 %add, %shr.i.i
  %sys_realtime = getelementptr inbounds %struct.system_device_crosststamp, ptr %xtstamp, i32 0, i32 1
  %29 = ptrtoint ptr %sys_realtime to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %add43, ptr %sys_realtime, align 8
  %add44 = add i64 %shr.i.i115, %16
  %sys_monoraw = getelementptr inbounds %struct.system_device_crosststamp, ptr %xtstamp, i32 0, i32 2
  %30 = ptrtoint ptr %sys_monoraw to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %add44, ptr %sys_monoraw, align 8
  br i1 %retval.0.i137, label %do.end42.cleanup72_crit_edge, label %if.then46

do.end42.cleanup72_crit_edge:                     ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup72

if.then46:                                        ; preds = %do.end42
  %tobool47.not = icmp eq ptr %history_begin, null
  br i1 %tobool47.not, label %if.then46.cleanup72_crit_edge, label %lor.lhs.false

if.then46.cleanup72_crit_edge:                    ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup72

lor.lhs.false:                                    ; preds = %if.then46
  %31 = ptrtoint ptr %history_begin to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %history_begin, align 8
  %33 = ptrtoint ptr %system_counterval to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %system_counterval, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %32)
  %cmp.i116 = icmp ugt i64 %34, %32
  call void @__sanitizer_cov_trace_cmp8(i64 %cycles.0, i64 %34)
  %cmp1.i117 = icmp ugt i64 %cycles.0, %34
  %or.cond.i118 = and i1 %cmp.i116, %cmp1.i117
  br i1 %or.cond.i118, label %lor.lhs.false.lor.lhs.false51_crit_edge, label %cycle_between.exit124

lor.lhs.false.lor.lhs.false51_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false51

cycle_between.exit124:                            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %32)
  %cmp2.i119 = icmp ult i64 %34, %32
  call void @__sanitizer_cov_trace_cmp8(i64 %cycles.0, i64 %32)
  %cmp4.i120 = icmp ult i64 %cycles.0, %32
  %or.cond12.i121 = and i1 %cmp4.i120, %cmp2.i119
  br i1 %or.cond12.i121, label %cycle_between.exit124.lor.lhs.false51_crit_edge, label %cycle_between.exit124.cleanup72_crit_edge

cycle_between.exit124.cleanup72_crit_edge:        ; preds = %cycle_between.exit124
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup72

cycle_between.exit124.lor.lhs.false51_crit_edge:  ; preds = %cycle_between.exit124
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false51

lor.lhs.false51:                                  ; preds = %cycle_between.exit124.lor.lhs.false51_crit_edge, %lor.lhs.false.lor.lhs.false51_crit_edge
  %cs_was_changed_seq52 = getelementptr inbounds %struct.system_time_snapshot, ptr %history_begin, i32 0, i32 5
  %35 = ptrtoint ptr %cs_was_changed_seq52 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %cs_was_changed_seq52, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %cs_was_changed_seq.1)
  %cmp54.not = icmp eq i8 %36, %cs_was_changed_seq.1
  br i1 %cmp54.not, label %if.end57, label %lor.lhs.false51.cleanup72_crit_edge

lor.lhs.false51.cleanup72_crit_edge:              ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup72

if.end57:                                         ; preds = %lor.lhs.false51
  %sub60 = sub i64 %cycles.0, %32
  %clock_was_set_seq61 = getelementptr inbounds %struct.system_time_snapshot, ptr %history_begin, i32 0, i32 4
  %37 = ptrtoint ptr %clock_was_set_seq61 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %clock_was_set_seq61, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %clock_was_set_seq.1)
  %cmp62.not = icmp eq i32 %38, %clock_was_set_seq.1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %corr_raw.i) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %corr_real.i) #10
  call void @__sanitizer_cov_trace_cmp8(i64 %cycles.0, i64 %32)
  %cmp.i125 = icmp eq i64 %cycles.0, %32
  call void @__sanitizer_cov_trace_cmp8(i64 %cycles.0, i64 %34)
  %cmp1.i126 = icmp eq i64 %cycles.0, %34
  %or.cond.i127 = or i1 %cmp.i125, %cmp1.i126
  br i1 %or.cond.i127, label %if.end57.cleanup.thread142_crit_edge, label %if.end.i129

if.end57.cleanup.thread142_crit_edge:             ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread142

if.end.i129:                                      ; preds = %if.end57
  %sub = sub i64 %cycles.0, %34
  %div63.i = lshr i64 %sub60, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %div63.i, i64 %sub)
  %cmp2.i128 = icmp ult i64 %div63.i, %sub
  %sub.i = sub i64 %sub60, %sub
  %cond.i = select i1 %cmp2.i128, i64 %sub.i, i64 %sub
  %raw.i = getelementptr inbounds %struct.system_time_snapshot, ptr %history_begin, i32 0, i32 2
  %39 = ptrtoint ptr %raw.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %raw.i, align 8
  %sub4.i = sub i64 %add44, %40
  %41 = ptrtoint ptr %corr_raw.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %sub4.i, ptr %corr_raw.i, align 8
  %call5.i = call fastcc i32 @scale64_check_overflow(i64 noundef %cond.i, i64 noundef %sub60, ptr noundef nonnull %corr_raw.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end.i129.cleanup_crit_edge

if.end.i129.cleanup_crit_edge:                    ; preds = %if.end.i129
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8.i:                                        ; preds = %if.end.i129
  br i1 %cmp62.not, label %if.else.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end8.i
  %42 = ptrtoint ptr %corr_raw.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %corr_raw.i, align 8
  %44 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 3), align 64
  %45 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 3), align 8
  %u.sroa.0.0.extract.shift.i.i = lshr i64 %43, 32
  %conv.i.i.i = and i64 %43, 4294967295
  %conv1.i.i.i = zext i32 %44 to i64
  %mul.i.i.i = mul nuw i64 %conv.i.i.i, %conv1.i.i.i
  %rl.sroa.0.0.extract.shift.i.i = lshr i64 %mul.i.i.i, 32
  %mul.i575.i.i = mul nuw i64 %u.sroa.0.0.extract.shift.i.i, %conv1.i.i.i
  %add.i.i130 = add nuw i64 %rl.sroa.0.0.extract.shift.i.i, %mul.i575.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i.i130)
  %cmp171.i.i = icmp ult i64 %add.i.i130, 4294967296
  br i1 %cmp171.i.i, label %if.then175.i.i, label %if.else181.i.i, !prof !165

if.then175.i.i:                                   ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  %rh.sroa.12.0.extract.trunc.i.i = trunc i64 %add.i.i130 to i32
  %rh.sroa.12.0.extract.trunc.i.i.frozen = freeze i32 %rh.sroa.12.0.extract.trunc.i.i
  %.frozen = freeze i32 %45
  %div179.i.i = udiv i32 %rh.sroa.12.0.extract.trunc.i.i.frozen, %.frozen
  %46 = mul i32 %div179.i.i, %.frozen
  %rem177.i.i.decomposed = sub i32 %rh.sroa.12.0.extract.trunc.i.i.frozen, %46
  br label %if.else387.i.i

if.else181.i.i:                                   ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #12
  %47 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %45, i64 %add.i.i130) #13, !srcloc !207
  %asmresult.i579.i.i = extractvalue { i64, i64 } %47, 0
  %asmresult1.i.i.i = extractvalue { i64, i64 } %47, 1
  %shr.i.i.i = lshr i64 %asmresult.i579.i.i, 32
  %conv.i580.i.i = trunc i64 %shr.i.i.i to i32
  %rh.sroa.12.0.extract.trunc651.i.i = trunc i64 %asmresult1.i.i.i to i32
  br label %if.else387.i.i

if.else387.i.i:                                   ; preds = %if.else181.i.i, %if.then175.i.i
  %rh.sroa.12.0.i.i = phi i32 [ %div179.i.i, %if.then175.i.i ], [ %rh.sroa.12.0.extract.trunc651.i.i, %if.else181.i.i ]
  %__rem.0.i.i = phi i32 [ %rem177.i.i.decomposed, %if.then175.i.i ], [ %conv.i580.i.i, %if.else181.i.i ]
  %rl.sroa.16.0.insert.ext688.i.i = and i64 %mul.i.i.i, 4294967295
  %rl.sroa.0.0.insert.ext663.i.i = zext i32 %__rem.0.i.i to i64
  %rl.sroa.0.0.insert.shift664.i.i = shl nuw i64 %rl.sroa.0.0.insert.ext663.i.i, 32
  %rl.sroa.0.0.insert.insert666.i.i = or i64 %rl.sroa.0.0.insert.shift664.i.i, %rl.sroa.16.0.insert.ext688.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %rl.sroa.0.0.insert.insert666.i.i)
  %cmp389.i.i = icmp ult i64 %rl.sroa.0.0.insert.insert666.i.i, 4294967296
  br i1 %cmp389.i.i, label %if.then397.i.i, label %if.else403.i.i, !prof !165

if.then397.i.i:                                   ; preds = %if.else387.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv398.i.i = trunc i64 %mul.i.i.i to i32
  %div401.i.i = udiv i32 %conv398.i.i, %45
  br label %mul_u64_u32_div.exit.i

if.else403.i.i:                                   ; preds = %if.else387.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %48 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %45, i64 %rl.sroa.0.0.insert.insert666.i.i) #13, !srcloc !207
  %asmresult1.i610.i.i = extractvalue { i64, i64 } %48, 1
  %rl.sroa.16.0.extract.trunc700.i.i = trunc i64 %asmresult1.i610.i.i to i32
  br label %mul_u64_u32_div.exit.i

mul_u64_u32_div.exit.i:                           ; preds = %if.else403.i.i, %if.then397.i.i
  %rl.sroa.16.0.i.i = phi i32 [ %div401.i.i, %if.then397.i.i ], [ %rl.sroa.16.0.extract.trunc700.i.i, %if.else403.i.i ]
  %rl.sroa.16.0.insert.ext693.i.i = zext i32 %rl.sroa.16.0.i.i to i64
  %rl.sroa.0.0.insert.ext670.i.i = zext i32 %rh.sroa.12.0.i.i to i64
  %rl.sroa.0.0.insert.shift671.i.i = shl nuw i64 %rl.sroa.0.0.insert.ext670.i.i, 32
  %rl.sroa.0.0.insert.insert673.i.i = or i64 %rl.sroa.0.0.insert.shift671.i.i, %rl.sroa.16.0.insert.ext693.i.i
  %49 = ptrtoint ptr %corr_real.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %rl.sroa.0.0.insert.insert673.i.i, ptr %corr_real.i, align 8
  br label %if.end19.i

if.else.i:                                        ; preds = %if.end8.i
  %50 = ptrtoint ptr %sys_realtime to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %sys_realtime, align 8
  %real.i = getelementptr inbounds %struct.system_time_snapshot, ptr %history_begin, i32 0, i32 1
  %52 = ptrtoint ptr %real.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %real.i, align 8
  %sub13.i = sub i64 %51, %53
  %54 = ptrtoint ptr %corr_real.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %sub13.i, ptr %corr_real.i, align 8
  %call15.i = call fastcc i32 @scale64_check_overflow(i64 noundef %cond.i, i64 noundef %sub60, ptr noundef nonnull %corr_real.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.else.i.if.end19.i_crit_edge, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else.i.if.end19.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.else.i.if.end19.i_crit_edge, %mul_u64_u32_div.exit.i
  br i1 %cmp2.i128, label %if.then21.i, label %if.else27.i

if.then21.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %raw.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %raw.i, align 8
  %57 = ptrtoint ptr %corr_raw.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %corr_raw.i, align 8
  %add.i = add i64 %58, %56
  %59 = ptrtoint ptr %sys_monoraw to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %add.i, ptr %sys_monoraw, align 8
  %real24.i = getelementptr inbounds %struct.system_time_snapshot, ptr %history_begin, i32 0, i32 1
  %60 = ptrtoint ptr %real24.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %real24.i, align 8
  %62 = ptrtoint ptr %corr_real.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %corr_real.i, align 8
  %add25.i = add i64 %63, %61
  br label %cleanup.thread142.sink.split

if.else27.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %sys_monoraw to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %sys_monoraw, align 8
  %66 = ptrtoint ptr %corr_raw.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %corr_raw.i, align 8
  %sub29.i = sub i64 %65, %67
  store i64 %sub29.i, ptr %sys_monoraw, align 8
  %68 = ptrtoint ptr %sys_realtime to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %sys_realtime, align 8
  %70 = ptrtoint ptr %corr_real.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %corr_real.i, align 8
  %sub32.i = sub i64 %69, %71
  br label %cleanup.thread142.sink.split

cleanup.thread142.sink.split:                     ; preds = %if.else27.i, %if.then21.i
  %sub32.i.sink = phi i64 [ %sub32.i, %if.else27.i ], [ %add25.i, %if.then21.i ]
  %72 = ptrtoint ptr %sys_realtime to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %sub32.i.sink, ptr %sys_realtime, align 8
  br label %cleanup.thread142

cleanup.thread142:                                ; preds = %cleanup.thread142.sink.split, %if.end57.cleanup.thread142_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %corr_real.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %corr_raw.i) #10
  br label %cleanup72

cleanup:                                          ; preds = %if.else.i.cleanup_crit_edge, %if.end.i129.cleanup_crit_edge
  %retval.0.i135 = phi i32 [ %call5.i, %if.end.i129.cleanup_crit_edge ], [ %call15.i, %if.else.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %corr_real.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %corr_raw.i) #10
  br label %cleanup72

cleanup72:                                        ; preds = %cleanup, %cleanup.thread142, %lor.lhs.false51.cleanup72_crit_edge, %cycle_between.exit124.cleanup72_crit_edge, %if.then46.cleanup72_crit_edge, %do.end42.cleanup72_crit_edge, %if.end.cleanup72_crit_edge, %while.end.cleanup72_crit_edge
  %retval.1 = phi i32 [ %retval.0.i135, %cleanup ], [ 0, %cleanup.thread142 ], [ 0, %do.end42.cleanup72_crit_edge ], [ -22, %lor.lhs.false51.cleanup72_crit_edge ], [ -22, %cycle_between.exit124.cleanup72_crit_edge ], [ -22, %if.then46.cleanup72_crit_edge ], [ -19, %if.end.cleanup72_crit_edge ], [ %call17, %while.end.cleanup72_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %system_counterval) #10
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @do_settimeofday64(ptr nocapture noundef readonly %ts) #0 align 64 {
entry:
  %tmp13 = alloca %struct.timespec64, align 8
  %agg.tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ts, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp.i.i = icmp slt i64 %1, 0
  br i1 %cmp.i.i, label %entry.cleanup_crit_edge, label %timespec64_valid_settod.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

timespec64_valid_settod.exit:                     ; preds = %entry
  %tv_nsec.i.i = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %2 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tv_nsec.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000000, i32 %3)
  %cmp1.i.i = icmp ult i32 %3, 1000000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 8277292036, i64 %1)
  %cmp.i = icmp ult i64 %1, 8277292036
  %spec.select.i = select i1 %cmp1.i.i, i1 %cmp.i, i1 false
  br i1 %spec.select.i, label %do.body, label %timespec64_valid_settod.exit.cleanup_crit_edge

timespec64_valid_settod.exit.cleanup_crit_edge:   ; preds = %timespec64_valid_settod.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %timespec64_valid_settod.exit
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @timekeeper_lock) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %do.body.__seqprop_raw_spinlock_assert.exit_crit_edge, label %land.rhs.i

do.body.__seqprop_raw_spinlock_assert.exit_crit_edge: ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_raw_spinlock_assert.exit

land.rhs.i:                                       ; preds = %do.body
  %5 = load ptr, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 0, i32 1), align 32
  %dep_map.i = getelementptr inbounds %struct.raw_spinlock, ptr %5, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.__seqprop_raw_spinlock_assert.exit_crit_edge, !prof !172

land.rhs.i.__seqprop_raw_spinlock_assert.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_raw_spinlock_assert.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 276, i32 noundef 9, ptr noundef null) #10
  br label %__seqprop_raw_spinlock_assert.exit

__seqprop_raw_spinlock_assert.exit:               ; preds = %do.end.i, %land.rhs.i.__seqprop_raw_spinlock_assert.exit_crit_edge, %do.body.__seqprop_raw_spinlock_assert.exit_crit_edge
  %6 = load i32, ptr @tk_core, align 128
  %inc.i.i.i = add i32 %6, 1
  store i32 %inc.i.i.i, ptr @tk_core, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !208
  %7 = tail call ptr @llvm.returnaddress(i32 0) #10
  %8 = ptrtoint ptr %7 to i32
  tail call void @lock_acquire(ptr noundef getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 0, i32 0, i32 1), i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %8) #10
  %9 = load volatile ptr, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1), align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %call.i.i77 = tail call i64 %11(ptr noundef %9) #10
  %12 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 2), align 8
  %13 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 1), align 16
  %sub.i.i = sub i64 %call.i.i77, %12
  %and.i.i = and i64 %sub.i.i, %13
  store i64 %call.i.i77, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 2), align 8
  store i64 %call.i.i77, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 2), align 16
  %14 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 3), align 64
  %conv.i = zext i32 %14 to i64
  %mul.i = mul i64 %and.i.i, %conv.i
  %15 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  %add.i = add i64 %mul.i, %15
  store i64 %add.i, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  %16 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 3), align 8
  %conv11.i = zext i32 %16 to i64
  %mul12.i = mul i64 %and.i.i, %conv11.i
  %17 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 5), align 128
  %add15.i = add i64 %mul12.i, %17
  store i64 %add15.i, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 5), align 128
  %18 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 4), align 4
  %sh_prom.i.i = zext i32 %18 to i64
  %shl.i.i = shl i64 1000000000, %sh_prom.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %shl.i.i)
  %cmp.not3.i.i = icmp ult i64 %add.i, %shl.i.i
  br i1 %cmp.not3.i.i, label %__seqprop_raw_spinlock_assert.exit.while.cond8.preheader.i.i_crit_edge, label %while.body.preheader.i.i

__seqprop_raw_spinlock_assert.exit.while.cond8.preheader.i.i_crit_edge: ; preds = %__seqprop_raw_spinlock_assert.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond8.preheader.i.i

while.body.preheader.i.i:                         ; preds = %__seqprop_raw_spinlock_assert.exit
  %.promoted2.i.i = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 2), align 8
  br label %while.body.i.i

while.cond.while.cond8.preheader_crit_edge.i.i:   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i64 %sub.i1.i, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  store i64 %inc.i.i, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 2), align 8
  br label %while.cond8.preheader.i.i

while.cond8.preheader.i.i:                        ; preds = %while.cond.while.cond8.preheader_crit_edge.i.i, %__seqprop_raw_spinlock_assert.exit.while.cond8.preheader.i.i_crit_edge
  %19 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 4), align 4
  %sh_prom12.i.i = zext i32 %19 to i64
  %shl13.i.i = shl i64 1000000000, %sh_prom12.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add15.i, i64 %shl13.i.i)
  %cmp14.not9.i.i = icmp ult i64 %add15.i, %shl13.i.i
  br i1 %cmp14.not9.i.i, label %while.cond8.preheader.i.i.timekeeping_forward_now.exit_crit_edge, label %while.body15.preheader.i.i

while.cond8.preheader.i.i.timekeeping_forward_now.exit_crit_edge: ; preds = %while.cond8.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %timekeeping_forward_now.exit

while.body15.preheader.i.i:                       ; preds = %while.cond8.preheader.i.i
  %.promoted8.i.i = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 12), align 8
  br label %while.body15.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.preheader.i.i
  %sub14.i.i = phi i64 [ %sub.i1.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %add.i, %while.body.preheader.i.i ]
  %20 = phi i64 [ %inc.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %.promoted2.i.i, %while.body.preheader.i.i ]
  %sub.i1.i = sub i64 %sub14.i.i, %shl.i.i
  %inc.i.i = add i64 %20, 1
  %cmp.not.i.i = icmp ult i64 %sub.i1.i, %shl.i.i
  br i1 %cmp.not.i.i, label %while.cond.while.cond8.preheader_crit_edge.i.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

while.body15.i.i:                                 ; preds = %while.body15.i.i.while.body15.i.i_crit_edge, %while.body15.preheader.i.i
  %21 = phi i64 [ %sub22.i.i, %while.body15.i.i.while.body15.i.i_crit_edge ], [ %add15.i, %while.body15.preheader.i.i ]
  %22 = phi i64 [ %inc23.i.i, %while.body15.i.i.while.body15.i.i_crit_edge ], [ %.promoted8.i.i, %while.body15.preheader.i.i ]
  %sub22.i.i = sub i64 %21, %shl13.i.i
  %inc23.i.i = add i64 %22, 1
  %cmp14.not.i.i = icmp ult i64 %sub22.i.i, %shl13.i.i
  br i1 %cmp14.not.i.i, label %while.cond8.while.end24_crit_edge.i.i, label %while.body15.i.i.while.body15.i.i_crit_edge

while.body15.i.i.while.body15.i.i_crit_edge:      ; preds = %while.body15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body15.i.i

while.cond8.while.end24_crit_edge.i.i:            ; preds = %while.body15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i64 %sub22.i.i, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 5), align 128
  store i64 %inc23.i.i, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 12), align 8
  br label %timekeeping_forward_now.exit

timekeeping_forward_now.exit:                     ; preds = %while.cond8.while.end24_crit_edge.i.i, %while.cond8.preheader.i.i.timekeeping_forward_now.exit_crit_edge
  %23 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 2), align 8, !noalias !209
  %24 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8, !noalias !209
  %shr.i = lshr i64 %24, %sh_prom.i.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp13) #10
  %25 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %25)
  %.unpack = load i64, ptr %ts, align 8
  %26 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %.unpack74 = load i64, ptr %tv_nsec.i.i, align 8
  %lhs.sroa.2.8.extract.shift.i = lshr i64 %.unpack74, 32
  %lhs.sroa.2.8.extract.trunc.i = trunc i64 %lhs.sroa.2.8.extract.shift.i to i32
  %rhs.sroa.2.8.extract.trunc.i = trunc i64 %shr.i to i32
  %27 = call ptr @memset(ptr %tmp13, i32 255, i32 16)
  %sub.i = sub i64 %.unpack, %23
  %sub3.i = sub i32 %lhs.sroa.2.8.extract.trunc.i, %rhs.sroa.2.8.extract.trunc.i
  %conv.i79 = sext i32 %sub3.i to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %tmp13, i64 noundef %sub.i, i64 noundef %conv.i79) #10
  %28 = ptrtoint ptr %tmp13 to i32
  call void @__asan_load8_noabort(i32 %28)
  %ts_delta.sroa.0.0.copyload94 = load i64, ptr %tmp13, align 8
  %ts_delta.sroa.6.0.tmp13.sroa_idx = getelementptr inbounds i8, ptr %tmp13, i32 8
  %29 = ptrtoint ptr %ts_delta.sroa.6.0.tmp13.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %29)
  %ts_delta.sroa.6.0.copyload95 = load i64, ptr %ts_delta.sroa.6.0.tmp13.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp13) #10
  %30 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 4), align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %30, i64 %ts_delta.sroa.0.0.copyload94)
  %cmp.i80 = icmp slt i64 %30, %ts_delta.sroa.0.0.copyload94
  br i1 %cmp.i80, label %timekeeping_forward_now.exit.if.end18_crit_edge, label %if.end.i

timekeeping_forward_now.exit.if.end18_crit_edge:  ; preds = %timekeeping_forward_now.exit
  call void @__sanitizer_cov_trace_pc() #12
  %.pre = lshr i64 %ts_delta.sroa.6.0.copyload95, 32
  %.pre105 = trunc i64 %.pre to i32
  br label %if.end18

if.end.i:                                         ; preds = %timekeeping_forward_now.exit
  call void @__sanitizer_cov_trace_cmp8(i64 %30, i64 %ts_delta.sroa.0.0.copyload94)
  %cmp4.i = icmp sgt i64 %30, %ts_delta.sroa.0.0.copyload94
  br i1 %cmp4.i, label %if.end.i.out_crit_edge, label %timespec64_compare.exit

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

timespec64_compare.exit:                          ; preds = %if.end.i
  %31 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 4, i32 1), align 16
  %ts_delta.sroa.6.8.extract.shift = lshr i64 %ts_delta.sroa.6.0.copyload95, 32
  %ts_delta.sroa.6.8.extract.trunc = trunc i64 %ts_delta.sroa.6.8.extract.shift to i32
  %sub.i81 = sub i32 %31, %ts_delta.sroa.6.8.extract.trunc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i81)
  %cmp15 = icmp sgt i32 %sub.i81, 0
  br i1 %cmp15, label %timespec64_compare.exit.out_crit_edge, label %timespec64_compare.exit.if.end18_crit_edge

timespec64_compare.exit.if.end18_crit_edge:       ; preds = %timespec64_compare.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

timespec64_compare.exit.out_crit_edge:            ; preds = %timespec64_compare.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end18:                                         ; preds = %timespec64_compare.exit.if.end18_crit_edge, %timekeeping_forward_now.exit.if.end18_crit_edge
  %rhs.sroa.2.8.extract.trunc.i86.pre-phi = phi i32 [ %.pre105, %timekeeping_forward_now.exit.if.end18_crit_edge ], [ %ts_delta.sroa.6.8.extract.trunc, %timespec64_compare.exit.if.end18_crit_edge ]
  %.unpack76 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 4, i32 1), align 16
  %lhs.sroa.2.8.extract.shift.i83 = lshr i64 %.unpack76, 32
  %lhs.sroa.2.8.extract.trunc.i84 = trunc i64 %lhs.sroa.2.8.extract.shift.i83 to i32
  %32 = call ptr @memset(ptr %agg.tmp, i32 255, i32 16)
  %sub.i87 = sub i64 %30, %ts_delta.sroa.0.0.copyload94
  %sub3.i88 = sub i32 %lhs.sroa.2.8.extract.trunc.i84, %rhs.sroa.2.8.extract.trunc.i86.pre-phi
  %conv.i89 = sext i32 %sub3.i88 to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %agg.tmp, i64 noundef %sub.i87, i64 noundef %conv.i89) #10
  %33 = ptrtoint ptr %agg.tmp to i32
  call void @__asan_load8_noabort(i32 %33)
  %.fca.0.load = load i64, ptr %agg.tmp, align 8
  %.fca.0.insert = insertvalue [2 x i64] poison, i64 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds [2 x i64], ptr %agg.tmp, i32 0, i32 1
  %34 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load8_noabort(i32 %34)
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert, i64 %.fca.1.load, 1
  call fastcc void @tk_set_wall_to_mono(ptr noundef getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1), [2 x i64] %.fca.1.insert)
  %35 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %ts, align 8
  store i64 %36, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 2), align 8
  %37 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tv_nsec.i.i, align 8
  %conv.i91 = sext i32 %38 to i64
  %39 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 4), align 4
  %sh_prom.i92 = zext i32 %39 to i64
  %shl.i = shl i64 %conv.i91, %sh_prom.i92
  store i64 %shl.i, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  br label %out

out:                                              ; preds = %if.end18, %timespec64_compare.exit.out_crit_edge, %if.end.i.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end18 ], [ -22, %timespec64_compare.exit.out_crit_edge ], [ -22, %if.end.i.out_crit_edge ]
  call fastcc void @timekeeping_update(ptr noundef getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1), i32 noundef 7)
  call void @lock_release(ptr noundef getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 0, i32 0, i32 1), i32 noundef %8) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !212
  %40 = load i32, ptr @tk_core, align 128
  %inc.i.i93 = add i32 %40, 1
  store i32 %inc.i.i93, ptr @tk_core, align 128
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @timekeeper_lock, i32 noundef %call1) #10
  call void @clock_was_set(i32 noundef 170) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %timespec64_valid_settod.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %timespec64_valid_settod.exit.cleanup_crit_edge ], [ %ret.0, %out ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tk_set_wall_to_mono(ptr nocapture noundef %tk, [2 x i64] %wtm.coerce) unnamed_addr #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #10
  %0 = call ptr @memset(ptr %tmp, i32 255, i32 16)
  %wall_to_monotonic = getelementptr inbounds %struct.timekeeper, ptr %tk, i32 0, i32 4
  %1 = ptrtoint ptr %wall_to_monotonic to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %wall_to_monotonic, align 8
  %sub = sub i64 0, %2
  %tv_nsec = getelementptr inbounds %struct.timekeeper, ptr %tk, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tv_nsec, align 8
  %sub2 = sub i32 0, %4
  %conv = sext i32 %sub2 to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %tmp, i64 noundef %sub, i64 noundef %conv) #10
  %offs_real = getelementptr inbounds %struct.timekeeper, ptr %tk, i32 0, i32 5
  %5 = ptrtoint ptr %offs_real to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %offs_real, align 8
  %7 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %7)
  %.fca.0.load = load i64, ptr %tmp, align 8
  %.fca.1.gep = getelementptr inbounds [2 x i64], ptr %tmp, i32 0, i32 1
  %8 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load8_noabort(i32 %8)
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %.fca.0.load)
  %cmp.i.i = icmp sgt i64 %.fca.0.load, 9223372035
  %ts.sroa.2.8.extract.shift.i = lshr i64 %.fca.1.load, 32
  %mul.i.i = mul i64 %.fca.0.load, 1000000000
  %add.i.i = add i64 %ts.sroa.2.8.extract.shift.i, %mul.i.i
  %retval.0.i.i = select i1 %cmp.i.i, i64 9223372036854775807, i64 %add.i.i, !prof !172
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %retval.0.i.i)
  %cmp.not = icmp eq i64 %6, %retval.0.i.i
  br i1 %cmp.not, label %entry.if.end32_crit_edge, label %land.rhs

entry.if.end32_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

land.rhs:                                         ; preds = %entry
  %.b66 = load i1, ptr @tk_set_wall_to_mono.__already_done, align 1
  br i1 %.b66, label %land.rhs.if.end32_crit_edge, label %if.then, !prof !165

land.rhs.if.end32_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @tk_set_wall_to_mono.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 159, i32 noundef 9, ptr noundef null) #10
  br label %if.end32

if.end32:                                         ; preds = %if.then, %land.rhs.if.end32_crit_edge, %entry.if.end32_crit_edge
  %wtm.coerce.fca.1.extract = extractvalue [2 x i64] %wtm.coerce, 1
  %wtm.coerce.fca.0.extract = extractvalue [2 x i64] %wtm.coerce, 0
  %9 = ptrtoint ptr %wall_to_monotonic to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %wtm.coerce.fca.0.extract, ptr %wall_to_monotonic, align 8
  %10 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %wtm.coerce.fca.1.extract, ptr %tv_nsec, align 8
  %sub42 = sub i64 0, %wtm.coerce.fca.0.extract
  %wtm.sroa.3.8.extract.shift = lshr i64 %wtm.coerce.fca.1.extract, 32
  %wtm.sroa.3.8.extract.trunc = trunc i64 %wtm.sroa.3.8.extract.shift to i32
  %sub44 = sub i32 0, %wtm.sroa.3.8.extract.trunc
  %conv45 = sext i32 %sub44 to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %tmp, i64 noundef %sub42, i64 noundef %conv45) #10
  %11 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %11)
  %.fca.0.load54 = load i64, ptr %tmp, align 8
  %12 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load8_noabort(i32 %12)
  %.fca.1.load57 = load i64, ptr %.fca.1.gep, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %.fca.0.load54)
  %cmp.i.i67 = icmp sgt i64 %.fca.0.load54, 9223372035
  %ts.sroa.2.8.extract.shift.i68 = lshr i64 %.fca.1.load57, 32
  %mul.i.i69 = mul i64 %.fca.0.load54, 1000000000
  %add.i.i70 = add i64 %ts.sroa.2.8.extract.shift.i68, %mul.i.i69
  %retval.0.i.i71 = select i1 %cmp.i.i67, i64 9223372036854775807, i64 %add.i.i70, !prof !172
  %13 = ptrtoint ptr %offs_real to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %retval.0.i.i71, ptr %offs_real, align 8
  %tai_offset = getelementptr inbounds %struct.timekeeper, ptr %tk, i32 0, i32 8
  %14 = ptrtoint ptr %tai_offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tai_offset, align 8
  %conv49 = sext i32 %15 to i64
  %mul.i = mul nsw i64 %conv49, 1000000000
  %add = add i64 %mul.i, %retval.0.i.i71
  %offs_tai = getelementptr inbounds %struct.timekeeper, ptr %tk, i32 0, i32 7
  %16 = ptrtoint ptr %offs_tai to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %add, ptr %offs_tai, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @timekeeping_update(ptr noundef %tk, i32 noundef %action) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %action, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ntp_error = getelementptr inbounds %struct.timekeeper, ptr %tk, i32 0, i32 19
  %0 = ptrtoint ptr %ntp_error to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %ntp_error, align 8
  tail call void @ntp_clear() #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.i = tail call i64 @ntp_get_next_leap() #10
  %next_leap_ktime.i = getelementptr inbounds %struct.timekeeper, ptr %tk, i32 0, i32 11
  %1 = ptrtoint ptr %next_leap_ktime.i to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %call.i, ptr %next_leap_ktime.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372036854775807, i64 %call.i)
  %cmp.not.i = icmp eq i64 %call.i, 9223372036854775807
  br i1 %cmp.not.i, label %if.end.tk_update_leap_state.exit_crit_edge, label %if.then.i

if.end.tk_update_leap_state.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %tk_update_leap_state.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %offs_real.i = getelementptr inbounds %struct.timekeeper, ptr %tk, i32 0, i32 5
  %2 = ptrtoint ptr %offs_real.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %offs_real.i, align 8
  %sub.i = sub i64 %call.i, %3
  %4 = ptrtoint ptr %next_leap_ktime.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %sub.i, ptr %next_leap_ktime.i, align 8
  br label %tk_update_leap_state.exit

tk_update_leap_state.exit:                        ; preds = %if.then.i, %if.end.tk_update_leap_state.exit_crit_edge
  %xtime_sec.i = getelementptr inbounds %struct.timekeeper, ptr %tk, i32 0, i32 2
  %5 = ptrtoint ptr %xtime_sec.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %xtime_sec.i, align 8
  %wall_to_monotonic.i = getelementptr inbounds %struct.timekeeper, ptr %tk, i32 0, i32 4
  %7 = ptrtoint ptr %wall_to_monotonic.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %wall_to_monotonic.i, align 8
  %add.i = add i64 %8, %6
  %tv_nsec.i = getelementptr inbounds %struct.timekeeper, ptr %tk, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tv_nsec.i, align 8
  %mul.i = mul i64 %add.i, 1000000000
  %conv.i = zext i32 %10 to i64
  %add2.i = add i64 %mul.i, %conv.i
  %base.i = getelementptr inbounds %struct.tk_read_base, ptr %tk, i32 0, i32 6
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %add2.i, ptr %base.i, align 8
  %xtime_nsec.i = getelementptr inbounds %struct.tk_read_base, ptr %tk, i32 0, i32 5
  %12 = ptrtoint ptr %xtime_nsec.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %xtime_nsec.i, align 8
  %shift.i = getelementptr inbounds %struct.tk_read_base, ptr %tk, i32 0, i32 4
  %14 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %shift.i, align 4
  %sh_prom.i = zext i32 %15 to i64
  %shr.i = lshr i64 %13, %sh_prom.i
  %conv5.i = trunc i64 %shr.i to i32
  %add6.i = add i32 %10, %conv5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999999, i32 %add6.i)
  %cmp.i = icmp ugt i32 %add6.i, 999999999
  %extract.t24.i = trunc i64 %add.i to i32
  %extract.t.i = zext i1 %cmp.i to i32
  %seconds.0.off0.i = add i32 %extract.t.i, %extract.t24.i
  %ktime_sec.i = getelementptr inbounds %struct.timekeeper, ptr %tk, i32 0, i32 3
  %16 = ptrtoint ptr %ktime_sec.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %seconds.0.off0.i, ptr %ktime_sec.i, align 8
  %raw_sec.i = getelementptr inbounds %struct.timekeeper, ptr %tk, i32 0, i32 12
  %17 = ptrtoint ptr %raw_sec.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %raw_sec.i, align 8
  %mul9.i = mul i64 %18, 1000000000
  %base11.i = getelementptr inbounds %struct.timekeeper, ptr %tk, i32 0, i32 1, i32 6
  %19 = ptrtoint ptr %base11.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %mul9.i, ptr %base11.i, align 8
  tail call void @update_vsyscall(ptr noundef %tk) #10
  %and1 = and i32 %action, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %and1.lobit = lshr exact i32 %and1, 2
  %call.i27 = tail call i32 @raw_notifier_call_chain(ptr noundef nonnull @pvclock_gtod_chain, i32 noundef %and1.lobit, ptr noundef %tk) #10
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %base.i, align 8
  %offs_real = getelementptr inbounds %struct.timekeeper, ptr %tk, i32 0, i32 5
  %22 = ptrtoint ptr %offs_real to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %offs_real, align 8
  %add = add i64 %23, %21
  %base_real = getelementptr inbounds %struct.tk_read_base, ptr %tk, i32 0, i32 7
  %24 = ptrtoint ptr %base_real to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %add, ptr %base_real, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !213
  %25 = load i32, ptr @tk_fast_mono, align 128
  %inc.i.i = add i32 %25, 1
  store i32 %inc.i.i, ptr @tk_fast_mono, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !214
  %26 = call ptr @memcpy(ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), ptr %tk, i32 56)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !213
  %27 = load i32, ptr @tk_fast_mono, align 128
  %inc.i7.i = add i32 %27, 1
  store i32 %inc.i7.i, ptr @tk_fast_mono, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !214
  %28 = call ptr @memcpy(ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1, i32 1), ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 56)
  %tkr_raw = getelementptr inbounds %struct.timekeeper, ptr %tk, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !213
  %29 = load i32, ptr @tk_fast_raw, align 128
  %inc.i.i28 = add i32 %29, 1
  store i32 %inc.i.i28, ptr @tk_fast_raw, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !214
  %30 = call ptr @memcpy(ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_raw, i32 0, i32 1), ptr %tkr_raw, i32 56)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !213
  %31 = load i32, ptr @tk_fast_raw, align 128
  %inc.i7.i29 = add i32 %31, 1
  store i32 %inc.i7.i29, ptr @tk_fast_raw, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !214
  %32 = call ptr @memcpy(ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_raw, i32 0, i32 1, i32 1), ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_raw, i32 0, i32 1), i32 56)
  br i1 %tobool2.not, label %tk_update_leap_state.exit.if.end8_crit_edge, label %if.then7

tk_update_leap_state.exit.if.end8_crit_edge:      ; preds = %tk_update_leap_state.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then7:                                         ; preds = %tk_update_leap_state.exit
  call void @__sanitizer_cov_trace_pc() #12
  %clock_was_set_seq = getelementptr inbounds %struct.timekeeper, ptr %tk, i32 0, i32 9
  %33 = ptrtoint ptr %clock_was_set_seq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %clock_was_set_seq, align 4
  %inc = add i32 %34, 1
  store i32 %inc, ptr %clock_was_set_seq, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %tk_update_leap_state.exit.if.end8_crit_edge
  %and9 = and i32 %action, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.if.end12_crit_edge, label %if.then11

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %35 = call ptr @memcpy(ptr @shadow_timekeeper, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1), i32 288)
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end8.if.end12_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clock_was_set(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @timekeeping_warp_clock() local_unnamed_addr #0 align 64 {
entry:
  %adjust = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_tz to i32))
  %0 = load i32, ptr @sys_tz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %adjust) #10
  %1 = getelementptr inbounds i8, ptr %adjust, i32 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %1, align 8
  store i32 1, ptr @persistent_clock_is_local, align 4
  %mul = mul i32 %0, 60
  %conv = sext i32 %mul to i64
  %3 = ptrtoint ptr %adjust to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %conv, ptr %adjust, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %adjust, i32 0, i32 1
  %4 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %tv_nsec, align 8
  %call = call fastcc i32 @timekeeping_inject_offset(ptr noundef nonnull %adjust)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %adjust) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @timekeeping_inject_offset(ptr nocapture noundef readonly %ts) unnamed_addr #0 align 64 {
entry:
  %tmp15 = alloca %struct.timespec64, align 8
  %agg.tmp23 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %0 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tv_nsec, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999999, i32 %1)
  %2 = icmp ugt i32 %1, 999999999
  br i1 %2, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @timekeeper_lock) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %3 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %do.body.__seqprop_raw_spinlock_assert.exit_crit_edge, label %land.rhs.i

do.body.__seqprop_raw_spinlock_assert.exit_crit_edge: ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_raw_spinlock_assert.exit

land.rhs.i:                                       ; preds = %do.body
  %4 = load ptr, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 0, i32 1), align 32
  %dep_map.i = getelementptr inbounds %struct.raw_spinlock, ptr %4, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.__seqprop_raw_spinlock_assert.exit_crit_edge, !prof !172

land.rhs.i.__seqprop_raw_spinlock_assert.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_raw_spinlock_assert.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 276, i32 noundef 9, ptr noundef null) #10
  br label %__seqprop_raw_spinlock_assert.exit

__seqprop_raw_spinlock_assert.exit:               ; preds = %do.end.i, %land.rhs.i.__seqprop_raw_spinlock_assert.exit_crit_edge, %do.body.__seqprop_raw_spinlock_assert.exit_crit_edge
  %5 = load i32, ptr @tk_core, align 128
  %inc.i.i.i = add i32 %5, 1
  store i32 %inc.i.i.i, ptr @tk_core, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !208
  %6 = tail call ptr @llvm.returnaddress(i32 0) #10
  %7 = ptrtoint ptr %6 to i32
  tail call void @lock_acquire(ptr noundef getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 0, i32 0, i32 1), i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %7) #10
  %8 = load volatile ptr, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1), align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %call.i.i70 = tail call i64 %10(ptr noundef %8) #10
  %11 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 2), align 8
  %12 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 1), align 16
  %sub.i.i = sub i64 %call.i.i70, %11
  %and.i.i = and i64 %sub.i.i, %12
  store i64 %call.i.i70, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 2), align 8
  store i64 %call.i.i70, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 2), align 16
  %13 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 3), align 64
  %conv.i = zext i32 %13 to i64
  %mul.i = mul i64 %and.i.i, %conv.i
  %14 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  %add.i = add i64 %mul.i, %14
  store i64 %add.i, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  %15 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 3), align 8
  %conv11.i = zext i32 %15 to i64
  %mul12.i = mul i64 %and.i.i, %conv11.i
  %16 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 5), align 128
  %add15.i = add i64 %mul12.i, %16
  store i64 %add15.i, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 5), align 128
  %17 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 4), align 4
  %sh_prom.i.i = zext i32 %17 to i64
  %shl.i.i = shl i64 1000000000, %sh_prom.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %shl.i.i)
  %cmp.not3.i.i = icmp ult i64 %add.i, %shl.i.i
  br i1 %cmp.not3.i.i, label %__seqprop_raw_spinlock_assert.exit.while.cond8.preheader.i.i_crit_edge, label %while.body.preheader.i.i

__seqprop_raw_spinlock_assert.exit.while.cond8.preheader.i.i_crit_edge: ; preds = %__seqprop_raw_spinlock_assert.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond8.preheader.i.i

while.body.preheader.i.i:                         ; preds = %__seqprop_raw_spinlock_assert.exit
  %.promoted2.i.i = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 2), align 8
  br label %while.body.i.i

while.cond.while.cond8.preheader_crit_edge.i.i:   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i64 %sub.i1.i, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  store i64 %inc.i.i, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 2), align 8
  br label %while.cond8.preheader.i.i

while.cond8.preheader.i.i:                        ; preds = %while.cond.while.cond8.preheader_crit_edge.i.i, %__seqprop_raw_spinlock_assert.exit.while.cond8.preheader.i.i_crit_edge
  %18 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 4), align 4
  %sh_prom12.i.i = zext i32 %18 to i64
  %shl13.i.i = shl i64 1000000000, %sh_prom12.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add15.i, i64 %shl13.i.i)
  %cmp14.not9.i.i = icmp ult i64 %add15.i, %shl13.i.i
  br i1 %cmp14.not9.i.i, label %while.cond8.preheader.i.i.timekeeping_forward_now.exit_crit_edge, label %while.body15.preheader.i.i

while.cond8.preheader.i.i.timekeeping_forward_now.exit_crit_edge: ; preds = %while.cond8.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %timekeeping_forward_now.exit

while.body15.preheader.i.i:                       ; preds = %while.cond8.preheader.i.i
  %.promoted8.i.i = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 12), align 8
  br label %while.body15.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.preheader.i.i
  %sub14.i.i = phi i64 [ %sub.i1.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %add.i, %while.body.preheader.i.i ]
  %19 = phi i64 [ %inc.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %.promoted2.i.i, %while.body.preheader.i.i ]
  %sub.i1.i = sub i64 %sub14.i.i, %shl.i.i
  %inc.i.i = add i64 %19, 1
  %cmp.not.i.i = icmp ult i64 %sub.i1.i, %shl.i.i
  br i1 %cmp.not.i.i, label %while.cond.while.cond8.preheader_crit_edge.i.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

while.body15.i.i:                                 ; preds = %while.body15.i.i.while.body15.i.i_crit_edge, %while.body15.preheader.i.i
  %20 = phi i64 [ %sub22.i.i, %while.body15.i.i.while.body15.i.i_crit_edge ], [ %add15.i, %while.body15.preheader.i.i ]
  %21 = phi i64 [ %inc23.i.i, %while.body15.i.i.while.body15.i.i_crit_edge ], [ %.promoted8.i.i, %while.body15.preheader.i.i ]
  %sub22.i.i = sub i64 %20, %shl13.i.i
  %inc23.i.i = add i64 %21, 1
  %cmp14.not.i.i = icmp ult i64 %sub22.i.i, %shl13.i.i
  br i1 %cmp14.not.i.i, label %while.cond8.while.end24_crit_edge.i.i, label %while.body15.i.i.while.body15.i.i_crit_edge

while.body15.i.i.while.body15.i.i_crit_edge:      ; preds = %while.body15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body15.i.i

while.cond8.while.end24_crit_edge.i.i:            ; preds = %while.body15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i64 %sub22.i.i, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 5), align 128
  store i64 %inc23.i.i, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 12), align 8
  br label %timekeeping_forward_now.exit

timekeeping_forward_now.exit:                     ; preds = %while.cond8.while.end24_crit_edge.i.i, %while.cond8.preheader.i.i.timekeeping_forward_now.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp15) #10
  %22 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 2), align 8, !noalias !215
  %23 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8, !noalias !215
  %shr.i = lshr i64 %23, %sh_prom.i.i
  %24 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %24)
  %.unpack = load i64, ptr %ts, align 8
  %25 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load8_noabort(i32 %25)
  %.unpack64 = load i64, ptr %tv_nsec, align 8
  %lhs.sroa.2.8.extract.trunc.i = trunc i64 %shr.i to i32
  %rhs.sroa.2.8.extract.shift.i = lshr i64 %.unpack64, 32
  %rhs.sroa.2.8.extract.trunc.i = trunc i64 %rhs.sroa.2.8.extract.shift.i to i32
  %26 = call ptr @memset(ptr %tmp15, i32 255, i32 16)
  %add.i72 = add i64 %.unpack, %22
  %add3.i = add i32 %rhs.sroa.2.8.extract.trunc.i, %lhs.sroa.2.8.extract.trunc.i
  %conv.i73 = sext i32 %add3.i to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %tmp15, i64 noundef %add.i72, i64 noundef %conv.i73) #10
  %27 = ptrtoint ptr %tmp15 to i32
  call void @__asan_load8_noabort(i32 %27)
  %tmp.sroa.0.0.copyload106 = load i64, ptr %tmp15, align 8
  %tmp.sroa.5.0.tmp15.sroa_idx = getelementptr inbounds i8, ptr %tmp15, i32 8
  %28 = ptrtoint ptr %tmp.sroa.5.0.tmp15.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %28)
  %tmp.sroa.5.0.copyload107 = load i32, ptr %tmp.sroa.5.0.tmp15.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp15) #10
  %29 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 4), align 8
  %30 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %ts, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %29, i64 %31)
  %cmp.i = icmp slt i64 %29, %31
  br i1 %cmp.i, label %lor.lhs.false19, label %if.end.i

if.end.i:                                         ; preds = %timekeeping_forward_now.exit
  call void @__sanitizer_cov_trace_cmp8(i64 %29, i64 %31)
  %cmp4.i = icmp sgt i64 %29, %31
  br i1 %cmp4.i, label %if.end.i.error_crit_edge, label %timespec64_compare.exit

if.end.i.error_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

timespec64_compare.exit:                          ; preds = %if.end.i
  %32 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 4, i32 1), align 16
  %33 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tv_nsec, align 8
  %sub.i = sub i32 %32, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp17 = icmp sgt i32 %sub.i, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %tmp.sroa.0.0.copyload106)
  %cmp.i.i = icmp slt i64 %tmp.sroa.0.0.copyload106, 0
  %or.cond115 = select i1 %cmp17, i1 true, i1 %cmp.i.i
  br i1 %or.cond115, label %timespec64_compare.exit.error_crit_edge, label %timespec64_compare.exit.timespec64_valid_settod.exit_crit_edge

timespec64_compare.exit.timespec64_valid_settod.exit_crit_edge: ; preds = %timespec64_compare.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %timespec64_valid_settod.exit

timespec64_compare.exit.error_crit_edge:          ; preds = %timespec64_compare.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

lor.lhs.false19:                                  ; preds = %timekeeping_forward_now.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %tmp.sroa.0.0.copyload106)
  %cmp.i.i.old = icmp slt i64 %tmp.sroa.0.0.copyload106, 0
  br i1 %cmp.i.i.old, label %lor.lhs.false19.error_crit_edge, label %lor.lhs.false19.timespec64_valid_settod.exit_crit_edge

lor.lhs.false19.timespec64_valid_settod.exit_crit_edge: ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #12
  br label %timespec64_valid_settod.exit

lor.lhs.false19.error_crit_edge:                  ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

timespec64_valid_settod.exit:                     ; preds = %lor.lhs.false19.timespec64_valid_settod.exit_crit_edge, %timespec64_compare.exit.timespec64_valid_settod.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000000, i32 %tmp.sroa.5.0.copyload107)
  %cmp1.i.i = icmp ult i32 %tmp.sroa.5.0.copyload107, 1000000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 8277292036, i64 %tmp.sroa.0.0.copyload106)
  %cmp.i74 = icmp ult i64 %tmp.sroa.0.0.copyload106, 8277292036
  %spec.select.i = select i1 %cmp1.i.i, i1 %cmp.i74, i1 false
  br i1 %spec.select.i, label %if.end22, label %timespec64_valid_settod.exit.error_crit_edge

timespec64_valid_settod.exit.error_crit_edge:     ; preds = %timespec64_valid_settod.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end22:                                         ; preds = %timespec64_valid_settod.exit
  %35 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 2), align 8
  %add.i76 = add i64 %35, %31
  store i64 %add.i76, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 2), align 8
  %36 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tv_nsec, align 8
  %conv.i78 = sext i32 %37 to i64
  %38 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 4), align 4
  %sh_prom.i79 = zext i32 %38 to i64
  %shl.i = shl i64 %conv.i78, %sh_prom.i79
  %39 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  %add2.i = add i64 %shl.i, %39
  store i64 %add2.i, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  %shl.i.i80 = shl i64 1000000000, %sh_prom.i79
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i, i64 %shl.i.i80)
  %cmp.not3.i.i81 = icmp ult i64 %add2.i, %shl.i.i80
  br i1 %cmp.not3.i.i81, label %if.end22.while.cond8.preheader.i.i86_crit_edge, label %if.end22.while.body.i.i93_crit_edge

if.end22.while.body.i.i93_crit_edge:              ; preds = %if.end22
  br label %while.body.i.i93

if.end22.while.cond8.preheader.i.i86_crit_edge:   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond8.preheader.i.i86

while.cond.while.cond8.preheader_crit_edge.i.i82: ; preds = %while.body.i.i93
  call void @__sanitizer_cov_trace_pc() #12
  store i64 %sub.i.i90, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  store i64 %inc.i.i91, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 2), align 8
  br label %while.cond8.preheader.i.i86

while.cond8.preheader.i.i86:                      ; preds = %while.cond.while.cond8.preheader_crit_edge.i.i82, %if.end22.while.cond8.preheader.i.i86_crit_edge
  %40 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 4), align 4
  %sh_prom12.i.i83 = zext i32 %40 to i64
  %shl13.i.i84 = shl i64 1000000000, %sh_prom12.i.i83
  %.promoted7.i.i = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 5), align 128
  call void @__sanitizer_cov_trace_cmp8(i64 %.promoted7.i.i, i64 %shl13.i.i84)
  %cmp14.not9.i.i85 = icmp ult i64 %.promoted7.i.i, %shl13.i.i84
  br i1 %cmp14.not9.i.i85, label %while.cond8.preheader.i.i86.tk_xtime_add.exit_crit_edge, label %while.body15.preheader.i.i88

while.cond8.preheader.i.i86.tk_xtime_add.exit_crit_edge: ; preds = %while.cond8.preheader.i.i86
  call void @__sanitizer_cov_trace_pc() #12
  br label %tk_xtime_add.exit

while.body15.preheader.i.i88:                     ; preds = %while.cond8.preheader.i.i86
  %.promoted8.i.i87 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 12), align 8
  br label %while.body15.i.i97

while.body.i.i93:                                 ; preds = %while.body.i.i93.while.body.i.i93_crit_edge, %if.end22.while.body.i.i93_crit_edge
  %sub14.i.i89 = phi i64 [ %sub.i.i90, %while.body.i.i93.while.body.i.i93_crit_edge ], [ %add2.i, %if.end22.while.body.i.i93_crit_edge ]
  %41 = phi i64 [ %inc.i.i91, %while.body.i.i93.while.body.i.i93_crit_edge ], [ %add.i76, %if.end22.while.body.i.i93_crit_edge ]
  %sub.i.i90 = sub i64 %sub14.i.i89, %shl.i.i80
  %inc.i.i91 = add i64 %41, 1
  %cmp.not.i.i92 = icmp ult i64 %sub.i.i90, %shl.i.i80
  br i1 %cmp.not.i.i92, label %while.cond.while.cond8.preheader_crit_edge.i.i82, label %while.body.i.i93.while.body.i.i93_crit_edge

while.body.i.i93.while.body.i.i93_crit_edge:      ; preds = %while.body.i.i93
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i93

while.body15.i.i97:                               ; preds = %while.body15.i.i97.while.body15.i.i97_crit_edge, %while.body15.preheader.i.i88
  %42 = phi i64 [ %sub22.i.i94, %while.body15.i.i97.while.body15.i.i97_crit_edge ], [ %.promoted7.i.i, %while.body15.preheader.i.i88 ]
  %43 = phi i64 [ %inc23.i.i95, %while.body15.i.i97.while.body15.i.i97_crit_edge ], [ %.promoted8.i.i87, %while.body15.preheader.i.i88 ]
  %sub22.i.i94 = sub i64 %42, %shl13.i.i84
  %inc23.i.i95 = add i64 %43, 1
  %cmp14.not.i.i96 = icmp ult i64 %sub22.i.i94, %shl13.i.i84
  br i1 %cmp14.not.i.i96, label %while.cond8.while.end24_crit_edge.i.i98, label %while.body15.i.i97.while.body15.i.i97_crit_edge

while.body15.i.i97.while.body15.i.i97_crit_edge:  ; preds = %while.body15.i.i97
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body15.i.i97

while.cond8.while.end24_crit_edge.i.i98:          ; preds = %while.body15.i.i97
  call void @__sanitizer_cov_trace_pc() #12
  store i64 %sub22.i.i94, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 5), align 128
  store i64 %inc23.i.i95, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 12), align 8
  br label %tk_xtime_add.exit

tk_xtime_add.exit:                                ; preds = %while.cond8.while.end24_crit_edge.i.i98, %while.cond8.preheader.i.i86.tk_xtime_add.exit_crit_edge
  %.unpack66 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 4, i32 1), align 16
  %44 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %44)
  %.unpack67 = load i64, ptr %ts, align 8
  %45 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load8_noabort(i32 %45)
  %.unpack69 = load i64, ptr %tv_nsec, align 8
  %lhs.sroa.2.8.extract.shift.i99 = lshr i64 %.unpack66, 32
  %lhs.sroa.2.8.extract.trunc.i100 = trunc i64 %lhs.sroa.2.8.extract.shift.i99 to i32
  %rhs.sroa.2.8.extract.shift.i101 = lshr i64 %.unpack69, 32
  %rhs.sroa.2.8.extract.trunc.i102 = trunc i64 %rhs.sroa.2.8.extract.shift.i101 to i32
  %46 = call ptr @memset(ptr %agg.tmp23, i32 255, i32 16)
  %sub.i103 = sub i64 %29, %.unpack67
  %sub3.i = sub i32 %lhs.sroa.2.8.extract.trunc.i100, %rhs.sroa.2.8.extract.trunc.i102
  %conv.i104 = sext i32 %sub3.i to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %agg.tmp23, i64 noundef %sub.i103, i64 noundef %conv.i104) #10
  %47 = ptrtoint ptr %agg.tmp23 to i32
  call void @__asan_load8_noabort(i32 %47)
  %.fca.0.load = load i64, ptr %agg.tmp23, align 8
  %.fca.0.insert = insertvalue [2 x i64] poison, i64 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds [2 x i64], ptr %agg.tmp23, i32 0, i32 1
  %48 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load8_noabort(i32 %48)
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert, i64 %.fca.1.load, 1
  call fastcc void @tk_set_wall_to_mono(ptr noundef getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1), [2 x i64] %.fca.1.insert)
  br label %error

error:                                            ; preds = %tk_xtime_add.exit, %timespec64_valid_settod.exit.error_crit_edge, %lor.lhs.false19.error_crit_edge, %timespec64_compare.exit.error_crit_edge, %if.end.i.error_crit_edge
  %ret.0 = phi i32 [ 0, %tk_xtime_add.exit ], [ -22, %timespec64_valid_settod.exit.error_crit_edge ], [ -22, %timespec64_compare.exit.error_crit_edge ], [ -22, %if.end.i.error_crit_edge ], [ -22, %lor.lhs.false19.error_crit_edge ]
  call fastcc void @timekeeping_update(ptr noundef getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1), i32 noundef 7)
  call void @lock_release(ptr noundef getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 0, i32 0, i32 1), i32 noundef %7) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !212
  %49 = load i32, ptr @tk_core, align 128
  %inc.i.i105 = add i32 %49, 1
  store i32 %inc.i.i105, ptr @tk_core, align 128
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @timekeeper_lock, i32 noundef %call) #10
  call void @clock_was_set(i32 noundef 170) #10
  br label %cleanup

cleanup:                                          ; preds = %error, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @timekeeping_notify(ptr noundef %clock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1), align 8
  %cmp = icmp eq ptr %0, %clock
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @stop_machine(ptr noundef nonnull @change_clocksource, ptr noundef %clock, ptr noundef null) #10
  tail call void @tick_clock_notify() #10
  %1 = load ptr, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1), align 8
  %cmp4 = icmp ne ptr %1, %clock
  %cond = sext i1 %cmp4 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stop_machine(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @change_clocksource(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %owner = getelementptr inbounds %struct.clocksource, ptr %data, i32 0, i32 20
  %0 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %owner, align 4
  %call = tail call zeroext i1 @try_module_get(ptr noundef %1) #10
  br i1 %call, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then:                                          ; preds = %entry
  %enable = getelementptr inbounds %struct.clocksource, ptr %data, i32 0, i32 14
  %2 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enable, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then.do.body_crit_edge, label %lor.lhs.false

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

lor.lhs.false:                                    ; preds = %if.then
  %call2 = tail call i32 %3(ptr noundef %data) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %lor.lhs.false.do.body_crit_edge, label %if.else

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %5) #10
  br label %do.body

do.body:                                          ; preds = %if.else, %lor.lhs.false.do.body_crit_edge, %if.then.do.body_crit_edge, %entry.do.body_crit_edge
  %change.0.off0 = phi i1 [ false, %if.else ], [ false, %entry.do.body_crit_edge ], [ true, %lor.lhs.false.do.body_crit_edge ], [ true, %if.then.do.body_crit_edge ]
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @timekeeper_lock) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %6 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %do.body.__seqprop_raw_spinlock_assert.exit_crit_edge, label %land.rhs.i

do.body.__seqprop_raw_spinlock_assert.exit_crit_edge: ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_raw_spinlock_assert.exit

land.rhs.i:                                       ; preds = %do.body
  %7 = load ptr, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 0, i32 1), align 32
  %dep_map.i = getelementptr inbounds %struct.raw_spinlock, ptr %7, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.__seqprop_raw_spinlock_assert.exit_crit_edge, !prof !172

land.rhs.i.__seqprop_raw_spinlock_assert.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_raw_spinlock_assert.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 276, i32 noundef 9, ptr noundef null) #10
  br label %__seqprop_raw_spinlock_assert.exit

__seqprop_raw_spinlock_assert.exit:               ; preds = %do.end.i, %land.rhs.i.__seqprop_raw_spinlock_assert.exit_crit_edge, %do.body.__seqprop_raw_spinlock_assert.exit_crit_edge
  %8 = load i32, ptr @tk_core, align 128
  %inc.i.i.i = add i32 %8, 1
  store i32 %inc.i.i.i, ptr @tk_core, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !208
  %9 = tail call ptr @llvm.returnaddress(i32 0) #10
  %10 = ptrtoint ptr %9 to i32
  tail call void @lock_acquire(ptr noundef getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 0, i32 0, i32 1), i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %10) #10
  %11 = load volatile ptr, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1), align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %call.i.i60 = tail call i64 %13(ptr noundef %11) #10
  %14 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 2), align 8
  %15 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 1), align 16
  %sub.i.i = sub i64 %call.i.i60, %14
  %and.i.i = and i64 %sub.i.i, %15
  store i64 %call.i.i60, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 2), align 8
  store i64 %call.i.i60, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 2), align 16
  %16 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 3), align 64
  %conv.i = zext i32 %16 to i64
  %mul.i = mul i64 %and.i.i, %conv.i
  %17 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  %add.i = add i64 %mul.i, %17
  store i64 %add.i, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  %18 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 3), align 8
  %conv11.i = zext i32 %18 to i64
  %mul12.i = mul i64 %and.i.i, %conv11.i
  %19 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 5), align 128
  %add15.i = add i64 %mul12.i, %19
  store i64 %add15.i, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 5), align 128
  %20 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 4), align 4
  %sh_prom.i.i = zext i32 %20 to i64
  %shl.i.i = shl i64 1000000000, %sh_prom.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %shl.i.i)
  %cmp.not3.i.i = icmp ult i64 %add.i, %shl.i.i
  br i1 %cmp.not3.i.i, label %__seqprop_raw_spinlock_assert.exit.while.cond8.preheader.i.i_crit_edge, label %while.body.preheader.i.i

__seqprop_raw_spinlock_assert.exit.while.cond8.preheader.i.i_crit_edge: ; preds = %__seqprop_raw_spinlock_assert.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond8.preheader.i.i

while.body.preheader.i.i:                         ; preds = %__seqprop_raw_spinlock_assert.exit
  %.promoted2.i.i = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 2), align 8
  br label %while.body.i.i

while.cond.while.cond8.preheader_crit_edge.i.i:   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i64 %sub.i1.i, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  store i64 %inc.i.i, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 2), align 8
  br label %while.cond8.preheader.i.i

while.cond8.preheader.i.i:                        ; preds = %while.cond.while.cond8.preheader_crit_edge.i.i, %__seqprop_raw_spinlock_assert.exit.while.cond8.preheader.i.i_crit_edge
  %21 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 4), align 4
  %sh_prom12.i.i = zext i32 %21 to i64
  %shl13.i.i = shl i64 1000000000, %sh_prom12.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add15.i, i64 %shl13.i.i)
  %cmp14.not9.i.i = icmp ult i64 %add15.i, %shl13.i.i
  br i1 %cmp14.not9.i.i, label %while.cond8.preheader.i.i.timekeeping_forward_now.exit_crit_edge, label %while.body15.preheader.i.i

while.cond8.preheader.i.i.timekeeping_forward_now.exit_crit_edge: ; preds = %while.cond8.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %timekeeping_forward_now.exit

while.body15.preheader.i.i:                       ; preds = %while.cond8.preheader.i.i
  %.promoted8.i.i = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 12), align 8
  br label %while.body15.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.preheader.i.i
  %sub14.i.i = phi i64 [ %sub.i1.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %add.i, %while.body.preheader.i.i ]
  %22 = phi i64 [ %inc.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %.promoted2.i.i, %while.body.preheader.i.i ]
  %sub.i1.i = sub i64 %sub14.i.i, %shl.i.i
  %inc.i.i = add i64 %22, 1
  %cmp.not.i.i = icmp ult i64 %sub.i1.i, %shl.i.i
  br i1 %cmp.not.i.i, label %while.cond.while.cond8.preheader_crit_edge.i.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

while.body15.i.i:                                 ; preds = %while.body15.i.i.while.body15.i.i_crit_edge, %while.body15.preheader.i.i
  %23 = phi i64 [ %sub22.i.i, %while.body15.i.i.while.body15.i.i_crit_edge ], [ %add15.i, %while.body15.preheader.i.i ]
  %24 = phi i64 [ %inc23.i.i, %while.body15.i.i.while.body15.i.i_crit_edge ], [ %.promoted8.i.i, %while.body15.preheader.i.i ]
  %sub22.i.i = sub i64 %23, %shl13.i.i
  %inc23.i.i = add i64 %24, 1
  %cmp14.not.i.i = icmp ult i64 %sub22.i.i, %shl13.i.i
  br i1 %cmp14.not.i.i, label %while.cond8.while.end24_crit_edge.i.i, label %while.body15.i.i.while.body15.i.i_crit_edge

while.body15.i.i.while.body15.i.i_crit_edge:      ; preds = %while.body15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body15.i.i

while.cond8.while.end24_crit_edge.i.i:            ; preds = %while.body15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i64 %sub22.i.i, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 5), align 128
  store i64 %inc23.i.i, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 12), align 8
  br label %timekeeping_forward_now.exit

timekeeping_forward_now.exit:                     ; preds = %while.cond8.while.end24_crit_edge.i.i, %while.cond8.preheader.i.i.timekeeping_forward_now.exit_crit_edge
  br i1 %change.0.off0, label %if.then19, label %timekeeping_forward_now.exit.if.end20_crit_edge

timekeeping_forward_now.exit.if.end20_crit_edge:  ; preds = %timekeeping_forward_now.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then19:                                        ; preds = %timekeeping_forward_now.exit
  call void @__sanitizer_cov_trace_pc() #12
  %25 = load ptr, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1), align 8
  tail call fastcc void @tk_setup_internals(ptr noundef %data)
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %timekeeping_forward_now.exit.if.end20_crit_edge
  %old.0 = phi ptr [ %25, %if.then19 ], [ null, %timekeeping_forward_now.exit.if.end20_crit_edge ]
  tail call fastcc void @timekeeping_update(ptr noundef getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1), i32 noundef 7)
  tail call void @lock_release(ptr noundef getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 0, i32 0, i32 1), i32 noundef %10) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !212
  %26 = load i32, ptr @tk_core, align 128
  %inc.i.i61 = add i32 %26, 1
  store i32 %inc.i.i61, ptr @tk_core, align 128
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @timekeeper_lock, i32 noundef %call7) #10
  %tobool39.not = icmp eq ptr %old.0, null
  br i1 %tobool39.not, label %if.end20.if.end46_crit_edge, label %if.then40

if.end20.if.end46_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then40:                                        ; preds = %if.end20
  %disable = getelementptr inbounds %struct.clocksource, ptr %old.0, i32 0, i32 15
  %27 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %disable, align 8
  %tobool41.not = icmp eq ptr %28, null
  br i1 %tobool41.not, label %if.then40.if.end44_crit_edge, label %if.then42

if.then40.if.end44_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.then42:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %28(ptr noundef nonnull %old.0) #10
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.then40.if.end44_crit_edge
  %owner45 = getelementptr inbounds %struct.clocksource, ptr %old.0, i32 0, i32 20
  %29 = ptrtoint ptr %owner45 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %owner45, align 4
  tail call void @module_put(ptr noundef %30) #10
  br label %if.end46

if.end46:                                         ; preds = %if.end44, %if.end20.if.end46_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_clock_notify() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ktime_get_raw_ts64(ptr nocapture noundef %ts) #0 align 64 {
entry:
  %dividend.addr.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body

do.body:                                          ; preds = %timekeeping_get_ns.exit.do.body_crit_edge, %entry
  tail call fastcc void @seqcount_lockdep_reader_access()
  %0 = load volatile i32, ptr @tk_core, align 128
  %and35 = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool.not36 = icmp eq i32 %and35, 0
  br i1 %tobool.not36, label %do.body.while.end_crit_edge, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  br label %do.end

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %do.body.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !218
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !219
  %1 = load volatile i32, ptr @tk_core, align 128
  %and = and i32 %1, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %do.body.while.end_crit_edge
  %.lcssa = phi i32 [ %0, %do.body.while.end_crit_edge ], [ %1, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !220
  %2 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 12), align 8
  %3 = ptrtoint ptr %ts to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %ts, align 8
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %while.end.i.i.do.body.i.i_crit_edge, %while.end
  tail call fastcc void @seqcount_lockdep_reader_access() #10
  %4 = load volatile i32, ptr @tk_core, align 128
  %and53.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i.i)
  %tobool.not54.i.i = icmp eq i32 %and53.i.i, 0
  br i1 %tobool.not54.i.i, label %do.body.i.i.while.end.i.i_crit_edge, label %do.body.i.i.do.end.i.i_crit_edge

do.body.i.i.do.end.i.i_crit_edge:                 ; preds = %do.body.i.i
  br label %do.end.i.i

do.body.i.i.while.end.i.i_crit_edge:              ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %do.body.i.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !169
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !170
  %5 = load volatile i32, ptr @tk_core, align 128
  %and.i.i = and i32 %5, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.while.end.i.i_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

do.end.i.i.while.end.i.i_crit_edge:               ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %do.end.i.i.while.end.i.i_crit_edge, %do.body.i.i.while.end.i.i_crit_edge
  %.lcssa.i.i = phi i32 [ %4, %do.body.i.i.while.end.i.i_crit_edge ], [ %5, %do.end.i.i.while.end.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !171
  %6 = load volatile ptr, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1), align 32
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %call.i.i.i = tail call i64 %8(ptr noundef %6) #10
  %9 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 2), align 16
  %10 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 1), align 8
  %11 = load ptr, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1), align 32
  %max_cycles.i.i = getelementptr inbounds %struct.clocksource, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %max_cycles.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %max_cycles.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !164
  %14 = load volatile i32, ptr @tk_core, align 128
  %cmp.i.i.not.i.i = icmp eq i32 %14, %.lcssa.i.i
  br i1 %cmp.i.i.not.i.i, label %do.end23.i.i, label %while.end.i.i.do.body.i.i_crit_edge

while.end.i.i.do.body.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

do.end23.i.i:                                     ; preds = %while.end.i.i
  %sub.i.i.i = sub i64 %call.i.i.i, %9
  %and.i.i.i = and i64 %sub.i.i.i, %10
  %and25.i.i = xor i64 %and.i.i.i, %10
  %shr.i.i = lshr i64 %10, 3
  call void @__sanitizer_cov_trace_cmp8(i64 %and25.i.i, i64 %shr.i.i)
  %cmp.i.i26 = icmp ult i64 %and25.i.i, %shr.i.i
  br i1 %cmp.i.i26, label %if.end.thread.i.i, label %if.end.i.i, !prof !172

if.end.thread.i.i:                                ; preds = %do.end23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i32 1, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 24), align 64
  br label %timekeeping_get_ns.exit

if.end.i.i:                                       ; preds = %do.end23.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i.i, i64 %13)
  %cmp28.i.i = icmp ugt i64 %and.i.i.i, %13
  br i1 %cmp28.i.i, label %if.then35.i.i, label %if.end.i.i.timekeeping_get_ns.exit_crit_edge, !prof !172

if.end.i.i.timekeeping_get_ns.exit_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %timekeeping_get_ns.exit

if.then35.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i32 1, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 25), align 4
  %15 = load ptr, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1), align 32
  %max_cycles37.i.i = getelementptr inbounds %struct.clocksource, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %max_cycles37.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %max_cycles37.i.i, align 8
  br label %timekeeping_get_ns.exit

timekeeping_get_ns.exit:                          ; preds = %if.then35.i.i, %if.end.i.i.timekeeping_get_ns.exit_crit_edge, %if.end.thread.i.i
  %delta.1.i.i = phi i64 [ %17, %if.then35.i.i ], [ %and.i.i.i, %if.end.i.i.timekeeping_get_ns.exit_crit_edge ], [ 0, %if.end.thread.i.i ]
  %18 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 3), align 8
  %19 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 5), align 128
  %20 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 4), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !164
  %21 = load volatile i32, ptr @tk_core, align 128
  %cmp.i.i27.not = icmp eq i32 %21, %.lcssa
  br i1 %cmp.i.i27.not, label %do.end22, label %timekeeping_get_ns.exit.do.body_crit_edge

timekeeping_get_ns.exit.do.body_crit_edge:        ; preds = %timekeeping_get_ns.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end22:                                         ; preds = %timekeeping_get_ns.exit
  %conv.i.i = zext i32 %18 to i64
  %mul.i.i = mul i64 %delta.1.i.i, %conv.i.i
  %add.i.i = add i64 %mul.i.i, %19
  %sh_prom.i.i = zext i32 %20 to i64
  %shr.i3.i = lshr i64 %add.i.i, %sh_prom.i.i
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %22 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %tv_nsec, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dividend.addr.i.i) #10
  %23 = ptrtoint ptr %dividend.addr.i.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %shr.i3.i, ptr %dividend.addr.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 999999999, i64 %shr.i3.i)
  %cmp1.i.i = icmp ugt i64 %shr.i3.i, 999999999
  %extract.t.i = trunc i64 %shr.i3.i to i32
  br i1 %cmp1.i.i, label %do.end22.while.body.i.i_crit_edge, label %do.end22.timespec64_add_ns.exit_crit_edge

do.end22.timespec64_add_ns.exit_crit_edge:        ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %timespec64_add_ns.exit

do.end22.while.body.i.i_crit_edge:                ; preds = %do.end22
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %do.end22.while.body.i.i_crit_edge
  %ret.02.i.i = phi i32 [ %inc.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 0, %do.end22.while.body.i.i_crit_edge ]
  %24 = phi i64 [ %sub.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %shr.i3.i, %do.end22.while.body.i.i_crit_edge ]
  call void asm "", "=*rm,0"(ptr nonnull elementtype(i64) %dividend.addr.i.i, i64 %24) #10, !srcloc !173
  %25 = ptrtoint ptr %dividend.addr.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %dividend.addr.i.i, align 8
  %sub.i.i = add i64 %26, -1000000000
  store i64 %sub.i.i, ptr %dividend.addr.i.i, align 8
  %inc.i.i = add i32 %ret.02.i.i, 1
  %cmp.i.i = icmp ugt i64 %sub.i.i, 999999999
  br i1 %cmp.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %__iter_div_u64_rem.exit.loopexit.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

__iter_div_u64_rem.exit.loopexit.i:               ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %extract.t7.le.i = trunc i64 %sub.i.i to i32
  br label %timespec64_add_ns.exit

timespec64_add_ns.exit:                           ; preds = %__iter_div_u64_rem.exit.loopexit.i, %do.end22.timespec64_add_ns.exit_crit_edge
  %.lcssa.i.off0.i = phi i32 [ %extract.t.i, %do.end22.timespec64_add_ns.exit_crit_edge ], [ %extract.t7.le.i, %__iter_div_u64_rem.exit.loopexit.i ]
  %ret.0.lcssa.i.i = phi i32 [ 0, %do.end22.timespec64_add_ns.exit_crit_edge ], [ %inc.i.i, %__iter_div_u64_rem.exit.loopexit.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dividend.addr.i.i) #10
  %conv1.i = zext i32 %ret.0.lcssa.i.i to i64
  %27 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %ts, align 8
  %add2.i = add i64 %28, %conv1.i
  store i64 %add2.i, ptr %ts, align 8
  %29 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %.lcssa.i.off0.i, ptr %tv_nsec, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @timekeeping_valid_for_hres() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  tail call fastcc void @seqcount_lockdep_reader_access()
  %0 = load volatile i32, ptr @tk_core, align 128
  %and24 = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool.not25 = icmp eq i32 %and24, 0
  br i1 %tobool.not25, label %do.body.while.end_crit_edge, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  br label %do.end

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %do.body.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !221
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !222
  %1 = load volatile i32, ptr @tk_core, align 128
  %and = and i32 %1, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %do.body.while.end_crit_edge
  %.lcssa = phi i32 [ %0, %do.body.while.end_crit_edge ], [ %1, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !223
  %2 = load ptr, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1), align 8
  %flags = getelementptr inbounds %struct.clocksource, ptr %2, i32 0, i32 13
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !164
  %5 = load volatile i32, ptr @tk_core, align 128
  %cmp.i.i.not = icmp eq i32 %5, %.lcssa
  br i1 %cmp.i.i.not, label %do.end22, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end22:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %and17 = and i32 %4, 32
  ret i32 %and17
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @timekeeping_max_deferment() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  tail call fastcc void @seqcount_lockdep_reader_access()
  %0 = load volatile i32, ptr @tk_core, align 128
  %and23 = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool.not24 = icmp eq i32 %and23, 0
  br i1 %tobool.not24, label %do.body.while.end_crit_edge, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  br label %do.end

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %do.body.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !224
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !225
  %1 = load volatile i32, ptr @tk_core, align 128
  %and = and i32 %1, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %do.body.while.end_crit_edge
  %.lcssa = phi i32 [ %0, %do.body.while.end_crit_edge ], [ %1, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !226
  %2 = load ptr, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1), align 8
  %max_idle_ns = getelementptr inbounds %struct.clocksource, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %max_idle_ns to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %max_idle_ns, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !164
  %5 = load volatile i32, ptr @tk_core, align 128
  %cmp.i.i.not = icmp eq i32 %5, %.lcssa
  br i1 %cmp.i.i.not, label %do.end21, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end21:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  ret i64 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @read_persistent_clock64(ptr noundef %ts) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ts to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %ts, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %1 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %tv_nsec, align 8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define weak dso_local void @read_persistent_wall_and_boot_offset(ptr noundef %wall_time, ptr noundef %boot_offset) local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @read_persistent_clock64(ptr noundef %wall_time)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #10
  %call.i = tail call i64 @sched_clock() #10
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp, i64 noundef %call.i) #10
  %0 = call ptr @memcpy(ptr %boot_offset, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @timekeeping_init() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  %wall_time = alloca %struct.timespec64, align 8
  %boot_offset = alloca %struct.timespec64, align 8
  %tmp14 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wall_time) #10
  %0 = call ptr @memset(ptr %wall_time, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %boot_offset) #10
  %1 = call ptr @memset(ptr %boot_offset, i32 255, i32 16)
  call void @read_persistent_wall_and_boot_offset(ptr noundef nonnull %wall_time, ptr noundef nonnull %boot_offset) #14
  %2 = ptrtoint ptr %wall_time to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %wall_time, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp.i.i = icmp slt i64 %3, 0
  br i1 %cmp.i.i, label %if.end.i75, label %timespec64_valid_settod.exit

timespec64_valid_settod.exit:                     ; preds = %entry
  %tv_nsec.i.i = getelementptr inbounds %struct.timespec64, ptr %wall_time, i32 0, i32 1
  %4 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tv_nsec.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000000, i32 %5)
  %cmp1.i.i = icmp ult i32 %5, 1000000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 8277292036, i64 %3)
  %cmp.i = icmp ult i64 %3, 8277292036
  %spec.select.i = select i1 %cmp1.i.i, i1 %cmp.i, i1 false
  br i1 %spec.select.i, label %timespec64_to_ns.exit, label %if.else

timespec64_to_ns.exit:                            ; preds = %timespec64_valid_settod.exit
  %mul.i = mul nuw nsw i64 %3, 1000000000
  %6 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tv_nsec.i.i, align 8
  %conv.i = sext i32 %7 to i64
  %add.i = add nsw i64 %mul.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i)
  %cmp = icmp sgt i64 %add.i, 0
  br i1 %cmp, label %if.then, label %timespec64_to_ns.exit.timespec64_to_ns.exit82_crit_edge

timespec64_to_ns.exit.timespec64_to_ns.exit82_crit_edge: ; preds = %timespec64_to_ns.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %timespec64_to_ns.exit82

if.then:                                          ; preds = %timespec64_to_ns.exit
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @persistent_clock_exists, align 1
  br label %if.end6

if.else:                                          ; preds = %timespec64_valid_settod.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %3)
  %cmp.i73 = icmp ugt i64 %3, 9223372035
  br i1 %cmp.i73, label %if.else.do.end_crit_edge, label %if.else.timespec64_to_ns.exit82_crit_edge

if.else.timespec64_to_ns.exit82_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %timespec64_to_ns.exit82

if.else.do.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.i75:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %3)
  %cmp2.i74 = icmp ult i64 %3, -9223372035
  br i1 %cmp2.i74, label %if.end.i75.do.end_crit_edge, label %if.end.i75.timespec64_to_ns.exit82_crit_edge

if.end.i75.timespec64_to_ns.exit82_crit_edge:     ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #12
  br label %timespec64_to_ns.exit82

if.end.i75.do.end_crit_edge:                      ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

timespec64_to_ns.exit82:                          ; preds = %if.end.i75.timespec64_to_ns.exit82_crit_edge, %if.else.timespec64_to_ns.exit82_crit_edge, %timespec64_to_ns.exit.timespec64_to_ns.exit82_crit_edge
  %mul.i76 = mul nsw i64 %3, 1000000000
  %tv_nsec.i77 = getelementptr inbounds %struct.timespec64, ptr %wall_time, i32 0, i32 1
  %8 = ptrtoint ptr %tv_nsec.i77 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tv_nsec.i77, align 8
  %conv.i78 = sext i32 %9 to i64
  %add.i79 = sub nsw i64 0, %conv.i78
  call void @__sanitizer_cov_trace_cmp8(i64 %mul.i76, i64 %add.i79)
  %cmp3.not = icmp eq i64 %mul.i76, %add.i79
  br i1 %cmp3.not, label %timespec64_to_ns.exit82.if.end6_crit_edge, label %timespec64_to_ns.exit82.do.end_crit_edge

timespec64_to_ns.exit82.do.end_crit_edge:         ; preds = %timespec64_to_ns.exit82
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

timespec64_to_ns.exit82.if.end6_crit_edge:        ; preds = %timespec64_to_ns.exit82
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

do.end:                                           ; preds = %timespec64_to_ns.exit82.do.end_crit_edge, %if.end.i75.do.end_crit_edge, %if.else.do.end_crit_edge
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #15
  %10 = ptrtoint ptr %wall_time to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %wall_time, align 8
  %.compoundliteral.sroa.2.0.wall_time.sroa_idx = getelementptr inbounds i8, ptr %wall_time, i32 8
  %11 = ptrtoint ptr %.compoundliteral.sroa.2.0.wall_time.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %.compoundliteral.sroa.2.0.wall_time.sroa_idx, align 8
  br label %if.end6

if.end6:                                          ; preds = %do.end, %timespec64_to_ns.exit82.if.end6_crit_edge, %if.then
  %12 = ptrtoint ptr %wall_time to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %wall_time, align 8
  %14 = ptrtoint ptr %boot_offset to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %boot_offset, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %15)
  %cmp.i83 = icmp slt i64 %13, %15
  br i1 %cmp.i83, label %if.end6.if.then9_crit_edge, label %if.end.i84

if.end6.if.then9_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

if.end.i84:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %15)
  %cmp4.i = icmp sgt i64 %13, %15
  br i1 %cmp4.i, label %if.end.i84.if.end13_crit_edge, label %timespec64_compare.exit

if.end.i84.if.end13_crit_edge:                    ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

timespec64_compare.exit:                          ; preds = %if.end.i84
  %tv_nsec.i85 = getelementptr inbounds %struct.timespec64, ptr %wall_time, i32 0, i32 1
  %16 = ptrtoint ptr %tv_nsec.i85 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tv_nsec.i85, align 8
  %tv_nsec7.i = getelementptr inbounds %struct.timespec64, ptr %boot_offset, i32 0, i32 1
  %18 = ptrtoint ptr %tv_nsec7.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tv_nsec7.i, align 8
  %sub.i = sub i32 %17, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp8 = icmp slt i32 %sub.i, 0
  br i1 %cmp8, label %timespec64_compare.exit.if.then9_crit_edge, label %timespec64_compare.exit.if.end13_crit_edge

timespec64_compare.exit.if.end13_crit_edge:       ; preds = %timespec64_compare.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

timespec64_compare.exit.if.then9_crit_edge:       ; preds = %timespec64_compare.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

if.then9:                                         ; preds = %timespec64_compare.exit.if.then9_crit_edge, %if.end6.if.then9_crit_edge
  %20 = ptrtoint ptr %boot_offset to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 0, ptr %boot_offset, align 8
  %.compoundliteral10.sroa.2.0.boot_offset.sroa_idx = getelementptr inbounds i8, ptr %boot_offset, i32 8
  %21 = ptrtoint ptr %.compoundliteral10.sroa.2.0.boot_offset.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %.compoundliteral10.sroa.2.0.boot_offset.sroa_idx, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %timespec64_compare.exit.if.end13_crit_edge, %if.end.i84.if.end13_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp14) #10
  %22 = ptrtoint ptr %boot_offset to i32
  call void @__asan_load8_noabort(i32 %22)
  %.fca.0.load = load i64, ptr %boot_offset, align 8
  %.fca.1.gep = getelementptr inbounds [2 x i64], ptr %boot_offset, i32 0, i32 1
  %23 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load8_noabort(i32 %23)
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  %.fca.1.gep68 = getelementptr inbounds [2 x i64], ptr %wall_time, i32 0, i32 1
  %24 = ptrtoint ptr %.fca.1.gep68 to i32
  call void @__asan_load8_noabort(i32 %24)
  %.fca.1.load69 = load i64, ptr %.fca.1.gep68, align 8
  %lhs.sroa.2.8.extract.shift.i = lshr i64 %.fca.1.load, 32
  %lhs.sroa.2.8.extract.trunc.i = trunc i64 %lhs.sroa.2.8.extract.shift.i to i32
  %rhs.sroa.2.8.extract.shift.i = lshr i64 %.fca.1.load69, 32
  %rhs.sroa.2.8.extract.trunc.i = trunc i64 %rhs.sroa.2.8.extract.shift.i to i32
  %25 = call ptr @memset(ptr %tmp14, i32 255, i32 16)
  %sub.i87 = sub i64 %.fca.0.load, %13
  %sub3.i = sub i32 %lhs.sroa.2.8.extract.trunc.i, %rhs.sroa.2.8.extract.trunc.i
  %conv.i88 = sext i32 %sub3.i to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %tmp14, i64 noundef %sub.i87, i64 noundef %conv.i88) #10
  %26 = ptrtoint ptr %tmp14 to i32
  call void @__asan_load8_noabort(i32 %26)
  %wall_to_mono.sroa.0.0.copyload61 = load i64, ptr %tmp14, align 8
  %wall_to_mono.sroa.5.0.tmp14.sroa_idx = getelementptr inbounds i8, ptr %tmp14, i32 8
  %27 = ptrtoint ptr %wall_to_mono.sroa.5.0.tmp14.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %27)
  %wall_to_mono.sroa.5.0.copyload62 = load i64, ptr %wall_to_mono.sroa.5.0.tmp14.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp14) #10
  %call18 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @timekeeper_lock) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %28 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i, label %if.end13.__seqprop_raw_spinlock_assert.exit_crit_edge, label %land.rhs.i

if.end13.__seqprop_raw_spinlock_assert.exit_crit_edge: ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_raw_spinlock_assert.exit

land.rhs.i:                                       ; preds = %if.end13
  %29 = load ptr, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 0, i32 1), align 32
  %dep_map.i = getelementptr inbounds %struct.raw_spinlock, ptr %29, i32 0, i32 4
  %call.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.__seqprop_raw_spinlock_assert.exit_crit_edge, !prof !172

land.rhs.i.__seqprop_raw_spinlock_assert.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_raw_spinlock_assert.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 276, i32 noundef 9, ptr noundef null) #10
  br label %__seqprop_raw_spinlock_assert.exit

__seqprop_raw_spinlock_assert.exit:               ; preds = %do.end.i, %land.rhs.i.__seqprop_raw_spinlock_assert.exit_crit_edge, %if.end13.__seqprop_raw_spinlock_assert.exit_crit_edge
  %30 = load i32, ptr @tk_core, align 128
  %inc.i.i.i = add i32 %30, 1
  store i32 %inc.i.i.i, ptr @tk_core, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !208
  %31 = call ptr @llvm.returnaddress(i32 0) #10
  %32 = ptrtoint ptr %31 to i32
  call void @lock_acquire(ptr noundef getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 0, i32 0, i32 1), i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %32) #10
  call void @ntp_init() #10
  %call31 = call ptr @clocksource_default_clock() #15
  %enable = getelementptr inbounds %struct.clocksource, ptr %call31, i32 0, i32 14
  %33 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %enable, align 4
  %tobool.not = icmp eq ptr %34, null
  br i1 %tobool.not, label %__seqprop_raw_spinlock_assert.exit.if.end35_crit_edge, label %if.then32

__seqprop_raw_spinlock_assert.exit.if.end35_crit_edge: ; preds = %__seqprop_raw_spinlock_assert.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then32:                                        ; preds = %__seqprop_raw_spinlock_assert.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call34 = call i32 %34(ptr noundef %call31) #10
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %__seqprop_raw_spinlock_assert.exit.if.end35_crit_edge
  call fastcc void @tk_setup_internals(ptr noundef %call31)
  %35 = ptrtoint ptr %wall_time to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %wall_time, align 8
  store i64 %36, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 2), align 8
  %37 = ptrtoint ptr %.fca.1.gep68 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %.fca.1.gep68, align 8
  %conv.i90 = sext i32 %38 to i64
  %39 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 4), align 4
  %sh_prom.i = zext i32 %39 to i64
  %shl.i = shl i64 %conv.i90, %sh_prom.i
  store i64 %shl.i, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  store i64 0, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 12), align 8
  %.fca.0.insert = insertvalue [2 x i64] poison, i64 %wall_to_mono.sroa.0.0.copyload61, 0
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert, i64 %wall_to_mono.sroa.5.0.copyload62, 1
  call fastcc void @tk_set_wall_to_mono(ptr noundef getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1), [2 x i64] %.fca.1.insert)
  call fastcc void @timekeeping_update(ptr noundef getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1), i32 noundef 6)
  call void @lock_release(ptr noundef getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 0, i32 0, i32 1), i32 noundef %32) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !212
  %40 = load i32, ptr @tk_core, align 128
  %inc.i.i = add i32 %40, 1
  store i32 %inc.i.i, ptr @tk_core, align 128
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @timekeeper_lock, i32 noundef %call18) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %boot_offset) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wall_time) #10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntp_init() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @clocksource_default_clock() local_unnamed_addr #6 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tk_setup_internals(ptr noundef %clock) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 10), align 8
  %inc = add i8 %0, 1
  store i8 %inc, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 10), align 8
  %1 = load ptr, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1), align 8
  store ptr %clock, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1), align 8
  %mask = getelementptr inbounds %struct.clocksource, ptr %clock, i32 0, i32 1
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %mask, align 8
  store i64 %3, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 1), align 16
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1), align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %call.i = tail call i64 %6(ptr noundef %4) #10
  store i64 %call.i, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 2), align 8
  store ptr %clock, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1), align 32
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %mask, align 8
  store i64 %8, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 1), align 8
  store i64 %call.i, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 2), align 16
  %shift = getelementptr inbounds %struct.clocksource, ptr %clock, i32 0, i32 3
  %9 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %shift, align 4
  %sh_prom = zext i32 %10 to i64
  %shl = shl i64 10000000, %sh_prom
  %mult = getelementptr inbounds %struct.clocksource, ptr %clock, i32 0, i32 2
  %11 = ptrtoint ptr %mult to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mult, align 8
  %div1 = lshr i32 %12, 1
  %conv = zext i32 %div1 to i64
  %add = add i64 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add)
  %cmp188 = icmp ult i64 %add, 4294967296
  br i1 %cmp188, label %if.then192, label %if.else198, !prof !165

if.then192:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv193 = trunc i64 %add to i32
  %div196 = udiv i32 %conv193, %12
  %conv197 = zext i32 %div196 to i64
  br label %if.end202

if.else198:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %13 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %12, i64 %add) #13, !srcloc !207
  %asmresult1.i = extractvalue { i64, i64 } %13, 1
  br label %if.end202

if.end202:                                        ; preds = %if.else198, %if.then192
  %tmp.0 = phi i64 [ %conv197, %if.then192 ], [ %asmresult1.i, %if.else198 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %tmp.0)
  %cmp204 = icmp eq i64 %tmp.0, 0
  %spec.select = select i1 %cmp204, i64 1, i64 %tmp.0
  store i64 %spec.select, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 14), align 128
  %14 = ptrtoint ptr %mult to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mult, align 8
  %conv209 = zext i32 %15 to i64
  %mul210 = mul i64 %spec.select, %conv209
  store i64 %mul210, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 15), align 8
  %sub212 = sub i64 %shl, %mul210
  store i64 %sub212, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 16), align 16
  %16 = load i32, ptr %mult, align 8
  %conv214 = zext i32 %16 to i64
  %mul215 = mul i64 %spec.select, %conv214
  store i64 %mul215, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 17), align 8
  %tobool216.not = icmp eq ptr %1, null
  br i1 %tobool216.not, label %if.end202.if.end243_crit_edge, label %if.then217

if.end202.if.end243_crit_edge:                    ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end243

if.then217:                                       ; preds = %if.end202
  %17 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %shift, align 4
  %shift219 = getelementptr inbounds %struct.clocksource, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %shift219 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %shift219, align 4
  %sub220 = sub i32 %18, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub220)
  %cmp221 = icmp slt i32 %sub220, 0
  br i1 %cmp221, label %if.then223, label %if.else233

if.then223:                                       ; preds = %if.then217
  call void @__sanitizer_cov_trace_pc() #12
  %sub224 = sub i32 0, %sub220
  %21 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  %sh_prom226 = zext i32 %sub224 to i64
  %shr227 = lshr i64 %21, %sh_prom226
  store i64 %shr227, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  %22 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 5), align 128
  %shr232 = lshr i64 %22, %sh_prom226
  br label %if.end242

if.else233:                                       ; preds = %if.then217
  call void @__sanitizer_cov_trace_pc() #12
  %23 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  %sh_prom236 = zext i32 %sub220 to i64
  %shl237 = shl i64 %23, %sh_prom236
  store i64 %shl237, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  %24 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 5), align 128
  %shl241 = shl i64 %24, %sh_prom236
  br label %if.end242

if.end242:                                        ; preds = %if.else233, %if.then223
  %storemerge = phi i64 [ %shr232, %if.then223 ], [ %shl241, %if.else233 ]
  store i64 %storemerge, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 5), align 128
  br label %if.end243

if.end243:                                        ; preds = %if.end242, %if.end202.if.end243_crit_edge
  %25 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %shift, align 4
  store i32 %26, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 4), align 4
  %27 = load i32, ptr %shift, align 4
  store i32 %27, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 4), align 4
  store i64 0, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 19), align 8
  %28 = load i32, ptr %shift, align 4
  %sub251 = sub i32 32, %28
  store i32 %sub251, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 20), align 16
  %sh_prom253 = zext i32 %sub251 to i64
  %shl254 = shl i64 %shl, %sh_prom253
  store i64 %shl254, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 18), align 32
  %29 = ptrtoint ptr %mult to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mult, align 8
  store i32 %30, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 3), align 64
  %31 = load i32, ptr %mult, align 8
  store i32 %31, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 3), align 8
  store i32 0, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 21), align 4
  store i32 0, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 22), align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @timekeeping_rtc_skipresume() local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %.b1 = load i1, ptr @suspend_timing_needed, align 1
  %lnot = xor i1 %.b1, true
  ret i1 %lnot
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @timekeeping_rtc_skipsuspend() local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %.b1 = load i1, ptr @persistent_clock_exists, align 1
  ret i1 %.b1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @timekeeping_inject_sleeptime64(ptr noundef %delta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @timekeeper_lock) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.__seqprop_raw_spinlock_assert.exit_crit_edge, label %land.rhs.i

entry.__seqprop_raw_spinlock_assert.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_raw_spinlock_assert.exit

land.rhs.i:                                       ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 0, i32 1), align 32
  %dep_map.i = getelementptr inbounds %struct.raw_spinlock, ptr %1, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.__seqprop_raw_spinlock_assert.exit_crit_edge, !prof !172

land.rhs.i.__seqprop_raw_spinlock_assert.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_raw_spinlock_assert.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 276, i32 noundef 9, ptr noundef null) #10
  br label %__seqprop_raw_spinlock_assert.exit

__seqprop_raw_spinlock_assert.exit:               ; preds = %do.end.i, %land.rhs.i.__seqprop_raw_spinlock_assert.exit_crit_edge, %entry.__seqprop_raw_spinlock_assert.exit_crit_edge
  %2 = load i32, ptr @tk_core, align 128
  %inc.i.i.i = add i32 %2, 1
  store i32 %inc.i.i.i, ptr @tk_core, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !208
  %3 = tail call ptr @llvm.returnaddress(i32 0) #10
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 0, i32 0, i32 1), i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %4) #10
  store i1 false, ptr @suspend_timing_needed, align 1
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1), align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %call.i.i29 = tail call i64 %7(ptr noundef %5) #10
  %8 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 2), align 8
  %9 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 1), align 16
  %sub.i.i = sub i64 %call.i.i29, %8
  %and.i.i = and i64 %sub.i.i, %9
  store i64 %call.i.i29, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 2), align 8
  store i64 %call.i.i29, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 2), align 16
  %10 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 3), align 64
  %conv.i = zext i32 %10 to i64
  %mul.i = mul i64 %and.i.i, %conv.i
  %11 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  %add.i = add i64 %mul.i, %11
  store i64 %add.i, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  %12 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 3), align 8
  %conv11.i = zext i32 %12 to i64
  %mul12.i = mul i64 %and.i.i, %conv11.i
  %13 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 5), align 128
  %add15.i = add i64 %mul12.i, %13
  store i64 %add15.i, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 5), align 128
  %14 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 4), align 4
  %sh_prom.i.i = zext i32 %14 to i64
  %shl.i.i = shl i64 1000000000, %sh_prom.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %shl.i.i)
  %cmp.not3.i.i = icmp ult i64 %add.i, %shl.i.i
  br i1 %cmp.not3.i.i, label %__seqprop_raw_spinlock_assert.exit.while.cond8.preheader.i.i_crit_edge, label %while.body.preheader.i.i

__seqprop_raw_spinlock_assert.exit.while.cond8.preheader.i.i_crit_edge: ; preds = %__seqprop_raw_spinlock_assert.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond8.preheader.i.i

while.body.preheader.i.i:                         ; preds = %__seqprop_raw_spinlock_assert.exit
  %.promoted2.i.i = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 2), align 8
  br label %while.body.i.i

while.cond.while.cond8.preheader_crit_edge.i.i:   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i64 %sub.i1.i, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  store i64 %inc.i.i, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 2), align 8
  br label %while.cond8.preheader.i.i

while.cond8.preheader.i.i:                        ; preds = %while.cond.while.cond8.preheader_crit_edge.i.i, %__seqprop_raw_spinlock_assert.exit.while.cond8.preheader.i.i_crit_edge
  %15 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 4), align 4
  %sh_prom12.i.i = zext i32 %15 to i64
  %shl13.i.i = shl i64 1000000000, %sh_prom12.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add15.i, i64 %shl13.i.i)
  %cmp14.not9.i.i = icmp ult i64 %add15.i, %shl13.i.i
  br i1 %cmp14.not9.i.i, label %while.cond8.preheader.i.i.timekeeping_forward_now.exit_crit_edge, label %while.body15.preheader.i.i

while.cond8.preheader.i.i.timekeeping_forward_now.exit_crit_edge: ; preds = %while.cond8.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %timekeeping_forward_now.exit

while.body15.preheader.i.i:                       ; preds = %while.cond8.preheader.i.i
  %.promoted8.i.i = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 12), align 8
  br label %while.body15.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.preheader.i.i
  %sub14.i.i = phi i64 [ %sub.i1.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %add.i, %while.body.preheader.i.i ]
  %16 = phi i64 [ %inc.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %.promoted2.i.i, %while.body.preheader.i.i ]
  %sub.i1.i = sub i64 %sub14.i.i, %shl.i.i
  %inc.i.i = add i64 %16, 1
  %cmp.not.i.i = icmp ult i64 %sub.i1.i, %shl.i.i
  br i1 %cmp.not.i.i, label %while.cond.while.cond8.preheader_crit_edge.i.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

while.body15.i.i:                                 ; preds = %while.body15.i.i.while.body15.i.i_crit_edge, %while.body15.preheader.i.i
  %17 = phi i64 [ %sub22.i.i, %while.body15.i.i.while.body15.i.i_crit_edge ], [ %add15.i, %while.body15.preheader.i.i ]
  %18 = phi i64 [ %inc23.i.i, %while.body15.i.i.while.body15.i.i_crit_edge ], [ %.promoted8.i.i, %while.body15.preheader.i.i ]
  %sub22.i.i = sub i64 %17, %shl13.i.i
  %inc23.i.i = add i64 %18, 1
  %cmp14.not.i.i = icmp ult i64 %sub22.i.i, %shl13.i.i
  br i1 %cmp14.not.i.i, label %while.cond8.while.end24_crit_edge.i.i, label %while.body15.i.i.while.body15.i.i_crit_edge

while.body15.i.i.while.body15.i.i_crit_edge:      ; preds = %while.body15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body15.i.i

while.cond8.while.end24_crit_edge.i.i:            ; preds = %while.body15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i64 %sub22.i.i, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 5), align 128
  store i64 %inc23.i.i, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 12), align 8
  br label %timekeeping_forward_now.exit

timekeeping_forward_now.exit:                     ; preds = %while.cond8.while.end24_crit_edge.i.i, %while.cond8.preheader.i.i.timekeeping_forward_now.exit_crit_edge
  tail call fastcc void @__timekeeping_inject_sleeptime(ptr noundef %delta)
  tail call fastcc void @timekeeping_update(ptr noundef getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1), i32 noundef 7)
  tail call void @lock_release(ptr noundef getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 0, i32 0, i32 1), i32 noundef %4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !212
  %19 = load i32, ptr @tk_core, align 128
  %inc.i.i30 = add i32 %19, 1
  store i32 %inc.i.i30, ptr @tk_core, align 128
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @timekeeper_lock, i32 noundef %call) #10
  tail call void @clock_was_set(i32 noundef 238) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__timekeeping_inject_sleeptime(ptr noundef %delta) unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca %struct.timespec64, align 8
  %agg.tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %delta to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %delta, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp.i.i = icmp slt i64 %1, 0
  br i1 %cmp.i.i, label %entry.do.end_crit_edge, label %timespec64_valid_strict.exit

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

timespec64_valid_strict.exit:                     ; preds = %entry
  %tv_nsec.i.i = getelementptr inbounds %struct.timespec64, ptr %delta, i32 0, i32 1
  %2 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tv_nsec.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000000, i32 %3)
  %cmp1.i.i = icmp ult i32 %3, 1000000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372036, i64 %1)
  %cmp.i = icmp ult i64 %1, 9223372036
  %spec.select.i = select i1 %cmp1.i.i, i1 %cmp.i, i1 false
  br i1 %spec.select.i, label %if.end, label %timespec64_valid_strict.exit.do.end_crit_edge

timespec64_valid_strict.exit.do.end_crit_edge:    ; preds = %timespec64_valid_strict.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %timespec64_valid_strict.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %call1 = tail call i32 (ptr, ...) @_printk_deferred(ptr noundef nonnull @.str.8) #15
  br label %return

if.end:                                           ; preds = %timespec64_valid_strict.exit
  %4 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 2), align 8
  %add.i = add i64 %4, %1
  store i64 %add.i, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 2), align 8
  %5 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tv_nsec.i.i, align 8
  %conv.i = sext i32 %6 to i64
  %7 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 4), align 4
  %sh_prom.i = zext i32 %7 to i64
  %shl.i = shl i64 %conv.i, %sh_prom.i
  %8 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  %add2.i = add i64 %shl.i, %8
  store i64 %add2.i, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  %shl.i.i = shl i64 1000000000, %sh_prom.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i, i64 %shl.i.i)
  %cmp.not3.i.i = icmp ult i64 %add2.i, %shl.i.i
  br i1 %cmp.not3.i.i, label %if.end.while.cond8.preheader.i.i_crit_edge, label %if.end.while.body.i.i_crit_edge

if.end.while.body.i.i_crit_edge:                  ; preds = %if.end
  br label %while.body.i.i

if.end.while.cond8.preheader.i.i_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond8.preheader.i.i

while.cond.while.cond8.preheader_crit_edge.i.i:   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i64 %sub.i.i, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  store i64 %inc.i.i, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 2), align 8
  br label %while.cond8.preheader.i.i

while.cond8.preheader.i.i:                        ; preds = %while.cond.while.cond8.preheader_crit_edge.i.i, %if.end.while.cond8.preheader.i.i_crit_edge
  %9 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 4), align 4
  %sh_prom12.i.i = zext i32 %9 to i64
  %shl13.i.i = shl i64 1000000000, %sh_prom12.i.i
  %.promoted7.i.i = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 5), align 128
  call void @__sanitizer_cov_trace_cmp8(i64 %.promoted7.i.i, i64 %shl13.i.i)
  %cmp14.not9.i.i = icmp ult i64 %.promoted7.i.i, %shl13.i.i
  br i1 %cmp14.not9.i.i, label %while.cond8.preheader.i.i.tk_xtime_add.exit_crit_edge, label %while.body15.preheader.i.i

while.cond8.preheader.i.i.tk_xtime_add.exit_crit_edge: ; preds = %while.cond8.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tk_xtime_add.exit

while.body15.preheader.i.i:                       ; preds = %while.cond8.preheader.i.i
  %.promoted8.i.i = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 12), align 8
  br label %while.body15.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.end.while.body.i.i_crit_edge
  %sub14.i.i = phi i64 [ %sub.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %add2.i, %if.end.while.body.i.i_crit_edge ]
  %10 = phi i64 [ %inc.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %add.i, %if.end.while.body.i.i_crit_edge ]
  %sub.i.i = sub i64 %sub14.i.i, %shl.i.i
  %inc.i.i = add i64 %10, 1
  %cmp.not.i.i = icmp ult i64 %sub.i.i, %shl.i.i
  br i1 %cmp.not.i.i, label %while.cond.while.cond8.preheader_crit_edge.i.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

while.body15.i.i:                                 ; preds = %while.body15.i.i.while.body15.i.i_crit_edge, %while.body15.preheader.i.i
  %11 = phi i64 [ %sub22.i.i, %while.body15.i.i.while.body15.i.i_crit_edge ], [ %.promoted7.i.i, %while.body15.preheader.i.i ]
  %12 = phi i64 [ %inc23.i.i, %while.body15.i.i.while.body15.i.i_crit_edge ], [ %.promoted8.i.i, %while.body15.preheader.i.i ]
  %sub22.i.i = sub i64 %11, %shl13.i.i
  %inc23.i.i = add i64 %12, 1
  %cmp14.not.i.i = icmp ult i64 %sub22.i.i, %shl13.i.i
  br i1 %cmp14.not.i.i, label %while.cond8.while.end24_crit_edge.i.i, label %while.body15.i.i.while.body15.i.i_crit_edge

while.body15.i.i.while.body15.i.i_crit_edge:      ; preds = %while.body15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body15.i.i

while.cond8.while.end24_crit_edge.i.i:            ; preds = %while.body15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i64 %sub22.i.i, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 5), align 128
  store i64 %inc23.i.i, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 12), align 8
  br label %tk_xtime_add.exit

tk_xtime_add.exit:                                ; preds = %while.cond8.while.end24_crit_edge.i.i, %while.cond8.preheader.i.i.tk_xtime_add.exit_crit_edge
  %.unpack = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 4), align 8
  %.unpack1 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 4, i32 1), align 16
  %13 = ptrtoint ptr %delta to i32
  call void @__asan_load8_noabort(i32 %13)
  %.unpack2 = load i64, ptr %delta, align 8
  %14 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %.unpack4 = load i64, ptr %tv_nsec.i.i, align 8
  %lhs.sroa.2.8.extract.shift.i = lshr i64 %.unpack1, 32
  %lhs.sroa.2.8.extract.trunc.i = trunc i64 %lhs.sroa.2.8.extract.shift.i to i32
  %rhs.sroa.2.8.extract.shift.i = lshr i64 %.unpack4, 32
  %rhs.sroa.2.8.extract.trunc.i = trunc i64 %rhs.sroa.2.8.extract.shift.i to i32
  %15 = call ptr @memset(ptr %agg.tmp, i32 255, i32 16)
  %sub.i = sub i64 %.unpack, %.unpack2
  %sub3.i = sub i32 %lhs.sroa.2.8.extract.trunc.i, %rhs.sroa.2.8.extract.trunc.i
  %conv.i8 = sext i32 %sub3.i to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %agg.tmp, i64 noundef %sub.i, i64 noundef %conv.i8) #10
  %16 = ptrtoint ptr %agg.tmp to i32
  call void @__asan_load8_noabort(i32 %16)
  %.fca.0.load = load i64, ptr %agg.tmp, align 8
  %.fca.0.insert = insertvalue [2 x i64] poison, i64 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds [2 x i64], ptr %agg.tmp, i32 0, i32 1
  %17 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load8_noabort(i32 %17)
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue [2 x i64] %.fca.0.insert, i64 %.fca.1.load, 1
  call fastcc void @tk_set_wall_to_mono(ptr noundef getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1), [2 x i64] %.fca.1.insert)
  %18 = ptrtoint ptr %delta to i32
  call void @__asan_load8_noabort(i32 %18)
  %.unpack5 = load i64, ptr %delta, align 8
  %19 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %.unpack7 = load i64, ptr %tv_nsec.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %.unpack5)
  %cmp.i.i9 = icmp sgt i64 %.unpack5, 9223372035
  %ts.sroa.2.8.extract.shift.i = lshr i64 %.unpack7, 32
  %mul.i.i = mul i64 %.unpack5, 1000000000
  %add.i.i = add i64 %ts.sroa.2.8.extract.shift.i, %mul.i.i
  %retval.0.i.i = select i1 %cmp.i.i9, i64 9223372036854775807, i64 %add.i.i, !prof !172
  %20 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 6), align 64
  %add.i10 = add i64 %retval.0.i.i, %20
  store i64 %add.i10, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 6), align 64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #10
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, i64 noundef %add.i10) #10
  %21 = call ptr @memcpy(ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 13), ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #10
  call void @tk_debug_account_sleep_time(ptr noundef %delta) #10
  br label %return

return:                                           ; preds = %tk_xtime_add.exit, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @timekeeping_resume() #0 align 64 {
entry:
  %ts_new = alloca %struct.timespec64, align 8
  %ts_delta = alloca %struct.timespec64, align 8
  %tmp21 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1), align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts_new) #10
  %1 = call ptr @memset(ptr %ts_new, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts_delta) #10
  %2 = call ptr @memset(ptr %ts_delta, i32 255, i32 16)
  call void @read_persistent_clock64(ptr noundef nonnull %ts_new)
  call void @clockevents_resume() #10
  call void @clocksource_resume() #10
  %call = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @timekeeper_lock) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %3 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %entry.__seqprop_raw_spinlock_assert.exit_crit_edge, label %land.rhs.i

entry.__seqprop_raw_spinlock_assert.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_raw_spinlock_assert.exit

land.rhs.i:                                       ; preds = %entry
  %4 = load ptr, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 0, i32 1), align 32
  %dep_map.i = getelementptr inbounds %struct.raw_spinlock, ptr %4, i32 0, i32 4
  %call.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.__seqprop_raw_spinlock_assert.exit_crit_edge, !prof !172

land.rhs.i.__seqprop_raw_spinlock_assert.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_raw_spinlock_assert.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 276, i32 noundef 9, ptr noundef null) #10
  br label %__seqprop_raw_spinlock_assert.exit

__seqprop_raw_spinlock_assert.exit:               ; preds = %do.end.i, %land.rhs.i.__seqprop_raw_spinlock_assert.exit_crit_edge, %entry.__seqprop_raw_spinlock_assert.exit_crit_edge
  %5 = load i32, ptr @tk_core, align 128
  %inc.i.i.i = add i32 %5, 1
  store i32 %inc.i.i.i, ptr @tk_core, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !208
  %6 = call ptr @llvm.returnaddress(i32 0) #10
  %7 = ptrtoint ptr %6 to i32
  call void @lock_acquire(ptr noundef getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 0, i32 0, i32 1), i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %7) #10
  %8 = load volatile ptr, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1), align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %call.i = call i64 %10(ptr noundef %8) #10
  %call12 = call i64 @clocksource_stop_suspend_timing(ptr noundef %0, i64 noundef %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call12)
  %cmp13.not = icmp eq i64 %call12, 0
  br i1 %cmp13.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %__seqprop_raw_spinlock_assert.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %ts_delta, i64 noundef %call12) #10
  br label %if.then24

if.else:                                          ; preds = %__seqprop_raw_spinlock_assert.exit
  %11 = ptrtoint ptr %ts_new to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %ts_new, align 8
  %13 = load i64, ptr @timekeeping_suspend_time, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %13)
  %cmp.i = icmp slt i64 %12, %13
  br i1 %cmp.i, label %if.else.if.end25_crit_edge, label %if.end.i

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %13)
  %cmp4.i = icmp sgt i64 %12, %13
  br i1 %cmp4.i, label %if.end.i.if.then20_crit_edge, label %timespec64_compare.exit

if.end.i.if.then20_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

timespec64_compare.exit:                          ; preds = %if.end.i
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts_new, i32 0, i32 1
  %14 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tv_nsec.i, align 8
  %16 = load i32, ptr getelementptr inbounds (%struct.timespec64, ptr @timekeeping_suspend_time, i32 0, i32 1), align 8
  %sub.i = sub i32 %15, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp18 = icmp sgt i32 %sub.i, 0
  br i1 %cmp18, label %timespec64_compare.exit.if.then20_crit_edge, label %timespec64_compare.exit.if.end25_crit_edge

timespec64_compare.exit.if.end25_crit_edge:       ; preds = %timespec64_compare.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

timespec64_compare.exit.if.then20_crit_edge:      ; preds = %timespec64_compare.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

if.then20:                                        ; preds = %timespec64_compare.exit.if.then20_crit_edge, %if.end.i.if.then20_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp21) #10
  %.fca.1.gep = getelementptr inbounds [2 x i64], ptr %ts_new, i32 0, i32 1
  %17 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load8_noabort(i32 %17)
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  %.unpack55 = load i64, ptr getelementptr inbounds (%struct.timespec64, ptr @timekeeping_suspend_time, i32 0, i32 1), align 8
  %lhs.sroa.2.8.extract.shift.i = lshr i64 %.fca.1.load, 32
  %lhs.sroa.2.8.extract.trunc.i = trunc i64 %lhs.sroa.2.8.extract.shift.i to i32
  %rhs.sroa.2.8.extract.shift.i = lshr i64 %.unpack55, 32
  %rhs.sroa.2.8.extract.trunc.i = trunc i64 %rhs.sroa.2.8.extract.shift.i to i32
  %18 = call ptr @memset(ptr %tmp21, i32 255, i32 16)
  %sub.i57 = sub i64 %12, %13
  %sub3.i = sub i32 %lhs.sroa.2.8.extract.trunc.i, %rhs.sroa.2.8.extract.trunc.i
  %conv.i = sext i32 %sub3.i to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %tmp21, i64 noundef %sub.i57, i64 noundef %conv.i) #10
  %19 = call ptr @memcpy(ptr %ts_delta, ptr %tmp21, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp21) #10
  br label %if.then24

if.then24:                                        ; preds = %if.then20, %if.then15
  store i1 false, ptr @suspend_timing_needed, align 1
  call fastcc void @__timekeeping_inject_sleeptime(ptr noundef nonnull %ts_delta)
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %timespec64_compare.exit.if.end25_crit_edge, %if.else.if.end25_crit_edge
  store i64 %call.i, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 2), align 8
  store i64 %call.i, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 2), align 16
  store i64 0, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 19), align 8
  store i32 0, ptr @timekeeping_suspended, align 4
  call fastcc void @timekeeping_update(ptr noundef getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1), i32 noundef 6)
  call void @lock_release(ptr noundef getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 0, i32 0, i32 1), i32 noundef %7) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !212
  %20 = load i32, ptr @tk_core, align 128
  %inc.i.i = add i32 %20, 1
  store i32 %inc.i.i, ptr @tk_core, align 128
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @timekeeper_lock, i32 noundef %call) #10
  call void @touch_softlockup_watchdog() #10
  call void @tick_resume() #10
  call void @timerfd_resume() #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts_delta) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts_new) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_resume() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clocksource_resume() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clocksource_stop_suspend_timing(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_softlockup_watchdog() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_resume() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @timerfd_resume() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @timekeeping_suspend() #0 align 64 {
entry:
  %tmp15 = alloca %struct.timespec64, align 8
  %tmp16 = alloca %struct.timespec64, align 8
  %tmp23 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @read_persistent_clock64(ptr noundef nonnull @timekeeping_suspend_time)
  %0 = load i64, ptr @timekeeping_suspend_time, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %0)
  %tobool.not = icmp eq i64 %0, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr getelementptr inbounds (%struct.timespec64, ptr @timekeeping_suspend_time, i32 0, i32 1), align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  store i1 true, ptr @persistent_clock_exists, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  store i1 true, ptr @suspend_timing_needed, align 1
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @timekeeper_lock) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %if.end.__seqprop_raw_spinlock_assert.exit_crit_edge, label %land.rhs.i

if.end.__seqprop_raw_spinlock_assert.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_raw_spinlock_assert.exit

land.rhs.i:                                       ; preds = %if.end
  %3 = load ptr, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 0, i32 1), align 32
  %dep_map.i = getelementptr inbounds %struct.raw_spinlock, ptr %3, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.__seqprop_raw_spinlock_assert.exit_crit_edge, !prof !172

land.rhs.i.__seqprop_raw_spinlock_assert.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_raw_spinlock_assert.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 276, i32 noundef 9, ptr noundef null) #10
  br label %__seqprop_raw_spinlock_assert.exit

__seqprop_raw_spinlock_assert.exit:               ; preds = %do.end.i, %land.rhs.i.__seqprop_raw_spinlock_assert.exit_crit_edge, %if.end.__seqprop_raw_spinlock_assert.exit_crit_edge
  %4 = load i32, ptr @tk_core, align 128
  %inc.i.i.i = add i32 %4, 1
  store i32 %inc.i.i.i, ptr @tk_core, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !208
  %5 = tail call ptr @llvm.returnaddress(i32 0) #10
  %6 = ptrtoint ptr %5 to i32
  tail call void @lock_acquire(ptr noundef getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 0, i32 0, i32 1), i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %6) #10
  %7 = load volatile ptr, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1), align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %call.i.i75 = tail call i64 %9(ptr noundef %7) #10
  %10 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 2), align 8
  %11 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 1), align 16
  %sub.i.i = sub i64 %call.i.i75, %10
  %and.i.i = and i64 %sub.i.i, %11
  store i64 %call.i.i75, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 2), align 8
  store i64 %call.i.i75, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 2), align 16
  %12 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 3), align 64
  %conv.i = zext i32 %12 to i64
  %mul.i = mul i64 %and.i.i, %conv.i
  %13 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  %add.i = add i64 %mul.i, %13
  store i64 %add.i, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  %14 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 3), align 8
  %conv11.i = zext i32 %14 to i64
  %mul12.i = mul i64 %and.i.i, %conv11.i
  %15 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 5), align 128
  %add15.i = add i64 %mul12.i, %15
  store i64 %add15.i, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 5), align 128
  %16 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 4), align 4
  %sh_prom.i.i = zext i32 %16 to i64
  %shl.i.i = shl i64 1000000000, %sh_prom.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %shl.i.i)
  %cmp.not3.i.i = icmp ult i64 %add.i, %shl.i.i
  br i1 %cmp.not3.i.i, label %__seqprop_raw_spinlock_assert.exit.while.cond8.preheader.i.i_crit_edge, label %while.body.preheader.i.i

__seqprop_raw_spinlock_assert.exit.while.cond8.preheader.i.i_crit_edge: ; preds = %__seqprop_raw_spinlock_assert.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond8.preheader.i.i

while.body.preheader.i.i:                         ; preds = %__seqprop_raw_spinlock_assert.exit
  %.promoted2.i.i = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 2), align 8
  br label %while.body.i.i

while.cond.while.cond8.preheader_crit_edge.i.i:   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i64 %sub.i1.i, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  store i64 %inc.i.i, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 2), align 8
  br label %while.cond8.preheader.i.i

while.cond8.preheader.i.i:                        ; preds = %while.cond.while.cond8.preheader_crit_edge.i.i, %__seqprop_raw_spinlock_assert.exit.while.cond8.preheader.i.i_crit_edge
  %17 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 4), align 4
  %sh_prom12.i.i = zext i32 %17 to i64
  %shl13.i.i = shl i64 1000000000, %sh_prom12.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add15.i, i64 %shl13.i.i)
  %cmp14.not9.i.i = icmp ult i64 %add15.i, %shl13.i.i
  br i1 %cmp14.not9.i.i, label %while.cond8.preheader.i.i.timekeeping_forward_now.exit_crit_edge, label %while.body15.preheader.i.i

while.cond8.preheader.i.i.timekeeping_forward_now.exit_crit_edge: ; preds = %while.cond8.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %timekeeping_forward_now.exit

while.body15.preheader.i.i:                       ; preds = %while.cond8.preheader.i.i
  %.promoted8.i.i = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 12), align 8
  br label %while.body15.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.preheader.i.i
  %sub14.i.i = phi i64 [ %sub.i1.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %add.i, %while.body.preheader.i.i ]
  %18 = phi i64 [ %inc.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %.promoted2.i.i, %while.body.preheader.i.i ]
  %sub.i1.i = sub i64 %sub14.i.i, %shl.i.i
  %inc.i.i = add i64 %18, 1
  %cmp.not.i.i = icmp ult i64 %sub.i1.i, %shl.i.i
  br i1 %cmp.not.i.i, label %while.cond.while.cond8.preheader_crit_edge.i.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

while.body15.i.i:                                 ; preds = %while.body15.i.i.while.body15.i.i_crit_edge, %while.body15.preheader.i.i
  %19 = phi i64 [ %sub22.i.i, %while.body15.i.i.while.body15.i.i_crit_edge ], [ %add15.i, %while.body15.preheader.i.i ]
  %20 = phi i64 [ %inc23.i.i, %while.body15.i.i.while.body15.i.i_crit_edge ], [ %.promoted8.i.i, %while.body15.preheader.i.i ]
  %sub22.i.i = sub i64 %19, %shl13.i.i
  %inc23.i.i = add i64 %20, 1
  %cmp14.not.i.i = icmp ult i64 %sub22.i.i, %shl13.i.i
  br i1 %cmp14.not.i.i, label %while.cond8.while.end24_crit_edge.i.i, label %while.body15.i.i.while.body15.i.i_crit_edge

while.body15.i.i.while.body15.i.i_crit_edge:      ; preds = %while.body15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body15.i.i

while.cond8.while.end24_crit_edge.i.i:            ; preds = %while.body15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i64 %sub22.i.i, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1, i32 5), align 128
  store i64 %inc23.i.i, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 12), align 8
  br label %timekeeping_forward_now.exit

timekeeping_forward_now.exit:                     ; preds = %while.cond8.while.end24_crit_edge.i.i, %while.cond8.preheader.i.i.timekeeping_forward_now.exit_crit_edge
  store i32 1, ptr @timekeeping_suspended, align 4
  %21 = load ptr, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1), align 8
  tail call void @clocksource_start_suspend_timing(ptr noundef %21, i64 noundef %call.i.i75) #10
  %.b69 = load i1, ptr @persistent_clock_exists, align 1
  br i1 %.b69, label %if.then14, label %timekeeping_forward_now.exit.if.end25_crit_edge

timekeeping_forward_now.exit.if.end25_crit_edge:  ; preds = %timekeeping_forward_now.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then14:                                        ; preds = %timekeeping_forward_now.exit
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp15) #10
  %22 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 2), align 8, !noalias !227
  %23 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8, !noalias !227
  %24 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 4), align 4, !noalias !227
  %sh_prom.i = zext i32 %24 to i64
  %shr.i = lshr i64 %23, %sh_prom.i
  %.unpack = load i64, ptr @timekeeping_suspend_time, align 8
  %.unpack70 = load i64, ptr getelementptr inbounds (%struct.timespec64, ptr @timekeeping_suspend_time, i32 0, i32 1), align 8
  %lhs.sroa.2.8.extract.trunc.i = trunc i64 %shr.i to i32
  %rhs.sroa.2.8.extract.shift.i = lshr i64 %.unpack70, 32
  %rhs.sroa.2.8.extract.trunc.i = trunc i64 %rhs.sroa.2.8.extract.shift.i to i32
  %25 = call ptr @memset(ptr %tmp15, i32 255, i32 16)
  %sub.i = sub i64 %22, %.unpack
  %sub3.i = sub i32 %lhs.sroa.2.8.extract.trunc.i, %rhs.sroa.2.8.extract.trunc.i
  %conv.i77 = sext i32 %sub3.i to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %tmp15, i64 noundef %sub.i, i64 noundef %conv.i77) #10
  %26 = ptrtoint ptr %tmp15 to i32
  call void @__asan_load8_noabort(i32 %26)
  %delta.sroa.0.0.copyload60 = load i64, ptr %tmp15, align 8
  %delta.sroa.6.0.tmp15.sroa_idx = getelementptr inbounds i8, ptr %tmp15, i32 8
  %27 = ptrtoint ptr %delta.sroa.6.0.tmp15.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %27)
  %delta.sroa.6.0.copyload62 = load i64, ptr %delta.sroa.6.0.tmp15.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp15) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp16) #10
  %.unpack71 = load i64, ptr @timekeeping_suspend.old_delta.0, align 8
  %.unpack72 = load i64, ptr @timekeeping_suspend.old_delta.1, align 8
  %lhs.sroa.2.8.extract.shift.i78 = lshr i64 %delta.sroa.6.0.copyload62, 32
  %lhs.sroa.2.8.extract.trunc.i79 = trunc i64 %lhs.sroa.2.8.extract.shift.i78 to i32
  %rhs.sroa.2.8.extract.shift.i80 = lshr i64 %.unpack72, 32
  %rhs.sroa.2.8.extract.trunc.i81 = trunc i64 %rhs.sroa.2.8.extract.shift.i80 to i32
  %28 = call ptr @memset(ptr %tmp16, i32 255, i32 16)
  %sub.i82 = sub i64 %delta.sroa.0.0.copyload60, %.unpack71
  %sub3.i83 = sub i32 %lhs.sroa.2.8.extract.trunc.i79, %rhs.sroa.2.8.extract.trunc.i81
  %conv.i84 = sext i32 %sub3.i83 to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %tmp16, i64 noundef %sub.i82, i64 noundef %conv.i84) #10
  %29 = ptrtoint ptr %tmp16 to i32
  call void @__asan_load8_noabort(i32 %29)
  %delta_delta.sroa.0.0.copyload52 = load i64, ptr %tmp16, align 8
  %delta_delta.sroa.6.0.tmp16.sroa_idx = getelementptr inbounds i8, ptr %tmp16, i32 8
  %30 = ptrtoint ptr %delta_delta.sroa.6.0.tmp16.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %30)
  %delta_delta.sroa.6.0.copyload53 = load i64, ptr %delta_delta.sroa.6.0.tmp16.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp16) #10
  %31 = call i64 @llvm.abs.i64(i64 %delta_delta.sroa.0.0.copyload52, i1 false)
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %31)
  %cmp20 = icmp sgt i64 %31, 1
  br i1 %cmp20, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  store i64 %delta.sroa.0.0.copyload60, ptr @timekeeping_suspend.old_delta.0, align 8
  store i64 %delta.sroa.6.0.copyload62, ptr @timekeeping_suspend.old_delta.1, align 8
  br label %if.end25

if.else:                                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp23) #10
  %.unpack73 = load i64, ptr @timekeeping_suspend_time, align 8
  %.unpack74 = load i64, ptr getelementptr inbounds (%struct.timespec64, ptr @timekeeping_suspend_time, i32 0, i32 1), align 8
  %lhs.sroa.2.8.extract.shift.i85 = lshr i64 %.unpack74, 32
  %lhs.sroa.2.8.extract.trunc.i86 = trunc i64 %lhs.sroa.2.8.extract.shift.i85 to i32
  %rhs.sroa.2.8.extract.shift.i87 = lshr i64 %delta_delta.sroa.6.0.copyload53, 32
  %rhs.sroa.2.8.extract.trunc.i88 = trunc i64 %rhs.sroa.2.8.extract.shift.i87 to i32
  %32 = call ptr @memset(ptr %tmp23, i32 255, i32 16)
  %add.i89 = add i64 %.unpack73, %delta_delta.sroa.0.0.copyload52
  %add3.i = add i32 %lhs.sroa.2.8.extract.trunc.i86, %rhs.sroa.2.8.extract.trunc.i88
  %conv.i90 = sext i32 %add3.i to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %tmp23, i64 noundef %add.i89, i64 noundef %conv.i90) #10
  %33 = call ptr @memcpy(ptr @timekeeping_suspend_time, ptr %tmp23, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp23) #10
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then22, %timekeeping_forward_now.exit.if.end25_crit_edge
  call fastcc void @timekeeping_update(ptr noundef getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1), i32 noundef 2)
  %34 = call ptr @memcpy(ptr @halt_fast_timekeeper.tkr_dummy, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1), i32 56)
  %35 = load volatile ptr, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1), align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 8
  %call.i.i91 = call i64 %37(ptr noundef %35) #10
  store i64 %call.i.i91, ptr @cycles_at_suspend, align 8
  store ptr @dummy_clock, ptr @halt_fast_timekeeper.tkr_dummy, align 8
  %38 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 6), align 16
  %39 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 5), align 8
  %add.i92 = add i64 %39, %38
  store i64 %add.i92, ptr getelementptr inbounds (%struct.tk_read_base, ptr @halt_fast_timekeeper.tkr_dummy, i32 0, i32 7), align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !213
  %40 = load i32, ptr @tk_fast_mono, align 128
  %inc.i.i.i93 = add i32 %40, 1
  store i32 %inc.i.i.i93, ptr @tk_fast_mono, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !214
  %41 = call ptr @memcpy(ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), ptr @halt_fast_timekeeper.tkr_dummy, i32 56)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !213
  %42 = load i32, ptr @tk_fast_mono, align 128
  %inc.i7.i.i = add i32 %42, 1
  store i32 %inc.i7.i.i, ptr @tk_fast_mono, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !214
  %43 = call ptr @memcpy(ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1, i32 1), ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_mono, i32 0, i32 1), i32 56)
  %44 = call ptr @memcpy(ptr @halt_fast_timekeeper.tkr_dummy, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 1), i32 56)
  store ptr @dummy_clock, ptr @halt_fast_timekeeper.tkr_dummy, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !213
  %45 = load i32, ptr @tk_fast_raw, align 128
  %inc.i.i1.i = add i32 %45, 1
  store i32 %inc.i.i1.i, ptr @tk_fast_raw, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !214
  %46 = call ptr @memcpy(ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_raw, i32 0, i32 1), ptr @halt_fast_timekeeper.tkr_dummy, i32 56)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !213
  %47 = load i32, ptr @tk_fast_raw, align 128
  %inc.i7.i2.i = add i32 %47, 1
  store i32 %inc.i7.i2.i, ptr @tk_fast_raw, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !214
  %48 = call ptr @memcpy(ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_raw, i32 0, i32 1, i32 1), ptr getelementptr inbounds (%struct.tk_fast, ptr @tk_fast_raw, i32 0, i32 1), i32 56)
  call void @lock_release(ptr noundef getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 0, i32 0, i32 1), i32 noundef %6) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !212
  %49 = load i32, ptr @tk_core, align 128
  %inc.i.i94 = add i32 %49, 1
  store i32 %inc.i.i94, ptr @tk_core, align 128
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @timekeeper_lock, i32 noundef %call) #10
  call void @tick_suspend() #10
  call void @clocksource_suspend() #10
  call void @clockevents_suspend() #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clocksource_start_suspend_timing(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tick_suspend() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clocksource_suspend() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_suspend() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @timekeeping_init_ops() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @register_syscore_ops(ptr noundef nonnull @timekeeping_syscore_ops) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @update_wall_time() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc zeroext i1 @timekeeping_advance(i32 noundef 0)
  br i1 %call, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clock_was_set_delayed() #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @timekeeping_advance(i32 noundef %mode) unnamed_addr #0 align 64 {
entry:
  %agg.tmp.i = alloca %struct.timespec64, align 8
  %agg.tmp.i.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @timekeeper_lock) #10
  %0 = load i32, ptr @timekeeping_suspended, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %entry.do.body86_crit_edge, !prof !165

entry.do.body86_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body86

if.end:                                           ; preds = %entry
  %1 = load volatile ptr, ptr @shadow_timekeeper, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call.i = tail call i64 %3(ptr noundef %1) #10
  %4 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 0, i32 2), align 8
  %5 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 0, i32 1), align 8
  %sub.i = sub i64 %call.i, %4
  %and.i = and i64 %sub.i, %5
  %6 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 14), align 128
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i, i64 %6)
  %cmp7 = icmp ult i64 %and.i, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp9 = icmp eq i32 %mode, 0
  %or.cond = and i1 %cmp9, %cmp7
  br i1 %or.cond, label %if.end.do.body86_crit_edge, label %if.end12

if.end.do.body86_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body86

if.end12:                                         ; preds = %if.end
  %7 = load ptr, ptr @shadow_timekeeper, align 8
  %max_cycles1.i = getelementptr inbounds %struct.clocksource, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %max_cycles1.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %max_cycles1.i, align 8
  %name4.i = getelementptr inbounds %struct.clocksource, ptr %7, i32 0, i32 8
  %10 = ptrtoint ptr %name4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name4.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %and.i)
  %cmp.i = icmp ult i64 %9, %and.i
  br i1 %cmp.i, label %do.end.i132, label %if.else.i

do.end.i132:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %call.i131 = tail call i32 (ptr, ...) @_printk_deferred(ptr noundef nonnull @.str.10, i64 noundef %and.i, ptr noundef %11, i64 noundef %9) #15
  br label %if.end23.sink.split.i

if.else.i:                                        ; preds = %if.end12
  %shr.i = lshr i64 %9, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i, i64 %and.i)
  %cmp10.i = icmp ult i64 %shr.i, %and.i
  br i1 %cmp10.i, label %do.end14.i, label %if.else.i.if.end23.i_crit_edge

if.else.i.if.end23.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

do.end14.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %call17.i = tail call i32 (ptr, ...) @_printk_deferred(ptr noundef nonnull @.str.16, i64 noundef %and.i, ptr noundef %11, i64 noundef %shr.i) #15
  br label %if.end23.sink.split.i

if.end23.sink.split.i:                            ; preds = %do.end14.i, %do.end.i132
  %.str.19.sink.i = phi ptr [ @.str.19, %do.end14.i ], [ @.str.13, %do.end.i132 ]
  %call22.i = tail call i32 (ptr, ...) @_printk_deferred(ptr noundef nonnull %.str.19.sink.i) #15
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.end23.sink.split.i, %if.else.i.if.end23.i_crit_edge
  %12 = load i32, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 24), align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i133 = icmp eq i32 %12, 0
  br i1 %tobool.not.i133, label %if.end23.i.if.end45.i_crit_edge, label %if.then24.i

if.end23.i.if.end45.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45.i

if.then24.i:                                      ; preds = %if.end23.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %14 = load i32, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 23), align 4
  %sub.i134 = sub i32 %13, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %sub.i134)
  %cmp25.i = icmp ugt i32 %sub.i134, 30000
  br i1 %cmp25.i, label %do.end29.i, label %if.then24.i.if.end43.i_crit_edge

if.then24.i.if.end43.i_crit_edge:                 ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43.i

do.end29.i:                                       ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #12
  %call31.i = tail call i32 (ptr, ...) @_printk_deferred(ptr noundef nonnull @.str.22, ptr noundef %11) #15
  %call36.i = tail call i32 (ptr, ...) @_printk_deferred(ptr noundef nonnull @.str.25) #15
  %call41.i = tail call i32 (ptr, ...) @_printk_deferred(ptr noundef nonnull @.str.28) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  store i32 %15, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 23), align 4
  br label %if.end43.i

if.end43.i:                                       ; preds = %do.end29.i, %if.then24.i.if.end43.i_crit_edge
  store i32 0, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 24), align 8
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.end43.i, %if.end23.i.if.end45.i_crit_edge
  %16 = load i32, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 25), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool46.not.i = icmp eq i32 %16, 0
  br i1 %tobool46.not.i, label %if.end45.i.cond.false16_crit_edge, label %if.then47.i

if.end45.i.cond.false16_crit_edge:                ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false16

if.then47.i:                                      ; preds = %if.end45.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %18 = load i32, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 23), align 4
  %sub49.i = sub i32 %17, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000, i32 %sub49.i)
  %cmp50.i = icmp ugt i32 %sub49.i, 30000
  br i1 %cmp50.i, label %do.end54.i, label %if.then47.i.if.end68.i_crit_edge

if.then47.i.if.end68.i_crit_edge:                 ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68.i

do.end54.i:                                       ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #12
  %call56.i = tail call i32 (ptr, ...) @_printk_deferred(ptr noundef nonnull @.str.31, ptr noundef %11) #15
  %call61.i = tail call i32 (ptr, ...) @_printk_deferred(ptr noundef nonnull @.str.25) #15
  %call66.i = tail call i32 (ptr, ...) @_printk_deferred(ptr noundef nonnull @.str.28) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  store i32 %19, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 23), align 4
  br label %if.end68.i

if.end68.i:                                       ; preds = %do.end54.i, %if.then47.i.if.end68.i_crit_edge
  store i32 0, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 25), align 4
  br label %cond.false16

cond.false16:                                     ; preds = %if.end68.i, %if.end45.i.cond.false16_crit_edge
  %shr.i.i = lshr i64 %and.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i)
  %tobool.not.i.i = icmp eq i32 %conv.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %cond.false16
  call void @__sanitizer_cov_trace_pc() #12
  %20 = tail call i32 @llvm.ctlz.i32(i32 %conv.i.i, i1 true) #10, !range !230
  %add.i.i = sub nuw nsw i32 64, %20
  br label %cond.end18

if.end.i.i:                                       ; preds = %cond.false16
  call void @__sanitizer_cov_trace_pc() #12
  %conv1.i.i = trunc i64 %and.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i)
  %tobool.not.i5.i.i = icmp eq i32 %conv1.i.i, 0
  %21 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i.i, i1 true) #10, !range !230
  %sub.i6.i.i = sub nuw nsw i32 32, %21
  %cond.i7.i.i = select i1 %tobool.not.i5.i.i, i32 0, i32 %sub.i6.i.i
  br label %cond.end18

cond.end18:                                       ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %cond.i7.i.i, %if.end.i.i ]
  %22 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 14), align 8
  %shr.i.i136 = lshr i64 %22, 32
  %conv.i.i137 = trunc i64 %shr.i.i136 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i137)
  %tobool.not.i.i138 = icmp eq i32 %conv.i.i137, 0
  br i1 %tobool.not.i.i138, label %if.end.i.i145, label %if.then.i.i140

if.then.i.i140:                                   ; preds = %cond.end18
  call void @__sanitizer_cov_trace_pc() #12
  %23 = tail call i32 @llvm.ctlz.i32(i32 %conv.i.i137, i1 true) #10, !range !230
  %add.i.i139.neg = or i32 %23, -64
  br label %cond.end35

if.end.i.i145:                                    ; preds = %cond.end18
  call void @__sanitizer_cov_trace_pc() #12
  %conv1.i.i141 = trunc i64 %22 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i141)
  %tobool.not.i5.i.i142 = icmp eq i32 %conv1.i.i141, 0
  %24 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i.i141, i1 true) #10, !range !230
  %sub.i6.i.i143.neg = or i32 %24, -32
  %cond.i7.i.i144.neg = select i1 %tobool.not.i5.i.i142, i32 0, i32 %sub.i6.i.i143.neg
  br label %cond.end35

cond.end35:                                       ; preds = %if.end.i.i145, %if.then.i.i140
  %retval.0.i.i146.neg = phi i32 [ %add.i.i139.neg, %if.then.i.i140 ], [ %cond.i7.i.i144.neg, %if.end.i.i145 ]
  %sub37 = add nsw i32 %retval.0.i.i146.neg, %retval.0.i.i
  %25 = tail call i32 @llvm.smax.i32(i32 %sub37, i32 0)
  %call45 = tail call i64 @ntp_tick_length() #10
  %shr.i.i149 = lshr i64 %call45, 32
  %conv.i.i150 = trunc i64 %shr.i.i149 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i150)
  %tobool.not.i.i151 = icmp eq i32 %conv.i.i150, 0
  br i1 %tobool.not.i.i151, label %if.end.i.i158, label %if.then.i.i153

if.then.i.i153:                                   ; preds = %cond.end35
  call void @__sanitizer_cov_trace_pc() #12
  %26 = tail call i32 @llvm.ctlz.i32(i32 %conv.i.i150, i1 true) #10, !range !230
  %add.i.i152.neg = or i32 %26, -64
  br label %__ilog2_u64.exit161

if.end.i.i158:                                    ; preds = %cond.end35
  call void @__sanitizer_cov_trace_pc() #12
  %conv1.i.i154 = trunc i64 %call45 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i154)
  %tobool.not.i5.i.i155 = icmp eq i32 %conv1.i.i154, 0
  %27 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i.i154, i1 true) #10, !range !230
  %sub.i6.i.i156.neg = or i32 %27, -32
  %cond.i7.i.i157.neg = select i1 %tobool.not.i5.i.i155, i32 0, i32 %sub.i6.i.i156.neg
  br label %__ilog2_u64.exit161

__ilog2_u64.exit161:                              ; preds = %if.end.i.i158, %if.then.i.i153
  %retval.0.i.i159.neg = phi i32 [ %add.i.i152.neg, %if.then.i.i153 ], [ %cond.i7.i.i157.neg, %if.end.i.i158 ]
  %28 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 14), align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i, i64 %28)
  %cmp57.not202 = icmp ult i64 %and.i, %28
  br i1 %cmp57.not202, label %__ilog2_u64.exit161.while.end_crit_edge, label %while.body.lr.ph

__ilog2_u64.exit161.while.end_crit_edge:          ; preds = %__ilog2_u64.exit161
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %__ilog2_u64.exit161
  %sub48 = add nsw i32 %retval.0.i.i159.neg, 63
  %29 = tail call i32 @llvm.smin.i32(i32 %25, i32 %sub48)
  %.fca.1.gep.i.i = getelementptr inbounds [2 x i64], ptr %agg.tmp.i.i, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %logarithmic_accumulation.exit.while.body_crit_edge, %while.body.lr.ph
  %30 = phi i64 [ %28, %while.body.lr.ph ], [ %56, %logarithmic_accumulation.exit.while.body_crit_edge ]
  %offset.0205 = phi i64 [ %and.i, %while.body.lr.ph ], [ %retval.0.i, %logarithmic_accumulation.exit.while.body_crit_edge ]
  %shift.0204 = phi i32 [ %29, %while.body.lr.ph ], [ %spec.select, %logarithmic_accumulation.exit.while.body_crit_edge ]
  %clock_set.0203 = phi i32 [ 0, %while.body.lr.ph ], [ %clock_set.1, %logarithmic_accumulation.exit.while.body_crit_edge ]
  %sh_prom.i = zext i32 %shift.0204 to i64
  %shl.i = shl i64 %30, %sh_prom.i
  call void @__sanitizer_cov_trace_cmp8(i64 %offset.0205, i64 %shl.i)
  %cmp.i162 = icmp ult i64 %offset.0205, %shl.i
  br i1 %cmp.i162, label %while.body.logarithmic_accumulation.exit_crit_edge, label %if.end.i

while.body.logarithmic_accumulation.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %logarithmic_accumulation.exit

if.end.i:                                         ; preds = %while.body
  %sub.i163 = sub i64 %offset.0205, %shl.i
  %31 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 0, i32 2), align 8
  %add.i = add i64 %31, %shl.i
  store i64 %add.i, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 0, i32 2), align 8
  %32 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 1, i32 2), align 8
  %add2.i = add i64 %32, %shl.i
  store i64 %add2.i, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 1, i32 2), align 8
  %33 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 15), align 8
  %shl4.i = shl i64 %33, %sh_prom.i
  %34 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 0, i32 5), align 8
  %add6.i = add i64 %34, %shl4.i
  store i64 %add6.i, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 0, i32 5), align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %agg.tmp.i.i) #10
  %35 = load i32, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 0, i32 4), align 4
  %sh_prom.i.i = zext i32 %35 to i64
  %shl.i.i = shl i64 1000000000, %sh_prom.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add6.i, i64 %shl.i.i)
  %cmp.not3.i.i = icmp ult i64 %add6.i, %shl.i.i
  br i1 %cmp.not3.i.i, label %if.end.i.accumulate_nsecs_to_secs.exit.i_crit_edge, label %if.end.i.while.body.i.i_crit_edge

if.end.i.while.body.i.i_crit_edge:                ; preds = %if.end.i
  br label %while.body.i.i

if.end.i.accumulate_nsecs_to_secs.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %accumulate_nsecs_to_secs.exit.i

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %if.end.i.while.body.i.i_crit_edge
  %36 = phi i64 [ %45, %cleanup.i.i.while.body.i.i_crit_edge ], [ %add6.i, %if.end.i.while.body.i.i_crit_edge ]
  %clock_set.04.i.i = phi i32 [ %clock_set.2.i.i, %cleanup.i.i.while.body.i.i_crit_edge ], [ 0, %if.end.i.while.body.i.i_crit_edge ]
  %sub.i.i = sub i64 %36, %shl.i.i
  store i64 %sub.i.i, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 0, i32 5), align 8
  %37 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 2), align 8
  %inc.i.i = add i64 %37, 1
  store i64 %inc.i.i, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 2), align 8
  %38 = load i32, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 22), align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i.i164 = icmp eq i32 %38, 0
  br i1 %tobool.not.i.i164, label %if.end.i.i167, label %if.then.i.i165, !prof !165

if.then.i.i165:                                   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i32 0, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 22), align 8
  br label %cleanup.i.i

if.end.i.i167:                                    ; preds = %while.body.i.i
  %call.i.i166 = call i32 @second_overflow(i64 noundef %inc.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i166)
  %tobool8.not.i.i = icmp eq i32 %call.i.i166, 0
  br i1 %tobool8.not.i.i, label %if.end.i.i167.cleanup.i.i_crit_edge, label %if.then15.i.i, !prof !165

if.end.i.i167.cleanup.i.i_crit_edge:              ; preds = %if.end.i.i167
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i.i

if.then15.i.i:                                    ; preds = %if.end.i.i167
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i168 = sext i32 %call.i.i166 to i64
  %39 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 2), align 8
  %add.i.i169 = add i64 %39, %conv.i.i168
  store i64 %add.i.i169, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 2), align 8
  %.unpack.i.i = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 4), align 8
  %.unpack1.i.i = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 4, i32 1), align 8
  %40 = call ptr @memset(ptr %agg.tmp.i.i, i32 255, i32 16)
  %sub.i.i.i = sub i64 %.unpack.i.i, %conv.i.i168
  %conv.i.i.i = ashr i64 %.unpack1.i.i, 32
  call void @set_normalized_timespec64(ptr noundef nonnull %agg.tmp.i.i, i64 noundef %sub.i.i.i, i64 noundef %conv.i.i.i) #10
  %41 = ptrtoint ptr %agg.tmp.i.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %.fca.0.load.i.i = load i64, ptr %agg.tmp.i.i, align 8
  %.fca.0.insert.i.i = insertvalue [2 x i64] poison, i64 %.fca.0.load.i.i, 0
  %42 = ptrtoint ptr %.fca.1.gep.i.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %.fca.1.load.i.i = load i64, ptr %.fca.1.gep.i.i, align 8
  %.fca.1.insert.i.i = insertvalue [2 x i64] %.fca.0.insert.i.i, i64 %.fca.1.load.i.i, 1
  call fastcc void @tk_set_wall_to_mono(ptr noundef nonnull @shadow_timekeeper, [2 x i64] %.fca.1.insert.i.i) #10
  %43 = load i32, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 8), align 8
  %sub18.i.i = sub i32 %43, %call.i.i166
  store i32 %sub18.i.i, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 8), align 8
  %44 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 5), align 8
  %conv.i2.i.i = sext i32 %sub18.i.i to i64
  %mul.i.i.i.i = mul nsw i64 %conv.i2.i.i, 1000000000
  %add.i.i.i = add i64 %mul.i.i.i.i, %44
  store i64 %add.i.i.i, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 7), align 8
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.then15.i.i, %if.end.i.i167.cleanup.i.i_crit_edge, %if.then.i.i165
  %clock_set.2.i.i = phi i32 [ %clock_set.04.i.i, %if.then.i.i165 ], [ 4, %if.then15.i.i ], [ %clock_set.04.i.i, %if.end.i.i167.cleanup.i.i_crit_edge ]
  %45 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 0, i32 5), align 8
  %cmp.not.i.i = icmp ult i64 %45, %shl.i.i
  br i1 %cmp.not.i.i, label %cleanup.i.i.accumulate_nsecs_to_secs.exit.i_crit_edge, label %cleanup.i.i.while.body.i.i_crit_edge

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

cleanup.i.i.accumulate_nsecs_to_secs.exit.i_crit_edge: ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %accumulate_nsecs_to_secs.exit.i

accumulate_nsecs_to_secs.exit.i:                  ; preds = %cleanup.i.i.accumulate_nsecs_to_secs.exit.i_crit_edge, %if.end.i.accumulate_nsecs_to_secs.exit.i_crit_edge
  %clock_set.0.lcssa.i.i = phi i32 [ 0, %if.end.i.accumulate_nsecs_to_secs.exit.i_crit_edge ], [ %clock_set.2.i.i, %cleanup.i.i.accumulate_nsecs_to_secs.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %agg.tmp.i.i) #10
  %or.i = or i32 %clock_set.0.lcssa.i.i, %clock_set.0203
  %46 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 17), align 8
  %shl8.i = shl i64 %46, %sh_prom.i
  %47 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 1, i32 5), align 8
  %add11.i = add i64 %47, %shl8.i
  store i64 %add11.i, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 1, i32 5), align 8
  %48 = load i32, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 1, i32 4), align 4
  %sh_prom14.i = zext i32 %48 to i64
  %shl15.i = shl i64 1000000000, %sh_prom14.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add11.i, i64 %shl15.i)
  %cmp18.not2.i = icmp ult i64 %add11.i, %shl15.i
  br i1 %cmp18.not2.i, label %accumulate_nsecs_to_secs.exit.i.while.end.i_crit_edge, label %while.body.preheader.i

accumulate_nsecs_to_secs.exit.i.while.end.i_crit_edge: ; preds = %accumulate_nsecs_to_secs.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.preheader.i:                           ; preds = %accumulate_nsecs_to_secs.exit.i
  %.promoted1.i = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 12), align 8
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.preheader.i
  %49 = phi i64 [ %sub21.i, %while.body.i.while.body.i_crit_edge ], [ %add11.i, %while.body.preheader.i ]
  %50 = phi i64 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ %.promoted1.i, %while.body.preheader.i ]
  %sub21.i = sub i64 %49, %shl15.i
  %inc.i = add i64 %50, 1
  %cmp18.not.i = icmp ult i64 %sub21.i, %shl15.i
  br i1 %cmp18.not.i, label %while.cond.while.end_crit_edge.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  store i64 %sub21.i, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 1, i32 5), align 8
  store i64 %inc.i, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 12), align 8
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond.while.end_crit_edge.i, %accumulate_nsecs_to_secs.exit.i.while.end.i_crit_edge
  %51 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 18), align 8
  %shl23.i = shl i64 %51, %sh_prom.i
  %52 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 19), align 8
  %add24.i = add i64 %52, %shl23.i
  %53 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 15), align 8
  %54 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 16), align 8
  %add26.i = add i64 %54, %53
  %55 = load i32, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 20), align 8
  %add27.i = add i32 %55, %shift.0204
  %sh_prom28.i = zext i32 %add27.i to i64
  %shl29.i = shl i64 %add26.i, %sh_prom28.i
  %sub31.i = sub i64 %add24.i, %shl29.i
  store i64 %sub31.i, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 19), align 8
  br label %logarithmic_accumulation.exit

logarithmic_accumulation.exit:                    ; preds = %while.end.i, %while.body.logarithmic_accumulation.exit_crit_edge
  %clock_set.1 = phi i32 [ %clock_set.0203, %while.body.logarithmic_accumulation.exit_crit_edge ], [ %or.i, %while.end.i ]
  %retval.0.i = phi i64 [ %offset.0205, %while.body.logarithmic_accumulation.exit_crit_edge ], [ %sub.i163, %while.end.i ]
  %56 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 14), align 8
  %shl = shl i64 %56, %sh_prom.i
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i, i64 %shl)
  %cmp61 = icmp ult i64 %retval.0.i, %shl
  %dec = sext i1 %cmp61 to i32
  %spec.select = add i32 %shift.0204, %dec
  %cmp57.not = icmp ult i64 %retval.0.i, %56
  br i1 %cmp57.not, label %logarithmic_accumulation.exit.while.end_crit_edge, label %logarithmic_accumulation.exit.while.body_crit_edge

logarithmic_accumulation.exit.while.body_crit_edge: ; preds = %logarithmic_accumulation.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

logarithmic_accumulation.exit.while.end_crit_edge: ; preds = %logarithmic_accumulation.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %logarithmic_accumulation.exit.while.end_crit_edge, %__ilog2_u64.exit161.while.end_crit_edge
  %clock_set.0.lcssa = phi i32 [ 0, %__ilog2_u64.exit161.while.end_crit_edge ], [ %clock_set.1, %logarithmic_accumulation.exit.while.end_crit_edge ]
  %offset.0.lcssa = phi i64 [ %and.i, %__ilog2_u64.exit161.while.end_crit_edge ], [ %retval.0.i, %logarithmic_accumulation.exit.while.end_crit_edge ]
  %57 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 18), align 8
  %call.i170 = call i64 @ntp_tick_length() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %57, i64 %call.i170)
  %cmp.i171 = icmp eq i64 %57, %call.i170
  br i1 %cmp.i171, label %if.then.i, label %if.else.i175, !prof !165

if.then.i:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %58 = load i32, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 0, i32 3), align 8
  %59 = load i32, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 21), align 4
  %sub.i172 = sub i32 %58, %59
  br label %if.end.i177

if.else.i175:                                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = call i64 @ntp_tick_length() #10
  store i64 %call3.i, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 18), align 8
  %60 = load i32, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 20), align 8
  %sh_prom.i173 = zext i32 %60 to i64
  %shr.i174 = lshr i64 %call3.i, %sh_prom.i173
  %61 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 16), align 8
  %sub6.i = sub i64 %shr.i174, %61
  %62 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 14), align 8
  %call7.i = call i64 @div64_u64(i64 noundef %sub6.i, i64 noundef %62) #10
  %conv.i = trunc i64 %call7.i to i32
  br label %if.end.i177

if.end.i177:                                      ; preds = %if.else.i175, %if.then.i
  %mult.0.i = phi i32 [ %sub.i172, %if.then.i ], [ %conv.i, %if.else.i175 ]
  %63 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 19), align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %63)
  %cmp8.i = icmp sgt i64 %63, 0
  %cond.i = zext i1 %cmp8.i to i32
  store i32 %cond.i, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 21), align 4
  %add.i176 = add i32 %mult.0.i, %cond.i
  %64 = load i32, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 0, i32 3), align 8
  %sub14.i = sub i32 %add.i176, %64
  %65 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 14), align 8
  %66 = zext i32 %sub14.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values)
  switch i32 %sub14.i, label %if.end10.i.i [
    i32 0, label %if.end.i177.timekeeping_apply_adjustment.exit.i_crit_edge
    i32 -1, label %if.end10.thread9.i.i
    i32 1, label %if.end.i177.land.lhs.true.i.i_crit_edge
  ]

if.end.i177.land.lhs.true.i.i_crit_edge:          ; preds = %if.end.i177
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i

if.end.i177.timekeeping_apply_adjustment.exit.i_crit_edge: ; preds = %if.end.i177
  call void @__sanitizer_cov_trace_pc() #12
  br label %timekeeping_apply_adjustment.exit.i

if.end10.thread9.i.i:                             ; preds = %if.end.i177
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i178 = sub i64 0, %65
  %sub3.i.i = sub i64 0, %offset.0.lcssa
  br label %if.end51.i.i

if.end10.i.i:                                     ; preds = %if.end.i177
  %conv.i.i179 = sext i32 %sub14.i to i64
  %mul.i.i = mul i64 %65, %conv.i.i179
  %mul8.i.i = mul i64 %offset.0.lcssa, %conv.i.i179
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub14.i)
  %cmp11.i.i = icmp sgt i32 %sub14.i, 0
  br i1 %cmp11.i.i, label %if.end10.i.i.land.lhs.true.i.i_crit_edge, label %if.end10.i.i.if.end51.i.i_crit_edge

if.end10.i.i.if.end51.i.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51.i.i

if.end10.i.i.land.lhs.true.i.i_crit_edge:         ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %if.end10.i.i.land.lhs.true.i.i_crit_edge, %if.end.i177.land.lhs.true.i.i_crit_edge
  %offset.addr.08.i.i = phi i64 [ %mul8.i.i, %if.end10.i.i.land.lhs.true.i.i_crit_edge ], [ %offset.0.lcssa, %if.end.i177.land.lhs.true.i.i_crit_edge ]
  %interval.06.i.i = phi i64 [ %mul.i.i, %if.end10.i.i.land.lhs.true.i.i_crit_edge ], [ %65, %if.end.i177.land.lhs.true.i.i_crit_edge ]
  %67 = xor i32 %sub14.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %67)
  %cmp13.i.i = icmp ugt i32 %64, %67
  br i1 %cmp13.i.i, label %land.end.i.i, label %land.lhs.true.i.i.if.end51.i.i_crit_edge

land.lhs.true.i.i.if.end51.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51.i.i

land.end.i.i:                                     ; preds = %land.lhs.true.i.i
  %.b1.i.i = load i1, ptr @timekeeping_apply_adjustment.__already_done, align 1
  br i1 %.b1.i.i, label %land.end.i.i.timekeeping_apply_adjustment.exit.i_crit_edge, label %if.then21.i.i, !prof !165

land.end.i.i.timekeeping_apply_adjustment.exit.i_crit_edge: ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %timekeeping_apply_adjustment.exit.i

if.then21.i.i:                                    ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @timekeeping_apply_adjustment.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1968, i32 noundef 9, ptr noundef null) #10
  br label %timekeeping_apply_adjustment.exit.i

if.end51.i.i:                                     ; preds = %land.lhs.true.i.i.if.end51.i.i_crit_edge, %if.end10.i.i.if.end51.i.i_crit_edge, %if.end10.thread9.i.i
  %offset.addr.07.i.i = phi i64 [ %offset.addr.08.i.i, %land.lhs.true.i.i.if.end51.i.i_crit_edge ], [ %mul8.i.i, %if.end10.i.i.if.end51.i.i_crit_edge ], [ %sub3.i.i, %if.end10.thread9.i.i ]
  %interval.05.i.i = phi i64 [ %interval.06.i.i, %land.lhs.true.i.i.if.end51.i.i_crit_edge ], [ %mul.i.i, %if.end10.i.i.if.end51.i.i_crit_edge ], [ %sub.i.i178, %if.end10.thread9.i.i ]
  store i32 %add.i176, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 0, i32 3), align 8
  %68 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 15), align 8
  %add55.i.i = add i64 %68, %interval.05.i.i
  store i64 %add55.i.i, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 15), align 8
  %69 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 0, i32 5), align 8
  %sub57.i.i = sub i64 %69, %offset.addr.07.i.i
  store i64 %sub57.i.i, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 0, i32 5), align 8
  br label %timekeeping_apply_adjustment.exit.i

timekeeping_apply_adjustment.exit.i:              ; preds = %if.end51.i.i, %if.then21.i.i, %land.end.i.i.timekeeping_apply_adjustment.exit.i_crit_edge, %if.end.i177.timekeeping_apply_adjustment.exit.i_crit_edge
  %70 = load ptr, ptr @shadow_timekeeper, align 8
  %maxadj.i = getelementptr inbounds %struct.clocksource, ptr %70, i32 0, i32 5
  %71 = ptrtoint ptr %maxadj.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %maxadj.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool16.not.i = icmp eq i32 %72, 0
  br i1 %tobool16.not.i, label %timekeeping_apply_adjustment.exit.i.if.end74.i_crit_edge, label %land.rhs.i180

timekeeping_apply_adjustment.exit.i.if.end74.i_crit_edge: ; preds = %timekeeping_apply_adjustment.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74.i

land.rhs.i180:                                    ; preds = %timekeeping_apply_adjustment.exit.i
  %73 = load i32, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 0, i32 3), align 8
  %mult21.i = getelementptr inbounds %struct.clocksource, ptr %70, i32 0, i32 2
  %74 = ptrtoint ptr %mult21.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %mult21.i, align 8
  %sub22.i = sub i32 %73, %75
  %76 = call i32 @llvm.abs.i32(i32 %sub22.i, i1 false) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %72)
  %cmp30.i = icmp ugt i32 %76, %72
  br i1 %cmp30.i, label %land.end45.i, label %land.rhs.i180.if.end74.i_crit_edge, !prof !172

land.rhs.i180.if.end74.i_crit_edge:               ; preds = %land.rhs.i180
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74.i

land.end45.i:                                     ; preds = %land.rhs.i180
  %.b1.i = load i1, ptr @timekeeping_adjust.__already_done, align 1
  br i1 %.b1.i, label %land.end45.i.if.end74.i_crit_edge, label %if.then52.i, !prof !165

land.end45.i.if.end74.i_crit_edge:                ; preds = %land.end45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74.i

if.then52.i:                                      ; preds = %land.end45.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @timekeeping_adjust.__already_done, align 1
  %name.i = getelementptr inbounds %struct.clocksource, ptr %70, i32 0, i32 8
  %77 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %name.i, align 8
  %add64.i = add i32 %75, %72
  %call65.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %78, i32 noundef %73, i32 noundef %add64.i) #15
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.then52.i, %land.end45.i.if.end74.i_crit_edge, %land.rhs.i180.if.end74.i_crit_edge, %timekeeping_apply_adjustment.exit.i.if.end74.i_crit_edge
  %79 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 0, i32 5), align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %79)
  %cmp76.i = icmp slt i64 %79, 0
  br i1 %cmp76.i, label %if.then84.i, label %if.end74.i.timekeeping_adjust.exit_crit_edge, !prof !172

if.end74.i.timekeeping_adjust.exit_crit_edge:     ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %timekeeping_adjust.exit

if.then84.i:                                      ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #12
  %80 = load i32, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 0, i32 4), align 4
  %sh_prom86.i = zext i32 %80 to i64
  %shl.i181 = shl i64 1000000000, %sh_prom86.i
  %add89.i = add i64 %shl.i181, %79
  store i64 %add89.i, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 0, i32 5), align 8
  %81 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 2), align 8
  %dec.i = add i64 %81, -1
  store i64 %dec.i, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 2), align 8
  store i32 1, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 22), align 8
  br label %timekeeping_adjust.exit

timekeeping_adjust.exit:                          ; preds = %if.then84.i, %if.end74.i.timekeeping_adjust.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %agg.tmp.i)
  %82 = load i32, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 0, i32 4), align 4
  %sh_prom.i182 = zext i32 %82 to i64
  %shl.i183 = shl i64 1000000000, %sh_prom.i182
  %83 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 0, i32 5), align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %83, i64 %shl.i183)
  %cmp.not3.i = icmp ult i64 %83, %shl.i183
  br i1 %cmp.not3.i, label %timekeeping_adjust.exit.accumulate_nsecs_to_secs.exit_crit_edge, label %while.body.lr.ph.i

timekeeping_adjust.exit.accumulate_nsecs_to_secs.exit_crit_edge: ; preds = %timekeeping_adjust.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %accumulate_nsecs_to_secs.exit

while.body.lr.ph.i:                               ; preds = %timekeeping_adjust.exit
  %.fca.1.gep.i = getelementptr inbounds [2 x i64], ptr %agg.tmp.i, i32 0, i32 1
  br label %while.body.i187

while.body.i187:                                  ; preds = %cleanup.i.while.body.i187_crit_edge, %while.body.lr.ph.i
  %84 = phi i64 [ %83, %while.body.lr.ph.i ], [ %93, %cleanup.i.while.body.i187_crit_edge ]
  %clock_set.04.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %clock_set.2.i, %cleanup.i.while.body.i187_crit_edge ]
  %sub.i184 = sub i64 %84, %shl.i183
  store i64 %sub.i184, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 0, i32 5), align 8
  %85 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 2), align 8
  %inc.i185 = add i64 %85, 1
  store i64 %inc.i185, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 2), align 8
  %86 = load i32, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 22), align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool.not.i186 = icmp eq i32 %86, 0
  br i1 %tobool.not.i186, label %if.end.i190, label %if.then.i188, !prof !165

if.then.i188:                                     ; preds = %while.body.i187
  call void @__sanitizer_cov_trace_pc() #12
  store i32 0, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 22), align 8
  br label %cleanup.i

if.end.i190:                                      ; preds = %while.body.i187
  %call.i189 = call i32 @second_overflow(i64 noundef %inc.i185) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i189)
  %tobool8.not.i = icmp eq i32 %call.i189, 0
  br i1 %tobool8.not.i, label %if.end.i190.cleanup.i_crit_edge, label %if.then15.i, !prof !165

if.end.i190.cleanup.i_crit_edge:                  ; preds = %if.end.i190
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.then15.i:                                      ; preds = %if.end.i190
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i191 = sext i32 %call.i189 to i64
  %87 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 2), align 8
  %add.i192 = add i64 %87, %conv.i191
  store i64 %add.i192, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 2), align 8
  %.unpack.i = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 4), align 8
  %.unpack1.i = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 4, i32 1), align 8
  %88 = call ptr @memset(ptr %agg.tmp.i, i32 255, i32 16)
  %sub.i.i193 = sub i64 %.unpack.i, %conv.i191
  %conv.i.i194 = ashr i64 %.unpack1.i, 32
  call void @set_normalized_timespec64(ptr noundef nonnull %agg.tmp.i, i64 noundef %sub.i.i193, i64 noundef %conv.i.i194) #10
  %89 = ptrtoint ptr %agg.tmp.i to i32
  call void @__asan_load8_noabort(i32 %89)
  %.fca.0.load.i = load i64, ptr %agg.tmp.i, align 8
  %.fca.0.insert.i = insertvalue [2 x i64] poison, i64 %.fca.0.load.i, 0
  %90 = ptrtoint ptr %.fca.1.gep.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %.fca.1.load.i = load i64, ptr %.fca.1.gep.i, align 8
  %.fca.1.insert.i = insertvalue [2 x i64] %.fca.0.insert.i, i64 %.fca.1.load.i, 1
  call fastcc void @tk_set_wall_to_mono(ptr noundef nonnull @shadow_timekeeper, [2 x i64] %.fca.1.insert.i) #10
  %91 = load i32, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 8), align 8
  %sub18.i = sub i32 %91, %call.i189
  store i32 %sub18.i, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 8), align 8
  %92 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 5), align 8
  %conv.i2.i = sext i32 %sub18.i to i64
  %mul.i.i.i = mul nsw i64 %conv.i2.i, 1000000000
  %add.i.i195 = add i64 %mul.i.i.i, %92
  store i64 %add.i.i195, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 7), align 8
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then15.i, %if.end.i190.cleanup.i_crit_edge, %if.then.i188
  %clock_set.2.i = phi i32 [ %clock_set.04.i, %if.then.i188 ], [ 4, %if.then15.i ], [ %clock_set.04.i, %if.end.i190.cleanup.i_crit_edge ]
  %93 = load i64, ptr getelementptr inbounds (%struct.timekeeper, ptr @shadow_timekeeper, i32 0, i32 0, i32 5), align 8
  %cmp.not.i196 = icmp ult i64 %93, %shl.i183
  br i1 %cmp.not.i196, label %cleanup.i.accumulate_nsecs_to_secs.exit_crit_edge, label %cleanup.i.while.body.i187_crit_edge

cleanup.i.while.body.i187_crit_edge:              ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i187

cleanup.i.accumulate_nsecs_to_secs.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %accumulate_nsecs_to_secs.exit

accumulate_nsecs_to_secs.exit:                    ; preds = %cleanup.i.accumulate_nsecs_to_secs.exit_crit_edge, %timekeeping_adjust.exit.accumulate_nsecs_to_secs.exit_crit_edge
  %clock_set.0.lcssa.i = phi i32 [ 0, %timekeeping_adjust.exit.accumulate_nsecs_to_secs.exit_crit_edge ], [ %clock_set.2.i, %cleanup.i.accumulate_nsecs_to_secs.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %agg.tmp.i)
  %or = or i32 %clock_set.0.lcssa.i, %clock_set.0.lcssa
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %94 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool.not.i = icmp eq i32 %94, 0
  br i1 %tobool.not.i, label %accumulate_nsecs_to_secs.exit.__seqprop_raw_spinlock_assert.exit_crit_edge, label %land.rhs.i

accumulate_nsecs_to_secs.exit.__seqprop_raw_spinlock_assert.exit_crit_edge: ; preds = %accumulate_nsecs_to_secs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_raw_spinlock_assert.exit

land.rhs.i:                                       ; preds = %accumulate_nsecs_to_secs.exit
  %95 = load ptr, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 0, i32 1), align 32
  %dep_map.i = getelementptr inbounds %struct.raw_spinlock, ptr %95, i32 0, i32 4
  %call.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.__seqprop_raw_spinlock_assert.exit_crit_edge, !prof !172

land.rhs.i.__seqprop_raw_spinlock_assert.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_raw_spinlock_assert.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 276, i32 noundef 9, ptr noundef null) #10
  br label %__seqprop_raw_spinlock_assert.exit

__seqprop_raw_spinlock_assert.exit:               ; preds = %do.end.i, %land.rhs.i.__seqprop_raw_spinlock_assert.exit_crit_edge, %accumulate_nsecs_to_secs.exit.__seqprop_raw_spinlock_assert.exit_crit_edge
  %96 = load i32, ptr @tk_core, align 128
  %inc.i.i.i = add i32 %96, 1
  store i32 %inc.i.i.i, ptr @tk_core, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !208
  %97 = call ptr @llvm.returnaddress(i32 0) #10
  %98 = ptrtoint ptr %97 to i32
  call void @lock_acquire(ptr noundef getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 0, i32 0, i32 1), i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %98) #10
  call fastcc void @timekeeping_update(ptr noundef nonnull @shadow_timekeeper, i32 noundef %or)
  %99 = call ptr @memcpy(ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1), ptr @shadow_timekeeper, i32 288)
  call void @lock_release(ptr noundef getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 0, i32 0, i32 1), i32 noundef %98) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !212
  %100 = load i32, ptr @tk_core, align 128
  %inc.i.i198 = add i32 %100, 1
  store i32 %inc.i.i198, ptr @tk_core, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %phi.cmp = icmp ne i32 %or, 0
  br label %do.body86

do.body86:                                        ; preds = %__seqprop_raw_spinlock_assert.exit, %if.end.do.body86_crit_edge, %entry.do.body86_crit_edge
  %clock_set.2 = phi i1 [ false, %if.end.do.body86_crit_edge ], [ %phi.cmp, %__seqprop_raw_spinlock_assert.exit ], [ false, %entry.do.body86_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @timekeeper_lock, i32 noundef %call) #10
  ret i1 %clock_set.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clock_was_set_delayed() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @getboottime64(ptr nocapture noundef writeonly %ts) #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 5), align 8
  %1 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 6), align 64
  %sub = sub i64 %0, %1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #10
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp, i64 noundef %sub) #10
  %2 = call ptr @memcpy(ptr %ts, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ktime_get_coarse_real_ts64(ptr nocapture noundef writeonly %ts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tmp17.sroa.4.0.ts.sroa_idx = getelementptr inbounds i8, ptr %ts, i32 8
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  tail call fastcc void @seqcount_lockdep_reader_access()
  %0 = load volatile i32, ptr @tk_core, align 128
  %and23 = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool.not24 = icmp eq i32 %and23, 0
  br i1 %tobool.not24, label %do.body.while.end_crit_edge, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  br label %do.end

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %do.body.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !231
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !232
  %1 = load volatile i32, ptr @tk_core, align 128
  %and = and i32 %1, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %do.body.while.end_crit_edge
  %.lcssa = phi i32 [ %0, %do.body.while.end_crit_edge ], [ %1, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !233
  %2 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 2), align 8, !noalias !234
  %3 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8, !noalias !234
  %4 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 4), align 4, !noalias !234
  %sh_prom.i = zext i32 %4 to i64
  %shr.i = lshr i64 %3, %sh_prom.i
  %tmp17.sroa.4.8.insert.ext = shl i64 %shr.i, 32
  %tmp17.sroa.4.8.insert.insert = or i64 %tmp17.sroa.4.8.insert.ext, 4294967295
  %5 = ptrtoint ptr %ts to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %2, ptr %ts, align 8
  %6 = ptrtoint ptr %tmp17.sroa.4.0.ts.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %tmp17.sroa.4.8.insert.insert, ptr %tmp17.sroa.4.0.ts.sroa_idx, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !164
  %7 = load volatile i32, ptr @tk_core, align 128
  %cmp.i.i.not = icmp eq i32 %7, %.lcssa
  br i1 %cmp.i.i.not, label %do.end22, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end22:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ktime_get_coarse_ts64(ptr noundef %ts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  tail call fastcc void @seqcount_lockdep_reader_access()
  %0 = load volatile i32, ptr @tk_core, align 128
  %and36 = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool.not37 = icmp eq i32 %and36, 0
  br i1 %tobool.not37, label %do.body.while.end_crit_edge, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  br label %do.end

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %do.body.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !237
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !238
  %1 = load volatile i32, ptr @tk_core, align 128
  %and = and i32 %1, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %do.body.while.end_crit_edge
  %.lcssa = phi i32 [ %0, %do.body.while.end_crit_edge ], [ %1, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !239
  %2 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 2), align 8, !noalias !240
  %3 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8, !noalias !240
  %4 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 4), align 4, !noalias !240
  %mono.sroa.0.0.copyload26 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 4), align 8
  %mono.sroa.5.0.copyload27 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 4, i32 1), align 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !164
  %5 = load volatile i32, ptr @tk_core, align 128
  %cmp.i.i.not = icmp eq i32 %5, %.lcssa
  br i1 %cmp.i.i.not, label %do.end22, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end22:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %sh_prom.i = zext i32 %4 to i64
  %shr.i = lshr i64 %3, %sh_prom.i
  %tmp17.sroa.4.8.extract.trunc = trunc i64 %shr.i to i32
  %add = add i64 %mono.sroa.0.0.copyload26, %2
  %add25 = add i32 %mono.sroa.5.0.copyload27, %tmp17.sroa.4.8.extract.trunc
  %conv = sext i32 %add25 to i64
  tail call void @set_normalized_timespec64(ptr noundef %ts, i64 noundef %add, i64 noundef %conv) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_normalized_timespec64(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @do_timer(i32 noundef %ticks) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %ticks to i64
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @jiffies_64 to i32))
  %0 = load i64, ptr @jiffies_64, align 128
  %add = add i64 %0, %conv
  store i64 %add, ptr @jiffies_64, align 128
  tail call void @calc_global_load() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @calc_global_load() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @ktime_get_update_offsets_now(ptr nocapture noundef %cwsseq, ptr nocapture noundef writeonly %offs_real, ptr nocapture noundef writeonly %offs_boot, ptr nocapture noundef writeonly %offs_tai) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body

do.body:                                          ; preds = %do.cond31.do.body_crit_edge, %entry
  tail call fastcc void @seqcount_lockdep_reader_access()
  %0 = load volatile i32, ptr @tk_core, align 128
  %and53 = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool.not54 = icmp eq i32 %and53, 0
  br i1 %tobool.not54, label %do.body.while.end_crit_edge, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  br label %do.end

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %do.body.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !243
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !244
  %1 = load volatile i32, ptr @tk_core, align 128
  %and = and i32 %1, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %do.body.while.end_crit_edge
  %.lcssa = phi i32 [ %0, %do.body.while.end_crit_edge ], [ %1, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !245
  %2 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 6), align 16
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %while.end.i.i.do.body.i.i_crit_edge, %while.end
  tail call fastcc void @seqcount_lockdep_reader_access() #10
  %3 = load volatile i32, ptr @tk_core, align 128
  %and53.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i.i)
  %tobool.not54.i.i = icmp eq i32 %and53.i.i, 0
  br i1 %tobool.not54.i.i, label %do.body.i.i.while.end.i.i_crit_edge, label %do.body.i.i.do.end.i.i_crit_edge

do.body.i.i.do.end.i.i_crit_edge:                 ; preds = %do.body.i.i
  br label %do.end.i.i

do.body.i.i.while.end.i.i_crit_edge:              ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %do.body.i.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !169
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !170
  %4 = load volatile i32, ptr @tk_core, align 128
  %and.i.i = and i32 %4, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.while.end.i.i_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

do.end.i.i.while.end.i.i_crit_edge:               ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %do.end.i.i.while.end.i.i_crit_edge, %do.body.i.i.while.end.i.i_crit_edge
  %.lcssa.i.i = phi i32 [ %3, %do.body.i.i.while.end.i.i_crit_edge ], [ %4, %do.end.i.i.while.end.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !171
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1), align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %call.i.i.i = tail call i64 %7(ptr noundef %5) #10
  %8 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 2), align 8
  %9 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 1), align 16
  %10 = load ptr, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1), align 8
  %max_cycles.i.i = getelementptr inbounds %struct.clocksource, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %max_cycles.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %max_cycles.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !164
  %13 = load volatile i32, ptr @tk_core, align 128
  %cmp.i.i.not.i.i = icmp eq i32 %13, %.lcssa.i.i
  br i1 %cmp.i.i.not.i.i, label %do.end23.i.i, label %while.end.i.i.do.body.i.i_crit_edge

while.end.i.i.do.body.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

do.end23.i.i:                                     ; preds = %while.end.i.i
  %sub.i.i.i = sub i64 %call.i.i.i, %8
  %and.i.i.i = and i64 %sub.i.i.i, %9
  %and25.i.i = xor i64 %and.i.i.i, %9
  %shr.i.i = lshr i64 %9, 3
  call void @__sanitizer_cov_trace_cmp8(i64 %and25.i.i, i64 %shr.i.i)
  %cmp.i.i = icmp ult i64 %and25.i.i, %shr.i.i
  br i1 %cmp.i.i, label %if.end.thread.i.i, label %if.end.i.i, !prof !172

if.end.thread.i.i:                                ; preds = %do.end23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i32 1, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 24), align 64
  br label %timekeeping_get_ns.exit

if.end.i.i:                                       ; preds = %do.end23.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %and.i.i.i, i64 %12)
  %cmp28.i.i = icmp ugt i64 %and.i.i.i, %12
  br i1 %cmp28.i.i, label %if.then35.i.i, label %if.end.i.i.timekeeping_get_ns.exit_crit_edge, !prof !172

if.end.i.i.timekeeping_get_ns.exit_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %timekeeping_get_ns.exit

if.then35.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i32 1, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 25), align 4
  %14 = load ptr, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1), align 8
  %max_cycles37.i.i = getelementptr inbounds %struct.clocksource, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %max_cycles37.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %max_cycles37.i.i, align 8
  br label %timekeeping_get_ns.exit

timekeeping_get_ns.exit:                          ; preds = %if.then35.i.i, %if.end.i.i.timekeeping_get_ns.exit_crit_edge, %if.end.thread.i.i
  %delta.1.i.i = phi i64 [ %16, %if.then35.i.i ], [ %and.i.i.i, %if.end.i.i.timekeeping_get_ns.exit_crit_edge ], [ 0, %if.end.thread.i.i ]
  %17 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 3), align 64
  %conv.i.i = zext i32 %17 to i64
  %mul.i.i = mul i64 %delta.1.i.i, %conv.i.i
  %18 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 5), align 8
  %add.i.i = add i64 %mul.i.i, %18
  %19 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 0, i32 4), align 4
  %sh_prom.i.i = zext i32 %19 to i64
  %shr.i3.i = lshr i64 %add.i.i, %sh_prom.i.i
  %add = add i64 %shr.i3.i, %2
  %20 = ptrtoint ptr %cwsseq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cwsseq, align 4
  %22 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 9), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %22)
  %cmp.not = icmp eq i32 %21, %22
  br i1 %cmp.not, label %timekeeping_get_ns.exit.if.end_crit_edge, label %if.then

timekeeping_get_ns.exit.if.end_crit_edge:         ; preds = %timekeeping_get_ns.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %timekeeping_get_ns.exit
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %cwsseq to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %cwsseq, align 4
  %24 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 5), align 8
  %25 = ptrtoint ptr %offs_real to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %offs_real, align 8
  %26 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 6), align 64
  %27 = ptrtoint ptr %offs_boot to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %offs_boot, align 8
  %28 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 7), align 8
  %29 = ptrtoint ptr %offs_tai to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %offs_tai, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %timekeeping_get_ns.exit.if.end_crit_edge
  %30 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 11), align 32
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %30)
  %cmp24.not = icmp slt i64 %add, %30
  br i1 %cmp24.not, label %if.end.do.cond31_crit_edge, label %if.then27, !prof !165

if.end.do.cond31_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond31

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %31 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 5), align 8
  %sub = add i64 %31, -1000000000
  %32 = ptrtoint ptr %offs_real to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %sub, ptr %offs_real, align 8
  br label %do.cond31

do.cond31:                                        ; preds = %if.then27, %if.end.do.cond31_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !164
  %33 = load volatile i32, ptr @tk_core, align 128
  %cmp.i.i48.not = icmp eq i32 %33, %.lcssa
  br i1 %cmp.i.i48.not, label %do.end35, label %do.cond31.do.body_crit_edge

do.cond31.do.body_crit_edge:                      ; preds = %do.cond31
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end35:                                         ; preds = %do.cond31
  call void @__sanitizer_cov_trace_pc() #12
  ret i64 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @do_adjtimex(ptr noundef %txc) local_unnamed_addr #0 align 64 {
entry:
  %ad = alloca %struct.audit_ntp_data, align 1
  %ts = alloca %struct.timespec64, align 8
  %tai = alloca i32, align 4
  %delta = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %ad) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts) #10
  %0 = call ptr @memset(ptr %ts, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tai) #10
  %1 = ptrtoint ptr %txc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %txc, align 8
  %and.i = and i32 %2, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i88 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i88, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %and2.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.then.i.cleanup64_crit_edge, label %if.end.i

if.then.i.cleanup64_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup64

if.end.i:                                         ; preds = %if.then.i
  %and6.i = and i32 %2, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i, label %if.end.i.if.end24.i_crit_edge

if.end.i.if.end24.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %call.i = tail call zeroext i1 @capable(i32 noundef 25) #10
  br i1 %call.i, label %land.lhs.true.i.if.end24.i_crit_edge, label %land.lhs.true.i.cleanup64_crit_edge

land.lhs.true.i.cleanup64_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup64

land.lhs.true.i.if.end24.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool11.not.i = icmp eq i32 %2, 0
  br i1 %tobool11.not.i, label %if.else.i.if.end15.i_crit_edge, label %land.lhs.true12.i

if.else.i.if.end15.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

land.lhs.true12.i:                                ; preds = %if.else.i
  %call13.i = tail call zeroext i1 @capable(i32 noundef 25) #10
  br i1 %call13.i, label %land.lhs.true12.i.if.end15.i_crit_edge, label %land.lhs.true12.i.cleanup64_crit_edge

land.lhs.true12.i.cleanup64_crit_edge:            ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup64

land.lhs.true12.i.if.end15.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.end15.i:                                       ; preds = %land.lhs.true12.i.if.end15.i_crit_edge, %if.else.i.if.end15.i_crit_edge
  %3 = ptrtoint ptr %txc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %txc, align 8
  %and17.i = and i32 %4, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.end15.i.if.end24.i_crit_edge, label %land.lhs.true19.i

if.end15.i.if.end24.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i

land.lhs.true19.i:                                ; preds = %if.end15.i
  %tick.i = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 12
  %5 = ptrtoint ptr %tick.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %tick.i, align 8
  %7 = add i64 %6, -11001
  call void @__sanitizer_cov_trace_const_cmp8(i64 -2001, i64 %7)
  %8 = icmp ult i64 %7, -2001
  br i1 %8, label %land.lhs.true19.i.cleanup64_crit_edge, label %land.lhs.true19.i.if.end24.i_crit_edge

land.lhs.true19.i.if.end24.i_crit_edge:           ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i

land.lhs.true19.i.cleanup64_crit_edge:            ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup64

if.end24.i:                                       ; preds = %land.lhs.true19.i.if.end24.i_crit_edge, %if.end15.i.if.end24.i_crit_edge, %land.lhs.true.i.if.end24.i_crit_edge, %if.end.i.if.end24.i_crit_edge
  %9 = ptrtoint ptr %txc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %txc, align 8
  %and26.i = and i32 %10, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %if.end24.i.if.end_crit_edge, label %if.then28.i

if.end24.i.if.end_crit_edge:                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then28.i:                                      ; preds = %if.end24.i
  %call29.i = tail call zeroext i1 @capable(i32 noundef 25) #10
  br i1 %call29.i, label %if.end31.i, label %if.then28.i.cleanup64_crit_edge

if.then28.i.cleanup64_crit_edge:                  ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup64

if.end31.i:                                       ; preds = %if.then28.i
  %tv_usec.i = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 11, i32 1
  %11 = ptrtoint ptr %tv_usec.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %tv_usec.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %cmp32.i = icmp slt i64 %12, 0
  br i1 %cmp32.i, label %if.end31.i.cleanup64_crit_edge, label %if.end34.i

if.end31.i.cleanup64_crit_edge:                   ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup64

if.end34.i:                                       ; preds = %if.end31.i
  %13 = ptrtoint ptr %txc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %txc, align 8
  %and36.i = and i32 %14, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  br i1 %tobool37.not.i, label %if.else44.i, label %if.then38.i

if.then38.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 999999999, i64 %12)
  %cmp41.i = icmp ugt i64 %12, 999999999
  br i1 %cmp41.i, label %if.then38.i.cleanup64_crit_edge, label %if.then38.i.if.end_crit_edge

if.then38.i.if.end_crit_edge:                     ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then38.i.cleanup64_crit_edge:                  ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup64

if.else44.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 999999, i64 %12)
  %cmp47.i = icmp ugt i64 %12, 999999
  br i1 %cmp47.i, label %if.else44.i.cleanup64_crit_edge, label %if.else44.i.if.end_crit_edge

if.else44.i.if.end_crit_edge:                     ; preds = %if.else44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.else44.i.cleanup64_crit_edge:                  ; preds = %if.else44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup64

if.end:                                           ; preds = %if.else44.i.if.end_crit_edge, %if.then38.i.if.end_crit_edge, %if.end24.i.if.end_crit_edge
  %15 = ptrtoint ptr %txc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %txc, align 8
  %and = and i32 %16, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.if.end15_crit_edge, label %if.then2

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %delta) #10
  %17 = getelementptr inbounds i8, ptr %delta, i32 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 -1, ptr %17, align 8
  %time = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 11
  %19 = ptrtoint ptr %time to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %time, align 8
  %21 = ptrtoint ptr %delta to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %delta, align 8
  %tv_usec = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 11, i32 1
  %22 = ptrtoint ptr %tv_usec to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %tv_usec, align 8
  %conv = trunc i64 %23 to i32
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %delta, i32 0, i32 1
  %and6 = and i32 %16, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %mul = mul i32 %conv, 1000
  %spec.select = select i1 %tobool7.not, i32 %mul, i32 %conv
  %24 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %spec.select, ptr %tv_nsec, align 8
  %call11 = call fastcc i32 @timekeeping_inject_offset(ptr noundef nonnull %delta)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %delta) #10
  br i1 %tobool12.not, label %if.then2.if.end15_crit_edge, label %if.then2.cleanup64_crit_edge

if.then2.cleanup64_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup64

if.then2.if.end15_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.end15:                                         ; preds = %if.then2.if.end15_crit_edge, %if.end.if.end15_crit_edge
  call void @ktime_get_real_ts64(ptr noundef nonnull %ts)
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @timekeeper_lock) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %25 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i, label %if.end15.__seqprop_raw_spinlock_assert.exit_crit_edge, label %land.rhs.i

if.end15.__seqprop_raw_spinlock_assert.exit_crit_edge: ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_raw_spinlock_assert.exit

land.rhs.i:                                       ; preds = %if.end15
  %26 = load ptr, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 0, i32 1), align 32
  %dep_map.i = getelementptr inbounds %struct.raw_spinlock, ptr %26, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.__seqprop_raw_spinlock_assert.exit_crit_edge, !prof !172

land.rhs.i.__seqprop_raw_spinlock_assert.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__seqprop_raw_spinlock_assert.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 276, i32 noundef 9, ptr noundef null) #10
  br label %__seqprop_raw_spinlock_assert.exit

__seqprop_raw_spinlock_assert.exit:               ; preds = %do.end.i, %land.rhs.i.__seqprop_raw_spinlock_assert.exit_crit_edge, %if.end15.__seqprop_raw_spinlock_assert.exit_crit_edge
  %27 = load i32, ptr @tk_core, align 128
  %inc.i.i.i = add i32 %27, 1
  store i32 %inc.i.i.i, ptr @tk_core, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !208
  %28 = tail call ptr @llvm.returnaddress(i32 0) #10
  %29 = ptrtoint ptr %28 to i32
  tail call void @lock_acquire(ptr noundef getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 0, i32 0, i32 1), i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %29) #10
  %30 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 8), align 16
  %31 = ptrtoint ptr %tai to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %tai, align 4
  %call28 = call i32 @__do_adjtimex(ptr noundef %txc, ptr noundef nonnull %ts, ptr noundef nonnull %tai, ptr noundef nonnull %ad) #10
  %32 = ptrtoint ptr %tai to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tai, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %30)
  %cmp29.not = icmp eq i32 %33, %30
  br i1 %cmp29.not, label %__seqprop_raw_spinlock_assert.exit.if.end32_crit_edge, label %if.then31

__seqprop_raw_spinlock_assert.exit.if.end32_crit_edge: ; preds = %__seqprop_raw_spinlock_assert.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then31:                                        ; preds = %__seqprop_raw_spinlock_assert.exit
  call void @__sanitizer_cov_trace_pc() #12
  store i32 %33, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 8), align 16
  %34 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 5), align 8
  %conv.i = sext i32 %33 to i64
  %mul.i.i = mul nsw i64 %conv.i, 1000000000
  %add.i = add i64 %34, %mul.i.i
  store i64 %add.i, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 7), align 8
  call fastcc void @timekeeping_update(ptr noundef getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1), i32 noundef 6)
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %__seqprop_raw_spinlock_assert.exit.if.end32_crit_edge
  %35 = xor i1 %cmp29.not, true
  %call.i89 = call i64 @ntp_get_next_leap() #10
  store i64 %call.i89, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 11), align 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372036854775807, i64 %call.i89)
  %cmp.not.i90 = icmp eq i64 %call.i89, 9223372036854775807
  br i1 %cmp.not.i90, label %if.end32.tk_update_leap_state.exit_crit_edge, label %if.then.i91

if.end32.tk_update_leap_state.exit_crit_edge:     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %tk_update_leap_state.exit

if.then.i91:                                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %36 = load i64, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 5), align 8
  %sub.i = sub i64 %call.i89, %36
  store i64 %sub.i, ptr getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 1, i32 11), align 32
  br label %tk_update_leap_state.exit

tk_update_leap_state.exit:                        ; preds = %if.then.i91, %if.end32.tk_update_leap_state.exit_crit_edge
  call void @lock_release(ptr noundef getelementptr inbounds (%struct.anon.71, ptr @tk_core, i32 0, i32 0, i32 0, i32 1), i32 noundef %29) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !212
  %37 = load i32, ptr @tk_core, align 128
  %inc.i.i = add i32 %37, 1
  store i32 %inc.i.i, ptr @tk_core, align 128
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @timekeeper_lock, i32 noundef %call17) #10
  %38 = ptrtoint ptr %txc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %txc, align 8
  %and52 = and i32 %39, 16386
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end60, label %if.then54

if.then54:                                        ; preds = %tk_update_leap_state.exit
  %call55 = call fastcc zeroext i1 @timekeeping_advance(i32 noundef 1)
  %or87 = or i1 %call55, %35
  br i1 %or87, label %if.then54.if.then62_crit_edge, label %if.then54.if.end63_crit_edge

if.then54.if.end63_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

if.then54.if.then62_crit_edge:                    ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then62

if.end60:                                         ; preds = %tk_update_leap_state.exit
  br i1 %cmp29.not, label %if.end60.if.end63_crit_edge, label %if.end60.if.then62_crit_edge

if.end60.if.then62_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then62

if.end60.if.end63_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

if.then62:                                        ; preds = %if.end60.if.then62_crit_edge, %if.then54.if.then62_crit_edge
  call void @clock_was_set(i32 noundef 0) #10
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.end60.if.end63_crit_edge, %if.then54.if.end63_crit_edge
  call void @ntp_notify_cmos_timer() #10
  br label %cleanup64

cleanup64:                                        ; preds = %if.end63, %if.then2.cleanup64_crit_edge, %if.else44.i.cleanup64_crit_edge, %if.then38.i.cleanup64_crit_edge, %if.end31.i.cleanup64_crit_edge, %if.then28.i.cleanup64_crit_edge, %land.lhs.true19.i.cleanup64_crit_edge, %land.lhs.true12.i.cleanup64_crit_edge, %land.lhs.true.i.cleanup64_crit_edge, %if.then.i.cleanup64_crit_edge
  %retval.1 = phi i32 [ %call28, %if.end63 ], [ -22, %if.else44.i.cleanup64_crit_edge ], [ -22, %if.then38.i.cleanup64_crit_edge ], [ -22, %if.end31.i.cleanup64_crit_edge ], [ -1, %if.then28.i.cleanup64_crit_edge ], [ -22, %land.lhs.true19.i.cleanup64_crit_edge ], [ -1, %land.lhs.true12.i.cleanup64_crit_edge ], [ -1, %land.lhs.true.i.cleanup64_crit_edge ], [ -22, %if.then.i.cleanup64_crit_edge ], [ %call11, %if.then2.cleanup64_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tai) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts) #10
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %ad) #10
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__do_adjtimex(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntp_notify_cmos_timer() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @dummy_clock_read(ptr nocapture noundef readnone %cs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @timekeeping_suspended, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = load i64, ptr @cycles_at_suspend, align 8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i64 @sched_clock() #10
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i64 [ %1, %if.then ], [ %call.i, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @raw_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @scale64_check_overflow(i64 noundef %mult, i64 noundef %div, ptr nocapture noundef %base) unnamed_addr #0 align 64 {
entry:
  %rem = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem) #10
  %0 = ptrtoint ptr %rem to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %rem, align 8, !annotation !246
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %base, align 8
  %call = call i64 @div64_u64_rem(i64 noundef %2, i64 noundef %div, ptr noundef nonnull %rem) #10
  %shr.i = lshr i64 %mult, 32
  %conv.i = trunc i64 %shr.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool.not.i = icmp eq i32 %conv.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = call i32 @llvm.ctlz.i32(i32 %conv.i, i1 true) #10, !range !230
  %add.i.neg = or i32 %3, -64
  br label %fls64.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv1.i = trunc i64 %mult to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i)
  %tobool.not.i5.i = icmp eq i32 %conv1.i, 0
  %4 = call i32 @llvm.ctlz.i32(i32 %conv1.i, i1 true) #10, !range !230
  %sub.i6.i.neg = or i32 %4, -32
  %cond.i7.i.neg = select i1 %tobool.not.i5.i, i32 0, i32 %sub.i6.i.neg
  br label %fls64.exit

fls64.exit:                                       ; preds = %if.end.i, %if.then.i
  %retval.0.i.neg = phi i32 [ %add.i.neg, %if.then.i ], [ %cond.i7.i.neg, %if.end.i ]
  %sub = add nsw i32 %retval.0.i.neg, 64
  %shr.i17 = lshr i64 %call, 32
  %conv.i18 = trunc i64 %shr.i17 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i18)
  %tobool.not.i19 = icmp eq i32 %conv.i18, 0
  br i1 %tobool.not.i19, label %if.end.i26, label %if.then.i21

if.then.i21:                                      ; preds = %fls64.exit
  call void @__sanitizer_cov_trace_pc() #12
  %5 = call i32 @llvm.ctlz.i32(i32 %conv.i18, i1 true) #10, !range !230
  %add.i20 = sub nuw nsw i32 64, %5
  br label %fls64.exit28

if.end.i26:                                       ; preds = %fls64.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv1.i22 = trunc i64 %call to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i22)
  %tobool.not.i5.i23 = icmp eq i32 %conv1.i22, 0
  %6 = call i32 @llvm.ctlz.i32(i32 %conv1.i22, i1 true) #10, !range !230
  %sub.i6.i24 = sub nuw nsw i32 32, %6
  %cond.i7.i25 = select i1 %tobool.not.i5.i23, i32 0, i32 %sub.i6.i24
  br label %fls64.exit28

fls64.exit28:                                     ; preds = %if.end.i26, %if.then.i21
  %retval.0.i27 = phi i32 [ %add.i20, %if.then.i21 ], [ %cond.i7.i25, %if.end.i26 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %retval.0.i27)
  %cmp = icmp ult i32 %sub, %retval.0.i27
  br i1 %cmp, label %fls64.exit28.cleanup_crit_edge, label %lor.lhs.false

fls64.exit28.cleanup_crit_edge:                   ; preds = %fls64.exit28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %fls64.exit28
  br i1 %tobool.not.i, label %if.end.i38, label %if.then.i33

if.then.i33:                                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %7 = call i32 @llvm.ctlz.i32(i32 %conv.i, i1 true) #10, !range !230
  %add.i32.neg = or i32 %7, -64
  br label %fls64.exit40

if.end.i38:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %conv1.i34 = trunc i64 %mult to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i34)
  %tobool.not.i5.i35 = icmp eq i32 %conv1.i34, 0
  %8 = call i32 @llvm.ctlz.i32(i32 %conv1.i34, i1 true) #10, !range !230
  %sub.i6.i36.neg = or i32 %8, -32
  %cond.i7.i37.neg = select i1 %tobool.not.i5.i35, i32 0, i32 %sub.i6.i36.neg
  br label %fls64.exit40

fls64.exit40:                                     ; preds = %if.end.i38, %if.then.i33
  %retval.0.i39.neg = phi i32 [ %add.i32.neg, %if.then.i33 ], [ %cond.i7.i37.neg, %if.end.i38 ]
  %sub4 = add nsw i32 %retval.0.i39.neg, 64
  %9 = ptrtoint ptr %rem to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %rem, align 8
  %shr.i41 = lshr i64 %10, 32
  %conv.i42 = trunc i64 %shr.i41 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i42)
  %tobool.not.i43 = icmp eq i32 %conv.i42, 0
  br i1 %tobool.not.i43, label %if.end.i50, label %if.then.i45

if.then.i45:                                      ; preds = %fls64.exit40
  call void @__sanitizer_cov_trace_pc() #12
  %11 = call i32 @llvm.ctlz.i32(i32 %conv.i42, i1 true) #10, !range !230
  %add.i44 = sub nuw nsw i32 64, %11
  br label %fls64.exit52

if.end.i50:                                       ; preds = %fls64.exit40
  call void @__sanitizer_cov_trace_pc() #12
  %conv1.i46 = trunc i64 %10 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i46)
  %tobool.not.i5.i47 = icmp eq i32 %conv1.i46, 0
  %12 = call i32 @llvm.ctlz.i32(i32 %conv1.i46, i1 true) #10, !range !230
  %sub.i6.i48 = sub nuw nsw i32 32, %12
  %cond.i7.i49 = select i1 %tobool.not.i5.i47, i32 0, i32 %sub.i6.i48
  br label %fls64.exit52

fls64.exit52:                                     ; preds = %if.end.i50, %if.then.i45
  %retval.0.i51 = phi i32 [ %add.i44, %if.then.i45 ], [ %cond.i7.i49, %if.end.i50 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sub4, i32 %retval.0.i51)
  %cmp6 = icmp ult i32 %sub4, %retval.0.i51
  br i1 %cmp6, label %fls64.exit52.cleanup_crit_edge, label %if.end

fls64.exit52.cleanup_crit_edge:                   ; preds = %fls64.exit52
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %fls64.exit52
  call void @__sanitizer_cov_trace_pc() #12
  %mul = mul i64 %call, %mult
  %mul7 = mul i64 %10, %mult
  %call8 = call i64 @div64_u64(i64 noundef %mul7, i64 noundef %div) #10
  %add = add i64 %call8, %mul
  %13 = ptrtoint ptr %base to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %add, ptr %base, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %fls64.exit52.cleanup_crit_edge, %fls64.exit28.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -75, %fls64.exit52.cleanup_crit_edge ], [ -75, %fls64.exit28.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64_rem(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ntp_clear() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_vsyscall(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk_deferred(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @tk_debug_account_sleep_time(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ntp_tick_length() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @second_overflow(i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ntp_get_next_leap() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree noinline noprofile norecurse nosanitize_coverage nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind readnone }
attributes #14 = { cold }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !50, !51, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !101, !102, !103, !105, !107, !109, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !145, !146, !148, !149, !150, !151, !152}
!llvm.named.register.sp = !{!154}
!llvm.module.flags = !{!155, !156, !157, !158, !159, !160, !161, !162}
!llvm.ident = !{!163}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/time/timekeeping.c", i32 42, i32 1}
!2 = !{ptr @timekeeper_lock, !1, !"timekeeper_lock", i1 false, i1 false}
!3 = !{ptr @__ksymtab_ktime_get_mono_fast_ns, !4, !"__ksymtab_ktime_get_mono_fast_ns", i1 false, i1 false}
!4 = !{!"../kernel/time/timekeeping.c", i32 489, i32 1}
!5 = !{ptr @__ksymtab_ktime_get_raw_fast_ns, !6, !"__ksymtab_ktime_get_raw_fast_ns", i1 false, i1 false}
!6 = !{!"../kernel/time/timekeeping.c", i32 501, i32 1}
!7 = !{ptr @__ksymtab_ktime_get_boot_fast_ns, !8, !"__ksymtab_ktime_get_boot_fast_ns", i1 false, i1 false}
!8 = !{!"../kernel/time/timekeeping.c", i32 533, i32 1}
!9 = !{ptr @__ksymtab_ktime_get_real_fast_ns, !10, !"__ksymtab_ktime_get_real_fast_ns", i1 false, i1 false}
!10 = !{!"../kernel/time/timekeeping.c", i32 566, i32 1}
!11 = !{ptr @__ksymtab_pvclock_gtod_register_notifier, !12, !"__ksymtab_pvclock_gtod_register_notifier", i1 false, i1 false}
!12 = !{!"../kernel/time/timekeeping.c", i32 673, i32 1}
!13 = !{ptr @__ksymtab_pvclock_gtod_unregister_notifier, !14, !"__ksymtab_pvclock_gtod_unregister_notifier", i1 false, i1 false}
!14 = !{!"../kernel/time/timekeeping.c", i32 691, i32 1}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../kernel/time/timekeeping.c", i32 802, i32 2}
!17 = !{ptr @__ksymtab_ktime_get_real_ts64, !18, !"__ksymtab_ktime_get_real_ts64", i1 false, i1 false}
!18 = !{!"../kernel/time/timekeeping.c", i32 815, i32 1}
!19 = !{ptr @__ksymtab_ktime_get, !20, !"__ksymtab_ktime_get", i1 false, i1 false}
!20 = !{!"../kernel/time/timekeeping.c", i32 835, i32 1}
!21 = !{ptr @__ksymtab_ktime_get_resolution_ns, !22, !"__ksymtab_ktime_get_resolution_ns", i1 false, i1 false}
!22 = !{!"../kernel/time/timekeeping.c", i32 852, i32 1}
!23 = !{ptr @__ksymtab_ktime_get_with_offset, !24, !"__ksymtab_ktime_get_with_offset", i1 false, i1 false}
!24 = !{!"../kernel/time/timekeeping.c", i32 879, i32 1}
!25 = !{ptr @__ksymtab_ktime_get_coarse_with_offset, !26, !"__ksymtab_ktime_get_coarse_with_offset", i1 false, i1 false}
!26 = !{!"../kernel/time/timekeeping.c", i32 899, i32 1}
!27 = !{ptr @__ksymtab_ktime_mono_to_any, !28, !"__ksymtab_ktime_mono_to_any", i1 false, i1 false}
!28 = !{!"../kernel/time/timekeeping.c", i32 919, i32 1}
!29 = !{ptr @__ksymtab_ktime_get_raw, !30, !"__ksymtab_ktime_get_raw", i1 false, i1 false}
!30 = !{!"../kernel/time/timekeeping.c", i32 940, i32 1}
!31 = !{ptr @__ksymtab_ktime_get_ts64, !32, !"__ksymtab_ktime_get_ts64", i1 false, i1 false}
!32 = !{!"../kernel/time/timekeeping.c", i32 971, i32 1}
!33 = !{ptr @__ksymtab_ktime_get_seconds, !34, !"__ksymtab_ktime_get_seconds", i1 false, i1 false}
!34 = !{!"../kernel/time/timekeeping.c", i32 989, i32 1}
!35 = !{ptr @__ksymtab_ktime_get_real_seconds, !36, !"__ksymtab_ktime_get_real_seconds", i1 false, i1 false}
!36 = !{!"../kernel/time/timekeeping.c", i32 1018, i32 1}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../kernel/time/timekeeping.c", i32 1046, i32 2}
!39 = !{ptr @__ksymtab_ktime_get_snapshot, !40, !"__ksymtab_ktime_get_snapshot", i1 false, i1 false}
!40 = !{!"../kernel/time/timekeeping.c", i32 1065, i32 1}
!41 = !{ptr @__ksymtab_get_device_system_crosststamp, !42, !"__ksymtab_get_device_system_crosststamp", i1 false, i1 false}
!42 = !{!"../kernel/time/timekeeping.c", i32 1285, i32 1}
!43 = !{ptr @__ksymtab_do_settimeofday64, !44, !"__ksymtab_do_settimeofday64", i1 false, i1 false}
!44 = !{!"../kernel/time/timekeeping.c", i32 1333, i32 1}
!45 = !{ptr @__ksymtab_ktime_get_raw_ts64, !46, !"__ksymtab_ktime_get_raw_ts64", i1 false, i1 false}
!46 = !{!"../kernel/time/timekeeping.c", i32 1512, i32 1}
!47 = !{ptr @.str.2, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../kernel/time/timekeeping.c", i32 1623, i32 3}
!49 = !{ptr @.str.3, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @timekeeping_init._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @timekeeping_init._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = distinct !{null, !53, !"old_delta", i1 false, i1 false}
!53 = !{!"../kernel/time/timekeeping.c", i32 1823, i32 27}
!54 = !{ptr @__initcall__kmod_timekeeping__237_1898_timekeeping_init_ops6, !55, !"__initcall__kmod_timekeeping__237_1898_timekeeping_init_ops6", i1 false, i1 false}
!55 = !{!"../kernel/time/timekeeping.c", i32 1898, i32 1}
!56 = !{ptr @__ksymtab_getboottime64, !57, !"__ksymtab_getboottime64", i1 false, i1 false}
!57 = !{!"../kernel/time/timekeeping.c", i32 2232, i32 1}
!58 = !{ptr @__ksymtab_ktime_get_coarse_real_ts64, !59, !"__ksymtab_ktime_get_coarse_real_ts64", i1 false, i1 false}
!59 = !{!"../kernel/time/timekeeping.c", i32 2245, i32 1}
!60 = !{ptr @__ksymtab_ktime_get_coarse_ts64, !61, !"__ksymtab_ktime_get_coarse_ts64", i1 false, i1 false}
!61 = !{!"../kernel/time/timekeeping.c", i32 2263, i32 1}
!62 = !{ptr @timekeeping_suspended, !63, !"timekeeping_suspended", i1 false, i1 false}
!63 = !{!"../kernel/time/timekeeping.c", i32 58, i32 19}
!64 = !{ptr @persistent_clock_is_local, !65, !"persistent_clock_is_local", i1 false, i1 false}
!65 = !{!"../kernel/time/timekeeping.c", i32 1383, i32 5}
!66 = distinct !{null, !67, !"suspend_timing_needed", i1 false, i1 false}
!67 = !{!"../kernel/time/timekeeping.c", i32 1603, i32 13}
!68 = distinct !{null, !69, !"persistent_clock_exists", i1 false, i1 false}
!69 = !{!"../kernel/time/timekeeping.c", i32 1606, i32 13}
!70 = !{ptr @timekeeping_suspend_time, !71, !"timekeeping_suspend_time", i1 false, i1 false}
!71 = !{!"../kernel/time/timekeeping.c", i32 1657, i32 26}
!72 = !{ptr @.str.4, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../kernel/time/timekeeping.c", i32 104, i32 13}
!74 = !{ptr @tk_fast_mono, !75, !"tk_fast_mono", i1 false, i1 false}
!75 = !{!"../kernel/time/timekeeping.c", i32 103, i32 23}
!76 = !{ptr @dummy_clock, !77, !"dummy_clock", i1 false, i1 false}
!77 = !{!"../kernel/time/timekeeping.c", i32 84, i32 27}
!78 = !{ptr @cycles_at_suspend, !79, !"cycles_at_suspend", i1 false, i1 false}
!79 = !{!"../kernel/time/timekeeping.c", i32 75, i32 12}
!80 = !{ptr @.str.5, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../kernel/time/timekeeping.c", i32 110, i32 13}
!82 = !{ptr @tk_fast_raw, !83, !"tk_fast_raw", i1 false, i1 false}
!83 = !{!"../kernel/time/timekeeping.c", i32 109, i32 23}
!84 = !{ptr @.str.6, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../kernel/time/timekeeping.c", i32 52, i32 9}
!86 = !{ptr @tk_core, !87, !"tk_core", i1 false, i1 false}
!87 = !{!"../kernel/time/timekeeping.c", i32 51, i32 3}
!88 = !{ptr @pvclock_gtod_chain, !89, !"pvclock_gtod_chain", i1 false, i1 false}
!89 = !{!"../kernel/time/timekeeping.c", i32 649, i32 8}
!90 = !{ptr @offsets, !91, !"offsets", i1 false, i1 false}
!91 = !{!"../kernel/time/timekeeping.c", i32 854, i32 17}
!92 = !{ptr @.str.7, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../include/linux/seqlock.h", i32 276, i32 1}
!94 = distinct !{null, !95, !"__already_done", i1 false, i1 false}
!95 = !{!"../kernel/time/timekeeping.c", i32 159, i32 2}
!96 = !{ptr @shadow_timekeeper, !97, !"shadow_timekeeper", i1 false, i1 false}
!97 = !{!"../kernel/time/timekeeping.c", i32 55, i32 26}
!98 = !{ptr @.str.8, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../kernel/time/timekeeping.c", i32 1671, i32 3}
!100 = !{ptr @.str.9, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @__timekeeping_inject_sleeptime._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @__timekeeping_inject_sleeptime._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @halt_fast_timekeeper.tkr_dummy, !104, !"tkr_dummy", i1 false, i1 false}
!104 = !{!"../kernel/time/timekeeping.c", i32 634, i32 29}
!105 = !{ptr @timekeeping_syscore_ops, !106, !"timekeeping_syscore_ops", i1 false, i1 false}
!106 = !{!"../kernel/time/timekeeping.c", i32 1888, i32 27}
!107 = !{ptr @.str.10, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../kernel/time/timekeeping.c", i32 206, i32 3}
!109 = !{ptr @.str.11, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @timekeeping_check_update._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @timekeeping_check_update._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.13, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../kernel/time/timekeeping.c", i32 208, i32 3}
!114 = !{ptr @timekeeping_check_update._entry.12, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @timekeeping_check_update._entry_ptr.14, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.16, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../kernel/time/timekeeping.c", i32 211, i32 4}
!118 = !{ptr @timekeeping_check_update._entry.15, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @timekeeping_check_update._entry_ptr.17, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.19, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../kernel/time/timekeeping.c", i32 213, i32 4}
!122 = !{ptr @timekeeping_check_update._entry.18, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @timekeeping_check_update._entry_ptr.20, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.22, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../kernel/time/timekeeping.c", i32 219, i32 4}
!126 = !{ptr @timekeeping_check_update._entry.21, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @timekeeping_check_update._entry_ptr.23, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.25, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../kernel/time/timekeeping.c", i32 220, i32 4}
!130 = !{ptr @timekeeping_check_update._entry.24, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @timekeeping_check_update._entry_ptr.26, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.28, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../kernel/time/timekeeping.c", i32 221, i32 4}
!134 = !{ptr @timekeeping_check_update._entry.27, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @timekeeping_check_update._entry_ptr.29, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.31, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../kernel/time/timekeeping.c", i32 229, i32 4}
!138 = !{ptr @timekeeping_check_update._entry.30, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @timekeeping_check_update._entry_ptr.32, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @timekeeping_check_update._entry.33, !141, !"_entry", i1 false, i1 false}
!141 = !{!"../kernel/time/timekeeping.c", i32 230, i32 4}
!142 = !{ptr @timekeeping_check_update._entry_ptr.34, !141, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @timekeeping_check_update._entry.35, !144, !"_entry", i1 false, i1 false}
!144 = !{!"../kernel/time/timekeeping.c", i32 231, i32 4}
!145 = !{ptr @timekeeping_check_update._entry_ptr.36, !144, !"_entry_ptr", i1 false, i1 false}
!146 = distinct !{null, !147, !"__already_done", i1 false, i1 false}
!147 = !{!"../kernel/time/timekeeping.c", i32 2011, i32 3}
!148 = !{ptr @.str.37, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.38, !147, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @timekeeping_adjust._entry, !147, !"_entry", i1 false, i1 false}
!151 = !{ptr @timekeeping_adjust._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!152 = distinct !{null, !153, !"__already_done", i1 false, i1 false}
!153 = !{!"../kernel/time/timekeeping.c", i32 1968, i32 3}
!154 = !{!"sp"}
!155 = !{i32 1, !"wchar_size", i32 2}
!156 = !{i32 1, !"min_enum_size", i32 4}
!157 = !{i32 8, !"branch-target-enforcement", i32 0}
!158 = !{i32 8, !"sign-return-address", i32 0}
!159 = !{i32 8, !"sign-return-address-all", i32 0}
!160 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!161 = !{i32 7, !"uwtable", i32 1}
!162 = !{i32 7, !"frame-pointer", i32 2}
!163 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!164 = !{i64 2150024963}
!165 = !{!"branch_weights", i32 2000, i32 1}
!166 = !{i64 2154524652}
!167 = !{i64 2154524494}
!168 = !{i64 2154524822}
!169 = !{i64 2154496519}
!170 = !{i64 2154496361}
!171 = !{i64 2154496689}
!172 = !{!"branch_weights", i32 1, i32 2000}
!173 = !{i64 1181353}
!174 = !{i64 692465, i64 692526}
!175 = !{i64 695197}
!176 = !{i64 695482}
!177 = !{i64 2154535352}
!178 = !{i64 2154535194}
!179 = !{i64 2154535522}
!180 = !{i64 2154541797}
!181 = !{i64 2154541639}
!182 = !{i64 2154541967}
!183 = !{i64 2154548564}
!184 = !{i64 2154548406}
!185 = !{i64 2154548734}
!186 = !{i64 2154559412}
!187 = !{i64 2154559254}
!188 = !{i64 2154559582}
!189 = !{i64 2154565864}
!190 = !{i64 2154565706}
!191 = !{i64 2154566034}
!192 = !{i64 2154576062}
!193 = !{i64 2154575904}
!194 = !{i64 2154576232}
!195 = !{i64 2154582607}
!196 = !{i64 2154582449}
!197 = !{i64 2154582777}
!198 = !{i64 2154595414}
!199 = !{i64 2154595256}
!200 = !{i64 2154595584}
!201 = !{i64 2154607077}
!202 = !{i64 2154606919}
!203 = !{i64 2154607247}
!204 = !{i64 2154613605}
!205 = !{i64 2154613447}
!206 = !{i64 2154613775}
!207 = !{i64 2148096204, i64 2148096484, i64 2148096818, i64 2148097152}
!208 = !{i64 2150025288}
!209 = !{!210}
!210 = distinct !{!210, !211, !"tk_xtime: %agg.result"}
!211 = distinct !{!211, !"tk_xtime"}
!212 = !{i64 2150025613}
!213 = !{i64 2150032102}
!214 = !{i64 2150032258}
!215 = !{!216}
!216 = distinct !{!216, !217, !"tk_xtime: %agg.result"}
!217 = distinct !{!217, !"tk_xtime"}
!218 = !{i64 2154657247}
!219 = !{i64 2154657089}
!220 = !{i64 2154657417}
!221 = !{i64 2154663351}
!222 = !{i64 2154663193}
!223 = !{i64 2154663521}
!224 = !{i64 2154672029}
!225 = !{i64 2154671871}
!226 = !{i64 2154672199}
!227 = !{!228}
!228 = distinct !{!228, !229, !"tk_xtime: %agg.result"}
!229 = distinct !{!229, !"tk_xtime"}
!230 = !{i32 0, i32 33}
!231 = !{i64 2154761081}
!232 = !{i64 2154760923}
!233 = !{i64 2154761251}
!234 = !{!235}
!235 = distinct !{!235, !236, !"tk_xtime: %agg.result"}
!236 = distinct !{!236, !"tk_xtime"}
!237 = !{i64 2154767385}
!238 = !{i64 2154767227}
!239 = !{i64 2154767555}
!240 = !{!241}
!241 = distinct !{!241, !242, !"tk_xtime: %agg.result"}
!242 = distinct !{!242, !"tk_xtime"}
!243 = !{i64 2154777625}
!244 = !{i64 2154777467}
!245 = !{i64 2154777795}
!246 = !{!"auto-init"}
