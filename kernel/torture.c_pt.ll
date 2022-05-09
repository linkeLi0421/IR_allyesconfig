; ModuleID = '/llk/IR_all_yes/kernel/torture.c_pt.bc'
source_filename = "../kernel/torture.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+verbose_torout_sleep\22, \22a\22\09"
module asm "\09.weak\09__crc_verbose_torout_sleep\09\09\09\09"
module asm "\09.long\09__crc_verbose_torout_sleep\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_verbose_torout_sleep:\09\09\09\09\09"
module asm "\09.asciz \09\22verbose_torout_sleep\22\09\09\09\09\09"
module asm "__kstrtabns_verbose_torout_sleep:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+torture_hrtimeout_ns\22, \22a\22\09"
module asm "\09.weak\09__crc_torture_hrtimeout_ns\09\09\09\09"
module asm "\09.long\09__crc_torture_hrtimeout_ns\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_torture_hrtimeout_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22torture_hrtimeout_ns\22\09\09\09\09\09"
module asm "__kstrtabns_torture_hrtimeout_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+torture_hrtimeout_us\22, \22a\22\09"
module asm "\09.weak\09__crc_torture_hrtimeout_us\09\09\09\09"
module asm "\09.long\09__crc_torture_hrtimeout_us\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_torture_hrtimeout_us:\09\09\09\09\09"
module asm "\09.asciz \09\22torture_hrtimeout_us\22\09\09\09\09\09"
module asm "__kstrtabns_torture_hrtimeout_us:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+torture_hrtimeout_ms\22, \22a\22\09"
module asm "\09.weak\09__crc_torture_hrtimeout_ms\09\09\09\09"
module asm "\09.long\09__crc_torture_hrtimeout_ms\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_torture_hrtimeout_ms:\09\09\09\09\09"
module asm "\09.asciz \09\22torture_hrtimeout_ms\22\09\09\09\09\09"
module asm "__kstrtabns_torture_hrtimeout_ms:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+torture_hrtimeout_jiffies\22, \22a\22\09"
module asm "\09.weak\09__crc_torture_hrtimeout_jiffies\09\09\09\09"
module asm "\09.long\09__crc_torture_hrtimeout_jiffies\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_torture_hrtimeout_jiffies:\09\09\09\09\09"
module asm "\09.asciz \09\22torture_hrtimeout_jiffies\22\09\09\09\09\09"
module asm "__kstrtabns_torture_hrtimeout_jiffies:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+torture_hrtimeout_s\22, \22a\22\09"
module asm "\09.weak\09__crc_torture_hrtimeout_s\09\09\09\09"
module asm "\09.long\09__crc_torture_hrtimeout_s\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_torture_hrtimeout_s:\09\09\09\09\09"
module asm "\09.asciz \09\22torture_hrtimeout_s\22\09\09\09\09\09"
module asm "__kstrtabns_torture_hrtimeout_s:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+torture_num_online_cpus\22, \22a\22\09"
module asm "\09.weak\09__crc_torture_num_online_cpus\09\09\09\09"
module asm "\09.long\09__crc_torture_num_online_cpus\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_torture_num_online_cpus:\09\09\09\09\09"
module asm "\09.asciz \09\22torture_num_online_cpus\22\09\09\09\09\09"
module asm "__kstrtabns_torture_num_online_cpus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+torture_offline\22, \22a\22\09"
module asm "\09.weak\09__crc_torture_offline\09\09\09\09"
module asm "\09.long\09__crc_torture_offline\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_torture_offline:\09\09\09\09\09"
module asm "\09.asciz \09\22torture_offline\22\09\09\09\09\09"
module asm "__kstrtabns_torture_offline:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+torture_online\22, \22a\22\09"
module asm "\09.weak\09__crc_torture_online\09\09\09\09"
module asm "\09.long\09__crc_torture_online\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_torture_online:\09\09\09\09\09"
module asm "\09.asciz \09\22torture_online\22\09\09\09\09\09"
module asm "__kstrtabns_torture_online:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+torture_onoff_init\22, \22a\22\09"
module asm "\09.weak\09__crc_torture_onoff_init\09\09\09\09"
module asm "\09.long\09__crc_torture_onoff_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_torture_onoff_init:\09\09\09\09\09"
module asm "\09.asciz \09\22torture_onoff_init\22\09\09\09\09\09"
module asm "__kstrtabns_torture_onoff_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+torture_onoff_stats\22, \22a\22\09"
module asm "\09.weak\09__crc_torture_onoff_stats\09\09\09\09"
module asm "\09.long\09__crc_torture_onoff_stats\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_torture_onoff_stats:\09\09\09\09\09"
module asm "\09.asciz \09\22torture_onoff_stats\22\09\09\09\09\09"
module asm "__kstrtabns_torture_onoff_stats:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+torture_onoff_failures\22, \22a\22\09"
module asm "\09.weak\09__crc_torture_onoff_failures\09\09\09\09"
module asm "\09.long\09__crc_torture_onoff_failures\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_torture_onoff_failures:\09\09\09\09\09"
module asm "\09.asciz \09\22torture_onoff_failures\22\09\09\09\09\09"
module asm "__kstrtabns_torture_onoff_failures:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+torture_random\22, \22a\22\09"
module asm "\09.weak\09__crc_torture_random\09\09\09\09"
module asm "\09.long\09__crc_torture_random\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_torture_random:\09\09\09\09\09"
module asm "\09.asciz \09\22torture_random\22\09\09\09\09\09"
module asm "__kstrtabns_torture_random:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+torture_shuffle_task_register\22, \22a\22\09"
module asm "\09.weak\09__crc_torture_shuffle_task_register\09\09\09\09"
module asm "\09.long\09__crc_torture_shuffle_task_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_torture_shuffle_task_register:\09\09\09\09\09"
module asm "\09.asciz \09\22torture_shuffle_task_register\22\09\09\09\09\09"
module asm "__kstrtabns_torture_shuffle_task_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+torture_shuffle_init\22, \22a\22\09"
module asm "\09.weak\09__crc_torture_shuffle_init\09\09\09\09"
module asm "\09.long\09__crc_torture_shuffle_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_torture_shuffle_init:\09\09\09\09\09"
module asm "\09.asciz \09\22torture_shuffle_init\22\09\09\09\09\09"
module asm "__kstrtabns_torture_shuffle_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+torture_shutdown_absorb\22, \22a\22\09"
module asm "\09.weak\09__crc_torture_shutdown_absorb\09\09\09\09"
module asm "\09.long\09__crc_torture_shutdown_absorb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_torture_shutdown_absorb:\09\09\09\09\09"
module asm "\09.asciz \09\22torture_shutdown_absorb\22\09\09\09\09\09"
module asm "__kstrtabns_torture_shutdown_absorb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+torture_shutdown_init\22, \22a\22\09"
module asm "\09.weak\09__crc_torture_shutdown_init\09\09\09\09"
module asm "\09.long\09__crc_torture_shutdown_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_torture_shutdown_init:\09\09\09\09\09"
module asm "\09.asciz \09\22torture_shutdown_init\22\09\09\09\09\09"
module asm "__kstrtabns_torture_shutdown_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+stutter_wait\22, \22a\22\09"
module asm "\09.weak\09__crc_stutter_wait\09\09\09\09"
module asm "\09.long\09__crc_stutter_wait\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stutter_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22stutter_wait\22\09\09\09\09\09"
module asm "__kstrtabns_stutter_wait:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+torture_stutter_init\22, \22a\22\09"
module asm "\09.weak\09__crc_torture_stutter_init\09\09\09\09"
module asm "\09.long\09__crc_torture_stutter_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_torture_stutter_init:\09\09\09\09\09"
module asm "\09.asciz \09\22torture_stutter_init\22\09\09\09\09\09"
module asm "__kstrtabns_torture_stutter_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+torture_init_begin\22, \22a\22\09"
module asm "\09.weak\09__crc_torture_init_begin\09\09\09\09"
module asm "\09.long\09__crc_torture_init_begin\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_torture_init_begin:\09\09\09\09\09"
module asm "\09.asciz \09\22torture_init_begin\22\09\09\09\09\09"
module asm "__kstrtabns_torture_init_begin:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+torture_init_end\22, \22a\22\09"
module asm "\09.weak\09__crc_torture_init_end\09\09\09\09"
module asm "\09.long\09__crc_torture_init_end\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_torture_init_end:\09\09\09\09\09"
module asm "\09.asciz \09\22torture_init_end\22\09\09\09\09\09"
module asm "__kstrtabns_torture_init_end:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+torture_cleanup_begin\22, \22a\22\09"
module asm "\09.weak\09__crc_torture_cleanup_begin\09\09\09\09"
module asm "\09.long\09__crc_torture_cleanup_begin\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_torture_cleanup_begin:\09\09\09\09\09"
module asm "\09.asciz \09\22torture_cleanup_begin\22\09\09\09\09\09"
module asm "__kstrtabns_torture_cleanup_begin:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+torture_cleanup_end\22, \22a\22\09"
module asm "\09.weak\09__crc_torture_cleanup_end\09\09\09\09"
module asm "\09.long\09__crc_torture_cleanup_end\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_torture_cleanup_end:\09\09\09\09\09"
module asm "\09.asciz \09\22torture_cleanup_end\22\09\09\09\09\09"
module asm "__kstrtabns_torture_cleanup_end:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+torture_must_stop\22, \22a\22\09"
module asm "\09.weak\09__crc_torture_must_stop\09\09\09\09"
module asm "\09.long\09__crc_torture_must_stop\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_torture_must_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22torture_must_stop\22\09\09\09\09\09"
module asm "__kstrtabns_torture_must_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+torture_must_stop_irq\22, \22a\22\09"
module asm "\09.weak\09__crc_torture_must_stop_irq\09\09\09\09"
module asm "\09.long\09__crc_torture_must_stop_irq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_torture_must_stop_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22torture_must_stop_irq\22\09\09\09\09\09"
module asm "__kstrtabns_torture_must_stop_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+torture_kthread_stopping\22, \22a\22\09"
module asm "\09.weak\09__crc_torture_kthread_stopping\09\09\09\09"
module asm "\09.long\09__crc_torture_kthread_stopping\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_torture_kthread_stopping:\09\09\09\09\09"
module asm "\09.asciz \09\22torture_kthread_stopping\22\09\09\09\09\09"
module asm "__kstrtabns_torture_kthread_stopping:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+_torture_create_kthread\22, \22a\22\09"
module asm "\09.weak\09__crc__torture_create_kthread\09\09\09\09"
module asm "\09.long\09__crc__torture_create_kthread\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__torture_create_kthread:\09\09\09\09\09"
module asm "\09.asciz \09\22_torture_create_kthread\22\09\09\09\09\09"
module asm "__kstrtabns__torture_create_kthread:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+_torture_stop_kthread\22, \22a\22\09"
module asm "\09.weak\09__crc__torture_stop_kthread\09\09\09\09"
module asm "\09.long\09__crc__torture_stop_kthread\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__torture_stop_kthread:\09\09\09\09\09"
module asm "\09.asciz \09\22_torture_stop_kthread\22\09\09\09\09\09"
module asm "__kstrtabns__torture_stop_kthread:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.torture_random_state = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.24, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.3 }
%struct.llist_node = type { ptr }
%union.anon.3 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%union.anon.24 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.shuffle_task = type { %struct.list_head, ptr }

