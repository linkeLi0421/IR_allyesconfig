; ModuleID = '/llk/IR_all_yes/kernel/time/timer.c_pt.bc'
source_filename = "../kernel/time/timer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+jiffies_64\22, \22a\22\09"
module asm "\09.weak\09__crc_jiffies_64\09\09\09\09"
module asm "\09.long\09__crc_jiffies_64\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_jiffies_64:\09\09\09\09\09"
module asm "\09.asciz \09\22jiffies_64\22\09\09\09\09\09"
module asm "__kstrtabns_jiffies_64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__round_jiffies\22, \22a\22\09"
module asm "\09.weak\09__crc___round_jiffies\09\09\09\09"
module asm "\09.long\09__crc___round_jiffies\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___round_jiffies:\09\09\09\09\09"
module asm "\09.asciz \09\22__round_jiffies\22\09\09\09\09\09"
module asm "__kstrtabns___round_jiffies:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__round_jiffies_relative\22, \22a\22\09"
module asm "\09.weak\09__crc___round_jiffies_relative\09\09\09\09"
module asm "\09.long\09__crc___round_jiffies_relative\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___round_jiffies_relative:\09\09\09\09\09"
module asm "\09.asciz \09\22__round_jiffies_relative\22\09\09\09\09\09"
module asm "__kstrtabns___round_jiffies_relative:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+round_jiffies\22, \22a\22\09"
module asm "\09.weak\09__crc_round_jiffies\09\09\09\09"
module asm "\09.long\09__crc_round_jiffies\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_round_jiffies:\09\09\09\09\09"
module asm "\09.asciz \09\22round_jiffies\22\09\09\09\09\09"
module asm "__kstrtabns_round_jiffies:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+round_jiffies_relative\22, \22a\22\09"
module asm "\09.weak\09__crc_round_jiffies_relative\09\09\09\09"
module asm "\09.long\09__crc_round_jiffies_relative\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_round_jiffies_relative:\09\09\09\09\09"
module asm "\09.asciz \09\22round_jiffies_relative\22\09\09\09\09\09"
module asm "__kstrtabns_round_jiffies_relative:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__round_jiffies_up\22, \22a\22\09"
module asm "\09.weak\09__crc___round_jiffies_up\09\09\09\09"
module asm "\09.long\09__crc___round_jiffies_up\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___round_jiffies_up:\09\09\09\09\09"
module asm "\09.asciz \09\22__round_jiffies_up\22\09\09\09\09\09"
module asm "__kstrtabns___round_jiffies_up:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__round_jiffies_up_relative\22, \22a\22\09"
module asm "\09.weak\09__crc___round_jiffies_up_relative\09\09\09\09"
module asm "\09.long\09__crc___round_jiffies_up_relative\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___round_jiffies_up_relative:\09\09\09\09\09"
module asm "\09.asciz \09\22__round_jiffies_up_relative\22\09\09\09\09\09"
module asm "__kstrtabns___round_jiffies_up_relative:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+round_jiffies_up\22, \22a\22\09"
module asm "\09.weak\09__crc_round_jiffies_up\09\09\09\09"
module asm "\09.long\09__crc_round_jiffies_up\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_round_jiffies_up:\09\09\09\09\09"
module asm "\09.asciz \09\22round_jiffies_up\22\09\09\09\09\09"
module asm "__kstrtabns_round_jiffies_up:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+round_jiffies_up_relative\22, \22a\22\09"
module asm "\09.weak\09__crc_round_jiffies_up_relative\09\09\09\09"
module asm "\09.long\09__crc_round_jiffies_up_relative\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_round_jiffies_up_relative:\09\09\09\09\09"
module asm "\09.asciz \09\22round_jiffies_up_relative\22\09\09\09\09\09"
module asm "__kstrtabns_round_jiffies_up_relative:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+init_timer_on_stack_key\22, \22a\22\09"
module asm "\09.weak\09__crc_init_timer_on_stack_key\09\09\09\09"
module asm "\09.long\09__crc_init_timer_on_stack_key\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_init_timer_on_stack_key:\09\09\09\09\09"
module asm "\09.asciz \09\22init_timer_on_stack_key\22\09\09\09\09\09"
module asm "__kstrtabns_init_timer_on_stack_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+destroy_timer_on_stack\22, \22a\22\09"
module asm "\09.weak\09__crc_destroy_timer_on_stack\09\09\09\09"
module asm "\09.long\09__crc_destroy_timer_on_stack\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_destroy_timer_on_stack:\09\09\09\09\09"
module asm "\09.asciz \09\22destroy_timer_on_stack\22\09\09\09\09\09"
module asm "__kstrtabns_destroy_timer_on_stack:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+init_timer_key\22, \22a\22\09"
module asm "\09.weak\09__crc_init_timer_key\09\09\09\09"
module asm "\09.long\09__crc_init_timer_key\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_init_timer_key:\09\09\09\09\09"
module asm "\09.asciz \09\22init_timer_key\22\09\09\09\09\09"
module asm "__kstrtabns_init_timer_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mod_timer_pending\22, \22a\22\09"
module asm "\09.weak\09__crc_mod_timer_pending\09\09\09\09"
module asm "\09.long\09__crc_mod_timer_pending\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mod_timer_pending:\09\09\09\09\09"
module asm "\09.asciz \09\22mod_timer_pending\22\09\09\09\09\09"
module asm "__kstrtabns_mod_timer_pending:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mod_timer\22, \22a\22\09"
module asm "\09.weak\09__crc_mod_timer\09\09\09\09"
module asm "\09.long\09__crc_mod_timer\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mod_timer:\09\09\09\09\09"
module asm "\09.asciz \09\22mod_timer\22\09\09\09\09\09"
module asm "__kstrtabns_mod_timer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+timer_reduce\22, \22a\22\09"
module asm "\09.weak\09__crc_timer_reduce\09\09\09\09"
module asm "\09.long\09__crc_timer_reduce\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_timer_reduce:\09\09\09\09\09"
module asm "\09.asciz \09\22timer_reduce\22\09\09\09\09\09"
module asm "__kstrtabns_timer_reduce:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+add_timer\22, \22a\22\09"
module asm "\09.weak\09__crc_add_timer\09\09\09\09"
module asm "\09.long\09__crc_add_timer\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_add_timer:\09\09\09\09\09"
module asm "\09.asciz \09\22add_timer\22\09\09\09\09\09"
module asm "__kstrtabns_add_timer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+add_timer_on\22, \22a\22\09"
module asm "\09.weak\09__crc_add_timer_on\09\09\09\09"
module asm "\09.long\09__crc_add_timer_on\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_add_timer_on:\09\09\09\09\09"
module asm "\09.asciz \09\22add_timer_on\22\09\09\09\09\09"
module asm "__kstrtabns_add_timer_on:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+del_timer\22, \22a\22\09"
module asm "\09.weak\09__crc_del_timer\09\09\09\09"
module asm "\09.long\09__crc_del_timer\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_del_timer:\09\09\09\09\09"
module asm "\09.asciz \09\22del_timer\22\09\09\09\09\09"
module asm "__kstrtabns_del_timer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+try_to_del_timer_sync\22, \22a\22\09"
module asm "\09.weak\09__crc_try_to_del_timer_sync\09\09\09\09"
module asm "\09.long\09__crc_try_to_del_timer_sync\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_try_to_del_timer_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22try_to_del_timer_sync\22\09\09\09\09\09"
module asm "__kstrtabns_try_to_del_timer_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+del_timer_sync\22, \22a\22\09"
module asm "\09.weak\09__crc_del_timer_sync\09\09\09\09"
module asm "\09.long\09__crc_del_timer_sync\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_del_timer_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22del_timer_sync\22\09\09\09\09\09"
module asm "__kstrtabns_del_timer_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+schedule_timeout\22, \22a\22\09"
module asm "\09.weak\09__crc_schedule_timeout\09\09\09\09"
module asm "\09.long\09__crc_schedule_timeout\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_schedule_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22schedule_timeout\22\09\09\09\09\09"
module asm "__kstrtabns_schedule_timeout:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+schedule_timeout_interruptible\22, \22a\22\09"
module asm "\09.weak\09__crc_schedule_timeout_interruptible\09\09\09\09"
module asm "\09.long\09__crc_schedule_timeout_interruptible\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_schedule_timeout_interruptible:\09\09\09\09\09"
module asm "\09.asciz \09\22schedule_timeout_interruptible\22\09\09\09\09\09"
module asm "__kstrtabns_schedule_timeout_interruptible:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+schedule_timeout_killable\22, \22a\22\09"
module asm "\09.weak\09__crc_schedule_timeout_killable\09\09\09\09"
module asm "\09.long\09__crc_schedule_timeout_killable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_schedule_timeout_killable:\09\09\09\09\09"
module asm "\09.asciz \09\22schedule_timeout_killable\22\09\09\09\09\09"
module asm "__kstrtabns_schedule_timeout_killable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+schedule_timeout_uninterruptible\22, \22a\22\09"
module asm "\09.weak\09__crc_schedule_timeout_uninterruptible\09\09\09\09"
module asm "\09.long\09__crc_schedule_timeout_uninterruptible\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_schedule_timeout_uninterruptible:\09\09\09\09\09"
module asm "\09.asciz \09\22schedule_timeout_uninterruptible\22\09\09\09\09\09"
module asm "__kstrtabns_schedule_timeout_uninterruptible:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+schedule_timeout_idle\22, \22a\22\09"
module asm "\09.weak\09__crc_schedule_timeout_idle\09\09\09\09"
module asm "\09.long\09__crc_schedule_timeout_idle\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_schedule_timeout_idle:\09\09\09\09\09"
module asm "\09.asciz \09\22schedule_timeout_idle\22\09\09\09\09\09"
module asm "__kstrtabns_schedule_timeout_idle:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+msleep\22, \22a\22\09"
module asm "\09.weak\09__crc_msleep\09\09\09\09"
module asm "\09.long\09__crc_msleep\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_msleep:\09\09\09\09\09"
module asm "\09.asciz \09\22msleep\22\09\09\09\09\09"
module asm "__kstrtabns_msleep:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+msleep_interruptible\22, \22a\22\09"
module asm "\09.weak\09__crc_msleep_interruptible\09\09\09\09"
module asm "\09.long\09__crc_msleep_interruptible\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_msleep_interruptible:\09\09\09\09\09"
module asm "\09.asciz \09\22msleep_interruptible\22\09\09\09\09\09"
module asm "__kstrtabns_msleep_interruptible:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+usleep_range_state\22, \22a\22\09"
module asm "\09.weak\09__crc_usleep_range_state\09\09\09\09"
module asm "\09.long\09__crc_usleep_range_state\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usleep_range_state:\09\09\09\09\09"
module asm "\09.asciz \09\22usleep_range_state\22\09\09\09\09\09"
module asm "__kstrtabns_usleep_range_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_eval_map = type { ptr, ptr, i32 }
%struct.trace_event_fields = type { ptr, %union.anon.19 }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.21, %struct.trace_event, ptr, ptr, %union.anon.22, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.21 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.22 = type { ptr }
%union.anon.108 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.109 = type { %struct.bpf_raw_event_map }
%union.anon.110 = type { %struct.bpf_raw_event_map }
%union.anon.111 = type { %struct.bpf_raw_event_map }
%union.anon.112 = type { %struct.bpf_raw_event_map }
%union.anon.113 = type { %struct.bpf_raw_event_map }
%union.anon.114 = type { %struct.bpf_raw_event_map }
%union.anon.115 = type { %struct.bpf_raw_event_map }
%union.anon.116 = type { %struct.bpf_raw_event_map }
%union.anon.117 = type { %struct.bpf_raw_event_map }
%union.anon.118 = type { %struct.bpf_raw_event_map }
%union.anon.119 = type { %struct.bpf_raw_event_map }
%union.anon.120 = type { %struct.bpf_raw_event_map }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.debug_obj_descr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.timer_base = type { %struct.raw_spinlock, ptr, i32, i32, i32, i8, i8, i8, [16 x i32], [512 x %struct.hlist_head] }
%struct.hlist_head = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.trace_print_flags = type { i32, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_timer_class = type { %struct.trace_entry, ptr, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_timer_start = type { %struct.trace_entry, ptr, ptr, i32, i32, i32, [0 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.trace_event_raw_timer_expire_entry = type { %struct.trace_entry, ptr, i32, ptr, i32, [0 x i8] }
%struct.trace_event_raw_hrtimer_init = type { %struct.trace_entry, ptr, i32, i32, [0 x i8] }
%struct.trace_event_raw_hrtimer_start = type { %struct.trace_entry, ptr, ptr, i64, i64, i32, [0 x i8] }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.trace_event_raw_hrtimer_expire_entry = type { %struct.trace_entry, ptr, i64, ptr, [0 x i8] }
%struct.trace_event_raw_hrtimer_class = type { %struct.trace_entry, ptr, [0 x i8] }
%struct.trace_event_raw_itimer_state = type { %struct.trace_entry, i32, i64, i32, i32, i32, i32, [0 x i8] }
%struct.itimerspec64 = type { %struct.timespec64, %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.trace_event_raw_itimer_expire = type { %struct.trace_entry, i32, i32, i64, [0 x i8] }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.upid = type { i32, ptr }
%struct.trace_event_raw_tick_stop = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.process_timer = type { %struct.timer_list, ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.96, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.3 }
%struct.llist_node = type { ptr }
%union.anon.3 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.74 }
%union.anon.74 = type { %struct.anon.75 }
%struct.anon.75 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.96 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_timer_init = internal constant [11 x i8] c"timer_init\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_timer_init = dso_local global %struct.static_call_key { ptr @__traceiter_timer_init }, align 4
@__tracepoint_timer_init = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_timer_init, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_timer_init, ptr null, ptr @__traceiter_timer_init, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_timer_init = internal constant ptr @__tracepoint_timer_init, section "__tracepoints_ptrs", align 4
@__tpstrtab_timer_start = internal constant [12 x i8] c"timer_start\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_timer_start = dso_local global %struct.static_call_key { ptr @__traceiter_timer_start }, align 4
@__tracepoint_timer_start = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_timer_start, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_timer_start, ptr null, ptr @__traceiter_timer_start, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_timer_start = internal constant ptr @__tracepoint_timer_start, section "__tracepoints_ptrs", align 4
@__tpstrtab_timer_expire_entry = internal constant [19 x i8] c"timer_expire_entry\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_timer_expire_entry = dso_local global %struct.static_call_key { ptr @__traceiter_timer_expire_entry }, align 4
@__tracepoint_timer_expire_entry = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_timer_expire_entry, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_timer_expire_entry, ptr null, ptr @__traceiter_timer_expire_entry, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_timer_expire_entry = internal constant ptr @__tracepoint_timer_expire_entry, section "__tracepoints_ptrs", align 4
@__tpstrtab_timer_expire_exit = internal constant [18 x i8] c"timer_expire_exit\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_timer_expire_exit = dso_local global %struct.static_call_key { ptr @__traceiter_timer_expire_exit }, align 4
@__tracepoint_timer_expire_exit = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_timer_expire_exit, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_timer_expire_exit, ptr null, ptr @__traceiter_timer_expire_exit, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_timer_expire_exit = internal constant ptr @__tracepoint_timer_expire_exit, section "__tracepoints_ptrs", align 4
@__tpstrtab_timer_cancel = internal constant [13 x i8] c"timer_cancel\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_timer_cancel = dso_local global %struct.static_call_key { ptr @__traceiter_timer_cancel }, align 4
@__tracepoint_timer_cancel = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_timer_cancel, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_timer_cancel, ptr null, ptr @__traceiter_timer_cancel, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_timer_cancel = internal constant ptr @__tracepoint_timer_cancel, section "__tracepoints_ptrs", align 4
@__tpstrtab_hrtimer_init = internal constant [13 x i8] c"hrtimer_init\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_hrtimer_init = dso_local global %struct.static_call_key { ptr @__traceiter_hrtimer_init }, align 4
@__tracepoint_hrtimer_init = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_hrtimer_init, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_hrtimer_init, ptr null, ptr @__traceiter_hrtimer_init, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_hrtimer_init = internal constant ptr @__tracepoint_hrtimer_init, section "__tracepoints_ptrs", align 4
@__tpstrtab_hrtimer_start = internal constant [14 x i8] c"hrtimer_start\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_hrtimer_start = dso_local global %struct.static_call_key { ptr @__traceiter_hrtimer_start }, align 4
@__tracepoint_hrtimer_start = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_hrtimer_start, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_hrtimer_start, ptr null, ptr @__traceiter_hrtimer_start, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_hrtimer_start = internal constant ptr @__tracepoint_hrtimer_start, section "__tracepoints_ptrs", align 4
@__tpstrtab_hrtimer_expire_entry = internal constant [21 x i8] c"hrtimer_expire_entry\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_hrtimer_expire_entry = dso_local global %struct.static_call_key { ptr @__traceiter_hrtimer_expire_entry }, align 4
@__tracepoint_hrtimer_expire_entry = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_hrtimer_expire_entry, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_hrtimer_expire_entry, ptr null, ptr @__traceiter_hrtimer_expire_entry, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_hrtimer_expire_entry = internal constant ptr @__tracepoint_hrtimer_expire_entry, section "__tracepoints_ptrs", align 4
@__tpstrtab_hrtimer_expire_exit = internal constant [20 x i8] c"hrtimer_expire_exit\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_hrtimer_expire_exit = dso_local global %struct.static_call_key { ptr @__traceiter_hrtimer_expire_exit }, align 4
@__tracepoint_hrtimer_expire_exit = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_hrtimer_expire_exit, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_hrtimer_expire_exit, ptr null, ptr @__traceiter_hrtimer_expire_exit, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_hrtimer_expire_exit = internal constant ptr @__tracepoint_hrtimer_expire_exit, section "__tracepoints_ptrs", align 4
@__tpstrtab_hrtimer_cancel = internal constant [15 x i8] c"hrtimer_cancel\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_hrtimer_cancel = dso_local global %struct.static_call_key { ptr @__traceiter_hrtimer_cancel }, align 4
@__tracepoint_hrtimer_cancel = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_hrtimer_cancel, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_hrtimer_cancel, ptr null, ptr @__traceiter_hrtimer_cancel, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_hrtimer_cancel = internal constant ptr @__tracepoint_hrtimer_cancel, section "__tracepoints_ptrs", align 4
@__tpstrtab_itimer_state = internal constant [13 x i8] c"itimer_state\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_itimer_state = dso_local global %struct.static_call_key { ptr @__traceiter_itimer_state }, align 4
@__tracepoint_itimer_state = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_itimer_state, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_itimer_state, ptr null, ptr @__traceiter_itimer_state, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_itimer_state = internal constant ptr @__tracepoint_itimer_state, section "__tracepoints_ptrs", align 4
@__tpstrtab_itimer_expire = internal constant [14 x i8] c"itimer_expire\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_itimer_expire = dso_local global %struct.static_call_key { ptr @__traceiter_itimer_expire }, align 4
@__tracepoint_itimer_expire = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_itimer_expire, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_itimer_expire, ptr null, ptr @__traceiter_itimer_expire, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_itimer_expire = internal constant ptr @__tracepoint_itimer_expire, section "__tracepoints_ptrs", align 4
@__tpstrtab_tick_stop = internal constant [10 x i8] c"tick_stop\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_tick_stop = dso_local global %struct.static_call_key { ptr @__traceiter_tick_stop }, align 4
@__tracepoint_tick_stop = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_tick_stop, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_tick_stop, ptr null, ptr @__traceiter_tick_stop, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_tick_stop = internal constant ptr @__tracepoint_tick_stop, section "__tracepoints_ptrs", align 4
@str__timer__trace_system_name = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"timer\00", [26 x i8] zeroinitializer }, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TICK_DEP_MASK_NONE\00", [45 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_TICK_DEP_MASK_NONE = internal global %struct.trace_eval_map { ptr @str__timer__trace_system_name, ptr @.str, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_TICK_DEP_MASK_NONE = internal global ptr @__TRACE_SYSTEM_TICK_DEP_MASK_NONE, section "_ftrace_eval_map", align 4
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"TICK_DEP_BIT_POSIX_TIMER\00", [39 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_TICK_DEP_BIT_POSIX_TIMER = internal global %struct.trace_eval_map { ptr @str__timer__trace_system_name, ptr @.str.1, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_TICK_DEP_BIT_POSIX_TIMER = internal global ptr @__TRACE_SYSTEM_TICK_DEP_BIT_POSIX_TIMER, section "_ftrace_eval_map", align 4
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"TICK_DEP_MASK_POSIX_TIMER\00", [38 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_TICK_DEP_MASK_POSIX_TIMER = internal global %struct.trace_eval_map { ptr @str__timer__trace_system_name, ptr @.str.2, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_TICK_DEP_MASK_POSIX_TIMER = internal global ptr @__TRACE_SYSTEM_TICK_DEP_MASK_POSIX_TIMER, section "_ftrace_eval_map", align 4
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"TICK_DEP_BIT_PERF_EVENTS\00", [39 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_TICK_DEP_BIT_PERF_EVENTS = internal global %struct.trace_eval_map { ptr @str__timer__trace_system_name, ptr @.str.3, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_TICK_DEP_BIT_PERF_EVENTS = internal global ptr @__TRACE_SYSTEM_TICK_DEP_BIT_PERF_EVENTS, section "_ftrace_eval_map", align 4
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"TICK_DEP_MASK_PERF_EVENTS\00", [38 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_TICK_DEP_MASK_PERF_EVENTS = internal global %struct.trace_eval_map { ptr @str__timer__trace_system_name, ptr @.str.4, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_TICK_DEP_MASK_PERF_EVENTS = internal global ptr @__TRACE_SYSTEM_TICK_DEP_MASK_PERF_EVENTS, section "_ftrace_eval_map", align 4
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TICK_DEP_BIT_SCHED\00", [45 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_TICK_DEP_BIT_SCHED = internal global %struct.trace_eval_map { ptr @str__timer__trace_system_name, ptr @.str.5, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_TICK_DEP_BIT_SCHED = internal global ptr @__TRACE_SYSTEM_TICK_DEP_BIT_SCHED, section "_ftrace_eval_map", align 4
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TICK_DEP_MASK_SCHED\00", [44 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_TICK_DEP_MASK_SCHED = internal global %struct.trace_eval_map { ptr @str__timer__trace_system_name, ptr @.str.6, i32 4 }, section ".init.data", align 4
@TRACE_SYSTEM_TICK_DEP_MASK_SCHED = internal global ptr @__TRACE_SYSTEM_TICK_DEP_MASK_SCHED, section "_ftrace_eval_map", align 4
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"TICK_DEP_BIT_CLOCK_UNSTABLE\00", [36 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_TICK_DEP_BIT_CLOCK_UNSTABLE = internal global %struct.trace_eval_map { ptr @str__timer__trace_system_name, ptr @.str.7, i32 3 }, section ".init.data", align 4
@TRACE_SYSTEM_TICK_DEP_BIT_CLOCK_UNSTABLE = internal global ptr @__TRACE_SYSTEM_TICK_DEP_BIT_CLOCK_UNSTABLE, section "_ftrace_eval_map", align 4
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"TICK_DEP_MASK_CLOCK_UNSTABLE\00", [35 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_TICK_DEP_MASK_CLOCK_UNSTABLE = internal global %struct.trace_eval_map { ptr @str__timer__trace_system_name, ptr @.str.8, i32 8 }, section ".init.data", align 4
@TRACE_SYSTEM_TICK_DEP_MASK_CLOCK_UNSTABLE = internal global ptr @__TRACE_SYSTEM_TICK_DEP_MASK_CLOCK_UNSTABLE, section "_ftrace_eval_map", align 4
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TICK_DEP_BIT_RCU\00", [47 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_TICK_DEP_BIT_RCU = internal global %struct.trace_eval_map { ptr @str__timer__trace_system_name, ptr @.str.9, i32 4 }, section ".init.data", align 4
@TRACE_SYSTEM_TICK_DEP_BIT_RCU = internal global ptr @__TRACE_SYSTEM_TICK_DEP_BIT_RCU, section "_ftrace_eval_map", align 4
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TICK_DEP_MASK_RCU\00", [46 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_TICK_DEP_MASK_RCU = internal global %struct.trace_eval_map { ptr @str__timer__trace_system_name, ptr @.str.10, i32 16 }, section ".init.data", align 4
@TRACE_SYSTEM_TICK_DEP_MASK_RCU = internal global ptr @__TRACE_SYSTEM_TICK_DEP_MASK_RCU, section "_ftrace_eval_map", align 4
@trace_event_fields_timer_class = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.15, %union.anon.19 { %struct.anon.20 { ptr @.str.16, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_timer_class = internal global %struct.trace_event_class { ptr @str__timer__trace_system_name, ptr @trace_event_raw_event_timer_class, ptr @perf_trace_timer_class, ptr @trace_event_reg, ptr @trace_event_fields_timer_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_timer_class, i64 24), ptr getelementptr (i8, ptr @event_class_timer_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_timer_class = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_timer_class, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_timer_class = internal global { [23 x i8], [41 x i8] } { [23 x i8] c"\22timer=%p\22, REC->timer\00", [41 x i8] zeroinitializer }, align 32
@event_timer_init = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_timer_class, %union.anon.21 { ptr @__tracepoint_timer_init }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_timer_class }, ptr @print_fmt_timer_class, ptr null, %union.anon.22 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_timer_init = internal global ptr @event_timer_init, section "_ftrace_events", align 4
@trace_event_fields_timer_start = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.15, %union.anon.19 { %struct.anon.20 { ptr @.str.16, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.19 { %struct.anon.20 { ptr @.str.18, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.19, %union.anon.19 { %struct.anon.20 { ptr @.str.20, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.19, %union.anon.19 { %struct.anon.20 { ptr @.str.21, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.22, %union.anon.19 { %struct.anon.20 { ptr @.str.23, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_timer_start = internal global %struct.trace_event_class { ptr @str__timer__trace_system_name, ptr @trace_event_raw_event_timer_start, ptr @perf_trace_timer_start, ptr @trace_event_reg, ptr @trace_event_fields_timer_start, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_timer_start, i64 24), ptr getelementptr (i8, ptr @event_class_timer_start, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_timer_start = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_timer_start, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_timer_start = internal global { [358 x i8], [90 x i8] } { [358 x i8] c"\22timer=%p function=%ps expires=%lu [timeout=%ld] cpu=%u idx=%u flags=%s\22, REC->timer, REC->function, REC->expires, (long)REC->expires - REC->now, REC->flags & 0x0003FFFF, REC->flags >> 22, __print_flags(REC->flags & (0x00040000 | 0x00080000 | 0x00100000 | 0x00200000), \22|\22, { 0x00040000, \22M\22 }, { 0x00080000, \22D\22 }, { 0x00100000, \22P\22 }, { 0x00200000, \22I\22 })\00", [90 x i8] zeroinitializer }, align 32
@event_timer_start = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_timer_start, %union.anon.21 { ptr @__tracepoint_timer_start }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_timer_start }, ptr @print_fmt_timer_start, ptr null, %union.anon.22 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_timer_start = internal global ptr @event_timer_start, section "_ftrace_events", align 4
@trace_event_fields_timer_expire_entry = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.15, %union.anon.19 { %struct.anon.20 { ptr @.str.16, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.19, %union.anon.19 { %struct.anon.20 { ptr @.str.21, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.19 { %struct.anon.20 { ptr @.str.18, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.19, %union.anon.19 { %struct.anon.20 { ptr @.str.30, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_timer_expire_entry = internal global %struct.trace_event_class { ptr @str__timer__trace_system_name, ptr @trace_event_raw_event_timer_expire_entry, ptr @perf_trace_timer_expire_entry, ptr @trace_event_reg, ptr @trace_event_fields_timer_expire_entry, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_timer_expire_entry, i64 24), ptr getelementptr (i8, ptr @event_class_timer_expire_entry, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_timer_expire_entry = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_timer_expire_entry, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_timer_expire_entry = internal global { [95 x i8], [33 x i8] } { [95 x i8] c"\22timer=%p function=%ps now=%lu baseclk=%lu\22, REC->timer, REC->function, REC->now, REC->baseclk\00", [33 x i8] zeroinitializer }, align 32
@event_timer_expire_entry = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_timer_expire_entry, %union.anon.21 { ptr @__tracepoint_timer_expire_entry }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_timer_expire_entry }, ptr @print_fmt_timer_expire_entry, ptr null, %union.anon.22 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_timer_expire_entry = internal global ptr @event_timer_expire_entry, section "_ftrace_events", align 4
@event_timer_expire_exit = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_timer_class, %union.anon.21 { ptr @__tracepoint_timer_expire_exit }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_timer_class }, ptr @print_fmt_timer_class, ptr null, %union.anon.22 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_timer_expire_exit = internal global ptr @event_timer_expire_exit, section "_ftrace_events", align 4
@event_timer_cancel = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_timer_class, %union.anon.21 { ptr @__tracepoint_timer_cancel }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_timer_class }, ptr @print_fmt_timer_class, ptr null, %union.anon.22 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_timer_cancel = internal global ptr @event_timer_cancel, section "_ftrace_events", align 4
@trace_event_fields_hrtimer_init = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.15, %union.anon.19 { %struct.anon.20 { ptr @.str.32, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.33, %union.anon.19 { %struct.anon.20 { ptr @.str.34, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.35, %union.anon.19 { %struct.anon.20 { ptr @.str.36, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_hrtimer_init = internal global %struct.trace_event_class { ptr @str__timer__trace_system_name, ptr @trace_event_raw_event_hrtimer_init, ptr @perf_trace_hrtimer_init, ptr @trace_event_reg, ptr @trace_event_fields_hrtimer_init, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_hrtimer_init, i64 24), ptr getelementptr (i8, ptr @event_class_hrtimer_init, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_hrtimer_init = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_hrtimer_init, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_hrtimer_init = internal global { [532 x i8], [140 x i8] } { [532 x i8] c"\22hrtimer=%p clockid=%s mode=%s\22, REC->hrtimer, __print_symbolic(REC->clockid, { 0, \22CLOCK_REALTIME\22 }, { 1, \22CLOCK_MONOTONIC\22 }, { 7, \22CLOCK_BOOTTIME\22 }, { 11, \22CLOCK_TAI\22 }), __print_symbolic(REC->mode, { HRTIMER_MODE_ABS, \22ABS\22 }, { HRTIMER_MODE_REL, \22REL\22 }, { HRTIMER_MODE_ABS_PINNED, \22ABS|PINNED\22 }, { HRTIMER_MODE_REL_PINNED, \22REL|PINNED\22 }, { HRTIMER_MODE_ABS_SOFT, \22ABS|SOFT\22 }, { HRTIMER_MODE_REL_SOFT, \22REL|SOFT\22 }, { HRTIMER_MODE_ABS_PINNED_SOFT, \22ABS|PINNED|SOFT\22 }, { HRTIMER_MODE_REL_PINNED_SOFT, \22REL|PINNED|SOFT\22 })\00", [140 x i8] zeroinitializer }, align 32
@event_hrtimer_init = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_hrtimer_init, %union.anon.21 { ptr @__tracepoint_hrtimer_init }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_hrtimer_init }, ptr @print_fmt_hrtimer_init, ptr null, %union.anon.22 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_hrtimer_init = internal global ptr @event_hrtimer_init, section "_ftrace_events", align 4
@trace_event_fields_hrtimer_start = internal global { [6 x %struct.trace_event_fields], [48 x i8] } { [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.15, %union.anon.19 { %struct.anon.20 { ptr @.str.32, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.19 { %struct.anon.20 { ptr @.str.18, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.51, %union.anon.19 { %struct.anon.20 { ptr @.str.20, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.51, %union.anon.19 { %struct.anon.20 { ptr @.str.52, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.35, %union.anon.19 { %struct.anon.20 { ptr @.str.36, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_hrtimer_start = internal global %struct.trace_event_class { ptr @str__timer__trace_system_name, ptr @trace_event_raw_event_hrtimer_start, ptr @perf_trace_hrtimer_start, ptr @trace_event_reg, ptr @trace_event_fields_hrtimer_start, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_hrtimer_start, i64 24), ptr getelementptr (i8, ptr @event_class_hrtimer_start, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_hrtimer_start = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_hrtimer_start, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_hrtimer_start = internal global { [524 x i8], [148 x i8] } { [524 x i8] c"\22hrtimer=%p function=%ps expires=%llu softexpires=%llu mode=%s\22, REC->hrtimer, REC->function, (unsigned long long) REC->expires, (unsigned long long) REC->softexpires, __print_symbolic(REC->mode, { HRTIMER_MODE_ABS, \22ABS\22 }, { HRTIMER_MODE_REL, \22REL\22 }, { HRTIMER_MODE_ABS_PINNED, \22ABS|PINNED\22 }, { HRTIMER_MODE_REL_PINNED, \22REL|PINNED\22 }, { HRTIMER_MODE_ABS_SOFT, \22ABS|SOFT\22 }, { HRTIMER_MODE_REL_SOFT, \22REL|SOFT\22 }, { HRTIMER_MODE_ABS_PINNED_SOFT, \22ABS|PINNED|SOFT\22 }, { HRTIMER_MODE_REL_PINNED_SOFT, \22REL|PINNED|SOFT\22 })\00", [148 x i8] zeroinitializer }, align 32
@event_hrtimer_start = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_hrtimer_start, %union.anon.21 { ptr @__tracepoint_hrtimer_start }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_hrtimer_start }, ptr @print_fmt_hrtimer_start, ptr null, %union.anon.22 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_hrtimer_start = internal global ptr @event_hrtimer_start, section "_ftrace_events", align 4
@trace_event_fields_hrtimer_expire_entry = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.15, %union.anon.19 { %struct.anon.20 { ptr @.str.32, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.51, %union.anon.19 { %struct.anon.20 { ptr @.str.21, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.15, %union.anon.19 { %struct.anon.20 { ptr @.str.18, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_hrtimer_expire_entry = internal global %struct.trace_event_class { ptr @str__timer__trace_system_name, ptr @trace_event_raw_event_hrtimer_expire_entry, ptr @perf_trace_hrtimer_expire_entry, ptr @trace_event_reg, ptr @trace_event_fields_hrtimer_expire_entry, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_hrtimer_expire_entry, i64 24), ptr getelementptr (i8, ptr @event_class_hrtimer_expire_entry, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_hrtimer_expire_entry = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_hrtimer_expire_entry, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_hrtimer_expire_entry = internal global { [95 x i8], [33 x i8] } { [95 x i8] c"\22hrtimer=%p function=%ps now=%llu\22, REC->hrtimer, REC->function, (unsigned long long) REC->now\00", [33 x i8] zeroinitializer }, align 32
@event_hrtimer_expire_entry = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_hrtimer_expire_entry, %union.anon.21 { ptr @__tracepoint_hrtimer_expire_entry }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_hrtimer_expire_entry }, ptr @print_fmt_hrtimer_expire_entry, ptr null, %union.anon.22 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_hrtimer_expire_entry = internal global ptr @event_hrtimer_expire_entry, section "_ftrace_events", align 4
@trace_event_fields_hrtimer_class = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.15, %union.anon.19 { %struct.anon.20 { ptr @.str.32, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_hrtimer_class = internal global %struct.trace_event_class { ptr @str__timer__trace_system_name, ptr @trace_event_raw_event_hrtimer_class, ptr @perf_trace_hrtimer_class, ptr @trace_event_reg, ptr @trace_event_fields_hrtimer_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_hrtimer_class, i64 24), ptr getelementptr (i8, ptr @event_class_hrtimer_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_hrtimer_class = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_hrtimer_class, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_hrtimer_class = internal global { [27 x i8], [37 x i8] } { [27 x i8] c"\22hrtimer=%p\22, REC->hrtimer\00", [37 x i8] zeroinitializer }, align 32
@event_hrtimer_expire_exit = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_hrtimer_class, %union.anon.21 { ptr @__tracepoint_hrtimer_expire_exit }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_hrtimer_class }, ptr @print_fmt_hrtimer_class, ptr null, %union.anon.22 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_hrtimer_expire_exit = internal global ptr @event_hrtimer_expire_exit, section "_ftrace_events", align 4
@event_hrtimer_cancel = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_hrtimer_class, %union.anon.21 { ptr @__tracepoint_hrtimer_cancel }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_hrtimer_class }, ptr @print_fmt_hrtimer_class, ptr null, %union.anon.22 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_hrtimer_cancel = internal global ptr @event_hrtimer_cancel, section "_ftrace_events", align 4
@trace_event_fields_itimer_state = internal global { [7 x %struct.trace_event_fields], [56 x i8] } { [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.56, %union.anon.19 { %struct.anon.20 { ptr @.str.57, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.58, %union.anon.19 { %struct.anon.20 { ptr @.str.20, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.59, %union.anon.19 { %struct.anon.20 { ptr @.str.60, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.59, %union.anon.19 { %struct.anon.20 { ptr @.str.61, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.59, %union.anon.19 { %struct.anon.20 { ptr @.str.62, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.59, %union.anon.19 { %struct.anon.20 { ptr @.str.63, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_itimer_state = internal global %struct.trace_event_class { ptr @str__timer__trace_system_name, ptr @trace_event_raw_event_itimer_state, ptr @perf_trace_itimer_state, ptr @trace_event_reg, ptr @trace_event_fields_itimer_state, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_itimer_state, i64 24), ptr getelementptr (i8, ptr @event_class_itimer_state, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_itimer_state = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_itimer_state, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_itimer_state = internal global { [179 x i8], [45 x i8] } { [179 x i8] c"\22which=%d expires=%llu it_value=%ld.%06ld it_interval=%ld.%06ld\22, REC->which, REC->expires, REC->value_sec, REC->value_nsec / 1000L, REC->interval_sec, REC->interval_nsec / 1000L\00", [45 x i8] zeroinitializer }, align 32
@event_itimer_state = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_itimer_state, %union.anon.21 { ptr @__tracepoint_itimer_state }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_itimer_state }, ptr @print_fmt_itimer_state, ptr null, %union.anon.22 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_itimer_state = internal global ptr @event_itimer_state, section "_ftrace_events", align 4
@trace_event_fields_itimer_expire = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.56, %union.anon.19 { %struct.anon.20 { ptr @.str.57, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.65, %union.anon.19 { %struct.anon.20 { ptr @.str.66, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.58, %union.anon.19 { %struct.anon.20 { ptr @.str.21, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_itimer_expire = internal global %struct.trace_event_class { ptr @str__timer__trace_system_name, ptr @trace_event_raw_event_itimer_expire, ptr @perf_trace_itimer_expire, ptr @trace_event_reg, ptr @trace_event_fields_itimer_expire, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_itimer_expire, i64 24), ptr getelementptr (i8, ptr @event_class_itimer_expire, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_itimer_expire = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_itimer_expire, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_itimer_expire = internal global { [65 x i8], [63 x i8] } { [65 x i8] c"\22which=%d pid=%d now=%llu\22, REC->which, (int) REC->pid, REC->now\00", [63 x i8] zeroinitializer }, align 32
@event_itimer_expire = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_itimer_expire, %union.anon.21 { ptr @__tracepoint_itimer_expire }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_itimer_expire }, ptr @print_fmt_itimer_expire, ptr null, %union.anon.22 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_itimer_expire = internal global ptr @event_itimer_expire, section "_ftrace_events", align 4
@trace_event_fields_tick_stop = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.56, %union.anon.19 { %struct.anon.20 { ptr @.str.68, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.56, %union.anon.19 { %struct.anon.20 { ptr @.str.69, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_tick_stop = internal global %struct.trace_event_class { ptr @str__timer__trace_system_name, ptr @trace_event_raw_event_tick_stop, ptr @perf_trace_tick_stop, ptr @trace_event_reg, ptr @trace_event_fields_tick_stop, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_tick_stop, i64 24), ptr getelementptr (i8, ptr @event_class_tick_stop, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_tick_stop = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_tick_stop, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_tick_stop = internal global { [329 x i8], [87 x i8] } { [329 x i8] c"\22success=%d dependency=%s\22, REC->success, __print_symbolic(REC->dependency, { 0, \22NONE\22 }, { (1 << TICK_DEP_BIT_POSIX_TIMER), \22POSIX_TIMER\22 }, { (1 << TICK_DEP_BIT_PERF_EVENTS), \22PERF_EVENTS\22 }, { (1 << TICK_DEP_BIT_SCHED), \22SCHED\22 }, { (1 << TICK_DEP_BIT_CLOCK_UNSTABLE), \22CLOCK_UNSTABLE\22 }, { (1 << TICK_DEP_BIT_RCU), \22RCU\22 })\00", [87 x i8] zeroinitializer }, align 32
@event_tick_stop = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_tick_stop, %union.anon.21 { ptr @__tracepoint_tick_stop }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_tick_stop }, ptr @print_fmt_tick_stop, ptr null, %union.anon.22 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_tick_stop = internal global ptr @event_tick_stop, section "_ftrace_events", align 4
@__bpf_trace_tp_map_timer_init = internal global %union.anon.108 { %struct.bpf_raw_event_map { ptr @__tracepoint_timer_init, ptr @__bpf_trace_timer_class, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_timer_start = internal global %union.anon.109 { %struct.bpf_raw_event_map { ptr @__tracepoint_timer_start, ptr @__bpf_trace_timer_start, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_timer_expire_entry = internal global %union.anon.110 { %struct.bpf_raw_event_map { ptr @__tracepoint_timer_expire_entry, ptr @__bpf_trace_timer_expire_entry, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_timer_expire_exit = internal global %union.anon.111 { %struct.bpf_raw_event_map { ptr @__tracepoint_timer_expire_exit, ptr @__bpf_trace_timer_class, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_timer_cancel = internal global %union.anon.112 { %struct.bpf_raw_event_map { ptr @__tracepoint_timer_cancel, ptr @__bpf_trace_timer_class, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_hrtimer_init = internal global %union.anon.113 { %struct.bpf_raw_event_map { ptr @__tracepoint_hrtimer_init, ptr @__bpf_trace_hrtimer_init, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_hrtimer_start = internal global %union.anon.114 { %struct.bpf_raw_event_map { ptr @__tracepoint_hrtimer_start, ptr @__bpf_trace_hrtimer_start, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_hrtimer_expire_entry = internal global %union.anon.115 { %struct.bpf_raw_event_map { ptr @__tracepoint_hrtimer_expire_entry, ptr @__bpf_trace_hrtimer_expire_entry, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_hrtimer_expire_exit = internal global %union.anon.116 { %struct.bpf_raw_event_map { ptr @__tracepoint_hrtimer_expire_exit, ptr @__bpf_trace_hrtimer_class, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_hrtimer_cancel = internal global %union.anon.117 { %struct.bpf_raw_event_map { ptr @__tracepoint_hrtimer_cancel, ptr @__bpf_trace_hrtimer_class, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_itimer_state = internal global %union.anon.118 { %struct.bpf_raw_event_map { ptr @__tracepoint_itimer_state, ptr @__bpf_trace_itimer_state, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_itimer_expire = internal global %union.anon.119 { %struct.bpf_raw_event_map { ptr @__tracepoint_itimer_expire, ptr @__bpf_trace_itimer_expire, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_tick_stop = internal global %union.anon.120 { %struct.bpf_raw_event_map { ptr @__tracepoint_tick_stop, ptr @__bpf_trace_tick_stop, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@jiffies_64 = dso_local global i64 4294937296, section ".data..cacheline_aligned", align 128
@__kstrtab_jiffies_64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_jiffies_64 = external dso_local constant [0 x i8], align 1
@__ksymtab_jiffies_64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @jiffies_64 to i32), ptr @__kstrtab_jiffies_64, ptr @__kstrtabns_jiffies_64 }, section "___ksymtab+jiffies_64", align 4
@sysctl_timer_migration = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@timers_migration_enabled = dso_local global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } zeroinitializer, align 32
@timer_update_work = internal global { %struct.work_struct, [52 x i8] } { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @timer_update_work, i64 4), ptr getelementptr (i8, ptr @timer_update_work, i64 4) }, ptr @timer_update_keys, %struct.lockdep_map { ptr @timer_update_work, [2 x ptr] zeroinitializer, ptr @.str.77, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@timer_keys_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.79, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @timer_keys_mutex, i64 52), ptr getelementptr (i8, ptr @timer_keys_mutex, i64 52) }, ptr @timer_keys_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.80, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@__kstrtab___round_jiffies = external dso_local constant [0 x i8], align 1
@__kstrtabns___round_jiffies = external dso_local constant [0 x i8], align 1
@__ksymtab___round_jiffies = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__round_jiffies to i32), ptr @__kstrtab___round_jiffies, ptr @__kstrtabns___round_jiffies }, section "___ksymtab_gpl+__round_jiffies", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__kstrtab___round_jiffies_relative = external dso_local constant [0 x i8], align 1
@__kstrtabns___round_jiffies_relative = external dso_local constant [0 x i8], align 1
@__ksymtab___round_jiffies_relative = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__round_jiffies_relative to i32), ptr @__kstrtab___round_jiffies_relative, ptr @__kstrtabns___round_jiffies_relative }, section "___ksymtab_gpl+__round_jiffies_relative", align 4
@__kstrtab_round_jiffies = external dso_local constant [0 x i8], align 1
@__kstrtabns_round_jiffies = external dso_local constant [0 x i8], align 1
@__ksymtab_round_jiffies = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @round_jiffies to i32), ptr @__kstrtab_round_jiffies, ptr @__kstrtabns_round_jiffies }, section "___ksymtab_gpl+round_jiffies", align 4
@__kstrtab_round_jiffies_relative = external dso_local constant [0 x i8], align 1
@__kstrtabns_round_jiffies_relative = external dso_local constant [0 x i8], align 1
@__ksymtab_round_jiffies_relative = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @round_jiffies_relative to i32), ptr @__kstrtab_round_jiffies_relative, ptr @__kstrtabns_round_jiffies_relative }, section "___ksymtab_gpl+round_jiffies_relative", align 4
@__kstrtab___round_jiffies_up = external dso_local constant [0 x i8], align 1
@__kstrtabns___round_jiffies_up = external dso_local constant [0 x i8], align 1
@__ksymtab___round_jiffies_up = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__round_jiffies_up to i32), ptr @__kstrtab___round_jiffies_up, ptr @__kstrtabns___round_jiffies_up }, section "___ksymtab_gpl+__round_jiffies_up", align 4
@__kstrtab___round_jiffies_up_relative = external dso_local constant [0 x i8], align 1
@__kstrtabns___round_jiffies_up_relative = external dso_local constant [0 x i8], align 1
@__ksymtab___round_jiffies_up_relative = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__round_jiffies_up_relative to i32), ptr @__kstrtab___round_jiffies_up_relative, ptr @__kstrtabns___round_jiffies_up_relative }, section "___ksymtab_gpl+__round_jiffies_up_relative", align 4
@__kstrtab_round_jiffies_up = external dso_local constant [0 x i8], align 1
@__kstrtabns_round_jiffies_up = external dso_local constant [0 x i8], align 1
@__ksymtab_round_jiffies_up = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @round_jiffies_up to i32), ptr @__kstrtab_round_jiffies_up, ptr @__kstrtabns_round_jiffies_up }, section "___ksymtab_gpl+round_jiffies_up", align 4
@__kstrtab_round_jiffies_up_relative = external dso_local constant [0 x i8], align 1
@__kstrtabns_round_jiffies_up_relative = external dso_local constant [0 x i8], align 1
@__ksymtab_round_jiffies_up_relative = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @round_jiffies_up_relative to i32), ptr @__kstrtab_round_jiffies_up_relative, ptr @__kstrtabns_round_jiffies_up_relative }, section "___ksymtab_gpl+round_jiffies_up_relative", align 4
@timer_debug_descr = internal constant { %struct.debug_obj_descr, [32 x i8] } { %struct.debug_obj_descr { ptr @.str.81, ptr @timer_debug_hint, ptr @timer_is_static_object, ptr @timer_fixup_init, ptr @timer_fixup_activate, ptr null, ptr @timer_fixup_free, ptr @timer_fixup_assert_init }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_init_timer_on_stack_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_init_timer_on_stack_key = external dso_local constant [0 x i8], align 1
@__ksymtab_init_timer_on_stack_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @init_timer_on_stack_key to i32), ptr @__kstrtab_init_timer_on_stack_key, ptr @__kstrtabns_init_timer_on_stack_key }, section "___ksymtab_gpl+init_timer_on_stack_key", align 4
@__kstrtab_destroy_timer_on_stack = external dso_local constant [0 x i8], align 1
@__kstrtabns_destroy_timer_on_stack = external dso_local constant [0 x i8], align 1
@__ksymtab_destroy_timer_on_stack = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @destroy_timer_on_stack to i32), ptr @__kstrtab_destroy_timer_on_stack, ptr @__kstrtabns_destroy_timer_on_stack }, section "___ksymtab_gpl+destroy_timer_on_stack", align 4
@__kstrtab_init_timer_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_init_timer_key = external dso_local constant [0 x i8], align 1
@__ksymtab_init_timer_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @init_timer_key to i32), ptr @__kstrtab_init_timer_key, ptr @__kstrtabns_init_timer_key }, section "___ksymtab+init_timer_key", align 4
@__kstrtab_mod_timer_pending = external dso_local constant [0 x i8], align 1
@__kstrtabns_mod_timer_pending = external dso_local constant [0 x i8], align 1
@__ksymtab_mod_timer_pending = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mod_timer_pending to i32), ptr @__kstrtab_mod_timer_pending, ptr @__kstrtabns_mod_timer_pending }, section "___ksymtab+mod_timer_pending", align 4
@__kstrtab_mod_timer = external dso_local constant [0 x i8], align 1
@__kstrtabns_mod_timer = external dso_local constant [0 x i8], align 1
@__ksymtab_mod_timer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mod_timer to i32), ptr @__kstrtab_mod_timer, ptr @__kstrtabns_mod_timer }, section "___ksymtab+mod_timer", align 4
@__kstrtab_timer_reduce = external dso_local constant [0 x i8], align 1
@__kstrtabns_timer_reduce = external dso_local constant [0 x i8], align 1
@__ksymtab_timer_reduce = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @timer_reduce to i32), ptr @__kstrtab_timer_reduce, ptr @__kstrtabns_timer_reduce }, section "___ksymtab+timer_reduce", align 4
@__kstrtab_add_timer = external dso_local constant [0 x i8], align 1
@__kstrtabns_add_timer = external dso_local constant [0 x i8], align 1
@__ksymtab_add_timer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @add_timer to i32), ptr @__kstrtab_add_timer, ptr @__kstrtabns_add_timer }, section "___ksymtab+add_timer", align 4
@__kstrtab_add_timer_on = external dso_local constant [0 x i8], align 1
@__kstrtabns_add_timer_on = external dso_local constant [0 x i8], align 1
@__ksymtab_add_timer_on = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @add_timer_on to i32), ptr @__kstrtab_add_timer_on, ptr @__kstrtabns_add_timer_on }, section "___ksymtab_gpl+add_timer_on", align 4
@__kstrtab_del_timer = external dso_local constant [0 x i8], align 1
@__kstrtabns_del_timer = external dso_local constant [0 x i8], align 1
@__ksymtab_del_timer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @del_timer to i32), ptr @__kstrtab_del_timer, ptr @__kstrtabns_del_timer }, section "___ksymtab+del_timer", align 4
@__kstrtab_try_to_del_timer_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_try_to_del_timer_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_try_to_del_timer_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @try_to_del_timer_sync to i32), ptr @__kstrtab_try_to_del_timer_sync, ptr @__kstrtabns_try_to_del_timer_sync }, section "___ksymtab+try_to_del_timer_sync", align 4
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kernel/time/timer.c\00", [44 x i8] zeroinitializer }, align 32
@__kstrtab_del_timer_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_del_timer_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_del_timer_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @del_timer_sync to i32), ptr @__kstrtab_del_timer_sync, ptr @__kstrtabns_del_timer_sync }, section "___ksymtab+del_timer_sync", align 4
@timer_bases = weak dso_local global [2 x %struct.timer_base] zeroinitializer, section ".data..percpu", align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@schedule_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.11, i32 1869, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013schedule_timeout: wrong timeout value %lx\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"schedule_timeout\00", [47 x i8] zeroinitializer }, align 32
@schedule_timeout._entry_ptr = internal global ptr @schedule_timeout._entry, section ".printk_index", align 4
@schedule_timeout.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"(&timer.timer)\00", [17 x i8] zeroinitializer }, align 32
@__kstrtab_schedule_timeout = external dso_local constant [0 x i8], align 1
@__kstrtabns_schedule_timeout = external dso_local constant [0 x i8], align 1
@__ksymtab_schedule_timeout = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @schedule_timeout to i32), ptr @__kstrtab_schedule_timeout, ptr @__kstrtabns_schedule_timeout }, section "___ksymtab+schedule_timeout", align 4
@__kstrtab_schedule_timeout_interruptible = external dso_local constant [0 x i8], align 1
@__kstrtabns_schedule_timeout_interruptible = external dso_local constant [0 x i8], align 1
@__ksymtab_schedule_timeout_interruptible = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @schedule_timeout_interruptible to i32), ptr @__kstrtab_schedule_timeout_interruptible, ptr @__kstrtabns_schedule_timeout_interruptible }, section "___ksymtab+schedule_timeout_interruptible", align 4
@__kstrtab_schedule_timeout_killable = external dso_local constant [0 x i8], align 1
@__kstrtabns_schedule_timeout_killable = external dso_local constant [0 x i8], align 1
@__ksymtab_schedule_timeout_killable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @schedule_timeout_killable to i32), ptr @__kstrtab_schedule_timeout_killable, ptr @__kstrtabns_schedule_timeout_killable }, section "___ksymtab+schedule_timeout_killable", align 4
@__kstrtab_schedule_timeout_uninterruptible = external dso_local constant [0 x i8], align 1
@__kstrtabns_schedule_timeout_uninterruptible = external dso_local constant [0 x i8], align 1
@__ksymtab_schedule_timeout_uninterruptible = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @schedule_timeout_uninterruptible to i32), ptr @__kstrtab_schedule_timeout_uninterruptible, ptr @__kstrtabns_schedule_timeout_uninterruptible }, section "___ksymtab+schedule_timeout_uninterruptible", align 4
@__kstrtab_schedule_timeout_idle = external dso_local constant [0 x i8], align 1
@__kstrtabns_schedule_timeout_idle = external dso_local constant [0 x i8], align 1
@__ksymtab_schedule_timeout_idle = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @schedule_timeout_idle to i32), ptr @__kstrtab_schedule_timeout_idle, ptr @__kstrtabns_schedule_timeout_idle }, section "___ksymtab+schedule_timeout_idle", align 4
@__kstrtab_msleep = external dso_local constant [0 x i8], align 1
@__kstrtabns_msleep = external dso_local constant [0 x i8], align 1
@__ksymtab_msleep = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @msleep to i32), ptr @__kstrtab_msleep, ptr @__kstrtabns_msleep }, section "___ksymtab+msleep", align 4
@__kstrtab_msleep_interruptible = external dso_local constant [0 x i8], align 1
@__kstrtabns_msleep_interruptible = external dso_local constant [0 x i8], align 1
@__ksymtab_msleep_interruptible = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @msleep_interruptible to i32), ptr @__kstrtab_msleep_interruptible, ptr @__kstrtabns_msleep_interruptible }, section "___ksymtab+msleep_interruptible", align 4
@usleep_range_state.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_usleep_range_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_usleep_range_state = external dso_local constant [0 x i8], align 1
@__ksymtab_usleep_range_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usleep_range_state to i32), ptr @__kstrtab_usleep_range_state, ptr @__kstrtabns_usleep_range_state }, section "___ksymtab+usleep_range_state", align 4
@__pcpu_unique_timer_bases = dso_local local_unnamed_addr global [2 x i8] zeroinitializer, section ".discard", align 1
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"void *\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"timer\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"timer=%p\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"function\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unsigned long\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"expires\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"now\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"timer=%p function=%ps expires=%lu [timeout=%ld] cpu=%u idx=%u flags=%s\0A\00", [56 x i8] zeroinitializer }, align 32
@trace_raw_output_timer_start.__flags = internal constant { [5 x %struct.trace_print_flags], [56 x i8] } { [5 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 262144, ptr @.str.25 }, %struct.trace_print_flags { i32 524288, ptr @.str.26 }, %struct.trace_print_flags { i32 1048576, ptr @.str.27 }, %struct.trace_print_flags { i32 2097152, ptr @.str.28 }, %struct.trace_print_flags { i32 -1, ptr null }], [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"M\00", [30 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"D\00", [30 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"P\00", [30 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"I\00", [30 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"|\00", [30 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"baseclk\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"timer=%p function=%ps now=%lu baseclk=%lu\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hrtimer\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clockid_t\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clockid\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"enum hrtimer_mode\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mode\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"hrtimer=%p clockid=%s mode=%s\0A\00", [33 x i8] zeroinitializer }, align 32
@trace_raw_output_hrtimer_init.symbols = internal constant { [5 x %struct.trace_print_flags], [56 x i8] } { [5 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.38 }, %struct.trace_print_flags { i32 1, ptr @.str.39 }, %struct.trace_print_flags { i32 7, ptr @.str.40 }, %struct.trace_print_flags { i32 11, ptr @.str.41 }, %struct.trace_print_flags { i32 -1, ptr null }], [56 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CLOCK_REALTIME\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CLOCK_MONOTONIC\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CLOCK_BOOTTIME\00", [17 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CLOCK_TAI\00", [22 x i8] zeroinitializer }, align 32
@trace_raw_output_hrtimer_init.symbols.42 = internal constant { [9 x %struct.trace_print_flags], [56 x i8] } { [9 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.43 }, %struct.trace_print_flags { i32 1, ptr @.str.44 }, %struct.trace_print_flags { i32 2, ptr @.str.45 }, %struct.trace_print_flags { i32 3, ptr @.str.46 }, %struct.trace_print_flags { i32 4, ptr @.str.47 }, %struct.trace_print_flags { i32 5, ptr @.str.48 }, %struct.trace_print_flags { i32 6, ptr @.str.49 }, %struct.trace_print_flags { i32 7, ptr @.str.50 }, %struct.trace_print_flags { i32 -1, ptr null }], [56 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ABS\00", [28 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"REL\00", [28 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ABS|PINNED\00", [21 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"REL|PINNED\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ABS|SOFT\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"REL|SOFT\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ABS|PINNED|SOFT\00", [16 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"REL|PINNED|SOFT\00", [16 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"s64\00", [28 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"softexpires\00", [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"hrtimer=%p function=%ps expires=%llu softexpires=%llu mode=%s\0A\00", [33 x i8] zeroinitializer }, align 32
@trace_raw_output_hrtimer_start.symbols = internal constant { [9 x %struct.trace_print_flags], [56 x i8] } { [9 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.43 }, %struct.trace_print_flags { i32 1, ptr @.str.44 }, %struct.trace_print_flags { i32 2, ptr @.str.45 }, %struct.trace_print_flags { i32 3, ptr @.str.46 }, %struct.trace_print_flags { i32 4, ptr @.str.47 }, %struct.trace_print_flags { i32 5, ptr @.str.48 }, %struct.trace_print_flags { i32 6, ptr @.str.49 }, %struct.trace_print_flags { i32 7, ptr @.str.50 }, %struct.trace_print_flags { i32 -1, ptr null }], [56 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"hrtimer=%p function=%ps now=%llu\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hrtimer=%p\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"which\00", [26 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"unsigned long long\00", [45 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"long\00", [27 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"value_sec\00", [22 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"value_nsec\00", [21 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"interval_sec\00", [19 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"interval_nsec\00", [18 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"which=%d expires=%llu it_value=%ld.%06ld it_interval=%ld.%06ld\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pid_t\00", [26 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pid\00", [28 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"which=%d pid=%d now=%llu\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"success\00", [24 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dependency\00", [21 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"success=%d dependency=%s\0A\00", [38 x i8] zeroinitializer }, align 32
@trace_raw_output_tick_stop.symbols = internal constant { [7 x %struct.trace_print_flags], [40 x i8] } { [7 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.71 }, %struct.trace_print_flags { i32 1, ptr @.str.72 }, %struct.trace_print_flags { i32 2, ptr @.str.73 }, %struct.trace_print_flags { i32 4, ptr @.str.74 }, %struct.trace_print_flags { i32 8, ptr @.str.75 }, %struct.trace_print_flags { i32 16, ptr @.str.76 }, %struct.trace_print_flags { i32 -1, ptr null }], [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NONE\00", [27 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"POSIX_TIMER\00", [20 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PERF_EVENTS\00", [20 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SCHED\00", [26 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CLOCK_UNSTABLE\00", [17 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RCU\00", [28 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.77 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"timer_update_work\00", [46 x i8] zeroinitializer }, align 32
@timers_nohz_active = internal global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } zeroinitializer, align 32
@.str.79 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"timer_keys_mutex.wait_lock\00", [37 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"timer_keys_mutex\00", [47 x i8] zeroinitializer }, align 32
@tick_nohz_active = external dso_local local_unnamed_addr global i32, align 4
@.str.81 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timer_list\00", [21 x i8] zeroinitializer }, align 32
@timer_fixup_activate.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.82 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"(timer)\00", [24 x i8] zeroinitializer }, align 32
@timer_fixup_assert_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@do_init_timer.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.83 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/timer.h\00", [35 x i8] zeroinitializer }, align 32
@trace_timer_init.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.84 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@trace_timer_start.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@forward_timer_base.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@trace_timer_cancel.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.85 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@net_rand_noise = external dso_local global i32, section ".data..percpu", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@init_timer_cpu.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.86 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&base->lock\00", [20 x i8] zeroinitializer }, align 32
@__run_timers.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@call_timer_fn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.87 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"timer: %pS preempt leak: %08x -> %08x\0A\00", [57 x i8] zeroinitializer }, align 32
@trace_timer_expire_entry.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trace_timer_expire_exit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@___asan_gen_.88 = private unnamed_addr constant [30 x i8] c"str__timer__trace_system_name\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 36, i32 1 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 385, i32 1 }
@___asan_gen_.124 = private unnamed_addr constant [31 x i8] c"trace_event_fields_timer_class\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [35 x i8] c"trace_event_type_funcs_timer_class\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [22 x i8] c"print_fmt_timer_class\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [17 x i8] c"event_timer_init\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [31 x i8] c"trace_event_fields_timer_start\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [35 x i8] c"trace_event_type_funcs_timer_start\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [22 x i8] c"print_fmt_timer_start\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [18 x i8] c"event_timer_start\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [38 x i8] c"trace_event_fields_timer_expire_entry\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [42 x i8] c"trace_event_type_funcs_timer_expire_entry\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [29 x i8] c"print_fmt_timer_expire_entry\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [25 x i8] c"event_timer_expire_entry\00", align 1
@___asan_gen_.160 = private unnamed_addr constant [24 x i8] c"event_timer_expire_exit\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 125, i32 1 }
@___asan_gen_.163 = private unnamed_addr constant [19 x i8] c"event_timer_cancel\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 136, i32 1 }
@___asan_gen_.166 = private unnamed_addr constant [32 x i8] c"trace_event_fields_hrtimer_init\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [36 x i8] c"trace_event_type_funcs_hrtimer_init\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [23 x i8] c"print_fmt_hrtimer_init\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [19 x i8] c"event_hrtimer_init\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [33 x i8] c"trace_event_fields_hrtimer_start\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [37 x i8] c"trace_event_type_funcs_hrtimer_start\00", align 1
@___asan_gen_.184 = private unnamed_addr constant [24 x i8] c"print_fmt_hrtimer_start\00", align 1
@___asan_gen_.187 = private unnamed_addr constant [20 x i8] c"event_hrtimer_start\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [40 x i8] c"trace_event_fields_hrtimer_expire_entry\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [44 x i8] c"trace_event_type_funcs_hrtimer_expire_entry\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [31 x i8] c"print_fmt_hrtimer_expire_entry\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [27 x i8] c"event_hrtimer_expire_entry\00", align 1
@___asan_gen_.202 = private unnamed_addr constant [33 x i8] c"trace_event_fields_hrtimer_class\00", align 1
@___asan_gen_.205 = private unnamed_addr constant [37 x i8] c"trace_event_type_funcs_hrtimer_class\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [24 x i8] c"print_fmt_hrtimer_class\00", align 1
@___asan_gen_.211 = private unnamed_addr constant [26 x i8] c"event_hrtimer_expire_exit\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 279, i32 1 }
@___asan_gen_.214 = private unnamed_addr constant [21 x i8] c"event_hrtimer_cancel\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 290, i32 1 }
@___asan_gen_.217 = private unnamed_addr constant [32 x i8] c"trace_event_fields_itimer_state\00", align 1
@___asan_gen_.220 = private unnamed_addr constant [36 x i8] c"trace_event_type_funcs_itimer_state\00", align 1
@___asan_gen_.223 = private unnamed_addr constant [23 x i8] c"print_fmt_itimer_state\00", align 1
@___asan_gen_.226 = private unnamed_addr constant [19 x i8] c"event_itimer_state\00", align 1
@___asan_gen_.229 = private unnamed_addr constant [33 x i8] c"trace_event_fields_itimer_expire\00", align 1
@___asan_gen_.232 = private unnamed_addr constant [37 x i8] c"trace_event_type_funcs_itimer_expire\00", align 1
@___asan_gen_.235 = private unnamed_addr constant [24 x i8] c"print_fmt_itimer_expire\00", align 1
@___asan_gen_.238 = private unnamed_addr constant [20 x i8] c"event_itimer_expire\00", align 1
@___asan_gen_.241 = private unnamed_addr constant [29 x i8] c"trace_event_fields_tick_stop\00", align 1
@___asan_gen_.244 = private unnamed_addr constant [33 x i8] c"trace_event_type_funcs_tick_stop\00", align 1
@___asan_gen_.247 = private unnamed_addr constant [20 x i8] c"print_fmt_tick_stop\00", align 1
@___asan_gen_.250 = private unnamed_addr constant [16 x i8] c"event_tick_stop\00", align 1
@___asan_gen_.253 = private unnamed_addr constant [23 x i8] c"sysctl_timer_migration\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 226, i32 14 }
@___asan_gen_.256 = private unnamed_addr constant [25 x i8] c"timers_migration_enabled\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 228, i32 1 }
@___asan_gen_.259 = private unnamed_addr constant [18 x i8] c"timer_update_work\00", align 1
@___asan_gen_.262 = private unnamed_addr constant [17 x i8] c"timer_keys_mutex\00", align 1
@___asan_gen_.265 = private unnamed_addr constant [18 x i8] c"timer_debug_descr\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 712, i32 37 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1372, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1868, i32 4 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1879, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 12, i32 1 }
@___asan_gen_.316 = private unnamed_addr constant [8 x i8] c"__flags\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 52, i32 1 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 90, i32 1 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 167, i32 1 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 195, i32 1 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 232, i32 1 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 255, i32 1 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 304, i32 1 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 341, i32 1 }
@___asan_gen_.463 = private unnamed_addr constant [8 x i8] c"symbols\00", align 1
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 398, i32 1 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 223, i32 8 }
@___asan_gen_.487 = private unnamed_addr constant [19 x i8] c"timers_nohz_active\00", align 1
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 219, i32 8 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 220, i32 8 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 713, i32 12 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 666, i32 3 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 705, i32 3 }
@___asan_gen_.512 = private unnamed_addr constant [32 x i8] c"../include/trace/events/timer.h\00", align 1
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.512, i32 33, i32 1 }
@___asan_gen_.515 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.515, i32 108, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 2005, i32 3 }
@___asan_gen_.523 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.524 = private constant [23 x i8] c"../kernel/time/timer.c\00", align 1
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1427, i32 3 }
@llvm.compiler.used = appending global [259 x ptr] [ptr @TRACE_SYSTEM_TICK_DEP_BIT_CLOCK_UNSTABLE, ptr @TRACE_SYSTEM_TICK_DEP_BIT_PERF_EVENTS, ptr @TRACE_SYSTEM_TICK_DEP_BIT_POSIX_TIMER, ptr @TRACE_SYSTEM_TICK_DEP_BIT_RCU, ptr @TRACE_SYSTEM_TICK_DEP_BIT_SCHED, ptr @TRACE_SYSTEM_TICK_DEP_MASK_CLOCK_UNSTABLE, ptr @TRACE_SYSTEM_TICK_DEP_MASK_NONE, ptr @TRACE_SYSTEM_TICK_DEP_MASK_PERF_EVENTS, ptr @TRACE_SYSTEM_TICK_DEP_MASK_POSIX_TIMER, ptr @TRACE_SYSTEM_TICK_DEP_MASK_RCU, ptr @TRACE_SYSTEM_TICK_DEP_MASK_SCHED, ptr @__TRACE_SYSTEM_TICK_DEP_BIT_CLOCK_UNSTABLE, ptr @__TRACE_SYSTEM_TICK_DEP_BIT_PERF_EVENTS, ptr @__TRACE_SYSTEM_TICK_DEP_BIT_POSIX_TIMER, ptr @__TRACE_SYSTEM_TICK_DEP_BIT_RCU, ptr @__TRACE_SYSTEM_TICK_DEP_BIT_SCHED, ptr @__TRACE_SYSTEM_TICK_DEP_MASK_CLOCK_UNSTABLE, ptr @__TRACE_SYSTEM_TICK_DEP_MASK_NONE, ptr @__TRACE_SYSTEM_TICK_DEP_MASK_PERF_EVENTS, ptr @__TRACE_SYSTEM_TICK_DEP_MASK_POSIX_TIMER, ptr @__TRACE_SYSTEM_TICK_DEP_MASK_RCU, ptr @__TRACE_SYSTEM_TICK_DEP_MASK_SCHED, ptr @__bpf_trace_tp_map_hrtimer_cancel, ptr @__bpf_trace_tp_map_hrtimer_expire_entry, ptr @__bpf_trace_tp_map_hrtimer_expire_exit, ptr @__bpf_trace_tp_map_hrtimer_init, ptr @__bpf_trace_tp_map_hrtimer_start, ptr @__bpf_trace_tp_map_itimer_expire, ptr @__bpf_trace_tp_map_itimer_state, ptr @__bpf_trace_tp_map_tick_stop, ptr @__bpf_trace_tp_map_timer_cancel, ptr @__bpf_trace_tp_map_timer_expire_entry, ptr @__bpf_trace_tp_map_timer_expire_exit, ptr @__bpf_trace_tp_map_timer_init, ptr @__bpf_trace_tp_map_timer_start, ptr @__event_hrtimer_cancel, ptr @__event_hrtimer_expire_entry, ptr @__event_hrtimer_expire_exit, ptr @__event_hrtimer_init, ptr @__event_hrtimer_start, ptr @__event_itimer_expire, ptr @__event_itimer_state, ptr @__event_tick_stop, ptr @__event_timer_cancel, ptr @__event_timer_expire_entry, ptr @__event_timer_expire_exit, ptr @__event_timer_init, ptr @__event_timer_start, ptr @__ksymtab___round_jiffies, ptr @__ksymtab___round_jiffies_relative, ptr @__ksymtab___round_jiffies_up, ptr @__ksymtab___round_jiffies_up_relative, ptr @__ksymtab_add_timer, ptr @__ksymtab_add_timer_on, ptr @__ksymtab_del_timer, ptr @__ksymtab_del_timer_sync, ptr @__ksymtab_destroy_timer_on_stack, ptr @__ksymtab_init_timer_key, ptr @__ksymtab_init_timer_on_stack_key, ptr @__ksymtab_jiffies_64, ptr @__ksymtab_mod_timer, ptr @__ksymtab_mod_timer_pending, ptr @__ksymtab_msleep, ptr @__ksymtab_msleep_interruptible, ptr @__ksymtab_round_jiffies, ptr @__ksymtab_round_jiffies_relative, ptr @__ksymtab_round_jiffies_up, ptr @__ksymtab_round_jiffies_up_relative, ptr @__ksymtab_schedule_timeout, ptr @__ksymtab_schedule_timeout_idle, ptr @__ksymtab_schedule_timeout_interruptible, ptr @__ksymtab_schedule_timeout_killable, ptr @__ksymtab_schedule_timeout_uninterruptible, ptr @__ksymtab_timer_reduce, ptr @__ksymtab_try_to_del_timer_sync, ptr @__ksymtab_usleep_range_state, ptr @__tracepoint_hrtimer_cancel, ptr @__tracepoint_hrtimer_expire_entry, ptr @__tracepoint_hrtimer_expire_exit, ptr @__tracepoint_hrtimer_init, ptr @__tracepoint_hrtimer_start, ptr @__tracepoint_itimer_expire, ptr @__tracepoint_itimer_state, ptr @__tracepoint_ptr_hrtimer_cancel, ptr @__tracepoint_ptr_hrtimer_expire_entry, ptr @__tracepoint_ptr_hrtimer_expire_exit, ptr @__tracepoint_ptr_hrtimer_init, ptr @__tracepoint_ptr_hrtimer_start, ptr @__tracepoint_ptr_itimer_expire, ptr @__tracepoint_ptr_itimer_state, ptr @__tracepoint_ptr_tick_stop, ptr @__tracepoint_ptr_timer_cancel, ptr @__tracepoint_ptr_timer_expire_entry, ptr @__tracepoint_ptr_timer_expire_exit, ptr @__tracepoint_ptr_timer_init, ptr @__tracepoint_ptr_timer_start, ptr @__tracepoint_tick_stop, ptr @__tracepoint_timer_cancel, ptr @__tracepoint_timer_expire_entry, ptr @__tracepoint_timer_expire_exit, ptr @__tracepoint_timer_init, ptr @__tracepoint_timer_start, ptr @event_class_hrtimer_class, ptr @event_class_hrtimer_expire_entry, ptr @event_class_hrtimer_init, ptr @event_class_hrtimer_start, ptr @event_class_itimer_expire, ptr @event_class_itimer_state, ptr @event_class_tick_stop, ptr @event_class_timer_class, ptr @event_class_timer_expire_entry, ptr @event_class_timer_start, ptr @event_hrtimer_cancel, ptr @event_hrtimer_expire_entry, ptr @event_hrtimer_expire_exit, ptr @event_hrtimer_init, ptr @event_hrtimer_start, ptr @event_itimer_expire, ptr @event_itimer_state, ptr @event_tick_stop, ptr @event_timer_cancel, ptr @event_timer_expire_entry, ptr @event_timer_expire_exit, ptr @event_timer_init, ptr @event_timer_start, ptr @schedule_timeout._entry, ptr @schedule_timeout._entry_ptr, ptr @str__timer__trace_system_name, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @trace_event_fields_timer_class, ptr @trace_event_type_funcs_timer_class, ptr @print_fmt_timer_class, ptr @trace_event_fields_timer_start, ptr @trace_event_type_funcs_timer_start, ptr @print_fmt_timer_start, ptr @trace_event_fields_timer_expire_entry, ptr @trace_event_type_funcs_timer_expire_entry, ptr @print_fmt_timer_expire_entry, ptr @trace_event_fields_hrtimer_init, ptr @trace_event_type_funcs_hrtimer_init, ptr @print_fmt_hrtimer_init, ptr @trace_event_fields_hrtimer_start, ptr @trace_event_type_funcs_hrtimer_start, ptr @print_fmt_hrtimer_start, ptr @trace_event_fields_hrtimer_expire_entry, ptr @trace_event_type_funcs_hrtimer_expire_entry, ptr @print_fmt_hrtimer_expire_entry, ptr @trace_event_fields_hrtimer_class, ptr @trace_event_type_funcs_hrtimer_class, ptr @print_fmt_hrtimer_class, ptr @trace_event_fields_itimer_state, ptr @trace_event_type_funcs_itimer_state, ptr @print_fmt_itimer_state, ptr @trace_event_fields_itimer_expire, ptr @trace_event_type_funcs_itimer_expire, ptr @print_fmt_itimer_expire, ptr @trace_event_fields_tick_stop, ptr @trace_event_type_funcs_tick_stop, ptr @print_fmt_tick_stop, ptr @sysctl_timer_migration, ptr @timers_migration_enabled, ptr @timer_update_work, ptr @timer_keys_mutex, ptr @timer_debug_descr, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @schedule_timeout.__key, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @trace_raw_output_timer_start.__flags, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @trace_raw_output_hrtimer_init.symbols, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @trace_raw_output_hrtimer_init.symbols.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @trace_raw_output_hrtimer_start.symbols, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @trace_raw_output_tick_stop.symbols, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @timers_nohz_active, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @timer_fixup_activate.__key, ptr @.str.82, ptr @timer_fixup_assert_init.__key, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @init_timer_cpu.__key, ptr @.str.86, ptr @.str.87], section "llvm.metadata"
@0 = internal global [146 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__timer__trace_system_name to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_timer_class to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_timer_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_timer_class to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_timer_init to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_timer_start to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_timer_start to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_timer_start to i32), i32 358, i32 448, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_timer_start to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_timer_expire_entry to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_timer_expire_entry to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_timer_expire_entry to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_timer_expire_entry to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_timer_expire_exit to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_timer_cancel to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_hrtimer_init to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_hrtimer_init to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_hrtimer_init to i32), i32 532, i32 672, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_hrtimer_init to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_hrtimer_start to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_hrtimer_start to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_hrtimer_start to i32), i32 524, i32 672, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_hrtimer_start to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_hrtimer_expire_entry to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_hrtimer_expire_entry to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_hrtimer_expire_entry to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_hrtimer_expire_entry to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_hrtimer_class to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_hrtimer_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_hrtimer_class to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_hrtimer_expire_exit to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_hrtimer_cancel to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_itimer_state to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_itimer_state to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_itimer_state to i32), i32 179, i32 224, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_itimer_state to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_itimer_expire to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_itimer_expire to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_itimer_expire to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_itimer_expire to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_tick_stop to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_tick_stop to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_tick_stop to i32), i32 329, i32 416, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_tick_stop to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctl_timer_migration to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timers_migration_enabled to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timer_update_work to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timer_keys_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timer_debug_descr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @schedule_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @schedule_timeout.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_timer_start.__flags to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_hrtimer_init.symbols to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_hrtimer_init.symbols.42 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_hrtimer_start.symbols to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_tick_stop.symbols to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timers_nohz_active to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timer_fixup_activate.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timer_fixup_assert_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_timer_cpu.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_timer_init(ptr nocapture readnone %__data, ptr noundef %timer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_timer_init, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %timer) #15
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_timer_start(ptr nocapture readnone %__data, ptr noundef %timer, i32 noundef %expires, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_timer_start, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %timer, i32 noundef %expires, i32 noundef %flags) #15
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_timer_expire_entry(ptr nocapture readnone %__data, ptr noundef %timer, i32 noundef %baseclk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_timer_expire_entry, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %timer, i32 noundef %baseclk) #15
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_timer_expire_exit(ptr nocapture readnone %__data, ptr noundef %timer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_timer_expire_exit, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %timer) #15
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_timer_cancel(ptr nocapture readnone %__data, ptr noundef %timer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_timer_cancel, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %timer) #15
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_hrtimer_init(ptr nocapture readnone %__data, ptr noundef %hrtimer, i32 noundef %clockid, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_hrtimer_init, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %hrtimer, i32 noundef %clockid, i32 noundef %mode) #15
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_hrtimer_start(ptr nocapture readnone %__data, ptr noundef %hrtimer, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_hrtimer_start, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %hrtimer, i32 noundef %mode) #15
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_hrtimer_expire_entry(ptr nocapture readnone %__data, ptr noundef %hrtimer, ptr noundef %now) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_hrtimer_expire_entry, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %hrtimer, ptr noundef %now) #15
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_hrtimer_expire_exit(ptr nocapture readnone %__data, ptr noundef %hrtimer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_hrtimer_expire_exit, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %hrtimer) #15
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_hrtimer_cancel(ptr nocapture readnone %__data, ptr noundef %hrtimer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_hrtimer_cancel, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %hrtimer) #15
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_itimer_state(ptr nocapture readnone %__data, i32 noundef %which, ptr noundef %value, i64 noundef %expires) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_itimer_state, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, i32 noundef %which, ptr noundef %value, i64 noundef %expires) #15
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_itimer_expire(ptr nocapture readnone %__data, i32 noundef %which, ptr noundef %pid, i64 noundef %now) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_itimer_expire, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, i32 noundef %which, ptr noundef %pid, i64 noundef %now) #15
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_tick_stop(ptr nocapture readnone %__data, i32 noundef %success, i32 noundef %dependency) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_tick_stop, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, i32 noundef %success, i32 noundef %dependency) #15
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_timer_class(ptr noundef %__data, ptr noundef %timer) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #15
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !390

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !391

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #15
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 12) #15
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %timer6 = getelementptr inbounds %struct.trace_event_raw_timer_class, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %timer6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %timer, ptr %timer6, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_timer_class(ptr noundef %__data, ptr noundef %timer) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #15
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !392
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #15
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !392
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #15
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #15
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #15
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !380) #15
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %timer17 = getelementptr inbounds %struct.trace_event_raw_timer_class, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %timer17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %timer, ptr %timer17, align 4
  %28 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rctx, align 4
  %30 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 12, i32 noundef %29, ptr noundef %__data, i64 noundef 1, ptr noundef %31, ptr noundef %11, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_timer_start(ptr noundef %__data, ptr noundef %timer, i32 noundef %expires, i32 noundef %flags) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #15
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !390

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !391

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #15
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 28) #15
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %timer6 = getelementptr inbounds %struct.trace_event_raw_timer_start, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %timer6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %timer, ptr %timer6, align 4
  %function = getelementptr inbounds %struct.timer_list, ptr %timer, i32 0, i32 2
  %4 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %function, align 4
  %function7 = getelementptr inbounds %struct.trace_event_raw_timer_start, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %function7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %function7, align 4
  %expires8 = getelementptr inbounds %struct.trace_event_raw_timer_start, ptr %call3, i32 0, i32 3
  %7 = ptrtoint ptr %expires8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %expires, ptr %expires8, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %now = getelementptr inbounds %struct.trace_event_raw_timer_start, ptr %call3, i32 0, i32 4
  %9 = ptrtoint ptr %now to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %now, align 4
  %flags9 = getelementptr inbounds %struct.trace_event_raw_timer_start, ptr %call3, i32 0, i32 5
  %10 = ptrtoint ptr %flags9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %flags, ptr %flags9, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_timer_start(ptr noundef %__data, ptr noundef %timer, i32 noundef %expires, i32 noundef %flags) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #15
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !392
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #15
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !392
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #15
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #15
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #15
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !380) #15
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %timer17 = getelementptr inbounds %struct.trace_event_raw_timer_start, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %timer17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %timer, ptr %timer17, align 4
  %function = getelementptr inbounds %struct.timer_list, ptr %timer, i32 0, i32 2
  %28 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %function, align 4
  %function18 = getelementptr inbounds %struct.trace_event_raw_timer_start, ptr %call13, i32 0, i32 2
  %30 = ptrtoint ptr %function18 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %function18, align 4
  %expires19 = getelementptr inbounds %struct.trace_event_raw_timer_start, ptr %call13, i32 0, i32 3
  %31 = ptrtoint ptr %expires19 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %expires, ptr %expires19, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %now = getelementptr inbounds %struct.trace_event_raw_timer_start, ptr %call13, i32 0, i32 4
  %33 = ptrtoint ptr %now to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %now, align 4
  %flags20 = getelementptr inbounds %struct.trace_event_raw_timer_start, ptr %call13, i32 0, i32 5
  %34 = ptrtoint ptr %flags20 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %flags, ptr %flags20, align 4
  %35 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rctx, align 4
  %37 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %36, ptr noundef %__data, i64 noundef 1, ptr noundef %38, ptr noundef %11, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_timer_expire_entry(ptr noundef %__data, ptr noundef %timer, i32 noundef %baseclk) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #15
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !390

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !391

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #15
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 24) #15
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %timer6 = getelementptr inbounds %struct.trace_event_raw_timer_expire_entry, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %timer6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %timer, ptr %timer6, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %now = getelementptr inbounds %struct.trace_event_raw_timer_expire_entry, ptr %call3, i32 0, i32 2
  %5 = ptrtoint ptr %now to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %now, align 4
  %function = getelementptr inbounds %struct.timer_list, ptr %timer, i32 0, i32 2
  %6 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %function, align 4
  %function7 = getelementptr inbounds %struct.trace_event_raw_timer_expire_entry, ptr %call3, i32 0, i32 3
  %8 = ptrtoint ptr %function7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %function7, align 4
  %baseclk8 = getelementptr inbounds %struct.trace_event_raw_timer_expire_entry, ptr %call3, i32 0, i32 4
  %9 = ptrtoint ptr %baseclk8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %baseclk, ptr %baseclk8, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_timer_expire_entry(ptr noundef %__data, ptr noundef %timer, i32 noundef %baseclk) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #15
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !392
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #15
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !392
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #15
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #15
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #15
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !380) #15
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %timer17 = getelementptr inbounds %struct.trace_event_raw_timer_expire_entry, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %timer17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %timer, ptr %timer17, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %now = getelementptr inbounds %struct.trace_event_raw_timer_expire_entry, ptr %call13, i32 0, i32 2
  %29 = ptrtoint ptr %now to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %now, align 4
  %function = getelementptr inbounds %struct.timer_list, ptr %timer, i32 0, i32 2
  %30 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %function, align 4
  %function18 = getelementptr inbounds %struct.trace_event_raw_timer_expire_entry, ptr %call13, i32 0, i32 3
  %32 = ptrtoint ptr %function18 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %function18, align 4
  %baseclk19 = getelementptr inbounds %struct.trace_event_raw_timer_expire_entry, ptr %call13, i32 0, i32 4
  %33 = ptrtoint ptr %baseclk19 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %baseclk, ptr %baseclk19, align 4
  %34 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rctx, align 4
  %36 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %35, ptr noundef %__data, i64 noundef 1, ptr noundef %37, ptr noundef %11, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_hrtimer_init(ptr noundef %__data, ptr noundef %hrtimer, i32 noundef %clockid, i32 noundef %mode) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #15
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !390

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !391

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #15
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 20) #15
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %hrtimer6 = getelementptr inbounds %struct.trace_event_raw_hrtimer_init, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %hrtimer6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %hrtimer, ptr %hrtimer6, align 4
  %clockid7 = getelementptr inbounds %struct.trace_event_raw_hrtimer_init, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %clockid7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %clockid, ptr %clockid7, align 4
  %mode8 = getelementptr inbounds %struct.trace_event_raw_hrtimer_init, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %mode8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %mode, ptr %mode8, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_hrtimer_init(ptr noundef %__data, ptr noundef %hrtimer, i32 noundef %clockid, i32 noundef %mode) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #15
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !392
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #15
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !392
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #15
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #15
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #15
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !380) #15
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %hrtimer17 = getelementptr inbounds %struct.trace_event_raw_hrtimer_init, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %hrtimer17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %hrtimer, ptr %hrtimer17, align 4
  %clockid18 = getelementptr inbounds %struct.trace_event_raw_hrtimer_init, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %clockid18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %clockid, ptr %clockid18, align 4
  %mode19 = getelementptr inbounds %struct.trace_event_raw_hrtimer_init, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %mode19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %mode, ptr %mode19, align 4
  %30 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rctx, align 4
  %32 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %31, ptr noundef %__data, i64 noundef 1, ptr noundef %33, ptr noundef %11, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_hrtimer_start(ptr noundef %__data, ptr noundef %hrtimer, i32 noundef %mode) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #15
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !390

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !391

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #15
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 40) #15
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %hrtimer6 = getelementptr inbounds %struct.trace_event_raw_hrtimer_start, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %hrtimer6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %hrtimer, ptr %hrtimer6, align 8
  %function = getelementptr inbounds %struct.hrtimer, ptr %hrtimer, i32 0, i32 2
  %4 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %function, align 8
  %function7 = getelementptr inbounds %struct.trace_event_raw_hrtimer_start, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %function7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %function7, align 4
  %expires.i = getelementptr inbounds %struct.timerqueue_node, ptr %hrtimer, i32 0, i32 1
  %7 = ptrtoint ptr %expires.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %expires.i, align 8
  %expires = getelementptr inbounds %struct.trace_event_raw_hrtimer_start, ptr %call3, i32 0, i32 3
  %9 = ptrtoint ptr %expires to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %expires, align 8
  %_softexpires.i = getelementptr inbounds %struct.hrtimer, ptr %hrtimer, i32 0, i32 1
  %10 = ptrtoint ptr %_softexpires.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %_softexpires.i, align 8
  %softexpires = getelementptr inbounds %struct.trace_event_raw_hrtimer_start, ptr %call3, i32 0, i32 4
  %12 = ptrtoint ptr %softexpires to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %softexpires, align 8
  %mode10 = getelementptr inbounds %struct.trace_event_raw_hrtimer_start, ptr %call3, i32 0, i32 5
  %13 = ptrtoint ptr %mode10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mode, ptr %mode10, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_hrtimer_start(ptr noundef %__data, ptr noundef %hrtimer, i32 noundef %mode) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #15
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !392
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #15
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !392
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #15
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #15
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #15
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !380) #15
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %hrtimer17 = getelementptr inbounds %struct.trace_event_raw_hrtimer_start, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %hrtimer17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %hrtimer, ptr %hrtimer17, align 8
  %function = getelementptr inbounds %struct.hrtimer, ptr %hrtimer, i32 0, i32 2
  %28 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %function, align 8
  %function18 = getelementptr inbounds %struct.trace_event_raw_hrtimer_start, ptr %call13, i32 0, i32 2
  %30 = ptrtoint ptr %function18 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %function18, align 4
  %expires.i = getelementptr inbounds %struct.timerqueue_node, ptr %hrtimer, i32 0, i32 1
  %31 = ptrtoint ptr %expires.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %expires.i, align 8
  %expires = getelementptr inbounds %struct.trace_event_raw_hrtimer_start, ptr %call13, i32 0, i32 3
  %33 = ptrtoint ptr %expires to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %expires, align 8
  %_softexpires.i = getelementptr inbounds %struct.hrtimer, ptr %hrtimer, i32 0, i32 1
  %34 = ptrtoint ptr %_softexpires.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %_softexpires.i, align 8
  %softexpires = getelementptr inbounds %struct.trace_event_raw_hrtimer_start, ptr %call13, i32 0, i32 4
  %36 = ptrtoint ptr %softexpires to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %softexpires, align 8
  %mode21 = getelementptr inbounds %struct.trace_event_raw_hrtimer_start, ptr %call13, i32 0, i32 5
  %37 = ptrtoint ptr %mode21 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %mode, ptr %mode21, align 8
  %38 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rctx, align 4
  %40 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %39, ptr noundef %__data, i64 noundef 1, ptr noundef %41, ptr noundef %11, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_hrtimer_expire_entry(ptr noundef %__data, ptr noundef %hrtimer, ptr nocapture noundef readonly %now) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #15
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !390

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !391

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #15
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 32) #15
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %hrtimer6 = getelementptr inbounds %struct.trace_event_raw_hrtimer_expire_entry, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %hrtimer6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %hrtimer, ptr %hrtimer6, align 8
  %4 = ptrtoint ptr %now to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %now, align 8
  %now7 = getelementptr inbounds %struct.trace_event_raw_hrtimer_expire_entry, ptr %call3, i32 0, i32 2
  %6 = ptrtoint ptr %now7 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %now7, align 8
  %function = getelementptr inbounds %struct.hrtimer, ptr %hrtimer, i32 0, i32 2
  %7 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %function, align 8
  %function8 = getelementptr inbounds %struct.trace_event_raw_hrtimer_expire_entry, ptr %call3, i32 0, i32 3
  %9 = ptrtoint ptr %function8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %function8, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_hrtimer_expire_entry(ptr noundef %__data, ptr noundef %hrtimer, ptr nocapture noundef readonly %now) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #15
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !392
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #15
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !392
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #15
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #15
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #15
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !380) #15
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %hrtimer17 = getelementptr inbounds %struct.trace_event_raw_hrtimer_expire_entry, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %hrtimer17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %hrtimer, ptr %hrtimer17, align 8
  %28 = ptrtoint ptr %now to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %now, align 8
  %now18 = getelementptr inbounds %struct.trace_event_raw_hrtimer_expire_entry, ptr %call13, i32 0, i32 2
  %30 = ptrtoint ptr %now18 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %now18, align 8
  %function = getelementptr inbounds %struct.hrtimer, ptr %hrtimer, i32 0, i32 2
  %31 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %function, align 8
  %function19 = getelementptr inbounds %struct.trace_event_raw_hrtimer_expire_entry, ptr %call13, i32 0, i32 3
  %33 = ptrtoint ptr %function19 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %function19, align 8
  %34 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rctx, align 4
  %36 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 36, i32 noundef %35, ptr noundef %__data, i64 noundef 1, ptr noundef %37, ptr noundef %11, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_hrtimer_class(ptr noundef %__data, ptr noundef %hrtimer) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #15
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !390

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !391

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #15
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 12) #15
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %hrtimer6 = getelementptr inbounds %struct.trace_event_raw_hrtimer_class, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %hrtimer6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %hrtimer, ptr %hrtimer6, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_hrtimer_class(ptr noundef %__data, ptr noundef %hrtimer) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #15
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !392
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #15
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !392
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #15
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #15
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #15
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !380) #15
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %hrtimer17 = getelementptr inbounds %struct.trace_event_raw_hrtimer_class, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %hrtimer17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %hrtimer, ptr %hrtimer17, align 4
  %28 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rctx, align 4
  %30 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 12, i32 noundef %29, ptr noundef %__data, i64 noundef 1, ptr noundef %31, ptr noundef %11, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_itimer_state(ptr noundef %__data, i32 noundef %which, ptr nocapture noundef readonly %value, i64 noundef %expires) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #15
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !390

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !391

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #15
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 40) #15
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %which6 = getelementptr inbounds %struct.trace_event_raw_itimer_state, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %which6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %which, ptr %which6, align 8
  %expires7 = getelementptr inbounds %struct.trace_event_raw_itimer_state, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %expires7 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %expires, ptr %expires7, align 8
  %it_value = getelementptr inbounds %struct.itimerspec64, ptr %value, i32 0, i32 1
  %5 = ptrtoint ptr %it_value to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %it_value, align 8
  %conv = trunc i64 %6 to i32
  %value_sec = getelementptr inbounds %struct.trace_event_raw_itimer_state, ptr %call3, i32 0, i32 3
  %7 = ptrtoint ptr %value_sec to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %value_sec, align 8
  %tv_nsec = getelementptr inbounds %struct.itimerspec64, ptr %value, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tv_nsec, align 8
  %value_nsec = getelementptr inbounds %struct.trace_event_raw_itimer_state, ptr %call3, i32 0, i32 4
  %10 = ptrtoint ptr %value_nsec to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %value_nsec, align 4
  %11 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %value, align 8
  %conv10 = trunc i64 %12 to i32
  %interval_sec = getelementptr inbounds %struct.trace_event_raw_itimer_state, ptr %call3, i32 0, i32 5
  %13 = ptrtoint ptr %interval_sec to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv10, ptr %interval_sec, align 8
  %tv_nsec12 = getelementptr inbounds %struct.timespec64, ptr %value, i32 0, i32 1
  %14 = ptrtoint ptr %tv_nsec12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tv_nsec12, align 8
  %interval_nsec = getelementptr inbounds %struct.trace_event_raw_itimer_state, ptr %call3, i32 0, i32 6
  %16 = ptrtoint ptr %interval_nsec to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %interval_nsec, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_itimer_state(ptr noundef %__data, i32 noundef %which, ptr nocapture noundef readonly %value, i64 noundef %expires) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #15
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !392
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #15
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !392
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #15
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #15
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #15
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !380) #15
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %which17 = getelementptr inbounds %struct.trace_event_raw_itimer_state, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %which17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %which, ptr %which17, align 8
  %expires18 = getelementptr inbounds %struct.trace_event_raw_itimer_state, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %expires18 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %expires, ptr %expires18, align 8
  %it_value = getelementptr inbounds %struct.itimerspec64, ptr %value, i32 0, i32 1
  %29 = ptrtoint ptr %it_value to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %it_value, align 8
  %conv = trunc i64 %30 to i32
  %value_sec = getelementptr inbounds %struct.trace_event_raw_itimer_state, ptr %call13, i32 0, i32 3
  %31 = ptrtoint ptr %value_sec to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv, ptr %value_sec, align 8
  %tv_nsec = getelementptr inbounds %struct.itimerspec64, ptr %value, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tv_nsec, align 8
  %value_nsec = getelementptr inbounds %struct.trace_event_raw_itimer_state, ptr %call13, i32 0, i32 4
  %34 = ptrtoint ptr %value_nsec to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %value_nsec, align 4
  %35 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %value, align 8
  %conv21 = trunc i64 %36 to i32
  %interval_sec = getelementptr inbounds %struct.trace_event_raw_itimer_state, ptr %call13, i32 0, i32 5
  %37 = ptrtoint ptr %interval_sec to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv21, ptr %interval_sec, align 8
  %tv_nsec23 = getelementptr inbounds %struct.timespec64, ptr %value, i32 0, i32 1
  %38 = ptrtoint ptr %tv_nsec23 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tv_nsec23, align 8
  %interval_nsec = getelementptr inbounds %struct.trace_event_raw_itimer_state, ptr %call13, i32 0, i32 6
  %40 = ptrtoint ptr %interval_nsec to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %interval_nsec, align 4
  %41 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rctx, align 4
  %43 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %42, ptr noundef %__data, i64 noundef 1, ptr noundef %44, ptr noundef %11, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_itimer_expire(ptr noundef %__data, i32 noundef %which, ptr noundef readonly %pid, i64 noundef %now) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #15
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !390

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !391

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #15
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 24) #15
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %which6 = getelementptr inbounds %struct.trace_event_raw_itimer_expire, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %which6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %which, ptr %which6, align 8
  %now7 = getelementptr inbounds %struct.trace_event_raw_itimer_expire, ptr %call3, i32 0, i32 3
  %4 = ptrtoint ptr %now7 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %now, ptr %now7, align 8
  %tobool.not.i21 = icmp eq ptr %pid, null
  br i1 %tobool.not.i21, label %if.end5.pid_nr.exit_crit_edge, label %if.then.i

if.end5.pid_nr.exit_crit_edge:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %pid_nr.exit

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %numbers.i = getelementptr inbounds %struct.pid, ptr %pid, i32 0, i32 7
  %5 = ptrtoint ptr %numbers.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %numbers.i, align 4
  br label %pid_nr.exit

pid_nr.exit:                                      ; preds = %if.then.i, %if.end5.pid_nr.exit_crit_edge
  %nr.0.i = phi i32 [ %6, %if.then.i ], [ 0, %if.end5.pid_nr.exit_crit_edge ]
  %pid9 = getelementptr inbounds %struct.trace_event_raw_itimer_expire, ptr %call3, i32 0, i32 2
  %7 = ptrtoint ptr %pid9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %nr.0.i, ptr %pid9, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #15
  br label %cleanup

cleanup:                                          ; preds = %pid_nr.exit, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_itimer_expire(ptr noundef %__data, i32 noundef %which, ptr noundef readonly %pid, i64 noundef %now) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #15
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !392
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #15
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !392
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #15
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #15
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #15
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !380) #15
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %which17 = getelementptr inbounds %struct.trace_event_raw_itimer_expire, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %which17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %which, ptr %which17, align 8
  %now18 = getelementptr inbounds %struct.trace_event_raw_itimer_expire, ptr %call13, i32 0, i32 3
  %28 = ptrtoint ptr %now18 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %now, ptr %now18, align 8
  %tobool.not.i44 = icmp eq ptr %pid, null
  br i1 %tobool.not.i44, label %if.end16.pid_nr.exit_crit_edge, label %if.then.i

if.end16.pid_nr.exit_crit_edge:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %pid_nr.exit

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  %numbers.i = getelementptr inbounds %struct.pid, ptr %pid, i32 0, i32 7
  %29 = ptrtoint ptr %numbers.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %numbers.i, align 4
  br label %pid_nr.exit

pid_nr.exit:                                      ; preds = %if.then.i, %if.end16.pid_nr.exit_crit_edge
  %nr.0.i = phi i32 [ %30, %if.then.i ], [ 0, %if.end16.pid_nr.exit_crit_edge ]
  %pid20 = getelementptr inbounds %struct.trace_event_raw_itimer_expire, ptr %call13, i32 0, i32 2
  %31 = ptrtoint ptr %pid20 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %nr.0.i, ptr %pid20, align 4
  %32 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rctx, align 4
  %34 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %33, ptr noundef %__data, i64 noundef 1, ptr noundef %35, ptr noundef %11, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %pid_nr.exit, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_tick_stop(ptr noundef %__data, i32 noundef %success, i32 noundef %dependency) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #15
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !390

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !391

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #15
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 16) #15
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %success6 = getelementptr inbounds %struct.trace_event_raw_tick_stop, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %success6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %success, ptr %success6, align 4
  %dependency7 = getelementptr inbounds %struct.trace_event_raw_tick_stop, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %dependency7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %dependency, ptr %dependency7, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_tick_stop(ptr noundef %__data, i32 noundef %success, i32 noundef %dependency) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #15
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !392
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #15
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !392
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #15
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #15
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #15
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !380) #15
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %success17 = getelementptr inbounds %struct.trace_event_raw_tick_stop, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %success17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %success, ptr %success17, align 4
  %dependency18 = getelementptr inbounds %struct.trace_event_raw_tick_stop, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %dependency18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %dependency, ptr %dependency18, align 4
  %29 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rctx, align 4
  %31 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %30, ptr noundef %__data, i64 noundef 1, ptr noundef %32, ptr noundef %11, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_timer_class(ptr noundef %__data, ptr noundef %timer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %timer to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_timer_start(ptr noundef %__data, ptr noundef %timer, i32 noundef %expires, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %timer to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %expires to i64
  %conv8 = zext i32 %flags to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_timer_expire_entry(ptr noundef %__data, ptr noundef %timer, i32 noundef %baseclk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %timer to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %baseclk to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_hrtimer_init(ptr noundef %__data, ptr noundef %hrtimer, i32 noundef %clockid, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %hrtimer to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %clockid to i64
  %conv8 = zext i32 %mode to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_hrtimer_start(ptr noundef %__data, ptr noundef %hrtimer, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %hrtimer to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %mode to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_hrtimer_expire_entry(ptr noundef %__data, ptr noundef %hrtimer, ptr noundef %now) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %hrtimer to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %now to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_hrtimer_class(ptr noundef %__data, ptr noundef %hrtimer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %hrtimer to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_itimer_state(ptr noundef %__data, i32 noundef %which, ptr noundef %value, i64 noundef %expires) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %conv = zext i32 %which to i64
  %0 = ptrtoint ptr %value to i32
  %conv4 = zext i32 %0 to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %expires) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_itimer_expire(ptr noundef %__data, i32 noundef %which, ptr noundef %pid, i64 noundef %now) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %conv = zext i32 %which to i64
  %0 = ptrtoint ptr %pid to i32
  %conv4 = zext i32 %0 to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %now) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_tick_stop(ptr noundef %__data, i32 noundef %success, i32 noundef %dependency) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %conv = zext i32 %success to i64
  %conv4 = zext i32 %dependency to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @timers_update_nohz() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef nonnull @timer_update_work) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @timer_migration_handler(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @timer_keys_mutex, i32 noundef 0) #15
  %call = tail call i32 @proc_dointvec_minmax(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp ne i32 %call, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool1.not = icmp eq i32 %write, 0
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  %0 = load i32, ptr @sysctl_timer_migration, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %if.then.if.else.i_crit_edge, label %land.lhs.true.i

if.then.if.else.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tick_nohz_active to i32))
  %1 = load i32, ptr @tick_nohz_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not.i = icmp eq i32 %1, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @static_key_enable(ptr noundef nonnull @timers_migration_enabled) #15
  br label %if.end

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then.if.else.i_crit_edge
  tail call void @static_key_disable(ptr noundef nonnull @timers_migration_enabled) #15
  br label %if.end

if.end:                                           ; preds = %if.else.i, %if.then.i, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @timer_keys_mutex) #15
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @__round_jiffies(i32 noundef %j, i32 noundef %cpu) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mul.i = mul i32 %cpu, 3
  %add.i = add i32 %mul.i, %j
  %rem1.i = urem i32 %add.i, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %rem1.i)
  %cmp.i = icmp ugt i32 %rem1.i, 24
  %sub2.i = sub i32 %add.i, %rem1.i
  %add3.i = add i32 %sub2.i, 100
  %j.addr.0.i = select i1 %cmp.i, i32 %add3.i, i32 %sub2.i
  %sub5.i = sub i32 %j.addr.0.i, %mul.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %sub6.i = sub i32 %0, %sub5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub6.i)
  %cmp7.i = icmp slt i32 %sub6.i, 0
  %cond.i = select i1 %cmp7.i, i32 %sub5.i, i32 %j
  ret i32 %cond.i
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @__round_jiffies_relative(i32 noundef %j, i32 noundef %cpu) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, %j
  %mul.i = mul i32 %cpu, 3
  %add.i = add i32 %add, %mul.i
  %rem1.i = urem i32 %add.i, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %rem1.i)
  %cmp.i = icmp ugt i32 %rem1.i, 24
  %sub2.i = sub i32 %add.i, %rem1.i
  %add3.i = add i32 %sub2.i, 100
  %j.addr.0.i = select i1 %cmp.i, i32 %add3.i, i32 %sub2.i
  %sub5.i = sub i32 %j.addr.0.i, %mul.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %sub6.i = sub i32 %1, %sub5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub6.i)
  %cmp7.i = icmp slt i32 %sub6.i, 0
  %cond.i = select i1 %cmp7.i, i32 %sub5.i, i32 %add
  %sub = sub i32 %cond.i, %0
  ret i32 %sub
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @round_jiffies(i32 noundef %j) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %mul.i = mul i32 %3, 3
  %add.i = add i32 %mul.i, %j
  %rem1.i = urem i32 %add.i, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %rem1.i)
  %cmp.i = icmp ugt i32 %rem1.i, 24
  %sub2.i = sub i32 %add.i, %rem1.i
  %add3.i = add i32 %sub2.i, 100
  %j.addr.0.i = select i1 %cmp.i, i32 %add3.i, i32 %sub2.i
  %sub5.i = sub i32 %j.addr.0.i, %mul.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub6.i = sub i32 %4, %sub5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub6.i)
  %cmp7.i = icmp slt i32 %sub6.i, 0
  %cond.i = select i1 %cmp7.i, i32 %sub5.i, i32 %j
  ret i32 %cond.i
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @round_jiffies_relative(i32 noundef %j) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %4, %j
  %mul.i.i = mul i32 %3, 3
  %add.i.i = add i32 %add.i, %mul.i.i
  %rem1.i.i = urem i32 %add.i.i, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %rem1.i.i)
  %cmp.i.i = icmp ugt i32 %rem1.i.i, 24
  %sub2.i.i = sub i32 %add.i.i, %rem1.i.i
  %add3.i.i = add i32 %sub2.i.i, 100
  %j.addr.0.i.i = select i1 %cmp.i.i, i32 %add3.i.i, i32 %sub2.i.i
  %sub5.i.i = sub i32 %j.addr.0.i.i, %mul.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %sub6.i.i = sub i32 %5, %sub5.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub6.i.i)
  %cmp7.i.i = icmp slt i32 %sub6.i.i, 0
  %cond.i.i = select i1 %cmp7.i.i, i32 %sub5.i.i, i32 %add.i
  %sub.i = sub i32 %cond.i.i, %4
  ret i32 %sub.i
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @__round_jiffies_up(i32 noundef %j, i32 noundef %cpu) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mul.i = mul i32 %cpu, 3
  %add.i = add i32 %mul.i, %j
  %rem1.i = urem i32 %add.i, 100
  %0 = add i32 %j, 100
  %sub5.i = sub i32 %0, %rem1.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %sub6.i = sub i32 %1, %sub5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub6.i)
  %cmp7.i = icmp slt i32 %sub6.i, 0
  %cond.i = select i1 %cmp7.i, i32 %sub5.i, i32 %j
  ret i32 %cond.i
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @__round_jiffies_up_relative(i32 noundef %j, i32 noundef %cpu) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, %j
  %mul.i = mul i32 %cpu, 3
  %add.i = add i32 %add, %mul.i
  %rem1.i = urem i32 %add.i, 100
  %1 = add i32 %add, 100
  %sub5.i = sub i32 %1, %rem1.i
  %2 = load volatile i32, ptr @jiffies, align 128
  %sub6.i = sub i32 %2, %sub5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub6.i)
  %cmp7.i = icmp slt i32 %sub6.i, 0
  %cond.i = select i1 %cmp7.i, i32 %sub5.i, i32 %add
  %sub = sub i32 %cond.i, %0
  ret i32 %sub
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @round_jiffies_up(i32 noundef %j) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %mul.i = mul i32 %3, 3
  %add.i = add i32 %mul.i, %j
  %rem1.i = urem i32 %add.i, 100
  %4 = add i32 %j, 100
  %sub5.i = sub i32 %4, %rem1.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %sub6.i = sub i32 %5, %sub5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub6.i)
  %cmp7.i = icmp slt i32 %sub6.i, 0
  %cond.i = select i1 %cmp7.i, i32 %sub5.i, i32 %j
  ret i32 %cond.i
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @round_jiffies_up_relative(i32 noundef %j) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %4, %j
  %mul.i.i = mul i32 %3, 3
  %add.i.i = add i32 %add.i, %mul.i.i
  %rem1.i.i = urem i32 %add.i.i, 100
  %5 = add i32 %add.i, 100
  %sub5.i.i = sub i32 %5, %rem1.i.i
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub6.i.i = sub i32 %6, %sub5.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub6.i.i)
  %cmp7.i.i = icmp slt i32 %sub6.i.i, 0
  %cond.i.i = select i1 %cmp7.i.i, i32 %sub5.i.i, i32 %add.i
  %sub.i = sub i32 %cond.i.i, %4
  ret i32 %sub.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @init_timer_on_stack_key(ptr noundef %timer, ptr noundef %func, i32 noundef %flags, ptr noundef %name, ptr noundef %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @debug_object_init_on_stack(ptr noundef %timer, ptr noundef nonnull @timer_debug_descr) #15
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %timer, i32 0, i32 1
  %0 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %pprev.i, align 4
  %function.i = getelementptr inbounds %struct.timer_list, ptr %timer, i32 0, i32 2
  %1 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %func, ptr %function.i, align 4
  %and.i = and i32 %flags, -3670017
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.do_init_timer.exit_crit_edge, label %land.rhs.i

entry.do_init_timer.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do_init_timer.exit

land.rhs.i:                                       ; preds = %entry
  %.b49.i = load i1, ptr @do_init_timer.__already_done, align 1
  br i1 %.b49.i, label %land.rhs.i.do_init_timer.exit_crit_edge, label %if.then.i, !prof !390

land.rhs.i.do_init_timer.exit_crit_edge:          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do_init_timer.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @do_init_timer.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 794, i32 noundef 9, ptr noundef null) #15
  br label %do_init_timer.exit

do_init_timer.exit:                               ; preds = %if.then.i, %land.rhs.i.do_init_timer.exit_crit_edge, %entry.do_init_timer.exit_crit_edge
  %and39.i = and i32 %flags, 3670016
  %2 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu.i, align 4
  %or.i = or i32 %5, %and39.i
  %flags41.i = getelementptr inbounds %struct.timer_list, ptr %timer, i32 0, i32 3
  %6 = ptrtoint ptr %flags41.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or.i, ptr %flags41.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.timer_list, ptr %timer, i32 0, i32 4
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef %name, ptr noundef %key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_object_init_on_stack(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @destroy_timer_on_stack(ptr noundef %timer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @debug_object_free(ptr noundef %timer, ptr noundef nonnull @timer_debug_descr) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_object_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @init_timer_key(ptr noundef %timer, ptr noundef %func, i32 noundef %flags, ptr noundef %name, ptr noundef %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @debug_object_init(ptr noundef %timer, ptr noundef nonnull @timer_debug_descr) #15
  tail call fastcc void @trace_timer_init(ptr noundef %timer) #15
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %timer, i32 0, i32 1
  %0 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %pprev.i, align 4
  %function.i = getelementptr inbounds %struct.timer_list, ptr %timer, i32 0, i32 2
  %1 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %func, ptr %function.i, align 4
  %and.i = and i32 %flags, -3670017
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.do_init_timer.exit_crit_edge, label %land.rhs.i

entry.do_init_timer.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do_init_timer.exit

land.rhs.i:                                       ; preds = %entry
  %.b49.i = load i1, ptr @do_init_timer.__already_done, align 1
  br i1 %.b49.i, label %land.rhs.i.do_init_timer.exit_crit_edge, label %if.then.i, !prof !390

land.rhs.i.do_init_timer.exit_crit_edge:          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do_init_timer.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @do_init_timer.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 794, i32 noundef 9, ptr noundef null) #15
  br label %do_init_timer.exit

do_init_timer.exit:                               ; preds = %if.then.i, %land.rhs.i.do_init_timer.exit_crit_edge, %entry.do_init_timer.exit_crit_edge
  %and39.i = and i32 %flags, 3670016
  %2 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu.i, align 4
  %or.i = or i32 %5, %and39.i
  %flags41.i = getelementptr inbounds %struct.timer_list, ptr %timer, i32 0, i32 3
  %6 = ptrtoint ptr %flags41.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or.i, ptr %flags41.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.timer_list, ptr %timer, i32 0, i32 4
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef %name, ptr noundef %key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_timer_pending(ptr noundef %timer, i32 noundef %expires) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__mod_timer(ptr noundef %timer, i32 noundef %expires, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__mod_timer(ptr noundef %timer, i32 noundef %expires, i32 noundef %options) unnamed_addr #5 align 64 {
entry:
  %bucket_expiry = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bucket_expiry) #15
  %0 = ptrtoint ptr %bucket_expiry to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %bucket_expiry, align 4, !annotation !392
  %function = getelementptr inbounds %struct.timer_list, ptr %timer, i32 0, i32 2
  %1 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %function, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !391

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/time/timer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 967, 0\0A.popsection", ""() #15, !srcloc !393
  unreachable

do.end9:                                          ; preds = %entry
  %and = and i32 %options, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %land.lhs.true, label %do.end9.if.else51_crit_edge

do.end9.if.else51_crit_edge:                      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else51

land.lhs.true:                                    ; preds = %do.end9
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %timer, i32 0, i32 1
  %3 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %4, null
  br i1 %tobool.not.i.i.not, label %land.lhs.true.if.else51_crit_edge, label %if.then12

land.lhs.true.if.else51_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else51

if.then12:                                        ; preds = %land.lhs.true
  %expires13 = getelementptr inbounds %struct.timer_list, ptr %timer, i32 0, i32 1
  %5 = ptrtoint ptr %expires13 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %expires13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %expires)
  %tobool14.not = icmp eq i32 %6, %expires
  br i1 %tobool14.not, label %if.then12.cleanup103_crit_edge, label %if.end16

if.then12.cleanup103_crit_edge:                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup103

if.end16:                                         ; preds = %if.then12
  %sub = sub i32 %6, %expires
  %and17 = and i32 %options, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %tobool18.not.not = xor i1 %tobool18.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp = icmp slt i32 %sub, 1
  %or.cond = select i1 %tobool18.not.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.end16.cleanup103_crit_edge, label %if.end21

if.end16.cleanup103_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup103

if.end21:                                         ; preds = %if.end16
  %flags1.i = getelementptr inbounds %struct.timer_list, ptr %timer, i32 0, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %cleanup.i, %if.end21
  %7 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags1.i, align 4
  %and.i = and i32 %8, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.cond.i.cleanup.i_crit_edge

for.cond.i.cleanup.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i

if.then.i:                                        ; preds = %for.cond.i
  %and.i.i = and i32 %8, 262143
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %and.i.i
  %9 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %8, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %spec.select.v.i.i.i = select i1 %tobool.not.i.i.i, i32 ptrtoint (ptr @timer_bases to i32), i32 ptrtoint (ptr getelementptr inbounds ([2 x %struct.timer_base], ptr @timer_bases, i32 0, i32 1) to i32)
  %spec.select.i.i.i = add i32 %10, %spec.select.v.i.i.i
  %base.0.i.i.i = inttoptr i32 %spec.select.i.i.i to ptr
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %base.0.i.i.i) #15
  %11 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %8)
  %cmp8.i = icmp eq i32 %12, %8
  br i1 %cmp8.i, label %lock_timer_base.exit, label %do.body11.i

do.body11.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %base.0.i.i.i, i32 noundef %call4.i) #15
  br label %cleanup.i

cleanup.i:                                        ; preds = %do.body11.i, %for.cond.i.cleanup.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !394
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !395
  br label %for.cond.i

lock_timer_base.exit:                             ; preds = %if.then.i
  %base.0.i.i.i.le = inttoptr i32 %spec.select.i.i.i to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %clk.i = getelementptr inbounds %struct.timer_base, ptr %base.0.i.i.i.le, i32 0, i32 2
  %14 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %clk.i, align 16
  %sub.i = sub i32 %13, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 1
  br i1 %cmp.i, label %lock_timer_base.exit.forward_timer_base.exit_crit_edge, label %if.end.i

lock_timer_base.exit.forward_timer_base.exit_crit_edge: ; preds = %lock_timer_base.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %forward_timer_base.exit

if.end.i:                                         ; preds = %lock_timer_base.exit
  %next_expiry.i = getelementptr inbounds %struct.timer_base, ptr %base.0.i.i.i.le, i32 0, i32 3
  %16 = ptrtoint ptr %next_expiry.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %next_expiry.i, align 4
  %sub1.i = sub i32 %13, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1.i)
  %cmp2.i = icmp slt i32 %sub1.i, 0
  br i1 %cmp2.i, label %if.end.i.if.end54.i_crit_edge, label %if.else.i

if.end.i.if.end54.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end54.i

if.else.i:                                        ; preds = %if.end.i
  %sub7.i = sub i32 %17, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub7.i)
  %cmp8.i161 = icmp slt i32 %sub7.i, 0
  br i1 %cmp8.i161, label %land.rhs.i, label %if.else.i.if.end54.i_crit_edge

if.else.i.if.end54.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end54.i

land.rhs.i:                                       ; preds = %if.else.i
  %.b65.i = load i1, ptr @forward_timer_base.__already_done, align 1
  br i1 %.b65.i, label %land.rhs.i.forward_timer_base.exit_crit_edge, label %if.then15.i, !prof !390

land.rhs.i.forward_timer_base.exit_crit_edge:     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %forward_timer_base.exit

if.then15.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @forward_timer_base.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 911, i32 noundef 9, ptr noundef null) #15
  br label %forward_timer_base.exit

if.end54.i:                                       ; preds = %if.else.i.if.end54.i_crit_edge, %if.end.i.if.end54.i_crit_edge
  %storemerge.i = phi i32 [ %13, %if.end.i.if.end54.i_crit_edge ], [ %17, %if.else.i.if.end54.i_crit_edge ]
  %18 = ptrtoint ptr %clk.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %storemerge.i, ptr %clk.i, align 16
  br label %forward_timer_base.exit

forward_timer_base.exit:                          ; preds = %if.end54.i, %if.then15.i, %land.rhs.i.forward_timer_base.exit_crit_edge, %lock_timer_base.exit.forward_timer_base.exit_crit_edge
  %19 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i164.not = icmp eq ptr %20, null
  %brmerge = or i1 %tobool18.not, %tobool.not.i.i164.not
  br i1 %brmerge, label %forward_timer_base.exit.if.end33_crit_edge, label %land.lhs.true28

forward_timer_base.exit.if.end33_crit_edge:       ; preds = %forward_timer_base.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

land.lhs.true28:                                  ; preds = %forward_timer_base.exit
  %21 = ptrtoint ptr %expires13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %expires13, align 4
  %sub30 = sub i32 %expires, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub30)
  %cmp31 = icmp sgt i32 %sub30, -1
  br i1 %cmp31, label %land.lhs.true28.do.body98_crit_edge, label %land.lhs.true28.if.end33_crit_edge

land.lhs.true28.if.end33_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

land.lhs.true28.do.body98_crit_edge:              ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body98

if.end33:                                         ; preds = %land.lhs.true28.if.end33_crit_edge, %forward_timer_base.exit.if.end33_crit_edge
  %23 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %clk.i, align 16
  %call35 = call fastcc i32 @calc_wheel_index(i32 noundef %expires, i32 noundef %24, ptr noundef nonnull %bucket_expiry)
  %25 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags1.i, align 4
  %shr.i = lshr i32 %26, 22
  call void @__sanitizer_cov_trace_cmp4(i32 %call35, i32 %shr.i)
  %cmp37 = icmp eq i32 %call35, %shr.i
  br i1 %cmp37, label %if.then38, label %if.end33.if.end53_crit_edge

if.end33.if.end53_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end53

if.then38:                                        ; preds = %if.end33
  br i1 %tobool18.not, label %if.then41, label %if.else

if.then41:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #17
  %27 = ptrtoint ptr %expires13 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %expires, ptr %expires13, align 4
  br label %do.body98

if.else:                                          ; preds = %if.then38
  %28 = ptrtoint ptr %expires13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %expires13, align 4
  %sub44 = sub i32 %expires, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub44)
  %cmp45 = icmp slt i32 %sub44, 0
  br i1 %cmp45, label %if.then46, label %if.else.do.body98_crit_edge

if.else.do.body98_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body98

if.then46:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %30 = ptrtoint ptr %expires13 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %expires, ptr %expires13, align 4
  br label %do.body98

if.else51:                                        ; preds = %land.lhs.true.if.else51_crit_edge, %do.end9.if.else51_crit_edge
  %flags1.i166 = getelementptr inbounds %struct.timer_list, ptr %timer, i32 0, i32 3
  br label %for.cond.i169

for.cond.i169:                                    ; preds = %cleanup.i181, %if.else51
  %31 = ptrtoint ptr %flags1.i166 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %flags1.i166, align 4
  %and.i167 = and i32 %32, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i167)
  %tobool.not.i168 = icmp eq i32 %and.i167, 0
  br i1 %tobool.not.i168, label %if.then.i179, label %for.cond.i169.cleanup.i181_crit_edge

for.cond.i169.cleanup.i181_crit_edge:             ; preds = %for.cond.i169
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i181

if.then.i179:                                     ; preds = %for.cond.i169
  %and.i.i170 = and i32 %32, 262143
  %arrayidx.i.i.i171 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %and.i.i170
  %33 = ptrtoint ptr %arrayidx.i.i.i171 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i.i.i171, align 4
  %and.i.i.i172 = and i32 %32, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i172)
  %tobool.not.i.i.i173 = icmp eq i32 %and.i.i.i172, 0
  %spec.select.v.i.i.i174 = select i1 %tobool.not.i.i.i173, i32 ptrtoint (ptr @timer_bases to i32), i32 ptrtoint (ptr getelementptr inbounds ([2 x %struct.timer_base], ptr @timer_bases, i32 0, i32 1) to i32)
  %spec.select.i.i.i175 = add i32 %34, %spec.select.v.i.i.i174
  %base.0.i.i.i176 = inttoptr i32 %spec.select.i.i.i175 to ptr
  %call4.i177 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %base.0.i.i.i176) #15
  %35 = ptrtoint ptr %flags1.i166 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags1.i166, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %32)
  %cmp8.i178 = icmp eq i32 %36, %32
  br i1 %cmp8.i178, label %lock_timer_base.exit183, label %do.body11.i180

