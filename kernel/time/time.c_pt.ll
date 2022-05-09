; ModuleID = '/llk/IR_all_yes/kernel/time/time.c_pt.bc'
source_filename = "../kernel/time/time.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+sys_tz\22, \22a\22\09"
module asm "\09.weak\09__crc_sys_tz\09\09\09\09"
module asm "\09.long\09__crc_sys_tz\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sys_tz:\09\09\09\09\09"
module asm "\09.asciz \09\22sys_tz\22\09\09\09\09\09"
module asm "__kstrtabns_sys_tz:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+jiffies_to_msecs\22, \22a\22\09"
module asm "\09.weak\09__crc_jiffies_to_msecs\09\09\09\09"
module asm "\09.long\09__crc_jiffies_to_msecs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_jiffies_to_msecs:\09\09\09\09\09"
module asm "\09.asciz \09\22jiffies_to_msecs\22\09\09\09\09\09"
module asm "__kstrtabns_jiffies_to_msecs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+jiffies_to_usecs\22, \22a\22\09"
module asm "\09.weak\09__crc_jiffies_to_usecs\09\09\09\09"
module asm "\09.long\09__crc_jiffies_to_usecs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_jiffies_to_usecs:\09\09\09\09\09"
module asm "\09.asciz \09\22jiffies_to_usecs\22\09\09\09\09\09"
module asm "__kstrtabns_jiffies_to_usecs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mktime64\22, \22a\22\09"
module asm "\09.weak\09__crc_mktime64\09\09\09\09"
module asm "\09.long\09__crc_mktime64\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mktime64:\09\09\09\09\09"
module asm "\09.asciz \09\22mktime64\22\09\09\09\09\09"
module asm "__kstrtabns_mktime64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ns_to_kernel_old_timeval\22, \22a\22\09"
module asm "\09.weak\09__crc_ns_to_kernel_old_timeval\09\09\09\09"
module asm "\09.long\09__crc_ns_to_kernel_old_timeval\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ns_to_kernel_old_timeval:\09\09\09\09\09"
module asm "\09.asciz \09\22ns_to_kernel_old_timeval\22\09\09\09\09\09"
module asm "__kstrtabns_ns_to_kernel_old_timeval:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+set_normalized_timespec64\22, \22a\22\09"
module asm "\09.weak\09__crc_set_normalized_timespec64\09\09\09\09"
module asm "\09.long\09__crc_set_normalized_timespec64\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_set_normalized_timespec64:\09\09\09\09\09"
module asm "\09.asciz \09\22set_normalized_timespec64\22\09\09\09\09\09"
module asm "__kstrtabns_set_normalized_timespec64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ns_to_timespec64\22, \22a\22\09"
module asm "\09.weak\09__crc_ns_to_timespec64\09\09\09\09"
module asm "\09.long\09__crc_ns_to_timespec64\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ns_to_timespec64:\09\09\09\09\09"
module asm "\09.asciz \09\22ns_to_timespec64\22\09\09\09\09\09"
module asm "__kstrtabns_ns_to_timespec64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__msecs_to_jiffies\22, \22a\22\09"
module asm "\09.weak\09__crc___msecs_to_jiffies\09\09\09\09"
module asm "\09.long\09__crc___msecs_to_jiffies\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___msecs_to_jiffies:\09\09\09\09\09"
module asm "\09.asciz \09\22__msecs_to_jiffies\22\09\09\09\09\09"
module asm "__kstrtabns___msecs_to_jiffies:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__usecs_to_jiffies\22, \22a\22\09"
module asm "\09.weak\09__crc___usecs_to_jiffies\09\09\09\09"
module asm "\09.long\09__crc___usecs_to_jiffies\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___usecs_to_jiffies:\09\09\09\09\09"
module asm "\09.asciz \09\22__usecs_to_jiffies\22\09\09\09\09\09"
module asm "__kstrtabns___usecs_to_jiffies:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+timespec64_to_jiffies\22, \22a\22\09"
module asm "\09.weak\09__crc_timespec64_to_jiffies\09\09\09\09"
module asm "\09.long\09__crc_timespec64_to_jiffies\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_timespec64_to_jiffies:\09\09\09\09\09"
module asm "\09.asciz \09\22timespec64_to_jiffies\22\09\09\09\09\09"
module asm "__kstrtabns_timespec64_to_jiffies:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+jiffies_to_timespec64\22, \22a\22\09"
module asm "\09.weak\09__crc_jiffies_to_timespec64\09\09\09\09"
module asm "\09.long\09__crc_jiffies_to_timespec64\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_jiffies_to_timespec64:\09\09\09\09\09"
module asm "\09.asciz \09\22jiffies_to_timespec64\22\09\09\09\09\09"
module asm "__kstrtabns_jiffies_to_timespec64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+jiffies_to_clock_t\22, \22a\22\09"
module asm "\09.weak\09__crc_jiffies_to_clock_t\09\09\09\09"
module asm "\09.long\09__crc_jiffies_to_clock_t\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_jiffies_to_clock_t:\09\09\09\09\09"
module asm "\09.asciz \09\22jiffies_to_clock_t\22\09\09\09\09\09"
module asm "__kstrtabns_jiffies_to_clock_t:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+clock_t_to_jiffies\22, \22a\22\09"
module asm "\09.weak\09__crc_clock_t_to_jiffies\09\09\09\09"
module asm "\09.long\09__crc_clock_t_to_jiffies\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clock_t_to_jiffies:\09\09\09\09\09"
module asm "\09.asciz \09\22clock_t_to_jiffies\22\09\09\09\09\09"
module asm "__kstrtabns_clock_t_to_jiffies:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+jiffies_64_to_clock_t\22, \22a\22\09"
module asm "\09.weak\09__crc_jiffies_64_to_clock_t\09\09\09\09"
module asm "\09.long\09__crc_jiffies_64_to_clock_t\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_jiffies_64_to_clock_t:\09\09\09\09\09"
module asm "\09.asciz \09\22jiffies_64_to_clock_t\22\09\09\09\09\09"
module asm "__kstrtabns_jiffies_64_to_clock_t:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+jiffies64_to_nsecs\22, \22a\22\09"
module asm "\09.weak\09__crc_jiffies64_to_nsecs\09\09\09\09"
module asm "\09.long\09__crc_jiffies64_to_nsecs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_jiffies64_to_nsecs:\09\09\09\09\09"
module asm "\09.asciz \09\22jiffies64_to_nsecs\22\09\09\09\09\09"
module asm "__kstrtabns_jiffies64_to_nsecs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+jiffies64_to_msecs\22, \22a\22\09"
module asm "\09.weak\09__crc_jiffies64_to_msecs\09\09\09\09"
module asm "\09.long\09__crc_jiffies64_to_msecs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_jiffies64_to_msecs:\09\09\09\09\09"
module asm "\09.asciz \09\22jiffies64_to_msecs\22\09\09\09\09\09"
module asm "__kstrtabns_jiffies64_to_msecs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+nsecs_to_jiffies64\22, \22a\22\09"
module asm "\09.weak\09__crc_nsecs_to_jiffies64\09\09\09\09"
module asm "\09.long\09__crc_nsecs_to_jiffies64\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nsecs_to_jiffies64:\09\09\09\09\09"
module asm "\09.asciz \09\22nsecs_to_jiffies64\22\09\09\09\09\09"
module asm "__kstrtabns_nsecs_to_jiffies64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nsecs_to_jiffies\22, \22a\22\09"
module asm "\09.weak\09__crc_nsecs_to_jiffies\09\09\09\09"
module asm "\09.long\09__crc_nsecs_to_jiffies\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nsecs_to_jiffies:\09\09\09\09\09"
module asm "\09.asciz \09\22nsecs_to_jiffies\22\09\09\09\09\09"
module asm "__kstrtabns_nsecs_to_jiffies:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+get_timespec64\22, \22a\22\09"
module asm "\09.weak\09__crc_get_timespec64\09\09\09\09"
module asm "\09.long\09__crc_get_timespec64\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_timespec64:\09\09\09\09\09"
module asm "\09.asciz \09\22get_timespec64\22\09\09\09\09\09"
module asm "__kstrtabns_get_timespec64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+put_timespec64\22, \22a\22\09"
module asm "\09.weak\09__crc_put_timespec64\09\09\09\09"
module asm "\09.long\09__crc_put_timespec64\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_put_timespec64:\09\09\09\09\09"
module asm "\09.asciz \09\22put_timespec64\22\09\09\09\09\09"
module asm "__kstrtabns_put_timespec64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+get_old_timespec32\22, \22a\22\09"
module asm "\09.weak\09__crc_get_old_timespec32\09\09\09\09"
module asm "\09.long\09__crc_get_old_timespec32\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_old_timespec32:\09\09\09\09\09"
module asm "\09.asciz \09\22get_old_timespec32\22\09\09\09\09\09"
module asm "__kstrtabns_get_old_timespec32:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+put_old_timespec32\22, \22a\22\09"
module asm "\09.weak\09__crc_put_old_timespec32\09\09\09\09"
module asm "\09.long\09__crc_put_old_timespec32\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_put_old_timespec32:\09\09\09\09\09"
module asm "\09.asciz \09\22put_old_timespec32\22\09\09\09\09\09"
module asm "__kstrtabns_put_old_timespec32:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+get_itimerspec64\22, \22a\22\09"
module asm "\09.weak\09__crc_get_itimerspec64\09\09\09\09"
module asm "\09.long\09__crc_get_itimerspec64\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_itimerspec64:\09\09\09\09\09"
module asm "\09.asciz \09\22get_itimerspec64\22\09\09\09\09\09"
module asm "__kstrtabns_get_itimerspec64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+put_itimerspec64\22, \22a\22\09"
module asm "\09.weak\09__crc_put_itimerspec64\09\09\09\09"
module asm "\09.long\09__crc_put_itimerspec64\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_put_itimerspec64:\09\09\09\09\09"
module asm "\09.asciz \09\22put_itimerspec64\22\09\09\09\09\09"
module asm "__kstrtabns_put_itimerspec64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+get_old_itimerspec32\22, \22a\22\09"
module asm "\09.weak\09__crc_get_old_itimerspec32\09\09\09\09"
module asm "\09.long\09__crc_get_old_itimerspec32\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_old_itimerspec32:\09\09\09\09\09"
module asm "\09.asciz \09\22get_old_itimerspec32\22\09\09\09\09\09"
module asm "__kstrtabns_get_old_itimerspec32:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+put_old_itimerspec32\22, \22a\22\09"
module asm "\09.weak\09__crc_put_old_itimerspec32\09\09\09\09"
module asm "\09.long\09__crc_put_old_itimerspec32\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_put_old_itimerspec32:\09\09\09\09\09"
module asm "\09.asciz \09\22put_old_itimerspec32\22\09\09\09\09\09"
module asm "__kstrtabns_put_old_itimerspec32:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.timezone = type { i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.syscall_metadata = type { ptr, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon, %struct.trace_event, ptr, ptr, %union.anon.3, ptr, i32, i32, ptr, ptr, ptr }
%union.anon = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.3 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.__kernel_old_timeval = type { i32, i32 }
%struct.old_timex32 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.old_timeval32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [44 x i8] }
%struct.old_timeval32 = type { i32, i32 }
%struct.__kernel_timex = type { i32, i32, i64, i64, i64, i64, i32, i32, i64, i64, i64, %struct.__kernel_timex_timeval, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i32, [44 x i8] }
%struct.__kernel_timex_timeval = type { i64, i64 }
%struct.__kernel_timespec = type { i64, i64 }
%struct.old_timespec32 = type { i32, i32 }
%struct.itimerspec64 = type { %struct.timespec64, %struct.timespec64 }
%struct.__kernel_itimerspec = type { %struct.__kernel_timespec, %struct.__kernel_timespec }
%struct.old_itimerspec32 = type { %struct.old_timespec32, %struct.old_timespec32 }

