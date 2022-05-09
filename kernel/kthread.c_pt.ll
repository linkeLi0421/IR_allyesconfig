; ModuleID = '/llk/IR_all_yes/kernel/kthread.c_pt.bc'
source_filename = "../kernel/kthread.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+kthread_should_stop\22, \22a\22\09"
module asm "\09.weak\09__crc_kthread_should_stop\09\09\09\09"
module asm "\09.long\09__crc_kthread_should_stop\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kthread_should_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22kthread_should_stop\22\09\09\09\09\09"
module asm "__kstrtabns_kthread_should_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__kthread_should_park\22, \22a\22\09"
module asm "\09.weak\09__crc___kthread_should_park\09\09\09\09"
module asm "\09.long\09__crc___kthread_should_park\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kthread_should_park:\09\09\09\09\09"
module asm "\09.asciz \09\22__kthread_should_park\22\09\09\09\09\09"
module asm "__kstrtabns___kthread_should_park:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kthread_should_park\22, \22a\22\09"
module asm "\09.weak\09__crc_kthread_should_park\09\09\09\09"
module asm "\09.long\09__crc_kthread_should_park\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kthread_should_park:\09\09\09\09\09"
module asm "\09.asciz \09\22kthread_should_park\22\09\09\09\09\09"
module asm "__kstrtabns_kthread_should_park:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kthread_freezable_should_stop\22, \22a\22\09"
module asm "\09.weak\09__crc_kthread_freezable_should_stop\09\09\09\09"
module asm "\09.long\09__crc_kthread_freezable_should_stop\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kthread_freezable_should_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22kthread_freezable_should_stop\22\09\09\09\09\09"
module asm "__kstrtabns_kthread_freezable_should_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kthread_func\22, \22a\22\09"
module asm "\09.weak\09__crc_kthread_func\09\09\09\09"
module asm "\09.long\09__crc_kthread_func\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kthread_func:\09\09\09\09\09"
module asm "\09.asciz \09\22kthread_func\22\09\09\09\09\09"
module asm "__kstrtabns_kthread_func:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kthread_data\22, \22a\22\09"
module asm "\09.weak\09__crc_kthread_data\09\09\09\09"
module asm "\09.long\09__crc_kthread_data\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kthread_data:\09\09\09\09\09"
module asm "\09.asciz \09\22kthread_data\22\09\09\09\09\09"
module asm "__kstrtabns_kthread_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kthread_parkme\22, \22a\22\09"
module asm "\09.weak\09__crc_kthread_parkme\09\09\09\09"
module asm "\09.long\09__crc_kthread_parkme\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kthread_parkme:\09\09\09\09\09"
module asm "\09.asciz \09\22kthread_parkme\22\09\09\09\09\09"
module asm "__kstrtabns_kthread_parkme:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kthread_complete_and_exit\22, \22a\22\09"
module asm "\09.weak\09__crc_kthread_complete_and_exit\09\09\09\09"
module asm "\09.long\09__crc_kthread_complete_and_exit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kthread_complete_and_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22kthread_complete_and_exit\22\09\09\09\09\09"
module asm "__kstrtabns_kthread_complete_and_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kthread_create_on_node\22, \22a\22\09"
module asm "\09.weak\09__crc_kthread_create_on_node\09\09\09\09"
module asm "\09.long\09__crc_kthread_create_on_node\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kthread_create_on_node:\09\09\09\09\09"
module asm "\09.asciz \09\22kthread_create_on_node\22\09\09\09\09\09"
module asm "__kstrtabns_kthread_create_on_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kthread_bind\22, \22a\22\09"
module asm "\09.weak\09__crc_kthread_bind\09\09\09\09"
module asm "\09.long\09__crc_kthread_bind\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kthread_bind:\09\09\09\09\09"
module asm "\09.asciz \09\22kthread_bind\22\09\09\09\09\09"
module asm "__kstrtabns_kthread_bind:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kthread_create_on_cpu\22, \22a\22\09"
module asm "\09.weak\09__crc_kthread_create_on_cpu\09\09\09\09"
module asm "\09.long\09__crc_kthread_create_on_cpu\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kthread_create_on_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22kthread_create_on_cpu\22\09\09\09\09\09"
module asm "__kstrtabns_kthread_create_on_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kthread_unpark\22, \22a\22\09"
module asm "\09.weak\09__crc_kthread_unpark\09\09\09\09"
module asm "\09.long\09__crc_kthread_unpark\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kthread_unpark:\09\09\09\09\09"
module asm "\09.asciz \09\22kthread_unpark\22\09\09\09\09\09"
module asm "__kstrtabns_kthread_unpark:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kthread_park\22, \22a\22\09"
module asm "\09.weak\09__crc_kthread_park\09\09\09\09"
module asm "\09.long\09__crc_kthread_park\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kthread_park:\09\09\09\09\09"
module asm "\09.asciz \09\22kthread_park\22\09\09\09\09\09"
module asm "__kstrtabns_kthread_park:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kthread_stop\22, \22a\22\09"
module asm "\09.weak\09__crc_kthread_stop\09\09\09\09"
module asm "\09.long\09__crc_kthread_stop\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kthread_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22kthread_stop\22\09\09\09\09\09"
module asm "__kstrtabns_kthread_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__kthread_init_worker\22, \22a\22\09"
module asm "\09.weak\09__crc___kthread_init_worker\09\09\09\09"
module asm "\09.long\09__crc___kthread_init_worker\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___kthread_init_worker:\09\09\09\09\09"
module asm "\09.asciz \09\22__kthread_init_worker\22\09\09\09\09\09"
module asm "__kstrtabns___kthread_init_worker:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kthread_worker_fn\22, \22a\22\09"
module asm "\09.weak\09__crc_kthread_worker_fn\09\09\09\09"
module asm "\09.long\09__crc_kthread_worker_fn\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kthread_worker_fn:\09\09\09\09\09"
module asm "\09.asciz \09\22kthread_worker_fn\22\09\09\09\09\09"
module asm "__kstrtabns_kthread_worker_fn:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kthread_create_worker\22, \22a\22\09"
module asm "\09.weak\09__crc_kthread_create_worker\09\09\09\09"
module asm "\09.long\09__crc_kthread_create_worker\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kthread_create_worker:\09\09\09\09\09"
module asm "\09.asciz \09\22kthread_create_worker\22\09\09\09\09\09"
module asm "__kstrtabns_kthread_create_worker:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kthread_create_worker_on_cpu\22, \22a\22\09"
module asm "\09.weak\09__crc_kthread_create_worker_on_cpu\09\09\09\09"
module asm "\09.long\09__crc_kthread_create_worker_on_cpu\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kthread_create_worker_on_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22kthread_create_worker_on_cpu\22\09\09\09\09\09"
module asm "__kstrtabns_kthread_create_worker_on_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kthread_queue_work\22, \22a\22\09"
module asm "\09.weak\09__crc_kthread_queue_work\09\09\09\09"
module asm "\09.long\09__crc_kthread_queue_work\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kthread_queue_work:\09\09\09\09\09"
module asm "\09.asciz \09\22kthread_queue_work\22\09\09\09\09\09"
module asm "__kstrtabns_kthread_queue_work:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kthread_delayed_work_timer_fn\22, \22a\22\09"
module asm "\09.weak\09__crc_kthread_delayed_work_timer_fn\09\09\09\09"
module asm "\09.long\09__crc_kthread_delayed_work_timer_fn\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kthread_delayed_work_timer_fn:\09\09\09\09\09"
module asm "\09.asciz \09\22kthread_delayed_work_timer_fn\22\09\09\09\09\09"
module asm "__kstrtabns_kthread_delayed_work_timer_fn:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kthread_queue_delayed_work\22, \22a\22\09"
module asm "\09.weak\09__crc_kthread_queue_delayed_work\09\09\09\09"
module asm "\09.long\09__crc_kthread_queue_delayed_work\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kthread_queue_delayed_work:\09\09\09\09\09"
module asm "\09.asciz \09\22kthread_queue_delayed_work\22\09\09\09\09\09"
module asm "__kstrtabns_kthread_queue_delayed_work:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kthread_flush_work\22, \22a\22\09"
module asm "\09.weak\09__crc_kthread_flush_work\09\09\09\09"
module asm "\09.long\09__crc_kthread_flush_work\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kthread_flush_work:\09\09\09\09\09"
module asm "\09.asciz \09\22kthread_flush_work\22\09\09\09\09\09"
module asm "__kstrtabns_kthread_flush_work:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kthread_mod_delayed_work\22, \22a\22\09"
module asm "\09.weak\09__crc_kthread_mod_delayed_work\09\09\09\09"
module asm "\09.long\09__crc_kthread_mod_delayed_work\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kthread_mod_delayed_work:\09\09\09\09\09"
module asm "\09.asciz \09\22kthread_mod_delayed_work\22\09\09\09\09\09"
module asm "__kstrtabns_kthread_mod_delayed_work:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kthread_cancel_work_sync\22, \22a\22\09"
module asm "\09.weak\09__crc_kthread_cancel_work_sync\09\09\09\09"
module asm "\09.long\09__crc_kthread_cancel_work_sync\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kthread_cancel_work_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22kthread_cancel_work_sync\22\09\09\09\09\09"
module asm "__kstrtabns_kthread_cancel_work_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kthread_cancel_delayed_work_sync\22, \22a\22\09"
module asm "\09.weak\09__crc_kthread_cancel_delayed_work_sync\09\09\09\09"
module asm "\09.long\09__crc_kthread_cancel_delayed_work_sync\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kthread_cancel_delayed_work_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22kthread_cancel_delayed_work_sync\22\09\09\09\09\09"
module asm "__kstrtabns_kthread_cancel_delayed_work_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kthread_flush_worker\22, \22a\22\09"
module asm "\09.weak\09__crc_kthread_flush_worker\09\09\09\09"
module asm "\09.long\09__crc_kthread_flush_worker\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kthread_flush_worker:\09\09\09\09\09"
module asm "\09.asciz \09\22kthread_flush_worker\22\09\09\09\09\09"
module asm "__kstrtabns_kthread_flush_worker:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kthread_destroy_worker\22, \22a\22\09"
module asm "\09.weak\09__crc_kthread_destroy_worker\09\09\09\09"
module asm "\09.long\09__crc_kthread_destroy_worker\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kthread_destroy_worker:\09\09\09\09\09"
module asm "\09.asciz \09\22kthread_destroy_worker\22\09\09\09\09\09"
module asm "__kstrtabns_kthread_destroy_worker:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kthread_use_mm\22, \22a\22\09"
module asm "\09.weak\09__crc_kthread_use_mm\09\09\09\09"
module asm "\09.long\09__crc_kthread_use_mm\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kthread_use_mm:\09\09\09\09\09"
module asm "\09.asciz \09\22kthread_use_mm\22\09\09\09\09\09"
module asm "__kstrtabns_kthread_use_mm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kthread_unuse_mm\22, \22a\22\09"
module asm "\09.weak\09__crc_kthread_unuse_mm\09\09\09\09"
module asm "\09.long\09__crc_kthread_unuse_mm\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kthread_unuse_mm:\09\09\09\09\09"
module asm "\09.asciz \09\22kthread_unuse_mm\22\09\09\09\09\09"
module asm "__kstrtabns_kthread_unuse_mm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kthread_associate_blkcg\22, \22a\22\09"
module asm "\09.weak\09__crc_kthread_associate_blkcg\09\09\09\09"
module asm "\09.long\09__crc_kthread_associate_blkcg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kthread_associate_blkcg:\09\09\09\09\09"
module asm "\09.asciz \09\22kthread_associate_blkcg\22\09\09\09\09\09"
module asm "__kstrtabns_kthread_associate_blkcg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+kthread_blkcg\22, \22a\22\09"
module asm "\09.weak\09__crc_kthread_blkcg\09\09\09\09"
module asm "\09.long\09__crc_kthread_blkcg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kthread_blkcg:\09\09\09\09\09"
module asm "\09.asciz \09\22kthread_blkcg\22\09\09\09\09\09"
module asm "__kstrtabns_kthread_blkcg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.nodemask_t = type { [1 x i32] }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.18 }
%union.anon.18 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.sched_param = type { i32 }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.67, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon }
%struct.llist_node = type { ptr }
%union.anon = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.58 }
%union.anon.58 = type { %struct.anon.59 }
%struct.anon.59 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.67 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.kthread = type { i32, i32, i32, ptr, ptr, %struct.mm_segment_t, %struct.completion, %struct.completion, ptr, ptr }
%struct.mm_segment_t = type {}
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__va_list = type { ptr }
%struct.kthread_create_info = type { ptr, ptr, i32, ptr, ptr, %struct.list_head }
%struct.anon.10 = type { [16 x i8], %struct.lockdep_map }
%struct.kthread_worker = type { i32, %struct.raw_spinlock, %struct.list_head, %struct.list_head, ptr, ptr }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.kthread_delayed_work = type { %struct.kthread_work, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.kthread_flush_work = type { %struct.kthread_work, %struct.completion }
%struct.anon.2 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mm_struct = type { %struct.anon.2, [0 x i32] }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.percpu_ref_data = type { %struct.atomic_t, ptr, ptr, i8, %struct.callback_head, ptr }

@set_kthread_struct.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"kernel/kthread.c\00", [47 x i8] zeroinitializer }, align 32
@free_kthread_struct.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_kthread_should_stop = external dso_local constant [0 x i8], align 1
@__kstrtabns_kthread_should_stop = external dso_local constant [0 x i8], align 1
@__ksymtab_kthread_should_stop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kthread_should_stop to i32), ptr @__kstrtab_kthread_should_stop, ptr @__kstrtabns_kthread_should_stop }, section "___ksymtab+kthread_should_stop", align 4
@__kstrtab___kthread_should_park = external dso_local constant [0 x i8], align 1
@__kstrtabns___kthread_should_park = external dso_local constant [0 x i8], align 1
@__ksymtab___kthread_should_park = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kthread_should_park to i32), ptr @__kstrtab___kthread_should_park, ptr @__kstrtabns___kthread_should_park }, section "___ksymtab_gpl+__kthread_should_park", align 4
@__kstrtab_kthread_should_park = external dso_local constant [0 x i8], align 1
@__kstrtabns_kthread_should_park = external dso_local constant [0 x i8], align 1
@__ksymtab_kthread_should_park = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kthread_should_park to i32), ptr @__kstrtab_kthread_should_park, ptr @__kstrtabns_kthread_should_park }, section "___ksymtab_gpl+kthread_should_park", align 4
@__kstrtab_kthread_freezable_should_stop = external dso_local constant [0 x i8], align 1
@__kstrtabns_kthread_freezable_should_stop = external dso_local constant [0 x i8], align 1
@__ksymtab_kthread_freezable_should_stop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kthread_freezable_should_stop to i32), ptr @__kstrtab_kthread_freezable_should_stop, ptr @__kstrtabns_kthread_freezable_should_stop }, section "___ksymtab_gpl+kthread_freezable_should_stop", align 4
@__kstrtab_kthread_func = external dso_local constant [0 x i8], align 1
@__kstrtabns_kthread_func = external dso_local constant [0 x i8], align 1
@__ksymtab_kthread_func = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kthread_func to i32), ptr @__kstrtab_kthread_func, ptr @__kstrtabns_kthread_func }, section "___ksymtab_gpl+kthread_func", align 4
@__kstrtab_kthread_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_kthread_data = external dso_local constant [0 x i8], align 1
@__ksymtab_kthread_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kthread_data to i32), ptr @__kstrtab_kthread_data, ptr @__kstrtabns_kthread_data }, section "___ksymtab_gpl+kthread_data", align 4
@__kstrtab_kthread_parkme = external dso_local constant [0 x i8], align 1
@__kstrtabns_kthread_parkme = external dso_local constant [0 x i8], align 1
@__ksymtab_kthread_parkme = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kthread_parkme to i32), ptr @__kstrtab_kthread_parkme, ptr @__kstrtabns_kthread_parkme }, section "___ksymtab_gpl+kthread_parkme", align 4
@__kstrtab_kthread_complete_and_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_kthread_complete_and_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_kthread_complete_and_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kthread_complete_and_exit to i32), ptr @__kstrtab_kthread_complete_and_exit, ptr @__kstrtabns_kthread_complete_and_exit }, section "___ksymtab+kthread_complete_and_exit", align 4
@__kstrtab_kthread_create_on_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_kthread_create_on_node = external dso_local constant [0 x i8], align 1
@__ksymtab_kthread_create_on_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kthread_create_on_node to i32), ptr @__kstrtab_kthread_create_on_node, ptr @__kstrtabns_kthread_create_on_node }, section "___ksymtab+kthread_create_on_node", align 4
@__kstrtab_kthread_bind = external dso_local constant [0 x i8], align 1
@__kstrtabns_kthread_bind = external dso_local constant [0 x i8], align 1
@__ksymtab_kthread_bind = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kthread_bind to i32), ptr @__kstrtab_kthread_bind, ptr @__kstrtabns_kthread_bind }, section "___ksymtab+kthread_bind", align 4
@__kstrtab_kthread_create_on_cpu = external dso_local constant [0 x i8], align 1
@__kstrtabns_kthread_create_on_cpu = external dso_local constant [0 x i8], align 1
@__ksymtab_kthread_create_on_cpu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kthread_create_on_cpu to i32), ptr @__kstrtab_kthread_create_on_cpu, ptr @__kstrtabns_kthread_create_on_cpu }, section "___ksymtab+kthread_create_on_cpu", align 4
@kthread_set_per_cpu.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_kthread_unpark = external dso_local constant [0 x i8], align 1
@__kstrtabns_kthread_unpark = external dso_local constant [0 x i8], align 1
@__ksymtab_kthread_unpark = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kthread_unpark to i32), ptr @__kstrtab_kthread_unpark, ptr @__kstrtabns_kthread_unpark }, section "___ksymtab_gpl+kthread_unpark", align 4
@kthread_park.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kthread_park.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_kthread_park = external dso_local constant [0 x i8], align 1
@__kstrtabns_kthread_park = external dso_local constant [0 x i8], align 1
@__ksymtab_kthread_park = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kthread_park to i32), ptr @__kstrtab_kthread_park, ptr @__kstrtabns_kthread_park }, section "___ksymtab_gpl+kthread_park", align 4
@__kstrtab_kthread_stop = external dso_local constant [0 x i8], align 1
@__kstrtabns_kthread_stop = external dso_local constant [0 x i8], align 1
@__ksymtab_kthread_stop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kthread_stop to i32), ptr @__kstrtab_kthread_stop, ptr @__kstrtabns_kthread_stop }, section "___ksymtab+kthread_stop", align 4
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"kthreadd\00", [23 x i8] zeroinitializer }, align 32
@node_states = external dso_local local_unnamed_addr global [7 x %struct.nodemask_t], align 4
@kthread_create_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @kthread_create_list, ptr @kthread_create_list }, [24 x i8] zeroinitializer }, align 32
@kthread_create_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.9 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@__kthread_init_worker.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&worker->lock\00", [18 x i8] zeroinitializer }, align 32
@__kstrtab___kthread_init_worker = external dso_local constant [0 x i8], align 1
@__kstrtabns___kthread_init_worker = external dso_local constant [0 x i8], align 1
@__ksymtab___kthread_init_worker = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__kthread_init_worker to i32), ptr @__kstrtab___kthread_init_worker, ptr @__kstrtabns___kthread_init_worker }, section "___ksymtab_gpl+__kthread_init_worker", align 4
@__kstrtab_kthread_worker_fn = external dso_local constant [0 x i8], align 1
@__kstrtabns_kthread_worker_fn = external dso_local constant [0 x i8], align 1
@__ksymtab_kthread_worker_fn = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kthread_worker_fn to i32), ptr @__kstrtab_kthread_worker_fn, ptr @__kstrtabns_kthread_worker_fn }, section "___ksymtab_gpl+kthread_worker_fn", align 4
@__kstrtab_kthread_create_worker = external dso_local constant [0 x i8], align 1
@__kstrtabns_kthread_create_worker = external dso_local constant [0 x i8], align 1
@__ksymtab_kthread_create_worker = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kthread_create_worker to i32), ptr @__kstrtab_kthread_create_worker, ptr @__kstrtabns_kthread_create_worker }, section "___ksymtab+kthread_create_worker", align 4
@__kstrtab_kthread_create_worker_on_cpu = external dso_local constant [0 x i8], align 1
@__kstrtabns_kthread_create_worker_on_cpu = external dso_local constant [0 x i8], align 1
@__ksymtab_kthread_create_worker_on_cpu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kthread_create_worker_on_cpu to i32), ptr @__kstrtab_kthread_create_worker_on_cpu, ptr @__kstrtabns_kthread_create_worker_on_cpu }, section "___ksymtab+kthread_create_worker_on_cpu", align 4
@__kstrtab_kthread_queue_work = external dso_local constant [0 x i8], align 1
@__kstrtabns_kthread_queue_work = external dso_local constant [0 x i8], align 1
@__ksymtab_kthread_queue_work = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kthread_queue_work to i32), ptr @__kstrtab_kthread_queue_work, ptr @__kstrtabns_kthread_queue_work }, section "___ksymtab_gpl+kthread_queue_work", align 4
@kthread_delayed_work_timer_fn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kthread_delayed_work_timer_fn.__already_done.7 = internal unnamed_addr global i1 false, section ".data.once", align 1
@kthread_delayed_work_timer_fn.__already_done.8 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_kthread_delayed_work_timer_fn = external dso_local constant [0 x i8], align 1
@__kstrtabns_kthread_delayed_work_timer_fn = external dso_local constant [0 x i8], align 1
@__ksymtab_kthread_delayed_work_timer_fn = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kthread_delayed_work_timer_fn to i32), ptr @__kstrtab_kthread_delayed_work_timer_fn, ptr @__kstrtabns_kthread_delayed_work_timer_fn }, section "___ksymtab+kthread_delayed_work_timer_fn", align 4
@__kstrtab_kthread_queue_delayed_work = external dso_local constant [0 x i8], align 1
@__kstrtabns_kthread_queue_delayed_work = external dso_local constant [0 x i8], align 1
@__ksymtab_kthread_queue_delayed_work = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kthread_queue_delayed_work to i32), ptr @__kstrtab_kthread_queue_delayed_work, ptr @__kstrtabns_kthread_queue_delayed_work }, section "___ksymtab_gpl+kthread_queue_delayed_work", align 4
@kthread_flush_work.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_kthread_flush_work = external dso_local constant [0 x i8], align 1
@__kstrtabns_kthread_flush_work = external dso_local constant [0 x i8], align 1
@__ksymtab_kthread_flush_work = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kthread_flush_work to i32), ptr @__kstrtab_kthread_flush_work, ptr @__kstrtabns_kthread_flush_work }, section "___ksymtab_gpl+kthread_flush_work", align 4
@kthread_mod_delayed_work.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_kthread_mod_delayed_work = external dso_local constant [0 x i8], align 1
@__kstrtabns_kthread_mod_delayed_work = external dso_local constant [0 x i8], align 1
@__ksymtab_kthread_mod_delayed_work = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kthread_mod_delayed_work to i32), ptr @__kstrtab_kthread_mod_delayed_work, ptr @__kstrtabns_kthread_mod_delayed_work }, section "___ksymtab_gpl+kthread_mod_delayed_work", align 4
@__kstrtab_kthread_cancel_work_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_kthread_cancel_work_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_kthread_cancel_work_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kthread_cancel_work_sync to i32), ptr @__kstrtab_kthread_cancel_work_sync, ptr @__kstrtabns_kthread_cancel_work_sync }, section "___ksymtab_gpl+kthread_cancel_work_sync", align 4
@__kstrtab_kthread_cancel_delayed_work_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_kthread_cancel_delayed_work_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_kthread_cancel_delayed_work_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kthread_cancel_delayed_work_sync to i32), ptr @__kstrtab_kthread_cancel_delayed_work_sync, ptr @__kstrtabns_kthread_cancel_delayed_work_sync }, section "___ksymtab_gpl+kthread_cancel_delayed_work_sync", align 4
@__kstrtab_kthread_flush_worker = external dso_local constant [0 x i8], align 1
@__kstrtabns_kthread_flush_worker = external dso_local constant [0 x i8], align 1
@__ksymtab_kthread_flush_worker = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kthread_flush_worker to i32), ptr @__kstrtab_kthread_flush_worker, ptr @__kstrtabns_kthread_flush_worker }, section "___ksymtab_gpl+kthread_flush_worker", align 4
@__kstrtab_kthread_destroy_worker = external dso_local constant [0 x i8], align 1
@__kstrtabns_kthread_destroy_worker = external dso_local constant [0 x i8], align 1
@__ksymtab_kthread_destroy_worker = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kthread_destroy_worker to i32), ptr @__kstrtab_kthread_destroy_worker, ptr @__kstrtabns_kthread_destroy_worker }, section "___ksymtab+kthread_destroy_worker", align 4
@kthread_use_mm.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kthread_use_mm.__already_done.9 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_kthread_use_mm = external dso_local constant [0 x i8], align 1
@__kstrtabns_kthread_use_mm = external dso_local constant [0 x i8], align 1
@__ksymtab_kthread_use_mm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kthread_use_mm to i32), ptr @__kstrtab_kthread_use_mm, ptr @__kstrtabns_kthread_use_mm }, section "___ksymtab_gpl+kthread_use_mm", align 4
@kthread_unuse_mm.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kthread_unuse_mm.__already_done.10 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_kthread_unuse_mm = external dso_local constant [0 x i8], align 1
@__kstrtabns_kthread_unuse_mm = external dso_local constant [0 x i8], align 1
@__ksymtab_kthread_unuse_mm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kthread_unuse_mm to i32), ptr @__kstrtab_kthread_unuse_mm, ptr @__kstrtabns_kthread_unuse_mm }, section "___ksymtab_gpl+kthread_unuse_mm", align 4
@__kstrtab_kthread_associate_blkcg = external dso_local constant [0 x i8], align 1
@__kstrtabns_kthread_associate_blkcg = external dso_local constant [0 x i8], align 1
@__ksymtab_kthread_associate_blkcg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kthread_associate_blkcg to i32), ptr @__kstrtab_kthread_associate_blkcg, ptr @__kstrtabns_kthread_associate_blkcg }, section "___ksymtab+kthread_associate_blkcg", align 4
@__kstrtab_kthread_blkcg = external dso_local constant [0 x i8], align 1
@__kstrtabns_kthread_blkcg = external dso_local constant [0 x i8], align 1
@__ksymtab_kthread_blkcg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kthread_blkcg to i32), ptr @__kstrtab_kthread_blkcg, ptr @__kstrtabns_kthread_blkcg }, section "___ksymtab+kthread_blkcg", align 4
@kthreadd_task = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@__tracepoint_sched_kthread_stop = external dso_local global %struct.tracepoint, align 4
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/sched.h\00", [35 x i8] zeroinitializer }, align 32
@trace_sched_kthread_stop.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_sched_kthread_stop_ret = external dso_local global %struct.tracepoint, align 4
@trace_sched_kthread_stop_ret.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kthread_create_lock\00", [44 x i8] zeroinitializer }, align 32
@kthread.param = internal constant { %struct.sched_param, [28 x i8] } zeroinitializer, align 32
@__tracepoint_sched_kthread_work_execute_start = external dso_local global %struct.tracepoint, align 4
@trace_sched_kthread_work_execute_start.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_sched_kthread_work_execute_end = external dso_local global %struct.tracepoint, align 4
@trace_sched_kthread_work_execute_end.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/freezer.h\00", [40 x i8] zeroinitializer }, align 32
@__kthread_create_worker.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"(worker)->lock\00", [17 x i8] zeroinitializer }, align 32
@kthread_insert_work_sanity_check.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kthread_insert_work_sanity_check.__already_done.20 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_sched_kthread_work_queue_work = external dso_local global %struct.tracepoint, align 4
@trace_sched_kthread_work_queue_work.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kthread_queue_delayed_work.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__kthread_cancel_work_sync.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@smp_on_up = external dso_local local_unnamed_addr global i32, align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.23 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 115, i32 6 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 723, i32 21 }
@___asan_gen_.30 = private unnamed_addr constant [20 x i8] c"kthread_create_list\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 35, i32 8 }
@___asan_gen_.33 = private unnamed_addr constant [20 x i8] c"kthread_create_lock\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 761, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [14 x i8] c"kthreadd_task\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 36, i32 21 }
@___asan_gen_.42 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 87, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [32 x i8] c"../include/trace/events/sched.h\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 16, i32 1 }
@___asan_gen_.55 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 108, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 277, i32 1 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 34, i32 8 }
@___asan_gen_.63 = private unnamed_addr constant [6 x i8] c"param\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 333, i32 34 }
@___asan_gen_.67 = private unnamed_addr constant [27 x i8] c"../include/linux/freezer.h\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 57, i32 2 }
@___asan_gen_.70 = private constant [20 x i8] c"../kernel/kthread.c\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 850, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 695, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 723, i32 2 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__ksymtab___kthread_init_worker, ptr @__ksymtab___kthread_should_park, ptr @__ksymtab_kthread_associate_blkcg, ptr @__ksymtab_kthread_bind, ptr @__ksymtab_kthread_blkcg, ptr @__ksymtab_kthread_cancel_delayed_work_sync, ptr @__ksymtab_kthread_cancel_work_sync, ptr @__ksymtab_kthread_complete_and_exit, ptr @__ksymtab_kthread_create_on_cpu, ptr @__ksymtab_kthread_create_on_node, ptr @__ksymtab_kthread_create_worker, ptr @__ksymtab_kthread_create_worker_on_cpu, ptr @__ksymtab_kthread_data, ptr @__ksymtab_kthread_delayed_work_timer_fn, ptr @__ksymtab_kthread_destroy_worker, ptr @__ksymtab_kthread_flush_work, ptr @__ksymtab_kthread_flush_worker, ptr @__ksymtab_kthread_freezable_should_stop, ptr @__ksymtab_kthread_func, ptr @__ksymtab_kthread_mod_delayed_work, ptr @__ksymtab_kthread_park, ptr @__ksymtab_kthread_parkme, ptr @__ksymtab_kthread_queue_delayed_work, ptr @__ksymtab_kthread_queue_work, ptr @__ksymtab_kthread_should_park, ptr @__ksymtab_kthread_should_stop, ptr @__ksymtab_kthread_stop, ptr @__ksymtab_kthread_unpark, ptr @__ksymtab_kthread_unuse_mm, ptr @__ksymtab_kthread_use_mm, ptr @__ksymtab_kthread_worker_fn, ptr @.str, ptr @.str.2, ptr @kthread_create_list, ptr @kthread_create_lock, ptr @.str.4, ptr @kthreadd_task, ptr @init_completion.__key, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @kthread.param, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kthread_create_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kthread_create_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kthreadd_task to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kthread.param to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @get_kthread_comm(ptr noundef %buf, i32 noundef %buf_size, ptr noundef %tsk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 3
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %entry.to_kthread.exit_crit_edge, !prof !176

