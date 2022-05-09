; ModuleID = '/llk/IR_all_yes/drivers/md/dm.c_pt.bc'
source_filename = "../drivers/md/dm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+dm_per_bio_data\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_per_bio_data\09\09\09\09"
module asm "\09.long\09__crc_dm_per_bio_data\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_per_bio_data:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_per_bio_data\22\09\09\09\09\09"
module asm "__kstrtabns_dm_per_bio_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dm_bio_from_per_bio_data\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_bio_from_per_bio_data\09\09\09\09"
module asm "\09.long\09__crc_dm_bio_from_per_bio_data\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_bio_from_per_bio_data:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_bio_from_per_bio_data\22\09\09\09\09\09"
module asm "__kstrtabns_dm_bio_from_per_bio_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dm_bio_get_target_bio_nr\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_bio_get_target_bio_nr\09\09\09\09"
module asm "\09.long\09__crc_dm_bio_get_target_bio_nr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_bio_get_target_bio_nr:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_bio_get_target_bio_nr\22\09\09\09\09\09"
module asm "__kstrtabns_dm_bio_get_target_bio_nr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dm_get_reserved_bio_based_ios\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_get_reserved_bio_based_ios\09\09\09\09"
module asm "\09.long\09__crc_dm_get_reserved_bio_based_ios\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_get_reserved_bio_based_ios:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_get_reserved_bio_based_ios\22\09\09\09\09\09"
module asm "__kstrtabns_dm_get_reserved_bio_based_ios:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dm_start_time_ns_from_clone\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_start_time_ns_from_clone\09\09\09\09"
module asm "\09.long\09__crc_dm_start_time_ns_from_clone\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_start_time_ns_from_clone:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_start_time_ns_from_clone\22\09\09\09\09\09"
module asm "__kstrtabns_dm_start_time_ns_from_clone:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dm_set_target_max_io_len\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_set_target_max_io_len\09\09\09\09"
module asm "\09.long\09__crc_dm_set_target_max_io_len\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_set_target_max_io_len:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_set_target_max_io_len\22\09\09\09\09\09"
module asm "__kstrtabns_dm_set_target_max_io_len:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dm_accept_partial_bio\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_accept_partial_bio\09\09\09\09"
module asm "\09.long\09__crc_dm_accept_partial_bio\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_accept_partial_bio:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_accept_partial_bio\22\09\09\09\09\09"
module asm "__kstrtabns_dm_accept_partial_bio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dm_get_queue_limits\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_get_queue_limits\09\09\09\09"
module asm "\09.long\09__crc_dm_get_queue_limits\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_get_queue_limits:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_get_queue_limits\22\09\09\09\09\09"
module asm "__kstrtabns_dm_get_queue_limits:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dm_get_md\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_get_md\09\09\09\09"
module asm "\09.long\09__crc_dm_get_md\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_get_md:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_get_md\22\09\09\09\09\09"
module asm "__kstrtabns_dm_get_md:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dm_hold\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_hold\09\09\09\09"
module asm "\09.long\09__crc_dm_hold\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_hold:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_hold\22\09\09\09\09\09"
module asm "__kstrtabns_dm_hold:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dm_device_name\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_device_name\09\09\09\09"
module asm "\09.long\09__crc_dm_device_name\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_device_name:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_device_name\22\09\09\09\09\09"
module asm "__kstrtabns_dm_device_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dm_put\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_put\09\09\09\09"
module asm "\09.long\09__crc_dm_put\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_put:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_put\22\09\09\09\09\09"
module asm "__kstrtabns_dm_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dm_internal_suspend_noflush\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_internal_suspend_noflush\09\09\09\09"
module asm "\09.long\09__crc_dm_internal_suspend_noflush\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_internal_suspend_noflush:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_internal_suspend_noflush\22\09\09\09\09\09"
module asm "__kstrtabns_dm_internal_suspend_noflush:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dm_internal_resume\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_internal_resume\09\09\09\09"
module asm "\09.long\09__crc_dm_internal_resume\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_internal_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_internal_resume\22\09\09\09\09\09"
module asm "__kstrtabns_dm_internal_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dm_internal_suspend_fast\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_internal_suspend_fast\09\09\09\09"
module asm "\09.long\09__crc_dm_internal_suspend_fast\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_internal_suspend_fast:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_internal_suspend_fast\22\09\09\09\09\09"
module asm "__kstrtabns_dm_internal_suspend_fast:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dm_internal_resume_fast\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_internal_resume_fast\09\09\09\09"
module asm "\09.long\09__crc_dm_internal_resume_fast\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_internal_resume_fast:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_internal_resume_fast\22\09\09\09\09\09"
module asm "__kstrtabns_dm_internal_resume_fast:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dm_disk\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_disk\09\09\09\09"
module asm "\09.long\09__crc_dm_disk\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_disk:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_disk\22\09\09\09\09\09"
module asm "__kstrtabns_dm_disk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dm_suspended\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_suspended\09\09\09\09"
module asm "\09.long\09__crc_dm_suspended\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_suspended:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_suspended\22\09\09\09\09\09"
module asm "__kstrtabns_dm_suspended:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dm_post_suspending\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_post_suspending\09\09\09\09"
module asm "\09.long\09__crc_dm_post_suspending\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_post_suspending:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_post_suspending\22\09\09\09\09\09"
module asm "__kstrtabns_dm_post_suspending:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dm_noflush_suspending\22, \22a\22\09"
module asm "\09.weak\09__crc_dm_noflush_suspending\09\09\09\09"
module asm "\09.long\09__crc_dm_noflush_suspending\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dm_noflush_suspending:\09\09\09\09\09"
module asm "\09.asciz \09\22dm_noflush_suspending\22\09\09\09\09\09"
module asm "__kstrtabns_dm_noflush_suspending:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.block_device_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.77 }
%union.anon.77 = type { ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.radix_tree_preload = type { %struct.local_lock_t, i32, ptr }
%struct.local_lock_t = type { %struct.lockdep_map, ptr }
%struct.pr_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.78 }
%union.anon.78 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mapped_device = type { %struct.mutex, %struct.mutex, %struct.list_head, ptr, i32, %struct.mutex, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, [16 x i8], ptr, ptr, %struct.work_struct, %struct.wait_queue_head, %struct.spinlock, %struct.bio_list, ptr, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.spinlock, i32, %struct.bio_set, %struct.bio_set, ptr, %struct.hd_geometry, %struct.dm_kobject_holder, i32, %struct.semaphore, %struct.mutex, %struct.dm_stats, ptr, i8, %struct.srcu_struct, i32, ptr, %struct.dm_ima_measurements }
%struct.bio_list = type { ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.hd_geometry = type { i8, i8, i16, i32 }
%struct.dm_kobject_holder = type { %struct.kobject, %struct.completion }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dm_stats = type { %struct.mutex, %struct.list_head, ptr, i64, i32 }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.dm_ima_measurements = type { %struct.dm_ima_device_table_metadata, %struct.dm_ima_device_table_metadata, i32 }
%struct.dm_ima_device_table_metadata = type { ptr, i32, i32, ptr, i32 }
%struct.dm_io = type { i32, ptr, i8, %struct.atomic_t, ptr, i32, %struct.spinlock, %struct.dm_stats_aux, %struct.dm_target_io }
%struct.dm_stats_aux = type { i8, i64 }
%struct.dm_target_io = type { i32, ptr, ptr, i32, ptr, i8, %struct.bio }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.87, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.87 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.table_device = type { %struct.list_head, %struct.refcount_struct, %struct.dm_dev }
%struct.dm_dev = type { ptr, ptr, i32, [16 x i8] }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.dm_target = type { ptr, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.dm_md_mempools = type { %struct.bio_set, %struct.bio_set }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.disk_stats = type { [4 x i64], [4 x i32], [4 x i32], [4 x i32], i32, [2 x %struct.local_t] }
%struct.local_t = type { %struct.atomic_t }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.70, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.32 }
%struct.llist_node = type { ptr }
%union.anon.32 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.49 }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.70 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.clone_info = type { ptr, ptr, ptr, i64, i32 }
%struct.target_type = type { i64, ptr, ptr, [3 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.dm_pr = type { i64, i64, i32, i8 }

@dm_global_event_nr = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dm_global_eventq.lock\00", [42 x i8] zeroinitializer }, align 32
@dm_global_eventq = dso_local global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @dm_global_eventq, i64 44), ptr getelementptr (i8, ptr @dm_global_eventq, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@__kstrtab_dm_per_bio_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_per_bio_data = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_per_bio_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_per_bio_data to i32), ptr @__kstrtab_dm_per_bio_data, ptr @__kstrtabns_dm_per_bio_data }, section "___ksymtab_gpl+dm_per_bio_data", align 4
@__kstrtab_dm_bio_from_per_bio_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_bio_from_per_bio_data = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_bio_from_per_bio_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_bio_from_per_bio_data to i32), ptr @__kstrtab_dm_bio_from_per_bio_data, ptr @__kstrtabns_dm_bio_from_per_bio_data }, section "___ksymtab_gpl+dm_bio_from_per_bio_data", align 4
@__kstrtab_dm_bio_get_target_bio_nr = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_bio_get_target_bio_nr = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_bio_get_target_bio_nr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_bio_get_target_bio_nr to i32), ptr @__kstrtab_dm_bio_get_target_bio_nr, ptr @__kstrtabns_dm_bio_get_target_bio_nr }, section "___ksymtab_gpl+dm_bio_get_target_bio_nr", align 4
@reserved_bio_based_ios = internal global { i32, [28 x i8] } { i32 16, [28 x i8] zeroinitializer }, align 32
@__kstrtab_dm_get_reserved_bio_based_ios = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_get_reserved_bio_based_ios = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_get_reserved_bio_based_ios = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_get_reserved_bio_based_ios to i32), ptr @__kstrtab_dm_get_reserved_bio_based_ios, ptr @__kstrtabns_dm_get_reserved_bio_based_ios }, section "___ksymtab_gpl+dm_get_reserved_bio_based_ios", align 4
@_exits = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @local_exit, ptr @dm_target_exit, ptr @dm_linear_exit, ptr @dm_stripe_exit, ptr @dm_io_exit, ptr @dm_kcopyd_exit, ptr @dm_interface_exit, ptr @dm_statistics_exit], [32 x i8] zeroinitializer }, align 32
@_minor_idr = internal global { %struct.idr, [36 x i8] } { %struct.idr { %struct.xarray { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.20, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108868, ptr null }, i32 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@_minor_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_dm_start_time_ns_from_clone = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_start_time_ns_from_clone = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_start_time_ns_from_clone = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_start_time_ns_from_clone to i32), ptr @__kstrtab_dm_start_time_ns_from_clone, ptr @__kstrtabns_dm_start_time_ns_from_clone }, section "___ksymtab_gpl+dm_start_time_ns_from_clone", align 4
@dm_get_live_table.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"drivers/md/dm.c\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%u:%u\00", [26 x i8] zeroinitializer }, align 32
@dm_set_geometry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.1, i32 768, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\014device-mapper: core: Start sector is beyond the geometry limits.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dm_set_geometry\00", [16 x i8] zeroinitializer }, align 32
@dm_set_geometry._entry_ptr = internal global ptr @dm_set_geometry._entry, section ".printk_index", align 4
@dm_io_dec_pending.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@dm_set_target_max_io_len._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.1, i32 974, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\013device-mapper: core: Specified maximum size of target IO (%llu) exceeds limit (%u)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dm_set_target_max_io_len\00", [39 x i8] zeroinitializer }, align 32
@dm_set_target_max_io_len._entry_ptr = internal global ptr @dm_set_target_max_io_len._entry, section ".printk_index", align 4
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Maximum size of target IO is too large\00", [57 x i8] zeroinitializer }, align 32
@__kstrtab_dm_set_target_max_io_len = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_set_target_max_io_len = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_set_target_max_io_len = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_set_target_max_io_len to i32), ptr @__kstrtab_dm_set_target_max_io_len, ptr @__kstrtabns_dm_set_target_max_io_len }, section "___ksymtab_gpl+dm_set_target_max_io_len", align 4
@__kstrtab_dm_accept_partial_bio = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_accept_partial_bio = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_accept_partial_bio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_accept_partial_bio to i32), ptr @__kstrtab_dm_accept_partial_bio, ptr @__kstrtabns_dm_accept_partial_bio }, section "___ksymtab_gpl+dm_accept_partial_bio", align 4
@__kstrtab_dm_get_queue_limits = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_get_queue_limits = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_get_queue_limits = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_get_queue_limits to i32), ptr @__kstrtab_dm_get_queue_limits, ptr @__kstrtabns_dm_get_queue_limits }, section "___ksymtab_gpl+dm_get_queue_limits", align 4
@dm_rq_blk_dops = internal constant { %struct.block_device_operations, [60 x i8] } { %struct.block_device_operations { ptr null, ptr @dm_blk_open, ptr @dm_blk_close, ptr null, ptr @dm_blk_ioctl, ptr null, ptr null, ptr null, ptr @dm_blk_getgeo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dm_pr_ops, ptr null }, [60 x i8] zeroinitializer }, align 32
@dm_setup_md_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.1, i32 1975, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\013device-mapper: core: Cannot initialize queue for request-based dm mapped device\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dm_setup_md_queue\00", [46 x i8] zeroinitializer }, align 32
@dm_setup_md_queue._entry_ptr = internal global ptr @dm_setup_md_queue._entry, section ".printk_index", align 4
@dm_setup_md_queue.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@dm_setup_md_queue._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.1, i32 1989, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013device-mapper: core: Cannot calculate initial queue limits\0A\00", [34 x i8] zeroinitializer }, align 32
@dm_setup_md_queue._entry_ptr.13 = internal global ptr @dm_setup_md_queue._entry.11, section ".printk_index", align 4
@_major = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_dm_get_md = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_get_md = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_get_md = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_get_md to i32), ptr @__kstrtab_dm_get_md, ptr @__kstrtabns_dm_get_md }, section "___ksymtab_gpl+dm_get_md", align 4
@__kstrtab_dm_hold = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_hold = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_hold = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_hold to i32), ptr @__kstrtab_dm_hold, ptr @__kstrtabns_dm_hold }, section "___ksymtab_gpl+dm_hold", align 4
@__kstrtab_dm_device_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_device_name = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_device_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_device_name to i32), ptr @__kstrtab_dm_device_name, ptr @__kstrtabns_dm_device_name }, section "___ksymtab_gpl+dm_device_name", align 4
@__kstrtab_dm_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_put = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_put to i32), ptr @__kstrtab_dm_put, ptr @__kstrtabns_dm_put }, section "___ksymtab_gpl+dm_put", align 4
@dm_suspend.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@dm_resume.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_dm_internal_suspend_noflush = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_internal_suspend_noflush = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_internal_suspend_noflush = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_internal_suspend_noflush to i32), ptr @__kstrtab_dm_internal_suspend_noflush, ptr @__kstrtabns_dm_internal_suspend_noflush }, section "___ksymtab_gpl+dm_internal_suspend_noflush", align 4
@__kstrtab_dm_internal_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_internal_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_internal_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_internal_resume to i32), ptr @__kstrtab_dm_internal_resume, ptr @__kstrtabns_dm_internal_resume }, section "___ksymtab_gpl+dm_internal_resume", align 4
@__kstrtab_dm_internal_suspend_fast = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_internal_suspend_fast = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_internal_suspend_fast = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_internal_suspend_fast to i32), ptr @__kstrtab_dm_internal_suspend_fast, ptr @__kstrtabns_dm_internal_suspend_fast }, section "___ksymtab_gpl+dm_internal_suspend_fast", align 4
@__kstrtab_dm_internal_resume_fast = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_internal_resume_fast = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_internal_resume_fast = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_internal_resume_fast to i32), ptr @__kstrtab_dm_internal_resume_fast, ptr @__kstrtabns_dm_internal_resume_fast }, section "___ksymtab_gpl+dm_internal_resume_fast", align 4
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s=%u\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DM_COOKIE\00", [22 x i8] zeroinitializer }, align 32
@__kstrtab_dm_disk = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_disk = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_disk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_disk to i32), ptr @__kstrtab_dm_disk, ptr @__kstrtabns_dm_disk }, section "___ksymtab_gpl+dm_disk", align 4
@__kstrtab_dm_suspended = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_suspended = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_suspended = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_suspended to i32), ptr @__kstrtab_dm_suspended, ptr @__kstrtabns_dm_suspended }, section "___ksymtab_gpl+dm_suspended", align 4
@__kstrtab_dm_post_suspending = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_post_suspending = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_post_suspending = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_post_suspending to i32), ptr @__kstrtab_dm_post_suspending, ptr @__kstrtabns_dm_post_suspending }, section "___ksymtab_gpl+dm_post_suspending", align 4
@__kstrtab_dm_noflush_suspending = external dso_local constant [0 x i8], align 1
@__kstrtabns_dm_noflush_suspending = external dso_local constant [0 x i8], align 1
@__ksymtab_dm_noflush_suspending = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dm_noflush_suspending to i32), ptr @__kstrtab_dm_noflush_suspending, ptr @__kstrtabns_dm_noflush_suspending }, section "___ksymtab_gpl+dm_noflush_suspending", align 4
@__initcall__kmod_dm_mod__365_2974_dm_init6 = internal global ptr @dm_init, section ".initcall6.init", align 4
@__exitcall_dm_exit = internal global ptr @dm_exit, section ".exitcall.exit", align 4
@__param_str_major = internal constant [13 x i8] c"dm_mod.major\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@major = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_major = internal constant %struct.kernel_param { ptr @__param_str_major, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.77 { ptr @major } }, section "__param", align 4
@__UNIQUE_ID_majortype366 = internal constant [27 x i8] c"dm_mod.parmtype=major:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_major367 = internal constant [56 x i8] c"dm_mod.parm=major:The major number of the device mapper\00", section ".modinfo", align 1
@__param_str_reserved_bio_based_ios = internal constant [30 x i8] c"dm_mod.reserved_bio_based_ios\00", align 1
@__param_reserved_bio_based_ios = internal constant %struct.kernel_param { ptr @__param_str_reserved_bio_based_ios, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.77 { ptr @reserved_bio_based_ios } }, section "__param", align 4
@__UNIQUE_ID_reserved_bio_based_iostype368 = internal constant [44 x i8] c"dm_mod.parmtype=reserved_bio_based_ios:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_reserved_bio_based_ios369 = internal constant [70 x i8] c"dm_mod.parm=reserved_bio_based_ios:Reserved IOs in bio-based mempools\00", section ".modinfo", align 1
@__param_str_dm_numa_node = internal constant [20 x i8] c"dm_mod.dm_numa_node\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@dm_numa_node = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_dm_numa_node = internal constant %struct.kernel_param { ptr @__param_str_dm_numa_node, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.77 { ptr @dm_numa_node } }, section "__param", align 4
@__UNIQUE_ID_dm_numa_nodetype370 = internal constant [33 x i8] c"dm_mod.parmtype=dm_numa_node:int\00", section ".modinfo", align 1
@__UNIQUE_ID_dm_numa_node371 = internal constant [68 x i8] c"dm_mod.parm=dm_numa_node:NUMA node for DM device memory allocations\00", section ".modinfo", align 1
@__param_str_swap_bios = internal constant [17 x i8] c"dm_mod.swap_bios\00", align 1
@swap_bios = internal global { i32, [28 x i8] } { i32 2048, [28 x i8] zeroinitializer }, align 32
@__param_swap_bios = internal constant %struct.kernel_param { ptr @__param_str_swap_bios, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.77 { ptr @swap_bios } }, section "__param", align 4
@__UNIQUE_ID_swap_biostype372 = internal constant [30 x i8] c"dm_mod.parmtype=swap_bios:int\00", section ".modinfo", align 1
@__UNIQUE_ID_swap_bios373 = internal constant [56 x i8] c"dm_mod.parm=swap_bios:Maximum allowed inflight swap IOs\00", section ".modinfo", align 1
@__UNIQUE_ID_description374 = internal constant [40 x i8] c"dm_mod.description=device-mapper driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author375 = internal constant [49 x i8] c"dm_mod.author=Joe Thornber <dm-devel@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file376 = internal constant [30 x i8] c"dm_mod.file=drivers/md/dm-mod\00", section ".modinfo", align 1
@__UNIQUE_ID_license377 = internal constant [19 x i8] c"dm_mod.license=GPL\00", section ".modinfo", align 1
@deferred_remove_workqueue = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@local_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.1, i32 237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016device-mapper: core: cleaned up\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"local_exit\00", [21 x i8] zeroinitializer }, align 32
@local_exit._entry_ptr = internal global ptr @local_exit._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"device-mapper\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"_minor_idr.xa_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"_minor_lock\00", [20 x i8] zeroinitializer }, align 32
@srcu_read_unlock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/srcu.h\00", [43 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"I belong to device-mapper\00", [38 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@alloc_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.1, i32 1644, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\014device-mapper: core: unable to allocate device, out of memory.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"alloc_dev\00", [22 x i8] zeroinitializer }, align 32
@alloc_dev._entry_ptr = internal global ptr @alloc_dev._entry, section ".printk_index", align 4
@alloc_dev.__srcu_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&md->io_barrier\00", [16 x i8] zeroinitializer }, align 32
@alloc_dev.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&md->suspend_lock\00", [46 x i8] zeroinitializer }, align 32
@alloc_dev.__key.28 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&md->type_lock\00", [17 x i8] zeroinitializer }, align 32
@alloc_dev.__key.30 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&md->table_devices_lock\00", [40 x i8] zeroinitializer }, align 32
@alloc_dev.__key.32 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&md->deferred_lock\00", [45 x i8] zeroinitializer }, align 32
@alloc_dev.__key.34 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&md->uevent_lock\00", [47 x i8] zeroinitializer }, align 32
@alloc_dev.__key.36 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@alloc_dev.__key.37 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&md->wait\00", [22 x i8] zeroinitializer }, align 32
@alloc_dev.__key.39 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(work_completion)(&md->work)\00", [35 x i8] zeroinitializer }, align 32
@alloc_dev.__key.41 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&md->eventq\00", [20 x i8] zeroinitializer }, align 32
@alloc_dev.__key.43 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&md->swap_bios_lock\00", [44 x i8] zeroinitializer }, align 32
@dm_blk_dops = internal constant { %struct.block_device_operations, [60 x i8] } { %struct.block_device_operations { ptr @dm_submit_bio, ptr @dm_blk_open, ptr @dm_blk_close, ptr null, ptr @dm_blk_ioctl, ptr null, ptr null, ptr null, ptr @dm_blk_getgeo, ptr null, ptr null, ptr @dm_blk_report_zones, ptr null, ptr null, ptr null, ptr @dm_pr_ops, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dm-%d\00", [26 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"kdmflush/%s\00", [20 x i8] zeroinitializer }, align 32
@radix_tree_preloads = external dso_local global %struct.radix_tree_preload, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@debug_locks_silent = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.47 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"include/linux/local_lock_internal.h\00", [60 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DEBUG_LOCKS_WARN_ON(%s)\00", [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"l->owner != current\00", [44 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@sema_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(*sem).lock\00", [20 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"semaphore->lock\00", [16 x i8] zeroinitializer }, align 32
@dm_pr_ops = internal constant { %struct.pr_ops, [44 x i8] } { %struct.pr_ops { ptr @dm_pr_register, ptr @dm_pr_reserve, ptr @dm_pr_release, ptr @dm_pr_preempt, ptr @dm_pr_clear }, [44 x i8] zeroinitializer }, align 32
@dm_submit_bio._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.53, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.dm_submit_bio = private unnamed_addr constant [14 x i8] c"dm_submit_bio\00", align 1
@dm_submit_bio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @__func__.dm_submit_bio, ptr @.str.1, i32 1500, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013device-mapper: core: %s: mapping table unavailable, erroring io\0A\00", [61 x i8] zeroinitializer }, align 32
@dm_submit_bio._entry_ptr = internal global ptr @dm_submit_bio._entry, section ".printk_index", align 4
@alloc_io.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&io->endio_lock\00", [16 x i8] zeroinitializer }, align 32
@__map_bio._entry = internal constant %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.1, i32 1179, ptr null, ptr null }, align 1
@.str.56 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\014device-mapper: core: unimplemented target map return value: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"__map_bio\00", [22 x i8] zeroinitializer }, align 32
@__map_bio._entry_ptr = internal global ptr @__map_bio._entry, section ".printk_index", align 4
@clone_endio.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@clone_endio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.1, i32 923, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\014device-mapper: core: unimplemented target endio return value: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clone_endio\00", [20 x i8] zeroinitializer }, align 32
@clone_endio._entry_ptr = internal global ptr @clone_endio._entry, section ".printk_index", align 4
@__tracepoint_block_bio_remap = external dso_local global %struct.tracepoint, align 4
@.str.60 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/block.h\00", [35 x i8] zeroinitializer }, align 32
@trace_block_bio_remap.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@clone_bio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.1, i32 1210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\014device-mapper: core: %s: the target %s doesn't support integrity data.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clone_bio\00", [22 x i8] zeroinitializer }, align 32
@clone_bio._entry_ptr = internal global ptr @clone_bio._entry, section ".printk_index", align 4
@__tracepoint_block_split = external dso_local global %struct.tracepoint, align 4
@trace_block_split.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@deferred_remove_work = internal global { %struct.work_struct, [52 x i8] } { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @deferred_remove_work, i64 4), ptr getelementptr (i8, ptr @deferred_remove_work, i64 4) }, ptr @do_deferred_remove, %struct.lockdep_map { ptr @deferred_remove_work, [2 x ptr] zeroinitializer, ptr @.str.64, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"deferred_remove_work\00", [43 x i8] zeroinitializer }, align 32
@dm_blk_ioctl._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.53, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@dm_blk_ioctl.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.65, ptr @.str.66, ptr @.str.1, ptr @.str.67, i8 0, i8 115, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dm_mod\00", [25 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dm_blk_ioctl\00", [19 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"device-mapper: core: %s: sending ioctl %x to DM device without required privilege.\0A\00", [44 x i8] zeroinitializer }, align 32
@__dm_destroy._entry = internal constant %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.1, i32 2109, ptr null, ptr null }, align 1
@.str.68 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\014device-mapper: core: %s: Forcibly removing mapped_device still in use! (%d users)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"__dm_destroy\00", [19 x i8] zeroinitializer }, align 32
@__dm_destroy._entry_ptr = internal global ptr @__dm_destroy._entry, section ".printk_index", align 4
@free_table_devices._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.1, i32 745, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\014device-mapper: core: dm_destroy: %s still exists with %d references\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"free_table_devices\00", [45 x i8] zeroinitializer }, align 32
@free_table_devices._entry_ptr = internal global ptr @free_table_devices._entry, section ".printk_index", align 4
@dm_get_live_table_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.72 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.74 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@__bind.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.75 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/wait_bit.h\00", [39 x i8] zeroinitializer }, align 32
@__dm_suspend.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.65, ptr @.str.76, ptr @.str.1, ptr @.str.77, i8 2, i8 65, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"__dm_suspend\00", [19 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"device-mapper: core: %s: suspending with flush\0A\00", [48 x i8] zeroinitializer }, align 32
@__dm_internal_suspend.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@_inits = internal unnamed_addr constant [8 x ptr] [ptr @local_init, ptr @dm_target_init, ptr @dm_linear_init, ptr @dm_stripe_init, ptr @dm_io_init, ptr @dm_kcopyd_init, ptr @dm_interface_init, ptr @dm_statistics_init], section ".init.data", align 4
@.str.78 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"kdmremove\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 5191977, i64 7282014]
@__sancov_gen_cov_switch_values.79 = internal global [6 x i64] [i64 4, i64 8, i64 10, i64 11, i64 12, i64 15]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.82 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.83 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 5, i64 9]
@__sancov_gen_cov_switch_values.84 = internal global [6 x i64] [i64 4, i64 8, i64 10, i64 11, i64 12, i64 15]
@__sancov_gen_cov_switch_values.85 = internal global [6 x i64] [i64 4, i64 8, i64 3, i64 5, i64 7, i64 9]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.87 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.88 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 7, i64 9]
@__sancov_gen_cov_switch_values.89 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.90 = private unnamed_addr constant [19 x i8] c"dm_global_event_nr\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 58, i32 10 }
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"dm_global_eventq\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 59, i32 1 }
@___asan_gen_.99 = private unnamed_addr constant [23 x i8] c"reserved_bio_based_ios\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 140, i32 17 }
@___asan_gen_.102 = private unnamed_addr constant [7 x i8] c"_exits\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 251, i32 15 }
@___asan_gen_.105 = private unnamed_addr constant [11 x i8] c"_minor_idr\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [12 x i8] c"_minor_lock\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 602, i32 9 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 711, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 768, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 973, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 975, i32 15 }
@___asan_gen_.141 = private unnamed_addr constant [15 x i8] c"dm_rq_blk_dops\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 2957, i32 45 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1975, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1989, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant [7 x i8] c"_major\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 46, i32 21 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 2424, i32 8 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 2618, i32 43 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 2619, i32 5 }
@___asan_gen_.171 = private unnamed_addr constant [6 x i8] c"major\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 45, i32 21 }
@___asan_gen_.174 = private unnamed_addr constant [13 x i8] c"dm_numa_node\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 110, i32 12 }
@___asan_gen_.177 = private unnamed_addr constant [10 x i8] c"swap_bios\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 113, i32 12 }
@___asan_gen_.180 = private unnamed_addr constant [26 x i8] c"deferred_remove_workqueue\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 56, i32 33 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 237, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 43, i32 28 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 48, i32 8 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 50, i32 8 }
@___asan_gen_.202 = private unnamed_addr constant [24 x i8] c"../include/linux/srcu.h\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 189, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 631, i32 30 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1644, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant [11 x i8] c"__srcu_key\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1659, i32 6 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1666, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1667, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1668, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1669, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1676, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1683, i32 13 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1688, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1689, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1690, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1695, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant [12 x i8] c"dm_blk_dops\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 2946, i32 45 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1704, i32 31 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1720, i32 27 }
@___asan_gen_.295 = private unnamed_addr constant [39 x i8] c"../include/linux/local_lock_internal.h\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 36, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 87, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 33, i32 31 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 34, i32 28 }
@___asan_gen_.310 = private unnamed_addr constant [29 x i8] c"../include/linux/semaphore.h\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 35, i32 39 }
@___asan_gen_.312 = private unnamed_addr constant [10 x i8] c"dm_pr_ops\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 2938, i32 28 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1499, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 536, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1179, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 923, i32 4 }
@___asan_gen_.349 = private unnamed_addr constant [32 x i8] c"../include/trace/events/block.h\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.349, i32 456, i32 1 }
@___asan_gen_.352 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.352, i32 108, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 1208, i32 4 }
@___asan_gen_.363 = private unnamed_addr constant [21 x i8] c"deferred_remove_work\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 54, i32 8 }
@___asan_gen_.369 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 461, i32 4 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 2108, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 744, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 695, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 723, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant [28 x i8] c"../include/linux/wait_bit.h\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.406, i32 73, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 2311, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.415 = private constant [19 x i8] c"../drivers/md/dm.c\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.415, i32 203, i32 46 }
@llvm.compiler.used = appending global [162 x ptr] [ptr @__UNIQUE_ID_author375, ptr @__UNIQUE_ID_description374, ptr @__UNIQUE_ID_dm_numa_node371, ptr @__UNIQUE_ID_dm_numa_nodetype370, ptr @__UNIQUE_ID_file376, ptr @__UNIQUE_ID_license377, ptr @__UNIQUE_ID_major367, ptr @__UNIQUE_ID_majortype366, ptr @__UNIQUE_ID_reserved_bio_based_ios369, ptr @__UNIQUE_ID_reserved_bio_based_iostype368, ptr @__UNIQUE_ID_swap_bios373, ptr @__UNIQUE_ID_swap_biostype372, ptr @__dm_destroy._entry, ptr @__dm_destroy._entry_ptr, ptr @__exitcall_dm_exit, ptr @__initcall__kmod_dm_mod__365_2974_dm_init6, ptr @__ksymtab_dm_accept_partial_bio, ptr @__ksymtab_dm_bio_from_per_bio_data, ptr @__ksymtab_dm_bio_get_target_bio_nr, ptr @__ksymtab_dm_device_name, ptr @__ksymtab_dm_disk, ptr @__ksymtab_dm_get_md, ptr @__ksymtab_dm_get_queue_limits, ptr @__ksymtab_dm_get_reserved_bio_based_ios, ptr @__ksymtab_dm_hold, ptr @__ksymtab_dm_internal_resume, ptr @__ksymtab_dm_internal_resume_fast, ptr @__ksymtab_dm_internal_suspend_fast, ptr @__ksymtab_dm_internal_suspend_noflush, ptr @__ksymtab_dm_noflush_suspending, ptr @__ksymtab_dm_per_bio_data, ptr @__ksymtab_dm_post_suspending, ptr @__ksymtab_dm_put, ptr @__ksymtab_dm_set_target_max_io_len, ptr @__ksymtab_dm_start_time_ns_from_clone, ptr @__ksymtab_dm_suspended, ptr @__map_bio._entry, ptr @__map_bio._entry_ptr, ptr @__param_dm_numa_node, ptr @__param_major, ptr @__param_reserved_bio_based_ios, ptr @__param_swap_bios, ptr @alloc_dev._entry, ptr @alloc_dev._entry_ptr, ptr @clone_bio._entry, ptr @clone_bio._entry_ptr, ptr @clone_endio._entry, ptr @clone_endio._entry_ptr, ptr @dm_exit, ptr @dm_set_geometry._entry, ptr @dm_set_geometry._entry_ptr, ptr @dm_set_target_max_io_len._entry, ptr @dm_set_target_max_io_len._entry_ptr, ptr @dm_setup_md_queue._entry, ptr @dm_setup_md_queue._entry.11, ptr @dm_setup_md_queue._entry_ptr, ptr @dm_setup_md_queue._entry_ptr.13, ptr @dm_submit_bio._entry, ptr @dm_submit_bio._entry_ptr, ptr @free_table_devices._entry, ptr @free_table_devices._entry_ptr, ptr @local_exit._entry, ptr @local_exit._entry_ptr, ptr @dm_global_event_nr, ptr @.str, ptr @dm_global_eventq, ptr @reserved_bio_based_ios, ptr @_exits, ptr @_minor_idr, ptr @_minor_lock, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @dm_rq_blk_dops, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @_major, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @major, ptr @dm_numa_node, ptr @swap_bios, ptr @deferred_remove_workqueue, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @alloc_dev.__srcu_key, ptr @.str.26, ptr @alloc_dev.__key, ptr @.str.27, ptr @alloc_dev.__key.28, ptr @.str.29, ptr @alloc_dev.__key.30, ptr @.str.31, ptr @alloc_dev.__key.32, ptr @.str.33, ptr @alloc_dev.__key.34, ptr @.str.35, ptr @alloc_dev.__key.36, ptr @alloc_dev.__key.37, ptr @.str.38, ptr @alloc_dev.__key.39, ptr @.str.40, ptr @alloc_dev.__key.41, ptr @.str.42, ptr @alloc_dev.__key.43, ptr @.str.44, ptr @dm_blk_dops, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @init_completion.__key, ptr @.str.50, ptr @sema_init.__key, ptr @.str.51, ptr @.str.52, ptr @dm_pr_ops, ptr @dm_submit_bio._rs, ptr @.str.53, ptr @.str.54, ptr @alloc_io.__key, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @deferred_remove_work, ptr @.str.64, ptr @dm_blk_ioctl._rs, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78], section "llvm.metadata"
@0 = internal global [109 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_global_event_nr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_global_eventq to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reserved_bio_based_ios to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_exits to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_minor_idr to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_minor_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_set_geometry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_set_target_max_io_len._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_rq_blk_dops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_setup_md_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_setup_md_queue._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_major to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @major to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_numa_node to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swap_bios to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deferred_remove_workqueue to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @local_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_dev.__srcu_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_dev.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_dev.__key.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_dev.__key.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_dev.__key.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_dev.__key.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_dev.__key.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_dev.__key.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_dev.__key.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_dev.__key.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_dev.__key.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_blk_dops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sema_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_pr_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_submit_bio._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_submit_bio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_io.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clone_endio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clone_bio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deferred_remove_work to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_blk_ioctl._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @free_table_devices._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_issue_global_event() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @dm_global_event_nr, i32 noundef 4) #21
  tail call void @llvm.prefetch.p0(ptr nonnull @dm_global_event_nr, i32 1, i32 3, i32 1) #21
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @dm_global_event_nr, ptr nonnull @dm_global_event_nr, i32 1, ptr nonnull elementtype(i32) @dm_global_event_nr) #21, !srcloc !307
  tail call void @__wake_up(ptr noundef nonnull @dm_global_eventq, i32 noundef 3, i32 noundef 1, ptr noundef null) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @dm_per_bio_data(ptr noundef readonly %bio, i32 noundef %data_size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %inside_dm_io = getelementptr i8, ptr %bio, i32 -4
  %0 = ptrtoint ptr %inside_dm_io to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %inside_dm_io, align 4, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %idx.neg4 = sub i32 0, %data_size
  %retval.0.v.v = select i1 %tobool.not, i32 -24, i32 -112
  %retval.0.v = getelementptr i8, ptr %bio, i32 %retval.0.v.v
  %retval.0 = getelementptr i8, ptr %retval.0.v, i32 %idx.neg4
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dm_bio_from_per_bio_data(ptr noundef readonly %data, i32 noundef %data_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %data, i32 %data_size
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.body6 [
    i32 5191977, label %entry.cleanup_crit_edge
    i32 7282014, label %do.end12
  ], !prof !309

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 96, 0\0A.popsection", ""() #21, !srcloc !310
  unreachable

do.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %entry.cleanup_crit_edge
  %.sink = phi i32 [ 24, %do.end12 ], [ 112, %entry.cleanup_crit_edge ]
  %add.ptr13 = getelementptr i8, ptr %add.ptr, i32 %.sink
  ret ptr %add.ptr13
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dm_bio_get_target_bio_nr(ptr nocapture noundef readonly %bio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %target_bio_nr = getelementptr i8, ptr %bio, i32 -12
  %0 = ptrtoint ptr %target_bio_nr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %target_bio_nr, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__dm_get_module_param(ptr noundef %module_param, i32 noundef %def, i32 noundef %max) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %module_param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %module_param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %max)
  %cmp = icmp ugt i32 %1, %max
  %spec.select = select i1 %cmp, i32 %max, i32 0
  %modified_param.0 = select i1 %tobool.not, i32 %def, i32 %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %modified_param.0)
  %tobool3.not = icmp eq i32 %modified_param.0, 0
  br i1 %tobool3.not, label %entry.if.end23_crit_edge, label %if.then4

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end23

if.then4:                                         ; preds = %entry
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %module_param, i32 noundef 4) #21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #21, !srcloc !311
  tail call void @llvm.prefetch.p0(ptr %module_param, i32 1, i32 3, i32 1) #21
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.then4
  %2 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %module_param, i32 %1, i32 %modified_param.0) #21, !srcloc !312
  %asmresult.i = extractvalue { i32, i32 } %2, 0
  %tobool.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool.not.i, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body.i

__cmpxchg.exit:                                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #21, !srcloc !313
  br label %if.end23

if.end23:                                         ; preds = %__cmpxchg.exit, %entry.if.end23_crit_edge
  %param.0 = phi i32 [ %modified_param.0, %__cmpxchg.exit ], [ %1, %entry.if.end23_crit_edge ]
  ret i32 %param.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_get_reserved_bio_based_ios() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile i32, ptr @reserved_bio_based_ios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %0)
  %cmp.i = icmp ugt i32 %0, 1024
  %spec.select.i = select i1 %cmp.i, i32 1024, i32 0
  %modified_param.0.i = select i1 %tobool.not.i, i32 16, i32 %spec.select.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %modified_param.0.i)
  %tobool3.not.i = icmp eq i32 %modified_param.0.i, 0
  br i1 %tobool3.not.i, label %entry.__dm_get_module_param.exit_crit_edge, label %if.then4.i

entry.__dm_get_module_param.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %__dm_get_module_param.exit

if.then4.i:                                       ; preds = %entry
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @reserved_bio_based_ios, i32 noundef 4) #21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #21, !srcloc !311
  tail call void @llvm.prefetch.p0(ptr nonnull @reserved_bio_based_ios, i32 1, i32 3, i32 1) #21
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.then4.i
  %1 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr nonnull @reserved_bio_based_ios, i32 %0, i32 %modified_param.0.i) #21, !srcloc !312
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  %tobool.not.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i, label %__cmpxchg.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body.i.i

__cmpxchg.exit.i:                                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #21, !srcloc !313
  br label %__dm_get_module_param.exit

__dm_get_module_param.exit:                       ; preds = %__cmpxchg.exit.i, %entry.__dm_get_module_param.exit_crit_edge
  %param.0.i = phi i32 [ %modified_param.0.i, %__cmpxchg.exit.i ], [ %0, %entry.__dm_get_module_param.exit_crit_edge ]
  ret i32 %param.0.i
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dm_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry
  %i.02 = phi i32 [ 8, %entry ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %i.02, -1
  %arrayidx = getelementptr [8 x ptr], ptr @_exits, i32 0, i32 %dec
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  tail call void %1() #21
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @idr_destroy(ptr noundef nonnull @_minor_idr) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dm_deleting_md(ptr noundef %md) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %shr.i = lshr i32 %1, 4
  %and1.i = and i32 %shr.i, 1
  ret i32 %and1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_open_count(ptr noundef %md) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %open_count = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %open_count, i32 noundef 4) #21
  %0 = ptrtoint ptr %open_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %open_count, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_lock_for_deletion(ptr noundef %md, i1 noundef zeroext %mark_deferred, i1 noundef zeroext %only_deferred) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @_minor_lock) #21
  %open_count.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %open_count.i, i32 noundef 4) #21
  %0 = ptrtoint ptr %open_count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %open_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %mark_deferred, label %if.then.if.end12.sink.split_crit_edge, label %if.then.if.end12_crit_edge

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end12

if.then.if.end12.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end12.sink.split

if.else:                                          ; preds = %entry
  br i1 %only_deferred, label %land.lhs.true, label %if.else.if.end12.sink.split_crit_edge

if.else.if.end12.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end12.sink.split

land.lhs.true:                                    ; preds = %if.else
  %flags5 = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 4
  %2 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags5, align 4
  %4 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool7.not = icmp eq i32 %4, 0
  br i1 %tobool7.not, label %land.lhs.true.if.end12_crit_edge, label %land.lhs.true.if.end12.sink.split_crit_edge

land.lhs.true.if.end12.sink.split_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end12.sink.split

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end12

if.end12.sink.split:                              ; preds = %land.lhs.true.if.end12.sink.split_crit_edge, %if.else.if.end12.sink.split_crit_edge, %if.then.if.end12.sink.split_crit_edge
  %.sink = phi i32 [ 6, %if.then.if.end12.sink.split_crit_edge ], [ 4, %land.lhs.true.if.end12.sink.split_crit_edge ], [ 4, %if.else.if.end12.sink.split_crit_edge ]
  %r.0.ph = phi i32 [ -16, %if.then.if.end12.sink.split_crit_edge ], [ 0, %land.lhs.true.if.end12.sink.split_crit_edge ], [ 0, %if.else.if.end12.sink.split_crit_edge ]
  %flags10 = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 4
  tail call void @_set_bit(i32 noundef %.sink, ptr noundef %flags10) #21
  br label %if.end12

if.end12:                                         ; preds = %if.end12.sink.split, %land.lhs.true.if.end12_crit_edge, %if.then.if.end12_crit_edge
  %r.0 = phi i32 [ -16, %if.then.if.end12_crit_edge ], [ -17, %land.lhs.true.if.end12_crit_edge ], [ %r.0.ph, %if.end12.sink.split ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @_minor_lock) #21
  ret i32 %r.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_cancel_deferred_remove(ptr noundef %md) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @_minor_lock) #21
  %flags = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %flags) #21
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %r.0 = phi i32 [ 0, %if.else ], [ -16, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @_minor_lock) #21
  ret i32 %r.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @dm_start_time_ns_from_clone(ptr nocapture noundef readonly %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %io1 = getelementptr i8, ptr %bio, i32 -20
  %0 = ptrtoint ptr %io1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io1, align 4
  %start_time = getelementptr inbounds %struct.dm_io, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %start_time to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %start_time, align 4
  %call.i = tail call i32 @jiffies_to_usecs(i32 noundef %3) #21
  %conv.i = zext i32 %call.i to i64
  %mul.i = mul nuw nsw i64 %conv.i, 1000
  ret i64 %mul.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dm_get_live_table(ptr noundef %md, ptr nocapture noundef writeonly %srcu_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %io_barrier = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 38
  %call.i = tail call i32 @__srcu_read_lock(ptr noundef %io_barrier) #21
  %dep_map.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 38, i32 16
  tail call fastcc void @rcu_lock_acquire(ptr noundef %dep_map.i) #21
  %0 = ptrtoint ptr %srcu_idx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call.i, ptr %srcu_idx, align 4
  %map = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 3
  %1 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %map, align 8
  %call.i14 = tail call i32 @debug_lockdep_rcu_enabled() #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %tobool.not.i = icmp eq i32 %call.i14, 0
  br i1 %tobool.not.i, label %entry.do.end9_crit_edge, label %srcu_read_lock_held.exit

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end9

srcu_read_lock_held.exit:                         ; preds = %entry
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %srcu_read_lock_held.exit.do.end9_crit_edge

srcu_read_lock_held.exit.do.end9_crit_edge:       ; preds = %srcu_read_lock_held.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end9

land.lhs.true:                                    ; preds = %srcu_read_lock_held.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b13 = load i1, ptr @dm_get_live_table.__warned, align 1
  br i1 %.b13, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #23
  store i1 true, ptr @dm_get_live_table.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 602, ptr noundef nonnull @.str.2) #21
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %srcu_read_lock_held.exit.do.end9_crit_edge, %entry.do.end9_crit_edge
  ret ptr %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_put_live_table(ptr noundef %md, i32 noundef %srcu_idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %srcu_idx)
  %tobool.not.i = icmp ult i32 %srcu_idx, 2
  br i1 %tobool.not.i, label %entry.srcu_read_unlock.exit_crit_edge, label %land.rhs.i

entry.srcu_read_unlock.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %srcu_read_unlock.exit

land.rhs.i:                                       ; preds = %entry
  %.b40.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b40.i, label %land.rhs.i.srcu_read_unlock.exit_crit_edge, label %if.then.i, !prof !314

land.rhs.i.srcu_read_unlock.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %srcu_read_unlock.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #23
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 189, i32 noundef 9, ptr noundef null) #21
  br label %srcu_read_unlock.exit

srcu_read_unlock.exit:                            ; preds = %if.then.i, %land.rhs.i.srcu_read_unlock.exit_crit_edge, %entry.srcu_read_unlock.exit_crit_edge
  %io_barrier = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 38
  %dep_map.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 38, i32 16
  tail call fastcc void @rcu_lock_release(ptr noundef %dep_map.i) #21
  tail call void @__srcu_read_unlock(ptr noundef %io_barrier, i32 noundef %srcu_idx) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_sync_table(ptr noundef %md) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %io_barrier = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 38
  tail call void @synchronize_srcu(ptr noundef %io_barrier) #21
  tail call void @synchronize_rcu_expedited() #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_srcu(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu_expedited() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_get_table_device(ptr noundef %md, i32 noundef %dev, i32 noundef %mode, ptr nocapture noundef writeonly %result) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %table_devices_lock = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %table_devices_lock, i32 noundef 0) #21
  %table_devices = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 2
  %0 = ptrtoint ptr %table_devices to i32
  call void @__asan_load4_noabort(i32 %0)
  %td.015.i = load ptr, ptr %table_devices, align 4
  %cmp.not16.i = icmp eq ptr %td.015.i, %table_devices
  br i1 %cmp.not16.i, label %entry.if.then_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %td.017.i = phi ptr [ %td.0.i, %for.inc.i.for.body.i_crit_edge ], [ %td.015.i, %entry.for.body.i_crit_edge ]
  %dm_dev.i = getelementptr inbounds %struct.table_device, ptr %td.017.i, i32 0, i32 2
  %1 = ptrtoint ptr %dm_dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dm_dev.i, align 4
  %bd_dev.i = getelementptr inbounds %struct.block_device, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %bd_dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bd_dev.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %dev)
  %cmp1.i = icmp eq i32 %4, %dev
  br i1 %cmp1.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %mode3.i = getelementptr inbounds %struct.table_device, ptr %td.017.i, i32 0, i32 2, i32 2
  %5 = ptrtoint ptr %mode3.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %mode)
  %cmp4.i = icmp eq i32 %6, %mode
  br i1 %cmp4.i, label %find_table_device.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %7 = ptrtoint ptr %td.017.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %td.0.i = load ptr, ptr %td.017.i, align 4
  %cmp.not.i = icmp eq ptr %td.0.i, %table_devices
  br i1 %cmp.not.i, label %for.inc.i.if.then_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body.i

for.inc.i.if.then_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then

find_table_device.exit:                           ; preds = %land.lhs.true.i
  %tobool.not = icmp eq ptr %td.017.i, null
  br i1 %tobool.not, label %find_table_device.exit.if.then_crit_edge, label %if.else

find_table_device.exit.if.then_crit_edge:         ; preds = %find_table_device.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then

if.then:                                          ; preds = %find_table_device.exit.if.then_crit_edge, %for.inc.i.if.then_crit_edge, %entry.if.then_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 40) #24
  %tobool2.not = icmp eq ptr %call.i.i, null
  br i1 %tobool2.not, label %if.then3, label %do.end9.i

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @mutex_unlock(ptr noundef %table_devices_lock) #21
  br label %cleanup

do.end9.i:                                        ; preds = %if.then
  %dm_dev = getelementptr inbounds %struct.table_device, ptr %call.i.i, i32 0, i32 2
  %mode5 = getelementptr inbounds %struct.table_device, ptr %call.i.i, i32 0, i32 2, i32 2
  %9 = ptrtoint ptr %mode5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %mode, ptr %mode5, align 4
  %10 = ptrtoint ptr %dm_dev to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %dm_dev, align 4
  %or.i = or i32 %mode, 128
  %call.i = tail call ptr @blkdev_get_by_dev(i32 noundef %dev, i32 noundef %or.i, ptr noundef nonnull @.str.23) #21
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %open_table_device.exit, label %if.end14.i

if.end14.i:                                       ; preds = %do.end9.i
  %disk.i.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 14
  %11 = ptrtoint ptr %disk.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %disk.i.i, align 8
  %call16.i = tail call i32 @bd_link_disk_holder(ptr noundef %call.i, ptr noundef %12) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %open_table_device.exit.thread, label %open_table_device.exit.thread52

open_table_device.exit.thread52:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #23
  %13 = ptrtoint ptr %mode5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mode5, align 4
  %or21.i = or i32 %14, 128
  tail call void @blkdev_put(ptr noundef %call.i, i32 noundef %or21.i) #21
  br label %if.then9

open_table_device.exit.thread:                    ; preds = %if.end14.i
  %15 = ptrtoint ptr %dm_dev to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %dm_dev, align 4
  %dax_dev.i = getelementptr inbounds %struct.table_device, ptr %call.i.i, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %dax_dev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %dax_dev.i, align 8
  %name = getelementptr inbounds %struct.table_device, ptr %call.i.i, i32 0, i32 2, i32 3
  %shr = lshr i32 %dev, 20
  %and = and i32 %dev, 1048575
  %call13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name, ptr noundef nonnull @.str.3, i32 noundef %shr, i32 noundef %and)
  %count = getelementptr inbounds %struct.table_device, ptr %call.i.i, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #21
  %17 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 1, ptr %count, align 8
  %18 = ptrtoint ptr %table_devices to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %table_devices, align 4
  %call.i.i47 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i, ptr noundef %table_devices, ptr noundef %19) #21
  br i1 %call.i.i47, label %if.end.i.i, label %open_table_device.exit.thread.if.end19_crit_edge

open_table_device.exit.thread.if.end19_crit_edge: ; preds = %open_table_device.exit.thread
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end19

open_table_device.exit:                           ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #23
  %20 = ptrtoint ptr %call.i to i32
  br label %if.then9

if.then9:                                         ; preds = %open_table_device.exit, %open_table_device.exit.thread52
  %retval.0.i4655 = phi i32 [ %call16.i, %open_table_device.exit.thread52 ], [ %20, %open_table_device.exit ]
  tail call void @mutex_unlock(ptr noundef %table_devices_lock) #21
  tail call void @kfree(ptr noundef nonnull %call.i.i) #21
  br label %cleanup

if.end.i.i:                                       ; preds = %open_table_device.exit.thread
  call void @__sanitizer_cov_trace_pc() #23
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i.i, ptr %prev1.i.i, align 4
  %22 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %call.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %table_devices, ptr %prev3.i.i, align 4
  %24 = ptrtoint ptr %table_devices to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %call.i.i, ptr %table_devices, align 4
  br label %if.end19

if.else:                                          ; preds = %find_table_device.exit
  %count18 = getelementptr inbounds %struct.table_device, ptr %td.017.i, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count18, i32 noundef 4) #21
  tail call void @llvm.prefetch.p0(ptr %count18, i32 1, i32 3, i32 1) #21
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count18, ptr %count18, i32 1, ptr elementtype(i32) %count18) #21, !srcloc !315
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.else.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !316

if.else.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.else
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %26 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %.not.i.i.i = icmp sgt i32 %26, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.if.end19_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !314

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.if.end19_crit_edge:                 ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end19

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.else.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.else.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count18, i32 noundef %.sink.i.i.i) #21
  br label %if.end19

if.end19:                                         ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.if.end19_crit_edge, %if.end.i.i, %open_table_device.exit.thread.if.end19_crit_edge
  %td.0 = phi ptr [ %call.i.i, %open_table_device.exit.thread.if.end19_crit_edge ], [ %call.i.i, %if.end.i.i ], [ %td.017.i, %if.else.i.i.i.if.end19_crit_edge ], [ %td.017.i, %if.end15.sink.split.i.i.i ]
  tail call void @mutex_unlock(ptr noundef %table_devices_lock) #21
  %dm_dev21 = getelementptr inbounds %struct.table_device, ptr %td.0, i32 0, i32 2
  %27 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %dm_dev21, ptr %result, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then9, %if.then3
  %retval.0 = phi i32 [ 0, %if.end19 ], [ %retval.0.i4655, %if.then9 ], [ -12, %if.then3 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_put_table_device(ptr noundef %md, ptr noundef %d) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %table_devices_lock = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %table_devices_lock, i32 noundef 0) #21
  %count = getelementptr i8, ptr %d, i32 -4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #21, !srcloc !317
  tail call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #21
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #21, !srcloc !318
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !314

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @refcount_warn_saturate(ptr noundef %count, i32 noundef 3) #21
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #21, !srcloc !319
  %add.ptr = getelementptr i8, ptr %d, i32 -12
  %1 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %d, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.then.close_table_device.exit_crit_edge, label %if.end.i

if.then.close_table_device.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %close_table_device.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  %disk.i.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 14
  %3 = ptrtoint ptr %disk.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %disk.i.i, align 8
  tail call void @bd_unlink_disk_holder(ptr noundef nonnull %2, ptr noundef %4) #21
  %5 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %d, align 4
  %mode.i = getelementptr i8, ptr %d, i32 8
  %7 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mode.i, align 4
  %or.i = or i32 %8, 128
  tail call void @blkdev_put(ptr noundef %6, i32 noundef %or.i) #21
  %dax_dev.i = getelementptr i8, ptr %d, i32 4
  %9 = ptrtoint ptr %dax_dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dax_dev.i, align 4
  tail call void @put_dax(ptr noundef %10) #21
  %11 = ptrtoint ptr %d to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %d, align 4
  %12 = ptrtoint ptr %dax_dev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %dax_dev.i, align 4
  br label %close_table_device.exit

close_table_device.exit:                          ; preds = %if.end.i, %if.then.close_table_device.exit_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %add.ptr) #21
  br i1 %call.i.i, label %if.end.i.i, label %close_table_device.exit.list_del.exit_crit_edge

close_table_device.exit.list_del.exit_crit_edge:  ; preds = %close_table_device.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %list_del.exit

if.end.i.i:                                       ; preds = %close_table_device.exit
  call void @__sanitizer_cov_trace_pc() #23
  %prev.i.i = getelementptr i8, ptr %d, i32 -8
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %close_table_device.exit.list_del.exit_crit_edge
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %add.ptr, align 4
  %prev.i = getelementptr i8, ptr %d, i32 -8
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %add.ptr) #21
  br label %if.end

if.end:                                           ; preds = %list_del.exit, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %table_devices_lock) #21
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dm_get_geometry(ptr nocapture noundef readonly %md, ptr nocapture noundef writeonly %geo) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %geometry = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 30
  %0 = ptrtoint ptr %geometry to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %geometry, align 8
  %2 = ptrtoint ptr %geo to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 %1, ptr %geo, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_set_geometry(ptr nocapture noundef writeonly %md, ptr nocapture noundef readonly %geo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %cylinders = getelementptr inbounds %struct.hd_geometry, ptr %geo, i32 0, i32 2
  %0 = ptrtoint ptr %cylinders to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cylinders, align 2
  %conv = zext i16 %1 to i64
  %2 = ptrtoint ptr %geo to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %geo, align 4
  %conv1 = zext i8 %3 to i64
  %mul = mul nuw nsw i64 %conv1, %conv
  %sectors = getelementptr inbounds %struct.hd_geometry, ptr %geo, i32 0, i32 1
  %4 = ptrtoint ptr %sectors to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sectors, align 1
  %conv2 = zext i8 %5 to i64
  %mul3 = mul nuw nsw i64 %mul, %conv2
  %start = getelementptr inbounds %struct.hd_geometry, ptr %geo, i32 0, i32 3
  %6 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %start, align 4
  %conv4 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %mul3, i64 %conv4)
  %cmp = icmp ult i64 %mul3, %conv4
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #25
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %geometry = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 30
  %8 = ptrtoint ptr %geo to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %geo, align 4
  %10 = ptrtoint ptr %geometry to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %geometry, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_io_dec_pending(ptr noundef %io, i8 noundef zeroext %error) local_unnamed_addr #0 align 64 {
entry:
  %stats_aux = alloca %struct.dm_stats_aux, align 8
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %md1 = getelementptr inbounds %struct.dm_io, ptr %io, i32 0, i32 1
  %0 = ptrtoint ptr %md1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %md1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %stats_aux) #21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %error)
  %tobool.not = icmp eq i8 %error, 0
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %do.body4, !prof !314

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end16

do.body4:                                         ; preds = %entry
  %endio_lock = getelementptr inbounds %struct.dm_io, ptr %io, i32 0, i32 6
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %endio_lock) #21
  %status = getelementptr inbounds %struct.dm_io, ptr %io, i32 0, i32 2
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %3)
  %cmp9 = icmp eq i8 %3, 11
  br i1 %cmp9, label %land.lhs.true, label %do.body4.if.then13_crit_edge

do.body4.if.then13_crit_edge:                     ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then13

land.lhs.true:                                    ; preds = %do.body4
  %flags.i = getelementptr inbounds %struct.mapped_device, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i, align 4
  %6 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool12.not = icmp eq i32 %6, 0
  br i1 %tobool12.not, label %land.lhs.true.if.then13_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

land.lhs.true.if.then13_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then13

if.then13:                                        ; preds = %land.lhs.true.if.then13_crit_edge, %do.body4.if.then13_crit_edge
  %7 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %error, ptr %status, align 8
  br label %if.end

if.end:                                           ; preds = %if.then13, %land.lhs.true.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %endio_lock, i32 noundef %call5) #21
  br label %if.end16

if.end16:                                         ; preds = %if.end, %entry.if.end16_crit_edge
  %io_count = getelementptr inbounds %struct.dm_io, ptr %io, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_count, i32 noundef 4) #21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #21, !srcloc !320
  tail call void @llvm.prefetch.p0(ptr %io_count, i32 1, i32 3, i32 1) #21
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io_count, ptr %io_count, i32 1, ptr elementtype(i32) %io_count) #21, !srcloc !321
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #21, !srcloc !322
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then18, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.then18:                                        ; preds = %if.end16
  %orig_bio = getelementptr inbounds %struct.dm_io, ptr %io, i32 0, i32 4
  %9 = ptrtoint ptr %orig_bio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %orig_bio, align 8
  %status19 = getelementptr inbounds %struct.dm_io, ptr %io, i32 0, i32 2
  %11 = ptrtoint ptr %status19 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %status19, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %12)
  %cmp21 = icmp eq i8 %12, 11
  br i1 %cmp21, label %do.body25, label %if.then18.if.end95_crit_edge

if.then18.if.end95_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end95

do.body25:                                        ; preds = %if.then18
  %deferred_lock = getelementptr inbounds %struct.mapped_device, ptr %1, i32 0, i32 18
  %call32 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %deferred_lock) #21
  %flags.i160 = getelementptr inbounds %struct.mapped_device, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %flags.i160 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags.i160, align 4
  %15 = and i32 %14, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool38.not = icmp eq i32 %15, 0
  br i1 %tobool38.not, label %do.body25.if.else_crit_edge, label %land.lhs.true39

do.body25.if.else_crit_edge:                      ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else

land.lhs.true39:                                  ; preds = %do.body25
  %call40 = tail call zeroext i1 @dm_is_zone_write(ptr noundef %1, ptr noundef %10) #21
  br i1 %call40, label %land.rhs, label %if.then91.critedge

land.rhs:                                         ; preds = %land.lhs.true39
  %.b158 = load i1, ptr @dm_io_dec_pending.__already_done, align 1
  br i1 %.b158, label %land.rhs.if.else_crit_edge, label %if.then56, !prof !314

land.rhs.if.else_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else

if.then56:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #23
  store i1 true, ptr @dm_io_dec_pending.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 811, i32 noundef 9, ptr noundef null) #21
  br label %if.else

if.then91.critedge:                               ; preds = %land.lhs.true39
  %deferred = getelementptr inbounds %struct.mapped_device, ptr %1, i32 0, i32 19
  %16 = ptrtoint ptr %deferred to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %deferred, align 4
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %10, align 8
  store ptr %10, ptr %deferred, align 4
  %tail.i = getelementptr inbounds %struct.mapped_device, ptr %1, i32 0, i32 19, i32 1
  %19 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tail.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.then.i, label %if.then91.critedge.if.end93_crit_edge

if.then91.critedge.if.end93_crit_edge:            ; preds = %if.then91.critedge
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end93

if.then.i:                                        ; preds = %if.then91.critedge
  call void @__sanitizer_cov_trace_pc() #23
  %21 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %10, ptr %tail.i, align 4
  br label %if.end93

if.else:                                          ; preds = %if.then56, %land.rhs.if.else_crit_edge, %do.body25.if.else_crit_edge
  %22 = ptrtoint ptr %status19 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 10, ptr %status19, align 8
  br label %if.end93

if.end93:                                         ; preds = %if.else, %if.then.i, %if.then91.critedge.if.end93_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %deferred_lock, i32 noundef %call32) #21
  %23 = ptrtoint ptr %status19 to i32
  call void @__asan_load1_noabort(i32 %23)
  %.pr = load i8, ptr %status19, align 8
  br label %if.end95

if.end95:                                         ; preds = %if.end93, %if.then18.if.end95_crit_edge
  %24 = phi i8 [ %.pr, %if.end93 ], [ %12, %if.then18.if.end95_crit_edge ]
  %start_time97 = getelementptr inbounds %struct.dm_io, ptr %io, i32 0, i32 5
  %25 = ptrtoint ptr %start_time97 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %start_time97, align 4
  %stats_aux98 = getelementptr inbounds %struct.dm_io, ptr %io, i32 0, i32 7
  %27 = call ptr @memcpy(ptr %stats_aux, ptr %stats_aux98, i32 16)
  %clone.i = getelementptr inbounds %struct.dm_io, ptr %io, i32 0, i32 8, i32 6
  tail call void @bio_put(ptr noundef %clone.i) #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %bi_bdev.i.i = getelementptr inbounds %struct.bio, ptr %10, i32 0, i32 1
  %29 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bi_bdev.i.i, align 4
  tail call void @bio_end_io_acct_remapped(ptr noundef %10, i32 noundef %26, ptr noundef %30) #21
  %list.i.i = getelementptr inbounds %struct.mapped_device, ptr %1, i32 0, i32 35, i32 1
  %31 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %list.i.i, align 4
  %cmp.i.i.not.i = icmp eq ptr %32, %list.i.i
  br i1 %cmp.i.i.not.i, label %if.end95.if.end.i_crit_edge, label %if.then.i163, !prof !314

if.end95.if.end.i_crit_edge:                      ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end.i

if.then.i163:                                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #23
  %stats.i = getelementptr inbounds %struct.mapped_device, ptr %1, i32 0, i32 35
  %sub.i = sub i32 %28, %26
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %10, i32 0, i32 2
  %33 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bi_opf.i, align 8
  %and.i.i = and i32 %34, 1
  %bi_iter.i = getelementptr inbounds %struct.bio, ptr %10, i32 0, i32 8
  %35 = ptrtoint ptr %bi_iter.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %bi_iter.i, align 8
  %bi_size.i = getelementptr inbounds %struct.bio, ptr %10, i32 0, i32 8, i32 1
  %37 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bi_size.i, align 8
  %shr.i = lshr i32 %38, 9
  call void @dm_stats_account_io(ptr noundef %stats.i, i32 noundef %and.i.i, i64 noundef %36, i32 noundef %shr.i, i1 noundef zeroext true, i32 noundef %sub.i, ptr noundef nonnull %stats_aux) #21
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i163, %if.end95.if.end.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #21, !srcloc !323
  %head.i.i.i = getelementptr inbounds %struct.mapped_device, ptr %1, i32 0, i32 17, i32 1
  %39 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %head.i.i.i, align 4
  %cmp.i.i.i.not.i = icmp eq ptr %40, %head.i.i.i
  br i1 %cmp.i.i.i.not.i, label %if.end.i.end_io_acct.exit_crit_edge, label %if.then12.i, !prof !314

if.end.i.end_io_acct.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %end_io_acct.exit

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  %wait.i = getelementptr inbounds %struct.mapped_device, ptr %1, i32 0, i32 17
  call void @__wake_up(ptr noundef %wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #21
  br label %end_io_acct.exit

end_io_acct.exit:                                 ; preds = %if.then12.i, %if.end.i.end_io_acct.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %24)
  %cmp100 = icmp eq i8 %24, 11
  br i1 %cmp100, label %end_io_acct.exit.cleanup_crit_edge, label %if.end103

end_io_acct.exit.cleanup_crit_edge:               ; preds = %end_io_acct.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end103:                                        ; preds = %end_io_acct.exit
  %bi_opf = getelementptr inbounds %struct.bio, ptr %10, i32 0, i32 2
  %41 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bi_opf, align 8
  %43 = and i32 %42, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool105.not = icmp eq i32 %43, 0
  br i1 %tobool105.not, label %if.end103.if.else113_crit_edge, label %land.lhs.true106

if.end103.if.else113_crit_edge:                   ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else113

land.lhs.true106:                                 ; preds = %if.end103
  %bi_size = getelementptr inbounds %struct.bio, ptr %10, i32 0, i32 8, i32 1
  %44 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bi_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool107.not = icmp eq i32 %45, 0
  br i1 %tobool107.not, label %land.lhs.true106.if.else113_crit_edge, label %if.then108

land.lhs.true106.if.else113_crit_edge:            ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else113

if.then108:                                       ; preds = %land.lhs.true106
  %and111 = and i32 %42, -262145
  %46 = ptrtoint ptr %bi_opf to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %and111, ptr %bi_opf, align 8
  %deferred_lock.i = getelementptr inbounds %struct.mapped_device, ptr %1, i32 0, i32 18
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %deferred_lock.i) #21
  %47 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %10, align 8
  %tail.i.i = getelementptr inbounds %struct.mapped_device, ptr %1, i32 0, i32 19, i32 1
  %48 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tail.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %49, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #23
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %10, ptr %49, align 8
  br label %queue_io.exit

if.else.i.i:                                      ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #23
  %deferred.i = getelementptr inbounds %struct.mapped_device, ptr %1, i32 0, i32 19
  %51 = ptrtoint ptr %deferred.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %10, ptr %deferred.i, align 4
  br label %queue_io.exit

queue_io.exit:                                    ; preds = %if.else.i.i, %if.then.i.i
  %52 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %10, ptr %tail.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %deferred_lock.i, i32 noundef %call2.i) #21
  %wq.i = getelementptr inbounds %struct.mapped_device, ptr %1, i32 0, i32 29
  %53 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %wq.i, align 4
  %work.i = getelementptr inbounds %struct.mapped_device, ptr %1, i32 0, i32 16
  %call.i.i164 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %54, ptr noundef %work.i) #21
  br label %cleanup

if.else113:                                       ; preds = %land.lhs.true106.if.else113_crit_edge, %if.end103.if.else113_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool114.not = icmp eq i8 %24, 0
  br i1 %tobool114.not, label %if.else113.if.end116_crit_edge, label %if.then115

if.else113.if.end116_crit_edge:                   ; preds = %if.else113
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end116

if.then115:                                       ; preds = %if.else113
  call void @__sanitizer_cov_trace_pc() #23
  %bi_status = getelementptr inbounds %struct.bio, ptr %10, i32 0, i32 6
  %55 = ptrtoint ptr %bi_status to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %24, ptr %bi_status, align 2
  br label %if.end116

if.end116:                                        ; preds = %if.then115, %if.else113.if.end116_crit_edge
  call void @bio_endio(ptr noundef %10) #21
  br label %cleanup

cleanup:                                          ; preds = %if.end116, %queue_io.exit, %end_io_acct.exit.cleanup_crit_edge, %if.end16.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %stats_aux) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dm_is_zone_write(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @queue_io(ptr noundef %md, ptr noundef %bio) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %deferred_lock = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 18
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %deferred_lock) #21
  %0 = ptrtoint ptr %bio to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %bio, align 8
  %tail.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 19, i32 1
  %1 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tail.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %bio, ptr %2, align 8
  br label %bio_list_add.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %deferred = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 19
  %4 = ptrtoint ptr %deferred to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %bio, ptr %deferred, align 4
  br label %bio_list_add.exit

bio_list_add.exit:                                ; preds = %if.else.i, %if.then.i
  %5 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %bio, ptr %tail.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %deferred_lock, i32 noundef %call2) #21
  %wq = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 29
  %6 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wq, align 4
  %work = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 16
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %work) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_endio(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @disable_discard(ptr noundef %md) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %holders.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %holders.i, i32 noundef 4) #21
  %0 = ptrtoint ptr %holders.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %holders.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %do.body4.i, label %dm_get_queue_limits.exit, !prof !316

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1956, 0\0A.popsection", ""() #21, !srcloc !324
  unreachable

dm_get_queue_limits.exit:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %queue.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 8
  %2 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue.i, align 4
  %max_discard_sectors = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 37, i32 13
  %4 = ptrtoint ptr %max_discard_sectors to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %max_discard_sectors, align 4
  %5 = load ptr, ptr %queue.i, align 4
  tail call void @blk_queue_flag_clear(i32 noundef 8, ptr noundef %5) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dm_get_queue_limits(ptr noundef %md) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %holders = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %holders, i32 noundef 4) #21
  %0 = ptrtoint ptr %holders to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %holders, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.body4, label %do.end7, !prof !316

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1956, 0\0A.popsection", ""() #21, !srcloc !324
  unreachable

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %queue = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 8
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue, align 4
  %limits = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 37
  ret ptr %limits
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_clear(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @disable_write_same(ptr noundef %md) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %holders.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %holders.i, i32 noundef 4) #21
  %0 = ptrtoint ptr %holders.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %holders.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %do.body4.i, label %dm_get_queue_limits.exit, !prof !316

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1956, 0\0A.popsection", ""() #21, !srcloc !324
  unreachable

dm_get_queue_limits.exit:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %queue.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 8
  %2 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue.i, align 4
  %max_write_same_sectors = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 37, i32 15
  %4 = ptrtoint ptr %max_write_same_sectors to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %max_write_same_sectors, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @disable_write_zeroes(ptr noundef %md) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %holders.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %holders.i, i32 noundef 4) #21
  %0 = ptrtoint ptr %holders.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %holders.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %do.body4.i, label %dm_get_queue_limits.exit, !prof !316

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1956, 0\0A.popsection", ""() #21, !srcloc !324
  unreachable

dm_get_queue_limits.exit:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %queue.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 8
  %2 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue.i, align 4
  %max_write_zeroes_sectors = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 37, i32 16
  %4 = ptrtoint ptr %max_write_zeroes_sectors to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %max_write_zeroes_sectors, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_set_target_max_io_len(ptr nocapture noundef writeonly %ti, i64 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %len)
  %cmp = icmp ugt i64 %len, 4294967295
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i64 noundef %len, i32 noundef -1) #25
  %error = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %0 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @.str.8, ptr %error, align 8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %conv = trunc i64 %len to i32
  %max_io_len = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 4
  %1 = ptrtoint ptr %max_io_len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %conv, ptr %max_io_len, align 8
  br label %return

return:                                           ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_accept_partial_bio(ptr nocapture noundef %bio, i32 noundef %n_sectors) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_size1 = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %bi_size1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bi_size1, align 8
  %shr = lshr i32 %1, 9
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %2 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bi_opf, align 8
  %4 = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %do.body10, label %do.body4, !prof !314

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1091, 0\0A.popsection", ""() #21, !srcloc !325
  unreachable

do.body10:                                        ; preds = %entry
  %trunc.i = trunc i32 %3 to i8
  %5 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.79)
  switch i8 %trunc.i, label %do.body29 [
    i8 15, label %do.body10.do.body20_crit_edge
    i8 10, label %do.body10.do.body20_crit_edge102
    i8 11, label %do.body10.do.body20_crit_edge103
    i8 12, label %do.body10.do.body20_crit_edge104
  ]

do.body10.do.body20_crit_edge104:                 ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body20

do.body10.do.body20_crit_edge103:                 ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body20

do.body10.do.body20_crit_edge102:                 ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body20

do.body10.do.body20_crit_edge:                    ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body20

do.body20:                                        ; preds = %do.body10.do.body20_crit_edge, %do.body10.do.body20_crit_edge102, %do.body10.do.body20_crit_edge103, %do.body10.do.body20_crit_edge104
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1092, 0\0A.popsection", ""() #21, !srcloc !326
  unreachable

do.body29:                                        ; preds = %do.body10
  %and12 = and i32 %3, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %and12)
  %cmp = icmp eq i32 %and12, 13
  br i1 %cmp, label %do.body40, label %do.body49, !prof !316

do.body40:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #23
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1093, 0\0A.popsection", ""() #21, !srcloc !327
  unreachable

do.body49:                                        ; preds = %do.body29
  %len_ptr = getelementptr i8, ptr %bio, i32 -8
  %6 = ptrtoint ptr %len_ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %len_ptr, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %9)
  %cmp50 = icmp ugt i32 %shr, %9
  br i1 %cmp50, label %do.body59, label %do.body68, !prof !316

do.body59:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #23
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1094, 0\0A.popsection", ""() #21, !srcloc !328
  unreachable

do.body68:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %n_sectors)
  %cmp69 = icmp ult i32 %shr, %n_sectors
  br i1 %cmp69, label %do.body78, label %do.end86, !prof !316

do.body78:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #23
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1095, 0\0A.popsection", ""() #21, !srcloc !329
  unreachable

do.end86:                                         ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #23
  %sub.neg = sub i32 %n_sectors, %shr
  %sub88 = add i32 %sub.neg, %9
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub88, ptr %7, align 4
  %shl = shl i32 %n_sectors, 9
  %11 = ptrtoint ptr %bi_size1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shl, ptr %bi_size1, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_create(i32 noundef %minor, ptr nocapture noundef writeonly %result) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile i32, ptr @dm_numa_node, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %0)
  %cmp.i.i.i = icmp slt i32 %0, -1
  br i1 %cmp.i.i.i, label %entry.if.then5.i.i.i_crit_edge, label %if.end4.i.i.i

entry.if.then5.i.i.i_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then5.i.i.i

if.end4.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp1.i.i.i = icmp sgt i32 %0, 0
  br i1 %cmp1.i.i.i, label %if.end4.i.i.i.if.then5.i.i.i_crit_edge, label %if.end4.i.i.i.dm_get_numa_node.exit.i_crit_edge

if.end4.i.i.i.dm_get_numa_node.exit.i_crit_edge:  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %dm_get_numa_node.exit.i

if.end4.i.i.i.if.then5.i.i.i_crit_edge:           ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then5.i.i.i

if.then5.i.i.i:                                   ; preds = %if.end4.i.i.i.if.then5.i.i.i_crit_edge, %entry.if.then5.i.i.i_crit_edge
  %modified_param.03.i.i.i = phi i32 [ 0, %if.end4.i.i.i.if.then5.i.i.i_crit_edge ], [ -1, %entry.if.then5.i.i.i_crit_edge ]
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @dm_numa_node, i32 noundef 4) #21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #21, !srcloc !330
  tail call void @llvm.prefetch.p0(ptr nonnull @dm_numa_node, i32 1, i32 3, i32 1) #21
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.then5.i.i.i
  %1 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr nonnull @dm_numa_node, i32 %0, i32 %modified_param.03.i.i.i) #21, !srcloc !312
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %1, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %__cmpxchg.exit.i.i.i, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body.i.i.i.i

__cmpxchg.exit.i.i.i:                             ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #21, !srcloc !331
  br label %dm_get_numa_node.exit.i

dm_get_numa_node.exit.i:                          ; preds = %__cmpxchg.exit.i.i.i, %if.end4.i.i.i.dm_get_numa_node.exit.i_crit_edge
  %param.0.i.i.i = phi i32 [ %modified_param.03.i.i.i, %__cmpxchg.exit.i.i.i ], [ %0, %if.end4.i.i.i.dm_get_numa_node.exit.i_crit_edge ]
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 3184, i32 noundef 3520, i32 noundef %param.0.i.i.i) #26
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %dm_get_numa_node.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #25
  br label %cleanup

if.end.i:                                         ; preds = %dm_get_numa_node.exit.i
  %call3.i = tail call zeroext i1 @try_module_get(ptr noundef null) #21
  br i1 %call3.i, label %if.end5.i, label %if.end.i.bad_module_get.i_crit_edge

if.end.i.bad_module_get.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %bad_module_get.i

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %minor)
  %cmp.i = icmp eq i32 %minor, -1
  br i1 %cmp.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %if.end5.i
  tail call void @idr_preload(i32 noundef 3264) #21
  tail call void @_raw_spin_lock(ptr noundef nonnull @_minor_lock) #21
  %call.i165.i = tail call i32 @idr_alloc(ptr noundef nonnull @_minor_idr, ptr noundef nonnull inttoptr (i32 -1 to ptr), i32 noundef 0, i32 noundef 1048576, i32 noundef 2048) #21
  tail call void @_raw_spin_unlock(ptr noundef nonnull @_minor_lock) #21
  %2 = tail call i32 @llvm.read_register.i32(metadata !297) #21
  %and.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %7, ptrtoint (ptr @radix_tree_preloads to i32)
  %8 = inttoptr i32 %add.i.i.i to ptr
  tail call fastcc void @local_lock_release(ptr noundef %8) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !332
  %9 = tail call i32 @llvm.read_register.i32(metadata !297) #21
  %and.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i165.i)
  %cmp.i.i = icmp slt i32 %call.i165.i, 0
  br i1 %cmp.i.i, label %if.then6.i.bad_minor.i_crit_edge, label %if.then6.i.if.end12.i_crit_edge

if.then6.i.if.end12.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end12.i

if.then6.i.bad_minor.i_crit_edge:                 ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %bad_minor.i

if.else.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048575, i32 %minor)
  %cmp.i166.i = icmp sgt i32 %minor, 1048575
  br i1 %cmp.i166.i, label %if.else.i.bad_minor.i_crit_edge, label %if.end.i175.i

if.else.i.bad_minor.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %bad_minor.i

if.end.i175.i:                                    ; preds = %if.else.i
  tail call void @idr_preload(i32 noundef 3264) #21
  tail call void @_raw_spin_lock(ptr noundef nonnull @_minor_lock) #21
  %add.i.i = add nsw i32 %minor, 1
  %call.i167.i = tail call i32 @idr_alloc(ptr noundef nonnull @_minor_idr, ptr noundef nonnull inttoptr (i32 -1 to ptr), i32 noundef %minor, i32 noundef %add.i.i, i32 noundef 2048) #21
  tail call void @_raw_spin_unlock(ptr noundef nonnull @_minor_lock) #21
  %13 = tail call i32 @llvm.read_register.i32(metadata !297) #21
  %and.i.i.i168.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i168.i to ptr
  %cpu.i.i169.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu.i.i169.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu.i.i169.i, align 4
  %arrayidx.i.i170.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx.i.i170.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i170.i, align 4
  %add.i.i171.i = add i32 %18, ptrtoint (ptr @radix_tree_preloads to i32)
  %19 = inttoptr i32 %add.i.i171.i to ptr
  tail call fastcc void @local_lock_release(ptr noundef %19) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !332
  %20 = tail call i32 @llvm.read_register.i32(metadata !297) #21
  %and.i.i.i.i.i172.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i172.i to ptr
  %preempt_count.i.i.i.i173.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i173.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i173.i, align 4
  %sub.i.i.i174.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i174.i, ptr %preempt_count.i.i.i.i173.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i167.i)
  %cmp1.i.i = icmp slt i32 %call.i167.i, 0
  br i1 %cmp1.i.i, label %if.end.i175.i.bad_minor.i_crit_edge, label %if.end.i175.i.if.end12.i_crit_edge

if.end.i175.i.if.end12.i_crit_edge:               ; preds = %if.end.i175.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end12.i

if.end.i175.i.bad_minor.i_crit_edge:              ; preds = %if.end.i175.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %bad_minor.i

if.end12.i:                                       ; preds = %if.end.i175.i.if.end12.i_crit_edge, %if.then6.i.if.end12.i_crit_edge
  %minor.addr.1.i = phi i32 [ %minor, %if.end.i175.i.if.end12.i_crit_edge ], [ %call.i165.i, %if.then6.i.if.end12.i_crit_edge ]
  %io_barrier.i = getelementptr inbounds %struct.mapped_device, ptr %call.i.i, i32 0, i32 38
  %call14.i = tail call i32 @__init_srcu_struct(ptr noundef %io_barrier.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @alloc_dev.__srcu_key) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp slt i32 %call14.i, 0
  br i1 %cmp15.i, label %if.end12.i.bad_io_barrier.i_crit_edge, label %if.end17.i

if.end12.i.bad_io_barrier.i_crit_edge:            ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %bad_io_barrier.i

if.end17.i:                                       ; preds = %if.end12.i
  %numa_node_id18.i = getelementptr inbounds %struct.mapped_device, ptr %call.i.i, i32 0, i32 7
  %24 = ptrtoint ptr %numa_node_id18.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %param.0.i.i.i, ptr %numa_node_id18.i, align 8
  %init_tio_pdu.i = getelementptr inbounds %struct.mapped_device, ptr %call.i.i, i32 0, i32 37
  %25 = ptrtoint ptr %init_tio_pdu.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load.i = load i8, ptr %init_tio_pdu.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %init_tio_pdu.i, align 4
  %type.i = getelementptr inbounds %struct.mapped_device, ptr %call.i.i, i32 0, i32 6
  %26 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %type.i, align 4
  tail call void @__mutex_init(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @alloc_dev.__key) #21
  %type_lock.i = getelementptr inbounds %struct.mapped_device, ptr %call.i.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %type_lock.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @alloc_dev.__key.28) #21
  %table_devices_lock.i = getelementptr inbounds %struct.mapped_device, ptr %call.i.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %table_devices_lock.i, ptr noundef nonnull @.str.31, ptr noundef nonnull @alloc_dev.__key.30) #21
  %deferred_lock.i = getelementptr inbounds %struct.mapped_device, ptr %call.i.i, i32 0, i32 18
  tail call void @__raw_spin_lock_init(ptr noundef %deferred_lock.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @alloc_dev.__key.32, i16 noundef signext 3) #21
  %holders.i = getelementptr inbounds %struct.mapped_device, ptr %call.i.i, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %holders.i, i32 noundef 4) #21
  %27 = ptrtoint ptr %holders.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 1, ptr %holders.i, align 4
  %open_count.i = getelementptr inbounds %struct.mapped_device, ptr %call.i.i, i32 0, i32 10
  %call.i.i162.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %open_count.i, i32 noundef 4) #21
  %28 = ptrtoint ptr %open_count.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 0, ptr %open_count.i, align 4
  %event_nr.i = getelementptr inbounds %struct.mapped_device, ptr %call.i.i, i32 0, i32 22
  %call.i.i163.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event_nr.i, i32 noundef 4) #21
  %29 = ptrtoint ptr %event_nr.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile i32 0, ptr %event_nr.i, align 4
  %uevent_seq.i = getelementptr inbounds %struct.mapped_device, ptr %call.i.i, i32 0, i32 23
  %call.i.i164.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %uevent_seq.i, i32 noundef 4) #21
  %30 = ptrtoint ptr %uevent_seq.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 0, ptr %uevent_seq.i, align 4
  %uevent_list.i = getelementptr inbounds %struct.mapped_device, ptr %call.i.i, i32 0, i32 24
  %31 = ptrtoint ptr %uevent_list.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %uevent_list.i, ptr %uevent_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.mapped_device, ptr %call.i.i, i32 0, i32 24, i32 1
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %uevent_list.i, ptr %prev.i.i, align 4
  %table_devices.i = getelementptr inbounds %struct.mapped_device, ptr %call.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %table_devices.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %table_devices.i, ptr %table_devices.i, align 4
  %prev.i177.i = getelementptr inbounds %struct.mapped_device, ptr %call.i.i, i32 0, i32 2, i32 1
  %34 = ptrtoint ptr %prev.i177.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %table_devices.i, ptr %prev.i177.i, align 4
  %uevent_lock.i = getelementptr inbounds %struct.mapped_device, ptr %call.i.i, i32 0, i32 25
  tail call void @__raw_spin_lock_init(ptr noundef %uevent_lock.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @alloc_dev.__key.34, i16 noundef signext 3) #21
  %35 = ptrtoint ptr %numa_node_id18.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %numa_node_id18.i, align 8
  %call38.i = tail call ptr @__blk_alloc_disk(i32 noundef %36, ptr noundef nonnull @alloc_dev.__key.36) #21
  %disk.i = getelementptr inbounds %struct.mapped_device, ptr %call.i.i, i32 0, i32 14
  %37 = ptrtoint ptr %disk.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call38.i, ptr %disk.i, align 8
  %tobool40.not.i = icmp eq ptr %call38.i, null
  br i1 %tobool40.not.i, label %if.end17.i.bad.i_crit_edge, label %if.end42.i

if.end17.i.bad.i_crit_edge:                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %bad.i

if.end42.i:                                       ; preds = %if.end17.i
  %queue.i = getelementptr inbounds %struct.gendisk, ptr %call38.i, i32 0, i32 9
  %38 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %queue.i, align 4
  %queue44.i = getelementptr inbounds %struct.mapped_device, ptr %call.i.i, i32 0, i32 8
  %40 = ptrtoint ptr %queue44.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %queue44.i, align 4
  %wait.i = getelementptr inbounds %struct.mapped_device, ptr %call.i.i, i32 0, i32 17
  tail call void @__init_waitqueue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @alloc_dev.__key.37) #21
  %work.i = getelementptr inbounds %struct.mapped_device, ptr %call.i.i, i32 0, i32 16
  tail call void @__init_work(ptr noundef %work.i, i32 noundef 0) #21
  %41 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -64, ptr %work.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.mapped_device, ptr %call.i.i, i32 0, i32 16, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.40, ptr noundef nonnull @alloc_dev.__key.39, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #21
  %entry52.i = getelementptr inbounds %struct.mapped_device, ptr %call.i.i, i32 0, i32 16, i32 1
  %42 = ptrtoint ptr %entry52.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %entry52.i, ptr %entry52.i, align 4
  %prev.i178.i = getelementptr inbounds %struct.mapped_device, ptr %call.i.i, i32 0, i32 16, i32 1, i32 1
  %43 = ptrtoint ptr %prev.i178.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %entry52.i, ptr %prev.i178.i, align 4
  %func.i = getelementptr inbounds %struct.mapped_device, ptr %call.i.i, i32 0, i32 16, i32 2
  %44 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @dm_wq_work, ptr %func.i, align 4
  %eventq.i = getelementptr inbounds %struct.mapped_device, ptr %call.i.i, i32 0, i32 21
  tail call void @__init_waitqueue_head(ptr noundef %eventq.i, ptr noundef nonnull @.str.42, ptr noundef nonnull @alloc_dev.__key.41) #21
  %completion.i = getelementptr inbounds %struct.mapped_device, ptr %call.i.i, i32 0, i32 31, i32 1
  %45 = ptrtoint ptr %completion.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %completion.i, align 4
  %wait.i.i = getelementptr inbounds %struct.mapped_device, ptr %call.i.i, i32 0, i32 31, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.50, ptr noundef nonnull @init_completion.__key) #21
  %46 = load volatile i32, ptr @swap_bios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp.i179.i = icmp slt i32 %46, 1
  br i1 %cmp.i179.i, label %if.then.i.i, label %if.end42.i.get_swap_bios.exit.i_crit_edge, !prof !316

if.end42.i.get_swap_bios.exit.i_crit_edge:        ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %get_swap_bios.exit.i

if.then.i.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %get_swap_bios.exit.i

get_swap_bios.exit.i:                             ; preds = %if.then.i.i, %if.end42.i.get_swap_bios.exit.i_crit_edge
  %latch.0.i.i = phi i32 [ 2048, %if.then.i.i ], [ %46, %if.end42.i.get_swap_bios.exit.i_crit_edge ]
  %swap_bios.i = getelementptr inbounds %struct.mapped_device, ptr %call.i.i, i32 0, i32 32
  %47 = ptrtoint ptr %swap_bios.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %latch.0.i.i, ptr %swap_bios.i, align 8
  %swap_bios_semaphore.i = getelementptr inbounds %struct.mapped_device, ptr %call.i.i, i32 0, i32 33
  %wait_list1.i.i = getelementptr inbounds %struct.mapped_device, ptr %call.i.i, i32 0, i32 33, i32 2
  %48 = ptrtoint ptr %swap_bios_semaphore.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %swap_bios_semaphore.i, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i.i = getelementptr inbounds %struct.mapped_device, ptr %call.i.i, i32 0, i32 33, i32 0, i32 1
  %49 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -559067475, ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i.i = getelementptr inbounds %struct.mapped_device, ptr %call.i.i, i32 0, i32 33, i32 0, i32 2
  %50 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i.i = getelementptr inbounds %struct.mapped_device, ptr %call.i.i, i32 0, i32 33, i32 0, i32 3
  %51 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 -1 to ptr), ptr %.compoundliteral.sroa.4.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.5.0..sroa_idx.i.i = getelementptr inbounds %struct.mapped_device, ptr %call.i.i, i32 0, i32 33, i32 0, i32 4
  %52 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i.i, i32 0, i32 12)
  %.compoundliteral.sroa.6.0..sroa_idx.i.i = getelementptr inbounds %struct.mapped_device, ptr %call.i.i, i32 0, i32 33, i32 0, i32 4, i32 2
  %53 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @.str.51, ptr %.compoundliteral.sroa.6.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.7.0..sroa_idx.i.i = getelementptr inbounds %struct.mapped_device, ptr %call.i.i, i32 0, i32 33, i32 0, i32 4, i32 3
  %54 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %.compoundliteral.sroa.7.0..sroa_idx.i.i, align 4
  %.compoundliteral.sroa.75.0..sroa_idx.i.i = getelementptr inbounds %struct.mapped_device, ptr %call.i.i, i32 0, i32 33, i32 0, i32 4, i32 4
  %55 = ptrtoint ptr %.compoundliteral.sroa.75.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 2, ptr %.compoundliteral.sroa.75.0..sroa_idx.i.i, align 1
  %.compoundliteral.sroa.8.0..sroa_idx.i.i = getelementptr inbounds %struct.mapped_device, ptr %call.i.i, i32 0, i32 33, i32 0, i32 4, i32 5
  %56 = call ptr @memset(ptr %.compoundliteral.sroa.8.0..sroa_idx.i.i, i32 0, i32 10)
  %.compoundliteral.sroa.86.0..sroa_idx.i.i = getelementptr inbounds %struct.mapped_device, ptr %call.i.i, i32 0, i32 33, i32 1
  %57 = ptrtoint ptr %.compoundliteral.sroa.86.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %latch.0.i.i, ptr %.compoundliteral.sroa.86.0..sroa_idx.i.i, align 4
  %58 = ptrtoint ptr %wait_list1.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %wait_list1.i.i, ptr %wait_list1.i.i, align 4
  %.compoundliteral.sroa.10.0..sroa_idx.i.i = getelementptr inbounds %struct.mapped_device, ptr %call.i.i, i32 0, i32 33, i32 2, i32 1
  %59 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %wait_list1.i.i, ptr %.compoundliteral.sroa.10.0..sroa_idx.i.i, align 4
  tail call void @lockdep_init_map_type(ptr noundef %.compoundliteral.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull @.str.52, ptr noundef nonnull @sema_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #21
  %swap_bios_lock.i = getelementptr inbounds %struct.mapped_device, ptr %call.i.i, i32 0, i32 34
  tail call void @__mutex_init(ptr noundef %swap_bios_lock.i, ptr noundef nonnull @.str.44, ptr noundef nonnull @alloc_dev.__key.43) #21
  %60 = load i32, ptr @_major, align 4
  %61 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %disk.i, align 8
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %60, ptr %62, align 8
  %64 = load ptr, ptr %disk.i, align 8
  %first_minor.i = getelementptr inbounds %struct.gendisk, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %first_minor.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %minor.addr.1.i, ptr %first_minor.i, align 4
  %66 = load ptr, ptr %disk.i, align 8
  %minors.i = getelementptr inbounds %struct.gendisk, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %minors.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %minors.i, align 8
  %68 = load ptr, ptr %disk.i, align 8
  %flags.i = getelementptr inbounds %struct.gendisk, ptr %68, i32 0, i32 11
  %69 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %70, 4
  store i32 %or.i, ptr %flags.i, align 4
  %71 = load ptr, ptr %disk.i, align 8
  %fops.i = getelementptr inbounds %struct.gendisk, ptr %71, i32 0, i32 8
  %72 = ptrtoint ptr %fops.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @dm_blk_dops, ptr %fops.i, align 8
  %73 = ptrtoint ptr %queue44.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %queue44.i, align 4
  %75 = load ptr, ptr %disk.i, align 8
  %queue71.i = getelementptr inbounds %struct.gendisk, ptr %75, i32 0, i32 9
  %76 = ptrtoint ptr %queue71.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %74, ptr %queue71.i, align 4
  %77 = load ptr, ptr %disk.i, align 8
  %private_data.i = getelementptr inbounds %struct.gendisk, ptr %77, i32 0, i32 10
  %78 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call.i.i, ptr %private_data.i, align 8
  %79 = load ptr, ptr %disk.i, align 8
  %disk_name.i = getelementptr inbounds %struct.gendisk, ptr %79, i32 0, i32 3
  %call74.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %disk_name.i, ptr noundef nonnull @.str.45, i32 noundef %minor.addr.1.i) #21
  %name.i = getelementptr inbounds %struct.mapped_device, ptr %call.i.i, i32 0, i32 13
  %80 = load i32, ptr @_major, align 4
  %shl.i = shl i32 %80, 20
  %or76.i = or i32 %shl.i, %minor.addr.1.i
  %shr.i = lshr i32 %or76.i, 20
  %and.i = and i32 %minor.addr.1.i, 1048575
  %call79.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name.i, ptr noundef nonnull @.str.3, i32 noundef %shr.i, i32 noundef %and.i) #21
  %call85.i = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.46, i32 noundef 8, i32 noundef 0, ptr noundef %name.i) #21
  %wq.i = getelementptr inbounds %struct.mapped_device, ptr %call.i.i, i32 0, i32 29
  %81 = ptrtoint ptr %wq.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call85.i, ptr %wq.i, align 4
  %tobool87.not.i = icmp eq ptr %call85.i, null
  br i1 %tobool87.not.i, label %get_swap_bios.exit.i.bad.i_crit_edge, label %if.end89.i

get_swap_bios.exit.i.bad.i_crit_edge:             ; preds = %get_swap_bios.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %bad.i

if.end89.i:                                       ; preds = %get_swap_bios.exit.i
  %stats.i = getelementptr inbounds %struct.mapped_device, ptr %call.i.i, i32 0, i32 35
  tail call void @dm_stats_init(ptr noundef %stats.i) #21
  tail call void @_raw_spin_lock(ptr noundef nonnull @_minor_lock) #21
  %call90.i = tail call ptr @idr_replace(ptr noundef nonnull @_minor_idr, ptr noundef nonnull %call.i.i, i32 noundef %minor.addr.1.i) #21
  tail call void @_raw_spin_unlock(ptr noundef nonnull @_minor_lock) #21
  %cmp92.not.i = icmp eq ptr %call90.i, inttoptr (i32 -1 to ptr)
  br i1 %cmp92.not.i, label %if.end, label %do.body96.i, !prof !314

do.body96.i:                                      ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #23
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1731, 0\0A.popsection", ""() #21, !srcloc !333
  unreachable

bad.i:                                            ; preds = %get_swap_bios.exit.i.bad.i_crit_edge, %if.end17.i.bad.i_crit_edge
  tail call fastcc void @cleanup_mapped_device(ptr noundef nonnull %call.i.i) #21
  br label %bad_io_barrier.i

bad_io_barrier.i:                                 ; preds = %bad.i, %if.end12.i.bad_io_barrier.i_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @_minor_lock) #21
  %call.i181.i = tail call ptr @idr_remove(ptr noundef nonnull @_minor_idr, i32 noundef %minor.addr.1.i) #21
  tail call void @_raw_spin_unlock(ptr noundef nonnull @_minor_lock) #21
  br label %bad_minor.i

bad_minor.i:                                      ; preds = %bad_io_barrier.i, %if.end.i175.i.bad_minor.i_crit_edge, %if.else.i.bad_minor.i_crit_edge, %if.then6.i.bad_minor.i_crit_edge
  tail call void @module_put(ptr noundef null) #21
  br label %bad_module_get.i

bad_module_get.i:                                 ; preds = %bad_minor.i, %if.end.i.bad_module_get.i_crit_edge
  tail call void @kvfree(ptr noundef nonnull %call.i.i) #21
  br label %cleanup

if.end:                                           ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @dm_ima_reset_data(ptr noundef nonnull %call.i.i) #21
  %82 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call.i.i, ptr %result, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %bad_module_get.i, %do.end.i
  %retval.0 = phi i32 [ 0, %if.end ], [ -6, %bad_module_get.i ], [ -6, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_ima_reset_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_lock_md_type(ptr noundef %md) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %type_lock = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %type_lock, i32 noundef 0) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_unlock_md_type(ptr noundef %md) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %type_lock = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 5
  tail call void @mutex_unlock(ptr noundef %type_lock) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_set_md_type(ptr noundef %md, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %type_lock = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 5
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %type_lock) #21
  br i1 %call, label %do.end6, label %do.body3, !prof !314

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1936, 0\0A.popsection", ""() #21, !srcloc !334
  unreachable

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %type7 = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 6
  %0 = ptrtoint ptr %type7 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %type, ptr %type7, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dm_get_md_type(ptr nocapture noundef readonly %md) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 6
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @dm_get_immutable_target_type(ptr nocapture noundef readonly %md) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %immutable_target_type = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 12
  %0 = ptrtoint ptr %immutable_target_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %immutable_target_type, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_setup_md_queue(ptr noundef %md, ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  %limits = alloca %struct.queue_limits, align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dm_table_get_type(ptr noundef %t) #21
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %limits) #21
  %0 = call ptr @memset(ptr %limits, i32 255, i32 100)
  %1 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %call, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 0, label %land.end
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %disk = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 14
  %2 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disk, align 8
  %fops = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @dm_rq_blk_dops, ptr %fops, align 8
  %call1 = tail call i32 @dm_mq_init_request_queue(ptr noundef %md, ptr noundef %t) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %do.end

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #23
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #25
  br label %cleanup

land.end:                                         ; preds = %entry
  %.b91 = load i1, ptr @dm_setup_md_queue.__already_done, align 1
  br i1 %.b91, label %land.end.sw.epilog_crit_edge, label %if.then10, !prof !314

land.end.sw.epilog_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

if.then10:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #23
  store i1 true, ptr @dm_setup_md_queue.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1983, i32 noundef 9, ptr noundef null) #21
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then10, %land.end.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %call44 = call i32 @dm_calculate_queue_limits(ptr noundef %t, ptr noundef nonnull %limits) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end52, label %do.end49

do.end49:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #23
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #25
  br label %cleanup

if.end52:                                         ; preds = %sw.epilog
  %queue = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 8
  %5 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %queue, align 4
  %call53 = call i32 @dm_table_set_restrictions(ptr noundef %t, ptr noundef %6, ptr noundef nonnull %limits) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end56:                                         ; preds = %if.end52
  %disk57 = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 14
  %7 = ptrtoint ptr %disk57 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %disk57, align 8
  %call.i = call i32 @device_add_disk(ptr noundef null, ptr noundef %8, ptr noundef null) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool59.not = icmp eq i32 %call.i, 0
  br i1 %tobool59.not, label %if.end61, label %if.end56.cleanup_crit_edge

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end61:                                         ; preds = %if.end56
  %call62 = call i32 @dm_sysfs_init(ptr noundef %md) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end66, label %if.then64

if.then64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #23
  %9 = ptrtoint ptr %disk57 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %disk57, align 8
  call void @del_gendisk(ptr noundef %10) #21
  br label %cleanup

if.end66:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #23
  %type67 = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 6
  %11 = ptrtoint ptr %type67 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call, ptr %type67, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %if.then64, %if.end56.cleanup_crit_edge, %if.end52.cleanup_crit_edge, %do.end49, %do.end
  %retval.0 = phi i32 [ %call44, %do.end49 ], [ %call62, %if.then64 ], [ 0, %if.end66 ], [ %call1, %do.end ], [ %call53, %if.end52.cleanup_crit_edge ], [ %call.i, %if.end56.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %limits) #21
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_table_get_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_mq_init_request_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_calculate_queue_limits(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_table_set_restrictions(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_sysfs_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @del_gendisk(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dm_get_md(i32 noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %dev, 1048575
  %shr = lshr i32 %dev, 20
  %0 = load i32, ptr @_major, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %0)
  %cmp.not = icmp eq i32 %shr, %0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef nonnull @_minor_lock) #21
  %call = tail call ptr @idr_find(ptr noundef nonnull @_minor_idr, i32 noundef %and) #21
  %magicptr = ptrtoint ptr %call to i32
  %1 = zext i32 %magicptr to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %magicptr, label %lor.lhs.false4 [
    i32 0, label %if.end.out_crit_edge
    i32 -1, label %if.end.out_crit_edge27
  ]

if.end.out_crit_edge27:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %out

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %out

lor.lhs.false4:                                   ; preds = %if.end
  %disk.i = getelementptr inbounds %struct.mapped_device, ptr %call, i32 0, i32 14
  %2 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disk.i, align 8
  %first_minor.i = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %first_minor.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %first_minor.i, align 4
  %and7 = and i32 %5, 1048575
  call void @__sanitizer_cov_trace_cmp4(i32 %and7, i32 %and)
  %cmp8.not = icmp eq i32 %and7, %and
  br i1 %cmp8.not, label %lor.lhs.false9, label %lor.lhs.false4.out_crit_edge

lor.lhs.false4.out_crit_edge:                     ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #23
  br label %out

lor.lhs.false9:                                   ; preds = %lor.lhs.false4
  %flags = getelementptr inbounds %struct.mapped_device, ptr %call, i32 0, i32 4
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool11.not = icmp eq i32 %8, 0
  br i1 %tobool11.not, label %lor.lhs.false12, label %lor.lhs.false9.out_crit_edge

lor.lhs.false9.out_crit_edge:                     ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #23
  br label %out

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags, align 4
  %11 = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool14.not = icmp eq i32 %11, 0
  br i1 %tobool14.not, label %if.end16, label %lor.lhs.false12.out_crit_edge

lor.lhs.false12.out_crit_edge:                    ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #23
  br label %out

if.end16:                                         ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @dm_get(ptr noundef nonnull %call)
  br label %out

out:                                              ; preds = %if.end16, %lor.lhs.false12.out_crit_edge, %lor.lhs.false9.out_crit_edge, %lor.lhs.false4.out_crit_edge, %if.end.out_crit_edge, %if.end.out_crit_edge27
  %md.0 = phi ptr [ %call, %if.end16 ], [ null, %if.end.out_crit_edge ], [ null, %if.end.out_crit_edge27 ], [ null, %lor.lhs.false12.out_crit_edge ], [ null, %lor.lhs.false9.out_crit_edge ], [ null, %lor.lhs.false4.out_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @_minor_lock) #21
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %md.0, %out ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @dm_disk(ptr nocapture noundef readonly %md) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %disk = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 14
  %0 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disk, align 8
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_get(ptr noundef %md) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %holders = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %holders, i32 noundef 4) #21
  tail call void @llvm.prefetch.p0(ptr %holders, i32 1, i32 3, i32 1) #21
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %holders, ptr %holders, i32 1, ptr elementtype(i32) %holders) #21, !srcloc !307
  %flags = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 4
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flags, align 4
  %3 = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.end6, label %do.body3, !prof !314

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2046, 0\0A.popsection", ""() #21, !srcloc !335
  unreachable

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @dm_get_mdptr(ptr nocapture noundef readonly %md) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %interface_ptr = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 20
  %0 = ptrtoint ptr %interface_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interface_ptr, align 4
  ret ptr %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @dm_set_mdptr(ptr nocapture noundef writeonly %md, ptr noundef %ptr) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %interface_ptr = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 20
  %0 = ptrtoint ptr %interface_ptr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ptr, ptr %interface_ptr, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_hold(ptr noundef %md) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @_minor_lock) #21
  %flags = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %return

if.end:                                           ; preds = %entry
  %holders.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %holders.i, i32 noundef 4) #21
  tail call void @llvm.prefetch.p0(ptr %holders.i, i32 1, i32 3, i32 1) #21
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %holders.i, ptr %holders.i, i32 1, ptr elementtype(i32) %holders.i) #21, !srcloc !307
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.end.return_crit_edge, label %do.body3.i, !prof !314

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %return

do.body3.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2046, 0\0A.popsection", ""() #21, !srcloc !335
  unreachable

return:                                           ; preds = %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -16, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @_minor_lock) #21
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @dm_device_name(ptr noundef readnone %md) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 13
  ret ptr %name
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_destroy(ptr noundef %md) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__dm_destroy(ptr noundef %md, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__dm_destroy(ptr noundef %md, i1 noundef zeroext %wait) unnamed_addr #0 align 64 {
entry:
  %srcu_idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %srcu_idx) #21
  %0 = ptrtoint ptr %srcu_idx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %srcu_idx, align 4, !annotation !336
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 2073) #21
  tail call void @_raw_spin_lock(ptr noundef nonnull @_minor_lock) #21
  %disk.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 14
  %1 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %disk.i, align 8
  %first_minor.i = getelementptr inbounds %struct.gendisk, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %first_minor.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %first_minor.i, align 4
  %and = and i32 %4, 1048575
  %call5 = tail call ptr @idr_replace(ptr noundef nonnull @_minor_idr, ptr noundef nonnull inttoptr (i32 -1 to ptr), i32 noundef %and) #21
  %flags = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags) #21
  tail call void @_raw_spin_unlock(ptr noundef nonnull @_minor_lock) #21
  %5 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %disk.i, align 8
  tail call void @blk_mark_disk_dead(ptr noundef %6) #21
  tail call void @mutex_lock_nested(ptr noundef %md, i32 noundef 0) #21
  %call6 = call ptr @dm_get_live_table(ptr noundef %md, ptr noundef nonnull %srcu_idx)
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags, align 4
  %9 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @dm_table_presuspend_targets(ptr noundef %call6) #21
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #21
  tail call void @_set_bit(i32 noundef 8, ptr noundef %flags) #21
  tail call void @dm_table_postsuspend_targets(ptr noundef %call6) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %srcu_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %srcu_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %tobool.not.i.i = icmp ult i32 %11, 2
  br i1 %tobool.not.i.i, label %if.end.dm_put_live_table.exit_crit_edge, label %land.rhs.i.i

if.end.dm_put_live_table.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %dm_put_live_table.exit

land.rhs.i.i:                                     ; preds = %if.end
  %.b40.i.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b40.i.i, label %land.rhs.i.i.dm_put_live_table.exit_crit_edge, label %if.then.i.i, !prof !314

land.rhs.i.i.dm_put_live_table.exit_crit_edge:    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %dm_put_live_table.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #23
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 189, i32 noundef 9, ptr noundef null) #21
  br label %dm_put_live_table.exit

dm_put_live_table.exit:                           ; preds = %if.then.i.i, %land.rhs.i.i.dm_put_live_table.exit_crit_edge, %if.end.dm_put_live_table.exit_crit_edge
  %io_barrier.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 38
  %dep_map.i.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 38, i32 16
  tail call fastcc void @rcu_lock_release(ptr noundef %dep_map.i.i) #21
  tail call void @__srcu_read_unlock(ptr noundef %io_barrier.i, i32 noundef %11) #21
  tail call void @mutex_unlock(ptr noundef %md) #21
  %holders = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 9
  %call.i.i50 = tail call zeroext i1 @__kasan_check_read(ptr noundef %holders, i32 noundef 4) #21
  %12 = ptrtoint ptr %holders to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %holders, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool14.not51 = icmp eq i32 %13, 0
  br i1 %wait, label %while.cond.preheader, label %if.else

while.cond.preheader:                             ; preds = %dm_put_live_table.exit
  br i1 %tobool14.not51, label %while.cond.preheader.if.end27_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.if.end27_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end27

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  tail call void @msleep(i32 noundef 1) #21
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %holders, i32 noundef 4) #21
  %14 = ptrtoint ptr %holders to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %holders, align 4
  %tobool14.not = icmp eq i32 %15, 0
  br i1 %tobool14.not, label %while.body.if.end27_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.body

while.body.if.end27_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end27

if.else:                                          ; preds = %dm_put_live_table.exit
  br i1 %tobool14.not51, label %if.else.if.end27_crit_edge, label %do.end21

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end27

do.end21:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #23
  %name.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 13
  %call.i.i46 = tail call zeroext i1 @__kasan_check_read(ptr noundef %holders, i32 noundef 4) #21
  %16 = ptrtoint ptr %holders to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %holders, align 4
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %name.i, i32 noundef %17) #25
  br label %if.end27

if.end27:                                         ; preds = %do.end21, %if.else.if.end27_crit_edge, %while.body.if.end27_crit_edge, %while.cond.preheader.if.end27_crit_edge
  %map1.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 3
  %18 = ptrtoint ptr %map1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %map1.i, align 8
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end27.__unbind.exit_crit_edge, label %if.end.i

if.end27.__unbind.exit_crit_edge:                 ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #23
  br label %__unbind.exit

if.end.i:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @dm_table_event_callback(ptr noundef nonnull %19, ptr noundef null, ptr noundef null) #21
  %20 = ptrtoint ptr %map1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr null, ptr %map1.i, align 8
  tail call void @synchronize_srcu(ptr noundef %io_barrier.i) #21
  tail call void @synchronize_rcu_expedited() #21
  br label %__unbind.exit

__unbind.exit:                                    ; preds = %if.end.i, %if.end27.__unbind.exit_crit_edge
  tail call void @dm_table_destroy(ptr noundef %19) #21
  %21 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %disk.i, align 8
  %first_minor.i.i = getelementptr inbounds %struct.gendisk, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %first_minor.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %first_minor.i.i, align 4
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %flags, align 4
  %27 = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i.i48 = icmp eq i32 %27, 0
  br i1 %tobool.not.i.i48, label %__unbind.exit.unlock_fs.exit.i_crit_edge, label %if.end.i.i

__unbind.exit.unlock_fs.exit.i_crit_edge:         ; preds = %__unbind.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %unlock_fs.exit.i

if.end.i.i:                                       ; preds = %__unbind.exit
  call void @__sanitizer_cov_trace_pc() #23
  %part0.i.i = getelementptr inbounds %struct.gendisk, ptr %22, i32 0, i32 7
  %28 = ptrtoint ptr %part0.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %part0.i.i, align 4
  %call1.i.i = tail call i32 @thaw_bdev(ptr noundef %29) #21
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #21
  br label %unlock_fs.exit.i

unlock_fs.exit.i:                                 ; preds = %if.end.i.i, %__unbind.exit.unlock_fs.exit.i_crit_edge
  tail call fastcc void @cleanup_mapped_device(ptr noundef %md) #21
  %table_devices.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 2
  %30 = ptrtoint ptr %table_devices.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %table_devices.i, align 4
  %cmp.i.not14.i.i = icmp eq ptr %31, %table_devices.i
  br i1 %cmp.i.not14.i.i, label %unlock_fs.exit.i.free_dev.exit_crit_edge, label %unlock_fs.exit.i.for.body.i.i_crit_edge

unlock_fs.exit.i.for.body.i.i_crit_edge:          ; preds = %unlock_fs.exit.i
  br label %for.body.i.i

unlock_fs.exit.i.free_dev.exit_crit_edge:         ; preds = %unlock_fs.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %free_dev.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %unlock_fs.exit.i.for.body.i.i_crit_edge
  %tmp.015.i.i = phi ptr [ %next.0.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %31, %unlock_fs.exit.i.for.body.i.i_crit_edge ]
  %32 = ptrtoint ptr %tmp.015.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %next.0.i.i = load ptr, ptr %tmp.015.i.i, align 4
  %name.i.i = getelementptr inbounds %struct.table_device, ptr %tmp.015.i.i, i32 0, i32 2, i32 3
  %count.i.i = getelementptr inbounds %struct.table_device, ptr %tmp.015.i.i, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %count.i.i, i32 noundef 4) #21
  %33 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %count.i.i, align 4
  %call6.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %name.i.i, i32 noundef %34) #25
  tail call void @kfree(ptr noundef %tmp.015.i.i) #21
  %cmp.i.not.i.i = icmp eq ptr %next.0.i.i, %table_devices.i
  br i1 %cmp.i.not.i.i, label %for.body.i.i.free_dev.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body.i.i

for.body.i.i.free_dev.exit_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %free_dev.exit

free_dev.exit:                                    ; preds = %for.body.i.i.free_dev.exit_crit_edge, %unlock_fs.exit.i.free_dev.exit_crit_edge
  %and.i = and i32 %24, 1048575
  %stats.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 35
  tail call void @dm_stats_cleanup(ptr noundef %stats.i) #21
  tail call void @_raw_spin_lock(ptr noundef nonnull @_minor_lock) #21
  %call.i.i49 = tail call ptr @idr_remove(ptr noundef nonnull @_minor_idr, i32 noundef %and.i) #21
  tail call void @_raw_spin_unlock(ptr noundef nonnull @_minor_lock) #21
  tail call void @module_put(ptr noundef null) #21
  tail call void @kvfree(ptr noundef %md) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %srcu_idx) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_destroy_immediate(ptr noundef %md) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__dm_destroy(ptr noundef %md, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_put(ptr noundef %md) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %holders = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %holders, i32 noundef 4) #21
  tail call void @llvm.prefetch.p0(ptr %holders, i32 1, i32 3, i32 1) #21
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %holders, ptr %holders, i32 1, ptr elementtype(i32) %holders) #21, !srcloc !337
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dm_swap_table(ptr noundef %md, ptr noundef %table) local_unnamed_addr #0 align 64 {
entry:
  %limits = alloca %struct.queue_limits, align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %limits) #21
  %0 = call ptr @memset(ptr %limits, i32 255, i32 100)
  tail call void @mutex_lock_nested(ptr noundef %md, i32 noundef 0) #21
  %flags.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 4
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flags.i, align 4
  %3 = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %out

if.end:                                           ; preds = %entry
  %call2 = tail call zeroext i1 @dm_table_has_no_data_devices(ptr noundef %table) #21
  br i1 %call2, label %if.then3, label %if.end.if.then11_crit_edge

if.end.if.then11_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then11

if.then3:                                         ; preds = %if.end
  %4 = tail call i32 @llvm.read_register.i32(metadata !297) #21
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !338
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #21
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #21
  br i1 %call.i.i, label %if.then3.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then3.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #23
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then3
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #23
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.72, i32 noundef 696, ptr noundef nonnull @.str.73) #21
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then3.rcu_read_lock.exit.i_crit_edge
  %map.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 3
  %8 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %map.i, align 8
  %call.i = tail call i32 @rcu_read_lock_held() #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.dm_get_live_table_fast.exit_crit_edge

rcu_read_lock.exit.i.dm_get_live_table_fast.exit_crit_edge: ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %dm_get_live_table_fast.exit

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.dm_get_live_table_fast.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.dm_get_live_table_fast.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %dm_get_live_table_fast.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @dm_get_live_table_fast.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.dm_get_live_table_fast.exit_crit_edge, label %if.then.i

land.lhs.true4.i.dm_get_live_table_fast.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %dm_get_live_table_fast.exit

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #23
  store i1 true, ptr @dm_get_live_table_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 623, ptr noundef nonnull @.str.2) #21
  br label %dm_get_live_table_fast.exit

dm_get_live_table_fast.exit:                      ; preds = %if.then.i, %land.lhs.true4.i.dm_get_live_table_fast.exit_crit_edge, %land.lhs.true.i.dm_get_live_table_fast.exit_crit_edge, %rcu_read_lock.exit.i.dm_get_live_table_fast.exit_crit_edge
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %dm_get_live_table_fast.exit.if.end8_crit_edge, label %if.then6

dm_get_live_table_fast.exit.if.end8_crit_edge:    ; preds = %dm_get_live_table_fast.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end8

if.then6:                                         ; preds = %dm_get_live_table_fast.exit
  call void @__sanitizer_cov_trace_pc() #23
  %queue = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 8
  %10 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %queue, align 4
  %limits7 = getelementptr inbounds %struct.request_queue, ptr %11, i32 0, i32 37
  %12 = call ptr @memcpy(ptr %limits, ptr %limits7, i32 100)
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %dm_get_live_table_fast.exit.if.end8_crit_edge
  %call.i.i30 = tail call zeroext i1 @rcu_is_watching() #21
  br i1 %call.i.i30, label %if.end8.dm_put_live_table_fast.exit_crit_edge, label %land.lhs.true.i.i33

if.end8.dm_put_live_table_fast.exit_crit_edge:    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #23
  br label %dm_put_live_table_fast.exit

land.lhs.true.i.i33:                              ; preds = %if.end8
  %call1.i.i31 = tail call i32 @debug_lockdep_rcu_enabled() #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i31)
  %tobool.not.i.i32 = icmp eq i32 %call1.i.i31, 0
  br i1 %tobool.not.i.i32, label %land.lhs.true.i.i33.dm_put_live_table_fast.exit_crit_edge, label %land.lhs.true2.i.i35

land.lhs.true.i.i33.dm_put_live_table_fast.exit_crit_edge: ; preds = %land.lhs.true.i.i33
  call void @__sanitizer_cov_trace_pc() #23
  br label %dm_put_live_table_fast.exit

land.lhs.true2.i.i35:                             ; preds = %land.lhs.true.i.i33
  %.b4.i.i34 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i.i34, label %land.lhs.true2.i.i35.dm_put_live_table_fast.exit_crit_edge, label %if.then.i.i36

land.lhs.true2.i.i35.dm_put_live_table_fast.exit_crit_edge: ; preds = %land.lhs.true2.i.i35
  call void @__sanitizer_cov_trace_pc() #23
  br label %dm_put_live_table_fast.exit

if.then.i.i36:                                    ; preds = %land.lhs.true2.i.i35
  call void @__sanitizer_cov_trace_pc() #23
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.72, i32 noundef 724, ptr noundef nonnull @.str.74) #21
  br label %dm_put_live_table_fast.exit

dm_put_live_table_fast.exit:                      ; preds = %if.then.i.i36, %land.lhs.true2.i.i35.dm_put_live_table_fast.exit_crit_edge, %land.lhs.true.i.i33.dm_put_live_table_fast.exit_crit_edge, %if.end8.dm_put_live_table_fast.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !339
  %13 = tail call i32 @llvm.read_register.i32(metadata !297) #21
  %and.i.i.i.i.i.i37 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i37 to ptr
  %preempt_count.i.i.i.i.i38 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i.i38, align 4
  %sub.i.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i.i38, align 4
  tail call void @rcu_read_unlock_strict() #21
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #21
  br i1 %tobool5.not, label %dm_put_live_table_fast.exit.if.then11_crit_edge, label %dm_put_live_table_fast.exit.if.end17_crit_edge

dm_put_live_table_fast.exit.if.end17_crit_edge:   ; preds = %dm_put_live_table_fast.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end17

dm_put_live_table_fast.exit.if.then11_crit_edge:  ; preds = %dm_put_live_table_fast.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then11

if.then11:                                        ; preds = %dm_put_live_table_fast.exit.if.then11_crit_edge, %if.end.if.then11_crit_edge
  %call12 = call i32 @dm_calculate_queue_limits(ptr noundef %table, ptr noundef nonnull %limits) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then11.if.end17_crit_edge, label %if.then14

if.then11.if.end17_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end17

if.then14:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #23
  %17 = inttoptr i32 %call12 to ptr
  br label %out

if.end17:                                         ; preds = %if.then11.if.end17_crit_edge, %dm_put_live_table_fast.exit.if.end17_crit_edge
  %queue.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 8
  %18 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %queue.i, align 4
  %call.i39 = call zeroext i1 @dm_table_request_based(ptr noundef %table) #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %20 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i40 = icmp eq i32 %20, 0
  br i1 %tobool.not.i40, label %if.end17.if.end.i_crit_edge, label %land.rhs.i

if.end17.if.end.i_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end17
  %dep_map.i = getelementptr inbounds %struct.mutex, ptr %md, i32 0, i32 5
  %call.i.i41 = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i41)
  %cmp.not.i = icmp eq i32 %call.i.i41, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !316

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #23
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1838, i32 noundef 9, ptr noundef null) #21
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.end17.if.end.i_crit_edge
  %call25.i = call i64 @dm_table_get_size(ptr noundef %table) #21
  %disk.i.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 14
  %21 = ptrtoint ptr %disk.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %disk.i.i, align 8
  %part0.i.i.i = getelementptr inbounds %struct.gendisk, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %part0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %part0.i.i.i, align 4
  %bd_nr_sectors.i.i.i.i = getelementptr inbounds %struct.block_device, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %bd_nr_sectors.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %bd_nr_sectors.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call25.i, i64 %26)
  %cmp27.not.i = icmp eq i64 %call25.i, %26
  br i1 %cmp27.not.i, label %if.end.i.if.end29.i_crit_edge, label %if.then28.i

if.end.i.if.end29.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end29.i

if.then28.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  %geometry.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 30
  %27 = ptrtoint ptr %geometry.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 0, ptr %geometry.i, align 8
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then28.i, %if.end.i.if.end29.i_crit_edge
  %28 = ptrtoint ptr %part0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %part0.i.i.i, align 4
  %bd_nr_sectors.i.i.i = getelementptr inbounds %struct.block_device, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %bd_nr_sectors.i.i.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %bd_nr_sectors.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %31)
  %tobool31.not.i = icmp eq i64 %31, 0
  br i1 %tobool31.not.i, label %if.then32.i, label %if.else.i

if.then32.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #23
  call void @set_capacity(ptr noundef %22, i64 noundef %call25.i) #21
  br label %if.end36.i

if.else.i:                                        ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #23
  %call35.i = call zeroext i1 @set_capacity_and_notify(ptr noundef %22, i64 noundef %call25.i) #21
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.else.i, %if.then32.i
  call void @dm_table_event_callback(ptr noundef %table, ptr noundef nonnull @event_callback, ptr noundef %md) #21
  br i1 %call.i39, label %if.then38.i, label %if.end36.i.if.end40.i_crit_edge

if.end36.i.if.end40.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end40.i

if.then38.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #23
  %call39.i = call ptr @dm_table_get_immutable_target(ptr noundef %table) #21
  %immutable_target.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 11
  %32 = ptrtoint ptr %immutable_target.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call39.i, ptr %immutable_target.i, align 8
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then38.i, %if.end36.i.if.end40.i_crit_edge
  %call.i138.i = call ptr @dm_table_get_md_mempools(ptr noundef %table) #21
  %call1.i.i42 = call zeroext i1 @dm_table_bio_based(ptr noundef %table) #21
  %bs.i.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 28
  br i1 %call1.i.i42, label %if.then.i.i43, label %if.else.i.i

if.then.i.i43:                                    ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #23
  call void @bioset_exit(ptr noundef %bs.i.i) #21
  %io_bs.i.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 27
  call void @bioset_exit(ptr noundef %io_bs.i.i) #21
  br label %do.body.i.i

if.else.i.i:                                      ; preds = %if.end40.i
  %33 = ptrtoint ptr %bs.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bs.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %34, null
  br i1 %cmp.i.not.i.i, label %if.else.i.i.do.body.i.i_crit_edge, label %if.else.i.i.if.end45.i_crit_edge

if.else.i.i.if.end45.i_crit_edge:                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end45.i

if.else.i.i.do.body.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.else.i.i.do.body.i.i_crit_edge, %if.then.i.i43
  %tobool.not.i.i44 = icmp eq ptr %call.i138.i, null
  br i1 %tobool.not.i.i44, label %do.body.i.i.do.body13.i.i_crit_edge, label %lor.lhs.false.i.i, !prof !316

do.body.i.i.do.body13.i.i_crit_edge:              ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body13.i.i

lor.lhs.false.i.i:                                ; preds = %do.body.i.i
  %35 = ptrtoint ptr %bs.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %bs.i.i, align 4
  %cmp.i47.not.i.i = icmp eq ptr %36, null
  br i1 %cmp.i47.not.i.i, label %lor.rhs.i.i, label %lor.lhs.false.i.i.do.body13.i.i_crit_edge, !prof !314

lor.lhs.false.i.i.do.body13.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body13.i.i

lor.rhs.i.i:                                      ; preds = %lor.lhs.false.i.i
  %io_bs8.i.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 27
  %37 = ptrtoint ptr %io_bs8.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %io_bs8.i.i, align 4
  %cmp.i48.not.i.i = icmp eq ptr %38, null
  br i1 %cmp.i48.not.i.i, label %do.end19.i.i, label %lor.rhs.i.i.do.body13.i.i_crit_edge, !prof !314

lor.rhs.i.i.do.body13.i.i_crit_edge:              ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body13.i.i

do.body13.i.i:                                    ; preds = %lor.rhs.i.i.do.body13.i.i_crit_edge, %lor.lhs.false.i.i.do.body13.i.i_crit_edge, %do.body.i.i.do.body13.i.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1792, 0\0A.popsection", ""() #21, !srcloc !340
  unreachable

do.end19.i.i:                                     ; preds = %lor.rhs.i.i
  %call22.i.i = call i32 @bioset_init_from_src(ptr noundef %bs.i.i, ptr noundef nonnull %call.i138.i) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %tobool23.not.i.i = icmp eq i32 %call22.i.i, 0
  br i1 %tobool23.not.i.i, label %if.end25.i.i, label %do.end19.i.i.if.then43.i_crit_edge

do.end19.i.i.if.then43.i_crit_edge:               ; preds = %do.end19.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then43.i

if.end25.i.i:                                     ; preds = %do.end19.i.i
  %io_bs27.i.i = getelementptr inbounds %struct.dm_md_mempools, ptr %call.i138.i, i32 0, i32 1
  %call28.i.i = call i32 @bioset_init_from_src(ptr noundef %io_bs8.i.i, ptr noundef %io_bs27.i.i) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i.i)
  %tobool29.not.i.i = icmp eq i32 %call28.i.i, 0
  br i1 %tobool29.not.i.i, label %if.end25.i.i.if.end45.i_crit_edge, label %if.then30.i.i

if.end25.i.i.if.end45.i_crit_edge:                ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end45.i

if.then30.i.i:                                    ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #23
  call void @bioset_exit(ptr noundef %bs.i.i) #21
  br label %if.then43.i

if.then43.i:                                      ; preds = %if.then30.i.i, %do.end19.i.i.if.then43.i_crit_edge
  %ret.0.i.i = phi i32 [ %call22.i.i, %do.end19.i.i.if.then43.i_crit_edge ], [ %call28.i.i, %if.then30.i.i ]
  call void @dm_table_free_md_mempools(ptr noundef %table) #21
  %39 = inttoptr i32 %ret.0.i.i to ptr
  br label %__bind.exit

if.end45.i:                                       ; preds = %if.end25.i.i.if.end45.i_crit_edge, %if.else.i.i.if.end45.i_crit_edge
  call void @dm_table_free_md_mempools(ptr noundef %table) #21
  %call46.i = call i32 @dm_table_set_restrictions(ptr noundef %table, ptr noundef %19, ptr noundef nonnull %limits) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %do.body51.i, label %if.then48.i

if.then48.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #23
  %40 = inttoptr i32 %call46.i to ptr
  br label %__bind.exit

do.body51.i:                                      ; preds = %if.end45.i
  %dep_map53.i = getelementptr inbounds %struct.mutex, ptr %md, i32 0, i32 5
  %call.i139.i = call i32 @lock_is_held_type(ptr noundef %dep_map53.i, i32 noundef -1) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i139.i)
  %tobool55.not.i = icmp eq i32 %call.i139.i, 0
  br i1 %tobool55.not.i, label %land.lhs.true.i45, label %do.body51.i.do.end63.i_crit_edge

do.body51.i.do.end63.i_crit_edge:                 ; preds = %do.body51.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end63.i

land.lhs.true.i45:                                ; preds = %do.body51.i
  %call56.i = call i32 @debug_lockdep_rcu_enabled() #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i)
  %tobool57.not.i = icmp eq i32 %call56.i, 0
  br i1 %tobool57.not.i, label %land.lhs.true.i45.do.end63.i_crit_edge, label %land.lhs.true58.i

land.lhs.true.i45.do.end63.i_crit_edge:           ; preds = %land.lhs.true.i45
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end63.i

land.lhs.true58.i:                                ; preds = %land.lhs.true.i45
  %.b137.i = load i1, ptr @__bind.__warned, align 1
  br i1 %.b137.i, label %land.lhs.true58.i.do.end63.i_crit_edge, label %if.then60.i

land.lhs.true58.i.do.end63.i_crit_edge:           ; preds = %land.lhs.true58.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end63.i

if.then60.i:                                      ; preds = %land.lhs.true58.i
  call void @__sanitizer_cov_trace_pc() #23
  store i1 true, ptr @__bind.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1875, ptr noundef nonnull @.str.14) #21
  br label %do.end63.i

do.end63.i:                                       ; preds = %if.then60.i, %land.lhs.true58.i.do.end63.i_crit_edge, %land.lhs.true.i45.do.end63.i_crit_edge, %do.body51.i.do.end63.i_crit_edge
  %map.i46 = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 3
  %41 = ptrtoint ptr %map.i46 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %map.i46, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #21, !srcloc !341
  %43 = ptrtoint ptr %map.i46 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %table, ptr %map.i46, align 8
  %call105.i = call ptr @dm_table_get_immutable_target_type(ptr noundef %table) #21
  %immutable_target_type.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 12
  %44 = ptrtoint ptr %immutable_target_type.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call105.i, ptr %immutable_target_type.i, align 4
  %tobool106.not.i = icmp eq ptr %42, null
  br i1 %tobool106.not.i, label %do.end63.i.__bind.exit_crit_edge, label %if.then107.i

do.end63.i.__bind.exit_crit_edge:                 ; preds = %do.end63.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %__bind.exit

if.then107.i:                                     ; preds = %do.end63.i
  call void @__sanitizer_cov_trace_pc() #23
  %io_barrier.i.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 38
  call void @synchronize_srcu(ptr noundef %io_barrier.i.i) #21
  call void @synchronize_rcu_expedited() #21
  br label %__bind.exit

__bind.exit:                                      ; preds = %if.then107.i, %do.end63.i.__bind.exit_crit_edge, %if.then48.i, %if.then43.i
  %old_map.0.i = phi ptr [ %39, %if.then43.i ], [ %40, %if.then48.i ], [ %42, %if.then107.i ], [ null, %do.end63.i.__bind.exit_crit_edge ]
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @dm_global_event_nr, i32 noundef 4) #21
  call void @llvm.prefetch.p0(ptr nonnull @dm_global_event_nr, i32 1, i32 3, i32 1) #21
  %45 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @dm_global_event_nr, ptr nonnull @dm_global_event_nr, i32 1, ptr nonnull elementtype(i32) @dm_global_event_nr) #21, !srcloc !307
  call void @__wake_up(ptr noundef nonnull @dm_global_eventq, i32 noundef 3, i32 noundef 1, ptr noundef null) #21
  br label %out

out:                                              ; preds = %__bind.exit, %if.then14, %entry.out_crit_edge
  %map.0 = phi ptr [ %old_map.0.i, %__bind.exit ], [ %17, %if.then14 ], [ inttoptr (i32 -22 to ptr), %entry.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %md) #21
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %limits) #21
  ret ptr %map.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dm_suspended_md(ptr noundef %md) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %shr.i = lshr i32 %1, 1
  %and1.i = and i32 %shr.i, 1
  ret i32 %and1.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dm_table_has_no_data_devices(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_suspend(ptr noundef %md, i32 noundef %suspend_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 4
  br label %retry

retry:                                            ; preds = %wait_on_bit.exit.retry_crit_edge, %entry
  tail call void @mutex_lock_nested(ptr noundef %md, i32 noundef 1) #21
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags.i, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %retry.out_unlock_crit_edge

retry.out_unlock_crit_edge:                       ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #23
  br label %out_unlock

if.end:                                           ; preds = %retry
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags.i, align 4
  %5 = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %do.body, label %if.then3

if.then3:                                         ; preds = %if.end
  tail call void @mutex_unlock(ptr noundef %md) #21
  tail call void @__might_sleep(ptr noundef nonnull @.str.75, i32 noundef 73) #21
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags.i, align 4
  %8 = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.then3.wait_on_bit.exit_crit_edge, label %if.end.i

if.then3.wait_on_bit.exit_crit_edge:              ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #23
  br label %wait_on_bit.exit

if.end.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #23
  %call3.i = tail call i32 @out_of_line_wait_on_bit(ptr noundef %flags.i, i32 noundef 7, ptr noundef nonnull @bit_wait, i32 noundef 1) #21
  br label %wait_on_bit.exit

wait_on_bit.exit:                                 ; preds = %if.end.i, %if.then3.wait_on_bit.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ 0, %if.then3.wait_on_bit.exit_crit_edge ]
  %tobool6.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool6.not, label %wait_on_bit.exit.retry_crit_edge, label %wait_on_bit.exit.cleanup_crit_edge

wait_on_bit.exit.cleanup_crit_edge:               ; preds = %wait_on_bit.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

wait_on_bit.exit.retry_crit_edge:                 ; preds = %wait_on_bit.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %retry

do.body:                                          ; preds = %if.end
  %dep_map = getelementptr inbounds %struct.mutex, ptr %md, i32 0, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not = icmp eq i32 %call.i, 0
  br i1 %tobool12.not, label %land.lhs.true, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call13 = tail call i32 @debug_lockdep_rcu_enabled() #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true15

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end

land.lhs.true15:                                  ; preds = %land.lhs.true
  %.b42 = load i1, ptr @dm_suspend.__warned, align 1
  br i1 %.b42, label %land.lhs.true15.do.end_crit_edge, label %if.then17

land.lhs.true15.do.end_crit_edge:                 ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end

if.then17:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #23
  store i1 true, ptr @dm_suspend.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 2424, ptr noundef nonnull @.str.14) #21
  br label %do.end

do.end:                                           ; preds = %if.then17, %land.lhs.true15.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %map19 = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 3
  %9 = ptrtoint ptr %map19 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %map19, align 8
  %call20 = tail call fastcc i32 @__dm_suspend(ptr noundef %md, ptr noundef %10, i32 noundef %suspend_flags, i32 noundef 1, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %do.end.out_unlock_crit_edge

do.end.out_unlock_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %out_unlock

if.end23:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @_set_bit(i32 noundef 8, ptr noundef %flags.i) #21
  tail call void @dm_table_postsuspend_targets(ptr noundef %10) #21
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %flags.i) #21
  br label %out_unlock

out_unlock:                                       ; preds = %if.end23, %do.end.out_unlock_crit_edge, %retry.out_unlock_crit_edge
  %r.0 = phi i32 [ %call20, %do.end.out_unlock_crit_edge ], [ 0, %if.end23 ], [ -22, %retry.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %md) #21
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %wait_on_bit.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0, %out_unlock ], [ %retval.0.i, %wait_on_bit.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dm_suspended_internally_md(ptr noundef %md) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %shr.i = lshr i32 %1, 7
  %and1.i = and i32 %shr.i, 1
  ret i32 %and1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__dm_suspend(ptr noundef %md, ptr noundef %map, i32 noundef %suspend_flags, i32 noundef %task_state, i32 noundef %dmf_suspended_flag) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %suspend_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and1 = and i32 %suspend_flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool4.not = icmp eq i32 %0, 0
  br i1 %tobool4.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.mutex, ptr %md, i32 0, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !316

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #23
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2302, i32 noundef 9, ptr noundef null) #21
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  br i1 %tobool2.not, label %do.body30, label %if.then29

if.then29:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  %flags = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags) #21
  tail call void @dm_table_presuspend_targets(ptr noundef %map) #21
  br label %if.end54

do.body30:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__dm_suspend.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__dm_suspend, %if.then41)) #21
          to label %land.lhs.true [label %if.then41], !srcloc !342

if.then41:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #23
  %name.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__dm_suspend.__UNIQUE_ID_ddebug360, ptr noundef nonnull @.str.77, ptr noundef %name.i) #21
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then41, %do.body30
  tail call void @dm_table_presuspend_targets(ptr noundef %map) #21
  br i1 %tobool.not, label %land.lhs.true.if.end54_crit_edge, label %if.then49

land.lhs.true.if.end54_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end54

if.then49:                                        ; preds = %land.lhs.true
  %flags.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 4
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flags.i, align 4
  %3 = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.then49.if.end.i_crit_edge, label %do.end.i, !prof !314

if.then49.if.end.i_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end.i

do.end.i:                                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #23
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2269, i32 noundef 9, ptr noundef null) #21
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then49.if.end.i_crit_edge
  %disk.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 14
  %4 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disk.i, align 8
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %part0.i, align 4
  %call20.i = tail call i32 @freeze_bdev(ptr noundef %7) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %lock_fs.exit.thread, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup.sink.split

lock_fs.exit.thread:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags.i) #21
  br label %if.end54

if.end54:                                         ; preds = %lock_fs.exit.thread, %land.lhs.true.if.end54_crit_edge, %if.then29
  %flags55 = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags55) #21
  %tobool56.not = icmp eq ptr %map, null
  br i1 %tobool56.not, label %if.end54.if.end58_crit_edge, label %if.then57

if.end54.if.end58_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end58

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #23
  %io_barrier = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 38
  tail call void @synchronize_srcu(ptr noundef %io_barrier) #21
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %if.end54.if.end58_crit_edge
  %call59 = tail call i32 @dm_request_based(ptr noundef %md) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end58.if.end62_crit_edge, label %if.then61

if.end58.if.end62_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end62

if.then61:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #23
  %queue = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 8
  %8 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %queue, align 4
  tail call void @dm_stop_queue(ptr noundef %9) #21
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.end58.if.end62_crit_edge
  %wq = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 29
  %10 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wq, align 4
  tail call void @flush_workqueue(ptr noundef %11) #21
  %call63 = tail call fastcc i32 @dm_wait_for_completion(ptr noundef %md, i32 noundef %task_state)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.then65, label %if.end62.if.end67_crit_edge

if.end62.if.end67_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end67

if.then65:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @_set_bit(i32 noundef %dmf_suspended_flag, ptr noundef %flags55) #21
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %if.end62.if.end67_crit_edge
  br i1 %tobool2.not, label %if.end67.if.end71_crit_edge, label %if.then69

if.end67.if.end71_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end71

if.then69:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %flags55) #21
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %if.end67.if.end71_crit_edge
  br i1 %tobool56.not, label %if.end71.if.end75_crit_edge, label %if.then73

if.end71.if.end75_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end75

if.then73:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #23
  %io_barrier74 = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 38
  tail call void @synchronize_srcu(ptr noundef %io_barrier74) #21
  br label %if.end75

if.end75:                                         ; preds = %if.then73, %if.end71.if.end75_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp76 = icmp slt i32 %call63, 0
  br i1 %cmp76, label %if.then77, label %if.end75.cleanup_crit_edge

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.then77:                                        ; preds = %if.end75
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags55) #21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #21, !srcloc !343
  %12 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wq, align 4
  %work.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 16
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %13, ptr noundef %work.i) #21
  %call78 = tail call i32 @dm_request_based(ptr noundef %md) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.then77.if.end82_crit_edge, label %if.then80

if.then77.if.end82_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end82

if.then80:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #23
  %queue81 = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 8
  %14 = ptrtoint ptr %queue81 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %queue81, align 4
  tail call void @dm_start_queue(ptr noundef %15) #21
  br label %if.end82

if.end82:                                         ; preds = %if.then80, %if.then77.if.end82_crit_edge
  %16 = ptrtoint ptr %flags55 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags55, align 4
  %18 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i117 = icmp eq i32 %18, 0
  br i1 %tobool.not.i117, label %if.end82.cleanup.sink.split_crit_edge, label %if.end.i120

if.end82.cleanup.sink.split_crit_edge:            ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup.sink.split

if.end.i120:                                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #23
  %disk.i118 = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 14
  %19 = ptrtoint ptr %disk.i118 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %disk.i118, align 8
  %part0.i119 = getelementptr inbounds %struct.gendisk, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %part0.i119 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %part0.i119, align 4
  %call1.i = tail call i32 @thaw_bdev(ptr noundef %22) #21
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags55) #21
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.i120, %if.end82.cleanup.sink.split_crit_edge, %if.end.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call20.i, %if.end.i.cleanup.sink.split_crit_edge ], [ %call63, %if.end82.cleanup.sink.split_crit_edge ], [ %call63, %if.end.i120 ]
  tail call void @dm_table_presuspend_undo_targets(ptr noundef %map) #21
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end75.cleanup_crit_edge
  %retval.0 = phi i32 [ %call63, %if.end75.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_table_postsuspend_targets(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_resume(ptr noundef %md) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 4
  br label %retry

retry:                                            ; preds = %wait_on_bit.exit.retry_crit_edge, %entry
  tail call void @mutex_lock_nested(ptr noundef %md, i32 noundef 1) #21
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags.i, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %retry.out_crit_edge, label %if.end

retry.out_crit_edge:                              ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #23
  br label %out

if.end:                                           ; preds = %retry
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags.i, align 4
  %5 = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %do.body, label %if.then3

if.then3:                                         ; preds = %if.end
  tail call void @mutex_unlock(ptr noundef %md) #21
  tail call void @__might_sleep(ptr noundef nonnull @.str.75, i32 noundef 73) #21
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags.i, align 4
  %8 = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.then3.wait_on_bit.exit_crit_edge, label %if.end.i

if.then3.wait_on_bit.exit_crit_edge:              ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #23
  br label %wait_on_bit.exit

if.end.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #23
  %call3.i = tail call i32 @out_of_line_wait_on_bit(ptr noundef %flags.i, i32 noundef 7, ptr noundef nonnull @bit_wait, i32 noundef 1) #21
  br label %wait_on_bit.exit

wait_on_bit.exit:                                 ; preds = %if.end.i, %if.then3.wait_on_bit.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ 0, %if.then3.wait_on_bit.exit_crit_edge ]
  %tobool6.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool6.not, label %wait_on_bit.exit.retry_crit_edge, label %wait_on_bit.exit.cleanup_crit_edge

wait_on_bit.exit.cleanup_crit_edge:               ; preds = %wait_on_bit.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

wait_on_bit.exit.retry_crit_edge:                 ; preds = %wait_on_bit.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %retry

do.body:                                          ; preds = %if.end
  %dep_map = getelementptr inbounds %struct.mutex, ptr %md, i32 0, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not = icmp eq i32 %call.i, 0
  br i1 %tobool12.not, label %land.lhs.true, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call13 = tail call i32 @debug_lockdep_rcu_enabled() #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true15

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end

land.lhs.true15:                                  ; preds = %land.lhs.true
  %.b46 = load i1, ptr @dm_resume.__warned, align 1
  br i1 %.b46, label %land.lhs.true15.do.end_crit_edge, label %if.then17

land.lhs.true15.do.end_crit_edge:                 ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end

if.then17:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #23
  store i1 true, ptr @dm_resume.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 2483, ptr noundef nonnull @.str.14) #21
  br label %do.end

do.end:                                           ; preds = %if.then17, %land.lhs.true15.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %map19 = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 3
  %9 = ptrtoint ptr %map19 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %map19, align 8
  %tobool20.not = icmp eq ptr %10, null
  br i1 %tobool20.not, label %do.end.out_crit_edge, label %lor.lhs.false

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %out

lor.lhs.false:                                    ; preds = %do.end
  %call21 = tail call i64 @dm_table_get_size(ptr noundef nonnull %10) #21
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call21)
  %tobool22.not = icmp eq i64 %call21, 0
  br i1 %tobool22.not, label %lor.lhs.false.out_crit_edge, label %if.end24

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  br label %out

if.end24:                                         ; preds = %lor.lhs.false
  %call25 = tail call fastcc i32 @__dm_resume(ptr noundef %md, ptr noundef nonnull %10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.out_crit_edge

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #23
  br label %out

if.end28:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags.i) #21
  br label %out

out:                                              ; preds = %if.end28, %if.end24.out_crit_edge, %lor.lhs.false.out_crit_edge, %do.end.out_crit_edge, %retry.out_crit_edge
  %r.0 = phi i32 [ %call25, %if.end24.out_crit_edge ], [ 0, %if.end28 ], [ -22, %lor.lhs.false.out_crit_edge ], [ -22, %do.end.out_crit_edge ], [ -22, %retry.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %md) #21
  br label %cleanup

cleanup:                                          ; preds = %out, %wait_on_bit.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0, %out ], [ %retval.0.i, %wait_on_bit.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dm_table_get_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__dm_resume(ptr noundef %md, ptr noundef %map) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %map, null
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call i32 @dm_table_resume_targets(ptr noundef nonnull %map) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.if.end3_crit_edge, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %return

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end3

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %flags.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 4
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i) #21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #21, !srcloc !343
  %wq.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 29
  %0 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wq.i, align 4
  %work.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 16
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %work.i) #21
  %call4 = tail call i32 @dm_request_based(ptr noundef %md) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end3.if.end7_crit_edge, label %if.then6

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end7

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #23
  %queue = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 8
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue, align 4
  tail call void @dm_start_queue(ptr noundef %3) #21
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end3.if.end7_crit_edge
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %if.end7.return_crit_edge, label %if.end.i

if.end7.return_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #23
  br label %return

if.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #23
  %disk.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 14
  %7 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %disk.i, align 8
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %part0.i, align 4
  %call1.i = tail call i32 @thaw_bdev(ptr noundef %10) #21
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags.i) #21
  br label %return

return:                                           ; preds = %if.end.i, %if.end7.return_crit_edge, %if.then.return_crit_edge
  %retval.1 = phi i32 [ %call, %if.then.return_crit_edge ], [ 0, %if.end7.return_crit_edge ], [ 0, %if.end.i ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_internal_suspend_noflush(ptr noundef %md) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef %md, i32 noundef 0) #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.rhs.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end.i

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.mutex, ptr %md, i32 0, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !316

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #23
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2508, i32 noundef 9, ptr noundef null) #21
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %internal_suspend_count.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 26
  %1 = ptrtoint ptr %internal_suspend_count.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %internal_suspend_count.i, align 8
  %inc.i = add i32 %2, 1
  store i32 %inc.i, ptr %internal_suspend_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool24.not.i = icmp eq i32 %2, 0
  br i1 %tobool24.not.i, label %if.end26.i, label %if.end.i.__dm_internal_suspend.exit_crit_edge

if.end.i.__dm_internal_suspend.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %__dm_internal_suspend.exit

if.end26.i:                                       ; preds = %if.end.i
  %flags.i.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 4
  %3 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags.i.i, align 4
  %5 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool28.not.i = icmp eq i32 %5, 0
  br i1 %tobool28.not.i, label %do.body31.i, label %if.then29.i

if.then29.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @_set_bit(i32 noundef 7, ptr noundef %flags.i.i) #21
  br label %__dm_internal_suspend.exit

do.body31.i:                                      ; preds = %if.end26.i
  %dep_map33.i = getelementptr inbounds %struct.mutex, ptr %md, i32 0, i32 5
  %call.i2.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map33.i, i32 noundef -1) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i)
  %tobool35.not.i = icmp eq i32 %call.i2.i, 0
  br i1 %tobool35.not.i, label %land.lhs.true.i, label %do.body31.i.do.end43.i_crit_edge

do.body31.i.do.end43.i_crit_edge:                 ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end43.i

land.lhs.true.i:                                  ; preds = %do.body31.i
  %call36.i = tail call i32 @debug_lockdep_rcu_enabled() #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %land.lhs.true.i.do.end43.i_crit_edge, label %land.lhs.true38.i

land.lhs.true.i.do.end43.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end43.i

land.lhs.true38.i:                                ; preds = %land.lhs.true.i
  %.b1.i = load i1, ptr @__dm_internal_suspend.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true38.i.do.end43.i_crit_edge, label %if.then40.i

land.lhs.true38.i.do.end43.i_crit_edge:           ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end43.i

if.then40.i:                                      ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #23
  store i1 true, ptr @__dm_internal_suspend.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 2518, ptr noundef nonnull @.str.14) #21
  br label %do.end43.i

do.end43.i:                                       ; preds = %if.then40.i, %land.lhs.true38.i.do.end43.i_crit_edge, %land.lhs.true.i.do.end43.i_crit_edge, %do.body31.i.do.end43.i_crit_edge
  %map45.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 3
  %6 = ptrtoint ptr %map45.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map45.i, align 8
  %call46.i = tail call fastcc i32 @__dm_suspend(ptr noundef %md, ptr noundef %7, i32 noundef 2, i32 noundef 2, i32 noundef 7) #21
  tail call void @_set_bit(i32 noundef 8, ptr noundef %flags.i.i) #21
  tail call void @dm_table_postsuspend_targets(ptr noundef %7) #21
  tail call void @_clear_bit(i32 noundef 8, ptr noundef %flags.i.i) #21
  br label %__dm_internal_suspend.exit

__dm_internal_suspend.exit:                       ; preds = %do.end43.i, %if.then29.i, %if.end.i.__dm_internal_suspend.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %md) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_internal_resume(ptr noundef %md) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef %md, i32 noundef 0) #21
  %internal_suspend_count.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 26
  %0 = ptrtoint ptr %internal_suspend_count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %internal_suspend_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %do.body4.i, label %do.end7.i, !prof !316

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2536, 0\0A.popsection", ""() #21, !srcloc !344
  unreachable

do.end7.i:                                        ; preds = %entry
  %dec.i = add i32 %1, -1
  %2 = ptrtoint ptr %internal_suspend_count.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %dec.i, ptr %internal_suspend_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool9.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %do.end7.i.__dm_internal_resume.exit_crit_edge

do.end7.i.__dm_internal_resume.exit_crit_edge:    ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %__dm_internal_resume.exit

if.end11.i:                                       ; preds = %do.end7.i
  %flags.i.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 4
  %3 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags.i.i, align 4
  %5 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool12.not.i = icmp eq i32 %5, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end11.i.done.i_crit_edge

if.end11.i.done.i_crit_edge:                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %done.i

if.end14.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #23
  %call15.i = tail call fastcc i32 @__dm_resume(ptr noundef %md, ptr noundef null) #21
  br label %done.i

done.i:                                           ; preds = %if.end14.i, %if.end11.i.done.i_crit_edge
  tail call void @_clear_bit(i32 noundef 7, ptr noundef %flags.i.i) #21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #21, !srcloc !345
  tail call void @wake_up_bit(ptr noundef %flags.i.i, i32 noundef 7) #21
  br label %__dm_internal_resume.exit

__dm_internal_resume.exit:                        ; preds = %done.i, %do.end7.i.__dm_internal_resume.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %md) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_internal_suspend_fast(ptr noundef %md) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef %md, i32 noundef 0) #21
  %flags.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 4
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags.i, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags.i, align 4
  %5 = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i) #21
  %io_barrier = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 38
  tail call void @synchronize_srcu(ptr noundef %io_barrier) #21
  %wq = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 29
  %6 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wq, align 4
  tail call void @flush_workqueue(ptr noundef %7) #21
  %call3 = tail call fastcc i32 @dm_wait_for_completion(ptr noundef %md, i32 noundef 2)
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dm_wait_for_completion(ptr noundef %md, i32 noundef %task_state) unnamed_addr #0 align 64 {
entry:
  %wait.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 8
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %mq_ops.i = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %mq_ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mq_ops.i, align 8
  %tobool.i.not = icmp eq ptr %3, null
  br i1 %tobool.i.not, label %if.then, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queue, align 4
  %call322 = tail call zeroext i1 @blk_mq_queue_inflight(ptr noundef %5) #21
  br i1 %call322, label %if.end5.lr.ph, label %while.cond.preheader.cleanup_crit_edge

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end5.lr.ph:                                    ; preds = %while.cond.preheader
  %and.i13 = and i32 %task_state, 257
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13)
  %tobool.not.i14 = icmp eq i32 %and.i13, 0
  %and4.i = and i32 %task_state, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait.i) #21
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 1
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 2
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3
  %9 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %wait.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %wait.i, align 4
  %11 = tail call i32 @llvm.read_register.i32(metadata !297) #21
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task.i, align 8
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %6, align 4
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @autoremove_wake_function, ptr %7, align 4
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %8, ptr %8, align 4
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %8, ptr %9, align 4
  %wait4.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 17
  call void @prepare_to_wait(ptr noundef %wait4.i, ptr noundef nonnull %wait.i, i32 noundef %task_state) #21
  %call129.i22.i = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %19 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call129.i22.i, i32 %19)
  %cmp30.i23.i = icmp ult i32 %call129.i22.i, %19
  br i1 %cmp30.i23.i, label %do.body.lr.ph.i.lr.ph.i, label %if.then.dm_wait_for_bios_completion.exit_crit_edge

if.then.dm_wait_for_bios_completion.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %dm_wait_for_bios_completion.exit

do.body.lr.ph.i.lr.ph.i:                          ; preds = %if.then
  %disk.i.i.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 14
  %and.i15.i = and i32 %task_state, 257
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i15.i)
  %tobool.not.i.i = icmp eq i32 %and.i15.i, 0
  %and4.i.i = and i32 %task_state, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool5.not.i.i = icmp eq i32 %and4.i.i, 0
  br label %do.body.lr.ph.i.i

do.body.lr.ph.i.i:                                ; preds = %if.end10.i.do.body.lr.ph.i.i_crit_edge, %do.body.lr.ph.i.lr.ph.i
  %call129.i24.i = phi i32 [ %call129.i22.i, %do.body.lr.ph.i.lr.ph.i ], [ %call129.i.i, %if.end10.i.do.body.lr.ph.i.i_crit_edge ]
  %20 = ptrtoint ptr %disk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %disk.i.i.i, align 8
  %part0.i.i = getelementptr inbounds %struct.gendisk, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %part0.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %part0.i.i, align 4
  %bd_stats.i.i = getelementptr inbounds %struct.block_device, ptr %23, i32 0, i32 2
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %do.body.lr.ph.i.i
  %call132.i.i = phi i32 [ %call129.i24.i, %do.body.lr.ph.i.i ], [ %call1.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %sum.031.i.i = phi i32 [ 0, %do.body.lr.ph.i.i ], [ %add20.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %24 = ptrtoint ptr %bd_stats.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bd_stats.i.i, align 8
  %26 = ptrtoint ptr %25 to i32
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call132.i.i
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %28, %26
  %29 = inttoptr i32 %add.i.i to ptr
  %in_flight.i.i = getelementptr inbounds %struct.disk_stats, ptr %29, i32 0, i32 5
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %in_flight.i.i, i32 noundef 4) #21
  %30 = ptrtoint ptr %in_flight.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %in_flight.i.i, align 4
  %add5.i.i = add i32 %31, %sum.031.i.i
  %32 = ptrtoint ptr %bd_stats.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bd_stats.i.i, align 8
  %34 = ptrtoint ptr %33 to i32
  %35 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i.i, align 4
  %add15.i.i = add i32 %36, %34
  %37 = inttoptr i32 %add15.i.i to ptr
  %arrayidx17.i.i = getelementptr %struct.disk_stats, ptr %37, i32 0, i32 5, i32 1
  %call.i.i28.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx17.i.i, i32 noundef 4) #21
  %38 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %arrayidx17.i.i, align 4
  %add20.i.i = add i32 %add5.i.i, %39
  %call1.i.i = call i32 @cpumask_next(i32 noundef %call132.i.i, ptr noundef nonnull @__cpu_possible_mask) #27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %40 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i.i = icmp ult i32 %call1.i.i, %40
  br i1 %cmp.i.i, label %do.body.i.i.do.body.i.i_crit_edge, label %md_in_flight_bios.exit.i

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body.i.i

md_in_flight_bios.exit.i:                         ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add20.i.i)
  %phi.cmp.i.not.i = icmp eq i32 %add20.i.i, 0
  br i1 %phi.cmp.i.not.i, label %md_in_flight_bios.exit.i.dm_wait_for_bios_completion.exit_crit_edge, label %if.end.i

md_in_flight_bios.exit.i.dm_wait_for_bios_completion.exit_crit_edge: ; preds = %md_in_flight_bios.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %dm_wait_for_bios_completion.exit

if.end.i:                                         ; preds = %md_in_flight_bios.exit.i
  %41 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task.i, align 8
  br i1 %tobool.not.i.i, label %if.end.i.if.end10.i_crit_edge, label %if.end.i.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end10.i

if.end.i.i:                                       ; preds = %if.end.i
  %stack.i.i.i.i = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %stack.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %stack.i.i.i.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %44, align 4
  %47 = and i32 %46, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i.i.i = icmp eq i32 %47, 0
  br i1 %tobool.not.i.i.i, label %signal_pending.exit.i.i, label %if.end.i.i.if.end3.i.i_crit_edge, !prof !314

if.end.i.i.if.end3.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end3.i.i

signal_pending.exit.i.i:                          ; preds = %if.end.i.i
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %44, align 4
  %and1.i.i.i.i.i.i.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i.i)
  %tobool1.not.i.i = icmp eq i32 %and1.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i, label %signal_pending.exit.i.i.if.end10.i_crit_edge, label %signal_pending.exit.i.i.if.end3.i.i_crit_edge

signal_pending.exit.i.i.if.end3.i.i_crit_edge:    ; preds = %signal_pending.exit.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end3.i.i

signal_pending.exit.i.i.if.end10.i_crit_edge:     ; preds = %signal_pending.exit.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end10.i

if.end3.i.i:                                      ; preds = %signal_pending.exit.i.i.if.end3.i.i_crit_edge, %if.end.i.i.if.end3.i.i_crit_edge
  br i1 %tobool5.not.i.i, label %signal_pending_state.exit.i, label %if.end3.i.i.dm_wait_for_bios_completion.exit_crit_edge

if.end3.i.i.dm_wait_for_bios_completion.exit_crit_edge: ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %dm_wait_for_bios_completion.exit

signal_pending_state.exit.i:                      ; preds = %if.end3.i.i
  %signal.i.i.i = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 116, i32 1
  %50 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %signal.i.i.i, align 4
  %52 = and i32 %51, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i = icmp eq i32 %52, 0
  br i1 %tobool.not.i, label %signal_pending_state.exit.i.if.end10.i_crit_edge, label %signal_pending_state.exit.i.dm_wait_for_bios_completion.exit_crit_edge

signal_pending_state.exit.i.dm_wait_for_bios_completion.exit_crit_edge: ; preds = %signal_pending_state.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %dm_wait_for_bios_completion.exit

signal_pending_state.exit.i.if.end10.i_crit_edge: ; preds = %signal_pending_state.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end10.i

if.end10.i:                                       ; preds = %signal_pending_state.exit.i.if.end10.i_crit_edge, %signal_pending.exit.i.i.if.end10.i_crit_edge, %if.end.i.if.end10.i_crit_edge
  call void @io_schedule() #21
  call void @prepare_to_wait(ptr noundef %wait4.i, ptr noundef nonnull %wait.i, i32 noundef %task_state) #21
  %call129.i.i = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %53 = load i32, ptr @nr_cpu_ids, align 4
  %cmp30.i.i = icmp ult i32 %call129.i.i, %53
  br i1 %cmp30.i.i, label %if.end10.i.do.body.lr.ph.i.i_crit_edge, label %if.end10.i.dm_wait_for_bios_completion.exit_crit_edge

if.end10.i.dm_wait_for_bios_completion.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %dm_wait_for_bios_completion.exit

if.end10.i.do.body.lr.ph.i.i_crit_edge:           ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body.lr.ph.i.i

dm_wait_for_bios_completion.exit:                 ; preds = %if.end10.i.dm_wait_for_bios_completion.exit_crit_edge, %signal_pending_state.exit.i.dm_wait_for_bios_completion.exit_crit_edge, %if.end3.i.i.dm_wait_for_bios_completion.exit_crit_edge, %md_in_flight_bios.exit.i.dm_wait_for_bios_completion.exit_crit_edge, %if.then.dm_wait_for_bios_completion.exit_crit_edge
  %r.0.i = phi i32 [ 0, %if.then.dm_wait_for_bios_completion.exit_crit_edge ], [ 0, %md_in_flight_bios.exit.i.dm_wait_for_bios_completion.exit_crit_edge ], [ -4, %signal_pending_state.exit.i.dm_wait_for_bios_completion.exit_crit_edge ], [ 0, %if.end10.i.dm_wait_for_bios_completion.exit_crit_edge ], [ -4, %if.end3.i.i.dm_wait_for_bios_completion.exit_crit_edge ]
  call void @finish_wait(ptr noundef %wait4.i, ptr noundef nonnull %wait.i) #21
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait.i) #21
  br label %cleanup

if.end5:                                          ; preds = %if.end9.if.end5_crit_edge, %if.end5.lr.ph
  %54 = tail call i32 @llvm.read_register.i32(metadata !297) #21
  %and.i = and i32 %54, -16384
  %55 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %task, align 8
  br i1 %tobool.not.i14, label %if.end5.if.end9_crit_edge, label %if.end.i16

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end9

if.end.i16:                                       ; preds = %if.end5
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %stack.i.i.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %59, align 4
  %62 = and i32 %61, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.i.i15 = icmp eq i32 %62, 0
  br i1 %tobool.not.i.i15, label %signal_pending.exit.i, label %if.end.i16.if.end3.i_crit_edge, !prof !314

if.end.i16.if.end3.i_crit_edge:                   ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end3.i

signal_pending.exit.i:                            ; preds = %if.end.i16
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %59, align 4
  %and1.i.i.i.i.i.i = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i.i)
  %tobool1.not.i = icmp eq i32 %and1.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i, label %signal_pending.exit.i.if.end9_crit_edge, label %signal_pending.exit.i.if.end3.i_crit_edge

signal_pending.exit.i.if.end3.i_crit_edge:        ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end3.i

signal_pending.exit.i.if.end9_crit_edge:          ; preds = %signal_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end9

if.end3.i:                                        ; preds = %signal_pending.exit.i.if.end3.i_crit_edge, %if.end.i16.if.end3.i_crit_edge
  br i1 %tobool5.not.i, label %signal_pending_state.exit, label %if.end3.i.cleanup_crit_edge

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

signal_pending_state.exit:                        ; preds = %if.end3.i
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %57, i32 0, i32 116, i32 1
  %65 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %signal.i.i, align 4
  %67 = and i32 %66, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not = icmp eq i32 %67, 0
  br i1 %tobool.not, label %signal_pending_state.exit.if.end9_crit_edge, label %signal_pending_state.exit.cleanup_crit_edge

signal_pending_state.exit.cleanup_crit_edge:      ; preds = %signal_pending_state.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

signal_pending_state.exit.if.end9_crit_edge:      ; preds = %signal_pending_state.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end9

if.end9:                                          ; preds = %signal_pending_state.exit.if.end9_crit_edge, %signal_pending.exit.i.if.end9_crit_edge, %if.end5.if.end9_crit_edge
  tail call void @msleep(i32 noundef 5) #21
  %68 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %queue, align 4
  %call3 = tail call zeroext i1 @blk_mq_queue_inflight(ptr noundef %69) #21
  br i1 %call3, label %if.end9.if.end5_crit_edge, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end9.if.end5_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end5

cleanup:                                          ; preds = %if.end9.cleanup_crit_edge, %signal_pending_state.exit.cleanup_crit_edge, %if.end3.i.cleanup_crit_edge, %dm_wait_for_bios_completion.exit, %while.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0.i, %dm_wait_for_bios_completion.exit ], [ 0, %while.cond.preheader.cleanup_crit_edge ], [ -4, %signal_pending_state.exit.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ], [ -4, %if.end3.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_internal_resume_fast(ptr noundef %md) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 4
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags.i, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.done_crit_edge

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %done

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags.i, align 4
  %5 = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.done_crit_edge

lor.lhs.false.done_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  br label %done

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i) #21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #21, !srcloc !343
  %wq.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 29
  %6 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wq.i, align 4
  %work.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 16
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %work.i) #21
  br label %done

done:                                             ; preds = %if.end, %lor.lhs.false.done_crit_edge, %entry.done_crit_edge
  tail call void @mutex_unlock(ptr noundef %md) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_kobject_uevent(ptr nocapture noundef readonly %md, i32 noundef %action, i32 noundef %cookie) local_unnamed_addr #0 align 64 {
entry:
  %udev_cookie = alloca [24 x i8], align 1
  %envp = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %udev_cookie) #21
  %0 = call ptr @memset(ptr %udev_cookie, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %envp) #21
  %1 = getelementptr inbounds [2 x ptr], ptr %envp, i32 0, i32 1
  %2 = ptrtoint ptr %envp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %udev_cookie, ptr %envp, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %1, align 4
  %4 = call i32 @llvm.read_register.i32(metadata !297) #21
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %flags1.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags1.i, align 4
  %or.i = or i32 %9, 524288
  store i32 %or.i, ptr %flags1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cookie)
  %tobool.not = icmp eq i32 %cookie, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %disk = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 14
  %10 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %disk, align 8
  %part0 = getelementptr inbounds %struct.gendisk, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %13, i32 0, i32 10
  %call1 = call i32 @kobject_uevent(ptr noundef %bd_device, i32 noundef %action) #21
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %call3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %udev_cookie, i32 noundef 24, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %cookie)
  %disk4 = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 14
  %14 = ptrtoint ptr %disk4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %disk4, align 8
  %part05 = getelementptr inbounds %struct.gendisk, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %part05 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %part05, align 4
  %bd_device6 = getelementptr inbounds %struct.block_device, ptr %17, i32 0, i32 10
  %call9 = call i32 @kobject_uevent_env(ptr noundef %bd_device6, i32 noundef %action, ptr noundef nonnull %envp) #21
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %r.0 = phi i32 [ %call9, %if.else ], [ %call1, %if.then ]
  %and.i = and i32 %9, 524288
  %18 = call i32 @llvm.read_register.i32(metadata !297) #21
  %and.i.i13 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i13 to ptr
  %task.i14 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %task.i14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task.i14, align 8
  %flags1.i15 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %flags1.i15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags1.i15, align 4
  %and.i16 = and i32 %23, -524289
  %or.i17 = or i32 %and.i16, %and.i
  store i32 %or.i17, ptr %flags1.i15, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %envp) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %udev_cookie) #21
  ret i32 %r.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent_env(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_next_uevent_seq(ptr noundef %md) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %uevent_seq = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 23
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %uevent_seq, i32 noundef 4) #21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #21, !srcloc !346
  tail call void @llvm.prefetch.p0(ptr %uevent_seq, i32 1, i32 3, i32 1) #21
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uevent_seq, ptr %uevent_seq, i32 1, ptr elementtype(i32) %uevent_seq) #21, !srcloc !347
  %asmresult.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #21, !srcloc !348
  ret i32 %asmresult.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_get_event_nr(ptr noundef %md) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %event_nr = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 22
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %event_nr, i32 noundef 4) #21
  %0 = ptrtoint ptr %event_nr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %event_nr, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dm_wait_event(ptr noundef %md, i32 noundef %event_nr) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 2642) #21
  %event_nr4 = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 22
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %event_nr4, i32 noundef 4) #21
  %0 = ptrtoint ptr %event_nr4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %event_nr4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %event_nr)
  %cmp.not = icmp eq i32 %1, %event_nr
  br i1 %cmp.not, label %if.then, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end14

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #21
  %2 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #21
  %eventq = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 21
  %call631 = call i32 @prepare_to_wait_event(ptr noundef %eventq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #21
  %call.i.i2132 = call zeroext i1 @__kasan_check_read(ptr noundef %event_nr4, i32 noundef 4) #21
  %3 = ptrtoint ptr %event_nr4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %event_nr4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %event_nr)
  %cmp9.not33 = icmp eq i32 %4, %event_nr
  br i1 %cmp9.not33, label %if.then.if.end_crit_edge, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %if.then.if.end_crit_edge
  %call634 = phi i32 [ %call6, %cleanup.if.end_crit_edge ], [ %call631, %if.then.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call634)
  %tobool.not = icmp eq i32 %call634, 0
  br i1 %tobool.not, label %cleanup, label %if.end.__out_crit_edge

if.end.__out_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %__out

cleanup:                                          ; preds = %if.end
  call void @schedule() #21
  %call6 = call i32 @prepare_to_wait_event(ptr noundef %eventq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #21
  %call.i.i21 = call zeroext i1 @__kasan_check_read(ptr noundef %event_nr4, i32 noundef 4) #21
  %5 = ptrtoint ptr %event_nr4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %event_nr4, align 4
  %cmp9.not = icmp eq i32 %6, %event_nr
  br i1 %cmp9.not, label %cleanup.if.end_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.end

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then.for.end_crit_edge
  call void @finish_wait(ptr noundef %eventq, ptr noundef nonnull %__wq_entry) #21
  br label %__out

__out:                                            ; preds = %for.end, %if.end.__out_crit_edge
  %__ret5.124 = phi i32 [ 0, %for.end ], [ %call634, %if.end.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #21
  br label %if.end14

if.end14:                                         ; preds = %__out, %entry.if.end14_crit_edge
  %__ret.0 = phi i32 [ 0, %entry.if.end14_crit_edge ], [ %__ret5.124, %__out ]
  ret i32 %__ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_uevent_add(ptr noundef %md, ptr noundef %elist) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %uevent_lock = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 25
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %uevent_lock) #21
  %uevent_list = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 24
  %0 = ptrtoint ptr %uevent_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uevent_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %elist, ptr noundef %uevent_list, ptr noundef %1) #21
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %elist, ptr %prev1.i.i, align 4
  %3 = ptrtoint ptr %elist to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %elist, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %elist, i32 0, i32 1
  %4 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %uevent_list, ptr %prev3.i.i, align 4
  %5 = ptrtoint ptr %uevent_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %elist, ptr %uevent_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %uevent_lock, i32 noundef %call2) #21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @dm_kobject(ptr noundef readnone %md) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %kobj_holder = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 31
  ret ptr %kobj_holder
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dm_get_from_kobject(ptr noundef %kobj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kobj, i32 -1832
  tail call void @_raw_spin_lock(ptr noundef nonnull @_minor_lock) #21
  %flags = getelementptr i8, ptr %kobj, i32 -1636
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %5 = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %holders.i = getelementptr i8, ptr %kobj, i32 -1528
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %holders.i, i32 noundef 4) #21
  tail call void @llvm.prefetch.p0(ptr %holders.i, i32 1, i32 3, i32 1) #21
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %holders.i, ptr %holders.i, i32 1, ptr elementtype(i32) %holders.i) #21, !srcloc !307
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags, align 4
  %9 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.end.out_crit_edge, label %do.body3.i, !prof !314

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %out

do.body3.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2046, 0\0A.popsection", ""() #21, !srcloc !335
  unreachable

out:                                              ; preds = %if.end.out_crit_edge, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  %md.0 = phi ptr [ null, %lor.lhs.false.out_crit_edge ], [ null, %entry.out_crit_edge ], [ %add.ptr, %if.end.out_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @_minor_lock) #21
  ret ptr %md.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dm_test_deferred_remove_flag(ptr noundef %md) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %shr.i = lshr i32 %1, 6
  %and1.i = and i32 %shr.i, 1
  ret i32 %and1.i
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dm_suspended(ptr nocapture noundef readonly %ti) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ti, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %flags.i = getelementptr inbounds %struct.mapped_device, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i, align 4
  %shr.i.i = lshr i32 %5, 1
  %and1.i.i = and i32 %shr.i.i, 1
  ret i32 %and1.i.i
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dm_post_suspending(ptr nocapture noundef readonly %ti) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ti, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %flags.i = getelementptr inbounds %struct.mapped_device, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i, align 4
  %shr.i.i = lshr i32 %5, 8
  %and1.i.i = and i32 %shr.i.i, 1
  ret i32 %and1.i.i
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dm_noflush_suspending(ptr nocapture noundef readonly %ti) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ti, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %flags.i = getelementptr inbounds %struct.mapped_device, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i, align 4
  %shr.i.i = lshr i32 %5, 5
  %and1.i.i = and i32 %shr.i.i, 1
  ret i32 %and1.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dm_alloc_md_mempools(ptr nocapture noundef readnone %md, i32 noundef %type, i32 noundef %integrity, i32 noundef %per_io_data_size, i32 noundef %min_pool_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1208) #24
  %tobool.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %type, label %do.body [
    i32 1, label %if.end.sw.bb_crit_edge
    i32 3, label %if.end.sw.bb_crit_edge77
    i32 2, label %sw.bb21
  ]

if.end.sw.bb_crit_edge77:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.bb

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge77
  %2 = load volatile i32, ptr @reserved_bio_based_ios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i = icmp eq i32 %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %2)
  %cmp.i.i = icmp ugt i32 %2, 1024
  %spec.select.i.i = select i1 %cmp.i.i, i32 1024, i32 0
  %modified_param.0.i.i = select i1 %tobool.not.i.i, i32 16, i32 %spec.select.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %modified_param.0.i.i)
  %tobool3.not.i.i = icmp eq i32 %modified_param.0.i.i, 0
  br i1 %tobool3.not.i.i, label %sw.bb.dm_get_reserved_bio_based_ios.exit_crit_edge, label %if.then4.i.i

sw.bb.dm_get_reserved_bio_based_ios.exit_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #23
  br label %dm_get_reserved_bio_based_ios.exit

if.then4.i.i:                                     ; preds = %sw.bb
  %call.i.i.i69 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @reserved_bio_based_ios, i32 noundef 4) #21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #21, !srcloc !311
  tail call void @llvm.prefetch.p0(ptr nonnull @reserved_bio_based_ios, i32 1, i32 3, i32 1) #21
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %if.then4.i.i
  %3 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr nonnull @reserved_bio_based_ios, i32 %2, i32 %modified_param.0.i.i) #21, !srcloc !312
  %asmresult.i.i.i = extractvalue { i32, i32 } %3, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %__cmpxchg.exit.i.i, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.body.i.i.i

__cmpxchg.exit.i.i:                               ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #21, !srcloc !313
  br label %dm_get_reserved_bio_based_ios.exit

dm_get_reserved_bio_based_ios.exit:               ; preds = %__cmpxchg.exit.i.i, %sw.bb.dm_get_reserved_bio_based_ios.exit_crit_edge
  %param.0.i.i = phi i32 [ %modified_param.0.i.i, %__cmpxchg.exit.i.i ], [ %2, %sw.bb.dm_get_reserved_bio_based_ios.exit_crit_edge ]
  %4 = tail call i32 @llvm.umax.i32(i32 %param.0.i.i, i32 %min_pool_size)
  %add = add i32 %per_io_data_size, 7
  %div68 = and i32 %add, -8
  %add3 = add i32 %div68, 24
  %add10 = add i32 %div68, 112
  %io_bs = getelementptr inbounds %struct.dm_md_mempools, ptr %call.i.i.i, i32 0, i32 1
  %call11 = tail call i32 @bioset_init(ptr noundef %io_bs, i32 noundef %4, i32 noundef %add10, i32 noundef 0) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %dm_get_reserved_bio_based_ios.exit.dm_free_md_mempools.exit_crit_edge

dm_get_reserved_bio_based_ios.exit.dm_free_md_mempools.exit_crit_edge: ; preds = %dm_get_reserved_bio_based_ios.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %dm_free_md_mempools.exit

if.end14:                                         ; preds = %dm_get_reserved_bio_based_ios.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %integrity)
  %tobool15.not = icmp eq i32 %integrity, 0
  br i1 %tobool15.not, label %sw.epilog.thread, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end14
  %call17 = tail call i32 @bioset_integrity_create(ptr noundef %io_bs, i32 noundef %4) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.lhs.true.sw.epilog_crit_edge, label %land.lhs.true.dm_free_md_mempools.exit_crit_edge

land.lhs.true.dm_free_md_mempools.exit_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %dm_free_md_mempools.exit

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  %call22 = tail call i32 @dm_get_reserved_rq_based_ios() #21
  %5 = tail call i32 @llvm.umax.i32(i32 %call22, i32 %min_pool_size)
  br label %sw.epilog

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2755, 0\0A.popsection", ""() #21, !srcloc !349
  unreachable

sw.epilog:                                        ; preds = %sw.bb21, %land.lhs.true.sw.epilog_crit_edge
  %front_pad.0 = phi i32 [ 8, %sw.bb21 ], [ %add3, %land.lhs.true.sw.epilog_crit_edge ]
  %pool_size.0 = phi i32 [ %5, %sw.bb21 ], [ %4, %land.lhs.true.sw.epilog_crit_edge ]
  %call32 = tail call i32 @bioset_init(ptr noundef nonnull %call.i.i.i, i32 noundef %pool_size.0, i32 noundef %front_pad.0, i32 noundef 0) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %sw.epilog.dm_free_md_mempools.exit_crit_edge

sw.epilog.dm_free_md_mempools.exit_crit_edge:     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #23
  br label %dm_free_md_mempools.exit

sw.epilog.thread:                                 ; preds = %if.end14
  %call3272 = tail call i32 @bioset_init(ptr noundef nonnull %call.i.i.i, i32 noundef %4, i32 noundef %add3, i32 noundef 0) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3272)
  %tobool33.not73 = icmp eq i32 %call3272, 0
  br i1 %tobool33.not73, label %sw.epilog.thread.cleanup_crit_edge, label %sw.epilog.thread.dm_free_md_mempools.exit_crit_edge

sw.epilog.thread.dm_free_md_mempools.exit_crit_edge: ; preds = %sw.epilog.thread
  call void @__sanitizer_cov_trace_pc() #23
  br label %dm_free_md_mempools.exit

sw.epilog.thread.cleanup_crit_edge:               ; preds = %sw.epilog.thread
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end35:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %integrity)
  %tobool36.not = icmp eq i32 %integrity, 0
  br i1 %tobool36.not, label %if.end35.cleanup_crit_edge, label %land.lhs.true37

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

land.lhs.true37:                                  ; preds = %if.end35
  %call39 = tail call i32 @bioset_integrity_create(ptr noundef nonnull %call.i.i.i, i32 noundef %pool_size.0) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %land.lhs.true37.cleanup_crit_edge, label %land.lhs.true37.dm_free_md_mempools.exit_crit_edge

land.lhs.true37.dm_free_md_mempools.exit_crit_edge: ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #23
  br label %dm_free_md_mempools.exit

land.lhs.true37.cleanup_crit_edge:                ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

dm_free_md_mempools.exit:                         ; preds = %land.lhs.true37.dm_free_md_mempools.exit_crit_edge, %sw.epilog.thread.dm_free_md_mempools.exit_crit_edge, %sw.epilog.dm_free_md_mempools.exit_crit_edge, %land.lhs.true.dm_free_md_mempools.exit_crit_edge, %dm_get_reserved_bio_based_ios.exit.dm_free_md_mempools.exit_crit_edge
  tail call void @bioset_exit(ptr noundef nonnull %call.i.i.i) #21
  %io_bs.i = getelementptr inbounds %struct.dm_md_mempools, ptr %call.i.i.i, i32 0, i32 1
  tail call void @bioset_exit(ptr noundef %io_bs.i) #21
  tail call void @kfree(ptr noundef nonnull %call.i.i.i) #21
  br label %cleanup

cleanup:                                          ; preds = %dm_free_md_mempools.exit, %land.lhs.true37.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %sw.epilog.thread.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %dm_free_md_mempools.exit ], [ null, %entry.cleanup_crit_edge ], [ %call.i.i.i, %land.lhs.true37.cleanup_crit_edge ], [ %call.i.i.i, %if.end35.cleanup_crit_edge ], [ %call.i.i.i, %sw.epilog.thread.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bioset_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bioset_integrity_create(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_get_reserved_rq_based_ios() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dm_free_md_mempools(ptr noundef %pools) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pools, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @bioset_exit(ptr noundef nonnull %pools) #21
  %io_bs = getelementptr inbounds %struct.dm_md_mempools, ptr %pools, i32 0, i32 1
  tail call void @bioset_exit(ptr noundef %io_bs) #21
  tail call void @kfree(ptr noundef nonnull %pools) #21
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bioset_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dm_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.012 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x ptr], ptr @_inits, i32 0, i32 %i.012
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 %1() #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.012)
  %tobool1.not13 = icmp eq i32 %i.012, 0
  br i1 %tobool1.not13, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %i.114 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %i.012, %while.cond.preheader.while.body_crit_edge ]
  %dec = add nsw i32 %i.114, -1
  %arrayidx2 = getelementptr [8 x ptr], ptr @_exits, i32 0, i32 %dec
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  tail call void %3() #21
  %tobool1.not = icmp eq i32 %dec, 0
  br i1 %tobool1.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @local_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  tail call void @flush_workqueue(ptr noundef %0) #21
  %1 = load ptr, ptr @deferred_remove_workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %1) #21
  %2 = load i32, ptr @_major, align 4
  tail call void @unregister_blkdev(i32 noundef %2, ptr noundef nonnull @.str.19) #21
  tail call void @dm_uevent_exit() #21
  store i32 0, ptr @_major, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_target_exit() #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_linear_exit() #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_stripe_exit() #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_io_exit() #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_kcopyd_exit() #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_interface_exit() #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_statistics_exit() #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_blkdev(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_uevent_exit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__srcu_read_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr noundef %map) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @lock_acquire(ptr noundef %map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr noundef %map) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @lock_release(ptr noundef %map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__srcu_read_unlock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blkdev_get_by_dev(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bd_link_disk_holder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blkdev_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bd_unlink_disk_holder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_dax(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_stats_account_io(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_end_io_acct_remapped(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__init_srcu_struct(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__blk_alloc_disk(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dm_wq_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %work, i32 -148
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %and1.i8 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i8)
  %tobool.not9 = icmp eq i32 %and1.i8, 0
  br i1 %tobool.not9, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %deferred_lock = getelementptr i8, ptr %work, i32 96
  %deferred = getelementptr i8, ptr %work, i32 140
  %tail.i = getelementptr i8, ptr %work, i32 144
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  tail call void @_raw_spin_lock_irq(ptr noundef %deferred_lock) #21
  %2 = ptrtoint ptr %deferred to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %deferred, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %bio_list_pop.exit.thread, label %if.then.i

bio_list_pop.exit.thread:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @_raw_spin_unlock_irq(ptr noundef %deferred_lock) #21
  br label %while.end

if.then.i:                                        ; preds = %while.body
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = ptrtoint ptr %deferred to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %deferred, align 4
  %tobool4.not.i = icmp eq ptr %5, null
  br i1 %tobool4.not.i, label %if.then5.i, label %if.then.i.if.end_crit_edge

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #23
  %7 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %tail.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5.i, %if.then.i.if.end_crit_edge
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %3, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %deferred_lock) #21
  tail call void @submit_bio_noacct(ptr noundef nonnull %3) #21
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %10, 1
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.body

while.end:                                        ; preds = %if.end.while.end_crit_edge, %bio_list_pop.exit.thread, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_stats_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_replace(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cleanup_mapped_device(ptr noundef %md) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %wq = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 29
  %0 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wq, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @destroy_workqueue(ptr noundef nonnull %1) #21
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %bs = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 28
  tail call void @bioset_exit(ptr noundef %bs) #21
  %io_bs = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 27
  tail call void @bioset_exit(ptr noundef %io_bs) #21
  %dax_dev = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 15
  %2 = ptrtoint ptr %dax_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dax_dev, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @kill_dax(ptr noundef nonnull %3) #21
  %4 = ptrtoint ptr %dax_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dax_dev, align 4
  tail call void @put_dax(ptr noundef %5) #21
  %6 = ptrtoint ptr %dax_dev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %dax_dev, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.if.end7_crit_edge
  %disk8 = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 14
  %7 = ptrtoint ptr %disk8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %disk8, align 8
  %tobool9.not = icmp eq ptr %8, null
  br i1 %tobool9.not, label %if.end7.if.end16_crit_edge, label %if.then10

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end16

if.then10:                                        ; preds = %if.end7
  tail call void @_raw_spin_lock(ptr noundef nonnull @_minor_lock) #21
  %9 = ptrtoint ptr %disk8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %disk8, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %10, i32 0, i32 10
  %11 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %private_data, align 8
  tail call void @_raw_spin_unlock(ptr noundef nonnull @_minor_lock) #21
  %type.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 6
  %12 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not = icmp eq i32 %13, 0
  br i1 %cmp.not, label %if.then10.if.end14_crit_edge, label %if.then12

if.then10.if.end14_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end14

if.then12:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @dm_sysfs_exit(ptr noundef %md) #21
  %14 = ptrtoint ptr %disk8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %disk8, align 8
  tail call void @del_gendisk(ptr noundef %15) #21
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.then10.if.end14_crit_edge
  %queue = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 8
  %16 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %queue, align 4
  %crypto_profile.i = getelementptr inbounds %struct.request_queue, ptr %17, i32 0, i32 24
  %18 = ptrtoint ptr %crypto_profile.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %crypto_profile.i, align 4
  tail call void @dm_destroy_crypto_profile(ptr noundef %19) #21
  %20 = ptrtoint ptr %disk8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %disk8, align 8
  tail call void @blk_cleanup_disk(ptr noundef %21) #21
  br label %if.end16

if.end16:                                         ; preds = %if.end14, %if.end7.if.end16_crit_edge
  %io_barrier = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 38
  tail call void @cleanup_srcu_struct(ptr noundef %io_barrier) #21
  tail call void @mutex_destroy(ptr noundef %md) #21
  %type_lock = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 5
  tail call void @mutex_destroy(ptr noundef %type_lock) #21
  %table_devices_lock = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 1
  tail call void @mutex_destroy(ptr noundef %table_devices_lock) #21
  %swap_bios_lock = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 34
  tail call void @mutex_destroy(ptr noundef %swap_bios_lock) #21
  tail call void @dm_mq_cleanup_mapped_device(ptr noundef %md) #21
  tail call void @dm_cleanup_zoned_dev(ptr noundef %md) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_preload(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_lock_release(ptr noundef %l) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end35_crit_edge

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end35

land.lhs.true:                                    ; preds = %entry
  %owner = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %1 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %owner, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !297) #21
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %cmp.not = icmp eq ptr %2, %6
  br i1 %cmp.not, label %land.lhs.true.if.end35_crit_edge, label %do.end, !prof !314

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end35

do.end:                                           ; preds = %land.lhs.true
  %call3 = tail call i32 @debug_locks_off() #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end.if.end35_crit_edge, label %land.lhs.true5

do.end.if.end35_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end35

land.lhs.true5:                                   ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %7 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %do.end19, label %land.lhs.true5.if.end35_crit_edge

land.lhs.true5.if.end35_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end35

do.end19:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #23
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 36, i32 noundef 9, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49) #21
  br label %if.end35

if.end35:                                         ; preds = %do.end19, %land.lhs.true5.if.end35_crit_edge, %do.end.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %entry.if.end35_crit_edge
  %owner37 = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %8 = ptrtoint ptr %owner37 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %owner37, align 4
  br label %__here

__here:                                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @lock_release(ptr noundef %l, i32 noundef ptrtoint (ptr blockaddress(@local_lock_release, %__here) to i32)) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_locks_off() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #16

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio_noacct(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dm_submit_bio(ptr noundef %bio) #0 align 64 {
entry:
  %flush_bio.i.i = alloca %struct.bio, align 8
  %ci.i = alloca %struct.clone_info, align 8
  %bio.addr = alloca ptr, align 4
  %srcu_idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bio.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %bio, ptr %bio.addr, align 4
  %bi_bdev = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %1 = ptrtoint ptr %bi_bdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bi_bdev, align 4
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %2, i32 0, i32 17
  %3 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private_data, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %srcu_idx) #21
  %7 = ptrtoint ptr %srcu_idx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %srcu_idx, align 4, !annotation !336
  %call = call ptr @dm_get_live_table(ptr noundef %6, ptr noundef nonnull %srcu_idx)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end9, !prof !316

if.then:                                          ; preds = %entry
  %call4 = tail call i32 @___ratelimit(ptr noundef nonnull @dm_submit_bio._rs, ptr noundef nonnull @__func__.dm_submit_bio) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then.if.end_crit_edge, label %do.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  %name.i = getelementptr inbounds %struct.mapped_device, ptr %6, i32 0, i32 13
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %name.i) #25
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %8 = ptrtoint ptr %bio.addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bio.addr, align 4
  %bi_status.i = getelementptr inbounds %struct.bio, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %bi_status.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 10, ptr %bi_status.i, align 2
  tail call void @bio_endio(ptr noundef %9) #21
  br label %out

if.end9:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.mapped_device, ptr %6, i32 0, i32 4
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool11.not = icmp eq i32 %and1.i, 0
  %13 = ptrtoint ptr %bio.addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bio.addr, align 4
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bi_opf.i, align 8
  br i1 %tobool11.not, label %if.end29, label %if.then18, !prof !314

if.then18:                                        ; preds = %if.end9
  %conv = zext i32 %16 to i64
  %and = and i64 %conv, 2097152
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool19.not = icmp eq i64 %and, 0
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #23
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %14, i32 0, i32 3
  %17 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %bi_flags.i.i, align 4
  %19 = or i16 %18, 16
  store i16 %19, ptr %bi_flags.i.i, align 4
  %bi_status.i39 = getelementptr inbounds %struct.bio, ptr %14, i32 0, i32 6
  %20 = ptrtoint ptr %bi_status.i39 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 12, ptr %bi_status.i39, align 2
  tail call void @bio_endio(ptr noundef %14) #21
  br label %out

if.else:                                          ; preds = %if.then18
  %and23 = and i64 %conv, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and23)
  %tobool24.not = icmp eq i64 %and23, 0
  br i1 %tobool24.not, label %if.else26, label %if.then25

if.then25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #23
  %bi_status.i40 = getelementptr inbounds %struct.bio, ptr %14, i32 0, i32 6
  %21 = ptrtoint ptr %bi_status.i40 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 10, ptr %bi_status.i40, align 2
  tail call void @bio_endio(ptr noundef %14) #21
  br label %out

if.else26:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #23
  tail call fastcc void @queue_io(ptr noundef %6, ptr noundef %14)
  br label %out

if.end29:                                         ; preds = %if.end9
  %trunc.i = trunc i32 %16 to i8
  %22 = add i8 %trunc.i, -3
  %switch.and.i = and i8 %22, -7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %switch.and.i)
  %switch.selectcmp.i = icmp eq i8 %switch.and.i, 0
  br i1 %switch.selectcmp.i, label %if.then31, label %if.end29.if.end32_crit_edge

if.end29.if.end32_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end32

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #23
  call void @blk_queue_split(ptr noundef nonnull %bio.addr) #21
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end29.if.end32_crit_edge
  %23 = ptrtoint ptr %bio.addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bio.addr, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ci.i) #21
  %25 = call ptr @memset(ptr %ci.i, i32 255, i32 32)
  %26 = ptrtoint ptr %ci.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call, ptr %ci.i, align 8
  %io_bs.i.i.i = getelementptr inbounds %struct.mapped_device, ptr %6, i32 0, i32 27
  %call.i.i.i = call ptr @bio_alloc_bioset(i32 noundef 3072, i16 noundef zeroext 0, ptr noundef %io_bs.i.i.i) #21
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end32.init_clone_info.exit.i_crit_edge, label %if.end.i.i.i

if.end32.init_clone_info.exit.i_crit_edge:        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #23
  br label %init_clone_info.exit.i

if.end.i.i.i:                                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #23
  %inside_dm_io.i.i.i = getelementptr i8, ptr %call.i.i.i, i32 -4
  %27 = ptrtoint ptr %inside_dm_io.i.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %inside_dm_io.i.i.i, align 4
  %io1.i.i.i = getelementptr i8, ptr %call.i.i.i, i32 -20
  %28 = ptrtoint ptr %io1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %io1.i.i.i, align 4
  %add.ptr4.i.i.i = getelementptr i8, ptr %call.i.i.i, i32 -112
  %29 = ptrtoint ptr %add.ptr4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 5191977, ptr %add.ptr4.i.i.i, align 8
  %status.i.i.i = getelementptr i8, ptr %call.i.i.i, i32 -104
  %30 = ptrtoint ptr %status.i.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %status.i.i.i, align 8
  %io_count.i.i.i = getelementptr i8, ptr %call.i.i.i, i32 -100
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %io_count.i.i.i, i32 noundef 4) #21
  %31 = ptrtoint ptr %io_count.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 1, ptr %io_count.i.i.i, align 4
  %orig_bio.i.i.i = getelementptr i8, ptr %call.i.i.i, i32 -96
  %32 = ptrtoint ptr %orig_bio.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %24, ptr %orig_bio.i.i.i, align 8
  %md5.i.i.i = getelementptr i8, ptr %call.i.i.i, i32 -108
  %33 = ptrtoint ptr %md5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %6, ptr %md5.i.i.i, align 4
  %endio_lock.i.i.i = getelementptr i8, ptr %call.i.i.i, i32 -88
  call void @__raw_spin_lock_init(ptr noundef %endio_lock.i.i.i, ptr noundef nonnull @.str.55, ptr noundef nonnull @alloc_io.__key, i16 noundef signext 3) #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %34 = load volatile i32, ptr @jiffies, align 128
  %start_time.i.i.i = getelementptr i8, ptr %call.i.i.i, i32 -92
  %35 = ptrtoint ptr %start_time.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %start_time.i.i.i, align 4
  br label %init_clone_info.exit.i

init_clone_info.exit.i:                           ; preds = %if.end.i.i.i, %if.end32.init_clone_info.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %add.ptr4.i.i.i, %if.end.i.i.i ], [ null, %if.end32.init_clone_info.exit.i_crit_edge ]
  %io.i.i = getelementptr inbounds %struct.clone_info, ptr %ci.i, i32 0, i32 2
  %36 = ptrtoint ptr %io.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %retval.0.i.i.i, ptr %io.i.i, align 8
  %bi_iter.i.i = getelementptr inbounds %struct.bio, ptr %24, i32 0, i32 8
  %37 = ptrtoint ptr %bi_iter.i.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %bi_iter.i.i, align 8
  %sector.i.i = getelementptr inbounds %struct.clone_info, ptr %ci.i, i32 0, i32 3
  %39 = ptrtoint ptr %sector.i.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %sector.i.i, align 8
  %bi_opf.i41 = getelementptr inbounds %struct.bio, ptr %24, i32 0, i32 2
  %40 = ptrtoint ptr %bi_opf.i41 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bi_opf.i41, align 8
  %42 = and i32 %41, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i = icmp eq i32 %42, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %init_clone_info.exit.i
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %flush_bio.i.i) #21
  %43 = call ptr @memset(ptr %flush_bio.i.i, i32 255, i32 104)
  call void @bio_init(ptr noundef nonnull %flush_bio.i.i, ptr noundef null, i16 noundef zeroext 0) #21
  %bi_opf.i.i = getelementptr inbounds %struct.bio, ptr %flush_bio.i.i, i32 0, i32 2
  %44 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 264193, ptr %bi_opf.i.i, align 8
  %md.i.i = getelementptr inbounds %struct.dm_io, ptr %retval.0.i.i.i, i32 0, i32 1
  %45 = ptrtoint ptr %md.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %md.i.i, align 4
  %disk.i.i = getelementptr inbounds %struct.mapped_device, ptr %46, i32 0, i32 14
  %47 = ptrtoint ptr %disk.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %disk.i.i, align 8
  %part0.i.i = getelementptr inbounds %struct.gendisk, ptr %48, i32 0, i32 7
  %49 = ptrtoint ptr %part0.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %part0.i.i, align 4
  %bi_flags.i.i.i.i = getelementptr inbounds %struct.bio, ptr %flush_bio.i.i, i32 0, i32 3
  %51 = ptrtoint ptr %bi_flags.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %bi_flags.i.i.i.i, align 4
  %conv1.i.i.i.i = and i16 %52, -2049
  store i16 %conv1.i.i.i.i, ptr %bi_flags.i.i.i.i, align 4
  %bi_bdev.i.i.i = getelementptr inbounds %struct.bio, ptr %flush_bio.i.i, i32 0, i32 1
  %53 = ptrtoint ptr %bi_bdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bi_bdev.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %54, %50
  br i1 %cmp.not.i.i.i, label %if.then.i.bio_set_dev.exit.i.i_crit_edge, label %if.then.i.i.i

if.then.i.bio_set_dev.exit.i.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %bio_set_dev.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #23
  %conv1.i8.i.i.i = and i16 %52, -2177
  %55 = ptrtoint ptr %bi_flags.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv1.i8.i.i.i, ptr %bi_flags.i.i.i.i, align 4
  br label %bio_set_dev.exit.i.i

bio_set_dev.exit.i.i:                             ; preds = %if.then.i.i.i, %if.then.i.bio_set_dev.exit.i.i_crit_edge
  %56 = ptrtoint ptr %bi_bdev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %50, ptr %bi_bdev.i.i.i, align 4
  call void @bio_associate_blkg(ptr noundef nonnull %flush_bio.i.i) #21
  %bio.i.i = getelementptr inbounds %struct.clone_info, ptr %ci.i, i32 0, i32 1
  %57 = ptrtoint ptr %bio.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %flush_bio.i.i, ptr %bio.i.i, align 4
  %sector_count.i.i = getelementptr inbounds %struct.clone_info, ptr %ci.i, i32 0, i32 4
  %58 = ptrtoint ptr %sector_count.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %sector_count.i.i, align 8
  %bi_size.i.i.i = getelementptr inbounds %struct.bio, ptr %flush_bio.i.i, i32 0, i32 8, i32 1
  %59 = ptrtoint ptr %bi_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %bi_size.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool1.not.i.i.i = icmp eq i32 %60, 0
  br i1 %tobool1.not.i.i.i, label %bio_set_dev.exit.i.i.bio_has_data.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

bio_set_dev.exit.i.i.bio_has_data.exit.i.i_crit_edge: ; preds = %bio_set_dev.exit.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %bio_has_data.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %bio_set_dev.exit.i.i
  %61 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %bi_opf.i.i, align 8
  %trunc.i.i.i = trunc i32 %62 to i8
  %63 = zext i8 %trunc.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.83)
  switch i8 %trunc.i.i.i, label %do.body3.i.i [
    i8 3, label %land.lhs.true2.i.i.i.bio_has_data.exit.i.i_crit_edge
    i8 5, label %land.lhs.true2.i.i.i.bio_has_data.exit.i.i_crit_edge43
    i8 9, label %land.lhs.true2.i.i.i.bio_has_data.exit.i.i_crit_edge44
  ]

land.lhs.true2.i.i.i.bio_has_data.exit.i.i_crit_edge44: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %bio_has_data.exit.i.i

land.lhs.true2.i.i.i.bio_has_data.exit.i.i_crit_edge43: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %bio_has_data.exit.i.i

land.lhs.true2.i.i.i.bio_has_data.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %bio_has_data.exit.i.i

bio_has_data.exit.i.i:                            ; preds = %land.lhs.true2.i.i.i.bio_has_data.exit.i.i_crit_edge, %land.lhs.true2.i.i.i.bio_has_data.exit.i.i_crit_edge43, %land.lhs.true2.i.i.i.bio_has_data.exit.i.i_crit_edge44, %bio_set_dev.exit.i.i.bio_has_data.exit.i.i_crit_edge
  %call92.i.i = call ptr @dm_table_get_target(ptr noundef nonnull %call, i32 noundef 0) #21
  %tobool10.not3.i.i = icmp eq ptr %call92.i.i, null
  br i1 %tobool10.not3.i.i, label %bio_has_data.exit.i.i.__send_empty_flush.exit.i_crit_edge, label %bio_has_data.exit.i.i.while.body.i.i_crit_edge

bio_has_data.exit.i.i.while.body.i.i_crit_edge:   ; preds = %bio_has_data.exit.i.i
  br label %while.body.i.i

bio_has_data.exit.i.i.__send_empty_flush.exit.i_crit_edge: ; preds = %bio_has_data.exit.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %__send_empty_flush.exit.i

do.body3.i.i:                                     ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1314, 0\0A.popsection", ""() #21, !srcloc !350
  unreachable

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %bio_has_data.exit.i.i.while.body.i.i_crit_edge
  %call95.i.i = phi ptr [ %call9.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %call92.i.i, %bio_has_data.exit.i.i.while.body.i.i_crit_edge ]
  %target_nr.04.i.i = phi i32 [ %inc.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 0, %bio_has_data.exit.i.i.while.body.i.i_crit_edge ]
  %inc.i.i = add i32 %target_nr.04.i.i, 1
  %num_flush_bios.i.i = getelementptr inbounds %struct.dm_target, ptr %call95.i.i, i32 0, i32 5
  %64 = ptrtoint ptr %num_flush_bios.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %num_flush_bios.i.i, align 4
  call fastcc void @__send_duplicate_bios(ptr noundef nonnull %ci.i, ptr noundef nonnull %call95.i.i, i32 noundef %65, ptr noundef null) #21
  %call9.i.i = call ptr @dm_table_get_target(ptr noundef nonnull %call, i32 noundef %inc.i.i) #21
  %tobool10.not.i.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool10.not.i.i, label %while.body.i.i.__send_empty_flush.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.body.i.i

while.body.i.i.__send_empty_flush.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %__send_empty_flush.exit.i

__send_empty_flush.exit.i:                        ; preds = %while.body.i.i.__send_empty_flush.exit.i_crit_edge, %bio_has_data.exit.i.i.__send_empty_flush.exit.i_crit_edge
  call void @bio_uninit(ptr noundef nonnull %flush_bio.i.i) #21
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %flush_bio.i.i) #21
  br label %if.end23.i

if.else.i:                                        ; preds = %init_clone_info.exit.i
  %trunc.i.i = trunc i32 %41 to i8
  %66 = zext i8 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.84)
  switch i8 %trunc.i.i, label %if.else7.i [
    i8 15, label %if.else.i.if.then4.i_crit_edge
    i8 10, label %if.else.i.if.then4.i_crit_edge45
    i8 11, label %if.else.i.if.then4.i_crit_edge46
    i8 12, label %if.else.i.if.then4.i_crit_edge47
  ]

if.else.i.if.then4.i_crit_edge47:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then4.i

if.else.i.if.then4.i_crit_edge46:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then4.i

if.else.i.if.then4.i_crit_edge45:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then4.i

if.else.i.if.then4.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then4.i

if.then4.i:                                       ; preds = %if.else.i.if.then4.i_crit_edge, %if.else.i.if.then4.i_crit_edge45, %if.else.i.if.then4.i_crit_edge46, %if.else.i.if.then4.i_crit_edge47
  %bio5.i = getelementptr inbounds %struct.clone_info, ptr %ci.i, i32 0, i32 1
  %67 = ptrtoint ptr %bio5.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %24, ptr %bio5.i, align 4
  %sector_count.i = getelementptr inbounds %struct.clone_info, ptr %ci.i, i32 0, i32 4
  %68 = ptrtoint ptr %sector_count.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %sector_count.i, align 8
  %call6.i = call fastcc i32 @__split_and_process_non_flush(ptr noundef nonnull %ci.i) #21
  br label %if.end23.i

if.else7.i:                                       ; preds = %if.else.i
  %bio8.i = getelementptr inbounds %struct.clone_info, ptr %ci.i, i32 0, i32 1
  %69 = ptrtoint ptr %bio8.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %24, ptr %bio8.i, align 4
  %bi_size.i = getelementptr inbounds %struct.bio, ptr %24, i32 0, i32 8, i32 1
  %70 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %bi_size.i, align 8
  %shr.i = lshr i32 %71, 9
  %sector_count9.i = getelementptr inbounds %struct.clone_info, ptr %ci.i, i32 0, i32 4
  %72 = ptrtoint ptr %sector_count9.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %shr.i, ptr %sector_count9.i, align 8
  %call10.i = call fastcc i32 @__split_and_process_non_flush(ptr noundef nonnull %ci.i) #21
  %73 = ptrtoint ptr %sector_count9.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %sector_count9.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool12.not.i = icmp ne i32 %74, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool13.not.i = icmp eq i32 %call10.i, 0
  %or.cond.i = select i1 %tobool12.not.i, i1 %tobool13.not.i, i1 false
  br i1 %or.cond.i, label %if.then14.i, label %if.else7.i.if.end23.i_crit_edge

if.else7.i.if.end23.i_crit_edge:                  ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end23.i

if.then14.i:                                      ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #23
  %75 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %bi_size.i, align 8
  %shr17.i = lshr i32 %76, 9
  %sub.i = sub i32 %shr17.i, %74
  %queue.i = getelementptr inbounds %struct.mapped_device, ptr %6, i32 0, i32 8
  %77 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %queue.i, align 4
  %bio_split.i = getelementptr inbounds %struct.request_queue, ptr %78, i32 0, i32 63
  %call19.i = call ptr @bio_split(ptr noundef %24, i32 noundef %sub.i, i32 noundef 3072, ptr noundef %bio_split.i) #21
  %79 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %io.i.i, align 8
  %orig_bio.i = getelementptr inbounds %struct.dm_io, ptr %80, i32 0, i32 4
  %81 = ptrtoint ptr %orig_bio.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call19.i, ptr %orig_bio.i, align 8
  call void @bio_chain(ptr noundef %call19.i, ptr noundef %24) #21
  %82 = ptrtoint ptr %bi_iter.i.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %bi_iter.i.i, align 8
  %conv21.i = trunc i64 %83 to i32
  call fastcc void @trace_block_split(ptr noundef %call19.i, i32 noundef %conv21.i) #21
  call void @submit_bio_noacct(ptr noundef %24) #21
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then14.i, %if.else7.i.if.end23.i_crit_edge, %if.then4.i, %__send_empty_flush.exit.i
  %error.0.i = phi i32 [ 0, %__send_empty_flush.exit.i ], [ %call6.i, %if.then4.i ], [ 0, %if.then14.i ], [ %call10.i, %if.else7.i.if.end23.i_crit_edge ]
  %84 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %io.i.i, align 8
  %md1.i.i = getelementptr inbounds %struct.dm_io, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %md1.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %md1.i.i, align 4
  %orig_bio.i.i = getelementptr inbounds %struct.dm_io, ptr %85, i32 0, i32 4
  %88 = ptrtoint ptr %orig_bio.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %orig_bio.i.i, align 8
  %start_time.i.i = getelementptr inbounds %struct.dm_io, ptr %85, i32 0, i32 5
  %90 = ptrtoint ptr %start_time.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %start_time.i.i, align 4
  call void @bio_start_io_acct_time(ptr noundef %89, i32 noundef %91) #21
  %list.i.i.i = getelementptr inbounds %struct.mapped_device, ptr %87, i32 0, i32 35, i32 1
  %92 = ptrtoint ptr %list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile ptr, ptr %list.i.i.i, align 4
  %cmp.i.i.not.i.i = icmp eq ptr %93, %list.i.i.i
  br i1 %cmp.i.i.not.i.i, label %if.end23.i.__split_and_process_bio.exit_crit_edge, label %if.then.i.i, !prof !314

if.end23.i.__split_and_process_bio.exit_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %__split_and_process_bio.exit

if.then.i.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #23
  %stats.i.i = getelementptr inbounds %struct.mapped_device, ptr %87, i32 0, i32 35
  %bi_opf.i42.i = getelementptr inbounds %struct.bio, ptr %89, i32 0, i32 2
  %94 = ptrtoint ptr %bi_opf.i42.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %bi_opf.i42.i, align 8
  %and.i.i.i = and i32 %95, 1
  %bi_iter.i43.i = getelementptr inbounds %struct.bio, ptr %89, i32 0, i32 8
  %96 = ptrtoint ptr %bi_iter.i43.i to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %bi_iter.i43.i, align 8
  %bi_size.i.i = getelementptr inbounds %struct.bio, ptr %89, i32 0, i32 8, i32 1
  %98 = ptrtoint ptr %bi_size.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %bi_size.i.i, align 8
  %shr.i.i = lshr i32 %99, 9
  %stats_aux.i.i = getelementptr inbounds %struct.dm_io, ptr %85, i32 0, i32 7
  call void @dm_stats_account_io(ptr noundef %stats.i.i, i32 noundef %and.i.i.i, i64 noundef %97, i32 noundef %shr.i.i, i1 noundef zeroext false, i32 noundef 0, ptr noundef %stats_aux.i.i) #21
  br label %__split_and_process_bio.exit

__split_and_process_bio.exit:                     ; preds = %if.then.i.i, %if.end23.i.__split_and_process_bio.exit_crit_edge
  %call26.i = call zeroext i8 @errno_to_blk_status(i32 noundef %error.0.i) #21
  call void @dm_io_dec_pending(ptr noundef %85, i8 noundef zeroext %call26.i) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ci.i) #21
  br label %out

out:                                              ; preds = %__split_and_process_bio.exit, %if.else26, %if.then25, %if.then20, %if.end
  %100 = ptrtoint ptr %srcu_idx to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %srcu_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %101)
  %tobool.not.i.i = icmp ult i32 %101, 2
  br i1 %tobool.not.i.i, label %out.dm_put_live_table.exit_crit_edge, label %land.rhs.i.i

out.dm_put_live_table.exit_crit_edge:             ; preds = %out
  call void @__sanitizer_cov_trace_pc() #23
  br label %dm_put_live_table.exit

land.rhs.i.i:                                     ; preds = %out
  %.b40.i.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b40.i.i, label %land.rhs.i.i.dm_put_live_table.exit_crit_edge, label %if.then.i.i42, !prof !314

land.rhs.i.i.dm_put_live_table.exit_crit_edge:    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %dm_put_live_table.exit

if.then.i.i42:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #23
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 189, i32 noundef 9, ptr noundef null) #21
  br label %dm_put_live_table.exit

dm_put_live_table.exit:                           ; preds = %if.then.i.i42, %land.rhs.i.i.dm_put_live_table.exit_crit_edge, %out.dm_put_live_table.exit_crit_edge
  %io_barrier.i = getelementptr inbounds %struct.mapped_device, ptr %6, i32 0, i32 38
  %dep_map.i.i = getelementptr inbounds %struct.mapped_device, ptr %6, i32 0, i32 38, i32 16
  call fastcc void @rcu_lock_release(ptr noundef %dep_map.i.i) #21
  call void @__srcu_read_unlock(ptr noundef %io_barrier.i, i32 noundef %101) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %srcu_idx) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm_blk_open(ptr nocapture noundef readonly %bdev, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @_minor_lock) #21
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %out

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.mapped_device, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags, align 4
  %6 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.not = icmp eq i32 %6, 0
  br i1 %tobool1.not, label %lor.lhs.false, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %out

lor.lhs.false:                                    ; preds = %if.end
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags, align 4
  %9 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp eq i32 %9, 0
  br i1 %tobool3.not, label %if.end5, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  br label %out

if.end5:                                          ; preds = %lor.lhs.false
  %holders.i = getelementptr inbounds %struct.mapped_device, ptr %3, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %holders.i, i32 noundef 4) #21
  tail call void @llvm.prefetch.p0(ptr %holders.i, i32 1, i32 3, i32 1) #21
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %holders.i, ptr %holders.i, i32 1, ptr elementtype(i32) %holders.i) #21, !srcloc !307
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags, align 4
  %13 = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %dm_get.exit, label %do.body3.i, !prof !314

do.body3.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #23
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2046, 0\0A.popsection", ""() #21, !srcloc !335
  unreachable

dm_get.exit:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #23
  %open_count = getelementptr inbounds %struct.mapped_device, ptr %3, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %open_count, i32 noundef 4) #21
  tail call void @llvm.prefetch.p0(ptr %open_count, i32 1, i32 3, i32 1) #21
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %open_count, ptr %open_count, i32 1, ptr elementtype(i32) %open_count) #21, !srcloc !307
  br label %out

out:                                              ; preds = %dm_get.exit, %lor.lhs.false.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %md.0 = phi i32 [ 0, %dm_get.exit ], [ -6, %entry.out_crit_edge ], [ -6, %lor.lhs.false.out_crit_edge ], [ -6, %if.end.out_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @_minor_lock) #21
  ret i32 %md.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dm_blk_close(ptr nocapture noundef readonly %disk, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @_minor_lock) #21
  %private_data = getelementptr inbounds %struct.gendisk, ptr %disk, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end23.critedge, !prof !316

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 338, i32 noundef 9, ptr noundef null) #21
  br label %out

if.end23.critedge:                                ; preds = %entry
  %open_count = getelementptr inbounds %struct.mapped_device, ptr %1, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %open_count, i32 noundef 4) #21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #21, !srcloc !320
  tail call void @llvm.prefetch.p0(ptr %open_count, i32 1, i32 3, i32 1) #21
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %open_count, ptr %open_count, i32 1, ptr elementtype(i32) %open_count) #21, !srcloc !321
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #21, !srcloc !322
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true, label %if.end23.critedge.if.end28_crit_edge

if.end23.critedge.if.end28_crit_edge:             ; preds = %if.end23.critedge
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end28

land.lhs.true:                                    ; preds = %if.end23.critedge
  %flags = getelementptr inbounds %struct.mapped_device, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %5 = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool25.not = icmp eq i32 %5, 0
  br i1 %tobool25.not, label %land.lhs.true.if.end28_crit_edge, label %if.then26

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end28

if.then26:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  %6 = load ptr, ptr @deferred_remove_workqueue, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef nonnull @deferred_remove_work) #21
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %land.lhs.true.if.end28_crit_edge, %if.end23.critedge.if.end28_crit_edge
  %holders.i = getelementptr inbounds %struct.mapped_device, ptr %1, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %holders.i, i32 noundef 4) #21
  tail call void @llvm.prefetch.p0(ptr %holders.i, i32 1, i32 3, i32 1) #21
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %holders.i, ptr %holders.i, i32 1, ptr elementtype(i32) %holders.i) #21, !srcloc !337
  br label %out

out:                                              ; preds = %if.end28, %do.end
  tail call void @_raw_spin_unlock(ptr noundef nonnull @_minor_lock) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm_blk_ioctl(ptr noundef %bdev, i32 noundef %mode, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %bdev.addr = alloca ptr, align 4
  %srcu_idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bdev.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %bdev, ptr %bdev.addr, align 4
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %1 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %2, i32 0, i32 10
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %srcu_idx) #21
  %5 = ptrtoint ptr %srcu_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %srcu_idx, align 4, !annotation !336
  %call = call fastcc i32 @dm_prepare_ioctl(ptr noundef %4, ptr noundef nonnull %srcu_idx, ptr noundef nonnull %bdev.addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1.not = icmp eq i32 %call, 0
  br i1 %cmp1.not, label %if.end.if.end14_crit_edge, label %if.then2

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end14

if.then2:                                         ; preds = %if.end
  %call3 = call zeroext i1 @capable(i32 noundef 17) #21
  br i1 %call3, label %if.then2.if.end14_crit_edge, label %do.body

if.then2.if.end14_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end14

do.body:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm_blk_ioctl.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm_blk_ioctl, %land.lhs.true)) #21
          to label %out [label %land.lhs.true], !srcloc !342

land.lhs.true:                                    ; preds = %do.body
  %call8 = call i32 @___ratelimit(ptr noundef nonnull @dm_blk_ioctl._rs, ptr noundef nonnull @.str.66) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.out_crit_edge, label %if.then10

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %out

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  %6 = call i32 @llvm.read_register.i32(metadata !297) #21
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %comm = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 101
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dm_blk_ioctl.descriptor, ptr noundef nonnull @.str.67, ptr noundef %comm, i32 noundef %cmd) #21
  br label %out

if.end14:                                         ; preds = %if.then2.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %10 = ptrtoint ptr %bdev.addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bdev.addr, align 4
  %bd_disk15 = getelementptr inbounds %struct.block_device, ptr %11, i32 0, i32 17
  %12 = ptrtoint ptr %bd_disk15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bd_disk15, align 8
  %fops = getelementptr inbounds %struct.gendisk, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fops, align 8
  %ioctl = getelementptr inbounds %struct.block_device_operations, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %ioctl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ioctl, align 4
  %tobool16.not = icmp eq ptr %17, null
  br i1 %tobool16.not, label %if.end14.out_crit_edge, label %if.else

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #23
  br label %out

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #23
  %call21 = call i32 %17(ptr noundef %11, i32 noundef %mode, i32 noundef %cmd, i32 noundef %arg) #21
  br label %out

out:                                              ; preds = %if.else, %if.end14.out_crit_edge, %if.then10, %land.lhs.true.out_crit_edge, %do.body, %entry.out_crit_edge
  %r.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call21, %if.else ], [ -515, %if.then10 ], [ -515, %land.lhs.true.out_crit_edge ], [ -25, %if.end14.out_crit_edge ], [ -515, %do.body ]
  %18 = ptrtoint ptr %srcu_idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %srcu_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %tobool.not.i.i.i = icmp ult i32 %19, 2
  br i1 %tobool.not.i.i.i, label %out.dm_unprepare_ioctl.exit_crit_edge, label %land.rhs.i.i.i

out.dm_unprepare_ioctl.exit_crit_edge:            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #23
  br label %dm_unprepare_ioctl.exit

land.rhs.i.i.i:                                   ; preds = %out
  %.b40.i.i.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b40.i.i.i, label %land.rhs.i.i.i.dm_unprepare_ioctl.exit_crit_edge, label %if.then.i.i.i, !prof !314

land.rhs.i.i.i.dm_unprepare_ioctl.exit_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %dm_unprepare_ioctl.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 189, i32 noundef 9, ptr noundef null) #21
  br label %dm_unprepare_ioctl.exit

dm_unprepare_ioctl.exit:                          ; preds = %if.then.i.i.i, %land.rhs.i.i.i.dm_unprepare_ioctl.exit_crit_edge, %out.dm_unprepare_ioctl.exit_crit_edge
  %io_barrier.i.i = getelementptr inbounds %struct.mapped_device, ptr %4, i32 0, i32 38
  %dep_map.i.i.i = getelementptr inbounds %struct.mapped_device, ptr %4, i32 0, i32 38, i32 16
  call fastcc void @rcu_lock_release(ptr noundef %dep_map.i.i.i) #21
  call void @__srcu_read_unlock(ptr noundef %io_barrier.i.i, i32 noundef %19) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %srcu_idx) #21
  ret i32 %r.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dm_blk_getgeo(ptr nocapture noundef readonly %bdev, ptr nocapture noundef writeonly %geo) #17 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %geometry.i = getelementptr inbounds %struct.mapped_device, ptr %3, i32 0, i32 30
  %4 = ptrtoint ptr %geometry.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %geometry.i, align 8
  %6 = ptrtoint ptr %geo to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 %5, ptr %geo, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_blk_report_zones(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_split(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__split_and_process_non_flush(ptr nocapture noundef %ci) unnamed_addr #0 align 64 {
entry:
  %len.i.i = alloca i32, align 4
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #21
  %0 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci, align 8
  %sector = getelementptr inbounds %struct.clone_info, ptr %ci, i32 0, i32 3
  %2 = ptrtoint ptr %sector to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %sector, align 8
  %call = tail call ptr @dm_table_find_target(ptr noundef %1, i64 noundef %3) #21
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %entry
  %bio1.i = getelementptr inbounds %struct.clone_info, ptr %ci, i32 0, i32 1
  %4 = ptrtoint ptr %bio1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bio1.i, align 4
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bi_opf.i, align 8
  %trunc.i = trunc i32 %7 to i8
  %8 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.85)
  switch i8 %trunc.i, label %if.end3 [
    i8 3, label %sw.bb.i
    i8 5, label %sw.bb2.i
    i8 7, label %sw.bb3.i
    i8 9, label %sw.bb4.i
  ]

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  %num_discard_bios.i = getelementptr inbounds %struct.dm_target, ptr %call, i32 0, i32 6
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  %num_secure_erase_bios.i = getelementptr inbounds %struct.dm_target, ptr %call, i32 0, i32 7
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  %num_write_same_bios.i = getelementptr inbounds %struct.dm_target, ptr %call, i32 0, i32 8
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  %num_write_zeroes_bios.i = getelementptr inbounds %struct.dm_target, ptr %call, i32 0, i32 9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb.i
  %num_bios.0.in.i = phi ptr [ %num_write_zeroes_bios.i, %sw.bb4.i ], [ %num_write_same_bios.i, %sw.bb3.i ], [ %num_secure_erase_bios.i, %sw.bb2.i ], [ %num_discard_bios.i, %sw.bb.i ]
  %9 = ptrtoint ptr %num_bios.0.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %num_bios.0.i = load i32, ptr %num_bios.0.in.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i.i) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_bios.0.i)
  %tobool.not.i.i = icmp eq i32 %num_bios.0.i, 0
  br i1 %tobool.not.i.i, label %sw.epilog.i.if.then2_crit_edge, label %if.end.i.i

sw.epilog.i.if.then2_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then2

if.end.i.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #23
  %sector_count.i.i = getelementptr inbounds %struct.clone_info, ptr %ci, i32 0, i32 4
  %10 = ptrtoint ptr %sector_count.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sector_count.i.i, align 8
  %conv.i.i = zext i32 %11 to i64
  %12 = ptrtoint ptr %sector to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %sector, align 8
  %begin.i.i = getelementptr inbounds %struct.dm_target, ptr %call, i32 0, i32 2
  %14 = ptrtoint ptr %begin.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %begin.i.i, align 8
  %sub.neg.i.i = sub i64 %15, %13
  %len.i.i.i = getelementptr inbounds %struct.dm_target, ptr %call, i32 0, i32 3
  %16 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %len.i.i.i, align 8
  %sub.i.i.i = add i64 %sub.neg.i.i, %17
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i.i.i, i64 %conv.i.i)
  %cmp.i.i = icmp ugt i64 %sub.i.i.i, %conv.i.i
  %extract.t16.i.i = trunc i64 %sub.i.i.i to i32
  %cond.off0.i.i = select i1 %cmp.i.i, i32 %11, i32 %extract.t16.i.i
  %18 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %cond.off0.i.i, ptr %len.i.i, align 4
  call fastcc void @__send_duplicate_bios(ptr noundef %ci, ptr noundef nonnull %call, i32 noundef %num_bios.0.i, ptr noundef nonnull %len.i.i) #21
  %19 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len.i.i, align 4
  %conv3.i.i = zext i32 %20 to i64
  %21 = ptrtoint ptr %sector to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %sector, align 8
  %add.i.i = add i64 %22, %conv3.i.i
  store i64 %add.i.i, ptr %sector, align 8
  %23 = ptrtoint ptr %sector_count.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sector_count.i.i, align 8
  %sub6.i.i = sub i32 %24, %20
  store i32 %sub6.i.i, ptr %sector_count.i.i, align 8
  br label %if.then2

if.then2:                                         ; preds = %if.end.i.i, %sw.epilog.i.if.then2_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.end.i.i ], [ -95, %sw.epilog.i.if.then2_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i) #21
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %25 = ptrtoint ptr %sector to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %sector, align 8
  %begin.i = getelementptr inbounds %struct.dm_target, ptr %call, i32 0, i32 2
  %27 = ptrtoint ptr %begin.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %begin.i, align 8
  %sub.i = sub i64 %26, %28
  %len.i.i33 = getelementptr inbounds %struct.dm_target, ptr %call, i32 0, i32 3
  %29 = ptrtoint ptr %len.i.i33 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %len.i.i33, align 8
  %sub.i.i = sub i64 %30, %sub.i
  %max_io_len.i = getelementptr inbounds %struct.dm_target, ptr %call, i32 0, i32 4
  %31 = ptrtoint ptr %max_io_len.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_io_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i, label %if.end3.max_io_len.exit_crit_edge, label %if.then.i

if.end3.max_io_len.exit_crit_edge:                ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #23
  br label %max_io_len.exit

if.then.i:                                        ; preds = %if.end3
  %33 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %queue.i = getelementptr inbounds %struct.mapped_device, ptr %36, i32 0, i32 8
  %37 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %queue.i, align 4
  %39 = tail call i32 @llvm.ctpop.i32(i32 %32) #21, !range !351
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %39)
  %cmp1.i.i.i = icmp ult i32 %39, 2
  br i1 %cmp1.i.i.i, label %if.then10.i.i, label %if.else185.i.i, !prof !314

if.then10.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #23
  %sub.i13.i = add i32 %32, -1
  %40 = trunc i64 %sub.i to i32
  %41 = and i32 %sub.i13.i, %40
  br label %blk_max_size_offset.exit.i

if.else185.i.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i)
  %cmp187.i.i = icmp ult i64 %sub.i, 4294967296
  br i1 %cmp187.i.i, label %if.then195.i.i, label %if.else201.i.i, !prof !314

if.then195.i.i:                                   ; preds = %if.else185.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %conv196.i.i = trunc i64 %sub.i to i32
  %rem197.i.i = urem i32 %conv196.i.i, %32
  br label %blk_max_size_offset.exit.i

if.else201.i.i:                                   ; preds = %if.else185.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %42 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %32, i64 %sub.i) #28, !srcloc !352
  %asmresult.i.i.i = extractvalue { i64, i64 } %42, 0
  %shr.i.i.i = lshr i64 %asmresult.i.i.i, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  br label %blk_max_size_offset.exit.i

blk_max_size_offset.exit.i:                       ; preds = %if.else201.i.i, %if.then195.i.i, %if.then10.i.i
  %.pn.i.i = phi i32 [ %41, %if.then10.i.i ], [ %rem197.i.i, %if.then195.i.i ], [ %conv.i.i.i, %if.else201.i.i ]
  %chunk_sectors.addr.1.i.i = sub i32 %32, %.pn.i.i
  %max_sectors210.i.i = getelementptr inbounds %struct.request_queue, ptr %38, i32 0, i32 37, i32 6
  %43 = ptrtoint ptr %max_sectors210.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %max_sectors210.i.i, align 4
  %45 = tail call i32 @llvm.umin.i32(i32 %44, i32 %chunk_sectors.addr.1.i.i) #21
  %conv.i = zext i32 %45 to i64
  %46 = tail call i64 @llvm.umin.i64(i64 %sub.i.i, i64 %conv.i) #21
  br label %max_io_len.exit

max_io_len.exit:                                  ; preds = %blk_max_size_offset.exit.i, %if.end3.max_io_len.exit_crit_edge
  %len.0.i = phi i64 [ %sub.i.i, %if.end3.max_io_len.exit_crit_edge ], [ %46, %blk_max_size_offset.exit.i ]
  %sector_count = getelementptr inbounds %struct.clone_info, ptr %ci, i32 0, i32 4
  %47 = ptrtoint ptr %sector_count to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sector_count, align 8
  %conv = zext i32 %48 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %len.0.i, i64 %conv)
  %cmp = icmp ult i64 %len.0.i, %conv
  %extract.t = trunc i64 %len.0.i to i32
  %cond.off0 = select i1 %cmp, i32 %extract.t, i32 %48
  %49 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %cond.off0, ptr %len, align 4
  %50 = ptrtoint ptr %bio1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bio1.i, align 4
  %io.i.i = getelementptr inbounds %struct.clone_info, ptr %ci, i32 0, i32 2
  %52 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %io.i.i, align 8
  %io2.i.i = getelementptr inbounds %struct.dm_io, ptr %53, i32 0, i32 8, i32 1
  %54 = ptrtoint ptr %io2.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %io2.i.i, align 4
  %tobool.not.i.i36 = icmp eq ptr %55, null
  br i1 %tobool.not.i.i36, label %if.then.i.i, label %if.else.i.i37

if.then.i.i:                                      ; preds = %max_io_len.exit
  call void @__sanitizer_cov_trace_pc() #23
  %tio1.i.i = getelementptr inbounds %struct.dm_io, ptr %53, i32 0, i32 8
  br label %if.end8.i.i

if.else.i.i37:                                    ; preds = %max_io_len.exit
  %md.i.i = getelementptr inbounds %struct.dm_io, ptr %53, i32 0, i32 1
  %56 = ptrtoint ptr %md.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %md.i.i, align 4
  %bs.i.i = getelementptr inbounds %struct.mapped_device, ptr %57, i32 0, i32 28
  %call.i.i = tail call ptr @bio_alloc_bioset(i32 noundef 3072, i16 noundef zeroext 0, ptr noundef %bs.i.i) #21
  %tobool6.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool6.not.i.i, label %if.else.i.i37.alloc_tio.exit.i_crit_edge, label %cleanup.i.i

if.else.i.i37.alloc_tio.exit.i_crit_edge:         ; preds = %if.else.i.i37
  call void @__sanitizer_cov_trace_pc() #23
  br label %alloc_tio.exit.i

cleanup.i.i:                                      ; preds = %if.else.i.i37
  call void @__sanitizer_cov_trace_pc() #23
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i, i32 -24
  %inside_dm_io.i.i = getelementptr i8, ptr %call.i.i, i32 -4
  %58 = ptrtoint ptr %inside_dm_io.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %inside_dm_io.i.i, align 4
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %cleanup.i.i, %if.then.i.i
  %tio.1.i.i = phi ptr [ %add.ptr.i.i, %cleanup.i.i ], [ %tio1.i.i, %if.then.i.i ]
  %59 = ptrtoint ptr %tio.1.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 7282014, ptr %tio.1.i.i, align 8
  %60 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %io.i.i, align 8
  %io10.i.i = getelementptr inbounds %struct.dm_target_io, ptr %tio.1.i.i, i32 0, i32 1
  %62 = ptrtoint ptr %io10.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %61, ptr %io10.i.i, align 4
  %ti11.i.i = getelementptr inbounds %struct.dm_target_io, ptr %tio.1.i.i, i32 0, i32 2
  %63 = ptrtoint ptr %ti11.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call, ptr %ti11.i.i, align 8
  %target_bio_nr12.i.i = getelementptr inbounds %struct.dm_target_io, ptr %tio.1.i.i, i32 0, i32 3
  %64 = ptrtoint ptr %target_bio_nr12.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %target_bio_nr12.i.i, align 4
  br label %alloc_tio.exit.i

alloc_tio.exit.i:                                 ; preds = %if.end8.i.i, %if.else.i.i37.alloc_tio.exit.i_crit_edge
  %retval.1.i.i = phi ptr [ %tio.1.i.i, %if.end8.i.i ], [ null, %if.else.i.i37.alloc_tio.exit.i_crit_edge ]
  %len_ptr.i = getelementptr inbounds %struct.dm_target_io, ptr %retval.1.i.i, i32 0, i32 4
  %65 = ptrtoint ptr %len_ptr.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %len, ptr %len_ptr.i, align 8
  %66 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %len, align 4
  %clone1.i.i = getelementptr inbounds %struct.dm_target_io, ptr %retval.1.i.i, i32 0, i32 6
  call void @__bio_clone_fast(ptr noundef %clone1.i.i, ptr noundef %51) #21
  %bi_crypt_context.i.i.i.i = getelementptr inbounds %struct.bio, ptr %51, i32 0, i32 15
  %68 = ptrtoint ptr %bi_crypt_context.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bi_crypt_context.i.i.i.i, align 8
  %tobool.i.not.i.i.i = icmp eq ptr %69, null
  br i1 %tobool.i.not.i.i.i, label %alloc_tio.exit.i.if.end.i.i39_crit_edge, label %bio_crypt_clone.exit.i.i

alloc_tio.exit.i.if.end.i.i39_crit_edge:          ; preds = %alloc_tio.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end.i.i39

bio_crypt_clone.exit.i.i:                         ; preds = %alloc_tio.exit.i
  %call1.i.i.i = call i32 @__bio_crypt_clone(ptr noundef %clone1.i.i, ptr noundef %51, i32 noundef 3072) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %cmp.i.i38 = icmp slt i32 %call1.i.i.i, 0
  br i1 %cmp.i.i38, label %bio_crypt_clone.exit.i.i.if.then.i42_crit_edge, label %bio_crypt_clone.exit.i.i.if.end.i.i39_crit_edge

bio_crypt_clone.exit.i.i.if.end.i.i39_crit_edge:  ; preds = %bio_crypt_clone.exit.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end.i.i39

bio_crypt_clone.exit.i.i.if.then.i42_crit_edge:   ; preds = %bio_crypt_clone.exit.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then.i42

if.end.i.i39:                                     ; preds = %bio_crypt_clone.exit.i.i.if.end.i.i39_crit_edge, %alloc_tio.exit.i.if.end.i.i39_crit_edge
  %bi_opf.i.i.i = getelementptr inbounds %struct.bio, ptr %51, i32 0, i32 2
  %70 = ptrtoint ptr %bi_opf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %bi_opf.i.i.i, align 8
  %72 = and i32 %71, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.not.i.i.i = icmp eq i32 %72, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i39.if.end23.i.i_crit_edge, label %bio_integrity.exit.i.i

if.end.i.i39.if.end23.i.i_crit_edge:              ; preds = %if.end.i.i39
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end23.i.i

bio_integrity.exit.i.i:                           ; preds = %if.end.i.i39
  %73 = getelementptr inbounds %struct.bio, ptr %51, i32 0, i32 16
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  %tobool.not.i11.i = icmp eq ptr %75, null
  br i1 %tobool.not.i11.i, label %bio_integrity.exit.i.i.if.end23.i.i_crit_edge, label %if.then3.i.i

bio_integrity.exit.i.i.if.end23.i.i_crit_edge:    ; preds = %bio_integrity.exit.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end23.i.i

if.then3.i.i:                                     ; preds = %bio_integrity.exit.i.i
  %ti.i.i = getelementptr inbounds %struct.dm_target_io, ptr %retval.1.i.i, i32 0, i32 2
  %76 = ptrtoint ptr %ti.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ti.i.i, align 8
  %type.i.i = getelementptr inbounds %struct.dm_target, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %type.i.i, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %79, align 8
  %82 = and i64 %81, 48
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %82)
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %do.end.i.i, label %if.end18.i.i, !prof !316

do.end.i.i:                                       ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %io.i12.i = getelementptr inbounds %struct.dm_target_io, ptr %retval.1.i.i, i32 0, i32 1
  %84 = ptrtoint ptr %io.i12.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %io.i12.i, align 4
  %md.i13.i = getelementptr inbounds %struct.dm_io, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %md.i13.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %md.i13.i, align 4
  %name.i.i.i = getelementptr inbounds %struct.mapped_device, ptr %87, i32 0, i32 13
  %name.i.i = getelementptr inbounds %struct.target_type, ptr %79, i32 0, i32 1
  %88 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %name.i.i, align 8
  %call17.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %name.i.i.i, ptr noundef %89) #25
  br label %if.then.i42

if.end18.i.i:                                     ; preds = %if.then3.i.i
  %call19.i.i = call i32 @bio_integrity_clone(ptr noundef %clone1.i.i, ptr noundef %51, i32 noundef 3072) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i)
  %cmp20.i.i = icmp slt i32 %call19.i.i, 0
  br i1 %cmp20.i.i, label %if.end18.i.i.if.then.i42_crit_edge, label %if.end18.i.i.if.end23.i.i_crit_edge

if.end18.i.i.if.end23.i.i_crit_edge:              ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end23.i.i

if.end18.i.i.if.then.i42_crit_edge:               ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then.i42

if.end23.i.i:                                     ; preds = %if.end18.i.i.if.end23.i.i_crit_edge, %bio_integrity.exit.i.i.if.end23.i.i_crit_edge, %if.end.i.i39.if.end23.i.i_crit_edge
  %bi_iter.i.i = getelementptr inbounds %struct.dm_target_io, ptr %retval.1.i.i, i32 0, i32 6, i32 8
  %90 = ptrtoint ptr %bi_iter.i.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %bi_iter.i.i, align 8
  %sub.i.i40 = sub i64 %26, %91
  %n.tr.i.i.i = trunc i64 %sub.i.i40 to i32
  %conv.i.i.i41 = shl i32 %n.tr.i.i.i, 9
  %bi_size.i.i.i = getelementptr inbounds %struct.dm_target_io, ptr %retval.1.i.i, i32 0, i32 6, i32 8, i32 1
  %92 = ptrtoint ptr %bi_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %bi_size.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %conv.i.i.i41)
  %cmp.i.i.i = icmp eq i32 %93, %conv.i.i.i41
  br i1 %cmp.i.i.i, label %if.end23.i.i.bio_advance.exit.i.i_crit_edge, label %if.end.i.i.i

if.end23.i.i.bio_advance.exit.i.i_crit_edge:      ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %bio_advance.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #23
  call void @__bio_advance(ptr noundef %clone1.i.i, i32 noundef %conv.i.i.i41) #21
  br label %bio_advance.exit.i.i

bio_advance.exit.i.i:                             ; preds = %if.end.i.i.i, %if.end23.i.i.bio_advance.exit.i.i_crit_edge
  %conv.i52.i.i = shl i32 %67, 9
  %94 = ptrtoint ptr %bi_size.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %conv.i52.i.i, ptr %bi_size.i.i.i, align 8
  %95 = ptrtoint ptr %bi_opf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %bi_opf.i.i.i, align 8
  %97 = and i32 %96, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool.not.i54.i.i = icmp eq i32 %97, 0
  br i1 %tobool.not.i54.i.i, label %bio_advance.exit.i.i.if.end13_crit_edge, label %bio_integrity.exit57.i.i

bio_advance.exit.i.i.if.end13_crit_edge:          ; preds = %bio_advance.exit.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end13

bio_integrity.exit57.i.i:                         ; preds = %bio_advance.exit.i.i
  %98 = getelementptr inbounds %struct.bio, ptr %51, i32 0, i32 16
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %98, align 4
  %tobool28.not.i.i = icmp eq ptr %100, null
  br i1 %tobool28.not.i.i, label %bio_integrity.exit57.i.i.if.end13_crit_edge, label %if.then29.i.i

bio_integrity.exit57.i.i.if.end13_crit_edge:      ; preds = %bio_integrity.exit57.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end13

if.then29.i.i:                                    ; preds = %bio_integrity.exit57.i.i
  call void @__sanitizer_cov_trace_pc() #23
  call void @bio_integrity_trim(ptr noundef %clone1.i.i) #21
  br label %if.end13

if.then.i42:                                      ; preds = %if.end18.i.i.if.then.i42_crit_edge, %do.end.i.i, %bio_crypt_clone.exit.i.i.if.then.i42_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call19.i.i, %if.end18.i.i.if.then.i42_crit_edge ], [ %call1.i.i.i, %bio_crypt_clone.exit.i.i.if.then.i42_crit_edge ], [ -5, %do.end.i.i ]
  %inside_dm_io.i15.i = getelementptr inbounds %struct.dm_target_io, ptr %retval.1.i.i, i32 0, i32 5
  %101 = ptrtoint ptr %inside_dm_io.i15.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %inside_dm_io.i15.i, align 4, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool.not.i16.i = icmp eq i8 %102, 0
  br i1 %tobool.not.i16.i, label %if.end.i17.i, label %if.then.i42.cleanup_crit_edge

if.then.i42.cleanup_crit_edge:                    ; preds = %if.then.i42
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end.i17.i:                                     ; preds = %if.then.i42
  call void @__sanitizer_cov_trace_pc() #23
  call void @bio_put(ptr noundef %clone1.i.i) #21
  br label %cleanup

if.end13:                                         ; preds = %if.then29.i.i, %bio_integrity.exit57.i.i.if.end13_crit_edge, %bio_advance.exit.i.i.if.end13_crit_edge
  call fastcc void @__map_bio(ptr noundef %retval.1.i.i) #21
  %103 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %len, align 4
  %conv14 = zext i32 %104 to i64
  %105 = ptrtoint ptr %sector to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %sector, align 8
  %add = add i64 %106, %conv14
  store i64 %add, ptr %sector, align 8
  %107 = ptrtoint ptr %sector_count to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %sector_count, align 8
  %sub = sub i32 %108, %104
  store i32 %sub, ptr %sector_count, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end.i17.i, %if.then.i42.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.i, %if.then2 ], [ 0, %if.end13 ], [ -5, %entry.cleanup_crit_edge ], [ %retval.0.i.ph.i, %if.then.i42.cleanup_crit_edge ], [ %retval.0.i.ph.i, %if.end.i17.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #21
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_split(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_chain(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_block_split(ptr noundef %bio, i32 noundef %new_sector) unnamed_addr #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_split, i32 0, i32 1), ptr blockaddress(@trace_block_split, %do.body)) #21
          to label %if.end48 [label %do.body], !srcloc !342

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !297) #21
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
  call void @__sanitizer_cov_trace_pc() #23
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !314

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.61, i32 noundef 108, i32 noundef 9, ptr noundef null) #21
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
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #23
  %9 = tail call i32 @llvm.read_register.i32(metadata !297) #21
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !353
  %call42 = tail call i32 @__traceiter_block_split(ptr noundef null, ptr noundef %bio, i32 noundef %new_sector) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !354
  %13 = tail call i32 @llvm.read_register.i32(metadata !297) #21
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !297) #21
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
  call void @__sanitizer_cov_trace_pc() #23
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !314

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #23
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #23
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.61, i32 noundef 108, i32 noundef 9, ptr noundef null) #21
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
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !297) #21
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !355
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_split, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_split, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_block_split.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #23
  store i1 true, ptr @trace_block_split.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.60, i32 noundef 445, ptr noundef nonnull @.str.2) #21
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !356
  %31 = tail call i32 @llvm.read_register.i32(metadata !297) #21
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
declare dso_local zeroext i8 @errno_to_blk_status(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_bioset(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_init(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_table_get_target(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__send_duplicate_bios(ptr nocapture noundef readonly %ci, ptr noundef %ti, i32 noundef %num_bios, ptr noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %num_bios to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %num_bios, label %for.body9.preheader.i [
    i32 0, label %entry.while.end_crit_edge
    i32 1, label %if.then1.i
  ]

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end

if.then1.i:                                       ; preds = %entry
  %io.i.i = getelementptr inbounds %struct.clone_info, ptr %ci, i32 0, i32 2
  %1 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %io.i.i, align 8
  %io2.i.i = getelementptr inbounds %struct.dm_io, ptr %2, i32 0, i32 8, i32 1
  %3 = ptrtoint ptr %io2.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %io2.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #23
  %tio1.i.i = getelementptr inbounds %struct.dm_io, ptr %2, i32 0, i32 8
  br label %if.end8.i.i

if.else.i.i:                                      ; preds = %if.then1.i
  %md.i.i = getelementptr inbounds %struct.dm_io, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %md.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %md.i.i, align 4
  %bs.i.i = getelementptr inbounds %struct.mapped_device, ptr %6, i32 0, i32 28
  %call.i.i = tail call ptr @bio_alloc_bioset(i32 noundef 3072, i16 noundef zeroext 0, ptr noundef %bs.i.i) #21
  %tobool6.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool6.not.i.i, label %if.else.i.i.bio_list_add.exit.i_crit_edge, label %cleanup.i.i

if.else.i.i.bio_list_add.exit.i_crit_edge:        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %bio_list_add.exit.i

cleanup.i.i:                                      ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #23
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i, i32 -24
  %inside_dm_io.i.i = getelementptr i8, ptr %call.i.i, i32 -4
  %7 = ptrtoint ptr %inside_dm_io.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %inside_dm_io.i.i, align 4
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %cleanup.i.i, %if.then.i.i
  %tio.1.i.i = phi ptr [ %add.ptr.i.i, %cleanup.i.i ], [ %tio1.i.i, %if.then.i.i ]
  %8 = ptrtoint ptr %tio.1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 7282014, ptr %tio.1.i.i, align 8
  %9 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io.i.i, align 8
  %io10.i.i = getelementptr inbounds %struct.dm_target_io, ptr %tio.1.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %io10.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %io10.i.i, align 4
  %ti11.i.i = getelementptr inbounds %struct.dm_target_io, ptr %tio.1.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %ti11.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %ti, ptr %ti11.i.i, align 8
  %target_bio_nr12.i.i = getelementptr inbounds %struct.dm_target_io, ptr %tio.1.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %target_bio_nr12.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %target_bio_nr12.i.i, align 4
  br label %bio_list_add.exit.i

bio_list_add.exit.i:                              ; preds = %if.end8.i.i, %if.else.i.i.bio_list_add.exit.i_crit_edge
  %retval.1.i.i = phi ptr [ %tio.1.i.i, %if.end8.i.i ], [ null, %if.else.i.i.bio_list_add.exit.i_crit_edge ]
  %clone.i = getelementptr inbounds %struct.dm_target_io, ptr %retval.1.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %clone.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %clone.i, align 8
  br label %alloc_multiple_bios.exit

for.body9.preheader.i.1:                          ; preds = %free_tio.exit.i.for.body9.preheader.i.1_crit_edge, %while.cond.preheader.i.for.body9.preheader.i.1_crit_edge
  %blist.sroa.10.0 = phi ptr [ %blist.sroa.10.2, %while.cond.preheader.i.for.body9.preheader.i.1_crit_edge ], [ null, %free_tio.exit.i.for.body9.preheader.i.1_crit_edge ]
  %15 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %io.i, align 8
  %md.i.1 = getelementptr inbounds %struct.dm_io, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %md.i.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %md.i.1, align 4
  %table_devices_lock.i.1 = getelementptr inbounds %struct.mapped_device, ptr %18, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %table_devices_lock.i.1, i32 noundef 0) #21
  br label %for.body9.i.1

for.body9.i.1:                                    ; preds = %bio_list_add.exit82.i.1.for.body9.i.1_crit_edge, %for.body9.preheader.i.1
  %blist.sroa.10.2.1 = phi ptr [ %blist.sroa.10.0, %for.body9.preheader.i.1 ], [ %clone15.i.1, %bio_list_add.exit82.i.1.for.body9.i.1_crit_edge ]
  %blist.sroa.0.3.1 = phi ptr [ null, %for.body9.preheader.i.1 ], [ %blist.sroa.0.4.1, %bio_list_add.exit82.i.1.for.body9.i.1_crit_edge ]
  %bio_nr.092.i.1 = phi i32 [ 0, %for.body9.preheader.i.1 ], [ %inc.i.1, %bio_list_add.exit82.i.1.for.body9.i.1_crit_edge ]
  %19 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %io.i, align 8
  %io2.i59.i.1 = getelementptr inbounds %struct.dm_io, ptr %20, i32 0, i32 8, i32 1
  %21 = ptrtoint ptr %io2.i59.i.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %io2.i59.i.1, align 4
  %tobool.not.i60.i.1 = icmp eq ptr %22, null
  br i1 %tobool.not.i60.i.1, label %if.then.i62.i.1, label %if.else.i67.i.1

if.else.i67.i.1:                                  ; preds = %for.body9.i.1
  %md.i63.i.1 = getelementptr inbounds %struct.dm_io, ptr %20, i32 0, i32 1
  %23 = ptrtoint ptr %md.i63.i.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %md.i63.i.1, align 4
  %bs.i64.i.1 = getelementptr inbounds %struct.mapped_device, ptr %24, i32 0, i32 28
  %call.i65.i.1 = tail call ptr @bio_alloc_bioset(i32 noundef 3072, i16 noundef zeroext 0, ptr noundef %bs.i64.i.1) #21
  %tobool6.not.i66.i.1 = icmp eq ptr %call.i65.i.1, null
  br i1 %tobool6.not.i66.i.1, label %if.else.i67.i.1.if.end21.i.1_crit_edge, label %cleanup.i70.i.1

if.else.i67.i.1.if.end21.i.1_crit_edge:           ; preds = %if.else.i67.i.1
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end21.i.1

cleanup.i70.i.1:                                  ; preds = %if.else.i67.i.1
  call void @__sanitizer_cov_trace_pc() #23
  %add.ptr.i68.i.1 = getelementptr i8, ptr %call.i65.i.1, i32 -24
  %inside_dm_io.i69.i.1 = getelementptr i8, ptr %call.i65.i.1, i32 -4
  %25 = ptrtoint ptr %inside_dm_io.i69.i.1 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %inside_dm_io.i69.i.1, align 4
  br label %alloc_tio.exit77.i.1

if.then.i62.i.1:                                  ; preds = %for.body9.i.1
  call void @__sanitizer_cov_trace_pc() #23
  %tio1.i61.i.1 = getelementptr inbounds %struct.dm_io, ptr %20, i32 0, i32 8
  br label %alloc_tio.exit77.i.1

alloc_tio.exit77.i.1:                             ; preds = %if.then.i62.i.1, %cleanup.i70.i.1
  %tio.1.i71.i.1 = phi ptr [ %add.ptr.i68.i.1, %cleanup.i70.i.1 ], [ %tio1.i61.i.1, %if.then.i62.i.1 ]
  %26 = ptrtoint ptr %tio.1.i71.i.1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 7282014, ptr %tio.1.i71.i.1, align 8
  %27 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %io.i, align 8
  %io10.i72.i.1 = getelementptr inbounds %struct.dm_target_io, ptr %tio.1.i71.i.1, i32 0, i32 1
  %29 = ptrtoint ptr %io10.i72.i.1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %io10.i72.i.1, align 4
  %ti11.i73.i.1 = getelementptr inbounds %struct.dm_target_io, ptr %tio.1.i71.i.1, i32 0, i32 2
  %30 = ptrtoint ptr %ti11.i73.i.1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %ti, ptr %ti11.i73.i.1, align 8
  %target_bio_nr12.i74.i.1 = getelementptr inbounds %struct.dm_target_io, ptr %tio.1.i71.i.1, i32 0, i32 3
  %31 = ptrtoint ptr %target_bio_nr12.i74.i.1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %bio_nr.092.i.1, ptr %target_bio_nr12.i74.i.1, align 4
  %tobool12.not.i.1 = icmp eq ptr %tio.1.i71.i.1, null
  br i1 %tobool12.not.i.1, label %alloc_tio.exit77.i.1.if.end21.i.1_crit_edge, label %if.end14.i.1

alloc_tio.exit77.i.1.if.end21.i.1_crit_edge:      ; preds = %alloc_tio.exit77.i.1
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end21.i.1

if.end14.i.1:                                     ; preds = %alloc_tio.exit77.i.1
  %clone15.i.1 = getelementptr inbounds %struct.dm_target_io, ptr %tio.1.i71.i.1, i32 0, i32 6
  %32 = ptrtoint ptr %clone15.i.1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %clone15.i.1, align 8
  %tobool.not.i79.i.1 = icmp eq ptr %blist.sroa.10.2.1, null
  br i1 %tobool.not.i79.i.1, label %if.end14.i.1.bio_list_add.exit82.i.1_crit_edge, label %if.then.i80.i.1

if.end14.i.1.bio_list_add.exit82.i.1_crit_edge:   ; preds = %if.end14.i.1
  call void @__sanitizer_cov_trace_pc() #23
  br label %bio_list_add.exit82.i.1

if.then.i80.i.1:                                  ; preds = %if.end14.i.1
  call void @__sanitizer_cov_trace_pc() #23
  %33 = ptrtoint ptr %blist.sroa.10.2.1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %clone15.i.1, ptr %blist.sroa.10.2.1, align 8
  br label %bio_list_add.exit82.i.1

bio_list_add.exit82.i.1:                          ; preds = %if.then.i80.i.1, %if.end14.i.1.bio_list_add.exit82.i.1_crit_edge
  %blist.sroa.0.4.1 = phi ptr [ %blist.sroa.0.3.1, %if.then.i80.i.1 ], [ %clone15.i.1, %if.end14.i.1.bio_list_add.exit82.i.1_crit_edge ]
  %inc.i.1 = add nuw i32 %bio_nr.092.i.1, 1
  %exitcond.not.i.1 = icmp eq i32 %inc.i.1, %num_bios
  br i1 %exitcond.not.i.1, label %bio_list_add.exit82.i.1.if.end21.i.1_crit_edge, label %bio_list_add.exit82.i.1.for.body9.i.1_crit_edge

bio_list_add.exit82.i.1.for.body9.i.1_crit_edge:  ; preds = %bio_list_add.exit82.i.1
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body9.i.1

bio_list_add.exit82.i.1.if.end21.i.1_crit_edge:   ; preds = %bio_list_add.exit82.i.1
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end21.i.1

if.end21.i.1:                                     ; preds = %bio_list_add.exit82.i.1.if.end21.i.1_crit_edge, %alloc_tio.exit77.i.1.if.end21.i.1_crit_edge, %if.else.i67.i.1.if.end21.i.1_crit_edge
  %blist.sroa.0.5.1 = phi ptr [ %blist.sroa.0.3.1, %alloc_tio.exit77.i.1.if.end21.i.1_crit_edge ], [ %blist.sroa.0.4.1, %bio_list_add.exit82.i.1.if.end21.i.1_crit_edge ], [ %blist.sroa.0.3.1, %if.else.i67.i.1.if.end21.i.1_crit_edge ]
  %bio_nr.0.lcssa.ph.i.1 = phi i32 [ %bio_nr.092.i.1, %alloc_tio.exit77.i.1.if.end21.i.1_crit_edge ], [ %num_bios, %bio_list_add.exit82.i.1.if.end21.i.1_crit_edge ], [ %bio_nr.092.i.1, %if.else.i67.i.1.if.end21.i.1_crit_edge ]
  %34 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %io.i, align 8
  %md19.i.1 = getelementptr inbounds %struct.dm_io, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %md19.i.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %md19.i.1, align 4
  %table_devices_lock20.i.1 = getelementptr inbounds %struct.mapped_device, ptr %37, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %table_devices_lock20.i.1) #21
  call void @__sanitizer_cov_trace_cmp4(i32 %bio_nr.0.lcssa.ph.i.1, i32 %num_bios)
  %cmp22.i.1 = icmp eq i32 %bio_nr.0.lcssa.ph.i.1, %num_bios
  br i1 %cmp22.i.1, label %if.end21.i.1.alloc_multiple_bios.exit_crit_edge, label %while.cond.preheader.i.1

if.end21.i.1.alloc_multiple_bios.exit_crit_edge:  ; preds = %if.end21.i.1
  call void @__sanitizer_cov_trace_pc() #23
  br label %alloc_multiple_bios.exit

while.cond.preheader.i.1:                         ; preds = %if.end21.i.1
  %tobool.not.i8395.i.1 = icmp eq ptr %blist.sroa.0.5.1, null
  br i1 %tobool.not.i8395.i.1, label %while.cond.preheader.i.1.while.end_crit_edge, label %while.cond.preheader.i.1.if.then.i84.i.1_crit_edge

while.cond.preheader.i.1.if.then.i84.i.1_crit_edge: ; preds = %while.cond.preheader.i.1
  br label %if.then.i84.i.1

while.cond.preheader.i.1.while.end_crit_edge:     ; preds = %while.cond.preheader.i.1
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end

if.then.i84.i.1:                                  ; preds = %free_tio.exit.i.1.if.then.i84.i.1_crit_edge, %while.cond.preheader.i.1.if.then.i84.i.1_crit_edge
  %38 = phi ptr [ %40, %free_tio.exit.i.1.if.then.i84.i.1_crit_edge ], [ %blist.sroa.0.5.1, %while.cond.preheader.i.1.if.then.i84.i.1_crit_edge ]
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 8
  %tobool4.not.i.i.1 = icmp eq ptr %40, null
  store ptr null, ptr %38, align 8
  %inside_dm_io.i86.i.1 = getelementptr i8, ptr %38, i32 -4
  %41 = ptrtoint ptr %inside_dm_io.i86.i.1 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %inside_dm_io.i86.i.1, align 4, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i87.i.1 = icmp eq i8 %42, 0
  br i1 %tobool.not.i87.i.1, label %if.end.i88.i.1, label %if.then.i84.i.1.free_tio.exit.i.1_crit_edge

if.then.i84.i.1.free_tio.exit.i.1_crit_edge:      ; preds = %if.then.i84.i.1
  call void @__sanitizer_cov_trace_pc() #23
  br label %free_tio.exit.i.1

if.end.i88.i.1:                                   ; preds = %if.then.i84.i.1
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @bio_put(ptr noundef nonnull %38) #21
  br label %free_tio.exit.i.1

free_tio.exit.i.1:                                ; preds = %if.end.i88.i.1, %if.then.i84.i.1.free_tio.exit.i.1_crit_edge
  br i1 %tobool4.not.i.i.1, label %free_tio.exit.i.1.while.end_crit_edge, label %free_tio.exit.i.1.if.then.i84.i.1_crit_edge

free_tio.exit.i.1.if.then.i84.i.1_crit_edge:      ; preds = %free_tio.exit.i.1
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then.i84.i.1

free_tio.exit.i.1.while.end_crit_edge:            ; preds = %free_tio.exit.i.1
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end

for.body9.preheader.i:                            ; preds = %entry
  %io.i = getelementptr inbounds %struct.clone_info, ptr %ci, i32 0, i32 2
  br label %for.body9.i

for.body9.i:                                      ; preds = %bio_list_add.exit82.i.for.body9.i_crit_edge, %for.body9.preheader.i
  %blist.sroa.10.2 = phi ptr [ null, %for.body9.preheader.i ], [ %clone15.i, %bio_list_add.exit82.i.for.body9.i_crit_edge ]
  %blist.sroa.0.3 = phi ptr [ null, %for.body9.preheader.i ], [ %blist.sroa.0.4, %bio_list_add.exit82.i.for.body9.i_crit_edge ]
  %bio_nr.092.i = phi i32 [ 0, %for.body9.preheader.i ], [ %inc.i, %bio_list_add.exit82.i.for.body9.i_crit_edge ]
  %43 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %io.i, align 8
  %io2.i59.i = getelementptr inbounds %struct.dm_io, ptr %44, i32 0, i32 8, i32 1
  %45 = ptrtoint ptr %io2.i59.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %io2.i59.i, align 4
  %tobool.not.i60.i = icmp eq ptr %46, null
  br i1 %tobool.not.i60.i, label %if.then.i62.i, label %if.else.i67.i

if.then.i62.i:                                    ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #23
  %tio1.i61.i = getelementptr inbounds %struct.dm_io, ptr %44, i32 0, i32 8
  br label %alloc_tio.exit77.i

if.else.i67.i:                                    ; preds = %for.body9.i
  %md.i63.i = getelementptr inbounds %struct.dm_io, ptr %44, i32 0, i32 1
  %47 = ptrtoint ptr %md.i63.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %md.i63.i, align 4
  %bs.i64.i = getelementptr inbounds %struct.mapped_device, ptr %48, i32 0, i32 28
  %call.i65.i = tail call ptr @bio_alloc_bioset(i32 noundef 2048, i16 noundef zeroext 0, ptr noundef %bs.i64.i) #21
  %tobool6.not.i66.i = icmp eq ptr %call.i65.i, null
  br i1 %tobool6.not.i66.i, label %if.else.i67.i.if.end21.i_crit_edge, label %cleanup.i70.i

if.else.i67.i.if.end21.i_crit_edge:               ; preds = %if.else.i67.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end21.i

cleanup.i70.i:                                    ; preds = %if.else.i67.i
  call void @__sanitizer_cov_trace_pc() #23
  %add.ptr.i68.i = getelementptr i8, ptr %call.i65.i, i32 -24
  %inside_dm_io.i69.i = getelementptr i8, ptr %call.i65.i, i32 -4
  %49 = ptrtoint ptr %inside_dm_io.i69.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %inside_dm_io.i69.i, align 4
  br label %alloc_tio.exit77.i

alloc_tio.exit77.i:                               ; preds = %cleanup.i70.i, %if.then.i62.i
  %tio.1.i71.i = phi ptr [ %add.ptr.i68.i, %cleanup.i70.i ], [ %tio1.i61.i, %if.then.i62.i ]
  %50 = ptrtoint ptr %tio.1.i71.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 7282014, ptr %tio.1.i71.i, align 8
  %51 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %io.i, align 8
  %io10.i72.i = getelementptr inbounds %struct.dm_target_io, ptr %tio.1.i71.i, i32 0, i32 1
  %53 = ptrtoint ptr %io10.i72.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %io10.i72.i, align 4
  %ti11.i73.i = getelementptr inbounds %struct.dm_target_io, ptr %tio.1.i71.i, i32 0, i32 2
  %54 = ptrtoint ptr %ti11.i73.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %ti, ptr %ti11.i73.i, align 8
  %target_bio_nr12.i74.i = getelementptr inbounds %struct.dm_target_io, ptr %tio.1.i71.i, i32 0, i32 3
  %55 = ptrtoint ptr %target_bio_nr12.i74.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %bio_nr.092.i, ptr %target_bio_nr12.i74.i, align 4
  %tobool12.not.i = icmp eq ptr %tio.1.i71.i, null
  br i1 %tobool12.not.i, label %alloc_tio.exit77.i.if.end21.i_crit_edge, label %if.end14.i

alloc_tio.exit77.i.if.end21.i_crit_edge:          ; preds = %alloc_tio.exit77.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end21.i

if.end14.i:                                       ; preds = %alloc_tio.exit77.i
  %clone15.i = getelementptr inbounds %struct.dm_target_io, ptr %tio.1.i71.i, i32 0, i32 6
  %56 = ptrtoint ptr %clone15.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %clone15.i, align 8
  %tobool.not.i79.i = icmp eq ptr %blist.sroa.10.2, null
  br i1 %tobool.not.i79.i, label %if.end14.i.bio_list_add.exit82.i_crit_edge, label %if.then.i80.i

if.end14.i.bio_list_add.exit82.i_crit_edge:       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %bio_list_add.exit82.i

if.then.i80.i:                                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #23
  %57 = ptrtoint ptr %blist.sroa.10.2 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %clone15.i, ptr %blist.sroa.10.2, align 8
  br label %bio_list_add.exit82.i

bio_list_add.exit82.i:                            ; preds = %if.then.i80.i, %if.end14.i.bio_list_add.exit82.i_crit_edge
  %blist.sroa.0.4 = phi ptr [ %blist.sroa.0.3, %if.then.i80.i ], [ %clone15.i, %if.end14.i.bio_list_add.exit82.i_crit_edge ]
  %inc.i = add nuw i32 %bio_nr.092.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %num_bios
  br i1 %exitcond.not.i, label %bio_list_add.exit82.i.alloc_multiple_bios.exit_crit_edge, label %bio_list_add.exit82.i.for.body9.i_crit_edge

bio_list_add.exit82.i.for.body9.i_crit_edge:      ; preds = %bio_list_add.exit82.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body9.i

bio_list_add.exit82.i.alloc_multiple_bios.exit_crit_edge: ; preds = %bio_list_add.exit82.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %alloc_multiple_bios.exit

if.end21.i:                                       ; preds = %alloc_tio.exit77.i.if.end21.i_crit_edge, %if.else.i67.i.if.end21.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %bio_nr.092.i, i32 %num_bios)
  %cmp22.i = icmp eq i32 %bio_nr.092.i, %num_bios
  br i1 %cmp22.i, label %if.end21.i.alloc_multiple_bios.exit_crit_edge, label %while.cond.preheader.i

if.end21.i.alloc_multiple_bios.exit_crit_edge:    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %alloc_multiple_bios.exit

while.cond.preheader.i:                           ; preds = %if.end21.i
  %tobool.not.i8395.i = icmp eq ptr %blist.sroa.0.3, null
  br i1 %tobool.not.i8395.i, label %while.cond.preheader.i.for.body9.preheader.i.1_crit_edge, label %while.cond.preheader.i.if.then.i84.i_crit_edge

while.cond.preheader.i.if.then.i84.i_crit_edge:   ; preds = %while.cond.preheader.i
  br label %if.then.i84.i

while.cond.preheader.i.for.body9.preheader.i.1_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body9.preheader.i.1

if.then.i84.i:                                    ; preds = %free_tio.exit.i.if.then.i84.i_crit_edge, %while.cond.preheader.i.if.then.i84.i_crit_edge
  %58 = phi ptr [ %60, %free_tio.exit.i.if.then.i84.i_crit_edge ], [ %blist.sroa.0.3, %while.cond.preheader.i.if.then.i84.i_crit_edge ]
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 8
  %tobool4.not.i.i = icmp eq ptr %60, null
  store ptr null, ptr %58, align 8
  %inside_dm_io.i86.i = getelementptr i8, ptr %58, i32 -4
  %61 = ptrtoint ptr %inside_dm_io.i86.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %inside_dm_io.i86.i, align 4, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not.i87.i = icmp eq i8 %62, 0
  br i1 %tobool.not.i87.i, label %if.end.i88.i, label %if.then.i84.i.free_tio.exit.i_crit_edge

if.then.i84.i.free_tio.exit.i_crit_edge:          ; preds = %if.then.i84.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %free_tio.exit.i

if.end.i88.i:                                     ; preds = %if.then.i84.i
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @bio_put(ptr noundef nonnull %58) #21
  br label %free_tio.exit.i

free_tio.exit.i:                                  ; preds = %if.end.i88.i, %if.then.i84.i.free_tio.exit.i_crit_edge
  br i1 %tobool4.not.i.i, label %free_tio.exit.i.for.body9.preheader.i.1_crit_edge, label %free_tio.exit.i.if.then.i84.i_crit_edge

free_tio.exit.i.if.then.i84.i_crit_edge:          ; preds = %free_tio.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then.i84.i

free_tio.exit.i.for.body9.preheader.i.1_crit_edge: ; preds = %free_tio.exit.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %for.body9.preheader.i.1

alloc_multiple_bios.exit:                         ; preds = %if.end21.i.alloc_multiple_bios.exit_crit_edge, %bio_list_add.exit82.i.alloc_multiple_bios.exit_crit_edge, %if.end21.i.1.alloc_multiple_bios.exit_crit_edge, %bio_list_add.exit.i
  %blist.sroa.0.6 = phi ptr [ %clone.i, %bio_list_add.exit.i ], [ %blist.sroa.0.3, %if.end21.i.alloc_multiple_bios.exit_crit_edge ], [ %blist.sroa.0.5.1, %if.end21.i.1.alloc_multiple_bios.exit_crit_edge ], [ %blist.sroa.0.4, %bio_list_add.exit82.i.alloc_multiple_bios.exit_crit_edge ]
  %tobool.not.i11 = icmp eq ptr %blist.sroa.0.6, null
  br i1 %tobool.not.i11, label %alloc_multiple_bios.exit.while.end_crit_edge, label %if.then.i.lr.ph

alloc_multiple_bios.exit.while.end_crit_edge:     ; preds = %alloc_multiple_bios.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end

if.then.i.lr.ph:                                  ; preds = %alloc_multiple_bios.exit
  %bio.i = getelementptr inbounds %struct.clone_info, ptr %ci, i32 0, i32 1
  %tobool.not.i4 = icmp eq ptr %len, null
  %sector.i = getelementptr inbounds %struct.clone_info, ptr %ci, i32 0, i32 3
  br label %if.then.i

if.then.i:                                        ; preds = %__clone_and_map_simple_bio.exit.if.then.i_crit_edge, %if.then.i.lr.ph
  %blist.sroa.0.712 = phi ptr [ %blist.sroa.0.6, %if.then.i.lr.ph ], [ %64, %__clone_and_map_simple_bio.exit.if.then.i_crit_edge ]
  %63 = ptrtoint ptr %blist.sroa.0.712 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %blist.sroa.0.712, align 8
  store ptr null, ptr %blist.sroa.0.712, align 8
  %add.ptr = getelementptr i8, ptr %blist.sroa.0.712, i32 -24
  %len_ptr.i = getelementptr i8, ptr %blist.sroa.0.712, i32 -8
  %65 = ptrtoint ptr %len_ptr.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %len, ptr %len_ptr.i, align 8
  %66 = ptrtoint ptr %bio.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bio.i, align 4
  tail call void @__bio_clone_fast(ptr noundef nonnull %blist.sroa.0.712, ptr noundef %67) #21
  br i1 %tobool.not.i4, label %if.then.i.__clone_and_map_simple_bio.exit_crit_edge, label %if.then.i5

if.then.i.__clone_and_map_simple_bio.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %__clone_and_map_simple_bio.exit

if.then.i5:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #23
  %68 = ptrtoint ptr %sector.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %sector.i, align 8
  %70 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %len, align 4
  %bi_iter.i.i = getelementptr i8, ptr %blist.sroa.0.712, i32 24
  %72 = ptrtoint ptr %bi_iter.i.i to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %69, ptr %bi_iter.i.i, align 8
  %conv.i.i.i = shl i32 %71, 9
  %bi_size.i.i = getelementptr i8, ptr %blist.sroa.0.712, i32 32
  %73 = ptrtoint ptr %bi_size.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %conv.i.i.i, ptr %bi_size.i.i, align 8
  br label %__clone_and_map_simple_bio.exit

__clone_and_map_simple_bio.exit:                  ; preds = %if.then.i5, %if.then.i.__clone_and_map_simple_bio.exit_crit_edge
  tail call fastcc void @__map_bio(ptr noundef %add.ptr) #21
  %tobool.not.i = icmp eq ptr %64, null
  br i1 %tobool.not.i, label %__clone_and_map_simple_bio.exit.while.end_crit_edge, label %__clone_and_map_simple_bio.exit.if.then.i_crit_edge

__clone_and_map_simple_bio.exit.if.then.i_crit_edge: ; preds = %__clone_and_map_simple_bio.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then.i

__clone_and_map_simple_bio.exit.while.end_crit_edge: ; preds = %__clone_and_map_simple_bio.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end

while.end:                                        ; preds = %__clone_and_map_simple_bio.exit.while.end_crit_edge, %alloc_multiple_bios.exit.while.end_crit_edge, %free_tio.exit.i.1.while.end_crit_edge, %while.cond.preheader.i.1.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_uninit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bio_clone_fast(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__map_bio(ptr noundef %tio) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %clone1 = getelementptr inbounds %struct.dm_target_io, ptr %tio, i32 0, i32 6
  %io2 = getelementptr inbounds %struct.dm_target_io, ptr %tio, i32 0, i32 1
  %0 = ptrtoint ptr %io2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io2, align 4
  %ti3 = getelementptr inbounds %struct.dm_target_io, ptr %tio, i32 0, i32 2
  %2 = ptrtoint ptr %ti3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ti3, align 8
  %bi_end_io = getelementptr inbounds %struct.dm_target_io, ptr %tio, i32 0, i32 6, i32 10
  %4 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @clone_endio, ptr %bi_end_io, align 8
  %io_count.i = getelementptr inbounds %struct.dm_io, ptr %1, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %io_count.i, i32 noundef 4) #21
  tail call void @llvm.prefetch.p0(ptr %io_count.i, i32 1, i32 3, i32 1) #21
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %io_count.i, ptr %io_count.i, i32 1, ptr elementtype(i32) %io_count.i) #21, !srcloc !307
  %bi_iter = getelementptr inbounds %struct.dm_target_io, ptr %tio, i32 0, i32 6, i32 8
  %6 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %bi_iter, align 8
  %bi_opf.i = getelementptr inbounds %struct.dm_target_io, ptr %tio, i32 0, i32 6, i32 2
  %8 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bi_opf.i, align 8
  %10 = and i32 %9, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not.i = icmp eq i32 %10, 0
  br i1 %cmp.not.i, label %entry.if.end14_crit_edge, label %swap_bios_limit.exit, !prof !314

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end14

swap_bios_limit.exit:                             ; preds = %entry
  %limit_swap_bios.i = getelementptr inbounds %struct.dm_target, ptr %3, i32 0, i32 13
  %11 = ptrtoint ptr %limit_swap_bios.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i = load i8, ptr %limit_swap_bios.i, align 4
  %12 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %bf.cast.i.not = icmp eq i8 %12, 0
  br i1 %bf.cast.i.not, label %swap_bios_limit.exit.if.end14_crit_edge, label %if.then, !prof !314

swap_bios_limit.exit.if.end14_crit_edge:          ; preds = %swap_bios_limit.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end14

if.then:                                          ; preds = %swap_bios_limit.exit
  %md5 = getelementptr inbounds %struct.dm_io, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %md5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %md5, align 4
  %15 = load volatile i32, ptr @swap_bios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp.i = icmp slt i32 %15, 1
  br i1 %cmp.i, label %if.then.i, label %if.then.get_swap_bios.exit_crit_edge, !prof !316

if.then.get_swap_bios.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %get_swap_bios.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %get_swap_bios.exit

get_swap_bios.exit:                               ; preds = %if.then.i, %if.then.get_swap_bios.exit_crit_edge
  %latch.0.i = phi i32 [ 2048, %if.then.i ], [ %15, %if.then.get_swap_bios.exit_crit_edge ]
  %swap_bios = getelementptr inbounds %struct.mapped_device, ptr %14, i32 0, i32 32
  %16 = ptrtoint ptr %swap_bios to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %swap_bios, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %latch.0.i, i32 %17)
  %cmp.not = icmp eq i32 %latch.0.i, %17
  br i1 %cmp.not, label %get_swap_bios.exit.if.end_crit_edge, label %if.then13, !prof !314

get_swap_bios.exit.if.end_crit_edge:              ; preds = %get_swap_bios.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.then13:                                        ; preds = %get_swap_bios.exit
  call void @__sanitizer_cov_trace_pc() #23
  tail call fastcc void @__set_swap_bios_limit(ptr noundef %14, i32 noundef %latch.0.i)
  br label %if.end

if.end:                                           ; preds = %if.then13, %get_swap_bios.exit.if.end_crit_edge
  %swap_bios_semaphore = getelementptr inbounds %struct.mapped_device, ptr %14, i32 0, i32 33
  tail call void @down(ptr noundef %swap_bios_semaphore) #21
  br label %if.end14

if.end14:                                         ; preds = %if.end, %swap_bios_limit.exit.if.end14_crit_edge, %entry.if.end14_crit_edge
  %md15 = getelementptr inbounds %struct.dm_io, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %md15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %md15, align 4
  %queue.i = getelementptr inbounds %struct.mapped_device, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %queue.i, align 4
  %zoned.i.i.i = getelementptr inbounds %struct.request_queue, ptr %21, i32 0, i32 37, i32 27
  %22 = ptrtoint ptr %zoned.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %zoned.i.i.i, align 4
  %call.off.i.i = add i32 %23, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i.i)
  %switch.i.i = icmp ult i32 %call.off.i.i, 2
  br i1 %switch.i.i, label %dm_emulate_zone_append.exit, label %if.end14.if.else_crit_edge

if.end14.if.else_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else

dm_emulate_zone_append.exit:                      ; preds = %if.end14
  %flags.i = getelementptr inbounds %struct.mapped_device, ptr %19, i32 0, i32 4
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %flags.i, align 4
  %26 = and i32 %25, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.i.not = icmp eq i32 %26, 0
  br i1 %tobool.i.not, label %dm_emulate_zone_append.exit.if.else_crit_edge, label %if.then17

dm_emulate_zone_append.exit.if.else_crit_edge:    ; preds = %dm_emulate_zone_append.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.else

if.then17:                                        ; preds = %dm_emulate_zone_append.exit
  call void @__sanitizer_cov_trace_pc() #23
  %call18 = tail call i32 @dm_zone_map_bio(ptr noundef %tio) #21
  br label %if.end20

if.else:                                          ; preds = %dm_emulate_zone_append.exit.if.else_crit_edge, %if.end14.if.else_crit_edge
  %type = getelementptr inbounds %struct.dm_target, ptr %3, i32 0, i32 1
  %27 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %type, align 4
  %map = getelementptr inbounds %struct.target_type, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %map, align 4
  %call19 = tail call i32 %30(ptr noundef %3, ptr noundef %clone1) #21
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then17
  %r.0 = phi i32 [ %call18, %if.then17 ], [ %call19, %if.else ]
  %31 = zext i32 %r.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %r.0, label %do.end [
    i32 0, label %if.end20.sw.epilog_crit_edge
    i32 1, label %sw.bb
    i32 4, label %sw.bb22
    i32 2, label %sw.bb35
  ]

if.end20.sw.epilog_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #23
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #23
  %orig_bio = getelementptr inbounds %struct.dm_io, ptr %1, i32 0, i32 4
  %32 = ptrtoint ptr %orig_bio to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %orig_bio, align 8
  %bi_bdev = getelementptr inbounds %struct.bio, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %bi_bdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bi_bdev, align 4
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %35, i32 0, i32 17
  %36 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bd_disk, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 8
  %shl.i = shl i32 %39, 20
  %first_minor.i = getelementptr inbounds %struct.gendisk, ptr %37, i32 0, i32 1
  %40 = ptrtoint ptr %first_minor.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %first_minor.i, align 4
  %or.i = or i32 %shl.i, %41
  tail call fastcc void @trace_block_bio_remap(ptr noundef %clone1, i32 noundef %or.i, i64 noundef %7)
  tail call void @submit_bio_noacct(ptr noundef %clone1) #21
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end20
  %42 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bi_opf.i, align 8
  %44 = and i32 %43, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp.not.i84 = icmp eq i32 %44, 0
  br i1 %cmp.not.i84, label %sw.bb22.if.end34_crit_edge, label %swap_bios_limit.exit89, !prof !314

sw.bb22.if.end34_crit_edge:                       ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end34

swap_bios_limit.exit89:                           ; preds = %sw.bb22
  %limit_swap_bios.i85 = getelementptr inbounds %struct.dm_target, ptr %3, i32 0, i32 13
  %45 = ptrtoint ptr %limit_swap_bios.i85 to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load.i86 = load i8, ptr %limit_swap_bios.i85, align 4
  %46 = and i8 %bf.load.i86, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %bf.cast.i87.not = icmp eq i8 %46, 0
  br i1 %bf.cast.i87.not, label %swap_bios_limit.exit89.if.end34_crit_edge, label %if.then30, !prof !314

swap_bios_limit.exit89.if.end34_crit_edge:        ; preds = %swap_bios_limit.exit89
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end34

if.then30:                                        ; preds = %swap_bios_limit.exit89
  call void @__sanitizer_cov_trace_pc() #23
  %47 = ptrtoint ptr %md15 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %md15, align 4
  %swap_bios_semaphore33 = getelementptr inbounds %struct.mapped_device, ptr %48, i32 0, i32 33
  tail call void @up(ptr noundef %swap_bios_semaphore33) #21
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %swap_bios_limit.exit89.if.end34_crit_edge, %sw.bb22.if.end34_crit_edge
  %inside_dm_io.i = getelementptr inbounds %struct.dm_target_io, ptr %tio, i32 0, i32 5
  %49 = ptrtoint ptr %inside_dm_io.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %inside_dm_io.i, align 4, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i = icmp eq i8 %50, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end34.free_tio.exit_crit_edge

if.end34.free_tio.exit_crit_edge:                 ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #23
  br label %free_tio.exit

if.end.i:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @bio_put(ptr noundef %clone1) #21
  br label %free_tio.exit

free_tio.exit:                                    ; preds = %if.end.i, %if.end34.free_tio.exit_crit_edge
  tail call void @dm_io_dec_pending(ptr noundef %1, i8 noundef zeroext 10)
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end20
  %51 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %bi_opf.i, align 8
  %53 = and i32 %52, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp.not.i91 = icmp eq i32 %53, 0
  br i1 %cmp.not.i91, label %sw.bb35.if.end47_crit_edge, label %swap_bios_limit.exit96, !prof !314

sw.bb35.if.end47_crit_edge:                       ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end47

swap_bios_limit.exit96:                           ; preds = %sw.bb35
  %limit_swap_bios.i92 = getelementptr inbounds %struct.dm_target, ptr %3, i32 0, i32 13
  %54 = ptrtoint ptr %limit_swap_bios.i92 to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load.i93 = load i8, ptr %limit_swap_bios.i92, align 4
  %55 = and i8 %bf.load.i93, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %bf.cast.i94.not = icmp eq i8 %55, 0
  br i1 %bf.cast.i94.not, label %swap_bios_limit.exit96.if.end47_crit_edge, label %if.then43, !prof !314

swap_bios_limit.exit96.if.end47_crit_edge:        ; preds = %swap_bios_limit.exit96
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end47

if.then43:                                        ; preds = %swap_bios_limit.exit96
  call void @__sanitizer_cov_trace_pc() #23
  %56 = ptrtoint ptr %md15 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %md15, align 4
  %swap_bios_semaphore46 = getelementptr inbounds %struct.mapped_device, ptr %57, i32 0, i32 33
  tail call void @up(ptr noundef %swap_bios_semaphore46) #21
  br label %if.end47

if.end47:                                         ; preds = %if.then43, %swap_bios_limit.exit96.if.end47_crit_edge, %sw.bb35.if.end47_crit_edge
  %inside_dm_io.i97 = getelementptr inbounds %struct.dm_target_io, ptr %tio, i32 0, i32 5
  %58 = ptrtoint ptr %inside_dm_io.i97 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %inside_dm_io.i97, align 4, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.not.i98 = icmp eq i8 %59, 0
  br i1 %tobool.not.i98, label %if.end.i100, label %if.end47.free_tio.exit101_crit_edge

if.end47.free_tio.exit101_crit_edge:              ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #23
  br label %free_tio.exit101

if.end.i100:                                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @bio_put(ptr noundef %clone1) #21
  br label %free_tio.exit101

free_tio.exit101:                                 ; preds = %if.end.i100, %if.end47.free_tio.exit101_crit_edge
  tail call void @dm_io_dec_pending(ptr noundef %1, i8 noundef zeroext 11)
  br label %sw.epilog

do.end:                                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #23
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %r.0) #25
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1180, 0\0A.popsection", ""() #21, !srcloc !357
  unreachable

sw.epilog:                                        ; preds = %free_tio.exit101, %free_tio.exit, %sw.bb, %if.end20.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clone_endio(ptr noundef %bio) #0 align 64 {
entry:
  %error = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %error) #21
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %0 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bi_status, align 2
  %2 = ptrtoint ptr %error to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %error, align 1
  %io1 = getelementptr i8, ptr %bio, i32 -20
  %3 = ptrtoint ptr %io1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %io1, align 4
  %md3 = getelementptr inbounds %struct.dm_io, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %md3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %md3, align 4
  %ti = getelementptr i8, ptr %bio, i32 -16
  %7 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ti, align 8
  %type = getelementptr inbounds %struct.dm_target, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %type, align 4
  %end_io = getelementptr inbounds %struct.target_type, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %end_io to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %end_io, align 8
  %bi_bdev = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %13 = ptrtoint ptr %bi_bdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bi_bdev, align 4
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %14, i32 0, i32 17
  %15 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bd_disk, align 8
  %queue = getelementptr inbounds %struct.gendisk, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %queue, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %1)
  %cmp = icmp eq i8 %1, 5
  br i1 %cmp, label %if.then, label %entry.if.end29_crit_edge, !prof !316

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end29

if.then:                                          ; preds = %entry
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %19 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bi_opf, align 8
  %trunc = trunc i32 %20 to i8
  %21 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.88)
  switch i8 %trunc, label %if.then.if.end29_crit_edge [
    i8 3, label %land.lhs.true
    i8 7, label %land.lhs.true14
    i8 9, label %land.lhs.true23
  ]

if.then.if.end29_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end29

land.lhs.true:                                    ; preds = %if.then
  %max_discard_sectors = getelementptr inbounds %struct.request_queue, ptr %18, i32 0, i32 37, i32 13
  %22 = ptrtoint ptr %max_discard_sectors to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_discard_sectors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool8.not = icmp eq i32 %23, 0
  br i1 %tobool8.not, label %if.then9, label %land.lhs.true.if.end29_crit_edge

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end29

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @disable_discard(ptr noundef %6)
  br label %if.end29

land.lhs.true14:                                  ; preds = %if.then
  %max_write_same_sectors = getelementptr inbounds %struct.request_queue, ptr %18, i32 0, i32 37, i32 15
  %24 = ptrtoint ptr %max_write_same_sectors to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_write_same_sectors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool16.not = icmp eq i32 %25, 0
  br i1 %tobool16.not, label %if.then17, label %land.lhs.true14.if.end29_crit_edge

land.lhs.true14.if.end29_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end29

if.then17:                                        ; preds = %land.lhs.true14
  %holders.i.i = getelementptr inbounds %struct.mapped_device, ptr %6, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %holders.i.i, i32 noundef 4) #21
  %26 = ptrtoint ptr %holders.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %holders.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i.i, label %do.body4.i.i, label %disable_write_same.exit, !prof !316

do.body4.i.i:                                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #23
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1956, 0\0A.popsection", ""() #21, !srcloc !324
  unreachable

disable_write_same.exit:                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #23
  %queue.i.i = getelementptr inbounds %struct.mapped_device, ptr %6, i32 0, i32 8
  %28 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %queue.i.i, align 4
  %max_write_same_sectors.i = getelementptr inbounds %struct.request_queue, ptr %29, i32 0, i32 37, i32 15
  %30 = ptrtoint ptr %max_write_same_sectors.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %max_write_same_sectors.i, align 4
  br label %if.end29

land.lhs.true23:                                  ; preds = %if.then
  %max_write_zeroes_sectors = getelementptr inbounds %struct.request_queue, ptr %18, i32 0, i32 37, i32 16
  %31 = ptrtoint ptr %max_write_zeroes_sectors to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_write_zeroes_sectors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool25.not = icmp eq i32 %32, 0
  br i1 %tobool25.not, label %if.then26, label %land.lhs.true23.if.end29_crit_edge

land.lhs.true23.if.end29_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end29

if.then26:                                        ; preds = %land.lhs.true23
  %holders.i.i148 = getelementptr inbounds %struct.mapped_device, ptr %6, i32 0, i32 9
  %call.i.i.i.i149 = tail call zeroext i1 @__kasan_check_read(ptr noundef %holders.i.i148, i32 noundef 4) #21
  %33 = ptrtoint ptr %holders.i.i148 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %holders.i.i148, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i.i150 = icmp eq i32 %34, 0
  br i1 %tobool.not.i.i150, label %do.body4.i.i151, label %disable_write_zeroes.exit, !prof !316

do.body4.i.i151:                                  ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #23
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1956, 0\0A.popsection", ""() #21, !srcloc !324
  unreachable

disable_write_zeroes.exit:                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #23
  %queue.i.i152 = getelementptr inbounds %struct.mapped_device, ptr %6, i32 0, i32 8
  %35 = ptrtoint ptr %queue.i.i152 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %queue.i.i152, align 4
  %max_write_zeroes_sectors.i = getelementptr inbounds %struct.request_queue, ptr %36, i32 0, i32 37, i32 16
  %37 = ptrtoint ptr %max_write_zeroes_sectors.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %max_write_zeroes_sectors.i, align 4
  br label %if.end29

if.end29:                                         ; preds = %disable_write_zeroes.exit, %land.lhs.true23.if.end29_crit_edge, %disable_write_same.exit, %land.lhs.true14.if.end29_crit_edge, %if.then9, %land.lhs.true.if.end29_crit_edge, %if.then.if.end29_crit_edge, %entry.if.end29_crit_edge
  %zoned.i.i = getelementptr inbounds %struct.request_queue, ptr %18, i32 0, i32 37, i32 27
  %38 = ptrtoint ptr %zoned.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %zoned.i.i, align 4
  %call.off.i = add i32 %39, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off.i)
  %switch.i = icmp ult i32 %call.off.i, 2
  br i1 %switch.i, label %if.then30, label %if.end29.if.end31_crit_edge

if.end29.if.end31_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end31

if.then30:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #23
  tail call void @dm_zone_endio(ptr noundef %4, ptr noundef %bio) #21
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end29.if.end31_crit_edge
  %tobool32.not = icmp eq ptr %12, null
  br i1 %tobool32.not, label %if.end31.if.end99_crit_edge, label %if.then33

if.end31.if.end99_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end99

if.then33:                                        ; preds = %if.end31
  %40 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ti, align 8
  %call35 = call i32 %12(ptr noundef %41, ptr noundef %bio, ptr noundef nonnull %error) #21
  %42 = zext i32 %call35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %call35, label %do.end90 [
    i32 2, label %sw.bb
    i32 0, label %if.then33.if.end99_crit_edge
    i32 1, label %if.then33.cleanup112_crit_edge
  ]

if.then33.cleanup112_crit_edge:                   ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup112

if.then33.if.end99_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end99

sw.bb:                                            ; preds = %if.then33
  %call36 = call zeroext i1 @dm_is_zone_write(ptr noundef %6, ptr noundef %bio) #21
  br i1 %call36, label %land.rhs, label %if.else85

land.rhs:                                         ; preds = %sw.bb
  %.b146 = load i1, ptr @clone_endio.__already_done, align 1
  br i1 %.b146, label %land.rhs.if.then84_crit_edge, label %if.then52, !prof !314

land.rhs.if.then84_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then84

if.then52:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #23
  store i1 true, ptr @clone_endio.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 912, i32 noundef 9, ptr noundef null) #21
  br label %if.then84

if.then84:                                        ; preds = %if.then52, %land.rhs.if.then84_crit_edge
  %43 = ptrtoint ptr %error to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 10, ptr %error, align 1
  br label %if.end99

if.else85:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #23
  %44 = ptrtoint ptr %error to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 11, ptr %error, align 1
  br label %if.end99

do.end90:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #23
  %call92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %call35) #25
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/md/dm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 924, 0\0A.popsection", ""() #21, !srcloc !358
  unreachable

if.end99:                                         ; preds = %if.else85, %if.then84, %if.then33.if.end99_crit_edge, %if.end31.if.end99_crit_edge
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %45 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %bi_opf.i, align 8
  %47 = and i32 %46, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp.not.i = icmp eq i32 %47, 0
  br i1 %cmp.not.i, label %if.end99.if.end111_crit_edge, label %swap_bios_limit.exit, !prof !314

if.end99.if.end111_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end111

swap_bios_limit.exit:                             ; preds = %if.end99
  %48 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ti, align 8
  %limit_swap_bios.i = getelementptr inbounds %struct.dm_target, ptr %49, i32 0, i32 13
  %50 = ptrtoint ptr %limit_swap_bios.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load.i = load i8, ptr %limit_swap_bios.i, align 4
  %51 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %bf.cast.i.not = icmp eq i8 %51, 0
  br i1 %bf.cast.i.not, label %swap_bios_limit.exit.if.end111_crit_edge, label %if.then108, !prof !314

swap_bios_limit.exit.if.end111_crit_edge:         ; preds = %swap_bios_limit.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end111

if.then108:                                       ; preds = %swap_bios_limit.exit
  call void @__sanitizer_cov_trace_pc() #23
  %52 = ptrtoint ptr %md3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %md3, align 4
  %swap_bios_semaphore = getelementptr inbounds %struct.mapped_device, ptr %53, i32 0, i32 33
  call void @up(ptr noundef %swap_bios_semaphore) #21
  br label %if.end111

if.end111:                                        ; preds = %if.then108, %swap_bios_limit.exit.if.end111_crit_edge, %if.end99.if.end111_crit_edge
  %inside_dm_io.i = getelementptr i8, ptr %bio, i32 -4
  %54 = ptrtoint ptr %inside_dm_io.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %inside_dm_io.i, align 4, !range !308
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i = icmp eq i8 %55, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end111.free_tio.exit_crit_edge

if.end111.free_tio.exit_crit_edge:                ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #23
  br label %free_tio.exit

if.end.i:                                         ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #23
  call void @bio_put(ptr noundef %bio) #21
  br label %free_tio.exit

free_tio.exit:                                    ; preds = %if.end.i, %if.end111.free_tio.exit_crit_edge
  %56 = ptrtoint ptr %error to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %error, align 1
  call void @dm_io_dec_pending(ptr noundef %4, i8 noundef zeroext %57)
  br label %cleanup112

cleanup112:                                       ; preds = %free_tio.exit, %if.then33.cleanup112_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %error) #21
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__set_swap_bios_limit(ptr noundef %md, i32 noundef %latch) unnamed_addr #18 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %swap_bios_lock = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 34
  tail call void @mutex_lock_nested(ptr noundef %swap_bios_lock, i32 noundef 0) #21
  %swap_bios = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 32
  %0 = ptrtoint ptr %swap_bios to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %swap_bios, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %latch)
  %cmp21 = icmp sgt i32 %1, %latch
  br i1 %cmp21, label %while.body.lr.ph, label %entry.while.cond2.preheader_crit_edge

entry.while.cond2.preheader_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.cond2.preheader

while.body.lr.ph:                                 ; preds = %entry
  %swap_bios_semaphore = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 33
  br label %while.body

while.cond2.preheader:                            ; preds = %while.body.while.cond2.preheader_crit_edge, %entry.while.cond2.preheader_crit_edge
  %2 = ptrtoint ptr %swap_bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %swap_bios, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %latch)
  %cmp422 = icmp slt i32 %3, %latch
  br i1 %cmp422, label %while.body5.lr.ph, label %while.cond2.preheader.while.end10_crit_edge

while.cond2.preheader.while.end10_crit_edge:      ; preds = %while.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end10

while.body5.lr.ph:                                ; preds = %while.cond2.preheader
  %swap_bios_semaphore8 = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 33
  br label %while.body5

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  tail call void @__might_resched(ptr noundef nonnull @.str.1, i32 noundef 1106, i32 noundef 0) #21
  %call.i = tail call i32 @__cond_resched() #21
  tail call void @down(ptr noundef %swap_bios_semaphore) #21
  %4 = ptrtoint ptr %swap_bios to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %swap_bios, align 8
  %dec = add i32 %5, -1
  store i32 %dec, ptr %swap_bios, align 8
  %cmp = icmp sgt i32 %dec, %latch
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.while.cond2.preheader_crit_edge

while.body.while.cond2.preheader_crit_edge:       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.cond2.preheader

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.body

while.body5:                                      ; preds = %while.body5.while.body5_crit_edge, %while.body5.lr.ph
  tail call void @__might_resched(ptr noundef nonnull @.str.1, i32 noundef 1111, i32 noundef 0) #21
  %call.i20 = tail call i32 @__cond_resched() #21
  tail call void @up(ptr noundef %swap_bios_semaphore8) #21
  %6 = ptrtoint ptr %swap_bios to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %swap_bios, align 8
  %inc = add i32 %7, 1
  store i32 %inc, ptr %swap_bios, align 8
  %cmp4 = icmp slt i32 %inc, %latch
  br i1 %cmp4, label %while.body5.while.body5_crit_edge, label %while.body5.while.end10_crit_edge

while.body5.while.end10_crit_edge:                ; preds = %while.body5
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.end10

while.body5.while.body5_crit_edge:                ; preds = %while.body5
  call void @__sanitizer_cov_trace_pc() #23
  br label %while.body5

while.end10:                                      ; preds = %while.body5.while.end10_crit_edge, %while.cond2.preheader.while.end10_crit_edge
  tail call void @mutex_unlock(ptr noundef %swap_bios_lock) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_zone_map_bio(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_block_bio_remap(ptr noundef %bio, i32 noundef %dev, i64 noundef %from) unnamed_addr #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_bio_remap, i32 0, i32 1), ptr blockaddress(@trace_block_bio_remap, %do.body)) #21
          to label %if.end48 [label %do.body], !srcloc !342

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !297) #21
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
  call void @__sanitizer_cov_trace_pc() #23
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !314

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.61, i32 noundef 108, i32 noundef 9, ptr noundef null) #21
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
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #23
  %9 = tail call i32 @llvm.read_register.i32(metadata !297) #21
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !359
  %call42 = tail call i32 @__traceiter_block_bio_remap(ptr noundef null, ptr noundef %bio, i32 noundef %dev, i64 noundef %from) #21
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !360
  %13 = tail call i32 @llvm.read_register.i32(metadata !297) #21
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !297) #21
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
  call void @__sanitizer_cov_trace_pc() #23
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !314

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #23
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #23
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.61, i32 noundef 108, i32 noundef 9, ptr noundef null) #21
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
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !297) #21
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !355
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_bio_remap, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_bio_remap, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_block_bio_remap.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #23
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #23
  store i1 true, ptr @trace_block_bio_remap.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.60, i32 noundef 486, ptr noundef nonnull @.str.2) #21
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #21, !srcloc !356
  %31 = tail call i32 @llvm.read_register.i32(metadata !297) #21
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
declare dso_local void @up(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_zone_endio(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_block_bio_remap(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_table_find_target(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_integrity_clone(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_integrity_trim(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bio_crypt_clone(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bio_advance(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_block_split(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_start_io_acct_time(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_deferred_remove(ptr nocapture noundef readnone %w) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dm_deferred_remove() #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_deferred_remove() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dm_prepare_ioctl(ptr noundef %md, ptr nocapture noundef %srcu_idx, ptr noundef %bdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 4
  %call38 = tail call ptr @dm_get_live_table(ptr noundef %md, ptr noundef %srcu_idx)
  %tobool.not39 = icmp eq ptr %call38, null
  br i1 %tobool.not39, label %entry.cleanup_crit_edge, label %lor.lhs.false.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

lor.lhs.false.lr.ph:                              ; preds = %entry
  %io_barrier.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 38
  %dep_map.i.i = getelementptr inbounds %struct.mapped_device, ptr %md, i32 0, i32 38, i32 16
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %dm_put_live_table.exit.lor.lhs.false_crit_edge, %lor.lhs.false.lr.ph
  %call40 = phi ptr [ %call38, %lor.lhs.false.lr.ph ], [ %call, %dm_put_live_table.exit.lor.lhs.false_crit_edge ]
  %call1 = tail call i64 @dm_table_get_size(ptr noundef nonnull %call40) #21
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call1)
  %tobool2.not = icmp eq i64 %call1, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call3 = tail call i32 @dm_table_get_num_targets(ptr noundef nonnull %call40) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 1
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @dm_table_get_target(ptr noundef nonnull %call40, i32 noundef 0) #21
  %type = getelementptr inbounds %struct.dm_target, ptr %call6, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %prepare_ioctl = getelementptr inbounds %struct.target_type, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %prepare_ioctl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prepare_ioctl, align 4
  %tobool7.not = icmp eq ptr %3, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool11.not = icmp eq i32 %6, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %call16 = tail call i32 %3(ptr noundef %call6, ptr noundef %bdev) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 -107, i32 %call16)
  %cmp17 = icmp eq i32 %call16, -107
  br i1 %cmp17, label %land.lhs.true, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end13
  %7 = tail call i32 @llvm.read_register.i32(metadata !297) #21
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %stack.i.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %and1.i.i.i.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.if.then21_crit_edge, label %fatal_signal_pending.exit

land.lhs.true.if.then21_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then21

fatal_signal_pending.exit:                        ; preds = %land.lhs.true
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 116, i32 1
  %15 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %signal.i.i, align 4
  %17 = and i32 %16, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool20.not = icmp eq i32 %17, 0
  br i1 %tobool20.not, label %fatal_signal_pending.exit.if.then21_crit_edge, label %fatal_signal_pending.exit.cleanup_crit_edge

fatal_signal_pending.exit.cleanup_crit_edge:      ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

fatal_signal_pending.exit.if.then21_crit_edge:    ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.then21

if.then21:                                        ; preds = %fatal_signal_pending.exit.if.then21_crit_edge, %land.lhs.true.if.then21_crit_edge
  %18 = ptrtoint ptr %srcu_idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %srcu_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %tobool.not.i.i = icmp ult i32 %19, 2
  br i1 %tobool.not.i.i, label %if.then21.dm_put_live_table.exit_crit_edge, label %land.rhs.i.i

if.then21.dm_put_live_table.exit_crit_edge:       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #23
  br label %dm_put_live_table.exit

land.rhs.i.i:                                     ; preds = %if.then21
  %.b40.i.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b40.i.i, label %land.rhs.i.i.dm_put_live_table.exit_crit_edge, label %if.then.i.i, !prof !314

land.rhs.i.i.dm_put_live_table.exit_crit_edge:    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %dm_put_live_table.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #23
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 189, i32 noundef 9, ptr noundef null) #21
  br label %dm_put_live_table.exit

dm_put_live_table.exit:                           ; preds = %if.then.i.i, %land.rhs.i.i.dm_put_live_table.exit_crit_edge, %if.then21.dm_put_live_table.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef %dep_map.i.i) #21
  tail call void @__srcu_read_unlock(ptr noundef %io_barrier.i, i32 noundef %19) #21
  tail call void @msleep(i32 noundef 10) #21
  %call = tail call ptr @dm_get_live_table(ptr noundef %md, ptr noundef %srcu_idx)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %dm_put_live_table.exit.cleanup_crit_edge, label %dm_put_live_table.exit.lor.lhs.false_crit_edge

dm_put_live_table.exit.lor.lhs.false_crit_edge:   ; preds = %dm_put_live_table.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %lor.lhs.false

dm_put_live_table.exit.cleanup_crit_edge:         ; preds = %dm_put_live_table.exit
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

cleanup:                                          ; preds = %dm_put_live_table.exit.cleanup_crit_edge, %fatal_signal_pending.exit.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -25, %entry.cleanup_crit_edge ], [ %call16, %if.end13.cleanup_crit_edge ], [ -107, %fatal_signal_pending.exit.cleanup_crit_edge ], [ -11, %if.end9.cleanup_crit_edge ], [ -25, %if.end5.cleanup_crit_edge ], [ -25, %if.end.cleanup_crit_edge ], [ -25, %dm_put_live_table.exit.cleanup_crit_edge ], [ -25, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_table_get_num_targets(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm_pr_register(ptr nocapture noundef readonly %bdev, i64 noundef %old_key, i64 noundef %new_key, i32 noundef %flags) #0 align 64 {
entry:
  %pr = alloca %struct.dm_pr, align 8
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pr) #21
  %0 = getelementptr inbounds i8, ptr %pr, i32 16
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %0, align 8
  %2 = ptrtoint ptr %pr to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %old_key, ptr %pr, align 8
  %new_key2 = getelementptr inbounds %struct.dm_pr, ptr %pr, i32 0, i32 1
  %3 = ptrtoint ptr %new_key2 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %new_key, ptr %new_key2, align 8
  %flags3 = getelementptr inbounds %struct.dm_pr, ptr %pr, i32 0, i32 2
  %4 = ptrtoint ptr %flags3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %flags, ptr %flags3, align 8
  %fail_early = getelementptr inbounds %struct.dm_pr, ptr %pr, i32 0, i32 3
  %5 = ptrtoint ptr %fail_early to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %fail_early, align 4
  %call = call fastcc i32 @dm_call_pr(ptr noundef %bdev, ptr noundef nonnull %pr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %new_key)
  %tobool4.not = icmp eq i64 %new_key, 0
  %or.cond = or i1 %tobool4.not, %tobool.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %6 = ptrtoint ptr %pr to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %new_key, ptr %pr, align 8
  %7 = ptrtoint ptr %new_key2 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %new_key2, align 8
  %8 = ptrtoint ptr %flags3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %flags3, align 8
  %9 = ptrtoint ptr %fail_early to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %fail_early, align 4
  %10 = call fastcc i32 @dm_call_pr(ptr noundef %bdev, ptr noundef nonnull %pr)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pr) #21
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm_pr_reserve(ptr noundef %bdev, i64 noundef %key, i32 noundef %type, i32 noundef %flags) #0 align 64 {
entry:
  %bdev.addr = alloca ptr, align 4
  %srcu_idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bdev.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %bdev, ptr %bdev.addr, align 4
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %1 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %2, i32 0, i32 10
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %srcu_idx) #21
  %5 = ptrtoint ptr %srcu_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %srcu_idx, align 4, !annotation !336
  %call = call fastcc i32 @dm_prepare_ioctl(ptr noundef %4, ptr noundef nonnull %srcu_idx, ptr noundef nonnull %bdev.addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %out

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %bdev.addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bdev.addr, align 4
  %bd_disk1 = getelementptr inbounds %struct.block_device, ptr %7, i32 0, i32 17
  %8 = ptrtoint ptr %bd_disk1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bd_disk1, align 8
  %fops = getelementptr inbounds %struct.gendisk, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fops, align 8
  %pr_ops = getelementptr inbounds %struct.block_device_operations, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %pr_ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pr_ops, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.end.out_crit_edge, label %land.lhs.true

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %out

land.lhs.true:                                    ; preds = %if.end
  %pr_reserve = getelementptr inbounds %struct.pr_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %pr_reserve to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pr_reserve, align 4
  %tobool2.not = icmp eq ptr %15, null
  br i1 %tobool2.not, label %land.lhs.true.out_crit_edge, label %if.then3

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %out

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  %call5 = call i32 %15(ptr noundef %7, i64 noundef %key, i32 noundef %type, i32 noundef %flags) #21
  br label %out

out:                                              ; preds = %if.then3, %land.lhs.true.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %r.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call5, %if.then3 ], [ -95, %land.lhs.true.out_crit_edge ], [ -95, %if.end.out_crit_edge ]
  %16 = ptrtoint ptr %srcu_idx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %srcu_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %tobool.not.i.i.i = icmp ult i32 %17, 2
  br i1 %tobool.not.i.i.i, label %out.dm_unprepare_ioctl.exit_crit_edge, label %land.rhs.i.i.i

out.dm_unprepare_ioctl.exit_crit_edge:            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #23
  br label %dm_unprepare_ioctl.exit

land.rhs.i.i.i:                                   ; preds = %out
  %.b40.i.i.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b40.i.i.i, label %land.rhs.i.i.i.dm_unprepare_ioctl.exit_crit_edge, label %if.then.i.i.i, !prof !314

land.rhs.i.i.i.dm_unprepare_ioctl.exit_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %dm_unprepare_ioctl.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 189, i32 noundef 9, ptr noundef null) #21
  br label %dm_unprepare_ioctl.exit

dm_unprepare_ioctl.exit:                          ; preds = %if.then.i.i.i, %land.rhs.i.i.i.dm_unprepare_ioctl.exit_crit_edge, %out.dm_unprepare_ioctl.exit_crit_edge
  %io_barrier.i.i = getelementptr inbounds %struct.mapped_device, ptr %4, i32 0, i32 38
  %dep_map.i.i.i = getelementptr inbounds %struct.mapped_device, ptr %4, i32 0, i32 38, i32 16
  call fastcc void @rcu_lock_release(ptr noundef %dep_map.i.i.i) #21
  call void @__srcu_read_unlock(ptr noundef %io_barrier.i.i, i32 noundef %17) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %srcu_idx) #21
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm_pr_release(ptr noundef %bdev, i64 noundef %key, i32 noundef %type) #0 align 64 {
entry:
  %bdev.addr = alloca ptr, align 4
  %srcu_idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bdev.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %bdev, ptr %bdev.addr, align 4
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %1 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %2, i32 0, i32 10
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %srcu_idx) #21
  %5 = ptrtoint ptr %srcu_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %srcu_idx, align 4, !annotation !336
  %call = call fastcc i32 @dm_prepare_ioctl(ptr noundef %4, ptr noundef nonnull %srcu_idx, ptr noundef nonnull %bdev.addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %out

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %bdev.addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bdev.addr, align 4
  %bd_disk1 = getelementptr inbounds %struct.block_device, ptr %7, i32 0, i32 17
  %8 = ptrtoint ptr %bd_disk1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bd_disk1, align 8
  %fops = getelementptr inbounds %struct.gendisk, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fops, align 8
  %pr_ops = getelementptr inbounds %struct.block_device_operations, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %pr_ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pr_ops, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.end.out_crit_edge, label %land.lhs.true

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %out

land.lhs.true:                                    ; preds = %if.end
  %pr_release = getelementptr inbounds %struct.pr_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %pr_release to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pr_release, align 4
  %tobool2.not = icmp eq ptr %15, null
  br i1 %tobool2.not, label %land.lhs.true.out_crit_edge, label %if.then3

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %out

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  %call5 = call i32 %15(ptr noundef %7, i64 noundef %key, i32 noundef %type) #21
  br label %out

out:                                              ; preds = %if.then3, %land.lhs.true.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %r.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call5, %if.then3 ], [ -95, %land.lhs.true.out_crit_edge ], [ -95, %if.end.out_crit_edge ]
  %16 = ptrtoint ptr %srcu_idx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %srcu_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %tobool.not.i.i.i = icmp ult i32 %17, 2
  br i1 %tobool.not.i.i.i, label %out.dm_unprepare_ioctl.exit_crit_edge, label %land.rhs.i.i.i

out.dm_unprepare_ioctl.exit_crit_edge:            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #23
  br label %dm_unprepare_ioctl.exit

land.rhs.i.i.i:                                   ; preds = %out
  %.b40.i.i.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b40.i.i.i, label %land.rhs.i.i.i.dm_unprepare_ioctl.exit_crit_edge, label %if.then.i.i.i, !prof !314

land.rhs.i.i.i.dm_unprepare_ioctl.exit_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %dm_unprepare_ioctl.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 189, i32 noundef 9, ptr noundef null) #21
  br label %dm_unprepare_ioctl.exit

dm_unprepare_ioctl.exit:                          ; preds = %if.then.i.i.i, %land.rhs.i.i.i.dm_unprepare_ioctl.exit_crit_edge, %out.dm_unprepare_ioctl.exit_crit_edge
  %io_barrier.i.i = getelementptr inbounds %struct.mapped_device, ptr %4, i32 0, i32 38
  %dep_map.i.i.i = getelementptr inbounds %struct.mapped_device, ptr %4, i32 0, i32 38, i32 16
  call fastcc void @rcu_lock_release(ptr noundef %dep_map.i.i.i) #21
  call void @__srcu_read_unlock(ptr noundef %io_barrier.i.i, i32 noundef %17) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %srcu_idx) #21
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm_pr_preempt(ptr noundef %bdev, i64 noundef %old_key, i64 noundef %new_key, i32 noundef %type, i1 noundef zeroext %abort) #0 align 64 {
entry:
  %bdev.addr = alloca ptr, align 4
  %srcu_idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bdev.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %bdev, ptr %bdev.addr, align 4
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %1 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %2, i32 0, i32 10
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %srcu_idx) #21
  %5 = ptrtoint ptr %srcu_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %srcu_idx, align 4, !annotation !336
  %call = call fastcc i32 @dm_prepare_ioctl(ptr noundef %4, ptr noundef nonnull %srcu_idx, ptr noundef nonnull %bdev.addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %out

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %bdev.addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bdev.addr, align 4
  %bd_disk1 = getelementptr inbounds %struct.block_device, ptr %7, i32 0, i32 17
  %8 = ptrtoint ptr %bd_disk1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bd_disk1, align 8
  %fops = getelementptr inbounds %struct.gendisk, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fops, align 8
  %pr_ops = getelementptr inbounds %struct.block_device_operations, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %pr_ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pr_ops, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.end.out_crit_edge, label %land.lhs.true

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %out

land.lhs.true:                                    ; preds = %if.end
  %pr_preempt = getelementptr inbounds %struct.pr_ops, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %pr_preempt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pr_preempt, align 4
  %tobool2.not = icmp eq ptr %15, null
  br i1 %tobool2.not, label %land.lhs.true.out_crit_edge, label %if.then3

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %out

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  %call6 = call i32 %15(ptr noundef %7, i64 noundef %old_key, i64 noundef %new_key, i32 noundef %type, i1 noundef zeroext %abort) #21
  br label %out

out:                                              ; preds = %if.then3, %land.lhs.true.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %r.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call6, %if.then3 ], [ -95, %land.lhs.true.out_crit_edge ], [ -95, %if.end.out_crit_edge ]
  %16 = ptrtoint ptr %srcu_idx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %srcu_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %tobool.not.i.i.i = icmp ult i32 %17, 2
  br i1 %tobool.not.i.i.i, label %out.dm_unprepare_ioctl.exit_crit_edge, label %land.rhs.i.i.i

out.dm_unprepare_ioctl.exit_crit_edge:            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #23
  br label %dm_unprepare_ioctl.exit

land.rhs.i.i.i:                                   ; preds = %out
  %.b40.i.i.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b40.i.i.i, label %land.rhs.i.i.i.dm_unprepare_ioctl.exit_crit_edge, label %if.then.i.i.i, !prof !314

land.rhs.i.i.i.dm_unprepare_ioctl.exit_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %dm_unprepare_ioctl.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 189, i32 noundef 9, ptr noundef null) #21
  br label %dm_unprepare_ioctl.exit

dm_unprepare_ioctl.exit:                          ; preds = %if.then.i.i.i, %land.rhs.i.i.i.dm_unprepare_ioctl.exit_crit_edge, %out.dm_unprepare_ioctl.exit_crit_edge
  %io_barrier.i.i = getelementptr inbounds %struct.mapped_device, ptr %4, i32 0, i32 38
  %dep_map.i.i.i = getelementptr inbounds %struct.mapped_device, ptr %4, i32 0, i32 38, i32 16
  call fastcc void @rcu_lock_release(ptr noundef %dep_map.i.i.i) #21
  call void @__srcu_read_unlock(ptr noundef %io_barrier.i.i, i32 noundef %17) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %srcu_idx) #21
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dm_pr_clear(ptr noundef %bdev, i64 noundef %key) #0 align 64 {
entry:
  %bdev.addr = alloca ptr, align 4
  %srcu_idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bdev.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %bdev, ptr %bdev.addr, align 4
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %1 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %2, i32 0, i32 10
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %srcu_idx) #21
  %5 = ptrtoint ptr %srcu_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %srcu_idx, align 4, !annotation !336
  %call = call fastcc i32 @dm_prepare_ioctl(ptr noundef %4, ptr noundef nonnull %srcu_idx, ptr noundef nonnull %bdev.addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %out

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %bdev.addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bdev.addr, align 4
  %bd_disk1 = getelementptr inbounds %struct.block_device, ptr %7, i32 0, i32 17
  %8 = ptrtoint ptr %bd_disk1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bd_disk1, align 8
  %fops = getelementptr inbounds %struct.gendisk, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fops, align 8
  %pr_ops = getelementptr inbounds %struct.block_device_operations, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %pr_ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pr_ops, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.end.out_crit_edge, label %land.lhs.true

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %out

land.lhs.true:                                    ; preds = %if.end
  %pr_clear = getelementptr inbounds %struct.pr_ops, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %pr_clear to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pr_clear, align 4
  %tobool2.not = icmp eq ptr %15, null
  br i1 %tobool2.not, label %land.lhs.true.out_crit_edge, label %if.then3

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  br label %out

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #23
  %call5 = call i32 %15(ptr noundef %7, i64 noundef %key) #21
  br label %out

out:                                              ; preds = %if.then3, %land.lhs.true.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %r.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call5, %if.then3 ], [ -95, %land.lhs.true.out_crit_edge ], [ -95, %if.end.out_crit_edge ]
  %16 = ptrtoint ptr %srcu_idx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %srcu_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %tobool.not.i.i.i = icmp ult i32 %17, 2
  br i1 %tobool.not.i.i.i, label %out.dm_unprepare_ioctl.exit_crit_edge, label %land.rhs.i.i.i

out.dm_unprepare_ioctl.exit_crit_edge:            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #23
  br label %dm_unprepare_ioctl.exit

land.rhs.i.i.i:                                   ; preds = %out
  %.b40.i.i.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b40.i.i.i, label %land.rhs.i.i.i.dm_unprepare_ioctl.exit_crit_edge, label %if.then.i.i.i, !prof !314

land.rhs.i.i.i.dm_unprepare_ioctl.exit_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %dm_unprepare_ioctl.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #23
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 189, i32 noundef 9, ptr noundef null) #21
  br label %dm_unprepare_ioctl.exit

dm_unprepare_ioctl.exit:                          ; preds = %if.then.i.i.i, %land.rhs.i.i.i.dm_unprepare_ioctl.exit_crit_edge, %out.dm_unprepare_ioctl.exit_crit_edge
  %io_barrier.i.i = getelementptr inbounds %struct.mapped_device, ptr %4, i32 0, i32 38
  %dep_map.i.i.i = getelementptr inbounds %struct.mapped_device, ptr %4, i32 0, i32 38, i32 16
  call fastcc void @rcu_lock_release(ptr noundef %dep_map.i.i.i) #21
  call void @__srcu_read_unlock(ptr noundef %io_barrier.i.i, i32 noundef %17) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %srcu_idx) #21
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dm_call_pr(ptr nocapture noundef readonly %bdev, ptr noundef %data) unnamed_addr #0 align 64 {
entry:
  %srcu_idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %bdev, i32 0, i32 17
  %0 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd_disk, align 8
  %private_data = getelementptr inbounds %struct.gendisk, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %srcu_idx) #21
  %4 = ptrtoint ptr %srcu_idx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %srcu_idx, align 4, !annotation !336
  %call = call ptr @dm_get_live_table(ptr noundef %3, ptr noundef nonnull %srcu_idx)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i64 @dm_table_get_size(ptr noundef nonnull %call) #21
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call1)
  %tobool2.not = icmp eq i64 %call1, 0
  br i1 %tobool2.not, label %lor.lhs.false.out_crit_edge, label %if.end

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %call3 = tail call i32 @dm_table_get_num_targets(ptr noundef nonnull %call) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 1
  br i1 %cmp.not, label %if.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %out

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @dm_table_get_target(ptr noundef nonnull %call, i32 noundef 0) #21
  %type = getelementptr inbounds %struct.dm_target, ptr %call6, i32 0, i32 1
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %type, align 4
  %iterate_devices = getelementptr inbounds %struct.target_type, ptr %6, i32 0, i32 21
  %7 = ptrtoint ptr %iterate_devices to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iterate_devices, align 8
  %tobool7.not = icmp eq ptr %8, null
  br i1 %tobool7.not, label %if.end5.out_crit_edge, label %if.end9

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #23
  br label %out

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #23
  %call12 = tail call i32 %8(ptr noundef %call6, ptr noundef nonnull @__dm_pr_register, ptr noundef %data) #21
  br label %out

out:                                              ; preds = %if.end9, %if.end5.out_crit_edge, %if.end.out_crit_edge, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ -25, %if.end.out_crit_edge ], [ %call12, %if.end9 ], [ -22, %if.end5.out_crit_edge ], [ -25, %lor.lhs.false.out_crit_edge ], [ -25, %entry.out_crit_edge ]
  %9 = ptrtoint ptr %srcu_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %srcu_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %tobool.not.i.i = icmp ult i32 %10, 2
  br i1 %tobool.not.i.i, label %out.dm_put_live_table.exit_crit_edge, label %land.rhs.i.i

out.dm_put_live_table.exit_crit_edge:             ; preds = %out
  call void @__sanitizer_cov_trace_pc() #23
  br label %dm_put_live_table.exit

land.rhs.i.i:                                     ; preds = %out
  %.b40.i.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b40.i.i, label %land.rhs.i.i.dm_put_live_table.exit_crit_edge, label %if.then.i.i, !prof !314

land.rhs.i.i.dm_put_live_table.exit_crit_edge:    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #23
  br label %dm_put_live_table.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #23
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 189, i32 noundef 9, ptr noundef null) #21
  br label %dm_put_live_table.exit

dm_put_live_table.exit:                           ; preds = %if.then.i.i, %land.rhs.i.i.dm_put_live_table.exit_crit_edge, %out.dm_put_live_table.exit_crit_edge
  %io_barrier.i = getelementptr inbounds %struct.mapped_device, ptr %3, i32 0, i32 38
  %dep_map.i.i = getelementptr inbounds %struct.mapped_device, ptr %3, i32 0, i32 38, i32 16
  tail call fastcc void @rcu_lock_release(ptr noundef %dep_map.i.i) #21
  tail call void @__srcu_read_unlock(ptr noundef %io_barrier.i, i32 noundef %10) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %srcu_idx) #21
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__dm_pr_register(ptr nocapture noundef readnone %ti, ptr nocapture noundef readonly %dev, i64 noundef %start, i64 noundef %len, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %bd_disk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd_disk, align 8
  %fops = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fops, align 8
  %pr_ops = getelementptr inbounds %struct.block_device_operations, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %pr_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pr_ops, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool1.not = icmp eq ptr %9, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #23
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %data, align 8
  %new_key = getelementptr inbounds %struct.dm_pr, ptr %data, i32 0, i32 1
  %12 = ptrtoint ptr %new_key to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %new_key, align 8
  %flags = getelementptr inbounds %struct.dm_pr, ptr %data, i32 0, i32 2
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 8
  %call = tail call i32 %9(ptr noundef %1, i64 noundef %11, i64 noundef %13, i32 noundef %15) #21
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_dax(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_sysfs_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_cleanup_disk(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cleanup_srcu_struct(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_mq_cleanup_mapped_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_cleanup_zoned_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_destroy_crypto_profile(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mark_disk_dead(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_table_presuspend_targets(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_table_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_table_event_callback(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_stats_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thaw_bdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dm_table_request_based(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_capacity(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_capacity_and_notify(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @event_callback(ptr noundef %context) #0 align 64 {
entry:
  %uevents = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %uevents) #21
  %0 = getelementptr inbounds %struct.list_head, ptr %uevents, i32 0, i32 1
  %1 = ptrtoint ptr %uevents to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %uevents, ptr %uevents, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %uevents, ptr %0, align 4
  %uevent_lock = getelementptr inbounds %struct.mapped_device, ptr %context, i32 0, i32 25
  %call2 = call i32 @_raw_spin_lock_irqsave(ptr noundef %uevent_lock) #21
  %uevent_list = getelementptr inbounds %struct.mapped_device, ptr %context, i32 0, i32 24
  %3 = ptrtoint ptr %uevent_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %uevent_list, align 4
  %cmp.i.not.i = icmp eq ptr %4, %uevent_list
  br i1 %cmp.i.not.i, label %entry.list_splice_init.exit_crit_edge, label %if.then.i

entry.list_splice_init.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  %5 = ptrtoint ptr %uevents to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %uevents, align 4
  %prev2.i.i = getelementptr inbounds %struct.mapped_device, ptr %context, i32 0, i32 24, i32 1
  %7 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %uevents, ptr %prev3.i.i, align 4
  store ptr %4, ptr %uevents, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %6, ptr %8, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev6.i.i, align 4
  %12 = ptrtoint ptr %uevent_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %uevent_list, ptr %uevent_list, align 4
  store ptr %uevent_list, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %entry.list_splice_init.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %uevent_lock, i32 noundef %call2) #21
  %disk = getelementptr inbounds %struct.mapped_device, ptr %context, i32 0, i32 14
  %13 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %disk, align 8
  %part0 = getelementptr inbounds %struct.gendisk, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %part0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %part0, align 4
  %bd_device = getelementptr inbounds %struct.block_device, ptr %16, i32 0, i32 10
  call void @dm_send_uevents(ptr noundef nonnull %uevents, ptr noundef %bd_device) #21
  %event_nr = getelementptr inbounds %struct.mapped_device, ptr %context, i32 0, i32 22
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %event_nr, i32 noundef 4) #21
  call void @llvm.prefetch.p0(ptr %event_nr, i32 1, i32 3, i32 1) #21
  %17 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %event_nr, ptr %event_nr, i32 1, ptr elementtype(i32) %event_nr) #21, !srcloc !307
  %eventq = getelementptr inbounds %struct.mapped_device, ptr %context, i32 0, i32 21
  call void @__wake_up(ptr noundef %eventq, i32 noundef 3, i32 noundef 1, ptr noundef null) #21
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @dm_global_event_nr, i32 noundef 4) #21
  call void @llvm.prefetch.p0(ptr nonnull @dm_global_event_nr, i32 1, i32 3, i32 1) #21
  %18 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @dm_global_event_nr, ptr nonnull @dm_global_event_nr, i32 1, ptr nonnull elementtype(i32) @dm_global_event_nr) #21, !srcloc !307
  call void @__wake_up(ptr noundef nonnull @dm_global_eventq, i32 noundef 3, i32 noundef 1, ptr noundef null) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %uevents) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_table_get_immutable_target(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_table_get_immutable_target_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_send_uevents(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_table_get_md_mempools(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dm_table_bio_based(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bioset_init_from_src(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_table_free_md_mempools(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_wait(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_table_presuspend_undo_targets(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_request_based(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_stop_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_start_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @freeze_bdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_table_resume_targets(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @blk_mq_queue_inflight(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @io_schedule() local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #19

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @local_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #23
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dm_uevent_init() #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.78, i32 noundef 2, i32 noundef 1) #21
  store ptr %call1, ptr @deferred_remove_workqueue, align 4
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.out_uevent_exit_crit_edge, label %if.end4

if.end.out_uevent_exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #23
  br label %out_uevent_exit

if.end4:                                          ; preds = %if.end
  %0 = load i32, ptr @major, align 4
  store i32 %0, ptr @_major, align 4
  %call5 = tail call i32 @__register_blkdev(i32 noundef %0, ptr noundef nonnull @.str.19, ptr noundef null) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %out_free_workqueue, label %if.end7

if.end7:                                          ; preds = %if.end4
  %1 = load i32, ptr @_major, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool8.not = icmp eq i32 %1, 0
  br i1 %tobool8.not, label %if.then9, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #23
  br label %cleanup

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #23
  store i32 %call5, ptr @_major, align 4
  br label %cleanup

out_free_workqueue:                               ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #23
  %2 = load ptr, ptr @deferred_remove_workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %2) #21
  br label %out_uevent_exit

out_uevent_exit:                                  ; preds = %out_free_workqueue, %if.end.out_uevent_exit_crit_edge
  %r.0 = phi i32 [ %call5, %out_free_workqueue ], [ -12, %if.end.out_uevent_exit_crit_edge ]
  tail call void @dm_uevent_exit() #21
  br label %cleanup

cleanup:                                          ; preds = %out_uevent_exit, %if.then9, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0, %out_uevent_exit ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.then9 ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_target_init() #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_linear_init() #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_stripe_init() #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_io_init() #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_kcopyd_init() #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_interface_init() #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_statistics_init() #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_uevent_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_blkdev(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #20

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #20

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #21

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #22 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 109)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #22 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 109)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nounwind readonly }
attributes #17 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #19 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #20 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #21 = { nounwind }
attributes #22 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #23 = { nomerge }
attributes #24 = { nounwind allocsize(2) }
attributes #25 = { cold nounwind }
attributes #26 = { nounwind allocsize(0) }
attributes #27 = { nounwind readonly willreturn }
attributes #28 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !18, !19, !21, !23, !24, !25, !26, !28, !30, !31, !32, !33, !35, !37, !39, !41, !43, !44, !45, !46, !48, !50, !51, !52, !54, !56, !58, !60, !62, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !92, !94, !96, !97, !99, !101, !102, !104, !106, !107, !109, !111, !113, !115, !116, !118, !120, !122, !123, !124, !125, !127, !129, !131, !133, !134, !136, !137, !139, !140, !142, !144, !146, !147, !148, !149, !151, !152, !154, !155, !157, !158, !160, !161, !163, !164, !166, !167, !169, !171, !172, !174, !175, !177, !178, !180, !181, !183, !185, !187, !188, !189, !191, !192, !194, !196, !198, !200, !202, !203, !204, !205, !206, !207, !209, !210, !212, !213, !214, !215, !217, !219, !220, !221, !222, !224, !225, !226, !228, !229, !231, !232, !233, !234, !236, !237, !239, !240, !242, !243, !244, !245, !246, !248, !250, !252, !253, !254, !255, !257, !259, !260, !261, !262, !264, !266, !267, !268, !270, !271, !273, !275, !277, !278, !279, !281, !283, !285, !287, !288, !290, !291, !292, !294, !295}
!llvm.named.register.sp = !{!297}
!llvm.module.flags = !{!298, !299, !300, !301, !302, !303, !304, !305}
!llvm.ident = !{!306}

!0 = !{ptr @dm_global_event_nr, !1, !"dm_global_event_nr", i1 false, i1 false}
!1 = !{!"../drivers/md/dm.c", i32 58, i32 10}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/md/dm.c", i32 59, i32 1}
!4 = !{ptr @dm_global_eventq, !3, !"dm_global_eventq", i1 false, i1 false}
!5 = !{ptr @__ksymtab_dm_per_bio_data, !6, !"__ksymtab_dm_per_bio_data", i1 false, i1 false}
!6 = !{!"../drivers/md/dm.c", i32 89, i32 1}
!7 = !{ptr @__ksymtab_dm_bio_from_per_bio_data, !8, !"__ksymtab_dm_bio_from_per_bio_data", i1 false, i1 false}
!8 = !{!"../drivers/md/dm.c", i32 99, i32 1}
!9 = !{ptr @__ksymtab_dm_bio_get_target_bio_nr, !10, !"__ksymtab_dm_bio_get_target_bio_nr", i1 false, i1 false}
!10 = !{!"../drivers/md/dm.c", i32 105, i32 1}
!11 = !{ptr @__ksymtab_dm_get_reserved_bio_based_ios, !12, !"__ksymtab_dm_get_reserved_bio_based_ios", i1 false, i1 false}
!12 = !{!"../drivers/md/dm.c", i32 187, i32 1}
!13 = !{ptr @__ksymtab_dm_start_time_ns_from_clone, !14, !"__ksymtab_dm_start_time_ns_from_clone", i1 false, i1 false}
!14 = !{!"../drivers/md/dm.c", i32 485, i32 1}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../drivers/md/dm.c", i32 602, i32 9}
!17 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/md/dm.c", i32 711, i32 3}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/md/dm.c", i32 768, i32 3}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @dm_set_geometry._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @dm_set_geometry._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../drivers/md/dm.c", i32 811, i32 9}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/md/dm.c", i32 973, i32 3}
!30 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @dm_set_target_max_io_len._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @dm_set_target_max_io_len._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/md/dm.c", i32 975, i32 15}
!35 = !{ptr @__ksymtab_dm_set_target_max_io_len, !36, !"__ksymtab_dm_set_target_max_io_len", i1 false, i1 false}
!36 = !{!"../drivers/md/dm.c", i32 983, i32 1}
!37 = !{ptr @__ksymtab_dm_accept_partial_bio, !38, !"__ksymtab_dm_accept_partial_bio", i1 false, i1 false}
!38 = !{!"../drivers/md/dm.c", i32 1100, i32 1}
!39 = !{ptr @__ksymtab_dm_get_queue_limits, !40, !"__ksymtab_dm_get_queue_limits", i1 false, i1 false}
!40 = !{!"../drivers/md/dm.c", i32 1959, i32 1}
!41 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/md/dm.c", i32 1975, i32 4}
!43 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @dm_setup_md_queue._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @dm_setup_md_queue._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../drivers/md/dm.c", i32 1983, i32 3}
!48 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/md/dm.c", i32 1989, i32 3}
!50 = !{ptr @dm_setup_md_queue._entry.11, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @dm_setup_md_queue._entry_ptr.13, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @__ksymtab_dm_get_md, !53, !"__ksymtab_dm_get_md", i1 false, i1 false}
!53 = !{!"../drivers/md/dm.c", i32 2031, i32 1}
!54 = !{ptr @__ksymtab_dm_hold, !55, !"__ksymtab_dm_hold", i1 false, i1 false}
!55 = !{!"../drivers/md/dm.c", i32 2060, i32 1}
!56 = !{ptr @__ksymtab_dm_device_name, !57, !"__ksymtab_dm_device_name", i1 false, i1 false}
!57 = !{!"../drivers/md/dm.c", i32 2066, i32 1}
!58 = !{ptr @__ksymtab_dm_put, !59, !"__ksymtab_dm_put", i1 false, i1 false}
!59 = !{!"../drivers/md/dm.c", i32 2129, i32 1}
!60 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!61 = !{!"../drivers/md/dm.c", i32 2424, i32 8}
!62 = !{ptr @.str.14, !61, !"<string literal>", i1 false, i1 false}
!63 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!64 = !{!"../drivers/md/dm.c", i32 2483, i32 8}
!65 = !{ptr @__ksymtab_dm_internal_suspend_noflush, !66, !"__ksymtab_dm_internal_suspend_noflush", i1 false, i1 false}
!66 = !{!"../drivers/md/dm.c", i32 2562, i32 1}
!67 = !{ptr @__ksymtab_dm_internal_resume, !68, !"__ksymtab_dm_internal_resume", i1 false, i1 false}
!68 = !{!"../drivers/md/dm.c", i32 2570, i32 1}
!69 = !{ptr @__ksymtab_dm_internal_suspend_fast, !70, !"__ksymtab_dm_internal_suspend_fast", i1 false, i1 false}
!70 = !{!"../drivers/md/dm.c", i32 2588, i32 1}
!71 = !{ptr @__ksymtab_dm_internal_resume_fast, !72, !"__ksymtab_dm_internal_resume_fast", i1 false, i1 false}
!72 = !{!"../drivers/md/dm.c", i32 2600, i32 1}
!73 = !{ptr @.str.15, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/md/dm.c", i32 2618, i32 43}
!75 = !{ptr @.str.16, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/md/dm.c", i32 2619, i32 5}
!77 = !{ptr @__ksymtab_dm_disk, !78, !"__ksymtab_dm_disk", i1 false, i1 false}
!78 = !{!"../drivers/md/dm.c", i32 2662, i32 1}
!79 = !{ptr @__ksymtab_dm_suspended, !80, !"__ksymtab_dm_suspended", i1 false, i1 false}
!80 = !{!"../drivers/md/dm.c", i32 2711, i32 1}
!81 = !{ptr @__ksymtab_dm_post_suspending, !82, !"__ksymtab_dm_post_suspending", i1 false, i1 false}
!82 = !{!"../drivers/md/dm.c", i32 2717, i32 1}
!83 = !{ptr @__ksymtab_dm_noflush_suspending, !84, !"__ksymtab_dm_noflush_suspending", i1 false, i1 false}
!84 = !{!"../drivers/md/dm.c", i32 2723, i32 1}
!85 = !{ptr @__initcall__kmod_dm_mod__365_2974_dm_init6, !86, !"__initcall__kmod_dm_mod__365_2974_dm_init6", i1 false, i1 false}
!86 = !{!"../drivers/md/dm.c", i32 2974, i32 1}
!87 = !{ptr @__exitcall_dm_exit, !88, !"__exitcall_dm_exit", i1 false, i1 false}
!88 = !{!"../drivers/md/dm.c", i32 2975, i32 1}
!89 = !{ptr @__param_major, !90, !"__param_major", i1 false, i1 false}
!90 = !{!"../drivers/md/dm.c", i32 2977, i32 1}
!91 = !{ptr @__UNIQUE_ID_majortype366, !90, !"__UNIQUE_ID_majortype366", i1 false, i1 false}
!92 = !{ptr @__UNIQUE_ID_major367, !93, !"__UNIQUE_ID_major367", i1 false, i1 false}
!93 = !{!"../drivers/md/dm.c", i32 2978, i32 1}
!94 = !{ptr @__param_reserved_bio_based_ios, !95, !"__param_reserved_bio_based_ios", i1 false, i1 false}
!95 = !{!"../drivers/md/dm.c", i32 2980, i32 1}
!96 = !{ptr @__UNIQUE_ID_reserved_bio_based_iostype368, !95, !"__UNIQUE_ID_reserved_bio_based_iostype368", i1 false, i1 false}
!97 = !{ptr @__UNIQUE_ID_reserved_bio_based_ios369, !98, !"__UNIQUE_ID_reserved_bio_based_ios369", i1 false, i1 false}
!98 = !{!"../drivers/md/dm.c", i32 2981, i32 1}
!99 = !{ptr @__param_dm_numa_node, !100, !"__param_dm_numa_node", i1 false, i1 false}
!100 = !{!"../drivers/md/dm.c", i32 2983, i32 1}
!101 = !{ptr @__UNIQUE_ID_dm_numa_nodetype370, !100, !"__UNIQUE_ID_dm_numa_nodetype370", i1 false, i1 false}
!102 = !{ptr @__UNIQUE_ID_dm_numa_node371, !103, !"__UNIQUE_ID_dm_numa_node371", i1 false, i1 false}
!103 = !{!"../drivers/md/dm.c", i32 2984, i32 1}
!104 = !{ptr @__param_swap_bios, !105, !"__param_swap_bios", i1 false, i1 false}
!105 = !{!"../drivers/md/dm.c", i32 2986, i32 1}
!106 = !{ptr @__UNIQUE_ID_swap_biostype372, !105, !"__UNIQUE_ID_swap_biostype372", i1 false, i1 false}
!107 = !{ptr @__UNIQUE_ID_swap_bios373, !108, !"__UNIQUE_ID_swap_bios373", i1 false, i1 false}
!108 = !{!"../drivers/md/dm.c", i32 2987, i32 1}
!109 = !{ptr @__UNIQUE_ID_description374, !110, !"__UNIQUE_ID_description374", i1 false, i1 false}
!110 = !{!"../drivers/md/dm.c", i32 2989, i32 1}
!111 = !{ptr @__UNIQUE_ID_author375, !112, !"__UNIQUE_ID_author375", i1 false, i1 false}
!112 = !{!"../drivers/md/dm.c", i32 2990, i32 1}
!113 = !{ptr @__UNIQUE_ID_file376, !114, !"__UNIQUE_ID_file376", i1 false, i1 false}
!114 = !{!"../drivers/md/dm.c", i32 2991, i32 1}
!115 = !{ptr @__UNIQUE_ID_license377, !114, !"__UNIQUE_ID_license377", i1 false, i1 false}
!116 = !{ptr @reserved_bio_based_ios, !117, !"reserved_bio_based_ios", i1 false, i1 false}
!117 = !{!"../drivers/md/dm.c", i32 140, i32 17}
!118 = !{ptr @_exits, !119, !"_exits", i1 false, i1 false}
!119 = !{!"../drivers/md/dm.c", i32 251, i32 15}
!120 = !{ptr @.str.17, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/md/dm.c", i32 237, i32 2}
!122 = !{ptr @.str.18, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @local_exit._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @local_exit._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @deferred_remove_workqueue, !126, !"deferred_remove_workqueue", i1 false, i1 false}
!126 = !{!"../drivers/md/dm.c", i32 56, i32 33}
!127 = !{ptr @.str.19, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/md/dm.c", i32 43, i32 28}
!129 = distinct !{null, !130, !"_name", i1 false, i1 false}
!130 = !{!"../drivers/md/dm.c", i32 43, i32 20}
!131 = !{ptr @.str.20, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/md/dm.c", i32 48, i32 8}
!133 = !{ptr @_minor_idr, !132, !"_minor_idr", i1 false, i1 false}
!134 = !{ptr @.str.21, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/md/dm.c", i32 50, i32 8}
!136 = !{ptr @_minor_lock, !135, !"_minor_lock", i1 false, i1 false}
!137 = distinct !{null, !138, !"__already_done", i1 false, i1 false}
!138 = !{!"../include/linux/srcu.h", i32 189, i32 2}
!139 = !{ptr @.str.22, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.23, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/md/dm.c", i32 631, i32 30}
!142 = distinct !{null, !143, !"_dm_claim_ptr", i1 false, i1 false}
!143 = !{!"../drivers/md/dm.c", i32 631, i32 14}
!144 = !{ptr @.str.24, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/md/dm.c", i32 1644, i32 3}
!146 = !{ptr @.str.25, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @alloc_dev._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @alloc_dev._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @alloc_dev.__srcu_key, !150, !"__srcu_key", i1 false, i1 false}
!150 = !{!"../drivers/md/dm.c", i32 1659, i32 6}
!151 = !{ptr @.str.26, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @alloc_dev.__key, !153, !"__key", i1 false, i1 false}
!153 = !{!"../drivers/md/dm.c", i32 1666, i32 2}
!154 = !{ptr @.str.27, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @alloc_dev.__key.28, !156, !"__key", i1 false, i1 false}
!156 = !{!"../drivers/md/dm.c", i32 1667, i32 2}
!157 = !{ptr @.str.29, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @alloc_dev.__key.30, !159, !"__key", i1 false, i1 false}
!159 = !{!"../drivers/md/dm.c", i32 1668, i32 2}
!160 = !{ptr @.str.31, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @alloc_dev.__key.32, !162, !"__key", i1 false, i1 false}
!162 = !{!"../drivers/md/dm.c", i32 1669, i32 2}
!163 = !{ptr @.str.33, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @alloc_dev.__key.34, !165, !"__key", i1 false, i1 false}
!165 = !{!"../drivers/md/dm.c", i32 1676, i32 2}
!166 = !{ptr @.str.35, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @alloc_dev.__key.36, !168, !"__key", i1 false, i1 false}
!168 = !{!"../drivers/md/dm.c", i32 1683, i32 13}
!169 = !{ptr @alloc_dev.__key.37, !170, !"__key", i1 false, i1 false}
!170 = !{!"../drivers/md/dm.c", i32 1688, i32 2}
!171 = !{ptr @.str.38, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @alloc_dev.__key.39, !173, !"__key", i1 false, i1 false}
!173 = !{!"../drivers/md/dm.c", i32 1689, i32 2}
!174 = !{ptr @.str.40, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @alloc_dev.__key.41, !176, !"__key", i1 false, i1 false}
!176 = !{!"../drivers/md/dm.c", i32 1690, i32 2}
!177 = !{ptr @.str.42, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @alloc_dev.__key.43, !179, !"__key", i1 false, i1 false}
!179 = !{!"../drivers/md/dm.c", i32 1695, i32 2}
!180 = !{ptr @.str.44, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @.str.45, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/md/dm.c", i32 1704, i32 31}
!183 = !{ptr @.str.46, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/md/dm.c", i32 1720, i32 27}
!185 = !{ptr @.str.47, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../include/linux/local_lock_internal.h", i32 36, i32 2}
!187 = !{ptr @.str.48, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @.str.49, !186, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @init_completion.__key, !190, !"__key", i1 false, i1 false}
!190 = !{!"../include/linux/completion.h", i32 87, i32 2}
!191 = !{ptr @.str.50, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @sema_init.__key, !193, !"__key", i1 false, i1 false}
!193 = !{!"../include/linux/semaphore.h", i32 33, i32 31}
!194 = !{ptr @.str.51, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../include/linux/semaphore.h", i32 34, i32 28}
!196 = !{ptr @.str.52, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../include/linux/semaphore.h", i32 35, i32 39}
!198 = !{ptr @dm_blk_dops, !199, !"dm_blk_dops", i1 false, i1 false}
!199 = !{!"../drivers/md/dm.c", i32 2946, i32 45}
!200 = !{ptr @.str.53, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/md/dm.c", i32 1499, i32 3}
!202 = !{ptr @dm_submit_bio._rs, !201, !"_rs", i1 false, i1 false}
!203 = !{ptr @__func__.dm_submit_bio, !201, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @.str.54, !201, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @dm_submit_bio._entry, !201, !"_entry", i1 false, i1 false}
!206 = !{ptr @dm_submit_bio._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @alloc_io.__key, !208, !"__key", i1 false, i1 false}
!208 = !{!"../drivers/md/dm.c", i32 536, i32 2}
!209 = !{ptr @.str.55, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @.str.56, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/md/dm.c", i32 1179, i32 3}
!212 = !{ptr @.str.57, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @__map_bio._entry, !211, !"_entry", i1 false, i1 false}
!214 = !{ptr @__map_bio._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!215 = distinct !{null, !216, !"__already_done", i1 false, i1 false}
!216 = !{!"../drivers/md/dm.c", i32 912, i32 8}
!217 = !{ptr @.str.58, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/md/dm.c", i32 923, i32 4}
!219 = !{ptr @.str.59, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @clone_endio._entry, !218, !"_entry", i1 false, i1 false}
!221 = !{ptr @clone_endio._entry_ptr, !218, !"_entry_ptr", i1 false, i1 false}
!222 = distinct !{null, !223, !"__already_done", i1 false, i1 false}
!223 = !{!"../include/trace/events/block.h", i32 456, i32 1}
!224 = !{ptr @.str.60, !223, !"<string literal>", i1 false, i1 false}
!225 = distinct !{null, !223, !"__warned", i1 false, i1 false}
!226 = distinct !{null, !227, !"__already_done", i1 false, i1 false}
!227 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!228 = !{ptr @.str.61, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @.str.62, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/md/dm.c", i32 1208, i32 4}
!231 = !{ptr @.str.63, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @clone_bio._entry, !230, !"_entry", i1 false, i1 false}
!233 = !{ptr @clone_bio._entry_ptr, !230, !"_entry_ptr", i1 false, i1 false}
!234 = distinct !{null, !235, !"__already_done", i1 false, i1 false}
!235 = !{!"../include/trace/events/block.h", i32 418, i32 1}
!236 = distinct !{null, !235, !"__warned", i1 false, i1 false}
!237 = !{ptr @.str.64, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/md/dm.c", i32 54, i32 8}
!239 = !{ptr @deferred_remove_work, !238, !"deferred_remove_work", i1 false, i1 false}
!240 = !{ptr @dm_blk_ioctl._rs, !241, !"_rs", i1 false, i1 false}
!241 = !{!"../drivers/md/dm.c", i32 461, i32 4}
!242 = !{ptr @.str.65, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @.str.66, !241, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @.str.67, !241, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @dm_blk_ioctl.descriptor, !241, !"descriptor", i1 false, i1 false}
!246 = !{ptr @dm_pr_ops, !247, !"dm_pr_ops", i1 false, i1 false}
!247 = !{!"../drivers/md/dm.c", i32 2938, i32 28}
!248 = !{ptr @_major, !249, !"_major", i1 false, i1 false}
!249 = !{!"../drivers/md/dm.c", i32 46, i32 21}
!250 = !{ptr @.str.68, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/md/dm.c", i32 2108, i32 3}
!252 = !{ptr @.str.69, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @__dm_destroy._entry, !251, !"_entry", i1 false, i1 false}
!254 = !{ptr @__dm_destroy._entry_ptr, !251, !"_entry_ptr", i1 false, i1 false}
!255 = distinct !{null, !256, !"__warned", i1 false, i1 false}
!256 = !{!"../drivers/md/dm.c", i32 1891, i32 25}
!257 = !{ptr @.str.70, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/md/dm.c", i32 744, i32 3}
!259 = !{ptr @.str.71, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @free_table_devices._entry, !258, !"_entry", i1 false, i1 false}
!261 = !{ptr @free_table_devices._entry_ptr, !258, !"_entry_ptr", i1 false, i1 false}
!262 = distinct !{null, !263, !"__warned", i1 false, i1 false}
!263 = !{!"../drivers/md/dm.c", i32 623, i32 9}
!264 = distinct !{null, !265, !"__warned", i1 false, i1 false}
!265 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!266 = !{ptr @.str.72, !265, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @.str.73, !265, !"<string literal>", i1 false, i1 false}
!268 = distinct !{null, !269, !"__warned", i1 false, i1 false}
!269 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!270 = !{ptr @.str.74, !269, !"<string literal>", i1 false, i1 false}
!271 = distinct !{null, !272, !"__warned", i1 false, i1 false}
!272 = !{!"../drivers/md/dm.c", i32 1875, i32 12}
!273 = !{ptr @.str.75, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../include/linux/wait_bit.h", i32 73, i32 2}
!275 = !{ptr @.str.76, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/md/dm.c", i32 2311, i32 3}
!277 = !{ptr @.str.77, !276, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @__dm_suspend.__UNIQUE_ID_ddebug360, !276, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!279 = distinct !{null, !280, !"__warned", i1 false, i1 false}
!280 = !{!"../drivers/md/dm.c", i32 2518, i32 8}
!281 = !{ptr @dm_rq_blk_dops, !282, !"dm_rq_blk_dops", i1 false, i1 false}
!282 = !{!"../drivers/md/dm.c", i32 2957, i32 45}
!283 = !{ptr @_inits, !284, !"_inits", i1 false, i1 false}
!284 = !{!"../drivers/md/dm.c", i32 240, i32 14}
!285 = !{ptr @.str.78, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/md/dm.c", i32 203, i32 46}
!287 = !{ptr @__param_str_major, !90, !"__param_str_major", i1 false, i1 false}
!288 = !{ptr @major, !289, !"major", i1 false, i1 false}
!289 = !{!"../drivers/md/dm.c", i32 45, i32 21}
!290 = !{ptr @__param_str_reserved_bio_based_ios, !95, !"__param_str_reserved_bio_based_ios", i1 false, i1 false}
!291 = !{ptr @__param_str_dm_numa_node, !100, !"__param_str_dm_numa_node", i1 false, i1 false}
!292 = !{ptr @dm_numa_node, !293, !"dm_numa_node", i1 false, i1 false}
!293 = !{!"../drivers/md/dm.c", i32 110, i32 12}
!294 = !{ptr @__param_str_swap_bios, !105, !"__param_str_swap_bios", i1 false, i1 false}
!295 = !{ptr @swap_bios, !296, !"swap_bios", i1 false, i1 false}
!296 = !{!"../drivers/md/dm.c", i32 113, i32 12}
!297 = !{!"sp"}
!298 = !{i32 1, !"wchar_size", i32 2}
!299 = !{i32 1, !"min_enum_size", i32 4}
!300 = !{i32 8, !"branch-target-enforcement", i32 0}
!301 = !{i32 8, !"sign-return-address", i32 0}
!302 = !{i32 8, !"sign-return-address-all", i32 0}
!303 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!304 = !{i32 7, !"uwtable", i32 1}
!305 = !{i32 7, !"frame-pointer", i32 2}
!306 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!307 = !{i64 2148511194, i64 2148511220, i64 2148511249, i64 2148511283, i64 2148511314, i64 2148511337}
!308 = !{i8 0, i8 2}
!309 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!310 = !{i64 2155777717, i64 2155778196, i64 2155777754, i64 2155777810, i64 2155777844, i64 2155777868, i64 2155777909, i64 2155777930, i64 2155777958, i64 2155777992}
!311 = !{i64 2155794678}
!312 = !{i64 1020686, i64 1020707, i64 1020730, i64 1020749, i64 1020768}
!313 = !{i64 2155795096}
!314 = !{!"branch_weights", i32 2000, i32 1}
!315 = !{i64 2148512724, i64 2148512756, i64 2148512785, i64 2148512819, i64 2148512850, i64 2148512873}
!316 = !{!"branch_weights", i32 1, i32 2000}
!317 = !{i64 2148600725}
!318 = !{i64 2148515189, i64 2148515221, i64 2148515250, i64 2148515284, i64 2148515315, i64 2148515338}
!319 = !{i64 2149636211}
!320 = !{i64 2148599646}
!321 = !{i64 2148514379, i64 2148514411, i64 2148514440, i64 2148514474, i64 2148514505, i64 2148514528}
!322 = !{i64 2148599875}
!323 = !{i64 2149613184}
!324 = !{i64 2155911557, i64 2155912038, i64 2155911594, i64 2155911650, i64 2155911684, i64 2155911708, i64 2155911749, i64 2155911770, i64 2155911798, i64 2155911832}
!325 = !{i64 2155853721, i64 2155854202, i64 2155853758, i64 2155853814, i64 2155853848, i64 2155853872, i64 2155853913, i64 2155853934, i64 2155853962, i64 2155853996}
!326 = !{i64 2155855439, i64 2155855920, i64 2155855476, i64 2155855532, i64 2155855566, i64 2155855590, i64 2155855631, i64 2155855652, i64 2155855680, i64 2155855714}
!327 = !{i64 2155857163, i64 2155857644, i64 2155857200, i64 2155857256, i64 2155857290, i64 2155857314, i64 2155857355, i64 2155857376, i64 2155857404, i64 2155857438}
!328 = !{i64 2155858756, i64 2155859237, i64 2155858793, i64 2155858849, i64 2155858883, i64 2155858907, i64 2155858948, i64 2155858969, i64 2155858997, i64 2155859031}
!329 = !{i64 2155860341, i64 2155860822, i64 2155860378, i64 2155860434, i64 2155860468, i64 2155860492, i64 2155860533, i64 2155860554, i64 2155860582, i64 2155860616}
!330 = !{i64 2155790425}
!331 = !{i64 2155790843}
!332 = !{i64 2153689749}
!333 = !{i64 2155890185, i64 2155890666, i64 2155890222, i64 2155890278, i64 2155890312, i64 2155890336, i64 2155890377, i64 2155890398, i64 2155890426, i64 2155890460}
!334 = !{i64 2155909958, i64 2155910439, i64 2155909995, i64 2155910051, i64 2155910085, i64 2155910109, i64 2155910150, i64 2155910171, i64 2155910199, i64 2155910233}
!335 = !{i64 2155921641, i64 2155922122, i64 2155921678, i64 2155921734, i64 2155921768, i64 2155921792, i64 2155921833, i64 2155921854, i64 2155921882, i64 2155921916}
!336 = !{!"auto-init"}
!337 = !{i64 2148513659, i64 2148513685, i64 2148513714, i64 2148513748, i64 2148513779, i64 2148513802}
!338 = !{i64 2149328224}
!339 = !{i64 2149328490}
!340 = !{i64 2155892036, i64 2155892517, i64 2155892073, i64 2155892129, i64 2155892163, i64 2155892187, i64 2155892228, i64 2155892249, i64 2155892277, i64 2155892311}
!341 = !{i64 2155904364}
!342 = !{i64 2148324587, i64 2148324592, i64 2148324605, i64 2148324649, i64 2148324683, i64 2148324704}
!343 = !{i64 2155934860}
!344 = !{i64 2155943839, i64 2155944320, i64 2155943876, i64 2155943932, i64 2155943966, i64 2155943990, i64 2155944031, i64 2155944052, i64 2155944080, i64 2155944114}
!345 = !{i64 2155945361}
!346 = !{i64 2148596605}
!347 = !{i64 2148511914, i64 2148511946, i64 2148511975, i64 2148512009, i64 2148512040, i64 2148512063}
!348 = !{i64 2148596834}
!349 = !{i64 2155969991, i64 2155970472, i64 2155970028, i64 2155970084, i64 2155970118, i64 2155970142, i64 2155970183, i64 2155970204, i64 2155970232, i64 2155970266}
!350 = !{i64 2155873390, i64 2155873871, i64 2155873427, i64 2155873483, i64 2155873517, i64 2155873541, i64 2155873582, i64 2155873603, i64 2155873631, i64 2155873665}
!351 = !{i32 0, i32 33}
!352 = !{i64 2148349774, i64 2148350054, i64 2148350388, i64 2148350722}
!353 = !{i64 2155091392}
!354 = !{i64 2155091607}
!355 = !{i64 2149336783}
!356 = !{i64 2149337819}
!357 = !{i64 2155866162, i64 2155866643, i64 2155866199, i64 2155866255, i64 2155866289, i64 2155866313, i64 2155866354, i64 2155866375, i64 2155866403, i64 2155866437}
!358 = !{i64 2155844427, i64 2155844907, i64 2155844464, i64 2155844520, i64 2155844554, i64 2155844578, i64 2155844619, i64 2155844640, i64 2155844668, i64 2155844702}
!359 = !{i64 2155107708}
!360 = !{i64 2155107929}