@sys_tz = dso_local global { %struct.timezone, [24 x i8] } zeroinitializer, align 32
@__kstrtab_sys_tz = external dso_local constant [0 x i8], align 1
@__kstrtabns_sys_tz = external dso_local constant [0 x i8], align 1
@__ksymtab_sys_tz = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sys_tz to i32), ptr @__kstrtab_sys_tz, ptr @__kstrtabns_sys_tz }, section "___ksymtab+sys_tz", align 4
@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_enter_time32\00", [47 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__time32 = internal global %struct.syscall_metadata { ptr @.str.2, i32 -1, i32 1, ptr @types__time32, ptr @args__time32, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__time32, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__time32, i64 20) }, ptr @event_enter__time32, ptr @event_exit__time32 }, align 4
@event_enter__time32 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__time32, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__time32 = internal global ptr @event_enter__time32, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_exit_time32\00", [16 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__time32 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.1 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__time32, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__time32 = internal global ptr @event_exit__time32, section "_ftrace_events", align 4
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_time32\00", [21 x i8] zeroinitializer }, align 32
@types__time32 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.15], [28 x i8] zeroinitializer }, align 32
@args__time32 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.16], [28 x i8] zeroinitializer }, align 32
@__p_syscall_meta__time32 = internal global ptr @__syscall_meta__time32, section "__syscalls_metadata", align 4
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_enter_stime32\00", [46 x i8] zeroinitializer }, align 32
@__syscall_meta__stime32 = internal global %struct.syscall_metadata { ptr @.str.5, i32 -1, i32 1, ptr @types__stime32, ptr @args__stime32, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__stime32, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__stime32, i64 20) }, ptr @event_enter__stime32, ptr @event_exit__stime32 }, align 4
@event_enter__stime32 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.3 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__stime32, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__stime32 = internal global ptr @event_enter__stime32, section "_ftrace_events", align 4
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_exit_stime32\00", [47 x i8] zeroinitializer }, align 32
@event_exit__stime32 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.4 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__stime32, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__stime32 = internal global ptr @event_exit__stime32, section "_ftrace_events", align 4
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sys_stime32\00", [20 x i8] zeroinitializer }, align 32
@types__stime32 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.15], [28 x i8] zeroinitializer }, align 32
@args__stime32 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.18], [28 x i8] zeroinitializer }, align 32
@__p_syscall_meta__stime32 = internal global ptr @__syscall_meta__stime32, section "__syscalls_metadata", align 4
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sys_enter_gettimeofday\00", [41 x i8] zeroinitializer }, align 32
@__syscall_meta__gettimeofday = internal global %struct.syscall_metadata { ptr @.str.8, i32 -1, i32 2, ptr @types__gettimeofday, ptr @args__gettimeofday, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__gettimeofday, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__gettimeofday, i64 20) }, ptr @event_enter__gettimeofday, ptr @event_exit__gettimeofday }, align 4
@event_enter__gettimeofday = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.6 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__gettimeofday, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__gettimeofday = internal global ptr @event_enter__gettimeofday, section "_ftrace_events", align 4
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sys_exit_gettimeofday\00", [42 x i8] zeroinitializer }, align 32
@event_exit__gettimeofday = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.7 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__gettimeofday, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__gettimeofday = internal global ptr @event_exit__gettimeofday, section "_ftrace_events", align 4
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_gettimeofday\00", [47 x i8] zeroinitializer }, align 32
@types__gettimeofday = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.19, ptr @.str.20], [24 x i8] zeroinitializer }, align 32
@args__gettimeofday = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.21, ptr @.str.22], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__gettimeofday = internal global ptr @__syscall_meta__gettimeofday, section "__syscalls_metadata", align 4
@do_sys_settimeofday64.firsttime = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sys_enter_settimeofday\00", [41 x i8] zeroinitializer }, align 32
@__syscall_meta__settimeofday = internal global %struct.syscall_metadata { ptr @.str.11, i32 -1, i32 2, ptr @types__settimeofday, ptr @args__settimeofday, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__settimeofday, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__settimeofday, i64 20) }, ptr @event_enter__settimeofday, ptr @event_exit__settimeofday }, align 4
@event_enter__settimeofday = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.9 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__settimeofday, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__settimeofday = internal global ptr @event_enter__settimeofday, section "_ftrace_events", align 4
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sys_exit_settimeofday\00", [42 x i8] zeroinitializer }, align 32
@event_exit__settimeofday = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.10 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__settimeofday, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__settimeofday = internal global ptr @event_exit__settimeofday, section "_ftrace_events", align 4
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_settimeofday\00", [47 x i8] zeroinitializer }, align 32
@types__settimeofday = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.19, ptr @.str.20], [24 x i8] zeroinitializer }, align 32
@args__settimeofday = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.21, ptr @.str.22], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__settimeofday = internal global ptr @__syscall_meta__settimeofday, section "__syscalls_metadata", align 4
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sys_enter_adjtimex_time32\00", [38 x i8] zeroinitializer }, align 32
@__syscall_meta__adjtimex_time32 = internal global %struct.syscall_metadata { ptr @.str.14, i32 -1, i32 1, ptr @types__adjtimex_time32, ptr @args__adjtimex_time32, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__adjtimex_time32, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__adjtimex_time32, i64 20) }, ptr @event_enter__adjtimex_time32, ptr @event_exit__adjtimex_time32 }, align 4
@event_enter__adjtimex_time32 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon { ptr @.str.12 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__adjtimex_time32, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__adjtimex_time32 = internal global ptr @event_enter__adjtimex_time32, section "_ftrace_events", align 4
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sys_exit_adjtimex_time32\00", [39 x i8] zeroinitializer }, align 32
@event_exit__adjtimex_time32 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon { ptr @.str.13 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.3 zeroinitializer, ptr @__syscall_meta__adjtimex_time32, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__adjtimex_time32 = internal global ptr @event_exit__adjtimex_time32, section "_ftrace_events", align 4
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_adjtimex_time32\00", [44 x i8] zeroinitializer }, align 32
@types__adjtimex_time32 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.26], [28 x i8] zeroinitializer }, align 32
@args__adjtimex_time32 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.27], [28 x i8] zeroinitializer }, align 32
@__p_syscall_meta__adjtimex_time32 = internal global ptr @__syscall_meta__adjtimex_time32, section "__syscalls_metadata", align 4
@__kstrtab_jiffies_to_msecs = external dso_local constant [0 x i8], align 1
@__kstrtabns_jiffies_to_msecs = external dso_local constant [0 x i8], align 1
@__ksymtab_jiffies_to_msecs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @jiffies_to_msecs to i32), ptr @__kstrtab_jiffies_to_msecs, ptr @__kstrtabns_jiffies_to_msecs }, section "___ksymtab+jiffies_to_msecs", align 4
@__kstrtab_jiffies_to_usecs = external dso_local constant [0 x i8], align 1
@__kstrtabns_jiffies_to_usecs = external dso_local constant [0 x i8], align 1
@__ksymtab_jiffies_to_usecs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @jiffies_to_usecs to i32), ptr @__kstrtab_jiffies_to_usecs, ptr @__kstrtabns_jiffies_to_usecs }, section "___ksymtab+jiffies_to_usecs", align 4
@__kstrtab_mktime64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_mktime64 = external dso_local constant [0 x i8], align 1
@__ksymtab_mktime64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mktime64 to i32), ptr @__kstrtab_mktime64, ptr @__kstrtabns_mktime64 }, section "___ksymtab+mktime64", align 4
@__kstrtab_ns_to_kernel_old_timeval = external dso_local constant [0 x i8], align 1
@__kstrtabns_ns_to_kernel_old_timeval = external dso_local constant [0 x i8], align 1
@__ksymtab_ns_to_kernel_old_timeval = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ns_to_kernel_old_timeval to i32), ptr @__kstrtab_ns_to_kernel_old_timeval, ptr @__kstrtabns_ns_to_kernel_old_timeval }, section "___ksymtab+ns_to_kernel_old_timeval", align 4
@__kstrtab_set_normalized_timespec64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_set_normalized_timespec64 = external dso_local constant [0 x i8], align 1
@__ksymtab_set_normalized_timespec64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @set_normalized_timespec64 to i32), ptr @__kstrtab_set_normalized_timespec64, ptr @__kstrtabns_set_normalized_timespec64 }, section "___ksymtab+set_normalized_timespec64", align 4
@__kstrtab_ns_to_timespec64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_ns_to_timespec64 = external dso_local constant [0 x i8], align 1
@__ksymtab_ns_to_timespec64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ns_to_timespec64 to i32), ptr @__kstrtab_ns_to_timespec64, ptr @__kstrtabns_ns_to_timespec64 }, section "___ksymtab+ns_to_timespec64", align 4
@__kstrtab___msecs_to_jiffies = external dso_local constant [0 x i8], align 1
@__kstrtabns___msecs_to_jiffies = external dso_local constant [0 x i8], align 1
@__ksymtab___msecs_to_jiffies = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__msecs_to_jiffies to i32), ptr @__kstrtab___msecs_to_jiffies, ptr @__kstrtabns___msecs_to_jiffies }, section "___ksymtab+__msecs_to_jiffies", align 4
@__kstrtab___usecs_to_jiffies = external dso_local constant [0 x i8], align 1
@__kstrtabns___usecs_to_jiffies = external dso_local constant [0 x i8], align 1
@__ksymtab___usecs_to_jiffies = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__usecs_to_jiffies to i32), ptr @__kstrtab___usecs_to_jiffies, ptr @__kstrtabns___usecs_to_jiffies }, section "___ksymtab+__usecs_to_jiffies", align 4
@__kstrtab_timespec64_to_jiffies = external dso_local constant [0 x i8], align 1
@__kstrtabns_timespec64_to_jiffies = external dso_local constant [0 x i8], align 1
@__ksymtab_timespec64_to_jiffies = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @timespec64_to_jiffies to i32), ptr @__kstrtab_timespec64_to_jiffies, ptr @__kstrtabns_timespec64_to_jiffies }, section "___ksymtab+timespec64_to_jiffies", align 4
@__kstrtab_jiffies_to_timespec64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_jiffies_to_timespec64 = external dso_local constant [0 x i8], align 1
@__ksymtab_jiffies_to_timespec64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @jiffies_to_timespec64 to i32), ptr @__kstrtab_jiffies_to_timespec64, ptr @__kstrtabns_jiffies_to_timespec64 }, section "___ksymtab+jiffies_to_timespec64", align 4
@__kstrtab_jiffies_to_clock_t = external dso_local constant [0 x i8], align 1
@__kstrtabns_jiffies_to_clock_t = external dso_local constant [0 x i8], align 1
@__ksymtab_jiffies_to_clock_t = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @jiffies_to_clock_t to i32), ptr @__kstrtab_jiffies_to_clock_t, ptr @__kstrtabns_jiffies_to_clock_t }, section "___ksymtab+jiffies_to_clock_t", align 4
@__kstrtab_clock_t_to_jiffies = external dso_local constant [0 x i8], align 1
@__kstrtabns_clock_t_to_jiffies = external dso_local constant [0 x i8], align 1
@__ksymtab_clock_t_to_jiffies = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clock_t_to_jiffies to i32), ptr @__kstrtab_clock_t_to_jiffies, ptr @__kstrtabns_clock_t_to_jiffies }, section "___ksymtab+clock_t_to_jiffies", align 4
@__kstrtab_jiffies_64_to_clock_t = external dso_local constant [0 x i8], align 1
@__kstrtabns_jiffies_64_to_clock_t = external dso_local constant [0 x i8], align 1
@__ksymtab_jiffies_64_to_clock_t = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @jiffies_64_to_clock_t to i32), ptr @__kstrtab_jiffies_64_to_clock_t, ptr @__kstrtabns_jiffies_64_to_clock_t }, section "___ksymtab+jiffies_64_to_clock_t", align 4
@__kstrtab_jiffies64_to_nsecs = external dso_local constant [0 x i8], align 1
@__kstrtabns_jiffies64_to_nsecs = external dso_local constant [0 x i8], align 1
@__ksymtab_jiffies64_to_nsecs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @jiffies64_to_nsecs to i32), ptr @__kstrtab_jiffies64_to_nsecs, ptr @__kstrtabns_jiffies64_to_nsecs }, section "___ksymtab+jiffies64_to_nsecs", align 4
@__kstrtab_jiffies64_to_msecs = external dso_local constant [0 x i8], align 1
@__kstrtabns_jiffies64_to_msecs = external dso_local constant [0 x i8], align 1
@__ksymtab_jiffies64_to_msecs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @jiffies64_to_msecs to i32), ptr @__kstrtab_jiffies64_to_msecs, ptr @__kstrtabns_jiffies64_to_msecs }, section "___ksymtab+jiffies64_to_msecs", align 4
@__kstrtab_nsecs_to_jiffies64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_nsecs_to_jiffies64 = external dso_local constant [0 x i8], align 1
@__ksymtab_nsecs_to_jiffies64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nsecs_to_jiffies64 to i32), ptr @__kstrtab_nsecs_to_jiffies64, ptr @__kstrtabns_nsecs_to_jiffies64 }, section "___ksymtab+nsecs_to_jiffies64", align 4
@__kstrtab_nsecs_to_jiffies = external dso_local constant [0 x i8], align 1
@__kstrtabns_nsecs_to_jiffies = external dso_local constant [0 x i8], align 1
@__ksymtab_nsecs_to_jiffies = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nsecs_to_jiffies to i32), ptr @__kstrtab_nsecs_to_jiffies, ptr @__kstrtabns_nsecs_to_jiffies }, section "___ksymtab_gpl+nsecs_to_jiffies", align 4
@__kstrtab_get_timespec64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_timespec64 = external dso_local constant [0 x i8], align 1
@__ksymtab_get_timespec64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_timespec64 to i32), ptr @__kstrtab_get_timespec64, ptr @__kstrtabns_get_timespec64 }, section "___ksymtab_gpl+get_timespec64", align 4
@__kstrtab_put_timespec64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_put_timespec64 = external dso_local constant [0 x i8], align 1
@__ksymtab_put_timespec64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @put_timespec64 to i32), ptr @__kstrtab_put_timespec64, ptr @__kstrtabns_put_timespec64 }, section "___ksymtab_gpl+put_timespec64", align 4
@__kstrtab_get_old_timespec32 = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_old_timespec32 = external dso_local constant [0 x i8], align 1
@__ksymtab_get_old_timespec32 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_old_timespec32 to i32), ptr @__kstrtab_get_old_timespec32, ptr @__kstrtabns_get_old_timespec32 }, section "___ksymtab_gpl+get_old_timespec32", align 4
@__kstrtab_put_old_timespec32 = external dso_local constant [0 x i8], align 1
@__kstrtabns_put_old_timespec32 = external dso_local constant [0 x i8], align 1
@__ksymtab_put_old_timespec32 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @put_old_timespec32 to i32), ptr @__kstrtab_put_old_timespec32, ptr @__kstrtabns_put_old_timespec32 }, section "___ksymtab_gpl+put_old_timespec32", align 4
@__kstrtab_get_itimerspec64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_itimerspec64 = external dso_local constant [0 x i8], align 1
@__ksymtab_get_itimerspec64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_itimerspec64 to i32), ptr @__kstrtab_get_itimerspec64, ptr @__kstrtabns_get_itimerspec64 }, section "___ksymtab_gpl+get_itimerspec64", align 4
@__kstrtab_put_itimerspec64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_put_itimerspec64 = external dso_local constant [0 x i8], align 1
@__ksymtab_put_itimerspec64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @put_itimerspec64 to i32), ptr @__kstrtab_put_itimerspec64, ptr @__kstrtabns_put_itimerspec64 }, section "___ksymtab_gpl+put_itimerspec64", align 4
@__kstrtab_get_old_itimerspec32 = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_old_itimerspec32 = external dso_local constant [0 x i8], align 1
@__ksymtab_get_old_itimerspec32 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_old_itimerspec32 to i32), ptr @__kstrtab_get_old_itimerspec32, ptr @__kstrtabns_get_old_itimerspec32 }, section "___ksymtab_gpl+get_old_itimerspec32", align 4
@__kstrtab_put_old_itimerspec32 = external dso_local constant [0 x i8], align 1
@__kstrtabns_put_old_itimerspec32 = external dso_local constant [0 x i8], align 1
@__ksymtab_put_old_itimerspec32 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @put_old_itimerspec32 to i32), ptr @__kstrtab_put_old_itimerspec32, ptr @__kstrtabns_put_old_itimerspec32 }, section "___ksymtab_gpl+put_old_itimerspec32", align 4
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"old_time32_t *\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tloc\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"kernel/time/time.c\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tptr\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"struct __kernel_old_timeval *\00", [34 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"struct timezone *\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tv\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tz\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"struct old_timex32 *\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"utp\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.28 = private unnamed_addr constant [7 x i8] c"sys_tz\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 50, i32 17 }
@___asan_gen_.34 = private unnamed_addr constant [20 x i8] c"event_enter__time32\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [19 x i8] c"event_exit__time32\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [14 x i8] c"types__time32\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [13 x i8] c"args__time32\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [21 x i8] c"event_enter__stime32\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [20 x i8] c"event_exit__stime32\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [15 x i8] c"types__stime32\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [14 x i8] c"args__stime32\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [26 x i8] c"event_enter__gettimeofday\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [25 x i8] c"event_exit__gettimeofday\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [20 x i8] c"types__gettimeofday\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [19 x i8] c"args__gettimeofday\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [32 x i8] c"do_sys_settimeofday64.firsttime\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [26 x i8] c"event_enter__settimeofday\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [25 x i8] c"event_exit__settimeofday\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [20 x i8] c"types__settimeofday\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [19 x i8] c"args__settimeofday\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 199, i32 1 }
@___asan_gen_.119 = private unnamed_addr constant [29 x i8] c"event_enter__adjtimex_time32\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [28 x i8] c"event_exit__adjtimex_time32\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [23 x i8] c"types__adjtimex_time32\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [22 x i8] c"args__adjtimex_time32\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 105, i32 1 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 112, i32 7 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 119, i32 1 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 140, i32 1 }
@___asan_gen_.162 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 156, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.168 = private constant [22 x i8] c"../kernel/time/time.c\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 349, i32 1 }
@llvm.compiler.used = appending global [94 x ptr] [ptr @__event_enter__adjtimex_time32, ptr @__event_enter__gettimeofday, ptr @__event_enter__settimeofday, ptr @__event_enter__stime32, ptr @__event_enter__time32, ptr @__event_exit__adjtimex_time32, ptr @__event_exit__gettimeofday, ptr @__event_exit__settimeofday, ptr @__event_exit__stime32, ptr @__event_exit__time32, ptr @__ksymtab___msecs_to_jiffies, ptr @__ksymtab___usecs_to_jiffies, ptr @__ksymtab_clock_t_to_jiffies, ptr @__ksymtab_get_itimerspec64, ptr @__ksymtab_get_old_itimerspec32, ptr @__ksymtab_get_old_timespec32, ptr @__ksymtab_get_timespec64, ptr @__ksymtab_jiffies64_to_msecs, ptr @__ksymtab_jiffies64_to_nsecs, ptr @__ksymtab_jiffies_64_to_clock_t, ptr @__ksymtab_jiffies_to_clock_t, ptr @__ksymtab_jiffies_to_msecs, ptr @__ksymtab_jiffies_to_timespec64, ptr @__ksymtab_jiffies_to_usecs, ptr @__ksymtab_mktime64, ptr @__ksymtab_ns_to_kernel_old_timeval, ptr @__ksymtab_ns_to_timespec64, ptr @__ksymtab_nsecs_to_jiffies, ptr @__ksymtab_nsecs_to_jiffies64, ptr @__ksymtab_put_itimerspec64, ptr @__ksymtab_put_old_itimerspec32, ptr @__ksymtab_put_old_timespec32, ptr @__ksymtab_put_timespec64, ptr @__ksymtab_set_normalized_timespec64, ptr @__ksymtab_sys_tz, ptr @__ksymtab_timespec64_to_jiffies, ptr @__p_syscall_meta__adjtimex_time32, ptr @__p_syscall_meta__gettimeofday, ptr @__p_syscall_meta__settimeofday, ptr @__p_syscall_meta__stime32, ptr @__p_syscall_meta__time32, ptr @__syscall_meta__adjtimex_time32, ptr @__syscall_meta__gettimeofday, ptr @__syscall_meta__settimeofday, ptr @__syscall_meta__stime32, ptr @__syscall_meta__time32, ptr @event_enter__adjtimex_time32, ptr @event_enter__gettimeofday, ptr @event_enter__settimeofday, ptr @event_enter__stime32, ptr @event_enter__time32, ptr @event_exit__adjtimex_time32, ptr @event_exit__gettimeofday, ptr @event_exit__settimeofday, ptr @event_exit__stime32, ptr @event_exit__time32, ptr @sys_tz, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @types__time32, ptr @args__time32, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @types__stime32, ptr @args__stime32, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @types__gettimeofday, ptr @args__gettimeofday, ptr @do_sys_settimeofday64.firsttime, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @types__settimeofday, ptr @args__settimeofday, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @types__adjtimex_time32, ptr @args__adjtimex_time32, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sys_tz to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__time32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__time32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__time32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__time32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__stime32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__stime32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__stime32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__stime32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__gettimeofday to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__gettimeofday to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__gettimeofday to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__gettimeofday to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_sys_settimeofday64.firsttime to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__settimeofday to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__settimeofday to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__settimeofday to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__settimeofday to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__adjtimex_time32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__adjtimex_time32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__adjtimex_time32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__adjtimex_time32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_time32 = dso_local alias i32 (ptr), ptr @__se_sys_time32
@sys_stime32 = dso_local alias i32 (ptr), ptr @__se_sys_stime32
@sys_gettimeofday = dso_local alias i32 (ptr, ptr), ptr @__se_sys_gettimeofday
@sys_settimeofday = dso_local alias i32 (ptr, ptr), ptr @__se_sys_settimeofday
@sys_adjtimex_time32 = dso_local alias i32 (ptr), ptr @__se_sys_adjtimex_time32

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_time32(i32 noundef %tloc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @ktime_get_real_seconds() #8
  %conv.i = trunc i64 %call.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tloc)
  %tobool.not.i = icmp eq i32 %tloc, 0
  br i1 %tobool.not.i, label %entry.do.end8.i_crit_edge, label %if.then.i

entry.do.end8.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i

if.then.i:                                        ; preds = %entry
  %0 = inttoptr i32 %tloc to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 112) #8
  %1 = tail call i32 @llvm.read_register.i32(metadata !134) #8
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 4
  %3 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #7, !srcloc !144
  %and.i.i = and i32 %3, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #8, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !146
  %4 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr nonnull %0, i32 %conv.i, i32 -1226833921) #8, !srcloc !147
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %3) #8, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !146
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not.i = icmp eq i32 %4, 0
  br i1 %tobool3.not.i, label %if.then.i.do.end8.i_crit_edge, label %if.then.i.__do_sys_time32.exit_crit_edge