do.body11.i180:                                   ; preds = %if.then.i179
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %base.0.i.i.i176, i32 noundef %call4.i177) #15
  br label %cleanup.i181

cleanup.i181:                                     ; preds = %do.body11.i180, %for.cond.i169.cleanup.i181_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !394
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !395
  br label %for.cond.i169

lock_timer_base.exit183:                          ; preds = %if.then.i179
  %base.0.i.i.i176.le = inttoptr i32 %spec.select.i.i.i175 to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %clk.i184 = getelementptr inbounds %struct.timer_base, ptr %base.0.i.i.i176.le, i32 0, i32 2
  %38 = ptrtoint ptr %clk.i184 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %clk.i184, align 16
  %sub.i185 = sub i32 %37, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i185)
  %cmp.i186 = icmp slt i32 %sub.i185, 1
  br i1 %cmp.i186, label %lock_timer_base.exit183.if.end53_crit_edge, label %if.end.i190

lock_timer_base.exit183.if.end53_crit_edge:       ; preds = %lock_timer_base.exit183
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end53

if.end.i190:                                      ; preds = %lock_timer_base.exit183
  %next_expiry.i187 = getelementptr inbounds %struct.timer_base, ptr %base.0.i.i.i176.le, i32 0, i32 3
  %40 = ptrtoint ptr %next_expiry.i187 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %next_expiry.i187, align 4
  %sub1.i188 = sub i32 %37, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1.i188)
  %cmp2.i189 = icmp slt i32 %sub1.i188, 0
  br i1 %cmp2.i189, label %if.end.i190.if.end54.i198_crit_edge, label %if.else.i193