@__UNIQUE_ID_file241 = internal constant [28 x i8] c"torture.file=kernel/torture\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [20 x i8] c"torture.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author243 = internal constant [56 x i8] c"torture.author=Paul E. McKenney <paulmck@linux.ibm.com>\00", section ".modinfo", align 1
@__param_str_disable_onoff_at_boot = internal constant [30 x i8] c"torture.disable_onoff_at_boot\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@disable_onoff_at_boot = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_disable_onoff_at_boot = internal constant %struct.kernel_param { ptr @__param_str_disable_onoff_at_boot, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.41 { ptr @disable_onoff_at_boot } }, section "__param", align 4
@__UNIQUE_ID_disable_onoff_at_boottype244 = internal constant [44 x i8] c"torture.parmtype=disable_onoff_at_boot:bool\00", section ".modinfo", align 1
@__param_str_ftrace_dump_at_shutdown = internal constant [32 x i8] c"torture.ftrace_dump_at_shutdown\00", align 1
@ftrace_dump_at_shutdown = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_ftrace_dump_at_shutdown = internal constant %struct.kernel_param { ptr @__param_str_ftrace_dump_at_shutdown, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.41 { ptr @ftrace_dump_at_shutdown } }, section "__param", align 4
@__UNIQUE_ID_ftrace_dump_at_shutdowntype245 = internal constant [46 x i8] c"torture.parmtype=ftrace_dump_at_shutdown:bool\00", section ".modinfo", align 1
@__param_str_verbose_sleep_frequency = internal constant [32 x i8] c"torture.verbose_sleep_frequency\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@verbose_sleep_frequency = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_verbose_sleep_frequency = internal constant %struct.kernel_param { ptr @__param_str_verbose_sleep_frequency, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.41 { ptr @verbose_sleep_frequency } }, section "__param", align 4
@__UNIQUE_ID_verbose_sleep_frequencytype246 = internal constant [45 x i8] c"torture.parmtype=verbose_sleep_frequency:int\00", section ".modinfo", align 1
@__param_str_verbose_sleep_duration = internal constant [31 x i8] c"torture.verbose_sleep_duration\00", align 1
@verbose_sleep_duration = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_verbose_sleep_duration = internal constant %struct.kernel_param { ptr @__param_str_verbose_sleep_duration, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.41 { ptr @verbose_sleep_duration } }, section "__param", align 4
@__UNIQUE_ID_verbose_sleep_durationtype247 = internal constant [44 x i8] c"torture.parmtype=verbose_sleep_duration:int\00", section ".modinfo", align 1
@verbose_sleep_counter = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@__kstrtab_verbose_torout_sleep = external dso_local constant [0 x i8], align 1
@__kstrtabns_verbose_torout_sleep = external dso_local constant [0 x i8], align 1
@__ksymtab_verbose_torout_sleep = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @verbose_torout_sleep to i32), ptr @__kstrtab_verbose_torout_sleep, ptr @__kstrtabns_verbose_torout_sleep }, section "___ksymtab_gpl+verbose_torout_sleep", align 4
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"kernel/torture.c\00", [47 x i8] zeroinitializer }, align 32
@__kstrtab_torture_hrtimeout_ns = external dso_local constant [0 x i8], align 1
@__kstrtabns_torture_hrtimeout_ns = external dso_local constant [0 x i8], align 1
@__ksymtab_torture_hrtimeout_ns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @torture_hrtimeout_ns to i32), ptr @__kstrtab_torture_hrtimeout_ns, ptr @__kstrtabns_torture_hrtimeout_ns }, section "___ksymtab_gpl+torture_hrtimeout_ns", align 4
@__kstrtab_torture_hrtimeout_us = external dso_local constant [0 x i8], align 1
@__kstrtabns_torture_hrtimeout_us = external dso_local constant [0 x i8], align 1
@__ksymtab_torture_hrtimeout_us = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @torture_hrtimeout_us to i32), ptr @__kstrtab_torture_hrtimeout_us, ptr @__kstrtabns_torture_hrtimeout_us }, section "___ksymtab_gpl+torture_hrtimeout_us", align 4
@__kstrtab_torture_hrtimeout_ms = external dso_local constant [0 x i8], align 1
@__kstrtabns_torture_hrtimeout_ms = external dso_local constant [0 x i8], align 1
@__ksymtab_torture_hrtimeout_ms = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @torture_hrtimeout_ms to i32), ptr @__kstrtab_torture_hrtimeout_ms, ptr @__kstrtabns_torture_hrtimeout_ms }, section "___ksymtab_gpl+torture_hrtimeout_ms", align 4
@__kstrtab_torture_hrtimeout_jiffies = external dso_local constant [0 x i8], align 1
@__kstrtabns_torture_hrtimeout_jiffies = external dso_local constant [0 x i8], align 1
@__ksymtab_torture_hrtimeout_jiffies = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @torture_hrtimeout_jiffies to i32), ptr @__kstrtab_torture_hrtimeout_jiffies, ptr @__kstrtabns_torture_hrtimeout_jiffies }, section "___ksymtab_gpl+torture_hrtimeout_jiffies", align 4
@__kstrtab_torture_hrtimeout_s = external dso_local constant [0 x i8], align 1
@__kstrtabns_torture_hrtimeout_s = external dso_local constant [0 x i8], align 1
@__ksymtab_torture_hrtimeout_s = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @torture_hrtimeout_s to i32), ptr @__kstrtab_torture_hrtimeout_s, ptr @__kstrtabns_torture_hrtimeout_s }, section "___ksymtab_gpl+torture_hrtimeout_s", align 4
@torture_online_cpus = internal global { i32, [28 x i8] } { i32 4, [28 x i8] zeroinitializer }, align 32
@__kstrtab_torture_num_online_cpus = external dso_local constant [0 x i8], align 1
@__kstrtabns_torture_num_online_cpus = external dso_local constant [0 x i8], align 1
@__ksymtab_torture_num_online_cpus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @torture_num_online_cpus to i32), ptr @__kstrtab_torture_num_online_cpus, ptr @__kstrtabns_torture_num_online_cpus }, section "___ksymtab_gpl+torture_num_online_cpus", align 4
@verbose = internal global { i32, [28 x i8] } zeroinitializer, align 32
@torture_offline._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\011%s-torture:torture_onoff task: offlining %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"torture_offline\00", [16 x i8] zeroinitializer }, align 32
@torture_offline._entry_ptr = internal global ptr @torture_offline._entry, section ".printk_index", align 4
@torture_type = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.3 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c" (-EBUSY forgiven during boot)\00", [33 x i8] zeroinitializer }, align 32
@torture_offline._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\011%s-torture:torture_onoff task: offline %d failed%s: errno %d\0A\00", [32 x i8] zeroinitializer }, align 32
@torture_offline._entry_ptr.7 = internal global ptr @torture_offline._entry.5, section ".printk_index", align 4
@torture_offline._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\011%s-torture:torture_onoff task: offlined %d\0A\00", [50 x i8] zeroinitializer }, align 32
@torture_offline._entry_ptr.10 = internal global ptr @torture_offline._entry.8, section ".printk_index", align 4
@onoff_f = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@torture_offline.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_torture_offline = external dso_local constant [0 x i8], align 1
@__kstrtabns_torture_offline = external dso_local constant [0 x i8], align 1
@__ksymtab_torture_offline = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @torture_offline to i32), ptr @__kstrtab_torture_offline, ptr @__kstrtabns_torture_offline }, section "___ksymtab_gpl+torture_offline", align 4
@torture_online._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\011%s-torture:torture_onoff task: onlining %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"torture_online\00", [17 x i8] zeroinitializer }, align 32
@torture_online._entry_ptr = internal global ptr @torture_online._entry, section ".printk_index", align 4
@torture_online._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str, i32 286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\011%s-torture:torture_onoff task: online %d failed%s: errno %d\0A\00", [33 x i8] zeroinitializer }, align 32
@torture_online._entry_ptr.15 = internal global ptr @torture_online._entry.13, section ".printk_index", align 4
@torture_online._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str, i32 291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\011%s-torture:torture_onoff task: onlined %d\0A\00", [51 x i8] zeroinitializer }, align 32
@torture_online._entry_ptr.18 = internal global ptr @torture_online._entry.16, section ".printk_index", align 4
@__kstrtab_torture_online = external dso_local constant [0 x i8], align 1
@__kstrtabns_torture_online = external dso_local constant [0 x i8], align 1
@__ksymtab_torture_online = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @torture_online to i32), ptr @__kstrtab_torture_online, ptr @__kstrtabns_torture_online }, section "___ksymtab_gpl+torture_online", align 4
@onoff_holdoff = internal global { i32, [28 x i8] } zeroinitializer, align 32
@onoff_interval = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"torture_onoff\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Creating torture_onoff task\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to create torture_onoff\00", [33 x i8] zeroinitializer }, align 32
@onoff_task = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_torture_onoff_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_torture_onoff_init = external dso_local constant [0 x i8], align 1
@__ksymtab_torture_onoff_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @torture_onoff_init to i32), ptr @__kstrtab_torture_onoff_init, ptr @__kstrtabns_torture_onoff_init }, section "___ksymtab_gpl+torture_onoff_init", align 4
@torture_onoff_stats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str, i32 422, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\01conoff: %ld/%ld:%ld/%ld %d,%d:%d,%d %lu:%lu (HZ=%d) \00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"torture_onoff_stats\00", [44 x i8] zeroinitializer }, align 32
@torture_onoff_stats._entry_ptr = internal global ptr @torture_onoff_stats._entry, section ".printk_index", align 4
@n_online_successes = internal global { i32, [28 x i8] } zeroinitializer, align 32
@n_online_attempts = internal global { i32, [28 x i8] } zeroinitializer, align 32
@n_offline_successes = internal global { i32, [28 x i8] } zeroinitializer, align 32
@n_offline_attempts = internal global { i32, [28 x i8] } zeroinitializer, align 32
@min_online = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@max_online = internal global { i32, [28 x i8] } zeroinitializer, align 32
@min_offline = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@max_offline = internal global { i32, [28 x i8] } zeroinitializer, align 32
@sum_online = internal global { i32, [28 x i8] } zeroinitializer, align 32
@sum_offline = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_torture_onoff_stats = external dso_local constant [0 x i8], align 1
@__kstrtabns_torture_onoff_stats = external dso_local constant [0 x i8], align 1
@__ksymtab_torture_onoff_stats = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @torture_onoff_stats to i32), ptr @__kstrtab_torture_onoff_stats, ptr @__kstrtabns_torture_onoff_stats }, section "___ksymtab_gpl+torture_onoff_stats", align 4
@__kstrtab_torture_onoff_failures = external dso_local constant [0 x i8], align 1
@__kstrtabns_torture_onoff_failures = external dso_local constant [0 x i8], align 1
@__ksymtab_torture_onoff_failures = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @torture_onoff_failures to i32), ptr @__kstrtab_torture_onoff_failures, ptr @__kstrtabns_torture_onoff_failures }, section "___ksymtab_gpl+torture_onoff_failures", align 4
@__kstrtab_torture_random = external dso_local constant [0 x i8], align 1
@__kstrtabns_torture_random = external dso_local constant [0 x i8], align 1
@__ksymtab_torture_random = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @torture_random to i32), ptr @__kstrtab_torture_random, ptr @__kstrtabns_torture_random }, section "___ksymtab_gpl+torture_random", align 4
@torture_shuffle_task_register.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@torture_shuffle_task_register.__already_done.24 = internal unnamed_addr global i1 false, section ".data.once", align 1
@shuffle_task_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.69, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @shuffle_task_mutex, i64 52), ptr getelementptr (i8, ptr @shuffle_task_mutex, i64 52) }, ptr @shuffle_task_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.70, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@shuffle_task_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @shuffle_task_list, ptr @shuffle_task_list }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_torture_shuffle_task_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_torture_shuffle_task_register = external dso_local constant [0 x i8], align 1
@__ksymtab_torture_shuffle_task_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @torture_shuffle_task_register to i32), ptr @__kstrtab_torture_shuffle_task_register, ptr @__kstrtabns_torture_shuffle_task_register }, section "___ksymtab_gpl+torture_shuffle_task_register", align 4
@shuffle_interval = internal global { i32, [28 x i8] } zeroinitializer, align 32
@shuffle_idle_cpu = internal global { i32, [28 x i8] } zeroinitializer, align 32
@shuffle_tmp_mask = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@torture_shuffle_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str, i32 573, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\011%s-torture:!!! %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"torture_shuffle_init\00", [43 x i8] zeroinitializer }, align 32
@torture_shuffle_init._entry_ptr = internal global ptr @torture_shuffle_init._entry, section ".printk_index", align 4
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to alloc mask\00", [43 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"torture_shuffle\00", [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Creating torture_shuffle task\00", [34 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to create torture_shuffle\00", [63 x i8] zeroinitializer }, align 32
@shuffler_task = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_torture_shuffle_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_torture_shuffle_init = external dso_local constant [0 x i8], align 1
@__ksymtab_torture_shuffle_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @torture_shuffle_init to i32), ptr @__kstrtab_torture_shuffle_init, ptr @__kstrtabns_torture_shuffle_init }, section "___ksymtab_gpl+torture_shuffle_init", align 4
@fullstop = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@torture_shutdown_absorb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str, i32 612, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\015torture thread %s parking due to system shutdown\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"torture_shutdown_absorb\00", [40 x i8] zeroinitializer }, align 32
@torture_shutdown_absorb._entry_ptr = internal global ptr @torture_shutdown_absorb._entry, section ".printk_index", align 4
@__kstrtab_torture_shutdown_absorb = external dso_local constant [0 x i8], align 1
@__kstrtabns_torture_shutdown_absorb = external dso_local constant [0 x i8], align 1
@__ksymtab_torture_shutdown_absorb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @torture_shutdown_absorb to i32), ptr @__kstrtab_torture_shutdown_absorb, ptr @__kstrtabns_torture_shutdown_absorb }, section "___ksymtab_gpl+torture_shutdown_absorb", align 4
@torture_shutdown_hook = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@shutdown_time = internal global { i64, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"torture_shutdown\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Creating torture_shutdown task\00", [33 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to create torture_shutdown\00", [62 x i8] zeroinitializer }, align 32
@shutdown_task = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_torture_shutdown_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_torture_shutdown_init = external dso_local constant [0 x i8], align 1
@__ksymtab_torture_shutdown_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @torture_shutdown_init to i32), ptr @__kstrtab_torture_shutdown_init, ptr @__kstrtabns_torture_shutdown_init }, section "___ksymtab_gpl+torture_shutdown_init", align 4
@stutter_pause_test = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_stutter_wait = external dso_local constant [0 x i8], align 1
@__kstrtabns_stutter_wait = external dso_local constant [0 x i8], align 1
@__ksymtab_stutter_wait = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stutter_wait to i32), ptr @__kstrtab_stutter_wait, ptr @__kstrtabns_stutter_wait }, section "___ksymtab_gpl+stutter_wait", align 4
@stutter = internal global { i32, [28 x i8] } zeroinitializer, align 32
@stutter_gap = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"torture_stutter\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Creating torture_stutter task\00", [34 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to create torture_stutter\00", [63 x i8] zeroinitializer }, align 32
@stutter_task = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_torture_stutter_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_torture_stutter_init = external dso_local constant [0 x i8], align 1
@__ksymtab_torture_stutter_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @torture_stutter_init to i32), ptr @__kstrtab_torture_stutter_init, ptr @__kstrtabns_torture_stutter_init }, section "___ksymtab_gpl+torture_stutter_init", align 4
@fullstop_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.83, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @fullstop_mutex, i64 52), ptr getelementptr (i8, ptr @fullstop_mutex, i64 52) }, ptr @fullstop_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.84, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@torture_init_begin._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str, i32 820, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\011%s: Refusing %s init: %s running.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"torture_init_begin\00", [45 x i8] zeroinitializer }, align 32
@torture_init_begin._entry_ptr = internal global ptr @torture_init_begin._entry, section ".printk_index", align 4
@torture_init_begin._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str, i32 821, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\011%s: One torture test at a time!\0A\00", [61 x i8] zeroinitializer }, align 32
@torture_init_begin._entry_ptr.43 = internal global ptr @torture_init_begin._entry.41, section ".printk_index", align 4
@__kstrtab_torture_init_begin = external dso_local constant [0 x i8], align 1
@__kstrtabns_torture_init_begin = external dso_local constant [0 x i8], align 1
@__ksymtab_torture_init_begin = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @torture_init_begin to i32), ptr @__kstrtab_torture_init_begin, ptr @__kstrtabns_torture_init_begin }, section "___ksymtab_gpl+torture_init_begin", align 4
@torture_shutdown_nb = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @torture_shutdown_notify, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@__kstrtab_torture_init_end = external dso_local constant [0 x i8], align 1
@__kstrtabns_torture_init_end = external dso_local constant [0 x i8], align 1
@__ksymtab_torture_init_end = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @torture_init_end to i32), ptr @__kstrtab_torture_init_end, ptr @__kstrtabns_torture_init_end }, section "___ksymtab_gpl+torture_init_end", align 4
@torture_cleanup_begin._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str, i32 861, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014Concurrent rmmod and shutdown illegal!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"torture_cleanup_begin\00", [42 x i8] zeroinitializer }, align 32
@torture_cleanup_begin._entry_ptr = internal global ptr @torture_cleanup_begin._entry, section ".printk_index", align 4
@__kstrtab_torture_cleanup_begin = external dso_local constant [0 x i8], align 1
@__kstrtabns_torture_cleanup_begin = external dso_local constant [0 x i8], align 1
@__ksymtab_torture_cleanup_begin = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @torture_cleanup_begin to i32), ptr @__kstrtab_torture_cleanup_begin, ptr @__kstrtabns_torture_cleanup_begin }, section "___ksymtab_gpl+torture_cleanup_begin", align 4
@__kstrtab_torture_cleanup_end = external dso_local constant [0 x i8], align 1
@__kstrtabns_torture_cleanup_end = external dso_local constant [0 x i8], align 1
@__ksymtab_torture_cleanup_end = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @torture_cleanup_end to i32), ptr @__kstrtab_torture_cleanup_end, ptr @__kstrtabns_torture_cleanup_end }, section "___ksymtab_gpl+torture_cleanup_end", align 4
@__kstrtab_torture_must_stop = external dso_local constant [0 x i8], align 1
@__kstrtabns_torture_must_stop = external dso_local constant [0 x i8], align 1
@__ksymtab_torture_must_stop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @torture_must_stop to i32), ptr @__kstrtab_torture_must_stop, ptr @__kstrtabns_torture_must_stop }, section "___ksymtab_gpl+torture_must_stop", align 4
@__kstrtab_torture_must_stop_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_torture_must_stop_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_torture_must_stop_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @torture_must_stop_irq to i32), ptr @__kstrtab_torture_must_stop_irq, ptr @__kstrtabns_torture_must_stop_irq }, section "___ksymtab_gpl+torture_must_stop_irq", align 4
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Stopping %s\00", [20 x i8] zeroinitializer }, align 32
@torture_kthread_stopping._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str, i32 915, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\011%s-torture: %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"torture_kthread_stopping\00", [39 x i8] zeroinitializer }, align 32
@torture_kthread_stopping._entry_ptr = internal global ptr @torture_kthread_stopping._entry, section ".printk_index", align 4
@__kstrtab_torture_kthread_stopping = external dso_local constant [0 x i8], align 1
@__kstrtabns_torture_kthread_stopping = external dso_local constant [0 x i8], align 1
@__ksymtab_torture_kthread_stopping = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @torture_kthread_stopping to i32), ptr @__kstrtab_torture_kthread_stopping, ptr @__kstrtabns_torture_kthread_stopping }, section "___ksymtab_gpl+torture_kthread_stopping", align 4
@_torture_create_kthread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.49, ptr @.str, i32 933, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"_torture_create_kthread\00", [40 x i8] zeroinitializer }, align 32
@_torture_create_kthread._entry_ptr = internal global ptr @_torture_create_kthread._entry, section ".printk_index", align 4
@.str.50 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@_torture_create_kthread._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.49, ptr @.str, i32 937, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@_torture_create_kthread._entry_ptr.52 = internal global ptr @_torture_create_kthread._entry.51, section ".printk_index", align 4
@__kstrtab__torture_create_kthread = external dso_local constant [0 x i8], align 1
@__kstrtabns__torture_create_kthread = external dso_local constant [0 x i8], align 1
@__ksymtab__torture_create_kthread = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_torture_create_kthread to i32), ptr @__kstrtab__torture_create_kthread, ptr @__kstrtabns__torture_create_kthread }, section "___ksymtab_gpl+_torture_create_kthread", align 4
@_torture_stop_kthread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.53, ptr @.str, i32 952, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"_torture_stop_kthread\00", [42 x i8] zeroinitializer }, align 32
@_torture_stop_kthread._entry_ptr = internal global ptr @_torture_stop_kthread._entry, section ".printk_index", align 4
@__kstrtab__torture_stop_kthread = external dso_local constant [0 x i8], align 1
@__kstrtabns__torture_stop_kthread = external dso_local constant [0 x i8], align 1
@__ksymtab__torture_stop_kthread = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_torture_stop_kthread to i32), ptr @__kstrtab__torture_stop_kthread, ptr @__kstrtabns__torture_stop_kthread }, section "___ksymtab_gpl+_torture_stop_kthread", align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@torture_onoff._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.19, ptr @.str, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@torture_onoff._entry_ptr = internal global ptr @torture_onoff._entry, section ".printk_index", align 4
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"torture_onoff task started\00", [37 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Initial\00", [24 x i8] zeroinitializer }, align 32
@torture_onoff._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.19, ptr @.str, i32 347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@torture_onoff._entry_ptr.58 = internal global ptr @torture_onoff._entry.57, section ".printk_index", align 4
@.str.59 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Only one CPU, so CPU-hotplug testing is disabled\00", [47 x i8] zeroinitializer }, align 32
@torture_onoff._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.19, ptr @.str, i32 352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@torture_onoff._entry_ptr.61 = internal global ptr @torture_onoff._entry.60, section ".printk_index", align 4
@.str.62 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"torture_onoff begin holdoff\00", [36 x i8] zeroinitializer }, align 32
@torture_onoff._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.19, ptr @.str, i32 354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@torture_onoff._entry_ptr.64 = internal global ptr @torture_onoff._entry.63, section ".printk_index", align 4
@.str.65 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"torture_onoff end holdoff\00", [38 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Final\00", [26 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@torture_online_all._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str, i32 325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\011%s-torture:%s: %s online %d: errno %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"torture_online_all\00", [45 x i8] zeroinitializer }, align 32
@torture_online_all._entry_ptr = internal global ptr @torture_online_all._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.69 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"shuffle_task_mutex.wait_lock\00", [35 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"shuffle_task_mutex\00", [45 x i8] zeroinitializer }, align 32
@torture_shuffle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.28, ptr @.str, i32 553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@torture_shuffle._entry_ptr = internal global ptr @torture_shuffle._entry, section ".printk_index", align 4
@.str.71 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"torture_shuffle task started\00", [35 x i8] zeroinitializer }, align 32
@torture_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.33, ptr @.str, i32 626, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@torture_shutdown._entry_ptr = internal global ptr @torture_shutdown._entry, section ".printk_index", align 4
@.str.72 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"torture_shutdown task started\00", [34 x i8] zeroinitializer }, align 32
@torture_shutdown._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.33, ptr @.str, i32 634, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\011%s-torture:torture_shutdown task: %llu ms remaining\0A\00", [41 x i8] zeroinitializer }, align 32
@torture_shutdown._entry_ptr.75 = internal global ptr @torture_shutdown._entry.73, section ".printk_index", align 4
@torture_shutdown._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.33, ptr @.str, i32 646, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@torture_shutdown._entry_ptr.77 = internal global ptr @torture_shutdown._entry.76, section ".printk_index", align 4
@.str.78 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"torture_shutdown task shutting down system\00", [53 x i8] zeroinitializer }, align 32
@torture_shutdown._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.33, ptr @.str, i32 651, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@torture_shutdown._entry_ptr.80 = internal global ptr @torture_shutdown._entry.79, section ".printk_index", align 4
@.str.81 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"No torture_shutdown_hook(), skipping.\00", [58 x i8] zeroinitializer }, align 32
@torture_shutdown.___rfd_beenhere = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@rcu_cpu_stall_suppress = external dso_local local_unnamed_addr global i32, align 4
@torture_stutter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.36, ptr @.str, i32 761, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@torture_stutter._entry_ptr = internal global ptr @torture_stutter._entry, section ".printk_index", align 4
@.str.82 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"torture_stutter task started\00", [35 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fullstop_mutex.wait_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fullstop_mutex\00", [17 x i8] zeroinitializer }, align 32
@torture_shutdown_notify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.85, ptr @.str, i32 681, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"torture_shutdown_notify\00", [40 x i8] zeroinitializer }, align 32
@torture_shutdown_notify._entry_ptr = internal global ptr @torture_shutdown_notify._entry, section ".printk_index", align 4
@.str.86 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unscheduled system shutdown detected\00", [59 x i8] zeroinitializer }, align 32
@torture_shutdown_notify._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.85, ptr @.str, i32 684, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@torture_shutdown_notify._entry_ptr.88 = internal global ptr @torture_shutdown_notify._entry.87, section ".printk_index", align 4
@torture_shutdown_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.89, ptr @.str, i32 702, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"torture_shutdown_cleanup\00", [39 x i8] zeroinitializer }, align 32
@torture_shutdown_cleanup._entry_ptr = internal global ptr @torture_shutdown_cleanup._entry, section ".printk_index", align 4
@.str.90 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Stopping torture_shutdown task\00", [33 x i8] zeroinitializer }, align 32
@torture_shuffle_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.91, ptr @.str, i32 589, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"torture_shuffle_cleanup\00", [40 x i8] zeroinitializer }, align 32
@torture_shuffle_cleanup._entry_ptr = internal global ptr @torture_shuffle_cleanup._entry, section ".printk_index", align 4
@.str.92 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Stopping torture_shuffle task\00", [34 x i8] zeroinitializer }, align 32
@torture_stutter_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.93, ptr @.str, i32 801, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"torture_stutter_cleanup\00", [40 x i8] zeroinitializer }, align 32
@torture_stutter_cleanup._entry_ptr = internal global ptr @torture_stutter_cleanup._entry, section ".printk_index", align 4
@.str.94 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Stopping torture_stutter task\00", [34 x i8] zeroinitializer }, align 32
@torture_onoff_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.95, ptr @.str, i32 405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"torture_onoff_cleanup\00", [42 x i8] zeroinitializer }, align 32
@torture_onoff_cleanup._entry_ptr = internal global ptr @torture_onoff_cleanup._entry, section ".printk_index", align 4
@.str.96 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Stopping torture_onoff task\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.97 = private unnamed_addr constant [22 x i8] c"disable_onoff_at_boot\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 45, i32 13 }
@___asan_gen_.100 = private unnamed_addr constant [24 x i8] c"ftrace_dump_at_shutdown\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 48, i32 13 }
@___asan_gen_.103 = private unnamed_addr constant [24 x i8] c"verbose_sleep_frequency\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 51, i32 12 }
@___asan_gen_.106 = private unnamed_addr constant [23 x i8] c"verbose_sleep_duration\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 54, i32 12 }
@___asan_gen_.109 = private unnamed_addr constant [22 x i8] c"verbose_sleep_counter\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 67, i32 17 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 92, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [20 x i8] c"torture_online_cpus\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 178, i32 12 }
@___asan_gen_.118 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 58, i32 12 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 210, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant [13 x i8] c"torture_type\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 57, i32 14 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 217, i32 7 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 221, i32 8 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 224, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 229, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant [8 x i8] c"onoff_f\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 166, i32 26 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 270, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 284, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 289, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant [14 x i8] c"onoff_holdoff\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 164, i32 13 }
@___asan_gen_.178 = private unnamed_addr constant [15 x i8] c"onoff_interval\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 165, i32 13 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 390, i32 9 }
@___asan_gen_.190 = private unnamed_addr constant [11 x i8] c"onoff_task\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 163, i32 28 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 417, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant [19 x i8] c"n_online_successes\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 173, i32 13 }
@___asan_gen_.205 = private unnamed_addr constant [18 x i8] c"n_online_attempts\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 172, i32 13 }
@___asan_gen_.208 = private unnamed_addr constant [20 x i8] c"n_offline_successes\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 168, i32 13 }
@___asan_gen_.211 = private unnamed_addr constant [19 x i8] c"n_offline_attempts\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 167, i32 13 }
@___asan_gen_.214 = private unnamed_addr constant [11 x i8] c"min_online\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 175, i32 12 }
@___asan_gen_.217 = private unnamed_addr constant [11 x i8] c"max_online\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 176, i32 12 }
@___asan_gen_.220 = private unnamed_addr constant [12 x i8] c"min_offline\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 170, i32 12 }
@___asan_gen_.223 = private unnamed_addr constant [12 x i8] c"max_offline\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 171, i32 12 }
@___asan_gen_.226 = private unnamed_addr constant [11 x i8] c"sum_online\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 174, i32 22 }
@___asan_gen_.229 = private unnamed_addr constant [12 x i8] c"sum_offline\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 169, i32 22 }
@___asan_gen_.232 = private unnamed_addr constant [19 x i8] c"shuffle_task_mutex\00", align 1
@___asan_gen_.235 = private unnamed_addr constant [18 x i8] c"shuffle_task_list\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 476, i32 25 }
@___asan_gen_.238 = private unnamed_addr constant [17 x i8] c"shuffle_interval\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 472, i32 13 }
@___asan_gen_.241 = private unnamed_addr constant [17 x i8] c"shuffle_idle_cpu\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 475, i32 12 }
@___asan_gen_.244 = private unnamed_addr constant [17 x i8] c"shuffle_tmp_mask\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 474, i32 22 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 573, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 578, i32 9 }
@___asan_gen_.268 = private unnamed_addr constant [14 x i8] c"shuffler_task\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 473, i32 28 }
@___asan_gen_.271 = private unnamed_addr constant [9 x i8] c"fullstop\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 64, i32 12 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 611, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant [22 x i8] c"torture_shutdown_hook\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 602, i32 15 }
@___asan_gen_.286 = private unnamed_addr constant [14 x i8] c"shutdown_time\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 601, i32 16 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 666, i32 10 }
@___asan_gen_.298 = private unnamed_addr constant [14 x i8] c"shutdown_task\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 600, i32 28 }
@___asan_gen_.301 = private unnamed_addr constant [19 x i8] c"stutter_pause_test\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 714, i32 12 }
@___asan_gen_.304 = private unnamed_addr constant [8 x i8] c"stutter\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 715, i32 12 }
@___asan_gen_.307 = private unnamed_addr constant [12 x i8] c"stutter_gap\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 716, i32 12 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 790, i32 9 }
@___asan_gen_.319 = private unnamed_addr constant [13 x i8] c"stutter_task\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 713, i32 28 }
@___asan_gen_.322 = private unnamed_addr constant [15 x i8] c"fullstop_mutex\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 819, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 821, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant [20 x i8] c"torture_shutdown_nb\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 690, i32 30 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 861, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 914, i32 29 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 915, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 933, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 934, i32 8 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 937, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 952, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.383, i32 108, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 341, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 345, i32 21 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 347, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 352, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 354, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 373, i32 21 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 323, i32 4 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 477, i32 8 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 553, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 626, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 631, i32 4 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 646, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 651, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant [16 x i8] c"___rfd_beenhere\00", align 1
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 653, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 761, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 65, i32 8 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 681, i32 3 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 684, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 702, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 589, i32 3 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 801, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.520 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.521 = private constant [20 x i8] c"../kernel/torture.c\00", align 1
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 405, i32 2 }
@llvm.compiler.used = appending global [214 x ptr] [ptr @__UNIQUE_ID_author243, ptr @__UNIQUE_ID_disable_onoff_at_boottype244, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_ftrace_dump_at_shutdowntype245, ptr @__UNIQUE_ID_license242, ptr @__UNIQUE_ID_verbose_sleep_durationtype247, ptr @__UNIQUE_ID_verbose_sleep_frequencytype246, ptr @__ksymtab__torture_create_kthread, ptr @__ksymtab__torture_stop_kthread, ptr @__ksymtab_stutter_wait, ptr @__ksymtab_torture_cleanup_begin, ptr @__ksymtab_torture_cleanup_end, ptr @__ksymtab_torture_hrtimeout_jiffies, ptr @__ksymtab_torture_hrtimeout_ms, ptr @__ksymtab_torture_hrtimeout_ns, ptr @__ksymtab_torture_hrtimeout_s, ptr @__ksymtab_torture_hrtimeout_us, ptr @__ksymtab_torture_init_begin, ptr @__ksymtab_torture_init_end, ptr @__ksymtab_torture_kthread_stopping, ptr @__ksymtab_torture_must_stop, ptr @__ksymtab_torture_must_stop_irq, ptr @__ksymtab_torture_num_online_cpus, ptr @__ksymtab_torture_offline, ptr @__ksymtab_torture_online, ptr @__ksymtab_torture_onoff_failures, ptr @__ksymtab_torture_onoff_init, ptr @__ksymtab_torture_onoff_stats, ptr @__ksymtab_torture_random, ptr @__ksymtab_torture_shuffle_init, ptr @__ksymtab_torture_shuffle_task_register, ptr @__ksymtab_torture_shutdown_absorb, ptr @__ksymtab_torture_shutdown_init, ptr @__ksymtab_torture_stutter_init, ptr @__ksymtab_verbose_torout_sleep, ptr @__param_disable_onoff_at_boot, ptr @__param_ftrace_dump_at_shutdown, ptr @__param_verbose_sleep_duration, ptr @__param_verbose_sleep_frequency, ptr @_torture_create_kthread._entry, ptr @_torture_create_kthread._entry.51, ptr @_torture_create_kthread._entry_ptr, ptr @_torture_create_kthread._entry_ptr.52, ptr @_torture_stop_kthread._entry, ptr @_torture_stop_kthread._entry_ptr, ptr @torture_cleanup_begin._entry, ptr @torture_cleanup_begin._entry_ptr, ptr @torture_init_begin._entry, ptr @torture_init_begin._entry.41, ptr @torture_init_begin._entry_ptr, ptr @torture_init_begin._entry_ptr.43, ptr @torture_kthread_stopping._entry, ptr @torture_kthread_stopping._entry_ptr, ptr @torture_offline._entry, ptr @torture_offline._entry.5, ptr @torture_offline._entry.8, ptr @torture_offline._entry_ptr, ptr @torture_offline._entry_ptr.10, ptr @torture_offline._entry_ptr.7, ptr @torture_online._entry, ptr @torture_online._entry.13, ptr @torture_online._entry.16, ptr @torture_online._entry_ptr, ptr @torture_online._entry_ptr.15, ptr @torture_online._entry_ptr.18, ptr @torture_online_all._entry, ptr @torture_online_all._entry_ptr, ptr @torture_onoff._entry, ptr @torture_onoff._entry.57, ptr @torture_onoff._entry.60, ptr @torture_onoff._entry.63, ptr @torture_onoff._entry_ptr, ptr @torture_onoff._entry_ptr.58, ptr @torture_onoff._entry_ptr.61, ptr @torture_onoff._entry_ptr.64, ptr @torture_onoff_cleanup._entry, ptr @torture_onoff_cleanup._entry_ptr, ptr @torture_onoff_stats._entry, ptr @torture_onoff_stats._entry_ptr, ptr @torture_shuffle._entry, ptr @torture_shuffle._entry_ptr, ptr @torture_shuffle_cleanup._entry, ptr @torture_shuffle_cleanup._entry_ptr, ptr @torture_shuffle_init._entry, ptr @torture_shuffle_init._entry_ptr, ptr @torture_shutdown._entry, ptr @torture_shutdown._entry.73, ptr @torture_shutdown._entry.76, ptr @torture_shutdown._entry.79, ptr @torture_shutdown._entry_ptr, ptr @torture_shutdown._entry_ptr.75, ptr @torture_shutdown._entry_ptr.77, ptr @torture_shutdown._entry_ptr.80, ptr @torture_shutdown_absorb._entry, ptr @torture_shutdown_absorb._entry_ptr, ptr @torture_shutdown_cleanup._entry, ptr @torture_shutdown_cleanup._entry_ptr, ptr @torture_shutdown_notify._entry, ptr @torture_shutdown_notify._entry.87, ptr @torture_shutdown_notify._entry_ptr, ptr @torture_shutdown_notify._entry_ptr.88, ptr @torture_stutter._entry, ptr @torture_stutter._entry_ptr, ptr @torture_stutter_cleanup._entry, ptr @torture_stutter_cleanup._entry_ptr, ptr @disable_onoff_at_boot, ptr @ftrace_dump_at_shutdown, ptr @verbose_sleep_frequency, ptr @verbose_sleep_duration, ptr @verbose_sleep_counter, ptr @.str, ptr @torture_online_cpus, ptr @verbose, ptr @.str.1, ptr @.str.2, ptr @torture_type, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @onoff_f, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @onoff_holdoff, ptr @onoff_interval, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @onoff_task, ptr @.str.22, ptr @.str.23, ptr @n_online_successes, ptr @n_online_attempts, ptr @n_offline_successes, ptr @n_offline_attempts, ptr @min_online, ptr @max_online, ptr @min_offline, ptr @max_offline, ptr @sum_online, ptr @sum_offline, ptr @shuffle_task_mutex, ptr @shuffle_task_list, ptr @shuffle_interval, ptr @shuffle_idle_cpu, ptr @shuffle_tmp_mask, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @shuffler_task, ptr @fullstop, ptr @.str.31, ptr @.str.32, ptr @torture_shutdown_hook, ptr @shutdown_time, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @shutdown_task, ptr @stutter_pause_test, ptr @stutter, ptr @stutter_gap, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @stutter_task, ptr @fullstop_mutex, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @torture_shutdown_nb, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.78, ptr @.str.81, ptr @torture_shutdown.___rfd_beenhere, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96], section "llvm.metadata"
@0 = internal global [142 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_onoff_at_boot to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftrace_dump_at_shutdown to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verbose_sleep_frequency to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verbose_sleep_duration to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verbose_sleep_counter to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @torture_online_cpus to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verbose to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @torture_offline._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @torture_type to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @torture_offline._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @torture_offline._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onoff_f to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @torture_online._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @torture_online._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @torture_online._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onoff_holdoff to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onoff_interval to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onoff_task to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @torture_onoff_stats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_online_successes to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_online_attempts to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_offline_successes to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n_offline_attempts to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @min_online to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_online to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @min_offline to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_offline to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sum_online to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sum_offline to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shuffle_task_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shuffle_task_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shuffle_interval to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shuffle_idle_cpu to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shuffle_tmp_mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @torture_shuffle_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shuffler_task to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fullstop to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @torture_shutdown_absorb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @torture_shutdown_hook to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shutdown_time to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shutdown_task to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stutter_pause_test to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stutter to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stutter_gap to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stutter_task to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fullstop_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @torture_init_begin._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @torture_init_begin._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @torture_shutdown_nb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @torture_cleanup_begin._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @torture_kthread_stopping._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_torture_create_kthread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_torture_create_kthread._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_torture_stop_kthread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @torture_onoff._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @torture_onoff._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @torture_onoff._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @torture_onoff._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @torture_online_all._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @torture_shuffle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @torture_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @torture_shutdown._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @torture_shutdown._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @torture_shutdown._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @torture_shutdown.___rfd_beenhere to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @torture_stutter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @torture_shutdown_notify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @torture_shutdown_notify._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @torture_shutdown_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @torture_shuffle_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @torture_stutter_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @torture_onoff_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @verbose_torout_sleep() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @verbose_sleep_frequency, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr @verbose_sleep_duration, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %land.lhs.true2, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @verbose_sleep_counter, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !356
  tail call void @llvm.prefetch.p0(ptr nonnull @verbose_sleep_counter, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @verbose_sleep_counter, ptr nonnull @verbose_sleep_counter, i32 1, ptr nonnull elementtype(i32) @verbose_sleep_counter) #12, !srcloc !357
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !358
  %3 = load i32, ptr @verbose_sleep_frequency, align 4
  %rem = srem i32 %asmresult.i.i.i.i, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true2.if.end_crit_edge

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  %4 = load i32, ptr @verbose_sleep_duration, align 4
  %call3 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef %4) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @torture_hrtimeout_ns(i64 noundef %baset_ns, i32 noundef %fuzzt_ns, ptr noundef %trsp) #0 align 64 {