entry.to_kthread.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %to_kthread.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef null) #15
  br label %to_kthread.exit

to_kthread.exit:                                  ; preds = %do.end.i, %entry.to_kthread.exit_crit_edge
  %worker_private.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 85
  %2 = ptrtoint ptr %worker_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %worker_private.i, align 16
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %to_kthread.exit.if.then_crit_edge, label %lor.lhs.false

to_kthread.exit.if.then_crit_edge:                ; preds = %to_kthread.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

lor.lhs.false:                                    ; preds = %to_kthread.exit
  %full_name = getelementptr inbounds %struct.kthread, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %full_name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %full_name, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %to_kthread.exit.if.then_crit_edge
  %call2 = tail call ptr @__get_task_comm(ptr noundef %buf, i32 noundef %buf_size, ptr noundef %tsk) #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  %call4 = tail call i32 @strscpy_pad(ptr noundef %buf, ptr noundef nonnull %5, i32 noundef %buf_size) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @to_kthread(ptr nocapture noundef readonly %k) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %flags = getelementptr inbounds %struct.task_struct, ptr %k, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !176

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef null) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %worker_private = getelementptr inbounds %struct.task_struct, ptr %k, i32 0, i32 85
  %2 = ptrtoint ptr %worker_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %worker_private, align 16
  ret ptr %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__get_task_comm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy_pad(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @set_kthread_struct(ptr nocapture noundef %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 3
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %entry.to_kthread.exit_crit_edge, !prof !176

entry.to_kthread.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %to_kthread.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef null) #15
  br label %to_kthread.exit

to_kthread.exit:                                  ; preds = %do.end.i, %entry.to_kthread.exit_crit_edge
  %worker_private.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 85
  %2 = ptrtoint ptr %worker_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %worker_private.i, align 16
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end38, label %land.rhs

land.rhs:                                         ; preds = %to_kthread.exit
  %.b52 = load i1, ptr @set_kthread_struct.__already_done, align 1
  br i1 %.b52, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !177

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @set_kthread_struct.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 115, i32 noundef 9, ptr noundef null) #15
  br label %cleanup

if.end38:                                         ; preds = %to_kthread.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 140) #18
  %tobool40.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool40.not, label %if.end38.cleanup_crit_edge, label %if.end42

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end42:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  %exited = getelementptr inbounds %struct.kthread, ptr %call7.i.i, i32 0, i32 7
  %5 = ptrtoint ptr %exited to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %exited, align 4
  %wait.i = getelementptr inbounds %struct.kthread, ptr %call7.i.i, i32 0, i32 7, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @init_completion.__key) #15
  %parked = getelementptr inbounds %struct.kthread, ptr %call7.i.i, i32 0, i32 6
  %6 = ptrtoint ptr %parked to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %parked, align 4
  %wait.i54 = getelementptr inbounds %struct.kthread, ptr %call7.i.i, i32 0, i32 6, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i54, ptr noundef nonnull @.str.11, ptr noundef nonnull @init_completion.__key) #15
  %vfork_done = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 82
  %7 = ptrtoint ptr %vfork_done to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %exited, ptr %vfork_done, align 4
  %8 = ptrtoint ptr %worker_private.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %worker_private.i, align 16
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.end38.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end42 ], [ false, %if.then ], [ false, %if.end38.cleanup_crit_edge ], [ false, %land.rhs.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @free_kthread_struct(ptr nocapture noundef %k) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %k, i32 0, i32 3
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %entry.to_kthread.exit_crit_edge, !prof !176

entry.to_kthread.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %to_kthread.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef null) #15
  br label %to_kthread.exit

to_kthread.exit:                                  ; preds = %do.end.i, %entry.to_kthread.exit_crit_edge
  %worker_private.i = getelementptr inbounds %struct.task_struct, ptr %k, i32 0, i32 85
  %2 = ptrtoint ptr %worker_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %worker_private.i, align 16
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %to_kthread.exit.cleanup_crit_edge, label %if.end

to_kthread.exit.cleanup_crit_edge:                ; preds = %to_kthread.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %to_kthread.exit
  %blkcg_css = getelementptr inbounds %struct.kthread, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %blkcg_css to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %blkcg_css, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.end.if.end31_crit_edge, label %land.rhs

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31

land.rhs:                                         ; preds = %if.end
  %.b45 = load i1, ptr @free_kthread_struct.__already_done, align 1
  br i1 %.b45, label %land.rhs.if.end31_crit_edge, label %if.then9, !prof !177

land.rhs.if.end31_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31

if.then9:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @free_kthread_struct.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 142, i32 noundef 9, ptr noundef null) #15
  br label %if.end31

if.end31:                                         ; preds = %if.then9, %land.rhs.if.end31_crit_edge, %if.end.if.end31_crit_edge
  %6 = ptrtoint ptr %worker_private.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %worker_private.i, align 16
  %full_name = getelementptr inbounds %struct.kthread, ptr %3, i32 0, i32 9
  %7 = ptrtoint ptr %full_name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %full_name, align 4
  tail call void @kfree(ptr noundef %8) #15
  tail call void @kfree(ptr noundef nonnull %3) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %to_kthread.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @kthread_should_stop() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and.i3 = and i32 %5, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3)
  %tobool.not.i = icmp eq i32 %and.i3, 0
  br i1 %tobool.not.i, label %do.end.i, label %entry.to_kthread.exit_crit_edge, !prof !176

entry.to_kthread.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %to_kthread.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef null) #15
  br label %to_kthread.exit

to_kthread.exit:                                  ; preds = %do.end.i, %entry.to_kthread.exit_crit_edge
  %worker_private.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 85
  %6 = ptrtoint ptr %worker_private.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %worker_private.i, align 16
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %10 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool = icmp ne i32 %10, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @__kthread_should_park(ptr nocapture noundef readonly %k) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %k, i32 0, i32 3
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %entry.to_kthread.exit_crit_edge, !prof !176

entry.to_kthread.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %to_kthread.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef null) #15
  br label %to_kthread.exit

to_kthread.exit:                                  ; preds = %do.end.i, %entry.to_kthread.exit_crit_edge
  %worker_private.i = getelementptr inbounds %struct.task_struct, ptr %k, i32 0, i32 85
  %2 = ptrtoint ptr %worker_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %worker_private.i, align 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool = icmp ne i32 %6, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @kthread_should_park() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %5, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i, label %entry.__kthread_should_park.exit_crit_edge, !prof !176

entry.__kthread_should_park.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %__kthread_should_park.exit

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef null) #15
  br label %__kthread_should_park.exit

__kthread_should_park.exit:                       ; preds = %do.end.i.i, %entry.__kthread_should_park.exit_crit_edge
  %worker_private.i.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 85
  %6 = ptrtoint ptr %worker_private.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %worker_private.i.i, align 16
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %7, align 4
  %10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i = icmp ne i32 %10, 0
  ret i1 %tobool.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @kthread_freezable_should_stop(ptr noundef writeonly %was_frozen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 198) #15
  %0 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %4 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %freezing.exit, !prof !177

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

freezing.exit:                                    ; preds = %entry
  %call4.i = tail call zeroext i1 @freezing_slow_path(ptr noundef %3) #15
  br i1 %call4.i, label %if.then, label %freezing.exit.if.end_crit_edge, !prof !176

freezing.exit.if.end_crit_edge:                   ; preds = %freezing.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %freezing.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call6 = tail call zeroext i1 @__refrigerator(i1 noundef zeroext true) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %freezing.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %frozen.0.off0 = phi i1 [ %call6, %if.then ], [ false, %freezing.exit.if.end_crit_edge ], [ false, %entry.if.end_crit_edge ]
  %tobool7.not = icmp eq ptr %was_frozen, null
  br i1 %tobool7.not, label %if.end.if.end11_crit_edge, label %if.then8

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %frombool10 = zext i1 %frozen.0.off0 to i8
  %5 = ptrtoint ptr %was_frozen to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool10, ptr %was_frozen, align 1
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end.if.end11_crit_edge
  %6 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i, align 8
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i.i, align 4
  %and.i3.i = and i32 %11, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i)
  %tobool.not.i.i = icmp eq i32 %and.i3.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end11.kthread_should_stop.exit_crit_edge, !prof !176

if.end11.kthread_should_stop.exit_crit_edge:      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %kthread_should_stop.exit

do.end.i.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef null) #15
  br label %kthread_should_stop.exit

kthread_should_stop.exit:                         ; preds = %do.end.i.i, %if.end11.kthread_should_stop.exit_crit_edge
  %worker_private.i.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 85
  %12 = ptrtoint ptr %worker_private.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %worker_private.i.i, align 16
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  %16 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i = icmp ne i32 %16, 0
  ret i1 %tobool.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @kthread_func(ptr nocapture noundef readonly %task) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %worker_private.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 85
  %0 = ptrtoint ptr %worker_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %worker_private.i, align 16
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %land.lhs.true.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.i:                                  ; preds = %entry
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 3
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %threadfn = getelementptr inbounds %struct.kthread, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %threadfn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %threadfn, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %5, %if.then ], [ null, %entry.cleanup_crit_edge ], [ null, %land.lhs.true.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @kthread_data(ptr nocapture noundef readonly %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 3
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %entry.to_kthread.exit_crit_edge, !prof !176

entry.to_kthread.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %to_kthread.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef null) #15
  br label %to_kthread.exit

to_kthread.exit:                                  ; preds = %do.end.i, %entry.to_kthread.exit_crit_edge
  %worker_private.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 85
  %2 = ptrtoint ptr %worker_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %worker_private.i, align 16
  %data = getelementptr inbounds %struct.kthread, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @kthread_probe_data(ptr nocapture noundef readonly %task) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %worker_private.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 85
  %0 = ptrtoint ptr %worker_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %worker_private.i, align 16
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.__to_kthread.exit.thread_crit_edge, label %land.lhs.true.i

entry.__to_kthread.exit.thread_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %__to_kthread.exit.thread

land.lhs.true.i:                                  ; preds = %entry
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 3
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.__to_kthread.exit.thread_crit_edge, label %if.then

land.lhs.true.i.__to_kthread.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__to_kthread.exit.thread

__to_kthread.exit.thread:                         ; preds = %land.lhs.true.i.__to_kthread.exit.thread_crit_edge, %entry.__to_kthread.exit.thread_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #15
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %data, align 4
  br label %if.end

if.then:                                          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #15
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %data, align 4
  %data1 = getelementptr inbounds %struct.kthread, ptr %1, i32 0, i32 4
  %call2 = call i32 @copy_from_kernel_nofault(ptr noundef nonnull %data, ptr noundef %data1, i32 noundef 4) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %__to_kthread.exit.thread
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #15
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_from_kernel_nofault(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kthread_parkme() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and.i2 = and i32 %5, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2)
  %tobool.not.i = icmp eq i32 %and.i2, 0
  br i1 %tobool.not.i, label %do.end.i, label %entry.to_kthread.exit_crit_edge, !prof !176

entry.to_kthread.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %to_kthread.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef null) #15
  br label %to_kthread.exit

to_kthread.exit:                                  ; preds = %do.end.i, %entry.to_kthread.exit_crit_edge
  %worker_private.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 85
  %6 = ptrtoint ptr %worker_private.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %worker_private.i, align 16
  tail call fastcc void @__kthread_parkme(ptr noundef %7)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__kthread_parkme(ptr noundef %self) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %parked = getelementptr inbounds %struct.kthread, ptr %self, i32 0, i32 6
  br label %for.cond

for.cond:                                         ; preds = %do.body75, %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %pi_lock = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 128
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pi_lock) #15
  br label %__here

__here:                                           ; preds = %for.cond
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 212
  %6 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 ptrtoint (ptr blockaddress(@__kthread_parkme, %__here) to i32), ptr %task_state_change, align 4
  %7 = load ptr, ptr %task, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 64, ptr %7, align 128
  %9 = load ptr, ptr %task, align 8
  %pi_lock65 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 128
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pi_lock65, i32 noundef %call2) #15
  %10 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %self, align 4
  %12 = and i32 %11, 4
  %tobool72.not = icmp eq i32 %12, 0
  br i1 %tobool72.not, label %__here132, label %do.body75

do.body75:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #17
  %13 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %16, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !178
  tail call void @complete(ptr noundef %parked) #15
  tail call void @schedule_preempt_disabled() #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !179
  %17 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i.i.i158 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i158 to ptr
  %preempt_count.i.i159 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i159 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i159, align 4
  %sub.i = add i32 %20, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i159, align 4
  br label %for.cond