if.end.i190.if.end54.i198_crit_edge:              ; preds = %if.end.i190
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end54.i198

if.else.i193:                                     ; preds = %if.end.i190
  %sub7.i191 = sub i32 %41, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub7.i191)
  %cmp8.i192 = icmp slt i32 %sub7.i191, 0
  br i1 %cmp8.i192, label %land.rhs.i195, label %if.else.i193.if.end54.i198_crit_edge

if.else.i193.if.end54.i198_crit_edge:             ; preds = %if.else.i193
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end54.i198

land.rhs.i195:                                    ; preds = %if.else.i193
  %.b65.i194 = load i1, ptr @forward_timer_base.__already_done, align 1
  br i1 %.b65.i194, label %land.rhs.i195.if.end53_crit_edge, label %if.then15.i196, !prof !390

land.rhs.i195.if.end53_crit_edge:                 ; preds = %land.rhs.i195
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end53

if.then15.i196:                                   ; preds = %land.rhs.i195
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @forward_timer_base.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 911, i32 noundef 9, ptr noundef null) #15
  br label %if.end53

if.end54.i198:                                    ; preds = %if.else.i193.if.end54.i198_crit_edge, %if.end.i190.if.end54.i198_crit_edge
  %storemerge.i197 = phi i32 [ %37, %if.end.i190.if.end54.i198_crit_edge ], [ %41, %if.else.i193.if.end54.i198_crit_edge ]
  %42 = ptrtoint ptr %clk.i184 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %storemerge.i197, ptr %clk.i184, align 16
  br label %if.end53