entry:
  %hto = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hto) #12
  %0 = ptrtoint ptr %hto to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %baset_ns, ptr %hto, align 8
  %tobool.not = icmp eq ptr %trsp, null
  br i1 %tobool.not, label %entry.__here_crit_edge, label %if.then

entry.__here_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

if.then:                                          ; preds = %entry
  %trs_count.i = getelementptr inbounds %struct.torture_random_state, ptr %trsp, i32 0, i32 1
  %1 = ptrtoint ptr %trs_count.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %trs_count.i, align 4
  %dec.i = add i32 %2, -1
  store i32 %dec.i, ptr %trs_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp slt i32 %dec.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.then.if.end.i_crit_edge

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = tail call i64 @sched_clock() #12
  %conv.i = trunc i64 %call.i.i to i32
  %3 = ptrtoint ptr %trsp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %trsp, align 4
  %add.i = add i32 %4, %conv.i
  store i32 %add.i, ptr %trsp, align 4
  %5 = ptrtoint ptr %trs_count.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 10000, ptr %trs_count.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %6 = ptrtoint ptr %trsp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %trsp, align 4
  %mul.i = mul i32 %7, 39916801
  %add3.i = add i32 %mul.i, 479001701
  store i32 %add3.i, ptr %trsp, align 4
  %or.i = tail call i32 @llvm.fshl.i32(i32 %add3.i, i32 %add3.i, i32 16) #12
  %shr = lshr i32 %or.i, 3
  %rem = urem i32 %shr, %fuzzt_ns
  %conv = zext i32 %rem to i64
  %8 = ptrtoint ptr %hto to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %hto, align 8
  %add = add i64 %9, %conv
  store i64 %add, ptr %hto, align 8
  br label %__here

__here:                                           ; preds = %if.end.i, %entry.__here_crit_edge
  %10 = tail call i32 @llvm.read_register.i32(metadata !346) #12
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 212
  %14 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 ptrtoint (ptr blockaddress(@torture_hrtimeout_ns, %__here) to i32), ptr %task_state_change, align 4
  %15 = load ptr, ptr %task, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 2, ptr %15, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !359
  %call65 = call i32 @schedule_hrtimeout(ptr noundef nonnull %hto, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hto) #12
  ret i32 %call65
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @torture_random(ptr nocapture noundef %trsp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %trs_count = getelementptr inbounds %struct.torture_random_state, ptr %trsp, i32 0, i32 1
  %0 = ptrtoint ptr %trs_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %trs_count, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %trs_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp slt i32 %dec, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i64 @sched_clock() #12
  %conv = trunc i64 %call.i to i32
  %2 = ptrtoint ptr %trsp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %trsp, align 4
  %add = add i32 %3, %conv
  store i32 %add, ptr %trsp, align 4
  %4 = ptrtoint ptr %trs_count to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 10000, ptr %trs_count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %trsp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %trsp, align 4
  %mul = mul i32 %6, 39916801
  %add3 = add i32 %mul, 479001701
  store i32 %add3, ptr %trsp, align 4
  %or.i = tail call i32 @llvm.fshl.i32(i32 %add3, i32 %add3, i32 16) #12
  ret i32 %or.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_hrtimeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @torture_hrtimeout_us(i32 noundef %baset_us, i32 noundef %fuzzt_ns, ptr noundef %trsp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = mul i32 %baset_us, 1000
  %conv = zext i32 %mul to i64
  %call = tail call i32 @torture_hrtimeout_ns(i64 noundef %conv, i32 noundef %fuzzt_ns, ptr noundef %trsp)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @torture_hrtimeout_ms(i32 noundef %baset_ms, i32 noundef %fuzzt_us, ptr noundef %trsp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4294967, i32 %fuzzt_us)
  %cmp = icmp ugt i32 %fuzzt_us, 4294967
  %mul2 = mul i32 %fuzzt_us, 1000
  %fuzzt_ns.0 = select i1 %cmp, i32 -1, i32 %mul2
  %mul = mul i32 %baset_ms, 1000000
  %conv = zext i32 %mul to i64
  %call = tail call i32 @torture_hrtimeout_ns(i64 noundef %conv, i32 noundef %fuzzt_ns.0, ptr noundef %trsp)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @torture_hrtimeout_jiffies(i32 noundef %baset_j, ptr noundef %trsp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @jiffies_to_usecs(i32 noundef %baset_j) #12
  %conv.i = zext i32 %call.i to i64
  %mul.i = mul nuw nsw i64 %conv.i, 1000
  %call.i3 = tail call i32 @jiffies_to_usecs(i32 noundef 1) #12
  %mul.i5 = mul i32 %call.i3, 1000
  %call2 = tail call i32 @torture_hrtimeout_ns(i64 noundef %mul.i, i32 noundef %mul.i5, ptr noundef %trsp)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @torture_hrtimeout_s(i32 noundef %baset_s, i32 noundef %fuzzt_ms, ptr noundef %trsp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4294, i32 %fuzzt_ms)
  %cmp = icmp ugt i32 %fuzzt_ms, 4294
  %mul2 = mul i32 %fuzzt_ms, 1000000
  %fuzzt_ns.0 = select i1 %cmp, i32 -1, i32 %mul2
  %mul = mul i32 %baset_s, 1000000000
  %conv = zext i32 %mul to i64
  %call = tail call i32 @torture_hrtimeout_ns(i64 noundef %conv, i32 noundef %fuzzt_ns.0, ptr noundef %trsp)
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @torture_num_online_cpus() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile i32, ptr @torture_online_cpus, align 4
  ret i32 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @torture_offline(i32 noundef %cpu, ptr nocapture noundef %n_offl_attempts, ptr nocapture noundef %n_offl_successes, ptr nocapture noundef %sum_offl, ptr nocapture noundef %min_offl, ptr nocapture noundef %max_offl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %cpu)
  %cmp.not.i.i.i.i = icmp ugt i32 %0, %cpu
  br i1 %cmp.not.i.i.i.i, label %entry.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

entry.cpu_online.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %entry
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !360

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.54, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %entry.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %cpu, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %1 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %cpu, 31
  %3 = shl nuw i32 1, %and.i.i.i
  %4 = and i32 %2, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %cpu_online.exit.cleanup_crit_edge, label %lor.lhs.false

cpu_online.exit.cleanup_crit_edge:                ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %cpu_online.exit
  %call1 = tail call zeroext i1 @cpu_is_hotpluggable(i32 noundef %cpu) #12
  br i1 %call1, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %5 = load volatile i32, ptr @__num_online_cpus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp ult i32 %5, 2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %6 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp5 = icmp sgt i32 %6, 1
  br i1 %cmp5, label %do.end, label %if.end4.if.end8_crit_edge

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %7 = load ptr, ptr @torture_type, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %7, i32 noundef %cpu) #15
  br label %if.end8

if.end8:                                          ; preds = %do.end, %if.end4.if.end8_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %9 = ptrtoint ptr %n_offl_attempts to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n_offl_attempts, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %n_offl_attempts, align 4
  %call9 = tail call i32 @remove_cpu(i32 noundef %cpu) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end8
  %call11 = tail call zeroext i1 @rcu_inkernel_boot_has_ended() #12
  %call11.not = xor i1 %call11, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call9)
  %cmp12 = icmp eq i32 %call9, -16
  %or.cond = select i1 %call11.not, i1 %cmp12, i1 false
  br i1 %or.cond, label %if.then13, label %if.then10.if.end14_crit_edge

if.then10.if.end14_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %n_offl_attempts to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %n_offl_attempts, align 4
  %dec = add i32 %12, -1
  store i32 %dec, ptr %n_offl_attempts, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.then10.if.end14_crit_edge
  %s.0 = phi ptr [ @.str.3, %if.then10.if.end14_crit_edge ], [ @.str.4, %if.then13 ]
  %13 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool15.not = icmp eq i32 %13, 0
  br i1 %tobool15.not, label %if.end14.cleanup_crit_edge, label %do.end19

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %14 = load ptr, ptr @torture_type, align 4
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %14, i32 noundef %cpu, ptr noundef nonnull %s.0, i32 noundef %call9) #15
  br label %cleanup

if.else:                                          ; preds = %if.end8
  %15 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp23 = icmp sgt i32 %15, 1
  br i1 %cmp23, label %do.end27, label %if.else.if.end30_crit_edge

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

do.end27:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %16 = load ptr, ptr @torture_type, align 4
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %16, i32 noundef %cpu) #15
  br label %if.end30

if.end30:                                         ; preds = %do.end27, %if.else.if.end30_crit_edge
  %17 = load ptr, ptr @onoff_f, align 4
  %tobool31.not = icmp eq ptr %17, null
  br i1 %tobool31.not, label %if.end30.if.end33_crit_edge, label %if.then32

if.end30.if.end33_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %17() #12
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end30.if.end33_crit_edge
  %18 = ptrtoint ptr %n_offl_successes to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n_offl_successes, align 4
  %inc34 = add i32 %19, 1
  store i32 %inc34, ptr %n_offl_successes, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %20, %8
  %21 = ptrtoint ptr %sum_offl to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sum_offl, align 4
  %add = add i32 %22, %sub
  store i32 %add, ptr %sum_offl, align 4
  %23 = ptrtoint ptr %min_offl to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %min_offl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp35 = icmp slt i32 %24, 0
  br i1 %cmp35, label %if.then36, label %if.end33.if.end37_crit_edge

if.end33.if.end37_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %min_offl to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub, ptr %min_offl, align 4
  %26 = ptrtoint ptr %max_offl to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub, ptr %max_offl, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end33.if.end37_crit_edge
  %27 = ptrtoint ptr %min_offl to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %min_offl, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %sub)
  %cmp38 = icmp ugt i32 %28, %sub
  br i1 %cmp38, label %if.then39, label %if.end37.if.end40_crit_edge

if.end37.if.end40_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %min_offl to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub, ptr %min_offl, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end37.if.end40_crit_edge
  %30 = ptrtoint ptr %max_offl to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_offl, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %sub)
  %cmp41 = icmp ult i32 %31, %sub
  br i1 %cmp41, label %if.then42, label %if.end40.do.body48_crit_edge

if.end40.do.body48_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body48

if.then42:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %max_offl to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %sub, ptr %max_offl, align 4
  br label %do.body48

do.body48:                                        ; preds = %if.then42, %if.end40.do.body48_crit_edge
  %33 = load i32, ptr @torture_online_cpus, align 4
  %sub49 = add i32 %33, -1
  store volatile i32 %sub49, ptr @torture_online_cpus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub49)
  %cmp54 = icmp slt i32 %sub49, 1
  br i1 %cmp54, label %land.rhs, label %do.body48.cleanup_crit_edge

do.body48.cleanup_crit_edge:                      ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.rhs:                                         ; preds = %do.body48
  %.b121 = load i1, ptr @torture_offline.__already_done, align 1
  br i1 %.b121, label %land.rhs.cleanup_crit_edge, label %if.then62, !prof !360

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then62:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @torture_offline.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 246, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then62, %land.rhs.cleanup_crit_edge, %do.body48.cleanup_crit_edge, %do.end19, %if.end14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %cpu_online.exit.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %cpu_online.exit.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ true, %land.rhs.cleanup_crit_edge ], [ true, %if.then62 ], [ true, %do.body48.cleanup_crit_edge ], [ true, %if.end14.cleanup_crit_edge ], [ true, %do.end19 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cpu_is_hotpluggable(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remove_cpu(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_inkernel_boot_has_ended() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @torture_online(i32 noundef %cpu, ptr nocapture noundef %n_onl_attempts, ptr nocapture noundef %n_onl_successes, ptr nocapture noundef %sum_onl, ptr nocapture noundef %min_onl, ptr nocapture noundef %max_onl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %cpu)
  %cmp.not.i.i.i.i = icmp ugt i32 %0, %cpu
  br i1 %cmp.not.i.i.i.i, label %entry.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

entry.cpu_online.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %entry
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !360

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.54, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %entry.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %cpu, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %1 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %cpu, 31
  %3 = shl nuw i32 1, %and.i.i.i
  %4 = and i32 %2, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %lor.lhs.false, label %cpu_online.exit.cleanup_crit_edge

cpu_online.exit.cleanup_crit_edge:                ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %cpu_online.exit
  %call1 = tail call zeroext i1 @cpu_is_hotpluggable(i32 noundef %cpu) #12
  br i1 %call1, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp sgt i32 %5, 1
  br i1 %cmp, label %do.end, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = load ptr, ptr @torture_type, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %6, i32 noundef %cpu) #15
  br label %if.end4

if.end4:                                          ; preds = %do.end, %if.end.if.end4_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %8 = ptrtoint ptr %n_onl_attempts to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_onl_attempts, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %n_onl_attempts, align 4
  %call5 = tail call i32 @add_cpu(i32 noundef %cpu) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end4
  %call7 = tail call zeroext i1 @rcu_inkernel_boot_has_ended() #12
  %call7.not = xor i1 %call7, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call5)
  %cmp8 = icmp eq i32 %call5, -16
  %or.cond = select i1 %call7.not, i1 %cmp8, i1 false
  br i1 %or.cond, label %if.then9, label %if.then6.if.end10_crit_edge

if.then6.if.end10_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %n_onl_attempts to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n_onl_attempts, align 4
  %dec = add i32 %11, -1
  store i32 %dec, ptr %n_onl_attempts, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.then6.if.end10_crit_edge
  %s.0 = phi ptr [ @.str.3, %if.then6.if.end10_crit_edge ], [ @.str.4, %if.then9 ]
  %12 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool11.not = icmp eq i32 %12, 0
  br i1 %tobool11.not, label %if.end10.cleanup_crit_edge, label %do.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %13 = load ptr, ptr @torture_type, align 4
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %13, i32 noundef %cpu, ptr noundef nonnull %s.0, i32 noundef %call5) #15
  br label %cleanup

if.else:                                          ; preds = %if.end4
  %14 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp19 = icmp sgt i32 %14, 1
  br i1 %cmp19, label %do.end23, label %if.else.if.end26_crit_edge

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

do.end23:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %15 = load ptr, ptr @torture_type, align 4
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %15, i32 noundef %cpu) #15
  br label %if.end26

if.end26:                                         ; preds = %do.end23, %if.else.if.end26_crit_edge
  %16 = ptrtoint ptr %n_onl_successes to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n_onl_successes, align 4
  %inc27 = add i32 %17, 1
  store i32 %inc27, ptr %n_onl_successes, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %18, %7
  %19 = ptrtoint ptr %sum_onl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sum_onl, align 4
  %add = add i32 %20, %sub
  store i32 %add, ptr %sum_onl, align 4
  %21 = ptrtoint ptr %min_onl to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %min_onl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp28 = icmp slt i32 %22, 0
  br i1 %cmp28, label %if.then29, label %if.end26.if.end30_crit_edge

if.end26.if.end30_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %min_onl to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub, ptr %min_onl, align 4
  %24 = ptrtoint ptr %max_onl to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub, ptr %max_onl, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end26.if.end30_crit_edge
  %25 = ptrtoint ptr %min_onl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %min_onl, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %sub)
  %cmp31 = icmp ugt i32 %26, %sub
  br i1 %cmp31, label %if.then32, label %if.end30.if.end33_crit_edge

if.end30.if.end33_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %min_onl to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub, ptr %min_onl, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end30.if.end33_crit_edge
  %28 = ptrtoint ptr %max_onl to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max_onl, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %sub)
  %cmp34 = icmp ult i32 %29, %sub
  br i1 %cmp34, label %if.then35, label %if.end33.do.body41_crit_edge

if.end33.do.body41_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body41

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %max_onl to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub, ptr %max_onl, align 4
  br label %do.body41

do.body41:                                        ; preds = %if.then35, %if.end33.do.body41_crit_edge
  %31 = load i32, ptr @torture_online_cpus, align 4
  %add42 = add i32 %31, 1
  store volatile i32 %add42, ptr @torture_online_cpus, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body41, %do.end15, %if.end10.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %cpu_online.exit.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %cpu_online.exit.cleanup_crit_edge ], [ true, %if.end10.cleanup_crit_edge ], [ true, %do.end15 ], [ true, %do.body41 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_cpu(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @torture_onoff_init(i32 noundef %ooholdoff, i32 noundef %oointerval, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 %ooholdoff, ptr @onoff_holdoff, align 4
  store i32 %oointerval, ptr @onoff_interval, align 4
  store ptr %f, ptr @onoff_f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %oointerval)
  %cmp = icmp slt i32 %oointerval, 1
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @_torture_create_kthread(ptr noundef nonnull @torture_onoff, ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, ptr noundef nonnull @onoff_task)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_torture_create_kthread(ptr noundef %fn, ptr noundef %arg, ptr noundef %s, ptr noundef %m, ptr noundef %f, ptr nocapture noundef %tp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %if.then

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end3

if.then:                                          ; preds = %entry
  %1 = load i32, ptr @verbose_sleep_frequency, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp sgt i32 %1, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then.verbose_torout_sleep.exit_crit_edge

if.then.verbose_torout_sleep.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %verbose_torout_sleep.exit

land.lhs.true.i:                                  ; preds = %if.then
  %2 = load i32, ptr @verbose_sleep_duration, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp1.i = icmp sgt i32 %2, 0
  br i1 %cmp1.i, label %land.lhs.true2.i, label %land.lhs.true.i.verbose_torout_sleep.exit_crit_edge

land.lhs.true.i.verbose_torout_sleep.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %verbose_torout_sleep.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @verbose_sleep_counter, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !356
  tail call void @llvm.prefetch.p0(ptr nonnull @verbose_sleep_counter, i32 1, i32 3, i32 1) #12
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @verbose_sleep_counter, ptr nonnull @verbose_sleep_counter, i32 1, ptr nonnull elementtype(i32) @verbose_sleep_counter) #12, !srcloc !357
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !358
  %4 = load i32, ptr @verbose_sleep_frequency, align 4
  %rem.i = srem i32 %asmresult.i.i.i.i.i, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %land.lhs.true2.i.verbose_torout_sleep.exit_crit_edge

land.lhs.true2.i.verbose_torout_sleep.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %verbose_torout_sleep.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  %5 = load i32, ptr @verbose_sleep_duration, align 4
  %call3.i = tail call i32 @schedule_timeout_uninterruptible(i32 noundef %5) #12
  br label %verbose_torout_sleep.exit

verbose_torout_sleep.exit:                        ; preds = %if.then.i, %land.lhs.true2.i.verbose_torout_sleep.exit_crit_edge, %land.lhs.true.i.verbose_torout_sleep.exit_crit_edge, %if.then.verbose_torout_sleep.exit_crit_edge
  %6 = load ptr, ptr @torture_type, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %6, ptr noundef %m) #15
  br label %do.end3

do.end3:                                          ; preds = %verbose_torout_sleep.exit, %entry.do.end3_crit_edge
  %call4 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef %fn, ptr noundef %arg, i32 noundef -1, ptr noundef nonnull @.str.50, ptr noundef %s) #12
  %cmp.i25 = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i25, label %if.then11, label %if.end8

if.end8:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #14
  %call7 = tail call i32 @wake_up_process(ptr noundef %call4) #12
  br label %if.end18

if.then11:                                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call4, ptr %tp, align 4
  %8 = ptrtoint ptr %call4 to i32
  %9 = load ptr, ptr @torture_type, align 4
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %9, ptr noundef %f) #15
  br label %if.end18

if.end18:                                         ; preds = %if.then11, %if.end8
  %storemerge = phi ptr [ %call4, %if.end8 ], [ null, %if.then11 ]
  %ret.0 = phi i32 [ 0, %if.end8 ], [ %8, %if.then11 ]
  %10 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %storemerge, ptr %tp, align 4
  tail call void @torture_shuffle_task_register(ptr noundef %storemerge)
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @torture_onoff(ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %if.then

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end3

if.then:                                          ; preds = %entry
  %1 = load i32, ptr @verbose_sleep_frequency, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp sgt i32 %1, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then.verbose_torout_sleep.exit_crit_edge

if.then.verbose_torout_sleep.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %verbose_torout_sleep.exit

land.lhs.true.i:                                  ; preds = %if.then
  %2 = load i32, ptr @verbose_sleep_duration, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp1.i = icmp sgt i32 %2, 0
  br i1 %cmp1.i, label %land.lhs.true2.i, label %land.lhs.true.i.verbose_torout_sleep.exit_crit_edge

land.lhs.true.i.verbose_torout_sleep.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %verbose_torout_sleep.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @verbose_sleep_counter, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !356
  tail call void @llvm.prefetch.p0(ptr nonnull @verbose_sleep_counter, i32 1, i32 3, i32 1) #12
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @verbose_sleep_counter, ptr nonnull @verbose_sleep_counter, i32 1, ptr nonnull elementtype(i32) @verbose_sleep_counter) #12, !srcloc !357
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !358
  %4 = load i32, ptr @verbose_sleep_frequency, align 4
  %rem.i = srem i32 %asmresult.i.i.i.i.i, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %land.lhs.true2.i.verbose_torout_sleep.exit_crit_edge

land.lhs.true2.i.verbose_torout_sleep.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %verbose_torout_sleep.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  %5 = load i32, ptr @verbose_sleep_duration, align 4
  %call3.i = tail call i32 @schedule_timeout_uninterruptible(i32 noundef %5) #12
  br label %verbose_torout_sleep.exit