if.then.i.__do_sys_time32.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__do_sys_time32.exit

if.then.i.do.end8.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then.i.do.end8.i_crit_edge, %entry.do.end8.i_crit_edge
  br label %__do_sys_time32.exit

__do_sys_time32.exit:                             ; preds = %do.end8.i, %if.then.i.__do_sys_time32.exit_crit_edge
  %retval.0.i = phi i32 [ %conv.i, %do.end8.i ], [ -14, %if.then.i.__do_sys_time32.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_stime32(i32 noundef %tptr) #0 align 64 {
entry:
  %tv.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %tptr to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tv.i) #8
  %1 = getelementptr inbounds i8, ptr %tv.i, i32 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 4294967295, ptr %1, align 8
  tail call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 124) #8
  %3 = tail call i32 @llvm.read_register.i32(metadata !134) #8
  %and.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #7, !srcloc !144
  %and.i.i = and i32 %5, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #8, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !146
  %6 = tail call { i32, i64 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_64t_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #8, !srcloc !148
  %asmresult.i = extractvalue { i32, i64 } %6, 0
  %asmresult1.i = extractvalue { i32, i64 } %6, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #8, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !146
  %7 = shl i64 %asmresult1.i, 32
  %conv2.i = ashr exact i64 %7, 32
  %8 = ptrtoint ptr %tv.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv2.i, ptr %tv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__do_sys_stime32.exit_crit_edge

entry.__do_sys_stime32.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__do_sys_stime32.exit

if.end.i:                                         ; preds = %entry
  %call4.i = call i32 @security_settime64(ptr noundef nonnull %tv.i, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i.__do_sys_stime32.exit_crit_edge

if.end.i.__do_sys_stime32.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__do_sys_stime32.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i = call i32 @do_settimeofday64(ptr noundef nonnull %tv.i) #8
  br label %__do_sys_stime32.exit

__do_sys_stime32.exit:                            ; preds = %if.end7.i, %if.end.i.__do_sys_stime32.exit_crit_edge, %entry.__do_sys_stime32.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end7.i ], [ -14, %entry.__do_sys_stime32.exit_crit_edge ], [ %call4.i, %if.end.i.__do_sys_stime32.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tv.i) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_gettimeofday(i32 noundef %tv, i32 noundef %tz) #0 align 64 {
entry:
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %tv to ptr
  %1 = inttoptr i32 %tz to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tv)
  %cmp.not.i = icmp eq i32 %tv, 0
  br i1 %cmp.not.i, label %entry.if.end22.i_crit_edge, label %if.then.i, !prof !149

entry.if.end22.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

if.then.i:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #8
  %2 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @ktime_get_real_ts64(ptr noundef nonnull %ts.i) #8
  %3 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %ts.i, align 8
  %conv.i = trunc i64 %4 to i32
  call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 147) #8
  %5 = call i32 @llvm.read_register.i32(metadata !134) #8
  %and.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #7, !srcloc !144
  %and.i.i = and i32 %7, -13
  %or.i.i = or i32 %and.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #8, !srcloc !145
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !146
  %8 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr nonnull %0, i32 %conv.i, i32 -1226833921) #8, !srcloc !150
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #8, !srcloc !145
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !146
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.not.i = icmp eq i32 %8, 0
  br i1 %tobool4.not.i, label %lor.lhs.false.i, label %if.then.i.cleanup.thread.i_crit_edge

if.then.i.cleanup.thread.i_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.i

lor.lhs.false.i:                                  ; preds = %if.then.i
  %tv_usec.i = getelementptr inbounds %struct.__kernel_old_timeval, ptr %0, i32 0, i32 1
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  %9 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tv_nsec.i, align 8
  %div.i = sdiv i32 %10, 1000
  call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 148) #8
  %11 = call i32 @llvm.read_register.i32(metadata !134) #8
  %and.i.i.i40.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i40.i to ptr
  %cpu_domain.i.i41.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i41.i) #7, !srcloc !144
  %and.i42.i = and i32 %13, -13
  %or.i43.i = or i32 %and.i42.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i43.i) #8, !srcloc !145
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !146
  %14 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %tv_usec.i, i32 %div.i, i32 -1226833921) #8, !srcloc !151
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #8, !srcloc !145
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !146
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool20.not.i = icmp eq i32 %14, 0
  br i1 %tobool20.not.i, label %cleanup.i, label %lor.lhs.false.i.cleanup.thread.i_crit_edge

lor.lhs.false.i.cleanup.thread.i_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %lor.lhs.false.i.cleanup.thread.i_crit_edge, %if.then.i.cleanup.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #8
  br label %__do_sys_gettimeofday.exit

cleanup.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #8
  br label %if.end22.i

if.end22.i:                                       ; preds = %cleanup.i, %entry.if.end22.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tz)
  %cmp23.not.i = icmp eq i32 %tz, 0
  br i1 %cmp23.not.i, label %if.end22.i.if.end36.i_crit_edge, label %if.end59.i.i.i, !prof !152

if.end22.i.if.end36.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36.i

if.end59.i.i.i:                                   ; preds = %if.end22.i
  call void @__might_fault(ptr noundef nonnull @.str.25, i32 noundef 174) #8
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i, label %if.end59.i.i.i.__do_sys_gettimeofday.exit_crit_edge, label %if.end.i.i.i

if.end59.i.i.i.__do_sys_gettimeofday.exit_crit_edge: ; preds = %if.end59.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__do_sys_gettimeofday.exit

if.end.i.i.i:                                     ; preds = %if.end59.i.i.i
  %15 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %1, i32 8, i32 -1226833920) #11, !srcloc !153
  %asmresult.i.i.i = extractvalue { i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.__do_sys_gettimeofday.exit_crit_edge

if.end.i.i.i.__do_sys_gettimeofday.exit_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__do_sys_gettimeofday.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @sys_tz, i32 noundef 8) #8
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef nonnull %1, ptr noundef nonnull @sys_tz, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool33.not.i = icmp eq i32 %call.i12.i.i.i, 0
  br i1 %tobool33.not.i, label %copy_to_user.exit.i.if.end36.i_crit_edge, label %copy_to_user.exit.i.__do_sys_gettimeofday.exit_crit_edge

copy_to_user.exit.i.__do_sys_gettimeofday.exit_crit_edge: ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__do_sys_gettimeofday.exit

copy_to_user.exit.i.if.end36.i_crit_edge:         ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36.i

if.end36.i:                                       ; preds = %copy_to_user.exit.i.if.end36.i_crit_edge, %if.end22.i.if.end36.i_crit_edge
  br label %__do_sys_gettimeofday.exit

__do_sys_gettimeofday.exit:                       ; preds = %if.end36.i, %copy_to_user.exit.i.__do_sys_gettimeofday.exit_crit_edge, %if.end.i.i.i.__do_sys_gettimeofday.exit_crit_edge, %if.end59.i.i.i.__do_sys_gettimeofday.exit_crit_edge, %cleanup.thread.i
  %retval.1.i = phi i32 [ 0, %if.end36.i ], [ -14, %copy_to_user.exit.i.__do_sys_gettimeofday.exit_crit_edge ], [ -14, %cleanup.thread.i ], [ -14, %if.end59.i.i.i.__do_sys_gettimeofday.exit_crit_edge ], [ -14, %if.end.i.i.i.__do_sys_gettimeofday.exit_crit_edge ]
  ret i32 %retval.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @do_sys_settimeofday64(ptr noundef %tv, ptr noundef %tz) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tv, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %tv to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %tv, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp.i.i = icmp slt i64 %1, 0
  br i1 %cmp.i.i, label %land.lhs.true.cleanup_crit_edge, label %timespec64_valid_settod.exit

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

timespec64_valid_settod.exit:                     ; preds = %land.lhs.true
  %tv_nsec.i.i = getelementptr inbounds %struct.timespec64, ptr %tv, i32 0, i32 1
  %2 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tv_nsec.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000000, i32 %3)
  %cmp1.i.i = icmp ult i32 %3, 1000000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 8277292036, i64 %1)
  %cmp.i = icmp ult i64 %1, 8277292036
  %spec.select.i = select i1 %cmp1.i.i, i1 %cmp.i, i1 false
  br i1 %spec.select.i, label %timespec64_valid_settod.exit.if.end_crit_edge, label %timespec64_valid_settod.exit.cleanup_crit_edge

timespec64_valid_settod.exit.cleanup_crit_edge:   ; preds = %timespec64_valid_settod.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

timespec64_valid_settod.exit.if.end_crit_edge:    ; preds = %timespec64_valid_settod.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %timespec64_valid_settod.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %call1 = tail call i32 @security_settime64(ptr noundef %tv, ptr noundef %tz) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %tobool5.not = icmp eq ptr %tz, null
  br i1 %tobool5.not, label %if.end4.if.end17_crit_edge, label %if.then6

if.end4.if.end17_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then6:                                         ; preds = %if.end4
  %4 = ptrtoint ptr %tz to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tz, align 4
  %6 = add i32 %5, -901
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1801, i32 %6)
  %7 = icmp ult i32 %6, -1801
  br i1 %7, label %if.then6.cleanup_crit_edge, label %if.end10

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.then6
  %8 = ptrtoint ptr %tz to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %tz, align 4
  store i64 %9, ptr @sys_tz, align 8
  tail call void @update_vsyscall_tz() #8
  %.b = load i1, ptr @do_sys_settimeofday64.firsttime, align 4
  br i1 %.b, label %if.end10.if.end17_crit_edge, label %if.then12

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then12:                                        ; preds = %if.end10
  store i1 true, ptr @do_sys_settimeofday64.firsttime, align 4
  br i1 %tobool.not, label %if.then14, label %if.then12.if.then19_crit_edge

if.then12.if.then19_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then19

if.then14:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @timekeeping_warp_clock() #8
  br label %cleanup

if.end17:                                         ; preds = %if.end10.if.end17_crit_edge, %if.end4.if.end17_crit_edge
  br i1 %tobool.not, label %if.end17.cleanup_crit_edge, label %if.end17.if.then19_crit_edge

if.end17.if.then19_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then19

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then19:                                        ; preds = %if.end17.if.then19_crit_edge, %if.then12.if.then19_crit_edge
  %call20 = tail call i32 @do_settimeofday64(ptr noundef nonnull %tv) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.end17.cleanup_crit_edge, %if.then14, %if.then6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %timespec64_valid_settod.exit.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %if.then19 ], [ -22, %timespec64_valid_settod.exit.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ -22, %if.then6.cleanup_crit_edge ], [ 0, %if.then14 ], [ 0, %if.end17.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_settime64(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_vsyscall_tz() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @timekeeping_warp_clock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_settimeofday64(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_settimeofday(i32 noundef %tv, i32 noundef %tz) #0 align 64 {
entry:
  %new_ts.i = alloca %struct.timespec64, align 8
  %new_tz.i = alloca %struct.timezone, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %tv to ptr
  %1 = inttoptr i32 %tz to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %new_ts.i) #8
  %2 = call ptr @memset(ptr %new_ts.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %new_tz.i) #8
  %3 = ptrtoint ptr %new_tz.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %new_tz.i, align 4, !annotation !154
  %4 = getelementptr inbounds %struct.timezone, ptr %new_tz.i, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !154
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tv)
  %tobool.not.i = icmp eq i32 %tv, 0
  br i1 %tobool.not.i, label %entry.if.end29.i_crit_edge, label %if.then.i

entry.if.end29.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.i

if.then.i:                                        ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 206) #8
  %6 = tail call i32 @llvm.read_register.i32(metadata !134) #8
  %and.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #7, !srcloc !144
  %and.i.i = and i32 %8, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #8, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !146
  %9 = tail call { i32, i64 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_64t_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr nonnull %0, i32 -1226833921) #8, !srcloc !155
  %asmresult.i = extractvalue { i32, i64 } %9, 0
  %asmresult1.i = extractvalue { i32, i64 } %9, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #8, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !146
  %10 = shl i64 %asmresult1.i, 32
  %conv2.i = ashr exact i64 %10, 32
  %11 = ptrtoint ptr %new_ts.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv2.i, ptr %new_ts.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool5.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool5.not.i, label %lor.lhs.false.i, label %if.then.i.__do_sys_settimeofday.exit_crit_edge

if.then.i.__do_sys_settimeofday.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__do_sys_settimeofday.exit

lor.lhs.false.i:                                  ; preds = %if.then.i
  tail call void @__might_fault(ptr noundef nonnull @.str.17, i32 noundef 207) #8
  %tv_usec.i = getelementptr inbounds %struct.__kernel_old_timeval, ptr %0, i32 0, i32 1
  %12 = tail call i32 @llvm.read_register.i32(metadata !134) #8
  %and.i.i.i50.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i50.i to ptr
  %cpu_domain.i.i51.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i51.i) #7, !srcloc !144
  %and.i52.i = and i32 %14, -13
  %or.i53.i = or i32 %and.i52.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i53.i) #8, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !146
  %15 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %tv_usec.i, i32 -1226833921) #8, !srcloc !156
  %asmresult15.i = extractvalue { i32, i32 } %15, 0
  %asmresult16.i = extractvalue { i32, i32 } %15, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #8, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !146
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %new_ts.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult15.i)
  %tobool18.not.i = icmp eq i32 %asmresult15.i, 0
  br i1 %tobool18.not.i, label %if.end.i, label %lor.lhs.false.i.__do_sys_settimeofday.exit_crit_edge

