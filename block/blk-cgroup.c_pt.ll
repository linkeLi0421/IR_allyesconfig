; ModuleID = '/llk/IR_all_yes/block/blk-cgroup.c_pt.bc'
source_filename = "../block/blk-cgroup.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+blkcg_root\22, \22a\22\09"
module asm "\09.weak\09__crc_blkcg_root\09\09\09\09"
module asm "\09.long\09__crc_blkcg_root\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blkcg_root:\09\09\09\09\09"
module asm "\09.asciz \09\22blkcg_root\22\09\09\09\09\09"
module asm "__kstrtabns_blkcg_root:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+blkcg_root_css\22, \22a\22\09"
module asm "\09.weak\09__crc_blkcg_root_css\09\09\09\09"
module asm "\09.long\09__crc_blkcg_root_css\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blkcg_root_css:\09\09\09\09\09"
module asm "\09.asciz \09\22blkcg_root_css\22\09\09\09\09\09"
module asm "__kstrtabns_blkcg_root_css:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+blkg_lookup_slowpath\22, \22a\22\09"
module asm "\09.weak\09__crc_blkg_lookup_slowpath\09\09\09\09"
module asm "\09.long\09__crc_blkg_lookup_slowpath\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blkg_lookup_slowpath:\09\09\09\09\09"
module asm "\09.asciz \09\22blkg_lookup_slowpath\22\09\09\09\09\09"
module asm "__kstrtabns_blkg_lookup_slowpath:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+blkcg_print_blkgs\22, \22a\22\09"
module asm "\09.weak\09__crc_blkcg_print_blkgs\09\09\09\09"
module asm "\09.long\09__crc_blkcg_print_blkgs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blkcg_print_blkgs:\09\09\09\09\09"
module asm "\09.asciz \09\22blkcg_print_blkgs\22\09\09\09\09\09"
module asm "__kstrtabns_blkcg_print_blkgs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__blkg_prfill_u64\22, \22a\22\09"
module asm "\09.weak\09__crc___blkg_prfill_u64\09\09\09\09"
module asm "\09.long\09__crc___blkg_prfill_u64\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___blkg_prfill_u64:\09\09\09\09\09"
module asm "\09.asciz \09\22__blkg_prfill_u64\22\09\09\09\09\09"
module asm "__kstrtabns___blkg_prfill_u64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+blkg_conf_prep\22, \22a\22\09"
module asm "\09.weak\09__crc_blkg_conf_prep\09\09\09\09"
module asm "\09.long\09__crc_blkg_conf_prep\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blkg_conf_prep:\09\09\09\09\09"
module asm "\09.asciz \09\22blkg_conf_prep\22\09\09\09\09\09"
module asm "__kstrtabns_blkg_conf_prep:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+blkg_conf_finish\22, \22a\22\09"
module asm "\09.weak\09__crc_blkg_conf_finish\09\09\09\09"
module asm "\09.long\09__crc_blkg_conf_finish\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blkg_conf_finish:\09\09\09\09\09"
module asm "\09.asciz \09\22blkg_conf_finish\22\09\09\09\09\09"
module asm "__kstrtabns_blkg_conf_finish:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+io_cgrp_subsys\22, \22a\22\09"
module asm "\09.weak\09__crc_io_cgrp_subsys\09\09\09\09"
module asm "\09.long\09__crc_io_cgrp_subsys\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_io_cgrp_subsys:\09\09\09\09\09"
module asm "\09.asciz \09\22io_cgrp_subsys\22\09\09\09\09\09"
module asm "__kstrtabns_io_cgrp_subsys:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+blkcg_activate_policy\22, \22a\22\09"
module asm "\09.weak\09__crc_blkcg_activate_policy\09\09\09\09"
module asm "\09.long\09__crc_blkcg_activate_policy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blkcg_activate_policy:\09\09\09\09\09"
module asm "\09.asciz \09\22blkcg_activate_policy\22\09\09\09\09\09"
module asm "__kstrtabns_blkcg_activate_policy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+blkcg_deactivate_policy\22, \22a\22\09"
module asm "\09.weak\09__crc_blkcg_deactivate_policy\09\09\09\09"
module asm "\09.long\09__crc_blkcg_deactivate_policy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blkcg_deactivate_policy:\09\09\09\09\09"
module asm "\09.asciz \09\22blkcg_deactivate_policy\22\09\09\09\09\09"
module asm "__kstrtabns_blkcg_deactivate_policy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+blkcg_policy_register\22, \22a\22\09"
module asm "\09.weak\09__crc_blkcg_policy_register\09\09\09\09"
module asm "\09.long\09__crc_blkcg_policy_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blkcg_policy_register:\09\09\09\09\09"
module asm "\09.asciz \09\22blkcg_policy_register\22\09\09\09\09\09"
module asm "__kstrtabns_blkcg_policy_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+blkcg_policy_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_blkcg_policy_unregister\09\09\09\09"
module asm "\09.long\09__crc_blkcg_policy_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blkcg_policy_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22blkcg_policy_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_blkcg_policy_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bio_associate_blkg_from_css\22, \22a\22\09"
module asm "\09.weak\09__crc_bio_associate_blkg_from_css\09\09\09\09"
module asm "\09.long\09__crc_bio_associate_blkg_from_css\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bio_associate_blkg_from_css:\09\09\09\09\09"
module asm "\09.asciz \09\22bio_associate_blkg_from_css\22\09\09\09\09\09"
module asm "__kstrtabns_bio_associate_blkg_from_css:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bio_associate_blkg\22, \22a\22\09"
module asm "\09.weak\09__crc_bio_associate_blkg\09\09\09\09"
module asm "\09.long\09__crc_bio_associate_blkg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bio_associate_blkg:\09\09\09\09\09"
module asm "\09.asciz \09\22bio_associate_blkg\22\09\09\09\09\09"
module asm "__kstrtabns_bio_associate_blkg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bio_clone_blkg_association\22, \22a\22\09"
module asm "\09.weak\09__crc_bio_clone_blkg_association\09\09\09\09"
module asm "\09.long\09__crc_bio_clone_blkg_association\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bio_clone_blkg_association:\09\09\09\09\09"
module asm "\09.asciz \09\22bio_clone_blkg_association\22\09\09\09\09\09"
module asm "__kstrtabns_bio_clone_blkg_association:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.blkcg = type { %struct.cgroup_subsys_state, %struct.spinlock, %struct.refcount_struct, %struct.xarray, ptr, %struct.hlist_head, [6 x ptr], %struct.list_head, [129 x i8], %struct.list_head }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cftype = type { [64 x i8], i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cgroup_subsys = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, %struct.idr, %struct.list_head, ptr, ptr, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.static_key_true = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.75 }
%union.anon.75 = type { i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.74 }
%union.anon.74 = type { ptr }
%struct.cpumask = type { [1 x i32] }
%struct.radix_tree_preload = type { %struct.local_lock_t, i32, ptr }
%struct.local_lock_t = type { %struct.lockdep_map, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i32, i32, %struct.kref, i32, i32, i32, i32, %struct.atomic_t, %struct.bdi_writeback, %struct.list_head, %struct.xarray, %struct.mutex, %struct.rw_semaphore, %struct.wait_queue_head, ptr, [64 x i8], ptr, %struct.timer_list, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.bdi_writeback = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i32, i32, i32, i32, i32, i32, i32, i32, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i32, %struct.list_head, %struct.percpu_ref, %struct.fprop_local_percpu, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.48 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%union.anon.48 = type { %struct.work_struct }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.blkcg_gq = type { ptr, %struct.list_head, %struct.hlist_node, ptr, ptr, %struct.percpu_ref, i8, ptr, %struct.blkg_iostat_set, [6 x ptr], %struct.spinlock, %struct.bio_list, %struct.work_struct, %struct.atomic_t, %struct.atomic64_t, %struct.atomic64_t, i64, i32, %struct.callback_head }
%struct.blkg_iostat_set = type { %struct.u64_stats_sync, %struct.blkg_iostat, %struct.blkg_iostat }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.blkg_iostat = type { [3 x i64], [3 x i64] }
%struct.atomic64_t = type { i64 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.blkg_conf_ctx = type { ptr, ptr, ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.63, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.63 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.blkcg_policy = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.blkg_policy_data = type { ptr, i32 }
%struct.blkcg_policy_data = type { ptr, i32 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.38, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.38 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.percpu_ref_data = type { %struct.atomic_t, ptr, ptr, i8, %struct.callback_head, ptr }
%struct.class_dev_iter = type { %struct.klist_iter, ptr }
%struct.klist_iter = type { ptr, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.disk_stats = type { [4 x i64], [4 x i32], [4 x i32], [4 x i32], i32, [2 x %struct.local_t] }
%struct.local_t = type { %struct.atomic_t }

@blkcg_root = dso_local global { %struct.blkcg, [96 x i8] } zeroinitializer, align 32
@__kstrtab_blkcg_root = external dso_local constant [0 x i8], align 1
@__kstrtabns_blkcg_root = external dso_local constant [0 x i8], align 1
@__ksymtab_blkcg_root = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blkcg_root to i32), ptr @__kstrtab_blkcg_root, ptr @__kstrtabns_blkcg_root }, section "___ksymtab_gpl+blkcg_root", align 4
@blkcg_root_css = dso_local constant { ptr, [28 x i8] } { ptr @blkcg_root, [28 x i8] zeroinitializer }, align 32
@__kstrtab_blkcg_root_css = external dso_local constant [0 x i8], align 1
@__kstrtabns_blkcg_root_css = external dso_local constant [0 x i8], align 1
@__ksymtab_blkcg_root_css = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blkcg_root_css to i32), ptr @__kstrtab_blkcg_root_css, ptr @__kstrtabns_blkcg_root_css }, section "___ksymtab_gpl+blkcg_root_css", align 4
@blkcg_debug_stats = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"block/blk-cgroup.c\00", [45 x i8] zeroinitializer }, align 32
@__kstrtab_blkg_lookup_slowpath = external dso_local constant [0 x i8], align 1
@__kstrtabns_blkg_lookup_slowpath = external dso_local constant [0 x i8], align 1
@__ksymtab_blkg_lookup_slowpath = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blkg_lookup_slowpath to i32), ptr @__kstrtab_blkg_lookup_slowpath, ptr @__kstrtabns_blkg_lookup_slowpath }, section "___ksymtab_gpl+blkg_lookup_slowpath", align 4
@blkcg_print_blkgs.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Total %llu\0A\00", [20 x i8] zeroinitializer }, align 32
@__kstrtab_blkcg_print_blkgs = external dso_local constant [0 x i8], align 1
@__kstrtabns_blkcg_print_blkgs = external dso_local constant [0 x i8], align 1
@__ksymtab_blkcg_print_blkgs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blkcg_print_blkgs to i32), ptr @__kstrtab_blkcg_print_blkgs, ptr @__kstrtabns_blkcg_print_blkgs }, section "___ksymtab_gpl+blkcg_print_blkgs", align 4
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s %llu\0A\00", [23 x i8] zeroinitializer }, align 32
@__kstrtab___blkg_prfill_u64 = external dso_local constant [0 x i8], align 1
@__kstrtabns___blkg_prfill_u64 = external dso_local constant [0 x i8], align 1
@__ksymtab___blkg_prfill_u64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__blkg_prfill_u64 to i32), ptr @__kstrtab___blkg_prfill_u64, ptr @__kstrtabns___blkg_prfill_u64 }, section "___ksymtab_gpl+__blkg_prfill_u64", align 4
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%u:%u%n\00", [24 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@__kstrtab_blkg_conf_prep = external dso_local constant [0 x i8], align 1
@__kstrtabns_blkg_conf_prep = external dso_local constant [0 x i8], align 1
@__ksymtab_blkg_conf_prep = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blkg_conf_prep to i32), ptr @__kstrtab_blkg_conf_prep, ptr @__kstrtabns_blkg_conf_prep }, section "___ksymtab_gpl+blkg_conf_prep", align 4
@__kstrtab_blkg_conf_finish = external dso_local constant [0 x i8], align 1
@__kstrtabns_blkg_conf_finish = external dso_local constant [0 x i8], align 1
@__ksymtab_blkg_conf_finish = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blkg_conf_finish to i32), ptr @__kstrtab_blkg_conf_finish, ptr @__kstrtabns_blkg_conf_finish }, section "___ksymtab_gpl+blkg_conf_finish", align 4
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"blkio\00", [26 x i8] zeroinitializer }, align 32
@blkcg_files = internal global { [2 x %struct.cftype], [80 x i8] } { [2 x %struct.cftype] [%struct.cftype { [64 x i8] c"stat\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @blkcg_print_stat, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype zeroinitializer], [80 x i8] zeroinitializer }, align 32
@blkcg_legacy_files = internal global { [2 x %struct.cftype], [80 x i8] } { [2 x %struct.cftype] [%struct.cftype { [64 x i8] c"reset_stats\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @blkcg_reset_stats, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype zeroinitializer], [80 x i8] zeroinitializer }, align 32
@io_cgrp_subsys = dso_local global { %struct.cgroup_subsys, [52 x i8] } { %struct.cgroup_subsys { ptr @blkcg_css_alloc, ptr @blkcg_css_online, ptr @blkcg_css_offline, ptr null, ptr @blkcg_css_free, ptr null, ptr @blkcg_rstat_flush, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @blkcg_exit, ptr null, ptr @blkcg_bind, i8 0, i32 0, ptr null, ptr @.str.5, ptr null, %struct.idr zeroinitializer, %struct.list_head zeroinitializer, ptr @blkcg_files, ptr @blkcg_legacy_files, i32 16 }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_io_cgrp_subsys = external dso_local constant [0 x i8], align 1
@__kstrtabns_io_cgrp_subsys = external dso_local constant [0 x i8], align 1
@__ksymtab_io_cgrp_subsys = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @io_cgrp_subsys to i32), ptr @__kstrtab_io_cgrp_subsys, ptr @__kstrtabns_io_cgrp_subsys }, section "___ksymtab_gpl+io_cgrp_subsys", align 4
@__kstrtab_blkcg_activate_policy = external dso_local constant [0 x i8], align 1
@__kstrtabns_blkcg_activate_policy = external dso_local constant [0 x i8], align 1
@__ksymtab_blkcg_activate_policy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blkcg_activate_policy to i32), ptr @__kstrtab_blkcg_activate_policy, ptr @__kstrtabns_blkcg_activate_policy }, section "___ksymtab_gpl+blkcg_activate_policy", align 4
@__kstrtab_blkcg_deactivate_policy = external dso_local constant [0 x i8], align 1
@__kstrtabns_blkcg_deactivate_policy = external dso_local constant [0 x i8], align 1
@__ksymtab_blkcg_deactivate_policy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blkcg_deactivate_policy to i32), ptr @__kstrtab_blkcg_deactivate_policy, ptr @__kstrtabns_blkcg_deactivate_policy }, section "___ksymtab_gpl+blkcg_deactivate_policy", align 4
@blkcg_pol_register_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.32, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @blkcg_pol_register_mutex, i64 52), ptr getelementptr (i8, ptr @blkcg_pol_register_mutex, i64 52) }, ptr @blkcg_pol_register_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.33, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@blkcg_pol_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.34, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @blkcg_pol_mutex, i64 52), ptr getelementptr (i8, ptr @blkcg_pol_mutex, i64 52) }, ptr @blkcg_pol_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.35, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@blkcg_policy = internal global { [6 x ptr], [40 x i8] } zeroinitializer, align 32
@blkcg_policy_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str, i32 1461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014blkcg_policy_register: BLKCG_MAX_POLS too small\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"blkcg_policy_register\00", [42 x i8] zeroinitializer }, align 32
@blkcg_policy_register._entry_ptr = internal global ptr @blkcg_policy_register._entry, section ".printk_index", align 4
@all_blkcgs = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @all_blkcgs, ptr @all_blkcgs }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_blkcg_policy_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_blkcg_policy_register = external dso_local constant [0 x i8], align 1
@__ksymtab_blkcg_policy_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blkcg_policy_register to i32), ptr @__kstrtab_blkcg_policy_register, ptr @__kstrtabns_blkcg_policy_register }, section "___ksymtab_gpl+blkcg_policy_register", align 4
@__kstrtab_blkcg_policy_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_blkcg_policy_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_blkcg_policy_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blkcg_policy_unregister to i32), ptr @__kstrtab_blkcg_policy_unregister, ptr @__kstrtabns_blkcg_policy_unregister }, section "___ksymtab_gpl+blkcg_policy_unregister", align 4
@blkcg_punt_bio_wq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@blkcg_add_delay.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_bio_associate_blkg_from_css = external dso_local constant [0 x i8], align 1
@__kstrtabns_bio_associate_blkg_from_css = external dso_local constant [0 x i8], align 1
@__ksymtab_bio_associate_blkg_from_css = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bio_associate_blkg_from_css to i32), ptr @__kstrtab_bio_associate_blkg_from_css, ptr @__kstrtabns_bio_associate_blkg_from_css }, section "___ksymtab_gpl+bio_associate_blkg_from_css", align 4
@__kstrtab_bio_associate_blkg = external dso_local constant [0 x i8], align 1
@__kstrtabns_bio_associate_blkg = external dso_local constant [0 x i8], align 1
@__ksymtab_bio_associate_blkg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bio_associate_blkg to i32), ptr @__kstrtab_bio_associate_blkg, ptr @__kstrtabns_bio_associate_blkg }, section "___ksymtab_gpl+bio_associate_blkg", align 4
@__kstrtab_bio_clone_blkg_association = external dso_local constant [0 x i8], align 1
@__kstrtabns_bio_clone_blkg_association = external dso_local constant [0 x i8], align 1
@__ksymtab_bio_clone_blkg_association = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bio_clone_blkg_association to i32), ptr @__kstrtab_bio_clone_blkg_association, ptr @__kstrtabns_bio_clone_blkg_association }, section "___ksymtab_gpl+bio_clone_blkg_association", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@io_cgrp_subsys_on_dfl_key = external dso_local global %struct.static_key_true, align 4
@__initcall__kmod_blk_cgroup__345_1944_blkcg_init4 = internal global ptr @blkcg_init, section ".initcall4.init", align 4
@__param_str_blkcg_debug_stats = internal constant [29 x i8] c"blk_cgroup.blkcg_debug_stats\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@__param_blkcg_debug_stats = internal constant %struct.kernel_param { ptr @__param_str_blkcg_debug_stats, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.74 { ptr @blkcg_debug_stats } }, section "__param", align 4
@__UNIQUE_ID_blkcg_debug_statstype346 = internal constant [43 x i8] c"blk_cgroup.parmtype=blkcg_debug_stats:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_blkcg_debug_stats347 = internal constant [77 x i8] c"blk_cgroup.parm=blkcg_debug_stats:True if you want debug stats, false if not\00", section ".modinfo", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@blkg_lookup_check.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__blkg_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/blk-cgroup.h\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@blkg_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&blkg->async_bio_lock\00", [42 x i8] zeroinitializer }, align 32
@blkg_alloc.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&blkg->async_bio_work)\00", [55 x i8] zeroinitializer }, align 32
@blkg_alloc.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&(&blkg->iostat.sync)->seq\00", [37 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@blkg_alloc.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [345 x i8], [71 x i8] } { [345 x i8] c"&(&({ do { const void *__vpp_verify = (typeof((blkg->iostat_cpu) + 0))((void *)0); (void)__vpp_verify; } while (0); ({ unsigned long __ptr; __ptr = (unsigned long) ((typeof(*((blkg->iostat_cpu))) *)((blkg->iostat_cpu))); (typeof((typeof(*((blkg->iostat_cpu))) *)((blkg->iostat_cpu)))) (__ptr + (((__per_cpu_offset[(cpu)])))); }); })->sync)->seq\00", [71 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@blkg_create.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@blkg_create.__already_done.20 = internal unnamed_addr global i1 false, section ".data.once", align 1
@percpu_ref_tryget_live_rcu.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"include/linux/percpu-refcount.h\00", [32 x i8] zeroinitializer }, align 32
@radix_tree_preloads = external dso_local global %struct.radix_tree_preload, section ".data..percpu", align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@debug_locks_silent = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"include/linux/local_lock_internal.h\00", [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DEBUG_LOCKS_WARN_ON(%s)\00", [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"l->owner != current\00", [44 x i8] zeroinitializer }, align 32
@blkg_destroy.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@blkg_destroy.__already_done.25 = internal unnamed_addr global i1 false, section ".data.once", align 1
@blkcg_css_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&blkcg->lock\00", [19 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@blkcg_rstat_flush.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@blkcg_print_stat.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@block_class = external dso_local global %struct.class, align 4
@disk_type = external dso_local constant %struct.device_type, align 4
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"rbytes=%llu wbytes=%llu rios=%llu wios=%llu dbytes=%llu dios=%llu\00", [62 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c" use_delay=%d delay_nsec=%llu\00", [34 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"blkcg_pol_register_mutex.wait_lock\00", [61 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"blkcg_pol_register_mutex\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"blkcg_pol_mutex.wait_lock\00", [38 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"blkcg_pol_mutex\00", [16 x i8] zeroinitializer }, align 32
@task_css.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@cgroup_mutex = external dso_local global %struct.mutex, align 4
@css_set_lock = external dso_local global %struct.spinlock, align 4
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/cgroup.h\00", [41 x i8] zeroinitializer }, align 32
@blkg_lookup.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@blkg_lookup_create.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"blkcg_punt_bio\00", [17 x i8] zeroinitializer }, align 32
@___asan_gen_.39 = private unnamed_addr constant [11 x i8] c"blkcg_root\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 48, i32 14 }
@___asan_gen_.42 = private unnamed_addr constant [15 x i8] c"blkcg_root_css\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 51, i32 36 }
@___asan_gen_.45 = private unnamed_addr constant [18 x i8] c"blkcg_debug_stats\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 58, i32 6 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 220, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 527, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 536, i32 18 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 555, i32 17 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 591, i32 20 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 1273, i32 17 }
@___asan_gen_.66 = private unnamed_addr constant [12 x i8] c"blkcg_files\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 965, i32 22 }
@___asan_gen_.69 = private unnamed_addr constant [19 x i8] c"blkcg_legacy_files\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 973, i32 22 }
@___asan_gen_.72 = private unnamed_addr constant [15 x i8] c"io_cgrp_subsys\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 1264, i32 22 }
@___asan_gen_.75 = private unnamed_addr constant [25 x i8] c"blkcg_pol_register_mutex\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [16 x i8] c"blkcg_pol_mutex\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [13 x i8] c"blkcg_policy\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 54, i32 29 }
@___asan_gen_.84 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 1461, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [11 x i8] c"all_blkcgs\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 56, i32 8 }
@___asan_gen_.96 = private unnamed_addr constant [18 x i8] c"blkcg_punt_bio_wq\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 59, i32 33 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 695, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 723, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [30 x i8] c"../include/linux/blk-cgroup.h\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 340, i32 9 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 173, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 175, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 178, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 180, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant [35 x i8] c"../include/linux/percpu-refcount.h\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 280, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant [39 x i8] c"../include/linux/local_lock_internal.h\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 36, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 1124, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.160 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.160, i32 378, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 904, i32 16 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 919, i32 17 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 926, i32 17 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 942, i32 17 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 45, i32 8 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 46, i32 8 }
@___asan_gen_.187 = private unnamed_addr constant [26 x i8] c"../include/linux/cgroup.h\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 494, i32 9 }
@___asan_gen_.190 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 271, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.193 = private constant [22 x i8] c"../block/blk-cgroup.c\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 1937, i32 38 }
@llvm.compiler.used = appending global [72 x ptr] [ptr @__UNIQUE_ID_blkcg_debug_stats347, ptr @__UNIQUE_ID_blkcg_debug_statstype346, ptr @__initcall__kmod_blk_cgroup__345_1944_blkcg_init4, ptr @__ksymtab___blkg_prfill_u64, ptr @__ksymtab_bio_associate_blkg, ptr @__ksymtab_bio_associate_blkg_from_css, ptr @__ksymtab_bio_clone_blkg_association, ptr @__ksymtab_blkcg_activate_policy, ptr @__ksymtab_blkcg_deactivate_policy, ptr @__ksymtab_blkcg_policy_register, ptr @__ksymtab_blkcg_policy_unregister, ptr @__ksymtab_blkcg_print_blkgs, ptr @__ksymtab_blkcg_root, ptr @__ksymtab_blkcg_root_css, ptr @__ksymtab_blkg_conf_finish, ptr @__ksymtab_blkg_conf_prep, ptr @__ksymtab_blkg_lookup_slowpath, ptr @__ksymtab_io_cgrp_subsys, ptr @__param_blkcg_debug_stats, ptr @blkcg_policy_register._entry, ptr @blkcg_policy_register._entry_ptr, ptr @blkcg_root, ptr @blkcg_root_css, ptr @blkcg_debug_stats, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @blkcg_files, ptr @blkcg_legacy_files, ptr @io_cgrp_subsys, ptr @blkcg_pol_register_mutex, ptr @blkcg_pol_mutex, ptr @blkcg_policy, ptr @.str.6, ptr @.str.7, ptr @all_blkcgs, ptr @blkcg_punt_bio_wq, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @blkg_alloc.__key, ptr @.str.13, ptr @blkg_alloc.__key.14, ptr @.str.15, ptr @blkg_alloc.__key.16, ptr @.str.17, ptr @blkg_alloc.__key.18, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @blkcg_css_alloc.__key, ptr @.str.26, ptr @xa_init_flags.__key, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blkcg_root to i32), i32 448, i32 544, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blkcg_root_css to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blkcg_debug_stats to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blkcg_files to i32), i32 304, i32 384, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blkcg_legacy_files to i32), i32 304, i32 384, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @io_cgrp_subsys to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blkcg_pol_register_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blkcg_pol_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blkcg_policy to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blkcg_policy_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @all_blkcgs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blkcg_punt_bio_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blkg_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blkg_alloc.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blkg_alloc.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blkg_alloc.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 345, i32 416, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blkcg_css_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @blkg_lookup_slowpath(ptr noundef %blkcg, ptr noundef %q, i1 noundef zeroext %update_hint) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %blkg_tree = getelementptr inbounds %struct.blkcg, ptr %blkcg, i32 0, i32 3
  %id = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 13
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 8
  %call = tail call ptr @radix_tree_lookup(ptr noundef %blkg_tree, i32 noundef %1) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 8
  %cmp = icmp ne ptr %3, %q
  %update_hint.not = xor i1 %update_hint, true
  %brmerge = or i1 %cmp, %update_hint.not
  %.mux = select i1 %cmp, ptr null, ptr %call
  br i1 %brmerge, label %land.lhs.true.cleanup_crit_edge, label %do.body

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool4.not = icmp eq i32 %4, 0
  br i1 %tobool4.not, label %do.body.if.end_crit_edge, label %land.rhs

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.rhs:                                         ; preds = %do.body
  %dep_map = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 14, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6.not = icmp eq i32 %call.i, 0
  br i1 %cmp6.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !166

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 220, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %do.body.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !167
  %blkg_hint57 = getelementptr inbounds %struct.blkcg, ptr %blkcg, i32 0, i32 4
  %5 = ptrtoint ptr %blkg_hint57 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %call, ptr %blkg_hint57, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %if.end ], [ %.mux, %land.lhs.true.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @blkg_dev_name(ptr nocapture noundef readonly %blkg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %blkg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %blkg, align 8
  %disk = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disk, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %bdi = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %bdi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bdi, align 4
  %dev = getelementptr inbounds %struct.backing_dev_info, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call ptr @bdi_dev_name(ptr noundef %5) #14
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ %call, %if.end ], [ null, %lor.lhs.false.return_crit_edge ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bdi_dev_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blkcg_print_blkgs(ptr noundef %sf, ptr noundef %blkcg, ptr nocapture noundef readonly %prfill, ptr noundef readonly %pol, i32 noundef %data, i1 noundef zeroext %show_total) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !156) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !168
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b49 = load i1, ptr @blkcg_print_blkgs.__warned, align 1
  br i1 %.b49, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @blkcg_print_blkgs.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 527, ptr noundef nonnull @.str.1) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %blkg_list = getelementptr inbounds %struct.blkcg, ptr %blkcg, i32 0, i32 5
  %4 = ptrtoint ptr %blkg_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %blkg_list, align 8
  %tobool10.not = icmp eq ptr %5, null
  %add.ptr = getelementptr i8, ptr %5, i32 -12
  %tobool12.not6367 = icmp eq ptr %add.ptr, null
  %tobool12.not63 = or i1 %tobool10.not, %tobool12.not6367
  br i1 %tobool12.not63, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %tobool.not.i51 = icmp eq ptr %pol, null
  br label %for.body

for.body:                                         ; preds = %if.end17.for.body_crit_edge, %for.body.lr.ph
  %blkg.065 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr31, %if.end17.for.body_crit_edge ]
  %total.064 = phi i64 [ 0, %for.body.lr.ph ], [ %total.1, %if.end17.for.body_crit_edge ]
  %6 = ptrtoint ptr %blkg.065 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %blkg.065, align 8
  %queue_lock = getelementptr inbounds %struct.request_queue, ptr %7, i32 0, i32 14
  tail call void @_raw_spin_lock_irq(ptr noundef %queue_lock) #14
  br i1 %tobool.not.i51, label %for.body.if.end17_crit_edge, label %blkcg_policy_enabled.exit

for.body.if.end17_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

blkcg_policy_enabled.exit:                        ; preds = %for.body
  %8 = ptrtoint ptr %blkg.065 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %blkg.065, align 8
  %10 = ptrtoint ptr %pol to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pol, align 4
  %blkcg_pols.i = getelementptr inbounds %struct.request_queue, ptr %9, i32 0, i32 34
  %div3.i.i = lshr i32 %11, 5
  %arrayidx.i.i = getelementptr i32, ptr %blkcg_pols.i, i32 %div3.i.i
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %11, 31
  %14 = shl nuw i32 1, %and.i.i
  %15 = and i32 %14, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool1.i.not = icmp eq i32 %15, 0
  br i1 %tobool1.i.not, label %blkcg_policy_enabled.exit.if.end17_crit_edge, label %if.then15

blkcg_policy_enabled.exit.if.end17_crit_edge:     ; preds = %blkcg_policy_enabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.then15:                                        ; preds = %blkcg_policy_enabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %pol to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pol, align 4
  %arrayidx = getelementptr %struct.blkcg_gq, ptr %blkg.065, i32 0, i32 9, i32 %17
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %call16 = tail call i64 %prfill(ptr noundef %sf, ptr noundef %19, i32 noundef %data) #14
  %add = add i64 %call16, %total.064
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %blkcg_policy_enabled.exit.if.end17_crit_edge, %for.body.if.end17_crit_edge
  %total.1 = phi i64 [ %add, %if.then15 ], [ %total.064, %blkcg_policy_enabled.exit.if.end17_crit_edge ], [ %total.064, %for.body.if.end17_crit_edge ]
  %20 = ptrtoint ptr %blkg.065 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %blkg.065, align 8
  %queue_lock19 = getelementptr inbounds %struct.request_queue, ptr %21, i32 0, i32 14
  tail call void @_raw_spin_unlock_irq(ptr noundef %queue_lock19) #14
  %blkcg_node = getelementptr inbounds %struct.blkcg_gq, ptr %blkg.065, i32 0, i32 2
  %22 = ptrtoint ptr %blkcg_node to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %blkcg_node, align 4
  %tobool27.not = icmp eq ptr %23, null
  %add.ptr31 = getelementptr i8, ptr %23, i32 -12
  %tobool12.not68 = icmp eq ptr %add.ptr31, null
  %tobool12.not = or i1 %tobool27.not, %tobool12.not68
  br i1 %tobool12.not, label %if.end17.for.end_crit_edge, label %if.end17.for.body_crit_edge

if.end17.for.body_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end17.for.end_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %if.end17.for.end_crit_edge, %do.end.for.end_crit_edge
  %total.0.lcssa = phi i64 [ 0, %do.end.for.end_crit_edge ], [ %total.1, %if.end17.for.end_crit_edge ]
  %call.i52 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i52, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i55

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i55:                                ; preds = %for.end
  %call1.i53 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i53)
  %tobool.not.i54 = icmp eq i32 %call1.i53, 0
  br i1 %tobool.not.i54, label %land.lhs.true.i55.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i57

land.lhs.true.i55.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i55
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i57:                               ; preds = %land.lhs.true.i55
  %.b4.i56 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i56, label %land.lhs.true2.i57.rcu_read_unlock.exit_crit_edge, label %if.then.i58

land.lhs.true2.i57.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i57
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i58:                                      ; preds = %land.lhs.true2.i57
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i58, %land.lhs.true2.i57.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i55.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !169
  %24 = tail call i32 @llvm.read_register.i32(metadata !156) #14
  %and.i.i.i.i.i59 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i59 to ptr
  %preempt_count.i.i.i.i60 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i60 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i60, align 4
  %sub.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i60, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  br i1 %show_total, label %if.then36, label %rcu_read_unlock.exit.if.end37_crit_edge

rcu_read_unlock.exit.if.end37_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37

if.then36:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.2, i64 noundef %total.0.lcssa) #14
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %rcu_read_unlock.exit.if.end37_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @__blkg_prfill_u64(ptr noundef %sf, ptr nocapture noundef readonly %pd, i64 noundef %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pd, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %disk.i = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disk.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %bdi.i = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %bdi.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bdi.i, align 4
  %dev.i = getelementptr inbounds %struct.backing_dev_info, ptr %7, i32 0, i32 17
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %tobool3.not.i = icmp eq ptr %9, null
  br i1 %tobool3.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %blkg_dev_name.exit

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

blkg_dev_name.exit:                               ; preds = %lor.lhs.false.i
  %call.i = tail call ptr @bdi_dev_name(ptr noundef %7) #14
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %blkg_dev_name.exit.cleanup_crit_edge, label %if.end

blkg_dev_name.exit.cleanup_crit_edge:             ; preds = %blkg_dev_name.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %blkg_dev_name.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.3, ptr noundef nonnull %call.i, i64 noundef %v) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %blkg_dev_name.exit.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %v, %if.end ], [ 0, %blkg_dev_name.exit.cleanup_crit_edge ], [ 0, %lor.lhs.false.i.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @blkcg_conf_open_bdev(ptr nocapture noundef %inputp) local_unnamed_addr #0 align 64 {
entry:
  %major = alloca i32, align 4
  %minor = alloca i32, align 4
  %key_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inputp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inputp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %major) #14
  %2 = ptrtoint ptr %major to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %major, align 4, !annotation !170
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %minor) #14
  %3 = ptrtoint ptr %minor to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %minor, align 4, !annotation !170
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key_len) #14
  %4 = ptrtoint ptr %key_len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %key_len, align 4, !annotation !170
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %major, ptr noundef nonnull %minor, ptr noundef nonnull %key_len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %key_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %key_len, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %6
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %add.ptr, align 1
  %conv = zext i8 %8 to i32
  %arrayidx = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %11 = and i8 %10, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp3.not = icmp eq i8 %11, 0
  br i1 %cmp3.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = call ptr @skip_spaces(ptr noundef %add.ptr) #14
  %12 = ptrtoint ptr %major to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %major, align 4
  %shl = shl i32 %13, 20
  %14 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %minor, align 4
  %or = or i32 %shl, %15
  %call9 = call ptr @blkdev_get_no_open(i32 noundef %or) #14
  %tobool.not = icmp eq ptr %call9, null
  br i1 %tobool.not, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %bd_partno.i = getelementptr inbounds %struct.block_device, ptr %call9, i32 0, i32 15
  %16 = ptrtoint ptr %bd_partno.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bd_partno.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.i.not = icmp eq i8 %17, 0
  br i1 %tobool.i.not, label %if.end16, label %if.then14

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  call void @blkdev_put_no_open(ptr noundef nonnull %call9) #14
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %inputp to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call8, ptr %inputp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then14, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -19 to ptr), %if.then14 ], [ %call9, %if.end16 ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -19 to ptr), %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key_len) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %minor) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %major) #14
  ret ptr %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skip_spaces(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blkdev_get_no_open(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blkdev_put_no_open(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @blkg_conf_prep(ptr noundef %blkcg, ptr noundef %pol, ptr noundef %input, ptr nocapture noundef writeonly %ctx) #0 align 64 {
entry:
  %input.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %input.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %input, ptr %input.addr, align 4
  %call = call ptr @blkcg_conf_open_bdev(ptr noundef nonnull %input.addr)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %1 = ptrtoint ptr %call to i32
  br label %cleanup60

if.end:                                           ; preds = %entry
  %bd_queue.i = getelementptr inbounds %struct.block_device, ptr %call, i32 0, i32 18
  %2 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd_queue.i, align 4
  %call4 = tail call i32 @blk_queue_enter(ptr noundef %3, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.end.fail_crit_edge

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

if.end6:                                          ; preds = %if.end
  %4 = tail call i32 @llvm.read_register.i32(metadata !156) #14
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !168
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %if.end6.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end6.rcu_read_lock.exit_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end6
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end6.rcu_read_lock.exit_crit_edge
  %queue_lock = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 14
  tail call void @_raw_spin_lock_irq(ptr noundef %queue_lock) #14
  %call7 = tail call fastcc ptr @blkg_lookup_check(ptr noundef %blkcg, ptr noundef %pol, ptr noundef %3)
  %cmp.i116 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i116, label %rcu_read_lock.exit.fail_unlock_crit_edge, label %if.end11

rcu_read_lock.exit.fail_unlock_crit_edge:         ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail_unlock

if.end11:                                         ; preds = %rcu_read_lock.exit
  %tobool12.not = icmp eq ptr %call7, null
  br i1 %tobool12.not, label %while.cond.preheader, label %if.end11.success_crit_edge

if.end11.success_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %success

while.cond.preheader:                             ; preds = %if.end11
  %root_blkg.i = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 35
  %parent.0.in172 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %blkcg, i32 0, i32 12
  %id.i.i = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 13
  br label %while.cond

while.cond:                                       ; preds = %if.end48.while.cond_crit_edge, %while.cond.preheader
  %8 = ptrtoint ptr %parent.0.in172 to i32
  call void @__asan_load4_noabort(i32 %8)
  %parent.0173 = load ptr, ptr %parent.0.in172, align 8
  %tobool17.not174 = icmp eq ptr %parent.0173, null
  br i1 %tobool17.not174, label %while.cond.while.end_crit_edge, label %while.cond.land.rhs_crit_edge

while.cond.land.rhs_crit_edge:                    ; preds = %while.cond
  br label %land.rhs

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

land.rhs:                                         ; preds = %while.body20.land.rhs_crit_edge, %while.cond.land.rhs_crit_edge
  %parent.0177 = phi ptr [ %parent.0, %while.body20.land.rhs_crit_edge ], [ %parent.0173, %while.cond.land.rhs_crit_edge ]
  %pos.0175 = phi ptr [ %parent.0177, %while.body20.land.rhs_crit_edge ], [ %blkcg, %while.cond.land.rhs_crit_edge ]
  %cmp.i117 = icmp eq ptr %parent.0177, @blkcg_root
  br i1 %cmp.i117, label %__blkg_lookup.exit, label %if.end.i

if.end.i:                                         ; preds = %land.rhs
  %blkg_hint.i = getelementptr inbounds %struct.blkcg, ptr %parent.0177, i32 0, i32 4
  %9 = ptrtoint ptr %blkg_hint.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %blkg_hint.i, align 4
  %call.i119 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %tobool.not.i120 = icmp eq i32 %call.i119, 0
  br i1 %tobool.not.i120, label %land.lhs.true.i121, label %if.end.i.do.end9.i_crit_edge

if.end.i.do.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9.i

land.lhs.true.i121:                               ; preds = %if.end.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i121.do.end9.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i121.do.end9.i_crit_edge:           ; preds = %land.lhs.true.i121
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i121
  %.b25.i = load i1, ptr @__blkg_lookup.__warned, align 1
  br i1 %.b25.i, label %land.lhs.true4.i.do.end9.i_crit_edge, label %if.then6.i

land.lhs.true4.i.do.end9.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9.i

if.then6.i:                                       ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__blkg_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 340, ptr noundef nonnull @.str.12) #14
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.then6.i, %land.lhs.true4.i.do.end9.i_crit_edge, %land.lhs.true.i121.do.end9.i_crit_edge, %if.end.i.do.end9.i_crit_edge
  %tobool11.not.i = icmp eq ptr %10, null
  br i1 %tobool11.not.i, label %do.end9.i.if.end16.i_crit_edge, label %land.lhs.true12.i

do.end9.i.if.end16.i_crit_edge:                   ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16.i

land.lhs.true12.i:                                ; preds = %do.end9.i
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %cmp14.i = icmp eq ptr %12, %3
  br i1 %cmp14.i, label %land.lhs.true12.i.while.end_crit_edge, label %land.lhs.true12.i.if.end16.i_crit_edge

land.lhs.true12.i.if.end16.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16.i

land.lhs.true12.i.while.end_crit_edge:            ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end16.i:                                       ; preds = %land.lhs.true12.i.if.end16.i_crit_edge, %do.end9.i.if.end16.i_crit_edge
  %blkg_tree.i.i = getelementptr inbounds %struct.blkcg, ptr %parent.0177, i32 0, i32 3
  %13 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id.i.i, align 8
  %call.i.i = tail call ptr @radix_tree_lookup(ptr noundef %blkg_tree.i.i, i32 noundef %14) #14
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end16.i.while.body20_crit_edge, label %land.lhs.true.i.i

if.end16.i.while.body20_crit_edge:                ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body20

land.lhs.true.i.i:                                ; preds = %if.end16.i
  %15 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call.i.i, align 8
  %cmp.i.i.not = icmp eq ptr %16, %3
  br i1 %cmp.i.i.not, label %land.lhs.true.i.i.while.end_crit_edge, label %land.lhs.true.i.i.while.body20_crit_edge

land.lhs.true.i.i.while.body20_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body20

land.lhs.true.i.i.while.end_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

__blkg_lookup.exit:                               ; preds = %land.rhs
  %17 = ptrtoint ptr %root_blkg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %root_blkg.i, align 8
  %tobool19.not = icmp eq ptr %18, null
  br i1 %tobool19.not, label %__blkg_lookup.exit.while.body20_crit_edge, label %__blkg_lookup.exit.while.end_crit_edge

__blkg_lookup.exit.while.end_crit_edge:           ; preds = %__blkg_lookup.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

__blkg_lookup.exit.while.body20_crit_edge:        ; preds = %__blkg_lookup.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body20

while.body20:                                     ; preds = %__blkg_lookup.exit.while.body20_crit_edge, %land.lhs.true.i.i.while.body20_crit_edge, %if.end16.i.while.body20_crit_edge
  %parent.0.in = getelementptr inbounds %struct.cgroup_subsys_state, ptr %parent.0177, i32 0, i32 12
  %19 = ptrtoint ptr %parent.0.in to i32
  call void @__asan_load4_noabort(i32 %19)
  %parent.0 = load ptr, ptr %parent.0.in, align 8
  %tobool17.not = icmp eq ptr %parent.0, null
  br i1 %tobool17.not, label %while.body20.while.end_crit_edge, label %while.body20.land.rhs_crit_edge

while.body20.land.rhs_crit_edge:                  ; preds = %while.body20
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs

while.body20.while.end_crit_edge:                 ; preds = %while.body20
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %while.body20.while.end_crit_edge, %__blkg_lookup.exit.while.end_crit_edge, %land.lhs.true.i.i.while.end_crit_edge, %land.lhs.true12.i.while.end_crit_edge, %while.cond.while.end_crit_edge
  %pos.0.lcssa = phi ptr [ %blkcg, %while.cond.while.end_crit_edge ], [ %pos.0175, %land.lhs.true.i.i.while.end_crit_edge ], [ %pos.0175, %land.lhs.true12.i.while.end_crit_edge ], [ %parent.0177, %while.body20.while.end_crit_edge ], [ %pos.0175, %__blkg_lookup.exit.while.end_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %queue_lock) #14
  %call.i123 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i123, label %while.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i126

while.end.rcu_read_unlock.exit_crit_edge:         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i126:                               ; preds = %while.end
  %call1.i124 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i124)
  %tobool.not.i125 = icmp eq i32 %call1.i124, 0
  br i1 %tobool.not.i125, label %land.lhs.true.i126.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i128

land.lhs.true.i126.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i126
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i128:                              ; preds = %land.lhs.true.i126
  %.b4.i127 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i127, label %land.lhs.true2.i128.rcu_read_unlock.exit_crit_edge, label %if.then.i129

land.lhs.true2.i128.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i128
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i129:                                     ; preds = %land.lhs.true2.i128
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i129, %land.lhs.true2.i128.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i126.rcu_read_unlock.exit_crit_edge, %while.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !169
  %20 = tail call i32 @llvm.read_register.i32(metadata !156) #14
  %and.i.i.i.i.i130 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i130 to ptr
  %preempt_count.i.i.i.i131 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i131 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i131, align 4
  %sub.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i131, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  %call23 = tail call fastcc ptr @blkg_alloc(ptr noundef %pos.0.lcssa, ptr noundef %3, i32 noundef 3264)
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %rcu_read_unlock.exit.fail_exit_queue_crit_edge, label %if.end30, !prof !166

rcu_read_unlock.exit.fail_exit_queue_crit_edge:   ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail_exit_queue

if.end30:                                         ; preds = %rcu_read_unlock.exit
  %call31 = tail call i32 @radix_tree_preload(i32 noundef 3264) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.then33

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @blkg_free(ptr noundef nonnull %call23)
  br label %fail_exit_queue

if.end34:                                         ; preds = %if.end30
  %24 = tail call i32 @llvm.read_register.i32(metadata !156) #14
  %and.i.i.i.i.i105 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i105 to ptr
  %preempt_count.i.i.i.i106 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i106 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i106, align 4
  %add.i.i.i107 = add i32 %27, 1
  store volatile i32 %add.i.i.i107, ptr %preempt_count.i.i.i.i106, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !168
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i108 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i108, label %if.end34.rcu_read_lock.exit115_crit_edge, label %land.lhs.true.i111

if.end34.rcu_read_lock.exit115_crit_edge:         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit115

land.lhs.true.i111:                               ; preds = %if.end34
  %call1.i109 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i109)
  %tobool.not.i110 = icmp eq i32 %call1.i109, 0
  br i1 %tobool.not.i110, label %land.lhs.true.i111.rcu_read_lock.exit115_crit_edge, label %land.lhs.true2.i113

land.lhs.true.i111.rcu_read_lock.exit115_crit_edge: ; preds = %land.lhs.true.i111
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit115

land.lhs.true2.i113:                              ; preds = %land.lhs.true.i111
  %.b4.i112 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i112, label %land.lhs.true2.i113.rcu_read_lock.exit115_crit_edge, label %if.then.i114

land.lhs.true2.i113.rcu_read_lock.exit115_crit_edge: ; preds = %land.lhs.true2.i113
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit115

if.then.i114:                                     ; preds = %land.lhs.true2.i113
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #14
  br label %rcu_read_lock.exit115

rcu_read_lock.exit115:                            ; preds = %if.then.i114, %land.lhs.true2.i113.rcu_read_lock.exit115_crit_edge, %land.lhs.true.i111.rcu_read_lock.exit115_crit_edge, %if.end34.rcu_read_lock.exit115_crit_edge
  tail call void @_raw_spin_lock_irq(ptr noundef %queue_lock) #14
  %call36 = tail call fastcc ptr @blkg_lookup_check(ptr noundef %pos.0.lcssa, ptr noundef %pol, ptr noundef %3)
  %cmp.i132 = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i132, label %if.then38, label %if.end40

if.then38:                                        ; preds = %rcu_read_lock.exit115
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @blkg_free(ptr noundef nonnull %call23)
  br label %fail_preloaded

if.end40:                                         ; preds = %rcu_read_lock.exit115
  %tobool41.not = icmp eq ptr %call36, null
  br i1 %tobool41.not, label %if.else, label %if.then42

if.then42:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @blkg_free(ptr noundef nonnull %call23)
  br label %if.end48

if.else:                                          ; preds = %if.end40
  %call43 = tail call fastcc ptr @blkg_create(ptr noundef %pos.0.lcssa, ptr noundef %3, ptr noundef nonnull %call23)
  %cmp.i133 = icmp ugt ptr %call43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i133, label %if.else.fail_preloaded_crit_edge, label %if.else.if.end48_crit_edge

if.else.if.end48_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

if.else.fail_preloaded_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail_preloaded

if.end48:                                         ; preds = %if.else.if.end48_crit_edge, %if.then42
  %blkg.1 = phi ptr [ %call36, %if.then42 ], [ %call43, %if.else.if.end48_crit_edge ]
  %28 = tail call i32 @llvm.read_register.i32(metadata !156) #14
  %and.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %33, ptrtoint (ptr @radix_tree_preloads to i32)
  %34 = inttoptr i32 %add.i to ptr
  tail call fastcc void @local_lock_release(ptr noundef %34) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !171
  %35 = tail call i32 @llvm.read_register.i32(metadata !156) #14
  %and.i.i.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %38, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  %cmp = icmp eq ptr %pos.0.lcssa, %blkcg
  br i1 %cmp, label %if.end48.success_crit_edge, label %if.end48.while.cond_crit_edge

if.end48.while.cond_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond

if.end48.success_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %success

success:                                          ; preds = %if.end48.success_crit_edge, %if.end11.success_crit_edge
  %blkg.3 = phi ptr [ %call7, %if.end11.success_crit_edge ], [ %blkg.1, %if.end48.success_crit_edge ]
  tail call void @blk_queue_exit(ptr noundef %3) #14
  %39 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call, ptr %ctx, align 4
  %blkg54 = getelementptr inbounds %struct.blkg_conf_ctx, ptr %ctx, i32 0, i32 1
  %40 = ptrtoint ptr %blkg54 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %blkg.3, ptr %blkg54, align 4
  %41 = ptrtoint ptr %input.addr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %input.addr, align 4
  %body = getelementptr inbounds %struct.blkg_conf_ctx, ptr %ctx, i32 0, i32 2
  %43 = ptrtoint ptr %body to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %body, align 4
  br label %cleanup60

fail_preloaded:                                   ; preds = %if.else.fail_preloaded_crit_edge, %if.then38
  %ret.1.ph.in = phi ptr [ %call36, %if.then38 ], [ %call43, %if.else.fail_preloaded_crit_edge ]
  tail call fastcc void @radix_tree_preload_end()
  br label %fail_unlock

fail_unlock:                                      ; preds = %fail_preloaded, %rcu_read_lock.exit.fail_unlock_crit_edge
  %ret.2.in = phi ptr [ %ret.1.ph.in, %fail_preloaded ], [ %call7, %rcu_read_lock.exit.fail_unlock_crit_edge ]
  %ret.2 = ptrtoint ptr %ret.2.in to i32
  tail call void @_raw_spin_unlock_irq(ptr noundef %queue_lock) #14
  %call.i134 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i134, label %fail_unlock.rcu_read_unlock.exit144_crit_edge, label %land.lhs.true.i137

fail_unlock.rcu_read_unlock.exit144_crit_edge:    ; preds = %fail_unlock
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit144

land.lhs.true.i137:                               ; preds = %fail_unlock
  %call1.i135 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i135)
  %tobool.not.i136 = icmp eq i32 %call1.i135, 0
  br i1 %tobool.not.i136, label %land.lhs.true.i137.rcu_read_unlock.exit144_crit_edge, label %land.lhs.true2.i139

land.lhs.true.i137.rcu_read_unlock.exit144_crit_edge: ; preds = %land.lhs.true.i137
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit144

land.lhs.true2.i139:                              ; preds = %land.lhs.true.i137
  %.b4.i138 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i138, label %land.lhs.true2.i139.rcu_read_unlock.exit144_crit_edge, label %if.then.i140

land.lhs.true2.i139.rcu_read_unlock.exit144_crit_edge: ; preds = %land.lhs.true2.i139
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit144

if.then.i140:                                     ; preds = %land.lhs.true2.i139
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #14
  br label %rcu_read_unlock.exit144

rcu_read_unlock.exit144:                          ; preds = %if.then.i140, %land.lhs.true2.i139.rcu_read_unlock.exit144_crit_edge, %land.lhs.true.i137.rcu_read_unlock.exit144_crit_edge, %fail_unlock.rcu_read_unlock.exit144_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !169
  %44 = tail call i32 @llvm.read_register.i32(metadata !156) #14
  %and.i.i.i.i.i141 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i.i141 to ptr
  %preempt_count.i.i.i.i142 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i.i.i142 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i.i.i142, align 4
  %sub.i.i.i143 = add i32 %47, -1
  store volatile i32 %sub.i.i.i143, ptr %preempt_count.i.i.i.i142, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  br label %fail_exit_queue

fail_exit_queue:                                  ; preds = %rcu_read_unlock.exit144, %if.then33, %rcu_read_unlock.exit.fail_exit_queue_crit_edge
  %ret.3 = phi i32 [ %ret.2, %rcu_read_unlock.exit144 ], [ -12, %if.then33 ], [ -12, %rcu_read_unlock.exit.fail_exit_queue_crit_edge ]
  tail call void @blk_queue_exit(ptr noundef %3) #14
  br label %fail

fail:                                             ; preds = %fail_exit_queue, %if.end.fail_crit_edge
  %ret.4 = phi i32 [ %call4, %if.end.fail_crit_edge ], [ %ret.3, %fail_exit_queue ]
  tail call void @blkdev_put_no_open(ptr noundef %call) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %ret.4)
  %cmp56 = icmp eq i32 %ret.4, -16
  br i1 %cmp56, label %if.then57, label %fail.cleanup60_crit_edge

fail.cleanup60_crit_edge:                         ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup60

if.then57:                                        ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @msleep(i32 noundef 10) #14
  %48 = tail call i32 @llvm.read_register.i32(metadata !156) #14
  %and.i.i145 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i145 to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %task.i, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %stack.i.i, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %53) #14
  br label %cleanup60

cleanup60:                                        ; preds = %if.then57, %fail.cleanup60_crit_edge, %success, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ 0, %success ], [ -513, %if.then57 ], [ %ret.4, %fail.cleanup60_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_queue_enter(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @blkg_lookup_check(ptr noundef %blkcg, ptr noundef readonly %pol, ptr noundef %q) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b86 = load i1, ptr @blkg_lookup_check.__already_done, align 1
  br i1 %.b86, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !172

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @blkg_lookup_check.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 565, i32 noundef 9, ptr noundef null) #14
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool39.not = icmp eq i32 %0, 0
  br i1 %tobool39.not, label %if.end29.if.end66_crit_edge, label %land.rhs40

if.end29.if.end66_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

land.rhs40:                                       ; preds = %if.end29
  %dep_map = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 14, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end60, label %land.rhs40.if.end66_crit_edge, !prof !166

land.rhs40.if.end66_crit_edge:                    ; preds = %land.rhs40
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

do.end60:                                         ; preds = %land.rhs40
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 566, i32 noundef 9, ptr noundef null) #14
  br label %if.end66

if.end66:                                         ; preds = %do.end60, %land.rhs40.if.end66_crit_edge, %if.end29.if.end66_crit_edge
  %tobool.not.i = icmp eq ptr %pol, null
  br i1 %tobool.not.i, label %if.end66.return_crit_edge, label %blkcg_policy_enabled.exit

if.end66.return_crit_edge:                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

blkcg_policy_enabled.exit:                        ; preds = %if.end66
  %1 = ptrtoint ptr %pol to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pol, align 4
  %blkcg_pols.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 34
  %div3.i.i = lshr i32 %2, 5
  %arrayidx.i.i = getelementptr i32, ptr %blkcg_pols.i, i32 %div3.i.i
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %2, 31
  %5 = shl nuw i32 1, %and.i.i
  %6 = and i32 %5, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.i.not = icmp eq i32 %6, 0
  br i1 %tobool1.i.not, label %blkcg_policy_enabled.exit.return_crit_edge, label %if.end79

blkcg_policy_enabled.exit.return_crit_edge:       ; preds = %blkcg_policy_enabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end79:                                         ; preds = %blkcg_policy_enabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call80 = tail call fastcc ptr @__blkg_lookup(ptr noundef %blkcg, ptr noundef %q, i1 noundef zeroext true)
  br label %return

return:                                           ; preds = %if.end79, %blkcg_policy_enabled.exit.return_crit_edge, %if.end66.return_crit_edge
  %retval.0 = phi ptr [ %call80, %if.end79 ], [ inttoptr (i32 -95 to ptr), %blkcg_policy_enabled.exit.return_crit_edge ], [ inttoptr (i32 -95 to ptr), %if.end66.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__blkg_lookup(ptr noundef %blkcg, ptr noundef %q, i1 noundef zeroext %update_hint) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %cmp = icmp eq ptr %blkcg, @blkcg_root
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %root_blkg = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 35
  %0 = ptrtoint ptr %root_blkg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root_blkg, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %blkg_hint = getelementptr inbounds %struct.blkcg, ptr %blkcg, i32 0, i32 4
  %2 = ptrtoint ptr %blkg_hint to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %blkg_hint, align 4
  %call = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.do.end9_crit_edge

if.end.do.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9

land.lhs.true:                                    ; preds = %if.end
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true4

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b25 = load i1, ptr @__blkg_lookup.__warned, align 1
  br i1 %.b25, label %land.lhs.true4.do.end9_crit_edge, label %if.then6

land.lhs.true4.do.end9_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9

if.then6:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__blkg_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 340, ptr noundef nonnull @.str.12) #14
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %land.lhs.true4.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %if.end.do.end9_crit_edge
  %tobool11.not = icmp eq ptr %3, null
  br i1 %tobool11.not, label %do.end9.if.end16_crit_edge, label %land.lhs.true12

do.end9.if.end16_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

land.lhs.true12:                                  ; preds = %do.end9
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %cmp14 = icmp eq ptr %5, %q
  br i1 %cmp14, label %land.lhs.true12.cleanup_crit_edge, label %land.lhs.true12.if.end16_crit_edge

land.lhs.true12.if.end16_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

land.lhs.true12.cleanup_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end16:                                         ; preds = %land.lhs.true12.if.end16_crit_edge, %do.end9.if.end16_crit_edge
  %blkg_tree.i = getelementptr inbounds %struct.blkcg, ptr %blkcg, i32 0, i32 3
  %id.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 13
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id.i, align 8
  %call.i = tail call ptr @radix_tree_lookup(ptr noundef %blkg_tree.i, i32 noundef %7) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end16.cleanup_crit_edge, label %land.lhs.true.i

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end16
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call.i, align 8
  %cmp.i = icmp ne ptr %9, %q
  %update_hint.not.i = xor i1 %update_hint, true
  %brmerge.i = or i1 %cmp.i, %update_hint.not.i
  %.mux.i = select i1 %cmp.i, ptr null, ptr %call.i
  br i1 %brmerge.i, label %land.lhs.true.i.cleanup_crit_edge, label %do.body.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body.i:                                        ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %10 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool4.not.i = icmp eq i32 %10, 0
  br i1 %tobool4.not.i, label %do.body.i.if.end.i_crit_edge, label %land.rhs.i

do.body.i.if.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

land.rhs.i:                                       ; preds = %do.body.i
  %dep_map.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 14, i32 0, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp6.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp6.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !166

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 220, i32 noundef 9, ptr noundef null) #14
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %do.body.i.if.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !167
  %11 = ptrtoint ptr %blkg_hint to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %call.i, ptr %blkg_hint, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %land.lhs.true.i.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %land.lhs.true12.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %1, %if.then ], [ %3, %land.lhs.true12.cleanup_crit_edge ], [ %call.i, %if.end.i ], [ %.mux.i, %land.lhs.true.i.cleanup_crit_edge ], [ null, %if.end16.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @blkg_alloc(ptr noundef %blkcg, ptr noundef %q, i32 noundef %gfp_mask) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i.i = and i32 %gfp_mask, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %entry.kzalloc_node.exit_crit_edge, label %if.end.i.i.i, !prof !172

entry.kzalloc_node.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %kzalloc_node.exit

if.end.i.i.i:                                     ; preds = %entry
  %and2.i.i.i = and i32 %gfp_mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc_node.exit_crit_edge

if.end.i.i.i.kzalloc_node.exit_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %kzalloc_node.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %and6.i.i.i = and i32 %gfp_mask, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc_node.exit

kzalloc_node.exit:                                ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc_node.exit_crit_edge, %entry.kzalloc_node.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %entry.kzalloc_node.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc_node.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %or.i = or i32 %gfp_mask, 256
  %arrayidx3.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i, i32 9
  %0 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx3.i.i, align 4
  %call.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef %or.i, i32 noundef 344) #17
  %tobool.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not, label %kzalloc_node.exit.cleanup51_crit_edge, label %if.end

kzalloc_node.exit.cleanup51_crit_edge:            ; preds = %kzalloc_node.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup51

if.end:                                           ; preds = %kzalloc_node.exit
  %refcnt = getelementptr inbounds %struct.blkcg_gq, ptr %call.i.i.i, i32 0, i32 5
  %call1 = tail call i32 @percpu_ref_init(ptr noundef %refcnt, ptr noundef nonnull @blkg_release, i32 noundef 0, i32 noundef %gfp_mask) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.err_free_crit_edge

if.end.err_free_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free

if.end4:                                          ; preds = %if.end
  %call5 = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 128, i32 noundef 8, i32 noundef %gfp_mask) #18
  %iostat_cpu = getelementptr inbounds %struct.blkcg_gq, ptr %call.i.i.i, i32 0, i32 7
  %2 = ptrtoint ptr %iostat_cpu to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call5, ptr %iostat_cpu, align 8
  %tobool7.not = icmp eq ptr %call5, null
  br i1 %tobool7.not, label %if.end4.err_free_crit_edge, label %if.end9

if.end4.err_free_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free

if.end9:                                          ; preds = %if.end4
  %3 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %q, ptr %call.i.i.i, align 8
  %q_node = getelementptr inbounds %struct.blkcg_gq, ptr %call.i.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %q_node to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %q_node, ptr %q_node, align 4
  %prev.i = getelementptr inbounds %struct.blkcg_gq, ptr %call.i.i.i, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %q_node, ptr %prev.i, align 8
  %async_bio_lock = getelementptr inbounds %struct.blkcg_gq, ptr %call.i.i.i, i32 0, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %async_bio_lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @blkg_alloc.__key, i16 noundef signext 3) #14
  %async_bios = getelementptr inbounds %struct.blkcg_gq, ptr %call.i.i.i, i32 0, i32 11
  %tail.i = getelementptr inbounds %struct.blkcg_gq, ptr %call.i.i.i, i32 0, i32 11, i32 1
  %6 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %tail.i, align 8
  %7 = ptrtoint ptr %async_bios to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %async_bios, align 4
  %async_bio_work = getelementptr inbounds %struct.blkcg_gq, ptr %call.i.i.i, i32 0, i32 12
  tail call void @__init_work(ptr noundef %async_bio_work, i32 noundef 0) #14
  %8 = ptrtoint ptr %async_bio_work to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %async_bio_work, align 4
  %lockdep_map = getelementptr inbounds %struct.blkcg_gq, ptr %call.i.i.i, i32 0, i32 12, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.15, ptr noundef nonnull @blkg_alloc.__key.14, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry16 = getelementptr inbounds %struct.blkcg_gq, ptr %call.i.i.i, i32 0, i32 12, i32 1
  %9 = ptrtoint ptr %entry16 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry16, ptr %entry16, align 8
  %prev.i90 = getelementptr inbounds %struct.blkcg_gq, ptr %call.i.i.i, i32 0, i32 12, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i90 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry16, ptr %prev.i90, align 4
  %func = getelementptr inbounds %struct.blkcg_gq, ptr %call.i.i.i, i32 0, i32 12, i32 2
  %11 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @blkg_async_bio_workfn, ptr %func, align 8
  %blkcg20 = getelementptr inbounds %struct.blkcg_gq, ptr %call.i.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %blkcg20 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %blkcg, ptr %blkcg20, align 4
  %iostat = getelementptr inbounds %struct.blkcg_gq, ptr %call.i.i.i, i32 0, i32 8
  %dep_map.i = getelementptr inbounds %struct.blkcg_gq, ptr %call.i.i.i, i32 0, i32 8, i32 0, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @blkg_alloc.__key.16, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %13 = ptrtoint ptr %iostat to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %iostat, align 8
  %call2493 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call2493, i32 %14)
  %cmp94 = icmp ult i32 %call2493, %14
  br i1 %cmp94, label %if.end9.do.body26_crit_edge, label %if.end9.for.cond35.preheader_crit_edge

if.end9.for.cond35.preheader_crit_edge:           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond35.preheader

if.end9.do.body26_crit_edge:                      ; preds = %if.end9
  br label %do.body26

for.cond35.preheader:                             ; preds = %do.body26.for.cond35.preheader_crit_edge, %if.end9.for.cond35.preheader_crit_edge
  %blkcg_pols.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 34
  br label %for.body37

do.body26:                                        ; preds = %do.body26.do.body26_crit_edge, %if.end9.do.body26_crit_edge
  %call2495 = phi i32 [ %call24, %do.body26.do.body26_crit_edge ], [ %call2493, %if.end9.do.body26_crit_edge ]
  %15 = ptrtoint ptr %iostat_cpu to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iostat_cpu, align 8
  %17 = ptrtoint ptr %16 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call2495
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %add = add i32 %19, %17
  %20 = inttoptr i32 %add to ptr
  %dep_map.i91 = getelementptr inbounds %struct.seqcount, ptr %20, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i91, ptr noundef nonnull @.str.19, ptr noundef nonnull @blkg_alloc.__key.18, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %20, align 4
  %call24 = tail call i32 @cpumask_next(i32 noundef %call2495, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %22 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call24, %22
  br i1 %cmp, label %do.body26.do.body26_crit_edge, label %do.body26.for.cond35.preheader_crit_edge

do.body26.for.cond35.preheader_crit_edge:         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond35.preheader

do.body26.do.body26_crit_edge:                    ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body26

for.body37:                                       ; preds = %for.inc.for.body37_crit_edge, %for.cond35.preheader
  %i.096 = phi i32 [ 0, %for.cond35.preheader ], [ %inc, %for.inc.for.body37_crit_edge ]
  %arrayidx38 = getelementptr [6 x ptr], ptr @blkcg_policy, i32 0, i32 %i.096
  %23 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx38, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %for.body37.for.inc_crit_edge, label %blkcg_policy_enabled.exit

for.body37.for.inc_crit_edge:                     ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

blkcg_policy_enabled.exit:                        ; preds = %for.body37
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %div3.i.i = lshr i32 %26, 5
  %arrayidx.i.i = getelementptr i32, ptr %blkcg_pols.i, i32 %div3.i.i
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %26, 31
  %29 = shl nuw i32 1, %and.i.i
  %30 = and i32 %29, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool1.i.not = icmp eq i32 %30, 0
  br i1 %tobool1.i.not, label %blkcg_policy_enabled.exit.for.inc_crit_edge, label %if.end41

blkcg_policy_enabled.exit.for.inc_crit_edge:      ; preds = %blkcg_policy_enabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end41:                                         ; preds = %blkcg_policy_enabled.exit
  %pd_alloc_fn = getelementptr inbounds %struct.blkcg_policy, ptr %24, i32 0, i32 7
  %31 = ptrtoint ptr %pd_alloc_fn to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pd_alloc_fn, align 4
  %call42 = tail call ptr %32(i32 noundef %gfp_mask, ptr noundef %q, ptr noundef %blkcg) #14
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %if.end41.err_free_crit_edge, label %if.end45

if.end41.err_free_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free

if.end45:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx47 = getelementptr %struct.blkcg_gq, ptr %call.i.i.i, i32 0, i32 9, i32 %i.096
  %33 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call42, ptr %arrayidx47, align 4
  %34 = ptrtoint ptr %call42 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i.i.i, ptr %call42, align 4
  %plid = getelementptr inbounds %struct.blkg_policy_data, ptr %call42, i32 0, i32 1
  %35 = ptrtoint ptr %plid to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %i.096, ptr %plid, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end45, %blkcg_policy_enabled.exit.for.inc_crit_edge, %for.body37.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.096, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.inc.cleanup51_crit_edge, label %for.inc.for.body37_crit_edge

for.inc.for.body37_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body37

for.inc.cleanup51_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup51

err_free:                                         ; preds = %if.end41.err_free_crit_edge, %if.end4.err_free_crit_edge, %if.end.err_free_crit_edge
  tail call fastcc void @blkg_free(ptr noundef nonnull %call.i.i.i)
  br label %cleanup51

cleanup51:                                        ; preds = %err_free, %for.inc.cleanup51_crit_edge, %kzalloc_node.exit.cleanup51_crit_edge
  %retval.0 = phi ptr [ null, %err_free ], [ null, %kzalloc_node.exit.cleanup51_crit_edge ], [ %call.i.i.i, %for.inc.cleanup51_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_preload(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @blkg_free(ptr noundef %blkg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %blkg, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %arrayidx = getelementptr %struct.blkcg_gq, ptr %blkg, i32 0, i32 9, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %for.body.preheader.for.inc_crit_edge, label %if.then2

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then2:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #16
  %2 = load ptr, ptr @blkcg_policy, align 4
  %pd_free_fn = getelementptr inbounds %struct.blkcg_policy, ptr %2, i32 0, i32 11
  %3 = ptrtoint ptr %pd_free_fn to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pd_free_fn, align 4
  tail call void %4(ptr noundef nonnull %1) #14
  br label %for.inc

for.inc:                                          ; preds = %if.then2, %for.body.preheader.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.blkcg_gq, ptr %blkg, i32 0, i32 9, i32 1
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.1, align 4
  %tobool1.not.1 = icmp eq ptr %6, null
  br i1 %tobool1.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then2.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

if.then2.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  %7 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @blkcg_policy, i32 0, i32 1), align 4
  %pd_free_fn.1 = getelementptr inbounds %struct.blkcg_policy, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %pd_free_fn.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pd_free_fn.1, align 4
  tail call void %9(ptr noundef nonnull %6) #14
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then2.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.blkcg_gq, ptr %blkg, i32 0, i32 9, i32 2
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.2, align 4
  %tobool1.not.2 = icmp eq ptr %11, null
  br i1 %tobool1.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then2.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.2

if.then2.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  %12 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @blkcg_policy, i32 0, i32 2), align 4
  %pd_free_fn.2 = getelementptr inbounds %struct.blkcg_policy, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %pd_free_fn.2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pd_free_fn.2, align 4
  tail call void %14(ptr noundef nonnull %11) #14
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then2.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.blkcg_gq, ptr %blkg, i32 0, i32 9, i32 3
  %15 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.3, align 4
  %tobool1.not.3 = icmp eq ptr %16, null
  br i1 %tobool1.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then2.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.3

if.then2.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  %17 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @blkcg_policy, i32 0, i32 3), align 4
  %pd_free_fn.3 = getelementptr inbounds %struct.blkcg_policy, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %pd_free_fn.3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pd_free_fn.3, align 4
  tail call void %19(ptr noundef nonnull %16) #14
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then2.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.blkcg_gq, ptr %blkg, i32 0, i32 9, i32 4
  %20 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.4, align 4
  %tobool1.not.4 = icmp eq ptr %21, null
  br i1 %tobool1.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then2.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.4

if.then2.4:                                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #16
  %22 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @blkcg_policy, i32 0, i32 4), align 4
  %pd_free_fn.4 = getelementptr inbounds %struct.blkcg_policy, ptr %22, i32 0, i32 11
  %23 = ptrtoint ptr %pd_free_fn.4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pd_free_fn.4, align 4
  tail call void %24(ptr noundef nonnull %21) #14
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then2.4, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.blkcg_gq, ptr %blkg, i32 0, i32 9, i32 5
  %25 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.5, align 4
  %tobool1.not.5 = icmp eq ptr %26, null
  br i1 %tobool1.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then2.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.5

if.then2.5:                                       ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #16
  %27 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @blkcg_policy, i32 0, i32 5), align 4
  %pd_free_fn.5 = getelementptr inbounds %struct.blkcg_policy, ptr %27, i32 0, i32 11
  %28 = ptrtoint ptr %pd_free_fn.5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pd_free_fn.5, align 4
  tail call void %29(ptr noundef nonnull %26) #14
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then2.5, %for.inc.4.for.inc.5_crit_edge
  %iostat_cpu = getelementptr inbounds %struct.blkcg_gq, ptr %blkg, i32 0, i32 7
  %30 = ptrtoint ptr %iostat_cpu to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %iostat_cpu, align 8
  tail call void @free_percpu(ptr noundef %31) #14
  %refcnt = getelementptr inbounds %struct.blkcg_gq, ptr %blkg, i32 0, i32 5
  tail call void @percpu_ref_exit(ptr noundef %refcnt) #14
  tail call void @kfree(ptr noundef nonnull %blkg) #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.5, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @blkg_create(ptr noundef %blkcg, ptr noundef %q, ptr noundef %new_blkg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b266 = load i1, ptr @blkg_create.__already_done, align 1
  br i1 %.b266, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !172

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @blkg_create.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 241, i32 noundef 9, ptr noundef null) #14
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool39.not = icmp eq i32 %0, 0
  br i1 %tobool39.not, label %if.end29.if.end66_crit_edge, label %land.rhs40

if.end29.if.end66_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

land.rhs40:                                       ; preds = %if.end29
  %dep_map = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 14, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end60, label %land.rhs40.if.end66_crit_edge, !prof !166

land.rhs40.if.end66_crit_edge:                    ; preds = %land.rhs40
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

do.end60:                                         ; preds = %land.rhs40
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 242, i32 noundef 9, ptr noundef null) #14
  br label %if.end66

if.end66:                                         ; preds = %do.end60, %land.rhs40.if.end66_crit_edge, %if.end29.if.end66_crit_edge
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 11
  %1 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %queue_flags, align 4
  %3 = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool77.not = icmp eq i32 %3, 0
  br i1 %tobool77.not, label %if.end79, label %if.end66.err_free_blkg_crit_edge

if.end66.err_free_blkg_crit_edge:                 ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free_blkg

if.end79:                                         ; preds = %if.end66
  %flags.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %blkcg, i32 0, i32 7
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end79.if.end82_crit_edge

if.end79.if.end82_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end82

if.then.i:                                        ; preds = %if.end79
  %refcnt.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %blkcg, i32 0, i32 2
  %6 = tail call i32 @llvm.read_register.i32(metadata !156) #14
  %and.i.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !168
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i.i.i, label %if.then.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.rcu_read_lock.exit.i.i_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #14
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.then.i.rcu_read_lock.exit.i.i_crit_edge
  %call.i1.i.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool.not.i2.i.i = icmp eq i32 %call.i1.i.i, 0
  br i1 %tobool.not.i2.i.i, label %land.rhs.i.i.i, label %rcu_read_lock.exit.i.i.if.end29.i.i.i_crit_edge

rcu_read_lock.exit.i.i.if.end29.i.i.i_crit_edge:  ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29.i.i.i

land.rhs.i.i.i:                                   ; preds = %rcu_read_lock.exit.i.i
  %.b104.i.i.i = load i1, ptr @percpu_ref_tryget_live_rcu.__already_done, align 1
  br i1 %.b104.i.i.i, label %land.rhs.i.i.i.if.end29.i.i.i_crit_edge, label %if.then.i3.i.i, !prof !172

land.rhs.i.i.i.if.end29.i.i.i_crit_edge:          ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29.i.i.i

if.then.i3.i.i:                                   ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @percpu_ref_tryget_live_rcu.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 280, i32 noundef 9, ptr noundef null) #14
  br label %if.end29.i.i.i

if.end29.i.i.i:                                   ; preds = %if.then.i3.i.i, %land.rhs.i.i.i.if.end29.i.i.i_crit_edge, %rcu_read_lock.exit.i.i.if.end29.i.i.i_crit_edge
  %10 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %refcnt.i, align 4
  %and.i.i.i.i = and i32 %11, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %do.body46.i.i.i, label %if.else.i.i.i, !prof !172

do.body46.i.i.i:                                  ; preds = %if.end29.i.i.i
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !173
  %13 = tail call i32 @llvm.read_register.i32(metadata !156) #14
  %and.i105.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i105.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %18, %11
  %19 = inttoptr i32 %add.i.i.i to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %add63.i.i.i = add i32 %21, 1
  store i32 %add63.i.i.i, ptr %19, align 4
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !174
  %and.i.i.i.i.i = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool74.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool74.not.i.i.i, label %if.then83.i.i.i, label %do.body46.i.i.i.do.end86.i.i.i_crit_edge, !prof !166

do.body46.i.i.i.do.end86.i.i.i_crit_edge:         ; preds = %do.body46.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end86.i.i.i

if.then83.i.i.i:                                  ; preds = %do.body46.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %do.end86.i.i.i

do.end86.i.i.i:                                   ; preds = %if.then83.i.i.i, %do.body46.i.i.i.do.end86.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %12) #14, !srcloc !175
  br label %percpu_ref_tryget_live_rcu.exit.i.i

if.else.i.i.i:                                    ; preds = %if.end29.i.i.i
  %and.i.i.i = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool93.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool93.not.i.i.i, label %if.then94.i.i.i, label %if.else.i.i.i.percpu_ref_tryget_live_rcu.exit.i.i_crit_edge

if.else.i.i.i.percpu_ref_tryget_live_rcu.exit.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %percpu_ref_tryget_live_rcu.exit.i.i

if.then94.i.i.i:                                  ; preds = %if.else.i.i.i
  %data.i.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %blkcg, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %24, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %24, i32 1, i32 3, i32 1) #14
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 0, i32 1, ptr elementtype(i32) %24) #14, !srcloc !177
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i.i.i, label %if.then94.i.i.i.atomic_long_inc_not_zero.exit.i.i.i_crit_edge, label %do.end11.i.i.i.i.i.i.i.i

if.then94.i.i.i.atomic_long_inc_not_zero.exit.i.i.i_crit_edge: ; preds = %if.then94.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %atomic_long_inc_not_zero.exit.i.i.i

do.end11.i.i.i.i.i.i.i.i:                         ; preds = %if.then94.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !178
  br label %atomic_long_inc_not_zero.exit.i.i.i

atomic_long_inc_not_zero.exit.i.i.i:              ; preds = %do.end11.i.i.i.i.i.i.i.i, %if.then94.i.i.i.atomic_long_inc_not_zero.exit.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp ne i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br label %percpu_ref_tryget_live_rcu.exit.i.i

percpu_ref_tryget_live_rcu.exit.i.i:              ; preds = %atomic_long_inc_not_zero.exit.i.i.i, %if.else.i.i.i.percpu_ref_tryget_live_rcu.exit.i.i_crit_edge, %do.end86.i.i.i
  %ret.0.off0.i.i.i = phi i1 [ true, %do.end86.i.i.i ], [ false, %if.else.i.i.i.percpu_ref_tryget_live_rcu.exit.i.i_crit_edge ], [ %cmp.i.i.i.i.i.i.i, %atomic_long_inc_not_zero.exit.i.i.i ]
  %call.i4.i.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i4.i.i, label %percpu_ref_tryget_live_rcu.exit.i.i.css_tryget_online.exit_crit_edge, label %land.lhs.true.i7.i.i

percpu_ref_tryget_live_rcu.exit.i.i.css_tryget_online.exit_crit_edge: ; preds = %percpu_ref_tryget_live_rcu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %css_tryget_online.exit

land.lhs.true.i7.i.i:                             ; preds = %percpu_ref_tryget_live_rcu.exit.i.i
  %call1.i5.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i.i)
  %tobool.not.i6.i.i = icmp eq i32 %call1.i5.i.i, 0
  br i1 %tobool.not.i6.i.i, label %land.lhs.true.i7.i.i.css_tryget_online.exit_crit_edge, label %land.lhs.true2.i9.i.i

land.lhs.true.i7.i.i.css_tryget_online.exit_crit_edge: ; preds = %land.lhs.true.i7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %css_tryget_online.exit

land.lhs.true2.i9.i.i:                            ; preds = %land.lhs.true.i7.i.i
  %.b4.i8.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8.i.i, label %land.lhs.true2.i9.i.i.css_tryget_online.exit_crit_edge, label %if.then.i10.i.i

land.lhs.true2.i9.i.i.css_tryget_online.exit_crit_edge: ; preds = %land.lhs.true2.i9.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %css_tryget_online.exit

if.then.i10.i.i:                                  ; preds = %land.lhs.true2.i9.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #14
  br label %css_tryget_online.exit

css_tryget_online.exit:                           ; preds = %if.then.i10.i.i, %land.lhs.true2.i9.i.i.css_tryget_online.exit_crit_edge, %land.lhs.true.i7.i.i.css_tryget_online.exit_crit_edge, %percpu_ref_tryget_live_rcu.exit.i.i.css_tryget_online.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !169
  %26 = tail call i32 @llvm.read_register.i32(metadata !156) #14
  %and.i.i.i.i.i11.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i11.i.i to ptr
  %preempt_count.i.i.i.i12.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i12.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i12.i.i, align 4
  %sub.i.i.i.i.i = add i32 %29, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i12.i.i, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  br i1 %ret.0.off0.i.i.i, label %css_tryget_online.exit.if.end82_crit_edge, label %css_tryget_online.exit.err_free_blkg_crit_edge

css_tryget_online.exit.err_free_blkg_crit_edge:   ; preds = %css_tryget_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free_blkg

css_tryget_online.exit.if.end82_crit_edge:        ; preds = %css_tryget_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end82

if.end82:                                         ; preds = %css_tryget_online.exit.if.end82_crit_edge, %if.end79.if.end82_crit_edge
  %tobool83.not = icmp eq ptr %new_blkg, null
  br i1 %tobool83.not, label %if.then84, label %if.end82.if.end97_crit_edge

if.end82.if.end97_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end97

if.then84:                                        ; preds = %if.end82
  %call85 = tail call fastcc ptr @blkg_alloc(ptr noundef %blkcg, ptr noundef %q, i32 noundef 10240)
  %tobool86.not = icmp eq ptr %call85, null
  br i1 %tobool86.not, label %if.then84.err_put_css_crit_edge, label %if.then84.if.end97_crit_edge, !prof !166

if.then84.if.end97_crit_edge:                     ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end97

if.then84.err_put_css_crit_edge:                  ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_put_css

if.end97:                                         ; preds = %if.then84.if.end97_crit_edge, %if.end82.if.end97_crit_edge
  %new_blkg.addr.0 = phi ptr [ %new_blkg, %if.end82.if.end97_crit_edge ], [ %call85, %if.then84.if.end97_crit_edge ]
  %parent.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %blkcg, i32 0, i32 12
  %30 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %parent.i, align 8
  %tobool99.not = icmp eq ptr %31, null
  br i1 %tobool99.not, label %if.end97.if.end164_crit_edge, label %if.then100

if.end97.if.end164_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end164

if.then100:                                       ; preds = %if.end97
  %cmp.i = icmp eq ptr %31, @blkcg_root
  br i1 %cmp.i, label %__blkg_lookup.exit, label %if.end.i

if.end.i:                                         ; preds = %if.then100
  %blkg_hint.i = getelementptr inbounds %struct.blkcg, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %blkg_hint.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %blkg_hint.i, align 4
  %call.i270 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i270)
  %tobool.not.i271 = icmp eq i32 %call.i270, 0
  br i1 %tobool.not.i271, label %land.lhs.true.i, label %if.end.i.do.end9.i_crit_edge

if.end.i.do.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end9.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b25.i = load i1, ptr @__blkg_lookup.__warned, align 1
  br i1 %.b25.i, label %land.lhs.true4.i.do.end9.i_crit_edge, label %if.then6.i

land.lhs.true4.i.do.end9.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9.i

if.then6.i:                                       ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__blkg_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 340, ptr noundef nonnull @.str.12) #14
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.then6.i, %land.lhs.true4.i.do.end9.i_crit_edge, %land.lhs.true.i.do.end9.i_crit_edge, %if.end.i.do.end9.i_crit_edge
  %tobool11.not.i = icmp eq ptr %33, null
  br i1 %tobool11.not.i, label %do.end9.i.if.end16.i_crit_edge, label %land.lhs.true12.i

do.end9.i.if.end16.i_crit_edge:                   ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16.i

land.lhs.true12.i:                                ; preds = %do.end9.i
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  %cmp14.i = icmp eq ptr %35, %q
  br i1 %cmp14.i, label %land.lhs.true12.i.__blkg_lookup.exit.thread287_crit_edge, label %land.lhs.true12.i.if.end16.i_crit_edge

land.lhs.true12.i.if.end16.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16.i

land.lhs.true12.i.__blkg_lookup.exit.thread287_crit_edge: ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__blkg_lookup.exit.thread287

if.end16.i:                                       ; preds = %land.lhs.true12.i.if.end16.i_crit_edge, %do.end9.i.if.end16.i_crit_edge
  %blkg_tree.i.i = getelementptr inbounds %struct.blkcg, ptr %31, i32 0, i32 3
  %id.i.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 13
  %36 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %id.i.i, align 8
  %call.i.i = tail call ptr @radix_tree_lookup(ptr noundef %blkg_tree.i.i, i32 noundef %37) #14
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end16.i.__blkg_lookup.exit.thread_crit_edge, label %land.lhs.true.i.i

if.end16.i.__blkg_lookup.exit.thread_crit_edge:   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__blkg_lookup.exit.thread

land.lhs.true.i.i:                                ; preds = %if.end16.i
  %38 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call.i.i, align 8
  %cmp.i.i.not = icmp eq ptr %39, %q
  br i1 %cmp.i.i.not, label %land.lhs.true.i.i.__blkg_lookup.exit.thread287_crit_edge, label %land.lhs.true.i.i.__blkg_lookup.exit.thread_crit_edge

land.lhs.true.i.i.__blkg_lookup.exit.thread_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__blkg_lookup.exit.thread

land.lhs.true.i.i.__blkg_lookup.exit.thread287_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__blkg_lookup.exit.thread287

__blkg_lookup.exit.thread:                        ; preds = %land.lhs.true.i.i.__blkg_lookup.exit.thread_crit_edge, %if.end16.i.__blkg_lookup.exit.thread_crit_edge
  %parent284 = getelementptr inbounds %struct.blkcg_gq, ptr %new_blkg.addr.0, i32 0, i32 4
  %40 = ptrtoint ptr %parent284 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %parent284, align 8
  br label %land.rhs114

__blkg_lookup.exit.thread287:                     ; preds = %land.lhs.true.i.i.__blkg_lookup.exit.thread287_crit_edge, %land.lhs.true12.i.__blkg_lookup.exit.thread287_crit_edge
  %retval.0.i272.ph = phi ptr [ %call.i.i, %land.lhs.true.i.i.__blkg_lookup.exit.thread287_crit_edge ], [ %33, %land.lhs.true12.i.__blkg_lookup.exit.thread287_crit_edge ]
  %parent289 = getelementptr inbounds %struct.blkcg_gq, ptr %new_blkg.addr.0, i32 0, i32 4
  %41 = ptrtoint ptr %parent289 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %retval.0.i272.ph, ptr %parent289, align 8
  br label %if.end162

__blkg_lookup.exit:                               ; preds = %if.then100
  %root_blkg.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 35
  %42 = ptrtoint ptr %root_blkg.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %root_blkg.i, align 8
  %parent = getelementptr inbounds %struct.blkcg_gq, ptr %new_blkg.addr.0, i32 0, i32 4
  %44 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %parent, align 8
  %tobool105.not = icmp eq ptr %43, null
  br i1 %tobool105.not, label %__blkg_lookup.exit.land.rhs114_crit_edge, label %__blkg_lookup.exit.if.end162_crit_edge

__blkg_lookup.exit.if.end162_crit_edge:           ; preds = %__blkg_lookup.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end162

__blkg_lookup.exit.land.rhs114_crit_edge:         ; preds = %__blkg_lookup.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs114

land.rhs114:                                      ; preds = %__blkg_lookup.exit.land.rhs114_crit_edge, %__blkg_lookup.exit.thread
  %.b264265 = load i1, ptr @blkg_create.__already_done.20, align 1
  br i1 %.b264265, label %land.rhs114.err_put_css_crit_edge, label %if.then125, !prof !172

land.rhs114.err_put_css_crit_edge:                ; preds = %land.rhs114
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_put_css

if.then125:                                       ; preds = %land.rhs114
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @blkg_create.__already_done.20, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 269, i32 noundef 9, ptr noundef null) #14
  br label %err_put_css

if.end162:                                        ; preds = %__blkg_lookup.exit.if.end162_crit_edge, %__blkg_lookup.exit.thread287
  %retval.0.i272291 = phi ptr [ %retval.0.i272.ph, %__blkg_lookup.exit.thread287 ], [ %43, %__blkg_lookup.exit.if.end162_crit_edge ]
  tail call fastcc void @blkg_get(ptr noundef nonnull %retval.0.i272291)
  br label %if.end164

if.end164:                                        ; preds = %if.end162, %if.end97.if.end164_crit_edge
  %arrayidx166 = getelementptr %struct.blkcg_gq, ptr %new_blkg.addr.0, i32 0, i32 9, i32 0
  %45 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx166, align 4
  %tobool167.not = icmp eq ptr %46, null
  br i1 %tobool167.not, label %if.end164.if.end173_crit_edge, label %land.lhs.true

if.end164.if.end173_crit_edge:                    ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end173

land.lhs.true:                                    ; preds = %if.end164
  %47 = load ptr, ptr @blkcg_policy, align 4
  %pd_init_fn = getelementptr inbounds %struct.blkcg_policy, ptr %47, i32 0, i32 8
  %48 = ptrtoint ptr %pd_init_fn to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pd_init_fn, align 4
  %tobool168.not = icmp eq ptr %49, null
  br i1 %tobool168.not, label %land.lhs.true.if.end173_crit_edge, label %if.then169

land.lhs.true.if.end173_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end173

if.then169:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %49(ptr noundef nonnull %46) #14
  br label %if.end173

if.end173:                                        ; preds = %if.then169, %land.lhs.true.if.end173_crit_edge, %if.end164.if.end173_crit_edge
  %arrayidx166.1 = getelementptr %struct.blkcg_gq, ptr %new_blkg.addr.0, i32 0, i32 9, i32 1
  %50 = ptrtoint ptr %arrayidx166.1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx166.1, align 4
  %tobool167.not.1 = icmp eq ptr %51, null
  br i1 %tobool167.not.1, label %if.end173.if.end173.1_crit_edge, label %land.lhs.true.1

if.end173.if.end173.1_crit_edge:                  ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end173.1

land.lhs.true.1:                                  ; preds = %if.end173
  %52 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @blkcg_policy, i32 0, i32 1), align 4
  %pd_init_fn.1 = getelementptr inbounds %struct.blkcg_policy, ptr %52, i32 0, i32 8
  %53 = ptrtoint ptr %pd_init_fn.1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pd_init_fn.1, align 4
  %tobool168.not.1 = icmp eq ptr %54, null
  br i1 %tobool168.not.1, label %land.lhs.true.1.if.end173.1_crit_edge, label %if.then169.1

land.lhs.true.1.if.end173.1_crit_edge:            ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end173.1

if.then169.1:                                     ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %54(ptr noundef nonnull %51) #14
  br label %if.end173.1

if.end173.1:                                      ; preds = %if.then169.1, %land.lhs.true.1.if.end173.1_crit_edge, %if.end173.if.end173.1_crit_edge
  %arrayidx166.2 = getelementptr %struct.blkcg_gq, ptr %new_blkg.addr.0, i32 0, i32 9, i32 2
  %55 = ptrtoint ptr %arrayidx166.2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx166.2, align 4
  %tobool167.not.2 = icmp eq ptr %56, null
  br i1 %tobool167.not.2, label %if.end173.1.if.end173.2_crit_edge, label %land.lhs.true.2

if.end173.1.if.end173.2_crit_edge:                ; preds = %if.end173.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end173.2

land.lhs.true.2:                                  ; preds = %if.end173.1
  %57 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @blkcg_policy, i32 0, i32 2), align 4
  %pd_init_fn.2 = getelementptr inbounds %struct.blkcg_policy, ptr %57, i32 0, i32 8
  %58 = ptrtoint ptr %pd_init_fn.2 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pd_init_fn.2, align 4
  %tobool168.not.2 = icmp eq ptr %59, null
  br i1 %tobool168.not.2, label %land.lhs.true.2.if.end173.2_crit_edge, label %if.then169.2

land.lhs.true.2.if.end173.2_crit_edge:            ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end173.2

if.then169.2:                                     ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %59(ptr noundef nonnull %56) #14
  br label %if.end173.2

if.end173.2:                                      ; preds = %if.then169.2, %land.lhs.true.2.if.end173.2_crit_edge, %if.end173.1.if.end173.2_crit_edge
  %arrayidx166.3 = getelementptr %struct.blkcg_gq, ptr %new_blkg.addr.0, i32 0, i32 9, i32 3
  %60 = ptrtoint ptr %arrayidx166.3 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx166.3, align 4
  %tobool167.not.3 = icmp eq ptr %61, null
  br i1 %tobool167.not.3, label %if.end173.2.if.end173.3_crit_edge, label %land.lhs.true.3

if.end173.2.if.end173.3_crit_edge:                ; preds = %if.end173.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end173.3

land.lhs.true.3:                                  ; preds = %if.end173.2
  %62 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @blkcg_policy, i32 0, i32 3), align 4
  %pd_init_fn.3 = getelementptr inbounds %struct.blkcg_policy, ptr %62, i32 0, i32 8
  %63 = ptrtoint ptr %pd_init_fn.3 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pd_init_fn.3, align 4
  %tobool168.not.3 = icmp eq ptr %64, null
  br i1 %tobool168.not.3, label %land.lhs.true.3.if.end173.3_crit_edge, label %if.then169.3

land.lhs.true.3.if.end173.3_crit_edge:            ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end173.3

if.then169.3:                                     ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %64(ptr noundef nonnull %61) #14
  br label %if.end173.3

if.end173.3:                                      ; preds = %if.then169.3, %land.lhs.true.3.if.end173.3_crit_edge, %if.end173.2.if.end173.3_crit_edge
  %arrayidx166.4 = getelementptr %struct.blkcg_gq, ptr %new_blkg.addr.0, i32 0, i32 9, i32 4
  %65 = ptrtoint ptr %arrayidx166.4 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx166.4, align 4
  %tobool167.not.4 = icmp eq ptr %66, null
  br i1 %tobool167.not.4, label %if.end173.3.if.end173.4_crit_edge, label %land.lhs.true.4

if.end173.3.if.end173.4_crit_edge:                ; preds = %if.end173.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end173.4

land.lhs.true.4:                                  ; preds = %if.end173.3
  %67 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @blkcg_policy, i32 0, i32 4), align 4
  %pd_init_fn.4 = getelementptr inbounds %struct.blkcg_policy, ptr %67, i32 0, i32 8
  %68 = ptrtoint ptr %pd_init_fn.4 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pd_init_fn.4, align 4
  %tobool168.not.4 = icmp eq ptr %69, null
  br i1 %tobool168.not.4, label %land.lhs.true.4.if.end173.4_crit_edge, label %if.then169.4

land.lhs.true.4.if.end173.4_crit_edge:            ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end173.4

if.then169.4:                                     ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %69(ptr noundef nonnull %66) #14
  br label %if.end173.4

if.end173.4:                                      ; preds = %if.then169.4, %land.lhs.true.4.if.end173.4_crit_edge, %if.end173.3.if.end173.4_crit_edge
  %arrayidx166.5 = getelementptr %struct.blkcg_gq, ptr %new_blkg.addr.0, i32 0, i32 9, i32 5
  %70 = ptrtoint ptr %arrayidx166.5 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx166.5, align 4
  %tobool167.not.5 = icmp eq ptr %71, null
  br i1 %tobool167.not.5, label %if.end173.4.if.end173.5_crit_edge, label %land.lhs.true.5

if.end173.4.if.end173.5_crit_edge:                ; preds = %if.end173.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end173.5

land.lhs.true.5:                                  ; preds = %if.end173.4
  %72 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @blkcg_policy, i32 0, i32 5), align 4
  %pd_init_fn.5 = getelementptr inbounds %struct.blkcg_policy, ptr %72, i32 0, i32 8
  %73 = ptrtoint ptr %pd_init_fn.5 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pd_init_fn.5, align 4
  %tobool168.not.5 = icmp eq ptr %74, null
  br i1 %tobool168.not.5, label %land.lhs.true.5.if.end173.5_crit_edge, label %if.then169.5

land.lhs.true.5.if.end173.5_crit_edge:            ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end173.5

if.then169.5:                                     ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %74(ptr noundef nonnull %71) #14
  br label %if.end173.5

if.end173.5:                                      ; preds = %if.then169.5, %land.lhs.true.5.if.end173.5_crit_edge, %if.end173.4.if.end173.5_crit_edge
  %lock = getelementptr inbounds %struct.blkcg, ptr %blkcg, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #14
  %blkg_tree = getelementptr inbounds %struct.blkcg, ptr %blkcg, i32 0, i32 3
  %id = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 13
  %75 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %id, align 8
  %call174 = tail call i32 @radix_tree_insert(ptr noundef %blkg_tree, i32 noundef %76, ptr noundef nonnull %new_blkg.addr.0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call174)
  %tobool175.not = icmp eq i32 %call174, 0
  br i1 %tobool175.not, label %if.then184, label %if.end208, !prof !172

if.then184:                                       ; preds = %if.end173.5
  %blkcg_node = getelementptr inbounds %struct.blkcg_gq, ptr %new_blkg.addr.0, i32 0, i32 2
  %blkg_list = getelementptr inbounds %struct.blkcg, ptr %blkcg, i32 0, i32 5
  %77 = ptrtoint ptr %blkg_list to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %blkg_list, align 4
  %79 = ptrtoint ptr %blkcg_node to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %78, ptr %blkcg_node, align 4
  %pprev.i = getelementptr inbounds %struct.blkcg_gq, ptr %new_blkg.addr.0, i32 0, i32 2, i32 1
  %80 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %blkg_list, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !179
  %81 = ptrtoint ptr %blkg_list to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %blkcg_node, ptr %blkg_list, align 4
  %tobool.not.i273 = icmp eq ptr %78, null
  br i1 %tobool.not.i273, label %if.then184.hlist_add_head_rcu.exit_crit_edge, label %do.body49.i

if.then184.hlist_add_head_rcu.exit_crit_edge:     ; preds = %if.then184
  call void @__sanitizer_cov_trace_pc() #16
  br label %hlist_add_head_rcu.exit

do.body49.i:                                      ; preds = %if.then184
  call void @__sanitizer_cov_trace_pc() #16
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %78, i32 0, i32 1
  %82 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %blkcg_node, ptr %pprev51.i, align 4
  br label %hlist_add_head_rcu.exit

hlist_add_head_rcu.exit:                          ; preds = %do.body49.i, %if.then184.hlist_add_head_rcu.exit_crit_edge
  %q_node = getelementptr inbounds %struct.blkcg_gq, ptr %new_blkg.addr.0, i32 0, i32 1
  %blkg_list185 = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 36
  %83 = ptrtoint ptr %blkg_list185 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %blkg_list185, align 4
  %call.i.i274 = tail call zeroext i1 @__list_add_valid(ptr noundef %q_node, ptr noundef %blkg_list185, ptr noundef %84) #14
  br i1 %call.i.i274, label %if.end.i.i, label %hlist_add_head_rcu.exit.list_add.exit_crit_edge

hlist_add_head_rcu.exit.list_add.exit_crit_edge:  ; preds = %hlist_add_head_rcu.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit

if.end.i.i:                                       ; preds = %hlist_add_head_rcu.exit
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %q_node, ptr %prev1.i.i, align 4
  %86 = ptrtoint ptr %q_node to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %84, ptr %q_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.blkcg_gq, ptr %new_blkg.addr.0, i32 0, i32 1, i32 1
  %87 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %blkg_list185, ptr %prev3.i.i, align 4
  %88 = ptrtoint ptr %blkg_list185 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %q_node, ptr %blkg_list185, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %hlist_add_head_rcu.exit.list_add.exit_crit_edge
  %89 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx166, align 4
  %tobool193.not = icmp eq ptr %90, null
  br i1 %tobool193.not, label %list_add.exit.if.end200_crit_edge, label %land.lhs.true194

list_add.exit.if.end200_crit_edge:                ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end200

land.lhs.true194:                                 ; preds = %list_add.exit
  %91 = load ptr, ptr @blkcg_policy, align 4
  %pd_online_fn = getelementptr inbounds %struct.blkcg_policy, ptr %91, i32 0, i32 9
  %92 = ptrtoint ptr %pd_online_fn to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pd_online_fn, align 4
  %tobool195.not = icmp eq ptr %93, null
  br i1 %tobool195.not, label %land.lhs.true194.if.end200_crit_edge, label %if.then196

land.lhs.true194.if.end200_crit_edge:             ; preds = %land.lhs.true194
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end200

if.then196:                                       ; preds = %land.lhs.true194
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %93(ptr noundef nonnull %90) #14
  br label %if.end200

if.end200:                                        ; preds = %if.then196, %land.lhs.true194.if.end200_crit_edge, %list_add.exit.if.end200_crit_edge
  %94 = ptrtoint ptr %arrayidx166.1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx166.1, align 4
  %tobool193.not.1 = icmp eq ptr %95, null
  br i1 %tobool193.not.1, label %if.end200.if.end200.1_crit_edge, label %land.lhs.true194.1

if.end200.if.end200.1_crit_edge:                  ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end200.1

land.lhs.true194.1:                               ; preds = %if.end200
  %96 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @blkcg_policy, i32 0, i32 1), align 4
  %pd_online_fn.1 = getelementptr inbounds %struct.blkcg_policy, ptr %96, i32 0, i32 9
  %97 = ptrtoint ptr %pd_online_fn.1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pd_online_fn.1, align 4
  %tobool195.not.1 = icmp eq ptr %98, null
  br i1 %tobool195.not.1, label %land.lhs.true194.1.if.end200.1_crit_edge, label %if.then196.1

land.lhs.true194.1.if.end200.1_crit_edge:         ; preds = %land.lhs.true194.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end200.1

if.then196.1:                                     ; preds = %land.lhs.true194.1
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %98(ptr noundef nonnull %95) #14
  br label %if.end200.1

if.end200.1:                                      ; preds = %if.then196.1, %land.lhs.true194.1.if.end200.1_crit_edge, %if.end200.if.end200.1_crit_edge
  %99 = ptrtoint ptr %arrayidx166.2 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx166.2, align 4
  %tobool193.not.2 = icmp eq ptr %100, null
  br i1 %tobool193.not.2, label %if.end200.1.if.end200.2_crit_edge, label %land.lhs.true194.2

if.end200.1.if.end200.2_crit_edge:                ; preds = %if.end200.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end200.2

land.lhs.true194.2:                               ; preds = %if.end200.1
  %101 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @blkcg_policy, i32 0, i32 2), align 4
  %pd_online_fn.2 = getelementptr inbounds %struct.blkcg_policy, ptr %101, i32 0, i32 9
  %102 = ptrtoint ptr %pd_online_fn.2 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pd_online_fn.2, align 4
  %tobool195.not.2 = icmp eq ptr %103, null
  br i1 %tobool195.not.2, label %land.lhs.true194.2.if.end200.2_crit_edge, label %if.then196.2

land.lhs.true194.2.if.end200.2_crit_edge:         ; preds = %land.lhs.true194.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end200.2

if.then196.2:                                     ; preds = %land.lhs.true194.2
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %103(ptr noundef nonnull %100) #14
  br label %if.end200.2

if.end200.2:                                      ; preds = %if.then196.2, %land.lhs.true194.2.if.end200.2_crit_edge, %if.end200.1.if.end200.2_crit_edge
  %104 = ptrtoint ptr %arrayidx166.3 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx166.3, align 4
  %tobool193.not.3 = icmp eq ptr %105, null
  br i1 %tobool193.not.3, label %if.end200.2.if.end200.3_crit_edge, label %land.lhs.true194.3

if.end200.2.if.end200.3_crit_edge:                ; preds = %if.end200.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end200.3

land.lhs.true194.3:                               ; preds = %if.end200.2
  %106 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @blkcg_policy, i32 0, i32 3), align 4
  %pd_online_fn.3 = getelementptr inbounds %struct.blkcg_policy, ptr %106, i32 0, i32 9
  %107 = ptrtoint ptr %pd_online_fn.3 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %pd_online_fn.3, align 4
  %tobool195.not.3 = icmp eq ptr %108, null
  br i1 %tobool195.not.3, label %land.lhs.true194.3.if.end200.3_crit_edge, label %if.then196.3

land.lhs.true194.3.if.end200.3_crit_edge:         ; preds = %land.lhs.true194.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end200.3

if.then196.3:                                     ; preds = %land.lhs.true194.3
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %108(ptr noundef nonnull %105) #14
  br label %if.end200.3

if.end200.3:                                      ; preds = %if.then196.3, %land.lhs.true194.3.if.end200.3_crit_edge, %if.end200.2.if.end200.3_crit_edge
  %109 = ptrtoint ptr %arrayidx166.4 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx166.4, align 4
  %tobool193.not.4 = icmp eq ptr %110, null
  br i1 %tobool193.not.4, label %if.end200.3.if.end200.4_crit_edge, label %land.lhs.true194.4

if.end200.3.if.end200.4_crit_edge:                ; preds = %if.end200.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end200.4

land.lhs.true194.4:                               ; preds = %if.end200.3
  %111 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @blkcg_policy, i32 0, i32 4), align 4
  %pd_online_fn.4 = getelementptr inbounds %struct.blkcg_policy, ptr %111, i32 0, i32 9
  %112 = ptrtoint ptr %pd_online_fn.4 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pd_online_fn.4, align 4
  %tobool195.not.4 = icmp eq ptr %113, null
  br i1 %tobool195.not.4, label %land.lhs.true194.4.if.end200.4_crit_edge, label %if.then196.4

land.lhs.true194.4.if.end200.4_crit_edge:         ; preds = %land.lhs.true194.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end200.4

if.then196.4:                                     ; preds = %land.lhs.true194.4
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %113(ptr noundef nonnull %110) #14
  br label %if.end200.4

if.end200.4:                                      ; preds = %if.then196.4, %land.lhs.true194.4.if.end200.4_crit_edge, %if.end200.3.if.end200.4_crit_edge
  %114 = ptrtoint ptr %arrayidx166.5 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx166.5, align 4
  %tobool193.not.5 = icmp eq ptr %115, null
  br i1 %tobool193.not.5, label %if.end200.4.if.end200.5_crit_edge, label %land.lhs.true194.5

if.end200.4.if.end200.5_crit_edge:                ; preds = %if.end200.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end200.5

land.lhs.true194.5:                               ; preds = %if.end200.4
  %116 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @blkcg_policy, i32 0, i32 5), align 4
  %pd_online_fn.5 = getelementptr inbounds %struct.blkcg_policy, ptr %116, i32 0, i32 9
  %117 = ptrtoint ptr %pd_online_fn.5 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %pd_online_fn.5, align 4
  %tobool195.not.5 = icmp eq ptr %118, null
  br i1 %tobool195.not.5, label %land.lhs.true194.5.if.end200.5_crit_edge, label %if.then196.5

land.lhs.true194.5.if.end200.5_crit_edge:         ; preds = %land.lhs.true194.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end200.5

if.then196.5:                                     ; preds = %land.lhs.true194.5
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %118(ptr noundef nonnull %115) #14
  br label %if.end200.5

if.end200.5:                                      ; preds = %if.then196.5, %land.lhs.true194.5.if.end200.5_crit_edge, %if.end200.4.if.end200.5_crit_edge
  %online = getelementptr inbounds %struct.blkcg_gq, ptr %new_blkg.addr.0, i32 0, i32 6
  %119 = ptrtoint ptr %online to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 1, ptr %online, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #14
  br label %cleanup

if.end208:                                        ; preds = %if.end173.5
  call void @__sanitizer_cov_trace_pc() #16
  %online.c = getelementptr inbounds %struct.blkcg_gq, ptr %new_blkg.addr.0, i32 0, i32 6
  %120 = ptrtoint ptr %online.c to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 1, ptr %online.c, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #14
  %refcnt.i275 = getelementptr inbounds %struct.blkcg_gq, ptr %new_blkg.addr.0, i32 0, i32 5
  tail call fastcc void @percpu_ref_put(ptr noundef %refcnt.i275) #14
  %121 = inttoptr i32 %call174 to ptr
  br label %cleanup

err_put_css:                                      ; preds = %if.then125, %land.rhs114.err_put_css_crit_edge, %if.then84.err_put_css_crit_edge
  %ret.0 = phi i32 [ -12, %if.then84.err_put_css_crit_edge ], [ -19, %if.then125 ], [ -19, %land.rhs114.err_put_css_crit_edge ]
  %new_blkg.addr.1 = phi ptr [ null, %if.then84.err_put_css_crit_edge ], [ %new_blkg.addr.0, %if.then125 ], [ %new_blkg.addr.0, %land.rhs114.err_put_css_crit_edge ]
  %122 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %flags.i, align 4
  %and.i277 = and i32 %123, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i277)
  %tobool.not.i278 = icmp eq i32 %and.i277, 0
  br i1 %tobool.not.i278, label %if.then.i280, label %err_put_css.err_free_blkg_crit_edge

err_put_css.err_free_blkg_crit_edge:              ; preds = %err_put_css
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free_blkg

if.then.i280:                                     ; preds = %err_put_css
  call void @__sanitizer_cov_trace_pc() #16
  %refcnt.i279 = getelementptr inbounds %struct.cgroup_subsys_state, ptr %blkcg, i32 0, i32 2
  tail call fastcc void @percpu_ref_put(ptr noundef %refcnt.i279) #14
  br label %err_free_blkg

err_free_blkg:                                    ; preds = %if.then.i280, %err_put_css.err_free_blkg_crit_edge, %css_tryget_online.exit.err_free_blkg_crit_edge, %if.end66.err_free_blkg_crit_edge
  %ret.1 = phi i32 [ -19, %if.end66.err_free_blkg_crit_edge ], [ -19, %css_tryget_online.exit.err_free_blkg_crit_edge ], [ %ret.0, %err_put_css.err_free_blkg_crit_edge ], [ %ret.0, %if.then.i280 ]
  %new_blkg.addr.2 = phi ptr [ %new_blkg, %if.end66.err_free_blkg_crit_edge ], [ %new_blkg, %css_tryget_online.exit.err_free_blkg_crit_edge ], [ %new_blkg.addr.1, %err_put_css.err_free_blkg_crit_edge ], [ %new_blkg.addr.1, %if.then.i280 ]
  tail call fastcc void @blkg_free(ptr noundef %new_blkg.addr.2)
  %124 = inttoptr i32 %ret.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_free_blkg, %if.end208, %if.end200.5
  %retval.0 = phi ptr [ %124, %err_free_blkg ], [ %121, %if.end208 ], [ %new_blkg.addr.0, %if.end200.5 ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @radix_tree_preload_end() unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = tail call i32 @llvm.read_register.i32(metadata !156) #14
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
  %add = add i32 %5, ptrtoint (ptr @radix_tree_preloads to i32)
  %6 = inttoptr i32 %add to ptr
  tail call fastcc void @local_lock_release(ptr noundef %6)
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !171
  %7 = tail call i32 @llvm.read_register.i32(metadata !156) #14
  %and.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i, align 4
  %sub.i = add i32 %10, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blkg_conf_finish(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bd_queue.i = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd_queue.i, align 4
  %queue_lock = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 14
  tail call void @_raw_spin_unlock_irq(ptr noundef %queue_lock) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_unlock.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_unlock.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, %entry.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !169
  %4 = tail call i32 @llvm.read_register.i32(metadata !156) #14
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %7, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx, align 4
  tail call void @blkdev_put_no_open(ptr noundef %9) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blkcg_destroy_blkgs(ptr noundef %blkcg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 1034) #14
  %lock = getelementptr inbounds %struct.blkcg, ptr %blkcg, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #14
  %blkg_list = getelementptr inbounds %struct.blkcg, ptr %blkcg, i32 0, i32 5
  %0 = ptrtoint ptr %blkg_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %blkg_list, align 4
  %tobool.not.i.not23 = icmp eq ptr %1, null
  br i1 %tobool.not.i.not23, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %11, %cleanup.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %2, i32 -12
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 8
  %5 = tail call i32 @llvm.read_register.i32(metadata !156) #14
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %6, align 16384
  %9 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.not = icmp eq i32 %9, 0
  br i1 %tobool.i.not, label %lor.lhs.false, label %while.body.if.then_crit_edge

while.body.if.then_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

lor.lhs.false:                                    ; preds = %while.body
  %queue_lock = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 14
  %call.i = tail call i32 @_raw_spin_trylock(ptr noundef %queue_lock) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp eq i32 %call.i, 0
  br i1 %tobool7.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %while.body.if.then_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #14
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 1050, i32 noundef 0) #14
  %call.i22 = tail call i32 @__cond_resched() #14
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @blkg_destroy(ptr noundef %add.ptr)
  tail call void @_raw_spin_unlock(ptr noundef %queue_lock) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %10 = ptrtoint ptr %blkg_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %blkg_list, align 4
  %tobool.not.i.not = icmp eq ptr %11, null
  br i1 %tobool.not.i.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @blkg_destroy(ptr noundef %blkg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %blkcg1 = getelementptr inbounds %struct.blkcg_gq, ptr %blkg, i32 0, i32 3
  %0 = ptrtoint ptr %blkcg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %blkcg1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end56_crit_edge, label %land.rhs

entry.if.end56_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end56

land.rhs:                                         ; preds = %entry
  %3 = ptrtoint ptr %blkg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %blkg, align 8
  %dep_map = getelementptr inbounds %struct.request_queue, ptr %4, i32 0, i32 14, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !166

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 385, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %.pr = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool27.not = icmp eq i32 %.pr, 0
  br i1 %tobool27.not, label %if.end.if.end56_crit_edge, label %land.rhs28

if.end.if.end56_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end56

land.rhs28:                                       ; preds = %if.end
  %dep_map29 = getelementptr inbounds %struct.blkcg, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 4
  %call.i265 = tail call i32 @lock_is_held_type(ptr noundef %dep_map29, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i265)
  %cmp31.not = icmp eq i32 %call.i265, 0
  br i1 %cmp31.not, label %do.end50, label %land.rhs28.if.end56_crit_edge, !prof !166

land.rhs28.if.end56_crit_edge:                    ; preds = %land.rhs28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end56

do.end50:                                         ; preds = %land.rhs28
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 386, i32 noundef 9, ptr noundef null) #14
  br label %if.end56

if.end56:                                         ; preds = %do.end50, %land.rhs28.if.end56_crit_edge, %if.end.if.end56_crit_edge, %entry.if.end56_crit_edge
  %q_node = getelementptr inbounds %struct.blkcg_gq, ptr %blkg, i32 0, i32 1
  %5 = ptrtoint ptr %q_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %q_node, align 4
  %cmp.i.not = icmp eq ptr %6, %q_node
  br i1 %cmp.i.not, label %land.rhs73, label %if.end56.if.end111_crit_edge

if.end56.if.end111_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end111

land.rhs73:                                       ; preds = %if.end56
  %.b264 = load i1, ptr @blkg_destroy.__already_done, align 1
  br i1 %.b264, label %land.rhs73.if.end111_crit_edge, label %if.then84, !prof !172

land.rhs73.if.end111_crit_edge:                   ; preds = %land.rhs73
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end111

if.then84:                                        ; preds = %land.rhs73
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @blkg_destroy.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 389, i32 noundef 9, ptr noundef null) #14
  br label %if.end111

if.end111:                                        ; preds = %if.then84, %land.rhs73.if.end111_crit_edge, %if.end56.if.end111_crit_edge
  %blkcg_node = getelementptr inbounds %struct.blkcg_gq, ptr %blkg, i32 0, i32 2
  %pprev.i = getelementptr inbounds %struct.blkcg_gq, ptr %blkg, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %pprev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pprev.i, align 4
  %tobool.not.i.not = icmp eq ptr %8, null
  br i1 %tobool.not.i.not, label %land.rhs128, label %if.end111.if.end166_crit_edge

if.end111.if.end166_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end166

land.rhs128:                                      ; preds = %if.end111
  %.b262263 = load i1, ptr @blkg_destroy.__already_done.25, align 1
  br i1 %.b262263, label %land.rhs128.if.end166_crit_edge, label %if.then139, !prof !172

land.rhs128.if.end166_crit_edge:                  ; preds = %land.rhs128
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end166

if.then139:                                       ; preds = %land.rhs128
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @blkg_destroy.__already_done.25, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 390, i32 noundef 9, ptr noundef null) #14
  br label %if.end166

if.end166:                                        ; preds = %if.then139, %land.rhs128.if.end166_crit_edge, %if.end111.if.end166_crit_edge
  %arrayidx175 = getelementptr %struct.blkcg_gq, ptr %blkg, i32 0, i32 9, i32 0
  %9 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx175, align 4
  %tobool176.not = icmp eq ptr %10, null
  br i1 %tobool176.not, label %if.end166.if.end182_crit_edge, label %land.lhs.true

if.end166.if.end182_crit_edge:                    ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end182

land.lhs.true:                                    ; preds = %if.end166
  %11 = load ptr, ptr @blkcg_policy, align 4
  %pd_offline_fn = getelementptr inbounds %struct.blkcg_policy, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %pd_offline_fn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pd_offline_fn, align 4
  %tobool177.not = icmp eq ptr %13, null
  br i1 %tobool177.not, label %land.lhs.true.if.end182_crit_edge, label %if.then178

land.lhs.true.if.end182_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end182

if.then178:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %13(ptr noundef nonnull %10) #14
  br label %if.end182

if.end182:                                        ; preds = %if.then178, %land.lhs.true.if.end182_crit_edge, %if.end166.if.end182_crit_edge
  %arrayidx175.1 = getelementptr %struct.blkcg_gq, ptr %blkg, i32 0, i32 9, i32 1
  %14 = ptrtoint ptr %arrayidx175.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx175.1, align 4
  %tobool176.not.1 = icmp eq ptr %15, null
  br i1 %tobool176.not.1, label %if.end182.if.end182.1_crit_edge, label %land.lhs.true.1

if.end182.if.end182.1_crit_edge:                  ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end182.1

land.lhs.true.1:                                  ; preds = %if.end182
  %16 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @blkcg_policy, i32 0, i32 1), align 4
  %pd_offline_fn.1 = getelementptr inbounds %struct.blkcg_policy, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %pd_offline_fn.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pd_offline_fn.1, align 4
  %tobool177.not.1 = icmp eq ptr %18, null
  br i1 %tobool177.not.1, label %land.lhs.true.1.if.end182.1_crit_edge, label %if.then178.1

land.lhs.true.1.if.end182.1_crit_edge:            ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end182.1

if.then178.1:                                     ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %18(ptr noundef nonnull %15) #14
  br label %if.end182.1

if.end182.1:                                      ; preds = %if.then178.1, %land.lhs.true.1.if.end182.1_crit_edge, %if.end182.if.end182.1_crit_edge
  %arrayidx175.2 = getelementptr %struct.blkcg_gq, ptr %blkg, i32 0, i32 9, i32 2
  %19 = ptrtoint ptr %arrayidx175.2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx175.2, align 4
  %tobool176.not.2 = icmp eq ptr %20, null
  br i1 %tobool176.not.2, label %if.end182.1.if.end182.2_crit_edge, label %land.lhs.true.2

if.end182.1.if.end182.2_crit_edge:                ; preds = %if.end182.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end182.2

land.lhs.true.2:                                  ; preds = %if.end182.1
  %21 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @blkcg_policy, i32 0, i32 2), align 4
  %pd_offline_fn.2 = getelementptr inbounds %struct.blkcg_policy, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %pd_offline_fn.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pd_offline_fn.2, align 4
  %tobool177.not.2 = icmp eq ptr %23, null
  br i1 %tobool177.not.2, label %land.lhs.true.2.if.end182.2_crit_edge, label %if.then178.2

land.lhs.true.2.if.end182.2_crit_edge:            ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end182.2

if.then178.2:                                     ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %23(ptr noundef nonnull %20) #14
  br label %if.end182.2

if.end182.2:                                      ; preds = %if.then178.2, %land.lhs.true.2.if.end182.2_crit_edge, %if.end182.1.if.end182.2_crit_edge
  %arrayidx175.3 = getelementptr %struct.blkcg_gq, ptr %blkg, i32 0, i32 9, i32 3
  %24 = ptrtoint ptr %arrayidx175.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx175.3, align 4
  %tobool176.not.3 = icmp eq ptr %25, null
  br i1 %tobool176.not.3, label %if.end182.2.if.end182.3_crit_edge, label %land.lhs.true.3

if.end182.2.if.end182.3_crit_edge:                ; preds = %if.end182.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end182.3

land.lhs.true.3:                                  ; preds = %if.end182.2
  %26 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @blkcg_policy, i32 0, i32 3), align 4
  %pd_offline_fn.3 = getelementptr inbounds %struct.blkcg_policy, ptr %26, i32 0, i32 10
  %27 = ptrtoint ptr %pd_offline_fn.3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pd_offline_fn.3, align 4
  %tobool177.not.3 = icmp eq ptr %28, null
  br i1 %tobool177.not.3, label %land.lhs.true.3.if.end182.3_crit_edge, label %if.then178.3

land.lhs.true.3.if.end182.3_crit_edge:            ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end182.3

if.then178.3:                                     ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %28(ptr noundef nonnull %25) #14
  br label %if.end182.3

if.end182.3:                                      ; preds = %if.then178.3, %land.lhs.true.3.if.end182.3_crit_edge, %if.end182.2.if.end182.3_crit_edge
  %arrayidx175.4 = getelementptr %struct.blkcg_gq, ptr %blkg, i32 0, i32 9, i32 4
  %29 = ptrtoint ptr %arrayidx175.4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx175.4, align 4
  %tobool176.not.4 = icmp eq ptr %30, null
  br i1 %tobool176.not.4, label %if.end182.3.if.end182.4_crit_edge, label %land.lhs.true.4

if.end182.3.if.end182.4_crit_edge:                ; preds = %if.end182.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end182.4

land.lhs.true.4:                                  ; preds = %if.end182.3
  %31 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @blkcg_policy, i32 0, i32 4), align 4
  %pd_offline_fn.4 = getelementptr inbounds %struct.blkcg_policy, ptr %31, i32 0, i32 10
  %32 = ptrtoint ptr %pd_offline_fn.4 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pd_offline_fn.4, align 4
  %tobool177.not.4 = icmp eq ptr %33, null
  br i1 %tobool177.not.4, label %land.lhs.true.4.if.end182.4_crit_edge, label %if.then178.4

land.lhs.true.4.if.end182.4_crit_edge:            ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end182.4

if.then178.4:                                     ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %33(ptr noundef nonnull %30) #14
  br label %if.end182.4

if.end182.4:                                      ; preds = %if.then178.4, %land.lhs.true.4.if.end182.4_crit_edge, %if.end182.3.if.end182.4_crit_edge
  %arrayidx175.5 = getelementptr %struct.blkcg_gq, ptr %blkg, i32 0, i32 9, i32 5
  %34 = ptrtoint ptr %arrayidx175.5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx175.5, align 4
  %tobool176.not.5 = icmp eq ptr %35, null
  br i1 %tobool176.not.5, label %if.end182.4.if.end182.5_crit_edge, label %land.lhs.true.5

if.end182.4.if.end182.5_crit_edge:                ; preds = %if.end182.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end182.5

land.lhs.true.5:                                  ; preds = %if.end182.4
  %36 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @blkcg_policy, i32 0, i32 5), align 4
  %pd_offline_fn.5 = getelementptr inbounds %struct.blkcg_policy, ptr %36, i32 0, i32 10
  %37 = ptrtoint ptr %pd_offline_fn.5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pd_offline_fn.5, align 4
  %tobool177.not.5 = icmp eq ptr %38, null
  br i1 %tobool177.not.5, label %land.lhs.true.5.if.end182.5_crit_edge, label %if.then178.5

land.lhs.true.5.if.end182.5_crit_edge:            ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end182.5

if.then178.5:                                     ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %38(ptr noundef nonnull %35) #14
  br label %if.end182.5

if.end182.5:                                      ; preds = %if.then178.5, %land.lhs.true.5.if.end182.5_crit_edge, %if.end182.4.if.end182.5_crit_edge
  %online = getelementptr inbounds %struct.blkcg_gq, ptr %blkg, i32 0, i32 6
  %39 = ptrtoint ptr %online to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %online, align 4
  %blkg_tree = getelementptr inbounds %struct.blkcg, ptr %1, i32 0, i32 3
  %40 = ptrtoint ptr %blkg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %blkg, align 8
  %id = getelementptr inbounds %struct.request_queue, ptr %41, i32 0, i32 13
  %42 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %id, align 8
  %call184 = tail call ptr @radix_tree_delete(ptr noundef %blkg_tree, i32 noundef %43) #14
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %q_node) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end182.5.list_del_init.exit_crit_edge

if.end182.5.list_del_init.exit_crit_edge:         ; preds = %if.end182.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end182.5
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.blkcg_gq, ptr %blkg, i32 0, i32 1, i32 1
  %44 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i.i, align 4
  %46 = ptrtoint ptr %q_node to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %q_node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev1.i.i.i, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %47, ptr %45, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end182.5.list_del_init.exit_crit_edge
  %50 = ptrtoint ptr %q_node to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %q_node, ptr %q_node, align 4
  %prev.i3.i = getelementptr inbounds %struct.blkcg_gq, ptr %blkg, i32 0, i32 1, i32 1
  %51 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %q_node, ptr %prev.i3.i, align 4
  %52 = ptrtoint ptr %pprev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pprev.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %53, null
  br i1 %tobool.not.i.not.i, label %list_del_init.exit.hlist_del_init_rcu.exit_crit_edge, label %if.then.i

list_del_init.exit.hlist_del_init_rcu.exit_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %hlist_del_init_rcu.exit

if.then.i:                                        ; preds = %list_del_init.exit
  %54 = ptrtoint ptr %blkcg_node to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %blkcg_node, align 4
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %55, ptr %53, align 4
  %tobool.not.i7.i = icmp eq ptr %55, null
  br i1 %tobool.not.i7.i, label %if.then.i.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i.__hlist_del.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %55, i32 0, i32 1
  %57 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %53, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i.__hlist_del.exit.i_crit_edge
  %58 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr null, ptr %pprev.i, align 4
  br label %hlist_del_init_rcu.exit

hlist_del_init_rcu.exit:                          ; preds = %__hlist_del.exit.i, %list_del_init.exit.hlist_del_init_rcu.exit_crit_edge
  %blkg_hint = getelementptr inbounds %struct.blkcg, ptr %1, i32 0, i32 4
  %59 = ptrtoint ptr %blkg_hint to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile ptr, ptr %blkg_hint, align 4
  %cmp192 = icmp eq ptr %60, %blkg
  br i1 %cmp192, label %do.body201, label %hlist_del_init_rcu.exit.if.end232_crit_edge

hlist_del_init_rcu.exit.if.end232_crit_edge:      ; preds = %hlist_del_init_rcu.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end232

do.body201:                                       ; preds = %hlist_del_init_rcu.exit
  call void @__sanitizer_cov_trace_pc() #16
  %61 = ptrtoint ptr %blkg_hint to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr null, ptr %blkg_hint, align 4
  br label %if.end232

if.end232:                                        ; preds = %do.body201, %hlist_del_init_rcu.exit.if.end232_crit_edge
  %refcnt = getelementptr inbounds %struct.blkcg_gq, ptr %blkg, i32 0, i32 5
  tail call void @percpu_ref_kill_and_confirm(ptr noundef %refcnt, ptr noundef null) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @blkcg_init_queue(ptr noundef %q) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @blkg_alloc(ptr noundef nonnull @blkcg_root, ptr noundef %q, i32 noundef 3264)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @radix_tree_preload(i32 noundef 3264) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  %0 = tail call i32 @llvm.read_register.i32(metadata !156) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !168
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %queue_lock = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 14
  tail call void @_raw_spin_lock_irq(ptr noundef %queue_lock) #14
  %call3 = tail call fastcc ptr @blkg_create(ptr noundef nonnull @blkcg_root, ptr noundef %q, ptr noundef nonnull %call)
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %err_unlock, label %if.end6

if.end6:                                          ; preds = %rcu_read_lock.exit
  %root_blkg = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 35
  %4 = ptrtoint ptr %root_blkg to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %root_blkg, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %queue_lock) #14
  %call.i48 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i48, label %if.end6.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i51

if.end6.rcu_read_unlock.exit_crit_edge:           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i51:                                ; preds = %if.end6
  %call1.i49 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i49)
  %tobool.not.i50 = icmp eq i32 %call1.i49, 0
  br i1 %tobool.not.i50, label %land.lhs.true.i51.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i53

land.lhs.true.i51.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i51
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i53:                               ; preds = %land.lhs.true.i51
  %.b4.i52 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i52, label %land.lhs.true2.i53.rcu_read_unlock.exit_crit_edge, label %if.then.i54

land.lhs.true2.i53.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i53
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i54:                                      ; preds = %land.lhs.true2.i53
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i54, %land.lhs.true2.i53.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i51.rcu_read_unlock.exit_crit_edge, %if.end6.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !169
  %5 = tail call i32 @llvm.read_register.i32(metadata !156) #14
  %and.i.i.i.i.i55 = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i55 to ptr
  %preempt_count.i.i.i.i56 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i56, align 4
  %sub.i.i.i = add i32 %8, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i56, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  br i1 %tobool2.not, label %if.then9, label %rcu_read_unlock.exit.if.end10_crit_edge

rcu_read_unlock.exit.if.end10_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.then9:                                         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !156) #14
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %14, ptrtoint (ptr @radix_tree_preloads to i32)
  %15 = inttoptr i32 %add.i to ptr
  tail call fastcc void @local_lock_release(ptr noundef %15) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !171
  %16 = tail call i32 @llvm.read_register.i32(metadata !156) #14
  %and.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %rcu_read_unlock.exit.if.end10_crit_edge
  %call11 = tail call i32 @blk_ioprio_init(ptr noundef %q) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.err_destroy_all_crit_edge

if.end10.err_destroy_all_crit_edge:               ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_destroy_all

if.end14:                                         ; preds = %if.end10
  %call15 = tail call i32 @blk_throtl_init(ptr noundef %q) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.err_destroy_all_crit_edge

if.end14.err_destroy_all_crit_edge:               ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_destroy_all

if.end18:                                         ; preds = %if.end14
  %call19 = tail call i32 @blk_iolatency_init(ptr noundef %q) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end18.cleanup_crit_edge, label %if.then21

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @blk_throtl_exit(ptr noundef %q) #14
  br label %err_destroy_all

err_destroy_all:                                  ; preds = %if.then21, %if.end14.err_destroy_all_crit_edge, %if.end10.err_destroy_all_crit_edge
  %ret.0 = phi i32 [ %call11, %if.end10.err_destroy_all_crit_edge ], [ %call15, %if.end14.err_destroy_all_crit_edge ], [ %call19, %if.then21 ]
  tail call fastcc void @blkg_destroy_all(ptr noundef %q)
  br label %cleanup

err_unlock:                                       ; preds = %rcu_read_lock.exit
  tail call void @_raw_spin_unlock_irq(ptr noundef %queue_lock) #14
  %call.i57 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i57, label %err_unlock.rcu_read_unlock.exit67_crit_edge, label %land.lhs.true.i60

err_unlock.rcu_read_unlock.exit67_crit_edge:      ; preds = %err_unlock
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit67

land.lhs.true.i60:                                ; preds = %err_unlock
  %call1.i58 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i58)
  %tobool.not.i59 = icmp eq i32 %call1.i58, 0
  br i1 %tobool.not.i59, label %land.lhs.true.i60.rcu_read_unlock.exit67_crit_edge, label %land.lhs.true2.i62

land.lhs.true.i60.rcu_read_unlock.exit67_crit_edge: ; preds = %land.lhs.true.i60
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit67

land.lhs.true2.i62:                               ; preds = %land.lhs.true.i60
  %.b4.i61 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i61, label %land.lhs.true2.i62.rcu_read_unlock.exit67_crit_edge, label %if.then.i63

land.lhs.true2.i62.rcu_read_unlock.exit67_crit_edge: ; preds = %land.lhs.true2.i62
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit67

if.then.i63:                                      ; preds = %land.lhs.true2.i62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #14
  br label %rcu_read_unlock.exit67

rcu_read_unlock.exit67:                           ; preds = %if.then.i63, %land.lhs.true2.i62.rcu_read_unlock.exit67_crit_edge, %land.lhs.true.i60.rcu_read_unlock.exit67_crit_edge, %err_unlock.rcu_read_unlock.exit67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !169
  %20 = tail call i32 @llvm.read_register.i32(metadata !156) #14
  %and.i.i.i.i.i64 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i64 to ptr
  %preempt_count.i.i.i.i65 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i65 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i65, align 4
  %sub.i.i.i66 = add i32 %23, -1
  store volatile i32 %sub.i.i.i66, ptr %preempt_count.i.i.i.i65, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  br i1 %tobool2.not, label %if.then25, label %rcu_read_unlock.exit67.if.end26_crit_edge

rcu_read_unlock.exit67.if.end26_crit_edge:        ; preds = %rcu_read_unlock.exit67
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

if.then25:                                        ; preds = %rcu_read_unlock.exit67
  call void @__sanitizer_cov_trace_pc() #16
  %24 = tail call i32 @llvm.read_register.i32(metadata !156) #14
  %and.i.i68 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i68 to ptr
  %cpu.i69 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu.i69 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i69, align 4
  %arrayidx.i70 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx.i70 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i70, align 4
  %add.i71 = add i32 %29, ptrtoint (ptr @radix_tree_preloads to i32)
  %30 = inttoptr i32 %add.i71 to ptr
  tail call fastcc void @local_lock_release(ptr noundef %30) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !171
  %31 = tail call i32 @llvm.read_register.i32(metadata !156) #14
  %and.i.i.i.i72 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i72 to ptr
  %preempt_count.i.i.i73 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i73, align 4
  %sub.i.i74 = add i32 %34, -1
  store volatile i32 %sub.i.i74, ptr %preempt_count.i.i.i73, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %rcu_read_unlock.exit67.if.end26_crit_edge
  %35 = ptrtoint ptr %call3 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %err_destroy_all, %if.end18.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %35, %if.end26 ], [ %ret.0, %err_destroy_all ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_ioprio_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_throtl_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_iolatency_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_throtl_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @blkg_destroy_all(ptr noundef %q) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_lock = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 14
  %blkg_list = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 36
  br label %restart

restart.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock_irq(ptr noundef %queue_lock) #14
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 447, i32 noundef 0) #14
  %call.i = tail call i32 @__cond_resched() #14
  br label %restart

restart:                                          ; preds = %restart.loopexit, %entry
  tail call void @_raw_spin_lock_irq(ptr noundef %queue_lock) #14
  %0 = ptrtoint ptr %blkg_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %blkg_list, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %restart
  %count.1 = phi i32 [ 64, %restart ], [ %dec, %for.body.for.cond_crit_edge ]
  %.pn.in = phi ptr [ %1, %restart ], [ %.pn, %for.body.for.cond_crit_edge ]
  %cmp.not = icmp eq ptr %.pn.in, %blkg_list
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in, align 4
  %blkg.0 = getelementptr i8, ptr %.pn.in, i32 -4
  %blkcg7 = getelementptr i8, ptr %.pn.in, i32 16
  %3 = ptrtoint ptr %blkcg7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %blkcg7, align 4
  %lock = getelementptr inbounds %struct.blkcg, ptr %4, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #14
  tail call fastcc void @blkg_destroy(ptr noundef %blkg.0)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #14
  %dec = add i32 %count.1, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %restart.loopexit, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  %root_blkg = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 35
  %5 = ptrtoint ptr %root_blkg to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %root_blkg, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %queue_lock) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blkcg_exit_queue(ptr noundef %q) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @blkg_destroy_all(ptr noundef %q)
  tail call void @blk_throtl_exit(ptr noundef %q) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @blkcg_css_alloc(ptr noundef readnone %parent_css) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @blkcg_pol_mutex, i32 noundef 0) #14
  %tobool.not = icmp eq ptr %parent_css, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.else

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.else:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 448) #17
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %if.else.cleanup41_crit_edge, label %if.else.if.end4_crit_edge

if.else.if.end4_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.else.cleanup41_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup41

if.end4:                                          ; preds = %if.else.if.end4_crit_edge, %entry.if.end4_crit_edge
  %blkcg.0 = phi ptr [ %call7.i.i, %if.else.if.end4_crit_edge ], [ @blkcg_root, %entry.if.end4_crit_edge ]
  %1 = load ptr, ptr @blkcg_policy, align 4
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %if.end4.for.inc_crit_edge, label %lor.lhs.false

if.end4.for.inc_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

lor.lhs.false:                                    ; preds = %if.end4
  %cpd_alloc_fn = getelementptr inbounds %struct.blkcg_policy, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpd_alloc_fn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpd_alloc_fn, align 4
  %tobool6.not = icmp eq ptr %3, null
  br i1 %tobool6.not, label %lor.lhs.false.for.inc_crit_edge, label %if.end8

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end8:                                          ; preds = %lor.lhs.false
  %call10 = tail call ptr %3(i32 noundef 3264) #14
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end8.for.end37_crit_edge, label %if.end14

if.end8.for.end37_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end37

if.end14:                                         ; preds = %if.end8
  %arrayidx16 = getelementptr %struct.blkcg, ptr %blkcg.0, i32 0, i32 6, i32 0
  %4 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call10, ptr %arrayidx16, align 4
  %5 = ptrtoint ptr %call10 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %blkcg.0, ptr %call10, align 4
  %plid = getelementptr inbounds %struct.blkcg_policy_data, ptr %call10, i32 0, i32 1
  %6 = ptrtoint ptr %plid to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %plid, align 4
  %cpd_init_fn = getelementptr inbounds %struct.blkcg_policy, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %cpd_init_fn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cpd_init_fn, align 4
  %tobool18.not = icmp eq ptr %8, null
  br i1 %tobool18.not, label %if.end14.for.inc_crit_edge, label %if.then19

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %8(ptr noundef nonnull %call10) #14
  br label %for.inc

for.inc:                                          ; preds = %if.then19, %if.end14.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %if.end4.for.inc_crit_edge
  %9 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @blkcg_policy, i32 0, i32 1), align 4
  %tobool5.not.1 = icmp eq ptr %9, null
  br i1 %tobool5.not.1, label %for.inc.for.inc.1_crit_edge, label %lor.lhs.false.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

lor.lhs.false.1:                                  ; preds = %for.inc
  %cpd_alloc_fn.1 = getelementptr inbounds %struct.blkcg_policy, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpd_alloc_fn.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cpd_alloc_fn.1, align 4
  %tobool6.not.1 = icmp eq ptr %11, null
  br i1 %tobool6.not.1, label %lor.lhs.false.1.for.inc.1_crit_edge, label %if.end8.1

lor.lhs.false.1.for.inc.1_crit_edge:              ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

if.end8.1:                                        ; preds = %lor.lhs.false.1
  %call10.1 = tail call ptr %11(i32 noundef 3264) #14
  %tobool11.not.1 = icmp eq ptr %call10.1, null
  br i1 %tobool11.not.1, label %if.end8.1.for.body26_crit_edge, label %if.end14.1

if.end8.1.for.body26_crit_edge:                   ; preds = %if.end8.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body26

if.end14.1:                                       ; preds = %if.end8.1
  %arrayidx16.1 = getelementptr %struct.blkcg, ptr %blkcg.0, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %arrayidx16.1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call10.1, ptr %arrayidx16.1, align 8
  %13 = ptrtoint ptr %call10.1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %blkcg.0, ptr %call10.1, align 4
  %plid.1 = getelementptr inbounds %struct.blkcg_policy_data, ptr %call10.1, i32 0, i32 1
  %14 = ptrtoint ptr %plid.1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %plid.1, align 4
  %cpd_init_fn.1 = getelementptr inbounds %struct.blkcg_policy, ptr %9, i32 0, i32 4
  %15 = ptrtoint ptr %cpd_init_fn.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cpd_init_fn.1, align 4
  %tobool18.not.1 = icmp eq ptr %16, null
  br i1 %tobool18.not.1, label %if.end14.1.for.inc.1_crit_edge, label %if.then19.1

if.end14.1.for.inc.1_crit_edge:                   ; preds = %if.end14.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

if.then19.1:                                      ; preds = %if.end14.1
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %16(ptr noundef nonnull %call10.1) #14
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then19.1, %if.end14.1.for.inc.1_crit_edge, %lor.lhs.false.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %17 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @blkcg_policy, i32 0, i32 2), align 4
  %tobool5.not.2 = icmp eq ptr %17, null
  br i1 %tobool5.not.2, label %for.inc.1.for.inc.2_crit_edge, label %lor.lhs.false.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.2

lor.lhs.false.2:                                  ; preds = %for.inc.1
  %cpd_alloc_fn.2 = getelementptr inbounds %struct.blkcg_policy, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %cpd_alloc_fn.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cpd_alloc_fn.2, align 4
  %tobool6.not.2 = icmp eq ptr %19, null
  br i1 %tobool6.not.2, label %lor.lhs.false.2.for.inc.2_crit_edge, label %if.end8.2

lor.lhs.false.2.for.inc.2_crit_edge:              ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.2

if.end8.2:                                        ; preds = %lor.lhs.false.2
  %call10.2 = tail call ptr %19(i32 noundef 3264) #14
  %tobool11.not.2 = icmp eq ptr %call10.2, null
  br i1 %tobool11.not.2, label %if.end8.2.for.body26_crit_edge, label %if.end14.2

if.end8.2.for.body26_crit_edge:                   ; preds = %if.end8.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body26

if.end14.2:                                       ; preds = %if.end8.2
  %arrayidx16.2 = getelementptr %struct.blkcg, ptr %blkcg.0, i32 0, i32 6, i32 2
  %20 = ptrtoint ptr %arrayidx16.2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call10.2, ptr %arrayidx16.2, align 4
  %21 = ptrtoint ptr %call10.2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %blkcg.0, ptr %call10.2, align 4
  %plid.2 = getelementptr inbounds %struct.blkcg_policy_data, ptr %call10.2, i32 0, i32 1
  %22 = ptrtoint ptr %plid.2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %plid.2, align 4
  %cpd_init_fn.2 = getelementptr inbounds %struct.blkcg_policy, ptr %17, i32 0, i32 4
  %23 = ptrtoint ptr %cpd_init_fn.2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cpd_init_fn.2, align 4
  %tobool18.not.2 = icmp eq ptr %24, null
  br i1 %tobool18.not.2, label %if.end14.2.for.inc.2_crit_edge, label %if.then19.2

if.end14.2.for.inc.2_crit_edge:                   ; preds = %if.end14.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.2

if.then19.2:                                      ; preds = %if.end14.2
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %24(ptr noundef nonnull %call10.2) #14
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then19.2, %if.end14.2.for.inc.2_crit_edge, %lor.lhs.false.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %25 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @blkcg_policy, i32 0, i32 3), align 4
  %tobool5.not.3 = icmp eq ptr %25, null
  br i1 %tobool5.not.3, label %for.inc.2.for.inc.3_crit_edge, label %lor.lhs.false.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.3

lor.lhs.false.3:                                  ; preds = %for.inc.2
  %cpd_alloc_fn.3 = getelementptr inbounds %struct.blkcg_policy, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpd_alloc_fn.3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cpd_alloc_fn.3, align 4
  %tobool6.not.3 = icmp eq ptr %27, null
  br i1 %tobool6.not.3, label %lor.lhs.false.3.for.inc.3_crit_edge, label %if.end8.3

lor.lhs.false.3.for.inc.3_crit_edge:              ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.3

if.end8.3:                                        ; preds = %lor.lhs.false.3
  %call10.3 = tail call ptr %27(i32 noundef 3264) #14
  %tobool11.not.3 = icmp eq ptr %call10.3, null
  br i1 %tobool11.not.3, label %if.end8.3.for.body26_crit_edge, label %if.end14.3

if.end8.3.for.body26_crit_edge:                   ; preds = %if.end8.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body26

if.end14.3:                                       ; preds = %if.end8.3
  %arrayidx16.3 = getelementptr %struct.blkcg, ptr %blkcg.0, i32 0, i32 6, i32 3
  %28 = ptrtoint ptr %arrayidx16.3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call10.3, ptr %arrayidx16.3, align 8
  %29 = ptrtoint ptr %call10.3 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %blkcg.0, ptr %call10.3, align 4
  %plid.3 = getelementptr inbounds %struct.blkcg_policy_data, ptr %call10.3, i32 0, i32 1
  %30 = ptrtoint ptr %plid.3 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 3, ptr %plid.3, align 4
  %cpd_init_fn.3 = getelementptr inbounds %struct.blkcg_policy, ptr %25, i32 0, i32 4
  %31 = ptrtoint ptr %cpd_init_fn.3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cpd_init_fn.3, align 4
  %tobool18.not.3 = icmp eq ptr %32, null
  br i1 %tobool18.not.3, label %if.end14.3.for.inc.3_crit_edge, label %if.then19.3

if.end14.3.for.inc.3_crit_edge:                   ; preds = %if.end14.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.3

if.then19.3:                                      ; preds = %if.end14.3
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %32(ptr noundef nonnull %call10.3) #14
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then19.3, %if.end14.3.for.inc.3_crit_edge, %lor.lhs.false.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %33 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @blkcg_policy, i32 0, i32 4), align 4
  %tobool5.not.4 = icmp eq ptr %33, null
  br i1 %tobool5.not.4, label %for.inc.3.for.inc.4_crit_edge, label %lor.lhs.false.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.4

lor.lhs.false.4:                                  ; preds = %for.inc.3
  %cpd_alloc_fn.4 = getelementptr inbounds %struct.blkcg_policy, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %cpd_alloc_fn.4 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cpd_alloc_fn.4, align 4
  %tobool6.not.4 = icmp eq ptr %35, null
  br i1 %tobool6.not.4, label %lor.lhs.false.4.for.inc.4_crit_edge, label %if.end8.4

lor.lhs.false.4.for.inc.4_crit_edge:              ; preds = %lor.lhs.false.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.4

if.end8.4:                                        ; preds = %lor.lhs.false.4
  %call10.4 = tail call ptr %35(i32 noundef 3264) #14
  %tobool11.not.4 = icmp eq ptr %call10.4, null
  br i1 %tobool11.not.4, label %if.end8.4.for.body26_crit_edge, label %if.end14.4

if.end8.4.for.body26_crit_edge:                   ; preds = %if.end8.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body26

if.end14.4:                                       ; preds = %if.end8.4
  %arrayidx16.4 = getelementptr %struct.blkcg, ptr %blkcg.0, i32 0, i32 6, i32 4
  %36 = ptrtoint ptr %arrayidx16.4 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call10.4, ptr %arrayidx16.4, align 4
  %37 = ptrtoint ptr %call10.4 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %blkcg.0, ptr %call10.4, align 4
  %plid.4 = getelementptr inbounds %struct.blkcg_policy_data, ptr %call10.4, i32 0, i32 1
  %38 = ptrtoint ptr %plid.4 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 4, ptr %plid.4, align 4
  %cpd_init_fn.4 = getelementptr inbounds %struct.blkcg_policy, ptr %33, i32 0, i32 4
  %39 = ptrtoint ptr %cpd_init_fn.4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cpd_init_fn.4, align 4
  %tobool18.not.4 = icmp eq ptr %40, null
  br i1 %tobool18.not.4, label %if.end14.4.for.inc.4_crit_edge, label %if.then19.4

if.end14.4.for.inc.4_crit_edge:                   ; preds = %if.end14.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.4

if.then19.4:                                      ; preds = %if.end14.4
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %40(ptr noundef nonnull %call10.4) #14
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then19.4, %if.end14.4.for.inc.4_crit_edge, %lor.lhs.false.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %41 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @blkcg_policy, i32 0, i32 5), align 4
  %tobool5.not.5 = icmp eq ptr %41, null
  br i1 %tobool5.not.5, label %for.inc.4.for.inc.5_crit_edge, label %lor.lhs.false.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.5

lor.lhs.false.5:                                  ; preds = %for.inc.4
  %cpd_alloc_fn.5 = getelementptr inbounds %struct.blkcg_policy, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %cpd_alloc_fn.5 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cpd_alloc_fn.5, align 4
  %tobool6.not.5 = icmp eq ptr %43, null
  br i1 %tobool6.not.5, label %lor.lhs.false.5.for.inc.5_crit_edge, label %if.end8.5

lor.lhs.false.5.for.inc.5_crit_edge:              ; preds = %lor.lhs.false.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.5

if.end8.5:                                        ; preds = %lor.lhs.false.5
  %call10.5 = tail call ptr %43(i32 noundef 3264) #14
  %tobool11.not.5 = icmp eq ptr %call10.5, null
  br i1 %tobool11.not.5, label %if.end8.5.for.body26_crit_edge, label %if.end14.5

if.end8.5.for.body26_crit_edge:                   ; preds = %if.end8.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body26

if.end14.5:                                       ; preds = %if.end8.5
  %arrayidx16.5 = getelementptr %struct.blkcg, ptr %blkcg.0, i32 0, i32 6, i32 5
  %44 = ptrtoint ptr %arrayidx16.5 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call10.5, ptr %arrayidx16.5, align 8
  %45 = ptrtoint ptr %call10.5 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %blkcg.0, ptr %call10.5, align 4
  %plid.5 = getelementptr inbounds %struct.blkcg_policy_data, ptr %call10.5, i32 0, i32 1
  %46 = ptrtoint ptr %plid.5 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 5, ptr %plid.5, align 4
  %cpd_init_fn.5 = getelementptr inbounds %struct.blkcg_policy, ptr %41, i32 0, i32 4
  %47 = ptrtoint ptr %cpd_init_fn.5 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cpd_init_fn.5, align 4
  %tobool18.not.5 = icmp eq ptr %48, null
  br i1 %tobool18.not.5, label %if.end14.5.for.inc.5_crit_edge, label %if.then19.5

if.end14.5.for.inc.5_crit_edge:                   ; preds = %if.end14.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.5

if.then19.5:                                      ; preds = %if.end14.5
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %48(ptr noundef nonnull %call10.5) #14
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then19.5, %if.end14.5.for.inc.5_crit_edge, %lor.lhs.false.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %lock = getelementptr inbounds %struct.blkcg, ptr %blkcg.0, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.26, ptr noundef nonnull @blkcg_css_alloc.__key, i16 noundef signext 3) #14
  %online_pin = getelementptr inbounds %struct.blkcg, ptr %blkcg.0, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %online_pin, i32 noundef 4) #14
  %49 = ptrtoint ptr %online_pin to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile i32 1, ptr %online_pin, align 4
  %blkg_tree = getelementptr inbounds %struct.blkcg, ptr %blkcg.0, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %blkg_tree, ptr noundef nonnull @.str.27, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #14
  %xa_flags.i = getelementptr inbounds %struct.blkcg, ptr %blkcg.0, i32 0, i32 3, i32 1
  %50 = ptrtoint ptr %xa_flags.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 10240, ptr %xa_flags.i, align 4
  %xa_head.i = getelementptr inbounds %struct.blkcg, ptr %blkcg.0, i32 0, i32 3, i32 2
  %51 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %xa_head.i, align 8
  %blkg_list = getelementptr inbounds %struct.blkcg, ptr %blkcg.0, i32 0, i32 5
  %52 = ptrtoint ptr %blkg_list to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %blkg_list, align 8
  %cgwb_list = getelementptr inbounds %struct.blkcg, ptr %blkcg.0, i32 0, i32 9
  %53 = ptrtoint ptr %cgwb_list to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %cgwb_list, ptr %cgwb_list, align 8
  %prev.i = getelementptr inbounds %struct.blkcg, ptr %blkcg.0, i32 0, i32 9, i32 1
  %54 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %cgwb_list, ptr %prev.i, align 4
  %all_blkcgs_node = getelementptr inbounds %struct.blkcg, ptr %blkcg.0, i32 0, i32 7
  %55 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @all_blkcgs, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %all_blkcgs_node, ptr noundef %55, ptr noundef nonnull @all_blkcgs) #14
  br i1 %call.i.i, label %if.end.i.i, label %for.inc.5.cleanup41_crit_edge

for.inc.5.cleanup41_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup41

if.end.i.i:                                       ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #16
  store ptr %all_blkcgs_node, ptr getelementptr inbounds (%struct.list_head, ptr @all_blkcgs, i32 0, i32 1), align 4
  %56 = ptrtoint ptr %all_blkcgs_node to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @all_blkcgs, ptr %all_blkcgs_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.blkcg, ptr %blkcg.0, i32 0, i32 7, i32 1
  %57 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %55, ptr %prev3.i.i, align 8
  %58 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %all_blkcgs_node, ptr %55, align 4
  br label %cleanup41

for.body26:                                       ; preds = %if.end8.5.for.body26_crit_edge, %if.end8.4.for.body26_crit_edge, %if.end8.3.for.body26_crit_edge, %if.end8.2.for.body26_crit_edge, %if.end8.1.for.body26_crit_edge
  %cmp25 = phi i1 [ true, %if.end8.5.for.body26_crit_edge ], [ true, %if.end8.4.for.body26_crit_edge ], [ true, %if.end8.3.for.body26_crit_edge ], [ true, %if.end8.2.for.body26_crit_edge ], [ false, %if.end8.1.for.body26_crit_edge ]
  %cmp25.1 = phi i1 [ true, %if.end8.5.for.body26_crit_edge ], [ true, %if.end8.4.for.body26_crit_edge ], [ true, %if.end8.3.for.body26_crit_edge ], [ false, %if.end8.2.for.body26_crit_edge ], [ false, %if.end8.1.for.body26_crit_edge ]
  %cmp25.2 = phi i1 [ true, %if.end8.5.for.body26_crit_edge ], [ true, %if.end8.4.for.body26_crit_edge ], [ false, %if.end8.3.for.body26_crit_edge ], [ false, %if.end8.2.for.body26_crit_edge ], [ false, %if.end8.1.for.body26_crit_edge ]
  %cmp25.3 = phi i1 [ true, %if.end8.5.for.body26_crit_edge ], [ false, %if.end8.4.for.body26_crit_edge ], [ false, %if.end8.3.for.body26_crit_edge ], [ false, %if.end8.2.for.body26_crit_edge ], [ false, %if.end8.1.for.body26_crit_edge ]
  %i.186.ph = phi i32 [ 4, %if.end8.5.for.body26_crit_edge ], [ 3, %if.end8.4.for.body26_crit_edge ], [ 2, %if.end8.3.for.body26_crit_edge ], [ 1, %if.end8.2.for.body26_crit_edge ], [ 0, %if.end8.1.for.body26_crit_edge ]
  %arrayidx28 = getelementptr %struct.blkcg, ptr %blkcg.0, i32 0, i32 6, i32 %i.186.ph
  %59 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx28, align 4
  %tobool29.not = icmp eq ptr %60, null
  br i1 %tobool29.not, label %for.body26.for.inc35_crit_edge, label %if.then30

for.body26.for.inc35_crit_edge:                   ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc35

if.then30:                                        ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx31 = getelementptr [6 x ptr], ptr @blkcg_policy, i32 0, i32 %i.186.ph
  %61 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx31, align 4
  %cpd_free_fn = getelementptr inbounds %struct.blkcg_policy, ptr %62, i32 0, i32 5
  %63 = ptrtoint ptr %cpd_free_fn to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cpd_free_fn, align 4
  tail call void %64(ptr noundef nonnull %60) #14
  br label %for.inc35

for.inc35:                                        ; preds = %if.then30, %for.body26.for.inc35_crit_edge
  %i.1 = add nsw i32 %i.186.ph, -1
  br i1 %cmp25, label %for.body26.1, label %for.inc35.for.end37_crit_edge

for.inc35.for.end37_crit_edge:                    ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end37

for.body26.1:                                     ; preds = %for.inc35
  %arrayidx28.1 = getelementptr %struct.blkcg, ptr %blkcg.0, i32 0, i32 6, i32 %i.1
  %65 = ptrtoint ptr %arrayidx28.1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx28.1, align 4
  %tobool29.not.1 = icmp eq ptr %66, null
  br i1 %tobool29.not.1, label %for.body26.1.for.inc35.1_crit_edge, label %if.then30.1

for.body26.1.for.inc35.1_crit_edge:               ; preds = %for.body26.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc35.1

if.then30.1:                                      ; preds = %for.body26.1
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx31.1 = getelementptr [6 x ptr], ptr @blkcg_policy, i32 0, i32 %i.1
  %67 = ptrtoint ptr %arrayidx31.1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx31.1, align 4
  %cpd_free_fn.1 = getelementptr inbounds %struct.blkcg_policy, ptr %68, i32 0, i32 5
  %69 = ptrtoint ptr %cpd_free_fn.1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cpd_free_fn.1, align 4
  tail call void %70(ptr noundef nonnull %66) #14
  br label %for.inc35.1

for.inc35.1:                                      ; preds = %if.then30.1, %for.body26.1.for.inc35.1_crit_edge
  %i.1.1 = add nsw i32 %i.186.ph, -2
  br i1 %cmp25.1, label %for.body26.2, label %for.inc35.1.for.end37_crit_edge

for.inc35.1.for.end37_crit_edge:                  ; preds = %for.inc35.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end37

for.body26.2:                                     ; preds = %for.inc35.1
  %arrayidx28.2 = getelementptr %struct.blkcg, ptr %blkcg.0, i32 0, i32 6, i32 %i.1.1
  %71 = ptrtoint ptr %arrayidx28.2 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx28.2, align 4
  %tobool29.not.2 = icmp eq ptr %72, null
  br i1 %tobool29.not.2, label %for.body26.2.for.inc35.2_crit_edge, label %if.then30.2

for.body26.2.for.inc35.2_crit_edge:               ; preds = %for.body26.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc35.2

if.then30.2:                                      ; preds = %for.body26.2
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx31.2 = getelementptr [6 x ptr], ptr @blkcg_policy, i32 0, i32 %i.1.1
  %73 = ptrtoint ptr %arrayidx31.2 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx31.2, align 4
  %cpd_free_fn.2 = getelementptr inbounds %struct.blkcg_policy, ptr %74, i32 0, i32 5
  %75 = ptrtoint ptr %cpd_free_fn.2 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cpd_free_fn.2, align 4
  tail call void %76(ptr noundef nonnull %72) #14
  br label %for.inc35.2

for.inc35.2:                                      ; preds = %if.then30.2, %for.body26.2.for.inc35.2_crit_edge
  %i.1.2 = add nsw i32 %i.186.ph, -3
  br i1 %cmp25.2, label %for.body26.3, label %for.inc35.2.for.end37_crit_edge

for.inc35.2.for.end37_crit_edge:                  ; preds = %for.inc35.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end37

for.body26.3:                                     ; preds = %for.inc35.2
  %arrayidx28.3 = getelementptr %struct.blkcg, ptr %blkcg.0, i32 0, i32 6, i32 %i.1.2
  %77 = ptrtoint ptr %arrayidx28.3 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx28.3, align 4
  %tobool29.not.3 = icmp eq ptr %78, null
  br i1 %tobool29.not.3, label %for.body26.3.for.inc35.3_crit_edge, label %if.then30.3

for.body26.3.for.inc35.3_crit_edge:               ; preds = %for.body26.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc35.3

if.then30.3:                                      ; preds = %for.body26.3
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx31.3 = getelementptr [6 x ptr], ptr @blkcg_policy, i32 0, i32 %i.1.2
  %79 = ptrtoint ptr %arrayidx31.3 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx31.3, align 4
  %cpd_free_fn.3 = getelementptr inbounds %struct.blkcg_policy, ptr %80, i32 0, i32 5
  %81 = ptrtoint ptr %cpd_free_fn.3 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cpd_free_fn.3, align 4
  tail call void %82(ptr noundef nonnull %78) #14
  br label %for.inc35.3

for.inc35.3:                                      ; preds = %if.then30.3, %for.body26.3.for.inc35.3_crit_edge
  %i.1.3 = add nsw i32 %i.186.ph, -4
  br i1 %cmp25.3, label %for.body26.4, label %for.inc35.3.for.end37_crit_edge

for.inc35.3.for.end37_crit_edge:                  ; preds = %for.inc35.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end37

for.body26.4:                                     ; preds = %for.inc35.3
  %arrayidx28.4 = getelementptr %struct.blkcg, ptr %blkcg.0, i32 0, i32 6, i32 %i.1.3
  %83 = ptrtoint ptr %arrayidx28.4 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx28.4, align 4
  %tobool29.not.4 = icmp eq ptr %84, null
  br i1 %tobool29.not.4, label %for.body26.4.for.end37_crit_edge, label %if.then30.4

for.body26.4.for.end37_crit_edge:                 ; preds = %for.body26.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end37

if.then30.4:                                      ; preds = %for.body26.4
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx31.4 = getelementptr [6 x ptr], ptr @blkcg_policy, i32 0, i32 %i.1.3
  %85 = ptrtoint ptr %arrayidx31.4 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx31.4, align 4
  %cpd_free_fn.4 = getelementptr inbounds %struct.blkcg_policy, ptr %86, i32 0, i32 5
  %87 = ptrtoint ptr %cpd_free_fn.4 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %cpd_free_fn.4, align 4
  tail call void %88(ptr noundef nonnull %84) #14
  br label %for.end37

for.end37:                                        ; preds = %if.then30.4, %for.body26.4.for.end37_crit_edge, %for.inc35.3.for.end37_crit_edge, %for.inc35.2.for.end37_crit_edge, %for.inc35.1.for.end37_crit_edge, %for.inc35.for.end37_crit_edge, %if.end8.for.end37_crit_edge
  %cmp38.not = icmp eq ptr %blkcg.0, @blkcg_root
  br i1 %cmp38.not, label %for.end37.cleanup41_crit_edge, label %if.then39

for.end37.cleanup41_crit_edge:                    ; preds = %for.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup41

if.then39:                                        ; preds = %for.end37
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef %blkcg.0) #14
  br label %cleanup41

cleanup41:                                        ; preds = %if.then39, %for.end37.cleanup41_crit_edge, %if.end.i.i, %for.inc.5.cleanup41_crit_edge, %if.else.cleanup41_crit_edge
  %retval.0 = phi ptr [ %blkcg.0, %for.inc.5.cleanup41_crit_edge ], [ %blkcg.0, %if.end.i.i ], [ inttoptr (i32 -12 to ptr), %if.else.cleanup41_crit_edge ], [ inttoptr (i32 -12 to ptr), %for.end37.cleanup41_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then39 ]
  tail call void @mutex_unlock(ptr noundef nonnull @blkcg_pol_mutex) #14
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blkcg_css_online(ptr nocapture noundef readonly %css) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %css, i32 0, i32 12
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  %online_pin.i = getelementptr inbounds %struct.blkcg, ptr %1, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %online_pin.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %online_pin.i, i32 1, i32 3, i32 1) #14
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %online_pin.i, ptr %online_pin.i, i32 1, ptr elementtype(i32) %online_pin.i) #14, !srcloc !180
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !166

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !172

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end_crit_edge:                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %online_pin.i, i32 noundef %.sink.i.i.i.i) #14
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blkcg_css_offline(ptr noundef %css) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @wb_blkcg_offline(ptr noundef %css) #14
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %entry
  %blkcg.addr.0.i = phi ptr [ %css, %entry ], [ %2, %if.end.i.do.body.i_crit_edge ]
  %online_pin.i = getelementptr inbounds %struct.blkcg, ptr %blkcg.addr.0.i, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %online_pin.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !181
  tail call void @llvm.prefetch.p0(ptr %online_pin.i, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %online_pin.i, ptr %online_pin.i, i32 1, ptr elementtype(i32) %online_pin.i) #14, !srcloc !182
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %do.body.i
  %asmresult.i.i.i.i.i.i.i.le = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.le)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.le, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.blkcg_unpin_online.exit_crit_edge, label %if.then10.i.i.i.i, !prof !172

if.end5.i.i.i.i.blkcg_unpin_online.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %blkcg_unpin_online.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %online_pin.i, i32 noundef 3) #14
  br label %blkcg_unpin_online.exit

if.end.i:                                         ; preds = %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !183
  tail call void @blkcg_destroy_blkgs(ptr noundef %blkcg.addr.0.i) #14
  %parent.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %blkcg.addr.0.i, i32 0, i32 12
  %1 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent.i.i, align 8
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.end.i.blkcg_unpin_online.exit_crit_edge, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

if.end.i.blkcg_unpin_online.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %blkcg_unpin_online.exit

blkcg_unpin_online.exit:                          ; preds = %if.end.i.blkcg_unpin_online.exit_crit_edge, %if.then10.i.i.i.i, %if.end5.i.i.i.i.blkcg_unpin_online.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blkcg_css_free(ptr noundef %css) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @blkcg_pol_mutex, i32 noundef 0) #14
  %all_blkcgs_node = getelementptr inbounds %struct.blkcg, ptr %css, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %all_blkcgs_node) #14
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.blkcg, ptr %css, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %all_blkcgs_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %all_blkcgs_node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %all_blkcgs_node to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %all_blkcgs_node, align 4
  %prev.i = getelementptr inbounds %struct.blkcg, ptr %css, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %arrayidx = getelementptr %struct.blkcg, ptr %css, i32 0, i32 6, i32 0
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %list_del.exit.for.inc_crit_edge, label %if.then

list_del.exit.for.inc_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  %10 = load ptr, ptr @blkcg_policy, align 4
  %cpd_free_fn = getelementptr inbounds %struct.blkcg_policy, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %cpd_free_fn to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cpd_free_fn, align 4
  tail call void %12(ptr noundef nonnull %9) #14
  br label %for.inc

for.inc:                                          ; preds = %if.then, %list_del.exit.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.blkcg, ptr %css, i32 0, i32 6, i32 1
  %13 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %14, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  %15 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @blkcg_policy, i32 0, i32 1), align 4
  %cpd_free_fn.1 = getelementptr inbounds %struct.blkcg_policy, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %cpd_free_fn.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cpd_free_fn.1, align 4
  tail call void %17(ptr noundef nonnull %14) #14
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.blkcg, ptr %css, i32 0, i32 6, i32 2
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %19, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  %20 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @blkcg_policy, i32 0, i32 2), align 4
  %cpd_free_fn.2 = getelementptr inbounds %struct.blkcg_policy, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %cpd_free_fn.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cpd_free_fn.2, align 4
  tail call void %22(ptr noundef nonnull %19) #14
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.blkcg, ptr %css, i32 0, i32 6, i32 3
  %23 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %24, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  %25 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @blkcg_policy, i32 0, i32 3), align 4
  %cpd_free_fn.3 = getelementptr inbounds %struct.blkcg_policy, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %cpd_free_fn.3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cpd_free_fn.3, align 4
  tail call void %27(ptr noundef nonnull %24) #14
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.blkcg, ptr %css, i32 0, i32 6, i32 4
  %28 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.4 = icmp eq ptr %29, null
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #16
  %30 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @blkcg_policy, i32 0, i32 4), align 4
  %cpd_free_fn.4 = getelementptr inbounds %struct.blkcg_policy, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %cpd_free_fn.4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cpd_free_fn.4, align 4
  tail call void %32(ptr noundef nonnull %29) #14
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.blkcg, ptr %css, i32 0, i32 6, i32 5
  %33 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.5, align 4
  %tobool.not.5 = icmp eq ptr %34, null
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #16
  %35 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @blkcg_policy, i32 0, i32 5), align 4
  %cpd_free_fn.5 = getelementptr inbounds %struct.blkcg_policy, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %cpd_free_fn.5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cpd_free_fn.5, align 4
  tail call void %37(ptr noundef nonnull %34) #14
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @blkcg_pol_mutex) #14
  tail call void @kfree(ptr noundef %css) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blkcg_rstat_flush(ptr noundef %css, i32 noundef %cpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %css to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %css, align 8
  %parent.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = tail call i32 @llvm.read_register.i32(metadata !156) #14
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !168
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %call2 = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true6

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b96 = load i1, ptr @blkcg_rstat_flush.__warned, align 1
  br i1 %.b96, label %land.lhs.true6.do.end_crit_edge, label %if.then8

land.lhs.true6.do.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @blkcg_rstat_flush.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 801, ptr noundef nonnull @.str.1) #14
  br label %do.end

do.end:                                           ; preds = %if.then8, %land.lhs.true6.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %blkg_list = getelementptr inbounds %struct.blkcg, ptr %css, i32 0, i32 5
  %8 = ptrtoint ptr %blkg_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %blkg_list, align 8
  %tobool15.not = icmp eq ptr %9, null
  %add.ptr = getelementptr i8, ptr %9, i32 -12
  %tobool17.not284287 = icmp eq ptr %add.ptr, null
  %tobool17.not284 = or i1 %tobool15.not, %tobool17.not284287
  br i1 %tobool17.not284, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  br label %for.body

for.body:                                         ; preds = %if.end56.for.body_crit_edge, %for.body.lr.ph
  %blkg.0285 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr68, %if.end56.for.body_crit_edge ]
  %parent18 = getelementptr inbounds %struct.blkcg_gq, ptr %blkg.0285, i32 0, i32 4
  %10 = ptrtoint ptr %parent18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent18, align 8
  %iostat_cpu = getelementptr inbounds %struct.blkcg_gq, ptr %blkg.0285, i32 0, i32 7
  %12 = ptrtoint ptr %iostat_cpu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iostat_cpu, align 8
  %14 = ptrtoint ptr %13 to i32
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %add = add i32 %16, %14
  %17 = inttoptr i32 %add to ptr
  %cur26 = getelementptr inbounds %struct.blkg_iostat_set, ptr %17, i32 0, i32 1
  %arrayidx3.i = getelementptr %struct.blkg_iostat_set, ptr %17, i32 0, i32 1, i32 1
  %arrayidx.1.i = getelementptr %struct.blkg_iostat_set, ptr %17, i32 0, i32 1, i32 0, i32 1
  %arrayidx3.1.i = getelementptr %struct.blkg_iostat_set, ptr %17, i32 0, i32 1, i32 1, i32 1
  %arrayidx.2.i = getelementptr %struct.blkg_iostat_set, ptr %17, i32 0, i32 1, i32 0, i32 2
  %arrayidx3.2.i = getelementptr %struct.blkg_iostat_set, ptr %17, i32 0, i32 1, i32 1, i32 2
  br label %do.body24

do.body24:                                        ; preds = %do.body24.do.body24_crit_edge, %for.body
  %call25 = tail call fastcc i32 @u64_stats_fetch_begin(ptr noundef %17)
  %18 = ptrtoint ptr %cur26 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %cur26, align 8
  %20 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx3.i, align 8
  %22 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx.1.i, align 8
  %24 = ptrtoint ptr %arrayidx3.1.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx3.1.i, align 8
  %26 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx.2.i, align 8
  %28 = ptrtoint ptr %arrayidx3.2.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx3.2.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !184
  %30 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %17, align 4
  %cmp.i.i.i.i.not = icmp eq i32 %31, %call25
  br i1 %cmp.i.i.i.i.not, label %do.end30, label %do.body24.do.body24_crit_edge

do.body24.do.body24_crit_edge:                    ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body24

do.end30:                                         ; preds = %do.body24
  %iostat = getelementptr inbounds %struct.blkcg_gq, ptr %blkg.0285, i32 0, i32 8
  %call32 = tail call fastcc i32 @u64_stats_update_begin_irqsave(ptr noundef %iostat)
  %last = getelementptr inbounds %struct.blkg_iostat_set, ptr %17, i32 0, i32 2
  %32 = ptrtoint ptr %last to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %last, align 8
  %sub.i = sub i64 %19, %33
  %arrayidx3.i108 = getelementptr %struct.blkg_iostat_set, ptr %17, i32 0, i32 2, i32 1
  %34 = ptrtoint ptr %arrayidx3.i108 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %arrayidx3.i108, align 8
  %sub6.i = sub i64 %21, %35
  %arrayidx.1.i110 = getelementptr %struct.blkg_iostat_set, ptr %17, i32 0, i32 2, i32 0, i32 1
  %36 = ptrtoint ptr %arrayidx.1.i110 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %arrayidx.1.i110, align 8
  %sub.1.i = sub i64 %23, %37
  %arrayidx3.1.i112 = getelementptr %struct.blkg_iostat_set, ptr %17, i32 0, i32 2, i32 1, i32 1
  %38 = ptrtoint ptr %arrayidx3.1.i112 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %arrayidx3.1.i112, align 8
  %sub6.1.i = sub i64 %25, %39
  %arrayidx.2.i114 = getelementptr %struct.blkg_iostat_set, ptr %17, i32 0, i32 2, i32 0, i32 2
  %40 = ptrtoint ptr %arrayidx.2.i114 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx.2.i114, align 8
  %sub.2.i = sub i64 %27, %41
  %arrayidx3.2.i116 = getelementptr %struct.blkg_iostat_set, ptr %17, i32 0, i32 2, i32 1, i32 2
  %42 = ptrtoint ptr %arrayidx3.2.i116 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %arrayidx3.2.i116, align 8
  %sub6.2.i = sub i64 %29, %43
  %cur34 = getelementptr inbounds %struct.blkcg_gq, ptr %blkg.0285, i32 0, i32 8, i32 1
  %44 = ptrtoint ptr %cur34 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %cur34, align 8
  %add.i = add i64 %45, %sub.i
  store i64 %add.i, ptr %cur34, align 8
  %arrayidx5.i119 = getelementptr %struct.blkcg_gq, ptr %blkg.0285, i32 0, i32 8, i32 1, i32 1
  %46 = ptrtoint ptr %arrayidx5.i119 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %arrayidx5.i119, align 8
  %add6.i = add i64 %47, %sub6.i
  store i64 %add6.i, ptr %arrayidx5.i119, align 8
  %arrayidx2.1.i121 = getelementptr %struct.blkcg_gq, ptr %blkg.0285, i32 0, i32 8, i32 1, i32 0, i32 1
  %48 = ptrtoint ptr %arrayidx2.1.i121 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %arrayidx2.1.i121, align 8
  %add.1.i = add i64 %49, %sub.1.i
  store i64 %add.1.i, ptr %arrayidx2.1.i121, align 8
  %arrayidx5.1.i123 = getelementptr %struct.blkcg_gq, ptr %blkg.0285, i32 0, i32 8, i32 1, i32 1, i32 1
  %50 = ptrtoint ptr %arrayidx5.1.i123 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %arrayidx5.1.i123, align 8
  %add6.1.i = add i64 %51, %sub6.1.i
  store i64 %add6.1.i, ptr %arrayidx5.1.i123, align 8
  %arrayidx2.2.i125 = getelementptr %struct.blkcg_gq, ptr %blkg.0285, i32 0, i32 8, i32 1, i32 0, i32 2
  %52 = ptrtoint ptr %arrayidx2.2.i125 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %arrayidx2.2.i125, align 8
  %add.2.i = add i64 %53, %sub.2.i
  store i64 %add.2.i, ptr %arrayidx2.2.i125, align 8
  %arrayidx5.2.i127 = getelementptr %struct.blkcg_gq, ptr %blkg.0285, i32 0, i32 8, i32 1, i32 1, i32 2
  %54 = ptrtoint ptr %arrayidx5.2.i127 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %arrayidx5.2.i127, align 8
  %add6.2.i = add i64 %55, %sub6.2.i
  store i64 %add6.2.i, ptr %arrayidx5.2.i127, align 8
  %56 = load i64, ptr %last, align 8
  %add.i128 = add i64 %56, %sub.i
  store i64 %add.i128, ptr %last, align 8
  %57 = load i64, ptr %arrayidx3.i108, align 8
  %add6.i131 = add i64 %57, %sub6.i
  store i64 %add6.i131, ptr %arrayidx3.i108, align 8
  %58 = load i64, ptr %arrayidx.1.i110, align 8
  %add.1.i134 = add i64 %58, %sub.1.i
  store i64 %add.1.i134, ptr %arrayidx.1.i110, align 8
  %59 = load i64, ptr %arrayidx3.1.i112, align 8
  %add6.1.i137 = add i64 %59, %sub6.1.i
  store i64 %add6.1.i137, ptr %arrayidx3.1.i112, align 8
  %60 = load i64, ptr %arrayidx.2.i114, align 8
  %add.2.i140 = add i64 %60, %sub.2.i
  store i64 %add.2.i140, ptr %arrayidx.2.i114, align 8
  %61 = load i64, ptr %arrayidx3.2.i116, align 8
  %add6.2.i143 = add i64 %61, %sub6.2.i
  store i64 %add6.2.i143, ptr %arrayidx3.2.i116, align 8
  %dep_map.i.i = getelementptr inbounds %struct.blkcg_gq, ptr %blkg.0285, i32 0, i32 8, i32 0, i32 0, i32 1
  %62 = tail call ptr @llvm.returnaddress(i32 0) #14
  %63 = ptrtoint ptr %62 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %63) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !185
  %64 = ptrtoint ptr %iostat to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %iostat, align 4
  %inc.i.i.i = add i32 %65, 1
  store i32 %inc.i.i.i, ptr %iostat, align 4
  %and.i.i = and i32 %call32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i144 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i144, label %if.then8.i, label %do.end30.do.body10.i_crit_edge

do.end30.do.body10.i_crit_edge:                   ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body10.i

if.then8.i:                                       ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @trace_hardirqs_on() #14
  br label %do.body10.i

do.body10.i:                                      ; preds = %if.then8.i, %do.end30.do.body10.i_crit_edge
  %66 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !174
  %and.i.i.i = and i32 %66, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool18.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool18.not.i, label %if.then22.i, label %do.body10.i.u64_stats_update_end_irqrestore.exit_crit_edge, !prof !166

do.body10.i.u64_stats_update_end_irqrestore.exit_crit_edge: ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %u64_stats_update_end_irqrestore.exit

if.then22.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %u64_stats_update_end_irqrestore.exit

u64_stats_update_end_irqrestore.exit:             ; preds = %if.then22.i, %do.body10.i.u64_stats_update_end_irqrestore.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %call32) #14, !srcloc !175
  %tobool38.not = icmp eq ptr %11, null
  br i1 %tobool38.not, label %u64_stats_update_end_irqrestore.exit.if.end56_crit_edge, label %land.lhs.true39

u64_stats_update_end_irqrestore.exit.if.end56_crit_edge: ; preds = %u64_stats_update_end_irqrestore.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end56

land.lhs.true39:                                  ; preds = %u64_stats_update_end_irqrestore.exit
  %parent40 = getelementptr inbounds %struct.blkcg_gq, ptr %11, i32 0, i32 4
  %67 = ptrtoint ptr %parent40 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %parent40, align 8
  %tobool41.not = icmp eq ptr %68, null
  br i1 %tobool41.not, label %land.lhs.true39.if.end56_crit_edge, label %if.then42

land.lhs.true39.if.end56_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end56

if.then42:                                        ; preds = %land.lhs.true39
  %iostat43 = getelementptr inbounds %struct.blkcg_gq, ptr %11, i32 0, i32 8
  %call45 = tail call fastcc i32 @u64_stats_update_begin_irqsave(ptr noundef %iostat43)
  %69 = ptrtoint ptr %cur34 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %cur34, align 8
  %71 = ptrtoint ptr %arrayidx5.i119 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %arrayidx5.i119, align 8
  %73 = ptrtoint ptr %arrayidx2.1.i121 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %arrayidx2.1.i121, align 8
  %75 = ptrtoint ptr %arrayidx5.1.i123 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %arrayidx5.1.i123, align 8
  %77 = ptrtoint ptr %arrayidx2.2.i125 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %arrayidx2.2.i125, align 8
  %79 = ptrtoint ptr %arrayidx5.2.i127 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %arrayidx5.2.i127, align 8
  %last49 = getelementptr inbounds %struct.blkcg_gq, ptr %blkg.0285, i32 0, i32 8, i32 2
  %81 = ptrtoint ptr %last49 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %last49, align 8
  %sub.i155 = sub i64 %70, %82
  %arrayidx3.i156 = getelementptr %struct.blkcg_gq, ptr %blkg.0285, i32 0, i32 8, i32 2, i32 1
  %83 = ptrtoint ptr %arrayidx3.i156 to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %arrayidx3.i156, align 8
  %sub6.i158 = sub i64 %72, %84
  %arrayidx.1.i159 = getelementptr %struct.blkcg_gq, ptr %blkg.0285, i32 0, i32 8, i32 2, i32 0, i32 1
  %85 = ptrtoint ptr %arrayidx.1.i159 to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %arrayidx.1.i159, align 8
  %sub.1.i161 = sub i64 %74, %86
  %arrayidx3.1.i162 = getelementptr %struct.blkcg_gq, ptr %blkg.0285, i32 0, i32 8, i32 2, i32 1, i32 1
  %87 = ptrtoint ptr %arrayidx3.1.i162 to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %arrayidx3.1.i162, align 8
  %sub6.1.i164 = sub i64 %76, %88
  %arrayidx.2.i165 = getelementptr %struct.blkcg_gq, ptr %blkg.0285, i32 0, i32 8, i32 2, i32 0, i32 2
  %89 = ptrtoint ptr %arrayidx.2.i165 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %arrayidx.2.i165, align 8
  %sub.2.i167 = sub i64 %78, %90
  %arrayidx3.2.i168 = getelementptr %struct.blkcg_gq, ptr %blkg.0285, i32 0, i32 8, i32 2, i32 1, i32 2
  %91 = ptrtoint ptr %arrayidx3.2.i168 to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %arrayidx3.2.i168, align 8
  %sub6.2.i170 = sub i64 %80, %92
  %cur51 = getelementptr inbounds %struct.blkcg_gq, ptr %11, i32 0, i32 8, i32 1
  %93 = ptrtoint ptr %cur51 to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %cur51, align 8
  %add.i171 = add i64 %94, %sub.i155
  store i64 %add.i171, ptr %cur51, align 8
  %arrayidx5.i173 = getelementptr %struct.blkcg_gq, ptr %11, i32 0, i32 8, i32 1, i32 1
  %95 = ptrtoint ptr %arrayidx5.i173 to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %arrayidx5.i173, align 8
  %add6.i174 = add i64 %96, %sub6.i158
  store i64 %add6.i174, ptr %arrayidx5.i173, align 8
  %arrayidx2.1.i176 = getelementptr %struct.blkcg_gq, ptr %11, i32 0, i32 8, i32 1, i32 0, i32 1
  %97 = ptrtoint ptr %arrayidx2.1.i176 to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %arrayidx2.1.i176, align 8
  %add.1.i177 = add i64 %98, %sub.1.i161
  store i64 %add.1.i177, ptr %arrayidx2.1.i176, align 8
  %arrayidx5.1.i179 = getelementptr %struct.blkcg_gq, ptr %11, i32 0, i32 8, i32 1, i32 1, i32 1
  %99 = ptrtoint ptr %arrayidx5.1.i179 to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %arrayidx5.1.i179, align 8
  %add6.1.i180 = add i64 %100, %sub6.1.i164
  store i64 %add6.1.i180, ptr %arrayidx5.1.i179, align 8
  %arrayidx2.2.i182 = getelementptr %struct.blkcg_gq, ptr %11, i32 0, i32 8, i32 1, i32 0, i32 2
  %101 = ptrtoint ptr %arrayidx2.2.i182 to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %arrayidx2.2.i182, align 8
  %add.2.i183 = add i64 %102, %sub.2.i167
  store i64 %add.2.i183, ptr %arrayidx2.2.i182, align 8
  %arrayidx5.2.i185 = getelementptr %struct.blkcg_gq, ptr %11, i32 0, i32 8, i32 1, i32 1, i32 2
  %103 = ptrtoint ptr %arrayidx5.2.i185 to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %arrayidx5.2.i185, align 8
  %add6.2.i186 = add i64 %104, %sub6.2.i170
  store i64 %add6.2.i186, ptr %arrayidx5.2.i185, align 8
  %105 = load i64, ptr %last49, align 8
  %add.i187 = add i64 %105, %sub.i155
  store i64 %add.i187, ptr %last49, align 8
  %106 = load i64, ptr %arrayidx3.i156, align 8
  %add6.i190 = add i64 %106, %sub6.i158
  store i64 %add6.i190, ptr %arrayidx3.i156, align 8
  %107 = load i64, ptr %arrayidx.1.i159, align 8
  %add.1.i193 = add i64 %107, %sub.1.i161
  store i64 %add.1.i193, ptr %arrayidx.1.i159, align 8
  %108 = load i64, ptr %arrayidx3.1.i162, align 8
  %add6.1.i196 = add i64 %108, %sub6.1.i164
  store i64 %add6.1.i196, ptr %arrayidx3.1.i162, align 8
  %109 = load i64, ptr %arrayidx.2.i165, align 8
  %add.2.i199 = add i64 %109, %sub.2.i167
  store i64 %add.2.i199, ptr %arrayidx.2.i165, align 8
  %110 = load i64, ptr %arrayidx3.2.i168, align 8
  %add6.2.i202 = add i64 %110, %sub6.2.i170
  store i64 %add6.2.i202, ptr %arrayidx3.2.i168, align 8
  %dep_map.i.i203 = getelementptr inbounds %struct.blkcg_gq, ptr %11, i32 0, i32 8, i32 0, i32 0, i32 1
  tail call void @lock_release(ptr noundef %dep_map.i.i203, i32 noundef %63) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !185
  %111 = ptrtoint ptr %iostat43 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %iostat43, align 4
  %inc.i.i.i204 = add i32 %112, 1
  store i32 %inc.i.i.i204, ptr %iostat43, align 4
  %and.i.i205 = and i32 %call45, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i205)
  %tobool.not.i206 = icmp eq i32 %and.i.i205, 0
  br i1 %tobool.not.i206, label %if.then8.i207, label %if.then42.do.body10.i210_crit_edge

if.then42.do.body10.i210_crit_edge:               ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body10.i210

if.then8.i207:                                    ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @trace_hardirqs_on() #14
  br label %do.body10.i210

do.body10.i210:                                   ; preds = %if.then8.i207, %if.then42.do.body10.i210_crit_edge
  %113 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !174
  %and.i.i.i208 = and i32 %113, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i208)
  %tobool18.not.i209 = icmp eq i32 %and.i.i.i208, 0
  br i1 %tobool18.not.i209, label %if.then22.i211, label %do.body10.i210.u64_stats_update_end_irqrestore.exit212_crit_edge, !prof !166

do.body10.i210.u64_stats_update_end_irqrestore.exit212_crit_edge: ; preds = %do.body10.i210
  call void @__sanitizer_cov_trace_pc() #16
  br label %u64_stats_update_end_irqrestore.exit212

if.then22.i211:                                   ; preds = %do.body10.i210
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %u64_stats_update_end_irqrestore.exit212

u64_stats_update_end_irqrestore.exit212:          ; preds = %if.then22.i211, %do.body10.i210.u64_stats_update_end_irqrestore.exit212_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %call45) #14, !srcloc !175
  br label %if.end56

if.end56:                                         ; preds = %u64_stats_update_end_irqrestore.exit212, %land.lhs.true39.if.end56_crit_edge, %u64_stats_update_end_irqrestore.exit.if.end56_crit_edge
  %blkcg_node = getelementptr inbounds %struct.blkcg_gq, ptr %blkg.0285, i32 0, i32 2
  %114 = ptrtoint ptr %blkcg_node to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile ptr, ptr %blkcg_node, align 4
  %tobool64.not = icmp eq ptr %115, null
  %add.ptr68 = getelementptr i8, ptr %115, i32 -12
  %tobool17.not298 = icmp eq ptr %add.ptr68, null
  %tobool17.not = or i1 %tobool64.not, %tobool17.not298
  br i1 %tobool17.not, label %if.end56.for.end_crit_edge, label %if.end56.for.body_crit_edge

if.end56.for.body_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end56.for.end_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %if.end56.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i213 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i213, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i216

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i216:                               ; preds = %for.end
  %call1.i214 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i214)
  %tobool.not.i215 = icmp eq i32 %call1.i214, 0
  br i1 %tobool.not.i215, label %land.lhs.true.i216.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i218

land.lhs.true.i216.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i216
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i218:                              ; preds = %land.lhs.true.i216
  %.b4.i217 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i217, label %land.lhs.true2.i218.rcu_read_unlock.exit_crit_edge, label %if.then.i219

land.lhs.true2.i218.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i218
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i219:                                     ; preds = %land.lhs.true2.i218
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i219, %land.lhs.true2.i218.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i216.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !169
  %116 = tail call i32 @llvm.read_register.i32(metadata !156) #14
  %and.i.i.i.i.i220 = and i32 %116, -16384
  %117 = inttoptr i32 %and.i.i.i.i.i220 to ptr
  %preempt_count.i.i.i.i221 = getelementptr inbounds %struct.thread_info, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %preempt_count.i.i.i.i221 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load volatile i32, ptr %preempt_count.i.i.i.i221, align 4
  %sub.i.i.i = add i32 %119, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i221, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blkcg_exit(ptr nocapture noundef %tsk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %throttle_queue = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 207
  %0 = ptrtoint ptr %throttle_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %throttle_queue, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @blk_put_queue(ptr noundef nonnull %1) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %throttle_queue to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %throttle_queue, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blkcg_bind(ptr nocapture noundef readnone %root_css) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @blkcg_pol_mutex, i32 noundef 0) #14
  %0 = load ptr, ptr @blkcg_policy, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %cpd_bind_fn = getelementptr inbounds %struct.blkcg_policy, ptr %0, i32 0, i32 6
  %1 = ptrtoint ptr %cpd_bind_fn to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cpd_bind_fn, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %for.cond2.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond2.preheader:                              ; preds = %lor.lhs.false
  %.pn30 = load ptr, ptr @all_blkcgs, align 4
  %cmp3.not31 = icmp eq ptr %.pn30, @all_blkcgs
  br i1 %cmp3.not31, label %for.cond2.preheader.cleanup_crit_edge, label %for.cond2.preheader.for.body4_crit_edge

for.cond2.preheader.for.body4_crit_edge:          ; preds = %for.cond2.preheader
  br label %for.body4

for.cond2.preheader.cleanup_crit_edge:            ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body4:                                        ; preds = %for.inc.for.body4_crit_edge, %for.cond2.preheader.for.body4_crit_edge
  %.pn32 = phi ptr [ %.pn, %for.inc.for.body4_crit_edge ], [ %.pn30, %for.cond2.preheader.for.body4_crit_edge ]
  %cpd = getelementptr i8, ptr %.pn32, i32 -24
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 4
  %arrayidx5 = getelementptr [6 x ptr], ptr %cpd, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx5, align 4
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %for.body4.for.inc_crit_edge, label %if.then7

for.body4.for.inc_crit_edge:                      ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then7:                                         ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %cpd_bind_fn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cpd_bind_fn, align 4
  tail call void %8(ptr noundef nonnull %6) #14
  br label %for.inc

for.inc:                                          ; preds = %if.then7, %for.body4.for.inc_crit_edge
  %9 = ptrtoint ptr %.pn32 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn32, align 4
  %cmp3.not = icmp eq ptr %.pn, @all_blkcgs
  br i1 %cmp3.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body4_crit_edge

for.inc.for.body4_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body4

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.cond2.preheader.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %10 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @blkcg_policy, i32 0, i32 1), align 4
  %tobool.not.1 = icmp eq ptr %10, null
  br i1 %tobool.not.1, label %cleanup.cleanup.1_crit_edge, label %lor.lhs.false.1

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.1

lor.lhs.false.1:                                  ; preds = %cleanup
  %cpd_bind_fn.1 = getelementptr inbounds %struct.blkcg_policy, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %cpd_bind_fn.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cpd_bind_fn.1, align 4
  %tobool1.not.1 = icmp eq ptr %12, null
  br i1 %tobool1.not.1, label %lor.lhs.false.1.cleanup.1_crit_edge, label %for.cond2.preheader.1

lor.lhs.false.1.cleanup.1_crit_edge:              ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.1

for.cond2.preheader.1:                            ; preds = %lor.lhs.false.1
  %.pn30.1 = load ptr, ptr @all_blkcgs, align 4
  %cmp3.not31.1 = icmp eq ptr %.pn30.1, @all_blkcgs
  br i1 %cmp3.not31.1, label %for.cond2.preheader.1.cleanup.1_crit_edge, label %for.cond2.preheader.1.for.body4.1_crit_edge

for.cond2.preheader.1.for.body4.1_crit_edge:      ; preds = %for.cond2.preheader.1
  br label %for.body4.1

for.cond2.preheader.1.cleanup.1_crit_edge:        ; preds = %for.cond2.preheader.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.1

for.body4.1:                                      ; preds = %for.inc.1.for.body4.1_crit_edge, %for.cond2.preheader.1.for.body4.1_crit_edge
  %.pn32.1 = phi ptr [ %.pn.1, %for.inc.1.for.body4.1_crit_edge ], [ %.pn30.1, %for.cond2.preheader.1.for.body4.1_crit_edge ]
  %cpd.1 = getelementptr i8, ptr %.pn32.1, i32 -24
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %10, align 4
  %arrayidx5.1 = getelementptr [6 x ptr], ptr %cpd.1, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx5.1, align 4
  %tobool6.not.1 = icmp eq ptr %16, null
  br i1 %tobool6.not.1, label %for.body4.1.for.inc.1_crit_edge, label %if.then7.1

for.body4.1.for.inc.1_crit_edge:                  ; preds = %for.body4.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

if.then7.1:                                       ; preds = %for.body4.1
  call void @__sanitizer_cov_trace_pc() #16
  %17 = ptrtoint ptr %cpd_bind_fn.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cpd_bind_fn.1, align 4
  tail call void %18(ptr noundef nonnull %16) #14
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then7.1, %for.body4.1.for.inc.1_crit_edge
  %19 = ptrtoint ptr %.pn32.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn.1 = load ptr, ptr %.pn32.1, align 4
  %cmp3.not.1 = icmp eq ptr %.pn.1, @all_blkcgs
  br i1 %cmp3.not.1, label %for.inc.1.cleanup.1_crit_edge, label %for.inc.1.for.body4.1_crit_edge

for.inc.1.for.body4.1_crit_edge:                  ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body4.1

for.inc.1.cleanup.1_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.1

cleanup.1:                                        ; preds = %for.inc.1.cleanup.1_crit_edge, %for.cond2.preheader.1.cleanup.1_crit_edge, %lor.lhs.false.1.cleanup.1_crit_edge, %cleanup.cleanup.1_crit_edge
  %20 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @blkcg_policy, i32 0, i32 2), align 4
  %tobool.not.2 = icmp eq ptr %20, null
  br i1 %tobool.not.2, label %cleanup.1.cleanup.2_crit_edge, label %lor.lhs.false.2

cleanup.1.cleanup.2_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.2

lor.lhs.false.2:                                  ; preds = %cleanup.1
  %cpd_bind_fn.2 = getelementptr inbounds %struct.blkcg_policy, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %cpd_bind_fn.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cpd_bind_fn.2, align 4
  %tobool1.not.2 = icmp eq ptr %22, null
  br i1 %tobool1.not.2, label %lor.lhs.false.2.cleanup.2_crit_edge, label %for.cond2.preheader.2

lor.lhs.false.2.cleanup.2_crit_edge:              ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.2

for.cond2.preheader.2:                            ; preds = %lor.lhs.false.2
  %.pn30.2 = load ptr, ptr @all_blkcgs, align 4
  %cmp3.not31.2 = icmp eq ptr %.pn30.2, @all_blkcgs
  br i1 %cmp3.not31.2, label %for.cond2.preheader.2.cleanup.2_crit_edge, label %for.cond2.preheader.2.for.body4.2_crit_edge

for.cond2.preheader.2.for.body4.2_crit_edge:      ; preds = %for.cond2.preheader.2
  br label %for.body4.2

for.cond2.preheader.2.cleanup.2_crit_edge:        ; preds = %for.cond2.preheader.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.2

for.body4.2:                                      ; preds = %for.inc.2.for.body4.2_crit_edge, %for.cond2.preheader.2.for.body4.2_crit_edge
  %.pn32.2 = phi ptr [ %.pn.2, %for.inc.2.for.body4.2_crit_edge ], [ %.pn30.2, %for.cond2.preheader.2.for.body4.2_crit_edge ]
  %cpd.2 = getelementptr i8, ptr %.pn32.2, i32 -24
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %20, align 4
  %arrayidx5.2 = getelementptr [6 x ptr], ptr %cpd.2, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx5.2, align 4
  %tobool6.not.2 = icmp eq ptr %26, null
  br i1 %tobool6.not.2, label %for.body4.2.for.inc.2_crit_edge, label %if.then7.2

for.body4.2.for.inc.2_crit_edge:                  ; preds = %for.body4.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.2

if.then7.2:                                       ; preds = %for.body4.2
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %cpd_bind_fn.2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cpd_bind_fn.2, align 4
  tail call void %28(ptr noundef nonnull %26) #14
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then7.2, %for.body4.2.for.inc.2_crit_edge
  %29 = ptrtoint ptr %.pn32.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn.2 = load ptr, ptr %.pn32.2, align 4
  %cmp3.not.2 = icmp eq ptr %.pn.2, @all_blkcgs
  br i1 %cmp3.not.2, label %for.inc.2.cleanup.2_crit_edge, label %for.inc.2.for.body4.2_crit_edge

for.inc.2.for.body4.2_crit_edge:                  ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body4.2

for.inc.2.cleanup.2_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.2

cleanup.2:                                        ; preds = %for.inc.2.cleanup.2_crit_edge, %for.cond2.preheader.2.cleanup.2_crit_edge, %lor.lhs.false.2.cleanup.2_crit_edge, %cleanup.1.cleanup.2_crit_edge
  %30 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @blkcg_policy, i32 0, i32 3), align 4
  %tobool.not.3 = icmp eq ptr %30, null
  br i1 %tobool.not.3, label %cleanup.2.cleanup.3_crit_edge, label %lor.lhs.false.3

cleanup.2.cleanup.3_crit_edge:                    ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.3

lor.lhs.false.3:                                  ; preds = %cleanup.2
  %cpd_bind_fn.3 = getelementptr inbounds %struct.blkcg_policy, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %cpd_bind_fn.3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cpd_bind_fn.3, align 4
  %tobool1.not.3 = icmp eq ptr %32, null
  br i1 %tobool1.not.3, label %lor.lhs.false.3.cleanup.3_crit_edge, label %for.cond2.preheader.3

lor.lhs.false.3.cleanup.3_crit_edge:              ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.3

for.cond2.preheader.3:                            ; preds = %lor.lhs.false.3
  %.pn30.3 = load ptr, ptr @all_blkcgs, align 4
  %cmp3.not31.3 = icmp eq ptr %.pn30.3, @all_blkcgs
  br i1 %cmp3.not31.3, label %for.cond2.preheader.3.cleanup.3_crit_edge, label %for.cond2.preheader.3.for.body4.3_crit_edge

for.cond2.preheader.3.for.body4.3_crit_edge:      ; preds = %for.cond2.preheader.3
  br label %for.body4.3

for.cond2.preheader.3.cleanup.3_crit_edge:        ; preds = %for.cond2.preheader.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.3

for.body4.3:                                      ; preds = %for.inc.3.for.body4.3_crit_edge, %for.cond2.preheader.3.for.body4.3_crit_edge
  %.pn32.3 = phi ptr [ %.pn.3, %for.inc.3.for.body4.3_crit_edge ], [ %.pn30.3, %for.cond2.preheader.3.for.body4.3_crit_edge ]
  %cpd.3 = getelementptr i8, ptr %.pn32.3, i32 -24
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %30, align 4
  %arrayidx5.3 = getelementptr [6 x ptr], ptr %cpd.3, i32 0, i32 %34
  %35 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx5.3, align 4
  %tobool6.not.3 = icmp eq ptr %36, null
  br i1 %tobool6.not.3, label %for.body4.3.for.inc.3_crit_edge, label %if.then7.3

for.body4.3.for.inc.3_crit_edge:                  ; preds = %for.body4.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.3

if.then7.3:                                       ; preds = %for.body4.3
  call void @__sanitizer_cov_trace_pc() #16
  %37 = ptrtoint ptr %cpd_bind_fn.3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cpd_bind_fn.3, align 4
  tail call void %38(ptr noundef nonnull %36) #14
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then7.3, %for.body4.3.for.inc.3_crit_edge
  %39 = ptrtoint ptr %.pn32.3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pn.3 = load ptr, ptr %.pn32.3, align 4
  %cmp3.not.3 = icmp eq ptr %.pn.3, @all_blkcgs
  br i1 %cmp3.not.3, label %for.inc.3.cleanup.3_crit_edge, label %for.inc.3.for.body4.3_crit_edge

for.inc.3.for.body4.3_crit_edge:                  ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body4.3

for.inc.3.cleanup.3_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.3

cleanup.3:                                        ; preds = %for.inc.3.cleanup.3_crit_edge, %for.cond2.preheader.3.cleanup.3_crit_edge, %lor.lhs.false.3.cleanup.3_crit_edge, %cleanup.2.cleanup.3_crit_edge
  %40 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @blkcg_policy, i32 0, i32 4), align 4
  %tobool.not.4 = icmp eq ptr %40, null
  br i1 %tobool.not.4, label %cleanup.3.cleanup.4_crit_edge, label %lor.lhs.false.4

cleanup.3.cleanup.4_crit_edge:                    ; preds = %cleanup.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.4

lor.lhs.false.4:                                  ; preds = %cleanup.3
  %cpd_bind_fn.4 = getelementptr inbounds %struct.blkcg_policy, ptr %40, i32 0, i32 6
  %41 = ptrtoint ptr %cpd_bind_fn.4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cpd_bind_fn.4, align 4
  %tobool1.not.4 = icmp eq ptr %42, null
  br i1 %tobool1.not.4, label %lor.lhs.false.4.cleanup.4_crit_edge, label %for.cond2.preheader.4

lor.lhs.false.4.cleanup.4_crit_edge:              ; preds = %lor.lhs.false.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.4

for.cond2.preheader.4:                            ; preds = %lor.lhs.false.4
  %.pn30.4 = load ptr, ptr @all_blkcgs, align 4
  %cmp3.not31.4 = icmp eq ptr %.pn30.4, @all_blkcgs
  br i1 %cmp3.not31.4, label %for.cond2.preheader.4.cleanup.4_crit_edge, label %for.cond2.preheader.4.for.body4.4_crit_edge

for.cond2.preheader.4.for.body4.4_crit_edge:      ; preds = %for.cond2.preheader.4
  br label %for.body4.4

for.cond2.preheader.4.cleanup.4_crit_edge:        ; preds = %for.cond2.preheader.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.4

for.body4.4:                                      ; preds = %for.inc.4.for.body4.4_crit_edge, %for.cond2.preheader.4.for.body4.4_crit_edge
  %.pn32.4 = phi ptr [ %.pn.4, %for.inc.4.for.body4.4_crit_edge ], [ %.pn30.4, %for.cond2.preheader.4.for.body4.4_crit_edge ]
  %cpd.4 = getelementptr i8, ptr %.pn32.4, i32 -24
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %40, align 4
  %arrayidx5.4 = getelementptr [6 x ptr], ptr %cpd.4, i32 0, i32 %44
  %45 = ptrtoint ptr %arrayidx5.4 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx5.4, align 4
  %tobool6.not.4 = icmp eq ptr %46, null
  br i1 %tobool6.not.4, label %for.body4.4.for.inc.4_crit_edge, label %if.then7.4

for.body4.4.for.inc.4_crit_edge:                  ; preds = %for.body4.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.4

if.then7.4:                                       ; preds = %for.body4.4
  call void @__sanitizer_cov_trace_pc() #16
  %47 = ptrtoint ptr %cpd_bind_fn.4 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cpd_bind_fn.4, align 4
  tail call void %48(ptr noundef nonnull %46) #14
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then7.4, %for.body4.4.for.inc.4_crit_edge
  %49 = ptrtoint ptr %.pn32.4 to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pn.4 = load ptr, ptr %.pn32.4, align 4
  %cmp3.not.4 = icmp eq ptr %.pn.4, @all_blkcgs
  br i1 %cmp3.not.4, label %for.inc.4.cleanup.4_crit_edge, label %for.inc.4.for.body4.4_crit_edge

for.inc.4.for.body4.4_crit_edge:                  ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body4.4

for.inc.4.cleanup.4_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.4

cleanup.4:                                        ; preds = %for.inc.4.cleanup.4_crit_edge, %for.cond2.preheader.4.cleanup.4_crit_edge, %lor.lhs.false.4.cleanup.4_crit_edge, %cleanup.3.cleanup.4_crit_edge
  %50 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @blkcg_policy, i32 0, i32 5), align 4
  %tobool.not.5 = icmp eq ptr %50, null
  br i1 %tobool.not.5, label %cleanup.4.cleanup.5_crit_edge, label %lor.lhs.false.5

cleanup.4.cleanup.5_crit_edge:                    ; preds = %cleanup.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.5

lor.lhs.false.5:                                  ; preds = %cleanup.4
  %cpd_bind_fn.5 = getelementptr inbounds %struct.blkcg_policy, ptr %50, i32 0, i32 6
  %51 = ptrtoint ptr %cpd_bind_fn.5 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cpd_bind_fn.5, align 4
  %tobool1.not.5 = icmp eq ptr %52, null
  br i1 %tobool1.not.5, label %lor.lhs.false.5.cleanup.5_crit_edge, label %for.cond2.preheader.5

lor.lhs.false.5.cleanup.5_crit_edge:              ; preds = %lor.lhs.false.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.5

for.cond2.preheader.5:                            ; preds = %lor.lhs.false.5
  %.pn30.5 = load ptr, ptr @all_blkcgs, align 4
  %cmp3.not31.5 = icmp eq ptr %.pn30.5, @all_blkcgs
  br i1 %cmp3.not31.5, label %for.cond2.preheader.5.cleanup.5_crit_edge, label %for.cond2.preheader.5.for.body4.5_crit_edge

for.cond2.preheader.5.for.body4.5_crit_edge:      ; preds = %for.cond2.preheader.5
  br label %for.body4.5

for.cond2.preheader.5.cleanup.5_crit_edge:        ; preds = %for.cond2.preheader.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.5

for.body4.5:                                      ; preds = %for.inc.5.for.body4.5_crit_edge, %for.cond2.preheader.5.for.body4.5_crit_edge
  %.pn32.5 = phi ptr [ %.pn.5, %for.inc.5.for.body4.5_crit_edge ], [ %.pn30.5, %for.cond2.preheader.5.for.body4.5_crit_edge ]
  %cpd.5 = getelementptr i8, ptr %.pn32.5, i32 -24
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %50, align 4
  %arrayidx5.5 = getelementptr [6 x ptr], ptr %cpd.5, i32 0, i32 %54
  %55 = ptrtoint ptr %arrayidx5.5 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx5.5, align 4
  %tobool6.not.5 = icmp eq ptr %56, null
  br i1 %tobool6.not.5, label %for.body4.5.for.inc.5_crit_edge, label %if.then7.5

for.body4.5.for.inc.5_crit_edge:                  ; preds = %for.body4.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.5

if.then7.5:                                       ; preds = %for.body4.5
  call void @__sanitizer_cov_trace_pc() #16
  %57 = ptrtoint ptr %cpd_bind_fn.5 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cpd_bind_fn.5, align 4
  tail call void %58(ptr noundef nonnull %56) #14
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then7.5, %for.body4.5.for.inc.5_crit_edge
  %59 = ptrtoint ptr %.pn32.5 to i32
  call void @__asan_load4_noabort(i32 %59)
  %.pn.5 = load ptr, ptr %.pn32.5, align 4
  %cmp3.not.5 = icmp eq ptr %.pn.5, @all_blkcgs
  br i1 %cmp3.not.5, label %for.inc.5.cleanup.5_crit_edge, label %for.inc.5.for.body4.5_crit_edge

for.inc.5.for.body4.5_crit_edge:                  ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body4.5

for.inc.5.cleanup.5_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.5

cleanup.5:                                        ; preds = %for.inc.5.cleanup.5_crit_edge, %for.cond2.preheader.5.cleanup.5_crit_edge, %lor.lhs.false.5.cleanup.5_crit_edge, %cleanup.4.cleanup.5_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @blkcg_pol_mutex) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @blkcg_activate_policy(ptr noundef %q, ptr noundef readonly %pol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %pol, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %blkcg_policy_enabled.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

blkcg_policy_enabled.exit:                        ; preds = %entry
  %0 = ptrtoint ptr %pol to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pol, align 4
  %blkcg_pols.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 34
  %div3.i.i = lshr i32 %1, 5
  %arrayidx.i.i = getelementptr i32, ptr %blkcg_pols.i, i32 %div3.i.i
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %1, 31
  %4 = shl nuw i32 1, %and.i.i
  %5 = and i32 %4, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.i.not = icmp eq i32 %5, 0
  br i1 %tobool1.i.not, label %blkcg_policy_enabled.exit.if.end_crit_edge, label %blkcg_policy_enabled.exit.cleanup111_crit_edge

blkcg_policy_enabled.exit.cleanup111_crit_edge:   ; preds = %blkcg_policy_enabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup111

blkcg_policy_enabled.exit.if.end_crit_edge:       ; preds = %blkcg_policy_enabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %blkcg_policy_enabled.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %mq_ops.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 5
  %6 = ptrtoint ptr %mq_ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mq_ops.i, align 8
  %tobool.i.not = icmp eq ptr %7, null
  br i1 %tobool.i.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @blk_mq_freeze_queue(ptr noundef %q) #14
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %queue_lock = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 14
  %blkg_list = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 36
  %prev = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 36, i32 1
  %pd_alloc_fn = getelementptr inbounds %struct.blkcg_policy, ptr %pol, i32 0, i32 7
  %pd_free_fn = getelementptr inbounds %struct.blkcg_policy, ptr %pol, i32 0, i32 11
  br label %retry

retry:                                            ; preds = %if.end20.retry_crit_edge, %if.end3
  %pinned_blkg.0 = phi ptr [ null, %if.end3 ], [ %blkg.0208, %if.end20.retry_crit_edge ]
  %pd_prealloc.0 = phi ptr [ null, %if.end3 ], [ %call23, %if.end20.retry_crit_edge ]
  tail call void @_raw_spin_lock_irq(ptr noundef %queue_lock) #14
  %8 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn202 = load ptr, ptr %prev, align 4
  %cmp.not204 = icmp eq ptr %.pn202, %blkg_list
  br i1 %cmp.not204, label %retry.for.end_crit_edge, label %retry.for.body_crit_edge

retry.for.body_crit_edge:                         ; preds = %retry
  br label %for.body

retry.for.end_crit_edge:                          ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %retry.for.body_crit_edge
  %.pn206 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn202, %retry.for.body_crit_edge ]
  %pd_prealloc.1205 = phi ptr [ %pd_prealloc.3.ph, %for.inc.for.body_crit_edge ], [ %pd_prealloc.0, %retry.for.body_crit_edge ]
  %blkg.0208 = getelementptr i8, ptr %.pn206, i32 -4
  %pd5 = getelementptr i8, ptr %.pn206, i32 172
  %9 = ptrtoint ptr %pol to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pol, align 4
  %arrayidx = getelementptr [6 x ptr], ptr %pd5, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %if.end7, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end7:                                          ; preds = %for.body
  %cmp8 = icmp eq ptr %blkg.0208, %pinned_blkg.0
  br i1 %cmp8, label %if.end7.if.end11_crit_edge, label %if.else

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %pd_alloc_fn to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pd_alloc_fn, align 4
  %blkcg = getelementptr i8, ptr %.pn206, i32 16
  %15 = ptrtoint ptr %blkcg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %blkcg, align 4
  %call10 = tail call ptr %14(i32 noundef 10240, ptr noundef %q, ptr noundef %16) #14
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.end7.if.end11_crit_edge
  %pd.0 = phi ptr [ %call10, %if.else ], [ %pd_prealloc.1205, %if.end7.if.end11_crit_edge ]
  %pd_prealloc.2 = phi ptr [ %pd_prealloc.1205, %if.else ], [ null, %if.end7.if.end11_crit_edge ]
  %tobool12.not = icmp eq ptr %pd.0, null
  br i1 %tobool12.not, label %if.then13, label %if.end27

if.then13:                                        ; preds = %if.end11
  %tobool14.not = icmp eq ptr %pinned_blkg.0, null
  br i1 %tobool14.not, label %if.then13.if.end16_crit_edge, label %if.then15

if.then13.if.end16_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then15:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  %refcnt.i = getelementptr inbounds %struct.blkcg_gq, ptr %pinned_blkg.0, i32 0, i32 5
  tail call fastcc void @percpu_ref_put(ptr noundef %refcnt.i) #14
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.then13.if.end16_crit_edge
  tail call fastcc void @blkg_get(ptr noundef %blkg.0208)
  tail call void @_raw_spin_unlock_irq(ptr noundef %queue_lock) #14
  %tobool18.not = icmp eq ptr %pd_prealloc.2, null
  br i1 %tobool18.not, label %if.end16.if.end20_crit_edge, label %if.then19

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  %17 = ptrtoint ptr %pd_free_fn to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pd_free_fn, align 4
  tail call void %18(ptr noundef nonnull %pd_prealloc.2) #14
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end16.if.end20_crit_edge
  %19 = ptrtoint ptr %pd_alloc_fn to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pd_alloc_fn, align 4
  %blkcg22 = getelementptr i8, ptr %.pn206, i32 16
  %21 = ptrtoint ptr %blkcg22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %blkcg22, align 4
  %call23 = tail call ptr %20(i32 noundef 3264, ptr noundef %q, ptr noundef %22) #14
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %enomem, label %if.end20.retry_crit_edge

if.end20.retry_crit_edge:                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %retry

if.end27:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %pol to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pol, align 4
  %arrayidx30 = getelementptr [6 x ptr], ptr %pd5, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %pd.0, ptr %arrayidx30, align 4
  %26 = ptrtoint ptr %pd.0 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %blkg.0208, ptr %pd.0, align 4
  %27 = load i32, ptr %pol, align 4
  %plid33 = getelementptr inbounds %struct.blkg_policy_data, ptr %pd.0, i32 0, i32 1
  %28 = ptrtoint ptr %plid33 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %plid33, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end27, %for.body.for.inc_crit_edge
  %pd_prealloc.3.ph = phi ptr [ %pd_prealloc.1205, %for.body.for.inc_crit_edge ], [ %pd_prealloc.2, %if.end27 ]
  %prev36 = getelementptr inbounds %struct.list_head, ptr %.pn206, i32 0, i32 1
  %29 = ptrtoint ptr %prev36 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn = load ptr, ptr %prev36, align 4
  %cmp.not = icmp eq ptr %.pn, %blkg_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %retry.for.end_crit_edge
  %pd_prealloc.1.lcssa = phi ptr [ %pd_prealloc.3.ph, %for.inc.for.end_crit_edge ], [ %pd_prealloc.0, %retry.for.end_crit_edge ]
  %pd_init_fn = getelementptr inbounds %struct.blkcg_policy, ptr %pol, i32 0, i32 8
  %30 = ptrtoint ptr %pd_init_fn to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pd_init_fn, align 4
  %tobool39.not = icmp eq ptr %31, null
  br i1 %tobool39.not, label %for.end.if.end63_crit_edge, label %for.cond46.preheader

for.end.if.end63_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63

for.cond46.preheader:                             ; preds = %for.end
  %32 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn179222 = load ptr, ptr %prev, align 4
  %cmp49.not223 = icmp eq ptr %.pn179222, %blkg_list
  br i1 %cmp49.not223, label %for.cond46.preheader.if.end63_crit_edge, label %for.cond46.preheader.for.body51_crit_edge

for.cond46.preheader.for.body51_crit_edge:        ; preds = %for.cond46.preheader
  br label %for.body51

for.cond46.preheader.if.end63_crit_edge:          ; preds = %for.cond46.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63

for.body51:                                       ; preds = %for.body51.for.body51_crit_edge, %for.cond46.preheader.for.body51_crit_edge
  %.pn179224 = phi ptr [ %.pn179, %for.body51.for.body51_crit_edge ], [ %.pn179222, %for.cond46.preheader.for.body51_crit_edge ]
  %33 = ptrtoint ptr %pd_init_fn to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pd_init_fn, align 4
  %pd53 = getelementptr i8, ptr %.pn179224, i32 172
  %35 = ptrtoint ptr %pol to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pol, align 4
  %arrayidx55 = getelementptr [6 x ptr], ptr %pd53, i32 0, i32 %36
  %37 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx55, align 4
  tail call void %34(ptr noundef %38) #14
  %prev59 = getelementptr inbounds %struct.list_head, ptr %.pn179224, i32 0, i32 1
  %39 = ptrtoint ptr %prev59 to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pn179 = load ptr, ptr %prev59, align 4
  %cmp49.not = icmp eq ptr %.pn179, %blkg_list
  br i1 %cmp49.not, label %for.body51.if.end63_crit_edge, label %for.body51.for.body51_crit_edge

for.body51.for.body51_crit_edge:                  ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body51

for.body51.if.end63_crit_edge:                    ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63

if.end63:                                         ; preds = %for.body51.if.end63_crit_edge, %for.cond46.preheader.if.end63_crit_edge, %for.end.if.end63_crit_edge
  %40 = ptrtoint ptr %pol to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pol, align 4
  %blkcg_pols = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 34
  %rem.i = and i32 %41, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %41, 5
  %add.ptr.i = getelementptr i32, ptr %blkcg_pols, i32 %div2.i
  %42 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %shl.i, %43
  store i32 %or.i, ptr %add.ptr.i, align 4
  br label %out

out:                                              ; preds = %if.end101.out_crit_edge, %enomem.out_crit_edge, %if.end63
  %ret.0 = phi i32 [ 0, %if.end63 ], [ -12, %enomem.out_crit_edge ], [ -12, %if.end101.out_crit_edge ]
  %pinned_blkg.3 = phi ptr [ %pinned_blkg.0, %if.end63 ], [ %blkg.0208, %enomem.out_crit_edge ], [ %blkg.0208, %if.end101.out_crit_edge ]
  %pd_prealloc.4 = phi ptr [ %pd_prealloc.1.lcssa, %if.end63 ], [ null, %enomem.out_crit_edge ], [ null, %if.end101.out_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %queue_lock) #14
  %44 = ptrtoint ptr %mq_ops.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mq_ops.i, align 8
  %tobool.i182.not = icmp eq ptr %45, null
  br i1 %tobool.i182.not, label %out.if.end68_crit_edge, label %if.then67

out.if.end68_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end68

if.then67:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @blk_mq_unfreeze_queue(ptr noundef %q) #14
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %out.if.end68_crit_edge
  %tobool69.not = icmp eq ptr %pinned_blkg.3, null
  br i1 %tobool69.not, label %if.end68.if.end71_crit_edge, label %if.then70

if.end68.if.end71_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71

if.then70:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #16
  %refcnt.i183 = getelementptr inbounds %struct.blkcg_gq, ptr %pinned_blkg.3, i32 0, i32 5
  tail call fastcc void @percpu_ref_put(ptr noundef %refcnt.i183) #14
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %if.end68.if.end71_crit_edge
  %tobool72.not = icmp eq ptr %pd_prealloc.4, null
  br i1 %tobool72.not, label %if.end71.cleanup111_crit_edge, label %if.then73

if.end71.cleanup111_crit_edge:                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup111

if.then73:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  %46 = ptrtoint ptr %pd_free_fn to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pd_free_fn, align 4
  tail call void %47(ptr noundef nonnull %pd_prealloc.4) #14
  br label %cleanup111

enomem:                                           ; preds = %if.end20
  tail call void @_raw_spin_lock_irq(ptr noundef %queue_lock) #14
  %48 = ptrtoint ptr %blkg_list to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pn180219 = load ptr, ptr %blkg_list, align 4
  %cmp84.not220 = icmp eq ptr %.pn180219, %blkg_list
  br i1 %cmp84.not220, label %enomem.out_crit_edge, label %enomem.for.body86_crit_edge

enomem.for.body86_crit_edge:                      ; preds = %enomem
  br label %for.body86

enomem.out_crit_edge:                             ; preds = %enomem
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

for.body86:                                       ; preds = %if.end101.for.body86_crit_edge, %enomem.for.body86_crit_edge
  %.pn180221 = phi ptr [ %.pn180, %if.end101.for.body86_crit_edge ], [ %.pn180219, %enomem.for.body86_crit_edge ]
  %blkcg88 = getelementptr i8, ptr %.pn180221, i32 16
  %49 = ptrtoint ptr %blkcg88 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %blkcg88, align 4
  %lock = getelementptr inbounds %struct.blkcg, ptr %50, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #14
  %pd89 = getelementptr i8, ptr %.pn180221, i32 172
  %51 = ptrtoint ptr %pol to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pol, align 4
  %arrayidx91 = getelementptr [6 x ptr], ptr %pd89, i32 0, i32 %52
  %53 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx91, align 4
  %tobool92.not = icmp eq ptr %54, null
  br i1 %tobool92.not, label %for.body86.if.end101_crit_edge, label %if.then93

for.body86.if.end101_crit_edge:                   ; preds = %for.body86
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end101

if.then93:                                        ; preds = %for.body86
  call void @__sanitizer_cov_trace_pc() #16
  %55 = ptrtoint ptr %pd_free_fn to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pd_free_fn, align 4
  tail call void %56(ptr noundef nonnull %54) #14
  %57 = ptrtoint ptr %pol to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pol, align 4
  %arrayidx100 = getelementptr [6 x ptr], ptr %pd89, i32 0, i32 %58
  %59 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %arrayidx100, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.then93, %for.body86.if.end101_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #14
  %60 = ptrtoint ptr %.pn180221 to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pn180 = load ptr, ptr %.pn180221, align 4
  %cmp84.not = icmp eq ptr %.pn180, %blkg_list
  br i1 %cmp84.not, label %if.end101.out_crit_edge, label %if.end101.for.body86_crit_edge

if.end101.for.body86_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body86

if.end101.out_crit_edge:                          ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

cleanup111:                                       ; preds = %if.then73, %if.end71.cleanup111_crit_edge, %blkcg_policy_enabled.exit.cleanup111_crit_edge
  %retval.0 = phi i32 [ 0, %blkcg_policy_enabled.exit.cleanup111_crit_edge ], [ %ret.0, %if.then73 ], [ %ret.0, %if.end71.cleanup111_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_freeze_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @blkg_get(ptr noundef %blkg) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %refcnt = getelementptr inbounds %struct.blkcg_gq, ptr %blkg, i32 0, i32 5
  %0 = tail call i32 @llvm.read_register.i32(metadata !156) #14
  %and.i.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !168
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i.i.i, label %entry.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

entry.rcu_read_lock.exit.i.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %entry
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #14
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %entry.rcu_read_lock.exit.i.i_crit_edge
  %4 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %refcnt, align 4
  %and.i.i.i = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i1.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i1.i.i, label %do.body1.i.i, label %if.else.i.i, !prof !172

do.body1.i.i:                                     ; preds = %rcu_read_lock.exit.i.i
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !173
  %7 = tail call i32 @llvm.read_register.i32(metadata !156) #14
  %and.i2.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i2.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %12, %5
  %13 = inttoptr i32 %add.i.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add15.i.i = add i32 %15, 1
  store i32 %add15.i.i, ptr %13, align 4
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !174
  %and.i.i.i.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then29.i.i, label %do.body1.i.i.do.end31.i.i_crit_edge, !prof !166

do.body1.i.i.do.end31.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end31.i.i

if.then29.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %do.end31.i.i

do.end31.i.i:                                     ; preds = %if.then29.i.i, %do.body1.i.i.do.end31.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #14, !srcloc !175
  br label %if.end38.i.i

if.else.i.i:                                      ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %data.i.i = getelementptr inbounds %struct.blkcg_gq, ptr %blkg, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %18, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %18, i32 1, i32 3, i32 1) #14
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #14, !srcloc !186
  br label %if.end38.i.i

if.end38.i.i:                                     ; preds = %if.else.i.i, %do.end31.i.i
  %call.i3.i.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i3.i.i, label %if.end38.i.i.percpu_ref_get.exit_crit_edge, label %land.lhs.true.i6.i.i

if.end38.i.i.percpu_ref_get.exit_crit_edge:       ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %percpu_ref_get.exit

land.lhs.true.i6.i.i:                             ; preds = %if.end38.i.i
  %call1.i4.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i.i)
  %tobool.not.i5.i.i = icmp eq i32 %call1.i4.i.i, 0
  br i1 %tobool.not.i5.i.i, label %land.lhs.true.i6.i.i.percpu_ref_get.exit_crit_edge, label %land.lhs.true2.i8.i.i

land.lhs.true.i6.i.i.percpu_ref_get.exit_crit_edge: ; preds = %land.lhs.true.i6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %percpu_ref_get.exit

land.lhs.true2.i8.i.i:                            ; preds = %land.lhs.true.i6.i.i
  %.b4.i7.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i.i, label %land.lhs.true2.i8.i.i.percpu_ref_get.exit_crit_edge, label %if.then.i9.i.i

land.lhs.true2.i8.i.i.percpu_ref_get.exit_crit_edge: ; preds = %land.lhs.true2.i8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %percpu_ref_get.exit

if.then.i9.i.i:                                   ; preds = %land.lhs.true2.i8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #14
  br label %percpu_ref_get.exit

percpu_ref_get.exit:                              ; preds = %if.then.i9.i.i, %land.lhs.true2.i8.i.i.percpu_ref_get.exit_crit_edge, %land.lhs.true.i6.i.i.percpu_ref_get.exit_crit_edge, %if.end38.i.i.percpu_ref_get.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !169
  %20 = tail call i32 @llvm.read_register.i32(metadata !156) #14
  %and.i.i.i.i.i10.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i10.i.i to ptr
  %preempt_count.i.i.i.i11.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i11.i.i, align 4
  %sub.i.i.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i11.i.i, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_unfreeze_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blkcg_deactivate_policy(ptr noundef %q, ptr noundef readonly %pol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %pol, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %blkcg_policy_enabled.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

blkcg_policy_enabled.exit:                        ; preds = %entry
  %0 = ptrtoint ptr %pol to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pol, align 4
  %blkcg_pols.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 34
  %div3.i.i = lshr i32 %1, 5
  %arrayidx.i.i = getelementptr i32, ptr %blkcg_pols.i, i32 %div3.i.i
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %1, 31
  %4 = shl nuw i32 1, %and.i.i
  %5 = and i32 %4, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.i.not = icmp eq i32 %5, 0
  br i1 %tobool1.i.not, label %blkcg_policy_enabled.exit.cleanup_crit_edge, label %if.end

blkcg_policy_enabled.exit.cleanup_crit_edge:      ; preds = %blkcg_policy_enabled.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %blkcg_policy_enabled.exit
  %mq_ops.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 5
  %6 = ptrtoint ptr %mq_ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mq_ops.i, align 8
  %tobool.i.not = icmp eq ptr %7, null
  br i1 %tobool.i.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @blk_mq_freeze_queue(ptr noundef %q) #14
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %queue_lock = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 14
  tail call void @_raw_spin_lock_irq(ptr noundef %queue_lock) #14
  %8 = ptrtoint ptr %pol to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pol, align 4
  %rem.i = and i32 %9, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %9, 5
  %add.ptr.i = getelementptr i32, ptr %blkcg_pols.i, i32 %div2.i
  %neg.i = xor i32 %shl.i, -1
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %11, %neg.i
  store i32 %and.i, ptr %add.ptr.i, align 4
  %blkg_list = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 36
  %12 = ptrtoint ptr %blkg_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn59 = load ptr, ptr %blkg_list, align 4
  %cmp.not60 = icmp eq ptr %.pn59, %blkg_list
  br i1 %cmp.not60, label %if.end3.for.end_crit_edge, label %for.body.lr.ph

if.end3.for.end_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end3
  %pd_offline_fn = getelementptr inbounds %struct.blkcg_policy, ptr %pol, i32 0, i32 10
  %pd_free_fn = getelementptr inbounds %struct.blkcg_policy, ptr %pol, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %if.end21.for.body_crit_edge, %for.body.lr.ph
  %.pn61 = phi ptr [ %.pn59, %for.body.lr.ph ], [ %.pn, %if.end21.for.body_crit_edge ]
  %blkcg5 = getelementptr i8, ptr %.pn61, i32 16
  %13 = ptrtoint ptr %blkcg5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %blkcg5, align 4
  %lock = getelementptr inbounds %struct.blkcg, ptr %14, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #14
  %pd = getelementptr i8, ptr %.pn61, i32 172
  %15 = ptrtoint ptr %pol to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pol, align 4
  %arrayidx = getelementptr [6 x ptr], ptr %pd, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %for.body.if.end21_crit_edge, label %if.then7

for.body.if.end21_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.then7:                                         ; preds = %for.body
  %19 = ptrtoint ptr %pd_offline_fn to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pd_offline_fn, align 4
  %tobool8.not = icmp eq ptr %20, null
  br i1 %tobool8.not, label %if.then7.if.end14_crit_edge, label %if.then9

if.then7.if.end14_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then9:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %20(ptr noundef nonnull %18) #14
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %if.then7.if.end14_crit_edge
  %21 = ptrtoint ptr %pd_free_fn to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pd_free_fn, align 4
  %23 = ptrtoint ptr %pol to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pol, align 4
  %arrayidx17 = getelementptr [6 x ptr], ptr %pd, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx17, align 4
  tail call void %22(ptr noundef %26) #14
  %27 = ptrtoint ptr %pol to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pol, align 4
  %arrayidx20 = getelementptr [6 x ptr], ptr %pd, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %arrayidx20, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end14, %for.body.if.end21_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #14
  %30 = ptrtoint ptr %.pn61 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn = load ptr, ptr %.pn61, align 4
  %cmp.not = icmp eq ptr %.pn, %blkg_list
  br i1 %cmp.not, label %if.end21.for.end_crit_edge, label %if.end21.for.body_crit_edge

if.end21.for.body_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end21.for.end_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %if.end21.for.end_crit_edge, %if.end3.for.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %queue_lock) #14
  %31 = ptrtoint ptr %mq_ops.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mq_ops.i, align 8
  %tobool.i58.not = icmp eq ptr %32, null
  br i1 %tobool.i58.not, label %for.end.cleanup_crit_edge, label %if.then30

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then30:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @blk_mq_unfreeze_queue(ptr noundef %q) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %for.end.cleanup_crit_edge, %blkcg_policy_enabled.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @blkcg_policy_register(ptr noundef %pol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @blkcg_pol_register_mutex, i32 noundef 0) #14
  tail call void @mutex_lock_nested(ptr noundef nonnull @blkcg_pol_mutex, i32 noundef 0) #14
  %0 = load ptr, ptr @blkcg_policy, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %for.inc

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

for.inc:                                          ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @blkcg_policy, i32 0, i32 1), align 4
  %tobool.not.1 = icmp eq ptr %1, null
  br i1 %tobool.not.1, label %for.inc.if.end3_crit_edge, label %for.inc.1

for.inc.if.end3_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

for.inc.1:                                        ; preds = %for.inc
  %2 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @blkcg_policy, i32 0, i32 2), align 4
  %tobool.not.2 = icmp eq ptr %2, null
  br i1 %tobool.not.2, label %for.inc.1.if.end3_crit_edge, label %for.inc.2

for.inc.1.if.end3_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

for.inc.2:                                        ; preds = %for.inc.1
  %3 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @blkcg_policy, i32 0, i32 3), align 4
  %tobool.not.3 = icmp eq ptr %3, null
  br i1 %tobool.not.3, label %for.inc.2.if.end3_crit_edge, label %for.inc.3

for.inc.2.if.end3_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

for.inc.3:                                        ; preds = %for.inc.2
  %4 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @blkcg_policy, i32 0, i32 4), align 4
  %tobool.not.4 = icmp eq ptr %4, null
  br i1 %tobool.not.4, label %for.inc.3.if.end3_crit_edge, label %for.inc.4

for.inc.3.if.end3_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

for.inc.4:                                        ; preds = %for.inc.3
  %5 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @blkcg_policy, i32 0, i32 5), align 4
  %tobool.not.5 = icmp eq ptr %5, null
  br i1 %tobool.not.5, label %for.inc.4.if.end3_crit_edge, label %for.inc.5

for.inc.4.if.end3_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end3

for.inc.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #20
  br label %err_unlock

if.end3:                                          ; preds = %for.inc.4.if.end3_crit_edge, %for.inc.3.if.end3_crit_edge, %for.inc.2.if.end3_crit_edge, %for.inc.1.if.end3_crit_edge, %for.inc.if.end3_crit_edge, %entry.if.end3_crit_edge
  %i.0209.lcssa = phi i32 [ 0, %entry.if.end3_crit_edge ], [ 1, %for.inc.if.end3_crit_edge ], [ 2, %for.inc.1.if.end3_crit_edge ], [ 3, %for.inc.2.if.end3_crit_edge ], [ 4, %for.inc.3.if.end3_crit_edge ], [ 5, %for.inc.4.if.end3_crit_edge ]
  %cpd_alloc_fn = getelementptr inbounds %struct.blkcg_policy, ptr %pol, i32 0, i32 3
  %6 = ptrtoint ptr %cpd_alloc_fn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cpd_alloc_fn, align 4
  %tobool4.not = icmp eq ptr %7, null
  %cpd_free_fn = getelementptr inbounds %struct.blkcg_policy, ptr %pol, i32 0, i32 5
  %8 = ptrtoint ptr %cpd_free_fn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cpd_free_fn, align 4
  %tobool5.not = icmp eq ptr %9, null
  %xor203 = xor i1 %tobool4.not, %tobool5.not
  br i1 %xor203, label %if.end3.err_unlock_crit_edge, label %lor.lhs.false

if.end3.err_unlock_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_unlock

lor.lhs.false:                                    ; preds = %if.end3
  %pd_alloc_fn = getelementptr inbounds %struct.blkcg_policy, ptr %pol, i32 0, i32 7
  %10 = ptrtoint ptr %pd_alloc_fn to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pd_alloc_fn, align 4
  %tobool9.not = icmp eq ptr %11, null
  %pd_free_fn = getelementptr inbounds %struct.blkcg_policy, ptr %pol, i32 0, i32 11
  %12 = ptrtoint ptr %pd_free_fn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pd_free_fn, align 4
  %tobool12.not = icmp eq ptr %13, null
  %xor15204 = xor i1 %tobool9.not, %tobool12.not
  br i1 %xor15204, label %lor.lhs.false.err_unlock_crit_edge, label %if.end18

lor.lhs.false.err_unlock_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_unlock

if.end18:                                         ; preds = %lor.lhs.false
  %14 = ptrtoint ptr %pol to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %i.0209.lcssa, ptr %pol, align 4
  %arrayidx20 = getelementptr [6 x ptr], ptr @blkcg_policy, i32 0, i32 %i.0209.lcssa
  %15 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %pol, ptr %arrayidx20, align 4
  br i1 %tobool4.not, label %if.end18.if.end51_crit_edge, label %for.cond25.preheader

if.end18.if.end51_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

for.cond25.preheader:                             ; preds = %if.end18
  %.pn210 = load ptr, ptr @all_blkcgs, align 4
  %cmp26.not212 = icmp eq ptr %.pn210, @all_blkcgs
  br i1 %cmp26.not212, label %for.cond25.preheader.if.end51_crit_edge, label %for.body29.lr.ph

for.cond25.preheader.if.end51_crit_edge:          ; preds = %for.cond25.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

for.body29.lr.ph:                                 ; preds = %for.cond25.preheader
  %cpd_init_fn = getelementptr inbounds %struct.blkcg_policy, ptr %pol, i32 0, i32 4
  br label %for.body29

for.body29:                                       ; preds = %cleanup.for.body29_crit_edge, %for.body29.lr.ph
  %.pn213 = phi ptr [ %.pn210, %for.body29.lr.ph ], [ %.pn, %cleanup.for.body29_crit_edge ]
  %16 = ptrtoint ptr %cpd_alloc_fn to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cpd_alloc_fn, align 4
  %call31 = tail call ptr %17(i32 noundef 3264) #14
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %err_free_cpds, label %if.end34

if.end34:                                         ; preds = %for.body29
  %blkcg.0214 = getelementptr i8, ptr %.pn213, i32 -300
  %cpd35 = getelementptr i8, ptr %.pn213, i32 -24
  %18 = ptrtoint ptr %pol to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pol, align 4
  %arrayidx37 = getelementptr [6 x ptr], ptr %cpd35, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call31, ptr %arrayidx37, align 4
  %21 = ptrtoint ptr %call31 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %blkcg.0214, ptr %call31, align 4
  %22 = load i32, ptr %pol, align 4
  %plid40 = getelementptr inbounds %struct.blkcg_policy_data, ptr %call31, i32 0, i32 1
  %23 = ptrtoint ptr %plid40 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %plid40, align 4
  %24 = ptrtoint ptr %cpd_init_fn to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cpd_init_fn, align 4
  %tobool41.not = icmp eq ptr %25, null
  br i1 %tobool41.not, label %if.end34.cleanup_crit_edge, label %if.then42

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then42:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %25(ptr noundef nonnull %call31) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %if.end34.cleanup_crit_edge
  %26 = ptrtoint ptr %.pn213 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn = load ptr, ptr %.pn213, align 4
  %cmp26.not = icmp eq ptr %.pn, @all_blkcgs
  br i1 %cmp26.not, label %cleanup.if.end51_crit_edge, label %cleanup.for.body29_crit_edge

cleanup.for.body29_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body29

cleanup.if.end51_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

if.end51:                                         ; preds = %cleanup.if.end51_crit_edge, %for.cond25.preheader.if.end51_crit_edge, %if.end18.if.end51_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @blkcg_pol_mutex) #14
  %dfl_cftypes = getelementptr inbounds %struct.blkcg_policy, ptr %pol, i32 0, i32 1
  %27 = ptrtoint ptr %dfl_cftypes to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dfl_cftypes, align 4
  %tobool52.not = icmp eq ptr %28, null
  br i1 %tobool52.not, label %if.end51.if.end85_crit_edge, label %if.then53

if.end51.if.end85_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end85

if.then53:                                        ; preds = %if.end51
  %call55 = tail call i32 @cgroup_add_dfl_cftypes(ptr noundef nonnull @io_cgrp_subsys, ptr noundef nonnull %28) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.then53.if.end85_crit_edge, label %do.end71, !prof !172

if.then53.if.end85_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end85

do.end71:                                         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1496, i32 noundef 9, ptr noundef null) #14
  br label %if.end85

if.end85:                                         ; preds = %do.end71, %if.then53.if.end85_crit_edge, %if.end51.if.end85_crit_edge
  %legacy_cftypes = getelementptr inbounds %struct.blkcg_policy, ptr %pol, i32 0, i32 2
  %29 = ptrtoint ptr %legacy_cftypes to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %legacy_cftypes, align 4
  %tobool86.not = icmp eq ptr %30, null
  br i1 %tobool86.not, label %if.end85.cleanup157_crit_edge, label %if.then87

if.end85.cleanup157_crit_edge:                    ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup157

if.then87:                                        ; preds = %if.end85
  %call90 = tail call i32 @cgroup_add_legacy_cftypes(ptr noundef nonnull @io_cgrp_subsys, ptr noundef nonnull %30) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.then87.cleanup157_crit_edge, label %do.end107, !prof !172

if.then87.cleanup157_crit_edge:                   ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup157

do.end107:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1499, i32 noundef 9, ptr noundef null) #14
  br label %cleanup157

err_free_cpds:                                    ; preds = %for.body29
  %31 = ptrtoint ptr %cpd_free_fn to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cpd_free_fn, align 4
  %tobool123.not = icmp eq ptr %32, null
  br i1 %tobool123.not, label %err_free_cpds.if.end154_crit_edge, label %for.cond128.preheader

err_free_cpds.if.end154_crit_edge:                ; preds = %err_free_cpds
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end154

for.cond128.preheader:                            ; preds = %err_free_cpds
  %.pn205215 = load ptr, ptr @all_blkcgs, align 4
  %cmp130.not216 = icmp eq ptr %.pn205215, @all_blkcgs
  br i1 %cmp130.not216, label %for.cond128.preheader.if.end154_crit_edge, label %for.cond128.preheader.for.body133_crit_edge

for.cond128.preheader.for.body133_crit_edge:      ; preds = %for.cond128.preheader
  br label %for.body133

for.cond128.preheader.if.end154_crit_edge:        ; preds = %for.cond128.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end154

for.body133:                                      ; preds = %for.inc147.for.body133_crit_edge, %for.cond128.preheader.for.body133_crit_edge
  %.pn205217 = phi ptr [ %.pn205, %for.inc147.for.body133_crit_edge ], [ %.pn205215, %for.cond128.preheader.for.body133_crit_edge ]
  %cpd134 = getelementptr i8, ptr %.pn205217, i32 -24
  %33 = ptrtoint ptr %pol to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pol, align 4
  %arrayidx136 = getelementptr [6 x ptr], ptr %cpd134, i32 0, i32 %34
  %35 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx136, align 4
  %tobool137.not = icmp eq ptr %36, null
  br i1 %tobool137.not, label %for.body133.for.inc147_crit_edge, label %if.then138

for.body133.for.inc147_crit_edge:                 ; preds = %for.body133
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc147

if.then138:                                       ; preds = %for.body133
  call void @__sanitizer_cov_trace_pc() #16
  %37 = ptrtoint ptr %cpd_free_fn to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cpd_free_fn, align 4
  tail call void %38(ptr noundef nonnull %36) #14
  %39 = ptrtoint ptr %pol to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pol, align 4
  %arrayidx145 = getelementptr [6 x ptr], ptr %cpd134, i32 0, i32 %40
  %41 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %arrayidx145, align 4
  br label %for.inc147

for.inc147:                                       ; preds = %if.then138, %for.body133.for.inc147_crit_edge
  %42 = ptrtoint ptr %.pn205217 to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pn205 = load ptr, ptr %.pn205217, align 4
  %cmp130.not = icmp eq ptr %.pn205, @all_blkcgs
  br i1 %cmp130.not, label %for.inc147.if.end154_crit_edge, label %for.inc147.for.body133_crit_edge

for.inc147.for.body133_crit_edge:                 ; preds = %for.inc147
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body133

for.inc147.if.end154_crit_edge:                   ; preds = %for.inc147
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end154

if.end154:                                        ; preds = %for.inc147.if.end154_crit_edge, %for.cond128.preheader.if.end154_crit_edge, %err_free_cpds.if.end154_crit_edge
  %43 = ptrtoint ptr %pol to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pol, align 4
  %arrayidx156 = getelementptr [6 x ptr], ptr @blkcg_policy, i32 0, i32 %44
  %45 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %arrayidx156, align 4
  br label %err_unlock

err_unlock:                                       ; preds = %if.end154, %lor.lhs.false.err_unlock_crit_edge, %if.end3.err_unlock_crit_edge, %for.inc.5
  tail call void @mutex_unlock(ptr noundef nonnull @blkcg_pol_mutex) #14
  br label %cleanup157

cleanup157:                                       ; preds = %err_unlock, %do.end107, %if.then87.cleanup157_crit_edge, %if.end85.cleanup157_crit_edge
  %retval.0 = phi i32 [ -28, %err_unlock ], [ 0, %if.then87.cleanup157_crit_edge ], [ 0, %do.end107 ], [ 0, %if.end85.cleanup157_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @blkcg_pol_register_mutex) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cgroup_add_dfl_cftypes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cgroup_add_legacy_cftypes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blkcg_policy_unregister(ptr noundef readonly %pol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @blkcg_pol_register_mutex, i32 noundef 0) #14
  %0 = ptrtoint ptr %pol to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pol, align 4
  %arrayidx = getelementptr [6 x ptr], ptr @blkcg_policy, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %cmp.not = icmp eq ptr %3, %pol
  br i1 %cmp.not, label %if.end21.critedge, label %do.end, !prof !172

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1532, i32 noundef 9, ptr noundef null) #14
  br label %out_unlock

if.end21.critedge:                                ; preds = %entry
  %dfl_cftypes = getelementptr inbounds %struct.blkcg_policy, ptr %pol, i32 0, i32 1
  %4 = ptrtoint ptr %dfl_cftypes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dfl_cftypes, align 4
  %tobool22.not = icmp eq ptr %5, null
  br i1 %tobool22.not, label %if.end21.critedge.if.end25_crit_edge, label %if.then23

if.end21.critedge.if.end25_crit_edge:             ; preds = %if.end21.critedge
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.then23:                                        ; preds = %if.end21.critedge
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 @cgroup_rm_cftypes(ptr noundef nonnull %5) #14
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end21.critedge.if.end25_crit_edge
  %legacy_cftypes = getelementptr inbounds %struct.blkcg_policy, ptr %pol, i32 0, i32 2
  %6 = ptrtoint ptr %legacy_cftypes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %legacy_cftypes, align 4
  %tobool26.not = icmp eq ptr %7, null
  br i1 %tobool26.not, label %if.end25.if.end30_crit_edge, label %if.then27

if.end25.if.end30_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  %call29 = tail call i32 @cgroup_rm_cftypes(ptr noundef nonnull %7) #14
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end25.if.end30_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @blkcg_pol_mutex, i32 noundef 0) #14
  %cpd_free_fn = getelementptr inbounds %struct.blkcg_policy, ptr %pol, i32 0, i32 5
  %8 = ptrtoint ptr %cpd_free_fn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cpd_free_fn, align 4
  %tobool31.not = icmp eq ptr %9, null
  br i1 %tobool31.not, label %if.end30.if.end53_crit_edge, label %for.cond.preheader

if.end30.if.end53_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end53

for.cond.preheader:                               ; preds = %if.end30
  %.pn74 = load ptr, ptr @all_blkcgs, align 4
  %cmp34.not75 = icmp eq ptr %.pn74, @all_blkcgs
  br i1 %cmp34.not75, label %for.cond.preheader.if.end53_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end53_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end53

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %.pn76 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn74, %for.cond.preheader.for.body_crit_edge ]
  %cpd = getelementptr i8, ptr %.pn76, i32 -24
  %10 = ptrtoint ptr %pol to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pol, align 4
  %arrayidx38 = getelementptr [6 x ptr], ptr %cpd, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx38, align 4
  %tobool39.not = icmp eq ptr %13, null
  br i1 %tobool39.not, label %for.body.for.inc_crit_edge, label %if.then40

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then40:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %cpd_free_fn to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cpd_free_fn, align 4
  tail call void %15(ptr noundef nonnull %13) #14
  %16 = ptrtoint ptr %pol to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pol, align 4
  %arrayidx47 = getelementptr [6 x ptr], ptr %cpd, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %arrayidx47, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then40, %for.body.for.inc_crit_edge
  %19 = ptrtoint ptr %.pn76 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn = load ptr, ptr %.pn76, align 4
  %cmp34.not = icmp eq ptr %.pn, @all_blkcgs
  br i1 %cmp34.not, label %for.inc.if.end53_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.if.end53_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end53

if.end53:                                         ; preds = %for.inc.if.end53_crit_edge, %for.cond.preheader.if.end53_crit_edge, %if.end30.if.end53_crit_edge
  %20 = ptrtoint ptr %pol to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pol, align 4
  %arrayidx55 = getelementptr [6 x ptr], ptr @blkcg_policy, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %arrayidx55, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @blkcg_pol_mutex) #14
  br label %out_unlock

out_unlock:                                       ; preds = %if.end53, %do.end
  tail call void @mutex_unlock(ptr noundef nonnull @blkcg_pol_register_mutex) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cgroup_rm_cftypes(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @__blkcg_punt_bio_submit(ptr noundef %bio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_blkg = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 12
  %0 = ptrtoint ptr %bi_blkg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_blkg, align 8
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %2 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bi_opf, align 8
  %4 = and i32 %3, -4194305
  store i32 %4, ptr %bi_opf, align 8
  %parent = getelementptr inbounds %struct.blkcg_gq, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %async_bio_lock = getelementptr inbounds %struct.blkcg_gq, ptr %1, i32 0, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %async_bio_lock) #14
  %7 = ptrtoint ptr %bio to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %bio, align 8
  %tail.i = getelementptr inbounds %struct.blkcg_gq, ptr %1, i32 0, i32 11, i32 1
  %8 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %bio, ptr %9, align 8
  br label %bio_list_add.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %async_bios = getelementptr inbounds %struct.blkcg_gq, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %async_bios to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %bio, ptr %async_bios, align 4
  br label %bio_list_add.exit

bio_list_add.exit:                                ; preds = %if.else.i, %if.then.i
  %12 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %bio, ptr %tail.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %async_bio_lock) #14
  %13 = load ptr, ptr @blkcg_punt_bio_wq, align 4
  %async_bio_work = getelementptr inbounds %struct.blkcg_gq, ptr %1, i32 0, i32 12
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %13, ptr noundef %async_bio_work) #14
  br label %cleanup

cleanup:                                          ; preds = %bio_list_add.exit, %entry.cleanup_crit_edge
  %14 = xor i1 %tobool.not, true
  ret i1 %14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blkcg_maybe_throttle_current() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !156) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %throttle_queue = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 207
  %4 = ptrtoint ptr %throttle_queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %throttle_queue, align 4
  %use_memdelay3 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 65
  %6 = ptrtoint ptr %use_memdelay3 to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %use_memdelay3, align 8
  %7 = and i16 %bf.load, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool = icmp ne i16 %7, 0
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %throttle_queue to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %throttle_queue, align 4
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %use_memdelay10 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 65
  %11 = ptrtoint ptr %use_memdelay10 to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load11 = load i16, ptr %use_memdelay10, align 8
  %bf.clear12 = and i16 %bf.load11, -257
  store i16 %bf.clear12, ptr %use_memdelay10, align 8
  %12 = tail call i32 @llvm.read_register.i32(metadata !156) #14
  %and.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %15, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !168
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %call13 = tail call ptr @kthread_blkcg() #14
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.else, label %rcu_read_lock.exit.if.end24_crit_edge

rcu_read_lock.exit.if.end24_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

if.else:                                          ; preds = %rcu_read_lock.exit
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 8
  %cgroups.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 164
  %18 = ptrtoint ptr %cgroups.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %cgroups.i, align 16
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @cgroup_mutex, i32 0, i32 5), i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i45 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i45, label %lor.lhs.false.i, label %if.else.if.end21_crit_edge

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

lor.lhs.false.i:                                  ; preds = %if.else
  %call.i2.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @css_set_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i)
  %tobool3.not.i = icmp eq i32 %call.i2.i, 0
  br i1 %tobool3.not.i, label %lor.lhs.false4.i, label %lor.lhs.false.i.if.end21_crit_edge

lor.lhs.false.i.if.end21_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 3
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags.i, align 4
  %and.i46 = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i46)
  %tobool5.not.i = icmp eq i32 %and.i46, 0
  br i1 %tobool5.not.i, label %lor.lhs.false6.i, label %lor.lhs.false4.i.if.end21_crit_edge

lor.lhs.false4.i.if.end21_crit_edge:              ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false4.i
  %call7.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i47, label %lor.lhs.false6.i.if.end21_crit_edge

lor.lhs.false6.i.if.end21_crit_edge:              ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

land.lhs.true.i47:                                ; preds = %lor.lhs.false6.i
  %call9.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %land.lhs.true.i47.if.end21_crit_edge, label %land.lhs.true11.i

land.lhs.true.i47.if.end21_crit_edge:             ; preds = %land.lhs.true.i47
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

land.lhs.true11.i:                                ; preds = %land.lhs.true.i47
  %.b1.i = load i1, ptr @task_css.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true11.i.if.end21_crit_edge, label %if.then.i48

land.lhs.true11.i.if.end21_crit_edge:             ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.then.i48:                                      ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @task_css.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 494, ptr noundef nonnull @.str.12) #14
  br label %if.end21

if.end21:                                         ; preds = %if.then.i48, %land.lhs.true11.i.if.end21_crit_edge, %land.lhs.true.i47.if.end21_crit_edge, %lor.lhs.false6.i.if.end21_crit_edge, %lor.lhs.false4.i.if.end21_crit_edge, %lor.lhs.false.i.if.end21_crit_edge, %if.else.if.end21_crit_edge
  %arrayidx.i = getelementptr [14 x ptr], ptr %19, i32 0, i32 3
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %tobool22.not = icmp eq ptr %23, null
  br i1 %tobool22.not, label %if.end21.out_crit_edge, label %if.end21.if.end24_crit_edge

if.end21.if.end24_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

if.end21.out_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end24:                                         ; preds = %if.end21.if.end24_crit_edge, %rcu_read_lock.exit.if.end24_crit_edge
  %blkcg.075 = phi ptr [ %23, %if.end21.if.end24_crit_edge ], [ %call13, %rcu_read_lock.exit.if.end24_crit_edge ]
  %call.i49 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49)
  %tobool.not.i50 = icmp eq i32 %call.i49, 0
  br i1 %tobool.not.i50, label %land.rhs.i, label %if.end24.if.end29.i_crit_edge

if.end24.if.end29.i_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29.i

land.rhs.i:                                       ; preds = %if.end24
  %.b40.i = load i1, ptr @blkg_lookup.__already_done, align 1
  br i1 %.b40.i, label %land.rhs.i.if.end29.i_crit_edge, label %if.then.i51, !prof !172

land.rhs.i.if.end29.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29.i

if.then.i51:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @blkg_lookup.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 358, i32 noundef 9, ptr noundef null) #14
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then.i51, %land.rhs.i.if.end29.i_crit_edge, %if.end24.if.end29.i_crit_edge
  %cmp.i.i = icmp eq ptr %blkcg.075, @blkcg_root
  br i1 %cmp.i.i, label %blkg_lookup.exit, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end29.i
  %blkg_hint.i.i = getelementptr inbounds %struct.blkcg, ptr %blkcg.075, i32 0, i32 4
  %24 = ptrtoint ptr %blkg_hint.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %blkg_hint.i.i, align 4
  %call.i.i52 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i52)
  %tobool.not.i.i = icmp eq i32 %call.i.i52, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.end.i.i.do.end9.i.i_crit_edge

if.end.i.i.do.end9.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.do.end9.i.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.do.end9.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9.i.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b25.i.i = load i1, ptr @__blkg_lookup.__warned, align 1
  br i1 %.b25.i.i, label %land.lhs.true4.i.i.do.end9.i.i_crit_edge, label %if.then6.i.i

land.lhs.true4.i.i.do.end9.i.i_crit_edge:         ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9.i.i

if.then6.i.i:                                     ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__blkg_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 340, ptr noundef nonnull @.str.12) #14
  br label %do.end9.i.i

do.end9.i.i:                                      ; preds = %if.then6.i.i, %land.lhs.true4.i.i.do.end9.i.i_crit_edge, %land.lhs.true.i.i.do.end9.i.i_crit_edge, %if.end.i.i.do.end9.i.i_crit_edge
  %tobool11.not.i.i = icmp eq ptr %25, null
  br i1 %tobool11.not.i.i, label %do.end9.i.i.if.end16.i.i_crit_edge, label %land.lhs.true12.i.i

do.end9.i.i.if.end16.i.i_crit_edge:               ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16.i.i

land.lhs.true12.i.i:                              ; preds = %do.end9.i.i
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  %cmp14.i.i = icmp eq ptr %27, %5
  br i1 %cmp14.i.i, label %land.lhs.true12.i.i.if.end28_crit_edge, label %land.lhs.true12.i.i.if.end16.i.i_crit_edge

land.lhs.true12.i.i.if.end16.i.i_crit_edge:       ; preds = %land.lhs.true12.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16.i.i

land.lhs.true12.i.i.if.end28_crit_edge:           ; preds = %land.lhs.true12.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.end16.i.i:                                     ; preds = %land.lhs.true12.i.i.if.end16.i.i_crit_edge, %do.end9.i.i.if.end16.i.i_crit_edge
  %blkg_tree.i.i.i = getelementptr inbounds %struct.blkcg, ptr %blkcg.075, i32 0, i32 3
  %id.i.i.i = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 13
  %28 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id.i.i.i, align 8
  %call.i.i.i = tail call ptr @radix_tree_lookup(ptr noundef %blkg_tree.i.i.i, i32 noundef %29) #14
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end16.i.i.out_crit_edge, label %land.lhs.true.i.i.i

if.end16.i.i.out_crit_edge:                       ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

land.lhs.true.i.i.i:                              ; preds = %if.end16.i.i
  %30 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call.i.i.i, align 8
  %cmp.i.i.not.i = icmp eq ptr %31, %5
  br i1 %cmp.i.i.not.i, label %land.lhs.true.i.i.i.if.end28_crit_edge, label %land.lhs.true.i.i.i.out_crit_edge

land.lhs.true.i.i.i.out_crit_edge:                ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

land.lhs.true.i.i.i.if.end28_crit_edge:           ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

blkg_lookup.exit:                                 ; preds = %if.end29.i
  %root_blkg.i.i = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 35
  %32 = ptrtoint ptr %root_blkg.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %root_blkg.i.i, align 8
  %tobool26.not = icmp eq ptr %33, null
  br i1 %tobool26.not, label %blkg_lookup.exit.out_crit_edge, label %blkg_lookup.exit.if.end28_crit_edge

blkg_lookup.exit.if.end28_crit_edge:              ; preds = %blkg_lookup.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

blkg_lookup.exit.out_crit_edge:                   ; preds = %blkg_lookup.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end28:                                         ; preds = %blkg_lookup.exit.if.end28_crit_edge, %land.lhs.true.i.i.i.if.end28_crit_edge, %land.lhs.true12.i.i.if.end28_crit_edge
  %retval.0.i.i82 = phi ptr [ %33, %blkg_lookup.exit.if.end28_crit_edge ], [ %25, %land.lhs.true12.i.i.if.end28_crit_edge ], [ %call.i.i.i, %land.lhs.true.i.i.i.if.end28_crit_edge ]
  %call29 = tail call fastcc zeroext i1 @blkg_tryget(ptr noundef nonnull %retval.0.i.i82)
  br i1 %call29, label %if.end31, label %if.end28.out_crit_edge

if.end28.out_crit_edge:                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end31:                                         ; preds = %if.end28
  %call.i53 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i53, label %if.end31.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i56

if.end31.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i56:                                ; preds = %if.end31
  %call1.i54 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i54)
  %tobool.not.i55 = icmp eq i32 %call1.i54, 0
  br i1 %tobool.not.i55, label %land.lhs.true.i56.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i58

land.lhs.true.i56.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i56
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i58:                               ; preds = %land.lhs.true.i56
  %.b4.i57 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i57, label %land.lhs.true2.i58.rcu_read_unlock.exit_crit_edge, label %if.then.i59

land.lhs.true2.i58.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i58
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i59:                                      ; preds = %land.lhs.true2.i58
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i59, %land.lhs.true2.i58.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i56.rcu_read_unlock.exit_crit_edge, %if.end31.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !169
  %34 = tail call i32 @llvm.read_register.i32(metadata !156) #14
  %and.i.i.i.i.i60 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i.i.i60 to ptr
  %preempt_count.i.i.i.i61 = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i.i.i61, align 4
  %sub.i.i.i = add i32 %37, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i61, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  tail call fastcc void @blkcg_maybe_throttle_blkg(ptr noundef nonnull %retval.0.i.i82, i1 noundef zeroext %tobool)
  %refcnt.i = getelementptr inbounds %struct.blkcg_gq, ptr %retval.0.i.i82, i32 0, i32 5
  tail call fastcc void @percpu_ref_put(ptr noundef %refcnt.i) #14
  br label %cleanup.sink.split

out:                                              ; preds = %if.end28.out_crit_edge, %blkg_lookup.exit.out_crit_edge, %land.lhs.true.i.i.i.out_crit_edge, %if.end16.i.i.out_crit_edge, %if.end21.out_crit_edge
  %call.i62 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i62, label %out.rcu_read_unlock.exit72_crit_edge, label %land.lhs.true.i65

out.rcu_read_unlock.exit72_crit_edge:             ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit72

land.lhs.true.i65:                                ; preds = %out
  %call1.i63 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i63)
  %tobool.not.i64 = icmp eq i32 %call1.i63, 0
  br i1 %tobool.not.i64, label %land.lhs.true.i65.rcu_read_unlock.exit72_crit_edge, label %land.lhs.true2.i67

land.lhs.true.i65.rcu_read_unlock.exit72_crit_edge: ; preds = %land.lhs.true.i65
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit72

land.lhs.true2.i67:                               ; preds = %land.lhs.true.i65
  %.b4.i66 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i66, label %land.lhs.true2.i67.rcu_read_unlock.exit72_crit_edge, label %if.then.i68

land.lhs.true2.i67.rcu_read_unlock.exit72_crit_edge: ; preds = %land.lhs.true2.i67
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit72

if.then.i68:                                      ; preds = %land.lhs.true2.i67
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #14
  br label %rcu_read_unlock.exit72

rcu_read_unlock.exit72:                           ; preds = %if.then.i68, %land.lhs.true2.i67.rcu_read_unlock.exit72_crit_edge, %land.lhs.true.i65.rcu_read_unlock.exit72_crit_edge, %out.rcu_read_unlock.exit72_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !169
  %38 = tail call i32 @llvm.read_register.i32(metadata !156) #14
  %and.i.i.i.i.i69 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i69 to ptr
  %preempt_count.i.i.i.i70 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i.i70 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i.i70, align 4
  %sub.i.i.i71 = add i32 %41, -1
  store volatile i32 %sub.i.i.i71, ptr %preempt_count.i.i.i.i70, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %rcu_read_unlock.exit72, %rcu_read_unlock.exit
  tail call void @blk_put_queue(ptr noundef nonnull %5) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_blkcg() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @blkg_tryget(ptr noundef %blkg) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %tobool.not = icmp eq ptr %blkg, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.end

land.rhs:                                         ; preds = %entry
  %refcnt = getelementptr inbounds %struct.blkcg_gq, ptr %blkg, i32 0, i32 5
  %0 = tail call i32 @llvm.read_register.i32(metadata !156) #14
  %and.i.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !168
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i.i.i, label %land.rhs.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

land.rhs.rcu_read_lock.exit.i.i_crit_edge:        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %land.rhs
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #14
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.rhs.rcu_read_lock.exit.i.i_crit_edge
  %4 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %refcnt, align 4
  %and.i.i.i = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i1.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i1.i.i, label %do.body1.i.i, label %if.else.i.i, !prof !172

do.body1.i.i:                                     ; preds = %rcu_read_lock.exit.i.i
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !173
  %7 = tail call i32 @llvm.read_register.i32(metadata !156) #14
  %and.i2.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i2.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %12, %5
  %13 = inttoptr i32 %add.i.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add15.i.i = add i32 %15, 1
  store i32 %add15.i.i, ptr %13, align 4
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !174
  %and.i.i.i.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then29.i.i, label %do.body1.i.i.do.end31.i.i_crit_edge, !prof !166

do.body1.i.i.do.end31.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end31.i.i

if.then29.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %do.end31.i.i

do.end31.i.i:                                     ; preds = %if.then29.i.i, %do.body1.i.i.do.end31.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #14, !srcloc !175
  br label %if.end39.i.i

if.else.i.i:                                      ; preds = %rcu_read_lock.exit.i.i
  %data.i.i = getelementptr inbounds %struct.blkcg_gq, ptr %blkg, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %18, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !176
  tail call void @llvm.prefetch.p0(ptr %18, i32 1, i32 3, i32 1) #14
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 0, i32 1, ptr elementtype(i32) %18) #14, !srcloc !177
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.else.i.i.atomic_long_add_unless.exit.i.i_crit_edge, label %do.end11.i.i.i.i.i.i

if.else.i.i.atomic_long_add_unless.exit.i.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %atomic_long_add_unless.exit.i.i

do.end11.i.i.i.i.i.i:                             ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !178
  br label %atomic_long_add_unless.exit.i.i

atomic_long_add_unless.exit.i.i:                  ; preds = %do.end11.i.i.i.i.i.i, %if.else.i.i.atomic_long_add_unless.exit.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp ne i32 %asmresult.i.i.i.i.i.i, 0
  br label %if.end39.i.i

if.end39.i.i:                                     ; preds = %atomic_long_add_unless.exit.i.i, %do.end31.i.i
  %ret.0.off0.i.i = phi i1 [ true, %do.end31.i.i ], [ %cmp.i.i.i.i.i, %atomic_long_add_unless.exit.i.i ]
  %call.i3.i.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i3.i.i, label %if.end39.i.i.percpu_ref_tryget.exit_crit_edge, label %land.lhs.true.i6.i.i

if.end39.i.i.percpu_ref_tryget.exit_crit_edge:    ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %percpu_ref_tryget.exit

land.lhs.true.i6.i.i:                             ; preds = %if.end39.i.i
  %call1.i4.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i.i)
  %tobool.not.i5.i.i = icmp eq i32 %call1.i4.i.i, 0
  br i1 %tobool.not.i5.i.i, label %land.lhs.true.i6.i.i.percpu_ref_tryget.exit_crit_edge, label %land.lhs.true2.i8.i.i

land.lhs.true.i6.i.i.percpu_ref_tryget.exit_crit_edge: ; preds = %land.lhs.true.i6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %percpu_ref_tryget.exit

land.lhs.true2.i8.i.i:                            ; preds = %land.lhs.true.i6.i.i
  %.b4.i7.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i.i, label %land.lhs.true2.i8.i.i.percpu_ref_tryget.exit_crit_edge, label %if.then.i9.i.i

land.lhs.true2.i8.i.i.percpu_ref_tryget.exit_crit_edge: ; preds = %land.lhs.true2.i8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %percpu_ref_tryget.exit

if.then.i9.i.i:                                   ; preds = %land.lhs.true2.i8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #14
  br label %percpu_ref_tryget.exit

percpu_ref_tryget.exit:                           ; preds = %if.then.i9.i.i, %land.lhs.true2.i8.i.i.percpu_ref_tryget.exit_crit_edge, %land.lhs.true.i6.i.i.percpu_ref_tryget.exit_crit_edge, %if.end39.i.i.percpu_ref_tryget.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !169
  %20 = tail call i32 @llvm.read_register.i32(metadata !156) #14
  %and.i.i.i.i.i10.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i10.i.i to ptr
  %preempt_count.i.i.i.i11.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i11.i.i, align 4
  %sub.i.i.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i11.i.i, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  br label %land.end

land.end:                                         ; preds = %percpu_ref_tryget.exit, %entry.land.end_crit_edge
  %24 = phi i1 [ false, %entry.land.end_crit_edge ], [ %ret.0.off0.i.i, %percpu_ref_tryget.exit ]
  ret i1 %24
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @blkcg_maybe_throttle_blkg(ptr noundef %blkg, i1 noundef zeroext %use_memdelay) #0 align 64 {
entry:
  %pflags = alloca i32, align 4
  %exp = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pflags) #14
  %0 = ptrtoint ptr %pflags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %pflags, align 4, !annotation !170
  %call = tail call i64 @ktime_get() #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %exp) #14
  %parent120 = getelementptr inbounds %struct.blkcg_gq, ptr %blkg, i32 0, i32 4
  %1 = ptrtoint ptr %parent120 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent120, align 8
  %tobool.not121 = icmp eq ptr %2, null
  br i1 %tobool.not121, label %entry.cleanup_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

while.body:                                       ; preds = %if.end10.while.body_crit_edge, %entry.while.body_crit_edge
  %parent125 = phi ptr [ %parent, %if.end10.while.body_crit_edge ], [ %parent120, %entry.while.body_crit_edge ]
  %blkg.addr.0124 = phi ptr [ %7, %if.end10.while.body_crit_edge ], [ %blkg, %entry.while.body_crit_edge ]
  %clamp.0.off0123 = phi i1 [ %clamp.2.off0, %if.end10.while.body_crit_edge ], [ true, %entry.while.body_crit_edge ]
  %delay_nsec.0122 = phi i64 [ %delay_nsec.2, %if.end10.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %use_delay2 = getelementptr inbounds %struct.blkcg_gq, ptr %blkg.addr.0124, i32 0, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %use_delay2, i32 noundef 4) #14
  %3 = ptrtoint ptr %use_delay2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %use_delay2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool4.not = icmp eq i32 %4, 0
  br i1 %tobool4.not, label %while.body.if.end10_crit_edge, label %if.then

while.body.if.end10_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @blkcg_scale_delay(ptr noundef %blkg.addr.0124, i64 noundef %call)
  %delay_nsec5 = getelementptr inbounds %struct.blkcg_gq, ptr %blkg.addr.0124, i32 0, i32 14
  %call.i.i119 = tail call zeroext i1 @__kasan_check_read(ptr noundef %delay_nsec5, i32 noundef 8) #14
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %delay_nsec5) #14
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %delay_nsec.0122)
  %cmp = icmp ugt i64 %call.i, %delay_nsec.0122
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp8 = icmp sgt i32 %4, 0
  %5 = tail call i64 @llvm.umax.i64(i64 %call.i, i64 %delay_nsec.0122)
  %spec.select118 = select i1 %cmp, i1 %cmp8, i1 %clamp.0.off0123
  br label %if.end10

if.end10:                                         ; preds = %if.then, %while.body.if.end10_crit_edge
  %delay_nsec.2 = phi i64 [ %5, %if.then ], [ %delay_nsec.0122, %while.body.if.end10_crit_edge ]
  %clamp.2.off0 = phi i1 [ %spec.select118, %if.then ], [ %clamp.0.off0123, %while.body.if.end10_crit_edge ]
  %6 = ptrtoint ptr %parent125 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent125, align 8
  %parent = getelementptr inbounds %struct.blkcg_gq, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %while.end, label %if.end10.while.body_crit_edge

if.end10.while.body_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.end:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %delay_nsec.2)
  %tobool12.not = icmp eq i64 %delay_nsec.2, 0
  br i1 %tobool12.not, label %while.end.cleanup_crit_edge, label %if.end14

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end14:                                         ; preds = %while.end
  %10 = tail call i64 @llvm.umin.i64(i64 %delay_nsec.2, i64 250000000)
  %delay_nsec.3 = select i1 %clamp.2.off0, i64 %10, i64 %delay_nsec.2
  br i1 %use_memdelay, label %if.then20, label %if.end14.if.end21_crit_edge

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.then20:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  call void @psi_memstall_enter(ptr noundef nonnull %pflags) #14
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end14.if.end21_crit_edge
  %add = add i64 %delay_nsec.3, %call
  %11 = ptrtoint ptr %exp to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %add, ptr %exp, align 8
  %call22 = call i32 @io_schedule_prepare() #14
  br label %__here

__here:                                           ; preds = %fatal_signal_pending.exit.__here_crit_edge, %if.end21
  %12 = call i32 @llvm.read_register.i32(metadata !156) #14
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 212
  %16 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 ptrtoint (ptr blockaddress(@blkcg_maybe_throttle_blkg, %__here) to i32), ptr %task_state_change, align 4
  %17 = load ptr, ptr %task, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 258, ptr %17, align 128
  %call79 = call i32 @schedule_hrtimeout(ptr noundef nonnull %exp, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %__here.do.end90_crit_edge, label %do.cond83

__here.do.end90_crit_edge:                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end90

do.cond83:                                        ; preds = %__here
  %19 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %stack.i.i.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  %and1.i.i.i.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not.i, label %do.cond83.fatal_signal_pending.exit_crit_edge, label %land.rhs.i

do.cond83.fatal_signal_pending.exit_crit_edge:    ; preds = %do.cond83
  call void @__sanitizer_cov_trace_pc() #16
  br label %fatal_signal_pending.exit

land.rhs.i:                                       ; preds = %do.cond83
  call void @__sanitizer_cov_trace_pc() #16
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 116, i32 1
  %25 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %signal.i.i, align 4
  %27 = lshr i32 %26, 8
  %.lobit.i = and i32 %27, 1
  br label %fatal_signal_pending.exit

fatal_signal_pending.exit:                        ; preds = %land.rhs.i, %do.cond83.fatal_signal_pending.exit_crit_edge
  %28 = phi i32 [ 0, %do.cond83.fatal_signal_pending.exit_crit_edge ], [ %.lobit.i, %land.rhs.i ]
  %tobool87.not = icmp eq i32 %28, 0
  br i1 %tobool87.not, label %fatal_signal_pending.exit.__here_crit_edge, label %fatal_signal_pending.exit.do.end90_crit_edge

fatal_signal_pending.exit.do.end90_crit_edge:     ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end90

fatal_signal_pending.exit.__here_crit_edge:       ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

do.end90:                                         ; preds = %fatal_signal_pending.exit.do.end90_crit_edge, %__here.do.end90_crit_edge
  call void @io_schedule_finish(i32 noundef %call22) #14
  br i1 %use_memdelay, label %if.then92, label %do.end90.cleanup_crit_edge

do.end90.cleanup_crit_edge:                       ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then92:                                        ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #16
  call void @psi_memstall_leave(ptr noundef nonnull %pflags) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then92, %do.end90.cleanup_crit_edge, %while.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %exp) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pflags) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_put_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blkcg_schedule_throttle(ptr noundef %q, i1 noundef zeroext %use_memdelay) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !156) #14
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
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge, !prof !172

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  %throttle_queue = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 207
  %6 = ptrtoint ptr %throttle_queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %throttle_queue, align 4
  %cmp.not = icmp eq ptr %7, %q
  br i1 %cmp.not, label %if.end.if.end21_crit_edge, label %if.then5

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.then5:                                         ; preds = %if.end
  %call6 = tail call zeroext i1 @blk_get_queue(ptr noundef %q) #14
  br i1 %call6, label %if.end8, label %if.then5.return_crit_edge

if.then5.return_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end8:                                          ; preds = %if.then5
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %throttle_queue11 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 207
  %10 = ptrtoint ptr %throttle_queue11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %throttle_queue11, align 4
  %tobool12.not = icmp eq ptr %11, null
  br i1 %tobool12.not, label %if.end8.if.end17_crit_edge, label %if.then13

if.end8.if.end17_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @blk_put_queue(ptr noundef nonnull %11) #14
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end8.if.end17_crit_edge
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %throttle_queue20 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 207
  %14 = ptrtoint ptr %throttle_queue20 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %q, ptr %throttle_queue20, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end17, %if.end.if.end21_crit_edge
  br i1 %use_memdelay, label %if.then23, label %if.end21.if.end28_crit_edge

if.end21.if.end28_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %task, align 8
  %use_memdelay27 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 65
  %17 = ptrtoint ptr %use_memdelay27 to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load = load i16, ptr %use_memdelay27, align 8
  %bf.set = or i16 %bf.load, 256
  store i16 %bf.set, ptr %use_memdelay27, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %if.end21.if.end28_crit_edge
  %18 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %stack.i.i, align 4
  %call.i.i.i = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %21) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end28.return_crit_edge

if.end28.return_crit_edge:                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then.i:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kick_process(ptr noundef %19) #14
  br label %return

return:                                           ; preds = %if.then.i, %if.end28.return_crit_edge, %if.then5.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @blk_get_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blkcg_add_delay(ptr noundef %blkg, i64 noundef %now, i64 noundef %delta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %use_delay = getelementptr inbounds %struct.blkcg_gq, ptr %blkg, i32 0, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %use_delay, i32 noundef 4) #14
  %0 = ptrtoint ptr %use_delay to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %use_delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %land.rhs, label %if.end37.critedge

land.rhs:                                         ; preds = %entry
  %.b42 = load i1, ptr @blkcg_add_delay.__already_done, align 1
  br i1 %.b42, label %land.rhs.return_crit_edge, label %if.then, !prof !172

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @blkcg_add_delay.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1794, i32 noundef 9, ptr noundef null) #14
  br label %return

if.end37.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @blkcg_scale_delay(ptr noundef %blkg, i64 noundef %now)
  %delay_nsec = getelementptr inbounds %struct.blkcg_gq, ptr %blkg, i32 0, i32 14
  %call.i.i44 = tail call zeroext i1 @__kasan_check_write(ptr noundef %delay_nsec, i32 noundef 8) #14
  tail call void @generic_atomic64_add(i64 noundef %delta, ptr noundef %delay_nsec) #14
  br label %return

return:                                           ; preds = %if.end37.critedge, %if.then, %land.rhs.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @blkcg_scale_delay(ptr noundef %blkg, i64 noundef %now) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %delay_start = getelementptr inbounds %struct.blkcg_gq, ptr %blkg, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %delay_start, i32 noundef 8) #14
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %delay_start) #14
  %use_delay = getelementptr inbounds %struct.blkcg_gq, ptr %blkg, i32 0, i32 13
  %call.i.i60 = tail call zeroext i1 @__kasan_check_read(ptr noundef %use_delay, i32 noundef 4) #14
  %0 = ptrtoint ptr %use_delay to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %use_delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = sub i64 1000000000, %now
  %sub = add i64 %add, %call.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp2 = icmp slt i64 %sub, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %call.i.i61 = tail call zeroext i1 @__kasan_check_write(ptr noundef %delay_start, i32 noundef 8) #14
  %call.i62 = tail call i64 @generic_atomic64_cmpxchg(ptr noundef %delay_start, i64 noundef %call.i, i64 noundef %now) #14
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i62, i64 %call.i)
  %cmp5 = icmp eq i64 %call.i62, %call.i
  br i1 %cmp5, label %if.then6, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then6:                                         ; preds = %land.lhs.true
  %delay_nsec = getelementptr inbounds %struct.blkcg_gq, ptr %blkg, i32 0, i32 14
  %call.i.i63 = tail call zeroext i1 @__kasan_check_read(ptr noundef %delay_nsec, i32 noundef 8) #14
  %call.i64 = tail call i64 @generic_atomic64_read(ptr noundef %delay_nsec) #14
  %last_delay = getelementptr inbounds %struct.blkcg_gq, ptr %blkg, i32 0, i32 16
  %2 = ptrtoint ptr %last_delay to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %last_delay, align 8
  %sub9 = sub i64 %now, %call.i
  %4 = tail call i64 @llvm.umin.i64(i64 %3, i64 %sub9)
  %call.i.i65 = tail call zeroext i1 @__kasan_check_read(ptr noundef %use_delay, i32 noundef 4) #14
  %5 = ptrtoint ptr %use_delay to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %use_delay, align 4
  %last_use = getelementptr inbounds %struct.blkcg_gq, ptr %blkg, i32 0, i32 17
  %7 = ptrtoint ptr %last_use to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %last_use, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp13 = icmp slt i32 %6, %8
  br i1 %cmp13, label %if.then14, label %if.then6.if.end22_crit_edge

if.then6.if.end22_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

if.then14:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %last_delay to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %last_delay, align 8
  %shr = lshr i64 %10, 1
  %11 = tail call i64 @llvm.umax.i64(i64 %4, i64 %shr)
  br label %if.end22

if.end22:                                         ; preds = %if.then14, %if.then6.if.end22_crit_edge
  %sub8.0 = phi i64 [ %11, %if.then14 ], [ %4, %if.then6.if.end22_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i64, i64 %sub8.0)
  %cmp23 = icmp ult i64 %call.i64, %sub8.0
  %call.i.i66 = tail call zeroext i1 @__kasan_check_write(ptr noundef %delay_nsec, i32 noundef 8) #14
  br i1 %cmp23, label %if.then25, label %if.else, !prof !166

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @generic_atomic64_set(ptr noundef %delay_nsec, i64 noundef 0) #14
  br label %if.end31

if.else:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @generic_atomic64_sub(i64 noundef %sub8.0, ptr noundef %delay_nsec) #14
  %sub29 = sub i64 %call.i64, %sub8.0
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then25
  %storemerge = phi i64 [ %sub29, %if.else ], [ 0, %if.then25 ]
  %12 = ptrtoint ptr %last_delay to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %storemerge, ptr %last_delay, align 8
  %13 = ptrtoint ptr %last_use to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %6, ptr %last_use, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bio_associate_blkg_from_css(ptr nocapture noundef %bio, ptr noundef %css) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_blkg = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 12
  %0 = ptrtoint ptr %bi_blkg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_blkg, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %refcnt.i = getelementptr inbounds %struct.blkcg_gq, ptr %1, i32 0, i32 5
  tail call fastcc void @percpu_ref_put(ptr noundef %refcnt.i) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool2.not = icmp eq ptr %css, null
  br i1 %tobool2.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %parent = getelementptr inbounds %struct.cgroup_subsys_state, ptr %css, i32 0, i32 12
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %land.lhs.true.if.else_crit_edge, label %if.then4

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then4:                                         ; preds = %land.lhs.true
  %4 = tail call i32 @llvm.read_register.i32(metadata !156) #14
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !168
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i.i, label %if.then4.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then4.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then4
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #14
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then4.rcu_read_lock.exit.i_crit_edge
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %8 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bi_bdev.i, align 4
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %9, i32 0, i32 18
  %10 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bd_queue.i.i, align 4
  %call.i7.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7.i)
  %tobool.not.i8.i = icmp eq i32 %call.i7.i, 0
  br i1 %tobool.not.i8.i, label %land.rhs.i.i, label %rcu_read_lock.exit.i.if.end29.i.i_crit_edge

rcu_read_lock.exit.i.if.end29.i.i_crit_edge:      ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29.i.i

land.rhs.i.i:                                     ; preds = %rcu_read_lock.exit.i
  %.b99.i.i = load i1, ptr @blkg_lookup_create.__already_done, align 1
  br i1 %.b99.i.i, label %land.rhs.i.i.if.end29.i.i_crit_edge, label %if.then.i9.i, !prof !172

land.rhs.i.i.if.end29.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29.i.i

if.then.i9.i:                                     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @blkg_lookup_create.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 334, i32 noundef 9, ptr noundef null) #14
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.then.i9.i, %land.rhs.i.i.if.end29.i.i_crit_edge, %rcu_read_lock.exit.i.if.end29.i.i_crit_edge
  %call.i.i.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.rhs.i.i.i, label %if.end29.i.i.if.end29.i.i.i_crit_edge

if.end29.i.i.if.end29.i.i.i_crit_edge:            ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.end29.i.i
  %.b40.i.i.i = load i1, ptr @blkg_lookup.__already_done, align 1
  br i1 %.b40.i.i.i, label %land.rhs.i.i.i.if.end29.i.i.i_crit_edge, label %if.then.i.i.i, !prof !172

land.rhs.i.i.i.if.end29.i.i.i_crit_edge:          ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29.i.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @blkg_lookup.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 358, i32 noundef 9, ptr noundef null) #14
  br label %if.end29.i.i.i

if.end29.i.i.i:                                   ; preds = %if.then.i.i.i, %land.rhs.i.i.i.if.end29.i.i.i_crit_edge, %if.end29.i.i.if.end29.i.i.i_crit_edge
  %cmp.i.i.i.i = icmp eq ptr %css, @blkcg_root
  br i1 %cmp.i.i.i.i, label %blkg_lookup.exit.i.i, label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.end29.i.i.i
  %blkg_hint.i.i.i.i = getelementptr inbounds %struct.blkcg, ptr %css, i32 0, i32 4
  %12 = ptrtoint ptr %blkg_hint.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %blkg_hint.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i, label %if.end.i.i.i.i.do.end9.i.i.i.i_crit_edge

if.end.i.i.i.i.do.end9.i.i.i.i_crit_edge:         ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end.i.i.i.i
  %call2.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %call2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %land.lhs.true.i.i.i.i.do.end9.i.i.i.i_crit_edge, label %land.lhs.true4.i.i.i.i

land.lhs.true.i.i.i.i.do.end9.i.i.i.i_crit_edge:  ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9.i.i.i.i

land.lhs.true4.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b25.i.i.i.i = load i1, ptr @__blkg_lookup.__warned, align 1
  br i1 %.b25.i.i.i.i, label %land.lhs.true4.i.i.i.i.do.end9.i.i.i.i_crit_edge, label %if.then6.i.i.i.i

land.lhs.true4.i.i.i.i.do.end9.i.i.i.i_crit_edge: ; preds = %land.lhs.true4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9.i.i.i.i

if.then6.i.i.i.i:                                 ; preds = %land.lhs.true4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__blkg_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 340, ptr noundef nonnull @.str.12) #14
  br label %do.end9.i.i.i.i

do.end9.i.i.i.i:                                  ; preds = %if.then6.i.i.i.i, %land.lhs.true4.i.i.i.i.do.end9.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.do.end9.i.i.i.i_crit_edge, %if.end.i.i.i.i.do.end9.i.i.i.i_crit_edge
  %tobool11.not.i.i.i.i = icmp eq ptr %13, null
  br i1 %tobool11.not.i.i.i.i, label %do.end9.i.i.i.i.if.end16.i.i.i.i_crit_edge, label %land.lhs.true12.i.i.i.i

do.end9.i.i.i.i.if.end16.i.i.i.i_crit_edge:       ; preds = %do.end9.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16.i.i.i.i

land.lhs.true12.i.i.i.i:                          ; preds = %do.end9.i.i.i.i
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %cmp14.i.i.i.i = icmp eq ptr %15, %11
  br i1 %cmp14.i.i.i.i, label %land.lhs.true12.i.i.i.i.while.body.i.preheader_crit_edge, label %land.lhs.true12.i.i.i.i.if.end16.i.i.i.i_crit_edge

land.lhs.true12.i.i.i.i.if.end16.i.i.i.i_crit_edge: ; preds = %land.lhs.true12.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16.i.i.i.i

land.lhs.true12.i.i.i.i.while.body.i.preheader_crit_edge: ; preds = %land.lhs.true12.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.preheader

if.end16.i.i.i.i:                                 ; preds = %land.lhs.true12.i.i.i.i.if.end16.i.i.i.i_crit_edge, %do.end9.i.i.i.i.if.end16.i.i.i.i_crit_edge
  %blkg_tree.i.i.i.i.i = getelementptr inbounds %struct.blkcg, ptr %css, i32 0, i32 3
  %id.i.i.i.i.i = getelementptr inbounds %struct.request_queue, ptr %11, i32 0, i32 13
  %16 = ptrtoint ptr %id.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id.i.i.i.i.i, align 8
  %call.i.i.i.i.i = tail call ptr @radix_tree_lookup(ptr noundef %blkg_tree.i.i.i.i.i, i32 noundef %17) #14
  %tobool.not.i.i.i.i.i = icmp eq ptr %call.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i.i, label %if.end16.i.i.i.i.do.body42.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i

if.end16.i.i.i.i.do.body42.i.i_crit_edge:         ; preds = %if.end16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body42.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.end16.i.i.i.i
  %18 = ptrtoint ptr %call.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i.i.i.i.i, align 8
  %cmp.i.i.not.i.i.i = icmp eq ptr %19, %11
  br i1 %cmp.i.i.not.i.i.i, label %land.lhs.true.i.i.i.i.i.while.body.i.preheader_crit_edge, label %land.lhs.true.i.i.i.i.i.do.body42.i.i_crit_edge

land.lhs.true.i.i.i.i.i.do.body42.i.i_crit_edge:  ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body42.i.i

land.lhs.true.i.i.i.i.i.while.body.i.preheader_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.preheader

blkg_lookup.exit.i.i:                             ; preds = %if.end29.i.i.i
  %root_blkg.i.i.i.i = getelementptr inbounds %struct.request_queue, ptr %11, i32 0, i32 35
  %20 = ptrtoint ptr %root_blkg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %root_blkg.i.i.i.i, align 8
  %tobool38.not.i.i = icmp eq ptr %21, null
  br i1 %tobool38.not.i.i, label %blkg_lookup.exit.i.i.do.body42.i.i_crit_edge, label %blkg_lookup.exit.i.i.while.body.i.preheader_crit_edge

blkg_lookup.exit.i.i.while.body.i.preheader_crit_edge: ; preds = %blkg_lookup.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.preheader

blkg_lookup.exit.i.i.do.body42.i.i_crit_edge:     ; preds = %blkg_lookup.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body42.i.i

do.body42.i.i:                                    ; preds = %blkg_lookup.exit.i.i.do.body42.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.do.body42.i.i_crit_edge, %if.end16.i.i.i.i.do.body42.i.i_crit_edge
  %queue_lock.i.i = getelementptr inbounds %struct.request_queue, ptr %11, i32 0, i32 14
  %call45.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock.i.i) #14
  %call50.i.i = tail call fastcc ptr @__blkg_lookup(ptr noundef nonnull %css, ptr noundef %11, i1 noundef zeroext true) #14
  %tobool51.not.i.i = icmp eq ptr %call50.i.i, null
  br i1 %tobool51.not.i.i, label %while.cond.preheader.i.i, label %blkg_lookup_create.exit.thread25.i

blkg_lookup_create.exit.thread25.i:               ; preds = %do.body42.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock.i.i, i32 noundef %call45.i.i) #14
  br label %while.body.i.preheader

while.cond.preheader.i.i:                         ; preds = %do.body42.i.i
  %root_blkg.i.i = getelementptr inbounds %struct.request_queue, ptr %11, i32 0, i32 35
  %id.i.i.i.i = getelementptr inbounds %struct.request_queue, ptr %11, i32 0, i32 13
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.end.i.i.while.cond.i.i_crit_edge, %while.cond.preheader.i.i
  %22 = ptrtoint ptr %root_blkg.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %root_blkg.i.i, align 8
  %24 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %24)
  %parent.0123.i.i = load ptr, ptr %parent, align 8
  %tobool56.not124.i.i = icmp eq ptr %parent.0123.i.i, null
  br i1 %tobool56.not124.i.i, label %while.cond.i.i.while.end.i.i_crit_edge, label %while.cond.i.i.while.body57.i.i_crit_edge

while.cond.i.i.while.body57.i.i_crit_edge:        ; preds = %while.cond.i.i
  br label %while.body57.i.i

while.cond.i.i.while.end.i.i_crit_edge:           ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i.i

while.body57.i.i:                                 ; preds = %if.end61.i.i.while.body57.i.i_crit_edge, %while.cond.i.i.while.body57.i.i_crit_edge
  %parent.0127.i.i = phi ptr [ %parent.0.i.i, %if.end61.i.i.while.body57.i.i_crit_edge ], [ %parent.0123.i.i, %while.cond.i.i.while.body57.i.i_crit_edge ]
  %pos.0125.i.i = phi ptr [ %parent.0127.i.i, %if.end61.i.i.while.body57.i.i_crit_edge ], [ %css, %while.cond.i.i.while.body57.i.i_crit_edge ]
  %cmp.i.i.i = icmp eq ptr %parent.0127.i.i, @blkcg_root
  br i1 %cmp.i.i.i, label %__blkg_lookup.exit.i.i, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %while.body57.i.i
  %blkg_hint.i.i.i = getelementptr inbounds %struct.blkcg, ptr %parent.0127.i.i, i32 0, i32 4
  %25 = ptrtoint ptr %blkg_hint.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %blkg_hint.i.i.i, align 4
  %call.i101.i.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101.i.i)
  %tobool.not.i102.i.i = icmp eq i32 %call.i101.i.i, 0
  br i1 %tobool.not.i102.i.i, label %land.lhs.true.i.i.i, label %if.end.i.i.i.do.end9.i.i.i_crit_edge

if.end.i.i.i.do.end9.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i.i
  %call2.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %land.lhs.true.i.i.i.do.end9.i.i.i_crit_edge, label %land.lhs.true4.i.i.i

land.lhs.true.i.i.i.do.end9.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9.i.i.i

land.lhs.true4.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b25.i.i.i = load i1, ptr @__blkg_lookup.__warned, align 1
  br i1 %.b25.i.i.i, label %land.lhs.true4.i.i.i.do.end9.i.i.i_crit_edge, label %if.then6.i.i.i

land.lhs.true4.i.i.i.do.end9.i.i.i_crit_edge:     ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9.i.i.i

if.then6.i.i.i:                                   ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__blkg_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 340, ptr noundef nonnull @.str.12) #14
  br label %do.end9.i.i.i

do.end9.i.i.i:                                    ; preds = %if.then6.i.i.i, %land.lhs.true4.i.i.i.do.end9.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.end9.i.i.i_crit_edge, %if.end.i.i.i.do.end9.i.i.i_crit_edge
  %tobool11.not.i.i.i = icmp eq ptr %26, null
  br i1 %tobool11.not.i.i.i, label %do.end9.i.i.i.if.end16.i.i.i_crit_edge, label %land.lhs.true12.i.i.i

do.end9.i.i.i.if.end16.i.i.i_crit_edge:           ; preds = %do.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16.i.i.i

land.lhs.true12.i.i.i:                            ; preds = %do.end9.i.i.i
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 8
  %cmp14.i.i.i = icmp eq ptr %28, %11
  br i1 %cmp14.i.i.i, label %land.lhs.true12.i.i.i.while.end.i.i_crit_edge, label %land.lhs.true12.i.i.i.if.end16.i.i.i_crit_edge

land.lhs.true12.i.i.i.if.end16.i.i.i_crit_edge:   ; preds = %land.lhs.true12.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16.i.i.i

land.lhs.true12.i.i.i.while.end.i.i_crit_edge:    ; preds = %land.lhs.true12.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i.i

if.end16.i.i.i:                                   ; preds = %land.lhs.true12.i.i.i.if.end16.i.i.i_crit_edge, %do.end9.i.i.i.if.end16.i.i.i_crit_edge
  %blkg_tree.i.i.i.i = getelementptr inbounds %struct.blkcg, ptr %parent.0127.i.i, i32 0, i32 3
  %29 = ptrtoint ptr %id.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %id.i.i.i.i, align 8
  %call.i.i103.i.i = tail call ptr @radix_tree_lookup(ptr noundef %blkg_tree.i.i.i.i, i32 noundef %30) #14
  %tobool.not.i.i104.i.i = icmp eq ptr %call.i.i103.i.i, null
  br i1 %tobool.not.i.i104.i.i, label %if.end16.i.i.i.if.end61.i.i_crit_edge, label %land.lhs.true.i.i106.i.i

if.end16.i.i.i.if.end61.i.i_crit_edge:            ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end61.i.i

land.lhs.true.i.i106.i.i:                         ; preds = %if.end16.i.i.i
  %31 = ptrtoint ptr %call.i.i103.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i.i103.i.i, align 8
  %cmp.i.i105.not.i.i = icmp eq ptr %32, %11
  br i1 %cmp.i.i105.not.i.i, label %land.lhs.true.i.i106.i.i.while.end.i.i_crit_edge, label %land.lhs.true.i.i106.i.i.if.end61.i.i_crit_edge

land.lhs.true.i.i106.i.i.if.end61.i.i_crit_edge:  ; preds = %land.lhs.true.i.i106.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end61.i.i

land.lhs.true.i.i106.i.i.while.end.i.i_crit_edge: ; preds = %land.lhs.true.i.i106.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i.i

__blkg_lookup.exit.i.i:                           ; preds = %while.body57.i.i
  %33 = ptrtoint ptr %root_blkg.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %root_blkg.i.i, align 8
  %tobool59.not.i.i = icmp eq ptr %34, null
  br i1 %tobool59.not.i.i, label %__blkg_lookup.exit.i.i.if.end61.i.i_crit_edge, label %__blkg_lookup.exit.i.i.while.end.i.i_crit_edge

__blkg_lookup.exit.i.i.while.end.i.i_crit_edge:   ; preds = %__blkg_lookup.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i.i

__blkg_lookup.exit.i.i.if.end61.i.i_crit_edge:    ; preds = %__blkg_lookup.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end61.i.i

if.end61.i.i:                                     ; preds = %__blkg_lookup.exit.i.i.if.end61.i.i_crit_edge, %land.lhs.true.i.i106.i.i.if.end61.i.i_crit_edge, %if.end16.i.i.i.if.end61.i.i_crit_edge
  %parent.0.in.i.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %parent.0127.i.i, i32 0, i32 12
  %35 = ptrtoint ptr %parent.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %parent.0.i.i = load ptr, ptr %parent.0.in.i.i, align 8
  %tobool56.not.i.i = icmp eq ptr %parent.0.i.i, null
  br i1 %tobool56.not.i.i, label %if.end61.i.i.while.end.i.i_crit_edge, label %if.end61.i.i.while.body57.i.i_crit_edge

if.end61.i.i.while.body57.i.i_crit_edge:          ; preds = %if.end61.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body57.i.i

if.end61.i.i.while.end.i.i_crit_edge:             ; preds = %if.end61.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %if.end61.i.i.while.end.i.i_crit_edge, %__blkg_lookup.exit.i.i.while.end.i.i_crit_edge, %land.lhs.true.i.i106.i.i.while.end.i.i_crit_edge, %land.lhs.true12.i.i.i.while.end.i.i_crit_edge, %while.cond.i.i.while.end.i.i_crit_edge
  %pos.0.lcssa.i.i = phi ptr [ %css, %while.cond.i.i.while.end.i.i_crit_edge ], [ %pos.0125.i.i, %land.lhs.true.i.i106.i.i.while.end.i.i_crit_edge ], [ %pos.0125.i.i, %land.lhs.true12.i.i.i.while.end.i.i_crit_edge ], [ %pos.0125.i.i, %__blkg_lookup.exit.i.i.while.end.i.i_crit_edge ], [ %parent.0127.i.i, %if.end61.i.i.while.end.i.i_crit_edge ]
  %ret_blkg.0.i.i = phi ptr [ %23, %while.cond.i.i.while.end.i.i_crit_edge ], [ %call.i.i103.i.i, %land.lhs.true.i.i106.i.i.while.end.i.i_crit_edge ], [ %26, %land.lhs.true12.i.i.i.while.end.i.i_crit_edge ], [ %34, %__blkg_lookup.exit.i.i.while.end.i.i_crit_edge ], [ %23, %if.end61.i.i.while.end.i.i_crit_edge ]
  %call63.i.i = tail call fastcc ptr @blkg_create(ptr noundef %pos.0.lcssa.i.i, ptr noundef %11, ptr noundef null) #14
  %cmp.i108.i.i = icmp ugt ptr %call63.i.i, inttoptr (i32 -4096 to ptr)
  %cmp67.i.i = icmp eq ptr %pos.0.lcssa.i.i, %css
  %36 = or i1 %cmp67.i.i, %cmp.i108.i.i
  br i1 %36, label %blkg_lookup_create.exit.i, label %while.end.i.i.while.cond.i.i_crit_edge

while.end.i.i.while.cond.i.i_crit_edge:           ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i.i

blkg_lookup_create.exit.i:                        ; preds = %while.end.i.i
  %blkg.0.le.i.i = select i1 %cmp.i108.i.i, ptr %ret_blkg.0.i.i, ptr %call63.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock.i.i, i32 noundef %call45.i.i) #14
  %tobool.not19.i = icmp eq ptr %blkg.0.le.i.i, null
  br i1 %tobool.not19.i, label %blkg_lookup_create.exit.i.while.end.i_crit_edge, label %blkg_lookup_create.exit.i.while.body.i.preheader_crit_edge

blkg_lookup_create.exit.i.while.body.i.preheader_crit_edge: ; preds = %blkg_lookup_create.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i.preheader

blkg_lookup_create.exit.i.while.end.i_crit_edge:  ; preds = %blkg_lookup_create.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.body.i.preheader:                           ; preds = %blkg_lookup_create.exit.i.while.body.i.preheader_crit_edge, %blkg_lookup_create.exit.thread25.i, %blkg_lookup.exit.i.i.while.body.i.preheader_crit_edge, %land.lhs.true.i.i.i.i.i.while.body.i.preheader_crit_edge, %land.lhs.true12.i.i.i.i.while.body.i.preheader_crit_edge
  %blkg.020.i.ph = phi ptr [ %21, %blkg_lookup.exit.i.i.while.body.i.preheader_crit_edge ], [ %13, %land.lhs.true12.i.i.i.i.while.body.i.preheader_crit_edge ], [ %call.i.i.i.i.i, %land.lhs.true.i.i.i.i.i.while.body.i.preheader_crit_edge ], [ %call50.i.i, %blkg_lookup_create.exit.thread25.i ], [ %blkg.0.le.i.i, %blkg_lookup_create.exit.i.while.body.i.preheader_crit_edge ]
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.i.preheader
  %blkg.020.i = phi ptr [ %38, %if.end.i.while.body.i_crit_edge ], [ %blkg.020.i.ph, %while.body.i.preheader ]
  %call3.i = tail call fastcc zeroext i1 @blkg_tryget(ptr noundef nonnull %blkg.020.i) #14
  br i1 %call3.i, label %while.body.i.while.end.i_crit_edge, label %if.end.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

if.end.i:                                         ; preds = %while.body.i
  %parent.i = getelementptr inbounds %struct.blkcg_gq, ptr %blkg.020.i, i32 0, i32 4
  %37 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %parent.i, align 8
  %tobool.not.i = icmp eq ptr %38, null
  br i1 %tobool.not.i, label %if.end.i.while.end.i_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.end.i:                                      ; preds = %if.end.i.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge, %blkg_lookup_create.exit.i.while.end.i_crit_edge
  %blkg.0.lcssa.i = phi ptr [ null, %blkg_lookup_create.exit.i.while.end.i_crit_edge ], [ null, %if.end.i.while.end.i_crit_edge ], [ %blkg.020.i, %while.body.i.while.end.i_crit_edge ]
  %call.i10.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i10.i, label %while.end.i.blkg_tryget_closest.exit_crit_edge, label %land.lhs.true.i13.i

while.end.i.blkg_tryget_closest.exit_crit_edge:   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %blkg_tryget_closest.exit

land.lhs.true.i13.i:                              ; preds = %while.end.i
  %call1.i11.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i)
  %tobool.not.i12.i = icmp eq i32 %call1.i11.i, 0
  br i1 %tobool.not.i12.i, label %land.lhs.true.i13.i.blkg_tryget_closest.exit_crit_edge, label %land.lhs.true2.i15.i

land.lhs.true.i13.i.blkg_tryget_closest.exit_crit_edge: ; preds = %land.lhs.true.i13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %blkg_tryget_closest.exit

land.lhs.true2.i15.i:                             ; preds = %land.lhs.true.i13.i
  %.b4.i14.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i, label %land.lhs.true2.i15.i.blkg_tryget_closest.exit_crit_edge, label %if.then.i16.i

land.lhs.true2.i15.i.blkg_tryget_closest.exit_crit_edge: ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %blkg_tryget_closest.exit

if.then.i16.i:                                    ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #14
  br label %blkg_tryget_closest.exit

blkg_tryget_closest.exit:                         ; preds = %if.then.i16.i, %land.lhs.true2.i15.i.blkg_tryget_closest.exit_crit_edge, %land.lhs.true.i13.i.blkg_tryget_closest.exit_crit_edge, %while.end.i.blkg_tryget_closest.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !169
  %39 = tail call i32 @llvm.read_register.i32(metadata !156) #14
  %and.i.i.i.i.i17.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i.i17.i to ptr
  %preempt_count.i.i.i.i18.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i.i.i18.i, align 4
  %sub.i.i.i.i = add i32 %42, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i18.i, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  br label %if.end11

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %bi_bdev = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %43 = ptrtoint ptr %bi_bdev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bi_bdev, align 4
  %bd_queue.i = getelementptr inbounds %struct.block_device, ptr %44, i32 0, i32 18
  %45 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bd_queue.i, align 4
  %root_blkg = getelementptr inbounds %struct.request_queue, ptr %46, i32 0, i32 35
  %47 = ptrtoint ptr %root_blkg to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %root_blkg, align 8
  tail call fastcc void @blkg_get(ptr noundef %48)
  %49 = ptrtoint ptr %bi_bdev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bi_bdev, align 4
  %bd_queue.i20 = getelementptr inbounds %struct.block_device, ptr %50, i32 0, i32 18
  %51 = ptrtoint ptr %bd_queue.i20 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bd_queue.i20, align 4
  %root_blkg9 = getelementptr inbounds %struct.request_queue, ptr %52, i32 0, i32 35
  %53 = ptrtoint ptr %root_blkg9 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %root_blkg9, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.else, %blkg_tryget_closest.exit
  %storemerge = phi ptr [ %54, %if.else ], [ %blkg.0.lcssa.i, %blkg_tryget_closest.exit ]
  %55 = ptrtoint ptr %bi_blkg to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %storemerge, ptr %bi_blkg, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bio_associate_blkg(ptr noundef %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !156) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !168
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %bi_blkg = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 12
  %4 = ptrtoint ptr %bi_blkg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bi_blkg, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %rcu_read_lock.exit
  %tobool.not.i5 = icmp eq ptr %bio, null
  br i1 %tobool.not.i5, label %if.then.if.end_crit_edge, label %if.then.i7

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then.i7:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %blkcg.i = getelementptr inbounds %struct.blkcg_gq, ptr %5, i32 0, i32 3
  br label %if.end.sink.split

if.else:                                          ; preds = %rcu_read_lock.exit
  %call.i8 = tail call ptr @kthread_blkcg() #14
  %tobool.not.i9 = icmp eq ptr %call.i8, null
  br i1 %tobool.not.i9, label %if.end.i, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i:                                         ; preds = %if.else
  %6 = tail call i32 @llvm.read_register.i32(metadata !156) #14
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i, align 8
  %cgroups.i.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 164
  %10 = ptrtoint ptr %cgroups.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %cgroups.i.i, align 16
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @cgroup_mutex, i32 0, i32 5), i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %if.end.i.task_css.exit.i_crit_edge

if.end.i.task_css.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %task_css.exit.i

lor.lhs.false.i.i:                                ; preds = %if.end.i
  %call.i2.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @css_set_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call.i2.i.i, 0
  br i1 %tobool3.not.i.i, label %lor.lhs.false4.i.i, label %lor.lhs.false.i.i.task_css.exit.i_crit_edge

lor.lhs.false.i.i.task_css.exit.i_crit_edge:      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %task_css.exit.i

lor.lhs.false4.i.i:                               ; preds = %lor.lhs.false.i.i
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 3
  %12 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i.i, align 4
  %and.i4.i = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i4.i)
  %tobool5.not.i.i = icmp eq i32 %and.i4.i, 0
  br i1 %tobool5.not.i.i, label %lor.lhs.false6.i.i, label %lor.lhs.false4.i.i.task_css.exit.i_crit_edge

lor.lhs.false4.i.i.task_css.exit.i_crit_edge:     ; preds = %lor.lhs.false4.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %task_css.exit.i

lor.lhs.false6.i.i:                               ; preds = %lor.lhs.false4.i.i
  %call7.i.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false6.i.i.task_css.exit.i_crit_edge

lor.lhs.false6.i.i.task_css.exit.i_crit_edge:     ; preds = %lor.lhs.false6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %task_css.exit.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false6.i.i
  %call9.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %land.lhs.true.i.i.task_css.exit.i_crit_edge, label %land.lhs.true11.i.i

land.lhs.true.i.i.task_css.exit.i_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %task_css.exit.i

land.lhs.true11.i.i:                              ; preds = %land.lhs.true.i.i
  %.b1.i.i = load i1, ptr @task_css.__warned, align 1
  br i1 %.b1.i.i, label %land.lhs.true11.i.i.task_css.exit.i_crit_edge, label %if.then.i.i

land.lhs.true11.i.i.task_css.exit.i_crit_edge:    ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %task_css.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true11.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @task_css.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.36, i32 noundef 494, ptr noundef nonnull @.str.12) #14
  br label %task_css.exit.i

task_css.exit.i:                                  ; preds = %if.then.i.i, %land.lhs.true11.i.i.task_css.exit.i_crit_edge, %land.lhs.true.i.i.task_css.exit.i_crit_edge, %lor.lhs.false6.i.i.task_css.exit.i_crit_edge, %lor.lhs.false4.i.i.task_css.exit.i_crit_edge, %lor.lhs.false.i.i.task_css.exit.i_crit_edge, %if.end.i.task_css.exit.i_crit_edge
  %arrayidx.i.i = getelementptr [14 x ptr], ptr %11, i32 0, i32 3
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %task_css.exit.i, %if.then.i7
  %arrayidx.i.i.sink = phi ptr [ %arrayidx.i.i, %task_css.exit.i ], [ %blkcg.i, %if.then.i7 ]
  %14 = ptrtoint ptr %arrayidx.i.i.sink to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i.sink, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.else.if.end_crit_edge, %if.then.if.end_crit_edge
  %css.0 = phi ptr [ null, %if.then.if.end_crit_edge ], [ %call.i8, %if.else.if.end_crit_edge ], [ %15, %if.end.sink.split ]
  tail call void @bio_associate_blkg_from_css(ptr noundef %bio, ptr noundef %css.0)
  %call.i11 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i11, label %if.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i14

if.end.rcu_read_unlock.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i14:                                ; preds = %if.end
  %call1.i12 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12)
  %tobool.not.i13 = icmp eq i32 %call1.i12, 0
  br i1 %tobool.not.i13, label %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i16

land.lhs.true.i14.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i14
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i16:                               ; preds = %land.lhs.true.i14
  %.b4.i15 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i15, label %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, label %if.then.i17

land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i17:                                      ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i17, %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, %if.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !169
  %16 = tail call i32 @llvm.read_register.i32(metadata !156) #14
  %and.i.i.i.i.i18 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i18 to ptr
  %preempt_count.i.i.i.i19 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i19, align 4
  %sub.i.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i19, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bio_clone_blkg_association(ptr nocapture noundef %dst, ptr nocapture noundef readonly %src) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_blkg = getelementptr inbounds %struct.bio, ptr %src, i32 0, i32 12
  %0 = ptrtoint ptr %bi_blkg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_blkg, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then:                                          ; preds = %entry
  %bi_blkg1 = getelementptr inbounds %struct.bio, ptr %dst, i32 0, i32 12
  %2 = ptrtoint ptr %bi_blkg1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bi_blkg1, align 8
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %refcnt.i = getelementptr inbounds %struct.blkcg_gq, ptr %3, i32 0, i32 5
  tail call fastcc void @percpu_ref_put(ptr noundef %refcnt.i) #14
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %4 = ptrtoint ptr %bi_blkg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bi_blkg, align 8
  tail call fastcc void @blkg_get(ptr noundef %5)
  %6 = ptrtoint ptr %bi_blkg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bi_blkg, align 8
  %8 = ptrtoint ptr %bi_blkg1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %bi_blkg1, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @blk_cgroup_bio_start(ptr nocapture noundef %bio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %0 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bi_opf.i, align 8
  %and.i.i = and i32 %1, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 3
  %and.i6.i = and i32 %1, 1
  %retval.0.i38 = select i1 %cmp.i.i, i32 2, i32 %and.i6.i
  %2 = tail call i32 @llvm.read_register.i32(metadata !156) #14
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %5, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !187
  %6 = tail call i32 @llvm.read_register.i32(metadata !156) #14
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %cpu2 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu2, align 4
  %bi_blkg = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 12
  %10 = ptrtoint ptr %bi_blkg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bi_blkg, align 8
  %iostat_cpu = getelementptr inbounds %struct.blkcg_gq, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %iostat_cpu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iostat_cpu, align 8
  %14 = ptrtoint ptr %13 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %add = add i32 %16, %14
  %17 = inttoptr i32 %add to ptr
  %call8 = tail call fastcc i32 @u64_stats_update_begin_irqsave(ptr noundef %17)
  %bi_flags.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %18 = ptrtoint ptr %bi_flags.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %bi_flags.i, align 4
  %20 = and i16 %19, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %cmp.i.not = icmp eq i16 %20, 0
  br i1 %cmp.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %21 = or i16 %19, 512
  %22 = ptrtoint ptr %bi_flags.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %bi_flags.i, align 4
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %23 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bi_size, align 8
  %conv = zext i32 %24 to i64
  %cur = getelementptr inbounds %struct.blkg_iostat_set, ptr %17, i32 0, i32 1
  %arrayidx10 = getelementptr [3 x i64], ptr %cur, i32 0, i32 %retval.0.i38
  %25 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %arrayidx10, align 8
  %add11 = add i64 %26, %conv
  store i64 %add11, ptr %arrayidx10, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx13 = getelementptr %struct.blkg_iostat_set, ptr %17, i32 0, i32 1, i32 1, i32 %retval.0.i38
  %27 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %arrayidx13, align 8
  %inc = add i64 %28, 1
  store i64 %inc, ptr %arrayidx13, align 8
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %17, i32 0, i32 1
  %29 = tail call ptr @llvm.returnaddress(i32 0) #14
  %30 = ptrtoint ptr %29 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %30) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !185
  %31 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %17, align 4
  %inc.i.i.i = add i32 %32, 1
  store i32 %inc.i.i.i, ptr %17, align 4
  %and.i.i40 = and i32 %call8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i40)
  %tobool.not.i = icmp eq i32 %and.i.i40, 0
  br i1 %tobool.not.i, label %if.then8.i, label %if.end.do.body10.i_crit_edge

if.end.do.body10.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body10.i

if.then8.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @trace_hardirqs_on() #14
  br label %do.body10.i

do.body10.i:                                      ; preds = %if.then8.i, %if.end.do.body10.i_crit_edge
  %33 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !174
  %and.i.i.i41 = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i41)
  %tobool18.not.i = icmp eq i32 %and.i.i.i41, 0
  br i1 %tobool18.not.i, label %if.then22.i, label %do.body10.i.u64_stats_update_end_irqrestore.exit_crit_edge, !prof !166

do.body10.i.u64_stats_update_end_irqrestore.exit_crit_edge: ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %u64_stats_update_end_irqrestore.exit

if.then22.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %u64_stats_update_end_irqrestore.exit

u64_stats_update_end_irqrestore.exit:             ; preds = %if.then22.i, %do.body10.i.u64_stats_update_end_irqrestore.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %call8) #14, !srcloc !175
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @io_cgrp_subsys_on_dfl_key, i32 1), ptr blockaddress(@blk_cgroup_bio_start, %do.body23)) #14
          to label %if.then20 [label %do.body23], !srcloc !188

if.then20:                                        ; preds = %u64_stats_update_end_irqrestore.exit
  call void @__sanitizer_cov_trace_pc() #16
  %34 = ptrtoint ptr %bi_blkg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bi_blkg, align 8
  %blkcg = getelementptr inbounds %struct.blkcg_gq, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %blkcg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %blkcg, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 8
  tail call void @cgroup_rstat_updated(ptr noundef %39, i32 noundef %9) #14
  br label %do.body23

do.body23:                                        ; preds = %if.then20, %u64_stats_update_end_irqrestore.exit
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !189
  %40 = tail call i32 @llvm.read_register.i32(metadata !156) #14
  %and.i.i.i36 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i36 to ptr
  %preempt_count.i.i37 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i37 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i37, align 4
  %sub.i = add i32 %43, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i37, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @u64_stats_update_begin_irqsave(ptr noundef %syncp) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !173
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.body12_crit_edge

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body12

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @trace_hardirqs_off() #14
  br label %do.body12

do.body12:                                        ; preds = %if.then, %entry.do.body12_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %1 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %do.body12.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

do.body12.__seqprop_assert.exit_crit_edge:        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %do.body12
  %2 = tail call i32 @llvm.read_register.i32(metadata !156) #14
  %and.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %5, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !190
  %6 = tail call i32 @llvm.read_register.i32(metadata !156) #14
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %11, ptrtoint (ptr @lockdep_recursion to i32)
  %12 = inttoptr i32 %add.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !191
  %15 = tail call i32 @llvm.read_register.i32(metadata !156) #14
  %and.i.i.i7.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %18, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool20.not.i = icmp eq i32 %14, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %19 = tail call i32 @llvm.read_register.i32(metadata !156) #14
  %and.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i = icmp eq i32 %22, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %23 = tail call i32 @llvm.read_register.i32(metadata !156) #14
  %and.i.i.i9.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %26, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !192
  %27 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %30, ptrtoint (ptr @hardirqs_enabled to i32)
  %31 = inttoptr i32 %add47.i to ptr
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %31, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !193
  %34 = tail call i32 @llvm.read_register.i32(metadata !156) #14
  %and.i.i.i12.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %37, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool54.not.i = icmp eq i32 %33, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !172

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 271, i32 noundef 9, ptr noundef null) #14
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %do.body12.__seqprop_assert.exit_crit_edge
  %38 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %39, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !194
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %40 = tail call ptr @llvm.returnaddress(i32 0) #14
  %41 = ptrtoint ptr %40 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %41) #14
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cgroup_rstat_updated(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @blkcg_init() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.38, i32 noundef 78, i32 noundef 0) #14
  store ptr %call, ptr @blkcg_punt_bio_wq, align 4
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @percpu_ref_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blkg_release(ptr noundef %ref) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %callback_head = getelementptr i8, ptr %ref, i32 304
  tail call void @call_rcu(ptr noundef %callback_head, ptr noundef nonnull @__blkg_release) #14
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @blkg_async_bio_workfn(ptr noundef %work) #0 align 64 {
entry:
  %plug = alloca %struct.blk_plug, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %plug) #14
  %0 = call ptr @memset(ptr %plug, i32 255, i32 24)
  %async_bio_lock = getelementptr i8, ptr %work, i32 -52
  tail call void @_raw_spin_lock_bh(ptr noundef %async_bio_lock) #14
  %async_bios = getelementptr i8, ptr %work, i32 -8
  %1 = ptrtoint ptr %async_bios to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %async_bios, align 4
  %tail.i12 = getelementptr i8, ptr %work, i32 -4
  %3 = ptrtoint ptr %tail.i12 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %tail.i12, align 4
  store ptr null, ptr %async_bios, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %async_bio_lock) #14
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %land.lhs.true

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %2, align 8
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %land.lhs.true.if.then.i.preheader_crit_edge, label %if.then

land.lhs.true.if.then.i.preheader_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.preheader

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  call void @blk_start_plug(ptr noundef nonnull %plug) #14
  br label %if.then.i.preheader

if.then.i.preheader:                              ; preds = %if.then, %land.lhs.true.if.then.i.preheader_crit_edge
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.i.if.then.i_crit_edge, %if.then.i.preheader
  %bios.sroa.0.220 = phi ptr [ %7, %if.then.i.if.then.i_crit_edge ], [ %2, %if.then.i.preheader ]
  %6 = ptrtoint ptr %bios.sroa.0.220 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bios.sroa.0.220, align 8
  store ptr null, ptr %bios.sroa.0.220, align 8
  call void @submit_bio(ptr noundef nonnull %bios.sroa.0.220) #14
  %tobool.not.i13 = icmp eq ptr %7, null
  br i1 %tobool.not.i13, label %while.end, label %if.then.i.if.then.i_crit_edge

if.then.i.if.then.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

while.end:                                        ; preds = %if.then.i
  br i1 %tobool4.not, label %while.end.if.end8_crit_edge, label %if.then7

while.end.if.end8_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.then7:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @blk_finish_plug(ptr noundef nonnull %plug) #14
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %while.end.if.end8_crit_edge, %entry.if.end8_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %plug) #14
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__blkg_release(ptr noundef %rcu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %async_bios = getelementptr i8, ptr %rcu, i32 -88
  %0 = ptrtoint ptr %async_bios to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %async_bios, align 4
  %cmp.i.not = icmp eq ptr %1, null
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %do.end, !prof !172

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 95, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %blkcg = getelementptr i8, ptr %rcu, i32 -312
  %2 = ptrtoint ptr %blkcg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %blkcg, align 4
  %flags.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.css_put.exit_crit_edge

if.end.css_put.exit_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %css_put.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %refcnt.i = getelementptr inbounds %struct.cgroup_subsys_state, ptr %3, i32 0, i32 2
  tail call fastcc void @percpu_ref_put(ptr noundef %refcnt.i) #14
  br label %css_put.exit

css_put.exit:                                     ; preds = %if.then.i, %if.end.css_put.exit_crit_edge
  %parent = getelementptr i8, ptr %rcu, i32 -308
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %tobool22.not = icmp eq ptr %7, null
  br i1 %tobool22.not, label %css_put.exit.if.end25_crit_edge, label %if.then23

css_put.exit.if.end25_crit_edge:                  ; preds = %css_put.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.then23:                                        ; preds = %css_put.exit
  call void @__sanitizer_cov_trace_pc() #16
  %refcnt.i31 = getelementptr inbounds %struct.blkcg_gq, ptr %7, i32 0, i32 5
  tail call fastcc void @percpu_ref_put(ptr noundef %refcnt.i31) #14
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %css_put.exit.if.end25_crit_edge
  %add.ptr = getelementptr i8, ptr %rcu, i32 -332
  tail call fastcc void @blkg_free(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @percpu_ref_put(ptr noundef %ref) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = tail call i32 @llvm.read_register.i32(metadata !156) #14
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !168
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #14
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %4 = ptrtoint ptr %ref to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %ref, align 4
  %and.i.i = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i1.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i1.i, label %do.body1.i, label %if.else.i, !prof !172

do.body1.i:                                       ; preds = %rcu_read_lock.exit.i
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !173
  %7 = tail call i32 @llvm.read_register.i32(metadata !156) #14
  %and.i2.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i2.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %12, %5
  %13 = inttoptr i32 %add.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add15.i = add i32 %15, -1
  store i32 %add15.i, ptr %13, align 4
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !174
  %and.i.i.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.then29.i, label %do.body1.i.do.end31.i_crit_edge, !prof !166

do.body1.i.do.end31.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end31.i

if.then29.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %do.end31.i

do.end31.i:                                       ; preds = %if.then29.i, %do.body1.i.do.end31.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #14, !srcloc !175
  br label %if.end48.i

if.else.i:                                        ; preds = %rcu_read_lock.exit.i
  %data.i = getelementptr inbounds %struct.percpu_ref, ptr %ref, i32 0, i32 1
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %18, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !195
  tail call void @llvm.prefetch.p0(ptr %18, i32 1, i32 3, i32 1) #14
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #14, !srcloc !196
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %19, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !197
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.then45.i, label %if.else.i.if.end48.i_crit_edge, !prof !166

if.else.i.if.end48.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48.i

if.then45.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 4
  %release.i = getelementptr inbounds %struct.percpu_ref_data, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %release.i, align 4
  tail call void %23(ptr noundef %ref) #14
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then45.i, %if.else.i.if.end48.i_crit_edge, %do.end31.i
  %call.i3.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i3.i, label %if.end48.i.percpu_ref_put_many.exit_crit_edge, label %land.lhs.true.i6.i

if.end48.i.percpu_ref_put_many.exit_crit_edge:    ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %percpu_ref_put_many.exit

land.lhs.true.i6.i:                               ; preds = %if.end48.i
  %call1.i4.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i)
  %tobool.not.i5.i = icmp eq i32 %call1.i4.i, 0
  br i1 %tobool.not.i5.i, label %land.lhs.true.i6.i.percpu_ref_put_many.exit_crit_edge, label %land.lhs.true2.i8.i

land.lhs.true.i6.i.percpu_ref_put_many.exit_crit_edge: ; preds = %land.lhs.true.i6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %percpu_ref_put_many.exit

land.lhs.true2.i8.i:                              ; preds = %land.lhs.true.i6.i
  %.b4.i7.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i, label %land.lhs.true2.i8.i.percpu_ref_put_many.exit_crit_edge, label %if.then.i9.i

land.lhs.true2.i8.i.percpu_ref_put_many.exit_crit_edge: ; preds = %land.lhs.true2.i8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %percpu_ref_put_many.exit

if.then.i9.i:                                     ; preds = %land.lhs.true2.i8.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #14
  br label %percpu_ref_put_many.exit

percpu_ref_put_many.exit:                         ; preds = %if.then.i9.i, %land.lhs.true2.i8.i.percpu_ref_put_many.exit_crit_edge, %land.lhs.true.i6.i.percpu_ref_put_many.exit_crit_edge, %if.end48.i.percpu_ref_put_many.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !169
  %24 = tail call i32 @llvm.read_register.i32(metadata !156) #14
  %and.i.i.i.i.i10.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i10.i to ptr
  %preempt_count.i.i.i.i11.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i11.i, align 4
  %sub.i.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i11.i, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_ref_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_insert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_lock_release(ptr noundef %l) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end35_crit_edge

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

land.lhs.true:                                    ; preds = %entry
  %owner = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %1 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %owner, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !156) #14
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %cmp.not = icmp eq ptr %2, %6
  br i1 %cmp.not, label %land.lhs.true.if.end35_crit_edge, label %do.end, !prof !172

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

do.end:                                           ; preds = %land.lhs.true
  %call3 = tail call i32 @debug_locks_off() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end.if.end35_crit_edge, label %land.lhs.true5

do.end.if.end35_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

land.lhs.true5:                                   ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %7 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %do.end19, label %land.lhs.true5.if.end35_crit_edge

land.lhs.true5.if.end35_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35

do.end19:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 36, i32 noundef 9, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24) #14
  br label %if.end35

if.end35:                                         ; preds = %do.end19, %land.lhs.true5.if.end35_crit_edge, %do.end.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %entry.if.end35_crit_edge
  %owner37 = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %8 = ptrtoint ptr %owner37 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %owner37, align 4
  br label %__here

__here:                                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_release(ptr noundef %l, i32 noundef ptrtoint (ptr blockaddress(@local_lock_release, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_locks_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_delete(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_ref_kill_and_confirm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wb_blkcg_offline(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @u64_stats_fetch_begin(ptr noundef %syncp) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !173
  %and.i.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @trace_hardirqs_off() #14
  %dep_map.c.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %1 = tail call ptr @llvm.returnaddress(i32 0) #14
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #14
  tail call void @lock_release(ptr noundef %dep_map.c.i.i, i32 noundef %2) #14
  tail call void @trace_hardirqs_on() #14
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %dep_map.c48.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %3 = tail call ptr @llvm.returnaddress(i32 0) #14
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #14
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %4) #14
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !174
  %and.i.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !166

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #14, !srcloc !175
  %6 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %syncp, align 4
  %and18.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool.not19.i = icmp eq i32 %and18.i, 0
  br i1 %tobool.not19.i, label %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__u64_stats_fetch_begin.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !198
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !199
  %8 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %syncp, align 4
  %and.i = and i32 %9, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.__u64_stats_fetch_begin.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

do.end.i.__u64_stats_fetch_begin.exit_crit_edge:  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__u64_stats_fetch_begin.exit

__u64_stats_fetch_begin.exit:                     ; preds = %do.end.i.__u64_stats_fetch_begin.exit_crit_edge, %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge
  %.lcssa.i = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge ], [ %9, %do.end.i.__u64_stats_fetch_begin.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !200
  ret i32 %.lcssa.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blkcg_print_stat(ptr noundef %sf, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  %iter.i = alloca %struct.class_dev_iter, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %sf, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %call.i48 = tail call ptr @of_css(ptr noundef %1) #14
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 8
  %call.i50 = tail call ptr @of_css(ptr noundef %3) #14
  %parent = getelementptr inbounds %struct.cgroup_subsys_state, ptr %call.i50, i32 0, i32 12
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %iter.i) #14
  %6 = ptrtoint ptr %iter.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %iter.i, align 4, !annotation !170
  %7 = getelementptr inbounds %struct.klist_iter, ptr %iter.i, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %7, align 4, !annotation !170
  %9 = getelementptr inbounds %struct.class_dev_iter, ptr %iter.i, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %9, align 4, !annotation !170
  call void @class_dev_iter_init(ptr noundef nonnull %iter.i, ptr noundef nonnull @block_class, ptr noundef null, ptr noundef nonnull @disk_type) #14
  %call81.i = call ptr @class_dev_iter_next(ptr noundef nonnull %iter.i) #14
  %tobool.not82.i = icmp eq ptr %call81.i, null
  br i1 %tobool.not82.i, label %if.then.blkcg_fill_root_iostats.exit_crit_edge, label %if.then.while.body.i_crit_edge

if.then.while.body.i_crit_edge:                   ; preds = %if.then
  br label %while.body.i

if.then.blkcg_fill_root_iostats.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %blkcg_fill_root_iostats.exit

while.cond.loopexit.i:                            ; preds = %u64_stats_update_end_irqrestore.exit.i.while.cond.loopexit.i_crit_edge, %while.body.i.while.cond.loopexit.i_crit_edge
  %call.i51 = call ptr @class_dev_iter_next(ptr noundef nonnull %iter.i) #14
  %tobool.not.i52 = icmp eq ptr %call.i51, null
  br i1 %tobool.not.i52, label %while.cond.loopexit.i.blkcg_fill_root_iostats.exit_crit_edge, label %while.cond.loopexit.i.while.body.i_crit_edge

while.cond.loopexit.i.while.body.i_crit_edge:     ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.cond.loopexit.i.blkcg_fill_root_iostats.exit_crit_edge: ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %blkcg_fill_root_iostats.exit

while.body.i:                                     ; preds = %while.cond.loopexit.i.while.body.i_crit_edge, %if.then.while.body.i_crit_edge
  %call83.i = phi ptr [ %call.i51, %while.cond.loopexit.i.while.body.i_crit_edge ], [ %call81.i, %if.then.while.body.i_crit_edge ]
  %call472.i = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %11 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call472.i, i32 %11)
  %cmp73.i = icmp ult i32 %call472.i, %11
  br i1 %cmp73.i, label %for.body.lr.ph.i, label %while.body.i.while.cond.loopexit.i_crit_edge

while.body.i.while.cond.loopexit.i_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.loopexit.i

for.body.lr.ph.i:                                 ; preds = %while.body.i
  %bd_queue.i.i = getelementptr i8, ptr %call83.i, i32 996
  %12 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bd_queue.i.i, align 4
  %root_blkg.i.i = getelementptr inbounds %struct.request_queue, ptr %13, i32 0, i32 35
  %14 = ptrtoint ptr %root_blkg.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %root_blkg.i.i, align 8
  %bd_stats.i = getelementptr i8, ptr %call83.i, i32 -32
  %iostat.i = getelementptr inbounds %struct.blkcg_gq, ptr %15, i32 0, i32 8
  %cur.i = getelementptr inbounds %struct.blkcg_gq, ptr %15, i32 0, i32 8, i32 1
  %arrayidx5.i.i = getelementptr %struct.blkcg_gq, ptr %15, i32 0, i32 8, i32 1, i32 1
  %arrayidx2.1.i.i = getelementptr %struct.blkcg_gq, ptr %15, i32 0, i32 8, i32 1, i32 0, i32 1
  %arrayidx5.1.i.i = getelementptr %struct.blkcg_gq, ptr %15, i32 0, i32 8, i32 1, i32 1, i32 1
  %arrayidx2.2.i.i = getelementptr %struct.blkcg_gq, ptr %15, i32 0, i32 8, i32 1, i32 0, i32 2
  %arrayidx5.2.i.i = getelementptr %struct.blkcg_gq, ptr %15, i32 0, i32 8, i32 1, i32 1, i32 2
  %dep_map.i.i.i = getelementptr inbounds %struct.blkcg_gq, ptr %15, i32 0, i32 8, i32 0, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %u64_stats_update_end_irqrestore.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %call480.i = phi i32 [ %call472.i, %for.body.lr.ph.i ], [ %call4.i, %u64_stats_update_end_irqrestore.exit.i.for.body.i_crit_edge ]
  %tmp3.sroa.24.179.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %add22.i, %u64_stats_update_end_irqrestore.exit.i.for.body.i_crit_edge ]
  %tmp3.sroa.20.178.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %add16.i, %u64_stats_update_end_irqrestore.exit.i.for.body.i_crit_edge ]
  %tmp3.sroa.16.177.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %add10.i, %u64_stats_update_end_irqrestore.exit.i.for.body.i_crit_edge ]
  %tmp3.sroa.12.176.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %add40.i, %u64_stats_update_end_irqrestore.exit.i.for.body.i_crit_edge ]
  %tmp3.sroa.8.175.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %add33.i, %u64_stats_update_end_irqrestore.exit.i.for.body.i_crit_edge ]
  %tmp3.sroa.0.174.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %add26.i, %u64_stats_update_end_irqrestore.exit.i.for.body.i_crit_edge ]
  %16 = ptrtoint ptr %bd_stats.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bd_stats.i, align 8
  %18 = ptrtoint ptr %17 to i32
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call480.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %20, %18
  %21 = inttoptr i32 %add.i to ptr
  %ios.i = getelementptr inbounds %struct.disk_stats, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %ios.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ios.i, align 8
  %conv.i = zext i32 %23 to i64
  %add10.i = add i64 %tmp3.sroa.16.177.i, %conv.i
  %arrayidx12.i = getelementptr %struct.disk_stats, ptr %21, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx12.i, align 4
  %conv13.i = zext i32 %25 to i64
  %add16.i = add i64 %tmp3.sroa.20.178.i, %conv13.i
  %arrayidx18.i = getelementptr %struct.disk_stats, ptr %21, i32 0, i32 2, i32 2
  %26 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx18.i, align 8
  %conv19.i = zext i32 %27 to i64
  %add22.i = add i64 %tmp3.sroa.24.179.i, %conv19.i
  %sectors.i = getelementptr inbounds %struct.disk_stats, ptr %21, i32 0, i32 1
  %28 = ptrtoint ptr %sectors.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sectors.i, align 8
  %shl.i = shl i32 %29, 9
  %conv24.i = zext i32 %shl.i to i64
  %add26.i = add i64 %tmp3.sroa.0.174.i, %conv24.i
  %arrayidx28.i = getelementptr %struct.disk_stats, ptr %21, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx28.i, align 4
  %shl29.i = shl i32 %31, 9
  %conv30.i = zext i32 %shl29.i to i64
  %add33.i = add i64 %tmp3.sroa.8.175.i, %conv30.i
  %arrayidx35.i = getelementptr %struct.disk_stats, ptr %21, i32 0, i32 1, i32 2
  %32 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx35.i, align 8
  %shl36.i = shl i32 %33, 9
  %conv37.i = zext i32 %shl36.i to i64
  %add40.i = add i64 %tmp3.sroa.12.176.i, %conv37.i
  %call41.i = call fastcc i32 @u64_stats_update_begin_irqsave(ptr noundef %iostat.i) #14
  %34 = ptrtoint ptr %cur.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %add26.i, ptr %cur.i, align 8
  %35 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %add10.i, ptr %arrayidx5.i.i, align 8
  %36 = ptrtoint ptr %arrayidx2.1.i.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %add33.i, ptr %arrayidx2.1.i.i, align 8
  %37 = ptrtoint ptr %arrayidx5.1.i.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %add16.i, ptr %arrayidx5.1.i.i, align 8
  %38 = ptrtoint ptr %arrayidx2.2.i.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %add40.i, ptr %arrayidx2.2.i.i, align 8
  %39 = ptrtoint ptr %arrayidx5.2.i.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %add22.i, ptr %arrayidx5.2.i.i, align 8
  %40 = call ptr @llvm.returnaddress(i32 0) #14
  %41 = ptrtoint ptr %40 to i32
  call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %41) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !185
  %42 = ptrtoint ptr %iostat.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %iostat.i, align 4
  %inc.i.i.i.i = add i32 %43, 1
  store i32 %inc.i.i.i.i, ptr %iostat.i, align 4
  %and.i.i.i = and i32 %call41.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then8.i.i, label %for.body.i.do.body10.i.i_crit_edge

for.body.i.do.body10.i.i_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body10.i.i

if.then8.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @trace_hardirqs_on() #14
  br label %do.body10.i.i

do.body10.i.i:                                    ; preds = %if.then8.i.i, %for.body.i.do.body10.i.i_crit_edge
  %44 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !174
  %and.i.i.i.i = and i32 %44, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool18.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool18.not.i.i, label %if.then22.i.i, label %do.body10.i.i.u64_stats_update_end_irqrestore.exit.i_crit_edge, !prof !166

do.body10.i.i.u64_stats_update_end_irqrestore.exit.i_crit_edge: ; preds = %do.body10.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %u64_stats_update_end_irqrestore.exit.i

if.then22.i.i:                                    ; preds = %do.body10.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @warn_bogus_irq_restore() #14
  br label %u64_stats_update_end_irqrestore.exit.i

u64_stats_update_end_irqrestore.exit.i:           ; preds = %if.then22.i.i, %do.body10.i.i.u64_stats_update_end_irqrestore.exit.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %call41.i) #14, !srcloc !175
  %call4.i = call i32 @cpumask_next(i32 noundef %call480.i, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %45 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call4.i, %45
  br i1 %cmp.i, label %u64_stats_update_end_irqrestore.exit.i.for.body.i_crit_edge, label %u64_stats_update_end_irqrestore.exit.i.while.cond.loopexit.i_crit_edge

u64_stats_update_end_irqrestore.exit.i.while.cond.loopexit.i_crit_edge: ; preds = %u64_stats_update_end_irqrestore.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.loopexit.i

u64_stats_update_end_irqrestore.exit.i.for.body.i_crit_edge: ; preds = %u64_stats_update_end_irqrestore.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

blkcg_fill_root_iostats.exit:                     ; preds = %while.cond.loopexit.i.blkcg_fill_root_iostats.exit_crit_edge, %if.then.blkcg_fill_root_iostats.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %iter.i) #14
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %46 = ptrtoint ptr %call.i48 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call.i48, align 8
  tail call void @cgroup_rstat_flush(ptr noundef %47) #14
  br label %if.end

if.end:                                           ; preds = %if.else, %blkcg_fill_root_iostats.exit
  %48 = call i32 @llvm.read_register.i32(metadata !156) #14
  %and.i.i.i.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %51, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !168
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %call3 = call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call5 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true7

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b46 = load i1, ptr @blkcg_print_stat.__warned, align 1
  br i1 %.b46, label %land.lhs.true7.do.end_crit_edge, label %if.then9

land.lhs.true7.do.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then9:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @blkcg_print_stat.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 956, ptr noundef nonnull @.str.1) #14
  br label %do.end

do.end:                                           ; preds = %if.then9, %land.lhs.true7.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %blkg_list = getelementptr inbounds %struct.blkcg, ptr %call.i48, i32 0, i32 5
  %52 = ptrtoint ptr %blkg_list to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %blkg_list, align 8
  %tobool16.not = icmp eq ptr %53, null
  %add.ptr = getelementptr i8, ptr %53, i32 -12
  %tobool18.not7886 = icmp eq ptr %add.ptr, null
  %tobool18.not78 = or i1 %tobool16.not, %tobool18.not7886
  br i1 %tobool18.not78, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %blkcg_print_one_stat.exit.for.body_crit_edge, %do.end.for.body_crit_edge
  %blkg.079 = phi ptr [ %add.ptr32, %blkcg_print_one_stat.exit.for.body_crit_edge ], [ %add.ptr, %do.end.for.body_crit_edge ]
  %54 = ptrtoint ptr %blkg.079 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %blkg.079, align 8
  %queue_lock = getelementptr inbounds %struct.request_queue, ptr %55, i32 0, i32 14
  call void @_raw_spin_lock_irq(ptr noundef %queue_lock) #14
  %iostat.i53 = getelementptr inbounds %struct.blkcg_gq, ptr %blkg.079, i32 0, i32 8
  %online.i = getelementptr inbounds %struct.blkcg_gq, ptr %blkg.079, i32 0, i32 6
  %56 = ptrtoint ptr %online.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %online.i, align 4, !range !201
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i54 = icmp eq i8 %57, 0
  br i1 %tobool.not.i54, label %for.body.blkcg_print_one_stat.exit_crit_edge, label %if.end.i

for.body.blkcg_print_one_stat.exit_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %blkcg_print_one_stat.exit

if.end.i:                                         ; preds = %for.body
  %58 = ptrtoint ptr %blkg.079 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %blkg.079, align 8
  %disk.i.i = getelementptr inbounds %struct.request_queue, ptr %59, i32 0, i32 15
  %60 = ptrtoint ptr %disk.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %disk.i.i, align 8
  %tobool.not.i.i55 = icmp eq ptr %61, null
  br i1 %tobool.not.i.i55, label %if.end.i.blkcg_print_one_stat.exit_crit_edge, label %lor.lhs.false.i.i

if.end.i.blkcg_print_one_stat.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %blkcg_print_one_stat.exit

lor.lhs.false.i.i:                                ; preds = %if.end.i
  %bdi.i.i = getelementptr inbounds %struct.gendisk, ptr %61, i32 0, i32 15
  %62 = ptrtoint ptr %bdi.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bdi.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.backing_dev_info, ptr %63, i32 0, i32 17
  %64 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %65, null
  br i1 %tobool3.not.i.i, label %lor.lhs.false.i.i.blkcg_print_one_stat.exit_crit_edge, label %blkg_dev_name.exit.i

lor.lhs.false.i.i.blkcg_print_one_stat.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %blkcg_print_one_stat.exit

blkg_dev_name.exit.i:                             ; preds = %lor.lhs.false.i.i
  %call.i105.i = call ptr @bdi_dev_name(ptr noundef %63) #14
  %tobool1.not.i = icmp eq ptr %call.i105.i, null
  br i1 %tobool1.not.i, label %blkg_dev_name.exit.i.blkcg_print_one_stat.exit_crit_edge, label %if.end3.i

blkg_dev_name.exit.i.blkcg_print_one_stat.exit_crit_edge: ; preds = %blkg_dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %blkcg_print_one_stat.exit

if.end3.i:                                        ; preds = %blkg_dev_name.exit.i
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.28, ptr noundef nonnull %call.i105.i) #14
  %cur.i56 = getelementptr inbounds %struct.blkcg_gq, ptr %blkg.079, i32 0, i32 8, i32 1
  %arrayidx7.i = getelementptr %struct.blkcg_gq, ptr %blkg.079, i32 0, i32 8, i32 1, i32 0, i32 1
  %arrayidx10.i = getelementptr %struct.blkcg_gq, ptr %blkg.079, i32 0, i32 8, i32 1, i32 0, i32 2
  %ios.i57 = getelementptr inbounds %struct.blkcg_gq, ptr %blkg.079, i32 0, i32 8, i32 1, i32 1
  %arrayidx15.i = getelementptr %struct.blkcg_gq, ptr %blkg.079, i32 0, i32 8, i32 1, i32 1, i32 1
  %arrayidx18.i58 = getelementptr %struct.blkcg_gq, ptr %blkg.079, i32 0, i32 8, i32 1, i32 1, i32 2
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end3.i
  %call4.i59 = call fastcc i32 @u64_stats_fetch_begin(ptr noundef %iostat.i53) #14
  %66 = ptrtoint ptr %cur.i56 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %cur.i56, align 8
  %68 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %arrayidx7.i, align 8
  %70 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %arrayidx10.i, align 8
  %72 = ptrtoint ptr %ios.i57 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %ios.i57, align 8
  %74 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %arrayidx15.i, align 8
  %76 = ptrtoint ptr %arrayidx18.i58 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %arrayidx18.i58, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !184
  %78 = ptrtoint ptr %iostat.i53 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %iostat.i53, align 4
  %cmp.i.i.i.i.not.i = icmp eq i32 %79, %call4.i59
  br i1 %cmp.i.i.i.i.not.i, label %do.end.i, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %67)
  %tobool21.not.i = icmp eq i64 %67, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %69)
  %tobool22.not.i = icmp eq i64 %69, 0
  %or.cond.i = select i1 %tobool21.not.i, i1 %tobool22.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %73)
  %tobool24.not.i = icmp eq i64 %73, 0
  %or.cond101.i = select i1 %or.cond.i, i1 %tobool24.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %75)
  %tobool26.not.i = icmp eq i64 %75, 0
  %or.cond102.i = select i1 %or.cond101.i, i1 %tobool26.not.i, i1 false
  br i1 %or.cond102.i, label %do.end.i.if.end28.i_crit_edge, label %if.then27.i

do.end.i.if.end28.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28.i

if.then27.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.29, i64 noundef %67, i64 noundef %69, i64 noundef %73, i64 noundef %75, i64 noundef %71, i64 noundef %77) #14
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then27.i, %do.end.i.if.end28.i_crit_edge
  %80 = xor i1 %or.cond102.i, true
  %81 = load i8, ptr @blkcg_debug_stats, align 1, !range !201
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool29.not.i = icmp eq i8 %81, 0
  br i1 %tobool29.not.i, label %if.end28.i.if.end36.i_crit_edge, label %land.lhs.true.i60

if.end28.i.if.end36.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36.i

land.lhs.true.i60:                                ; preds = %if.end28.i
  %use_delay.i = getelementptr inbounds %struct.blkcg_gq, ptr %blkg.079, i32 0, i32 13
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %use_delay.i, i32 noundef 4) #14
  %82 = ptrtoint ptr %use_delay.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %use_delay.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool31.not.i = icmp eq i32 %83, 0
  br i1 %tobool31.not.i, label %land.lhs.true.i60.if.end36.i_crit_edge, label %if.then32.i

land.lhs.true.i60.if.end36.i_crit_edge:           ; preds = %land.lhs.true.i60
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36.i

if.then32.i:                                      ; preds = %land.lhs.true.i60
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i103.i = call zeroext i1 @__kasan_check_read(ptr noundef %use_delay.i, i32 noundef 4) #14
  %84 = ptrtoint ptr %use_delay.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %use_delay.i, align 4
  %delay_nsec.i = getelementptr inbounds %struct.blkcg_gq, ptr %blkg.079, i32 0, i32 14
  %call.i.i104.i = call zeroext i1 @__kasan_check_read(ptr noundef %delay_nsec.i, i32 noundef 8) #14
  %call.i.i = call i64 @generic_atomic64_read(ptr noundef %delay_nsec.i) #14
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.30, i32 noundef %85, i64 noundef %call.i.i) #14
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then32.i, %land.lhs.true.i60.if.end36.i_crit_edge, %if.end28.i.if.end36.i_crit_edge
  %has_stats.1.off0.i = phi i1 [ true, %if.then32.i ], [ %80, %land.lhs.true.i60.if.end36.i_crit_edge ], [ %80, %if.end28.i.if.end36.i_crit_edge ]
  %arrayidx38.i = getelementptr %struct.blkcg_gq, ptr %blkg.079, i32 0, i32 9, i32 0
  %86 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx38.i, align 4
  %tobool39.not.i = icmp eq ptr %87, null
  br i1 %tobool39.not.i, label %if.end36.i.cleanup.i_crit_edge, label %lor.lhs.false40.i

if.end36.i.cleanup.i_crit_edge:                   ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i

lor.lhs.false40.i:                                ; preds = %if.end36.i
  %88 = load ptr, ptr @blkcg_policy, align 4
  %pd_stat_fn.i = getelementptr inbounds %struct.blkcg_policy, ptr %88, i32 0, i32 13
  %89 = ptrtoint ptr %pd_stat_fn.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pd_stat_fn.i, align 4
  %tobool41.not.i = icmp eq ptr %90, null
  br i1 %tobool41.not.i, label %lor.lhs.false40.i.cleanup.i_crit_edge, label %if.end43.i

lor.lhs.false40.i.cleanup.i_crit_edge:            ; preds = %lor.lhs.false40.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i

if.end43.i:                                       ; preds = %lor.lhs.false40.i
  call void @__sanitizer_cov_trace_pc() #16
  %call47.i = call zeroext i1 %90(ptr noundef nonnull %87, ptr noundef %sf) #14
  %spec.select.i = select i1 %call47.i, i1 true, i1 %has_stats.1.off0.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end43.i, %lor.lhs.false40.i.cleanup.i_crit_edge, %if.end36.i.cleanup.i_crit_edge
  %has_stats.4.off0.i = phi i1 [ %spec.select.i, %if.end43.i ], [ %has_stats.1.off0.i, %lor.lhs.false40.i.cleanup.i_crit_edge ], [ %has_stats.1.off0.i, %if.end36.i.cleanup.i_crit_edge ]
  %arrayidx38.1.i = getelementptr %struct.blkcg_gq, ptr %blkg.079, i32 0, i32 9, i32 1
  %91 = ptrtoint ptr %arrayidx38.1.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx38.1.i, align 4
  %tobool39.not.1.i = icmp eq ptr %92, null
  br i1 %tobool39.not.1.i, label %cleanup.i.cleanup.1.i_crit_edge, label %lor.lhs.false40.1.i

cleanup.i.cleanup.1.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.1.i

lor.lhs.false40.1.i:                              ; preds = %cleanup.i
  %93 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @blkcg_policy, i32 0, i32 1), align 4
  %pd_stat_fn.1.i = getelementptr inbounds %struct.blkcg_policy, ptr %93, i32 0, i32 13
  %94 = ptrtoint ptr %pd_stat_fn.1.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pd_stat_fn.1.i, align 4
  %tobool41.not.1.i = icmp eq ptr %95, null
  br i1 %tobool41.not.1.i, label %lor.lhs.false40.1.i.cleanup.1.i_crit_edge, label %if.end43.1.i

lor.lhs.false40.1.i.cleanup.1.i_crit_edge:        ; preds = %lor.lhs.false40.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.1.i

if.end43.1.i:                                     ; preds = %lor.lhs.false40.1.i
  call void @__sanitizer_cov_trace_pc() #16
  %call47.1.i = call zeroext i1 %95(ptr noundef nonnull %92, ptr noundef %sf) #14
  %spec.select.1.i = select i1 %call47.1.i, i1 true, i1 %has_stats.4.off0.i
  br label %cleanup.1.i

cleanup.1.i:                                      ; preds = %if.end43.1.i, %lor.lhs.false40.1.i.cleanup.1.i_crit_edge, %cleanup.i.cleanup.1.i_crit_edge
  %has_stats.4.off0.1.i = phi i1 [ %spec.select.1.i, %if.end43.1.i ], [ %has_stats.4.off0.i, %lor.lhs.false40.1.i.cleanup.1.i_crit_edge ], [ %has_stats.4.off0.i, %cleanup.i.cleanup.1.i_crit_edge ]
  %arrayidx38.2.i = getelementptr %struct.blkcg_gq, ptr %blkg.079, i32 0, i32 9, i32 2
  %96 = ptrtoint ptr %arrayidx38.2.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx38.2.i, align 4
  %tobool39.not.2.i = icmp eq ptr %97, null
  br i1 %tobool39.not.2.i, label %cleanup.1.i.cleanup.2.i_crit_edge, label %lor.lhs.false40.2.i

cleanup.1.i.cleanup.2.i_crit_edge:                ; preds = %cleanup.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.2.i

lor.lhs.false40.2.i:                              ; preds = %cleanup.1.i
  %98 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @blkcg_policy, i32 0, i32 2), align 4
  %pd_stat_fn.2.i = getelementptr inbounds %struct.blkcg_policy, ptr %98, i32 0, i32 13
  %99 = ptrtoint ptr %pd_stat_fn.2.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pd_stat_fn.2.i, align 4
  %tobool41.not.2.i = icmp eq ptr %100, null
  br i1 %tobool41.not.2.i, label %lor.lhs.false40.2.i.cleanup.2.i_crit_edge, label %if.end43.2.i

lor.lhs.false40.2.i.cleanup.2.i_crit_edge:        ; preds = %lor.lhs.false40.2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.2.i

if.end43.2.i:                                     ; preds = %lor.lhs.false40.2.i
  call void @__sanitizer_cov_trace_pc() #16
  %call47.2.i = call zeroext i1 %100(ptr noundef nonnull %97, ptr noundef %sf) #14
  %spec.select.2.i = select i1 %call47.2.i, i1 true, i1 %has_stats.4.off0.1.i
  br label %cleanup.2.i

cleanup.2.i:                                      ; preds = %if.end43.2.i, %lor.lhs.false40.2.i.cleanup.2.i_crit_edge, %cleanup.1.i.cleanup.2.i_crit_edge
  %has_stats.4.off0.2.i = phi i1 [ %spec.select.2.i, %if.end43.2.i ], [ %has_stats.4.off0.1.i, %lor.lhs.false40.2.i.cleanup.2.i_crit_edge ], [ %has_stats.4.off0.1.i, %cleanup.1.i.cleanup.2.i_crit_edge ]
  %arrayidx38.3.i = getelementptr %struct.blkcg_gq, ptr %blkg.079, i32 0, i32 9, i32 3
  %101 = ptrtoint ptr %arrayidx38.3.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx38.3.i, align 4
  %tobool39.not.3.i = icmp eq ptr %102, null
  br i1 %tobool39.not.3.i, label %cleanup.2.i.cleanup.3.i_crit_edge, label %lor.lhs.false40.3.i

cleanup.2.i.cleanup.3.i_crit_edge:                ; preds = %cleanup.2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.3.i

lor.lhs.false40.3.i:                              ; preds = %cleanup.2.i
  %103 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @blkcg_policy, i32 0, i32 3), align 4
  %pd_stat_fn.3.i = getelementptr inbounds %struct.blkcg_policy, ptr %103, i32 0, i32 13
  %104 = ptrtoint ptr %pd_stat_fn.3.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %pd_stat_fn.3.i, align 4
  %tobool41.not.3.i = icmp eq ptr %105, null
  br i1 %tobool41.not.3.i, label %lor.lhs.false40.3.i.cleanup.3.i_crit_edge, label %if.end43.3.i

lor.lhs.false40.3.i.cleanup.3.i_crit_edge:        ; preds = %lor.lhs.false40.3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.3.i

if.end43.3.i:                                     ; preds = %lor.lhs.false40.3.i
  call void @__sanitizer_cov_trace_pc() #16
  %call47.3.i = call zeroext i1 %105(ptr noundef nonnull %102, ptr noundef %sf) #14
  %spec.select.3.i = select i1 %call47.3.i, i1 true, i1 %has_stats.4.off0.2.i
  br label %cleanup.3.i

cleanup.3.i:                                      ; preds = %if.end43.3.i, %lor.lhs.false40.3.i.cleanup.3.i_crit_edge, %cleanup.2.i.cleanup.3.i_crit_edge
  %has_stats.4.off0.3.i = phi i1 [ %spec.select.3.i, %if.end43.3.i ], [ %has_stats.4.off0.2.i, %lor.lhs.false40.3.i.cleanup.3.i_crit_edge ], [ %has_stats.4.off0.2.i, %cleanup.2.i.cleanup.3.i_crit_edge ]
  %arrayidx38.4.i = getelementptr %struct.blkcg_gq, ptr %blkg.079, i32 0, i32 9, i32 4
  %106 = ptrtoint ptr %arrayidx38.4.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx38.4.i, align 4
  %tobool39.not.4.i = icmp eq ptr %107, null
  br i1 %tobool39.not.4.i, label %cleanup.3.i.cleanup.4.i_crit_edge, label %lor.lhs.false40.4.i

cleanup.3.i.cleanup.4.i_crit_edge:                ; preds = %cleanup.3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.4.i

lor.lhs.false40.4.i:                              ; preds = %cleanup.3.i
  %108 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @blkcg_policy, i32 0, i32 4), align 4
  %pd_stat_fn.4.i = getelementptr inbounds %struct.blkcg_policy, ptr %108, i32 0, i32 13
  %109 = ptrtoint ptr %pd_stat_fn.4.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %pd_stat_fn.4.i, align 4
  %tobool41.not.4.i = icmp eq ptr %110, null
  br i1 %tobool41.not.4.i, label %lor.lhs.false40.4.i.cleanup.4.i_crit_edge, label %if.end43.4.i

lor.lhs.false40.4.i.cleanup.4.i_crit_edge:        ; preds = %lor.lhs.false40.4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.4.i

if.end43.4.i:                                     ; preds = %lor.lhs.false40.4.i
  call void @__sanitizer_cov_trace_pc() #16
  %call47.4.i = call zeroext i1 %110(ptr noundef nonnull %107, ptr noundef %sf) #14
  %spec.select.4.i = select i1 %call47.4.i, i1 true, i1 %has_stats.4.off0.3.i
  br label %cleanup.4.i

cleanup.4.i:                                      ; preds = %if.end43.4.i, %lor.lhs.false40.4.i.cleanup.4.i_crit_edge, %cleanup.3.i.cleanup.4.i_crit_edge
  %has_stats.4.off0.4.i = phi i1 [ %spec.select.4.i, %if.end43.4.i ], [ %has_stats.4.off0.3.i, %lor.lhs.false40.4.i.cleanup.4.i_crit_edge ], [ %has_stats.4.off0.3.i, %cleanup.3.i.cleanup.4.i_crit_edge ]
  %arrayidx38.5.i = getelementptr %struct.blkcg_gq, ptr %blkg.079, i32 0, i32 9, i32 5
  %111 = ptrtoint ptr %arrayidx38.5.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx38.5.i, align 4
  %tobool39.not.5.i = icmp eq ptr %112, null
  br i1 %tobool39.not.5.i, label %cleanup.4.i.cleanup.5.i_crit_edge, label %lor.lhs.false40.5.i

cleanup.4.i.cleanup.5.i_crit_edge:                ; preds = %cleanup.4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.5.i

lor.lhs.false40.5.i:                              ; preds = %cleanup.4.i
  %113 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @blkcg_policy, i32 0, i32 5), align 4
  %pd_stat_fn.5.i = getelementptr inbounds %struct.blkcg_policy, ptr %113, i32 0, i32 13
  %114 = ptrtoint ptr %pd_stat_fn.5.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %pd_stat_fn.5.i, align 4
  %tobool41.not.5.i = icmp eq ptr %115, null
  br i1 %tobool41.not.5.i, label %lor.lhs.false40.5.i.cleanup.5.i_crit_edge, label %if.end43.5.i

lor.lhs.false40.5.i.cleanup.5.i_crit_edge:        ; preds = %lor.lhs.false40.5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.5.i

if.end43.5.i:                                     ; preds = %lor.lhs.false40.5.i
  %call47.5.i = call zeroext i1 %115(ptr noundef nonnull %112, ptr noundef %sf) #14
  %spec.select.5.i = select i1 %call47.5.i, i1 true, i1 %has_stats.4.off0.4.i
  br i1 %spec.select.5.i, label %if.end43.5.i.if.then51.i_crit_edge, label %if.end43.5.i.blkcg_print_one_stat.exit_crit_edge

if.end43.5.i.blkcg_print_one_stat.exit_crit_edge: ; preds = %if.end43.5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %blkcg_print_one_stat.exit

if.end43.5.i.if.then51.i_crit_edge:               ; preds = %if.end43.5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then51.i

cleanup.5.i:                                      ; preds = %lor.lhs.false40.5.i.cleanup.5.i_crit_edge, %cleanup.4.i.cleanup.5.i_crit_edge
  br i1 %has_stats.4.off0.4.i, label %cleanup.5.i.if.then51.i_crit_edge, label %cleanup.5.i.blkcg_print_one_stat.exit_crit_edge

cleanup.5.i.blkcg_print_one_stat.exit_crit_edge:  ; preds = %cleanup.5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %blkcg_print_one_stat.exit

cleanup.5.i.if.then51.i_crit_edge:                ; preds = %cleanup.5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then51.i

if.then51.i:                                      ; preds = %cleanup.5.i.if.then51.i_crit_edge, %if.end43.5.i.if.then51.i_crit_edge
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.31) #14
  br label %blkcg_print_one_stat.exit

blkcg_print_one_stat.exit:                        ; preds = %if.then51.i, %cleanup.5.i.blkcg_print_one_stat.exit_crit_edge, %if.end43.5.i.blkcg_print_one_stat.exit_crit_edge, %blkg_dev_name.exit.i.blkcg_print_one_stat.exit_crit_edge, %lor.lhs.false.i.i.blkcg_print_one_stat.exit_crit_edge, %if.end.i.blkcg_print_one_stat.exit_crit_edge, %for.body.blkcg_print_one_stat.exit_crit_edge
  %116 = ptrtoint ptr %blkg.079 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %blkg.079, align 8
  %queue_lock20 = getelementptr inbounds %struct.request_queue, ptr %117, i32 0, i32 14
  call void @_raw_spin_unlock_irq(ptr noundef %queue_lock20) #14
  %blkcg_node = getelementptr inbounds %struct.blkcg_gq, ptr %blkg.079, i32 0, i32 2
  %118 = ptrtoint ptr %blkcg_node to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load volatile ptr, ptr %blkcg_node, align 4
  %tobool28.not = icmp eq ptr %119, null
  %add.ptr32 = getelementptr i8, ptr %119, i32 -12
  %tobool18.not92 = icmp eq ptr %add.ptr32, null
  %tobool18.not = or i1 %tobool28.not, %tobool18.not92
  br i1 %tobool18.not, label %blkcg_print_one_stat.exit.for.end_crit_edge, label %blkcg_print_one_stat.exit.for.body_crit_edge

blkcg_print_one_stat.exit.for.body_crit_edge:     ; preds = %blkcg_print_one_stat.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

blkcg_print_one_stat.exit.for.end_crit_edge:      ; preds = %blkcg_print_one_stat.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %blkcg_print_one_stat.exit.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i61 = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i61, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i64

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i64:                                ; preds = %for.end
  %call1.i62 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i62)
  %tobool.not.i63 = icmp eq i32 %call1.i62, 0
  br i1 %tobool.not.i63, label %land.lhs.true.i64.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i66

land.lhs.true.i64.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i64
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i66:                               ; preds = %land.lhs.true.i64
  %.b4.i65 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i65, label %land.lhs.true2.i66.rcu_read_unlock.exit_crit_edge, label %if.then.i67

land.lhs.true2.i66.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i66
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i67:                                      ; preds = %land.lhs.true2.i66
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i67, %land.lhs.true2.i66.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i64.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !169
  %120 = call i32 @llvm.read_register.i32(metadata !156) #14
  %and.i.i.i.i.i68 = and i32 %120, -16384
  %121 = inttoptr i32 %and.i.i.i.i.i68 to ptr
  %preempt_count.i.i.i.i69 = getelementptr inbounds %struct.thread_info, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %preempt_count.i.i.i.i69 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile i32, ptr %preempt_count.i.i.i.i69, align 4
  %sub.i.i.i = add i32 %123, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i69, align 4
  call void @rcu_read_unlock_strict() #14
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cgroup_rstat_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_css(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_dev_iter_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @class_dev_iter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @blkcg_reset_stats(ptr noundef %css, ptr nocapture noundef readnone %cftype, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @blkcg_pol_mutex, i32 noundef 0) #14
  %lock = getelementptr inbounds %struct.blkcg, ptr %css, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #14
  %blkg_list = getelementptr inbounds %struct.blkcg, ptr %css, i32 0, i32 5
  %0 = ptrtoint ptr %blkg_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %blkg_list, align 8
  %tobool.not = icmp eq ptr %1, null
  %add.ptr = getelementptr i8, ptr %1, i32 -12
  %tobool2.not5961 = icmp eq ptr %add.ptr, null
  %tobool2.not59 = or i1 %tobool.not, %tobool2.not5961
  br i1 %tobool2.not59, label %entry.for.end30_crit_edge, label %entry.for.cond3.preheader_crit_edge

entry.for.cond3.preheader_crit_edge:              ; preds = %entry
  br label %for.cond3.preheader

entry.for.end30_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end30

for.cond3.preheader:                              ; preds = %if.end.5.for.cond3.preheader_crit_edge, %entry.for.cond3.preheader_crit_edge
  %blkg.060 = phi ptr [ %add.ptr26, %if.end.5.for.cond3.preheader_crit_edge ], [ %add.ptr, %entry.for.cond3.preheader_crit_edge ]
  %call454 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call454, i32 %2)
  %cmp55 = icmp ult i32 %call454, %2
  br i1 %cmp55, label %for.body5.lr.ph, label %for.cond3.preheader.for.end_crit_edge

for.cond3.preheader.for.end_crit_edge:            ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body5.lr.ph:                                  ; preds = %for.cond3.preheader
  %iostat_cpu = getelementptr inbounds %struct.blkcg_gq, ptr %blkg.060, i32 0, i32 7
  br label %for.body5

for.body5:                                        ; preds = %for.body5.for.body5_crit_edge, %for.body5.lr.ph
  %call456 = phi i32 [ %call454, %for.body5.lr.ph ], [ %call4, %for.body5.for.body5_crit_edge ]
  %3 = ptrtoint ptr %iostat_cpu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iostat_cpu, align 8
  %5 = ptrtoint ptr %4 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call456
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add = add i32 %7, %5
  %8 = inttoptr i32 %add to ptr
  %9 = call ptr @memset(ptr %8, i32 0, i32 128)
  %call4 = tail call i32 @cpumask_next(i32 noundef %call456, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call4, %10
  br i1 %cmp, label %for.body5.for.body5_crit_edge, label %for.body5.for.end_crit_edge

for.body5.for.end_crit_edge:                      ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body5.for.body5_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body5

for.end:                                          ; preds = %for.body5.for.end_crit_edge, %for.cond3.preheader.for.end_crit_edge
  %iostat = getelementptr inbounds %struct.blkcg_gq, ptr %blkg.060, i32 0, i32 8
  %11 = call ptr @memset(ptr %iostat, i32 0, i32 128)
  %arrayidx12 = getelementptr %struct.blkcg_gq, ptr %blkg.060, i32 0, i32 9, i32 0
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx12, align 4
  %tobool13.not = icmp eq ptr %13, null
  br i1 %tobool13.not, label %for.end.if.end_crit_edge, label %land.lhs.true

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %for.end
  %14 = load ptr, ptr @blkcg_policy, align 4
  %pd_reset_stats_fn = getelementptr inbounds %struct.blkcg_policy, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %pd_reset_stats_fn to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pd_reset_stats_fn, align 4
  %tobool14.not = icmp eq ptr %16, null
  br i1 %tobool14.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %16(ptr noundef nonnull %13) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %for.end.if.end_crit_edge
  %arrayidx12.1 = getelementptr %struct.blkcg_gq, ptr %blkg.060, i32 0, i32 9, i32 1
  %17 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx12.1, align 4
  %tobool13.not.1 = icmp eq ptr %18, null
  br i1 %tobool13.not.1, label %if.end.if.end.1_crit_edge, label %land.lhs.true.1

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.1

land.lhs.true.1:                                  ; preds = %if.end
  %19 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @blkcg_policy, i32 0, i32 1), align 4
  %pd_reset_stats_fn.1 = getelementptr inbounds %struct.blkcg_policy, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %pd_reset_stats_fn.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pd_reset_stats_fn.1, align 4
  %tobool14.not.1 = icmp eq ptr %21, null
  br i1 %tobool14.not.1, label %land.lhs.true.1.if.end.1_crit_edge, label %if.then.1

land.lhs.true.1.if.end.1_crit_edge:               ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.1

if.then.1:                                        ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %21(ptr noundef nonnull %18) #14
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.1, %land.lhs.true.1.if.end.1_crit_edge, %if.end.if.end.1_crit_edge
  %arrayidx12.2 = getelementptr %struct.blkcg_gq, ptr %blkg.060, i32 0, i32 9, i32 2
  %22 = ptrtoint ptr %arrayidx12.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx12.2, align 4
  %tobool13.not.2 = icmp eq ptr %23, null
  br i1 %tobool13.not.2, label %if.end.1.if.end.2_crit_edge, label %land.lhs.true.2

if.end.1.if.end.2_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.2

land.lhs.true.2:                                  ; preds = %if.end.1
  %24 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @blkcg_policy, i32 0, i32 2), align 4
  %pd_reset_stats_fn.2 = getelementptr inbounds %struct.blkcg_policy, ptr %24, i32 0, i32 12
  %25 = ptrtoint ptr %pd_reset_stats_fn.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pd_reset_stats_fn.2, align 4
  %tobool14.not.2 = icmp eq ptr %26, null
  br i1 %tobool14.not.2, label %land.lhs.true.2.if.end.2_crit_edge, label %if.then.2

land.lhs.true.2.if.end.2_crit_edge:               ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.2

if.then.2:                                        ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %26(ptr noundef nonnull %23) #14
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.2, %land.lhs.true.2.if.end.2_crit_edge, %if.end.1.if.end.2_crit_edge
  %arrayidx12.3 = getelementptr %struct.blkcg_gq, ptr %blkg.060, i32 0, i32 9, i32 3
  %27 = ptrtoint ptr %arrayidx12.3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx12.3, align 4
  %tobool13.not.3 = icmp eq ptr %28, null
  br i1 %tobool13.not.3, label %if.end.2.if.end.3_crit_edge, label %land.lhs.true.3

if.end.2.if.end.3_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.3

land.lhs.true.3:                                  ; preds = %if.end.2
  %29 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @blkcg_policy, i32 0, i32 3), align 4
  %pd_reset_stats_fn.3 = getelementptr inbounds %struct.blkcg_policy, ptr %29, i32 0, i32 12
  %30 = ptrtoint ptr %pd_reset_stats_fn.3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pd_reset_stats_fn.3, align 4
  %tobool14.not.3 = icmp eq ptr %31, null
  br i1 %tobool14.not.3, label %land.lhs.true.3.if.end.3_crit_edge, label %if.then.3

land.lhs.true.3.if.end.3_crit_edge:               ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.3

if.then.3:                                        ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %31(ptr noundef nonnull %28) #14
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.3, %land.lhs.true.3.if.end.3_crit_edge, %if.end.2.if.end.3_crit_edge
  %arrayidx12.4 = getelementptr %struct.blkcg_gq, ptr %blkg.060, i32 0, i32 9, i32 4
  %32 = ptrtoint ptr %arrayidx12.4 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx12.4, align 4
  %tobool13.not.4 = icmp eq ptr %33, null
  br i1 %tobool13.not.4, label %if.end.3.if.end.4_crit_edge, label %land.lhs.true.4

if.end.3.if.end.4_crit_edge:                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.4

land.lhs.true.4:                                  ; preds = %if.end.3
  %34 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @blkcg_policy, i32 0, i32 4), align 4
  %pd_reset_stats_fn.4 = getelementptr inbounds %struct.blkcg_policy, ptr %34, i32 0, i32 12
  %35 = ptrtoint ptr %pd_reset_stats_fn.4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pd_reset_stats_fn.4, align 4
  %tobool14.not.4 = icmp eq ptr %36, null
  br i1 %tobool14.not.4, label %land.lhs.true.4.if.end.4_crit_edge, label %if.then.4

land.lhs.true.4.if.end.4_crit_edge:               ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.4

if.then.4:                                        ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %36(ptr noundef nonnull %33) #14
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.4, %land.lhs.true.4.if.end.4_crit_edge, %if.end.3.if.end.4_crit_edge
  %arrayidx12.5 = getelementptr %struct.blkcg_gq, ptr %blkg.060, i32 0, i32 9, i32 5
  %37 = ptrtoint ptr %arrayidx12.5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx12.5, align 4
  %tobool13.not.5 = icmp eq ptr %38, null
  br i1 %tobool13.not.5, label %if.end.4.if.end.5_crit_edge, label %land.lhs.true.5

if.end.4.if.end.5_crit_edge:                      ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.5

land.lhs.true.5:                                  ; preds = %if.end.4
  %39 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @blkcg_policy, i32 0, i32 5), align 4
  %pd_reset_stats_fn.5 = getelementptr inbounds %struct.blkcg_policy, ptr %39, i32 0, i32 12
  %40 = ptrtoint ptr %pd_reset_stats_fn.5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pd_reset_stats_fn.5, align 4
  %tobool14.not.5 = icmp eq ptr %41, null
  br i1 %tobool14.not.5, label %land.lhs.true.5.if.end.5_crit_edge, label %if.then.5

land.lhs.true.5.if.end.5_crit_edge:               ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.5

if.then.5:                                        ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %41(ptr noundef nonnull %38) #14
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.5, %land.lhs.true.5.if.end.5_crit_edge, %if.end.4.if.end.5_crit_edge
  %blkcg_node = getelementptr inbounds %struct.blkcg_gq, ptr %blkg.060, i32 0, i32 2
  %42 = ptrtoint ptr %blkcg_node to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %blkcg_node, align 4
  %tobool22.not = icmp eq ptr %43, null
  %add.ptr26 = getelementptr i8, ptr %43, i32 -12
  %tobool2.not62 = icmp eq ptr %add.ptr26, null
  %tobool2.not = or i1 %tobool22.not, %tobool2.not62
  br i1 %tobool2.not, label %if.end.5.for.end30_crit_edge, label %if.end.5.for.cond3.preheader_crit_edge

if.end.5.for.cond3.preheader_crit_edge:           ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond3.preheader

if.end.5.for.end30_crit_edge:                     ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end30

for.end30:                                        ; preds = %if.end.5.for.end30_crit_edge, %entry.for.end30_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #14
  tail call void @mutex_unlock(ptr noundef nonnull @blkcg_pol_mutex) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @psi_memstall_enter(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @io_schedule_prepare() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_hrtimeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @io_schedule_finish(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @psi_memstall_leave(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kick_process(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_cmpxchg(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_sub(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { nounwind readonly }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind readonly willreturn }
attributes #20 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !42, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !61, !63, !65, !67, !69, !71, !72, !73, !75, !76, !78, !80, !81, !82, !84, !85, !87, !88, !90, !91, !93, !94, !96, !98, !100, !101, !103, !104, !105, !107, !109, !111, !112, !114, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !134, !135, !137, !138, !139, !141, !143, !144, !146, !148, !150, !152, !153, !155}
!llvm.named.register.sp = !{!156}
!llvm.module.flags = !{!157, !158, !159, !160, !161, !162, !163, !164}
!llvm.ident = !{!165}

!0 = !{ptr @__ksymtab_blkcg_root, !1, !"__ksymtab_blkcg_root", i1 false, i1 false}
!1 = !{!"../block/blk-cgroup.c", i32 49, i32 1}
!2 = !{ptr @blkcg_root_css, !3, !"blkcg_root_css", i1 false, i1 false}
!3 = !{!"../block/blk-cgroup.c", i32 51, i32 36}
!4 = !{ptr @__ksymtab_blkcg_root_css, !5, !"__ksymtab_blkcg_root_css", i1 false, i1 false}
!5 = !{!"../block/blk-cgroup.c", i32 52, i32 1}
!6 = !{ptr @blkcg_debug_stats, !7, !"blkcg_debug_stats", i1 false, i1 false}
!7 = !{!"../block/blk-cgroup.c", i32 58, i32 6}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../block/blk-cgroup.c", i32 220, i32 4}
!10 = !{ptr @__ksymtab_blkg_lookup_slowpath, !11, !"__ksymtab_blkg_lookup_slowpath", i1 false, i1 false}
!11 = !{!"../block/blk-cgroup.c", i32 228, i32 1}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../block/blk-cgroup.c", i32 527, i32 2}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../block/blk-cgroup.c", i32 536, i32 18}
!17 = !{ptr @__ksymtab_blkcg_print_blkgs, !18, !"__ksymtab_blkcg_print_blkgs", i1 false, i1 false}
!18 = !{!"../block/blk-cgroup.c", i32 538, i32 1}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../block/blk-cgroup.c", i32 555, i32 17}
!21 = !{ptr @__ksymtab___blkg_prfill_u64, !22, !"__ksymtab___blkg_prfill_u64", i1 false, i1 false}
!22 = !{!"../block/blk-cgroup.c", i32 558, i32 1}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../block/blk-cgroup.c", i32 591, i32 20}
!25 = !{ptr @__ksymtab_blkg_conf_prep, !26, !"__ksymtab_blkg_conf_prep", i1 false, i1 false}
!26 = !{!"../block/blk-cgroup.c", i32 742, i32 1}
!27 = !{ptr @__ksymtab_blkg_conf_finish, !28, !"__ksymtab_blkg_conf_finish", i1 false, i1 false}
!28 = !{!"../block/blk-cgroup.c", i32 758, i32 1}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../block/blk-cgroup.c", i32 1273, i32 17}
!31 = !{ptr @io_cgrp_subsys, !32, !"io_cgrp_subsys", i1 false, i1 false}
!32 = !{!"../block/blk-cgroup.c", i32 1264, i32 22}
!33 = !{ptr @__ksymtab_io_cgrp_subsys, !34, !"__ksymtab_io_cgrp_subsys", i1 false, i1 false}
!34 = !{!"../block/blk-cgroup.c", i32 1284, i32 1}
!35 = !{ptr @__ksymtab_blkcg_activate_policy, !36, !"__ksymtab_blkcg_activate_policy", i1 false, i1 false}
!36 = !{!"../block/blk-cgroup.c", i32 1395, i32 1}
!37 = !{ptr @__ksymtab_blkcg_deactivate_policy, !38, !"__ksymtab_blkcg_deactivate_policy", i1 false, i1 false}
!38 = !{!"../block/blk-cgroup.c", i32 1438, i32 1}
!39 = !{ptr @.str.6, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../block/blk-cgroup.c", i32 1461, i32 3}
!41 = !{ptr @.str.7, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @blkcg_policy_register._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @blkcg_policy_register._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @__ksymtab_blkcg_policy_register, !45, !"__ksymtab_blkcg_policy_register", i1 false, i1 false}
!45 = !{!"../block/blk-cgroup.c", i32 1518, i32 1}
!46 = !{ptr @__ksymtab_blkcg_policy_unregister, !47, !"__ksymtab_blkcg_policy_unregister", i1 false, i1 false}
!47 = !{!"../block/blk-cgroup.c", i32 1558, i32 1}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../block/blk-cgroup.c", i32 1794, i32 6}
!50 = !{ptr @__ksymtab_bio_associate_blkg_from_css, !51, !"__ksymtab_bio_associate_blkg_from_css", i1 false, i1 false}
!51 = !{!"../block/blk-cgroup.c", i32 1856, i32 1}
!52 = !{ptr @__ksymtab_bio_associate_blkg, !53, !"__ksymtab_bio_associate_blkg", i1 false, i1 false}
!53 = !{!"../block/blk-cgroup.c", i32 1882, i32 1}
!54 = !{ptr @__ksymtab_bio_clone_blkg_association, !55, !"__ksymtab_bio_clone_blkg_association", i1 false, i1 false}
!55 = !{!"../block/blk-cgroup.c", i32 1898, i32 1}
!56 = !{ptr @__initcall__kmod_blk_cgroup__345_1944_blkcg_init4, !57, !"__initcall__kmod_blk_cgroup__345_1944_blkcg_init4", i1 false, i1 false}
!57 = !{!"../block/blk-cgroup.c", i32 1944, i32 1}
!58 = !{ptr @__param_blkcg_debug_stats, !59, !"__param_blkcg_debug_stats", i1 false, i1 false}
!59 = !{!"../block/blk-cgroup.c", i32 1946, i32 1}
!60 = !{ptr @__UNIQUE_ID_blkcg_debug_statstype346, !59, !"__UNIQUE_ID_blkcg_debug_statstype346", i1 false, i1 false}
!61 = !{ptr @__UNIQUE_ID_blkcg_debug_stats347, !62, !"__UNIQUE_ID_blkcg_debug_stats347", i1 false, i1 false}
!62 = !{!"../block/blk-cgroup.c", i32 1947, i32 1}
!63 = !{ptr @blkcg_root, !64, !"blkcg_root", i1 false, i1 false}
!64 = !{!"../block/blk-cgroup.c", i32 48, i32 14}
!65 = !{ptr @blkcg_policy, !66, !"blkcg_policy", i1 false, i1 false}
!66 = !{!"../block/blk-cgroup.c", i32 54, i32 29}
!67 = !{ptr @blkcg_punt_bio_wq, !68, !"blkcg_punt_bio_wq", i1 false, i1 false}
!68 = !{!"../block/blk-cgroup.c", i32 59, i32 33}
!69 = distinct !{null, !70, !"__warned", i1 false, i1 false}
!70 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!71 = !{ptr @.str.8, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.9, !70, !"<string literal>", i1 false, i1 false}
!73 = distinct !{null, !74, !"__warned", i1 false, i1 false}
!74 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!75 = !{ptr @.str.10, !74, !"<string literal>", i1 false, i1 false}
!76 = distinct !{null, !77, !"__already_done", i1 false, i1 false}
!77 = !{!"../block/blk-cgroup.c", i32 565, i32 2}
!78 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!79 = !{!"../include/linux/blk-cgroup.h", i32 340, i32 9}
!80 = !{ptr @.str.11, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.12, !79, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @blkg_alloc.__key, !83, !"__key", i1 false, i1 false}
!83 = !{!"../block/blk-cgroup.c", i32 173, i32 2}
!84 = !{ptr @.str.13, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @blkg_alloc.__key.14, !86, !"__key", i1 false, i1 false}
!86 = !{!"../block/blk-cgroup.c", i32 175, i32 2}
!87 = !{ptr @.str.15, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @blkg_alloc.__key.16, !89, !"__key", i1 false, i1 false}
!89 = !{!"../block/blk-cgroup.c", i32 178, i32 2}
!90 = !{ptr @.str.17, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @blkg_alloc.__key.18, !92, !"__key", i1 false, i1 false}
!92 = !{!"../block/blk-cgroup.c", i32 180, i32 3}
!93 = !{ptr @.str.19, !92, !"<string literal>", i1 false, i1 false}
!94 = distinct !{null, !95, !"__already_done", i1 false, i1 false}
!95 = !{!"../block/blk-cgroup.c", i32 241, i32 2}
!96 = distinct !{null, !97, !"__already_done", i1 false, i1 false}
!97 = !{!"../block/blk-cgroup.c", i32 269, i32 7}
!98 = distinct !{null, !99, !"__already_done", i1 false, i1 false}
!99 = !{!"../include/linux/percpu-refcount.h", i32 280, i32 2}
!100 = !{ptr @.str.21, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.22, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../include/linux/local_lock_internal.h", i32 36, i32 2}
!103 = !{ptr @.str.23, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.24, !102, !"<string literal>", i1 false, i1 false}
!105 = distinct !{null, !106, !"__already_done", i1 false, i1 false}
!106 = !{!"../block/blk-cgroup.c", i32 389, i32 2}
!107 = distinct !{null, !108, !"__already_done", i1 false, i1 false}
!108 = !{!"../block/blk-cgroup.c", i32 390, i32 2}
!109 = !{ptr @blkcg_css_alloc.__key, !110, !"__key", i1 false, i1 false}
!110 = !{!"../block/blk-cgroup.c", i32 1124, i32 2}
!111 = !{ptr @.str.26, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @xa_init_flags.__key, !113, !"__key", i1 false, i1 false}
!113 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!114 = !{ptr @.str.27, !113, !"<string literal>", i1 false, i1 false}
!115 = distinct !{null, !116, !"__warned", i1 false, i1 false}
!116 = !{!"../block/blk-cgroup.c", i32 801, i32 2}
!117 = !{ptr @blkcg_files, !118, !"blkcg_files", i1 false, i1 false}
!118 = !{!"../block/blk-cgroup.c", i32 965, i32 22}
!119 = distinct !{null, !120, !"__warned", i1 false, i1 false}
!120 = !{!"../block/blk-cgroup.c", i32 956, i32 2}
!121 = !{ptr @.str.28, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../block/blk-cgroup.c", i32 904, i32 16}
!123 = !{ptr @.str.29, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../block/blk-cgroup.c", i32 919, i32 17}
!125 = !{ptr @.str.30, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../block/blk-cgroup.c", i32 926, i32 17}
!127 = !{ptr @.str.31, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../block/blk-cgroup.c", i32 942, i32 17}
!129 = !{ptr @blkcg_legacy_files, !130, !"blkcg_legacy_files", i1 false, i1 false}
!130 = !{!"../block/blk-cgroup.c", i32 973, i32 22}
!131 = !{ptr @.str.32, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../block/blk-cgroup.c", i32 45, i32 8}
!133 = !{ptr @.str.33, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @blkcg_pol_register_mutex, !132, !"blkcg_pol_register_mutex", i1 false, i1 false}
!135 = !{ptr @.str.34, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../block/blk-cgroup.c", i32 46, i32 8}
!137 = !{ptr @.str.35, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @blkcg_pol_mutex, !136, !"blkcg_pol_mutex", i1 false, i1 false}
!139 = !{ptr @all_blkcgs, !140, !"all_blkcgs", i1 false, i1 false}
!140 = !{!"../block/blk-cgroup.c", i32 56, i32 8}
!141 = distinct !{null, !142, !"__warned", i1 false, i1 false}
!142 = !{!"../include/linux/cgroup.h", i32 494, i32 9}
!143 = !{ptr @.str.36, !142, !"<string literal>", i1 false, i1 false}
!144 = distinct !{null, !145, !"__already_done", i1 false, i1 false}
!145 = !{!"../include/linux/blk-cgroup.h", i32 358, i32 2}
!146 = distinct !{null, !147, !"__already_done", i1 false, i1 false}
!147 = !{!"../block/blk-cgroup.c", i32 1688, i32 3}
!148 = distinct !{null, !149, !"__already_done", i1 false, i1 false}
!149 = !{!"../block/blk-cgroup.c", i32 334, i32 2}
!150 = distinct !{null, !151, !"__already_done", i1 false, i1 false}
!151 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!152 = !{ptr @.str.37, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.38, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../block/blk-cgroup.c", i32 1937, i32 38}
!155 = !{ptr @__param_str_blkcg_debug_stats, !59, !"__param_str_blkcg_debug_stats", i1 false, i1 false}
!156 = !{!"sp"}
!157 = !{i32 1, !"wchar_size", i32 2}
!158 = !{i32 1, !"min_enum_size", i32 4}
!159 = !{i32 8, !"branch-target-enforcement", i32 0}
!160 = !{i32 8, !"sign-return-address", i32 0}
!161 = !{i32 8, !"sign-return-address-all", i32 0}
!162 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!163 = !{i32 7, !"uwtable", i32 1}
!164 = !{i32 7, !"frame-pointer", i32 2}
!165 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!166 = !{!"branch_weights", i32 1, i32 2000}
!167 = !{i64 2155292197}
!168 = !{i64 2149298024}
!169 = !{i64 2149298290}
!170 = !{!"auto-init"}
!171 = !{i64 2151809439}
!172 = !{!"branch_weights", i32 2000, i32 1}
!173 = !{i64 864768, i64 864829}
!174 = !{i64 867500}
!175 = !{i64 867785}
!176 = !{i64 2148469929}
!177 = !{i64 956529, i64 956554, i64 956576, i64 956592, i64 956604, i64 956624, i64 956648, i64 956664, i64 956676}
!178 = !{i64 2148470117}
!179 = !{i64 2149399635}
!180 = !{i64 2148472040, i64 2148472072, i64 2148472101, i64 2148472135, i64 2148472166, i64 2148472189}
!181 = !{i64 2148560041}
!182 = !{i64 2148474505, i64 2148474537, i64 2148474566, i64 2148474600, i64 2148474631, i64 2148474654}
!183 = !{i64 2149606011}
!184 = !{i64 2150225555}
!185 = !{i64 2150226205}
!186 = !{i64 2148470510, i64 2148470536, i64 2148470565, i64 2148470599, i64 2148470630, i64 2148470653}
!187 = !{i64 2155466884}
!188 = !{i64 2148283903, i64 2148283908, i64 2148283921, i64 2148283965, i64 2148283999, i64 2148284020}
!189 = !{i64 2155468523}
!190 = !{i64 2150117807}
!191 = !{i64 2150122741}
!192 = !{i64 2150144459}
!193 = !{i64 2150149353}
!194 = !{i64 2150225880}
!195 = !{i64 2148558962}
!196 = !{i64 2148473695, i64 2148473727, i64 2148473756, i64 2148473790, i64 2148473821, i64 2148473844}
!197 = !{i64 2148559191}
!198 = !{i64 2154606157}
!199 = !{i64 2154605999}
!200 = !{i64 2154606327}
!201 = !{i8 0, i8 2}