__here132:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #17
  %21 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %task, align 8
  %task_state_change136 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 212
  %23 = ptrtoint ptr %task_state_change136 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 ptrtoint (ptr blockaddress(@__kthread_parkme, %__here132) to i32), ptr %task_state_change136, align 4
  %24 = load ptr, ptr %task, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 0, ptr %24, align 128
  ret void
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kthread_exit(i32 noundef %result) local_unnamed_addr #5 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %call1 = tail call fastcc ptr @to_kthread(ptr noundef %3)
  %result2 = getelementptr inbounds %struct.kthread, ptr %call1, i32 0, i32 2
  %4 = ptrtoint ptr %result2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %result, ptr %result2, align 4
  call void @__asan_handle_no_return()
  tail call void @do_exit(i32 noundef 0) #19
  unreachable
}

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @do_exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kthread_complete_and_exit(ptr noundef %comp, i32 noundef %code) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %comp, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @complete(ptr noundef nonnull %comp) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_handle_no_return()
  tail call void @kthread_exit(i32 noundef %code) #20
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @tsk_fork_get_node(ptr nocapture noundef readnone %tsk) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @kthread_create_on_node(ptr noundef %threadfn, ptr noundef %data, i32 noundef %node, ptr noundef %namefmt, ...) #0 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #15
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !180
  call void @llvm.va_start(ptr nonnull %args)
  %1 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %1)
  %.fca.0.load = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call = call fastcc ptr @__kthread_create_on_node(ptr noundef %threadfn, ptr noundef %data, i32 noundef %node, ptr noundef %namefmt, [1 x i32] %.fca.0.insert)
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #15
  ret ptr %call
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__kthread_create_on_node(ptr noundef %threadfn, ptr noundef %data, i32 noundef %node, ptr noundef %namefmt, [1 x i32] %args.coerce) unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  %done = alloca %struct.completion, align 4
  %name = alloca [16 x i8], align 1
  %aq = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %args.coerce.fca.0.extract = extractvalue [1 x i32] %args.coerce, 0
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %args.coerce.fca.0.extract, ptr %args, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %done) #15
  %1 = getelementptr inbounds i8, ptr %done, i32 4
  %2 = call ptr @memset(ptr %1, i32 255, i32 52)
  %3 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %done, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @init_completion.__key) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 28) #18
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %threadfn, ptr %call7.i, align 8
  %data3 = getelementptr inbounds %struct.kthread_create_info, ptr %call7.i, i32 0, i32 1
  %6 = ptrtoint ptr %data3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %data, ptr %data3, align 4
  %node4 = getelementptr inbounds %struct.kthread_create_info, ptr %call7.i, i32 0, i32 2
  %7 = ptrtoint ptr %node4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %node, ptr %node4, align 8
  %done5 = getelementptr inbounds %struct.kthread_create_info, ptr %call7.i, i32 0, i32 4
  %8 = ptrtoint ptr %done5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %done, ptr %done5, align 8
  call void @_raw_spin_lock(ptr noundef nonnull @kthread_create_lock) #15
  %list = getelementptr inbounds %struct.kthread_create_info, ptr %call7.i, i32 0, i32 5
  %9 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @kthread_create_list, i32 0, i32 1), align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %9, ptr noundef nonnull @kthread_create_list) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  store ptr %list, ptr getelementptr inbounds (%struct.list_head, ptr @kthread_create_list, i32 0, i32 1), align 4
  %10 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @kthread_create_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.kthread_create_info, ptr %call7.i, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %9, ptr %prev3.i.i, align 8
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %list, ptr %9, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @kthread_create_lock) #15
  %13 = load ptr, ptr @kthreadd_task, align 4
  %call6 = call i32 @wake_up_process(ptr noundef %13) #15
  %call7 = call i32 @wait_for_completion_killable(ptr noundef nonnull %done) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %list_add_tail.exit.if.end33_crit_edge, label %if.then11, !prof !177

list_add_tail.exit.if.end33_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

if.then11:                                        ; preds = %list_add_tail.exit
  %call.i = call zeroext i1 @__kasan_check_write(ptr noundef %done5, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !181
  call void @llvm.prefetch.p0(ptr %done5, i32 1, i32 3, i32 1) #15
  %14 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %done5) #15, !srcloc !182
  %asmresult.i = extractvalue { i32, i32 } %14, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !183
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool29.not = icmp eq i32 %asmresult.i, 0
  br i1 %tobool29.not, label %if.end32, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end32:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  call void @wait_for_completion(ptr noundef nonnull %done) #15
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %list_add_tail.exit.if.end33_crit_edge
  %result = getelementptr inbounds %struct.kthread_create_info, ptr %call7.i, i32 0, i32 3
  %15 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %result, align 4
  %cmp.i = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end33.if.end44_crit_edge, label %if.then35

if.end33.if.end44_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44

if.then35:                                        ; preds = %if.end33
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name) #15
  %17 = call ptr @memset(ptr %name, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %aq) #15
  %18 = ptrtoint ptr %aq to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 -1 to ptr), ptr %aq, align 4, !annotation !180
  call void @llvm.va_copy(ptr nonnull %aq, ptr nonnull %args)
  %19 = ptrtoint ptr %aq to i32
  call void @__asan_load4_noabort(i32 %19)
  %.fca.0.load = load i32, ptr %aq, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call37 = call i32 @vsnprintf(ptr noundef nonnull %name, i32 noundef 16, ptr noundef %namefmt, [1 x i32] %.fca.0.insert)
  call void @llvm.va_end(ptr nonnull %aq)
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %call37)
  %cmp = icmp sgt i32 %call37, 15
  br i1 %cmp, label %if.then38, label %if.then35.if.end42_crit_edge

if.then35.if.end42_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42

if.then38:                                        ; preds = %if.then35
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 3
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %21, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.then38.to_kthread.exit_crit_edge, !prof !176

if.then38.to_kthread.exit_crit_edge:              ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #17
  br label %to_kthread.exit

do.end.i:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef null) #15
  br label %to_kthread.exit

to_kthread.exit:                                  ; preds = %do.end.i, %if.then38.to_kthread.exit_crit_edge
  %worker_private.i = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 85
  %22 = ptrtoint ptr %worker_private.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %worker_private.i, align 16
  %24 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %24)
  %.fca.0.load61 = load i32, ptr %args, align 4
  %.fca.0.insert62 = insertvalue [1 x i32] poison, i32 %.fca.0.load61, 0
  %call41 = call noalias ptr @kvasprintf(i32 noundef 3264, ptr noundef %namefmt, [1 x i32] %.fca.0.insert62) #15
  %full_name = getelementptr inbounds %struct.kthread, ptr %23, i32 0, i32 9
  %25 = ptrtoint ptr %full_name to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call41, ptr %full_name, align 4
  br label %if.end42

if.end42:                                         ; preds = %to_kthread.exit, %if.then35.if.end42_crit_edge
  call void @__set_task_comm(ptr noundef %16, ptr noundef nonnull %name, i1 noundef zeroext false) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %aq) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name) #15
  br label %if.end44

if.end44:                                         ; preds = %if.end42, %if.end33.if.end44_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.then11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %16, %if.end44 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -4 to ptr), %if.then11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %done) #15
  ret ptr %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kthread_bind_mask(ptr noundef %p, ptr noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @wait_task_inactive(ptr noundef %p, i32 noundef 2) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %do.body18.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 525, i32 noundef 9, ptr noundef null) #15
  br label %__kthread_bind_mask.exit

do.body18.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %pi_lock.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 128
  %call20.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pi_lock.i) #15
  tail call void @do_set_cpus_allowed(ptr noundef %p, ptr noundef %mask) #15
  %flags23.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 3
  %0 = ptrtoint ptr %flags23.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags23.i, align 4
  %or.i = or i32 %1, 67108864
  store i32 %or.i, ptr %flags23.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pi_lock.i, i32 noundef %call20.i) #15
  br label %__kthread_bind_mask.exit

__kthread_bind_mask.exit:                         ; preds = %do.body18.i, %do.end.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kthread_bind(ptr noundef %p, i32 noundef %cpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call i32 @wait_task_inactive(ptr noundef %p, i32 noundef 2) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i, label %do.body18.i.i

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 525, i32 noundef 9, ptr noundef null) #15
  br label %__kthread_bind.exit

do.body18.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %rem.i.i = and i32 %cpu, 31
  %add.i.i = add nuw nsw i32 %rem.i.i, 1
  %arrayidx.i.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i.i
  %div3.i.i = lshr i32 %cpu, 5
  %idx.neg.i.i = sub nsw i32 0, %div3.i.i
  %add.ptr.i.i = getelementptr i32, ptr %arrayidx.i.i, i32 %idx.neg.i.i
  %pi_lock.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 128
  %call20.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pi_lock.i.i) #15
  tail call void @do_set_cpus_allowed(ptr noundef %p, ptr noundef %add.ptr.i.i) #15
  %flags23.i.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 3
  %0 = ptrtoint ptr %flags23.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags23.i.i, align 4
  %or.i.i = or i32 %1, 67108864
  store i32 %or.i.i, ptr %flags23.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pi_lock.i.i, i32 noundef %call20.i.i) #15
  br label %__kthread_bind.exit

__kthread_bind.exit:                              ; preds = %do.body18.i.i, %do.end.i.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @kthread_create_on_cpu(ptr noundef %threadfn, ptr noundef %data, i32 noundef %cpu, ptr noundef %namefmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef %threadfn, ptr noundef %data, i32 noundef 0, ptr noundef %namefmt, i32 noundef %cpu)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i.i = tail call i32 @wait_task_inactive(ptr noundef %call, i32 noundef 2) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i, label %do.body18.i.i.i

do.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 525, i32 noundef 9, ptr noundef null) #15
  br label %kthread_bind.exit

do.body18.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %rem.i.i.i = and i32 %cpu, 31
  %add.i.i.i = add nuw nsw i32 %rem.i.i.i, 1
  %arrayidx.i.i.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i.i.i
  %div3.i.i.i = lshr i32 %cpu, 5
  %idx.neg.i.i.i = sub nsw i32 0, %div3.i.i.i
  %add.ptr.i.i.i = getelementptr i32, ptr %arrayidx.i.i.i, i32 %idx.neg.i.i.i
  %pi_lock.i.i.i = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 128
  %call20.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pi_lock.i.i.i) #15
  tail call void @do_set_cpus_allowed(ptr noundef %call, ptr noundef %add.ptr.i.i.i) #15
  %flags23.i.i.i = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %flags23.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags23.i.i.i, align 4
  %or.i.i.i = or i32 %1, 67108864
  store i32 %or.i.i.i, ptr %flags23.i.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pi_lock.i.i.i, i32 noundef %call20.i.i.i) #15
  br label %kthread_bind.exit

kthread_bind.exit:                                ; preds = %do.body18.i.i.i, %do.end.i.i.i
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %kthread_bind.exit.to_kthread.exit_crit_edge, !prof !176

kthread_bind.exit.to_kthread.exit_crit_edge:      ; preds = %kthread_bind.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %to_kthread.exit

do.end.i:                                         ; preds = %kthread_bind.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef null) #15
  br label %to_kthread.exit

to_kthread.exit:                                  ; preds = %do.end.i, %kthread_bind.exit.to_kthread.exit_crit_edge
  %worker_private.i = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 85
  %4 = ptrtoint ptr %worker_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %worker_private.i, align 16
  %cpu3 = getelementptr inbounds %struct.kthread, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %cpu3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cpu, ptr %cpu3, align 4
  br label %cleanup

cleanup:                                          ; preds = %to_kthread.exit, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kthread_set_per_cpu(ptr nocapture noundef readonly %k, i32 noundef %cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %k, i32 0, i32 3
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %entry.to_kthread.exit_crit_edge, !prof !176

entry.to_kthread.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %to_kthread.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef null) #15
  br label %to_kthread.exit

to_kthread.exit:                                  ; preds = %do.end.i, %entry.to_kthread.exit_crit_edge
  %worker_private.i = getelementptr inbounds %struct.task_struct, ptr %k, i32 0, i32 85
  %2 = ptrtoint ptr %worker_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %worker_private.i, align 16
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %to_kthread.exit.cleanup_crit_edge, label %if.end

to_kthread.exit.cleanup_crit_edge:                ; preds = %to_kthread.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %to_kthread.exit
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and = and i32 %5, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.rhs, label %if.end.if.end32_crit_edge

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

land.rhs:                                         ; preds = %if.end
  %.b52 = load i1, ptr @kthread_set_per_cpu.__already_done, align 1
  br i1 %.b52, label %land.rhs.if.end32_crit_edge, label %if.then10, !prof !177

land.rhs.if.end32_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

if.then10:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @kthread_set_per_cpu.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 594, i32 noundef 9, ptr noundef null) #15
  br label %if.end32

if.end32:                                         ; preds = %if.then10, %land.rhs.if.end32_crit_edge, %if.end.if.end32_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cpu)
  %cmp = icmp slt i32 %cpu, 0
  br i1 %cmp, label %if.then40, label %if.end42

if.then40:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_clear_bit(i32 noundef 0, ptr noundef nonnull %3) #15
  br label %cleanup

if.end42:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  %cpu43 = getelementptr inbounds %struct.kthread, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %cpu43 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cpu, ptr %cpu43, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef nonnull %3) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.then40, %to_kthread.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @kthread_is_per_cpu(ptr nocapture noundef readonly %p) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %worker_private.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 85
  %0 = ptrtoint ptr %worker_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %worker_private.i, align 16
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %land.lhs.true.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.i:                                  ; preds = %entry
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 3
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.end

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %1, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2 = icmp ne i32 %and1.i, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool2, %if.end ], [ false, %entry.cleanup_crit_edge ], [ false, %land.lhs.true.i.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kthread_unpark(ptr noundef %k) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %k, i32 0, i32 3
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %entry.to_kthread.exit_crit_edge, !prof !176

entry.to_kthread.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %to_kthread.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef null) #15
  br label %to_kthread.exit

to_kthread.exit:                                  ; preds = %do.end.i, %entry.to_kthread.exit_crit_edge
  %worker_private.i = getelementptr inbounds %struct.task_struct, ptr %k, i32 0, i32 85
  %2 = ptrtoint ptr %worker_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %worker_private.i, align 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %to_kthread.exit.if.end_crit_edge, label %if.then

to_kthread.exit.if.end_crit_edge:                 ; preds = %to_kthread.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %to_kthread.exit
  %cpu = getelementptr inbounds %struct.kthread, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %call.i.i = tail call i32 @wait_task_inactive(ptr noundef %k, i32 noundef 64) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i, label %do.body18.i.i

do.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 525, i32 noundef 9, ptr noundef null) #15
  br label %if.end

do.body18.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %rem.i.i = and i32 %7, 31
  %add.i.i = add nuw nsw i32 %rem.i.i, 1
  %arrayidx.i.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i.i
  %div3.i.i = lshr i32 %7, 5
  %idx.neg.i.i = sub nsw i32 0, %div3.i.i
  %add.ptr.i.i = getelementptr i32, ptr %arrayidx.i.i, i32 %idx.neg.i.i
  %pi_lock.i.i = getelementptr inbounds %struct.task_struct, ptr %k, i32 0, i32 128
  %call20.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pi_lock.i.i) #15
  tail call void @do_set_cpus_allowed(ptr noundef %k, ptr noundef %add.ptr.i.i) #15
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %or.i.i = or i32 %9, 67108864
  store i32 %or.i.i, ptr %flags.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pi_lock.i.i, i32 noundef %call20.i.i) #15
  br label %if.end

if.end:                                           ; preds = %do.body18.i.i, %do.end.i.i, %to_kthread.exit.if.end_crit_edge
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %3) #15
  %call3 = tail call i32 @wake_up_state(ptr noundef %k, i32 noundef 64) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_state(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kthread_park(ptr noundef %k) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %k, i32 0, i32 3
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %entry.to_kthread.exit_crit_edge, !prof !176

entry.to_kthread.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %to_kthread.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef null) #15
  br label %to_kthread.exit

to_kthread.exit:                                  ; preds = %do.end.i, %entry.to_kthread.exit_crit_edge
  %worker_private.i = getelementptr inbounds %struct.task_struct, ptr %k, i32 0, i32 85
  %2 = ptrtoint ptr %worker_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %worker_private.i, align 16
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end22, label %to_kthread.exit.cleanup.sink.split_crit_edge, !prof !177

to_kthread.exit.cleanup.sink.split_crit_edge:     ; preds = %to_kthread.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.end22:                                         ; preds = %to_kthread.exit
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %3, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool25.not = icmp eq i32 %8, 0
  br i1 %tobool25.not, label %if.end77, label %land.rhs

land.rhs:                                         ; preds = %if.end22
  %.b153 = load i1, ptr @kthread_park.__already_done, align 1
  br i1 %.b153, label %land.rhs.cleanup_crit_edge, label %land.rhs.cleanup.sink.split.sink.split_crit_edge, !prof !177

land.rhs.cleanup.sink.split.sink.split_crit_edge: ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split.sink.split

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end77:                                         ; preds = %if.end22
  tail call void @_set_bit(i32 noundef 2, ptr noundef %3) #15
  %9 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i155 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i155 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %cmp.not = icmp eq ptr %12, %k
  br i1 %cmp.not, label %if.end77.cleanup_crit_edge, label %if.then80

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then80:                                        ; preds = %if.end77
  %call81 = tail call i32 @wake_up_process(ptr noundef %k) #15
  %parked = getelementptr inbounds %struct.kthread, ptr %3, i32 0, i32 6
  tail call void @wait_for_completion(ptr noundef %parked) #15
  %call83 = tail call i32 @wait_task_inactive(ptr noundef %k, i32 noundef 64) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %land.rhs93, label %if.then80.cleanup_crit_edge

if.then80.cleanup_crit_edge:                      ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.rhs93:                                       ; preds = %if.then80
  %.b151152 = load i1, ptr @kthread_park.__already_done.1, align 1
  br i1 %.b151152, label %land.rhs93.cleanup_crit_edge, label %land.rhs93.cleanup.sink.split.sink.split_crit_edge, !prof !177

land.rhs93.cleanup.sink.split.sink.split_crit_edge: ; preds = %land.rhs93
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split.sink.split

land.rhs93.cleanup_crit_edge:                     ; preds = %land.rhs93
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup.sink.split.sink.split:                    ; preds = %land.rhs93.cleanup.sink.split.sink.split_crit_edge, %land.rhs.cleanup.sink.split.sink.split_crit_edge
  %kthread_park.__already_done.sink = phi ptr [ @kthread_park.__already_done, %land.rhs.cleanup.sink.split.sink.split_crit_edge ], [ @kthread_park.__already_done.1, %land.rhs93.cleanup.sink.split.sink.split_crit_edge ]
  %.sink.ph = phi i32 [ 660, %land.rhs.cleanup.sink.split.sink.split_crit_edge ], [ 675, %land.rhs93.cleanup.sink.split.sink.split_crit_edge ]
  %retval.0.ph.ph = phi i32 [ -16, %land.rhs.cleanup.sink.split.sink.split_crit_edge ], [ 0, %land.rhs93.cleanup.sink.split.sink.split_crit_edge ]
  %13 = ptrtoint ptr %kthread_park.__already_done.sink to i32
  call void @__asan_store1_noabort(i32 %13)
  store i1 true, ptr %kthread_park.__already_done.sink, align 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %to_kthread.exit.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 657, %to_kthread.exit.cleanup.sink.split_crit_edge ], [ %.sink.ph, %cleanup.sink.split.sink.split ]
  %retval.0.ph = phi i32 [ -38, %to_kthread.exit.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.rhs93.cleanup_crit_edge, %if.then80.cleanup_crit_edge, %if.end77.cleanup_crit_edge, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.rhs93.cleanup_crit_edge ], [ 0, %if.then80.cleanup_crit_edge ], [ 0, %if.end77.cleanup_crit_edge ], [ -16, %land.rhs.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_task_inactive(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kthread_stop(ptr noundef %k) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_sched_kthread_stop(ptr noundef %k)
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %k, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !184
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !176

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_task_struct.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !177

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_task_struct.exit_crit_edge:   ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_task_struct.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef %.sink.i.i.i.i) #15
  br label %get_task_struct.exit

get_task_struct.exit:                             ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_task_struct.exit_crit_edge
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %k, i32 0, i32 3
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %get_task_struct.exit.to_kthread.exit_crit_edge, !prof !176

get_task_struct.exit.to_kthread.exit_crit_edge:   ; preds = %get_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %to_kthread.exit

do.end.i:                                         ; preds = %get_task_struct.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef null) #15
  br label %to_kthread.exit

to_kthread.exit:                                  ; preds = %do.end.i, %get_task_struct.exit.to_kthread.exit_crit_edge
  %worker_private.i = getelementptr inbounds %struct.task_struct, ptr %k, i32 0, i32 85
  %4 = ptrtoint ptr %worker_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %worker_private.i, align 16
  tail call void @_set_bit(i32 noundef 1, ptr noundef %5) #15
  tail call void @kthread_unpark(ptr noundef %k)
  %call2 = tail call i32 @wake_up_process(ptr noundef %k) #15
  %exited = getelementptr inbounds %struct.kthread, ptr %5, i32 0, i32 7
  tail call void @wait_for_completion(ptr noundef %exited) #15
  %result = getelementptr inbounds %struct.kthread, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %result, align 4
  %call.i.i.i.i.i.i12 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !185
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #15
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #15, !srcloc !186
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %to_kthread.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i13 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i13, label %if.end5.i.i.i.i.put_task_struct.exit_crit_edge, label %if.then10.i.i.i.i, !prof !177

if.end5.i.i.i.i.put_task_struct.exit_crit_edge:   ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_task_struct.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef 3) #15
  br label %put_task_struct.exit

if.then.i:                                        ; preds = %to_kthread.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !187
  tail call void @__put_task_struct(ptr noundef %k) #15
  br label %put_task_struct.exit

put_task_struct.exit:                             ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_task_struct.exit_crit_edge
  tail call fastcc void @trace_sched_kthread_stop_ret(i32 noundef %7)
  ret i32 %7
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_sched_kthread_stop(ptr noundef %t) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_kthread_stop, i32 0, i32 1), ptr blockaddress(@trace_sched_kthread_stop, %do.body)) #15
          to label %if.end48 [label %do.body], !srcloc !188

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !166) #15
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !177

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #17
  %9 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !189
  %call42 = tail call i32 @__traceiter_sched_kthread_stop(ptr noundef null, ptr noundef %t) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !190
  %13 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !177

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !191
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_kthread_stop, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_kthread_stop, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_sched_kthread_stop.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @trace_sched_kthread_stop.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 33, ptr noundef nonnull @.str.14) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !192
  %31 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_sched_kthread_stop_ret(i32 noundef %ret) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_kthread_stop_ret, i32 0, i32 1), ptr blockaddress(@trace_sched_kthread_stop_ret, %do.body)) #15
          to label %if.end48 [label %do.body], !srcloc !188

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !166) #15
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !177

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #17
  %9 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !193
  %call42 = tail call i32 @__traceiter_sched_kthread_stop_ret(ptr noundef null, i32 noundef %ret) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !194
  %13 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !177

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !191
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_kthread_stop_ret, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_kthread_stop_ret, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_sched_kthread_stop_ret.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @trace_sched_kthread_stop_ret.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 53, ptr noundef nonnull @.str.14) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !192
  %31 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kthreadd(ptr nocapture readnone %unused) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  tail call void @__set_task_comm(ptr noundef %3, ptr noundef nonnull @.str.2, i1 noundef zeroext false) #15
  tail call void @ignore_signals(ptr noundef %3) #15
  %call1 = tail call ptr @housekeeping_cpumask(i32 noundef 256) #15
  %call2 = tail call i32 @set_cpus_allowed_ptr(ptr noundef %3, ptr noundef %call1) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x %struct.nodemask_t], ptr @node_states, i32 0, i32 4) to i32))
  %.unpack = load i32, ptr getelementptr inbounds ([7 x %struct.nodemask_t], ptr @node_states, i32 0, i32 4), align 4
  %4 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %alloc_lock.i.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 127
  tail call void @_raw_spin_lock(ptr noundef %alloc_lock.i.i) #15
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !195
  %and.i83.i = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i83.i)
  %tobool.not.i = icmp eq i32 %and.i83.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.do.body12.i_crit_edge