verbose_torout_sleep.exit:                        ; preds = %if.then.i, %land.lhs.true2.i.verbose_torout_sleep.exit_crit_edge, %land.lhs.true.i.verbose_torout_sleep.exit_crit_edge, %if.then.verbose_torout_sleep.exit_crit_edge
  %6 = load ptr, ptr @torture_type, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %6, ptr noundef nonnull @.str.55) #15
  br label %do.end3

do.end3:                                          ; preds = %verbose_torout_sleep.exit, %entry.do.end3_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %do.end3
  %cpu.0 = phi i32 [ -1, %do.end3 ], [ %call4, %for.cond.for.cond_crit_edge ]
  %call4 = tail call i32 @cpumask_next(i32 noundef %cpu.0, ptr noundef nonnull @__cpu_online_mask) #16
  %cmp = icmp ult i32 %call4, %7
  br i1 %cmp, label %for.cond.for.cond_crit_edge, label %for.end

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cpu.0)
  %cmp5 = icmp slt i32 %cpu.0, 0
  br i1 %cmp5, label %if.end23.thread, label %if.end23, !prof !361

if.end23.thread:                                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 344, i32 noundef 9, ptr noundef null) #12
  tail call fastcc void @torture_online_all(ptr noundef nonnull @.str.56)
  br label %if.end44

if.end23:                                         ; preds = %for.end
  tail call fastcc void @torture_online_all(ptr noundef nonnull @.str.56)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cpu.0)
  %cmp31 = icmp eq i32 %cpu.0, 0
  br i1 %cmp31, label %do.body33, label %if.end23.if.end44_crit_edge

if.end23.if.end44_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

do.body33:                                        ; preds = %if.end23
  %8 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool34.not = icmp eq i32 %8, 0
  br i1 %tobool34.not, label %do.body33.stop_crit_edge, label %if.then35

do.body33.stop_crit_edge:                         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #14
  br label %stop

if.then35:                                        ; preds = %do.body33
  %9 = load i32, ptr @verbose_sleep_frequency, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i92 = icmp sgt i32 %9, 0
  br i1 %cmp.i92, label %land.lhs.true.i94, label %if.then35.verbose_torout_sleep.exit102_crit_edge

if.then35.verbose_torout_sleep.exit102_crit_edge: ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  br label %verbose_torout_sleep.exit102

land.lhs.true.i94:                                ; preds = %if.then35
  %10 = load i32, ptr @verbose_sleep_duration, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp1.i93 = icmp sgt i32 %10, 0
  br i1 %cmp1.i93, label %land.lhs.true2.i99, label %land.lhs.true.i94.verbose_torout_sleep.exit102_crit_edge

land.lhs.true.i94.verbose_torout_sleep.exit102_crit_edge: ; preds = %land.lhs.true.i94
  call void @__sanitizer_cov_trace_pc() #14
  br label %verbose_torout_sleep.exit102

land.lhs.true2.i99:                               ; preds = %land.lhs.true.i94
  %call.i.i.i95 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @verbose_sleep_counter, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !356
  tail call void @llvm.prefetch.p0(ptr nonnull @verbose_sleep_counter, i32 1, i32 3, i32 1) #12
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @verbose_sleep_counter, ptr nonnull @verbose_sleep_counter, i32 1, ptr nonnull elementtype(i32) @verbose_sleep_counter) #12, !srcloc !357
  %asmresult.i.i.i.i.i96 = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !358
  %12 = load i32, ptr @verbose_sleep_frequency, align 4
  %rem.i97 = srem i32 %asmresult.i.i.i.i.i96, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i97)
  %tobool.not.i98 = icmp eq i32 %rem.i97, 0
  br i1 %tobool.not.i98, label %if.then.i101, label %land.lhs.true2.i99.verbose_torout_sleep.exit102_crit_edge

land.lhs.true2.i99.verbose_torout_sleep.exit102_crit_edge: ; preds = %land.lhs.true2.i99
  call void @__sanitizer_cov_trace_pc() #14
  br label %verbose_torout_sleep.exit102

if.then.i101:                                     ; preds = %land.lhs.true2.i99
  call void @__sanitizer_cov_trace_pc() #14
  %13 = load i32, ptr @verbose_sleep_duration, align 4
  %call3.i100 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef %13) #12
  br label %verbose_torout_sleep.exit102

verbose_torout_sleep.exit102:                     ; preds = %if.then.i101, %land.lhs.true2.i99.verbose_torout_sleep.exit102_crit_edge, %land.lhs.true.i94.verbose_torout_sleep.exit102_crit_edge, %if.then35.verbose_torout_sleep.exit102_crit_edge
  %14 = load ptr, ptr @torture_type, align 4
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %14, ptr noundef nonnull @.str.59) #15
  br label %stop

if.end44:                                         ; preds = %if.end23.if.end44_crit_edge, %if.end23.thread
  %15 = load i32, ptr @onoff_holdoff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp45 = icmp sgt i32 %15, 0
  br i1 %cmp45, label %do.body47, label %if.end44.if.end70_crit_edge

if.end44.if.end70_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

do.body47:                                        ; preds = %if.end44
  %16 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool48.not = icmp eq i32 %16, 0
  br i1 %tobool48.not, label %do.body47.do.end57_crit_edge, label %if.then49

do.body47.do.end57_crit_edge:                     ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end57

if.then49:                                        ; preds = %do.body47
  %17 = load i32, ptr @verbose_sleep_frequency, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i103 = icmp sgt i32 %17, 0
  br i1 %cmp.i103, label %land.lhs.true.i105, label %if.then49.verbose_torout_sleep.exit113_crit_edge

if.then49.verbose_torout_sleep.exit113_crit_edge: ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #14
  br label %verbose_torout_sleep.exit113

land.lhs.true.i105:                               ; preds = %if.then49
  %18 = load i32, ptr @verbose_sleep_duration, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp1.i104 = icmp sgt i32 %18, 0
  br i1 %cmp1.i104, label %land.lhs.true2.i110, label %land.lhs.true.i105.verbose_torout_sleep.exit113_crit_edge

land.lhs.true.i105.verbose_torout_sleep.exit113_crit_edge: ; preds = %land.lhs.true.i105
  call void @__sanitizer_cov_trace_pc() #14
  br label %verbose_torout_sleep.exit113

land.lhs.true2.i110:                              ; preds = %land.lhs.true.i105
  %call.i.i.i106 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @verbose_sleep_counter, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !356
  tail call void @llvm.prefetch.p0(ptr nonnull @verbose_sleep_counter, i32 1, i32 3, i32 1) #12
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @verbose_sleep_counter, ptr nonnull @verbose_sleep_counter, i32 1, ptr nonnull elementtype(i32) @verbose_sleep_counter) #12, !srcloc !357
  %asmresult.i.i.i.i.i107 = extractvalue { i32, i32 } %19, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !358
  %20 = load i32, ptr @verbose_sleep_frequency, align 4
  %rem.i108 = srem i32 %asmresult.i.i.i.i.i107, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i108)
  %tobool.not.i109 = icmp eq i32 %rem.i108, 0
  br i1 %tobool.not.i109, label %if.then.i112, label %land.lhs.true2.i110.verbose_torout_sleep.exit113_crit_edge

land.lhs.true2.i110.verbose_torout_sleep.exit113_crit_edge: ; preds = %land.lhs.true2.i110
  call void @__sanitizer_cov_trace_pc() #14
  br label %verbose_torout_sleep.exit113

if.then.i112:                                     ; preds = %land.lhs.true2.i110
  call void @__sanitizer_cov_trace_pc() #14
  %21 = load i32, ptr @verbose_sleep_duration, align 4
  %call3.i111 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef %21) #12
  br label %verbose_torout_sleep.exit113

verbose_torout_sleep.exit113:                     ; preds = %if.then.i112, %land.lhs.true2.i110.verbose_torout_sleep.exit113_crit_edge, %land.lhs.true.i105.verbose_torout_sleep.exit113_crit_edge, %if.then49.verbose_torout_sleep.exit113_crit_edge
  %22 = load ptr, ptr @torture_type, align 4
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %22, ptr noundef nonnull @.str.62) #15
  br label %do.end57

do.end57:                                         ; preds = %verbose_torout_sleep.exit113, %do.body47.do.end57_crit_edge
  %23 = load i32, ptr @onoff_holdoff, align 4
  %call58 = tail call i32 @schedule_timeout_interruptible(i32 noundef %23) #12
  %24 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool60.not = icmp eq i32 %24, 0
  br i1 %tobool60.not, label %do.end57.if.end70_crit_edge, label %if.then61

do.end57.if.end70_crit_edge:                      ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

if.then61:                                        ; preds = %do.end57
  %25 = load i32, ptr @verbose_sleep_frequency, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i114 = icmp sgt i32 %25, 0
  br i1 %cmp.i114, label %land.lhs.true.i116, label %if.then61.verbose_torout_sleep.exit124_crit_edge

if.then61.verbose_torout_sleep.exit124_crit_edge: ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #14
  br label %verbose_torout_sleep.exit124

land.lhs.true.i116:                               ; preds = %if.then61
  %26 = load i32, ptr @verbose_sleep_duration, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp1.i115 = icmp sgt i32 %26, 0
  br i1 %cmp1.i115, label %land.lhs.true2.i121, label %land.lhs.true.i116.verbose_torout_sleep.exit124_crit_edge

land.lhs.true.i116.verbose_torout_sleep.exit124_crit_edge: ; preds = %land.lhs.true.i116
  call void @__sanitizer_cov_trace_pc() #14
  br label %verbose_torout_sleep.exit124

land.lhs.true2.i121:                              ; preds = %land.lhs.true.i116
  %call.i.i.i117 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @verbose_sleep_counter, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !356
  tail call void @llvm.prefetch.p0(ptr nonnull @verbose_sleep_counter, i32 1, i32 3, i32 1) #12
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @verbose_sleep_counter, ptr nonnull @verbose_sleep_counter, i32 1, ptr nonnull elementtype(i32) @verbose_sleep_counter) #12, !srcloc !357
  %asmresult.i.i.i.i.i118 = extractvalue { i32, i32 } %27, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !358
  %28 = load i32, ptr @verbose_sleep_frequency, align 4
  %rem.i119 = srem i32 %asmresult.i.i.i.i.i118, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i119)
  %tobool.not.i120 = icmp eq i32 %rem.i119, 0
  br i1 %tobool.not.i120, label %if.then.i123, label %land.lhs.true2.i121.verbose_torout_sleep.exit124_crit_edge

land.lhs.true2.i121.verbose_torout_sleep.exit124_crit_edge: ; preds = %land.lhs.true2.i121
  call void @__sanitizer_cov_trace_pc() #14
  br label %verbose_torout_sleep.exit124

if.then.i123:                                     ; preds = %land.lhs.true2.i121
  call void @__sanitizer_cov_trace_pc() #14
  %29 = load i32, ptr @verbose_sleep_duration, align 4
  %call3.i122 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef %29) #12
  br label %verbose_torout_sleep.exit124

verbose_torout_sleep.exit124:                     ; preds = %if.then.i123, %land.lhs.true2.i121.verbose_torout_sleep.exit124_crit_edge, %land.lhs.true.i116.verbose_torout_sleep.exit124_crit_edge, %if.then61.verbose_torout_sleep.exit124_crit_edge
  %30 = load ptr, ptr @torture_type, align 4
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %30, ptr noundef nonnull @.str.65) #15
  br label %if.end70

if.end70:                                         ; preds = %verbose_torout_sleep.exit124, %do.end57.if.end70_crit_edge, %if.end44.if.end70_crit_edge
  %31 = load volatile i32, ptr @fullstop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i.not.i129 = icmp eq i32 %31, 0
  br i1 %cmp.i.not.i129, label %torture_must_stop.exit.lr.ph, label %if.end70.stop_crit_edge

if.end70.stop_crit_edge:                          ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  br label %stop

torture_must_stop.exit.lr.ph:                     ; preds = %if.end70
  %add = add i32 %cpu.0, 1
  br label %torture_must_stop.exit

torture_must_stop.exit:                           ; preds = %while.cond.backedge.torture_must_stop.exit_crit_edge, %torture_must_stop.exit.lr.ph
  %rand.sroa.0.0132 = phi i32 [ 0, %torture_must_stop.exit.lr.ph ], [ %rand.sroa.0.0.be, %while.cond.backedge.torture_must_stop.exit_crit_edge ]
  %rand.sroa.7.0130 = phi i32 [ 0, %torture_must_stop.exit.lr.ph ], [ %rand.sroa.7.0.be, %while.cond.backedge.torture_must_stop.exit_crit_edge ]
  %call1.i = tail call zeroext i1 @kthread_should_stop() #12
  br i1 %call1.i, label %torture_must_stop.exit.stop_crit_edge, label %while.body

torture_must_stop.exit.stop_crit_edge:            ; preds = %torture_must_stop.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %stop

while.body:                                       ; preds = %torture_must_stop.exit
  %32 = load i8, ptr @disable_onoff_at_boot, align 1, !range !362
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool74.not = icmp eq i8 %32, 0
  br i1 %tobool74.not, label %while.body.if.end78_crit_edge, label %land.lhs.true

while.body.if.end78_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end78

land.lhs.true:                                    ; preds = %while.body
  %call75 = tail call zeroext i1 @rcu_inkernel_boot_has_ended() #12
  br i1 %call75, label %land.lhs.true.if.end78_crit_edge, label %land.lhs.true.while.cond.backedge_crit_edge

land.lhs.true.while.cond.backedge_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.backedge

land.lhs.true.if.end78_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end78

while.cond.backedge:                              ; preds = %if.end83, %land.lhs.true.while.cond.backedge_crit_edge
  %.sink = phi i32 [ %34, %if.end83 ], [ 10, %land.lhs.true.while.cond.backedge_crit_edge ]
  %rand.sroa.7.0.be = phi i32 [ %rand.sroa.7.1, %if.end83 ], [ %rand.sroa.7.0130, %land.lhs.true.while.cond.backedge_crit_edge ]
  %rand.sroa.0.0.be = phi i32 [ %add3.i, %if.end83 ], [ %rand.sroa.0.0132, %land.lhs.true.while.cond.backedge_crit_edge ]
  %call77 = tail call i32 @schedule_timeout_interruptible(i32 noundef %.sink) #12
  %33 = load volatile i32, ptr @fullstop, align 4
  %cmp.i.not.i = icmp eq i32 %33, 0
  br i1 %cmp.i.not.i, label %while.cond.backedge.torture_must_stop.exit_crit_edge, label %while.cond.backedge.stop_crit_edge

while.cond.backedge.stop_crit_edge:               ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %stop

while.cond.backedge.torture_must_stop.exit_crit_edge: ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %torture_must_stop.exit

if.end78:                                         ; preds = %land.lhs.true.if.end78_crit_edge, %while.body.if.end78_crit_edge
  %dec.i = add i32 %rand.sroa.7.0130, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i125 = icmp slt i32 %dec.i, 0
  br i1 %cmp.i125, label %if.then.i126, label %if.end78.if.end.i_crit_edge

if.end78.if.end.i_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i126:                                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = tail call i64 @sched_clock() #12
  %conv.i = trunc i64 %call.i.i to i32
  %add.i = add i32 %rand.sroa.0.0132, %conv.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i126, %if.end78.if.end.i_crit_edge
  %rand.sroa.7.1 = phi i32 [ 10000, %if.then.i126 ], [ %dec.i, %if.end78.if.end.i_crit_edge ]
  %rand.sroa.0.1 = phi i32 [ %add.i, %if.then.i126 ], [ %rand.sroa.0.0132, %if.end78.if.end.i_crit_edge ]
  %mul.i = mul i32 %rand.sroa.0.1, 39916801
  %add3.i = add i32 %mul.i, 479001701
  %or.i = tail call i32 @llvm.fshl.i32(i32 %add3.i, i32 %add3.i, i32 16) #12
  %shr = lshr i32 %or.i, 4
  %rem = urem i32 %shr, %add
  %call80 = tail call zeroext i1 @torture_offline(i32 noundef %rem, ptr noundef nonnull @n_offline_attempts, ptr noundef nonnull @n_offline_successes, ptr noundef nonnull @sum_offline, ptr noundef nonnull @min_offline, ptr noundef nonnull @max_offline)
  br i1 %call80, label %if.end.i.if.end83_crit_edge, label %if.then81

if.end.i.if.end83_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83

if.then81:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call82 = tail call zeroext i1 @torture_online(i32 noundef %rem, ptr noundef nonnull @n_online_attempts, ptr noundef nonnull @n_online_successes, ptr noundef nonnull @sum_online, ptr noundef nonnull @min_online, ptr noundef nonnull @max_online)
  br label %if.end83

if.end83:                                         ; preds = %if.then81, %if.end.i.if.end83_crit_edge
  %34 = load i32, ptr @onoff_interval, align 4
  br label %while.cond.backedge

stop:                                             ; preds = %while.cond.backedge.stop_crit_edge, %torture_must_stop.exit.stop_crit_edge, %if.end70.stop_crit_edge, %verbose_torout_sleep.exit102, %do.body33.stop_crit_edge
  tail call void @torture_kthread_stopping(ptr noundef nonnull @.str.19)
  tail call fastcc void @torture_online_all(ptr noundef nonnull @.str.66)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @torture_onoff_stats() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @n_online_successes, align 4
  %1 = load i32, ptr @n_online_attempts, align 4
  %2 = load i32, ptr @n_offline_successes, align 4
  %3 = load i32, ptr @n_offline_attempts, align 4
  %4 = load i32, ptr @min_online, align 4
  %5 = load i32, ptr @max_online, align 4
  %6 = load i32, ptr @min_offline, align 4
  %7 = load i32, ptr @max_offline, align 4
  %8 = load i32, ptr @sum_online, align 4
  %9 = load i32, ptr @sum_offline, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef 100) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @torture_onoff_failures() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @n_online_successes, align 4
  %1 = load i32, ptr @n_online_attempts, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %1)
  %cmp.not = icmp eq i32 %0, %1
  br i1 %cmp.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = load i32, ptr @n_offline_successes, align 4
  %3 = load i32, ptr @n_offline_attempts, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %3)
  %cmp1 = icmp ne i32 %2, %3
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %4 = phi i1 [ true, %entry.lor.end_crit_edge ], [ %cmp1, %lor.rhs ]
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @torture_shuffle_task_register(ptr noundef %tp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %tp, null
  br i1 %cmp, label %land.rhs, label %if.end37

land.rhs:                                         ; preds = %entry
  %.b104 = load i1, ptr @torture_shuffle_task_register.__already_done, align 1
  br i1 %.b104, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !360

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @torture_shuffle_task_register.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 487, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end37:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 12) #17
  %cmp39 = icmp eq ptr %call7.i, null
  br i1 %cmp39, label %land.rhs46, label %if.end94

land.rhs46:                                       ; preds = %if.end37
  %.b102103 = load i1, ptr @torture_shuffle_task_register.__already_done.24, align 1
  br i1 %.b102103, label %land.rhs46.cleanup_crit_edge, label %if.then57, !prof !360

land.rhs46.cleanup_crit_edge:                     ; preds = %land.rhs46
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then57:                                        ; preds = %land.rhs46
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @torture_shuffle_task_register.__already_done.24, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 490, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end94:                                         ; preds = %if.end37
  %st_t = getelementptr inbounds %struct.shuffle_task, ptr %call7.i, i32 0, i32 1
  %1 = ptrtoint ptr %st_t to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %tp, ptr %st_t, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @shuffle_task_mutex, i32 noundef 0) #12
  %2 = load ptr, ptr @shuffle_task_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef nonnull @shuffle_task_list, ptr noundef %2) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end94.list_add.exit_crit_edge

if.end94.list_add.exit_crit_edge:                 ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i, ptr %prev1.i.i, align 4
  %4 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %2, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @shuffle_task_list, ptr %prev3.i.i, align 4
  store volatile ptr %call7.i, ptr @shuffle_task_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end94.list_add.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @shuffle_task_mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %if.then57, %land.rhs46.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @torture_shuffle_init(i32 noundef %shuffint) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 %shuffint, ptr @shuffle_interval, align 4
  store i32 -1, ptr @shuffle_idle_cpu, align 4
  %call = tail call zeroext i1 @alloc_cpumask_var(ptr noundef nonnull @shuffle_tmp_mask, i32 noundef 3264) #12
  br i1 %call, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = load ptr, ptr @torture_type, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %0, ptr noundef nonnull @.str.27) #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call i32 @_torture_create_kthread(ptr noundef nonnull @torture_shuffle, ptr noundef null, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, ptr noundef nonnull @shuffler_task)
  br label %return

return:                                           ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call2, %if.end ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @alloc_cpumask_var(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @torture_shuffle(ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.body3.preheader_crit_edge, label %if.then

entry.do.body3.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body3.preheader

if.then:                                          ; preds = %entry
  %1 = load i32, ptr @verbose_sleep_frequency, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp sgt i32 %1, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then.verbose_torout_sleep.exit_crit_edge

if.then.verbose_torout_sleep.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %verbose_torout_sleep.exit

land.lhs.true.i:                                  ; preds = %if.then
  %2 = load i32, ptr @verbose_sleep_duration, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp1.i = icmp sgt i32 %2, 0
  br i1 %cmp1.i, label %land.lhs.true2.i, label %land.lhs.true.i.verbose_torout_sleep.exit_crit_edge

land.lhs.true.i.verbose_torout_sleep.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %verbose_torout_sleep.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @verbose_sleep_counter, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !356
  tail call void @llvm.prefetch.p0(ptr nonnull @verbose_sleep_counter, i32 1, i32 3, i32 1) #12
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @verbose_sleep_counter, ptr nonnull @verbose_sleep_counter, i32 1, ptr nonnull elementtype(i32) @verbose_sleep_counter) #12, !srcloc !357
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !358
  %4 = load i32, ptr @verbose_sleep_frequency, align 4
  %rem.i = srem i32 %asmresult.i.i.i.i.i, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %land.lhs.true2.i.verbose_torout_sleep.exit_crit_edge

land.lhs.true2.i.verbose_torout_sleep.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %verbose_torout_sleep.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  %5 = load i32, ptr @verbose_sleep_duration, align 4
  %call3.i = tail call i32 @schedule_timeout_uninterruptible(i32 noundef %5) #12
  br label %verbose_torout_sleep.exit

verbose_torout_sleep.exit:                        ; preds = %if.then.i, %land.lhs.true2.i.verbose_torout_sleep.exit_crit_edge, %land.lhs.true.i.verbose_torout_sleep.exit_crit_edge, %if.then.verbose_torout_sleep.exit_crit_edge
  %6 = load ptr, ptr @torture_type, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %6, ptr noundef nonnull @.str.71) #15
  br label %do.body3.preheader

do.body3.preheader:                               ; preds = %verbose_torout_sleep.exit, %entry.do.body3.preheader_crit_edge
  br label %do.body3

do.body3:                                         ; preds = %torture_must_stop.exit.do.body3_crit_edge, %do.body3.preheader
  %7 = load i32, ptr @shuffle_interval, align 4
  %call4 = tail call i32 @schedule_timeout_interruptible(i32 noundef %7) #12
  %8 = load ptr, ptr @shuffle_tmp_mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %9 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i.i = add i32 %9, 31
  %10 = lshr i32 %sub.i.i.i, 3
  %mul.i.i.i = and i32 %10, 536870908
  %11 = call ptr @memset(ptr %8, i32 255, i32 %mul.i.i.i)
  tail call void @cpus_read_lock() #12
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %12 = load volatile i32, ptr @__num_online_cpus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i7 = icmp eq i32 %12, 1
  br i1 %cmp.i7, label %do.body3.torture_shuffle_tasks.exit_crit_edge, label %if.end.i

do.body3.torture_shuffle_tasks.exit_crit_edge:    ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #14
  br label %torture_shuffle_tasks.exit

if.end.i:                                         ; preds = %do.body3
  %13 = load i32, ptr @shuffle_idle_cpu, align 4
  %14 = load ptr, ptr @shuffle_tmp_mask, align 4
  %call1.i = tail call i32 @cpumask_next(i32 noundef %13, ptr noundef %14) #16
  store i32 %call1.i, ptr @shuffle_idle_cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %15 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i, i32 %15)
  %cmp2.not.i = icmp ult i32 %call1.i, %15
  br i1 %cmp2.not.i, label %cpumask_clear_cpu.exit.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  store i32 -1, ptr @shuffle_idle_cpu, align 4
  br label %if.end4.i