lor.lhs.false.i.__do_sys_settimeofday.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__do_sys_settimeofday.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %asmresult16.i)
  %16 = icmp ugt i32 %asmresult16.i, 1000000
  br i1 %16, label %if.end.i.__do_sys_settimeofday.exit_crit_edge, label %if.end27.i

if.end.i.__do_sys_settimeofday.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__do_sys_settimeofday.exit

if.end27.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i = mul nuw nsw i32 %asmresult16.i, 1000
  %17 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %mul.i, ptr %tv_nsec.i, align 8
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.end27.i, %entry.if.end29.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tz)
  %tobool30.not.i = icmp eq i32 %tz, 0
  br i1 %tobool30.not.i, label %if.end29.i.if.end36.i_crit_edge, label %if.end59.i.i.i

if.end29.i.if.end36.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36.i

if.end59.i.i.i:                                   ; preds = %if.end29.i
  tail call void @__might_fault(ptr noundef nonnull @.str.25, i32 noundef 156) #8
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i, label %if.end59.i.i.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end59.i.i.i.if.then11.i.i.i_crit_edge:         ; preds = %if.end59.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end59.i.i.i
  %18 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %1, i32 8, i32 -1226833920) #11, !srcloc !157
  %asmresult.i.i.i = extractvalue { i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !152

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %new_tz.i, i32 noundef 8) #8
  %19 = call i32 @llvm.read_register.i32(metadata !134) #8
  %and.i.i.i.i.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 4
  %21 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #7, !srcloc !144
  %and.i.i.i.i.i = and i32 %21, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #8, !srcloc !145
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !146
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %new_tz.i, ptr noundef nonnull %1, i32 noundef 8) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #8, !srcloc !145
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !146
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i.if.end36.i_crit_edge, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !152

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i

if.end.i.i.i.if.end36.i_crit_edge:                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end59.i.i.i.if.then11.i.i.i_crit_edge
  %res.0.i.i57.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 8, %if.end59.i.i.i.if.then11.i.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 8, %res.0.i.i57.i
  %add.ptr.i.i.i = getelementptr i8, ptr %new_tz.i, i32 %sub.i.i.i
  %22 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i57.i)
  br label %__do_sys_settimeofday.exit

if.end36.i:                                       ; preds = %if.end.i.i.i.if.end36.i_crit_edge, %if.end29.i.if.end36.i_crit_edge
  %cond42.i = phi ptr [ null, %if.end29.i.if.end36.i_crit_edge ], [ %new_tz.i, %if.end.i.i.i.if.end36.i_crit_edge ]
  %new_ts..i = select i1 %tobool.not.i, ptr null, ptr %new_ts.i
  br i1 %tobool.not.i, label %if.end36.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.end36.i.if.end.i.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end36.i
  %23 = ptrtoint ptr %new_ts..i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %new_ts..i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %24)
  %cmp.i.i.i.i = icmp slt i64 %24, 0
  br i1 %cmp.i.i.i.i, label %land.lhs.true.i.i.__do_sys_settimeofday.exit_crit_edge, label %timespec64_valid_settod.exit.i.i

land.lhs.true.i.i.__do_sys_settimeofday.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__do_sys_settimeofday.exit

timespec64_valid_settod.exit.i.i:                 ; preds = %land.lhs.true.i.i
  %new_ts.sroa.gep.i = getelementptr inbounds %struct.timespec64, ptr %new_ts.i, i32 0, i32 1
  %25 = ptrtoint ptr %new_ts.sroa.gep.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %new_ts.sroa.gep.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000000, i32 %26)
  %cmp1.i.i.i.i = icmp ult i32 %26, 1000000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 8277292036, i64 %24)
  %cmp.i.i54.i = icmp ult i64 %24, 8277292036
  %spec.select.i.i.i = select i1 %cmp1.i.i.i.i, i1 %cmp.i.i54.i, i1 false
  br i1 %spec.select.i.i.i, label %timespec64_valid_settod.exit.i.i.if.end.i.i_crit_edge, label %timespec64_valid_settod.exit.i.i.__do_sys_settimeofday.exit_crit_edge

timespec64_valid_settod.exit.i.i.__do_sys_settimeofday.exit_crit_edge: ; preds = %timespec64_valid_settod.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__do_sys_settimeofday.exit

timespec64_valid_settod.exit.i.i.if.end.i.i_crit_edge: ; preds = %timespec64_valid_settod.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %timespec64_valid_settod.exit.i.i.if.end.i.i_crit_edge, %if.end36.i.if.end.i.i_crit_edge
  %call1.i.i = call i32 @security_settime64(ptr noundef %new_ts..i, ptr noundef %cond42.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %if.end.i.i.__do_sys_settimeofday.exit_crit_edge

if.end.i.i.__do_sys_settimeofday.exit_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__do_sys_settimeofday.exit

if.end4.i.i:                                      ; preds = %if.end.i.i
  %tobool5.not.i.i = icmp eq ptr %cond42.i, null
  br i1 %tobool5.not.i.i, label %if.end4.i.i.if.end17.i.i_crit_edge, label %if.then6.i.i

if.end4.i.i.if.end17.i.i_crit_edge:               ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i.i

if.then6.i.i:                                     ; preds = %if.end4.i.i
  %27 = ptrtoint ptr %cond42.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cond42.i, align 4
  %29 = add i32 %28, -901
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1801, i32 %29)
  %30 = icmp ult i32 %29, -1801
  br i1 %30, label %if.then6.i.i.__do_sys_settimeofday.exit_crit_edge, label %if.end10.i.i

if.then6.i.i.__do_sys_settimeofday.exit_crit_edge: ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__do_sys_settimeofday.exit

if.end10.i.i:                                     ; preds = %if.then6.i.i
  %31 = ptrtoint ptr %cond42.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 8)
  %32 = load i64, ptr %cond42.i, align 4
  store i64 %32, ptr @sys_tz, align 8
  call void @update_vsyscall_tz() #8
  %.b.i.i = load i1, ptr @do_sys_settimeofday64.firsttime, align 4
  br i1 %.b.i.i, label %if.end10.i.i.if.end17.i.i_crit_edge, label %if.then12.i.i

if.end10.i.i.if.end17.i.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i.i

if.then12.i.i:                                    ; preds = %if.end10.i.i
  store i1 true, ptr @do_sys_settimeofday64.firsttime, align 4
  br i1 %tobool.not.i, label %if.then14.i.i, label %if.then12.i.i.if.then19.i.i_crit_edge

if.then12.i.i.if.then19.i.i_crit_edge:            ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then19.i.i

if.then14.i.i:                                    ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @timekeeping_warp_clock() #8
  br label %__do_sys_settimeofday.exit

if.end17.i.i:                                     ; preds = %if.end10.i.i.if.end17.i.i_crit_edge, %if.end4.i.i.if.end17.i.i_crit_edge
  br i1 %tobool.not.i, label %if.end17.i.i.__do_sys_settimeofday.exit_crit_edge, label %if.end17.i.i.if.then19.i.i_crit_edge

if.end17.i.i.if.then19.i.i_crit_edge:             ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then19.i.i

if.end17.i.i.__do_sys_settimeofday.exit_crit_edge: ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__do_sys_settimeofday.exit

if.then19.i.i:                                    ; preds = %if.end17.i.i.if.then19.i.i_crit_edge, %if.then12.i.i.if.then19.i.i_crit_edge
  %call20.i.i = call i32 @do_settimeofday64(ptr noundef nonnull %new_ts..i) #8
  br label %__do_sys_settimeofday.exit

__do_sys_settimeofday.exit:                       ; preds = %if.then19.i.i, %if.end17.i.i.__do_sys_settimeofday.exit_crit_edge, %if.then14.i.i, %if.then6.i.i.__do_sys_settimeofday.exit_crit_edge, %if.end.i.i.__do_sys_settimeofday.exit_crit_edge, %timespec64_valid_settod.exit.i.i.__do_sys_settimeofday.exit_crit_edge, %land.lhs.true.i.i.__do_sys_settimeofday.exit_crit_edge, %if.then11.i.i.i, %if.end.i.__do_sys_settimeofday.exit_crit_edge, %lor.lhs.false.i.__do_sys_settimeofday.exit_crit_edge, %if.then.i.__do_sys_settimeofday.exit_crit_edge
  %retval.0.i = phi i32 [ -14, %lor.lhs.false.i.__do_sys_settimeofday.exit_crit_edge ], [ -14, %if.then.i.__do_sys_settimeofday.exit_crit_edge ], [ -22, %if.end.i.__do_sys_settimeofday.exit_crit_edge ], [ %call20.i.i, %if.then19.i.i ], [ -22, %timespec64_valid_settod.exit.i.i.__do_sys_settimeofday.exit_crit_edge ], [ %call1.i.i, %if.end.i.i.__do_sys_settimeofday.exit_crit_edge ], [ -22, %if.then6.i.i.__do_sys_settimeofday.exit_crit_edge ], [ 0, %if.then14.i.i ], [ 0, %if.end17.i.i.__do_sys_settimeofday.exit_crit_edge ], [ -22, %land.lhs.true.i.i.__do_sys_settimeofday.exit_crit_edge ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %new_tz.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %new_ts.i) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_old_timex32(ptr noundef writeonly %txc, ptr noundef %utp) local_unnamed_addr #0 align 64 {
entry:
  %tx32 = alloca %struct.old_timex32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %tx32) #8
  %0 = call ptr @memset(ptr %tx32, i32 255, i32 128)
  %1 = call ptr @memset(ptr %txc, i32 0, i32 208)
  tail call void @__might_fault(ptr noundef nonnull @.str.25, i32 noundef 156) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %utp, i32 128, i32 -1226833920) #11, !srcloc !157
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !152

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %tx32, i32 noundef 128) #8
  %3 = call i32 @llvm.read_register.i32(metadata !134) #8
  %and.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !144
  %and.i.i.i.i = and i32 %5, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !145
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !146
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %tx32, ptr noundef %utp, i32 noundef 128) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #8, !srcloc !145
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !146
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !152

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i62 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 128, %entry.if.then11.i.i_crit_edge ], [ 128, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 128, %res.0.i.i62
  %add.ptr.i.i = getelementptr i8, ptr %tx32, i32 %sub.i.i
  %6 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i62)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %tx32 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx32, align 4
  %9 = ptrtoint ptr %txc to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %txc, align 8
  %offset = getelementptr inbounds %struct.old_timex32, ptr %tx32, i32 0, i32 1
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset, align 4
  %conv = sext i32 %11 to i64
  %offset2 = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 2
  %12 = ptrtoint ptr %offset2 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv, ptr %offset2, align 8
  %freq = getelementptr inbounds %struct.old_timex32, ptr %tx32, i32 0, i32 2
  %13 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %freq, align 4
  %conv3 = sext i32 %14 to i64
  %freq4 = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 3
  %15 = ptrtoint ptr %freq4 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv3, ptr %freq4, align 8
  %maxerror = getelementptr inbounds %struct.old_timex32, ptr %tx32, i32 0, i32 3
  %16 = ptrtoint ptr %maxerror to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %maxerror, align 4
  %conv5 = sext i32 %17 to i64
  %maxerror6 = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 4
  %18 = ptrtoint ptr %maxerror6 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv5, ptr %maxerror6, align 8
  %esterror = getelementptr inbounds %struct.old_timex32, ptr %tx32, i32 0, i32 4
  %19 = ptrtoint ptr %esterror to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %esterror, align 4
  %conv7 = sext i32 %20 to i64
  %esterror8 = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 5
  %21 = ptrtoint ptr %esterror8 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv7, ptr %esterror8, align 8
  %status = getelementptr inbounds %struct.old_timex32, ptr %tx32, i32 0, i32 5
  %22 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %status, align 4
  %status9 = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 6
  %24 = ptrtoint ptr %status9 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %status9, align 8
  %constant = getelementptr inbounds %struct.old_timex32, ptr %tx32, i32 0, i32 6
  %25 = ptrtoint ptr %constant to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %constant, align 4
  %conv10 = sext i32 %26 to i64
  %constant11 = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 8
  %27 = ptrtoint ptr %constant11 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %conv10, ptr %constant11, align 8
  %precision = getelementptr inbounds %struct.old_timex32, ptr %tx32, i32 0, i32 7
  %28 = ptrtoint ptr %precision to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %precision, align 4
  %conv12 = sext i32 %29 to i64
  %precision13 = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 9
  %30 = ptrtoint ptr %precision13 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %conv12, ptr %precision13, align 8
  %tolerance = getelementptr inbounds %struct.old_timex32, ptr %tx32, i32 0, i32 8
  %31 = ptrtoint ptr %tolerance to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tolerance, align 4
  %conv14 = sext i32 %32 to i64
  %tolerance15 = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 10
  %33 = ptrtoint ptr %tolerance15 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %conv14, ptr %tolerance15, align 8
  %time = getelementptr inbounds %struct.old_timex32, ptr %tx32, i32 0, i32 9
  %34 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %time, align 4
  %conv16 = sext i32 %35 to i64
  %time17 = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 11
  %36 = ptrtoint ptr %time17 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %conv16, ptr %time17, align 8
  %tv_usec = getelementptr inbounds %struct.old_timex32, ptr %tx32, i32 0, i32 9, i32 1
  %37 = ptrtoint ptr %tv_usec to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tv_usec, align 4
  %conv20 = sext i32 %38 to i64
  %tv_usec22 = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 11, i32 1
  %39 = ptrtoint ptr %tv_usec22 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %conv20, ptr %tv_usec22, align 8
  %tick = getelementptr inbounds %struct.old_timex32, ptr %tx32, i32 0, i32 10
  %40 = ptrtoint ptr %tick to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tick, align 4
  %conv23 = sext i32 %41 to i64
  %tick24 = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 12
  %42 = ptrtoint ptr %tick24 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %conv23, ptr %tick24, align 8
  %ppsfreq = getelementptr inbounds %struct.old_timex32, ptr %tx32, i32 0, i32 11
  %43 = ptrtoint ptr %ppsfreq to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ppsfreq, align 4
  %conv25 = sext i32 %44 to i64
  %ppsfreq26 = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 13
  %45 = ptrtoint ptr %ppsfreq26 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %conv25, ptr %ppsfreq26, align 8
  %jitter = getelementptr inbounds %struct.old_timex32, ptr %tx32, i32 0, i32 12
  %46 = ptrtoint ptr %jitter to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %jitter, align 4
  %conv27 = sext i32 %47 to i64
  %jitter28 = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 14
  %48 = ptrtoint ptr %jitter28 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %conv27, ptr %jitter28, align 8
  %shift = getelementptr inbounds %struct.old_timex32, ptr %tx32, i32 0, i32 13
  %49 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %shift, align 4
  %shift29 = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 15
  %51 = ptrtoint ptr %shift29 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %shift29, align 8
  %stabil = getelementptr inbounds %struct.old_timex32, ptr %tx32, i32 0, i32 14
  %52 = ptrtoint ptr %stabil to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %stabil, align 4
  %conv30 = sext i32 %53 to i64
  %stabil31 = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 17
  %54 = ptrtoint ptr %stabil31 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %conv30, ptr %stabil31, align 8
  %jitcnt = getelementptr inbounds %struct.old_timex32, ptr %tx32, i32 0, i32 15
  %55 = ptrtoint ptr %jitcnt to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %jitcnt, align 4
  %conv32 = sext i32 %56 to i64
  %jitcnt33 = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 18
  %57 = ptrtoint ptr %jitcnt33 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %conv32, ptr %jitcnt33, align 8
  %calcnt = getelementptr inbounds %struct.old_timex32, ptr %tx32, i32 0, i32 16
  %58 = ptrtoint ptr %calcnt to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %calcnt, align 4
  %conv34 = sext i32 %59 to i64
  %calcnt35 = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 19
  %60 = ptrtoint ptr %calcnt35 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %conv34, ptr %calcnt35, align 8
  %errcnt = getelementptr inbounds %struct.old_timex32, ptr %tx32, i32 0, i32 17
  %61 = ptrtoint ptr %errcnt to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %errcnt, align 4
  %conv36 = sext i32 %62 to i64
  %errcnt37 = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 20
  %63 = ptrtoint ptr %errcnt37 to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %conv36, ptr %errcnt37, align 8
  %stbcnt = getelementptr inbounds %struct.old_timex32, ptr %tx32, i32 0, i32 18
  %64 = ptrtoint ptr %stbcnt to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %stbcnt, align 4
  %conv38 = sext i32 %65 to i64
  %stbcnt39 = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 21
  %66 = ptrtoint ptr %stbcnt39 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %conv38, ptr %stbcnt39, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then11.i.i
  %retval.0 = phi i32 [ 0, %if.end ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %tx32) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @put_old_timex32(ptr noundef %utp, ptr noundef readonly %txc) local_unnamed_addr #0 align 64 {