entry.do.body12.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body12.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @trace_hardirqs_off() #15
  br label %do.body12.i

do.body12.i:                                      ; preds = %if.then.i, %entry.do.body12.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %9 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i, label %do.body12.i.__seqprop_spinlock_assert.exit.i_crit_edge, label %land.rhs.i.i

do.body12.i.__seqprop_spinlock_assert.exit.i_crit_edge: ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__seqprop_spinlock_assert.exit.i

land.rhs.i.i:                                     ; preds = %do.body12.i
  %10 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i, align 8
  %lock.i.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 161, i32 1
  %12 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lock.i.i, align 4
  %dep_map.i.i = getelementptr inbounds %struct.anon.10, ptr %13, i32 0, i32 1
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i, i32 noundef -1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.__seqprop_spinlock_assert.exit.i_crit_edge, !prof !176

land.rhs.i.i.__seqprop_spinlock_assert.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__seqprop_spinlock_assert.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 277, i32 noundef 9, ptr noundef null) #15
  br label %__seqprop_spinlock_assert.exit.i

__seqprop_spinlock_assert.exit.i:                 ; preds = %do.end.i.i, %land.rhs.i.i.__seqprop_spinlock_assert.exit.i_crit_edge, %do.body12.i.__seqprop_spinlock_assert.exit.i_crit_edge
  %14 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i, align 8
  %mems_allowed_seq26.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 161
  %16 = ptrtoint ptr %mems_allowed_seq26.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mems_allowed_seq26.i, align 4
  %inc.i.i.i.i = add i32 %17, 1
  store i32 %inc.i.i.i.i, ptr %mems_allowed_seq26.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !196
  %dep_map.i.i.i = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 161, i32 0, i32 1
  %18 = tail call ptr @llvm.returnaddress(i32 0) #15
  %19 = ptrtoint ptr %18 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %19) #15
  %20 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i, align 8
  %mems_allowed.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 160
  %22 = ptrtoint ptr %mems_allowed.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.unpack, ptr %mems_allowed.i, align 64
  %23 = load ptr, ptr %task.i, align 8
  %mems_allowed_seq35.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 161
  %dep_map.i84.i = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 161, i32 0, i32 1
  tail call void @lock_release(ptr noundef %dep_map.i84.i, i32 noundef %19) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !197
  %24 = ptrtoint ptr %mems_allowed_seq35.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mems_allowed_seq35.i, align 4
  %inc.i.i.i = add i32 %25, 1
  store i32 %inc.i.i.i, ptr %mems_allowed_seq35.i, align 4
  br i1 %tobool.not.i, label %if.then57.i, label %__seqprop_spinlock_assert.exit.i.do.body59.i_crit_edge

__seqprop_spinlock_assert.exit.i.do.body59.i_crit_edge: ; preds = %__seqprop_spinlock_assert.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body59.i

if.then57.i:                                      ; preds = %__seqprop_spinlock_assert.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @trace_hardirqs_on() #15
  br label %do.body59.i

do.body59.i:                                      ; preds = %if.then57.i, %__seqprop_spinlock_assert.exit.i.do.body59.i_crit_edge
  %26 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !198
  %and.i.i.i = and i32 %26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool67.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool67.not.i, label %if.then71.i, label %do.body59.i.set_mems_allowed.exit_crit_edge, !prof !176

do.body59.i.set_mems_allowed.exit_crit_edge:      ; preds = %do.body59.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %set_mems_allowed.exit

if.then71.i:                                      ; preds = %do.body59.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %set_mems_allowed.exit

set_mems_allowed.exit:                            ; preds = %if.then71.i, %do.body59.i.set_mems_allowed.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #15, !srcloc !199
  %27 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task.i, align 8
  %alloc_lock.i86.i = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 127
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i86.i) #15
  %29 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task, align 8
  %flags = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags, align 4
  %or = or i32 %32, 32768
  store i32 %or, ptr %flags, align 4
  %33 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i.i153 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i153 to ptr
  %task.i154 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %task.i154 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %task.i154, align 8
  %no_cgroup_migration.i = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 65
  %37 = ptrtoint ptr %no_cgroup_migration.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %bf.load.i = load i16, ptr %no_cgroup_migration.i, align 8
  %bf.set.i = or i16 %bf.load.i, 1024
  store i16 %bf.set.i, ptr %no_cgroup_migration.i, align 8
  br label %__here

__here:                                           ; preds = %while.end, %set_mems_allowed.exit
  %38 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %39, i32 0, i32 212
  %40 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 ptrtoint (ptr blockaddress(@kthreadd, %__here) to i32), ptr %task_state_change, align 4
  %41 = load ptr, ptr %task, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile i32 1, ptr %41, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !200
  %43 = load volatile ptr, ptr @kthread_create_list, align 4
  %cmp.i.not = icmp eq ptr %43, @kthread_create_list
  br i1 %cmp.i.not, label %if.then68, label %__here.__here120_crit_edge

__here.__here120_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here120

if.then68:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @schedule() #15
  br label %__here120

__here120:                                        ; preds = %if.then68, %__here.__here120_crit_edge
  %44 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %task, align 8
  %task_state_change124 = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 212
  %46 = ptrtoint ptr %task_state_change124 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 ptrtoint (ptr blockaddress(@kthreadd, %__here120) to i32), ptr %task_state_change124, align 4
  %47 = load ptr, ptr %task, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 0, ptr %47, align 128
  tail call void @_raw_spin_lock(ptr noundef nonnull @kthread_create_lock) #15
  %49 = load volatile ptr, ptr @kthread_create_list, align 4
  %cmp.i155.not161 = icmp eq ptr %49, @kthread_create_list
  br i1 %cmp.i155.not161, label %__here120.while.end_crit_edge, label %__here120.while.body_crit_edge

__here120.while.body_crit_edge:                   ; preds = %__here120
  br label %while.body

__here120.while.end_crit_edge:                    ; preds = %__here120
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body:                                       ; preds = %create_kthread.exit.while.body_crit_edge, %__here120.while.body_crit_edge
  %50 = phi ptr [ %63, %create_kthread.exit.while.body_crit_edge ], [ %49, %__here120.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %50, i32 -20
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %50) #15
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i.i, align 4
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %50, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev1.i.i.i, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %54, ptr %52, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body.list_del_init.exit_crit_edge
  %57 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %50, ptr %50, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %58 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %50, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @kthread_create_lock) #15
  %call.i = tail call i32 @kernel_thread(ptr noundef nonnull @kthread, ptr noundef %add.ptr, i32 noundef 1553) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i157 = icmp slt i32 %call.i, 0
  br i1 %cmp.i157, label %if.then.i160, label %list_del_init.exit.create_kthread.exit_crit_edge

list_del_init.exit.create_kthread.exit_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %create_kthread.exit

if.then.i160:                                     ; preds = %list_del_init.exit
  %done1.i = getelementptr i8, ptr %50, i32 -4
  %call.i.i158 = tail call zeroext i1 @__kasan_check_write(ptr noundef %done1.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !201
  tail call void @llvm.prefetch.p0(ptr %done1.i, i32 1, i32 3, i32 1) #15
  %59 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %done1.i) #15, !srcloc !182
  %asmresult.i.i = extractvalue { i32, i32 } %59, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !202
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool.not.i159 = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i159, label %if.then17.i, label %if.end.i

if.then17.i:                                      ; preds = %if.then.i160
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef %add.ptr) #15
  br label %create_kthread.exit

if.end.i:                                         ; preds = %if.then.i160
  call void @__sanitizer_cov_trace_pc() #17
  %60 = inttoptr i32 %asmresult.i.i to ptr
  %61 = inttoptr i32 %call.i to ptr
  %result.i = getelementptr i8, ptr %50, i32 -8
  %62 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %61, ptr %result.i, align 4
  tail call void @complete(ptr noundef nonnull %60) #15
  br label %create_kthread.exit

create_kthread.exit:                              ; preds = %if.end.i, %if.then17.i, %list_del_init.exit.create_kthread.exit_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @kthread_create_lock) #15
  %63 = load volatile ptr, ptr @kthread_create_list, align 4
  %cmp.i155.not = icmp eq ptr %63, @kthread_create_list
  br i1 %cmp.i155.not, label %create_kthread.exit.while.end_crit_edge, label %create_kthread.exit.while.body_crit_edge

create_kthread.exit.while.body_crit_edge:         ; preds = %create_kthread.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

create_kthread.exit.while.end_crit_edge:          ; preds = %create_kthread.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %create_kthread.exit.while.end_crit_edge, %__here120.while.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @kthread_create_lock) #15
  br label %__here
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ignore_signals(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_cpus_allowed_ptr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @housekeeping_cpumask(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__kthread_init_worker(ptr noundef %worker, ptr noundef %name, ptr noundef %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %worker, i32 0, i32 72)
  %lock = getelementptr inbounds %struct.kthread_worker, ptr %worker, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @__kthread_init_worker.__key, i16 noundef signext 2) #15
  %dep_map = getelementptr inbounds %struct.kthread_worker, ptr %worker, i32 0, i32 1, i32 4
  %wait_type_inner = getelementptr inbounds %struct.kthread_worker, ptr %worker, i32 0, i32 1, i32 4, i32 4
  %1 = ptrtoint ptr %wait_type_inner to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %wait_type_inner, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef %name, ptr noundef %key, i32 noundef 0, i8 noundef zeroext %2, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %work_list = getelementptr inbounds %struct.kthread_worker, ptr %worker, i32 0, i32 2
  %3 = ptrtoint ptr %work_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %work_list, ptr %work_list, align 4
  %prev.i = getelementptr inbounds %struct.kthread_worker, ptr %worker, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %work_list, ptr %prev.i, align 4
  %delayed_work_list = getelementptr inbounds %struct.kthread_worker, ptr %worker, i32 0, i32 3
  %5 = ptrtoint ptr %delayed_work_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %delayed_work_list, ptr %delayed_work_list, align 4
  %prev.i12 = getelementptr inbounds %struct.kthread_worker, ptr %worker, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %prev.i12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %delayed_work_list, ptr %prev.i12, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kthread_worker_fn(ptr noundef %worker_ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %task = getelementptr inbounds %struct.kthread_worker, ptr %worker_ptr, i32 0, i32 4
  %0 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %task, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.rhs:                                         ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task2 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task2, align 8
  %cmp.not = icmp eq ptr %1, %5
  br i1 %cmp.not, label %land.rhs.if.end_crit_edge, label %do.end, !prof !177

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 792, i32 noundef 9, ptr noundef null) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %6 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i298 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i298 to ptr
  %task23 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task23 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task23, align 8
  %10 = ptrtoint ptr %task to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %task, align 4
  %11 = ptrtoint ptr %worker_ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %worker_ptr, align 4
  %and = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %if.end.if.end28_crit_edge, label %if.then26

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end28

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call27 = tail call zeroext i1 @set_freezable() #15
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end.if.end28_crit_edge
  %lock181 = getelementptr inbounds %struct.kthread_worker, ptr %worker_ptr, i32 0, i32 1
  %work_list = getelementptr inbounds %struct.kthread_worker, ptr %worker_ptr, i32 0, i32 2
  %current_work = getelementptr inbounds %struct.kthread_worker, ptr %worker_ptr, i32 0, i32 5
  br label %__here

__here:                                           ; preds = %try_to_freeze.exit, %if.end28
  %13 = ptrtoint ptr %task23 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task23, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 212
  %15 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 ptrtoint (ptr blockaddress(@kthread_worker_fn, %__here) to i32), ptr %task_state_change, align 4
  %16 = load ptr, ptr %task23, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 1, ptr %16, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !203
  %18 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i, align 8
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags.i.i, align 4
  %and.i3.i = and i32 %23, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i)
  %tobool.not.i.i = icmp eq i32 %and.i3.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i, label %__here.kthread_should_stop.exit_crit_edge, !prof !176

__here.kthread_should_stop.exit_crit_edge:        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #17
  br label %kthread_should_stop.exit

do.end.i.i:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef null) #15
  br label %kthread_should_stop.exit

kthread_should_stop.exit:                         ; preds = %do.end.i.i, %__here.kthread_should_stop.exit_crit_edge
  %worker_private.i.i = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 85
  %24 = ptrtoint ptr %worker_private.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %worker_private.i.i, align 16
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 4
  %28 = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.i.not = icmp eq i32 %28, 0
  br i1 %tobool.i.not, label %if.end180, label %__here157

__here157:                                        ; preds = %kthread_should_stop.exit
  call void @__sanitizer_cov_trace_pc() #17
  %29 = ptrtoint ptr %task23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task23, align 8
  %task_state_change161 = getelementptr inbounds %struct.task_struct, ptr %30, i32 0, i32 212
  %31 = ptrtoint ptr %task_state_change161 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 ptrtoint (ptr blockaddress(@kthread_worker_fn, %__here157) to i32), ptr %task_state_change161, align 4
  %32 = load ptr, ptr %task23, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile i32 0, ptr %32, align 128
  tail call void @_raw_spin_lock_irq(ptr noundef %lock181) #15
  %34 = ptrtoint ptr %task to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %task, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock181) #15
  ret i32 0

if.end180:                                        ; preds = %kthread_should_stop.exit
  tail call void @_raw_spin_lock_irq(ptr noundef %lock181) #15
  %35 = ptrtoint ptr %work_list to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %work_list, align 4
  %cmp.i.not = icmp eq ptr %36, %work_list
  br i1 %cmp.i.not, label %if.end187.thread, label %if.then184

if.end187.thread:                                 ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #17
  %37 = ptrtoint ptr %current_work to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %current_work, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock181) #15
  br label %if.else

if.then184:                                       ; preds = %if.end180
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %36) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.then184.if.end187_crit_edge

if.then184.if.end187_crit_edge:                   ; preds = %if.then184
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end187

if.end.i.i:                                       ; preds = %if.then184
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %36, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev1.i.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %41, ptr %39, align 4
  br label %if.end187

if.end187:                                        ; preds = %if.end.i.i, %if.then184.if.end187_crit_edge
  %44 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %36, ptr %36, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %36, ptr %prev.i3.i, align 4
  %46 = ptrtoint ptr %current_work to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %36, ptr %current_work, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock181) #15
  %tobool189.not = icmp eq ptr %36, null
  br i1 %tobool189.not, label %if.end187.if.else_crit_edge, label %__here242

if.end187.if.else_crit_edge:                      ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

__here242:                                        ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #17
  %func191 = getelementptr inbounds %struct.kthread_work, ptr %36, i32 0, i32 1
  %47 = ptrtoint ptr %func191 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %func191, align 4
  %49 = ptrtoint ptr %task23 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %task23, align 8
  %task_state_change246 = getelementptr inbounds %struct.task_struct, ptr %50, i32 0, i32 212
  %51 = ptrtoint ptr %task_state_change246 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 ptrtoint (ptr blockaddress(@kthread_worker_fn, %__here242) to i32), ptr %task_state_change246, align 4
  %52 = load ptr, ptr %task23, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile i32 0, ptr %52, align 128
  tail call fastcc void @trace_sched_kthread_work_execute_start(ptr noundef nonnull %36)
  %54 = ptrtoint ptr %func191 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %func191, align 4
  tail call void %55(ptr noundef nonnull %36) #15
  tail call fastcc void @trace_sched_kthread_work_execute_end(ptr noundef nonnull %36, ptr noundef %48)
  br label %if.end269

if.else:                                          ; preds = %if.end187.if.else_crit_edge, %if.end187.thread
  %56 = ptrtoint ptr %task23 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %task23, align 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %58 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i = icmp eq i32 %58, 0
  br i1 %tobool.not.i, label %if.else.if.then267_crit_edge, label %freezing.exit, !prof !177

if.else.if.then267_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then267

freezing.exit:                                    ; preds = %if.else
  %call4.i = tail call zeroext i1 @freezing_slow_path(ptr noundef %57) #15
  br i1 %call4.i, label %freezing.exit.if.end269_crit_edge, label %freezing.exit.if.then267_crit_edge

freezing.exit.if.then267_crit_edge:               ; preds = %freezing.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then267

freezing.exit.if.end269_crit_edge:                ; preds = %freezing.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end269

if.then267:                                       ; preds = %freezing.exit.if.then267_crit_edge, %if.else.if.then267_crit_edge
  tail call void @schedule() #15
  br label %if.end269

if.end269:                                        ; preds = %if.then267, %freezing.exit.if.end269_crit_edge, %__here242
  %59 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i.i299 = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i299 to ptr
  %task.i300 = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %task.i300 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %task.i300, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flags.i, align 4
  %and.i301 = and i32 %64, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i301)
  %tobool.not.i302 = icmp eq i32 %and.i301, 0
  br i1 %tobool.not.i302, label %if.then.i, label %if.end269.if.end.i303_crit_edge

if.end269.if.end.i303_crit_edge:                  ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i303

if.then.i:                                        ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @debug_check_no_locks_held() #15
  br label %if.end.i303

if.end.i303:                                      ; preds = %if.then.i, %if.end269.if.end.i303_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.18, i32 noundef 57) #15
  %65 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i.i.i = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %task.i.i, align 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %69 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not.i.i.i = icmp eq i32 %69, 0
  br i1 %tobool.not.i.i.i, label %if.end.i303.try_to_freeze.exit_crit_edge, label %freezing.exit.i.i, !prof !177

if.end.i303.try_to_freeze.exit_crit_edge:         ; preds = %if.end.i303
  call void @__sanitizer_cov_trace_pc() #17
  br label %try_to_freeze.exit

freezing.exit.i.i:                                ; preds = %if.end.i303
  %call4.i.i.i = tail call zeroext i1 @freezing_slow_path(ptr noundef %68) #15
  br i1 %call4.i.i.i, label %if.end.i.i304, label %freezing.exit.i.i.try_to_freeze.exit_crit_edge, !prof !176

freezing.exit.i.i.try_to_freeze.exit_crit_edge:   ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %try_to_freeze.exit

if.end.i.i304:                                    ; preds = %freezing.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call6.i.i = tail call zeroext i1 @__refrigerator(i1 noundef zeroext false) #15
  br label %try_to_freeze.exit

try_to_freeze.exit:                               ; preds = %if.end.i.i304, %freezing.exit.i.i.try_to_freeze.exit_crit_edge, %if.end.i303.try_to_freeze.exit_crit_edge
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 833, i32 noundef 0) #15
  %call.i = tail call i32 @__cond_resched() #15
  br label %__here
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_freezable() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_sched_kthread_work_execute_start(ptr noundef %work) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_kthread_work_execute_start, i32 0, i32 1), ptr blockaddress(@trace_sched_kthread_work_execute_start, %do.body)) #15
          to label %if.end48 [label %do.body], !srcloc !188

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !166) #15
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !177

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #17
  %9 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !204
  %call42 = tail call i32 @__traceiter_sched_kthread_work_execute_start(ptr noundef null, ptr noundef %work) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !205
  %13 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !177

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !191
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_kthread_work_execute_start, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_kthread_work_execute_start, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_sched_kthread_work_execute_start.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @trace_sched_kthread_work_execute_start.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 110, ptr noundef nonnull @.str.14) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !192
  %31 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_sched_kthread_work_execute_end(ptr noundef %work, ptr noundef %function) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_kthread_work_execute_end, i32 0, i32 1), ptr blockaddress(@trace_sched_kthread_work_execute_end, %do.body)) #15
          to label %if.end48 [label %do.body], !srcloc !188

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !166) #15
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !177

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #17
  %9 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !206
  %call42 = tail call i32 @__traceiter_sched_kthread_work_execute_end(ptr noundef null, ptr noundef %work, ptr noundef %function) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !207
  %13 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !177

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !191
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_kthread_work_execute_end, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_kthread_work_execute_end, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_sched_kthread_work_execute_end.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @trace_sched_kthread_work_execute_end.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 136, ptr noundef nonnull @.str.14) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !192
  %31 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @kthread_create_worker(i32 noundef %flags, ptr noundef %namefmt, ...) #0 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #15
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !180
  call void @llvm.va_start(ptr nonnull %args)
  %1 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %1)
  %.fca.0.load = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call = call fastcc ptr @__kthread_create_worker(i32 noundef -1, i32 noundef %flags, ptr noundef %namefmt, [1 x i32] %.fca.0.insert)
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #15
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__kthread_create_worker(i32 noundef %cpu, i32 noundef %flags, ptr noundef %namefmt, [1 x i32] %args.coerce) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 72) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body:                                          ; preds = %entry
  %1 = call ptr @memset(ptr %call7.i.i, i32 0, i32 72)
  %lock.i = getelementptr inbounds %struct.kthread_worker, ptr %call7.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @__kthread_init_worker.__key, i16 noundef signext 2) #15
  %dep_map.i = getelementptr inbounds %struct.kthread_worker, ptr %call7.i.i, i32 0, i32 1, i32 4
  %wait_type_inner.i = getelementptr inbounds %struct.kthread_worker, ptr %call7.i.i, i32 0, i32 1, i32 4, i32 4
  %2 = ptrtoint ptr %wait_type_inner.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %wait_type_inner.i, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @__kthread_create_worker.__key, i32 noundef 0, i8 noundef zeroext %3, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %work_list.i = getelementptr inbounds %struct.kthread_worker, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %work_list.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %work_list.i, ptr %work_list.i, align 8
  %prev.i.i = getelementptr inbounds %struct.kthread_worker, ptr %call7.i.i, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %work_list.i, ptr %prev.i.i, align 4
  %delayed_work_list.i = getelementptr inbounds %struct.kthread_worker, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %delayed_work_list.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %delayed_work_list.i, ptr %delayed_work_list.i, align 8
  %prev.i12.i = getelementptr inbounds %struct.kthread_worker, ptr %call7.i.i, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %prev.i12.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %delayed_work_list.i, ptr %prev.i12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cpu)
  %cmp = icmp sgt i32 %cpu, -1
  %not.cmp = xor i1 %cmp, true
  %spec.select = sext i1 %not.cmp to i32
  %call5 = tail call fastcc ptr @__kthread_create_on_node(ptr noundef nonnull @kthread_worker_fn, ptr noundef nonnull %call7.i.i, i32 noundef %spec.select, ptr noundef %namefmt, [1 x i32] %args.coerce)
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %fail_task, label %if.end8