if.end53:                                         ; preds = %if.end54.i198, %if.then15.i196, %land.rhs.i195.if.end53_crit_edge, %lock_timer_base.exit183.if.end53_crit_edge, %if.end33.if.end53_crit_edge
  %flags.1 = phi i32 [ %call4.i, %if.end33.if.end53_crit_edge ], [ %call4.i177, %lock_timer_base.exit183.if.end53_crit_edge ], [ %call4.i177, %land.rhs.i195.if.end53_crit_edge ], [ %call4.i177, %if.then15.i196 ], [ %call4.i177, %if.end54.i198 ]
  %clk.1 = phi i32 [ %24, %if.end33.if.end53_crit_edge ], [ 0, %lock_timer_base.exit183.if.end53_crit_edge ], [ 0, %land.rhs.i195.if.end53_crit_edge ], [ 0, %if.then15.i196 ], [ 0, %if.end54.i198 ]
  %base.1 = phi ptr [ %base.0.i.i.i.le, %if.end33.if.end53_crit_edge ], [ %base.0.i.i.i176.le, %lock_timer_base.exit183.if.end53_crit_edge ], [ %base.0.i.i.i176.le, %land.rhs.i195.if.end53_crit_edge ], [ %base.0.i.i.i176.le, %if.then15.i196 ], [ %base.0.i.i.i176.le, %if.end54.i198 ]
  %idx.1 = phi i32 [ %call35, %if.end33.if.end53_crit_edge ], [ -1, %lock_timer_base.exit183.if.end53_crit_edge ], [ -1, %land.rhs.i195.if.end53_crit_edge ], [ -1, %if.then15.i196 ], [ -1, %if.end54.i198 ]
  %flags.i.i = getelementptr inbounds %struct.timer_list, ptr %timer, i32 0, i32 3
  %43 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags.i.i, align 4
  %shr.i.i = lshr i32 %44, 22
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %timer, i32 0, i32 1
  %45 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.not.i = icmp eq ptr %46, null
  br i1 %tobool.not.i.i.not.i, label %detach_if_pending.exit, label %if.end.i202

if.end.i202:                                      ; preds = %if.end53
  %vectors.i = getelementptr inbounds %struct.timer_base, ptr %base.1, i32 0, i32 9
  %add.ptr.i = getelementptr %struct.hlist_head, ptr %vectors.i, i32 %shr.i.i
  %47 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %timer, align 4
  %tobool.not.i.i201 = icmp eq ptr %48, null
  %cmp.i.i = icmp eq ptr %46, %add.ptr.i
  %or.cond.i = select i1 %tobool.not.i.i201, i1 %cmp.i.i, i1 false
  br i1 %or.cond.i, label %if.then4.i, label %if.end.i202.if.end6.i_crit_edge

if.end.i202.if.end6.i_crit_edge:                  ; preds = %if.end.i202
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i202
  call void @__sanitizer_cov_trace_pc() #17
  %pending_map.i = getelementptr inbounds %struct.timer_base, ptr %base.1, i32 0, i32 8
  %rem.i.i = and i32 %shr.i.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %44, 27
  %add.ptr.i.i = getelementptr i32, ptr %pending_map.i, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %49 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i203 = and i32 %50, %neg.i.i
  store i32 %and.i.i203, ptr %add.ptr.i.i, align 4
  %next_expiry_recalc.i = getelementptr inbounds %struct.timer_base, ptr %base.1, i32 0, i32 5
  %51 = ptrtoint ptr %next_expiry_recalc.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %next_expiry_recalc.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.end.i202.if.end6.i_crit_edge
  tail call void @debug_object_deactivate(ptr noundef %timer, ptr noundef nonnull @timer_debug_descr) #15
  tail call fastcc void @trace_timer_cancel(ptr noundef %timer) #15
  %52 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %timer, align 4
  %54 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pprev.i.i.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %53, ptr %55, align 4
  %tobool.not.i.i14.i = icmp eq ptr %53, null
  br i1 %tobool.not.i.i14.i, label %if.end6.i.detach_if_pending.exit.thread_crit_edge, label %do.body13.i.i.i

if.end6.i.detach_if_pending.exit.thread_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %detach_if_pending.exit.thread

do.body13.i.i.i:                                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %53, i32 0, i32 1
  %57 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %55, ptr %pprev14.i.i.i, align 4
  br label %detach_if_pending.exit.thread

detach_if_pending.exit.thread:                    ; preds = %do.body13.i.i.i, %if.end6.i.detach_if_pending.exit.thread_crit_edge
  %58 = ptrtoint ptr %timer to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr inttoptr (i32 290 to ptr), ptr %timer, align 4
  br label %if.end60

detach_if_pending.exit:                           ; preds = %if.end53
  %and57 = and i32 %options, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %detach_if_pending.exit.if.end60_crit_edge, label %detach_if_pending.exit.do.body98_crit_edge

detach_if_pending.exit.do.body98_crit_edge:       ; preds = %detach_if_pending.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body98

detach_if_pending.exit.if.end60_crit_edge:        ; preds = %detach_if_pending.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end60

if.end60:                                         ; preds = %detach_if_pending.exit.if.end60_crit_edge, %detach_if_pending.exit.thread
  %retval.0.i263 = phi i32 [ 1, %detach_if_pending.exit.thread ], [ 0, %detach_if_pending.exit.if.end60_crit_edge ]
  %59 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags.i.i, align 4
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @timers_migration_enabled, i32 1), ptr blockaddress(@__mod_timer, %if.end.i208)) #15
          to label %arch_static_branch_jump.exit.i [label %if.end.i208], !srcloc !396

arch_static_branch_jump.exit.i:                   ; preds = %if.end60
  %and.i205 = and i32 %60, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i205)
  %tobool4.not.i = icmp eq i32 %and.i205, 0
  br i1 %tobool4.not.i, label %if.then.i206, label %arch_static_branch_jump.exit.i.if.end.i208_crit_edge

arch_static_branch_jump.exit.i.if.end.i208_crit_edge: ; preds = %arch_static_branch_jump.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i208

if.then.i206:                                     ; preds = %arch_static_branch_jump.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %call5.i = tail call i32 @get_nohz_timer_target() #15
  br label %get_target_base.exit

if.end.i208:                                      ; preds = %arch_static_branch_jump.exit.i.if.end.i208_crit_edge, %if.end60
  call void @__sanitizer_cov_trace_pc() #17
  %61 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i.i.i207 = and i32 %61, -16384
  %62 = inttoptr i32 %and.i.i.i207 to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cpu.i.i, align 4
  br label %get_target_base.exit

get_target_base.exit:                             ; preds = %if.end.i208, %if.then.i206
  %.sink.i = phi i32 [ %64, %if.end.i208 ], [ %call5.i, %if.then.i206 ]
  %arrayidx.i1.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %.sink.i
  %65 = ptrtoint ptr %arrayidx.i1.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.i1.i, align 4
  %and.i2.i = and i32 %60, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i)
  %tobool.not.i3.i = icmp eq i32 %and.i2.i, 0
  %spec.select.v.i4.i = select i1 %tobool.not.i3.i, i32 ptrtoint (ptr @timer_bases to i32), i32 ptrtoint (ptr getelementptr inbounds ([2 x %struct.timer_base], ptr @timer_bases, i32 0, i32 1) to i32)
  %spec.select.i5.i = add i32 %66, %spec.select.v.i4.i
  %retval.0.i209 = inttoptr i32 %spec.select.i5.i to ptr
  %cmp63.not = icmp eq ptr %base.1, %retval.0.i209
  br i1 %cmp63.not, label %get_target_base.exit.if.end89_crit_edge, label %if.then64

get_target_base.exit.if.end89_crit_edge:          ; preds = %get_target_base.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end89

if.then64:                                        ; preds = %get_target_base.exit
  %running_timer = getelementptr inbounds %struct.timer_base, ptr %base.1, i32 0, i32 1
  %67 = ptrtoint ptr %running_timer to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %running_timer, align 4
  %cmp65.not = icmp eq ptr %68, %timer
  br i1 %cmp65.not, label %if.then64.if.end89_crit_edge, label %if.then72, !prof !391

if.then64.if.end89_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end89

if.then72:                                        ; preds = %if.then64
  %69 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %flags.i.i, align 4
  %or = or i32 %70, 262144
  store i32 %or, ptr %flags.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %base.1) #15
  tail call void @_raw_spin_lock(ptr noundef %retval.0.i209) #15
  %71 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %flags.i.i, align 4
  %and81 = and i32 %72, -524288
  %cpu = getelementptr inbounds %struct.timer_base, ptr %retval.0.i209, i32 0, i32 4
  %73 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %cpu, align 8
  %or82 = or i32 %and81, %74
  store volatile i32 %or82, ptr %flags.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %75 = load volatile i32, ptr @jiffies, align 128
  %clk.i210 = getelementptr inbounds %struct.timer_base, ptr %retval.0.i209, i32 0, i32 2
  %76 = ptrtoint ptr %clk.i210 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %clk.i210, align 16
  %sub.i211 = sub i32 %75, %77
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i211)
  %cmp.i212 = icmp slt i32 %sub.i211, 1
  br i1 %cmp.i212, label %if.then72.if.end89_crit_edge, label %if.end.i216

if.then72.if.end89_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end89

if.end.i216:                                      ; preds = %if.then72
  %next_expiry.i213 = getelementptr inbounds %struct.timer_base, ptr %retval.0.i209, i32 0, i32 3
  %78 = ptrtoint ptr %next_expiry.i213 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %next_expiry.i213, align 4
  %sub1.i214 = sub i32 %75, %79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1.i214)
  %cmp2.i215 = icmp slt i32 %sub1.i214, 0
  br i1 %cmp2.i215, label %if.end.i216.if.end54.i224_crit_edge, label %if.else.i219

if.end.i216.if.end54.i224_crit_edge:              ; preds = %if.end.i216
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end54.i224

if.else.i219:                                     ; preds = %if.end.i216
  %sub7.i217 = sub i32 %79, %77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub7.i217)
  %cmp8.i218 = icmp slt i32 %sub7.i217, 0
  br i1 %cmp8.i218, label %land.rhs.i221, label %if.else.i219.if.end54.i224_crit_edge

if.else.i219.if.end54.i224_crit_edge:             ; preds = %if.else.i219
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end54.i224

land.rhs.i221:                                    ; preds = %if.else.i219
  %.b65.i220 = load i1, ptr @forward_timer_base.__already_done, align 1
  br i1 %.b65.i220, label %land.rhs.i221.if.end89_crit_edge, label %if.then15.i222, !prof !390

land.rhs.i221.if.end89_crit_edge:                 ; preds = %land.rhs.i221
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end89

if.then15.i222:                                   ; preds = %land.rhs.i221
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @forward_timer_base.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 911, i32 noundef 9, ptr noundef null) #15
  br label %if.end89

if.end54.i224:                                    ; preds = %if.else.i219.if.end54.i224_crit_edge, %if.end.i216.if.end54.i224_crit_edge
  %storemerge.i223 = phi i32 [ %75, %if.end.i216.if.end54.i224_crit_edge ], [ %79, %if.else.i219.if.end54.i224_crit_edge ]
  %80 = ptrtoint ptr %clk.i210 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %storemerge.i223, ptr %clk.i210, align 16
  br label %if.end89

if.end89:                                         ; preds = %if.end54.i224, %if.then15.i222, %land.rhs.i221.if.end89_crit_edge, %if.then72.if.end89_crit_edge, %if.then64.if.end89_crit_edge, %get_target_base.exit.if.end89_crit_edge
  %base.2 = phi ptr [ %base.1, %if.then64.if.end89_crit_edge ], [ %base.1, %get_target_base.exit.if.end89_crit_edge ], [ %retval.0.i209, %if.then72.if.end89_crit_edge ], [ %retval.0.i209, %land.rhs.i221.if.end89_crit_edge ], [ %retval.0.i209, %if.then15.i222 ], [ %retval.0.i209, %if.end54.i224 ]
  %call.i = tail call i32 @debug_object_activate(ptr noundef %timer, ptr noundef nonnull @timer_debug_descr) #15
  %expires90 = getelementptr inbounds %struct.timer_list, ptr %timer, i32 0, i32 1
  %81 = ptrtoint ptr %expires90 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %expires, ptr %expires90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %idx.1)
  %cmp91.not = icmp eq i32 %idx.1, -1
  br i1 %cmp91.not, label %if.end89.if.else96_crit_edge, label %land.lhs.true92

if.end89.if.else96_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else96

land.lhs.true92:                                  ; preds = %if.end89
  %clk93 = getelementptr inbounds %struct.timer_base, ptr %base.2, i32 0, i32 2
  %82 = ptrtoint ptr %clk93 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %clk93, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %clk.1, i32 %83)
  %cmp94 = icmp eq i32 %clk.1, %83
  br i1 %cmp94, label %if.then95, label %land.lhs.true92.if.else96_crit_edge

land.lhs.true92.if.else96_crit_edge:              ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else96

if.then95:                                        ; preds = %land.lhs.true92
  %84 = ptrtoint ptr %bucket_expiry to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %bucket_expiry, align 4
  %vectors.i227 = getelementptr inbounds %struct.timer_base, ptr %base.2, i32 0, i32 9
  %add.ptr.i228 = getelementptr %struct.hlist_head, ptr %vectors.i227, i32 %idx.1
  %86 = ptrtoint ptr %add.ptr.i228 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %add.ptr.i228, align 4
  %88 = ptrtoint ptr %timer to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %87, ptr %timer, align 4
  %tobool.not.i.i229 = icmp eq ptr %87, null
  br i1 %tobool.not.i.i229, label %if.then95.hlist_add_head.exit.i_crit_edge, label %do.body12.i.i

if.then95.hlist_add_head.exit.i_crit_edge:        ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #17
  br label %hlist_add_head.exit.i

do.body12.i.i:                                    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #17
  %pprev.i.i230 = getelementptr inbounds %struct.hlist_node, ptr %87, i32 0, i32 1
  %89 = ptrtoint ptr %pprev.i.i230 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %timer, ptr %pprev.i.i230, align 4
  br label %hlist_add_head.exit.i

hlist_add_head.exit.i:                            ; preds = %do.body12.i.i, %if.then95.hlist_add_head.exit.i_crit_edge
  %90 = ptrtoint ptr %add.ptr.i228 to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %timer, ptr %add.ptr.i228, align 4
  %91 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %add.ptr.i228, ptr %pprev.i.i.i, align 4
  %pending_map.i231 = getelementptr inbounds %struct.timer_base, ptr %base.2, i32 0, i32 8
  %rem.i.i232 = and i32 %idx.1, 31
  %shl.i.i233 = shl nuw i32 1, %rem.i.i232
  %div2.i.i234 = lshr i32 %idx.1, 5
  %add.ptr.i.i235 = getelementptr i32, ptr %pending_map.i231, i32 %div2.i.i234
  %92 = ptrtoint ptr %add.ptr.i.i235 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %add.ptr.i.i235, align 4
  %or.i.i = or i32 %93, %shl.i.i233
  store i32 %or.i.i, ptr %add.ptr.i.i235, align 4
  %94 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %flags.i.i, align 4
  %and.i.i237 = and i32 %95, 4194303
  %shl.i18.i = shl i32 %idx.1, 22
  %or.i19.i = or i32 %and.i.i237, %shl.i18.i
  store i32 %or.i19.i, ptr %flags.i.i, align 4
  %96 = ptrtoint ptr %expires90 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %expires90, align 4
  tail call fastcc void @trace_timer_start(ptr noundef %timer, i32 noundef %97, i32 noundef %or.i19.i) #15
  %next_expiry.i238 = getelementptr inbounds %struct.timer_base, ptr %base.2, i32 0, i32 3
  %98 = ptrtoint ptr %next_expiry.i238 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %next_expiry.i238, align 4
  %sub.i239 = sub i32 %85, %99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i239)
  %cmp.i240 = icmp slt i32 %sub.i239, 0
  br i1 %cmp.i240, label %if.then.i242, label %hlist_add_head.exit.i.do.body98_crit_edge