entry:
  %tx32 = alloca %struct.old_timex32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %tx32) #8
  %0 = getelementptr inbounds i8, ptr %tx32, i32 84
  %1 = call ptr @memset(ptr %0, i32 0, i32 44)
  %2 = ptrtoint ptr %txc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %txc, align 8
  %4 = ptrtoint ptr %tx32 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %tx32, align 4
  %offset = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 2
  %5 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %offset, align 8
  %conv = trunc i64 %6 to i32
  %offset2 = getelementptr inbounds %struct.old_timex32, ptr %tx32, i32 0, i32 1
  %7 = ptrtoint ptr %offset2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %offset2, align 4
  %freq = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 3
  %8 = ptrtoint ptr %freq to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %freq, align 8
  %conv3 = trunc i64 %9 to i32
  %freq4 = getelementptr inbounds %struct.old_timex32, ptr %tx32, i32 0, i32 2
  %10 = ptrtoint ptr %freq4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv3, ptr %freq4, align 4
  %maxerror = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 4
  %11 = ptrtoint ptr %maxerror to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %maxerror, align 8
  %conv5 = trunc i64 %12 to i32
  %maxerror6 = getelementptr inbounds %struct.old_timex32, ptr %tx32, i32 0, i32 3
  %13 = ptrtoint ptr %maxerror6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv5, ptr %maxerror6, align 4
  %esterror = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 5
  %14 = ptrtoint ptr %esterror to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %esterror, align 8
  %conv7 = trunc i64 %15 to i32
  %esterror8 = getelementptr inbounds %struct.old_timex32, ptr %tx32, i32 0, i32 4
  %16 = ptrtoint ptr %esterror8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv7, ptr %esterror8, align 4
  %status = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 6
  %17 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %status, align 8
  %status9 = getelementptr inbounds %struct.old_timex32, ptr %tx32, i32 0, i32 5
  %19 = ptrtoint ptr %status9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %status9, align 4
  %constant = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 8
  %20 = ptrtoint ptr %constant to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %constant, align 8
  %conv10 = trunc i64 %21 to i32
  %constant11 = getelementptr inbounds %struct.old_timex32, ptr %tx32, i32 0, i32 6
  %22 = ptrtoint ptr %constant11 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv10, ptr %constant11, align 4
  %precision = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 9
  %23 = ptrtoint ptr %precision to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %precision, align 8
  %conv12 = trunc i64 %24 to i32
  %precision13 = getelementptr inbounds %struct.old_timex32, ptr %tx32, i32 0, i32 7
  %25 = ptrtoint ptr %precision13 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv12, ptr %precision13, align 4
  %tolerance = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 10
  %26 = ptrtoint ptr %tolerance to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %tolerance, align 8
  %conv14 = trunc i64 %27 to i32
  %tolerance15 = getelementptr inbounds %struct.old_timex32, ptr %tx32, i32 0, i32 8
  %28 = ptrtoint ptr %tolerance15 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv14, ptr %tolerance15, align 4
  %time = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 11
  %29 = ptrtoint ptr %time to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %time, align 8
  %conv16 = trunc i64 %30 to i32
  %time17 = getelementptr inbounds %struct.old_timex32, ptr %tx32, i32 0, i32 9
  %31 = ptrtoint ptr %time17 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv16, ptr %time17, align 4
  %tv_usec = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 11, i32 1
  %32 = ptrtoint ptr %tv_usec to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %tv_usec, align 8
  %conv20 = trunc i64 %33 to i32
  %tv_usec22 = getelementptr inbounds %struct.old_timex32, ptr %tx32, i32 0, i32 9, i32 1
  %34 = ptrtoint ptr %tv_usec22 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv20, ptr %tv_usec22, align 4
  %tick = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 12
  %35 = ptrtoint ptr %tick to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %tick, align 8
  %conv23 = trunc i64 %36 to i32
  %tick24 = getelementptr inbounds %struct.old_timex32, ptr %tx32, i32 0, i32 10
  %37 = ptrtoint ptr %tick24 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv23, ptr %tick24, align 4
  %ppsfreq = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 13
  %38 = ptrtoint ptr %ppsfreq to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %ppsfreq, align 8
  %conv25 = trunc i64 %39 to i32
  %ppsfreq26 = getelementptr inbounds %struct.old_timex32, ptr %tx32, i32 0, i32 11
  %40 = ptrtoint ptr %ppsfreq26 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv25, ptr %ppsfreq26, align 4
  %jitter = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 14
  %41 = ptrtoint ptr %jitter to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %jitter, align 8
  %conv27 = trunc i64 %42 to i32
  %jitter28 = getelementptr inbounds %struct.old_timex32, ptr %tx32, i32 0, i32 12
  %43 = ptrtoint ptr %jitter28 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv27, ptr %jitter28, align 4
  %shift = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 15
  %44 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %shift, align 8
  %shift29 = getelementptr inbounds %struct.old_timex32, ptr %tx32, i32 0, i32 13
  %46 = ptrtoint ptr %shift29 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %shift29, align 4
  %stabil = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 17
  %47 = ptrtoint ptr %stabil to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %stabil, align 8
  %conv30 = trunc i64 %48 to i32
  %stabil31 = getelementptr inbounds %struct.old_timex32, ptr %tx32, i32 0, i32 14
  %49 = ptrtoint ptr %stabil31 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv30, ptr %stabil31, align 4
  %jitcnt = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 18
  %50 = ptrtoint ptr %jitcnt to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %jitcnt, align 8
  %conv32 = trunc i64 %51 to i32
  %jitcnt33 = getelementptr inbounds %struct.old_timex32, ptr %tx32, i32 0, i32 15
  %52 = ptrtoint ptr %jitcnt33 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %conv32, ptr %jitcnt33, align 4
  %calcnt = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 19
  %53 = ptrtoint ptr %calcnt to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %calcnt, align 8
  %conv34 = trunc i64 %54 to i32
  %calcnt35 = getelementptr inbounds %struct.old_timex32, ptr %tx32, i32 0, i32 16
  %55 = ptrtoint ptr %calcnt35 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv34, ptr %calcnt35, align 4
  %errcnt = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 20
  %56 = ptrtoint ptr %errcnt to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %errcnt, align 8
  %conv36 = trunc i64 %57 to i32
  %errcnt37 = getelementptr inbounds %struct.old_timex32, ptr %tx32, i32 0, i32 17
  %58 = ptrtoint ptr %errcnt37 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %conv36, ptr %errcnt37, align 4
  %stbcnt = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 21
  %59 = ptrtoint ptr %stbcnt to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %stbcnt, align 8
  %conv38 = trunc i64 %60 to i32
  %stbcnt39 = getelementptr inbounds %struct.old_timex32, ptr %tx32, i32 0, i32 18
  %61 = ptrtoint ptr %stbcnt39 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %conv38, ptr %stbcnt39, align 4
  %tai = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 22
  %62 = ptrtoint ptr %tai to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tai, align 8
  %tai40 = getelementptr inbounds %struct.old_timex32, ptr %tx32, i32 0, i32 19
  %64 = ptrtoint ptr %tai40 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %tai40, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.25, i32 noundef 174) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %entry.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

entry.copy_to_user.exit.thread_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %entry
  %65 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %utp, i32 128, i32 -1226833920) #11, !srcloc !153
  %asmresult.i.i = extractvalue { i32, i32 } %65, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %tx32, i32 noundef 128) #8
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %utp, ptr noundef nonnull %tx32, i32 noundef 128) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %entry.copy_to_user.exit.thread_crit_edge
  %66 = phi i32 [ -14, %entry.copy_to_user.exit.thread_crit_edge ], [ -14, %if.end.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %tx32) #8
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_adjtimex_time32(i32 noundef %utp) #0 align 64 {
entry:
  %txc.i = alloca %struct.__kernel_timex, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %utp to ptr
  call void @llvm.lifetime.start.p0(i64 208, ptr nonnull %txc.i) #8
  %1 = call ptr @memset(ptr %txc.i, i32 255, i32 208)
  %call.i = call i32 @get_old_timex32(ptr noundef nonnull %txc.i, ptr noundef %0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__do_sys_adjtimex_time32.exit_crit_edge

entry.__do_sys_adjtimex_time32.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__do_sys_adjtimex_time32.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = call i32 @do_adjtimex(ptr noundef nonnull %txc.i) #8
  %call2.i = call i32 @put_old_timex32(ptr noundef %0, ptr noundef nonnull %txc.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  %call1.call2.i = select i1 %tobool3.not.i, i32 %call1.i, i32 %call2.i
  br label %__do_sys_adjtimex_time32.exit

__do_sys_adjtimex_time32.exit:                    ; preds = %if.end.i, %entry.__do_sys_adjtimex_time32.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.__do_sys_adjtimex_time32.exit_crit_edge ], [ %call1.call2.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %txc.i) #8
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @jiffies_to_msecs(i32 noundef %j) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = mul i32 %j, 10
  ret i32 %mul
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @jiffies_to_usecs(i32 noundef %j) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = mul i32 %j, 10000
  ret i32 %mul
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @mktime64(i32 noundef %year0, i32 noundef %mon0, i32 noundef %day, i32 noundef %hour, i32 noundef %min, i32 noundef %sec) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %mon0, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp = icmp slt i32 %sub, 1
  %add = add i32 %mon0, 10
  %mon.0 = select i1 %cmp, i32 %add, i32 %sub
  %sub1 = sext i1 %cmp to i32
  %year.0 = add i32 %sub1, %year0
  %div28 = lshr i32 %year.0, 2
  %div2 = udiv i32 %year.0, 100
  %div4 = udiv i32 %year.0, 400
  %mul = mul i32 %mon.0, 367
  %div6 = udiv i32 %mul, 12
  %sub3 = sub i32 %day, %div2
  %add5 = add i32 %sub3, %div28
  %add7 = add i32 %add5, %div4
  %add8 = add i32 %add7, %div6
  %conv = zext i32 %add8 to i64
  %mul9 = mul i32 %year.0, 365
  %conv10 = zext i32 %mul9 to i64
  %add11 = add nuw nsw i64 %conv, %conv10
  %0 = mul nuw nsw i64 %add11, 24
  %conv14 = zext i32 %hour to i64
  %mul13 = add nsw i64 %conv14, -17267976
  %add15 = add nsw i64 %mul13, %0
  %mul16 = mul nsw i64 %add15, 60
  %conv17 = zext i32 %min to i64
  %add18 = add nsw i64 %mul16, %conv17
  %mul19 = mul nsw i64 %add18, 60
  %conv20 = zext i32 %sec to i64
  %add21 = add nsw i64 %mul19, %conv20
  ret i64 %add21
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ns_to_kernel_old_timeval(ptr noalias nocapture writeonly sret(%struct.__kernel_old_timeval) align 4 %agg.result, i64 noundef %nsec) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %nsec)
  %cmp.i = icmp sgt i64 %nsec, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i, !prof !152

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv14.i.i = trunc i64 %nsec to i32
  %0 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %nsec, i32 0) #11, !srcloc !158
  %asmresult.i.i.i = extractvalue { i64, i32 } %0, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %0, 1
  %1 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %nsec, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #11, !srcloc !159
  %asmresult10.i.i.i = extractvalue { i64, i32 } %1, 0
  %div158.i26.i = lshr i64 %asmresult10.i.i.i, 29
  %conv159.i.i = trunc i64 %div158.i26.i to i32
  %mul160.i.neg.i = mul i32 %conv159.i.i, -1000000000
  %sub161.i.i = add i32 %mul160.i.neg.i, %conv14.i.i
  br label %ns_to_timespec64.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %nsec)
  %cmp2.i = icmp slt i64 %nsec, 0
  br i1 %cmp2.i, label %if.then3.i, label %if.else.i.ns_to_timespec64.exit_crit_edge

if.else.i.ns_to_timespec64.exit_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ns_to_timespec64.exit

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub4.i = xor i64 %nsec, -1
  %2 = trunc i64 %nsec to i32
  %3 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %sub4.i, i32 0) #11, !srcloc !158
  %asmresult.i.i17.i = extractvalue { i64, i32 } %3, 0
  %asmresult4.i.i18.i = extractvalue { i64, i32 } %3, 1
  %4 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %sub4.i, i64 %asmresult.i.i17.i, i32 %asmresult4.i.i18.i) #11, !srcloc !159
  %asmresult10.i.i19.i = extractvalue { i64, i32 } %4, 0
  %div158.i2025.i = lshr i64 %asmresult10.i.i19.i, 29
  %conv159.i21.i = trunc i64 %div158.i2025.i to i32
  %mul160.i22.neg.neg.i = mul i32 %conv159.i21.i, 1000000000
  %sub161.i23.neg.i = add i32 %2, 1000000000
  %sub10.i = add i32 %sub161.i23.neg.i, %mul160.i22.neg.neg.i
  %extract.t = xor i32 %conv159.i21.i, -1
  br label %ns_to_timespec64.exit

ns_to_timespec64.exit:                            ; preds = %if.then3.i, %if.else.i.ns_to_timespec64.exit_crit_edge, %if.then.i
  %ts.sroa.7.0 = phi i32 [ 0, %if.else.i.ns_to_timespec64.exit_crit_edge ], [ %sub10.i, %if.then3.i ], [ %sub161.i.i, %if.then.i ]
  %ts.sroa.0.1.off0 = phi i32 [ 0, %if.else.i.ns_to_timespec64.exit_crit_edge ], [ %extract.t, %if.then3.i ], [ %conv159.i.i, %if.then.i ]
  %5 = getelementptr inbounds %struct.__kernel_old_timeval, ptr %agg.result, i32 0, i32 1
  %6 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %ts.sroa.0.1.off0, ptr %agg.result, align 4
  %div = sdiv i32 %ts.sroa.7.0, 1000
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %div, ptr %5, align 4
  ret void
}

; Function Attrs: argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define dso_local void @ns_to_timespec64(ptr noalias nocapture writeonly sret(%struct.timespec64) align 8 %agg.result, i64 noundef %nsec) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %agg.result, i32 0, i32 16)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %nsec)
  %cmp = icmp sgt i64 %nsec, 0
  br i1 %cmp, label %if.then, label %if.else, !prof !152

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv14.i = trunc i64 %nsec to i32
  %1 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %nsec, i32 0) #11, !srcloc !158
  %asmresult.i.i = extractvalue { i64, i32 } %1, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %1, 1
  %2 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %nsec, i64 %asmresult.i.i, i32 %asmresult4.i.i) #11, !srcloc !159
  %asmresult10.i.i = extractvalue { i64, i32 } %2, 0
  %div158.i26 = lshr i64 %asmresult10.i.i, 29
  %conv159.i = trunc i64 %div158.i26 to i32
  %mul160.i.neg = mul i32 %conv159.i, -1000000000
  %sub161.i = add i32 %mul160.i.neg, %conv14.i
  %3 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %div158.i26, ptr %agg.result, align 8
  br label %if.end12.sink.split

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %nsec)
  %cmp2 = icmp slt i64 %nsec, 0
  br i1 %cmp2, label %if.then3, label %if.else.if.end12_crit_edge

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %sub4 = xor i64 %nsec, -1
  %4 = trunc i64 %nsec to i32
  %5 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %sub4, i32 0) #11, !srcloc !158
  %asmresult.i.i17 = extractvalue { i64, i32 } %5, 0
  %asmresult4.i.i18 = extractvalue { i64, i32 } %5, 1
  %6 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %sub4, i64 %asmresult.i.i17, i32 %asmresult4.i.i18) #11, !srcloc !159
  %asmresult10.i.i19 = extractvalue { i64, i32 } %6, 0
  %div158.i2025 = lshr i64 %asmresult10.i.i19, 29
  %conv159.i21 = trunc i64 %div158.i2025 to i32
  %sub7 = xor i64 %div158.i2025, -1
  %7 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %sub7, ptr %agg.result, align 8
  %mul160.i22.neg.neg = mul i32 %conv159.i21, 1000000000
  %sub161.i23.neg = add i32 %4, 1000000000
  %sub10 = add i32 %sub161.i23.neg, %mul160.i22.neg.neg
  br label %if.end12.sink.split