if.end8:                                          ; preds = %do.body
  br i1 %cmp, label %if.then10, label %if.end8.if.end11_crit_edge

if.end8.if.end11_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.then10:                                        ; preds = %if.end8
  %call.i.i.i = tail call i32 @wait_task_inactive(ptr noundef %call5, i32 noundef 2) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i, label %do.body18.i.i.i

do.end.i.i.i:                                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 525, i32 noundef 9, ptr noundef null) #15
  br label %if.end11

do.body18.i.i.i:                                  ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  %rem.i.i.i = and i32 %cpu, 31
  %add.i.i.i = add nuw nsw i32 %rem.i.i.i, 1
  %arrayidx.i.i.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i.i.i
  %div3.i.i.i = lshr i32 %cpu, 5
  %idx.neg.i.i.i = sub nsw i32 0, %div3.i.i.i
  %add.ptr.i.i.i = getelementptr i32, ptr %arrayidx.i.i.i, i32 %idx.neg.i.i.i
  %pi_lock.i.i.i = getelementptr inbounds %struct.task_struct, ptr %call5, i32 0, i32 128
  %call20.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pi_lock.i.i.i) #15
  tail call void @do_set_cpus_allowed(ptr noundef %call5, ptr noundef %add.ptr.i.i.i) #15
  %flags23.i.i.i = getelementptr inbounds %struct.task_struct, ptr %call5, i32 0, i32 3
  %8 = ptrtoint ptr %flags23.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags23.i.i.i, align 4
  %or.i.i.i = or i32 %9, 67108864
  store i32 %or.i.i.i, ptr %flags23.i.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pi_lock.i.i.i, i32 noundef %call20.i.i.i) #15
  br label %if.end11

if.end11:                                         ; preds = %do.body18.i.i.i, %do.end.i.i.i, %if.end8.if.end11_crit_edge
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %flags, ptr %call7.i.i, align 8
  %task13 = getelementptr inbounds %struct.kthread_worker, ptr %call7.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %task13 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call5, ptr %task13, align 8
  %call14 = tail call i32 @wake_up_process(ptr noundef %call5) #15
  br label %cleanup

fail_task:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %fail_task, %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call5, %fail_task ], [ %call7.i.i, %if.end11 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @kthread_create_worker_on_cpu(i32 noundef %cpu, i32 noundef %flags, ptr noundef %namefmt, ...) #0 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #15
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !180
  call void @llvm.va_start(ptr nonnull %args)
  %1 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %1)
  %.fca.0.load = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call = call fastcc ptr @__kthread_create_worker(i32 noundef %cpu, i32 noundef %flags, ptr noundef %namefmt, [1 x i32] %.fca.0.insert)
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #15
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @kthread_queue_work(ptr noundef %worker, ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.kthread_worker, ptr %worker, i32 0, i32 1
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.rhs.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.kthread_worker, ptr %worker, i32 0, i32 1, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !176

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 954, i32 noundef 9, ptr noundef null) #15
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %1 = ptrtoint ptr %work to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %work, align 4
  %cmp.i.not.i = icmp eq ptr %2, %work
  br i1 %cmp.i.not.i, label %queuing_blocked.exit, label %if.end.i.do.body2_crit_edge

if.end.i.do.body2_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2

queuing_blocked.exit:                             ; preds = %if.end.i
  %canceling.i = getelementptr inbounds %struct.kthread_work, ptr %work, i32 0, i32 3
  %3 = ptrtoint ptr %canceling.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %canceling.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool26.i.not = icmp eq i32 %4, 0
  br i1 %tobool26.i.not, label %if.then, label %queuing_blocked.exit.do.body2_crit_edge

queuing_blocked.exit.do.body2_crit_edge:          ; preds = %queuing_blocked.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2

if.then:                                          ; preds = %queuing_blocked.exit
  %work_list = getelementptr inbounds %struct.kthread_worker, ptr %worker, i32 0, i32 2
  tail call fastcc void @kthread_insert_work_sanity_check(ptr noundef %worker, ptr noundef %work) #15
  tail call fastcc void @trace_sched_kthread_work_queue_work(ptr noundef %worker, ptr noundef %work) #15
  %prev.i.i = getelementptr inbounds %struct.kthread_worker, ptr %worker, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %work, ptr noundef %6, ptr noundef %work_list) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.list_add_tail.exit.i_crit_edge

if.then.list_add_tail.exit.i_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %work, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %work_list, ptr %work, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %work, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev3.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %work, ptr %6, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.then.list_add_tail.exit.i_crit_edge
  %worker1.i = getelementptr inbounds %struct.kthread_work, ptr %work, i32 0, i32 2
  %11 = ptrtoint ptr %worker1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %worker, ptr %worker1.i, align 4
  %current_work.i = getelementptr inbounds %struct.kthread_worker, ptr %worker, i32 0, i32 5
  %12 = ptrtoint ptr %current_work.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %current_work.i, align 4
  %tobool.not.i16 = icmp eq ptr %13, null
  br i1 %tobool.not.i16, label %land.lhs.true.i, label %list_add_tail.exit.i.do.body2_crit_edge

list_add_tail.exit.i.do.body2_crit_edge:          ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2

land.lhs.true.i:                                  ; preds = %list_add_tail.exit.i
  %task.i = getelementptr inbounds %struct.kthread_worker, ptr %worker, i32 0, i32 4
  %14 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task.i, align 4
  %tobool2.not.i = icmp eq ptr %15, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.body2_crit_edge, label %if.then.i, !prof !176

land.lhs.true.i.do.body2_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body2

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call i32 @wake_up_process(ptr noundef nonnull %15) #15
  br label %do.body2

do.body2:                                         ; preds = %if.then.i, %land.lhs.true.i.do.body2_crit_edge, %list_add_tail.exit.i.do.body2_crit_edge, %queuing_blocked.exit.do.body2_crit_edge, %if.end.i.do.body2_crit_edge
  %16 = phi i1 [ false, %queuing_blocked.exit.do.body2_crit_edge ], [ true, %list_add_tail.exit.i.do.body2_crit_edge ], [ true, %land.lhs.true.i.do.body2_crit_edge ], [ true, %if.then.i ], [ false, %if.end.i.do.body2_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call) #15
  ret i1 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kthread_delayed_work_timer_fn(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -20
  %worker2 = getelementptr i8, ptr %t, i32 -8
  %0 = ptrtoint ptr %worker2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %worker2, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.rhs, label %do.body43

land.rhs:                                         ; preds = %entry
  %.b196 = load i1, ptr @kthread_delayed_work_timer_fn.__already_done, align 1
  br i1 %.b196, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !177

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @kthread_delayed_work_timer_fn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1030, i32 noundef 9, ptr noundef null) #15
  br label %cleanup

do.body43:                                        ; preds = %entry
  %lock = getelementptr inbounds %struct.kthread_worker, ptr %1, i32 0, i32 1
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #15
  %2 = ptrtoint ptr %worker2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %worker2, align 4
  %cmp49.not = icmp eq ptr %3, %1
  br i1 %cmp49.not, label %do.body43.if.end96_crit_edge, label %land.rhs58

do.body43.if.end96_crit_edge:                     ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end96

land.rhs58:                                       ; preds = %do.body43
  %.b192195 = load i1, ptr @kthread_delayed_work_timer_fn.__already_done.7, align 1
  br i1 %.b192195, label %land.rhs58.if.end96_crit_edge, label %if.then69, !prof !177

land.rhs58.if.end96_crit_edge:                    ; preds = %land.rhs58
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end96

if.then69:                                        ; preds = %land.rhs58
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @kthread_delayed_work_timer_fn.__already_done.7, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1035, i32 noundef 9, ptr noundef null) #15
  br label %if.end96

if.end96:                                         ; preds = %if.then69, %land.rhs58.if.end96_crit_edge, %do.body43.if.end96_crit_edge
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %add.ptr, align 4
  %cmp.i.not = icmp eq ptr %5, %add.ptr
  br i1 %cmp.i.not, label %land.rhs114, label %if.end96.if.end152_crit_edge

if.end96.if.end152_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end152

land.rhs114:                                      ; preds = %if.end96
  %.b193194 = load i1, ptr @kthread_delayed_work_timer_fn.__already_done.8, align 1
  br i1 %.b193194, label %land.rhs114.if.end152_crit_edge, label %if.then125, !prof !177

land.rhs114.if.end152_crit_edge:                  ; preds = %land.rhs114
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end152

if.then125:                                       ; preds = %land.rhs114
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @kthread_delayed_work_timer_fn.__already_done.8, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1038, i32 noundef 9, ptr noundef null) #15
  br label %if.end152

if.end152:                                        ; preds = %if.then125, %land.rhs114.if.end152_crit_edge, %if.end96.if.end152_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %add.ptr) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.end152.list_del_init.exit_crit_edge

if.end152.list_del_init.exit_crit_edge:           ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr i8, ptr %t, i32 -16
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end152.list_del_init.exit_crit_edge
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %add.ptr, ptr %add.ptr, align 4
  %prev.i3.i = getelementptr i8, ptr %t, i32 -16
  %13 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr, ptr %prev.i3.i, align 4
  %canceling = getelementptr i8, ptr %t, i32 -4
  %14 = ptrtoint ptr %canceling to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %canceling, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool161.not = icmp eq i32 %15, 0
  br i1 %tobool161.not, label %if.then162, label %list_del_init.exit.do.body164_crit_edge

list_del_init.exit.do.body164_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body164

if.then162:                                       ; preds = %list_del_init.exit
  %work_list = getelementptr inbounds %struct.kthread_worker, ptr %1, i32 0, i32 2
  tail call fastcc void @kthread_insert_work_sanity_check(ptr noundef nonnull %1, ptr noundef %add.ptr) #15
  tail call fastcc void @trace_sched_kthread_work_queue_work(ptr noundef nonnull %1, ptr noundef %add.ptr) #15
  %prev.i.i198 = getelementptr inbounds %struct.kthread_worker, ptr %1, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %prev.i.i198 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i198, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %add.ptr, ptr noundef %17, ptr noundef %work_list) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then162.list_add_tail.exit.i_crit_edge

if.then162.list_add_tail.exit.i_crit_edge:        ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #17
  %18 = ptrtoint ptr %prev.i.i198 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr, ptr %prev.i.i198, align 4
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %work_list, ptr %add.ptr, align 4
  %20 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev.i3.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %add.ptr, ptr %17, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.then162.list_add_tail.exit.i_crit_edge
  %22 = ptrtoint ptr %worker2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %1, ptr %worker2, align 4
  %current_work.i = getelementptr inbounds %struct.kthread_worker, ptr %1, i32 0, i32 5
  %23 = ptrtoint ptr %current_work.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %current_work.i, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %land.lhs.true.i, label %list_add_tail.exit.i.do.body164_crit_edge

list_add_tail.exit.i.do.body164_crit_edge:        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body164

land.lhs.true.i:                                  ; preds = %list_add_tail.exit.i
  %task.i = getelementptr inbounds %struct.kthread_worker, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task.i, align 4
  %tobool2.not.i = icmp eq ptr %26, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.body164_crit_edge, label %if.then.i, !prof !176

land.lhs.true.i.do.body164_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body164

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call i32 @wake_up_process(ptr noundef nonnull %26) #15
  br label %do.body164

do.body164:                                       ; preds = %if.then.i, %land.lhs.true.i.do.body164_crit_edge, %list_add_tail.exit.i.do.body164_crit_edge, %list_del_init.exit.do.body164_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call) #15
  br label %cleanup

cleanup:                                          ; preds = %do.body164, %if.then, %land.rhs.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @kthread_queue_delayed_work(ptr noundef %worker, ptr noundef %dwork, i32 noundef %delay) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.kthread_worker, ptr %worker, i32 0, i32 1
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.rhs.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.kthread_worker, ptr %worker, i32 0, i32 1, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !176

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 954, i32 noundef 9, ptr noundef null) #15
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %1 = ptrtoint ptr %dwork to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %dwork, align 4
  %cmp.i.not.i = icmp eq ptr %2, %dwork
  br i1 %cmp.i.not.i, label %queuing_blocked.exit, label %if.end.i.do.body3_crit_edge

if.end.i.do.body3_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body3

queuing_blocked.exit:                             ; preds = %if.end.i
  %canceling.i = getelementptr inbounds %struct.kthread_work, ptr %dwork, i32 0, i32 3
  %3 = ptrtoint ptr %canceling.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %canceling.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool26.i.not = icmp eq i32 %4, 0
  br i1 %tobool26.i.not, label %if.then, label %queuing_blocked.exit.do.body3_crit_edge

queuing_blocked.exit.do.body3_crit_edge:          ; preds = %queuing_blocked.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body3

if.then:                                          ; preds = %queuing_blocked.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @__kthread_queue_delayed_work(ptr noundef %worker, ptr noundef %dwork, i32 noundef %delay)
  br label %do.body3

do.body3:                                         ; preds = %if.then, %queuing_blocked.exit.do.body3_crit_edge, %if.end.i.do.body3_crit_edge
  %5 = phi i1 [ false, %queuing_blocked.exit.do.body3_crit_edge ], [ true, %if.then ], [ false, %if.end.i.do.body3_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call) #15
  ret i1 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__kthread_queue_delayed_work(ptr noundef %worker, ptr noundef %dwork, i32 noundef %delay) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %timer1 = getelementptr inbounds %struct.kthread_delayed_work, ptr %dwork, i32 0, i32 1
  %function = getelementptr inbounds %struct.kthread_delayed_work, ptr %dwork, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %function, align 4
  %cmp.not = icmp eq ptr %1, @kthread_delayed_work_timer_fn
  br i1 %cmp.not, label %entry.if.end29_crit_edge, label %land.rhs

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b55 = load i1, ptr @__kthread_queue_delayed_work.__already_done, align 1
  br i1 %.b55, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !177

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @__kthread_queue_delayed_work.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1055, i32 noundef 9, ptr noundef null) #15
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delay)
  %tobool37.not = icmp eq i32 %delay, 0
  br i1 %tobool37.not, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end29
  %work_list = getelementptr inbounds %struct.kthread_worker, ptr %worker, i32 0, i32 2
  tail call fastcc void @kthread_insert_work_sanity_check(ptr noundef %worker, ptr noundef %dwork) #15
  tail call fastcc void @trace_sched_kthread_work_queue_work(ptr noundef %worker, ptr noundef %dwork) #15
  %prev.i.i = getelementptr inbounds %struct.kthread_worker, ptr %worker, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %dwork, ptr noundef %3, ptr noundef %work_list) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then38.list_add_tail.exit.i_crit_edge

if.then38.list_add_tail.exit.i_crit_edge:         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dwork, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %dwork to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %work_list, ptr %dwork, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %dwork, i32 0, i32 1
  %6 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev3.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %dwork, ptr %3, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.then38.list_add_tail.exit.i_crit_edge
  %worker1.i = getelementptr inbounds %struct.kthread_work, ptr %dwork, i32 0, i32 2
  %8 = ptrtoint ptr %worker1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %worker, ptr %worker1.i, align 4
  %current_work.i = getelementptr inbounds %struct.kthread_worker, ptr %worker, i32 0, i32 5
  %9 = ptrtoint ptr %current_work.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %current_work.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %land.lhs.true.i, label %list_add_tail.exit.i.cleanup_crit_edge

list_add_tail.exit.i.cleanup_crit_edge:           ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.i:                                  ; preds = %list_add_tail.exit.i
  %task.i = getelementptr inbounds %struct.kthread_worker, ptr %worker, i32 0, i32 4
  %11 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task.i, align 4
  %tobool2.not.i = icmp eq ptr %12, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then.i, !prof !176

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call i32 @wake_up_process(ptr noundef nonnull %12) #15
  br label %cleanup

if.end39:                                         ; preds = %if.end29
  tail call fastcc void @kthread_insert_work_sanity_check(ptr noundef %worker, ptr noundef %dwork)
  %delayed_work_list = getelementptr inbounds %struct.kthread_worker, ptr %worker, i32 0, i32 3
  %13 = ptrtoint ptr %delayed_work_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %delayed_work_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %dwork, ptr noundef %delayed_work_list, ptr noundef %14) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.end39.list_add.exit_crit_edge

if.end39.list_add.exit_crit_edge:                 ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dwork, ptr %prev1.i.i, align 4
  %16 = ptrtoint ptr %dwork to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %14, ptr %dwork, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %dwork, i32 0, i32 1
  %17 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %delayed_work_list, ptr %prev3.i.i, align 4
  %18 = ptrtoint ptr %delayed_work_list to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %dwork, ptr %delayed_work_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end39.list_add.exit_crit_edge
  %worker40 = getelementptr inbounds %struct.kthread_work, ptr %dwork, i32 0, i32 2
  %19 = ptrtoint ptr %worker40 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %worker, ptr %worker40, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %20, %delay
  %expires = getelementptr inbounds %struct.kthread_delayed_work, ptr %dwork, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %timer1) #15
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %if.then.i, %land.lhs.true.i.cleanup_crit_edge, %list_add_tail.exit.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kthread_flush_work(ptr noundef %work) #0 align 64 {
entry:
  %fwork = alloca %struct.kthread_flush_work, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %fwork) #15
  %0 = getelementptr inbounds i8, ptr %fwork, i32 24
  %1 = call ptr @memset(ptr %0, i32 255, i32 52)
  %2 = ptrtoint ptr %fwork to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fwork, ptr %fwork, align 4
  %prev = getelementptr inbounds %struct.list_head, ptr %fwork, i32 0, i32 1
  %3 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %fwork, ptr %prev, align 4
  %func = getelementptr inbounds %struct.kthread_work, ptr %fwork, i32 0, i32 1
  %4 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @kthread_flush_work_fn, ptr %func, align 4
  %worker = getelementptr inbounds %struct.kthread_work, ptr %fwork, i32 0, i32 2
  %5 = ptrtoint ptr %worker to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %worker, align 4
  %canceling = getelementptr inbounds %struct.kthread_work, ptr %fwork, i32 0, i32 3
  %6 = ptrtoint ptr %canceling to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %canceling, align 4
  %done = getelementptr inbounds %struct.kthread_flush_work, ptr %fwork, i32 0, i32 1
  %7 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.kthread_flush_work, ptr %fwork, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @init_completion.__key) #15
  %worker9 = getelementptr inbounds %struct.kthread_work, ptr %work, i32 0, i32 2
  %8 = ptrtoint ptr %worker9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %worker9, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.kthread_worker, ptr %9, i32 0, i32 1
  call void @_raw_spin_lock_irq(ptr noundef %lock) #15
  %10 = ptrtoint ptr %worker9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %worker9, align 4
  %cmp.not = icmp eq ptr %11, %9
  br i1 %cmp.not, label %if.end.if.end41_crit_edge, label %land.rhs

if.end.if.end41_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end41

land.rhs:                                         ; preds = %if.end
  %.b82 = load i1, ptr @kthread_flush_work.__already_done, align 1
  br i1 %.b82, label %land.rhs.if.end41_crit_edge, label %if.then18, !prof !177

land.rhs.if.end41_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end41

if.then18:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @kthread_flush_work.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1145, i32 noundef 9, ptr noundef null) #15
  br label %if.end41

if.end41:                                         ; preds = %if.then18, %land.rhs.if.end41_crit_edge, %if.end.if.end41_crit_edge
  %12 = ptrtoint ptr %work to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %work, align 4
  %cmp.i.not = icmp eq ptr %13, %work
  br i1 %cmp.i.not, label %if.else, label %if.then51

if.then51:                                        ; preds = %if.end41
  call fastcc void @kthread_insert_work_sanity_check(ptr noundef nonnull %9, ptr noundef nonnull %fwork) #15
  call fastcc void @trace_sched_kthread_work_queue_work(ptr noundef nonnull %9, ptr noundef nonnull %fwork) #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %fwork, ptr noundef %15, ptr noundef %13) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then51.list_add_tail.exit.i_crit_edge

if.then51.list_add_tail.exit.i_crit_edge:         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %fwork, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %fwork to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %13, ptr %fwork, align 4
  %18 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %fwork, ptr %15, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.then51.list_add_tail.exit.i_crit_edge
  %20 = ptrtoint ptr %worker to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %9, ptr %worker, align 4
  %current_work.i = getelementptr inbounds %struct.kthread_worker, ptr %9, i32 0, i32 5
  %21 = ptrtoint ptr %current_work.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %current_work.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %land.lhs.true.i, label %list_add_tail.exit.i.if.then64_crit_edge

list_add_tail.exit.i.if.then64_crit_edge:         ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then64

land.lhs.true.i:                                  ; preds = %list_add_tail.exit.i
  %task.i = getelementptr inbounds %struct.kthread_worker, ptr %9, i32 0, i32 4
  %23 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task.i, align 4
  %tobool2.not.i = icmp eq ptr %24, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.then64_crit_edge, label %land.lhs.true.i.if.then64.sink.split_crit_edge, !prof !176

land.lhs.true.i.if.then64.sink.split_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then64.sink.split

land.lhs.true.i.if.then64_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then64

if.else:                                          ; preds = %if.end41
  %current_work = getelementptr inbounds %struct.kthread_worker, ptr %9, i32 0, i32 5
  %25 = ptrtoint ptr %current_work to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %current_work, align 4
  %cmp55 = icmp eq ptr %26, %work
  br i1 %cmp55, label %if.then56, label %if.end61

if.then56:                                        ; preds = %if.else
  %work_list = getelementptr inbounds %struct.kthread_worker, ptr %9, i32 0, i32 2
  %27 = ptrtoint ptr %work_list to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %work_list, align 4
  call fastcc void @kthread_insert_work_sanity_check(ptr noundef nonnull %9, ptr noundef nonnull %fwork) #15
  call fastcc void @trace_sched_kthread_work_queue_work(ptr noundef nonnull %9, ptr noundef nonnull %fwork) #15
  %prev.i.i84 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i84 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i84, align 4
  %call.i.i.i85 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %fwork, ptr noundef %30, ptr noundef %28) #15
  br i1 %call.i.i.i85, label %if.end.i.i.i87, label %if.then56.list_add_tail.exit.i91_crit_edge

if.then56.list_add_tail.exit.i91_crit_edge:       ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit.i91

if.end.i.i.i87:                                   ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #17
  %31 = ptrtoint ptr %prev.i.i84 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %fwork, ptr %prev.i.i84, align 4
  %32 = ptrtoint ptr %fwork to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %28, ptr %fwork, align 4
  %33 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %fwork, ptr %30, align 4
  br label %list_add_tail.exit.i91