hlist_add_head.exit.i.do.body98_crit_edge:        ; preds = %hlist_add_head.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body98

if.then.i242:                                     ; preds = %hlist_add_head.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %100 = ptrtoint ptr %next_expiry.i238 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %85, ptr %next_expiry.i238, align 4
  %timers_pending.i = getelementptr inbounds %struct.timer_base, ptr %base.2, i32 0, i32 7
  %101 = ptrtoint ptr %timers_pending.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 1, ptr %timers_pending.i, align 2
  %next_expiry_recalc.i241 = getelementptr inbounds %struct.timer_base, ptr %base.2, i32 0, i32 5
  %102 = ptrtoint ptr %next_expiry_recalc.i241 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %next_expiry_recalc.i241, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @timers_nohz_active, ptr blockaddress(@__mod_timer, %if.end.i.i)) #15
          to label %do.body98 [label %if.end.i.i], !srcloc !397

if.end.i.i:                                       ; preds = %if.then.i242
  %103 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %flags.i.i, align 4
  %and.i21.i = and i32 %104, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i21.i)
  %tobool.not.i22.i = icmp eq i32 %and.i21.i, 0
  br i1 %tobool.not.i22.i, label %if.end6.i.i, label %if.end.i.i.do.body98_crit_edge

if.end.i.i.do.body98_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body98

if.end6.i.i:                                      ; preds = %if.end.i.i
  %is_idle.i.i = getelementptr inbounds %struct.timer_base, ptr %base.2, i32 0, i32 6
  %105 = ptrtoint ptr %is_idle.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %is_idle.i.i, align 1, !range !398
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool7.not.i.i = icmp eq i8 %106, 0
  br i1 %tobool7.not.i.i, label %if.end6.i.i.do.body98_crit_edge, label %if.then8.i.i

if.end6.i.i.do.body98_crit_edge:                  ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body98

if.then8.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %cpu9.i.i = getelementptr inbounds %struct.timer_base, ptr %base.2, i32 0, i32 4
  %107 = ptrtoint ptr %cpu9.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %cpu9.i.i, align 8
  tail call void @wake_up_nohz_cpu(i32 noundef %108) #15
  br label %do.body98

if.else96:                                        ; preds = %land.lhs.true92.if.else96_crit_edge, %if.end89.if.else96_crit_edge
  tail call fastcc void @internal_add_timer(ptr noundef %base.2, ptr noundef %timer)
  br label %do.body98

do.body98:                                        ; preds = %if.else96, %if.then8.i.i, %if.end6.i.i.do.body98_crit_edge, %if.end.i.i.do.body98_crit_edge, %if.then.i242, %hlist_add_head.exit.i.do.body98_crit_edge, %detach_if_pending.exit.do.body98_crit_edge, %if.then46, %if.else.do.body98_crit_edge, %if.then41, %land.lhs.true28.do.body98_crit_edge
  %flags.2 = phi i32 [ %flags.1, %if.else96 ], [ %flags.1, %detach_if_pending.exit.do.body98_crit_edge ], [ %flags.1, %hlist_add_head.exit.i.do.body98_crit_edge ], [ %flags.1, %if.then.i242 ], [ %flags.1, %if.end.i.i.do.body98_crit_edge ], [ %flags.1, %if.end6.i.i.do.body98_crit_edge ], [ %flags.1, %if.then8.i.i ], [ %call4.i, %land.lhs.true28.do.body98_crit_edge ], [ %call4.i, %if.else.do.body98_crit_edge ], [ %call4.i, %if.then46 ], [ %call4.i, %if.then41 ]
  %base.3 = phi ptr [ %base.2, %if.else96 ], [ %base.1, %detach_if_pending.exit.do.body98_crit_edge ], [ %base.2, %hlist_add_head.exit.i.do.body98_crit_edge ], [ %base.2, %if.then.i242 ], [ %base.2, %if.end.i.i.do.body98_crit_edge ], [ %base.2, %if.end6.i.i.do.body98_crit_edge ], [ %base.2, %if.then8.i.i ], [ %base.0.i.i.i.le, %land.lhs.true28.do.body98_crit_edge ], [ %base.0.i.i.i.le, %if.else.do.body98_crit_edge ], [ %base.0.i.i.i.le, %if.then46 ], [ %base.0.i.i.i.le, %if.then41 ]
  %ret.1 = phi i32 [ %retval.0.i263, %if.else96 ], [ 0, %detach_if_pending.exit.do.body98_crit_edge ], [ %retval.0.i263, %hlist_add_head.exit.i.do.body98_crit_edge ], [ %retval.0.i263, %if.then.i242 ], [ %retval.0.i263, %if.end.i.i.do.body98_crit_edge ], [ %retval.0.i263, %if.end6.i.i.do.body98_crit_edge ], [ %retval.0.i263, %if.then8.i.i ], [ 1, %land.lhs.true28.do.body98_crit_edge ], [ 1, %if.else.do.body98_crit_edge ], [ 1, %if.then46 ], [ 1, %if.then41 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %base.3, i32 noundef %flags.2) #15
  br label %cleanup103

cleanup103:                                       ; preds = %do.body98, %if.end16.cleanup103_crit_edge, %if.then12.cleanup103_crit_edge
  %retval.1 = phi i32 [ %ret.1, %do.body98 ], [ 1, %if.then12.cleanup103_crit_edge ], [ 1, %if.end16.cleanup103_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bucket_expiry) #15
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mod_timer(ptr noundef %timer, i32 noundef %expires) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__mod_timer(ptr noundef %timer, i32 noundef %expires, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @timer_reduce(ptr noundef %timer, i32 noundef %expires) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__mod_timer(ptr noundef %timer, i32 noundef %expires, i32 noundef 2)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @add_timer(ptr noundef %timer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %timer, i32 0, i32 1
  %0 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.not, label %do.end6, label %do.body3, !prof !390

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/time/timer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1143, 0\0A.popsection", ""() #15, !srcloc !399
  unreachable

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %expires = getelementptr inbounds %struct.timer_list, ptr %timer, i32 0, i32 1
  %2 = ptrtoint ptr %expires to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %expires, align 4
  %call7 = tail call fastcc i32 @__mod_timer(ptr noundef %timer, i32 noundef %3, i32 noundef 4)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @add_timer_on(ptr noundef %timer, i32 noundef %cpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %timer, i32 0, i32 1
  %0 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.not, label %lor.rhs, label %entry.do.body5_crit_edge, !prof !390

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body5

lor.rhs:                                          ; preds = %entry
  %function = getelementptr inbounds %struct.timer_list, ptr %timer, i32 0, i32 2
  %2 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %function, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.rhs.do.body5_crit_edge, label %do.end10, !prof !391

lor.rhs.do.body5_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body5

do.body5:                                         ; preds = %lor.rhs.do.body5_crit_edge, %entry.do.body5_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/time/timer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #15, !srcloc !400
  unreachable

do.end10:                                         ; preds = %lor.rhs
  %flags11 = getelementptr inbounds %struct.timer_list, ptr %timer, i32 0, i32 3
  %4 = ptrtoint ptr %flags11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags11, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %5, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.v.i = select i1 %tobool.not.i, i32 ptrtoint (ptr @timer_bases to i32), i32 ptrtoint (ptr getelementptr inbounds ([2 x %struct.timer_base], ptr @timer_bases, i32 0, i32 1) to i32)
  %spec.select.i = add i32 %spec.select.v.i, %7
  br label %for.cond.i

for.cond.i:                                       ; preds = %cleanup.i, %do.end10
  %8 = ptrtoint ptr %flags11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags11, align 4
  %and.i50 = and i32 %9, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i50)
  %tobool.not.i51 = icmp eq i32 %and.i50, 0
  br i1 %tobool.not.i51, label %if.then.i, label %for.cond.i.cleanup.i_crit_edge

for.cond.i.cleanup.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i

if.then.i:                                        ; preds = %for.cond.i
  %and.i.i = and i32 %9, 262143
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %and.i.i
  %10 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %9, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %spec.select.v.i.i.i = select i1 %tobool.not.i.i.i, i32 ptrtoint (ptr @timer_bases to i32), i32 ptrtoint (ptr getelementptr inbounds ([2 x %struct.timer_base], ptr @timer_bases, i32 0, i32 1) to i32)
  %spec.select.i.i.i = add i32 %11, %spec.select.v.i.i.i
  %base.0.i.i.i = inttoptr i32 %spec.select.i.i.i to ptr
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %base.0.i.i.i) #15
  %12 = ptrtoint ptr %flags11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %9)
  %cmp8.i = icmp eq i32 %13, %9
  br i1 %cmp8.i, label %lock_timer_base.exit, label %do.body11.i

do.body11.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %base.0.i.i.i, i32 noundef %call4.i) #15
  br label %cleanup.i

cleanup.i:                                        ; preds = %do.body11.i, %for.cond.i.cleanup.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !394
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !395
  br label %for.cond.i

lock_timer_base.exit:                             ; preds = %if.then.i
  %base.0.i.i.i.le = inttoptr i32 %spec.select.i.i.i to ptr
  %base.0.i = inttoptr i32 %spec.select.i to ptr
  %cmp.not = icmp eq ptr %base.0.i.i.i.le, %base.0.i
  br i1 %cmp.not, label %lock_timer_base.exit.if.end29_crit_edge, label %if.then14

lock_timer_base.exit.if.end29_crit_edge:          ; preds = %lock_timer_base.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

if.then14:                                        ; preds = %lock_timer_base.exit
  call void @__sanitizer_cov_trace_pc() #17
  %or = or i32 %9, 262144
  %14 = ptrtoint ptr %flags11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or, ptr %flags11, align 4
  tail call void @_raw_spin_unlock(ptr noundef %base.0.i.i.i.le) #15
  tail call void @_raw_spin_lock(ptr noundef %base.0.i) #15
  %15 = ptrtoint ptr %flags11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags11, align 4
  %and = and i32 %16, -524288
  %or23 = or i32 %and, %cpu
  store volatile i32 %or23, ptr %flags11, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then14, %lock_timer_base.exit.if.end29_crit_edge
  %base.0 = phi ptr [ %base.0.i, %if.then14 ], [ %base.0.i.i.i.le, %lock_timer_base.exit.if.end29_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %clk.i = getelementptr inbounds %struct.timer_base, ptr %base.0, i32 0, i32 2
  %18 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %clk.i, align 16
  %sub.i = sub i32 %17, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 1
  br i1 %cmp.i, label %if.end29.forward_timer_base.exit_crit_edge, label %if.end.i

if.end29.forward_timer_base.exit_crit_edge:       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %forward_timer_base.exit

if.end.i:                                         ; preds = %if.end29
  %next_expiry.i = getelementptr inbounds %struct.timer_base, ptr %base.0, i32 0, i32 3
  %20 = ptrtoint ptr %next_expiry.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %next_expiry.i, align 4
  %sub1.i = sub i32 %17, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1.i)
  %cmp2.i = icmp slt i32 %sub1.i, 0
  br i1 %cmp2.i, label %if.end.i.if.end54.i_crit_edge, label %if.else.i

if.end.i.if.end54.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end54.i

if.else.i:                                        ; preds = %if.end.i
  %sub7.i = sub i32 %21, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub7.i)
  %cmp8.i52 = icmp slt i32 %sub7.i, 0
  br i1 %cmp8.i52, label %land.rhs.i, label %if.else.i.if.end54.i_crit_edge

if.else.i.if.end54.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end54.i

land.rhs.i:                                       ; preds = %if.else.i
  %.b65.i = load i1, ptr @forward_timer_base.__already_done, align 1
  br i1 %.b65.i, label %land.rhs.i.forward_timer_base.exit_crit_edge, label %if.then15.i, !prof !390

land.rhs.i.forward_timer_base.exit_crit_edge:     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %forward_timer_base.exit

if.then15.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @forward_timer_base.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 911, i32 noundef 9, ptr noundef null) #15
  br label %forward_timer_base.exit

if.end54.i:                                       ; preds = %if.else.i.if.end54.i_crit_edge, %if.end.i.if.end54.i_crit_edge
  %storemerge.i = phi i32 [ %17, %if.end.i.if.end54.i_crit_edge ], [ %21, %if.else.i.if.end54.i_crit_edge ]
  %22 = ptrtoint ptr %clk.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %storemerge.i, ptr %clk.i, align 16
  br label %forward_timer_base.exit

forward_timer_base.exit:                          ; preds = %if.end54.i, %if.then15.i, %land.rhs.i.forward_timer_base.exit_crit_edge, %if.end29.forward_timer_base.exit_crit_edge
  %call.i = tail call i32 @debug_object_activate(ptr noundef %timer, ptr noundef nonnull @timer_debug_descr) #15
  tail call fastcc void @internal_add_timer(ptr noundef %base.0, ptr noundef %timer)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %base.0, i32 noundef %call4.i) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @internal_add_timer(ptr noundef %base, ptr noundef %timer) unnamed_addr #0 align 64 {
entry:
  %bucket_expiry = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bucket_expiry) #15
  %0 = ptrtoint ptr %bucket_expiry to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %bucket_expiry, align 4, !annotation !392
  %expires = getelementptr inbounds %struct.timer_list, ptr %timer, i32 0, i32 1
  %1 = ptrtoint ptr %expires to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %expires, align 4
  %clk = getelementptr inbounds %struct.timer_base, ptr %base, i32 0, i32 2
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %clk, align 16
  %call = call fastcc i32 @calc_wheel_index(i32 noundef %2, i32 noundef %4, ptr noundef nonnull %bucket_expiry), !range !401
  %5 = ptrtoint ptr %bucket_expiry to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bucket_expiry, align 4
  %vectors.i = getelementptr inbounds %struct.timer_base, ptr %base, i32 0, i32 9
  %add.ptr.i = getelementptr %struct.hlist_head, ptr %vectors.i, i32 %call
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 4
  %9 = ptrtoint ptr %timer to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %8, ptr %timer, align 4
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %entry.hlist_add_head.exit.i_crit_edge, label %do.body12.i.i

entry.hlist_add_head.exit.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %hlist_add_head.exit.i

do.body12.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %8, i32 0, i32 1
  %10 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %timer, ptr %pprev.i.i, align 4
  br label %hlist_add_head.exit.i

hlist_add_head.exit.i:                            ; preds = %do.body12.i.i, %entry.hlist_add_head.exit.i_crit_edge
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %timer, ptr %add.ptr.i, align 4
  %pprev34.i.i = getelementptr inbounds %struct.hlist_node, ptr %timer, i32 0, i32 1
  %12 = ptrtoint ptr %pprev34.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %add.ptr.i, ptr %pprev34.i.i, align 4
  %pending_map.i = getelementptr inbounds %struct.timer_base, ptr %base, i32 0, i32 8
  %rem.i.i = and i32 %call, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %call, 5
  %add.ptr.i.i = getelementptr i32, ptr %pending_map.i, i32 %div2.i.i
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %14, %shl.i.i
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.timer_list, ptr %timer, i32 0, i32 3
  %15 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %16, 4194303
  %shl.i18.i = shl nuw nsw i32 %call, 22
  %or.i19.i = or i32 %and.i.i, %shl.i18.i
  store i32 %or.i19.i, ptr %flags.i.i, align 4
  %17 = ptrtoint ptr %expires to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %expires, align 4
  tail call fastcc void @trace_timer_start(ptr noundef %timer, i32 noundef %18, i32 noundef %or.i19.i) #15
  %next_expiry.i = getelementptr inbounds %struct.timer_base, ptr %base, i32 0, i32 3
  %19 = ptrtoint ptr %next_expiry.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %next_expiry.i, align 4
  %sub.i = sub i32 %6, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then.i, label %hlist_add_head.exit.i.enqueue_timer.exit_crit_edge

hlist_add_head.exit.i.enqueue_timer.exit_crit_edge: ; preds = %hlist_add_head.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %enqueue_timer.exit

if.then.i:                                        ; preds = %hlist_add_head.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %21 = ptrtoint ptr %next_expiry.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %6, ptr %next_expiry.i, align 4
  %timers_pending.i = getelementptr inbounds %struct.timer_base, ptr %base, i32 0, i32 7
  %22 = ptrtoint ptr %timers_pending.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %timers_pending.i, align 2
  %next_expiry_recalc.i = getelementptr inbounds %struct.timer_base, ptr %base, i32 0, i32 5
  %23 = ptrtoint ptr %next_expiry_recalc.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %next_expiry_recalc.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @timers_nohz_active, ptr blockaddress(@internal_add_timer, %if.end.i.i)) #15
          to label %enqueue_timer.exit [label %if.end.i.i], !srcloc !397

if.end.i.i:                                       ; preds = %if.then.i
  %24 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags.i.i, align 4
  %and.i21.i = and i32 %25, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i21.i)
  %tobool.not.i22.i = icmp eq i32 %and.i21.i, 0
  br i1 %tobool.not.i22.i, label %if.end6.i.i, label %if.end.i.i.enqueue_timer.exit_crit_edge

if.end.i.i.enqueue_timer.exit_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %enqueue_timer.exit

if.end6.i.i:                                      ; preds = %if.end.i.i
  %is_idle.i.i = getelementptr inbounds %struct.timer_base, ptr %base, i32 0, i32 6
  %26 = ptrtoint ptr %is_idle.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %is_idle.i.i, align 1, !range !398
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool7.not.i.i = icmp eq i8 %27, 0
  br i1 %tobool7.not.i.i, label %if.end6.i.i.enqueue_timer.exit_crit_edge, label %if.then8.i.i

if.end6.i.i.enqueue_timer.exit_crit_edge:         ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %enqueue_timer.exit

if.then8.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %cpu9.i.i = getelementptr inbounds %struct.timer_base, ptr %base, i32 0, i32 4
  %28 = ptrtoint ptr %cpu9.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu9.i.i, align 8
  tail call void @wake_up_nohz_cpu(i32 noundef %29) #15
  br label %enqueue_timer.exit

enqueue_timer.exit:                               ; preds = %if.then8.i.i, %if.end6.i.i.enqueue_timer.exit_crit_edge, %if.end.i.i.enqueue_timer.exit_crit_edge, %if.then.i, %hlist_add_head.exit.i.enqueue_timer.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bucket_expiry) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @del_timer(ptr noundef %timer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @debug_object_assert_init(ptr noundef %timer, ptr noundef nonnull @timer_debug_descr) #15
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %timer, i32 0, i32 1
  %0 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  %flags1.i = getelementptr inbounds %struct.timer_list, ptr %timer, i32 0, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %cleanup.i, %if.then
  %2 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags1.i, align 4
  %and.i = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.cond.i.cleanup.i_crit_edge

for.cond.i.cleanup.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i

if.then.i:                                        ; preds = %for.cond.i
  %and.i.i = and i32 %3, 262143
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %and.i.i
  %4 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %3, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %spec.select.v.i.i.i = select i1 %tobool.not.i.i.i, i32 ptrtoint (ptr @timer_bases to i32), i32 ptrtoint (ptr getelementptr inbounds ([2 x %struct.timer_base], ptr @timer_bases, i32 0, i32 1) to i32)
  %spec.select.i.i.i = add i32 %5, %spec.select.v.i.i.i
  %base.0.i.i.i = inttoptr i32 %spec.select.i.i.i to ptr
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %base.0.i.i.i) #15
  %6 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %3)
  %cmp8.i = icmp eq i32 %7, %3
  br i1 %cmp8.i, label %lock_timer_base.exit, label %do.body11.i

do.body11.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %base.0.i.i.i, i32 noundef %call4.i) #15
  br label %cleanup.i

cleanup.i:                                        ; preds = %do.body11.i, %for.cond.i.cleanup.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !394
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !395
  br label %for.cond.i

lock_timer_base.exit:                             ; preds = %if.then.i
  %base.0.i.i.i.le = inttoptr i32 %spec.select.i.i.i to ptr
  %shr.i.i = lshr i32 %3, 22
  %8 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i.not.i, label %lock_timer_base.exit.detach_if_pending.exit_crit_edge, label %if.end.i

lock_timer_base.exit.detach_if_pending.exit_crit_edge: ; preds = %lock_timer_base.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %detach_if_pending.exit

if.end.i:                                         ; preds = %lock_timer_base.exit
  %vectors.i = getelementptr inbounds %struct.timer_base, ptr %base.0.i.i.i.le, i32 0, i32 9
  %add.ptr.i = getelementptr %struct.hlist_head, ptr %vectors.i, i32 %shr.i.i
  %10 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %timer, align 4
  %tobool.not.i.i7 = icmp eq ptr %11, null
  %cmp.i.i = icmp eq ptr %9, %add.ptr.i
  %or.cond.i = select i1 %tobool.not.i.i7, i1 %cmp.i.i, i1 false
  br i1 %or.cond.i, label %if.then4.i, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %pending_map.i = getelementptr inbounds %struct.timer_base, ptr %base.0.i.i.i.le, i32 0, i32 8
  %rem.i.i = and i32 %shr.i.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %3, 27
  %add.ptr.i.i = getelementptr i32, ptr %pending_map.i, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i8 = and i32 %13, %neg.i.i
  store i32 %and.i.i8, ptr %add.ptr.i.i, align 4
  %next_expiry_recalc.i = getelementptr inbounds %struct.timer_base, ptr %base.0.i.i.i.le, i32 0, i32 5
  %14 = ptrtoint ptr %next_expiry_recalc.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %next_expiry_recalc.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.end.i.if.end6.i_crit_edge
  tail call void @debug_object_deactivate(ptr noundef %timer, ptr noundef nonnull @timer_debug_descr) #15
  tail call fastcc void @trace_timer_cancel(ptr noundef %timer) #15
  %15 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %timer, align 4
  %17 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pprev.i.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %16, ptr %18, align 4
  %tobool.not.i.i14.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i14.i, label %if.end6.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.end6.i.__hlist_del.exit.i.i_crit_edge:         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %16, i32 0, i32 1
  %20 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.end6.i.__hlist_del.exit.i.i_crit_edge
  %21 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %pprev.i.i, align 4
  %22 = ptrtoint ptr %timer to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %timer, align 4
  br label %detach_if_pending.exit

detach_if_pending.exit:                           ; preds = %__hlist_del.exit.i.i, %lock_timer_base.exit.detach_if_pending.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %__hlist_del.exit.i.i ], [ 0, %lock_timer_base.exit.detach_if_pending.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %base.0.i.i.i.le, i32 noundef %call4.i) #15
  br label %if.end

if.end:                                           ; preds = %detach_if_pending.exit, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %detach_if_pending.exit ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @try_to_del_timer_sync(ptr noundef %timer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @debug_object_assert_init(ptr noundef %timer, ptr noundef nonnull @timer_debug_descr) #15
  %flags1.i = getelementptr inbounds %struct.timer_list, ptr %timer, i32 0, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %cleanup.i, %entry
  %0 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags1.i, align 4
  %and.i = and i32 %1, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.cond.i.cleanup.i_crit_edge

for.cond.i.cleanup.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i

if.then.i:                                        ; preds = %for.cond.i
  %and.i.i = and i32 %1, 262143
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %and.i.i
  %2 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %1, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %spec.select.v.i.i.i = select i1 %tobool.not.i.i.i, i32 ptrtoint (ptr @timer_bases to i32), i32 ptrtoint (ptr getelementptr inbounds ([2 x %struct.timer_base], ptr @timer_bases, i32 0, i32 1) to i32)
  %spec.select.i.i.i = add i32 %3, %spec.select.v.i.i.i
  %base.0.i.i.i = inttoptr i32 %spec.select.i.i.i to ptr
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %base.0.i.i.i) #15
  %4 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %1)
  %cmp8.i = icmp eq i32 %5, %1
  br i1 %cmp8.i, label %lock_timer_base.exit, label %do.body11.i

do.body11.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %base.0.i.i.i, i32 noundef %call4.i) #15
  br label %cleanup.i

cleanup.i:                                        ; preds = %do.body11.i, %for.cond.i.cleanup.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !394
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !395
  br label %for.cond.i

lock_timer_base.exit:                             ; preds = %if.then.i
  %base.0.i.i.i.le = inttoptr i32 %spec.select.i.i.i to ptr
  %running_timer = getelementptr inbounds %struct.timer_base, ptr %base.0.i.i.i.le, i32 0, i32 1
  %6 = ptrtoint ptr %running_timer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %running_timer, align 4
  %cmp.not = icmp eq ptr %7, %timer
  br i1 %cmp.not, label %lock_timer_base.exit.do.body_crit_edge, label %if.then

lock_timer_base.exit.do.body_crit_edge:           ; preds = %lock_timer_base.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

if.then:                                          ; preds = %lock_timer_base.exit
  %shr.i.i = lshr i32 %1, 22
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %timer, i32 0, i32 1
  %8 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i.not.i, label %if.then.do.body_crit_edge, label %if.end.i

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

if.end.i:                                         ; preds = %if.then
  %vectors.i = getelementptr inbounds %struct.timer_base, ptr %base.0.i.i.i.le, i32 0, i32 9
  %add.ptr.i = getelementptr %struct.hlist_head, ptr %vectors.i, i32 %shr.i.i
  %10 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %timer, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  %cmp.i.i = icmp eq ptr %9, %add.ptr.i
  %or.cond.i = select i1 %tobool.not.i.i, i1 %cmp.i.i, i1 false
  br i1 %or.cond.i, label %if.then4.i, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %pending_map.i = getelementptr inbounds %struct.timer_base, ptr %base.0.i.i.i.le, i32 0, i32 8
  %rem.i.i = and i32 %shr.i.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %1, 27
  %add.ptr.i.i = getelementptr i32, ptr %pending_map.i, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i8 = and i32 %13, %neg.i.i
  store i32 %and.i.i8, ptr %add.ptr.i.i, align 4
  %next_expiry_recalc.i = getelementptr inbounds %struct.timer_base, ptr %base.0.i.i.i.le, i32 0, i32 5
  %14 = ptrtoint ptr %next_expiry_recalc.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %next_expiry_recalc.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.end.i.if.end6.i_crit_edge
  tail call void @debug_object_deactivate(ptr noundef %timer, ptr noundef nonnull @timer_debug_descr) #15
  tail call fastcc void @trace_timer_cancel(ptr noundef %timer) #15
  %15 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %timer, align 4
  %17 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pprev.i.i.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %16, ptr %18, align 4
  %tobool.not.i.i14.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i14.i, label %if.end6.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.end6.i.__hlist_del.exit.i.i_crit_edge:         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %16, i32 0, i32 1
  %20 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.end6.i.__hlist_del.exit.i.i_crit_edge
  %21 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %pprev.i.i.i, align 4
  %22 = ptrtoint ptr %timer to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %timer, align 4
  br label %do.body

do.body:                                          ; preds = %__hlist_del.exit.i.i, %if.then.do.body_crit_edge, %lock_timer_base.exit.do.body_crit_edge
  %ret.0 = phi i32 [ -1, %lock_timer_base.exit.do.body_crit_edge ], [ 1, %__hlist_del.exit.i.i ], [ 0, %if.then.do.body_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %base.0.i.i.i.le, i32 noundef %call4.i) #15
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @del_timer_sync(ptr noundef %timer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !402
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end11_crit_edge

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @trace_hardirqs_off() #15
  br label %do.end11

do.end11:                                         ; preds = %if.then, %entry.do.end11_crit_edge
  %lockdep_map = getelementptr inbounds %struct.timer_list, ptr %timer, i32 0, i32 4
  br label %__here

__here:                                           ; preds = %do.end11
  tail call void @lock_acquire(ptr noundef %lockdep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@del_timer_sync, %__here) to i32)) #15
  br label %__here14

__here14:                                         ; preds = %__here
  tail call void @lock_release(ptr noundef %lockdep_map, i32 noundef ptrtoint (ptr blockaddress(@del_timer_sync, %__here14) to i32)) #15
  br i1 %tobool.not, label %if.then25, label %__here14.do.body27_crit_edge

__here14.do.body27_crit_edge:                     ; preds = %__here14
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body27

if.then25:                                        ; preds = %__here14
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @trace_hardirqs_on() #15
  br label %do.body27

do.body27:                                        ; preds = %if.then25, %__here14.do.body27_crit_edge
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !403
  %and.i.i118 = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i118)
  %tobool35.not = icmp eq i32 %and.i.i118, 0
  br i1 %tobool35.not, label %if.then39, label %do.body27.do.end42_crit_edge, !prof !391

do.body27.do.end42_crit_edge:                     ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end42

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %do.end42

do.end42:                                         ; preds = %if.then39, %do.body27.do.end42_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #15, !srcloc !404
  %2 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %5, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool48.not = icmp eq i32 %and, 0
  br i1 %tobool48.not, label %do.end42.if.end75_crit_edge, label %land.rhs

do.end42.if.end75_crit_edge:                      ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end75

land.rhs:                                         ; preds = %do.end42
  %flags49 = getelementptr inbounds %struct.timer_list, ptr %timer, i32 0, i32 3
  %6 = ptrtoint ptr %flags49 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags49, align 4
  %and50 = and i32 %7, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %do.end69, label %land.rhs.if.end75_crit_edge, !prof !391

land.rhs.if.end75_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end75

do.end69:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1372, i32 noundef 9, ptr noundef null) #15
  br label %if.end75

if.end75:                                         ; preds = %do.end69, %land.rhs.if.end75_crit_edge, %do.end42.if.end75_crit_edge
  %call84119 = tail call i32 @try_to_del_timer_sync(ptr noundef %timer)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84119)
  %cmp85120 = icmp slt i32 %call84119, 0
  br i1 %cmp85120, label %if.end75.if.then93_crit_edge, label %if.end75.do.end107.critedge_crit_edge, !prof !391

if.end75.do.end107.critedge_crit_edge:            ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end107.critedge

if.end75.if.then93_crit_edge:                     ; preds = %if.end75
  br label %if.then93

if.then93:                                        ; preds = %if.then93.if.then93_crit_edge, %if.end75.if.then93_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !405
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #15, !srcloc !406
  %call84 = tail call i32 @try_to_del_timer_sync(ptr noundef %timer)
  %cmp85 = icmp slt i32 %call84, 0
  br i1 %cmp85, label %if.then93.if.then93_crit_edge, label %if.then93.do.end107.critedge_crit_edge, !prof !391

if.then93.do.end107.critedge_crit_edge:           ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end107.critedge

if.then93.if.then93_crit_edge:                    ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then93

do.end107.critedge:                               ; preds = %if.then93.do.end107.critedge_crit_edge, %if.end75.do.end107.critedge_crit_edge
  %call84.lcssa = phi i32 [ %call84119, %if.end75.do.end107.critedge_crit_edge ], [ %call84, %if.then93.do.end107.critedge_crit_edge ]
  ret i32 %call84.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @get_next_timer_interrupt(i32 noundef %basej, i64 noundef %basem) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @timer_bases to i32)
  %6 = inttoptr i32 %add to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %7, %3
  br i1 %cmp.not.i.i.i.i, label %entry.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

entry.cpu_online.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %entry
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !390

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.85, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %entry.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %3, 31
  %10 = shl nuw i32 1, %and.i.i.i
  %11 = and i32 %9, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not = icmp eq i32 %11, 0
  br i1 %tobool.i.not, label %cpu_online.exit.cleanup_crit_edge, label %if.end, !prof !391

cpu_online.exit.cleanup_crit_edge:                ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %cpu_online.exit
  tail call void @_raw_spin_lock(ptr noundef %6) #15
  %next_expiry_recalc = getelementptr inbounds %struct.timer_base, ptr %6, i32 0, i32 5
  %12 = ptrtoint ptr %next_expiry_recalc to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %next_expiry_recalc, align 4, !range !398
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool7.not = icmp eq i8 %13, 0
  br i1 %tobool7.not, label %if.end.if.end10_crit_edge, label %if.then8

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call9 = tail call fastcc i32 @__next_timer_interrupt(ptr noundef %6)
  %next_expiry = getelementptr inbounds %struct.timer_base, ptr %6, i32 0, i32 3
  %14 = ptrtoint ptr %next_expiry to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call9, ptr %next_expiry, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  %next_expiry11 = getelementptr inbounds %struct.timer_base, ptr %6, i32 0, i32 3
  %15 = ptrtoint ptr %next_expiry11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %next_expiry11, align 4
  %clk = getelementptr inbounds %struct.timer_base, ptr %6, i32 0, i32 2
  %17 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %clk, align 16
  %sub = sub i32 %18, %basej
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  %sub13 = sub i32 %basej, %16
  br i1 %cmp, label %if.then12, label %if.end24

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub13)
  %cmp14 = icmp slt i32 %sub13, 0
  br i1 %cmp14, label %if.end24.thread72, label %if.else

if.end24.thread72:                                ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #17
  %19 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %basej, ptr %clk, align 16
  br label %if.else28

if.else:                                          ; preds = %if.then12
  %sub18 = sub i32 %18, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub18)
  %cmp19 = icmp slt i32 %sub18, 0
  br i1 %cmp19, label %if.then20, label %if.else.if.end40.sink.split_crit_edge

if.else.if.end40.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40.sink.split

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %20 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %16, ptr %clk, align 16
  br label %if.end40.sink.split

if.end24:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub13)
  %cmp26 = icmp sgt i32 %sub13, -1
  br i1 %cmp26, label %if.end24.if.end40.sink.split_crit_edge, label %if.end24.if.else28_crit_edge

if.end24.if.else28_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else28

if.end24.if.end40.sink.split_crit_edge:           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40.sink.split

if.else28:                                        ; preds = %if.end24.if.else28_crit_edge, %if.end24.thread72
  %timers_pending = getelementptr inbounds %struct.timer_base, ptr %6, i32 0, i32 7
  %21 = ptrtoint ptr %timers_pending to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %timers_pending, align 2, !range !398
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool29.not = icmp eq i8 %22, 0
  br i1 %tobool29.not, label %if.else28.if.end33_crit_edge, label %if.then30

if.else28.if.end33_crit_edge:                     ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

if.then30:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #17
  %sub31 = sub i32 %16, %basej
  %conv = zext i32 %sub31 to i64
  %mul = mul nuw nsw i64 %conv, 10000000
  %add32 = add i64 %mul, %basem
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.else28.if.end33_crit_edge
  %expires.0 = phi i64 [ %add32, %if.then30 ], [ 9223372036854775807, %if.else28.if.end33_crit_edge ]
  %sub34 = sub i64 %expires.0, %basem
  call void @__sanitizer_cov_trace_const_cmp8(i64 10000000, i64 %sub34)
  %cmp35 = icmp ugt i64 %sub34, 10000000
  br i1 %cmp35, label %if.end33.if.end40.sink.split_crit_edge, label %if.end33.if.end40_crit_edge

if.end33.if.end40_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40

if.end33.if.end40.sink.split_crit_edge:           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40.sink.split

if.end40.sink.split:                              ; preds = %if.end33.if.end40.sink.split_crit_edge, %if.end24.if.end40.sink.split_crit_edge, %if.then20, %if.else.if.end40.sink.split_crit_edge
  %.sink = phi i8 [ 0, %if.else.if.end40.sink.split_crit_edge ], [ 0, %if.then20 ], [ 0, %if.end24.if.end40.sink.split_crit_edge ], [ 1, %if.end33.if.end40.sink.split_crit_edge ]
  %expires.1.ph = phi i64 [ %basem, %if.else.if.end40.sink.split_crit_edge ], [ %basem, %if.then20 ], [ %basem, %if.end24.if.end40.sink.split_crit_edge ], [ %expires.0, %if.end33.if.end40.sink.split_crit_edge ]
  %is_idle38 = getelementptr inbounds %struct.timer_base, ptr %6, i32 0, i32 6
  %23 = ptrtoint ptr %is_idle38 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %.sink, ptr %is_idle38, align 1
  br label %if.end40