if.end12.sink.split:                              ; preds = %if.then3, %if.then
  %sub10.sink = phi i32 [ %sub10, %if.then3 ], [ %sub161.i, %if.then ]
  %tv_nsec11 = getelementptr inbounds %struct.timespec64, ptr %agg.result, i32 0, i32 1
  %8 = ptrtoint ptr %tv_nsec11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub10.sink, ptr %tv_nsec11, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.end12.sink.split, %if.else.if.end12_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @set_normalized_timespec64(ptr nocapture noundef writeonly %ts, i64 noundef %sec, i64 noundef %nsec) #0 align 64 {
entry:
  %nsec.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nsec.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %nsec, ptr %nsec.addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 999999999, i64 %nsec)
  %cmp9 = icmp sgt i64 %nsec, 999999999
  br i1 %cmp9, label %entry.while.body_crit_edge, label %entry.while.cond1thread-pre-split_crit_edge

entry.while.cond1thread-pre-split_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond1thread-pre-split

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %sec.addr.010 = phi i64 [ %inc, %while.body.while.body_crit_edge ], [ %sec, %entry.while.body_crit_edge ]
  %1 = phi i64 [ %sub, %while.body.while.body_crit_edge ], [ %nsec, %entry.while.body_crit_edge ]
  call void asm "", "=*rm,0"(ptr nonnull elementtype(i64) %nsec.addr, i64 %1) #8, !srcloc !160
  %2 = ptrtoint ptr %nsec.addr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %nsec.addr, align 8
  %sub = add i64 %3, -1000000000
  store i64 %sub, ptr %nsec.addr, align 8
  %inc = add i64 %sec.addr.010, 1
  %cmp = icmp sgt i64 %sub, 999999999
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.while.cond1thread-pre-split_crit_edge

while.body.while.cond1thread-pre-split_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond1thread-pre-split

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.cond1thread-pre-split:                      ; preds = %while.body.while.cond1thread-pre-split_crit_edge, %entry.while.cond1thread-pre-split_crit_edge
  %.pr = phi i64 [ %nsec, %entry.while.cond1thread-pre-split_crit_edge ], [ %sub, %while.body.while.cond1thread-pre-split_crit_edge ]
  %sec.addr.0.lcssa = phi i64 [ %sec, %entry.while.cond1thread-pre-split_crit_edge ], [ %inc, %while.body.while.cond1thread-pre-split_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.pr)
  %cmp211 = icmp slt i64 %.pr, 0
  %extract.t = trunc i64 %.pr to i32
  br i1 %cmp211, label %while.cond1thread-pre-split.while.body3_crit_edge, label %while.cond1thread-pre-split.while.end4_crit_edge

while.cond1thread-pre-split.while.end4_crit_edge: ; preds = %while.cond1thread-pre-split
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end4

while.cond1thread-pre-split.while.body3_crit_edge: ; preds = %while.cond1thread-pre-split
  br label %while.body3

while.body3:                                      ; preds = %while.body3.while.body3_crit_edge, %while.cond1thread-pre-split.while.body3_crit_edge
  %sec.addr.112 = phi i64 [ %dec, %while.body3.while.body3_crit_edge ], [ %sec.addr.0.lcssa, %while.cond1thread-pre-split.while.body3_crit_edge ]
  %4 = phi i64 [ %add, %while.body3.while.body3_crit_edge ], [ %.pr, %while.cond1thread-pre-split.while.body3_crit_edge ]
  call void asm "", "=*rm,0"(ptr nonnull elementtype(i64) %nsec.addr, i64 %4) #8, !srcloc !161
  %5 = ptrtoint ptr %nsec.addr to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %nsec.addr, align 8
  %add = add i64 %6, 1000000000
  store i64 %add, ptr %nsec.addr, align 8
  %dec = add i64 %sec.addr.112, -1
  %cmp2 = icmp slt i64 %add, 0
  br i1 %cmp2, label %while.body3.while.body3_crit_edge, label %while.end4.loopexit

while.body3.while.body3_crit_edge:                ; preds = %while.body3
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body3

while.end4.loopexit:                              ; preds = %while.body3
  call void @__sanitizer_cov_trace_pc() #10
  %extract.t15 = trunc i64 %add to i32
  br label %while.end4

while.end4:                                       ; preds = %while.end4.loopexit, %while.cond1thread-pre-split.while.end4_crit_edge
  %.lcssa.off0 = phi i32 [ %extract.t, %while.cond1thread-pre-split.while.end4_crit_edge ], [ %extract.t15, %while.end4.loopexit ]
  %sec.addr.1.lcssa = phi i64 [ %sec.addr.0.lcssa, %while.cond1thread-pre-split.while.end4_crit_edge ], [ %dec, %while.end4.loopexit ]
  %7 = ptrtoint ptr %ts to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %sec.addr.1.lcssa, ptr %ts, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %8 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.lcssa.off0, ptr %tv_nsec, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @__msecs_to_jiffies(i32 noundef %m) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %m)
  %cmp = icmp slt i32 %m, 0
  %sub.i = add nuw i32 %m, 9
  %div.i = udiv i32 %sub.i, 10
  %retval.0 = select i1 %cmp, i32 1073741822, i32 %div.i
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @__usecs_to_jiffies(i32 noundef %u) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -20000, i32 %u)
  %cmp = icmp ugt i32 %u, -20000
  %sub.i = add nuw i32 %u, 9999
  %div.i = udiv i32 %sub.i, 10000
  %retval.0 = select i1 %cmp, i32 1073741822, i32 %div.i
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @timespec64_to_jiffies(ptr nocapture noundef readonly %value) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %value, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %value, i32 0, i32 1
  %2 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tv_nsec, align 8
  %sub = add i32 %3, 9999999
  call void @__sanitizer_cov_trace_const_cmp8(i64 10737417, i64 %1)
  %cmp = icmp ugt i64 %1, 10737417
  %.op = mul nuw nsw i64 %1, 3355443200
  %4 = sext i32 %sub to i64
  %.op8 = mul nsw i64 %4, 1801439851
  %.op8.op = lshr i64 %.op8, 29
  %5 = add i64 %.op8.op, %.op
  %.op9 = lshr i64 %5, 25
  %6 = trunc i64 %.op9 to i32
  %conv4 = select i1 %cmp, i32 1073741800, i32 %6
  ret i32 %conv4
}

; Function Attrs: argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define dso_local void @jiffies_to_timespec64(i32 noundef %jiffies, ptr nocapture noundef writeonly %value) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %jiffies to i64
  %mul = mul nuw nsw i64 %conv, 10000000
  %conv14.i = trunc i64 %mul to i32
  %0 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul, i32 0) #11, !srcloc !158
  %asmresult.i.i = extractvalue { i64, i32 } %0, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %0, 1
  %1 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul, i64 %asmresult.i.i, i32 %asmresult4.i.i) #11, !srcloc !159
  %asmresult10.i.i = extractvalue { i64, i32 } %1, 0
  %div158.i2 = lshr i64 %asmresult10.i.i, 29
  %conv159.i = trunc i64 %div158.i2 to i32
  %mul160.i.neg = mul i32 %conv159.i, -1000000000
  %sub161.i = add i32 %mul160.i.neg, %conv14.i
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %div158.i2, ptr %value, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %value, i32 0, i32 1
  %3 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %sub161.i, ptr %tv_nsec, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @jiffies_to_clock_t(i32 noundef returned %x) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 %x
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @clock_t_to_jiffies(i32 noundef %x) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 %x
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @jiffies_64_to_clock_t(i64 noundef returned %x) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i64 %x
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local i64 @nsec_to_clock_t(i64 noundef %x) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2972493582642298179, i64 %x) #11, !srcloc !162
  %1 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2972493582642298179, i64 %x, i64 %0, i32 0) #11, !srcloc !159
  %asmresult10.i.i.i = extractvalue { i64, i32 } %1, 0
  %div158.i1.i = lshr i64 %asmresult10.i.i.i, 23
  ret i64 %div158.i1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @jiffies64_to_nsecs(i64 noundef %j) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = mul i64 %j, 10000000
  ret i64 %mul
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @jiffies64_to_msecs(i64 noundef %j) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = mul i64 %j, 10
  ret i64 %mul
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local i64 @nsecs_to_jiffies64(i64 noundef %n) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2972493582642298179, i64 %n) #11, !srcloc !162
  %1 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2972493582642298179, i64 %n, i64 %0, i32 0) #11, !srcloc !159
  %asmresult10.i.i.i = extractvalue { i64, i32 } %1, 0
  %div158.i1.i = lshr i64 %asmresult10.i.i.i, 23
  ret i64 %div158.i1.i
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nsecs_to_jiffies(i64 noundef %n) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2972493582642298179, i64 %n) #11, !srcloc !162
  %1 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2972493582642298179, i64 %n, i64 %0, i32 0) #11, !srcloc !159
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %1, 0
  %div158.i1.i.i = lshr i64 %asmresult10.i.i.i.i, 23
  %conv = trunc i64 %div158.i1.i.i to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @timespec64_add_safe(ptr noalias nocapture sret(%struct.timespec64) align 8 %agg.result, [2 x i64] %lhs.coerce, [2 x i64] %rhs.coerce) local_unnamed_addr #0 align 64 {
entry:
  %nsec.addr.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lhs.coerce.fca.0.extract = extractvalue [2 x i64] %lhs.coerce, 0
  %lhs.coerce.fca.1.extract = extractvalue [2 x i64] %lhs.coerce, 1
  %lhs.sroa.3.8.extract.shift = lshr i64 %lhs.coerce.fca.1.extract, 32
  %lhs.sroa.3.8.extract.trunc = trunc i64 %lhs.sroa.3.8.extract.shift to i32
  %rhs.coerce.fca.0.extract = extractvalue [2 x i64] %rhs.coerce, 0
  %rhs.coerce.fca.1.extract = extractvalue [2 x i64] %rhs.coerce, 1
  %rhs.sroa.3.8.extract.shift = lshr i64 %rhs.coerce.fca.1.extract, 32
  %rhs.sroa.3.8.extract.trunc = trunc i64 %rhs.sroa.3.8.extract.shift to i32
  %0 = getelementptr inbounds i8, ptr %agg.result, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %0, align 8
  %add = add i64 %rhs.coerce.fca.0.extract, %lhs.coerce.fca.0.extract
  %add3 = add i32 %rhs.sroa.3.8.extract.trunc, %lhs.sroa.3.8.extract.trunc
  %conv = sext i32 %add3 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %nsec.addr.i)
  %2 = ptrtoint ptr %nsec.addr.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %nsec.addr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999999, i32 %add3)
  %cmp9.i = icmp sgt i32 %add3, 999999999
  br i1 %cmp9.i, label %entry.while.body.i_crit_edge, label %entry.while.cond1thread-pre-split.i_crit_edge

entry.while.cond1thread-pre-split.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond1thread-pre-split.i

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %sec.addr.010.i = phi i64 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ %add, %entry.while.body.i_crit_edge ]
  %3 = phi i64 [ %sub.i, %while.body.i.while.body.i_crit_edge ], [ %conv, %entry.while.body.i_crit_edge ]
  call void asm "", "=*rm,0"(ptr nonnull elementtype(i64) %nsec.addr.i, i64 %3) #8, !srcloc !160
  %4 = ptrtoint ptr %nsec.addr.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %nsec.addr.i, align 8
  %sub.i = add i64 %5, -1000000000
  store i64 %sub.i, ptr %nsec.addr.i, align 8
  %inc.i = add i64 %sec.addr.010.i, 1
  %cmp.i = icmp sgt i64 %sub.i, 999999999
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.cond1thread-pre-split.i_crit_edge

while.body.i.while.cond1thread-pre-split.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond1thread-pre-split.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.cond1thread-pre-split.i:                    ; preds = %while.body.i.while.cond1thread-pre-split.i_crit_edge, %entry.while.cond1thread-pre-split.i_crit_edge
  %.pr.i = phi i64 [ %conv, %entry.while.cond1thread-pre-split.i_crit_edge ], [ %sub.i, %while.body.i.while.cond1thread-pre-split.i_crit_edge ]
  %sec.addr.0.lcssa.i = phi i64 [ %add, %entry.while.cond1thread-pre-split.i_crit_edge ], [ %inc.i, %while.body.i.while.cond1thread-pre-split.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.pr.i)
  %cmp211.i = icmp slt i64 %.pr.i, 0
  %extract.t.i = trunc i64 %.pr.i to i32
  br i1 %cmp211.i, label %while.cond1thread-pre-split.i.while.body3.i_crit_edge, label %while.cond1thread-pre-split.i.set_normalized_timespec64.exit_crit_edge

while.cond1thread-pre-split.i.set_normalized_timespec64.exit_crit_edge: ; preds = %while.cond1thread-pre-split.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_normalized_timespec64.exit

while.cond1thread-pre-split.i.while.body3.i_crit_edge: ; preds = %while.cond1thread-pre-split.i
  br label %while.body3.i

while.body3.i:                                    ; preds = %while.body3.i.while.body3.i_crit_edge, %while.cond1thread-pre-split.i.while.body3.i_crit_edge
  %sec.addr.112.i = phi i64 [ %dec.i, %while.body3.i.while.body3.i_crit_edge ], [ %sec.addr.0.lcssa.i, %while.cond1thread-pre-split.i.while.body3.i_crit_edge ]
  %6 = phi i64 [ %add.i, %while.body3.i.while.body3.i_crit_edge ], [ %.pr.i, %while.cond1thread-pre-split.i.while.body3.i_crit_edge ]
  call void asm "", "=*rm,0"(ptr nonnull elementtype(i64) %nsec.addr.i, i64 %6) #8, !srcloc !161
  %7 = ptrtoint ptr %nsec.addr.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %nsec.addr.i, align 8
  %add.i = add i64 %8, 1000000000
  store i64 %add.i, ptr %nsec.addr.i, align 8
  %dec.i = add i64 %sec.addr.112.i, -1
  %cmp2.i = icmp slt i64 %add.i, 0
  br i1 %cmp2.i, label %while.body3.i.while.body3.i_crit_edge, label %while.end4.loopexit.i

while.body3.i.while.body3.i_crit_edge:            ; preds = %while.body3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body3.i

while.end4.loopexit.i:                            ; preds = %while.body3.i
  call void @__sanitizer_cov_trace_pc() #10
  %extract.t15.i = trunc i64 %add.i to i32
  br label %set_normalized_timespec64.exit

set_normalized_timespec64.exit:                   ; preds = %while.end4.loopexit.i, %while.cond1thread-pre-split.i.set_normalized_timespec64.exit_crit_edge
  %.lcssa.off0.i = phi i32 [ %extract.t.i, %while.cond1thread-pre-split.i.set_normalized_timespec64.exit_crit_edge ], [ %extract.t15.i, %while.end4.loopexit.i ]
  %sec.addr.1.lcssa.i = phi i64 [ %sec.addr.0.lcssa.i, %while.cond1thread-pre-split.i.set_normalized_timespec64.exit_crit_edge ], [ %dec.i, %while.end4.loopexit.i ]
  %9 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %sec.addr.1.lcssa.i, ptr %agg.result, align 8
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %agg.result, i32 0, i32 1
  %10 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.lcssa.off0.i, ptr %tv_nsec.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nsec.addr.i)
  call void @__sanitizer_cov_trace_cmp8(i64 %sec.addr.1.lcssa.i, i64 %lhs.coerce.fca.0.extract)
  %cmp = icmp slt i64 %sec.addr.1.lcssa.i, %lhs.coerce.fca.0.extract
  call void @__sanitizer_cov_trace_cmp8(i64 %sec.addr.1.lcssa.i, i64 %rhs.coerce.fca.0.extract)
  %cmp9 = icmp slt i64 %sec.addr.1.lcssa.i, %rhs.coerce.fca.0.extract
  %spec.select = select i1 %cmp, i1 true, i1 %cmp9, !prof !149
  br i1 %spec.select, label %if.then, label %set_normalized_timespec64.exit.if.end_crit_edge, !prof !149