list_add_tail.exit.i91:                           ; preds = %if.end.i.i.i87, %if.then56.list_add_tail.exit.i91_crit_edge
  %35 = ptrtoint ptr %worker to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %9, ptr %worker, align 4
  %36 = ptrtoint ptr %current_work to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %current_work, align 4
  %tobool.not.i90 = icmp eq ptr %37, null
  br i1 %tobool.not.i90, label %land.lhs.true.i94, label %list_add_tail.exit.i91.if.then64_crit_edge

list_add_tail.exit.i91.if.then64_crit_edge:       ; preds = %list_add_tail.exit.i91
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then64

land.lhs.true.i94:                                ; preds = %list_add_tail.exit.i91
  %task.i92 = getelementptr inbounds %struct.kthread_worker, ptr %9, i32 0, i32 4
  %38 = ptrtoint ptr %task.i92 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task.i92, align 4
  %tobool2.not.i93 = icmp eq ptr %39, null
  br i1 %tobool2.not.i93, label %land.lhs.true.i94.if.then64_crit_edge, label %land.lhs.true.i94.if.then64.sink.split_crit_edge, !prof !176

land.lhs.true.i94.if.then64.sink.split_crit_edge: ; preds = %land.lhs.true.i94
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then64.sink.split

land.lhs.true.i94.if.then64_crit_edge:            ; preds = %land.lhs.true.i94
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then64

if.end61:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #15
  br label %cleanup

if.then64.sink.split:                             ; preds = %land.lhs.true.i94.if.then64.sink.split_crit_edge, %land.lhs.true.i.if.then64.sink.split_crit_edge
  %.sink = phi ptr [ %24, %land.lhs.true.i.if.then64.sink.split_crit_edge ], [ %39, %land.lhs.true.i94.if.then64.sink.split_crit_edge ]
  %call.i95 = call i32 @wake_up_process(ptr noundef nonnull %.sink) #15
  br label %if.then64

if.then64:                                        ; preds = %if.then64.sink.split, %land.lhs.true.i94.if.then64_crit_edge, %list_add_tail.exit.i91.if.then64_crit_edge, %land.lhs.true.i.if.then64_crit_edge, %list_add_tail.exit.i.if.then64_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #15
  call void @wait_for_completion(ptr noundef %done) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then64, %if.end61, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %fwork) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kthread_flush_work_fn(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %done = getelementptr inbounds %struct.kthread_flush_work, ptr %work, i32 0, i32 1
  tail call void @complete(ptr noundef %done) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @kthread_mod_delayed_work(ptr noundef %worker, ptr noundef %dwork, i32 noundef %delay) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.kthread_worker, ptr %worker, i32 0, i32 1
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #15
  %worker2 = getelementptr inbounds %struct.kthread_work, ptr %dwork, i32 0, i32 2
  %0 = ptrtoint ptr %worker2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %worker2, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.fast_queue_crit_edge, label %if.end

entry.fast_queue_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %fast_queue

if.end:                                           ; preds = %entry
  %cmp4.not = icmp eq ptr %1, %worker
  br i1 %cmp4.not, label %if.end.if.end40_crit_edge, label %land.rhs

if.end.if.end40_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40

land.rhs:                                         ; preds = %if.end
  %.b73 = load i1, ptr @kthread_mod_delayed_work.__already_done, align 1
  br i1 %.b73, label %land.rhs.if.end40_crit_edge, label %if.then14, !prof !177

land.rhs.if.end40_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40

if.then14:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @kthread_mod_delayed_work.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1256, i32 noundef 9, ptr noundef null) #15
  br label %if.end40

if.end40:                                         ; preds = %if.then14, %land.rhs.if.end40_crit_edge, %if.end.if.end40_crit_edge
  %2 = ptrtoint ptr %worker2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %worker2, align 4
  %canceling.i = getelementptr inbounds %struct.kthread_work, ptr %dwork, i32 0, i32 3
  %4 = ptrtoint ptr %canceling.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %canceling.i, align 4
  %inc.i = add i32 %5, 1
  store i32 %inc.i, ptr %canceling.i, align 4
  %lock.i = getelementptr inbounds %struct.kthread_worker, ptr %3, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call) #15
  %timer.i = getelementptr inbounds %struct.kthread_delayed_work, ptr %dwork, i32 0, i32 1
  %call.i = tail call i32 @del_timer_sync(ptr noundef %timer.i) #15
  %call10.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #15
  %6 = ptrtoint ptr %canceling.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %canceling.i, align 4
  %dec.i = add i32 %7, -1
  store i32 %dec.i, ptr %canceling.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool48.not = icmp eq i32 %dec.i, 0
  br i1 %tobool48.not, label %if.end50, label %if.end40.do.body53_crit_edge

if.end40.do.body53_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body53

if.end50:                                         ; preds = %if.end40
  %8 = ptrtoint ptr %dwork to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %dwork, align 4
  %cmp.i.i = icmp ne ptr %9, %dwork
  br i1 %cmp.i.i, label %if.then.i, label %if.end50.__kthread_cancel_work.exit_crit_edge

if.end50.__kthread_cancel_work.exit_crit_edge:    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #17
  br label %__kthread_cancel_work.exit

if.then.i:                                        ; preds = %if.end50
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %dwork) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del_init.exit.i_crit_edge

if.then.i.list_del_init.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %dwork, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i.i, align 4
  %12 = ptrtoint ptr %dwork to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dwork, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then.i.list_del_init.exit.i_crit_edge
  %16 = ptrtoint ptr %dwork to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %dwork, ptr %dwork, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %dwork, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dwork, ptr %prev.i3.i.i, align 4
  br label %__kthread_cancel_work.exit

__kthread_cancel_work.exit:                       ; preds = %list_del_init.exit.i, %if.end50.__kthread_cancel_work.exit_crit_edge
  %conv52 = zext i1 %cmp.i.i to i32
  br label %fast_queue

fast_queue:                                       ; preds = %__kthread_cancel_work.exit, %entry.fast_queue_crit_edge
  %flags.0 = phi i32 [ %call, %entry.fast_queue_crit_edge ], [ %call10.i, %__kthread_cancel_work.exit ]
  %ret.0 = phi i32 [ 0, %entry.fast_queue_crit_edge ], [ %conv52, %__kthread_cancel_work.exit ]
  tail call fastcc void @__kthread_queue_delayed_work(ptr noundef %worker, ptr noundef %dwork, i32 noundef %delay)
  br label %do.body53

do.body53:                                        ; preds = %fast_queue, %if.end40.do.body53_crit_edge
  %flags.1 = phi i32 [ %flags.0, %fast_queue ], [ %call10.i, %if.end40.do.body53_crit_edge ]
  %ret.1 = phi i32 [ %ret.0, %fast_queue ], [ 1, %if.end40.do.body53_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool62 = icmp ne i32 %ret.1, 0
  ret i1 %tobool62
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @kthread_cancel_work_sync(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc zeroext i1 @__kthread_cancel_work_sync(ptr noundef %work, i1 noundef zeroext false)
  ret i1 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @__kthread_cancel_work_sync(ptr noundef %work, i1 noundef zeroext %is_dwork) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %worker1 = getelementptr inbounds %struct.kthread_work, ptr %work, i32 0, i32 2
  %0 = ptrtoint ptr %worker1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %worker1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %do.body

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.kthread_worker, ptr %1, i32 0, i32 1
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #15
  %2 = ptrtoint ptr %worker1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %worker1, align 4
  %cmp3.not = icmp eq ptr %3, %1
  br i1 %cmp3.not, label %do.body.if.end40_crit_edge, label %land.rhs

do.body.if.end40_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40

land.rhs:                                         ; preds = %do.body
  %.b102 = load i1, ptr @__kthread_cancel_work_sync.__already_done, align 1
  br i1 %.b102, label %land.rhs.if.end40_crit_edge, label %if.then14, !prof !177

land.rhs.if.end40_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40

if.then14:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @__kthread_cancel_work_sync.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1297, i32 noundef 9, ptr noundef null) #15
  br label %if.end40

if.end40:                                         ; preds = %if.then14, %land.rhs.if.end40_crit_edge, %do.body.if.end40_crit_edge
  br i1 %is_dwork, label %if.then49, label %if.end40.if.end50_crit_edge

if.end40.if.end50_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end50

if.then49:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %worker1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %worker1, align 4
  %canceling.i = getelementptr inbounds %struct.kthread_work, ptr %work, i32 0, i32 3
  %6 = ptrtoint ptr %canceling.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %canceling.i, align 4
  %inc.i = add i32 %7, 1
  store i32 %inc.i, ptr %canceling.i, align 4
  %lock.i = getelementptr inbounds %struct.kthread_worker, ptr %5, i32 0, i32 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call) #15
  %timer.i = getelementptr inbounds %struct.kthread_delayed_work, ptr %work, i32 0, i32 1
  %call.i = tail call i32 @del_timer_sync(ptr noundef %timer.i) #15
  %call10.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #15
  %8 = ptrtoint ptr %canceling.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %canceling.i, align 4
  %dec.i = add i32 %9, -1
  store i32 %dec.i, ptr %canceling.i, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end40.if.end50_crit_edge
  %flags.0 = phi i32 [ %call10.i, %if.then49 ], [ %call, %if.end40.if.end50_crit_edge ]
  %10 = ptrtoint ptr %work to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %work, align 4
  %cmp.i.i = icmp ne ptr %11, %work
  br i1 %cmp.i.i, label %if.then.i, label %if.end50.__kthread_cancel_work.exit_crit_edge

if.end50.__kthread_cancel_work.exit_crit_edge:    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #17
  br label %__kthread_cancel_work.exit

if.then.i:                                        ; preds = %if.end50
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %work) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del_init.exit.i_crit_edge

if.then.i.list_del_init.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %work, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i.i, align 4
  %14 = ptrtoint ptr %work to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %work, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then.i.list_del_init.exit.i_crit_edge
  %18 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %work, ptr %work, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %work, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %work, ptr %prev.i3.i.i, align 4
  br label %__kthread_cancel_work.exit

__kthread_cancel_work.exit:                       ; preds = %list_del_init.exit.i, %if.end50.__kthread_cancel_work.exit_crit_edge
  %current_work = getelementptr inbounds %struct.kthread_worker, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %current_work to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %current_work, align 4
  %cmp53.not = icmp eq ptr %21, %work
  br i1 %cmp53.not, label %if.end56, label %__kthread_cancel_work.exit.do.body77_crit_edge

__kthread_cancel_work.exit.do.body77_crit_edge:   ; preds = %__kthread_cancel_work.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body77

if.end56:                                         ; preds = %__kthread_cancel_work.exit
  call void @__sanitizer_cov_trace_pc() #17
  %canceling = getelementptr inbounds %struct.kthread_work, ptr %work, i32 0, i32 3
  %22 = ptrtoint ptr %canceling to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %canceling, align 4
  %inc = add i32 %23, 1
  store i32 %inc, ptr %canceling, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0) #15
  tail call void @kthread_flush_work(ptr noundef %work)
  %call73 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #15
  %24 = ptrtoint ptr %canceling to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %canceling, align 4
  %dec = add i32 %25, -1
  store i32 %dec, ptr %canceling, align 4
  br label %do.body77

do.body77:                                        ; preds = %if.end56, %__kthread_cancel_work.exit.do.body77_crit_edge
  %flags.1 = phi i32 [ %call73, %if.end56 ], [ %flags.0, %__kthread_cancel_work.exit.do.body77_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.1) #15
  br label %out

out:                                              ; preds = %do.body77, %entry.out_crit_edge
  %ret.0 = phi i1 [ %cmp.i.i, %do.body77 ], [ false, %entry.out_crit_edge ]
  ret i1 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @kthread_cancel_delayed_work_sync(ptr noundef %dwork) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc zeroext i1 @__kthread_cancel_work_sync(ptr noundef %dwork, i1 noundef zeroext true)
  ret i1 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kthread_flush_worker(ptr noundef %worker) #0 align 64 {
entry:
  %fwork = alloca %struct.kthread_flush_work, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %fwork) #15
  %0 = getelementptr inbounds i8, ptr %fwork, i32 24
  %1 = call ptr @memset(ptr %0, i32 255, i32 52)
  %2 = ptrtoint ptr %fwork to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fwork, ptr %fwork, align 4
  %prev = getelementptr inbounds %struct.list_head, ptr %fwork, i32 0, i32 1
  %3 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %fwork, ptr %prev, align 4
  %func = getelementptr inbounds %struct.kthread_work, ptr %fwork, i32 0, i32 1
  %4 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @kthread_flush_work_fn, ptr %func, align 4
  %worker5 = getelementptr inbounds %struct.kthread_work, ptr %fwork, i32 0, i32 2
  %5 = ptrtoint ptr %worker5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %worker5, align 4
  %canceling = getelementptr inbounds %struct.kthread_work, ptr %fwork, i32 0, i32 3
  %6 = ptrtoint ptr %canceling to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %canceling, align 4
  %done = getelementptr inbounds %struct.kthread_flush_work, ptr %fwork, i32 0, i32 1
  %7 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.kthread_flush_work, ptr %fwork, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @init_completion.__key) #15
  %call = call zeroext i1 @kthread_queue_work(ptr noundef %worker, ptr noundef nonnull %fwork)
  call void @wait_for_completion(ptr noundef %done) #15
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %fwork) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kthread_destroy_worker(ptr noundef %worker) #0 align 64 {
entry:
  %fwork.i = alloca %struct.kthread_flush_work, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %task1 = getelementptr inbounds %struct.kthread_worker, ptr %worker, i32 0, i32 4
  %0 = ptrtoint ptr %task1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %task1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !176

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1392, i32 noundef 9, ptr noundef null) #15
  br label %cleanup

if.end24:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %fwork.i) #15
  %2 = getelementptr inbounds i8, ptr %fwork.i, i32 24
  %3 = call ptr @memset(ptr %2, i32 255, i32 52)
  %4 = ptrtoint ptr %fwork.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %fwork.i, ptr %fwork.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %fwork.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %fwork.i, ptr %prev.i, align 4
  %func.i = getelementptr inbounds %struct.kthread_work, ptr %fwork.i, i32 0, i32 1
  %6 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @kthread_flush_work_fn, ptr %func.i, align 4
  %worker5.i = getelementptr inbounds %struct.kthread_work, ptr %fwork.i, i32 0, i32 2
  %7 = ptrtoint ptr %worker5.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %worker5.i, align 4
  %canceling.i = getelementptr inbounds %struct.kthread_work, ptr %fwork.i, i32 0, i32 3
  %8 = ptrtoint ptr %canceling.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %canceling.i, align 4
  %done.i = getelementptr inbounds %struct.kthread_flush_work, ptr %fwork.i, i32 0, i32 1
  %9 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %done.i, align 4
  call void @__init_swait_queue_head(ptr noundef %2, ptr noundef nonnull @.str.11, ptr noundef nonnull @init_completion.__key) #15
  %call.i = call zeroext i1 @kthread_queue_work(ptr noundef %worker, ptr noundef nonnull %fwork.i) #15
  call void @wait_for_completion(ptr noundef %done.i) #15
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %fwork.i) #15
  %call = call i32 @kthread_stop(ptr noundef nonnull %1)
  %work_list = getelementptr inbounds %struct.kthread_worker, ptr %worker, i32 0, i32 2
  %10 = ptrtoint ptr %work_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %work_list, align 4
  %cmp.i.not = icmp eq ptr %11, %work_list
  br i1 %cmp.i.not, label %if.end24.if.end51_crit_edge, label %do.end45, !prof !177

if.end24.if.end51_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end51

do.end45:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1397, i32 noundef 9, ptr noundef null) #15
  br label %if.end51

if.end51:                                         ; preds = %do.end45, %if.end24.if.end51_crit_edge
  call void @kfree(ptr noundef %worker) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kthread_use_mm(ptr noundef %mm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %flags = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b143 = load i1, ptr @kthread_use_mm.__already_done, align 1
  br i1 %.b143, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !177

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @kthread_use_mm.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1411, i32 noundef 9, ptr noundef null) #15
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %mm38 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %6 = ptrtoint ptr %mm38 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mm38, align 8
  %tobool39.not = icmp eq ptr %7, null
  br i1 %tobool39.not, label %if.end29.if.end84_crit_edge, label %land.rhs46

if.end29.if.end84_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end84

land.rhs46:                                       ; preds = %if.end29
  %.b141142 = load i1, ptr @kthread_use_mm.__already_done.9, align 1
  br i1 %.b141142, label %land.rhs46.if.end84_crit_edge, label %if.then57, !prof !177

land.rhs46.if.end84_crit_edge:                    ; preds = %land.rhs46
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end84

if.then57:                                        ; preds = %land.rhs46
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @kthread_use_mm.__already_done.9, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1412, i32 noundef 9, ptr noundef null) #15
  br label %if.end84

if.end84:                                         ; preds = %if.then57, %land.rhs46.if.end84_crit_edge, %if.end29.if.end84_crit_edge
  %alloc_lock.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 127
  tail call void @_raw_spin_lock(ptr noundef %alloc_lock.i) #15
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !198
  %and.i.i = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool94.not = icmp eq i32 %and.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #15, !srcloc !208
  br i1 %tobool94.not, label %if.then97, label %if.end84.if.end98_crit_edge

if.end84.if.end98_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end98

if.then97:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @trace_hardirqs_off() #15
  br label %if.end98

if.end98:                                         ; preds = %if.then97, %if.end84.if.end98_crit_edge
  %active_mm101 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 54
  %9 = ptrtoint ptr %active_mm101 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %active_mm101, align 4
  %cmp.not = icmp eq ptr %10, %mm
  br i1 %cmp.not, label %do.end114.critedge, label %if.then102

if.then102:                                       ; preds = %if.end98
  %mm_count.i = getelementptr inbounds %struct.anon.2, ptr %mm, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mm_count.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %mm_count.i, i32 1, i32 3, i32 1) #15
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mm_count.i, ptr %mm_count.i, i32 1, ptr elementtype(i32) %mm_count.i) #15, !srcloc !209
  %12 = ptrtoint ptr %active_mm101 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %mm, ptr %active_mm101, align 4
  %13 = ptrtoint ptr %mm38 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %mm, ptr %mm38, align 8
  tail call void @membarrier_update_current_mm(ptr noundef %mm) #15
  tail call fastcc void @switch_mm(ptr noundef %10, ptr noundef %mm, ptr noundef %3)
  tail call void @trace_hardirqs_on() #15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !210
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i) #15
  %mm_count.i145 = getelementptr inbounds %struct.anon.2, ptr %10, i32 0, i32 11
  %call.i.i.i146 = tail call zeroext i1 @__kasan_check_write(ptr noundef %mm_count.i145, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !211
  tail call void @llvm.prefetch.p0(ptr %mm_count.i145, i32 1, i32 3, i32 1) #15
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mm_count.i145, ptr %mm_count.i145, i32 1, ptr elementtype(i32) %mm_count.i145) #15, !srcloc !212
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !213
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %if.then102.if.end117_crit_edge, !prof !176

if.then102.if.end117_crit_edge:                   ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end117

if.then.i:                                        ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__mmdrop(ptr noundef %10) #15
  br label %if.end117

do.end114.critedge:                               ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %mm38 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %mm, ptr %mm38, align 8
  tail call void @membarrier_update_current_mm(ptr noundef %mm) #15
  tail call fastcc void @switch_mm(ptr noundef %mm, ptr noundef %mm, ptr noundef %3)
  tail call void @trace_hardirqs_on() #15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !210
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !214
  br label %if.end117

if.end117:                                        ; preds = %do.end114.critedge, %if.then.i, %if.then102.if.end117_crit_edge
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %and.i148 = and i32 %17, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i148)
  %tobool.not.i = icmp eq i32 %and.i148, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end117.to_kthread.exit_crit_edge, !prof !176

if.end117.to_kthread.exit_crit_edge:              ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #17
  br label %to_kthread.exit

do.end.i:                                         ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef null) #15
  br label %to_kthread.exit

to_kthread.exit:                                  ; preds = %do.end.i, %if.end117.to_kthread.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @membarrier_update_current_mm(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @switch_mm(ptr noundef readnone %prev, ptr noundef %next, ptr noundef %tsk) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu1 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smp_on_up to i32))
  %4 = load i32, ptr @smp_on_up, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not.i = icmp eq i32 %4, 0
  br i1 %tobool.i.not.i, label %entry.if.end_crit_edge, label %cache_ops_need_broadcast.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

cache_ops_need_broadcast.exit:                    ; preds = %entry
  %5 = tail call i32 asm "mrc\09p15, 0, $0, c0, c1, 7", "=r,~{memory}"() #15, !srcloc !215
  %6 = and i32 %5, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.not = icmp eq i32 %6, 0
  br i1 %cmp.i.not, label %land.lhs.true, label %cache_ops_need_broadcast.exit.if.end_crit_edge

cache_ops_need_broadcast.exit.if.end_crit_edge:   ; preds = %cache_ops_need_broadcast.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %cache_ops_need_broadcast.exit
  %cpu_bitmap.i = getelementptr inbounds %struct.mm_struct, ptr %next, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i = tail call i32 @_find_first_bit_be(ptr noundef %cpu_bitmap.i, i32 noundef %7) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %7)
  %cmp4.i.i = icmp eq i32 %call.i.i, %7
  br i1 %cmp4.i.i, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true5

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %3)
  %cmp.not.i.i.i = icmp ugt i32 %8, %3
  br i1 %cmp.not.i.i.i, label %land.lhs.true5.cpumask_test_cpu.exit_crit_edge, label %land.rhs.i.i.i

land.lhs.true5.cpumask_test_cpu.exit_crit_edge:   ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpumask_test_cpu.exit

land.rhs.i.i.i:                                   ; preds = %land.lhs.true5
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !177

land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge:   ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpumask_test_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpumask_test_cpu.exit

cpumask_test_cpu.exit:                            ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_test_cpu.exit_crit_edge, %land.lhs.true5.cpumask_test_cpu.exit_crit_edge
  %div3.i.i = lshr i32 %3, 5
  %arrayidx.i.i = getelementptr i32, ptr %cpu_bitmap.i, i32 %div3.i.i
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i27 = and i32 %3, 31
  %11 = shl nuw i32 1, %and.i.i27
  %12 = and i32 %10, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool8.not = icmp eq i32 %12, 0
  br i1 %tobool8.not, label %if.then, label %cpumask_test_cpu.exit.if.end_crit_edge

cpumask_test_cpu.exit.if.end_crit_edge:           ; preds = %cpumask_test_cpu.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %cpumask_test_cpu.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpu_cache to i32))
  %13 = load ptr, ptr @cpu_cache, align 4
  tail call void %13() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !216
  br label %if.end