if.end40:                                         ; preds = %if.end40.sink.split, %if.end33.if.end40_crit_edge
  %expires.1 = phi i64 [ %expires.0, %if.end33.if.end40_crit_edge ], [ %expires.1.ph, %if.end40.sink.split ]
  tail call void @_raw_spin_unlock(ptr noundef %6) #15
  %call.i = tail call i64 @hrtimer_get_next_event() #15
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %expires.1)
  %cmp.not.i = icmp ult i64 %call.i, %expires.1
  br i1 %cmp.not.i, label %if.end.i, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %basem)
  %cmp1.not.i = icmp ugt i64 %call.i, %basem
  br i1 %cmp1.not.i, label %if.end3.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i = add i64 %call.i, 9999999
  %24 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2972493582642298179, i64 %sub.i) #18, !srcloc !407
  %25 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2972493582642298179, i64 %sub.i, i64 %24, i32 0) #18, !srcloc !408
  %asmresult10.i.i = extractvalue { i64, i32 } %25, 0
  %div167274.i = lshr i64 %asmresult10.i.i, 23
  %mul190.i = mul i64 %div167274.i, 10000000
  br label %cleanup

cleanup:                                          ; preds = %if.end3.i, %if.end.i.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %cpu_online.exit.cleanup_crit_edge
  %retval.0 = phi i64 [ 9223372036854775807, %cpu_online.exit.cleanup_crit_edge ], [ %mul190.i, %if.end3.i ], [ %expires.1, %if.end40.cleanup_crit_edge ], [ %basem, %if.end.i.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__next_timer_interrupt(ptr noundef %base) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %clk1 = getelementptr inbounds %struct.timer_base, ptr %base, i32 0, i32 2
  %0 = ptrtoint ptr %clk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clk1, align 16
  %add = add i32 %1, 1073741823
  %pending_map.i = getelementptr inbounds %struct.timer_base, ptr %base, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %cleanup15.thread.for.body_crit_edge, %entry
  %offset.064 = phi i32 [ 0, %entry ], [ %add1.i, %cleanup15.thread.for.body_crit_edge ]
  %lvl.062 = phi i32 [ 0, %entry ], [ %inc, %cleanup15.thread.for.body_crit_edge ]
  %next.060 = phi i32 [ %add, %entry ], [ %next.2, %cleanup15.thread.for.body_crit_edge ]
  %clk.059 = phi i32 [ %1, %entry ], [ %add14, %cleanup15.thread.for.body_crit_edge ]
  %and = and i32 %clk.059, 63
  %add.i = or i32 %offset.064, %and
  %add1.i = add nuw nsw i32 %offset.064, 64
  %call.i = tail call i32 @_find_next_bit_be(ptr noundef %pending_map.i, i32 noundef %add1.i, i32 noundef %add.i) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %add1.i)
  %cmp.i = icmp ult i32 %call.i, %add1.i
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i = sub i32 %call.i, %add.i
  br label %next_pending_bucket.exit

if.end.i:                                         ; preds = %for.body
  %call4.i = tail call i32 @_find_next_bit_be(ptr noundef %pending_map.i, i32 noundef %add.i, i32 noundef %offset.064) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %call4.i, i32 %add.i)
  %cmp5.i = icmp ult i32 %call4.i, %add.i
  %add6.i = sub nsw i32 64, %add.i
  %sub7.i = add i32 %add6.i, %call4.i
  br i1 %cmp5.i, label %if.end.i.next_pending_bucket.exit_crit_edge, label %if.end.i.cleanup15.thread_crit_edge

if.end.i.cleanup15.thread_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup15.thread

if.end.i.next_pending_bucket.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %next_pending_bucket.exit

next_pending_bucket.exit:                         ; preds = %if.end.i.next_pending_bucket.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %sub7.i, %if.end.i.next_pending_bucket.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp4 = icmp sgt i32 %retval.0.i, -1
  br i1 %cmp4, label %if.then, label %next_pending_bucket.exit.cleanup15.thread_crit_edge

next_pending_bucket.exit.cleanup15.thread_crit_edge: ; preds = %next_pending_bucket.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup15.thread

if.then:                                          ; preds = %next_pending_bucket.exit
  %add5 = add i32 %retval.0.i, %clk.059
  %mul = mul nuw nsw i32 %lvl.062, 3
  %shl = shl i32 %add5, %mul
  %sub = sub i32 %shl, %next.060
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp6 = icmp slt i32 %sub, 0
  %spec.select = select i1 %cmp6, i32 %shl, i32 %next.060
  %sub8 = sub i32 0, %clk.059
  %and9 = and i32 %sub8, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %and9)
  %cmp10.not = icmp ugt i32 %retval.0.i, %and9
  br i1 %cmp10.not, label %if.then.cleanup15.thread_crit_edge, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.then.cleanup15.thread_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup15.thread

cleanup15.thread:                                 ; preds = %if.then.cleanup15.thread_crit_edge, %next_pending_bucket.exit.cleanup15.thread_crit_edge, %if.end.i.cleanup15.thread_crit_edge
  %next.2 = phi i32 [ %spec.select, %if.then.cleanup15.thread_crit_edge ], [ %next.060, %next_pending_bucket.exit.cleanup15.thread_crit_edge ], [ %next.060, %if.end.i.cleanup15.thread_crit_edge ]
  %and352 = and i32 %clk.059, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and352)
  %tobool.not = icmp ne i32 %and352, 0
  %cond = zext i1 %tobool.not to i32
  %shr = lshr i32 %clk.059, 3
  %add14 = add nuw nsw i32 %shr, %cond
  %inc = add nuw nsw i32 %lvl.062, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %cleanup15.thread.for.end_crit_edge, label %cleanup15.thread.for.body_crit_edge

cleanup15.thread.for.body_crit_edge:              ; preds = %cleanup15.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

cleanup15.thread.for.end_crit_edge:               ; preds = %cleanup15.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %cleanup15.thread.for.end_crit_edge, %if.then.for.end_crit_edge
  %next.4 = phi i32 [ %next.2, %cleanup15.thread.for.end_crit_edge ], [ %spec.select, %if.then.for.end_crit_edge ]
  %next_expiry_recalc = getelementptr inbounds %struct.timer_base, ptr %base, i32 0, i32 5
  %2 = ptrtoint ptr %next_expiry_recalc to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %next_expiry_recalc, align 4
  %3 = ptrtoint ptr %clk1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %clk1, align 16
  %add21 = add i32 %4, 1073741823
  call void @__sanitizer_cov_trace_cmp4(i32 %next.4, i32 %add21)
  %cmp22 = icmp ne i32 %next.4, %add21
  %timers_pending = getelementptr inbounds %struct.timer_base, ptr %base, i32 0, i32 7
  %frombool = zext i1 %cmp22 to i8
  %5 = ptrtoint ptr %timers_pending to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool, ptr %timers_pending, align 2
  ret i32 %next.4
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @timer_clear_idle() local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @timer_bases to i32)
  %6 = inttoptr i32 %add to ptr
  %is_idle = getelementptr inbounds %struct.timer_base, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %is_idle to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %is_idle, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @update_process_times(i32 noundef %user_tick) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %5 = ptrtoint ptr %3 to i32
  %6 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i.i5 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i5 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %11, ptrtoint (ptr @net_rand_noise to i32)
  %12 = inttoptr i32 %add.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %xor.i = xor i32 %14, %4
  %add8.i = add i32 %xor.i, %user_tick
  %or.i1.i = tail call i32 @llvm.fshl.i32(i32 %add8.i, i32 %add8.i, i32 16) #15
  %add15.i = add i32 %or.i1.i, %5
  %or.i2.i = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 7) #15
  %xor19.i = xor i32 %add15.i, %or.i2.i
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %xor19.i, ptr %12, align 4
  tail call void @account_process_tick(ptr noundef %3, i32 noundef %user_tick) #15
  %16 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i.i6 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i6 to ptr
  %cpu.i7 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %cpu.i7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu.i7, align 4
  %arrayidx.i8 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx.i8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i8, align 4
  %add.i9 = add i32 %21, ptrtoint (ptr @timer_bases to i32)
  %22 = inttoptr i32 %add.i9 to ptr
  tail call void @hrtimer_run_queues() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %next_expiry.i = getelementptr inbounds %struct.timer_base, ptr %22, i32 0, i32 3
  %24 = ptrtoint ptr %next_expiry.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %next_expiry.i, align 4
  %sub.i = sub i32 %23, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.if.end6.i_crit_edge

entry.if.end6.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i

if.then.i:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %next_expiry2.i = getelementptr %struct.timer_base, ptr %22, i32 1, i32 3
  %27 = ptrtoint ptr %next_expiry2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %next_expiry2.i, align 4
  %sub3.i = sub i32 %26, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub3.i)
  %cmp4.i = icmp slt i32 %sub3.i, 0
  br i1 %cmp4.i, label %if.then.i.run_local_timers.exit_crit_edge, label %if.then.i.if.end6.i_crit_edge

if.then.i.if.end6.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i

if.then.i.run_local_timers.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %run_local_timers.exit

if.end6.i:                                        ; preds = %if.then.i.if.end6.i_crit_edge, %entry.if.end6.i_crit_edge
  tail call void @raise_softirq(i32 noundef 1) #15
  br label %run_local_timers.exit

run_local_timers.exit:                            ; preds = %if.end6.i, %if.then.i.run_local_timers.exit_crit_edge
  tail call void @rcu_sched_clock_irq(i32 noundef %user_tick) #15
  %29 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %32, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %run_local_timers.exit.if.end_crit_edge, label %if.then

run_local_timers.exit.if.end_crit_edge:           ; preds = %run_local_timers.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %run_local_timers.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @irq_work_tick() #15
  br label %if.end

if.end:                                           ; preds = %if.then, %run_local_timers.exit.if.end_crit_edge
  tail call void @scheduler_tick() #15
  tail call void @run_posix_cpu_timers() #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @account_process_tick(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_sched_clock_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_work_tick() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scheduler_tick() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @run_posix_cpu_timers() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @schedule_timeout(i32 noundef %timeout) #0 section ".sched.text" align 64 {
entry:
  %timer = alloca %struct.process_timer, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %timer) #15
  %0 = call ptr @memset(ptr %timer, i32 255, i32 48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %timeout)
  %cond71 = icmp eq i32 %timeout, 2147483647
  br i1 %cond71, label %out.thread83, label %sw.default

out.thread83:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @schedule() #15
  br label %23

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %cmp = icmp slt i32 %timeout, 0
  br i1 %cmp, label %do.end, label %out

do.end:                                           ; preds = %sw.default
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %timeout) #19
  tail call void @dump_stack() #19
  br label %out.thread

out.thread:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %1 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 212
  %5 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 ptrtoint (ptr blockaddress(@schedule_timeout, %out.thread) to i32), ptr %task_state_change, align 4
  %6 = load ptr, ptr %task, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 0, ptr %6, align 128
  br label %22

out:                                              ; preds = %sw.default
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %8, %timeout
  %9 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i80 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i80 to ptr
  %task59 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task59 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task59, align 8
  %task60 = getelementptr inbounds %struct.process_timer, ptr %timer, i32 0, i32 1
  %13 = ptrtoint ptr %task60 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %task60, align 4
  call void @debug_object_init_on_stack(ptr noundef nonnull %timer, ptr noundef nonnull @timer_debug_descr) #15
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %timer, i32 0, i32 1
  %14 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %pprev.i.i, align 4
  %function.i.i = getelementptr inbounds %struct.timer_list, ptr %timer, i32 0, i32 2
  %15 = ptrtoint ptr %function.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @process_timeout, ptr %function.i.i, align 4
  %16 = call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu.i.i, align 4
  %flags41.i.i = getelementptr inbounds %struct.timer_list, ptr %timer, i32 0, i32 3
  %20 = ptrtoint ptr %flags41.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %flags41.i.i, align 4
  %lockdep_map.i.i = getelementptr inbounds %struct.timer_list, ptr %timer, i32 0, i32 4
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @schedule_timeout.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %call66 = call fastcc i32 @__mod_timer(ptr noundef nonnull %timer, i32 noundef %add, i32 noundef 4)
  call void @schedule() #15
  %call68 = call i32 @del_timer_sync(ptr noundef nonnull %timer)
  call void @debug_object_free(ptr noundef nonnull %timer, ptr noundef nonnull @timer_debug_descr) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp70 = icmp slt i32 %sub, 0
  br i1 %cmp70, label %out._crit_edge, label %out._crit_edge86

out._crit_edge86:                                 ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %23

out._crit_edge:                                   ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %22

22:                                               ; preds = %out._crit_edge, %out.thread
  br label %23

23:                                               ; preds = %22, %out._crit_edge86, %out.thread83
  %24 = phi i32 [ 0, %22 ], [ %sub, %out._crit_edge86 ], [ 2147483647, %out.thread83 ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %timer) #15
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @process_timeout(ptr nocapture noundef readonly %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %task = getelementptr inbounds %struct.process_timer, ptr %t, i32 0, i32 1
  %0 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %task, align 4
  %call = tail call i32 @wake_up_process(ptr noundef %1) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @schedule_timeout_interruptible(i32 noundef %timeout) #0 section ".sched.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %0 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 212
  %4 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 ptrtoint (ptr blockaddress(@schedule_timeout_interruptible, %__here) to i32), ptr %task_state_change, align 4
  %5 = load ptr, ptr %task, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 1, ptr %5, align 128
  %call51 = tail call i32 @schedule_timeout(i32 noundef %timeout)
  ret i32 %call51
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @schedule_timeout_killable(i32 noundef %timeout) #0 section ".sched.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %0 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 212
  %4 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 ptrtoint (ptr blockaddress(@schedule_timeout_killable, %__here) to i32), ptr %task_state_change, align 4
  %5 = load ptr, ptr %task, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 258, ptr %5, align 128
  %call51 = tail call i32 @schedule_timeout(i32 noundef %timeout)
  ret i32 %call51
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @schedule_timeout_uninterruptible(i32 noundef %timeout) #0 section ".sched.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %0 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 212
  %4 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 ptrtoint (ptr blockaddress(@schedule_timeout_uninterruptible, %__here) to i32), ptr %task_state_change, align 4
  %5 = load ptr, ptr %task, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 2, ptr %5, align 128
  %call51 = tail call i32 @schedule_timeout(i32 noundef %timeout)
  ret i32 %call51
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @schedule_timeout_idle(i32 noundef %timeout) #0 section ".sched.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %0 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 212
  %4 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 ptrtoint (ptr blockaddress(@schedule_timeout_idle, %__here) to i32), ptr %task_state_change, align 4
  %5 = load ptr, ptr %task, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 1026, ptr %5, align 128
  %call51 = tail call i32 @schedule_timeout(i32 noundef %timeout)
  ret i32 %call51
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @timers_prepare_cpu(i32 noundef %cpu) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx2 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx2, align 4
  %add = add i32 %1, ptrtoint (ptr @timer_bases to i32)
  %2 = inttoptr i32 %add to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %clk = getelementptr inbounds %struct.timer_base, ptr %2, i32 0, i32 2
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %clk, align 16
  %add4 = add i32 %3, 1073741823
  %next_expiry = getelementptr inbounds %struct.timer_base, ptr %2, i32 0, i32 3
  %5 = ptrtoint ptr %next_expiry to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add4, ptr %next_expiry, align 4
  %timers_pending = getelementptr inbounds %struct.timer_base, ptr %2, i32 0, i32 7
  %6 = ptrtoint ptr %timers_pending to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %timers_pending, align 2
  %is_idle = getelementptr inbounds %struct.timer_base, ptr %2, i32 0, i32 6
  %7 = ptrtoint ptr %is_idle to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %is_idle, align 1
  %8 = load i32, ptr %arrayidx2, align 4
  %add.1 = add i32 %8, ptrtoint (ptr getelementptr inbounds ([2 x %struct.timer_base], ptr @timer_bases, i32 0, i32 1) to i32)
  %9 = inttoptr i32 %add.1 to ptr
  %10 = load volatile i32, ptr @jiffies, align 128
  %clk.1 = getelementptr inbounds %struct.timer_base, ptr %9, i32 0, i32 2
  %11 = ptrtoint ptr %clk.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %clk.1, align 16
  %add4.1 = add i32 %10, 1073741823
  %next_expiry.1 = getelementptr inbounds %struct.timer_base, ptr %9, i32 0, i32 3
  %12 = ptrtoint ptr %next_expiry.1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add4.1, ptr %next_expiry.1, align 4
  %timers_pending.1 = getelementptr inbounds %struct.timer_base, ptr %9, i32 0, i32 7
  %13 = ptrtoint ptr %timers_pending.1 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %timers_pending.1, align 2
  %is_idle.1 = getelementptr inbounds %struct.timer_base, ptr %9, i32 0, i32 6
  %14 = ptrtoint ptr %is_idle.1 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %is_idle.1, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @timers_dead_cpu(i32 noundef %cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %cpu)
  %cmp.not.i.i.i.i = icmp ugt i32 %0, %cpu
  br i1 %cmp.not.i.i.i.i, label %entry.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

entry.cpu_online.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %entry
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !390

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.85, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %entry.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %cpu, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %1 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %cpu, 31
  %3 = shl nuw i32 1, %and.i.i.i76
  %4 = and i32 %2, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %for.cond.preheader, label %do.body2, !prof !390

for.cond.preheader:                               ; preds = %cpu_online.exit
  %arrayidx12 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  br label %do.body8

do.body2:                                         ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/time/timer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1965, 0\0A.popsection", ""() #15, !srcloc !409
  unreachable

do.body8:                                         ; preds = %for.end.do.body8_crit_edge, %for.cond.preheader
  %b.080 = phi i32 [ 0, %for.cond.preheader ], [ %inc60, %for.end.do.body8_crit_edge ]
  %arrayidx = getelementptr [2 x %struct.timer_base], ptr @timer_bases, i32 0, i32 %b.080
  %5 = ptrtoint ptr %arrayidx to i32
  %6 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx12, align 4
  %add = add i32 %7, %5
  %8 = inttoptr i32 %add to ptr
  %9 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !410
  %13 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i to ptr
  %cpu26 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu26 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu26, align 4
  %arrayidx27 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx27, align 4
  %add28 = add i32 %18, %5
  %19 = inttoptr i32 %add28 to ptr
  tail call void @_raw_spin_lock_irq(ptr noundef %19) #15
  tail call void @_raw_spin_lock_nested(ptr noundef %8, i32 noundef 1) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %clk.i = getelementptr inbounds %struct.timer_base, ptr %19, i32 0, i32 2
  %21 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %clk.i, align 16
  %sub.i77 = sub i32 %20, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i77)
  %cmp.i = icmp slt i32 %sub.i77, 1
  br i1 %cmp.i, label %do.body8.forward_timer_base.exit_crit_edge, label %if.end.i

do.body8.forward_timer_base.exit_crit_edge:       ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #17
  br label %forward_timer_base.exit

if.end.i:                                         ; preds = %do.body8
  %next_expiry.i = getelementptr inbounds %struct.timer_base, ptr %19, i32 0, i32 3
  %23 = ptrtoint ptr %next_expiry.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %next_expiry.i, align 4
  %sub1.i = sub i32 %20, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1.i)
  %cmp2.i = icmp slt i32 %sub1.i, 0
  br i1 %cmp2.i, label %if.end.i.if.end54.i_crit_edge, label %if.else.i

if.end.i.if.end54.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end54.i

if.else.i:                                        ; preds = %if.end.i
  %sub7.i = sub i32 %24, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub7.i)
  %cmp8.i = icmp slt i32 %sub7.i, 0
  br i1 %cmp8.i, label %land.rhs.i, label %if.else.i.if.end54.i_crit_edge

if.else.i.if.end54.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end54.i

land.rhs.i:                                       ; preds = %if.else.i
  %.b65.i = load i1, ptr @forward_timer_base.__already_done, align 1
  br i1 %.b65.i, label %land.rhs.i.forward_timer_base.exit_crit_edge, label %if.then15.i, !prof !390

land.rhs.i.forward_timer_base.exit_crit_edge:     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %forward_timer_base.exit

if.then15.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @forward_timer_base.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 911, i32 noundef 9, ptr noundef null) #15
  br label %forward_timer_base.exit

if.end54.i:                                       ; preds = %if.else.i.if.end54.i_crit_edge, %if.end.i.if.end54.i_crit_edge
  %storemerge.i = phi i32 [ %20, %if.end.i.if.end54.i_crit_edge ], [ %24, %if.else.i.if.end54.i_crit_edge ]
  %25 = ptrtoint ptr %clk.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %storemerge.i, ptr %clk.i, align 16
  br label %forward_timer_base.exit

forward_timer_base.exit:                          ; preds = %if.end54.i, %if.then15.i, %land.rhs.i.forward_timer_base.exit_crit_edge, %do.body8.forward_timer_base.exit_crit_edge
  %running_timer = getelementptr inbounds %struct.timer_base, ptr %8, i32 0, i32 1
  %26 = ptrtoint ptr %running_timer to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %running_timer, align 4
  %tobool31.not = icmp eq ptr %27, null
  br i1 %tobool31.not, label %for.cond48.preheader, label %do.body39, !prof !390

for.cond48.preheader:                             ; preds = %forward_timer_base.exit
  %vectors = getelementptr inbounds %struct.timer_base, ptr %8, i32 0, i32 9
  %cpu1.i = getelementptr inbounds %struct.timer_base, ptr %19, i32 0, i32 4
  br label %for.body50

do.body39:                                        ; preds = %forward_timer_base.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/time/timer.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1983, 0\0A.popsection", ""() #15, !srcloc !411
  unreachable

for.body50:                                       ; preds = %migrate_timer_list.exit.for.body50_crit_edge, %for.cond48.preheader
  %i.079 = phi i32 [ 0, %for.cond48.preheader ], [ %inc, %migrate_timer_list.exit.for.body50_crit_edge ]
  %add.ptr = getelementptr %struct.hlist_head, ptr %vectors, i32 %i.079
  %28 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu1.i, align 8
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %add.ptr, align 4
  %tobool.not.i.not8.i = icmp eq ptr %31, null
  br i1 %tobool.not.i.not8.i, label %for.body50.migrate_timer_list.exit_crit_edge, label %for.body50.while.body.i_crit_edge

for.body50.while.body.i_crit_edge:                ; preds = %for.body50
  br label %while.body.i

for.body50.migrate_timer_list.exit_crit_edge:     ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #17
  br label %migrate_timer_list.exit

while.body.i:                                     ; preds = %detach_timer.exit.i.while.body.i_crit_edge, %for.body50.while.body.i_crit_edge
  %32 = phi ptr [ %43, %detach_timer.exit.i.while.body.i_crit_edge ], [ %31, %for.body50.while.body.i_crit_edge ]
  tail call void @debug_object_deactivate(ptr noundef nonnull %32, ptr noundef nonnull @timer_debug_descr) #15
  tail call fastcc void @trace_timer_cancel(ptr noundef nonnull %32) #15
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %pprev2.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %32, i32 0, i32 1
  %35 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pprev2.i.i.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %34, ptr %36, align 4
  %tobool.not.i.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i.i, label %while.body.i.detach_timer.exit.i_crit_edge, label %do.body13.i.i.i

while.body.i.detach_timer.exit.i_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %detach_timer.exit.i

do.body13.i.i.i:                                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %34, i32 0, i32 1
  %38 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %36, ptr %pprev14.i.i.i, align 4
  br label %detach_timer.exit.i

detach_timer.exit.i:                              ; preds = %do.body13.i.i.i, %while.body.i.detach_timer.exit.i_crit_edge
  %39 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 290 to ptr), ptr %32, align 4
  %flags.i = getelementptr inbounds %struct.timer_list, ptr %32, i32 0, i32 3
  %40 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags.i, align 4
  %and.i78 = and i32 %41, -524288
  %or.i = or i32 %and.i78, %29
  store i32 %or.i, ptr %flags.i, align 4
  tail call fastcc void @internal_add_timer(ptr noundef %19, ptr noundef nonnull %32) #15
  %42 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %add.ptr, align 4
  %tobool.not.i.not.i = icmp eq ptr %43, null
  br i1 %tobool.not.i.not.i, label %detach_timer.exit.i.migrate_timer_list.exit_crit_edge, label %detach_timer.exit.i.while.body.i_crit_edge

detach_timer.exit.i.while.body.i_crit_edge:       ; preds = %detach_timer.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

detach_timer.exit.i.migrate_timer_list.exit_crit_edge: ; preds = %detach_timer.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %migrate_timer_list.exit

migrate_timer_list.exit:                          ; preds = %detach_timer.exit.i.migrate_timer_list.exit_crit_edge, %for.body50.migrate_timer_list.exit_crit_edge
  %inc = add nuw nsw i32 %i.079, 1
  %exitcond.not = icmp eq i32 %inc, 512
  br i1 %exitcond.not, label %for.end, label %migrate_timer_list.exit.for.body50_crit_edge

migrate_timer_list.exit.for.body50_crit_edge:     ; preds = %migrate_timer_list.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body50

for.end:                                          ; preds = %migrate_timer_list.exit
  tail call void @_raw_spin_unlock(ptr noundef %8) #15
  tail call void @_raw_spin_unlock_irq(ptr noundef %19) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !412
  %44 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i.i.i74 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %47, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  %inc60 = add nuw nsw i32 %b.080, 1
  %exitcond81.not = icmp eq i32 %inc60, 2
  br i1 %exitcond81.not, label %for.end61, label %for.end.do.body8_crit_edge

for.end.do.body8_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body8

for.end61:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @init_timers() local_unnamed_addr #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @init_timer_cpus() #20
  tail call void @open_softirq(i32 noundef 1, ptr noundef nonnull @run_timer_softirq) #15
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @init_timer_cpus() unnamed_addr #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call3 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %0)
  %cmp4 = icmp ult i32 %call3, %0
  br i1 %cmp4, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %call5 = phi i32 [ %call, %for.body.for.body_crit_edge ], [ %call3, %entry.for.body_crit_edge ]
  tail call fastcc void @init_timer_cpu(i32 noundef %call5) #20
  %call = tail call i32 @cpumask_next(i32 noundef %call5, ptr noundef nonnull @__cpu_possible_mask) #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %1
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @open_softirq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @run_timer_softirq(ptr nocapture noundef readnone %h) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @timer_bases to i32)
  %6 = inttoptr i32 %add to ptr
  tail call fastcc void @__run_timers(ptr noundef %6)
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx11 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx11, align 4
  %add12 = add i32 %10, ptrtoint (ptr getelementptr inbounds ([2 x %struct.timer_base], ptr @timer_bases, i32 0, i32 1) to i32)
  %11 = inttoptr i32 %add12 to ptr
  tail call fastcc void @__run_timers(ptr noundef %11)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msleep(i32 noundef %msecs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %msecs) #15
  %add = add i32 %call2.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool.not3 = icmp eq i32 %add, 0
  br i1 %tobool.not3, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %timeout.04 = phi i32 [ %call1, %while.body.while.body_crit_edge ], [ %add, %entry.while.body_crit_edge ]
  %call1 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef %timeout.04)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msleep_interruptible(i32 noundef %msecs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %msecs) #15
  %add = add i32 %call2.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool.not12 = icmp eq i32 %add, 0
  br i1 %tobool.not12, label %entry.while.end_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %timeout.013 = phi i32 [ %call4, %while.body.land.rhs_crit_edge ], [ %add, %entry.land.rhs_crit_edge ]
  %0 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stack.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %8 = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %land.rhs.while.end_crit_edge, !prof !390

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

signal_pending.exit:                              ; preds = %land.rhs
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %5, align 4
  %and1.i.i.i.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool3.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool3.not, label %while.body, label %signal_pending.exit.while.end_crit_edge

signal_pending.exit.while.end_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body:                                       ; preds = %signal_pending.exit
  %call4 = tail call i32 @schedule_timeout_interruptible(i32 noundef %timeout.013)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %signal_pending.exit.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  %timeout.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %timeout.013, %land.rhs.while.end_crit_edge ], [ 0, %while.body.while.end_crit_edge ], [ %timeout.013, %signal_pending.exit.while.end_crit_edge ]
  %call5 = tail call i32 @jiffies_to_msecs(i32 noundef %timeout.0.lcssa) #15
  ret i32 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usleep_range_state(i32 noundef %min, i32 noundef %max, i32 noundef %state) #0 section ".sched.text" align 64 {
entry:
  %exp = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %exp) #15
  %call = tail call i64 @ktime_get() #15
  %conv = zext i32 %min to i64
  %mul.i = mul nuw nsw i64 %conv, 1000
  %add.i = add i64 %call, %mul.i
  %0 = ptrtoint ptr %exp to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %add.i, ptr %exp, align 8
  %sub = sub i32 %max, %min
  %conv2 = zext i32 %sub to i64
  %mul = mul nuw nsw i64 %conv2, 1000
  %and = and i32 %state, 204
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br label %for.cond

for.cond:                                         ; preds = %__here.for.cond_crit_edge, %entry
  br i1 %tobool.not, label %for.cond.__here_crit_edge, label %land.rhs

for.cond.__here_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

land.rhs:                                         ; preds = %for.cond
  %.b66 = load i1, ptr @usleep_range_state.__already_done, align 1
  br i1 %.b66, label %land.rhs.__here_crit_edge, label %if.then, !prof !390

land.rhs.__here_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @usleep_range_state.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 2075, i32 noundef 9, ptr noundef null) #15
  br label %__here

__here:                                           ; preds = %if.then, %land.rhs.__here_crit_edge, %for.cond.__here_crit_edge
  %1 = call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 212
  %5 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 ptrtoint (ptr blockaddress(@usleep_range_state, %__here) to i32), ptr %task_state_change, align 4
  %6 = load ptr, ptr %task, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 %state, ptr %6, align 128
  %call58 = call i32 @schedule_hrtimeout_range(ptr noundef nonnull %exp, i64 noundef %mul, i32 noundef 0) #15
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %for.end, label %__here.for.cond_crit_edge

__here.for.cond_crit_edge:                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond

for.end:                                          ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %exp) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_hrtimeout_range(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_timer_class(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %timer = getelementptr inbounds %struct.trace_event_raw_timer_class, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %timer, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.17, ptr noundef %3) #15
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_timer_start(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %timer = getelementptr inbounds %struct.trace_event_raw_timer_start, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %timer, align 4
  %function = getelementptr inbounds %struct.trace_event_raw_timer_start, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %function, align 4
  %expires = getelementptr inbounds %struct.trace_event_raw_timer_start, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %expires to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %expires, align 4
  %now = getelementptr inbounds %struct.trace_event_raw_timer_start, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %now to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %now, align 4
  %sub = sub i32 %7, %9
  %flags2 = getelementptr inbounds %struct.trace_event_raw_timer_start, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags2, align 4
  %and = and i32 %11, 262143
  %shr = lshr i32 %11, 22
  %and5 = and i32 %11, 3932160
  %call6 = tail call ptr @trace_print_flags_seq(ptr noundef %tmp_seq, ptr noundef nonnull @.str.29, i32 noundef %and5, ptr noundef nonnull @trace_raw_output_timer_start.__flags) #15
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.24, ptr noundef %3, ptr noundef %5, i32 noundef %7, i32 noundef %sub, i32 noundef %and, i32 noundef %shr, ptr noundef %call6) #15
  %call7 = tail call i32 @trace_handle_return(ptr noundef %seq) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_flags_seq(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_timer_expire_entry(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %timer = getelementptr inbounds %struct.trace_event_raw_timer_expire_entry, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %timer, align 4
  %function = getelementptr inbounds %struct.trace_event_raw_timer_expire_entry, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %function, align 4
  %now = getelementptr inbounds %struct.trace_event_raw_timer_expire_entry, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %now to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %now, align 4
  %baseclk = getelementptr inbounds %struct.trace_event_raw_timer_expire_entry, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %baseclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %baseclk, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.31, ptr noundef %3, ptr noundef %5, i32 noundef %7, i32 noundef %9) #15
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_hrtimer_init(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %hrtimer = getelementptr inbounds %struct.trace_event_raw_hrtimer_init, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hrtimer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hrtimer, align 4
  %clockid = getelementptr inbounds %struct.trace_event_raw_hrtimer_init, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %clockid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clockid, align 4
  %call1 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %5, ptr noundef nonnull @trace_raw_output_hrtimer_init.symbols) #15
  %mode = getelementptr inbounds %struct.trace_event_raw_hrtimer_init, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode, align 4
  %call3 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %7, ptr noundef nonnull @trace_raw_output_hrtimer_init.symbols.42) #15
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.37, ptr noundef %3, ptr noundef %call1, ptr noundef %call3) #15
  %call4 = tail call i32 @trace_handle_return(ptr noundef %seq) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_symbols_seq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_hrtimer_start(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %hrtimer = getelementptr inbounds %struct.trace_event_raw_hrtimer_start, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hrtimer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hrtimer, align 8
  %function = getelementptr inbounds %struct.trace_event_raw_hrtimer_start, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %function, align 4
  %expires = getelementptr inbounds %struct.trace_event_raw_hrtimer_start, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %expires to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %expires, align 8
  %softexpires = getelementptr inbounds %struct.trace_event_raw_hrtimer_start, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %softexpires to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %softexpires, align 8
  %mode = getelementptr inbounds %struct.trace_event_raw_hrtimer_start, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode, align 8
  %call1 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %11, ptr noundef nonnull @trace_raw_output_hrtimer_start.symbols) #15
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.53, ptr noundef %3, ptr noundef %5, i64 noundef %7, i64 noundef %9, ptr noundef %call1) #15
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_hrtimer_expire_entry(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %hrtimer = getelementptr inbounds %struct.trace_event_raw_hrtimer_expire_entry, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hrtimer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hrtimer, align 8
  %function = getelementptr inbounds %struct.trace_event_raw_hrtimer_expire_entry, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %function, align 8
  %now = getelementptr inbounds %struct.trace_event_raw_hrtimer_expire_entry, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %now to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %now, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.54, ptr noundef %3, ptr noundef %5, i64 noundef %7) #15
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_hrtimer_class(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %hrtimer = getelementptr inbounds %struct.trace_event_raw_hrtimer_class, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hrtimer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hrtimer, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.55, ptr noundef %3) #15
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_itimer_state(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %which = getelementptr inbounds %struct.trace_event_raw_itimer_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %which to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %which, align 8
  %expires = getelementptr inbounds %struct.trace_event_raw_itimer_state, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %expires to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %expires, align 8
  %value_sec = getelementptr inbounds %struct.trace_event_raw_itimer_state, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %value_sec to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value_sec, align 8
  %value_nsec = getelementptr inbounds %struct.trace_event_raw_itimer_state, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %value_nsec to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value_nsec, align 4
  %div = sdiv i32 %9, 1000
  %interval_sec = getelementptr inbounds %struct.trace_event_raw_itimer_state, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %interval_sec to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %interval_sec, align 8
  %interval_nsec = getelementptr inbounds %struct.trace_event_raw_itimer_state, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %interval_nsec to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %interval_nsec, align 4
  %div1 = sdiv i32 %13, 1000
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.64, i32 noundef %3, i64 noundef %5, i32 noundef %7, i32 noundef %div, i32 noundef %11, i32 noundef %div1) #15
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_itimer_expire(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %which = getelementptr inbounds %struct.trace_event_raw_itimer_expire, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %which to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %which, align 8
  %pid = getelementptr inbounds %struct.trace_event_raw_itimer_expire, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pid, align 4
  %now = getelementptr inbounds %struct.trace_event_raw_itimer_expire, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %now to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %now, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.67, i32 noundef %3, i32 noundef %5, i64 noundef %7) #15
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_tick_stop(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %success = getelementptr inbounds %struct.trace_event_raw_tick_stop, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %success to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %success, align 4
  %dependency = getelementptr inbounds %struct.trace_event_raw_tick_stop, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dependency to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dependency, align 4
  %call1 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %5, ptr noundef nonnull @trace_raw_output_tick_stop.symbols) #15
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.70, i32 noundef %3, ptr noundef %call1) #15
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #9

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run1(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @timer_update_keys(ptr nocapture noundef readnone %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @timer_keys_mutex, i32 noundef 0) #15
  %0 = load i32, ptr @sysctl_timer_migration, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.if.else.i_crit_edge, label %land.lhs.true.i

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tick_nohz_active to i32))
  %1 = load i32, ptr @tick_nohz_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not.i = icmp eq i32 %1, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @static_key_enable(ptr noundef nonnull @timers_migration_enabled) #15
  br label %timers_update_migration.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  tail call void @static_key_disable(ptr noundef nonnull @timers_migration_enabled) #15
  br label %timers_update_migration.exit