cpumask_clear_cpu.exit.i:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_clear_bit(i32 noundef %call1.i, ptr noundef %14) #12
  br label %if.end4.i

if.end4.i:                                        ; preds = %cpumask_clear_cpu.exit.i, %if.then3.i
  tail call void @mutex_lock_nested(ptr noundef nonnull @shuffle_task_mutex, i32 noundef 0) #12
  %stp.013.i = load ptr, ptr @shuffle_task_list, align 4
  %cmp5.not14.i = icmp eq ptr %stp.013.i, @shuffle_task_list
  br i1 %cmp5.not14.i, label %if.end4.i.for.end.i_crit_edge, label %if.end4.i.for.body.i_crit_edge

if.end4.i.for.body.i_crit_edge:                   ; preds = %if.end4.i
  br label %for.body.i

if.end4.i.for.end.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end4.i.for.body.i_crit_edge
  %stp.015.i = phi ptr [ %stp.0.i, %for.body.i.for.body.i_crit_edge ], [ %stp.013.i, %if.end4.i.for.body.i_crit_edge ]
  %st_t.i = getelementptr inbounds %struct.shuffle_task, ptr %stp.015.i, i32 0, i32 1
  %16 = ptrtoint ptr %st_t.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %st_t.i, align 4
  %18 = load ptr, ptr @shuffle_tmp_mask, align 4
  %call6.i = tail call i32 @set_cpus_allowed_ptr(ptr noundef %17, ptr noundef %18) #12
  %19 = ptrtoint ptr %stp.015.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %stp.0.i = load ptr, ptr %stp.015.i, align 4
  %cmp5.not.i = icmp eq ptr %stp.0.i, @shuffle_task_list
  br i1 %cmp5.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end4.i.for.end.i_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @shuffle_task_mutex) #12
  br label %torture_shuffle_tasks.exit

torture_shuffle_tasks.exit:                       ; preds = %for.end.i, %do.body3.torture_shuffle_tasks.exit_crit_edge
  tail call void @cpus_read_unlock() #12
  %20 = load volatile i32, ptr @fullstop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp5.i = icmp eq i32 %20, 1
  br i1 %cmp5.i, label %torture_shuffle_tasks.exit.do.end2.i_crit_edge, label %torture_shuffle_tasks.exit.torture_shutdown_absorb.exit_crit_edge

torture_shuffle_tasks.exit.torture_shutdown_absorb.exit_crit_edge: ; preds = %torture_shuffle_tasks.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %torture_shutdown_absorb.exit

torture_shuffle_tasks.exit.do.end2.i_crit_edge:   ; preds = %torture_shuffle_tasks.exit
  br label %do.end2.i

do.end2.i:                                        ; preds = %do.end2.i.do.end2.i_crit_edge, %torture_shuffle_tasks.exit.do.end2.i_crit_edge
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.28) #15
  %call4.i = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 2147483647) #12
  %21 = load volatile i32, ptr @fullstop, align 4
  %cmp.i8 = icmp eq i32 %21, 1
  br i1 %cmp.i8, label %do.end2.i.do.end2.i_crit_edge, label %do.end2.i.torture_shutdown_absorb.exit_crit_edge

do.end2.i.torture_shutdown_absorb.exit_crit_edge: ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %torture_shutdown_absorb.exit

do.end2.i.do.end2.i_crit_edge:                    ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end2.i

torture_shutdown_absorb.exit:                     ; preds = %do.end2.i.torture_shutdown_absorb.exit_crit_edge, %torture_shuffle_tasks.exit.torture_shutdown_absorb.exit_crit_edge
  %22 = load volatile i32, ptr @fullstop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i.not.i = icmp eq i32 %22, 0
  br i1 %cmp.i.not.i, label %torture_must_stop.exit, label %torture_shutdown_absorb.exit.do.end6_crit_edge

torture_shutdown_absorb.exit.do.end6_crit_edge:   ; preds = %torture_shutdown_absorb.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end6

torture_must_stop.exit:                           ; preds = %torture_shutdown_absorb.exit
  %call1.i9 = tail call zeroext i1 @kthread_should_stop() #12
  br i1 %call1.i9, label %torture_must_stop.exit.do.end6_crit_edge, label %torture_must_stop.exit.do.body3_crit_edge

torture_must_stop.exit.do.body3_crit_edge:        ; preds = %torture_must_stop.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body3

torture_must_stop.exit.do.end6_crit_edge:         ; preds = %torture_must_stop.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end6

do.end6:                                          ; preds = %torture_must_stop.exit.do.end6_crit_edge, %torture_shutdown_absorb.exit.do.end6_crit_edge
  tail call void @torture_kthread_stopping(ptr noundef nonnull @.str.28)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @torture_shutdown_absorb(ptr noundef %title) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile i32, ptr @fullstop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp5 = icmp eq i32 %0, 1
  br i1 %cmp5, label %entry.do.end2_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

entry.do.end2_crit_edge:                          ; preds = %entry
  br label %do.end2

do.end2:                                          ; preds = %do.end2.do.end2_crit_edge, %entry.do.end2_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %title) #15
  %call4 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 2147483647) #12
  %1 = load volatile i32, ptr @fullstop, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %do.end2.do.end2_crit_edge, label %do.end2.while.end_crit_edge

do.end2.while.end_crit_edge:                      ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

do.end2.do.end2_crit_edge:                        ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end2

while.end:                                        ; preds = %do.end2.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @torture_shutdown_init(i32 noundef %ssecs, ptr noundef %cleanup) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %cleanup, ptr @torture_shutdown_hook, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ssecs)
  %cmp = icmp sgt i32 %ssecs, 0
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i64 @ktime_get() #12
  %conv4 = zext i32 %ssecs to i64
  %mul.i = mul nuw nsw i64 %conv4, 1000000000
  %add = add i64 %call, %mul.i
  store i64 %add, ptr @shutdown_time, align 8
  %call2 = tail call i32 @_torture_create_kthread(ptr noundef nonnull @torture_shutdown, ptr noundef null, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef nonnull @shutdown_task)
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @torture_shutdown(ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %if.then

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end3

if.then:                                          ; preds = %entry
  %1 = load i32, ptr @verbose_sleep_frequency, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp sgt i32 %1, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then.verbose_torout_sleep.exit_crit_edge

if.then.verbose_torout_sleep.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %verbose_torout_sleep.exit

land.lhs.true.i:                                  ; preds = %if.then
  %2 = load i32, ptr @verbose_sleep_duration, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp1.i = icmp sgt i32 %2, 0
  br i1 %cmp1.i, label %land.lhs.true2.i, label %land.lhs.true.i.verbose_torout_sleep.exit_crit_edge

land.lhs.true.i.verbose_torout_sleep.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %verbose_torout_sleep.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @verbose_sleep_counter, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !356
  tail call void @llvm.prefetch.p0(ptr nonnull @verbose_sleep_counter, i32 1, i32 3, i32 1) #12
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @verbose_sleep_counter, ptr nonnull @verbose_sleep_counter, i32 1, ptr nonnull elementtype(i32) @verbose_sleep_counter) #12, !srcloc !357
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !358
  %4 = load i32, ptr @verbose_sleep_frequency, align 4
  %rem.i = srem i32 %asmresult.i.i.i.i.i, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %land.lhs.true2.i.verbose_torout_sleep.exit_crit_edge

land.lhs.true2.i.verbose_torout_sleep.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %verbose_torout_sleep.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  %5 = load i32, ptr @verbose_sleep_duration, align 4
  %call3.i = tail call i32 @schedule_timeout_uninterruptible(i32 noundef %5) #12
  br label %verbose_torout_sleep.exit

verbose_torout_sleep.exit:                        ; preds = %if.then.i, %land.lhs.true2.i.verbose_torout_sleep.exit_crit_edge, %land.lhs.true.i.verbose_torout_sleep.exit_crit_edge, %if.then.verbose_torout_sleep.exit_crit_edge
  %6 = load ptr, ptr @torture_type, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %6, ptr noundef nonnull @.str.72) #15
  br label %do.end3

do.end3:                                          ; preds = %verbose_torout_sleep.exit, %entry.do.end3_crit_edge
  %call4 = tail call i64 @ktime_get() #12
  %7 = load i64, ptr @shutdown_time, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call4, i64 %7)
  %cmp.i.i158 = icmp slt i64 %call4, %7
  br i1 %cmp.i.i158, label %do.end3.land.rhs_crit_edge, label %do.end3.while.end_crit_edge

do.end3.while.end_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

do.end3.land.rhs_crit_edge:                       ; preds = %do.end3
  br label %land.rhs

land.rhs:                                         ; preds = %__here.land.rhs_crit_edge, %do.end3.land.rhs_crit_edge
  %ktime_snap.0159 = phi i64 [ %call87, %__here.land.rhs_crit_edge ], [ %call4, %do.end3.land.rhs_crit_edge ]
  %8 = load volatile i32, ptr @fullstop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i.not.i = icmp eq i32 %8, 0
  br i1 %cmp.i.not.i, label %torture_must_stop.exit, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

torture_must_stop.exit:                           ; preds = %land.rhs
  %call1.i = tail call zeroext i1 @kthread_should_stop() #12
  br i1 %call1.i, label %torture_must_stop.exit.while.end_crit_edge, label %while.body

torture_must_stop.exit.while.end_crit_edge:       ; preds = %torture_must_stop.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %torture_must_stop.exit
  %9 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool7.not = icmp eq i32 %9, 0
  br i1 %tobool7.not, label %while.body.__here_crit_edge, label %do.end11

while.body.__here_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

do.end11:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %10 = load ptr, ptr @torture_type, align 4
  %11 = load i64, ptr @shutdown_time, align 8
  %sub.i = sub i64 %11, %ktime_snap.0159
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %12 = tail call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #12
  %13 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %12) #18, !srcloc !363
  %14 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %12, i64 %13, i32 0) #18, !srcloc !364
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %14, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 18
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %10, i64 noundef %cond213.i.i.i) #15
  br label %__here

__here:                                           ; preds = %do.end11, %while.body.__here_crit_edge
  %15 = tail call i32 @llvm.read_register.i32(metadata !346) #12
  %and.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 212
  %19 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 ptrtoint (ptr blockaddress(@torture_shutdown, %__here) to i32), ptr %task_state_change, align 4
  %20 = load ptr, ptr %task, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 1, ptr %20, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !365
  %call86 = tail call i32 @schedule_hrtimeout(ptr noundef nonnull @shutdown_time, i32 noundef 0) #12
  %call87 = tail call i64 @ktime_get() #12
  %22 = load i64, ptr @shutdown_time, align 8
  %cmp.i.i = icmp slt i64 %call87, %22
  br i1 %cmp.i.i, label %__here.land.rhs_crit_edge, label %__here.while.end_crit_edge

__here.while.end_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

__here.land.rhs_crit_edge:                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

while.end:                                        ; preds = %__here.while.end_crit_edge, %torture_must_stop.exit.while.end_crit_edge, %land.rhs.while.end_crit_edge, %do.end3.while.end_crit_edge
  %23 = load volatile i32, ptr @fullstop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i.not.i143 = icmp eq i32 %23, 0
  br i1 %cmp.i.not.i143, label %torture_must_stop.exit146, label %while.end.if.then89_crit_edge

while.end.if.then89_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then89

torture_must_stop.exit146:                        ; preds = %while.end
  %call1.i144 = tail call zeroext i1 @kthread_should_stop() #12
  br i1 %call1.i144, label %torture_must_stop.exit146.if.then89_crit_edge, label %do.body91

torture_must_stop.exit146.if.then89_crit_edge:    ; preds = %torture_must_stop.exit146
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then89

if.then89:                                        ; preds = %torture_must_stop.exit146.if.then89_crit_edge, %while.end.if.then89_crit_edge
  tail call void @torture_kthread_stopping(ptr noundef nonnull @.str.33)
  br label %cleanup

do.body91:                                        ; preds = %torture_must_stop.exit146
  %24 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool92.not = icmp eq i32 %24, 0
  br i1 %tobool92.not, label %do.body91.do.end101_crit_edge, label %if.then93

do.body91.do.end101_crit_edge:                    ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end101

if.then93:                                        ; preds = %do.body91
  %25 = load i32, ptr @verbose_sleep_frequency, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i147 = icmp sgt i32 %25, 0
  br i1 %cmp.i147, label %land.lhs.true.i149, label %if.then93.verbose_torout_sleep.exit157_crit_edge

if.then93.verbose_torout_sleep.exit157_crit_edge: ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #14
  br label %verbose_torout_sleep.exit157

land.lhs.true.i149:                               ; preds = %if.then93
  %26 = load i32, ptr @verbose_sleep_duration, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp1.i148 = icmp sgt i32 %26, 0
  br i1 %cmp1.i148, label %land.lhs.true2.i154, label %land.lhs.true.i149.verbose_torout_sleep.exit157_crit_edge

land.lhs.true.i149.verbose_torout_sleep.exit157_crit_edge: ; preds = %land.lhs.true.i149
  call void @__sanitizer_cov_trace_pc() #14
  br label %verbose_torout_sleep.exit157

land.lhs.true2.i154:                              ; preds = %land.lhs.true.i149
  %call.i.i.i150 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @verbose_sleep_counter, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !356
  tail call void @llvm.prefetch.p0(ptr nonnull @verbose_sleep_counter, i32 1, i32 3, i32 1) #12
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @verbose_sleep_counter, ptr nonnull @verbose_sleep_counter, i32 1, ptr nonnull elementtype(i32) @verbose_sleep_counter) #12, !srcloc !357
  %asmresult.i.i.i.i.i151 = extractvalue { i32, i32 } %27, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !358
  %28 = load i32, ptr @verbose_sleep_frequency, align 4
  %rem.i152 = srem i32 %asmresult.i.i.i.i.i151, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i152)
  %tobool.not.i153 = icmp eq i32 %rem.i152, 0
  br i1 %tobool.not.i153, label %if.then.i156, label %land.lhs.true2.i154.verbose_torout_sleep.exit157_crit_edge

land.lhs.true2.i154.verbose_torout_sleep.exit157_crit_edge: ; preds = %land.lhs.true2.i154
  call void @__sanitizer_cov_trace_pc() #14
  br label %verbose_torout_sleep.exit157

if.then.i156:                                     ; preds = %land.lhs.true2.i154
  call void @__sanitizer_cov_trace_pc() #14
  %29 = load i32, ptr @verbose_sleep_duration, align 4
  %call3.i155 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef %29) #12
  br label %verbose_torout_sleep.exit157

verbose_torout_sleep.exit157:                     ; preds = %if.then.i156, %land.lhs.true2.i154.verbose_torout_sleep.exit157_crit_edge, %land.lhs.true.i149.verbose_torout_sleep.exit157_crit_edge, %if.then93.verbose_torout_sleep.exit157_crit_edge
  %30 = load ptr, ptr @torture_type, align 4
  %call98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %30, ptr noundef nonnull @.str.78) #15
  br label %do.end101

do.end101:                                        ; preds = %verbose_torout_sleep.exit157, %do.body91.do.end101_crit_edge
  store ptr null, ptr @shutdown_task, align 4
  %31 = load ptr, ptr @torture_shutdown_hook, align 4
  %tobool102.not = icmp eq ptr %31, null
  br i1 %tobool102.not, label %do.body104, label %if.then103

if.then103:                                       ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %31() #12
  br label %if.end115

do.body104:                                       ; preds = %do.end101
  %32 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool105.not = icmp eq i32 %32, 0
  br i1 %tobool105.not, label %do.body104.if.end115_crit_edge, label %if.then106

do.body104.if.end115_crit_edge:                   ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end115

if.then106:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @verbose_torout_sleep()
  %33 = load ptr, ptr @torture_type, align 4
  %call111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %33, ptr noundef nonnull @.str.81) #15
  br label %if.end115

if.end115:                                        ; preds = %if.then106, %do.body104.if.end115_crit_edge, %if.then103
  %34 = load i8, ptr @ftrace_dump_at_shutdown, align 1, !range !362
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool116.not = icmp eq i8 %34, 0
  br i1 %tobool116.not, label %if.end115.if.end138_crit_edge, label %do.body118

if.end115.if.end138_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end138

do.body118:                                       ; preds = %if.end115
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @torture_shutdown.___rfd_beenhere, i32 noundef 4) #12
  %35 = load volatile i32, ptr @torture_shutdown.___rfd_beenhere, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool120.not = icmp eq i32 %35, 0
  br i1 %tobool120.not, label %land.lhs.true, label %do.body118.if.end138_crit_edge

do.body118.if.end138_crit_edge:                   ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end138

land.lhs.true:                                    ; preds = %do.body118
  %call.i.i142 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @torture_shutdown.___rfd_beenhere, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !366
  tail call void @llvm.prefetch.p0(ptr nonnull @torture_shutdown.___rfd_beenhere, i32 1, i32 3, i32 1) #12
  %36 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr nonnull @torture_shutdown.___rfd_beenhere) #12, !srcloc !367
  %asmresult.i.i = extractvalue { i32, i32 } %36, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool122.not = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool122.not, label %if.then123, label %land.lhs.true.if.end138_crit_edge

land.lhs.true.if.end138_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end138

if.then123:                                       ; preds = %land.lhs.true
  tail call void @tracing_off() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rcu_cpu_stall_suppress to i32))
  %37 = load i32, ptr @rcu_cpu_stall_suppress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool125.not = icmp eq i32 %37, 0
  br i1 %tobool125.not, label %if.then126, label %if.then123.do.end129_crit_edge

if.then123.do.end129_crit_edge:                   ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end129

if.then126:                                       ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @rcu_cpu_stall_suppress to i32))
  store i32 3, ptr @rcu_cpu_stall_suppress, align 4
  br label %do.end129

do.end129:                                        ; preds = %if.then126, %if.then123.do.end129_crit_edge
  tail call void @ftrace_dump(i32 noundef 1) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rcu_cpu_stall_suppress to i32))
  %38 = load i32, ptr @rcu_cpu_stall_suppress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %38)
  %cmp = icmp eq i32 %38, 3
  br i1 %cmp, label %if.then131, label %do.end129.if.end138_crit_edge

do.end129.if.end138_crit_edge:                    ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end138

if.then131:                                       ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @rcu_cpu_stall_suppress to i32))
  store i32 0, ptr @rcu_cpu_stall_suppress, align 4
  br label %if.end138

if.end138:                                        ; preds = %if.then131, %do.end129.if.end138_crit_edge, %land.lhs.true.if.end138_crit_edge, %do.body118.if.end138_crit_edge, %if.end115.if.end138_crit_edge
  tail call void @kernel_power_off() #12
  br label %cleanup

cleanup:                                          ; preds = %if.end138, %if.then89
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @stutter_wait(ptr noundef %title) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !346) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %rcu_tasks_holdout = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 40
  %4 = ptrtoint ptr %rcu_tasks_holdout to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %rcu_tasks_holdout, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.do.end21_crit_edge, label %do.body8

entry.do.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end21

do.body8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %rcu_tasks_holdout to i32
  call void @__asan_store1_noabort(i32 %6)
  store volatile i8 0, ptr %rcu_tasks_holdout, align 4
  br label %do.end21

do.end21:                                         ; preds = %do.body8, %entry.do.end21_crit_edge
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %trc_reader_checked = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 47
  %9 = ptrtoint ptr %trc_reader_checked to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load volatile i8, ptr %trc_reader_checked, align 64, !range !362
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool25.not = icmp eq i8 %10, 0
  br i1 %tobool25.not, label %do.end31, label %do.end21.do.end77_crit_edge, !prof !361

do.end21.do.end77_crit_edge:                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end77

do.end31:                                         ; preds = %do.end21
  %trc_reader_nesting = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 44
  %11 = ptrtoint ptr %trc_reader_nesting to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %trc_reader_nesting, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool35.not = icmp eq i32 %12, 0
  br i1 %tobool35.not, label %do.end50, label %do.end31.do.end77_crit_edge, !prof !360

do.end31.do.end77_crit_edge:                      ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end77

do.end50:                                         ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !369
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %trc_reader_checked58 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 47
  %15 = ptrtoint ptr %trc_reader_checked58 to i32
  call void @__asan_store1_noabort(i32 %15)
  store volatile i8 1, ptr %trc_reader_checked58, align 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !370
  br label %do.end77

do.end77:                                         ; preds = %do.end50, %do.end31.do.end77_crit_edge, %do.end21.do.end77_crit_edge
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 728, i32 noundef 0) #12
  %call.i = tail call i32 @__cond_resched() #12
  %spt.0128 = load volatile i32, ptr @stutter_pause_test, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spt.0128)
  %tobool86.not129 = icmp eq i32 %spt.0128, 0
  br i1 %tobool86.not129, label %do.end77.for.end_crit_edge, label %do.end77.for.body_crit_edge

do.end77.for.body_crit_edge:                      ; preds = %do.end77
  br label %for.body

do.end77.for.end_crit_edge:                       ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %torture_shutdown_absorb.exit.for.body_crit_edge, %do.end77.for.body_crit_edge
  %spt.0132 = phi i32 [ %spt.0, %torture_shutdown_absorb.exit.for.body_crit_edge ], [ %spt.0128, %do.end77.for.body_crit_edge ]
  %i.0131 = phi i32 [ %i.2, %torture_shutdown_absorb.exit.for.body_crit_edge ], [ 0, %do.end77.for.body_crit_edge ]
  %ret.0.off0130 = phi i1 [ true, %torture_shutdown_absorb.exit.for.body_crit_edge ], [ false, %do.end77.for.body_crit_edge ]
  br i1 %ret.0.off0130, label %for.body.if.end91_crit_edge, label %if.then88

for.body.if.end91_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91

if.then88:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 8
  tail call void @sched_set_normal(ptr noundef %17, i32 noundef 19) #12
  br label %if.end91

if.end91:                                         ; preds = %if.then88, %for.body.if.end91_crit_edge
  %18 = zext i32 %spt.0132 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %spt.0132, label %if.else109 [
    i32 1, label %if.end91.if.end113.sink.split_crit_edge
    i32 2, label %while.cond.preheader
  ]

if.end91.if.end113.sink.split_crit_edge:          ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end113.sink.split

while.cond.preheader:                             ; preds = %if.end91
  %19 = load volatile i32, ptr @stutter_pause_test, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool102.not126 = icmp eq i32 %19, 0
  br i1 %tobool102.not126, label %while.cond.preheader.if.end113_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.if.end113_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end113

while.body:                                       ; preds = %if.end106.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %i.1127 = phi i32 [ %inc, %if.end106.while.body_crit_edge ], [ %i.0131, %while.cond.preheader.while.body_crit_edge ]
  %inc = add i32 %i.1127, 1
  %and = and i32 %i.1127, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool103.not = icmp eq i32 %and, 0
  br i1 %tobool103.not, label %if.then104, label %while.body.if.end106_crit_edge

while.body.if.end106_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end106

if.then104:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %call.i123 = tail call i32 @torture_hrtimeout_ns(i64 noundef 10000, i32 noundef 0, ptr noundef null) #12
  br label %if.end106

if.end106:                                        ; preds = %if.then104, %while.body.if.end106_crit_edge
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 741, i32 noundef 0) #12
  %call.i124 = tail call i32 @__cond_resched() #12
  %20 = load volatile i32, ptr @stutter_pause_test, align 4
  %tobool102.not = icmp eq i32 %20, 0
  br i1 %tobool102.not, label %if.end106.if.end113_crit_edge, label %if.end106.while.body_crit_edge

if.end106.while.body_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end106.if.end113_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end113

if.else109:                                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #14
  %call110 = tail call i32 @round_jiffies_relative(i32 noundef 100) #12
  br label %if.end113.sink.split

if.end113.sink.split:                             ; preds = %if.else109, %if.end91.if.end113.sink.split_crit_edge
  %call110.sink = phi i32 [ %call110, %if.else109 ], [ %spt.0132, %if.end91.if.end113.sink.split_crit_edge ]
  %call111 = tail call i32 @schedule_timeout_interruptible(i32 noundef %call110.sink) #12
  br label %if.end113