if.end:                                           ; preds = %if.then, %cpumask_test_cpu.exit.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %cache_ops_need_broadcast.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %cpu_bitmap.i29 = getelementptr inbounds %struct.mm_struct, ptr %next, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %3)
  %cmp.not.i.i.i30 = icmp ugt i32 %14, %3
  br i1 %cmp.not.i.i.i30, label %if.end.cpumask_test_and_set_cpu.exit_crit_edge, label %land.rhs.i.i.i32

if.end.cpumask_test_and_set_cpu.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpumask_test_and_set_cpu.exit

land.rhs.i.i.i32:                                 ; preds = %if.end
  %.b37.i.i.i31 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i31, label %land.rhs.i.i.i32.cpumask_test_and_set_cpu.exit_crit_edge, label %if.then.i.i.i33, !prof !177

land.rhs.i.i.i32.cpumask_test_and_set_cpu.exit_crit_edge: ; preds = %land.rhs.i.i.i32
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpumask_test_and_set_cpu.exit

if.then.i.i.i33:                                  ; preds = %land.rhs.i.i.i32
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpumask_test_and_set_cpu.exit

cpumask_test_and_set_cpu.exit:                    ; preds = %if.then.i.i.i33, %land.rhs.i.i.i32.cpumask_test_and_set_cpu.exit_crit_edge, %if.end.cpumask_test_and_set_cpu.exit_crit_edge
  %call1.i = tail call i32 @_test_and_set_bit(i32 noundef %3, ptr noundef %cpu_bitmap.i29) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool11.not = icmp ne i32 %call1.i, 0
  %cmp.not = icmp eq ptr %prev, %next
  %or.cond = and i1 %cmp.not, %tobool11.not
  br i1 %or.cond, label %cpumask_test_and_set_cpu.exit.if.end18_crit_edge, label %if.then12

cpumask_test_and_set_cpu.exit.if.end18_crit_edge: ; preds = %cpumask_test_and_set_cpu.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

if.then12:                                        ; preds = %cpumask_test_and_set_cpu.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @check_and_switch_context(ptr noundef %next, ptr noundef %tsk) #15
  br label %if.end18

if.end18:                                         ; preds = %if.then12, %cpumask_test_and_set_cpu.exit.if.end18_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kthread_unuse_mm(ptr noundef %mm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %flags = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b124 = load i1, ptr @kthread_unuse_mm.__already_done, align 1
  br i1 %.b124, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !177

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @kthread_unuse_mm.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1457, i32 noundef 9, ptr noundef null) #15
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %mm38 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %6 = ptrtoint ptr %mm38 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mm38, align 8
  %tobool39.not = icmp eq ptr %7, null
  br i1 %tobool39.not, label %land.rhs48, label %if.end29.if.end86_crit_edge

if.end29.if.end86_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end86

land.rhs48:                                       ; preds = %if.end29
  %.b122123 = load i1, ptr @kthread_unuse_mm.__already_done.10, align 1
  br i1 %.b122123, label %land.rhs48.if.end86_crit_edge, label %if.then59, !prof !177

land.rhs48.if.end86_crit_edge:                    ; preds = %land.rhs48
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end86

if.then59:                                        ; preds = %land.rhs48
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @kthread_unuse_mm.__already_done.10, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1458, i32 noundef 9, ptr noundef null) #15
  br label %if.end86

if.end86:                                         ; preds = %if.then59, %land.rhs48.if.end86_crit_edge, %if.end29.if.end86_crit_edge
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and.i125 = and i32 %9, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i125)
  %tobool.not.i = icmp eq i32 %and.i125, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end86.to_kthread.exit_crit_edge, !prof !176

if.end86.to_kthread.exit_crit_edge:               ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #17
  br label %to_kthread.exit

do.end.i:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef null) #15
  br label %to_kthread.exit

to_kthread.exit:                                  ; preds = %do.end.i, %if.end86.to_kthread.exit_crit_edge
  %alloc_lock.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 127
  tail call void @_raw_spin_lock(ptr noundef %alloc_lock.i) #15
  tail call void @sync_mm_rss(ptr noundef %mm) #15
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !198
  %and.i.i = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool100.not = icmp eq i32 %and.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #15, !srcloc !208
  br i1 %tobool100.not, label %if.then103, label %to_kthread.exit.if.end104_crit_edge

to_kthread.exit.if.end104_crit_edge:              ; preds = %to_kthread.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end104

if.then103:                                       ; preds = %to_kthread.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @trace_hardirqs_off() #15
  br label %if.end104

if.end104:                                        ; preds = %if.then103, %to_kthread.exit.if.end104_crit_edge
  %11 = ptrtoint ptr %mm38 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %mm38, align 8
  tail call void @membarrier_update_current_mm(ptr noundef null) #15
  tail call void @trace_hardirqs_on() #15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #15, !srcloc !210
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sync_mm_rss(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kthread_associate_blkcg(ptr noundef %css) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %flags = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %to_kthread.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

to_kthread.exit:                                  ; preds = %entry
  %worker_private.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 85
  %6 = ptrtoint ptr %worker_private.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %worker_private.i, align 16
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %to_kthread.exit.cleanup_crit_edge, label %if.end6

to_kthread.exit.cleanup_crit_edge:                ; preds = %to_kthread.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end6:                                          ; preds = %to_kthread.exit
  %blkcg_css = getelementptr inbounds %struct.kthread, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %blkcg_css to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %blkcg_css, align 4
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %if.end6.if.end11_crit_edge, label %if.then8

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.then8:                                         ; preds = %if.end6
  %flags.i23 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %flags.i23 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i23, align 4
  %and.i24 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i24)
  %tobool.not.i25 = icmp eq i32 %and.i24, 0
  br i1 %tobool.not.i25, label %if.then.i, label %if.then8.css_put.exit_crit_edge

if.then8.css_put.exit_crit_edge:                  ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  br label %css_put.exit

if.then.i:                                        ; preds = %if.then8
  %refcnt.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %9, i32 0, i32 2
  %12 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i.i.i.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %15, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !217
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i.i.i.i, label %if.then.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.then.i.rcu_read_lock.exit.i.i.i_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then.i
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i

land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true2.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b4.i.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i, label %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 696, ptr noundef nonnull @.str.22) #15
  br label %rcu_read_lock.exit.i.i.i

rcu_read_lock.exit.i.i.i:                         ; preds = %if.then.i.i.i.i, %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %if.then.i.rcu_read_lock.exit.i.i.i_crit_edge
  %16 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %refcnt.i, align 4
  %and.i.i.i.i = and i32 %17, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i1.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i1.i.i.i, label %do.body1.i.i.i, label %if.else.i.i.i, !prof !177

do.body1.i.i.i:                                   ; preds = %rcu_read_lock.exit.i.i.i
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !195
  %19 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i2.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i2.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %24, %17
  %25 = inttoptr i32 %add.i.i.i to ptr
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add15.i.i.i = add i32 %27, -1
  store i32 %add15.i.i.i, ptr %25, align 4
  %28 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !198
  %and.i.i.i.i.i = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then29.i.i.i, label %do.body1.i.i.i.do.end31.i.i.i_crit_edge, !prof !176

do.body1.i.i.i.do.end31.i.i.i_crit_edge:          ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end31.i.i.i

if.then29.i.i.i:                                  ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %do.end31.i.i.i

do.end31.i.i.i:                                   ; preds = %if.then29.i.i.i, %do.body1.i.i.i.do.end31.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %18) #15, !srcloc !199
  br label %if.end48.i.i.i

if.else.i.i.i:                                    ; preds = %rcu_read_lock.exit.i.i.i
  %data.i.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %9, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %30, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !211
  tail call void @llvm.prefetch.p0(ptr %30, i32 1, i32 3, i32 1) #15
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %30, ptr %30, i32 1, ptr elementtype(i32) %30) #15, !srcloc !212
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %31, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !213
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i.i, label %if.then45.i.i.i, label %if.else.i.i.i.if.end48.i.i.i_crit_edge, !prof !176

if.else.i.i.i.if.end48.i.i.i_crit_edge:           ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end48.i.i.i

if.then45.i.i.i:                                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %32 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i.i.i, align 4
  %release.i.i.i = getelementptr inbounds %struct.percpu_ref_data, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %release.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %release.i.i.i, align 4
  tail call void %35(ptr noundef %refcnt.i) #15
  br label %if.end48.i.i.i

if.end48.i.i.i:                                   ; preds = %if.then45.i.i.i, %if.else.i.i.i.if.end48.i.i.i_crit_edge, %do.end31.i.i.i
  %call.i3.i.i.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i3.i.i.i, label %if.end48.i.i.i.percpu_ref_put.exit.i_crit_edge, label %land.lhs.true.i6.i.i.i

if.end48.i.i.i.percpu_ref_put.exit.i_crit_edge:   ; preds = %if.end48.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %percpu_ref_put.exit.i

land.lhs.true.i6.i.i.i:                           ; preds = %if.end48.i.i.i
  %call1.i4.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i.i.i)
  %tobool.not.i5.i.i.i = icmp eq i32 %call1.i4.i.i.i, 0
  br i1 %tobool.not.i5.i.i.i, label %land.lhs.true.i6.i.i.i.percpu_ref_put.exit.i_crit_edge, label %land.lhs.true2.i8.i.i.i

land.lhs.true.i6.i.i.i.percpu_ref_put.exit.i_crit_edge: ; preds = %land.lhs.true.i6.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %percpu_ref_put.exit.i

land.lhs.true2.i8.i.i.i:                          ; preds = %land.lhs.true.i6.i.i.i
  %.b4.i7.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i.i.i, label %land.lhs.true2.i8.i.i.i.percpu_ref_put.exit.i_crit_edge, label %if.then.i9.i.i.i

land.lhs.true2.i8.i.i.i.percpu_ref_put.exit.i_crit_edge: ; preds = %land.lhs.true2.i8.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %percpu_ref_put.exit.i

if.then.i9.i.i.i:                                 ; preds = %land.lhs.true2.i8.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 724, ptr noundef nonnull @.str.23) #15
  br label %percpu_ref_put.exit.i

percpu_ref_put.exit.i:                            ; preds = %if.then.i9.i.i.i, %land.lhs.true2.i8.i.i.i.percpu_ref_put.exit.i_crit_edge, %land.lhs.true.i6.i.i.i.percpu_ref_put.exit.i_crit_edge, %if.end48.i.i.i.percpu_ref_put.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !218
  %36 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i.i.i.i.i10.i.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i.i.i10.i.i.i to ptr
  %preempt_count.i.i.i.i11.i.i.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %preempt_count.i.i.i.i11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %preempt_count.i.i.i.i11.i.i.i, align 4
  %sub.i.i.i.i.i.i = add i32 %39, -1
  store volatile i32 %sub.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i11.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  br label %css_put.exit

css_put.exit:                                     ; preds = %percpu_ref_put.exit.i, %if.then8.css_put.exit_crit_edge
  %40 = ptrtoint ptr %blkcg_css to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %blkcg_css, align 4
  br label %if.end11

if.end11:                                         ; preds = %css_put.exit, %if.end6.if.end11_crit_edge
  %tobool12.not = icmp eq ptr %css, null
  br i1 %tobool12.not, label %if.end11.cleanup_crit_edge, label %if.then13

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then13:                                        ; preds = %if.end11
  %flags.i26 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %css, i32 0, i32 7
  %41 = ptrtoint ptr %flags.i26 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags.i26, align 4
  %and.i27 = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i27)
  %tobool.not.i28 = icmp eq i32 %and.i27, 0
  br i1 %tobool.not.i28, label %if.then.i34, label %if.then13.css_get.exit_crit_edge

if.then13.css_get.exit_crit_edge:                 ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %css_get.exit

if.then.i34:                                      ; preds = %if.then13
  %refcnt.i29 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %css, i32 0, i32 2
  %43 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i.i.i.i.i.i.i.i30 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i.i.i.i30 to ptr
  %preempt_count.i.i.i.i.i.i.i31 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i31 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i31, align 4
  %add.i.i.i.i.i.i32 = add i32 %46, 1
  store volatile i32 %add.i.i.i.i.i.i32, ptr %preempt_count.i.i.i.i.i.i.i31, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !217
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i.i.i.i33 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i.i.i.i33, label %if.then.i34.rcu_read_lock.exit.i.i.i43_crit_edge, label %land.lhs.true.i.i.i.i37

if.then.i34.rcu_read_lock.exit.i.i.i43_crit_edge: ; preds = %if.then.i34
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i.i.i43

land.lhs.true.i.i.i.i37:                          ; preds = %if.then.i34
  %call1.i.i.i.i35 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i35)
  %tobool.not.i.i.i.i36 = icmp eq i32 %call1.i.i.i.i35, 0
  br i1 %tobool.not.i.i.i.i36, label %land.lhs.true.i.i.i.i37.rcu_read_lock.exit.i.i.i43_crit_edge, label %land.lhs.true2.i.i.i.i39

land.lhs.true.i.i.i.i37.rcu_read_lock.exit.i.i.i43_crit_edge: ; preds = %land.lhs.true.i.i.i.i37
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i.i.i43

land.lhs.true2.i.i.i.i39:                         ; preds = %land.lhs.true.i.i.i.i37
  %.b4.i.i.i.i38 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i38, label %land.lhs.true2.i.i.i.i39.rcu_read_lock.exit.i.i.i43_crit_edge, label %if.then.i.i.i.i40

land.lhs.true2.i.i.i.i39.rcu_read_lock.exit.i.i.i43_crit_edge: ; preds = %land.lhs.true2.i.i.i.i39
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i.i.i43

if.then.i.i.i.i40:                                ; preds = %land.lhs.true2.i.i.i.i39
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 696, ptr noundef nonnull @.str.22) #15
  br label %rcu_read_lock.exit.i.i.i43

rcu_read_lock.exit.i.i.i43:                       ; preds = %if.then.i.i.i.i40, %land.lhs.true2.i.i.i.i39.rcu_read_lock.exit.i.i.i43_crit_edge, %land.lhs.true.i.i.i.i37.rcu_read_lock.exit.i.i.i43_crit_edge, %if.then.i34.rcu_read_lock.exit.i.i.i43_crit_edge
  %47 = ptrtoint ptr %refcnt.i29 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %refcnt.i29, align 4
  %and.i.i.i.i41 = and i32 %48, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i41)
  %tobool.not.i1.i.i.i42 = icmp eq i32 %and.i.i.i.i41, 0
  br i1 %tobool.not.i1.i.i.i42, label %do.body1.i.i.i51, label %if.else.i.i.i56, !prof !177

do.body1.i.i.i51:                                 ; preds = %rcu_read_lock.exit.i.i.i43
  %49 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !195
  %50 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i2.i.i.i44 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i2.i.i.i44 to ptr
  %cpu.i.i.i45 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %cpu.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cpu.i.i.i45, align 4
  %arrayidx.i.i.i46 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %53
  %54 = ptrtoint ptr %arrayidx.i.i.i46 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i.i.i46, align 4
  %add.i.i.i47 = add i32 %55, %48
  %56 = inttoptr i32 %add.i.i.i47 to ptr
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 4
  %add15.i.i.i48 = add i32 %58, 1
  store i32 %add15.i.i.i48, ptr %56, align 4
  %59 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !198
  %and.i.i.i.i.i49 = and i32 %59, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i49)
  %tobool.not.i.i.i50 = icmp eq i32 %and.i.i.i.i.i49, 0
  br i1 %tobool.not.i.i.i50, label %if.then29.i.i.i52, label %do.body1.i.i.i51.do.end31.i.i.i53_crit_edge, !prof !176

do.body1.i.i.i51.do.end31.i.i.i53_crit_edge:      ; preds = %do.body1.i.i.i51
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end31.i.i.i53

if.then29.i.i.i52:                                ; preds = %do.body1.i.i.i51
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %do.end31.i.i.i53

do.end31.i.i.i53:                                 ; preds = %if.then29.i.i.i52, %do.body1.i.i.i51.do.end31.i.i.i53_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %49) #15, !srcloc !199
  br label %if.end38.i.i.i

if.else.i.i.i56:                                  ; preds = %rcu_read_lock.exit.i.i.i43
  call void @__sanitizer_cov_trace_pc() #17
  %data.i.i.i54 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %css, i32 0, i32 2, i32 1
  %60 = ptrtoint ptr %data.i.i.i54 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data.i.i.i54, align 4
  %call.i.i.i.i.i55 = tail call zeroext i1 @__kasan_check_write(ptr noundef %61, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %61, i32 1, i32 3, i32 1) #15
  %62 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %61, ptr %61, i32 1, ptr elementtype(i32) %61) #15, !srcloc !209
  br label %if.end38.i.i.i

if.end38.i.i.i:                                   ; preds = %if.else.i.i.i56, %do.end31.i.i.i53
  %call.i3.i.i.i57 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i3.i.i.i57, label %if.end38.i.i.i.percpu_ref_get.exit.i_crit_edge, label %land.lhs.true.i6.i.i.i60

if.end38.i.i.i.percpu_ref_get.exit.i_crit_edge:   ; preds = %if.end38.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %percpu_ref_get.exit.i

land.lhs.true.i6.i.i.i60:                         ; preds = %if.end38.i.i.i
  %call1.i4.i.i.i58 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i.i.i58)
  %tobool.not.i5.i.i.i59 = icmp eq i32 %call1.i4.i.i.i58, 0
  br i1 %tobool.not.i5.i.i.i59, label %land.lhs.true.i6.i.i.i60.percpu_ref_get.exit.i_crit_edge, label %land.lhs.true2.i8.i.i.i62

land.lhs.true.i6.i.i.i60.percpu_ref_get.exit.i_crit_edge: ; preds = %land.lhs.true.i6.i.i.i60
  call void @__sanitizer_cov_trace_pc() #17
  br label %percpu_ref_get.exit.i

land.lhs.true2.i8.i.i.i62:                        ; preds = %land.lhs.true.i6.i.i.i60
  %.b4.i7.i.i.i61 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i.i.i61, label %land.lhs.true2.i8.i.i.i62.percpu_ref_get.exit.i_crit_edge, label %if.then.i9.i.i.i63

land.lhs.true2.i8.i.i.i62.percpu_ref_get.exit.i_crit_edge: ; preds = %land.lhs.true2.i8.i.i.i62
  call void @__sanitizer_cov_trace_pc() #17
  br label %percpu_ref_get.exit.i

if.then.i9.i.i.i63:                               ; preds = %land.lhs.true2.i8.i.i.i62
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 724, ptr noundef nonnull @.str.23) #15
  br label %percpu_ref_get.exit.i

percpu_ref_get.exit.i:                            ; preds = %if.then.i9.i.i.i63, %land.lhs.true2.i8.i.i.i62.percpu_ref_get.exit.i_crit_edge, %land.lhs.true.i6.i.i.i60.percpu_ref_get.exit.i_crit_edge, %if.end38.i.i.i.percpu_ref_get.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !218
  %63 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i.i.i.i.i10.i.i.i64 = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i.i.i.i10.i.i.i64 to ptr
  %preempt_count.i.i.i.i11.i.i.i65 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %preempt_count.i.i.i.i11.i.i.i65 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %preempt_count.i.i.i.i11.i.i.i65, align 4
  %sub.i.i.i.i.i.i66 = add i32 %66, -1
  store volatile i32 %sub.i.i.i.i.i.i66, ptr %preempt_count.i.i.i.i11.i.i.i65, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  br label %css_get.exit

css_get.exit:                                     ; preds = %percpu_ref_get.exit.i, %if.then13.css_get.exit_crit_edge
  %67 = ptrtoint ptr %blkcg_css to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %css, ptr %blkcg_css, align 4
  br label %cleanup

cleanup:                                          ; preds = %css_get.exit, %if.end11.cleanup_crit_edge, %to_kthread.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @kthread_blkcg() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %flags = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %to_kthread.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

to_kthread.exit:                                  ; preds = %entry
  %worker_private.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 85
  %6 = ptrtoint ptr %worker_private.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %worker_private.i, align 16
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %to_kthread.exit.cleanup_crit_edge, label %if.then5