timers_update_migration.exit:                     ; preds = %if.else.i, %if.then.i
  tail call void @static_key_enable(ptr noundef nonnull @timers_nohz_active) #15
  tail call void @mutex_unlock(ptr noundef nonnull @timer_keys_mutex) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @timer_debug_hint(ptr nocapture noundef readonly %addr) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %function = getelementptr inbounds %struct.timer_list, ptr %addr, i32 0, i32 2
  %0 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %function, align 4
  ret ptr %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @timer_is_static_object(ptr nocapture noundef readonly %addr) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pprev = getelementptr inbounds %struct.hlist_node, ptr %addr, i32 0, i32 1
  %0 = ptrtoint ptr %pprev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addr, align 4
  %cmp3 = icmp eq ptr %3, inttoptr (i32 768 to ptr)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %4 = phi i1 [ false, %entry.land.end_crit_edge ], [ %cmp3, %land.rhs ]
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @timer_fixup_init(ptr noundef %addr, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %state)
  %cond = icmp eq i32 %state, 3
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 @del_timer_sync(ptr noundef %addr)
  tail call void @debug_object_init(ptr noundef %addr, ptr noundef nonnull @timer_debug_descr) #15
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  ret i1 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @timer_fixup_activate(ptr noundef %addr, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %state, label %entry.cleanup_crit_edge [
    i32 5, label %do.body
    i32 3, label %do.end7
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @debug_object_init(ptr noundef %addr, ptr noundef nonnull @timer_debug_descr) #15
  tail call fastcc void @trace_timer_init(ptr noundef %addr) #15
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %addr, i32 0, i32 1
  %1 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %pprev.i.i, align 4
  %function.i.i = getelementptr inbounds %struct.timer_list, ptr %addr, i32 0, i32 2
  %2 = ptrtoint ptr %function.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @stub_timer, ptr %function.i.i, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu.i.i, align 4
  %flags41.i.i = getelementptr inbounds %struct.timer_list, ptr %addr, i32 0, i32 3
  %7 = ptrtoint ptr %flags41.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %flags41.i.i, align 4
  %lockdep_map.i.i = getelementptr inbounds %struct.timer_list, ptr %addr, i32 0, i32 4
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i, ptr noundef nonnull @.str.82, ptr noundef nonnull @timer_fixup_activate.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  br label %cleanup

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 670, i32 noundef 9, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %do.body ], [ false, %entry.cleanup_crit_edge ], [ false, %do.end7 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @timer_fixup_free(ptr noundef %addr, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %state)
  %cond = icmp eq i32 %state, 3
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 @del_timer_sync(ptr noundef %addr)
  tail call void @debug_object_free(ptr noundef %addr, ptr noundef nonnull @timer_debug_descr) #15
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  ret i1 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @timer_fixup_assert_init(ptr noundef %addr, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %state)
  %cond = icmp eq i32 %state, 5
  br i1 %cond, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @debug_object_init(ptr noundef %addr, ptr noundef nonnull @timer_debug_descr) #15
  tail call fastcc void @trace_timer_init(ptr noundef %addr) #15
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %addr, i32 0, i32 1
  %0 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %pprev.i.i, align 4
  %function.i.i = getelementptr inbounds %struct.timer_list, ptr %addr, i32 0, i32 2
  %1 = ptrtoint ptr %function.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @stub_timer, ptr %function.i.i, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu.i.i, align 4
  %flags41.i.i = getelementptr inbounds %struct.timer_list, ptr %addr, i32 0, i32 3
  %6 = ptrtoint ptr %flags41.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %flags41.i.i, align 4
  %lockdep_map.i.i = getelementptr inbounds %struct.timer_list, ptr %addr, i32 0, i32 4
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i, ptr noundef nonnull @.str.82, ptr noundef nonnull @timer_fixup_assert_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  ret i1 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_object_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stub_timer(ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 652, i32 noundef 9, ptr noundef null) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_timer_init(ptr noundef %timer) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_timer_init, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_timer_init, %do.body)) #15
          to label %if.end48 [label %do.body], !srcloc !397

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !390

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.85, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !413
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_timer_init, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, ptr noundef %timer) #15
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !414
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !414
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i.i.i73.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i74.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !390

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.85, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !415
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_timer_init, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_timer_init.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @trace_timer_init.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.83, i32 noundef 38, ptr noundef nonnull @.str.84) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !416
  %38 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal fastcc i32 @calc_wheel_index(i32 noundef %expires, i32 noundef %clk, ptr nocapture noundef writeonly %bucket_expiry) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = sub i32 %expires, %clk
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %sub)
  %cmp = icmp ult i32 %sub, 63
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %add.i = add i32 %expires, 1
  %0 = ptrtoint ptr %bucket_expiry to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %add.i, ptr %bucket_expiry, align 4
  %and.i = and i32 %add.i, 63
  br label %if.end38

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 504, i32 %sub)
  %cmp1 = icmp ult i32 %sub, 504
  br i1 %cmp1, label %if.then2, label %if.else4

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %add.i66 = add i32 %expires, 8
  %shr.i = lshr i32 %add.i66, 3
  %shl3.i = and i32 %add.i66, -8
  %1 = ptrtoint ptr %bucket_expiry to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %shl3.i, ptr %bucket_expiry, align 4
  %and.i67 = and i32 %shr.i, 63
  %add5.i = or i32 %and.i67, 64
  br label %if.end38

if.else4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 4032, i32 %sub)
  %cmp5 = icmp ult i32 %sub, 4032
  br i1 %cmp5, label %if.then6, label %if.else8

if.then6:                                         ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #17
  %add.i68 = add i32 %expires, 64
  %shr.i69 = lshr i32 %add.i68, 6
  %shl3.i70 = and i32 %add.i68, -64
  %2 = ptrtoint ptr %bucket_expiry to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %shl3.i70, ptr %bucket_expiry, align 4
  %and.i71 = and i32 %shr.i69, 63
  %add5.i72 = or i32 %and.i71, 128
  br label %if.end38

if.else8:                                         ; preds = %if.else4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32256, i32 %sub)
  %cmp9 = icmp ult i32 %sub, 32256
  br i1 %cmp9, label %if.then10, label %if.else12

if.then10:                                        ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #17
  %add.i73 = add i32 %expires, 512
  %shr.i74 = lshr i32 %add.i73, 9
  %shl3.i75 = and i32 %add.i73, -512
  %3 = ptrtoint ptr %bucket_expiry to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %shl3.i75, ptr %bucket_expiry, align 4
  %and.i76 = and i32 %shr.i74, 63
  %add5.i77 = or i32 %and.i76, 192
  br label %if.end38

if.else12:                                        ; preds = %if.else8
  call void @__sanitizer_cov_trace_const_cmp4(i32 258048, i32 %sub)
  %cmp13 = icmp ult i32 %sub, 258048
  br i1 %cmp13, label %if.then14, label %if.else16

if.then14:                                        ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #17
  %add.i78 = add i32 %expires, 4096
  %shr.i79 = lshr i32 %add.i78, 12
  %shl3.i80 = and i32 %add.i78, -4096
  %4 = ptrtoint ptr %bucket_expiry to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shl3.i80, ptr %bucket_expiry, align 4
  %and.i81 = and i32 %shr.i79, 63
  %add5.i82 = or i32 %and.i81, 256
  br label %if.end38

if.else16:                                        ; preds = %if.else12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2064384, i32 %sub)
  %cmp17 = icmp ult i32 %sub, 2064384
  br i1 %cmp17, label %if.then18, label %if.else20

if.then18:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #17
  %add.i83 = add i32 %expires, 32768
  %shr.i84 = lshr i32 %add.i83, 15
  %shl3.i85 = and i32 %add.i83, -32768
  %5 = ptrtoint ptr %bucket_expiry to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shl3.i85, ptr %bucket_expiry, align 4
  %and.i86 = and i32 %shr.i84, 63
  %add5.i87 = or i32 %and.i86, 320
  br label %if.end38

if.else20:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_const_cmp4(i32 16515072, i32 %sub)
  %cmp21 = icmp ult i32 %sub, 16515072
  br i1 %cmp21, label %if.then22, label %if.else24

if.then22:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #17
  %add.i88 = add i32 %expires, 262144
  %shr.i89 = lshr i32 %add.i88, 18
  %shl3.i90 = and i32 %add.i88, -262144
  %6 = ptrtoint ptr %bucket_expiry to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %shl3.i90, ptr %bucket_expiry, align 4
  %and.i91 = and i32 %shr.i89, 63
  %add5.i92 = or i32 %and.i91, 384
  br label %if.end38

if.else24:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp25 = icmp slt i32 %sub, 0
  br i1 %cmp25, label %if.then26, label %if.else27

if.then26:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #17
  %and = and i32 %clk, 63
  %7 = ptrtoint ptr %bucket_expiry to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %clk, ptr %bucket_expiry, align 4
  br label %if.end38

if.else27:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 132120575, i32 %sub)
  %cmp28 = icmp ugt i32 %sub, 132120575
  %add = add i32 %clk, 130023424
  %spec.select = select i1 %cmp28, i32 %add, i32 %expires
  %add.i93 = add i32 %spec.select, 2097152
  %shr.i94 = lshr i32 %add.i93, 21
  %shl3.i95 = and i32 %add.i93, -2097152
  %8 = ptrtoint ptr %bucket_expiry to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %shl3.i95, ptr %bucket_expiry, align 4
  %and.i96 = and i32 %shr.i94, 63
  %add5.i97 = or i32 %and.i96, 448
  br label %if.end38

if.end38:                                         ; preds = %if.else27, %if.then26, %if.then22, %if.then18, %if.then14, %if.then10, %if.then6, %if.then2, %if.then
  %idx.0 = phi i32 [ %and.i, %if.then ], [ %add5.i, %if.then2 ], [ %add5.i72, %if.then6 ], [ %add5.i77, %if.then10 ], [ %add5.i82, %if.then14 ], [ %add5.i87, %if.then18 ], [ %add5.i92, %if.then22 ], [ %and, %if.then26 ], [ %add5.i97, %if.else27 ]
  ret i32 %idx.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_nohz_timer_target() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_timer_start(ptr noundef %timer, i32 noundef %expires, i32 noundef %flags) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_timer_start, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_timer_start, %do.body)) #15
          to label %if.end48 [label %do.body], !srcloc !397

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !390

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.85, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !417
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_timer_start, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, ptr noundef %timer, i32 noundef %expires, i32 noundef %flags) #15
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !418
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !418
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i.i.i73.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i74.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !390

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.85, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !415
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_timer_start, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_timer_start.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @trace_timer_start.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.83, i32 noundef 82, ptr noundef nonnull @.str.84) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !416
  %38 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_nohz_cpu(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_object_activate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_object_assert_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_timer_cancel(ptr noundef %timer) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_timer_cancel, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_timer_cancel, %do.body)) #15
          to label %if.end48 [label %do.body], !srcloc !397

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !390

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.85, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !419
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_timer_cancel, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, ptr noundef %timer) #15
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !420
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !420
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i.i.i73.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i74.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !390

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.85, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !415
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_timer_cancel, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_timer_cancel.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @trace_timer_cancel.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.83, i32 noundef 141, ptr noundef nonnull @.str.84) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !416
  %38 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_object_deactivate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hrtimer_get_next_event() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_run_queues() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @raise_softirq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @init_timer_cpu(i32 noundef %cpu) unnamed_addr #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx2 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %cmp = phi i1 [ true, %entry ], [ false, %do.body.do.body_crit_edge ]
  %i.017 = phi i32 [ 0, %entry ], [ 1, %do.body.do.body_crit_edge ]
  %arrayidx = getelementptr [2 x %struct.timer_base], ptr @timer_bases, i32 0, i32 %i.017
  %0 = ptrtoint ptr %arrayidx to i32
  %1 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx2, align 4
  %add = add i32 %2, %0
  %3 = inttoptr i32 %add to ptr
  %cpu3 = getelementptr inbounds %struct.timer_base, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %cpu3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cpu, ptr %cpu3, align 8
  tail call void @__raw_spin_lock_init(ptr noundef %3, ptr noundef nonnull @.str.86, ptr noundef nonnull @init_timer_cpu.__key, i16 noundef signext 2) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %clk = getelementptr inbounds %struct.timer_base, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %clk, align 16
  %add8 = add i32 %5, 1073741823
  %next_expiry = getelementptr inbounds %struct.timer_base, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %next_expiry to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add8, ptr %next_expiry, align 4
  br i1 %cmp, label %do.body.do.body_crit_edge, label %for.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

for.end:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__run_timers(ptr noundef %base) unnamed_addr #5 align 64 {
entry:
  %heads = alloca [8 x %struct.hlist_head], align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %heads) #15
  %0 = call ptr @memset(ptr %heads, i32 255, i32 32)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %next_expiry = getelementptr inbounds %struct.timer_base, ptr %base, i32 0, i32 3
  %2 = ptrtoint ptr %next_expiry to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %next_expiry, align 4
  %sub = sub i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock_irq(ptr noundef %base) #15
  %clk = getelementptr inbounds %struct.timer_base, ptr %base, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %clk, align 16
  %sub182 = sub i32 %4, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub182)
  %cmp283 = icmp sgt i32 %sub182, -1
  br i1 %cmp283, label %land.rhs.lr.ph, label %if.end.while.end56_crit_edge

if.end.while.end56_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end56

land.rhs.lr.ph:                                   ; preds = %if.end
  %pending_map.i = getelementptr inbounds %struct.timer_base, ptr %base, i32 0, i32 8
  %vectors.i = getelementptr inbounds %struct.timer_base, ptr %base, i32 0, i32 9
  %next_expiry_recalc = getelementptr inbounds %struct.timer_base, ptr %base, i32 0, i32 5
  %running_timer.i = getelementptr inbounds %struct.timer_base, ptr %base, i32 0, i32 1
  br label %land.rhs

while.cond.loopexit.sink.split:                   ; preds = %if.then19, %land.rhs12.while.cond.loopexit.sink.split_crit_edge, %land.rhs6.while.cond.loopexit.sink.split_crit_edge
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %clk, align 16
  %inc.c90 = add i32 %8, 1
  store i32 %inc.c90, ptr %clk, align 16
  %call50.c91 = call fastcc i32 @__next_timer_interrupt(ptr noundef %base)
  %9 = ptrtoint ptr %next_expiry to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call50.c91, ptr %next_expiry, align 4
  br label %while.cond.loopexit

while.cond.loopexit:                              ; preds = %expire_timers.exit.while.cond.loopexit_crit_edge, %while.cond.loopexit.sink.split
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %clk, align 16
  %sub1 = sub i32 %10, %12
  %cmp2 = icmp sgt i32 %sub1, -1
  br i1 %cmp2, label %while.cond.loopexit.land.rhs_crit_edge, label %while.cond.loopexit.while.end56_crit_edge

while.cond.loopexit.while.end56_crit_edge:        ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end56

while.cond.loopexit.land.rhs_crit_edge:           ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs

land.rhs:                                         ; preds = %while.cond.loopexit.land.rhs_crit_edge, %land.rhs.lr.ph
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %14 = ptrtoint ptr %next_expiry to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %next_expiry, align 4
  %sub4 = sub i32 %13, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub4)
  %cmp5 = icmp sgt i32 %sub4, -1
  br i1 %cmp5, label %while.body, label %land.rhs.while.end56_crit_edge

land.rhs.while.end56_crit_edge:                   ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end56

while.body:                                       ; preds = %land.rhs
  %16 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %clk, align 16
  br label %for.body.i

for.body.i:                                       ; preds = %if.end6.i.for.body.i_crit_edge, %while.body
  %levels.020.i = phi i32 [ 0, %while.body ], [ %levels.1.i, %if.end6.i.for.body.i_crit_edge ]
  %i.019.i = phi i32 [ 0, %while.body ], [ %inc7.i, %if.end6.i.for.body.i_crit_edge ]
  %clk.018.i = phi i32 [ %15, %while.body ], [ %shr.i, %if.end6.i.for.body.i_crit_edge ]
  %heads.addr.017.i = phi ptr [ %heads, %while.body ], [ %heads.addr.1.i, %if.end6.i.for.body.i_crit_edge ]
  %and.i = and i32 %clk.018.i, 63
  %mul.i = shl i32 %i.019.i, 6
  %add.i = or i32 %and.i, %mul.i
  %rem.i.i = and i32 %clk.018.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div6.i.i = lshr i32 %add.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %pending_map.i, i32 %div6.i.i
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i.i, align 4
  %neg.i.i = xor i32 %shl.i.i, -1
  %and.i.i = and i32 %18, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  %19 = and i32 %18, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  %add.ptr.i = getelementptr %struct.hlist_head, ptr %vectors.i, i32 %add.i
  %incdec.ptr.i = getelementptr %struct.hlist_head, ptr %heads.addr.017.i, i32 1
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr.i, align 4
  %22 = ptrtoint ptr %heads.addr.017.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %heads.addr.017.i, align 4
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %if.then.i.hlist_move_list.exit.i_crit_edge, label %if.then.i.i

if.then.i.hlist_move_list.exit.i_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %hlist_move_list.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %21, i32 0, i32 1
  %23 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %heads.addr.017.i, ptr %pprev.i.i, align 4
  br label %hlist_move_list.exit.i

hlist_move_list.exit.i:                           ; preds = %if.then.i.i, %if.then.i.hlist_move_list.exit.i_crit_edge
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %add.ptr.i, align 4
  %inc.i = add i32 %levels.020.i, 1
  br label %if.end.i

if.end.i:                                         ; preds = %hlist_move_list.exit.i, %for.body.i.if.end.i_crit_edge
  %heads.addr.1.i = phi ptr [ %incdec.ptr.i, %hlist_move_list.exit.i ], [ %heads.addr.017.i, %for.body.i.if.end.i_crit_edge ]
  %levels.1.i = phi i32 [ %inc.i, %hlist_move_list.exit.i ], [ %levels.020.i, %for.body.i.if.end.i_crit_edge ]
  %and3.i = and i32 %clk.018.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.collect_expired_timers.exit_crit_edge

if.end.i.collect_expired_timers.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %collect_expired_timers.exit

if.end6.i:                                        ; preds = %if.end.i
  %shr.i = lshr i32 %clk.018.i, 3
  %inc7.i = add nuw nsw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc7.i, 8
  br i1 %exitcond.not.i, label %if.end6.i.collect_expired_timers.exit_crit_edge, label %if.end6.i.for.body.i_crit_edge

if.end6.i.for.body.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

if.end6.i.collect_expired_timers.exit_crit_edge:  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %collect_expired_timers.exit

collect_expired_timers.exit:                      ; preds = %if.end6.i.collect_expired_timers.exit_crit_edge, %if.end.i.collect_expired_timers.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %levels.1.i)
  %tobool.not = icmp eq i32 %levels.1.i, 0
  br i1 %tobool.not, label %land.rhs6, label %while.body54.preheader.critedge

land.rhs6:                                        ; preds = %collect_expired_timers.exit
  %25 = ptrtoint ptr %next_expiry_recalc to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %next_expiry_recalc, align 4, !range !398
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool7.not = icmp eq i8 %26, 0
  br i1 %tobool7.not, label %land.rhs12, label %land.rhs6.while.cond.loopexit.sink.split_crit_edge

land.rhs6.while.cond.loopexit.sink.split_crit_edge: ; preds = %land.rhs6
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.loopexit.sink.split

land.rhs12:                                       ; preds = %land.rhs6
  %.b75 = load i1, ptr @__run_timers.__already_done, align 1
  br i1 %.b75, label %land.rhs12.while.cond.loopexit.sink.split_crit_edge, label %if.then19, !prof !390

land.rhs12.while.cond.loopexit.sink.split_crit_edge: ; preds = %land.rhs12
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.loopexit.sink.split

if.then19:                                        ; preds = %land.rhs12
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @__run_timers.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1729, i32 noundef 9, ptr noundef null) #15
  br label %while.cond.loopexit.sink.split

while.body54.preheader.critedge:                  ; preds = %collect_expired_timers.exit
  %27 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %clk, align 16
  %inc.c = add i32 %28, 1
  store i32 %inc.c, ptr %clk, align 16
  %call50.c = call fastcc i32 @__next_timer_interrupt(ptr noundef %base)
  %29 = ptrtoint ptr %next_expiry to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call50.c, ptr %next_expiry, align 4
  br label %while.body54

while.body54:                                     ; preds = %expire_timers.exit.while.body54_crit_edge, %while.body54.preheader.critedge
  %levels.081 = phi i32 [ %dec, %expire_timers.exit.while.body54_crit_edge ], [ %levels.1.i, %while.body54.preheader.critedge ]
  %dec = add i32 %levels.081, -1
  %add.ptr = getelementptr %struct.hlist_head, ptr %heads, i32 %dec
  %30 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %clk, align 16
  %sub.i = add i32 %31, -1
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %add.ptr, align 4
  %tobool.not.i.not23.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.not23.i, label %while.body54.expire_timers.exit_crit_edge, label %while.body54.while.body.i_crit_edge

while.body54.while.body.i_crit_edge:              ; preds = %while.body54
  br label %while.body.i

while.body54.expire_timers.exit_crit_edge:        ; preds = %while.body54
  call void @__sanitizer_cov_trace_pc() #17
  br label %expire_timers.exit

while.body.i:                                     ; preds = %if.end.i79.while.body.i_crit_edge, %while.body54.while.body.i_crit_edge
  %34 = phi ptr [ %50, %if.end.i79.while.body.i_crit_edge ], [ %33, %while.body54.while.body.i_crit_edge ]
  %35 = ptrtoint ptr %running_timer.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %running_timer.i, align 4
  call void @debug_object_deactivate(ptr noundef nonnull %34, ptr noundef nonnull @timer_debug_descr) #15
  call fastcc void @trace_timer_cancel(ptr noundef nonnull %34) #15
  %36 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %34, align 4
  %pprev2.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %34, i32 0, i32 1
  %38 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pprev2.i.i.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %37, ptr %39, align 4
  %tobool.not.i.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i.i, label %while.body.i.detach_timer.exit.i_crit_edge, label %do.body13.i.i.i

while.body.i.detach_timer.exit.i_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %detach_timer.exit.i

do.body13.i.i.i:                                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %37, i32 0, i32 1
  %41 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %39, ptr %pprev14.i.i.i, align 4
  br label %detach_timer.exit.i

detach_timer.exit.i:                              ; preds = %do.body13.i.i.i, %while.body.i.detach_timer.exit.i_crit_edge
  %42 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %pprev2.i.i.i, align 4
  %43 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 290 to ptr), ptr %34, align 4
  %function.i = getelementptr inbounds %struct.timer_list, ptr %34, i32 0, i32 2
  %44 = ptrtoint ptr %function.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %function.i, align 4
  %flags.i = getelementptr inbounds %struct.timer_list, ptr %34, i32 0, i32 3
  %46 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags.i, align 4
  %and.i77 = and i32 %47, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i77)
  %tobool1.not.i = icmp eq i32 %and.i77, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.then.i78

if.then.i78:                                      ; preds = %detach_timer.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @_raw_spin_unlock(ptr noundef %base) #15
  call fastcc void @call_timer_fn(ptr noundef nonnull %34, ptr noundef %45, i32 noundef %sub.i) #15
  call void @_raw_spin_lock(ptr noundef %base) #15
  br label %if.end.i79

if.else.i:                                        ; preds = %detach_timer.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @_raw_spin_unlock_irq(ptr noundef %base) #15
  call fastcc void @call_timer_fn(ptr noundef nonnull %34, ptr noundef %45, i32 noundef %sub.i) #15
  call void @_raw_spin_lock_irq(ptr noundef %base) #15
  br label %if.end.i79

if.end.i79:                                       ; preds = %if.else.i, %if.then.i78
  %48 = ptrtoint ptr %running_timer.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %running_timer.i, align 4
  %49 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %add.ptr, align 4
  %tobool.not.i.not.i = icmp eq ptr %50, null
  br i1 %tobool.not.i.not.i, label %if.end.i79.expire_timers.exit_crit_edge, label %if.end.i79.while.body.i_crit_edge

if.end.i79.while.body.i_crit_edge:                ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

if.end.i79.expire_timers.exit_crit_edge:          ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #17
  br label %expire_timers.exit

expire_timers.exit:                               ; preds = %if.end.i79.expire_timers.exit_crit_edge, %while.body54.expire_timers.exit_crit_edge
  %tobool53.not = icmp eq i32 %dec, 0
  br i1 %tobool53.not, label %expire_timers.exit.while.cond.loopexit_crit_edge, label %expire_timers.exit.while.body54_crit_edge

expire_timers.exit.while.body54_crit_edge:        ; preds = %expire_timers.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body54

expire_timers.exit.while.cond.loopexit_crit_edge: ; preds = %expire_timers.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.loopexit

while.end56:                                      ; preds = %land.rhs.while.end56_crit_edge, %while.cond.loopexit.while.end56_crit_edge, %if.end.while.end56_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %base) #15
  br label %cleanup

cleanup:                                          ; preds = %while.end56, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %heads) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @call_timer_fn(ptr noundef %timer, ptr noundef %fn, i32 noundef %baseclk) #0 align 64 {
entry:
  %lockdep_map = alloca %struct.lockdep_map, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %lockdep_map) #15
  %lockdep_map1 = getelementptr inbounds %struct.timer_list, ptr %timer, i32 0, i32 4
  %4 = call ptr @memcpy(ptr %lockdep_map, ptr %lockdep_map1, i32 28)
  %uglygep.i = getelementptr inbounds i8, ptr %lockdep_map, i32 4
  %5 = ptrtoint ptr %uglygep.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 0, ptr %uglygep.i, align 4
  br label %__here

__here:                                           ; preds = %entry
  call void @lock_acquire(ptr noundef nonnull %lockdep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@call_timer_fn, %__here) to i32)) #15
  call fastcc void @trace_timer_expire_entry(ptr noundef %timer, i32 noundef %baseclk)
  call void %fn(ptr noundef %timer) #15
  call fastcc void @trace_timer_expire_exit(ptr noundef %timer)
  br label %__here2

__here2:                                          ; preds = %__here
  call void @lock_release(ptr noundef nonnull %lockdep_map, i32 noundef ptrtoint (ptr blockaddress(@call_timer_fn, %__here2) to i32)) #15
  %6 = call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i.i50 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i50 to ptr
  %preempt_count.i51 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i51 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i51, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %9)
  %cmp.not = icmp eq i32 %3, %9
  br i1 %cmp.not, label %__here2.if.end40_crit_edge, label %land.end

__here2.if.end40_crit_edge:                       ; preds = %__here2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40

land.end:                                         ; preds = %__here2
  %.b49 = load i1, ptr @call_timer_fn.__already_done, align 1
  br i1 %.b49, label %land.end.if.end32_crit_edge, label %if.then9, !prof !390

land.end.if.end32_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

if.then9:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @call_timer_fn.__already_done, align 1
  %10 = call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i.i52 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i52 to ptr
  %preempt_count.i53 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i53 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i53, align 4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1428, i32 noundef 9, ptr noundef nonnull @.str.87, ptr noundef %fn, i32 noundef %3, i32 noundef %13) #15
  br label %if.end32

if.end32:                                         ; preds = %if.then9, %land.end.if.end32_crit_edge
  %14 = call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 %3, ptr %preempt_count.i.i, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.end32, %__here2.if.end40_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %lockdep_map) #15
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_timer_expire_entry(ptr noundef %timer, i32 noundef %baseclk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_timer_expire_entry, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_timer_expire_entry, %do.body)) #15
          to label %if.end48 [label %do.body], !srcloc !397

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !390

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.85, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !421
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_timer_expire_entry, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, ptr noundef %timer, i32 noundef %baseclk) #15
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !422
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !422
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i.i.i73.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i74.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !390

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.85, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !415
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_timer_expire_entry, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_timer_expire_entry.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @trace_timer_expire_entry.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.83, i32 noundef 113, ptr noundef nonnull @.str.84) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !416
  %38 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_timer_expire_exit(ptr noundef %timer) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_timer_expire_exit, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_timer_expire_exit, %do.body)) #15
          to label %if.end48 [label %do.body], !srcloc !397

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !390

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.85, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !423
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_timer_expire_exit, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, ptr noundef %timer) #15
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !424
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !424
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i.i.i73.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i74.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !390

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.85, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !415
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_timer_expire_exit, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_timer_expire_exit.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @trace_timer_expire_exit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.83, i32 noundef 130, ptr noundef nonnull @.str.84) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !416
  %38 = tail call i32 @llvm.read_register.i32(metadata !380) #15
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #14

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 146)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 146)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nounwind readonly }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nounwind readnone }
attributes #19 = { cold nounwind }
attributes #20 = { cold }
attributes #21 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !188, !189, !190, !192, !194, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !337, !338, !340, !342, !343, !344, !346, !348, !350, !351, !353, !355, !356, !357, !358, !359, !360, !361, !363, !364, !365, !367, !368, !370, !371, !373, !375, !376, !377, !378, !379}
!llvm.named.register.sp = !{!380}
!llvm.module.flags = !{!381, !382, !383, !384, !385, !386, !387, !388}
!llvm.ident = !{!389}