if.end113:                                        ; preds = %if.end113.sink.split, %if.end106.if.end113_crit_edge, %while.cond.preheader.if.end113_crit_edge
  %i.2 = phi i32 [ %i.0131, %while.cond.preheader.if.end113_crit_edge ], [ %i.0131, %if.end113.sink.split ], [ %inc, %if.end106.if.end113_crit_edge ]
  %21 = load volatile i32, ptr @fullstop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp5.i = icmp eq i32 %21, 1
  br i1 %cmp5.i, label %if.end113.do.end2.i_crit_edge, label %if.end113.torture_shutdown_absorb.exit_crit_edge

if.end113.torture_shutdown_absorb.exit_crit_edge: ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #14
  br label %torture_shutdown_absorb.exit

if.end113.do.end2.i_crit_edge:                    ; preds = %if.end113
  br label %do.end2.i

do.end2.i:                                        ; preds = %do.end2.i.do.end2.i_crit_edge, %if.end113.do.end2.i_crit_edge
  %call.i125 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %title) #15
  %call4.i = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 2147483647) #12
  %22 = load volatile i32, ptr @fullstop, align 4
  %cmp.i = icmp eq i32 %22, 1
  br i1 %cmp.i, label %do.end2.i.do.end2.i_crit_edge, label %do.end2.i.torture_shutdown_absorb.exit_crit_edge

do.end2.i.torture_shutdown_absorb.exit_crit_edge: ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %torture_shutdown_absorb.exit

do.end2.i.do.end2.i_crit_edge:                    ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end2.i

torture_shutdown_absorb.exit:                     ; preds = %do.end2.i.torture_shutdown_absorb.exit_crit_edge, %if.end113.torture_shutdown_absorb.exit_crit_edge
  %spt.0 = load volatile i32, ptr @stutter_pause_test, align 4
  %tobool86.not = icmp eq i32 %spt.0, 0
  br i1 %tobool86.not, label %torture_shutdown_absorb.exit.for.end_crit_edge, label %torture_shutdown_absorb.exit.for.body_crit_edge

torture_shutdown_absorb.exit.for.body_crit_edge:  ; preds = %torture_shutdown_absorb.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

torture_shutdown_absorb.exit.for.end_crit_edge:   ; preds = %torture_shutdown_absorb.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %torture_shutdown_absorb.exit.for.end_crit_edge, %do.end77.for.end_crit_edge
  %23 = xor i1 %tobool86.not129, true
  ret i1 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_set_normal(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies_relative(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @torture_stutter_init(i32 noundef %s, i32 noundef %sgap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 %s, ptr @stutter, align 4
  store i32 %sgap, ptr @stutter_gap, align 4
  %call = tail call i32 @_torture_create_kthread(ptr noundef nonnull @torture_stutter, ptr noundef null, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, ptr noundef nonnull @stutter_task)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @torture_stutter(ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  %rand = alloca %struct.torture_random_state, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rand) #12
  %0 = ptrtoint ptr %rand to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %rand, align 8
  %1 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.body4.preheader_crit_edge, label %if.then

entry.do.body4.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body4.preheader

if.then:                                          ; preds = %entry
  %2 = load i32, ptr @verbose_sleep_frequency, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i = icmp sgt i32 %2, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then.verbose_torout_sleep.exit_crit_edge

if.then.verbose_torout_sleep.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %verbose_torout_sleep.exit

land.lhs.true.i:                                  ; preds = %if.then
  %3 = load i32, ptr @verbose_sleep_duration, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.i = icmp sgt i32 %3, 0
  br i1 %cmp1.i, label %land.lhs.true2.i, label %land.lhs.true.i.verbose_torout_sleep.exit_crit_edge

land.lhs.true.i.verbose_torout_sleep.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %verbose_torout_sleep.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @verbose_sleep_counter, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !356
  tail call void @llvm.prefetch.p0(ptr nonnull @verbose_sleep_counter, i32 1, i32 3, i32 1) #12
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @verbose_sleep_counter, ptr nonnull @verbose_sleep_counter, i32 1, ptr nonnull elementtype(i32) @verbose_sleep_counter) #12, !srcloc !357
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !358
  %5 = load i32, ptr @verbose_sleep_frequency, align 4
  %rem.i = srem i32 %asmresult.i.i.i.i.i, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %land.lhs.true2.i.verbose_torout_sleep.exit_crit_edge

land.lhs.true2.i.verbose_torout_sleep.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %verbose_torout_sleep.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  %6 = load i32, ptr @verbose_sleep_duration, align 4
  %call3.i = tail call i32 @schedule_timeout_uninterruptible(i32 noundef %6) #12
  br label %verbose_torout_sleep.exit

verbose_torout_sleep.exit:                        ; preds = %if.then.i, %land.lhs.true2.i.verbose_torout_sleep.exit_crit_edge, %land.lhs.true.i.verbose_torout_sleep.exit_crit_edge, %if.then.verbose_torout_sleep.exit_crit_edge
  %7 = load ptr, ptr @torture_type, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %7, ptr noundef nonnull @.str.82) #15
  br label %do.body4.preheader

do.body4.preheader:                               ; preds = %verbose_torout_sleep.exit, %entry.do.body4.preheader_crit_edge
  br label %do.body4

do.body4:                                         ; preds = %torture_must_stop.exit68.do.body4_crit_edge, %do.body4.preheader
  %8 = load volatile i32, ptr @fullstop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i.not.i = icmp eq i32 %8, 0
  br i1 %cmp.i.not.i, label %torture_must_stop.exit, label %do.body4.do.body35_crit_edge

do.body4.do.body35_crit_edge:                     ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body35

torture_must_stop.exit:                           ; preds = %do.body4
  %call1.i = call zeroext i1 @kthread_should_stop() #12
  br i1 %call1.i, label %torture_must_stop.exit.do.body35_crit_edge, label %land.lhs.true

torture_must_stop.exit.do.body35_crit_edge:       ; preds = %torture_must_stop.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body35

land.lhs.true:                                    ; preds = %torture_must_stop.exit
  %9 = load i32, ptr @stutter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp sgt i32 %9, 1
  br i1 %cmp, label %if.then6, label %land.lhs.true.do.body35_crit_edge

land.lhs.true.do.body35_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body35

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp7.not = icmp eq i32 %9, 2
  br i1 %cmp7.not, label %if.then6.do.body24_crit_edge, label %do.body13

if.then6.do.body24_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body24

do.body13:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  store volatile i32 1, ptr @stutter_pause_test, align 4
  %sub = add nsw i32 %9, -3
  %call.i.i = call i32 @jiffies_to_usecs(i32 noundef %sub) #12
  %conv.i.i = zext i32 %call.i.i to i64
  %mul.i.i = mul nuw nsw i64 %conv.i.i, 1000
  %call.i3.i = call i32 @jiffies_to_usecs(i32 noundef 1) #12
  %mul.i5.i = mul i32 %call.i3.i, 1000
  %call2.i = call i32 @torture_hrtimeout_ns(i64 noundef %mul.i.i, i32 noundef %mul.i5.i, ptr noundef nonnull %rand) #12
  br label %do.body24

do.body24:                                        ; preds = %do.body13, %if.then6.do.body24_crit_edge
  store volatile i32 2, ptr @stutter_pause_test, align 4
  %call.i.i48 = call i32 @jiffies_to_usecs(i32 noundef 2) #12
  %conv.i.i49 = zext i32 %call.i.i48 to i64
  %mul.i.i50 = mul nuw nsw i64 %conv.i.i49, 1000
  %call.i3.i51 = call i32 @jiffies_to_usecs(i32 noundef 1) #12
  %mul.i5.i52 = mul i32 %call.i3.i51, 1000
  %call2.i53 = call i32 @torture_hrtimeout_ns(i64 noundef %mul.i.i50, i32 noundef %mul.i5.i52, ptr noundef null) #12
  br label %do.body35

do.body35:                                        ; preds = %do.body24, %land.lhs.true.do.body35_crit_edge, %torture_must_stop.exit.do.body35_crit_edge, %do.body4.do.body35_crit_edge
  store volatile i32 0, ptr @stutter_pause_test, align 4
  %10 = load volatile i32, ptr @fullstop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.not.i54 = icmp eq i32 %10, 0
  br i1 %cmp.i.not.i54, label %torture_must_stop.exit57, label %do.body35.if.end43_crit_edge

do.body35.if.end43_crit_edge:                     ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

torture_must_stop.exit57:                         ; preds = %do.body35
  %call1.i55 = call zeroext i1 @kthread_should_stop() #12
  br i1 %call1.i55, label %torture_must_stop.exit57.if.end43_crit_edge, label %if.then41

torture_must_stop.exit57.if.end43_crit_edge:      ; preds = %torture_must_stop.exit57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.then41:                                        ; preds = %torture_must_stop.exit57
  call void @__sanitizer_cov_trace_pc() #14
  %11 = load i32, ptr @stutter_gap, align 4
  %call.i.i58 = call i32 @jiffies_to_usecs(i32 noundef %11) #12
  %conv.i.i59 = zext i32 %call.i.i58 to i64
  %mul.i.i60 = mul nuw nsw i64 %conv.i.i59, 1000
  %call.i3.i61 = call i32 @jiffies_to_usecs(i32 noundef 1) #12
  %mul.i5.i62 = mul i32 %call.i3.i61, 1000
  %call2.i63 = call i32 @torture_hrtimeout_ns(i64 noundef %mul.i.i60, i32 noundef %mul.i5.i62, ptr noundef null) #12
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %torture_must_stop.exit57.if.end43_crit_edge, %do.body35.if.end43_crit_edge
  %12 = load volatile i32, ptr @fullstop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp5.i = icmp eq i32 %12, 1
  br i1 %cmp5.i, label %if.end43.do.end2.i_crit_edge, label %if.end43.torture_shutdown_absorb.exit_crit_edge

if.end43.torture_shutdown_absorb.exit_crit_edge:  ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %torture_shutdown_absorb.exit

if.end43.do.end2.i_crit_edge:                     ; preds = %if.end43
  br label %do.end2.i

do.end2.i:                                        ; preds = %do.end2.i.do.end2.i_crit_edge, %if.end43.do.end2.i_crit_edge
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.36) #15
  %call4.i = call i32 @schedule_timeout_uninterruptible(i32 noundef 2147483647) #12
  %13 = load volatile i32, ptr @fullstop, align 4
  %cmp.i64 = icmp eq i32 %13, 1
  br i1 %cmp.i64, label %do.end2.i.do.end2.i_crit_edge, label %do.end2.i.torture_shutdown_absorb.exit_crit_edge

do.end2.i.torture_shutdown_absorb.exit_crit_edge: ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %torture_shutdown_absorb.exit

do.end2.i.do.end2.i_crit_edge:                    ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end2.i

torture_shutdown_absorb.exit:                     ; preds = %do.end2.i.torture_shutdown_absorb.exit_crit_edge, %if.end43.torture_shutdown_absorb.exit_crit_edge
  %14 = load volatile i32, ptr @fullstop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i.not.i65 = icmp eq i32 %14, 0
  br i1 %cmp.i.not.i65, label %torture_must_stop.exit68, label %torture_shutdown_absorb.exit.do.end46_crit_edge

torture_shutdown_absorb.exit.do.end46_crit_edge:  ; preds = %torture_shutdown_absorb.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end46

torture_must_stop.exit68:                         ; preds = %torture_shutdown_absorb.exit
  %call1.i66 = call zeroext i1 @kthread_should_stop() #12
  br i1 %call1.i66, label %torture_must_stop.exit68.do.end46_crit_edge, label %torture_must_stop.exit68.do.body4_crit_edge

torture_must_stop.exit68.do.body4_crit_edge:      ; preds = %torture_must_stop.exit68
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body4

torture_must_stop.exit68.do.end46_crit_edge:      ; preds = %torture_must_stop.exit68
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end46

do.end46:                                         ; preds = %torture_must_stop.exit68.do.end46_crit_edge, %torture_shutdown_absorb.exit.do.end46_crit_edge
  call void @torture_kthread_stopping(ptr noundef nonnull @.str.36)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rand) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @torture_init_begin(ptr noundef %ttype, i32 noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @fullstop_mutex, i32 noundef 0) #12
  %0 = load ptr, ptr @torture_type, align 4
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, ptr noundef %ttype, ptr noundef nonnull %0) #15
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.40) #15
  tail call void @mutex_unlock(ptr noundef nonnull @fullstop_mutex) #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  store ptr %ttype, ptr @torture_type, align 4
  store i32 %v, ptr @verbose, align 4
  store i32 0, ptr @fullstop, align 4
  br label %return

return:                                           ; preds = %if.end, %do.end
  ret i1 %cmp.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @torture_init_end() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_unlock(ptr noundef nonnull @fullstop_mutex) #12
  %call = tail call i32 @register_reboot_notifier(ptr noundef nonnull @torture_shutdown_nb) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_reboot_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @torture_cleanup_begin() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @fullstop_mutex, i32 noundef 0) #12
  %0 = load volatile i32, ptr @fullstop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %do.end2, label %do.body8

do.end2:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #15
  tail call void @mutex_unlock(ptr noundef nonnull @fullstop_mutex) #12
  %call4 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 10) #12
  br label %return

do.body8:                                         ; preds = %entry
  store volatile i32 2, ptr @fullstop, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @fullstop_mutex) #12
  %call.i = tail call i32 @unregister_reboot_notifier(ptr noundef nonnull @torture_shutdown_nb) #12
  %1 = load ptr, ptr @shutdown_task, align 4
  %cmp.not.i = icmp eq ptr %1, null
  br i1 %cmp.not.i, label %do.body8.torture_shutdown_cleanup.exit_crit_edge, label %do.body.i

do.body8.torture_shutdown_cleanup.exit_crit_edge: ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #14
  br label %torture_shutdown_cleanup.exit

do.body.i:                                        ; preds = %do.body8
  %2 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %do.body.i.do.end4.i_crit_edge, label %if.then1.i

do.body.i.do.end4.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end4.i

if.then1.i:                                       ; preds = %do.body.i
  %3 = load i32, ptr @verbose_sleep_frequency, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.i = icmp sgt i32 %3, 0
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.then1.i.verbose_torout_sleep.exit.i_crit_edge

if.then1.i.verbose_torout_sleep.exit.i_crit_edge: ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %verbose_torout_sleep.exit.i

land.lhs.true.i.i:                                ; preds = %if.then1.i
  %4 = load i32, ptr @verbose_sleep_duration, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1.i.i = icmp sgt i32 %4, 0
  br i1 %cmp1.i.i, label %land.lhs.true2.i.i, label %land.lhs.true.i.i.verbose_torout_sleep.exit.i_crit_edge

land.lhs.true.i.i.verbose_torout_sleep.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %verbose_torout_sleep.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @verbose_sleep_counter, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !356
  tail call void @llvm.prefetch.p0(ptr nonnull @verbose_sleep_counter, i32 1, i32 3, i32 1) #12
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @verbose_sleep_counter, ptr nonnull @verbose_sleep_counter, i32 1, ptr nonnull elementtype(i32) @verbose_sleep_counter) #12, !srcloc !357
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !358
  %6 = load i32, ptr @verbose_sleep_frequency, align 4
  %rem.i.i = srem i32 %asmresult.i.i.i.i.i.i, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool.not.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %land.lhs.true2.i.i.verbose_torout_sleep.exit.i_crit_edge

land.lhs.true2.i.i.verbose_torout_sleep.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %verbose_torout_sleep.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %7 = load i32, ptr @verbose_sleep_duration, align 4
  %call3.i.i = tail call i32 @schedule_timeout_uninterruptible(i32 noundef %7) #12
  br label %verbose_torout_sleep.exit.i

verbose_torout_sleep.exit.i:                      ; preds = %if.then.i.i, %land.lhs.true2.i.i.verbose_torout_sleep.exit.i_crit_edge, %land.lhs.true.i.i.verbose_torout_sleep.exit.i_crit_edge, %if.then1.i.verbose_torout_sleep.exit.i_crit_edge
  %8 = load ptr, ptr @torture_type, align 4
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %8, ptr noundef nonnull @.str.90) #15
  br label %do.end4.i

do.end4.i:                                        ; preds = %verbose_torout_sleep.exit.i, %do.body.i.do.end4.i_crit_edge
  %9 = load ptr, ptr @shutdown_task, align 4
  %call5.i = tail call i32 @kthread_stop(ptr noundef %9) #12
  br label %torture_shutdown_cleanup.exit

torture_shutdown_cleanup.exit:                    ; preds = %do.end4.i, %do.body8.torture_shutdown_cleanup.exit_crit_edge
  store ptr null, ptr @shutdown_task, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @shuffle_task_mutex, i32 noundef 0) #12
  %10 = load ptr, ptr @shuffle_task_list, align 4
  %cmp.not15.i.i = icmp eq ptr %10, @shuffle_task_list
  br i1 %cmp.not15.i.i, label %torture_shutdown_cleanup.exit.torture_shuffle_task_unregister_all.exit.i_crit_edge, label %torture_shutdown_cleanup.exit.for.body.i.i_crit_edge

torture_shutdown_cleanup.exit.for.body.i.i_crit_edge: ; preds = %torture_shutdown_cleanup.exit
  br label %for.body.i.i

torture_shutdown_cleanup.exit.torture_shuffle_task_unregister_all.exit.i_crit_edge: ; preds = %torture_shutdown_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %torture_shuffle_task_unregister_all.exit.i

for.body.i.i:                                     ; preds = %list_del.exit.i.i.for.body.i.i_crit_edge, %torture_shutdown_cleanup.exit.for.body.i.i_crit_edge
  %stp.016.i.i = phi ptr [ %p.0.i.i, %list_del.exit.i.i.for.body.i.i_crit_edge ], [ %10, %torture_shutdown_cleanup.exit.for.body.i.i_crit_edge ]
  %11 = ptrtoint ptr %stp.016.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %p.0.i.i = load ptr, ptr %stp.016.i.i, align 4
  %call.i.i.i.i11 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %stp.016.i.i) #12
  br i1 %call.i.i.i.i11, label %if.end.i.i.i.i, label %for.body.i.i.list_del.exit.i.i_crit_edge

for.body.i.i.list_del.exit.i.i_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %stp.016.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i.i.i, align 4
  %14 = ptrtoint ptr %stp.016.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stp.016.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %for.body.i.i.list_del.exit.i.i_crit_edge
  %18 = ptrtoint ptr %stp.016.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %stp.016.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %stp.016.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  tail call void @kfree(ptr noundef %stp.016.i.i) #12
  %cmp.not.i.i = icmp eq ptr %p.0.i.i, @shuffle_task_list
  br i1 %cmp.not.i.i, label %list_del.exit.i.i.torture_shuffle_task_unregister_all.exit.i_crit_edge, label %list_del.exit.i.i.for.body.i.i_crit_edge

list_del.exit.i.i.for.body.i.i_crit_edge:         ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

list_del.exit.i.i.torture_shuffle_task_unregister_all.exit.i_crit_edge: ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %torture_shuffle_task_unregister_all.exit.i

torture_shuffle_task_unregister_all.exit.i:       ; preds = %list_del.exit.i.i.torture_shuffle_task_unregister_all.exit.i_crit_edge, %torture_shutdown_cleanup.exit.torture_shuffle_task_unregister_all.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @shuffle_task_mutex) #12
  %20 = load ptr, ptr @shuffler_task, align 4
  %tobool.not.i12 = icmp eq ptr %20, null
  br i1 %tobool.not.i12, label %torture_shuffle_task_unregister_all.exit.i.torture_shuffle_cleanup.exit_crit_edge, label %do.body.i13

torture_shuffle_task_unregister_all.exit.i.torture_shuffle_cleanup.exit_crit_edge: ; preds = %torture_shuffle_task_unregister_all.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %torture_shuffle_cleanup.exit

do.body.i13:                                      ; preds = %torture_shuffle_task_unregister_all.exit.i
  %21 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool1.not.i = icmp eq i32 %21, 0
  br i1 %tobool1.not.i, label %do.body.i13.do.end4.i26_crit_edge, label %if.then2.i

do.body.i13.do.end4.i26_crit_edge:                ; preds = %do.body.i13
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end4.i26

if.then2.i:                                       ; preds = %do.body.i13
  %22 = load i32, ptr @verbose_sleep_frequency, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i.i14 = icmp sgt i32 %22, 0
  br i1 %cmp.i.i14, label %land.lhs.true.i.i16, label %if.then2.i.verbose_torout_sleep.exit.i24_crit_edge

if.then2.i.verbose_torout_sleep.exit.i24_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %verbose_torout_sleep.exit.i24

land.lhs.true.i.i16:                              ; preds = %if.then2.i
  %23 = load i32, ptr @verbose_sleep_duration, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp1.i.i15 = icmp sgt i32 %23, 0
  br i1 %cmp1.i.i15, label %land.lhs.true2.i.i20, label %land.lhs.true.i.i16.verbose_torout_sleep.exit.i24_crit_edge

land.lhs.true.i.i16.verbose_torout_sleep.exit.i24_crit_edge: ; preds = %land.lhs.true.i.i16
  call void @__sanitizer_cov_trace_pc() #14
  br label %verbose_torout_sleep.exit.i24

land.lhs.true2.i.i20:                             ; preds = %land.lhs.true.i.i16
  %call.i.i.i7.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @verbose_sleep_counter, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !356
  tail call void @llvm.prefetch.p0(ptr nonnull @verbose_sleep_counter, i32 1, i32 3, i32 1) #12
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @verbose_sleep_counter, ptr nonnull @verbose_sleep_counter, i32 1, ptr nonnull elementtype(i32) @verbose_sleep_counter) #12, !srcloc !357
  %asmresult.i.i.i.i.i.i17 = extractvalue { i32, i32 } %24, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !358
  %25 = load i32, ptr @verbose_sleep_frequency, align 4
  %rem.i.i18 = srem i32 %asmresult.i.i.i.i.i.i17, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i18)
  %tobool.not.i.i19 = icmp eq i32 %rem.i.i18, 0
  br i1 %tobool.not.i.i19, label %if.then.i.i22, label %land.lhs.true2.i.i20.verbose_torout_sleep.exit.i24_crit_edge

land.lhs.true2.i.i20.verbose_torout_sleep.exit.i24_crit_edge: ; preds = %land.lhs.true2.i.i20
  call void @__sanitizer_cov_trace_pc() #14
  br label %verbose_torout_sleep.exit.i24

if.then.i.i22:                                    ; preds = %land.lhs.true2.i.i20
  call void @__sanitizer_cov_trace_pc() #14
  %26 = load i32, ptr @verbose_sleep_duration, align 4
  %call3.i.i21 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef %26) #12
  br label %verbose_torout_sleep.exit.i24

verbose_torout_sleep.exit.i24:                    ; preds = %if.then.i.i22, %land.lhs.true2.i.i20.verbose_torout_sleep.exit.i24_crit_edge, %land.lhs.true.i.i16.verbose_torout_sleep.exit.i24_crit_edge, %if.then2.i.verbose_torout_sleep.exit.i24_crit_edge
  %27 = load ptr, ptr @torture_type, align 4
  %call.i23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %27, ptr noundef nonnull @.str.92) #15
  br label %do.end4.i26

do.end4.i26:                                      ; preds = %verbose_torout_sleep.exit.i24, %do.body.i13.do.end4.i26_crit_edge
  %28 = load ptr, ptr @shuffler_task, align 4
  %call5.i25 = tail call i32 @kthread_stop(ptr noundef %28) #12
  %29 = load ptr, ptr @shuffle_tmp_mask, align 4
  tail call void @free_cpumask_var(ptr noundef %29) #12
  br label %torture_shuffle_cleanup.exit

torture_shuffle_cleanup.exit:                     ; preds = %do.end4.i26, %torture_shuffle_task_unregister_all.exit.i.torture_shuffle_cleanup.exit_crit_edge
  store ptr null, ptr @shuffler_task, align 4
  %30 = load ptr, ptr @stutter_task, align 4
  %tobool.not.i27 = icmp eq ptr %30, null
  br i1 %tobool.not.i27, label %torture_shuffle_cleanup.exit.torture_stutter_cleanup.exit_crit_edge, label %do.body.i29

torture_shuffle_cleanup.exit.torture_stutter_cleanup.exit_crit_edge: ; preds = %torture_shuffle_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %torture_stutter_cleanup.exit

do.body.i29:                                      ; preds = %torture_shuffle_cleanup.exit
  %31 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool1.not.i28 = icmp eq i32 %31, 0
  br i1 %tobool1.not.i28, label %do.body.i29.do.end5.i_crit_edge, label %if.then2.i31