to_kthread.exit.cleanup_crit_edge:                ; preds = %to_kthread.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then5:                                         ; preds = %to_kthread.exit
  call void @__sanitizer_cov_trace_pc() #17
  %blkcg_css = getelementptr inbounds %struct.kthread, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %blkcg_css to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %blkcg_css, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %to_kthread.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %9, %if.then5 ], [ null, %to_kthread.exit.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule_preempt_disabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_killable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_copy(ptr, ptr) #8

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kvasprintf(i32 noundef, ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_set_cpus_allowed(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_sched_kthread_stop(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_sched_kthread_stop_ret(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__set_task_comm(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_thread(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kthread(ptr noundef %_create) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %_create to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_create, align 4
  %data2 = getelementptr inbounds %struct.kthread_create_info, ptr %_create, i32 0, i32 1
  %2 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data2, align 4
  %4 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %and.i116 = and i32 %9, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i116)
  %tobool.not.i = icmp eq i32 %and.i116, 0
  br i1 %tobool.not.i, label %do.end.i, label %entry.to_kthread.exit_crit_edge, !prof !176

entry.to_kthread.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %to_kthread.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef null) #15
  br label %to_kthread.exit

to_kthread.exit:                                  ; preds = %do.end.i, %entry.to_kthread.exit_crit_edge
  %worker_private.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 85
  %10 = ptrtoint ptr %worker_private.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %worker_private.i, align 16
  %done4 = getelementptr inbounds %struct.kthread_create_info, ptr %_create, i32 0, i32 4
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %done4, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !219
  tail call void @llvm.prefetch.p0(ptr %done4, i32 1, i32 3, i32 1) #15
  %12 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %done4) #15, !srcloc !182
  %asmresult.i = extractvalue { i32, i32 } %12, 0
  %13 = inttoptr i32 %asmresult.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !220
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool.not = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %to_kthread.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef %_create) #15
  call void @__asan_handle_no_return()
  tail call void @kthread_exit(i32 noundef -4) #20
  unreachable

if.end:                                           ; preds = %to_kthread.exit
  %threadfn20 = getelementptr inbounds %struct.kthread, ptr %11, i32 0, i32 3
  %14 = ptrtoint ptr %threadfn20 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %1, ptr %threadfn20, align 4
  %data21 = getelementptr inbounds %struct.kthread, ptr %11, i32 0, i32 4
  %15 = ptrtoint ptr %data21 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %3, ptr %data21, align 4
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 8
  %call24 = tail call i32 @sched_setscheduler_nocheck(ptr noundef %17, i32 noundef 0, ptr noundef nonnull @kthread.param) #15
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %call27 = tail call ptr @housekeeping_cpumask(i32 noundef 256) #15
  %call28 = tail call i32 @set_cpus_allowed_ptr(ptr noundef %19, ptr noundef %call27) #15
  br label %__here

__here:                                           ; preds = %if.end
  %20 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 212
  %22 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 ptrtoint (ptr blockaddress(@kthread, %__here) to i32), ptr %task_state_change, align 4
  %23 = load ptr, ptr %task, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 2, ptr %23, align 128
  %25 = load ptr, ptr %task, align 8
  %result = getelementptr inbounds %struct.kthread_create_info, ptr %_create, i32 0, i32 3
  %26 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %result, align 4
  %27 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %30, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !221
  tail call void @complete(ptr noundef nonnull %13) #15
  tail call void @schedule_preempt_disabled() #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !222
  %31 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i.i.i114 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i114 to ptr
  %preempt_count.i.i115 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i115 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i115, align 4
  %sub.i = add i32 %34, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i115, align 4
  %35 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %11, align 4
  %37 = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool97.not = icmp eq i32 %37, 0
  br i1 %tobool97.not, label %if.then98, label %__here.if.end100_crit_edge

__here.if.end100_crit_edge:                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end100

if.then98:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #17
  %38 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %task.i, align 8
  %no_cgroup_migration.i = getelementptr inbounds %struct.task_struct, ptr %41, i32 0, i32 65
  %42 = ptrtoint ptr %no_cgroup_migration.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %bf.load.i = load i16, ptr %no_cgroup_migration.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -1025
  store i16 %bf.clear.i, ptr %no_cgroup_migration.i, align 8
  tail call fastcc void @__kthread_parkme(ptr noundef %11)
  %call99 = tail call i32 %1(ptr noundef %3) #15
  br label %if.end100

if.end100:                                        ; preds = %if.then98, %__here.if.end100_crit_edge
  %ret.0 = phi i32 [ -4, %__here.if.end100_crit_edge ], [ %call99, %if.then98 ]
  call void @__asan_handle_no_return()
  tail call void @kthread_exit(i32 noundef %ret.0) #20
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sched_setscheduler_nocheck(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_sched_kthread_work_execute_start(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_sched_kthread_work_execute_end(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kthread_insert_work_sanity_check(ptr noundef %worker, ptr noundef %work) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.kthread_worker, ptr %worker, i32 0, i32 1, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !176

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 962, i32 noundef 9, ptr noundef null) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %1 = ptrtoint ptr %work to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %work, align 4
  %cmp.i.not = icmp eq ptr %2, %work
  br i1 %cmp.i.not, label %if.end.if.end71_crit_edge, label %land.rhs33

if.end.if.end71_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end71

land.rhs33:                                       ; preds = %if.end
  %.b148 = load i1, ptr @kthread_insert_work_sanity_check.__already_done, align 1
  br i1 %.b148, label %land.rhs33.if.end71_crit_edge, label %if.then44, !prof !177

land.rhs33.if.end71_crit_edge:                    ; preds = %land.rhs33
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end71

if.then44:                                        ; preds = %land.rhs33
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @kthread_insert_work_sanity_check.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 963, i32 noundef 9, ptr noundef null) #15
  br label %if.end71

if.end71:                                         ; preds = %if.then44, %land.rhs33.if.end71_crit_edge, %if.end.if.end71_crit_edge
  %worker80 = getelementptr inbounds %struct.kthread_work, ptr %work, i32 0, i32 2
  %3 = ptrtoint ptr %worker80 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %worker80, align 4
  %tobool81.not = icmp ne ptr %4, null
  %cmp84 = icmp ne ptr %4, %worker
  %spec.select = and i1 %tobool81.not, %cmp84
  br i1 %spec.select, label %land.rhs92, label %if.end71.if.end130_crit_edge

if.end71.if.end130_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end130

land.rhs92:                                       ; preds = %if.end71
  %.b146147 = load i1, ptr @kthread_insert_work_sanity_check.__already_done.20, align 1
  br i1 %.b146147, label %land.rhs92.if.end130_crit_edge, label %if.then103, !prof !177

land.rhs92.if.end130_crit_edge:                   ; preds = %land.rhs92
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end130

if.then103:                                       ; preds = %land.rhs92
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @kthread_insert_work_sanity_check.__already_done.20, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 965, i32 noundef 9, ptr noundef null) #15
  br label %if.end130

if.end130:                                        ; preds = %if.then103, %land.rhs92.if.end130_crit_edge, %if.end71.if.end130_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_sched_kthread_work_queue_work(ptr noundef %worker, ptr noundef %work) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_kthread_work_queue_work, i32 0, i32 1), ptr blockaddress(@trace_sched_kthread_work_queue_work, %do.body)) #15
          to label %if.end48 [label %do.body], !srcloc !188

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !166) #15
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
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !177

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #17
  %9 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !223
  %call42 = tail call i32 @__traceiter_sched_kthread_work_queue_work(ptr noundef null, ptr noundef %worker, ptr noundef %work) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !224
  %13 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !177

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !191
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_kthread_work_queue_work, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_kthread_work_queue_work, i32 0, i32 7), align 4
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
  %.b72 = load i1, ptr @trace_sched_kthread_work_queue_work.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @trace_sched_kthread_work_queue_work.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 85, ptr noundef nonnull @.str.14) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !192
  %31 = tail call i32 @llvm.read_register.i32(metadata !166) #15
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_sched_kthread_work_queue_work(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @check_and_switch_context(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmdrop(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind willreturn }
attributes #9 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind readonly }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #14 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { noreturn nounwind }
attributes #20 = { noreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !111, !113, !115, !117, !118, !119, !120, !122, !123, !125, !126, !128, !130, !132, !133, !135, !137, !139, !140, !142, !143, !145, !147, !148, !150, !152, !154, !155, !157, !159, !161, !162, !163, !165}
!llvm.named.register.sp = !{!166}
!llvm.module.flags = !{!167, !168, !169, !170, !171, !172, !173, !174}
!llvm.ident = !{!175}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../kernel/kthread.c", i32 115, i32 6}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"__already_done", i1 false, i1 false}
!4 = !{!"../kernel/kthread.c", i32 142, i32 2}
!5 = !{ptr @__ksymtab_kthread_should_stop, !6, !"__ksymtab_kthread_should_stop", i1 false, i1 false}
!6 = !{!"../kernel/kthread.c", i32 160, i32 1}
!7 = !{ptr @__ksymtab___kthread_should_park, !8, !"__ksymtab___kthread_should_park", i1 false, i1 false}
!8 = !{!"../kernel/kthread.c", i32 166, i32 1}
!9 = !{ptr @__ksymtab_kthread_should_park, !10, !"__ksymtab_kthread_should_park", i1 false, i1 false}
!10 = !{!"../kernel/kthread.c", i32 183, i32 1}
!11 = !{ptr @__ksymtab_kthread_freezable_should_stop, !12, !"__ksymtab_kthread_freezable_should_stop", i1 false, i1 false}
!12 = !{!"../kernel/kthread.c", i32 208, i32 1}
!13 = !{ptr @__ksymtab_kthread_func, !14, !"__ksymtab_kthread_func", i1 false, i1 false}
!14 = !{!"../kernel/kthread.c", i32 223, i32 1}
!15 = !{ptr @__ksymtab_kthread_data, !16, !"__ksymtab_kthread_data", i1 false, i1 false}
!16 = !{!"../kernel/kthread.c", i32 237, i32 1}
!17 = !{ptr @__ksymtab_kthread_parkme, !18, !"__ksymtab_kthread_parkme", i1 false, i1 false}
!18 = !{!"../kernel/kthread.c", i32 291, i32 1}
!19 = !{ptr @__ksymtab_kthread_complete_and_exit, !20, !"__ksymtab_kthread_complete_and_exit", i1 false, i1 false}
!20 = !{!"../kernel/kthread.c", i32 329, i32 1}
!21 = !{ptr @__ksymtab_kthread_create_on_node, !22, !"__ksymtab_kthread_create_on_node", i1 false, i1 false}
!22 = !{!"../kernel/kthread.c", i32 518, i32 1}
!23 = !{ptr @__ksymtab_kthread_bind, !24, !"__ksymtab_kthread_bind", i1 false, i1 false}
!24 = !{!"../kernel/kthread.c", i32 559, i32 1}
!25 = !{ptr @__ksymtab_kthread_create_on_cpu, !26, !"__ksymtab_kthread_create_on_cpu", i1 false, i1 false}
!26 = !{!"../kernel/kthread.c", i32 586, i32 1}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../kernel/kthread.c", i32 594, i32 2}
!29 = !{ptr @__ksymtab_kthread_unpark, !30, !"__ksymtab_kthread_unpark", i1 false, i1 false}
!30 = !{!"../kernel/kthread.c", i32 639, i32 1}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../kernel/kthread.c", i32 660, i32 6}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../kernel/kthread.c", i32 675, i32 3}
!35 = !{ptr @__ksymtab_kthread_park, !36, !"__ksymtab_kthread_park", i1 false, i1 false}
!36 = !{!"../kernel/kthread.c", i32 680, i32 1}
!37 = !{ptr @__ksymtab_kthread_stop, !38, !"__ksymtab_kthread_stop", i1 false, i1 false}
!38 = !{!"../kernel/kthread.c", i32 716, i32 1}
!39 = !{ptr @.str.2, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../kernel/kthread.c", i32 723, i32 21}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../kernel/kthread.c", i32 732, i32 3}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../kernel/kthread.c", i32 735, i32 3}
!45 = !{ptr @__kthread_init_worker.__key, !46, !"__key", i1 false, i1 false}
!46 = !{!"../kernel/kthread.c", i32 761, i32 2}
!47 = !{ptr @.str.4, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @__ksymtab___kthread_init_worker, !49, !"__ksymtab___kthread_init_worker", i1 false, i1 false}
!49 = !{!"../kernel/kthread.c", i32 766, i32 1}
!50 = distinct !{null, !51, !"__already_done", i1 false, i1 false}
!51 = !{!"../kernel/kthread.c", i32 799, i32 2}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../kernel/kthread.c", i32 802, i32 3}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../kernel/kthread.c", i32 821, i32 3}
!56 = !{ptr @__ksymtab_kthread_worker_fn, !57, !"__ksymtab_kthread_worker_fn", i1 false, i1 false}
!57 = !{!"../kernel/kthread.c", i32 836, i32 1}
!58 = !{ptr @__ksymtab_kthread_create_worker, !59, !"__ksymtab_kthread_create_worker", i1 false, i1 false}
!59 = !{!"../kernel/kthread.c", i32 894, i32 1}
!60 = !{ptr @__ksymtab_kthread_create_worker_on_cpu, !61, !"__ksymtab_kthread_create_worker_on_cpu", i1 false, i1 false}
!61 = !{!"../kernel/kthread.c", i32 944, i32 1}
!62 = !{ptr @__ksymtab_kthread_queue_work, !63, !"__ksymtab_kthread_queue_work", i1 false, i1 false}
!63 = !{!"../kernel/kthread.c", i32 1009, i32 1}
!64 = distinct !{null, !65, !"__already_done", i1 false, i1 false}
!65 = !{!"../kernel/kthread.c", i32 1030, i32 6}
!66 = distinct !{null, !67, !"__already_done", i1 false, i1 false}
!67 = !{!"../kernel/kthread.c", i32 1035, i32 2}
!68 = distinct !{null, !69, !"__already_done", i1 false, i1 false}
!69 = !{!"../kernel/kthread.c", i32 1038, i32 2}
!70 = !{ptr @__ksymtab_kthread_delayed_work_timer_fn, !71, !"__ksymtab_kthread_delayed_work_timer_fn", i1 false, i1 false}
!71 = !{!"../kernel/kthread.c", i32 1045, i32 1}
!72 = !{ptr @__ksymtab_kthread_queue_delayed_work, !73, !"__ksymtab_kthread_queue_delayed_work", i1 false, i1 false}
!73 = !{!"../kernel/kthread.c", i32 1110, i32 1}
!74 = distinct !{null, !75, !"__already_done", i1 false, i1 false}
!75 = !{!"../kernel/kthread.c", i32 1145, i32 2}
!76 = !{ptr @__ksymtab_kthread_flush_work, !77, !"__ksymtab_kthread_flush_work", i1 false, i1 false}
!77 = !{!"../kernel/kthread.c", i32 1160, i32 1}
!78 = distinct !{null, !79, !"__already_done", i1 false, i1 false}
!79 = !{!"../kernel/kthread.c", i32 1256, i32 2}
!80 = !{ptr @__ksymtab_kthread_mod_delayed_work, !81, !"__ksymtab_kthread_mod_delayed_work", i1 false, i1 false}
!81 = !{!"../kernel/kthread.c", i32 1284, i32 1}
!82 = !{ptr @__ksymtab_kthread_cancel_work_sync, !83, !"__ksymtab_kthread_cancel_work_sync", i1 false, i1 false}
!83 = !{!"../kernel/kthread.c", i32 1343, i32 1}
!84 = !{ptr @__ksymtab_kthread_cancel_delayed_work_sync, !85, !"__ksymtab_kthread_cancel_delayed_work_sync", i1 false, i1 false}
!85 = !{!"../kernel/kthread.c", i32 1358, i32 1}
!86 = !{ptr @__ksymtab_kthread_flush_worker, !87, !"__ksymtab_kthread_flush_worker", i1 false, i1 false}
!87 = !{!"../kernel/kthread.c", i32 1377, i32 1}
!88 = !{ptr @__ksymtab_kthread_destroy_worker, !89, !"__ksymtab_kthread_destroy_worker", i1 false, i1 false}
!89 = !{!"../kernel/kthread.c", i32 1400, i32 1}
!90 = distinct !{null, !91, !"__already_done", i1 false, i1 false}
!91 = !{!"../kernel/kthread.c", i32 1411, i32 2}
!92 = distinct !{null, !93, !"__already_done", i1 false, i1 false}
!93 = !{!"../kernel/kthread.c", i32 1412, i32 2}
!94 = !{ptr @__ksymtab_kthread_use_mm, !95, !"__ksymtab_kthread_use_mm", i1 false, i1 false}
!95 = !{!"../kernel/kthread.c", i32 1447, i32 1}
!96 = distinct !{null, !97, !"__already_done", i1 false, i1 false}
!97 = !{!"../kernel/kthread.c", i32 1457, i32 2}
!98 = distinct !{null, !99, !"__already_done", i1 false, i1 false}
!99 = !{!"../kernel/kthread.c", i32 1458, i32 2}
!100 = !{ptr @__ksymtab_kthread_unuse_mm, !101, !"__ksymtab_kthread_unuse_mm", i1 false, i1 false}
!101 = !{!"../kernel/kthread.c", i32 1480, i32 1}
!102 = !{ptr @__ksymtab_kthread_associate_blkcg, !103, !"__ksymtab_kthread_associate_blkcg", i1 false, i1 false}
!103 = !{!"../kernel/kthread.c", i32 1512, i32 1}
!104 = !{ptr @__ksymtab_kthread_blkcg, !105, !"__ksymtab_kthread_blkcg", i1 false, i1 false}
!105 = !{!"../kernel/kthread.c", i32 1530, i32 1}
!106 = !{ptr @kthreadd_task, !107, !"kthreadd_task", i1 false, i1 false}
!107 = !{!"../kernel/kthread.c", i32 36, i32 21}
!108 = !{ptr @init_completion.__key, !109, !"__key", i1 false, i1 false}
!109 = !{!"../include/linux/completion.h", i32 87, i32 2}
!110 = !{ptr @.str.11, !109, !"<string literal>", i1 false, i1 false}
!111 = distinct !{null, !112, !"__already_done", i1 false, i1 false}
!112 = !{!"../kernel/kthread.c", i32 270, i32 3}
!113 = distinct !{null, !114, !"__already_done", i1 false, i1 false}
!114 = !{!"../kernel/kthread.c", i32 284, i32 2}
!115 = distinct !{null, !116, !"__already_done", i1 false, i1 false}
!116 = !{!"../include/trace/events/sched.h", i32 16, i32 1}
!117 = !{ptr @.str.13, !116, !"<string literal>", i1 false, i1 false}
!118 = distinct !{null, !116, !"__warned", i1 false, i1 false}
!119 = !{ptr @.str.14, !116, !"<string literal>", i1 false, i1 false}
!120 = distinct !{null, !121, !"__already_done", i1 false, i1 false}
!121 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!122 = !{ptr @.str.15, !121, !"<string literal>", i1 false, i1 false}
!123 = distinct !{null, !124, !"__already_done", i1 false, i1 false}
!124 = !{!"../include/trace/events/sched.h", i32 38, i32 1}
!125 = distinct !{null, !124, !"__warned", i1 false, i1 false}
!126 = !{ptr @.str.16, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../include/linux/seqlock.h", i32 277, i32 1}
!128 = !{ptr @kthread_create_list, !129, !"kthread_create_list", i1 false, i1 false}
!129 = !{!"../kernel/kthread.c", i32 35, i32 8}
!130 = !{ptr @.str.17, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../kernel/kthread.c", i32 34, i32 8}
!132 = !{ptr @kthread_create_lock, !131, !"kthread_create_lock", i1 false, i1 false}
!133 = !{ptr @kthread.param, !134, !"param", i1 false, i1 false}
!134 = !{!"../kernel/kthread.c", i32 333, i32 34}
!135 = distinct !{null, !136, !"__already_done", i1 false, i1 false}
!136 = !{!"../kernel/kthread.c", i32 362, i32 2}
!137 = distinct !{null, !138, !"__already_done", i1 false, i1 false}
!138 = !{!"../include/trace/events/sched.h", i32 93, i32 1}
!139 = distinct !{null, !138, !"__warned", i1 false, i1 false}
!140 = distinct !{null, !141, !"__already_done", i1 false, i1 false}
!141 = !{!"../include/trace/events/sched.h", i32 119, i32 1}
!142 = distinct !{null, !141, !"__warned", i1 false, i1 false}
!143 = !{ptr @.str.18, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../include/linux/freezer.h", i32 57, i32 2}
!145 = !{ptr @__kthread_create_worker.__key, !146, !"__key", i1 false, i1 false}
!146 = !{!"../kernel/kthread.c", i32 850, i32 2}
!147 = !{ptr @.str.19, !146, !"<string literal>", i1 false, i1 false}
!148 = distinct !{null, !149, !"__already_done", i1 false, i1 false}
!149 = !{!"../kernel/kthread.c", i32 963, i32 2}
!150 = distinct !{null, !151, !"__already_done", i1 false, i1 false}
!151 = !{!"../kernel/kthread.c", i32 965, i32 2}
!152 = distinct !{null, !153, !"__already_done", i1 false, i1 false}
!153 = !{!"../include/trace/events/sched.h", i32 64, i32 1}
!154 = distinct !{null, !153, !"__warned", i1 false, i1 false}
!155 = distinct !{null, !156, !"__already_done", i1 false, i1 false}
!156 = !{!"../kernel/kthread.c", i32 1054, i32 2}
!157 = distinct !{null, !158, !"__already_done", i1 false, i1 false}
!158 = !{!"../kernel/kthread.c", i32 1297, i32 2}
!159 = distinct !{null, !160, !"__warned", i1 false, i1 false}
!160 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!161 = !{ptr @.str.21, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.22, !160, !"<string literal>", i1 false, i1 false}
!163 = distinct !{null, !164, !"__warned", i1 false, i1 false}
!164 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!165 = !{ptr @.str.23, !164, !"<string literal>", i1 false, i1 false}
!166 = !{!"sp"}
!167 = !{i32 1, !"wchar_size", i32 2}
!168 = !{i32 1, !"min_enum_size", i32 4}
!169 = !{i32 8, !"branch-target-enforcement", i32 0}
!170 = !{i32 8, !"sign-return-address", i32 0}
!171 = !{i32 8, !"sign-return-address-all", i32 0}
!172 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!173 = !{i32 7, !"uwtable", i32 1}
!174 = !{i32 7, !"frame-pointer", i32 2}
!175 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!176 = !{!"branch_weights", i32 1, i32 2000}
!177 = !{!"branch_weights", i32 2000, i32 1}
!178 = !{i64 2155508943}
!179 = !{i64 2155509040}
!180 = !{!"auto-init"}
!181 = !{i64 2155525355}
!182 = !{i64 1217212, i64 1217229, i64 1217253, i64 1217279, i64 1217297}
!183 = !{i64 2155525708}
!184 = !{i64 2148711974, i64 2148712006, i64 2148712035, i64 2148712069, i64 2148712100, i64 2148712123}
!185 = !{i64 2148799999}
!186 = !{i64 2148714439, i64 2148714471, i64 2148714500, i64 2148714534, i64 2148714565, i64 2148714588}
!187 = !{i64 2149996234}
!188 = !{i64 2148311121, i64 2148311126, i64 2148311139, i64 2148311183, i64 2148311217, i64 2148311238}
!189 = !{i64 2154820262}
!190 = !{i64 2154820463}
!191 = !{i64 2150054336}
!192 = !{i64 2150055372}
!193 = !{i64 2154840555}
!194 = !{i64 2154840768}
!195 = !{i64 1115124, i64 1115185}
!196 = !{i64 2149888630}
!197 = !{i64 2149888955}
!198 = !{i64 1117856}
!199 = !{i64 1118141}
!200 = !{i64 2155548954}
!201 = !{i64 2155523704}
!202 = !{i64 2155524057}
!203 = !{i64 2155562212}
!204 = !{i64 2154875698}
!205 = !{i64 2154875933}
!206 = !{i64 2154897857}
!207 = !{i64 2154898108}
!208 = !{i64 1115559}
!209 = !{i64 2148710444, i64 2148710470, i64 2148710499, i64 2148710533, i64 2148710564, i64 2148710587}
!210 = !{i64 1115369}
!211 = !{i64 2148798920}
!212 = !{i64 2148713629, i64 2148713661, i64 2148713690, i64 2148713724, i64 2148713755, i64 2148713778}
!213 = !{i64 2148799149}
!214 = !{i64 2155619345}
!215 = !{i64 2153793126}
!216 = !{i64 2153325478}
!217 = !{i64 2150045777}
!218 = !{i64 2150046043}
!219 = !{i64 2155517600}
!220 = !{i64 2155517953}
!221 = !{i64 2155522676}
!222 = !{i64 2155522773}
!223 = !{i64 2154858066}
!224 = !{i64 2154858311}