set_normalized_timespec64.exit.if.end_crit_edge:  ; preds = %set_normalized_timespec64.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %set_normalized_timespec64.exit
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %agg.result to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 9223372036854775807, ptr %agg.result, align 8
  %12 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %tv_nsec.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %set_normalized_timespec64.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_timespec64(ptr nocapture noundef writeonly %ts, ptr noundef %uts) #0 align 64 {
entry:
  %kts = alloca %struct.__kernel_timespec, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %kts) #8
  %0 = getelementptr inbounds %struct.__kernel_timespec, ptr %kts, i32 0, i32 1
  %1 = call ptr @memset(ptr %kts, i32 255, i32 16)
  tail call void @__might_fault(ptr noundef nonnull @.str.25, i32 noundef 156) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %uts, i32 16, i32 -1226833920) #11, !srcloc !157
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !152

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %kts, i32 noundef 16) #8
  %3 = call i32 @llvm.read_register.i32(metadata !134) #8
  %and.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !144
  %and.i.i.i.i = and i32 %5, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !145
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !146
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %kts, ptr noundef %uts, i32 noundef 16) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #8, !srcloc !145
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !146
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !152

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i11 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 16, %entry.if.then11.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 16, %res.0.i.i11
  %add.ptr.i.i = getelementptr i8, ptr %kts, i32 %sub.i.i
  %6 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i11)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %kts to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %kts, align 8
  %9 = ptrtoint ptr %ts to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %ts, align 8
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %0, align 8
  %conv = trunc i64 %11 to i32
  %tv_nsec6 = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %12 = ptrtoint ptr %tv_nsec6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv, ptr %tv_nsec6, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then11.i.i
  %retval.0 = phi i32 [ 0, %if.end ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %kts) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @put_timespec64(ptr nocapture noundef readonly %ts, ptr noundef %uts) #0 align 64 {
entry:
  %kts = alloca %struct.__kernel_timespec, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %kts) #8
  %0 = getelementptr inbounds %struct.__kernel_timespec, ptr %kts, i32 0, i32 1
  %1 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %ts, align 8
  %3 = ptrtoint ptr %kts to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %kts, align 8
  %tv_nsec2 = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %4 = ptrtoint ptr %tv_nsec2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tv_nsec2, align 8
  %conv = sext i32 %5 to i64
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv, ptr %0, align 8
  tail call void @__might_fault(ptr noundef nonnull @.str.25, i32 noundef 174) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %entry.copy_to_user.exit.thread_crit_edge, label %if.end.i.i

entry.copy_to_user.exit.thread_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.thread

if.end.i.i:                                       ; preds = %entry
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %uts, i32 16, i32 -1226833920) #11, !srcloc !153
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.copy_to_user.exit.thread_crit_edge

if.end.i.i.copy_to_user.exit.thread_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.thread

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %kts, i32 noundef 16) #8
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %uts, ptr noundef nonnull %kts, i32 noundef 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %copy_to_user.exit.thread

copy_to_user.exit.thread:                         ; preds = %copy_to_user.exit, %if.end.i.i.copy_to_user.exit.thread_crit_edge, %entry.copy_to_user.exit.thread_crit_edge
  %8 = phi i32 [ -14, %entry.copy_to_user.exit.thread_crit_edge ], [ -14, %if.end.i.i.copy_to_user.exit.thread_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %kts) #8
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_old_timespec32(ptr nocapture noundef writeonly %ts, ptr noundef %uts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__get_old_timespec32(ptr noundef %ts, ptr noundef %uts)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__get_old_timespec32(ptr nocapture noundef writeonly %ts64, ptr noundef %cts) unnamed_addr #0 align 64 {
entry:
  %ts = alloca %struct.old_timespec32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ts) #8
  %0 = ptrtoint ptr %ts to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ts, align 4, !annotation !154
  %1 = getelementptr inbounds %struct.old_timespec32, ptr %ts, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !154
  tail call void @__might_fault(ptr noundef nonnull @.str.25, i32 noundef 156) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %cts, i32 8, i32 -1226833920) #11, !srcloc !157
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !152

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ts, i32 noundef 8) #8
  %4 = call i32 @llvm.read_register.i32(metadata !134) #8
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !144
  %and.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !145
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !146
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %ts, ptr noundef %cts, i32 noundef 8) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #8, !srcloc !145
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !146
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !152

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i7 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 8, %entry.if.then11.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 8, %res.0.i.i7
  %add.ptr.i.i = getelementptr i8, ptr %ts, i32 %sub.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i7)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ts, align 4
  %conv = sext i32 %9 to i64
  %10 = ptrtoint ptr %ts64 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv, ptr %ts64, align 8
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  %tv_nsec2 = getelementptr inbounds %struct.timespec64, ptr %ts64, i32 0, i32 1
  %13 = ptrtoint ptr %tv_nsec2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %tv_nsec2, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then11.i.i
  %retval.0 = phi i32 [ 0, %if.end ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ts) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @put_old_timespec32(ptr nocapture noundef readonly %ts, ptr noundef %uts) #0 align 64 {
entry:
  %ts.i = alloca %struct.old_timespec32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ts.i) #8
  %0 = getelementptr inbounds %struct.old_timespec32, ptr %ts.i, i32 0, i32 1
  %1 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %ts, align 8
  %conv.i = trunc i64 %2 to i32
  %3 = ptrtoint ptr %ts.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv.i, ptr %ts.i, align 4
  %tv_nsec2.i = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %4 = ptrtoint ptr %tv_nsec2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tv_nsec2.i, align 8
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %0, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.25, i32 noundef 174) #8
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i, label %entry.__put_old_timespec32.exit_crit_edge, label %if.end.i.i.i

entry.__put_old_timespec32.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__put_old_timespec32.exit

if.end.i.i.i:                                     ; preds = %entry
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %uts, i32 8, i32 -1226833920) #11, !srcloc !153
  %asmresult.i.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.__put_old_timespec32.exit_crit_edge

if.end.i.i.i.__put_old_timespec32.exit_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__put_old_timespec32.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %ts.i, i32 noundef 8) #8
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %uts, ptr noundef nonnull %ts.i, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i12.i.i.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 0, i32 -14
  br label %__put_old_timespec32.exit

__put_old_timespec32.exit:                        ; preds = %copy_to_user.exit.i, %if.end.i.i.i.__put_old_timespec32.exit_crit_edge, %entry.__put_old_timespec32.exit_crit_edge
  %8 = phi i32 [ -14, %entry.__put_old_timespec32.exit_crit_edge ], [ -14, %if.end.i.i.i.__put_old_timespec32.exit_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ts.i) #8
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_itimerspec64(ptr nocapture noundef writeonly %it, ptr noundef %uit) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @get_timespec64(ptr noundef %it, ptr noundef %uit)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %it_value = getelementptr inbounds %struct.itimerspec64, ptr %it, i32 0, i32 1
  %it_value2 = getelementptr inbounds %struct.__kernel_itimerspec, ptr %uit, i32 0, i32 1
  %call3 = tail call i32 @get_timespec64(ptr noundef %it_value, ptr noundef %it_value2)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @put_itimerspec64(ptr nocapture noundef readonly %it, ptr noundef %uit) #0 align 64 {
entry:
  %kts.i8 = alloca %struct.__kernel_timespec, align 8
  %kts.i = alloca %struct.__kernel_timespec, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %kts.i) #8
  %0 = getelementptr inbounds %struct.__kernel_timespec, ptr %kts.i, i32 0, i32 1
  %1 = ptrtoint ptr %it to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %it, align 8
  %3 = ptrtoint ptr %kts.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %kts.i, align 8
  %tv_nsec2.i = getelementptr inbounds %struct.timespec64, ptr %it, i32 0, i32 1
  %4 = ptrtoint ptr %tv_nsec2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tv_nsec2.i, align 8
  %conv.i = sext i32 %5 to i64
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv.i, ptr %0, align 8
  tail call void @__might_fault(ptr noundef nonnull @.str.25, i32 noundef 174) #8
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i, label %entry.put_timespec64.exit.thread_crit_edge, label %if.end.i.i.i

entry.put_timespec64.exit.thread_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_timespec64.exit.thread

if.end.i.i.i:                                     ; preds = %entry
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %uit, i32 16, i32 -1226833920) #11, !srcloc !153
  %asmresult.i.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.put_timespec64.exit.thread_crit_edge

if.end.i.i.i.put_timespec64.exit.thread_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_timespec64.exit.thread

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %kts.i, i32 noundef 16) #8
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %uit, ptr noundef nonnull %kts.i, i32 noundef 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i12.i.i.i, 0
  br i1 %tobool.not.i, label %if.end, label %copy_to_user.exit.i.put_timespec64.exit.thread_crit_edge

copy_to_user.exit.i.put_timespec64.exit.thread_crit_edge: ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_timespec64.exit.thread

put_timespec64.exit.thread:                       ; preds = %copy_to_user.exit.i.put_timespec64.exit.thread_crit_edge, %if.end.i.i.i.put_timespec64.exit.thread_crit_edge, %entry.put_timespec64.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %kts.i) #8
  br label %cleanup

if.end:                                           ; preds = %copy_to_user.exit.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %kts.i) #8
  %it_value = getelementptr inbounds %struct.itimerspec64, ptr %it, i32 0, i32 1
  %it_value2 = getelementptr inbounds %struct.__kernel_itimerspec, ptr %uit, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %kts.i8) #8
  %8 = getelementptr inbounds %struct.__kernel_timespec, ptr %kts.i8, i32 0, i32 1
  %9 = ptrtoint ptr %it_value to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %it_value, align 8
  %11 = ptrtoint ptr %kts.i8 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %kts.i8, align 8
  %tv_nsec2.i9 = getelementptr inbounds %struct.itimerspec64, ptr %it, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %tv_nsec2.i9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tv_nsec2.i9, align 8
  %conv.i10 = sext i32 %13 to i64
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv.i10, ptr %8, align 8
  call void @__might_fault(ptr noundef nonnull @.str.25, i32 noundef 174) #8
  %call.i.i.i11 = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i11, label %if.end.put_timespec64.exit20_crit_edge, label %if.end.i.i.i14

if.end.put_timespec64.exit20_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_timespec64.exit20

if.end.i.i.i14:                                   ; preds = %if.end
  %15 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %it_value2, i32 16, i32 -1226833920) #11, !srcloc !153
  %asmresult.i.i.i12 = extractvalue { i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i12)
  %cmp.i6.i.i13 = icmp eq i32 %asmresult.i.i.i12, 0
  br i1 %cmp.i6.i.i13, label %copy_to_user.exit.i19, label %if.end.i.i.i14.put_timespec64.exit20_crit_edge

if.end.i.i.i14.put_timespec64.exit20_crit_edge:   ; preds = %if.end.i.i.i14
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_timespec64.exit20

copy_to_user.exit.i19:                            ; preds = %if.end.i.i.i14
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i.i15 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %kts.i8, i32 noundef 16) #8
  %call.i12.i.i.i16 = call i32 @arm_copy_to_user(ptr noundef %it_value2, ptr noundef nonnull %kts.i8, i32 noundef 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i16)
  %tobool.not.i17 = icmp eq i32 %call.i12.i.i.i16, 0
  %spec.select.i18 = select i1 %tobool.not.i17, i32 0, i32 -14
  br label %put_timespec64.exit20

put_timespec64.exit20:                            ; preds = %copy_to_user.exit.i19, %if.end.i.i.i14.put_timespec64.exit20_crit_edge, %if.end.put_timespec64.exit20_crit_edge
  %16 = phi i32 [ -14, %if.end.put_timespec64.exit20_crit_edge ], [ -14, %if.end.i.i.i14.put_timespec64.exit20_crit_edge ], [ %spec.select.i18, %copy_to_user.exit.i19 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %kts.i8) #8
  br label %cleanup

cleanup:                                          ; preds = %put_timespec64.exit20, %put_timespec64.exit.thread
  %retval.0 = phi i32 [ %16, %put_timespec64.exit20 ], [ -14, %put_timespec64.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @get_old_itimerspec32(ptr nocapture noundef writeonly %its, ptr noundef %uits) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__get_old_timespec32(ptr noundef %its, ptr noundef %uits)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %it_value = getelementptr inbounds %struct.itimerspec64, ptr %its, i32 0, i32 1
  %it_value2 = getelementptr inbounds %struct.old_itimerspec32, ptr %uits, i32 0, i32 1
  %call3 = tail call fastcc i32 @__get_old_timespec32(ptr noundef %it_value, ptr noundef %it_value2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  %spec.select = select i1 %tobool4.not, i32 0, i32 -14
  br label %return

return:                                           ; preds = %lor.lhs.false, %entry.return_crit_edge
  %retval.0 = phi i32 [ -14, %entry.return_crit_edge ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @put_old_itimerspec32(ptr nocapture noundef readonly %its, ptr noundef %uits) #0 align 64 {
entry:
  %ts.i7 = alloca %struct.old_timespec32, align 4
  %ts.i = alloca %struct.old_timespec32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ts.i) #8
  %0 = getelementptr inbounds %struct.old_timespec32, ptr %ts.i, i32 0, i32 1
  %1 = ptrtoint ptr %its to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %its, align 8
  %conv.i = trunc i64 %2 to i32
  %3 = ptrtoint ptr %ts.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv.i, ptr %ts.i, align 4
  %tv_nsec2.i = getelementptr inbounds %struct.timespec64, ptr %its, i32 0, i32 1
  %4 = ptrtoint ptr %tv_nsec2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tv_nsec2.i, align 8
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %0, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.25, i32 noundef 174) #8
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i, label %entry.__put_old_timespec32.exit.thread_crit_edge, label %if.end.i.i.i

entry.__put_old_timespec32.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__put_old_timespec32.exit.thread

if.end.i.i.i:                                     ; preds = %entry
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %uits, i32 8, i32 -1226833920) #11, !srcloc !153
  %asmresult.i.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.__put_old_timespec32.exit.thread_crit_edge

if.end.i.i.i.__put_old_timespec32.exit.thread_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__put_old_timespec32.exit.thread

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %ts.i, i32 noundef 8) #8
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %uits, ptr noundef nonnull %ts.i, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i12.i.i.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false, label %copy_to_user.exit.i.__put_old_timespec32.exit.thread_crit_edge

copy_to_user.exit.i.__put_old_timespec32.exit.thread_crit_edge: ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__put_old_timespec32.exit.thread

__put_old_timespec32.exit.thread:                 ; preds = %copy_to_user.exit.i.__put_old_timespec32.exit.thread_crit_edge, %if.end.i.i.i.__put_old_timespec32.exit.thread_crit_edge, %entry.__put_old_timespec32.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ts.i) #8
  br label %return

lor.lhs.false:                                    ; preds = %copy_to_user.exit.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ts.i) #8
  %it_value = getelementptr inbounds %struct.itimerspec64, ptr %its, i32 0, i32 1
  %it_value2 = getelementptr inbounds %struct.old_itimerspec32, ptr %uits, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ts.i7) #8
  %8 = getelementptr inbounds %struct.old_timespec32, ptr %ts.i7, i32 0, i32 1
  %9 = ptrtoint ptr %it_value to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %it_value, align 8
  %conv.i8 = trunc i64 %10 to i32
  %11 = ptrtoint ptr %ts.i7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv.i8, ptr %ts.i7, align 4
  %tv_nsec2.i9 = getelementptr inbounds %struct.itimerspec64, ptr %its, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %tv_nsec2.i9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tv_nsec2.i9, align 8
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %8, align 4
  call void @__might_fault(ptr noundef nonnull @.str.25, i32 noundef 174) #8
  %call.i.i.i10 = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i10, label %lor.lhs.false.__put_old_timespec32.exit19.thread_crit_edge, label %if.end.i.i.i13