!0 = !{ptr @__tracepoint_timer_init, !1, !"__tracepoint_timer_init", i1 false, i1 false}
!1 = !{!"../include/trace/events/timer.h", i32 33, i32 1}
!2 = !{ptr @__tracepoint_ptr_timer_init, !1, !"__tracepoint_ptr_timer_init", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_timer_init, !1, !"__SCK__tp_func_timer_init", i1 false, i1 false}
!4 = !{ptr @__tracepoint_timer_start, !5, !"__tracepoint_timer_start", i1 false, i1 false}
!5 = !{!"../include/trace/events/timer.h", i32 52, i32 1}
!6 = !{ptr @__tracepoint_ptr_timer_start, !5, !"__tracepoint_ptr_timer_start", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_timer_start, !5, !"__SCK__tp_func_timer_start", i1 false, i1 false}
!8 = !{ptr @__tracepoint_timer_expire_entry, !9, !"__tracepoint_timer_expire_entry", i1 false, i1 false}
!9 = !{!"../include/trace/events/timer.h", i32 90, i32 1}
!10 = !{ptr @__tracepoint_ptr_timer_expire_entry, !9, !"__tracepoint_ptr_timer_expire_entry", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_timer_expire_entry, !9, !"__SCK__tp_func_timer_expire_entry", i1 false, i1 false}
!12 = !{ptr @__tracepoint_timer_expire_exit, !13, !"__tracepoint_timer_expire_exit", i1 false, i1 false}
!13 = !{!"../include/trace/events/timer.h", i32 125, i32 1}
!14 = !{ptr @__tracepoint_ptr_timer_expire_exit, !13, !"__tracepoint_ptr_timer_expire_exit", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_timer_expire_exit, !13, !"__SCK__tp_func_timer_expire_exit", i1 false, i1 false}
!16 = !{ptr @__tracepoint_timer_cancel, !17, !"__tracepoint_timer_cancel", i1 false, i1 false}
!17 = !{!"../include/trace/events/timer.h", i32 136, i32 1}
!18 = !{ptr @__tracepoint_ptr_timer_cancel, !17, !"__tracepoint_ptr_timer_cancel", i1 false, i1 false}
!19 = !{ptr @__SCK__tp_func_timer_cancel, !17, !"__SCK__tp_func_timer_cancel", i1 false, i1 false}
!20 = !{ptr @__tracepoint_hrtimer_init, !21, !"__tracepoint_hrtimer_init", i1 false, i1 false}
!21 = !{!"../include/trace/events/timer.h", i32 167, i32 1}
!22 = !{ptr @__tracepoint_ptr_hrtimer_init, !21, !"__tracepoint_ptr_hrtimer_init", i1 false, i1 false}
!23 = !{ptr @__SCK__tp_func_hrtimer_init, !21, !"__SCK__tp_func_hrtimer_init", i1 false, i1 false}
!24 = !{ptr @__tracepoint_hrtimer_start, !25, !"__tracepoint_hrtimer_start", i1 false, i1 false}
!25 = !{!"../include/trace/events/timer.h", i32 195, i32 1}
!26 = !{ptr @__tracepoint_ptr_hrtimer_start, !25, !"__tracepoint_ptr_hrtimer_start", i1 false, i1 false}
!27 = !{ptr @__SCK__tp_func_hrtimer_start, !25, !"__SCK__tp_func_hrtimer_start", i1 false, i1 false}
!28 = !{ptr @__tracepoint_hrtimer_expire_entry, !29, !"__tracepoint_hrtimer_expire_entry", i1 false, i1 false}
!29 = !{!"../include/trace/events/timer.h", i32 232, i32 1}
!30 = !{ptr @__tracepoint_ptr_hrtimer_expire_entry, !29, !"__tracepoint_ptr_hrtimer_expire_entry", i1 false, i1 false}
!31 = !{ptr @__SCK__tp_func_hrtimer_expire_entry, !29, !"__SCK__tp_func_hrtimer_expire_entry", i1 false, i1 false}
!32 = !{ptr @__tracepoint_hrtimer_expire_exit, !33, !"__tracepoint_hrtimer_expire_exit", i1 false, i1 false}
!33 = !{!"../include/trace/events/timer.h", i32 279, i32 1}
!34 = !{ptr @__tracepoint_ptr_hrtimer_expire_exit, !33, !"__tracepoint_ptr_hrtimer_expire_exit", i1 false, i1 false}
!35 = !{ptr @__SCK__tp_func_hrtimer_expire_exit, !33, !"__SCK__tp_func_hrtimer_expire_exit", i1 false, i1 false}
!36 = !{ptr @__tracepoint_hrtimer_cancel, !37, !"__tracepoint_hrtimer_cancel", i1 false, i1 false}
!37 = !{!"../include/trace/events/timer.h", i32 290, i32 1}
!38 = !{ptr @__tracepoint_ptr_hrtimer_cancel, !37, !"__tracepoint_ptr_hrtimer_cancel", i1 false, i1 false}
!39 = !{ptr @__SCK__tp_func_hrtimer_cancel, !37, !"__SCK__tp_func_hrtimer_cancel", i1 false, i1 false}
!40 = !{ptr @__tracepoint_itimer_state, !41, !"__tracepoint_itimer_state", i1 false, i1 false}
!41 = !{!"../include/trace/events/timer.h", i32 304, i32 1}
!42 = !{ptr @__tracepoint_ptr_itimer_state, !41, !"__tracepoint_ptr_itimer_state", i1 false, i1 false}
!43 = !{ptr @__SCK__tp_func_itimer_state, !41, !"__SCK__tp_func_itimer_state", i1 false, i1 false}
!44 = !{ptr @__tracepoint_itimer_expire, !45, !"__tracepoint_itimer_expire", i1 false, i1 false}
!45 = !{!"../include/trace/events/timer.h", i32 341, i32 1}
!46 = !{ptr @__tracepoint_ptr_itimer_expire, !45, !"__tracepoint_ptr_itimer_expire", i1 false, i1 false}
!47 = !{ptr @__SCK__tp_func_itimer_expire, !45, !"__SCK__tp_func_itimer_expire", i1 false, i1 false}
!48 = !{ptr @__tracepoint_tick_stop, !49, !"__tracepoint_tick_stop", i1 false, i1 false}
!49 = !{!"../include/trace/events/timer.h", i32 398, i32 1}
!50 = !{ptr @__tracepoint_ptr_tick_stop, !49, !"__tracepoint_ptr_tick_stop", i1 false, i1 false}
!51 = !{ptr @__SCK__tp_func_tick_stop, !49, !"__SCK__tp_func_tick_stop", i1 false, i1 false}
!52 = !{ptr @.str, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../include/trace/events/timer.h", i32 385, i32 1}
!54 = !{ptr @__TRACE_SYSTEM_TICK_DEP_MASK_NONE, !53, !"__TRACE_SYSTEM_TICK_DEP_MASK_NONE", i1 false, i1 false}
!55 = !{ptr @TRACE_SYSTEM_TICK_DEP_MASK_NONE, !53, !"TRACE_SYSTEM_TICK_DEP_MASK_NONE", i1 false, i1 false}
!56 = !{ptr @.str.1, !53, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @__TRACE_SYSTEM_TICK_DEP_BIT_POSIX_TIMER, !53, !"__TRACE_SYSTEM_TICK_DEP_BIT_POSIX_TIMER", i1 false, i1 false}
!58 = !{ptr @TRACE_SYSTEM_TICK_DEP_BIT_POSIX_TIMER, !53, !"TRACE_SYSTEM_TICK_DEP_BIT_POSIX_TIMER", i1 false, i1 false}
!59 = !{ptr @.str.2, !53, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @__TRACE_SYSTEM_TICK_DEP_MASK_POSIX_TIMER, !53, !"__TRACE_SYSTEM_TICK_DEP_MASK_POSIX_TIMER", i1 false, i1 false}
!61 = !{ptr @TRACE_SYSTEM_TICK_DEP_MASK_POSIX_TIMER, !53, !"TRACE_SYSTEM_TICK_DEP_MASK_POSIX_TIMER", i1 false, i1 false}
!62 = !{ptr @.str.3, !53, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @__TRACE_SYSTEM_TICK_DEP_BIT_PERF_EVENTS, !53, !"__TRACE_SYSTEM_TICK_DEP_BIT_PERF_EVENTS", i1 false, i1 false}
!64 = !{ptr @TRACE_SYSTEM_TICK_DEP_BIT_PERF_EVENTS, !53, !"TRACE_SYSTEM_TICK_DEP_BIT_PERF_EVENTS", i1 false, i1 false}
!65 = !{ptr @.str.4, !53, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @__TRACE_SYSTEM_TICK_DEP_MASK_PERF_EVENTS, !53, !"__TRACE_SYSTEM_TICK_DEP_MASK_PERF_EVENTS", i1 false, i1 false}
!67 = !{ptr @TRACE_SYSTEM_TICK_DEP_MASK_PERF_EVENTS, !53, !"TRACE_SYSTEM_TICK_DEP_MASK_PERF_EVENTS", i1 false, i1 false}
!68 = !{ptr @.str.5, !53, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @__TRACE_SYSTEM_TICK_DEP_BIT_SCHED, !53, !"__TRACE_SYSTEM_TICK_DEP_BIT_SCHED", i1 false, i1 false}
!70 = !{ptr @TRACE_SYSTEM_TICK_DEP_BIT_SCHED, !53, !"TRACE_SYSTEM_TICK_DEP_BIT_SCHED", i1 false, i1 false}
!71 = !{ptr @.str.6, !53, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @__TRACE_SYSTEM_TICK_DEP_MASK_SCHED, !53, !"__TRACE_SYSTEM_TICK_DEP_MASK_SCHED", i1 false, i1 false}
!73 = !{ptr @TRACE_SYSTEM_TICK_DEP_MASK_SCHED, !53, !"TRACE_SYSTEM_TICK_DEP_MASK_SCHED", i1 false, i1 false}
!74 = !{ptr @.str.7, !53, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @__TRACE_SYSTEM_TICK_DEP_BIT_CLOCK_UNSTABLE, !53, !"__TRACE_SYSTEM_TICK_DEP_BIT_CLOCK_UNSTABLE", i1 false, i1 false}
!76 = !{ptr @TRACE_SYSTEM_TICK_DEP_BIT_CLOCK_UNSTABLE, !53, !"TRACE_SYSTEM_TICK_DEP_BIT_CLOCK_UNSTABLE", i1 false, i1 false}
!77 = !{ptr @.str.8, !53, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @__TRACE_SYSTEM_TICK_DEP_MASK_CLOCK_UNSTABLE, !53, !"__TRACE_SYSTEM_TICK_DEP_MASK_CLOCK_UNSTABLE", i1 false, i1 false}
!79 = !{ptr @TRACE_SYSTEM_TICK_DEP_MASK_CLOCK_UNSTABLE, !53, !"TRACE_SYSTEM_TICK_DEP_MASK_CLOCK_UNSTABLE", i1 false, i1 false}
!80 = !{ptr @.str.9, !53, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @__TRACE_SYSTEM_TICK_DEP_BIT_RCU, !53, !"__TRACE_SYSTEM_TICK_DEP_BIT_RCU", i1 false, i1 false}
!82 = !{ptr @TRACE_SYSTEM_TICK_DEP_BIT_RCU, !53, !"TRACE_SYSTEM_TICK_DEP_BIT_RCU", i1 false, i1 false}
!83 = !{ptr @.str.10, !53, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @__TRACE_SYSTEM_TICK_DEP_MASK_RCU, !53, !"__TRACE_SYSTEM_TICK_DEP_MASK_RCU", i1 false, i1 false}
!85 = !{ptr @TRACE_SYSTEM_TICK_DEP_MASK_RCU, !53, !"TRACE_SYSTEM_TICK_DEP_MASK_RCU", i1 false, i1 false}
!86 = !{ptr @event_class_timer_class, !87, !"event_class_timer_class", i1 false, i1 false}
!87 = !{!"../include/trace/events/timer.h", i32 12, i32 1}
!88 = !{ptr @event_timer_init, !1, !"event_timer_init", i1 false, i1 false}
!89 = !{ptr @__event_timer_init, !1, !"__event_timer_init", i1 false, i1 false}
!90 = !{ptr @event_class_timer_start, !5, !"event_class_timer_start", i1 false, i1 false}
!91 = !{ptr @event_timer_start, !5, !"event_timer_start", i1 false, i1 false}
!92 = !{ptr @__event_timer_start, !5, !"__event_timer_start", i1 false, i1 false}
!93 = !{ptr @event_class_timer_expire_entry, !9, !"event_class_timer_expire_entry", i1 false, i1 false}
!94 = !{ptr @event_timer_expire_entry, !9, !"event_timer_expire_entry", i1 false, i1 false}
!95 = !{ptr @__event_timer_expire_entry, !9, !"__event_timer_expire_entry", i1 false, i1 false}
!96 = !{ptr @event_timer_expire_exit, !13, !"event_timer_expire_exit", i1 false, i1 false}
!97 = !{ptr @__event_timer_expire_exit, !13, !"__event_timer_expire_exit", i1 false, i1 false}
!98 = !{ptr @event_timer_cancel, !17, !"event_timer_cancel", i1 false, i1 false}
!99 = !{ptr @__event_timer_cancel, !17, !"__event_timer_cancel", i1 false, i1 false}
!100 = !{ptr @event_class_hrtimer_init, !21, !"event_class_hrtimer_init", i1 false, i1 false}
!101 = !{ptr @event_hrtimer_init, !21, !"event_hrtimer_init", i1 false, i1 false}
!102 = !{ptr @__event_hrtimer_init, !21, !"__event_hrtimer_init", i1 false, i1 false}
!103 = !{ptr @event_class_hrtimer_start, !25, !"event_class_hrtimer_start", i1 false, i1 false}
!104 = !{ptr @event_hrtimer_start, !25, !"event_hrtimer_start", i1 false, i1 false}
!105 = !{ptr @__event_hrtimer_start, !25, !"__event_hrtimer_start", i1 false, i1 false}
!106 = !{ptr @event_class_hrtimer_expire_entry, !29, !"event_class_hrtimer_expire_entry", i1 false, i1 false}
!107 = !{ptr @event_hrtimer_expire_entry, !29, !"event_hrtimer_expire_entry", i1 false, i1 false}
!108 = !{ptr @__event_hrtimer_expire_entry, !29, !"__event_hrtimer_expire_entry", i1 false, i1 false}
!109 = !{ptr @event_class_hrtimer_class, !110, !"event_class_hrtimer_class", i1 false, i1 false}
!110 = !{!"../include/trace/events/timer.h", i32 255, i32 1}
!111 = !{ptr @event_hrtimer_expire_exit, !33, !"event_hrtimer_expire_exit", i1 false, i1 false}
!112 = !{ptr @__event_hrtimer_expire_exit, !33, !"__event_hrtimer_expire_exit", i1 false, i1 false}
!113 = !{ptr @event_hrtimer_cancel, !37, !"event_hrtimer_cancel", i1 false, i1 false}
!114 = !{ptr @__event_hrtimer_cancel, !37, !"__event_hrtimer_cancel", i1 false, i1 false}
!115 = !{ptr @event_class_itimer_state, !41, !"event_class_itimer_state", i1 false, i1 false}
!116 = !{ptr @event_itimer_state, !41, !"event_itimer_state", i1 false, i1 false}
!117 = !{ptr @__event_itimer_state, !41, !"__event_itimer_state", i1 false, i1 false}
!118 = !{ptr @event_class_itimer_expire, !45, !"event_class_itimer_expire", i1 false, i1 false}
!119 = !{ptr @event_itimer_expire, !45, !"event_itimer_expire", i1 false, i1 false}
!120 = !{ptr @__event_itimer_expire, !45, !"__event_itimer_expire", i1 false, i1 false}
!121 = !{ptr @event_class_tick_stop, !49, !"event_class_tick_stop", i1 false, i1 false}
!122 = !{ptr @event_tick_stop, !49, !"event_tick_stop", i1 false, i1 false}
!123 = !{ptr @__event_tick_stop, !49, !"__event_tick_stop", i1 false, i1 false}
!124 = !{ptr @__bpf_trace_tp_map_timer_init, !1, !"__bpf_trace_tp_map_timer_init", i1 false, i1 false}
!125 = !{ptr @__bpf_trace_tp_map_timer_start, !5, !"__bpf_trace_tp_map_timer_start", i1 false, i1 false}
!126 = !{ptr @__bpf_trace_tp_map_timer_expire_entry, !9, !"__bpf_trace_tp_map_timer_expire_entry", i1 false, i1 false}
!127 = !{ptr @__bpf_trace_tp_map_timer_expire_exit, !13, !"__bpf_trace_tp_map_timer_expire_exit", i1 false, i1 false}
!128 = !{ptr @__bpf_trace_tp_map_timer_cancel, !17, !"__bpf_trace_tp_map_timer_cancel", i1 false, i1 false}
!129 = !{ptr @__bpf_trace_tp_map_hrtimer_init, !21, !"__bpf_trace_tp_map_hrtimer_init", i1 false, i1 false}
!130 = !{ptr @__bpf_trace_tp_map_hrtimer_start, !25, !"__bpf_trace_tp_map_hrtimer_start", i1 false, i1 false}
!131 = !{ptr @__bpf_trace_tp_map_hrtimer_expire_entry, !29, !"__bpf_trace_tp_map_hrtimer_expire_entry", i1 false, i1 false}
!132 = !{ptr @__bpf_trace_tp_map_hrtimer_expire_exit, !33, !"__bpf_trace_tp_map_hrtimer_expire_exit", i1 false, i1 false}
!133 = !{ptr @__bpf_trace_tp_map_hrtimer_cancel, !37, !"__bpf_trace_tp_map_hrtimer_cancel", i1 false, i1 false}
!134 = !{ptr @__bpf_trace_tp_map_itimer_state, !41, !"__bpf_trace_tp_map_itimer_state", i1 false, i1 false}
!135 = !{ptr @__bpf_trace_tp_map_itimer_expire, !45, !"__bpf_trace_tp_map_itimer_expire", i1 false, i1 false}
!136 = !{ptr @__bpf_trace_tp_map_tick_stop, !49, !"__bpf_trace_tp_map_tick_stop", i1 false, i1 false}
!137 = !{ptr @jiffies_64, !138, !"jiffies_64", i1 false, i1 false}
!138 = !{!"../kernel/time/timer.c", i32 59, i32 15}
!139 = !{ptr @__ksymtab_jiffies_64, !140, !"__ksymtab_jiffies_64", i1 false, i1 false}
!140 = !{!"../kernel/time/timer.c", i32 61, i32 1}
!141 = !{ptr @sysctl_timer_migration, !142, !"sysctl_timer_migration", i1 false, i1 false}
!142 = !{!"../kernel/time/timer.c", i32 226, i32 14}
!143 = !{ptr @timers_migration_enabled, !144, !"timers_migration_enabled", i1 false, i1 false}
!144 = !{!"../kernel/time/timer.c", i32 228, i32 1}
!145 = !{ptr @__ksymtab___round_jiffies, !146, !"__ksymtab___round_jiffies", i1 false, i1 false}
!146 = !{!"../kernel/time/timer.c", i32 339, i32 1}
!147 = !{ptr @__ksymtab___round_jiffies_relative, !148, !"__ksymtab___round_jiffies_relative", i1 false, i1 false}
!148 = !{!"../kernel/time/timer.c", i32 368, i32 1}
!149 = !{ptr @__ksymtab_round_jiffies, !150, !"__ksymtab_round_jiffies", i1 false, i1 false}
!150 = !{!"../kernel/time/timer.c", i32 389, i32 1}
!151 = !{ptr @__ksymtab_round_jiffies_relative, !152, !"__ksymtab_round_jiffies_relative", i1 false, i1 false}
!152 = !{!"../kernel/time/timer.c", i32 410, i32 1}
!153 = !{ptr @__ksymtab___round_jiffies_up, !154, !"__ksymtab___round_jiffies_up", i1 false, i1 false}
!154 = !{!"../kernel/time/timer.c", i32 426, i32 1}
!155 = !{ptr @__ksymtab___round_jiffies_up_relative, !156, !"__ksymtab___round_jiffies_up_relative", i1 false, i1 false}
!156 = !{!"../kernel/time/timer.c", i32 445, i32 1}
!157 = !{ptr @__ksymtab_round_jiffies_up, !158, !"__ksymtab_round_jiffies_up", i1 false, i1 false}
!158 = !{!"../kernel/time/timer.c", i32 460, i32 1}
!159 = !{ptr @__ksymtab_round_jiffies_up_relative, !160, !"__ksymtab_round_jiffies_up_relative", i1 false, i1 false}
!160 = !{!"../kernel/time/timer.c", i32 475, i32 1}
!161 = !{ptr @__ksymtab_init_timer_on_stack_key, !162, !"__ksymtab_init_timer_on_stack_key", i1 false, i1 false}
!162 = !{!"../kernel/time/timer.c", i32 755, i32 1}
!163 = !{ptr @__ksymtab_destroy_timer_on_stack, !164, !"__ksymtab_destroy_timer_on_stack", i1 false, i1 false}
!164 = !{!"../kernel/time/timer.c", i32 761, i32 1}
!165 = !{ptr @__ksymtab_init_timer_key, !166, !"__ksymtab_init_timer_key", i1 false, i1 false}
!166 = !{!"../kernel/time/timer.c", i32 819, i32 1}
!167 = !{ptr @__ksymtab_mod_timer_pending, !168, !"__ksymtab_mod_timer_pending", i1 false, i1 false}
!168 = !{!"../kernel/time/timer.c", i32 1084, i32 1}
!169 = !{ptr @__ksymtab_mod_timer, !170, !"__ksymtab_mod_timer", i1 false, i1 false}
!170 = !{!"../kernel/time/timer.c", i32 1110, i32 1}
!171 = !{ptr @__ksymtab_timer_reduce, !172, !"__ksymtab_timer_reduce", i1 false, i1 false}
!172 = !{!"../kernel/time/timer.c", i32 1125, i32 1}
!173 = !{ptr @__ksymtab_add_timer, !174, !"__ksymtab_add_timer", i1 false, i1 false}
!174 = !{!"../kernel/time/timer.c", i32 1146, i32 1}
!175 = !{ptr @__ksymtab_add_timer_on, !176, !"__ksymtab_add_timer_on", i1 false, i1 false}
!176 = !{!"../kernel/time/timer.c", i32 1185, i32 1}
!177 = !{ptr @__ksymtab_del_timer, !178, !"__ksymtab_del_timer", i1 false, i1 false}
!178 = !{!"../kernel/time/timer.c", i32 1214, i32 1}
!179 = !{ptr @__ksymtab_try_to_del_timer_sync, !180, !"__ksymtab_try_to_del_timer_sync", i1 false, i1 false}
!180 = !{!"../kernel/time/timer.c", i32 1240, i32 1}
!181 = !{ptr @.str.11, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../kernel/time/timer.c", i32 1372, i32 2}
!183 = !{ptr @__ksymtab_del_timer_sync, !184, !"__ksymtab_del_timer_sync", i1 false, i1 false}
!184 = !{!"../kernel/time/timer.c", i32 1392, i32 1}
!185 = !{ptr @.str.12, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../kernel/time/timer.c", i32 1868, i32 4}
!187 = !{ptr @.str.13, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @schedule_timeout._entry, !186, !"_entry", i1 false, i1 false}
!189 = !{ptr @schedule_timeout._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!190 = distinct !{null, !191, !"__already_done", i1 false, i1 false}
!191 = !{!"../kernel/time/timer.c", i32 1871, i32 4}
!192 = !{ptr @schedule_timeout.__key, !193, !"__key", i1 false, i1 false}
!193 = !{!"../kernel/time/timer.c", i32 1879, i32 2}
!194 = !{ptr @.str.14, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @__ksymtab_schedule_timeout, !196, !"__ksymtab_schedule_timeout", i1 false, i1 false}
!196 = !{!"../kernel/time/timer.c", i32 1892, i32 1}
!197 = distinct !{null, !198, !"__already_done", i1 false, i1 false}
!198 = !{!"../kernel/time/timer.c", i32 1900, i32 2}
!199 = !{ptr @__ksymtab_schedule_timeout_interruptible, !200, !"__ksymtab_schedule_timeout_interruptible", i1 false, i1 false}
!200 = !{!"../kernel/time/timer.c", i32 1903, i32 1}
!201 = distinct !{null, !202, !"__already_done", i1 false, i1 false}
!202 = !{!"../kernel/time/timer.c", i32 1907, i32 2}
!203 = !{ptr @__ksymtab_schedule_timeout_killable, !204, !"__ksymtab_schedule_timeout_killable", i1 false, i1 false}
!204 = !{!"../kernel/time/timer.c", i32 1910, i32 1}
!205 = distinct !{null, !206, !"__already_done", i1 false, i1 false}
!206 = !{!"../kernel/time/timer.c", i32 1914, i32 2}
!207 = !{ptr @__ksymtab_schedule_timeout_uninterruptible, !208, !"__ksymtab_schedule_timeout_uninterruptible", i1 false, i1 false}
!208 = !{!"../kernel/time/timer.c", i32 1917, i32 1}
!209 = distinct !{null, !210, !"__already_done", i1 false, i1 false}
!210 = !{!"../kernel/time/timer.c", i32 1925, i32 2}
!211 = !{ptr @__ksymtab_schedule_timeout_idle, !212, !"__ksymtab_schedule_timeout_idle", i1 false, i1 false}
!212 = !{!"../kernel/time/timer.c", i32 1928, i32 1}
!213 = !{ptr @__ksymtab_msleep, !214, !"__ksymtab_msleep", i1 false, i1 false}
!214 = !{!"../kernel/time/timer.c", i32 2039, i32 1}
!215 = !{ptr @__ksymtab_msleep_interruptible, !216, !"__ksymtab_msleep_interruptible", i1 false, i1 false}
!216 = !{!"../kernel/time/timer.c", i32 2054, i32 1}
!217 = distinct !{null, !218, !"__already_done", i1 false, i1 false}
!218 = !{!"../kernel/time/timer.c", i32 2075, i32 3}
!219 = !{ptr @__ksymtab_usleep_range_state, !220, !"__ksymtab_usleep_range_state", i1 false, i1 false}
!220 = !{!"../kernel/time/timer.c", i32 2081, i32 1}
!221 = !{ptr @__pcpu_unique_timer_bases, !222, !"__pcpu_unique_timer_bases", i1 false, i1 false}
!222 = !{!"../kernel/time/timer.c", i32 215, i32 8}
!223 = !{ptr @timer_bases, !222, !"timer_bases", i1 false, i1 false}
!224 = !{ptr @__tpstrtab_timer_init, !1, !"__tpstrtab_timer_init", i1 false, i1 false}
!225 = !{ptr @__tpstrtab_timer_start, !5, !"__tpstrtab_timer_start", i1 false, i1 false}
!226 = !{ptr @__tpstrtab_timer_expire_entry, !9, !"__tpstrtab_timer_expire_entry", i1 false, i1 false}
!227 = !{ptr @__tpstrtab_timer_expire_exit, !13, !"__tpstrtab_timer_expire_exit", i1 false, i1 false}
!228 = !{ptr @__tpstrtab_timer_cancel, !17, !"__tpstrtab_timer_cancel", i1 false, i1 false}
!229 = !{ptr @__tpstrtab_hrtimer_init, !21, !"__tpstrtab_hrtimer_init", i1 false, i1 false}
!230 = !{ptr @__tpstrtab_hrtimer_start, !25, !"__tpstrtab_hrtimer_start", i1 false, i1 false}
!231 = !{ptr @__tpstrtab_hrtimer_expire_entry, !29, !"__tpstrtab_hrtimer_expire_entry", i1 false, i1 false}
!232 = !{ptr @__tpstrtab_hrtimer_expire_exit, !33, !"__tpstrtab_hrtimer_expire_exit", i1 false, i1 false}
!233 = !{ptr @__tpstrtab_hrtimer_cancel, !37, !"__tpstrtab_hrtimer_cancel", i1 false, i1 false}
!234 = !{ptr @__tpstrtab_itimer_state, !41, !"__tpstrtab_itimer_state", i1 false, i1 false}
!235 = !{ptr @__tpstrtab_itimer_expire, !45, !"__tpstrtab_itimer_expire", i1 false, i1 false}
!236 = !{ptr @__tpstrtab_tick_stop, !49, !"__tpstrtab_tick_stop", i1 false, i1 false}
!237 = !{ptr @str__timer__trace_system_name, !238, !"str__timer__trace_system_name", i1 false, i1 false}
!238 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!239 = !{ptr @.str.15, !87, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @.str.16, !87, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @trace_event_fields_timer_class, !87, !"trace_event_fields_timer_class", i1 false, i1 false}
!242 = !{ptr @trace_event_type_funcs_timer_class, !87, !"trace_event_type_funcs_timer_class", i1 false, i1 false}
!243 = !{ptr @.str.17, !87, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @print_fmt_timer_class, !87, !"print_fmt_timer_class", i1 false, i1 false}
!245 = !{ptr @.str.18, !5, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @.str.19, !5, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @.str.20, !5, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @.str.21, !5, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @.str.22, !5, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @.str.23, !5, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @trace_event_fields_timer_start, !5, !"trace_event_fields_timer_start", i1 false, i1 false}
!252 = !{ptr @trace_event_type_funcs_timer_start, !5, !"trace_event_type_funcs_timer_start", i1 false, i1 false}
!253 = !{ptr @.str.24, !5, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @.str.25, !5, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @.str.26, !5, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @.str.27, !5, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @.str.28, !5, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @trace_raw_output_timer_start.__flags, !5, !"__flags", i1 false, i1 false}
!259 = !{ptr @.str.29, !5, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @print_fmt_timer_start, !5, !"print_fmt_timer_start", i1 false, i1 false}
!261 = !{ptr @.str.30, !9, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @trace_event_fields_timer_expire_entry, !9, !"trace_event_fields_timer_expire_entry", i1 false, i1 false}
!263 = !{ptr @trace_event_type_funcs_timer_expire_entry, !9, !"trace_event_type_funcs_timer_expire_entry", i1 false, i1 false}
!264 = !{ptr @.str.31, !9, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @print_fmt_timer_expire_entry, !9, !"print_fmt_timer_expire_entry", i1 false, i1 false}
!266 = !{ptr @.str.32, !21, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @.str.33, !21, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @.str.34, !21, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @.str.35, !21, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @.str.36, !21, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @trace_event_fields_hrtimer_init, !21, !"trace_event_fields_hrtimer_init", i1 false, i1 false}
!272 = !{ptr @trace_event_type_funcs_hrtimer_init, !21, !"trace_event_type_funcs_hrtimer_init", i1 false, i1 false}
!273 = !{ptr @.str.37, !21, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @.str.38, !21, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @.str.39, !21, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @.str.40, !21, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @.str.41, !21, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @trace_raw_output_hrtimer_init.symbols, !21, !"symbols", i1 false, i1 false}
!279 = !{ptr @.str.43, !21, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @.str.44, !21, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @.str.45, !21, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @.str.46, !21, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @.str.47, !21, !"<string literal>", i1 false, i1 false}
!284 = !{ptr @.str.48, !21, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @.str.49, !21, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @.str.50, !21, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @trace_raw_output_hrtimer_init.symbols.42, !21, !"symbols", i1 false, i1 false}
!288 = !{ptr @print_fmt_hrtimer_init, !21, !"print_fmt_hrtimer_init", i1 false, i1 false}
!289 = !{ptr @.str.51, !25, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @.str.52, !25, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @trace_event_fields_hrtimer_start, !25, !"trace_event_fields_hrtimer_start", i1 false, i1 false}
!292 = !{ptr @trace_event_type_funcs_hrtimer_start, !25, !"trace_event_type_funcs_hrtimer_start", i1 false, i1 false}
!293 = !{ptr @.str.53, !25, !"<string literal>", i1 false, i1 false}
!294 = !{ptr @trace_raw_output_hrtimer_start.symbols, !25, !"symbols", i1 false, i1 false}
!295 = !{ptr @print_fmt_hrtimer_start, !25, !"print_fmt_hrtimer_start", i1 false, i1 false}
!296 = !{ptr @trace_event_fields_hrtimer_expire_entry, !29, !"trace_event_fields_hrtimer_expire_entry", i1 false, i1 false}
!297 = !{ptr @trace_event_type_funcs_hrtimer_expire_entry, !29, !"trace_event_type_funcs_hrtimer_expire_entry", i1 false, i1 false}
!298 = !{ptr @.str.54, !29, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @print_fmt_hrtimer_expire_entry, !29, !"print_fmt_hrtimer_expire_entry", i1 false, i1 false}
!300 = !{ptr @trace_event_fields_hrtimer_class, !110, !"trace_event_fields_hrtimer_class", i1 false, i1 false}
!301 = !{ptr @trace_event_type_funcs_hrtimer_class, !110, !"trace_event_type_funcs_hrtimer_class", i1 false, i1 false}
!302 = !{ptr @.str.55, !110, !"<string literal>", i1 false, i1 false}
!303 = !{ptr @print_fmt_hrtimer_class, !110, !"print_fmt_hrtimer_class", i1 false, i1 false}
!304 = !{ptr @.str.56, !41, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @.str.57, !41, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @.str.58, !41, !"<string literal>", i1 false, i1 false}
!307 = !{ptr @.str.59, !41, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @.str.60, !41, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @.str.61, !41, !"<string literal>", i1 false, i1 false}
!310 = !{ptr @.str.62, !41, !"<string literal>", i1 false, i1 false}
!311 = !{ptr @.str.63, !41, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @trace_event_fields_itimer_state, !41, !"trace_event_fields_itimer_state", i1 false, i1 false}
!313 = !{ptr @trace_event_type_funcs_itimer_state, !41, !"trace_event_type_funcs_itimer_state", i1 false, i1 false}
!314 = !{ptr @.str.64, !41, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @print_fmt_itimer_state, !41, !"print_fmt_itimer_state", i1 false, i1 false}
!316 = !{ptr @.str.65, !45, !"<string literal>", i1 false, i1 false}
!317 = !{ptr @.str.66, !45, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @trace_event_fields_itimer_expire, !45, !"trace_event_fields_itimer_expire", i1 false, i1 false}
!319 = !{ptr @trace_event_type_funcs_itimer_expire, !45, !"trace_event_type_funcs_itimer_expire", i1 false, i1 false}
!320 = !{ptr @.str.67, !45, !"<string literal>", i1 false, i1 false}
!321 = !{ptr @print_fmt_itimer_expire, !45, !"print_fmt_itimer_expire", i1 false, i1 false}
!322 = !{ptr @.str.68, !49, !"<string literal>", i1 false, i1 false}
!323 = !{ptr @.str.69, !49, !"<string literal>", i1 false, i1 false}
!324 = !{ptr @trace_event_fields_tick_stop, !49, !"trace_event_fields_tick_stop", i1 false, i1 false}
!325 = !{ptr @trace_event_type_funcs_tick_stop, !49, !"trace_event_type_funcs_tick_stop", i1 false, i1 false}
!326 = !{ptr @.str.70, !49, !"<string literal>", i1 false, i1 false}
!327 = !{ptr @.str.71, !49, !"<string literal>", i1 false, i1 false}
!328 = !{ptr @.str.72, !49, !"<string literal>", i1 false, i1 false}
!329 = !{ptr @.str.73, !49, !"<string literal>", i1 false, i1 false}
!330 = !{ptr @.str.74, !49, !"<string literal>", i1 false, i1 false}
!331 = !{ptr @.str.75, !49, !"<string literal>", i1 false, i1 false}
!332 = !{ptr @.str.76, !49, !"<string literal>", i1 false, i1 false}
!333 = !{ptr @trace_raw_output_tick_stop.symbols, !49, !"symbols", i1 false, i1 false}
!334 = !{ptr @print_fmt_tick_stop, !49, !"print_fmt_tick_stop", i1 false, i1 false}
!335 = !{ptr @.str.77, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../kernel/time/timer.c", i32 223, i32 8}
!337 = !{ptr @timer_update_work, !336, !"timer_update_work", i1 false, i1 false}
!338 = !{ptr @timers_nohz_active, !339, !"timers_nohz_active", i1 false, i1 false}
!339 = !{!"../kernel/time/timer.c", i32 219, i32 8}
!340 = !{ptr @.str.79, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../kernel/time/timer.c", i32 220, i32 8}
!342 = !{ptr @.str.80, !341, !"<string literal>", i1 false, i1 false}
!343 = !{ptr @timer_keys_mutex, !341, !"timer_keys_mutex", i1 false, i1 false}
!344 = !{ptr @.str.81, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../kernel/time/timer.c", i32 713, i32 12}
!346 = !{ptr @timer_debug_descr, !347, !"timer_debug_descr", i1 false, i1 false}
!347 = !{!"../kernel/time/timer.c", i32 712, i32 37}
!348 = !{ptr @timer_fixup_activate.__key, !349, !"__key", i1 false, i1 false}
!349 = !{!"../kernel/time/timer.c", i32 666, i32 3}
!350 = !{ptr @.str.82, !349, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @timer_fixup_assert_init.__key, !352, !"__key", i1 false, i1 false}
!352 = !{!"../kernel/time/timer.c", i32 705, i32 3}
!353 = distinct !{null, !354, !"__already_done", i1 false, i1 false}
!354 = !{!"../kernel/time/timer.c", i32 794, i32 6}
!355 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!356 = !{ptr @.str.83, !1, !"<string literal>", i1 false, i1 false}
!357 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!358 = !{ptr @.str.84, !1, !"<string literal>", i1 false, i1 false}
!359 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!360 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!361 = distinct !{null, !362, !"__already_done", i1 false, i1 false}
!362 = !{!"../kernel/time/timer.c", i32 911, i32 7}
!363 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!364 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!365 = distinct !{null, !366, !"__already_done", i1 false, i1 false}
!366 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!367 = !{ptr @.str.85, !366, !"<string literal>", i1 false, i1 false}
!368 = !{ptr @init_timer_cpu.__key, !369, !"__key", i1 false, i1 false}
!369 = !{!"../kernel/time/timer.c", i32 2005, i32 3}
!370 = !{ptr @.str.86, !369, !"<string literal>", i1 false, i1 false}
!371 = distinct !{null, !372, !"__already_done", i1 false, i1 false}
!372 = !{!"../kernel/time/timer.c", i32 1729, i32 3}
!373 = distinct !{null, !374, !"__already_done", i1 false, i1 false}
!374 = !{!"../kernel/time/timer.c", i32 1427, i32 3}
!375 = !{ptr @.str.87, !374, !"<string literal>", i1 false, i1 false}
!376 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!377 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!378 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!379 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!380 = !{!"sp"}
!381 = !{i32 1, !"wchar_size", i32 2}
!382 = !{i32 1, !"min_enum_size", i32 4}
!383 = !{i32 8, !"branch-target-enforcement", i32 0}
!384 = !{i32 8, !"sign-return-address", i32 0}
!385 = !{i32 8, !"sign-return-address-all", i32 0}
!386 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!387 = !{i32 7, !"uwtable", i32 1}
!388 = !{i32 7, !"frame-pointer", i32 2}
!389 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!390 = !{!"branch_weights", i32 2000, i32 1}
!391 = !{!"branch_weights", i32 1, i32 2000}
!392 = !{!"auto-init"}
!393 = !{i64 2156976557, i64 2156977041, i64 2156976594, i64 2156976650, i64 2156976684, i64 2156976708, i64 2156976749, i64 2156976770, i64 2156976798, i64 2156976832}
!394 = !{i64 2156976038}
!395 = !{i64 2156975880}
!396 = !{i64 2148887803, i64 2148887808, i64 2148887829, i64 2148887873, i64 2148887907, i64 2148887928}
!397 = !{i64 2148887400, i64 2148887405, i64 2148887418, i64 2148887462, i64 2148887496, i64 2148887517}
!398 = !{i8 0, i8 2}
!399 = !{i64 2156989746, i64 2156990231, i64 2156989783, i64 2156989839, i64 2156989873, i64 2156989897, i64 2156989938, i64 2156989959, i64 2156989987, i64 2156990021}
!400 = !{i64 2156992657, i64 2156993142, i64 2156992694, i64 2156992750, i64 2156992784, i64 2156992808, i64 2156992849, i64 2156992870, i64 2156992898, i64 2156992932}
!401 = !{i32 0, i32 512}
!402 = !{i64 808428, i64 808489}
!403 = !{i64 811160}
!404 = !{i64 811445}
!405 = !{i64 2157273103}
!406 = !{i64 2157272945}
!407 = !{i64 1310288, i64 1310315}
!408 = !{i64 1310983, i64 1311010, i64 1311043, i64 1311064, i64 1311091, i64 1311117}
!409 = !{i64 2157336503, i64 2157336988, i64 2157336540, i64 2157336596, i64 2157336630, i64 2157336654, i64 2157336695, i64 2157336716, i64 2157336744, i64 2157336778}
!410 = !{i64 2157338779}
!411 = !{i64 2157340111, i64 2157340596, i64 2157340148, i64 2157340204, i64 2157340238, i64 2157340262, i64 2157340303, i64 2157340324, i64 2157340352, i64 2157340386}
!412 = !{i64 2157341716}
!413 = !{i64 2155782224}
!414 = !{i64 2155782417}
!415 = !{i64 2149361063}
!416 = !{i64 2149362099}
!417 = !{i64 2155798702}
!418 = !{i64 2155798929}
!419 = !{i64 2155851937}
!420 = !{i64 2155852134}
!421 = !{i64 2155815324}
!422 = !{i64 2155815551}
!423 = !{i64 2155835842}
!424 = !{i64 2155836049}