do.body.i29.do.end5.i_crit_edge:                  ; preds = %do.body.i29
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end5.i

if.then2.i31:                                     ; preds = %do.body.i29
  %32 = load i32, ptr @verbose_sleep_frequency, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i.i30 = icmp sgt i32 %32, 0
  br i1 %cmp.i.i30, label %land.lhs.true.i.i33, label %if.then2.i31.verbose_torout_sleep.exit.i42_crit_edge

if.then2.i31.verbose_torout_sleep.exit.i42_crit_edge: ; preds = %if.then2.i31
  call void @__sanitizer_cov_trace_pc() #14
  br label %verbose_torout_sleep.exit.i42

land.lhs.true.i.i33:                              ; preds = %if.then2.i31
  %33 = load i32, ptr @verbose_sleep_duration, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp1.i.i32 = icmp sgt i32 %33, 0
  br i1 %cmp1.i.i32, label %land.lhs.true2.i.i38, label %land.lhs.true.i.i33.verbose_torout_sleep.exit.i42_crit_edge

land.lhs.true.i.i33.verbose_torout_sleep.exit.i42_crit_edge: ; preds = %land.lhs.true.i.i33
  call void @__sanitizer_cov_trace_pc() #14
  br label %verbose_torout_sleep.exit.i42

land.lhs.true2.i.i38:                             ; preds = %land.lhs.true.i.i33
  %call.i.i.i.i34 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @verbose_sleep_counter, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !356
  tail call void @llvm.prefetch.p0(ptr nonnull @verbose_sleep_counter, i32 1, i32 3, i32 1) #12
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @verbose_sleep_counter, ptr nonnull @verbose_sleep_counter, i32 1, ptr nonnull elementtype(i32) @verbose_sleep_counter) #12, !srcloc !357
  %asmresult.i.i.i.i.i.i35 = extractvalue { i32, i32 } %34, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !358
  %35 = load i32, ptr @verbose_sleep_frequency, align 4
  %rem.i.i36 = srem i32 %asmresult.i.i.i.i.i.i35, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i36)
  %tobool.not.i.i37 = icmp eq i32 %rem.i.i36, 0
  br i1 %tobool.not.i.i37, label %if.then.i.i40, label %land.lhs.true2.i.i38.verbose_torout_sleep.exit.i42_crit_edge

land.lhs.true2.i.i38.verbose_torout_sleep.exit.i42_crit_edge: ; preds = %land.lhs.true2.i.i38
  call void @__sanitizer_cov_trace_pc() #14
  br label %verbose_torout_sleep.exit.i42

if.then.i.i40:                                    ; preds = %land.lhs.true2.i.i38
  call void @__sanitizer_cov_trace_pc() #14
  %36 = load i32, ptr @verbose_sleep_duration, align 4
  %call3.i.i39 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef %36) #12
  br label %verbose_torout_sleep.exit.i42

verbose_torout_sleep.exit.i42:                    ; preds = %if.then.i.i40, %land.lhs.true2.i.i38.verbose_torout_sleep.exit.i42_crit_edge, %land.lhs.true.i.i33.verbose_torout_sleep.exit.i42_crit_edge, %if.then2.i31.verbose_torout_sleep.exit.i42_crit_edge
  %37 = load ptr, ptr @torture_type, align 4
  %call.i41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %37, ptr noundef nonnull @.str.94) #15
  br label %do.end5.i

do.end5.i:                                        ; preds = %verbose_torout_sleep.exit.i42, %do.body.i29.do.end5.i_crit_edge
  %38 = load ptr, ptr @stutter_task, align 4
  %call6.i = tail call i32 @kthread_stop(ptr noundef %38) #12
  store ptr null, ptr @stutter_task, align 4
  br label %torture_stutter_cleanup.exit

torture_stutter_cleanup.exit:                     ; preds = %do.end5.i, %torture_shuffle_cleanup.exit.torture_stutter_cleanup.exit_crit_edge
  %39 = load ptr, ptr @onoff_task, align 4
  %cmp.i = icmp eq ptr %39, null
  br i1 %cmp.i, label %torture_stutter_cleanup.exit.return_crit_edge, label %do.body.i44

torture_stutter_cleanup.exit.return_crit_edge:    ; preds = %torture_stutter_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.body.i44:                                      ; preds = %torture_stutter_cleanup.exit
  %40 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i43 = icmp eq i32 %40, 0
  br i1 %tobool.not.i43, label %do.body.i44.do.end4.i59_crit_edge, label %if.then1.i46

do.body.i44.do.end4.i59_crit_edge:                ; preds = %do.body.i44
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end4.i59

if.then1.i46:                                     ; preds = %do.body.i44
  %41 = load i32, ptr @verbose_sleep_frequency, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp.i.i45 = icmp sgt i32 %41, 0
  br i1 %cmp.i.i45, label %land.lhs.true.i.i48, label %if.then1.i46.verbose_torout_sleep.exit.i57_crit_edge

if.then1.i46.verbose_torout_sleep.exit.i57_crit_edge: ; preds = %if.then1.i46
  call void @__sanitizer_cov_trace_pc() #14
  br label %verbose_torout_sleep.exit.i57

land.lhs.true.i.i48:                              ; preds = %if.then1.i46
  %42 = load i32, ptr @verbose_sleep_duration, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp1.i.i47 = icmp sgt i32 %42, 0
  br i1 %cmp1.i.i47, label %land.lhs.true2.i.i53, label %land.lhs.true.i.i48.verbose_torout_sleep.exit.i57_crit_edge

land.lhs.true.i.i48.verbose_torout_sleep.exit.i57_crit_edge: ; preds = %land.lhs.true.i.i48
  call void @__sanitizer_cov_trace_pc() #14
  br label %verbose_torout_sleep.exit.i57

land.lhs.true2.i.i53:                             ; preds = %land.lhs.true.i.i48
  %call.i.i.i.i49 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @verbose_sleep_counter, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !356
  tail call void @llvm.prefetch.p0(ptr nonnull @verbose_sleep_counter, i32 1, i32 3, i32 1) #12
  %43 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @verbose_sleep_counter, ptr nonnull @verbose_sleep_counter, i32 1, ptr nonnull elementtype(i32) @verbose_sleep_counter) #12, !srcloc !357
  %asmresult.i.i.i.i.i.i50 = extractvalue { i32, i32 } %43, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !358
  %44 = load i32, ptr @verbose_sleep_frequency, align 4
  %rem.i.i51 = srem i32 %asmresult.i.i.i.i.i.i50, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i51)
  %tobool.not.i.i52 = icmp eq i32 %rem.i.i51, 0
  br i1 %tobool.not.i.i52, label %if.then.i.i55, label %land.lhs.true2.i.i53.verbose_torout_sleep.exit.i57_crit_edge

land.lhs.true2.i.i53.verbose_torout_sleep.exit.i57_crit_edge: ; preds = %land.lhs.true2.i.i53
  call void @__sanitizer_cov_trace_pc() #14
  br label %verbose_torout_sleep.exit.i57

if.then.i.i55:                                    ; preds = %land.lhs.true2.i.i53
  call void @__sanitizer_cov_trace_pc() #14
  %45 = load i32, ptr @verbose_sleep_duration, align 4
  %call3.i.i54 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef %45) #12
  br label %verbose_torout_sleep.exit.i57

verbose_torout_sleep.exit.i57:                    ; preds = %if.then.i.i55, %land.lhs.true2.i.i53.verbose_torout_sleep.exit.i57_crit_edge, %land.lhs.true.i.i48.verbose_torout_sleep.exit.i57_crit_edge, %if.then1.i46.verbose_torout_sleep.exit.i57_crit_edge
  %46 = load ptr, ptr @torture_type, align 4
  %call.i56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %46, ptr noundef nonnull @.str.96) #15
  br label %do.end4.i59

do.end4.i59:                                      ; preds = %verbose_torout_sleep.exit.i57, %do.body.i44.do.end4.i59_crit_edge
  %47 = load ptr, ptr @onoff_task, align 4
  %call5.i58 = tail call i32 @kthread_stop(ptr noundef %47) #12
  store ptr null, ptr @onoff_task, align 4
  br label %return

return:                                           ; preds = %do.end4.i59, %torture_stutter_cleanup.exit.return_crit_edge, %do.end2
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @torture_cleanup_end() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @fullstop_mutex, i32 noundef 0) #12
  store ptr null, ptr @torture_type, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @fullstop_mutex) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @torture_must_stop() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile i32, ptr @fullstop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.i.not = icmp eq i32 %0, 0
  br i1 %cmp.i.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call zeroext i1 @kthread_should_stop() #12
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %1 = phi i1 [ true, %entry.lor.end_crit_edge ], [ %call1, %lor.rhs ]
  ret i1 %1
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @torture_must_stop_irq() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile i32, ptr @fullstop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp ne i32 %0, 0
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @torture_kthread_stopping(ptr noundef %title) #0 align 64 {
entry:
  %buf = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buf) #12
  %0 = call ptr @memset(ptr %buf, i32 255, i32 128)
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 128, ptr noundef nonnull @.str.46, ptr noundef %title)
  %1 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %if.then

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end5

if.then:                                          ; preds = %entry
  %2 = load i32, ptr @verbose_sleep_frequency, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i = icmp sgt i32 %2, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then.verbose_torout_sleep.exit_crit_edge

if.then.verbose_torout_sleep.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %verbose_torout_sleep.exit

land.lhs.true.i:                                  ; preds = %if.then
  %3 = load i32, ptr @verbose_sleep_duration, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.i = icmp sgt i32 %3, 0
  br i1 %cmp1.i, label %land.lhs.true2.i, label %land.lhs.true.i.verbose_torout_sleep.exit_crit_edge

land.lhs.true.i.verbose_torout_sleep.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %verbose_torout_sleep.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @verbose_sleep_counter, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !356
  tail call void @llvm.prefetch.p0(ptr nonnull @verbose_sleep_counter, i32 1, i32 3, i32 1) #12
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @verbose_sleep_counter, ptr nonnull @verbose_sleep_counter, i32 1, ptr nonnull elementtype(i32) @verbose_sleep_counter) #12, !srcloc !357
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !358
  %5 = load i32, ptr @verbose_sleep_frequency, align 4
  %rem.i = srem i32 %asmresult.i.i.i.i.i, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %land.lhs.true2.i.verbose_torout_sleep.exit_crit_edge

land.lhs.true2.i.verbose_torout_sleep.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %verbose_torout_sleep.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  %6 = load i32, ptr @verbose_sleep_duration, align 4
  %call3.i = tail call i32 @schedule_timeout_uninterruptible(i32 noundef %6) #12
  br label %verbose_torout_sleep.exit

verbose_torout_sleep.exit:                        ; preds = %if.then.i, %land.lhs.true2.i.verbose_torout_sleep.exit_crit_edge, %land.lhs.true.i.verbose_torout_sleep.exit_crit_edge, %if.then.verbose_torout_sleep.exit_crit_edge
  %7 = load ptr, ptr @torture_type, align 4
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %7, ptr noundef nonnull %buf) #15
  br label %do.end5

do.end5:                                          ; preds = %verbose_torout_sleep.exit, %entry.do.end5_crit_edge
  %call610 = call zeroext i1 @kthread_should_stop() #12
  br i1 %call610, label %do.end5.while.end_crit_edge, label %do.end5.while.body_crit_edge

do.end5.while.body_crit_edge:                     ; preds = %do.end5
  br label %while.body

do.end5.while.end_crit_edge:                      ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %torture_shutdown_absorb.exit.while.body_crit_edge, %do.end5.while.body_crit_edge
  %8 = load volatile i32, ptr @fullstop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp5.i = icmp eq i32 %8, 1
  br i1 %cmp5.i, label %while.body.do.end2.i_crit_edge, label %while.body.torture_shutdown_absorb.exit_crit_edge

while.body.torture_shutdown_absorb.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %torture_shutdown_absorb.exit

while.body.do.end2.i_crit_edge:                   ; preds = %while.body
  br label %do.end2.i

do.end2.i:                                        ; preds = %do.end2.i.do.end2.i_crit_edge, %while.body.do.end2.i_crit_edge
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %title) #15
  %call4.i = call i32 @schedule_timeout_uninterruptible(i32 noundef 2147483647) #12
  %9 = load volatile i32, ptr @fullstop, align 4
  %cmp.i9 = icmp eq i32 %9, 1
  br i1 %cmp.i9, label %do.end2.i.do.end2.i_crit_edge, label %do.end2.i.torture_shutdown_absorb.exit_crit_edge

do.end2.i.torture_shutdown_absorb.exit_crit_edge: ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %torture_shutdown_absorb.exit

do.end2.i.do.end2.i_crit_edge:                    ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end2.i

torture_shutdown_absorb.exit:                     ; preds = %do.end2.i.torture_shutdown_absorb.exit_crit_edge, %while.body.torture_shutdown_absorb.exit_crit_edge
  %call7 = call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #12
  %call6 = call zeroext i1 @kthread_should_stop() #12
  br i1 %call6, label %torture_shutdown_absorb.exit.while.end_crit_edge, label %torture_shutdown_absorb.exit.while.body_crit_edge

torture_shutdown_absorb.exit.while.body_crit_edge: ; preds = %torture_shutdown_absorb.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

torture_shutdown_absorb.exit.while.end_crit_edge: ; preds = %torture_shutdown_absorb.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %torture_shutdown_absorb.exit.while.end_crit_edge, %do.end5.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buf) #12
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @_torture_stop_kthread(ptr noundef %m, ptr nocapture noundef %tp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tp, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.return_crit_edge, label %do.body

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.body:                                          ; preds = %entry
  %2 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.body.do.end4_crit_edge, label %if.then1

do.body.do.end4_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end4

if.then1:                                         ; preds = %do.body
  %3 = load i32, ptr @verbose_sleep_frequency, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp sgt i32 %3, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then1.verbose_torout_sleep.exit_crit_edge

if.then1.verbose_torout_sleep.exit_crit_edge:     ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #14
  br label %verbose_torout_sleep.exit

land.lhs.true.i:                                  ; preds = %if.then1
  %4 = load i32, ptr @verbose_sleep_duration, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1.i = icmp sgt i32 %4, 0
  br i1 %cmp1.i, label %land.lhs.true2.i, label %land.lhs.true.i.verbose_torout_sleep.exit_crit_edge

land.lhs.true.i.verbose_torout_sleep.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %verbose_torout_sleep.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @verbose_sleep_counter, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !356
  tail call void @llvm.prefetch.p0(ptr nonnull @verbose_sleep_counter, i32 1, i32 3, i32 1) #12
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @verbose_sleep_counter, ptr nonnull @verbose_sleep_counter, i32 1, ptr nonnull elementtype(i32) @verbose_sleep_counter) #12, !srcloc !357
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !358
  %6 = load i32, ptr @verbose_sleep_frequency, align 4
  %rem.i = srem i32 %asmresult.i.i.i.i.i, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %land.lhs.true2.i.verbose_torout_sleep.exit_crit_edge

land.lhs.true2.i.verbose_torout_sleep.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %verbose_torout_sleep.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  %7 = load i32, ptr @verbose_sleep_duration, align 4
  %call3.i = tail call i32 @schedule_timeout_uninterruptible(i32 noundef %7) #12
  br label %verbose_torout_sleep.exit

verbose_torout_sleep.exit:                        ; preds = %if.then.i, %land.lhs.true2.i.verbose_torout_sleep.exit_crit_edge, %land.lhs.true.i.verbose_torout_sleep.exit_crit_edge, %if.then1.verbose_torout_sleep.exit_crit_edge
  %8 = load ptr, ptr @torture_type, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %8, ptr noundef %m) #15
  br label %do.end4

do.end4:                                          ; preds = %verbose_torout_sleep.exit, %do.body.do.end4_crit_edge
  %9 = ptrtoint ptr %tp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tp, align 4
  %call5 = tail call i32 @kthread_stop(ptr noundef %10) #12
  %11 = ptrtoint ptr %tp to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %tp, align 4
  br label %return

return:                                           ; preds = %do.end4, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @torture_online_all(ptr noundef %phase) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call12 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call12, i32 %0)
  %cmp13 = icmp ult i32 %call12, %0
  br i1 %cmp13, label %entry.cpu_online.exit_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

entry.cpu_online.exit_crit_edge:                  ; preds = %entry
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %for.cond.backedge.cpu_online.exit_crit_edge, %entry.cpu_online.exit_crit_edge
  %call14 = phi i32 [ %call, %for.cond.backedge.cpu_online.exit_crit_edge ], [ %call12, %entry.cpu_online.exit_crit_edge ]
  %div1.i.i.i = lshr i32 %call14, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %1 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %call14, 31
  %3 = shl nuw i32 1, %and.i.i.i
  %4 = and i32 %2, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %if.end, label %cpu_online.exit.for.cond.backedge_crit_edge

cpu_online.exit.for.cond.backedge_crit_edge:      ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.backedge

if.end:                                           ; preds = %cpu_online.exit
  %call2 = tail call i32 @add_cpu(i32 noundef %call14) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end.for.cond.backedge_crit_edge, label %land.lhs.true

if.end.for.cond.backedge_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.backedge

land.lhs.true:                                    ; preds = %if.end
  %5 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %land.lhs.true.for.cond.backedge_crit_edge, label %do.end

land.lhs.true.for.cond.backedge_crit_edge:        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.backedge

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %6 = load ptr, ptr @torture_type, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, ptr noundef %phase, ptr noundef %6, i32 noundef %call14, i32 noundef %call2) #15
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %do.end, %land.lhs.true.for.cond.backedge_crit_edge, %if.end.for.cond.backedge_crit_edge, %cpu_online.exit.for.cond.backedge_crit_edge
  %call = tail call i32 @cpumask_next(i32 noundef %call14, ptr noundef nonnull @__cpu_possible_mask) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %7
  br i1 %cmp, label %for.cond.backedge.cpu_online.exit_crit_edge, label %for.cond.backedge.for.end_crit_edge

for.cond.backedge.for.end_crit_edge:              ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.cond.backedge.cpu_online.exit_crit_edge:      ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpu_online.exit

for.end:                                          ; preds = %for.cond.backedge.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_cpus_allowed_ptr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tracing_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ftrace_dump(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_power_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @torture_shutdown_notify(ptr nocapture noundef readnone %unused1, i32 noundef %unused2, ptr nocapture noundef readnone %unused3) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @fullstop_mutex, i32 noundef 0) #12
  %0 = load volatile i32, ptr @fullstop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %do.body1, label %do.end14

do.body1:                                         ; preds = %entry
  %1 = load i32, ptr @verbose, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.body1.do.body10_crit_edge, label %if.then2

do.body1.do.body10_crit_edge:                     ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body10

if.then2:                                         ; preds = %do.body1
  %2 = load i32, ptr @verbose_sleep_frequency, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i = icmp sgt i32 %2, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then2.verbose_torout_sleep.exit_crit_edge

if.then2.verbose_torout_sleep.exit_crit_edge:     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %verbose_torout_sleep.exit

land.lhs.true.i:                                  ; preds = %if.then2
  %3 = load i32, ptr @verbose_sleep_duration, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.i = icmp sgt i32 %3, 0
  br i1 %cmp1.i, label %land.lhs.true2.i, label %land.lhs.true.i.verbose_torout_sleep.exit_crit_edge

land.lhs.true.i.verbose_torout_sleep.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %verbose_torout_sleep.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @verbose_sleep_counter, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !356
  tail call void @llvm.prefetch.p0(ptr nonnull @verbose_sleep_counter, i32 1, i32 3, i32 1) #12
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @verbose_sleep_counter, ptr nonnull @verbose_sleep_counter, i32 1, ptr nonnull elementtype(i32) @verbose_sleep_counter) #12, !srcloc !357
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !358
  %5 = load i32, ptr @verbose_sleep_frequency, align 4
  %rem.i = srem i32 %asmresult.i.i.i.i.i, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %land.lhs.true2.i.verbose_torout_sleep.exit_crit_edge

land.lhs.true2.i.verbose_torout_sleep.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %verbose_torout_sleep.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  %6 = load i32, ptr @verbose_sleep_duration, align 4
  %call3.i = tail call i32 @schedule_timeout_uninterruptible(i32 noundef %6) #12
  br label %verbose_torout_sleep.exit

verbose_torout_sleep.exit:                        ; preds = %if.then.i, %land.lhs.true2.i.verbose_torout_sleep.exit_crit_edge, %land.lhs.true.i.verbose_torout_sleep.exit_crit_edge, %if.then2.verbose_torout_sleep.exit_crit_edge
  %7 = load ptr, ptr @torture_type, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %7, ptr noundef nonnull @.str.86) #15
  br label %do.body10

do.body10:                                        ; preds = %verbose_torout_sleep.exit, %do.body1.do.body10_crit_edge
  store volatile i32 1, ptr @fullstop, align 4
  br label %if.end17

do.end14:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #15
  br label %if.end17

if.end17:                                         ; preds = %do.end14, %do.body10
  tail call void @mutex_unlock(ptr noundef nonnull @fullstop_mutex) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_reboot_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_cpumask_var(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 142)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 142)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind readonly willreturn }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !11, !13, !14, !16, !17, !19, !21, !22, !24, !26, !28, !30, !32, !34, !36, !37, !38, !39, !41, !43, !45, !46, !47, !49, !50, !51, !53, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !72, !73, !74, !76, !78, !79, !80, !81, !83, !85, !87, !89, !91, !93, !95, !96, !97, !98, !99, !101, !102, !103, !105, !107, !108, !109, !110, !112, !114, !115, !116, !118, !120, !122, !123, !124, !126, !128, !129, !130, !131, !133, !134, !135, !137, !139, !141, !142, !143, !144, !146, !148, !150, !152, !154, !156, !157, !158, !159, !161, !163, !164, !165, !167, !169, !170, !172, !174, !175, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !237, !238, !239, !240, !242, !244, !246, !247, !249, !250, !251, !253, !255, !256, !257, !259, !260, !261, !263, !264, !265, !267, !269, !270, !271, !272, !274, !276, !278, !279, !280, !282, !284, !285, !286, !288, !290, !291, !292, !294, !295, !296, !298, !300, !301, !302, !304, !305, !306, !308, !310, !311, !312, !314, !315, !316, !318, !320, !321, !322, !323, !325, !326, !328, !329, !330, !331, !333, !334, !335, !336, !338, !339, !340, !341, !343, !344, !345}
!llvm.named.register.sp = !{!346}
!llvm.module.flags = !{!347, !348, !349, !350, !351, !352, !353, !354}
!llvm.ident = !{!355}