lor.lhs.false.__put_old_timespec32.exit19.thread_crit_edge: ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %__put_old_timespec32.exit19.thread

if.end.i.i.i13:                                   ; preds = %lor.lhs.false
  %15 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %it_value2, i32 8, i32 -1226833920) #11, !srcloc !153
  %asmresult.i.i.i11 = extractvalue { i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i11)
  %cmp.i6.i.i12 = icmp eq i32 %asmresult.i.i.i11, 0
  br i1 %cmp.i6.i.i12, label %copy_to_user.exit.i18, label %if.end.i.i.i13.__put_old_timespec32.exit19.thread_crit_edge

if.end.i.i.i13.__put_old_timespec32.exit19.thread_crit_edge: ; preds = %if.end.i.i.i13
  call void @__sanitizer_cov_trace_pc() #10
  br label %__put_old_timespec32.exit19.thread

copy_to_user.exit.i18:                            ; preds = %if.end.i.i.i13
  %call.i.i.i.i14 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %ts.i7, i32 noundef 8) #8
  %call.i12.i.i.i15 = call i32 @arm_copy_to_user(ptr noundef %it_value2, ptr noundef nonnull %ts.i7, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i15)
  %tobool.not.i16 = icmp eq i32 %call.i12.i.i.i15, 0
  br i1 %tobool.not.i16, label %16, label %copy_to_user.exit.i18.__put_old_timespec32.exit19.thread_crit_edge

copy_to_user.exit.i18.__put_old_timespec32.exit19.thread_crit_edge: ; preds = %copy_to_user.exit.i18
  call void @__sanitizer_cov_trace_pc() #10
  br label %__put_old_timespec32.exit19.thread

__put_old_timespec32.exit19.thread:               ; preds = %copy_to_user.exit.i18.__put_old_timespec32.exit19.thread_crit_edge, %if.end.i.i.i13.__put_old_timespec32.exit19.thread_crit_edge, %lor.lhs.false.__put_old_timespec32.exit19.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ts.i7) #8
  br label %return

16:                                               ; preds = %copy_to_user.exit.i18
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ts.i7) #8
  br label %return

return:                                           ; preds = %16, %__put_old_timespec32.exit19.thread, %__put_old_timespec32.exit.thread
  %retval.0 = phi i32 [ -14, %__put_old_timespec32.exit.thread ], [ 0, %16 ], [ -14, %__put_old_timespec32.exit19.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_adjtimex(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !28, !29, !30, !31, !32, !34, !36, !37, !38, !39, !40, !41, !42, !43, !44, !46, !47, !48, !49, !50, !51, !52, !53, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !107, !108, !109, !110, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !125, !126, !128, !130, !131, !132, !133}
!llvm.named.register.sp = !{!134}
!llvm.module.flags = !{!135, !136, !137, !138, !139, !140, !141, !142}
!llvm.ident = !{!143}

!0 = !{ptr @__ksymtab_sys_tz, !1, !"__ksymtab_sys_tz", i1 false, i1 false}
!1 = !{!"../kernel/time/time.c", i32 52, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../kernel/time/time.c", i32 105, i32 1}
!4 = !{ptr @event_enter__time32, !3, !"event_enter__time32", i1 false, i1 false}
!5 = !{ptr @__event_enter__time32, !3, !"__event_enter__time32", i1 false, i1 false}
!6 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @event_exit__time32, !3, !"event_exit__time32", i1 false, i1 false}
!8 = !{ptr @__event_exit__time32, !3, !"__event_exit__time32", i1 false, i1 false}
!9 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__syscall_meta__time32, !3, !"__syscall_meta__time32", i1 false, i1 false}
!11 = !{ptr @__p_syscall_meta__time32, !3, !"__p_syscall_meta__time32", i1 false, i1 false}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../kernel/time/time.c", i32 119, i32 1}
!14 = !{ptr @event_enter__stime32, !13, !"event_enter__stime32", i1 false, i1 false}
!15 = !{ptr @__event_enter__stime32, !13, !"__event_enter__stime32", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @event_exit__stime32, !13, !"event_exit__stime32", i1 false, i1 false}
!18 = !{ptr @__event_exit__stime32, !13, !"__event_exit__stime32", i1 false, i1 false}
!19 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @__syscall_meta__stime32, !13, !"__syscall_meta__stime32", i1 false, i1 false}
!21 = !{ptr @__p_syscall_meta__stime32, !13, !"__p_syscall_meta__stime32", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../kernel/time/time.c", i32 140, i32 1}
!24 = !{ptr @event_enter__gettimeofday, !23, !"event_enter__gettimeofday", i1 false, i1 false}
!25 = !{ptr @__event_enter__gettimeofday, !23, !"__event_enter__gettimeofday", i1 false, i1 false}
!26 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @event_exit__gettimeofday, !23, !"event_exit__gettimeofday", i1 false, i1 false}
!28 = !{ptr @__event_exit__gettimeofday, !23, !"__event_exit__gettimeofday", i1 false, i1 false}
!29 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @__syscall_meta__gettimeofday, !23, !"__syscall_meta__gettimeofday", i1 false, i1 false}
!31 = !{ptr @__p_syscall_meta__gettimeofday, !23, !"__p_syscall_meta__gettimeofday", i1 false, i1 false}
!32 = distinct !{null, !33, !"firsttime", i1 false, i1 false}
!33 = !{!"../kernel/time/time.c", i32 171, i32 13}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../kernel/time/time.c", i32 199, i32 1}
!36 = !{ptr @event_enter__settimeofday, !35, !"event_enter__settimeofday", i1 false, i1 false}
!37 = !{ptr @__event_enter__settimeofday, !35, !"__event_enter__settimeofday", i1 false, i1 false}
!38 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @event_exit__settimeofday, !35, !"event_exit__settimeofday", i1 false, i1 false}
!40 = !{ptr @__event_exit__settimeofday, !35, !"__event_exit__settimeofday", i1 false, i1 false}
!41 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @__syscall_meta__settimeofday, !35, !"__syscall_meta__settimeofday", i1 false, i1 false}
!43 = !{ptr @__p_syscall_meta__settimeofday, !35, !"__p_syscall_meta__settimeofday", i1 false, i1 false}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../kernel/time/time.c", i32 349, i32 1}
!46 = !{ptr @event_enter__adjtimex_time32, !45, !"event_enter__adjtimex_time32", i1 false, i1 false}
!47 = !{ptr @__event_enter__adjtimex_time32, !45, !"__event_enter__adjtimex_time32", i1 false, i1 false}
!48 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @event_exit__adjtimex_time32, !45, !"event_exit__adjtimex_time32", i1 false, i1 false}
!50 = !{ptr @__event_exit__adjtimex_time32, !45, !"__event_exit__adjtimex_time32", i1 false, i1 false}
!51 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @__syscall_meta__adjtimex_time32, !45, !"__syscall_meta__adjtimex_time32", i1 false, i1 false}
!53 = !{ptr @__p_syscall_meta__adjtimex_time32, !45, !"__p_syscall_meta__adjtimex_time32", i1 false, i1 false}
!54 = !{ptr @__ksymtab_jiffies_to_msecs, !55, !"__ksymtab_jiffies_to_msecs", i1 false, i1 false}
!55 = !{!"../kernel/time/time.c", i32 389, i32 1}
!56 = !{ptr @__ksymtab_jiffies_to_usecs, !57, !"__ksymtab_jiffies_to_usecs", i1 false, i1 false}
!57 = !{!"../kernel/time/time.c", i32 409, i32 1}
!58 = !{ptr @__ksymtab_mktime64, !59, !"__ksymtab_mktime64", i1 false, i1 false}
!59 = !{!"../kernel/time/time.c", i32 450, i32 1}
!60 = !{ptr @__ksymtab_ns_to_kernel_old_timeval, !61, !"__ksymtab_ns_to_kernel_old_timeval", i1 false, i1 false}
!61 = !{!"../kernel/time/time.c", i32 462, i32 1}
!62 = !{ptr @__ksymtab_set_normalized_timespec64, !63, !"__ksymtab_set_normalized_timespec64", i1 false, i1 false}
!63 = !{!"../kernel/time/time.c", i32 498, i32 1}
!64 = !{ptr @__ksymtab_ns_to_timespec64, !65, !"__ksymtab_ns_to_timespec64", i1 false, i1 false}
!65 = !{!"../kernel/time/time.c", i32 526, i32 1}
!66 = !{ptr @__ksymtab___msecs_to_jiffies, !67, !"__ksymtab___msecs_to_jiffies", i1 false, i1 false}
!67 = !{!"../kernel/time/time.c", i32 561, i32 1}
!68 = !{ptr @__ksymtab___usecs_to_jiffies, !69, !"__ksymtab___usecs_to_jiffies", i1 false, i1 false}
!69 = !{!"../kernel/time/time.c", i32 569, i32 1}
!70 = !{ptr @__ksymtab_timespec64_to_jiffies, !71, !"__ksymtab_timespec64_to_jiffies", i1 false, i1 false}
!71 = !{!"../kernel/time/time.c", i32 602, i32 1}
!72 = !{ptr @__ksymtab_jiffies_to_timespec64, !73, !"__ksymtab_jiffies_to_timespec64", i1 false, i1 false}
!73 = !{!"../kernel/time/time.c", i32 616, i32 1}
!74 = !{ptr @__ksymtab_jiffies_to_clock_t, !75, !"__ksymtab_jiffies_to_clock_t", i1 false, i1 false}
!75 = !{!"../kernel/time/time.c", i32 633, i32 1}
!76 = !{ptr @__ksymtab_clock_t_to_jiffies, !77, !"__ksymtab_clock_t_to_jiffies", i1 false, i1 false}
!77 = !{!"../kernel/time/time.c", i32 650, i32 1}
!78 = !{ptr @__ksymtab_jiffies_64_to_clock_t, !79, !"__ksymtab_jiffies_64_to_clock_t", i1 false, i1 false}
!79 = !{!"../kernel/time/time.c", i32 672, i32 1}
!80 = !{ptr @__ksymtab_jiffies64_to_nsecs, !81, !"__ksymtab_jiffies64_to_nsecs", i1 false, i1 false}
!81 = !{!"../kernel/time/time.c", i32 698, i32 1}
!82 = !{ptr @__ksymtab_jiffies64_to_msecs, !83, !"__ksymtab_jiffies64_to_msecs", i1 false, i1 false}
!83 = !{!"../kernel/time/time.c", i32 708, i32 1}
!84 = !{ptr @__ksymtab_nsecs_to_jiffies64, !85, !"__ksymtab_nsecs_to_jiffies64", i1 false, i1 false}
!85 = !{!"../kernel/time/time.c", i32 739, i32 1}
!86 = !{ptr @__ksymtab_nsecs_to_jiffies, !87, !"__ksymtab_nsecs_to_jiffies", i1 false, i1 false}
!87 = !{!"../kernel/time/time.c", i32 758, i32 1}
!88 = !{ptr @__ksymtab_get_timespec64, !89, !"__ksymtab_get_timespec64", i1 false, i1 false}
!89 = !{!"../kernel/time/time.c", i32 802, i32 1}
!90 = !{ptr @__ksymtab_put_timespec64, !91, !"__ksymtab_put_timespec64", i1 false, i1 false}
!91 = !{!"../kernel/time/time.c", i32 814, i32 1}
!92 = !{ptr @__ksymtab_get_old_timespec32, !93, !"__ksymtab_get_old_timespec32", i1 false, i1 false}
!93 = !{!"../kernel/time/time.c", i32 849, i32 1}
!94 = !{ptr @__ksymtab_put_old_timespec32, !95, !"__ksymtab_put_old_timespec32", i1 false, i1 false}
!95 = !{!"../kernel/time/time.c", i32 858, i32 1}
!96 = !{ptr @__ksymtab_get_itimerspec64, !97, !"__ksymtab_get_itimerspec64", i1 false, i1 false}
!97 = !{!"../kernel/time/time.c", i32 873, i32 1}
!98 = !{ptr @__ksymtab_put_itimerspec64, !99, !"__ksymtab_put_itimerspec64", i1 false, i1 false}
!99 = !{!"../kernel/time/time.c", i32 888, i32 1}
!100 = !{ptr @__ksymtab_get_old_itimerspec32, !101, !"__ksymtab_get_old_itimerspec32", i1 false, i1 false}
!101 = !{!"../kernel/time/time.c", i32 899, i32 1}
!102 = !{ptr @__ksymtab_put_old_itimerspec32, !103, !"__ksymtab_put_old_itimerspec32", i1 false, i1 false}
!103 = !{!"../kernel/time/time.c", i32 909, i32 1}
!104 = !{ptr @sys_tz, !105, !"sys_tz", i1 false, i1 false}
!105 = !{!"../kernel/time/time.c", i32 50, i32 17}
!106 = !{ptr @.str.15, !3, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @types__time32, !3, !"types__time32", i1 false, i1 false}
!108 = !{ptr @.str.16, !3, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @args__time32, !3, !"args__time32", i1 false, i1 false}
!110 = !{ptr @.str.17, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../kernel/time/time.c", i32 112, i32 7}
!112 = !{ptr @types__stime32, !13, !"types__stime32", i1 false, i1 false}
!113 = !{ptr @.str.18, !13, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @args__stime32, !13, !"args__stime32", i1 false, i1 false}
!115 = !{ptr @.str.19, !23, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.20, !23, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @types__gettimeofday, !23, !"types__gettimeofday", i1 false, i1 false}
!118 = !{ptr @.str.21, !23, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.22, !23, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @args__gettimeofday, !23, !"args__gettimeofday", i1 false, i1 false}
!121 = !{ptr @types__settimeofday, !35, !"types__settimeofday", i1 false, i1 false}
!122 = !{ptr @args__settimeofday, !35, !"args__settimeofday", i1 false, i1 false}
!123 = distinct !{null, !124, !"__already_done", i1 false, i1 false}
!124 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!125 = distinct !{null, !124, !"<string literal>", i1 false, i1 false}
!126 = distinct !{null, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!128 = !{ptr @.str.25, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!130 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @types__adjtimex_time32, !45, !"types__adjtimex_time32", i1 false, i1 false}
!132 = !{ptr @.str.27, !45, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @args__adjtimex_time32, !45, !"args__adjtimex_time32", i1 false, i1 false}
!134 = !{!"sp"}
!135 = !{i32 1, !"wchar_size", i32 2}
!136 = !{i32 1, !"min_enum_size", i32 4}
!137 = !{i32 8, !"branch-target-enforcement", i32 0}
!138 = !{i32 8, !"sign-return-address", i32 0}
!139 = !{i32 8, !"sign-return-address-all", i32 0}
!140 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!141 = !{i32 7, !"uwtable", i32 1}
!142 = !{i32 7, !"frame-pointer", i32 2}
!143 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!144 = !{i64 5039758}
!145 = !{i64 5039955}
!146 = !{i64 2152525188}
!147 = !{i64 2155142810, i64 2155143090, i64 2155143424, i64 2155143758}
!148 = !{i64 2155161223, i64 2155161503, i64 2155161837, i64 2155162171}
!149 = !{!"branch_weights", i32 1, i32 2000}
!150 = !{i64 2155185141, i64 2155185421, i64 2155185755, i64 2155186089}
!151 = !{i64 2155193980, i64 2155194260, i64 2155194594, i64 2155194928}
!152 = !{!"branch_weights", i32 2000, i32 1}
!153 = !{i64 2152544884, i64 2152544909}
!154 = !{!"auto-init"}
!155 = !{i64 2155221485, i64 2155221765, i64 2155222099, i64 2155222433}
!156 = !{i64 2155235032, i64 2155235312, i64 2155235646, i64 2155235980}
!157 = !{i64 2152544203, i64 2152544228}
!158 = !{i64 1136147, i64 1136174, i64 1136196, i64 1136224}
!159 = !{i64 1136555, i64 1136582, i64 1136615, i64 1136636, i64 1136663, i64 1136689}
!160 = !{i64 12534}
!161 = !{i64 12615}
!162 = !{i64 1135860, i64 1135887}