!0 = !{ptr @__UNIQUE_ID_file241, !1, !"__UNIQUE_ID_file241", i1 false, i1 false}
!1 = !{!"../kernel/torture.c", i32 42, i32 1}
!2 = !{ptr @__UNIQUE_ID_license242, !1, !"__UNIQUE_ID_license242", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author243, !4, !"__UNIQUE_ID_author243", i1 false, i1 false}
!4 = !{!"../kernel/torture.c", i32 43, i32 1}
!5 = !{ptr @__param_disable_onoff_at_boot, !6, !"__param_disable_onoff_at_boot", i1 false, i1 false}
!6 = !{!"../kernel/torture.c", i32 46, i32 1}
!7 = !{ptr @__UNIQUE_ID_disable_onoff_at_boottype244, !6, !"__UNIQUE_ID_disable_onoff_at_boottype244", i1 false, i1 false}
!8 = !{ptr @__param_ftrace_dump_at_shutdown, !9, !"__param_ftrace_dump_at_shutdown", i1 false, i1 false}
!9 = !{!"../kernel/torture.c", i32 49, i32 1}
!10 = !{ptr @__UNIQUE_ID_ftrace_dump_at_shutdowntype245, !9, !"__UNIQUE_ID_ftrace_dump_at_shutdowntype245", i1 false, i1 false}
!11 = !{ptr @__param_verbose_sleep_frequency, !12, !"__param_verbose_sleep_frequency", i1 false, i1 false}
!12 = !{!"../kernel/torture.c", i32 52, i32 1}
!13 = !{ptr @__UNIQUE_ID_verbose_sleep_frequencytype246, !12, !"__UNIQUE_ID_verbose_sleep_frequencytype246", i1 false, i1 false}
!14 = !{ptr @__param_verbose_sleep_duration, !15, !"__param_verbose_sleep_duration", i1 false, i1 false}
!15 = !{!"../kernel/torture.c", i32 55, i32 1}
!16 = !{ptr @__UNIQUE_ID_verbose_sleep_durationtype247, !15, !"__UNIQUE_ID_verbose_sleep_durationtype247", i1 false, i1 false}
!17 = !{ptr @__ksymtab_verbose_torout_sleep, !18, !"__ksymtab_verbose_torout_sleep", i1 false, i1 false}
!18 = !{!"../kernel/torture.c", i32 79, i32 1}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../kernel/torture.c", i32 92, i32 2}
!21 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @__ksymtab_torture_hrtimeout_ns, !23, !"__ksymtab_torture_hrtimeout_ns", i1 false, i1 false}
!23 = !{!"../kernel/torture.c", i32 95, i32 1}
!24 = !{ptr @__ksymtab_torture_hrtimeout_us, !25, !"__ksymtab_torture_hrtimeout_us", i1 false, i1 false}
!25 = !{!"../kernel/torture.c", i32 107, i32 1}
!26 = !{ptr @__ksymtab_torture_hrtimeout_ms, !27, !"__ksymtab_torture_hrtimeout_ms", i1 false, i1 false}
!27 = !{!"../kernel/torture.c", i32 124, i32 1}
!28 = !{ptr @__ksymtab_torture_hrtimeout_jiffies, !29, !"__ksymtab_torture_hrtimeout_jiffies", i1 false, i1 false}
!29 = !{!"../kernel/torture.c", i32 137, i32 1}
!30 = !{ptr @__ksymtab_torture_hrtimeout_s, !31, !"__ksymtab_torture_hrtimeout_s", i1 false, i1 false}
!31 = !{!"../kernel/torture.c", i32 154, i32 1}
!32 = !{ptr @__ksymtab_torture_num_online_cpus, !33, !"__ksymtab_torture_num_online_cpus", i1 false, i1 false}
!33 = !{!"../kernel/torture.c", i32 189, i32 1}
!34 = !{ptr @.str.1, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../kernel/torture.c", i32 210, i32 3}
!36 = !{ptr @.str.2, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @torture_offline._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @torture_offline._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.3, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../kernel/torture.c", i32 217, i32 7}
!41 = !{ptr @.str.4, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../kernel/torture.c", i32 221, i32 8}
!43 = !{ptr @.str.6, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../kernel/torture.c", i32 224, i32 4}
!45 = !{ptr @torture_offline._entry.5, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @torture_offline._entry_ptr.7, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.9, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../kernel/torture.c", i32 229, i32 4}
!49 = !{ptr @torture_offline._entry.8, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @torture_offline._entry_ptr.10, !48, !"_entry_ptr", i1 false, i1 false}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../kernel/torture.c", i32 246, i32 3}
!53 = !{ptr @__ksymtab_torture_offline, !54, !"__ksymtab_torture_offline", i1 false, i1 false}
!54 = !{!"../kernel/torture.c", i32 251, i32 1}
!55 = !{ptr @.str.11, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../kernel/torture.c", i32 270, i32 3}
!57 = !{ptr @.str.12, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @torture_online._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @torture_online._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.14, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../kernel/torture.c", i32 284, i32 4}
!62 = !{ptr @torture_online._entry.13, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @torture_online._entry_ptr.15, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.17, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../kernel/torture.c", i32 289, i32 4}
!66 = !{ptr @torture_online._entry.16, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @torture_online._entry_ptr.18, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @__ksymtab_torture_online, !69, !"__ksymtab_torture_online", i1 false, i1 false}
!69 = !{!"../kernel/torture.c", i32 308, i32 1}
!70 = !{ptr @.str.19, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../kernel/torture.c", i32 390, i32 9}
!72 = !{ptr @.str.20, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.21, !71, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @__ksymtab_torture_onoff_init, !75, !"__ksymtab_torture_onoff_init", i1 false, i1 false}
!75 = !{!"../kernel/torture.c", i32 395, i32 1}
!76 = !{ptr @.str.22, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../kernel/torture.c", i32 417, i32 2}
!78 = !{ptr @.str.23, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @torture_onoff_stats._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @torture_onoff_stats._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @__ksymtab_torture_onoff_stats, !82, !"__ksymtab_torture_onoff_stats", i1 false, i1 false}
!82 = !{!"../kernel/torture.c", i32 425, i32 1}
!83 = !{ptr @__ksymtab_torture_onoff_failures, !84, !"__ksymtab_torture_onoff_failures", i1 false, i1 false}
!84 = !{!"../kernel/torture.c", i32 439, i32 1}
!85 = !{ptr @__ksymtab_torture_random, !86, !"__ksymtab_torture_random", i1 false, i1 false}
!86 = !{!"../kernel/torture.c", i32 460, i32 1}
!87 = distinct !{null, !88, !"__already_done", i1 false, i1 false}
!88 = !{!"../kernel/torture.c", i32 487, i32 6}
!89 = distinct !{null, !90, !"__already_done", i1 false, i1 false}
!90 = !{!"../kernel/torture.c", i32 490, i32 6}
!91 = !{ptr @__ksymtab_torture_shuffle_task_register, !92, !"__ksymtab_torture_shuffle_task_register", i1 false, i1 false}
!92 = !{!"../kernel/torture.c", i32 497, i32 1}
!93 = !{ptr @.str.25, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../kernel/torture.c", i32 573, i32 3}
!95 = !{ptr @.str.26, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @torture_shuffle_init._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @torture_shuffle_init._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.27, !94, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.28, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../kernel/torture.c", i32 578, i32 9}
!101 = !{ptr @.str.29, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.30, !100, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @__ksymtab_torture_shuffle_init, !104, !"__ksymtab_torture_shuffle_init", i1 false, i1 false}
!104 = !{!"../kernel/torture.c", i32 580, i32 1}
!105 = !{ptr @.str.31, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../kernel/torture.c", i32 611, i32 3}
!107 = !{ptr @.str.32, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @torture_shutdown_absorb._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @torture_shutdown_absorb._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @__ksymtab_torture_shutdown_absorb, !111, !"__ksymtab_torture_shutdown_absorb", i1 false, i1 false}
!111 = !{!"../kernel/torture.c", i32 616, i32 1}
!112 = !{ptr @.str.33, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../kernel/torture.c", i32 666, i32 10}
!114 = !{ptr @.str.34, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.35, !113, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @__ksymtab_torture_shutdown_init, !117, !"__ksymtab_torture_shutdown_init", i1 false, i1 false}
!117 = !{!"../kernel/torture.c", i32 671, i32 1}
!118 = !{ptr @__ksymtab_stutter_wait, !119, !"__ksymtab_stutter_wait", i1 false, i1 false}
!119 = !{!"../kernel/torture.c", i32 750, i32 1}
!120 = !{ptr @.str.36, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../kernel/torture.c", i32 790, i32 9}
!122 = !{ptr @.str.37, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.38, !121, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @__ksymtab_torture_stutter_init, !125, !"__ksymtab_torture_stutter_init", i1 false, i1 false}
!125 = !{!"../kernel/torture.c", i32 792, i32 1}
!126 = !{ptr @.str.39, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../kernel/torture.c", i32 819, i32 3}
!128 = !{ptr @.str.40, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @torture_init_begin._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @torture_init_begin._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.42, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../kernel/torture.c", i32 821, i32 3}
!133 = !{ptr @torture_init_begin._entry.41, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @torture_init_begin._entry_ptr.43, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @__ksymtab_torture_init_begin, !136, !"__ksymtab_torture_init_begin", i1 false, i1 false}
!136 = !{!"../kernel/torture.c", i32 830, i32 1}
!137 = !{ptr @__ksymtab_torture_init_end, !138, !"__ksymtab_torture_init_end", i1 false, i1 false}
!138 = !{!"../kernel/torture.c", i32 840, i32 1}
!139 = !{ptr @.str.44, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../kernel/torture.c", i32 861, i32 3}
!141 = !{ptr @.str.45, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @torture_cleanup_begin._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @torture_cleanup_begin._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @__ksymtab_torture_cleanup_begin, !145, !"__ksymtab_torture_cleanup_begin", i1 false, i1 false}
!145 = !{!"../kernel/torture.c", i32 874, i32 1}
!146 = !{ptr @__ksymtab_torture_cleanup_end, !147, !"__ksymtab_torture_cleanup_end", i1 false, i1 false}
!147 = !{!"../kernel/torture.c", i32 882, i32 1}
!148 = !{ptr @__ksymtab_torture_must_stop, !149, !"__ksymtab_torture_must_stop", i1 false, i1 false}
!149 = !{!"../kernel/torture.c", i32 891, i32 1}
!150 = !{ptr @__ksymtab_torture_must_stop_irq, !151, !"__ksymtab_torture_must_stop_irq", i1 false, i1 false}
!151 = !{!"../kernel/torture.c", i32 901, i32 1}
!152 = !{ptr @.str.46, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../kernel/torture.c", i32 914, i32 29}
!154 = !{ptr @.str.47, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../kernel/torture.c", i32 915, i32 2}
!156 = !{ptr @.str.48, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @torture_kthread_stopping._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @torture_kthread_stopping._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @__ksymtab_torture_kthread_stopping, !160, !"__ksymtab_torture_kthread_stopping", i1 false, i1 false}
!160 = !{!"../kernel/torture.c", i32 921, i32 1}
!161 = !{ptr @.str.49, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../kernel/torture.c", i32 933, i32 2}
!163 = !{ptr @_torture_create_kthread._entry, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @_torture_create_kthread._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.50, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../kernel/torture.c", i32 934, i32 8}
!167 = !{ptr @_torture_create_kthread._entry.51, !168, !"_entry", i1 false, i1 false}
!168 = !{!"../kernel/torture.c", i32 937, i32 3}
!169 = !{ptr @_torture_create_kthread._entry_ptr.52, !168, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @__ksymtab__torture_create_kthread, !171, !"__ksymtab__torture_create_kthread", i1 false, i1 false}
!171 = !{!"../kernel/torture.c", i32 943, i32 1}
!172 = !{ptr @.str.53, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../kernel/torture.c", i32 952, i32 2}
!174 = !{ptr @_torture_stop_kthread._entry, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @_torture_stop_kthread._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @__ksymtab__torture_stop_kthread, !177, !"__ksymtab__torture_stop_kthread", i1 false, i1 false}
!177 = !{!"../kernel/torture.c", i32 956, i32 1}
!178 = !{ptr @disable_onoff_at_boot, !179, !"disable_onoff_at_boot", i1 false, i1 false}
!179 = !{!"../kernel/torture.c", i32 45, i32 13}
!180 = !{ptr @ftrace_dump_at_shutdown, !181, !"ftrace_dump_at_shutdown", i1 false, i1 false}
!181 = !{!"../kernel/torture.c", i32 48, i32 13}
!182 = !{ptr @verbose_sleep_frequency, !183, !"verbose_sleep_frequency", i1 false, i1 false}
!183 = !{!"../kernel/torture.c", i32 51, i32 12}
!184 = !{ptr @torture_type, !185, !"torture_type", i1 false, i1 false}
!185 = !{!"../kernel/torture.c", i32 57, i32 14}
!186 = !{ptr @verbose, !187, !"verbose", i1 false, i1 false}
!187 = !{!"../kernel/torture.c", i32 58, i32 12}
!188 = !{ptr @verbose_sleep_counter, !189, !"verbose_sleep_counter", i1 false, i1 false}
!189 = !{!"../kernel/torture.c", i32 67, i32 17}
!190 = !{ptr @onoff_task, !191, !"onoff_task", i1 false, i1 false}
!191 = !{!"../kernel/torture.c", i32 163, i32 28}
!192 = !{ptr @onoff_holdoff, !193, !"onoff_holdoff", i1 false, i1 false}
!193 = !{!"../kernel/torture.c", i32 164, i32 13}
!194 = !{ptr @onoff_interval, !195, !"onoff_interval", i1 false, i1 false}
!195 = !{!"../kernel/torture.c", i32 165, i32 13}
!196 = !{ptr @onoff_f, !197, !"onoff_f", i1 false, i1 false}
!197 = !{!"../kernel/torture.c", i32 166, i32 26}
!198 = !{ptr @n_offline_attempts, !199, !"n_offline_attempts", i1 false, i1 false}
!199 = !{!"../kernel/torture.c", i32 167, i32 13}
!200 = !{ptr @n_offline_successes, !201, !"n_offline_successes", i1 false, i1 false}
!201 = !{!"../kernel/torture.c", i32 168, i32 13}
!202 = !{ptr @sum_offline, !203, !"sum_offline", i1 false, i1 false}
!203 = !{!"../kernel/torture.c", i32 169, i32 22}
!204 = !{ptr @max_offline, !205, !"max_offline", i1 false, i1 false}
!205 = !{!"../kernel/torture.c", i32 171, i32 12}
!206 = !{ptr @n_online_attempts, !207, !"n_online_attempts", i1 false, i1 false}
!207 = !{!"../kernel/torture.c", i32 172, i32 13}
!208 = !{ptr @n_online_successes, !209, !"n_online_successes", i1 false, i1 false}
!209 = !{!"../kernel/torture.c", i32 173, i32 13}
!210 = !{ptr @sum_online, !211, !"sum_online", i1 false, i1 false}
!211 = !{!"../kernel/torture.c", i32 174, i32 22}
!212 = !{ptr @max_online, !213, !"max_online", i1 false, i1 false}
!213 = !{!"../kernel/torture.c", i32 176, i32 12}
!214 = !{ptr @shuffle_interval, !215, !"shuffle_interval", i1 false, i1 false}
!215 = !{!"../kernel/torture.c", i32 472, i32 13}
!216 = !{ptr @shuffler_task, !217, !"shuffler_task", i1 false, i1 false}
!217 = !{!"../kernel/torture.c", i32 473, i32 28}
!218 = !{ptr @shuffle_tmp_mask, !219, !"shuffle_tmp_mask", i1 false, i1 false}
!219 = !{!"../kernel/torture.c", i32 474, i32 22}
!220 = !{ptr @shuffle_idle_cpu, !221, !"shuffle_idle_cpu", i1 false, i1 false}
!221 = !{!"../kernel/torture.c", i32 475, i32 12}
!222 = !{ptr @shutdown_task, !223, !"shutdown_task", i1 false, i1 false}
!223 = !{!"../kernel/torture.c", i32 600, i32 28}
!224 = !{ptr @shutdown_time, !225, !"shutdown_time", i1 false, i1 false}
!225 = !{!"../kernel/torture.c", i32 601, i32 16}
!226 = !{ptr @torture_shutdown_hook, !227, !"torture_shutdown_hook", i1 false, i1 false}
!227 = !{!"../kernel/torture.c", i32 602, i32 15}
!228 = !{ptr @stutter_task, !229, !"stutter_task", i1 false, i1 false}
!229 = !{!"../kernel/torture.c", i32 713, i32 28}
!230 = !{ptr @stutter_pause_test, !231, !"stutter_pause_test", i1 false, i1 false}
!231 = !{!"../kernel/torture.c", i32 714, i32 12}
!232 = !{ptr @stutter, !233, !"stutter", i1 false, i1 false}
!233 = !{!"../kernel/torture.c", i32 715, i32 12}
!234 = !{ptr @stutter_gap, !235, !"stutter_gap", i1 false, i1 false}
!235 = !{!"../kernel/torture.c", i32 716, i32 12}
!236 = !{ptr @__param_str_disable_onoff_at_boot, !6, !"__param_str_disable_onoff_at_boot", i1 false, i1 false}
!237 = !{ptr @__param_str_ftrace_dump_at_shutdown, !9, !"__param_str_ftrace_dump_at_shutdown", i1 false, i1 false}
!238 = !{ptr @__param_str_verbose_sleep_frequency, !12, !"__param_str_verbose_sleep_frequency", i1 false, i1 false}
!239 = !{ptr @__param_str_verbose_sleep_duration, !15, !"__param_str_verbose_sleep_duration", i1 false, i1 false}
!240 = !{ptr @verbose_sleep_duration, !241, !"verbose_sleep_duration", i1 false, i1 false}
!241 = !{!"../kernel/torture.c", i32 54, i32 12}
!242 = !{ptr @torture_online_cpus, !243, !"torture_online_cpus", i1 false, i1 false}
!243 = !{!"../kernel/torture.c", i32 178, i32 12}
!244 = distinct !{null, !245, !"__already_done", i1 false, i1 false}
!245 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!246 = !{ptr @.str.54, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @torture_onoff._entry, !248, !"_entry", i1 false, i1 false}
!248 = !{!"../kernel/torture.c", i32 341, i32 2}
!249 = !{ptr @torture_onoff._entry_ptr, !248, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.55, !248, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @.str.56, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../kernel/torture.c", i32 345, i32 21}
!253 = !{ptr @torture_onoff._entry.57, !254, !"_entry", i1 false, i1 false}
!254 = !{!"../kernel/torture.c", i32 347, i32 3}
!255 = !{ptr @torture_onoff._entry_ptr.58, !254, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.59, !254, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @torture_onoff._entry.60, !258, !"_entry", i1 false, i1 false}
!258 = !{!"../kernel/torture.c", i32 352, i32 3}
!259 = !{ptr @torture_onoff._entry_ptr.61, !258, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.62, !258, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @torture_onoff._entry.63, !262, !"_entry", i1 false, i1 false}
!262 = !{!"../kernel/torture.c", i32 354, i32 3}
!263 = !{ptr @torture_onoff._entry_ptr.64, !262, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.65, !262, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @.str.66, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../kernel/torture.c", i32 373, i32 21}
!267 = !{ptr @.str.67, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../kernel/torture.c", i32 323, i32 4}
!269 = !{ptr @.str.68, !268, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @torture_online_all._entry, !268, !"_entry", i1 false, i1 false}
!271 = !{ptr @torture_online_all._entry_ptr, !268, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @min_online, !273, !"min_online", i1 false, i1 false}
!273 = !{!"../kernel/torture.c", i32 175, i32 12}
!274 = !{ptr @min_offline, !275, !"min_offline", i1 false, i1 false}
!275 = !{!"../kernel/torture.c", i32 170, i32 12}
!276 = !{ptr @.str.69, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../kernel/torture.c", i32 477, i32 8}
!278 = !{ptr @.str.70, !277, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @shuffle_task_mutex, !277, !"shuffle_task_mutex", i1 false, i1 false}
!280 = !{ptr @shuffle_task_list, !281, !"shuffle_task_list", i1 false, i1 false}
!281 = !{!"../kernel/torture.c", i32 476, i32 25}
!282 = !{ptr @torture_shuffle._entry, !283, !"_entry", i1 false, i1 false}
!283 = !{!"../kernel/torture.c", i32 553, i32 2}
!284 = !{ptr @torture_shuffle._entry_ptr, !283, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.71, !283, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @fullstop, !287, !"fullstop", i1 false, i1 false}
!287 = !{!"../kernel/torture.c", i32 64, i32 12}
!288 = !{ptr @torture_shutdown._entry, !289, !"_entry", i1 false, i1 false}
!289 = !{!"../kernel/torture.c", i32 626, i32 2}
!290 = !{ptr @torture_shutdown._entry_ptr, !289, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.72, !289, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @.str.74, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../kernel/torture.c", i32 631, i32 4}
!294 = !{ptr @torture_shutdown._entry.73, !293, !"_entry", i1 false, i1 false}
!295 = !{ptr @torture_shutdown._entry_ptr.75, !293, !"_entry_ptr", i1 false, i1 false}
!296 = distinct !{null, !297, !"__already_done", i1 false, i1 false}
!297 = !{!"../kernel/torture.c", i32 635, i32 3}
!298 = !{ptr @torture_shutdown._entry.76, !299, !"_entry", i1 false, i1 false}
!299 = !{!"../kernel/torture.c", i32 646, i32 2}
!300 = !{ptr @torture_shutdown._entry_ptr.77, !299, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.78, !299, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @torture_shutdown._entry.79, !303, !"_entry", i1 false, i1 false}
!303 = !{!"../kernel/torture.c", i32 651, i32 3}
!304 = !{ptr @torture_shutdown._entry_ptr.80, !303, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @.str.81, !303, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @torture_shutdown.___rfd_beenhere, !307, !"___rfd_beenhere", i1 false, i1 false}
!307 = !{!"../kernel/torture.c", i32 653, i32 3}
!308 = !{ptr @torture_stutter._entry, !309, !"_entry", i1 false, i1 false}
!309 = !{!"../kernel/torture.c", i32 761, i32 2}
!310 = !{ptr @torture_stutter._entry_ptr, !309, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.82, !309, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @.str.83, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../kernel/torture.c", i32 65, i32 8}
!314 = !{ptr @.str.84, !313, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @fullstop_mutex, !313, !"fullstop_mutex", i1 false, i1 false}
!316 = !{ptr @torture_shutdown_nb, !317, !"torture_shutdown_nb", i1 false, i1 false}
!317 = !{!"../kernel/torture.c", i32 690, i32 30}
!318 = !{ptr @.str.85, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../kernel/torture.c", i32 681, i32 3}
!320 = !{ptr @torture_shutdown_notify._entry, !319, !"_entry", i1 false, i1 false}
!321 = !{ptr @torture_shutdown_notify._entry_ptr, !319, !"_entry_ptr", i1 false, i1 false}
!322 = !{ptr @.str.86, !319, !"<string literal>", i1 false, i1 false}
!323 = !{ptr @torture_shutdown_notify._entry.87, !324, !"_entry", i1 false, i1 false}
!324 = !{!"../kernel/torture.c", i32 684, i32 3}
!325 = !{ptr @torture_shutdown_notify._entry_ptr.88, !324, !"_entry_ptr", i1 false, i1 false}
!326 = !{ptr @.str.89, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../kernel/torture.c", i32 702, i32 3}
!328 = !{ptr @torture_shutdown_cleanup._entry, !327, !"_entry", i1 false, i1 false}
!329 = !{ptr @torture_shutdown_cleanup._entry_ptr, !327, !"_entry_ptr", i1 false, i1 false}
!330 = !{ptr @.str.90, !327, !"<string literal>", i1 false, i1 false}
!331 = !{ptr @.str.91, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../kernel/torture.c", i32 589, i32 3}
!333 = !{ptr @torture_shuffle_cleanup._entry, !332, !"_entry", i1 false, i1 false}
!334 = !{ptr @torture_shuffle_cleanup._entry_ptr, !332, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @.str.92, !332, !"<string literal>", i1 false, i1 false}
!336 = !{ptr @.str.93, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../kernel/torture.c", i32 801, i32 2}
!338 = !{ptr @torture_stutter_cleanup._entry, !337, !"_entry", i1 false, i1 false}
!339 = !{ptr @torture_stutter_cleanup._entry_ptr, !337, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.94, !337, !"<string literal>", i1 false, i1 false}
!341 = !{ptr @.str.95, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../kernel/torture.c", i32 405, i32 2}
!343 = !{ptr @torture_onoff_cleanup._entry, !342, !"_entry", i1 false, i1 false}
!344 = !{ptr @torture_onoff_cleanup._entry_ptr, !342, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @.str.96, !342, !"<string literal>", i1 false, i1 false}
!346 = !{!"sp"}
!347 = !{i32 1, !"wchar_size", i32 2}
!348 = !{i32 1, !"min_enum_size", i32 4}
!349 = !{i32 8, !"branch-target-enforcement", i32 0}
!350 = !{i32 8, !"sign-return-address", i32 0}
!351 = !{i32 8, !"sign-return-address-all", i32 0}
!352 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!353 = !{i32 7, !"uwtable", i32 1}
!354 = !{i32 7, !"frame-pointer", i32 2}
!355 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!356 = !{i64 2148319036}
!357 = !{i64 2148234345, i64 2148234377, i64 2148234406, i64 2148234440, i64 2148234471, i64 2148234494}
!358 = !{i64 2148319265}
!359 = !{i64 2153611995}
!360 = !{!"branch_weights", i32 2000, i32 1}
!361 = !{!"branch_weights", i32 1, i32 2000}
!362 = !{i8 0, i8 2}
!363 = !{i64 1138328, i64 1138355}
!364 = !{i64 1139023, i64 1139050, i64 1139083, i64 1139104, i64 1139131, i64 1139157}
!365 = !{i64 2153708541}
!366 = !{i64 2148493465}
!367 = !{i64 740393, i64 740410, i64 740434, i64 740460, i64 740478}
!368 = !{i64 2148493835}
!369 = !{i64 2153746621}
!370 = !{i64 2153750067}
