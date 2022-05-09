; ModuleID = '/llk/IR_all_yes/drivers/base/power/runtime.c_pt.bc'
source_filename = "../drivers/base/power/runtime.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+pm_runtime_suspended_time\22, \22a\22\09"
module asm "\09.weak\09__crc_pm_runtime_suspended_time\09\09\09\09"
module asm "\09.long\09__crc_pm_runtime_suspended_time\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_runtime_suspended_time:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_runtime_suspended_time\22\09\09\09\09\09"
module asm "__kstrtabns_pm_runtime_suspended_time:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pm_runtime_autosuspend_expiration\22, \22a\22\09"
module asm "\09.weak\09__crc_pm_runtime_autosuspend_expiration\09\09\09\09"
module asm "\09.long\09__crc_pm_runtime_autosuspend_expiration\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_runtime_autosuspend_expiration:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_runtime_autosuspend_expiration\22\09\09\09\09\09"
module asm "__kstrtabns_pm_runtime_autosuspend_expiration:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pm_runtime_set_memalloc_noio\22, \22a\22\09"
module asm "\09.weak\09__crc_pm_runtime_set_memalloc_noio\09\09\09\09"
module asm "\09.long\09__crc_pm_runtime_set_memalloc_noio\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_runtime_set_memalloc_noio:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_runtime_set_memalloc_noio\22\09\09\09\09\09"
module asm "__kstrtabns_pm_runtime_set_memalloc_noio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pm_schedule_suspend\22, \22a\22\09"
module asm "\09.weak\09__crc_pm_schedule_suspend\09\09\09\09"
module asm "\09.long\09__crc_pm_schedule_suspend\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_schedule_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_schedule_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_pm_schedule_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__pm_runtime_idle\22, \22a\22\09"
module asm "\09.weak\09__crc___pm_runtime_idle\09\09\09\09"
module asm "\09.long\09__crc___pm_runtime_idle\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___pm_runtime_idle:\09\09\09\09\09"
module asm "\09.asciz \09\22__pm_runtime_idle\22\09\09\09\09\09"
module asm "__kstrtabns___pm_runtime_idle:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__pm_runtime_suspend\22, \22a\22\09"
module asm "\09.weak\09__crc___pm_runtime_suspend\09\09\09\09"
module asm "\09.long\09__crc___pm_runtime_suspend\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___pm_runtime_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22__pm_runtime_suspend\22\09\09\09\09\09"
module asm "__kstrtabns___pm_runtime_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__pm_runtime_resume\22, \22a\22\09"
module asm "\09.weak\09__crc___pm_runtime_resume\09\09\09\09"
module asm "\09.long\09__crc___pm_runtime_resume\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___pm_runtime_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22__pm_runtime_resume\22\09\09\09\09\09"
module asm "__kstrtabns___pm_runtime_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pm_runtime_get_if_active\22, \22a\22\09"
module asm "\09.weak\09__crc_pm_runtime_get_if_active\09\09\09\09"
module asm "\09.long\09__crc_pm_runtime_get_if_active\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_runtime_get_if_active:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_runtime_get_if_active\22\09\09\09\09\09"
module asm "__kstrtabns_pm_runtime_get_if_active:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__pm_runtime_set_status\22, \22a\22\09"
module asm "\09.weak\09__crc___pm_runtime_set_status\09\09\09\09"
module asm "\09.long\09__crc___pm_runtime_set_status\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___pm_runtime_set_status:\09\09\09\09\09"
module asm "\09.asciz \09\22__pm_runtime_set_status\22\09\09\09\09\09"
module asm "__kstrtabns___pm_runtime_set_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pm_runtime_barrier\22, \22a\22\09"
module asm "\09.weak\09__crc_pm_runtime_barrier\09\09\09\09"
module asm "\09.long\09__crc_pm_runtime_barrier\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_runtime_barrier:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_runtime_barrier\22\09\09\09\09\09"
module asm "__kstrtabns_pm_runtime_barrier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__pm_runtime_disable\22, \22a\22\09"
module asm "\09.weak\09__crc___pm_runtime_disable\09\09\09\09"
module asm "\09.long\09__crc___pm_runtime_disable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___pm_runtime_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22__pm_runtime_disable\22\09\09\09\09\09"
module asm "__kstrtabns___pm_runtime_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pm_runtime_enable\22, \22a\22\09"
module asm "\09.weak\09__crc_pm_runtime_enable\09\09\09\09"
module asm "\09.long\09__crc_pm_runtime_enable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_runtime_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_runtime_enable\22\09\09\09\09\09"
module asm "__kstrtabns_pm_runtime_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+devm_pm_runtime_enable\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_pm_runtime_enable\09\09\09\09"
module asm "\09.long\09__crc_devm_pm_runtime_enable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_pm_runtime_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_pm_runtime_enable\22\09\09\09\09\09"
module asm "__kstrtabns_devm_pm_runtime_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pm_runtime_forbid\22, \22a\22\09"
module asm "\09.weak\09__crc_pm_runtime_forbid\09\09\09\09"
module asm "\09.long\09__crc_pm_runtime_forbid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_runtime_forbid:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_runtime_forbid\22\09\09\09\09\09"
module asm "__kstrtabns_pm_runtime_forbid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pm_runtime_allow\22, \22a\22\09"
module asm "\09.weak\09__crc_pm_runtime_allow\09\09\09\09"
module asm "\09.long\09__crc_pm_runtime_allow\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_runtime_allow:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_runtime_allow\22\09\09\09\09\09"
module asm "__kstrtabns_pm_runtime_allow:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pm_runtime_no_callbacks\22, \22a\22\09"
module asm "\09.weak\09__crc_pm_runtime_no_callbacks\09\09\09\09"
module asm "\09.long\09__crc_pm_runtime_no_callbacks\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_runtime_no_callbacks:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_runtime_no_callbacks\22\09\09\09\09\09"
module asm "__kstrtabns_pm_runtime_no_callbacks:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pm_runtime_irq_safe\22, \22a\22\09"
module asm "\09.weak\09__crc_pm_runtime_irq_safe\09\09\09\09"
module asm "\09.long\09__crc_pm_runtime_irq_safe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_runtime_irq_safe:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_runtime_irq_safe\22\09\09\09\09\09"
module asm "__kstrtabns_pm_runtime_irq_safe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pm_runtime_set_autosuspend_delay\22, \22a\22\09"
module asm "\09.weak\09__crc_pm_runtime_set_autosuspend_delay\09\09\09\09"
module asm "\09.long\09__crc_pm_runtime_set_autosuspend_delay\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_runtime_set_autosuspend_delay:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_runtime_set_autosuspend_delay\22\09\09\09\09\09"
module asm "__kstrtabns_pm_runtime_set_autosuspend_delay:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__pm_runtime_use_autosuspend\22, \22a\22\09"
module asm "\09.weak\09__crc___pm_runtime_use_autosuspend\09\09\09\09"
module asm "\09.long\09__crc___pm_runtime_use_autosuspend\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___pm_runtime_use_autosuspend:\09\09\09\09\09"
module asm "\09.asciz \09\22__pm_runtime_use_autosuspend\22\09\09\09\09\09"
module asm "__kstrtabns___pm_runtime_use_autosuspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pm_runtime_force_suspend\22, \22a\22\09"
module asm "\09.weak\09__crc_pm_runtime_force_suspend\09\09\09\09"
module asm "\09.long\09__crc_pm_runtime_force_suspend\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_runtime_force_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_runtime_force_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_pm_runtime_force_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pm_runtime_force_resume\22, \22a\22\09"
module asm "\09.weak\09__crc_pm_runtime_force_resume\09\09\09\09"
module asm "\09.long\09__crc_pm_runtime_force_resume\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pm_runtime_force_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22pm_runtime_force_resume\22\09\09\09\09\09"
module asm "__kstrtabns_pm_runtime_force_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.42 }
%union.anon.42 = type { i32 }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.cpumask = type { [1 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_link = type { ptr, %struct.list_head, ptr, %struct.list_head, %struct.device, i32, i32, %struct.refcount_struct, %struct.kref, %struct.work_struct, i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.24, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
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
%struct.restart_block = type { i32, ptr, %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.24 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__kstrtab_pm_runtime_suspended_time = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_runtime_suspended_time = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_runtime_suspended_time = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_runtime_suspended_time to i32), ptr @__kstrtab_pm_runtime_suspended_time, ptr @__kstrtabns_pm_runtime_suspended_time }, section "___ksymtab_gpl+pm_runtime_suspended_time", align 4
@__kstrtab_pm_runtime_autosuspend_expiration = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_runtime_autosuspend_expiration = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_runtime_autosuspend_expiration = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_runtime_autosuspend_expiration to i32), ptr @__kstrtab_pm_runtime_autosuspend_expiration, ptr @__kstrtabns_pm_runtime_autosuspend_expiration }, section "___ksymtab_gpl+pm_runtime_autosuspend_expiration", align 4
@pm_runtime_set_memalloc_noio.dev_hotplug_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pm_runtime_set_memalloc_noio.dev_hotplug_mutex, i64 52), ptr getelementptr (i8, ptr @pm_runtime_set_memalloc_noio.dev_hotplug_mutex, i64 52) }, ptr @pm_runtime_set_memalloc_noio.dev_hotplug_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dev_hotplug_mutex.wait_lock\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dev_hotplug_mutex\00", [46 x i8] zeroinitializer }, align 32
@__kstrtab_pm_runtime_set_memalloc_noio = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_runtime_set_memalloc_noio = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_runtime_set_memalloc_noio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_runtime_set_memalloc_noio to i32), ptr @__kstrtab_pm_runtime_set_memalloc_noio, ptr @__kstrtabns_pm_runtime_set_memalloc_noio }, section "___ksymtab_gpl+pm_runtime_set_memalloc_noio", align 4
@__kstrtab_pm_schedule_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_schedule_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_schedule_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_schedule_suspend to i32), ptr @__kstrtab_pm_schedule_suspend, ptr @__kstrtabns_pm_schedule_suspend }, section "___ksymtab_gpl+pm_schedule_suspend", align 4
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/base/power/runtime.c\00", [35 x i8] zeroinitializer }, align 32
@__kstrtab___pm_runtime_idle = external dso_local constant [0 x i8], align 1
@__kstrtabns___pm_runtime_idle = external dso_local constant [0 x i8], align 1
@__ksymtab___pm_runtime_idle = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__pm_runtime_idle to i32), ptr @__kstrtab___pm_runtime_idle, ptr @__kstrtabns___pm_runtime_idle }, section "___ksymtab_gpl+__pm_runtime_idle", align 4
@__kstrtab___pm_runtime_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns___pm_runtime_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab___pm_runtime_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__pm_runtime_suspend to i32), ptr @__kstrtab___pm_runtime_suspend, ptr @__kstrtabns___pm_runtime_suspend }, section "___ksymtab_gpl+__pm_runtime_suspend", align 4
@__kstrtab___pm_runtime_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns___pm_runtime_resume = external dso_local constant [0 x i8], align 1
@__ksymtab___pm_runtime_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__pm_runtime_resume to i32), ptr @__kstrtab___pm_runtime_resume, ptr @__kstrtabns___pm_runtime_resume }, section "___ksymtab_gpl+__pm_runtime_resume", align 4
@__kstrtab_pm_runtime_get_if_active = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_runtime_get_if_active = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_runtime_get_if_active = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_runtime_get_if_active to i32), ptr @__kstrtab_pm_runtime_get_if_active, ptr @__kstrtabns_pm_runtime_get_if_active }, section "___ksymtab_gpl+pm_runtime_get_if_active", align 4
@__pm_runtime_set_status._entry = internal constant %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 1271, ptr @.str.5, ptr @.str.6 }, align 1
@.str.3 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"runtime PM trying to activate child device %s but parent (%s) is not active\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"__pm_runtime_set_status\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@__pm_runtime_set_status._entry_ptr = internal global ptr @__pm_runtime_set_status._entry, section ".printk_index", align 4
@__kstrtab___pm_runtime_set_status = external dso_local constant [0 x i8], align 1
@__kstrtabns___pm_runtime_set_status = external dso_local constant [0 x i8], align 1
@__ksymtab___pm_runtime_set_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__pm_runtime_set_status to i32), ptr @__kstrtab___pm_runtime_set_status, ptr @__kstrtabns___pm_runtime_set_status }, section "___ksymtab_gpl+__pm_runtime_set_status", align 4
@__kstrtab_pm_runtime_barrier = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_runtime_barrier = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_runtime_barrier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_runtime_barrier to i32), ptr @__kstrtab_pm_runtime_barrier, ptr @__kstrtabns_pm_runtime_barrier }, section "___ksymtab_gpl+pm_runtime_barrier", align 4
@__kstrtab___pm_runtime_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns___pm_runtime_disable = external dso_local constant [0 x i8], align 1
@__ksymtab___pm_runtime_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__pm_runtime_disable to i32), ptr @__kstrtab___pm_runtime_disable, ptr @__kstrtabns___pm_runtime_disable }, section "___ksymtab_gpl+__pm_runtime_disable", align 4
@pm_runtime_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 1457, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Unbalanced %s!\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pm_runtime_enable\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@pm_runtime_enable._entry_ptr = internal global ptr @pm_runtime_enable._entry, section ".printk_index", align 4
@pm_runtime_enable._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str.2, i32 1470, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Enabling runtime PM for inactive device with active children\0A\00", [34 x i8] zeroinitializer }, align 32
@pm_runtime_enable._entry_ptr.12 = internal global ptr @pm_runtime_enable._entry.10, section ".printk_index", align 4
@__kstrtab_pm_runtime_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_runtime_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_runtime_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_runtime_enable to i32), ptr @__kstrtab_pm_runtime_enable, ptr @__kstrtabns_pm_runtime_enable }, section "___ksymtab_gpl+pm_runtime_enable", align 4
@__kstrtab_devm_pm_runtime_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_pm_runtime_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_pm_runtime_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_pm_runtime_enable to i32), ptr @__kstrtab_devm_pm_runtime_enable, ptr @__kstrtabns_devm_pm_runtime_enable }, section "___ksymtab_gpl+devm_pm_runtime_enable", align 4
@__kstrtab_pm_runtime_forbid = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_runtime_forbid = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_runtime_forbid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_runtime_forbid to i32), ptr @__kstrtab_pm_runtime_forbid, ptr @__kstrtabns_pm_runtime_forbid }, section "___ksymtab_gpl+pm_runtime_forbid", align 4
@__kstrtab_pm_runtime_allow = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_runtime_allow = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_runtime_allow = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_runtime_allow to i32), ptr @__kstrtab_pm_runtime_allow, ptr @__kstrtabns_pm_runtime_allow }, section "___ksymtab_gpl+pm_runtime_allow", align 4
@__kstrtab_pm_runtime_no_callbacks = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_runtime_no_callbacks = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_runtime_no_callbacks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_runtime_no_callbacks to i32), ptr @__kstrtab_pm_runtime_no_callbacks, ptr @__kstrtabns_pm_runtime_no_callbacks }, section "___ksymtab_gpl+pm_runtime_no_callbacks", align 4
@__kstrtab_pm_runtime_irq_safe = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_runtime_irq_safe = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_runtime_irq_safe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_runtime_irq_safe to i32), ptr @__kstrtab_pm_runtime_irq_safe, ptr @__kstrtabns_pm_runtime_irq_safe }, section "___ksymtab_gpl+pm_runtime_irq_safe", align 4
@__kstrtab_pm_runtime_set_autosuspend_delay = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_runtime_set_autosuspend_delay = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_runtime_set_autosuspend_delay = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_runtime_set_autosuspend_delay to i32), ptr @__kstrtab_pm_runtime_set_autosuspend_delay, ptr @__kstrtabns_pm_runtime_set_autosuspend_delay }, section "___ksymtab_gpl+pm_runtime_set_autosuspend_delay", align 4
@__kstrtab___pm_runtime_use_autosuspend = external dso_local constant [0 x i8], align 1
@__kstrtabns___pm_runtime_use_autosuspend = external dso_local constant [0 x i8], align 1
@__ksymtab___pm_runtime_use_autosuspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__pm_runtime_use_autosuspend to i32), ptr @__kstrtab___pm_runtime_use_autosuspend, ptr @__kstrtabns___pm_runtime_use_autosuspend }, section "___ksymtab_gpl+__pm_runtime_use_autosuspend", align 4
@pm_runtime_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&dev->power.work)\00", [60 x i8] zeroinitializer }, align 32
@pm_runtime_init.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&dev->power.wait_queue\00", [41 x i8] zeroinitializer }, align 32
@pm_runtime_get_suppliers.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@pm_runtime_put_suppliers.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_pm_runtime_force_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_runtime_force_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_runtime_force_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_runtime_force_suspend to i32), ptr @__kstrtab_pm_runtime_force_suspend, ptr @__kstrtabns_pm_runtime_force_suspend }, section "___ksymtab_gpl+pm_runtime_force_suspend", align 4
@__kstrtab_pm_runtime_force_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_pm_runtime_force_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_pm_runtime_force_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pm_runtime_force_resume to i32), ptr @__kstrtab_pm_runtime_force_resume, ptr @__kstrtabns_pm_runtime_force_resume }, section "___ksymtab_gpl+pm_runtime_force_resume", align 4
@pm_wq = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_rpm_suspend = external dso_local global %struct.tracepoint, align 4
@trace_rpm_suspend_rcuidle.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/trace/events/rpm.h\00", [37 x i8] zeroinitializer }, align 32
@tracepoint_srcu = external dso_local global %struct.srcu_struct, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__rpm_put_suppliers.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rpm_suspend_suppliers.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_rpm_return_int = external dso_local global %struct.tracepoint, align 4
@trace_rpm_return_int_rcuidle.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_rpm_usage = external dso_local global %struct.tracepoint, align 4
@trace_rpm_usage_rcuidle.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_rpm_idle = external dso_local global %struct.tracepoint, align 4
@trace_rpm_idle_rcuidle.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_rpm_resume = external dso_local global %struct.tracepoint, align 4
@trace_rpm_resume_rcuidle.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rpm_get_suppliers.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967280, i64 4294967285]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.24 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.25 = private unnamed_addr constant [18 x i8] c"dev_hotplug_mutex\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 219, i32 9 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1066, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1269, i32 4 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1457, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1470, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1684, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1690, i32 2 }
@___asan_gen_.80 = private constant [32 x i8] c"../drivers/base/power/runtime.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1733, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [30 x i8] c"../include/trace/events/rpm.h\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 59, i32 1 }
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 108, i32 2 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__ksymtab___pm_runtime_disable, ptr @__ksymtab___pm_runtime_idle, ptr @__ksymtab___pm_runtime_resume, ptr @__ksymtab___pm_runtime_set_status, ptr @__ksymtab___pm_runtime_suspend, ptr @__ksymtab___pm_runtime_use_autosuspend, ptr @__ksymtab_devm_pm_runtime_enable, ptr @__ksymtab_pm_runtime_allow, ptr @__ksymtab_pm_runtime_autosuspend_expiration, ptr @__ksymtab_pm_runtime_barrier, ptr @__ksymtab_pm_runtime_enable, ptr @__ksymtab_pm_runtime_forbid, ptr @__ksymtab_pm_runtime_force_resume, ptr @__ksymtab_pm_runtime_force_suspend, ptr @__ksymtab_pm_runtime_get_if_active, ptr @__ksymtab_pm_runtime_irq_safe, ptr @__ksymtab_pm_runtime_no_callbacks, ptr @__ksymtab_pm_runtime_set_autosuspend_delay, ptr @__ksymtab_pm_runtime_set_memalloc_noio, ptr @__ksymtab_pm_runtime_suspended_time, ptr @__ksymtab_pm_schedule_suspend, ptr @__pm_runtime_set_status._entry, ptr @__pm_runtime_set_status._entry_ptr, ptr @pm_runtime_enable._entry, ptr @pm_runtime_enable._entry.10, ptr @pm_runtime_enable._entry_ptr, ptr @pm_runtime_enable._entry_ptr.12, ptr @pm_runtime_set_memalloc_noio.dev_hotplug_mutex, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @pm_runtime_init.__key, ptr @.str.13, ptr @pm_runtime_init.__key.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_runtime_set_memalloc_noio.dev_hotplug_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_runtime_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_runtime_enable._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_runtime_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_runtime_init.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @pm_runtime_active_time(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 3
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %disable_depth.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %0 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i.i)
  %cmp.not.i.i = icmp ult i16 %bf.load.i.i, 8192
  br i1 %cmp.not.i.i, label %if.end.i.i, label %entry.rpm_get_accounted_time.exit_crit_edge

entry.rpm_get_accounted_time.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpm_get_accounted_time.exit

if.end.i.i:                                       ; preds = %entry
  %accounting_timestamp.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 25
  %1 = ptrtoint ptr %accounting_timestamp.i.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %accounting_timestamp.i.i, align 8
  %call.i.i = tail call i64 @ktime_get_mono_fast_ns() #8
  %3 = ptrtoint ptr %accounting_timestamp.i.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %call.i.i, ptr %accounting_timestamp.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i, i64 %2)
  %cmp4.i.i = icmp ult i64 %call.i.i, %2
  br i1 %cmp4.i.i, label %if.end.i.i.rpm_get_accounted_time.exit_crit_edge, label %if.end6.i.i

if.end.i.i.rpm_get_accounted_time.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpm_get_accounted_time.exit

if.end6.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = sub i64 %call.i.i, %2
  %runtime_status.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %4 = ptrtoint ptr %runtime_status.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %runtime_status.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp8.i.i = icmp eq i32 %5, 2
  %suspended_time.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 24
  %active_time.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 23
  %suspended_time.sink25.i.i = select i1 %cmp8.i.i, ptr %suspended_time.i.i, ptr %active_time.i.i
  %6 = ptrtoint ptr %suspended_time.sink25.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %suspended_time.sink25.i.i, align 8
  %add.i.i = add i64 %sub.i.i, %7
  store i64 %add.i.i, ptr %suspended_time.sink25.i.i, align 8
  br label %rpm_get_accounted_time.exit

rpm_get_accounted_time.exit:                      ; preds = %if.end6.i.i, %if.end.i.i.rpm_get_accounted_time.exit_crit_edge, %entry.rpm_get_accounted_time.exit_crit_edge
  %active_time.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 23
  %8 = ptrtoint ptr %active_time.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %cond.i = load i64, ptr %active_time.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #8
  ret i64 %cond.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @pm_runtime_suspended_time(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 3
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %disable_depth.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %0 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i.i)
  %cmp.not.i.i = icmp ult i16 %bf.load.i.i, 8192
  br i1 %cmp.not.i.i, label %if.end.i.i, label %entry.rpm_get_accounted_time.exit_crit_edge

entry.rpm_get_accounted_time.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpm_get_accounted_time.exit

if.end.i.i:                                       ; preds = %entry
  %accounting_timestamp.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 25
  %1 = ptrtoint ptr %accounting_timestamp.i.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %accounting_timestamp.i.i, align 8
  %call.i.i = tail call i64 @ktime_get_mono_fast_ns() #8
  %3 = ptrtoint ptr %accounting_timestamp.i.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %call.i.i, ptr %accounting_timestamp.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i, i64 %2)
  %cmp4.i.i = icmp ult i64 %call.i.i, %2
  br i1 %cmp4.i.i, label %if.end.i.i.rpm_get_accounted_time.exit_crit_edge, label %if.end6.i.i

if.end.i.i.rpm_get_accounted_time.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpm_get_accounted_time.exit

if.end6.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = sub i64 %call.i.i, %2
  %runtime_status.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %4 = ptrtoint ptr %runtime_status.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %runtime_status.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp8.i.i = icmp eq i32 %5, 2
  %suspended_time.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 24
  %active_time.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 23
  %suspended_time.sink25.i.i = select i1 %cmp8.i.i, ptr %suspended_time.i.i, ptr %active_time.i.i
  %6 = ptrtoint ptr %suspended_time.sink25.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %suspended_time.sink25.i.i, align 8
  %add.i.i = add i64 %sub.i.i, %7
  store i64 %add.i.i, ptr %suspended_time.sink25.i.i, align 8
  br label %rpm_get_accounted_time.exit

rpm_get_accounted_time.exit:                      ; preds = %if.end6.i.i, %if.end.i.i.rpm_get_accounted_time.exit_crit_edge, %entry.rpm_get_accounted_time.exit_crit_edge
  %suspended_time.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 24
  %8 = ptrtoint ptr %suspended_time.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %cond.i = load i64, ptr %suspended_time.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #8
  ret i64 %cond.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @pm_runtime_autosuspend_expiration(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %use_autosuspend = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %0 = ptrtoint ptr %use_autosuspend to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %use_autosuspend, align 4
  %1 = and i16 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  %autosuspend_delay2 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 21
  %2 = ptrtoint ptr %autosuspend_delay2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %autosuspend_delay2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %do.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %last_busy = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 22
  %4 = ptrtoint ptr %last_busy to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load volatile i64, ptr %last_busy, align 8
  %conv20 = zext i32 %3 to i64
  %mul = mul nuw nsw i64 %conv20, 1000000
  %add = add i64 %5, %mul
  %call = tail call i64 @ktime_get_mono_fast_ns() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %call)
  %cmp10 = icmp ugt i64 %add, %call
  %add. = select i1 %cmp10, i64 %add, i64 0
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ 0, %entry.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ %add., %do.end7 ]
  ret i64 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pm_runtime_set_memalloc_noio(ptr noundef %dev, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @pm_runtime_set_memalloc_noio.dev_hotplug_mutex, i32 noundef 0) #8
  %lock31 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock31) #8
  %memalloc_noio32 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %0 = ptrtoint ptr %memalloc_noio32 to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load33 = load i16, ptr %memalloc_noio32, align 4
  %1 = and i16 %bf.load33, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not34 = icmp ne i16 %1, 0
  %bf.shl = select i1 %enable, i16 4, i16 0
  %bf.clear735 = and i16 %bf.load33, -5
  %bf.set36 = or i16 %bf.clear735, %bf.shl
  %2 = ptrtoint ptr %memalloc_noio32 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %bf.set36, ptr %memalloc_noio32, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock31) #8
  %3 = and i1 %tobool.not34, %enable
  br i1 %3, label %entry.for.end_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %entry.if.end_crit_edge
  %dev.addr.037 = phi ptr [ %5, %cleanup.if.end_crit_edge ], [ %dev, %entry.if.end_crit_edge ]
  %parent = getelementptr inbounds %struct.device, ptr %dev.addr.037, i32 0, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %tobool14.not = icmp eq ptr %5, null
  br i1 %tobool14.not, label %if.end.for.end_crit_edge, label %lor.lhs.false

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

lor.lhs.false:                                    ; preds = %if.end
  br i1 %enable, label %lor.lhs.false.cleanup_crit_edge, label %land.lhs.true16

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true16:                                  ; preds = %lor.lhs.false
  %call = tail call i32 @device_for_each_child(ptr noundef nonnull %5, ptr noundef null, ptr noundef nonnull @dev_memalloc_noio) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool17.not = icmp eq i32 %call, 0
  br i1 %tobool17.not, label %land.lhs.true16.cleanup_crit_edge, label %land.lhs.true16.for.end_crit_edge

land.lhs.true16.for.end_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

land.lhs.true16.cleanup_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true16.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge
  %lock = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %memalloc_noio = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 15
  %6 = ptrtoint ptr %memalloc_noio to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %memalloc_noio, align 4
  %7 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp ne i16 %7, 0
  %bf.clear7 = and i16 %bf.load, -5
  %bf.set = or i16 %bf.clear7, %bf.shl
  %8 = ptrtoint ptr %memalloc_noio to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %bf.set, ptr %memalloc_noio, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  %9 = and i1 %tobool.not, %enable
  br i1 %9, label %cleanup.for.end_crit_edge, label %cleanup.if.end_crit_edge

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %land.lhs.true16.for.end_crit_edge, %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @pm_runtime_set_memalloc_noio.dev_hotplug_mutex) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dev_memalloc_noio(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %memalloc_noio = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %0 = ptrtoint ptr %memalloc_noio to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %memalloc_noio, align 4
  %bf.lshr = lshr i16 %bf.load, 2
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  ret i32 %bf.cast
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pm_runtime_release_supplier(ptr noundef %link, i1 noundef zeroext %check_idle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 8
  %usage_count = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 13
  %rpm_active = getelementptr inbounds %struct.device_link, ptr %link, i32 0, i32 7
  %call7 = tail call zeroext i1 @refcount_dec_not_one(ptr noundef %rpm_active) #8
  br i1 %call7, label %entry.land.rhs_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

land.rhs:                                         ; preds = %pm_runtime_put_noidle.exit.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usage_count, i32 noundef 4) #8
  %2 = ptrtoint ptr %usage_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %usage_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !106
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #8, !srcloc !107
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %while.body.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

while.body.pm_runtime_put_noidle.exit_crit_edge:  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !108
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %while.body.pm_runtime_put_noidle.exit_crit_edge
  %call = tail call zeroext i1 @refcount_dec_not_one(ptr noundef %rpm_active) #8
  br i1 %call, label %pm_runtime_put_noidle.exit.land.rhs_crit_edge, label %pm_runtime_put_noidle.exit.while.end_crit_edge

pm_runtime_put_noidle.exit.while.end_crit_edge:   ; preds = %pm_runtime_put_noidle.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

pm_runtime_put_noidle.exit.land.rhs_crit_edge:    ; preds = %pm_runtime_put_noidle.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

while.end:                                        ; preds = %pm_runtime_put_noidle.exit.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  br i1 %check_idle, label %if.then, label %while.end.if.end_crit_edge

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %lock.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 3
  %call20.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %call25.i = tail call fastcc i32 @rpm_idle(ptr noundef %1, i32 noundef 1) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call20.i) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_not_one(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pm_schedule_suspend(ptr noundef %dev, i32 noundef %delay) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delay)
  %tobool.not = icmp eq i32 %delay, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call fastcc i32 @rpm_suspend(ptr noundef %dev, i32 noundef 1)
  br label %out

if.end:                                           ; preds = %entry
  %call7 = tail call fastcc i32 @rpm_check_suspend_allowed(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end10:                                         ; preds = %if.end
  %timer_expires.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 9
  %0 = ptrtoint ptr %timer_expires.i.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %timer_expires.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp.not.i.i = icmp eq i64 %1, 0
  br i1 %cmp.not.i.i, label %if.end10.pm_runtime_cancel_pending.exit_crit_edge, label %if.then.i.i

if.end10.pm_runtime_cancel_pending.exit_crit_edge: ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm_runtime_cancel_pending.exit

if.then.i.i:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %suspend_timer.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 8
  %call.i.i = tail call i32 @hrtimer_try_to_cancel(ptr noundef %suspend_timer.i.i) #8
  %2 = ptrtoint ptr %timer_expires.i.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %timer_expires.i.i, align 8
  br label %pm_runtime_cancel_pending.exit

pm_runtime_cancel_pending.exit:                   ; preds = %if.then.i.i, %if.end10.pm_runtime_cancel_pending.exit_crit_edge
  %request.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 17
  %3 = ptrtoint ptr %request.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %request.i, align 4
  %call11 = tail call i64 @ktime_get_mono_fast_ns() #8
  %conv12 = zext i32 %delay to i64
  %mul = mul nuw nsw i64 %conv12, 1000000
  %add = add i64 %call11, %mul
  %4 = ptrtoint ptr %timer_expires.i.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %add, ptr %timer_expires.i.i, align 8
  %timer_autosuspends = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %5 = ptrtoint ptr %timer_autosuspends to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load = load i16, ptr %timer_autosuspends, align 4
  %bf.clear = and i16 %bf.load, -9
  store i16 %bf.clear, ptr %timer_autosuspends, align 4
  %suspend_timer = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 8
  tail call void @hrtimer_start_range_ns(ptr noundef %suspend_timer, i64 noundef %add, i64 noundef 0, i32 noundef 0) #8
  br label %out

out:                                              ; preds = %pm_runtime_cancel_pending.exit, %if.end.out_crit_edge, %if.then
  %retval1.0 = phi i32 [ %call7, %if.end.out_crit_edge ], [ 0, %pm_runtime_cancel_pending.exit ], [ %call6, %if.then ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  ret i32 %retval1.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rpm_suspend(ptr noundef %dev, i32 noundef %rpmflags) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_rpm_suspend_rcuidle(ptr noundef %dev, i32 noundef %rpmflags)
  %call407 = tail call fastcc i32 @rpm_check_suspend_allowed(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call407)
  %cmp408 = icmp slt i32 %call407, 0
  br i1 %cmp408, label %entry.cleanup200_crit_edge, label %if.end.lr.ph

entry.cleanup200_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup200

if.end.lr.ph:                                     ; preds = %entry
  %runtime_status = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %and = and i32 %rpmflags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and8 = and i32 %rpmflags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %use_autosuspend.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %autosuspend_delay2.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 21
  %last_busy.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 22
  %timer_expires.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 9
  %suspend_timer.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 8
  %request.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 17
  %accounting_timestamp.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 25
  %suspended_time.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 24
  %active_time.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 23
  %pm_domain.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 13
  %type.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %class.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 33
  %bus.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 5
  %driver.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %runtime_error.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 20
  %wait_queue184 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 11
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %and44 = and i32 %rpmflags, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  %lock = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 3
  br label %if.end

if.end:                                           ; preds = %repeat.backedge.if.end_crit_edge, %if.end.lr.ph
  %call409 = phi i32 [ %call407, %if.end.lr.ph ], [ %call, %repeat.backedge.if.end_crit_edge ]
  %4 = ptrtoint ptr %runtime_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %runtime_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp2 = icmp eq i32 %5, 1
  %or.cond = and i1 %tobool.not, %cmp2
  %retval1.0 = select i1 %or.cond, i32 -11, i32 %call409
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0)
  %tobool5.not = icmp eq i32 %retval1.0, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup200_crit_edge

if.end.cleanup200_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup200

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp13.not = icmp eq i32 %5, 3
  %or.cond374 = select i1 %tobool9.not, i1 true, i1 %cmp13.not
  br i1 %or.cond374, label %if.end7.if.end34_crit_edge, label %if.then14

if.end7.if.end34_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then14:                                        ; preds = %if.end7
  %6 = ptrtoint ptr %use_autosuspend.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %use_autosuspend.i, align 4
  %7 = and i16 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not.i = icmp eq i16 %7, 0
  br i1 %tobool.not.i, label %if.then14.if.end34_crit_edge, label %do.end.i

if.then14.if.end34_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

do.end.i:                                         ; preds = %if.then14
  %8 = ptrtoint ptr %autosuspend_delay2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %autosuspend_delay2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp slt i32 %9, 0
  br i1 %cmp.i, label %do.end.i.if.end34_crit_edge, label %do.end7.i

do.end.i.if.end34_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

do.end7.i:                                        ; preds = %do.end.i
  %10 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load volatile i64, ptr %last_busy.i, align 8
  %conv20.i = zext i32 %9 to i64
  %mul.i = mul nuw nsw i64 %conv20.i, 1000000
  %add.i = add i64 %11, %mul.i
  %call.i = call i64 @ktime_get_mono_fast_ns() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %call.i)
  %cmp10.i = icmp ugt i64 %add.i, %call.i
  br i1 %cmp10.i, label %if.then17, label %do.end7.i.if.end34_crit_edge

do.end7.i.if.end34_crit_edge:                     ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.then17:                                        ; preds = %do.end7.i
  %12 = ptrtoint ptr %request.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %request.i, align 4
  %13 = ptrtoint ptr %timer_expires.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %timer_expires.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %tobool20.not = icmp eq i64 %14, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %add.i)
  %cmp24.not = icmp ugt i64 %14, %add.i
  %or.cond279 = select i1 %tobool20.not, i1 true, i1 %cmp24.not
  br i1 %or.cond279, label %if.then25, label %if.then17.cleanup_crit_edge

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then25:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %autosuspend_delay2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %autosuspend_delay2.i, align 4
  %conv = sext i32 %16 to i64
  %mul = mul nsw i64 %conv, 250000
  %17 = ptrtoint ptr %timer_expires.i.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %add.i, ptr %timer_expires.i.i, align 8
  call void @hrtimer_start_range_ns(ptr noundef %suspend_timer.i.i, i64 noundef %add.i, i64 noundef %mul, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.then17.cleanup_crit_edge
  %18 = ptrtoint ptr %use_autosuspend.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load = load i16, ptr %use_autosuspend.i, align 4
  %bf.set = or i16 %bf.load, 8
  store i16 %bf.set, ptr %use_autosuspend.i, align 4
  br label %cleanup200

if.end34:                                         ; preds = %do.end7.i.if.end34_crit_edge, %do.end.i.if.end34_crit_edge, %if.then14.if.end34_crit_edge, %if.end7.if.end34_crit_edge
  %19 = ptrtoint ptr %timer_expires.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %timer_expires.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %20)
  %cmp.not.i.i = icmp eq i64 %20, 0
  br i1 %cmp.not.i.i, label %if.end34.pm_runtime_cancel_pending.exit_crit_edge, label %if.then.i.i

if.end34.pm_runtime_cancel_pending.exit_crit_edge: ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm_runtime_cancel_pending.exit

if.then.i.i:                                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i281 = call i32 @hrtimer_try_to_cancel(ptr noundef %suspend_timer.i.i) #8
  %21 = ptrtoint ptr %timer_expires.i.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 0, ptr %timer_expires.i.i, align 8
  br label %pm_runtime_cancel_pending.exit

pm_runtime_cancel_pending.exit:                   ; preds = %if.then.i.i, %if.end34.pm_runtime_cancel_pending.exit_crit_edge
  %22 = ptrtoint ptr %request.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %request.i, align 4
  %23 = ptrtoint ptr %runtime_status to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %runtime_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %cmp37 = icmp eq i32 %24, 3
  br i1 %cmp37, label %if.then39, label %if.end81

if.then39:                                        ; preds = %pm_runtime_cancel_pending.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #8
  %25 = call ptr @memset(ptr %0, i32 255, i32 16)
  %26 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %wait, align 4
  %27 = call i32 @llvm.read_register.i32(metadata !96) #8
  %and.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task, align 8
  %31 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %0, align 4
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @autoremove_wake_function, ptr %1, align 4
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %2, ptr %2, align 4
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %2, ptr %3, align 4
  br i1 %tobool45.not, label %if.end47, label %cleanup79.thread

cleanup79.thread:                                 ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #8
  br label %cleanup200

if.end47:                                         ; preds = %if.then39
  %35 = ptrtoint ptr %use_autosuspend.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %bf.load49 = load i16, ptr %use_autosuspend.i, align 4
  %36 = and i16 %bf.load49, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool51.not = icmp eq i16 %36, 0
  br i1 %tobool51.not, label %for.cond.preheader, label %if.then52

for.cond.preheader:                               ; preds = %if.end47
  call void @prepare_to_wait(ptr noundef %wait_queue184, ptr noundef nonnull %wait, i32 noundef 2) #8
  %37 = ptrtoint ptr %runtime_status to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %runtime_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %38)
  %cmp69.not405 = icmp eq i32 %38, 3
  br i1 %cmp69.not405, label %for.cond.preheader.if.end72_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.preheader.if.end72_crit_edge:            ; preds = %for.cond.preheader
  br label %if.end72

if.then52:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock(ptr noundef %lock) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !109
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !110
  call void @_raw_spin_lock(ptr noundef %lock) #8
  br label %cleanup79

if.end72:                                         ; preds = %if.end72.if.end72_crit_edge, %for.cond.preheader.if.end72_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  call void @schedule() #8
  call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  call void @prepare_to_wait(ptr noundef %wait_queue184, ptr noundef nonnull %wait, i32 noundef 2) #8
  %39 = ptrtoint ptr %runtime_status to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %runtime_status, align 8
  %cmp69.not = icmp eq i32 %40, 3
  br i1 %cmp69.not, label %if.end72.if.end72_crit_edge, label %if.end72.for.end_crit_edge

if.end72.for.end_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end72.if.end72_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

for.end:                                          ; preds = %if.end72.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  call void @finish_wait(ptr noundef %wait_queue184, ptr noundef nonnull %wait) #8
  br label %cleanup79

cleanup79:                                        ; preds = %for.end, %if.then52
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #8
  br label %repeat.backedge

repeat.backedge:                                  ; preds = %do.end7.i348.repeat.backedge_crit_edge, %cleanup79
  %call = call fastcc i32 @rpm_check_suspend_allowed(ptr noundef %dev)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %repeat.backedge.cleanup200_crit_edge, label %repeat.backedge.if.end_crit_edge

repeat.backedge.if.end_crit_edge:                 ; preds = %repeat.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

repeat.backedge.cleanup200_crit_edge:             ; preds = %repeat.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup200

if.end81:                                         ; preds = %pm_runtime_cancel_pending.exit
  %41 = ptrtoint ptr %use_autosuspend.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %bf.load83 = load i16, ptr %use_autosuspend.i, align 4
  %42 = and i16 %bf.load83, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool87.not = icmp eq i16 %42, 0
  br i1 %tobool87.not, label %if.end89, label %if.end81.no_callback_crit_edge

if.end81.no_callback_crit_edge:                   ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %no_callback

if.end89:                                         ; preds = %if.end81
  br i1 %tobool.not, label %if.end112, label %if.then92

if.then92:                                        ; preds = %if.end89
  %cond = select i1 %tobool9.not, i32 2, i32 3
  %43 = ptrtoint ptr %request.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %cond, ptr %request.i, align 4
  %44 = and i16 %bf.load83, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool102.not = icmp eq i16 %44, 0
  br i1 %tobool102.not, label %if.then103, label %if.then92.cleanup200_crit_edge

if.then92.cleanup200_crit_edge:                   ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup200

if.then103:                                       ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set108 = or i16 %bf.load83, 2048
  %45 = ptrtoint ptr %use_autosuspend.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %bf.set108, ptr %use_autosuspend.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pm_wq to i32))
  %46 = load ptr, ptr @pm_wq, align 4
  %work = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 10
  %call.i282 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %46, ptr noundef %work) #8
  br label %cleanup200

if.end112:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load83)
  %cmp.not.i.i283 = icmp ult i16 %bf.load83, 8192
  br i1 %cmp.not.i.i283, label %if.end.i.i, label %if.end112.__update_runtime_status.exit_crit_edge

if.end112.__update_runtime_status.exit_crit_edge: ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #10
  br label %__update_runtime_status.exit

if.end.i.i:                                       ; preds = %if.end112
  %47 = ptrtoint ptr %accounting_timestamp.i.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %accounting_timestamp.i.i, align 8
  %call.i.i284 = call i64 @ktime_get_mono_fast_ns() #8
  %49 = ptrtoint ptr %accounting_timestamp.i.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %call.i.i284, ptr %accounting_timestamp.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i284, i64 %48)
  %cmp4.i.i = icmp ult i64 %call.i.i284, %48
  br i1 %cmp4.i.i, label %if.end.i.i.__update_runtime_status.exit_crit_edge, label %if.end6.i.i

if.end.i.i.__update_runtime_status.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__update_runtime_status.exit

if.end6.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = sub i64 %call.i.i284, %48
  %50 = ptrtoint ptr %runtime_status to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %runtime_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %51)
  %cmp8.i.i = icmp eq i32 %51, 2
  %suspended_time.sink25.i.i = select i1 %cmp8.i.i, ptr %suspended_time.i.i, ptr %active_time.i.i
  %52 = ptrtoint ptr %suspended_time.sink25.i.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %suspended_time.sink25.i.i, align 8
  %add.i.i = add i64 %sub.i.i, %53
  store i64 %add.i.i, ptr %suspended_time.sink25.i.i, align 8
  br label %__update_runtime_status.exit

__update_runtime_status.exit:                     ; preds = %if.end6.i.i, %if.end.i.i.__update_runtime_status.exit_crit_edge, %if.end112.__update_runtime_status.exit_crit_edge
  %54 = ptrtoint ptr %runtime_status to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 3, ptr %runtime_status, align 8
  %55 = ptrtoint ptr %pm_domain.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pm_domain.i, align 8
  %tobool.not.i285 = icmp eq ptr %56, null
  br i1 %tobool.not.i285, label %if.else.i, label %__update_runtime_status.exit.if.end34.i_crit_edge

__update_runtime_status.exit.if.end34.i_crit_edge: ; preds = %__update_runtime_status.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

if.else.i:                                        ; preds = %__update_runtime_status.exit
  %57 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %type.i, align 4
  %tobool3.not.i = icmp eq ptr %58, null
  br i1 %tobool3.not.i, label %if.else.i.if.else9.i_crit_edge, label %land.lhs.true.i

if.else.i.if.else9.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else9.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %pm.i = getelementptr inbounds %struct.device_type, ptr %58, i32 0, i32 5
  %59 = ptrtoint ptr %pm.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pm.i, align 4
  %tobool5.not.i = icmp eq ptr %60, null
  br i1 %tobool5.not.i, label %land.lhs.true.i.if.else9.i_crit_edge, label %land.lhs.true.i.if.end34.i_crit_edge

land.lhs.true.i.if.end34.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

land.lhs.true.i.if.else9.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else9.i

if.else9.i:                                       ; preds = %land.lhs.true.i.if.else9.i_crit_edge, %if.else.i.if.else9.i_crit_edge
  %61 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %class.i, align 4
  %tobool10.not.i = icmp eq ptr %62, null
  br i1 %tobool10.not.i, label %if.else9.i.if.else18.i_crit_edge, label %land.lhs.true11.i

if.else9.i.if.else18.i_crit_edge:                 ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else18.i

land.lhs.true11.i:                                ; preds = %if.else9.i
  %pm13.i = getelementptr inbounds %struct.class, ptr %62, i32 0, i32 13
  %63 = ptrtoint ptr %pm13.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pm13.i, align 4
  %tobool14.not.i = icmp eq ptr %64, null
  br i1 %tobool14.not.i, label %land.lhs.true11.i.if.else18.i_crit_edge, label %land.lhs.true11.i.if.end34.i_crit_edge

land.lhs.true11.i.if.end34.i_crit_edge:           ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

land.lhs.true11.i.if.else18.i_crit_edge:          ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else18.i

if.else18.i:                                      ; preds = %land.lhs.true11.i.if.else18.i_crit_edge, %if.else9.i.if.else18.i_crit_edge
  %65 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bus.i, align 8
  %tobool19.not.i = icmp eq ptr %66, null
  br i1 %tobool19.not.i, label %if.else18.i.land.lhs.true36.i_crit_edge, label %land.lhs.true20.i

if.else18.i.land.lhs.true36.i_crit_edge:          ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true36.i

land.lhs.true20.i:                                ; preds = %if.else18.i
  %pm22.i = getelementptr inbounds %struct.bus_type, ptr %66, i32 0, i32 18
  %67 = ptrtoint ptr %pm22.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pm22.i, align 4
  %tobool23.not.i = icmp eq ptr %68, null
  br i1 %tobool23.not.i, label %land.lhs.true20.i.land.lhs.true36.i_crit_edge, label %land.lhs.true20.i.if.end34.i_crit_edge

land.lhs.true20.i.if.end34.i_crit_edge:           ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

land.lhs.true20.i.land.lhs.true36.i_crit_edge:    ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true36.i

if.end34.i:                                       ; preds = %land.lhs.true20.i.if.end34.i_crit_edge, %land.lhs.true11.i.if.end34.i_crit_edge, %land.lhs.true.i.if.end34.i_crit_edge, %__update_runtime_status.exit.if.end34.i_crit_edge
  %ops.0.ph.i = phi ptr [ %68, %land.lhs.true20.i.if.end34.i_crit_edge ], [ %64, %land.lhs.true11.i.if.end34.i_crit_edge ], [ %60, %land.lhs.true.i.if.end34.i_crit_edge ], [ %56, %__update_runtime_status.exit.if.end34.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %ops.0.ph.i, i32 80
  %69 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %add.ptr.i, align 4
  %tobool35.not.i = icmp eq ptr %70, null
  br i1 %tobool35.not.i, label %if.end34.i.land.lhs.true36.i_crit_edge, label %if.end34.i.__rpm_get_callback.exit_crit_edge

if.end34.i.__rpm_get_callback.exit_crit_edge:     ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__rpm_get_callback.exit

if.end34.i.land.lhs.true36.i_crit_edge:           ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true36.i

land.lhs.true36.i:                                ; preds = %if.end34.i.land.lhs.true36.i_crit_edge, %land.lhs.true20.i.land.lhs.true36.i_crit_edge, %if.else18.i.land.lhs.true36.i_crit_edge
  %71 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %driver.i, align 4
  %tobool37.not.i = icmp eq ptr %72, null
  br i1 %tobool37.not.i, label %land.lhs.true36.i.__rpm_get_callback.exit_crit_edge, label %land.lhs.true38.i

land.lhs.true36.i.__rpm_get_callback.exit_crit_edge: ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__rpm_get_callback.exit

land.lhs.true38.i:                                ; preds = %land.lhs.true36.i
  %pm40.i = getelementptr inbounds %struct.device_driver, ptr %72, i32 0, i32 16
  %73 = ptrtoint ptr %pm40.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pm40.i, align 4
  %tobool41.not.i = icmp eq ptr %74, null
  br i1 %tobool41.not.i, label %land.lhs.true38.i.__rpm_get_callback.exit_crit_edge, label %if.then42.i

land.lhs.true38.i.__rpm_get_callback.exit_crit_edge: ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__rpm_get_callback.exit

if.then42.i:                                      ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr45.i = getelementptr i8, ptr %74, i32 80
  %75 = ptrtoint ptr %add.ptr45.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %add.ptr45.i, align 4
  br label %__rpm_get_callback.exit

__rpm_get_callback.exit:                          ; preds = %if.then42.i, %land.lhs.true38.i.__rpm_get_callback.exit_crit_edge, %land.lhs.true36.i.__rpm_get_callback.exit_crit_edge, %if.end34.i.__rpm_get_callback.exit_crit_edge
  %cb.1.i = phi ptr [ %70, %if.end34.i.__rpm_get_callback.exit_crit_edge ], [ %76, %if.then42.i ], [ null, %land.lhs.true38.i.__rpm_get_callback.exit_crit_edge ], [ null, %land.lhs.true36.i.__rpm_get_callback.exit_crit_edge ]
  call void @dev_pm_enable_wake_irq_check(ptr noundef %dev, i1 noundef zeroext true) #8
  %77 = ptrtoint ptr %use_autosuspend.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %bf.load.i286 = load i16, ptr %use_autosuspend.i, align 4
  %78 = and i16 %bf.load.i286, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %tobool.not.i287 = icmp eq i16 %78, 0
  br i1 %tobool.not.i287, label %if.else.i289, label %if.then.i

if.then.i:                                        ; preds = %__rpm_get_callback.exit
  call void @__sanitizer_cov_trace_pc() #10
  %79 = call i32 @llvm.read_register.i32(metadata !96) #8
  %and.i.i359 = and i32 %79, -16384
  %80 = inttoptr i32 %and.i.i359 to ptr
  %task.i360 = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %task.i360 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %task.i360, align 8
  %flags1.i361 = getelementptr inbounds %struct.task_struct, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %flags1.i361 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %flags1.i361, align 4
  %and.i362 = and i32 %84, 524288
  %or.i363 = or i32 %84, 524288
  store i32 %or.i363, ptr %flags1.i361, align 4
  %call2.i = call fastcc i32 @__rpm_callback(ptr noundef %cb.1.i, ptr noundef %dev) #8
  %85 = call i32 @llvm.read_register.i32(metadata !96) #8
  %and.i.i = and i32 %85, -16384
  %86 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %task.i, align 8
  %flags1.i = getelementptr inbounds %struct.task_struct, ptr %88, i32 0, i32 3
  %89 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %flags1.i, align 4
  %and.i358 = and i32 %90, -524289
  %or.i = or i32 %and.i358, %and.i362
  store i32 %or.i, ptr %flags1.i, align 4
  br label %rpm_callback.exit

if.else.i289:                                     ; preds = %__rpm_get_callback.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = call fastcc i32 @__rpm_callback(ptr noundef %cb.1.i, ptr noundef %dev) #8
  br label %rpm_callback.exit

rpm_callback.exit:                                ; preds = %if.else.i289, %if.then.i
  %retval1.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call3.i, %if.else.i289 ]
  %91 = ptrtoint ptr %runtime_error.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %retval1.0.i, ptr %runtime_error.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13, i32 %retval1.0.i)
  %cmp.not.i = icmp eq i32 %retval1.0.i, -13
  %spec.select.i = select i1 %cmp.not.i, i32 -5, i32 %retval1.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool115.not = icmp eq i32 %spec.select.i, 0
  br i1 %tobool115.not, label %if.end117, label %fail

if.end117:                                        ; preds = %rpm_callback.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @dev_pm_enable_wake_irq_complete(ptr noundef %dev) #8
  %92 = ptrtoint ptr %use_autosuspend.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %bf.load.i.i291.pr = load i16, ptr %use_autosuspend.i, align 4
  br label %no_callback

no_callback:                                      ; preds = %if.end117, %if.end81.no_callback_crit_edge
  %bf.load.i.i291 = phi i16 [ %bf.load.i.i291.pr, %if.end117 ], [ %bf.load83, %if.end81.no_callback_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i.i291)
  %cmp.not.i.i292 = icmp ult i16 %bf.load.i.i291, 8192
  br i1 %cmp.not.i.i292, label %if.end.i.i296, label %no_callback.__update_runtime_status.exit306_crit_edge

no_callback.__update_runtime_status.exit306_crit_edge: ; preds = %no_callback
  call void @__sanitizer_cov_trace_pc() #10
  br label %__update_runtime_status.exit306

if.end.i.i296:                                    ; preds = %no_callback
  %93 = ptrtoint ptr %accounting_timestamp.i.i to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %accounting_timestamp.i.i, align 8
  %call.i.i294 = call i64 @ktime_get_mono_fast_ns() #8
  %95 = ptrtoint ptr %accounting_timestamp.i.i to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %call.i.i294, ptr %accounting_timestamp.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i294, i64 %94)
  %cmp4.i.i295 = icmp ult i64 %call.i.i294, %94
  br i1 %cmp4.i.i295, label %if.end.i.i296.__update_runtime_status.exit306_crit_edge, label %if.end6.i.i304

if.end.i.i296.__update_runtime_status.exit306_crit_edge: ; preds = %if.end.i.i296
  call void @__sanitizer_cov_trace_pc() #10
  br label %__update_runtime_status.exit306

if.end6.i.i304:                                   ; preds = %if.end.i.i296
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i297 = sub i64 %call.i.i294, %94
  %96 = ptrtoint ptr %runtime_status to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %runtime_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %97)
  %cmp8.i.i299 = icmp eq i32 %97, 2
  %suspended_time.sink25.i.i302 = select i1 %cmp8.i.i299, ptr %suspended_time.i.i, ptr %active_time.i.i
  %98 = ptrtoint ptr %suspended_time.sink25.i.i302 to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %suspended_time.sink25.i.i302, align 8
  %add.i.i303 = add i64 %sub.i.i297, %99
  store i64 %add.i.i303, ptr %suspended_time.sink25.i.i302, align 8
  br label %__update_runtime_status.exit306

__update_runtime_status.exit306:                  ; preds = %if.end6.i.i304, %if.end.i.i296.__update_runtime_status.exit306_crit_edge, %no_callback.__update_runtime_status.exit306_crit_edge
  %100 = ptrtoint ptr %runtime_status to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 2, ptr %runtime_status, align 8
  %101 = ptrtoint ptr %timer_expires.i.i to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %timer_expires.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %102)
  %cmp.not.i307 = icmp eq i64 %102, 0
  br i1 %cmp.not.i307, label %__update_runtime_status.exit306.pm_runtime_deactivate_timer.exit_crit_edge, label %if.then.i309

__update_runtime_status.exit306.pm_runtime_deactivate_timer.exit_crit_edge: ; preds = %__update_runtime_status.exit306
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm_runtime_deactivate_timer.exit

if.then.i309:                                     ; preds = %__update_runtime_status.exit306
  call void @__sanitizer_cov_trace_pc() #10
  %call.i308 = call i32 @hrtimer_try_to_cancel(ptr noundef %suspend_timer.i.i) #8
  %103 = ptrtoint ptr %timer_expires.i.i to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 0, ptr %timer_expires.i.i, align 8
  br label %pm_runtime_deactivate_timer.exit

pm_runtime_deactivate_timer.exit:                 ; preds = %if.then.i309, %__update_runtime_status.exit306.pm_runtime_deactivate_timer.exit_crit_edge
  %parent118 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %104 = ptrtoint ptr %parent118 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %parent118, align 8
  %tobool119.not = icmp eq ptr %105, null
  br i1 %tobool119.not, label %pm_runtime_deactivate_timer.exit.if.end124_crit_edge, label %if.then120

pm_runtime_deactivate_timer.exit.if.end124_crit_edge: ; preds = %pm_runtime_deactivate_timer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end124

if.then120:                                       ; preds = %pm_runtime_deactivate_timer.exit
  %child_count = getelementptr inbounds %struct.device, ptr %105, i32 0, i32 12, i32 14
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %child_count, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !106
  call void @llvm.prefetch.p0(ptr %child_count, i32 1, i32 3, i32 1) #8
  %106 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %child_count, ptr %child_count, i32 0, i32 -1, ptr elementtype(i32) %child_count) #8, !srcloc !107
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %106, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %if.then120.if.end124_crit_edge, label %do.end11.i.i.i

if.then120.if.end124_crit_edge:                   ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end124

do.end11.i.i.i:                                   ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !108
  br label %if.end124

if.end124:                                        ; preds = %do.end11.i.i.i, %if.then120.if.end124_crit_edge, %pm_runtime_deactivate_timer.exit.if.end124_crit_edge
  call void @__wake_up(ptr noundef %wait_queue184, i32 noundef 3, i32 noundef 0, ptr noundef null) #8
  %107 = ptrtoint ptr %use_autosuspend.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %bf.load128 = load i16, ptr %use_autosuspend.i, align 4
  %108 = and i16 %bf.load128, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %108)
  %tobool132.not = icmp eq i16 %108, 0
  br i1 %tobool132.not, label %if.end140, label %if.then133

if.then133:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #10
  %bf.clear137 = and i16 %bf.load128, -1025
  %109 = ptrtoint ptr %use_autosuspend.i to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %bf.clear137, ptr %use_autosuspend.i, align 4
  %call139 = call fastcc i32 @rpm_resume(ptr noundef %dev, i32 noundef 0)
  br label %cleanup200

if.end140:                                        ; preds = %if.end124
  %110 = and i16 %bf.load128, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %110)
  %tobool147.not = icmp eq i16 %110, 0
  br i1 %tobool147.not, label %if.end149, label %if.end140.cleanup200_crit_edge

if.end140.cleanup200_crit_edge:                   ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup200

if.end149:                                        ; preds = %if.end140
  br i1 %tobool119.not, label %if.end149.if.end167_crit_edge, label %land.lhs.true151

if.end149.if.end167_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end167

land.lhs.true151:                                 ; preds = %if.end149
  %ignore_children = getelementptr inbounds %struct.device, ptr %105, i32 0, i32 12, i32 15
  %111 = ptrtoint ptr %ignore_children to i32
  call void @__asan_load2_noabort(i32 %111)
  %bf.load153 = load i16, ptr %ignore_children, align 4
  %112 = and i16 %bf.load153, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %112)
  %bf.cast156.not = icmp eq i16 %112, 0
  br i1 %bf.cast156.not, label %if.then157, label %land.lhs.true151.if.end167_crit_edge

land.lhs.true151.if.end167_crit_edge:             ; preds = %land.lhs.true151
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end167

if.then157:                                       ; preds = %land.lhs.true151
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock(ptr noundef %lock) #8
  %lock161 = getelementptr inbounds %struct.device, ptr %105, i32 0, i32 12, i32 3
  call void @_raw_spin_lock(ptr noundef %lock161) #8
  %call162 = call fastcc i32 @rpm_idle(ptr noundef nonnull %105, i32 noundef 1)
  call void @_raw_spin_unlock(ptr noundef %lock161) #8
  call void @_raw_spin_lock(ptr noundef %lock) #8
  br label %if.end167

if.end167:                                        ; preds = %if.then157, %land.lhs.true151.if.end167_crit_edge, %if.end149.if.end167_crit_edge
  %links_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 16
  %113 = ptrtoint ptr %links_count to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %links_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %cmp169.not = icmp eq i32 %114, 0
  br i1 %cmp169.not, label %if.end167.cleanup200_crit_edge, label %if.then171

if.end167.cleanup200_crit_edge:                   ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup200

if.then171:                                       ; preds = %if.end167
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  %call.i310 = call i32 @device_links_read_lock() #8
  %call1.i = call i32 @device_links_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i311 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i311, label %land.lhs.true.i314, label %if.then171.do.end.i316_crit_edge

if.then171.do.end.i316_crit_edge:                 ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i316

land.lhs.true.i314:                               ; preds = %if.then171
  %call2.i312 = call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i312)
  %tobool3.not.i313 = icmp eq i32 %call2.i312, 0
  br i1 %tobool3.not.i313, label %land.lhs.true4.i, label %land.lhs.true.i314.do.end.i316_crit_edge

land.lhs.true.i314.do.end.i316_crit_edge:         ; preds = %land.lhs.true.i314
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i316

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i314
  %call5.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true4.i.do.end.i316_crit_edge, label %land.lhs.true7.i

land.lhs.true4.i.do.end.i316_crit_edge:           ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i316

land.lhs.true7.i:                                 ; preds = %land.lhs.true4.i
  %.b28.i = load i1, ptr @rpm_suspend_suppliers.__warned, align 1
  br i1 %.b28.i, label %land.lhs.true7.i.do.end.i316_crit_edge, label %if.then.i315

land.lhs.true7.i.do.end.i316_crit_edge:           ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i316

if.then.i315:                                     ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rpm_suspend_suppliers.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 355, ptr noundef nonnull @.str.16) #8
  br label %do.end.i316

do.end.i316:                                      ; preds = %if.then.i315, %land.lhs.true7.i.do.end.i316_crit_edge, %land.lhs.true4.i.do.end.i316_crit_edge, %land.lhs.true.i314.do.end.i316_crit_edge, %if.then171.do.end.i316_crit_edge
  %links.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 11
  %115 = ptrtoint ptr %links.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %.pn.i415 = load volatile ptr, ptr %links.i, align 8
  %cmp.not.i317416 = icmp eq ptr %.pn.i415, %links.i
  br i1 %cmp.not.i317416, label %do.end.i316.rpm_suspend_suppliers.exit_crit_edge, label %do.end.i316.for.body.i_crit_edge

do.end.i316.for.body.i_crit_edge:                 ; preds = %do.end.i316
  br label %for.body.i

do.end.i316.rpm_suspend_suppliers.exit_crit_edge: ; preds = %do.end.i316
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpm_suspend_suppliers.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end.i316.for.body.i_crit_edge
  %.pn.i417 = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn.i415, %do.end.i316.for.body.i_crit_edge ]
  %link.0.i = getelementptr i8, ptr %.pn.i417, i32 -16
  %116 = ptrtoint ptr %link.0.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %link.0.i, align 8
  %lock.i.i = getelementptr inbounds %struct.device, ptr %117, i32 0, i32 12, i32 3
  %call20.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #8
  %call25.i.i = call fastcc i32 @rpm_idle(ptr noundef %117, i32 noundef 1) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call20.i.i) #8
  %118 = ptrtoint ptr %.pn.i417 to i32
  call void @__asan_load4_noabort(i32 %118)
  %.pn.i = load volatile ptr, ptr %.pn.i417, align 8
  %cmp.not.i317 = icmp eq ptr %.pn.i, %links.i
  br i1 %cmp.not.i317, label %for.body.i.rpm_suspend_suppliers.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.rpm_suspend_suppliers.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpm_suspend_suppliers.exit

rpm_suspend_suppliers.exit:                       ; preds = %for.body.i.rpm_suspend_suppliers.exit_crit_edge, %do.end.i316.rpm_suspend_suppliers.exit_crit_edge
  call void @device_links_read_unlock(i32 noundef %call.i310) #8
  call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  br label %cleanup200

fail:                                             ; preds = %rpm_callback.exit
  call void @dev_pm_disable_wake_irq_check(ptr noundef %dev, i1 noundef zeroext true) #8
  %119 = ptrtoint ptr %use_autosuspend.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %bf.load.i.i319 = load i16, ptr %use_autosuspend.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i.i319)
  %cmp.not.i.i320 = icmp ult i16 %bf.load.i.i319, 8192
  br i1 %cmp.not.i.i320, label %if.end.i.i324, label %fail.__update_runtime_status.exit334_crit_edge

fail.__update_runtime_status.exit334_crit_edge:   ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #10
  br label %__update_runtime_status.exit334

if.end.i.i324:                                    ; preds = %fail
  %120 = ptrtoint ptr %accounting_timestamp.i.i to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %accounting_timestamp.i.i, align 8
  %call.i.i322 = call i64 @ktime_get_mono_fast_ns() #8
  %122 = ptrtoint ptr %accounting_timestamp.i.i to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 %call.i.i322, ptr %accounting_timestamp.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i322, i64 %121)
  %cmp4.i.i323 = icmp ult i64 %call.i.i322, %121
  br i1 %cmp4.i.i323, label %if.end.i.i324.__update_runtime_status.exit334_crit_edge, label %if.end6.i.i332

if.end.i.i324.__update_runtime_status.exit334_crit_edge: ; preds = %if.end.i.i324
  call void @__sanitizer_cov_trace_pc() #10
  br label %__update_runtime_status.exit334

if.end6.i.i332:                                   ; preds = %if.end.i.i324
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i325 = sub i64 %call.i.i322, %121
  %123 = ptrtoint ptr %runtime_status to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %runtime_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %124)
  %cmp8.i.i327 = icmp eq i32 %124, 2
  %suspended_time.sink25.i.i330 = select i1 %cmp8.i.i327, ptr %suspended_time.i.i, ptr %active_time.i.i
  %125 = ptrtoint ptr %suspended_time.sink25.i.i330 to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %suspended_time.sink25.i.i330, align 8
  %add.i.i331 = add i64 %sub.i.i325, %126
  store i64 %add.i.i331, ptr %suspended_time.sink25.i.i330, align 8
  br label %__update_runtime_status.exit334

__update_runtime_status.exit334:                  ; preds = %if.end6.i.i332, %if.end.i.i324.__update_runtime_status.exit334_crit_edge, %fail.__update_runtime_status.exit334_crit_edge
  %127 = ptrtoint ptr %runtime_status to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %runtime_status, align 8
  %128 = ptrtoint ptr %use_autosuspend.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %bf.load180 = load i16, ptr %use_autosuspend.i, align 4
  %bf.clear181 = and i16 %bf.load180, -1025
  store i16 %bf.clear181, ptr %use_autosuspend.i, align 4
  call void @__wake_up(ptr noundef %wait_queue184, i32 noundef 3, i32 noundef 0, ptr noundef null) #8
  %129 = zext i32 %spec.select.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %129, ptr @__sancov_gen_cov_switch_values)
  switch i32 %spec.select.i, label %if.else [
    i32 -11, label %__update_runtime_status.exit334.if.then189_crit_edge
    i32 -16, label %__update_runtime_status.exit334.if.then189_crit_edge452
  ]

__update_runtime_status.exit334.if.then189_crit_edge452: ; preds = %__update_runtime_status.exit334
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then189

__update_runtime_status.exit334.if.then189_crit_edge: ; preds = %__update_runtime_status.exit334
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then189

if.then189:                                       ; preds = %__update_runtime_status.exit334.if.then189_crit_edge, %__update_runtime_status.exit334.if.then189_crit_edge452
  %130 = ptrtoint ptr %runtime_error.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 0, ptr %runtime_error.i, align 8
  br i1 %tobool9.not, label %if.then189.cleanup200_crit_edge, label %land.lhs.true193

if.then189.cleanup200_crit_edge:                  ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup200

land.lhs.true193:                                 ; preds = %if.then189
  %131 = ptrtoint ptr %use_autosuspend.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %bf.load.i336 = load i16, ptr %use_autosuspend.i, align 4
  %132 = and i16 %bf.load.i336, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %132)
  %tobool.not.i337 = icmp eq i16 %132, 0
  br i1 %tobool.not.i337, label %land.lhs.true193.cleanup200_crit_edge, label %do.end.i340

land.lhs.true193.cleanup200_crit_edge:            ; preds = %land.lhs.true193
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup200

do.end.i340:                                      ; preds = %land.lhs.true193
  %133 = ptrtoint ptr %autosuspend_delay2.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load volatile i32, ptr %autosuspend_delay2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %cmp.i339 = icmp slt i32 %134, 0
  br i1 %cmp.i339, label %do.end.i340.cleanup200_crit_edge, label %do.end7.i348

do.end.i340.cleanup200_crit_edge:                 ; preds = %do.end.i340
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup200

do.end7.i348:                                     ; preds = %do.end.i340
  %135 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load volatile i64, ptr %last_busy.i, align 8
  %conv20.i342 = zext i32 %134 to i64
  %mul.i343 = mul nuw nsw i64 %conv20.i342, 1000000
  %add.i344 = add i64 %136, %mul.i343
  %call.i345 = call i64 @ktime_get_mono_fast_ns() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i344, i64 %call.i345)
  %cmp10.i346 = icmp ugt i64 %add.i344, %call.i345
  br i1 %cmp10.i346, label %do.end7.i348.repeat.backedge_crit_edge, label %do.end7.i348.cleanup200_crit_edge

do.end7.i348.cleanup200_crit_edge:                ; preds = %do.end7.i348
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup200

do.end7.i348.repeat.backedge_crit_edge:           ; preds = %do.end7.i348
  call void @__sanitizer_cov_trace_pc() #10
  br label %repeat.backedge

if.else:                                          ; preds = %__update_runtime_status.exit334
  %137 = ptrtoint ptr %timer_expires.i.i to i32
  call void @__asan_load8_noabort(i32 %137)
  %138 = load i64, ptr %timer_expires.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %138)
  %cmp.not.i.i352 = icmp eq i64 %138, 0
  br i1 %cmp.not.i.i352, label %if.else.pm_runtime_cancel_pending.exit357_crit_edge, label %if.then.i.i355

if.else.pm_runtime_cancel_pending.exit357_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm_runtime_cancel_pending.exit357

if.then.i.i355:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i354 = call i32 @hrtimer_try_to_cancel(ptr noundef %suspend_timer.i.i) #8
  %139 = ptrtoint ptr %timer_expires.i.i to i32
  call void @__asan_store8_noabort(i32 %139)
  store i64 0, ptr %timer_expires.i.i, align 8
  br label %pm_runtime_cancel_pending.exit357

pm_runtime_cancel_pending.exit357:                ; preds = %if.then.i.i355, %if.else.pm_runtime_cancel_pending.exit357_crit_edge
  %140 = ptrtoint ptr %request.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 0, ptr %request.i, align 4
  br label %cleanup200

cleanup200:                                       ; preds = %pm_runtime_cancel_pending.exit357, %do.end7.i348.cleanup200_crit_edge, %do.end.i340.cleanup200_crit_edge, %land.lhs.true193.cleanup200_crit_edge, %if.then189.cleanup200_crit_edge, %rpm_suspend_suppliers.exit, %if.end167.cleanup200_crit_edge, %if.end140.cleanup200_crit_edge, %if.then133, %if.then103, %if.then92.cleanup200_crit_edge, %repeat.backedge.cleanup200_crit_edge, %cleanup79.thread, %cleanup, %if.end.cleanup200_crit_edge, %entry.cleanup200_crit_edge
  %retval1.3 = phi i32 [ 0, %cleanup ], [ -11, %if.then133 ], [ 0, %if.end140.cleanup200_crit_edge ], [ 0, %rpm_suspend_suppliers.exit ], [ 0, %if.end167.cleanup200_crit_edge ], [ 0, %if.then92.cleanup200_crit_edge ], [ 0, %if.then103 ], [ %spec.select.i, %pm_runtime_cancel_pending.exit357 ], [ -115, %cleanup79.thread ], [ %call407, %entry.cleanup200_crit_edge ], [ %retval1.0.i, %do.end7.i348.cleanup200_crit_edge ], [ %retval1.0.i, %do.end.i340.cleanup200_crit_edge ], [ %retval1.0.i, %land.lhs.true193.cleanup200_crit_edge ], [ %retval1.0.i, %if.then189.cleanup200_crit_edge ], [ %retval1.0, %if.end.cleanup200_crit_edge ], [ %call, %repeat.backedge.cleanup200_crit_edge ]
  call fastcc void @trace_rpm_return_int_rcuidle(ptr noundef %dev, i32 noundef ptrtoint (ptr blockaddress(@rpm_suspend, %cleanup200) to i32), i32 noundef %retval1.3)
  ret i32 %retval1.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rpm_check_suspend_allowed(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime_error = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 20
  %0 = ptrtoint ptr %runtime_error to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %runtime_error, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end51_crit_edge

entry.if.end51_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.else:                                          ; preds = %entry
  %disable_depth = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %2 = ptrtoint ptr %disable_depth to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %disable_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load)
  %cmp.not = icmp ult i16 %bf.load, 8192
  br i1 %cmp.not, label %if.else4, label %if.else.if.end51_crit_edge

if.else.if.end51_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.else4:                                         ; preds = %if.else
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usage_count, i32 noundef 4) #8
  %3 = ptrtoint ptr %usage_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %usage_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp6 = icmp sgt i32 %4, 0
  br i1 %cmp6, label %if.else4.if.end51_crit_edge, label %if.else8

if.else4.if.end51_crit_edge:                      ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.else8:                                         ; preds = %if.else4
  %5 = ptrtoint ptr %disable_depth to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load10 = load i16, ptr %disable_depth, align 4
  %6 = and i16 %bf.load10, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %bf.cast12.not = icmp eq i16 %6, 0
  br i1 %bf.cast12.not, label %land.lhs.true, label %if.else8.if.else17_crit_edge

if.else8.if.else17_crit_edge:                     ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else17

land.lhs.true:                                    ; preds = %if.else8
  %child_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 14
  %call.i.i62 = tail call zeroext i1 @__kasan_check_read(ptr noundef %child_count, i32 noundef 4) #8
  %7 = ptrtoint ptr %child_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %child_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool15.not = icmp eq i32 %8, 0
  br i1 %tobool15.not, label %land.lhs.true.if.else17_crit_edge, label %land.lhs.true.if.end51_crit_edge

land.lhs.true.if.end51_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

land.lhs.true.if.else17_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else17

if.else17:                                        ; preds = %land.lhs.true.if.else17_crit_edge, %if.else8.if.else17_crit_edge
  %9 = ptrtoint ptr %disable_depth to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load19 = load i16, ptr %disable_depth, align 4
  %10 = and i16 %bf.load19, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool23.not = icmp eq i16 %10, 0
  br i1 %tobool23.not, label %if.else17.lor.lhs.false_crit_edge, label %land.lhs.true24

if.else17.lor.lhs.false_crit_edge:                ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

land.lhs.true24:                                  ; preds = %if.else17
  %runtime_status = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %11 = ptrtoint ptr %runtime_status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %runtime_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp26 = icmp eq i32 %12, 3
  br i1 %cmp26, label %land.lhs.true24.if.end51_crit_edge, label %land.lhs.true24.lor.lhs.false_crit_edge

land.lhs.true24.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

land.lhs.true24.if.end51_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

lor.lhs.false:                                    ; preds = %land.lhs.true24.lor.lhs.false_crit_edge, %if.else17.lor.lhs.false_crit_edge
  %13 = and i16 %bf.load19, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool32.not = icmp eq i16 %13, 0
  br i1 %tobool32.not, label %lor.lhs.false.if.else37_crit_edge, label %land.lhs.true33

lor.lhs.false.if.else37_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else37

land.lhs.true33:                                  ; preds = %lor.lhs.false
  %request = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 17
  %14 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %request, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp35 = icmp eq i32 %15, 4
  br i1 %cmp35, label %land.lhs.true33.if.end51_crit_edge, label %land.lhs.true33.if.else37_crit_edge

land.lhs.true33.if.else37_crit_edge:              ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else37

land.lhs.true33.if.end51_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.else37:                                        ; preds = %land.lhs.true33.if.else37_crit_edge, %lor.lhs.false.if.else37_crit_edge
  %call38 = tail call i32 @__dev_pm_qos_resume_latency(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp eq i32 %call38, 0
  br i1 %cmp39, label %if.else37.if.end51_crit_edge, label %if.else41

if.else37.if.end51_crit_edge:                     ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.else41:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #10
  %runtime_status43 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %16 = ptrtoint ptr %runtime_status43 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %runtime_status43, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp44 = icmp eq i32 %17, 2
  %spec.select = zext i1 %cmp44 to i32
  br label %if.end51

if.end51:                                         ; preds = %if.else41, %if.else37.if.end51_crit_edge, %land.lhs.true33.if.end51_crit_edge, %land.lhs.true24.if.end51_crit_edge, %land.lhs.true.if.end51_crit_edge, %if.else4.if.end51_crit_edge, %if.else.if.end51_crit_edge, %entry.if.end51_crit_edge
  %retval1.0 = phi i32 [ -22, %entry.if.end51_crit_edge ], [ -13, %if.else.if.end51_crit_edge ], [ -11, %if.else4.if.end51_crit_edge ], [ -16, %land.lhs.true.if.end51_crit_edge ], [ -11, %land.lhs.true33.if.end51_crit_edge ], [ -11, %land.lhs.true24.if.end51_crit_edge ], [ -1, %if.else37.if.end51_crit_edge ], [ %spec.select, %if.else41 ]
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef %rpmflags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %rpmflags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then:                                          ; preds = %entry
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 1, ptr elementtype(i32) %usage_count) #8, !srcloc !112
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !113
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then.do.body_crit_edge, label %if.then2

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @trace_rpm_usage_rcuidle(ptr noundef %dev, i32 noundef %rpmflags)
  br label %cleanup

do.body:                                          ; preds = %if.then.do.body_crit_edge, %entry.do.body_crit_edge
  %and4 = and i32 %rpmflags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %land.lhs.true, label %do.body.do.body17_crit_edge

do.body.do.body17_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body17

land.lhs.true:                                    ; preds = %do.body
  %irq_safe = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %1 = ptrtoint ptr %irq_safe to i32
  call void @__asan_load2_noabort(i32 %1)
  %bf.load = load i16, ptr %irq_safe, align 4
  %2 = and i16 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool7.not = icmp eq i16 %2, 0
  br i1 %tobool7.not, label %do.body9, label %land.lhs.true.do.body17_crit_edge

land.lhs.true.do.body17_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body17

do.body9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1066) #8
  br label %do.body17

do.body17:                                        ; preds = %do.body9, %land.lhs.true.do.body17_crit_edge, %do.body.do.body17_crit_edge
  %lock = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 3
  %call20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %call25 = tail call fastcc i32 @rpm_idle(ptr noundef %dev, i32 noundef %rpmflags)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call20) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body17, %if.then2
  %retval.0 = phi i32 [ %call25, %do.body17 ], [ 0, %if.then2 ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rpm_usage_rcuidle(ptr noundef %dev, i32 noundef %flags) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpm_usage, i32 0, i32 1), ptr blockaddress(@trace_rpm_usage_rcuidle, %do.body)) #8
          to label %if.end53 [label %do.body], !srcloc !114

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !96) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !115

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i59 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i59
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end53_crit_edge, label %if.end

cpu_online.exit.if.end53_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.end:                                           ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !96) #8
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %12, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end35_crit_edge, label %land.rhs

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

land.rhs:                                         ; preds = %if.end
  %.b56 = load i1, ptr @trace_rpm_usage_rcuidle.__already_done, align 1
  br i1 %.b56, label %land.rhs.if.end35_crit_edge, label %if.then12, !prof !115

land.rhs.if.end35_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then12:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_rpm_usage_rcuidle.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 82, i32 noundef 9, ptr noundef null) #8
  br label %if.end35

if.end35:                                         ; preds = %if.then12, %land.rhs.if.end35_crit_edge, %if.end.if.end35_crit_edge
  %13 = tail call i32 @llvm.read_register.i32(metadata !96) #8
  %and.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %16, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !116
  %call.i = tail call i32 @__srcu_read_lock(ptr noundef nonnull @tracepoint_srcu) #8
  tail call void @rcu_irq_enter_irqson() #8
  %call47 = tail call i32 @__traceiter_rpm_usage(ptr noundef null, ptr noundef %dev, i32 noundef %flags) #8
  tail call void @rcu_irq_exit_irqson() #8
  tail call void @__srcu_read_unlock(ptr noundef nonnull @tracepoint_srcu, i32 noundef %call.i) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !117
  %17 = tail call i32 @llvm.read_register.i32(metadata !96) #8
  %and.i.i.i57 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i57 to ptr
  %preempt_count.i.i58 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i58 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i58, align 4
  %sub.i = add i32 %20, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i58, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.end35, %cpu_online.exit.if.end53_crit_edge, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rpm_idle(ptr noundef %dev, i32 noundef %rpmflags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_rpm_idle_rcuidle(ptr noundef %dev, i32 noundef %rpmflags)
  %call = tail call fastcc i32 @rpm_check_suspend_allowed(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.__here67.thread109_crit_edge, label %if.else

entry.__here67.thread109_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here67.thread109

if.else:                                          ; preds = %entry
  %runtime_status = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %0 = ptrtoint ptr %runtime_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %runtime_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp2.not = icmp eq i32 %1, 0
  br i1 %cmp2.not, label %if.else4, label %if.else.__here67.thread109_crit_edge

if.else.__here67.thread109_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here67.thread109

if.else4:                                         ; preds = %if.else
  %request_pending = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %2 = ptrtoint ptr %request_pending to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %request_pending, align 4
  %3 = and i16 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %if.else4.if.else9_crit_edge, label %land.lhs.true

if.else4.if.else9_crit_edge:                      ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else9

land.lhs.true:                                    ; preds = %if.else4
  %request = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 17
  %4 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %request, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp7 = icmp ugt i32 %5, 1
  br i1 %cmp7, label %land.lhs.true.__here67.thread109_crit_edge, label %land.lhs.true.if.else9_crit_edge

land.lhs.true.if.else9_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else9

land.lhs.true.__here67.thread109_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here67.thread109

if.else9:                                         ; preds = %land.lhs.true.if.else9_crit_edge, %if.else4.if.else9_crit_edge
  %6 = and i16 %bf.load, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool15.not = icmp eq i16 %6, 0
  br i1 %tobool15.not, label %if.end19, label %if.else9.__here67.thread109_crit_edge

if.else9.__here67.thread109_crit_edge:            ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here67.thread109

if.end19:                                         ; preds = %if.else9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool20.not = icmp eq i32 %call, 0
  br i1 %tobool20.not, label %if.end22, label %if.end19.__here67.thread109_crit_edge

if.end19.__here67.thread109_crit_edge:            ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here67.thread109

if.end22:                                         ; preds = %if.end19
  %request24 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 17
  %7 = ptrtoint ptr %request24 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %request24, align 4
  %pm_domain.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 13
  %8 = ptrtoint ptr %pm_domain.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pm_domain.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.else.i, label %if.end22.if.end34.i_crit_edge

if.end22.if.end34.i_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

if.else.i:                                        ; preds = %if.end22
  %type.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %10 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %type.i, align 4
  %tobool3.not.i = icmp eq ptr %11, null
  br i1 %tobool3.not.i, label %if.else.i.if.else9.i_crit_edge, label %land.lhs.true.i

if.else.i.if.else9.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else9.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %pm.i = getelementptr inbounds %struct.device_type, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %pm.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pm.i, align 4
  %tobool5.not.i = icmp eq ptr %13, null
  br i1 %tobool5.not.i, label %land.lhs.true.i.if.else9.i_crit_edge, label %land.lhs.true.i.if.end34.i_crit_edge

land.lhs.true.i.if.end34.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

land.lhs.true.i.if.else9.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else9.i

if.else9.i:                                       ; preds = %land.lhs.true.i.if.else9.i_crit_edge, %if.else.i.if.else9.i_crit_edge
  %class.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 33
  %14 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %class.i, align 4
  %tobool10.not.i = icmp eq ptr %15, null
  br i1 %tobool10.not.i, label %if.else9.i.if.else18.i_crit_edge, label %land.lhs.true11.i

if.else9.i.if.else18.i_crit_edge:                 ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else18.i

land.lhs.true11.i:                                ; preds = %if.else9.i
  %pm13.i = getelementptr inbounds %struct.class, ptr %15, i32 0, i32 13
  %16 = ptrtoint ptr %pm13.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pm13.i, align 4
  %tobool14.not.i = icmp eq ptr %17, null
  br i1 %tobool14.not.i, label %land.lhs.true11.i.if.else18.i_crit_edge, label %land.lhs.true11.i.if.end34.i_crit_edge

land.lhs.true11.i.if.end34.i_crit_edge:           ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

land.lhs.true11.i.if.else18.i_crit_edge:          ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else18.i

if.else18.i:                                      ; preds = %land.lhs.true11.i.if.else18.i_crit_edge, %if.else9.i.if.else18.i_crit_edge
  %bus.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 5
  %18 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus.i, align 8
  %tobool19.not.i = icmp eq ptr %19, null
  br i1 %tobool19.not.i, label %if.else18.i.land.lhs.true36.i_crit_edge, label %land.lhs.true20.i

if.else18.i.land.lhs.true36.i_crit_edge:          ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true36.i

land.lhs.true20.i:                                ; preds = %if.else18.i
  %pm22.i = getelementptr inbounds %struct.bus_type, ptr %19, i32 0, i32 18
  %20 = ptrtoint ptr %pm22.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pm22.i, align 4
  %tobool23.not.i = icmp eq ptr %21, null
  br i1 %tobool23.not.i, label %land.lhs.true20.i.land.lhs.true36.i_crit_edge, label %land.lhs.true20.i.if.end34.i_crit_edge

land.lhs.true20.i.if.end34.i_crit_edge:           ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

land.lhs.true20.i.land.lhs.true36.i_crit_edge:    ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true36.i

if.end34.i:                                       ; preds = %land.lhs.true20.i.if.end34.i_crit_edge, %land.lhs.true11.i.if.end34.i_crit_edge, %land.lhs.true.i.if.end34.i_crit_edge, %if.end22.if.end34.i_crit_edge
  %ops.0.ph.i = phi ptr [ %21, %land.lhs.true20.i.if.end34.i_crit_edge ], [ %17, %land.lhs.true11.i.if.end34.i_crit_edge ], [ %13, %land.lhs.true.i.if.end34.i_crit_edge ], [ %9, %if.end22.if.end34.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %ops.0.ph.i, i32 88
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i, align 4
  %tobool35.not.i = icmp eq ptr %23, null
  br i1 %tobool35.not.i, label %if.end34.i.land.lhs.true36.i_crit_edge, label %if.end34.i.lor.lhs.false_crit_edge

if.end34.i.lor.lhs.false_crit_edge:               ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

if.end34.i.land.lhs.true36.i_crit_edge:           ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true36.i

land.lhs.true36.i:                                ; preds = %if.end34.i.land.lhs.true36.i_crit_edge, %land.lhs.true20.i.land.lhs.true36.i_crit_edge, %if.else18.i.land.lhs.true36.i_crit_edge
  %driver.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %24 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver.i, align 4
  %tobool37.not.i = icmp eq ptr %25, null
  br i1 %tobool37.not.i, label %land.lhs.true36.i.__here67.thread_crit_edge, label %land.lhs.true38.i

land.lhs.true36.i.__here67.thread_crit_edge:      ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here67.thread

land.lhs.true38.i:                                ; preds = %land.lhs.true36.i
  %pm40.i = getelementptr inbounds %struct.device_driver, ptr %25, i32 0, i32 16
  %26 = ptrtoint ptr %pm40.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pm40.i, align 4
  %tobool41.not.i = icmp eq ptr %27, null
  br i1 %tobool41.not.i, label %land.lhs.true38.i.__here67.thread_crit_edge, label %__rpm_get_callback.exit

land.lhs.true38.i.__here67.thread_crit_edge:      ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here67.thread

__rpm_get_callback.exit:                          ; preds = %land.lhs.true38.i
  %add.ptr45.i = getelementptr i8, ptr %27, i32 88
  %28 = ptrtoint ptr %add.ptr45.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr45.i, align 4
  %tobool26.not = icmp eq ptr %29, null
  br i1 %tobool26.not, label %__rpm_get_callback.exit.__here67.thread_crit_edge, label %__rpm_get_callback.exit.lor.lhs.false_crit_edge

__rpm_get_callback.exit.lor.lhs.false_crit_edge:  ; preds = %__rpm_get_callback.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

__rpm_get_callback.exit.__here67.thread_crit_edge: ; preds = %__rpm_get_callback.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here67.thread

lor.lhs.false:                                    ; preds = %__rpm_get_callback.exit.lor.lhs.false_crit_edge, %if.end34.i.lor.lhs.false_crit_edge
  %cb.1.i105 = phi ptr [ %29, %__rpm_get_callback.exit.lor.lhs.false_crit_edge ], [ %23, %if.end34.i.lor.lhs.false_crit_edge ]
  %30 = and i16 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool32.not = icmp eq i16 %30, 0
  br i1 %tobool32.not, label %if.end34, label %lor.lhs.false.__here67.thread_crit_edge

lor.lhs.false.__here67.thread_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here67.thread

if.end34:                                         ; preds = %lor.lhs.false
  %and = and i32 %rpmflags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool35.not = icmp eq i32 %and, 0
  br i1 %tobool35.not, label %if.end54, label %if.then36

if.then36:                                        ; preds = %if.end34
  %31 = ptrtoint ptr %request24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %request24, align 4
  br i1 %tobool.not, label %if.then46, label %if.then36.__here_crit_edge

if.then36.__here_crit_edge:                       ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

if.then46:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set = or i16 %bf.load, 2048
  %32 = ptrtoint ptr %request_pending to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %bf.set, ptr %request_pending, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pm_wq to i32))
  %33 = load ptr, ptr @pm_wq, align 4
  %work = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 10
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %33, ptr noundef %work) #8
  br label %__here

__here:                                           ; preds = %if.then46, %if.then36.__here_crit_edge
  tail call fastcc void @trace_rpm_return_int_rcuidle(ptr noundef %dev, i32 noundef ptrtoint (ptr blockaddress(@rpm_idle, %__here) to i32), i32 noundef 0)
  br label %cleanup

if.end54:                                         ; preds = %if.end34
  %bf.set59 = or i16 %bf.load, 4096
  %34 = ptrtoint ptr %request_pending to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %bf.set59, ptr %request_pending, align 4
  %call60 = tail call fastcc i32 @__rpm_callback(ptr noundef nonnull %cb.1.i105, ptr noundef %dev)
  %35 = ptrtoint ptr %request_pending to i32
  call void @__asan_load2_noabort(i32 %35)
  %bf.load63 = load i16, ptr %request_pending, align 4
  %bf.clear64 = and i16 %bf.load63, -4097
  store i16 %bf.clear64, ptr %request_pending, align 4
  %wait_queue = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 11
  tail call void @__wake_up(ptr noundef %wait_queue, i32 noundef 3, i32 noundef 0, ptr noundef null) #8
  br label %__here67

__here67.thread:                                  ; preds = %lor.lhs.false.__here67.thread_crit_edge, %__rpm_get_callback.exit.__here67.thread_crit_edge, %land.lhs.true38.i.__here67.thread_crit_edge, %land.lhs.true36.i.__here67.thread_crit_edge
  tail call fastcc void @trace_rpm_return_int_rcuidle(ptr noundef %dev, i32 noundef ptrtoint (ptr blockaddress(@rpm_idle, %__here67) to i32), i32 noundef 0)
  br label %cond.false

__here67.thread109:                               ; preds = %if.end19.__here67.thread109_crit_edge, %if.else9.__here67.thread109_crit_edge, %land.lhs.true.__here67.thread109_crit_edge, %if.else.__here67.thread109_crit_edge, %entry.__here67.thread109_crit_edge
  %retval1.1.ph = phi i32 [ %call, %if.end19.__here67.thread109_crit_edge ], [ -115, %if.else9.__here67.thread109_crit_edge ], [ -11, %land.lhs.true.__here67.thread109_crit_edge ], [ -11, %if.else.__here67.thread109_crit_edge ], [ %call, %entry.__here67.thread109_crit_edge ]
  tail call fastcc void @trace_rpm_return_int_rcuidle(ptr noundef %dev, i32 noundef ptrtoint (ptr blockaddress(@rpm_idle, %__here67) to i32), i32 noundef %retval1.1.ph)
  br label %cleanup

__here67:                                         ; preds = %if.end54
  tail call fastcc void @trace_rpm_return_int_rcuidle(ptr noundef %dev, i32 noundef ptrtoint (ptr blockaddress(@rpm_idle, %__here67) to i32), i32 noundef %call60)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool69.not = icmp eq i32 %call60, 0
  br i1 %tobool69.not, label %__here67.cond.false_crit_edge, label %__here67.cleanup_crit_edge

__here67.cleanup_crit_edge:                       ; preds = %__here67
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

__here67.cond.false_crit_edge:                    ; preds = %__here67
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

cond.false:                                       ; preds = %__here67.cond.false_crit_edge, %__here67.thread
  %or = or i32 %rpmflags, 8
  %call70 = tail call fastcc i32 @rpm_suspend(ptr noundef %dev, i32 noundef %or)
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %__here67.cleanup_crit_edge, %__here67.thread109, %__here
  %retval.0 = phi i32 [ 0, %__here ], [ %call70, %cond.false ], [ %call60, %__here67.cleanup_crit_edge ], [ %retval1.1.ph, %__here67.thread109 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef %rpmflags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %rpmflags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then:                                          ; preds = %entry
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 1, ptr elementtype(i32) %usage_count) #8, !srcloc !112
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !113
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then.do.body_crit_edge, label %if.then2

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @trace_rpm_usage_rcuidle(ptr noundef %dev, i32 noundef %rpmflags)
  br label %cleanup

do.body:                                          ; preds = %if.then.do.body_crit_edge, %entry.do.body_crit_edge
  %and4 = and i32 %rpmflags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %land.lhs.true, label %do.body.do.body17_crit_edge

do.body.do.body17_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body17

land.lhs.true:                                    ; preds = %do.body
  %irq_safe = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %1 = ptrtoint ptr %irq_safe to i32
  call void @__asan_load2_noabort(i32 %1)
  %bf.load = load i16, ptr %irq_safe, align 4
  %2 = and i16 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool7.not = icmp eq i16 %2, 0
  br i1 %tobool7.not, label %do.body9, label %land.lhs.true.do.body17_crit_edge

land.lhs.true.do.body17_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body17

do.body9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1100) #8
  br label %do.body17

do.body17:                                        ; preds = %do.body9, %land.lhs.true.do.body17_crit_edge, %do.body.do.body17_crit_edge
  %lock = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 3
  %call20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %call25 = tail call fastcc i32 @rpm_suspend(ptr noundef %dev, i32 noundef %rpmflags)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call20) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body17, %if.then2
  %retval.0 = phi i32 [ %call25, %do.body17 ], [ 0, %if.then2 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef %rpmflags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %rpmflags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end10_crit_edge

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10

land.lhs.true:                                    ; preds = %entry
  %irq_safe = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %0 = ptrtoint ptr %irq_safe to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %irq_safe, align 4
  %1 = and i16 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool2.not = icmp eq i16 %1, 0
  br i1 %tobool2.not, label %land.lhs.true3, label %land.lhs.true.do.end10_crit_edge

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10

land.lhs.true3:                                   ; preds = %land.lhs.true
  %runtime_status = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %2 = ptrtoint ptr %runtime_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %runtime_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %land.lhs.true3.do.end10_crit_edge, label %do.body5

land.lhs.true3.do.end10_crit_edge:                ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10

do.body5:                                         ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1127) #8
  br label %do.end10

do.end10:                                         ; preds = %do.body5, %land.lhs.true3.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %entry.do.end10_crit_edge
  %and11 = and i32 %rpmflags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %do.end10.do.body17_crit_edge, label %if.then13

do.end10.do.body17_crit_edge:                     ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body17

if.then13:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #10
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 1, ptr elementtype(i32) %usage_count) #8, !srcloc !118
  br label %do.body17

do.body17:                                        ; preds = %if.then13, %do.end10.do.body17_crit_edge
  %lock = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 3
  %call20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %call25 = tail call fastcc i32 @rpm_resume(ptr noundef %dev, i32 noundef %rpmflags)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call20) #8
  ret i32 %call25
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rpm_resume(ptr noundef %dev, i32 noundef %rpmflags) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_rpm_resume_rcuidle(ptr noundef %dev, i32 noundef %rpmflags)
  %runtime_error = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 20
  %disable_depth = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %request = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 17
  %timer_expires.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 9
  %suspend_timer.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 8
  %runtime_status24 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %and = and i32 %rpmflags, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool38.not = icmp eq i32 %and, 0
  %lock = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 3
  %wait_queue = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 11
  %parent93 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %and133 = and i32 %rpmflags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133)
  %tobool134.not = icmp eq i32 %and133, 0
  br label %repeat.outer

repeat.outer:                                     ; preds = %if.end193.repeat.outer_crit_edge, %entry
  %parent.0.ph = phi ptr [ %57, %if.end193.repeat.outer_crit_edge ], [ null, %entry ]
  %4 = ptrtoint ptr %runtime_error to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %runtime_error, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not446 = icmp eq i32 %5, 0
  br i1 %tobool.not446, label %repeat.outer.if.else_crit_edge, label %repeat.outer.out_crit_edge

repeat.outer.out_crit_edge:                       ; preds = %repeat.outer
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

repeat.outer.if.else_crit_edge:                   ; preds = %repeat.outer
  br label %if.else

if.else:                                          ; preds = %cleanup.if.else_crit_edge, %repeat.outer.if.else_crit_edge
  %6 = ptrtoint ptr %disable_depth to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %disable_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load)
  %cmp.not = icmp ult i16 %bf.load, 8192
  br i1 %cmp.not, label %if.end14, label %if.then3

if.then3:                                         ; preds = %if.else
  %7 = ptrtoint ptr %runtime_status24 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %runtime_status24, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp5 = icmp eq i32 %8, 0
  br i1 %cmp5, label %land.lhs.true, label %if.then3.if.else9_crit_edge

if.then3.if.else9_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else9

land.lhs.true:                                    ; preds = %if.then3
  %last_status = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 19
  %9 = ptrtoint ptr %last_status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %last_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp7 = icmp eq i32 %10, 0
  br i1 %cmp7, label %land.lhs.true.out_crit_edge, label %land.lhs.true.if.else9_crit_edge

land.lhs.true.if.else9_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else9

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.else9:                                         ; preds = %land.lhs.true.if.else9_crit_edge, %if.then3.if.else9_crit_edge
  br label %out

if.end14:                                         ; preds = %if.else
  %11 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %request, align 4
  %12 = and i16 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool20.not = icmp eq i16 %12, 0
  br i1 %tobool20.not, label %if.then21, label %if.end14.if.end22_crit_edge

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then21:                                        ; preds = %if.end14
  %13 = ptrtoint ptr %timer_expires.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %timer_expires.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %cmp.not.i = icmp eq i64 %14, 0
  br i1 %cmp.not.i, label %if.then21.if.end22_crit_edge, label %if.then.i

if.then21.if.end22_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then.i:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 @hrtimer_try_to_cancel(ptr noundef %suspend_timer.i) #8
  %15 = ptrtoint ptr %timer_expires.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 0, ptr %timer_expires.i, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then.i, %if.then21.if.end22_crit_edge, %if.end14.if.end22_crit_edge
  %16 = ptrtoint ptr %runtime_status24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %runtime_status24, align 8
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %17, label %if.end83 [
    i32 0, label %if.end22.out_crit_edge
    i32 1, label %if.end22.if.then34_crit_edge
    i32 3, label %if.end22.if.then34_crit_edge572
  ]

if.end22.if.then34_crit_edge572:                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then34

if.end22.if.then34_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then34

if.end22.out_crit_edge:                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then34:                                        ; preds = %if.end22.if.then34_crit_edge, %if.end22.if.then34_crit_edge572
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #8
  %19 = call ptr @memset(ptr %0, i32 255, i32 16)
  %20 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %wait, align 4
  %21 = call i32 @llvm.read_register.i32(metadata !96) #8
  %and.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task, align 8
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %0, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @autoremove_wake_function, ptr %1, align 4
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %2, ptr %2, align 4
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %2, ptr %3, align 4
  br i1 %tobool38.not, label %if.end49, label %if.then39

if.then39:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp42 = icmp eq i32 %17, 3
  br i1 %cmp42, label %if.then43, label %if.then39.cleanup.thread_crit_edge

if.then39.cleanup.thread_crit_edge:               ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.then43:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %disable_depth to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load45 = load i16, ptr %disable_depth, align 4
  %bf.set = or i16 %bf.load45, 1024
  store i16 %bf.set, ptr %disable_depth, align 4
  br label %cleanup.thread

if.end49:                                         ; preds = %if.then34
  %30 = ptrtoint ptr %disable_depth to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load51 = load i16, ptr %disable_depth, align 4
  %31 = and i16 %bf.load51, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool55.not = icmp eq i16 %31, 0
  br i1 %tobool55.not, label %if.end49.for.cond_crit_edge, label %if.then56

if.end49.for.cond_crit_edge:                      ; preds = %if.end49
  br label %for.cond

if.then56:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock(ptr noundef %lock) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !119
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !120
  call void @_raw_spin_lock(ptr noundef %lock) #8
  br label %cleanup

for.cond:                                         ; preds = %if.end76, %if.end49.for.cond_crit_edge
  call void @prepare_to_wait(ptr noundef %wait_queue, ptr noundef nonnull %wait, i32 noundef 2) #8
  %32 = ptrtoint ptr %runtime_status24 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %runtime_status24, align 8
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %33, label %for.end [
    i32 1, label %for.cond.if.end76_crit_edge
    i32 3, label %for.cond.if.end76_crit_edge573
  ]

for.cond.if.end76_crit_edge573:                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

for.cond.if.end76_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

if.end76:                                         ; preds = %for.cond.if.end76_crit_edge, %for.cond.if.end76_crit_edge573
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  call void @schedule() #8
  call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  call void @finish_wait(ptr noundef %wait_queue, ptr noundef nonnull %wait) #8
  br label %cleanup

cleanup.thread:                                   ; preds = %if.then43, %if.then39.cleanup.thread_crit_edge
  %retval1.3.ph = phi i32 [ -115, %if.then39.cleanup.thread_crit_edge ], [ 0, %if.then43 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #8
  br label %out

cleanup:                                          ; preds = %for.end, %if.then56
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #8
  %35 = ptrtoint ptr %runtime_error to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %runtime_error, align 8
  %tobool.not = icmp eq i32 %36, 0
  br i1 %tobool.not, label %cleanup.if.else_crit_edge, label %cleanup.out_crit_edge

cleanup.out_crit_edge:                            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

cleanup.if.else_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.end83:                                         ; preds = %if.end22
  %37 = ptrtoint ptr %disable_depth to i32
  call void @__asan_load2_noabort(i32 %37)
  %bf.load85 = load i16, ptr %disable_depth, align 4
  %38 = and i16 %bf.load85, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool89.not = icmp ne i16 %38, 0
  %tobool91.not = icmp eq ptr %parent.0.ph, null
  %or.cond = select i1 %tobool89.not, i1 %tobool91.not, i1 false
  br i1 %or.cond, label %land.lhs.true92, label %if.end83.if.end132_crit_edge

if.end83.if.end132_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end132

land.lhs.true92:                                  ; preds = %if.end83
  %39 = ptrtoint ptr %parent93 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %parent93, align 8
  %tobool94.not = icmp eq ptr %40, null
  br i1 %tobool94.not, label %land.lhs.true92.if.end132_crit_edge, label %do.body96

land.lhs.true92.if.end132_crit_edge:              ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end132

do.body96:                                        ; preds = %land.lhs.true92
  %lock99 = getelementptr inbounds %struct.device, ptr %40, i32 0, i32 12, i32 3
  call void @_raw_spin_lock_nested(ptr noundef %lock99, i32 noundef 1) #8
  %41 = ptrtoint ptr %parent93 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %parent93, align 8
  %disable_depth105 = getelementptr inbounds %struct.device, ptr %42, i32 0, i32 12, i32 15
  %43 = ptrtoint ptr %disable_depth105 to i32
  call void @__asan_load2_noabort(i32 %43)
  %bf.load106 = load i16, ptr %disable_depth105, align 4
  %44 = and i16 %bf.load106, -8064
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %lor.lhs.false117, label %do.body96.if.then122_crit_edge

do.body96.if.then122_crit_edge:                   ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then122

lor.lhs.false117:                                 ; preds = %do.body96
  %runtime_status120 = getelementptr inbounds %struct.device, ptr %42, i32 0, i32 12, i32 18
  %46 = ptrtoint ptr %runtime_status120 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %runtime_status120, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp121 = icmp eq i32 %47, 0
  br i1 %cmp121, label %lor.lhs.false117.if.then122_crit_edge, label %if.end128

lor.lhs.false117.if.then122_crit_edge:            ; preds = %lor.lhs.false117
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then122

if.then122:                                       ; preds = %lor.lhs.false117.if.then122_crit_edge, %do.body96.if.then122_crit_edge
  %child_count = getelementptr inbounds %struct.device, ptr %42, i32 0, i32 12, i32 14
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %child_count, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %child_count, i32 1, i32 3, i32 1) #8
  %48 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %child_count, ptr %child_count, i32 1, ptr elementtype(i32) %child_count) #8, !srcloc !118
  %49 = ptrtoint ptr %parent93 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %parent93, align 8
  %lock127 = getelementptr inbounds %struct.device, ptr %50, i32 0, i32 12, i32 3
  call void @_raw_spin_unlock(ptr noundef %lock127) #8
  br label %no_callback

if.end128:                                        ; preds = %lor.lhs.false117
  call void @__sanitizer_cov_trace_pc() #10
  %lock131 = getelementptr inbounds %struct.device, ptr %42, i32 0, i32 12, i32 3
  call void @_raw_spin_unlock(ptr noundef %lock131) #8
  br label %if.end132

if.end132:                                        ; preds = %if.end128, %land.lhs.true92.if.end132_crit_edge, %if.end83.if.end132_crit_edge
  br i1 %tobool134.not, label %if.end153, label %if.then135

if.then135:                                       ; preds = %if.end132
  %51 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 4, ptr %request, align 4
  %52 = ptrtoint ptr %disable_depth to i32
  call void @__asan_load2_noabort(i32 %52)
  %bf.load139 = load i16, ptr %disable_depth, align 4
  %53 = and i16 %bf.load139, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool143.not = icmp eq i16 %53, 0
  br i1 %tobool143.not, label %if.then144, label %if.then135.__here_crit_edge

if.then135.__here_crit_edge:                      ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

if.then144:                                       ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set149 = or i16 %bf.load139, 2048
  %54 = ptrtoint ptr %disable_depth to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %bf.set149, ptr %disable_depth, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pm_wq to i32))
  %55 = load ptr, ptr @pm_wq, align 4
  %work = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 10
  %call.i329 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %55, ptr noundef %work) #8
  br label %__here

if.end153:                                        ; preds = %if.end132
  br i1 %tobool91.not, label %land.lhs.true155, label %if.end153.skip_parentthread-pre-split_crit_edge

if.end153.skip_parentthread-pre-split_crit_edge:  ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip_parentthread-pre-split

land.lhs.true155:                                 ; preds = %if.end153
  %56 = ptrtoint ptr %parent93 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %parent93, align 8
  %tobool157.not = icmp eq ptr %57, null
  br i1 %tobool157.not, label %land.lhs.true155.skip_parentthread-pre-split_crit_edge, label %if.then158

land.lhs.true155.skip_parentthread-pre-split_crit_edge: ; preds = %land.lhs.true155
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip_parentthread-pre-split

if.then158:                                       ; preds = %land.lhs.true155
  %58 = ptrtoint ptr %disable_depth to i32
  call void @__asan_load2_noabort(i32 %58)
  %bf.load162 = load i16, ptr %disable_depth, align 4
  %59 = and i16 %bf.load162, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %tobool166.not = icmp eq i16 %59, 0
  br i1 %tobool166.not, label %if.end168, label %if.then158.skip_parent_crit_edge

if.then158.skip_parent_crit_edge:                 ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #10
  br label %skip_parent

if.end168:                                        ; preds = %if.then158
  call void @_raw_spin_unlock(ptr noundef %lock) #8
  %usage_count.i = getelementptr inbounds %struct.device, ptr %57, i32 0, i32 12, i32 13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %60 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !118
  %lock172 = getelementptr inbounds %struct.device, ptr %57, i32 0, i32 12, i32 3
  call void @_raw_spin_lock(ptr noundef %lock172) #8
  %disable_depth174 = getelementptr inbounds %struct.device, ptr %57, i32 0, i32 12, i32 15
  %61 = ptrtoint ptr %disable_depth174 to i32
  call void @__asan_load2_noabort(i32 %61)
  %bf.load175 = load i16, ptr %disable_depth174, align 4
  %62 = and i16 %bf.load175, -8064
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %if.then186, label %if.end168.if.end193_crit_edge

if.end168.if.end193_crit_edge:                    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end193

if.then186:                                       ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #10
  %call187 = call fastcc i32 @rpm_resume(ptr noundef nonnull %57, i32 noundef 0)
  %runtime_status189 = getelementptr inbounds %struct.device, ptr %57, i32 0, i32 12, i32 18
  %64 = ptrtoint ptr %runtime_status189 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %runtime_status189, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp190.not = icmp eq i32 %65, 0
  %spec.select327 = select i1 %cmp190.not, i32 0, i32 -16
  br label %if.end193

if.end193:                                        ; preds = %if.then186, %if.end168.if.end193_crit_edge
  %tobool198.not = phi i1 [ true, %if.end168.if.end193_crit_edge ], [ %cmp190.not, %if.then186 ]
  %retval1.4 = phi i32 [ 0, %if.end168.if.end193_crit_edge ], [ %spec.select327, %if.then186 ]
  call void @_raw_spin_unlock(ptr noundef %lock172) #8
  call void @_raw_spin_lock(ptr noundef %lock) #8
  br i1 %tobool198.not, label %if.end193.repeat.outer_crit_edge, label %if.end193.land.lhs.true229_crit_edge

if.end193.land.lhs.true229_crit_edge:             ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true229

if.end193.repeat.outer_crit_edge:                 ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #10
  br label %repeat.outer

skip_parentthread-pre-split:                      ; preds = %land.lhs.true155.skip_parentthread-pre-split_crit_edge, %if.end153.skip_parentthread-pre-split_crit_edge
  %66 = ptrtoint ptr %disable_depth to i32
  call void @__asan_load2_noabort(i32 %66)
  %bf.load204.pr = load i16, ptr %disable_depth, align 4
  br label %skip_parent

skip_parent:                                      ; preds = %skip_parentthread-pre-split, %if.then158.skip_parent_crit_edge
  %bf.load204 = phi i16 [ %bf.load204.pr, %skip_parentthread-pre-split ], [ %bf.load162, %if.then158.skip_parent_crit_edge ]
  %parent.1 = phi ptr [ %parent.0.ph, %skip_parentthread-pre-split ], [ %57, %if.then158.skip_parent_crit_edge ]
  %67 = and i16 %bf.load204, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %tobool208.not = icmp eq i16 %67, 0
  br i1 %tobool208.not, label %if.end210, label %skip_parent.no_callback_crit_edge

skip_parent.no_callback_crit_edge:                ; preds = %skip_parent
  call void @__sanitizer_cov_trace_pc() #10
  br label %no_callback

if.end210:                                        ; preds = %skip_parent
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load204)
  %cmp.not.i.i = icmp ult i16 %bf.load204, 8192
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.end210.__update_runtime_status.exit_crit_edge

if.end210.__update_runtime_status.exit_crit_edge: ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #10
  br label %__update_runtime_status.exit

if.end.i.i:                                       ; preds = %if.end210
  %accounting_timestamp.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 25
  %68 = ptrtoint ptr %accounting_timestamp.i.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %accounting_timestamp.i.i, align 8
  %call.i.i330 = call i64 @ktime_get_mono_fast_ns() #8
  %70 = ptrtoint ptr %accounting_timestamp.i.i to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %call.i.i330, ptr %accounting_timestamp.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i330, i64 %69)
  %cmp4.i.i = icmp ult i64 %call.i.i330, %69
  br i1 %cmp4.i.i, label %if.end.i.i.__update_runtime_status.exit_crit_edge, label %if.end6.i.i

if.end.i.i.__update_runtime_status.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__update_runtime_status.exit

if.end6.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = sub i64 %call.i.i330, %69
  %71 = ptrtoint ptr %runtime_status24 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %runtime_status24, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %72)
  %cmp8.i.i = icmp eq i32 %72, 2
  %suspended_time.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 24
  %active_time.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 23
  %suspended_time.sink25.i.i = select i1 %cmp8.i.i, ptr %suspended_time.i.i, ptr %active_time.i.i
  %73 = ptrtoint ptr %suspended_time.sink25.i.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %suspended_time.sink25.i.i, align 8
  %add.i.i = add i64 %sub.i.i, %74
  store i64 %add.i.i, ptr %suspended_time.sink25.i.i, align 8
  br label %__update_runtime_status.exit

__update_runtime_status.exit:                     ; preds = %if.end6.i.i, %if.end.i.i.__update_runtime_status.exit_crit_edge, %if.end210.__update_runtime_status.exit_crit_edge
  %75 = ptrtoint ptr %runtime_status24 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 1, ptr %runtime_status24, align 8
  %pm_domain.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 13
  %76 = ptrtoint ptr %pm_domain.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pm_domain.i, align 8
  %tobool.not.i = icmp eq ptr %77, null
  br i1 %tobool.not.i, label %if.else.i, label %__update_runtime_status.exit.if.end34.i_crit_edge

__update_runtime_status.exit.if.end34.i_crit_edge: ; preds = %__update_runtime_status.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

if.else.i:                                        ; preds = %__update_runtime_status.exit
  %type.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %78 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %type.i, align 4
  %tobool3.not.i = icmp eq ptr %79, null
  br i1 %tobool3.not.i, label %if.else.i.if.else9.i_crit_edge, label %land.lhs.true.i

if.else.i.if.else9.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else9.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %pm.i = getelementptr inbounds %struct.device_type, ptr %79, i32 0, i32 5
  %80 = ptrtoint ptr %pm.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pm.i, align 4
  %tobool5.not.i = icmp eq ptr %81, null
  br i1 %tobool5.not.i, label %land.lhs.true.i.if.else9.i_crit_edge, label %land.lhs.true.i.if.end34.i_crit_edge

land.lhs.true.i.if.end34.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

land.lhs.true.i.if.else9.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else9.i

if.else9.i:                                       ; preds = %land.lhs.true.i.if.else9.i_crit_edge, %if.else.i.if.else9.i_crit_edge
  %class.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 33
  %82 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %class.i, align 4
  %tobool10.not.i = icmp eq ptr %83, null
  br i1 %tobool10.not.i, label %if.else9.i.if.else18.i_crit_edge, label %land.lhs.true11.i

if.else9.i.if.else18.i_crit_edge:                 ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else18.i

land.lhs.true11.i:                                ; preds = %if.else9.i
  %pm13.i = getelementptr inbounds %struct.class, ptr %83, i32 0, i32 13
  %84 = ptrtoint ptr %pm13.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pm13.i, align 4
  %tobool14.not.i = icmp eq ptr %85, null
  br i1 %tobool14.not.i, label %land.lhs.true11.i.if.else18.i_crit_edge, label %land.lhs.true11.i.if.end34.i_crit_edge

land.lhs.true11.i.if.end34.i_crit_edge:           ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

land.lhs.true11.i.if.else18.i_crit_edge:          ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else18.i

if.else18.i:                                      ; preds = %land.lhs.true11.i.if.else18.i_crit_edge, %if.else9.i.if.else18.i_crit_edge
  %bus.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 5
  %86 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %bus.i, align 8
  %tobool19.not.i = icmp eq ptr %87, null
  br i1 %tobool19.not.i, label %if.else18.i.land.lhs.true36.i_crit_edge, label %land.lhs.true20.i

if.else18.i.land.lhs.true36.i_crit_edge:          ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true36.i

land.lhs.true20.i:                                ; preds = %if.else18.i
  %pm22.i = getelementptr inbounds %struct.bus_type, ptr %87, i32 0, i32 18
  %88 = ptrtoint ptr %pm22.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pm22.i, align 4
  %tobool23.not.i = icmp eq ptr %89, null
  br i1 %tobool23.not.i, label %land.lhs.true20.i.land.lhs.true36.i_crit_edge, label %land.lhs.true20.i.if.end34.i_crit_edge

land.lhs.true20.i.if.end34.i_crit_edge:           ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

land.lhs.true20.i.land.lhs.true36.i_crit_edge:    ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true36.i

if.end34.i:                                       ; preds = %land.lhs.true20.i.if.end34.i_crit_edge, %land.lhs.true11.i.if.end34.i_crit_edge, %land.lhs.true.i.if.end34.i_crit_edge, %__update_runtime_status.exit.if.end34.i_crit_edge
  %ops.0.ph.i = phi ptr [ %89, %land.lhs.true20.i.if.end34.i_crit_edge ], [ %85, %land.lhs.true11.i.if.end34.i_crit_edge ], [ %81, %land.lhs.true.i.if.end34.i_crit_edge ], [ %77, %__update_runtime_status.exit.if.end34.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %ops.0.ph.i, i32 84
  %90 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %add.ptr.i, align 4
  %tobool35.not.i = icmp eq ptr %91, null
  br i1 %tobool35.not.i, label %if.end34.i.land.lhs.true36.i_crit_edge, label %if.end34.i.__rpm_get_callback.exit_crit_edge

if.end34.i.__rpm_get_callback.exit_crit_edge:     ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__rpm_get_callback.exit

if.end34.i.land.lhs.true36.i_crit_edge:           ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true36.i

land.lhs.true36.i:                                ; preds = %if.end34.i.land.lhs.true36.i_crit_edge, %land.lhs.true20.i.land.lhs.true36.i_crit_edge, %if.else18.i.land.lhs.true36.i_crit_edge
  %driver.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %92 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %driver.i, align 4
  %tobool37.not.i = icmp eq ptr %93, null
  br i1 %tobool37.not.i, label %land.lhs.true36.i.__rpm_get_callback.exit_crit_edge, label %land.lhs.true38.i

land.lhs.true36.i.__rpm_get_callback.exit_crit_edge: ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__rpm_get_callback.exit

land.lhs.true38.i:                                ; preds = %land.lhs.true36.i
  %pm40.i = getelementptr inbounds %struct.device_driver, ptr %93, i32 0, i32 16
  %94 = ptrtoint ptr %pm40.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pm40.i, align 4
  %tobool41.not.i = icmp eq ptr %95, null
  br i1 %tobool41.not.i, label %land.lhs.true38.i.__rpm_get_callback.exit_crit_edge, label %if.then42.i

land.lhs.true38.i.__rpm_get_callback.exit_crit_edge: ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__rpm_get_callback.exit

if.then42.i:                                      ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr45.i = getelementptr i8, ptr %95, i32 84
  %96 = ptrtoint ptr %add.ptr45.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %add.ptr45.i, align 4
  br label %__rpm_get_callback.exit

__rpm_get_callback.exit:                          ; preds = %if.then42.i, %land.lhs.true38.i.__rpm_get_callback.exit_crit_edge, %land.lhs.true36.i.__rpm_get_callback.exit_crit_edge, %if.end34.i.__rpm_get_callback.exit_crit_edge
  %cb.1.i = phi ptr [ %91, %if.end34.i.__rpm_get_callback.exit_crit_edge ], [ %97, %if.then42.i ], [ null, %land.lhs.true38.i.__rpm_get_callback.exit_crit_edge ], [ null, %land.lhs.true36.i.__rpm_get_callback.exit_crit_edge ]
  call void @dev_pm_disable_wake_irq_check(ptr noundef %dev, i1 noundef zeroext false) #8
  %98 = ptrtoint ptr %disable_depth to i32
  call void @__asan_load2_noabort(i32 %98)
  %bf.load.i = load i16, ptr %disable_depth, align 4
  %99 = and i16 %bf.load.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %99)
  %tobool.not.i331 = icmp eq i16 %99, 0
  br i1 %tobool.not.i331, label %if.else.i334, label %if.then.i333

if.then.i333:                                     ; preds = %__rpm_get_callback.exit
  call void @__sanitizer_cov_trace_pc() #10
  %100 = call i32 @llvm.read_register.i32(metadata !96) #8
  %and.i.i375 = and i32 %100, -16384
  %101 = inttoptr i32 %and.i.i375 to ptr
  %task.i376 = getelementptr inbounds %struct.thread_info, ptr %101, i32 0, i32 2
  %102 = ptrtoint ptr %task.i376 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %task.i376, align 8
  %flags1.i377 = getelementptr inbounds %struct.task_struct, ptr %103, i32 0, i32 3
  %104 = ptrtoint ptr %flags1.i377 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %flags1.i377, align 4
  %and.i378 = and i32 %105, 524288
  %or.i379 = or i32 %105, 524288
  store i32 %or.i379, ptr %flags1.i377, align 4
  %call2.i = call fastcc i32 @__rpm_callback(ptr noundef %cb.1.i, ptr noundef %dev) #8
  %106 = call i32 @llvm.read_register.i32(metadata !96) #8
  %and.i.i = and i32 %106, -16384
  %107 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %107, i32 0, i32 2
  %108 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %task.i, align 8
  %flags1.i = getelementptr inbounds %struct.task_struct, ptr %109, i32 0, i32 3
  %110 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %flags1.i, align 4
  %and.i374 = and i32 %111, -524289
  %or.i = or i32 %and.i374, %and.i378
  store i32 %or.i, ptr %flags1.i, align 4
  br label %rpm_callback.exit

if.else.i334:                                     ; preds = %__rpm_get_callback.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = call fastcc i32 @__rpm_callback(ptr noundef %cb.1.i, ptr noundef %dev) #8
  br label %rpm_callback.exit

rpm_callback.exit:                                ; preds = %if.else.i334, %if.then.i333
  %retval1.0.i = phi i32 [ %call2.i, %if.then.i333 ], [ %call3.i, %if.else.i334 ]
  %112 = ptrtoint ptr %runtime_error to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %retval1.0.i, ptr %runtime_error, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13, i32 %retval1.0.i)
  %cmp.not.i335 = icmp eq i32 %retval1.0.i, -13
  %spec.select.i = select i1 %cmp.not.i335, i32 -5, i32 %retval1.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool213.not = icmp eq i32 %spec.select.i, 0
  br i1 %tobool213.not, label %rpm_callback.exit.no_callback_crit_edge, label %if.then214

rpm_callback.exit.no_callback_crit_edge:          ; preds = %rpm_callback.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %no_callback

if.then214:                                       ; preds = %rpm_callback.exit
  %113 = ptrtoint ptr %disable_depth to i32
  call void @__asan_load2_noabort(i32 %113)
  %bf.load.i.i337 = load i16, ptr %disable_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i.i337)
  %cmp.not.i.i338 = icmp ult i16 %bf.load.i.i337, 8192
  br i1 %cmp.not.i.i338, label %if.end.i.i342, label %if.then214.__update_runtime_status.exit352_crit_edge

if.then214.__update_runtime_status.exit352_crit_edge: ; preds = %if.then214
  call void @__sanitizer_cov_trace_pc() #10
  br label %__update_runtime_status.exit352

if.end.i.i342:                                    ; preds = %if.then214
  %accounting_timestamp.i.i339 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 25
  %114 = ptrtoint ptr %accounting_timestamp.i.i339 to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %accounting_timestamp.i.i339, align 8
  %call.i.i340 = call i64 @ktime_get_mono_fast_ns() #8
  %116 = ptrtoint ptr %accounting_timestamp.i.i339 to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 %call.i.i340, ptr %accounting_timestamp.i.i339, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i340, i64 %115)
  %cmp4.i.i341 = icmp ult i64 %call.i.i340, %115
  br i1 %cmp4.i.i341, label %if.end.i.i342.__update_runtime_status.exit352_crit_edge, label %if.end6.i.i350

if.end.i.i342.__update_runtime_status.exit352_crit_edge: ; preds = %if.end.i.i342
  call void @__sanitizer_cov_trace_pc() #10
  br label %__update_runtime_status.exit352

if.end6.i.i350:                                   ; preds = %if.end.i.i342
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i343 = sub i64 %call.i.i340, %115
  %117 = ptrtoint ptr %runtime_status24 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %runtime_status24, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %118)
  %cmp8.i.i345 = icmp eq i32 %118, 2
  %suspended_time.i.i346 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 24
  %active_time.i.i347 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 23
  %suspended_time.sink25.i.i348 = select i1 %cmp8.i.i345, ptr %suspended_time.i.i346, ptr %active_time.i.i347
  %119 = ptrtoint ptr %suspended_time.sink25.i.i348 to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %suspended_time.sink25.i.i348, align 8
  %add.i.i349 = add i64 %sub.i.i343, %120
  store i64 %add.i.i349, ptr %suspended_time.sink25.i.i348, align 8
  br label %__update_runtime_status.exit352

__update_runtime_status.exit352:                  ; preds = %if.end6.i.i350, %if.end.i.i342.__update_runtime_status.exit352_crit_edge, %if.then214.__update_runtime_status.exit352_crit_edge
  %121 = ptrtoint ptr %runtime_status24 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 2, ptr %runtime_status24, align 8
  %122 = ptrtoint ptr %timer_expires.i to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %timer_expires.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %123)
  %cmp.not.i.i353 = icmp eq i64 %123, 0
  br i1 %cmp.not.i.i353, label %__update_runtime_status.exit352.if.end221_crit_edge, label %if.then.i.i

__update_runtime_status.exit352.if.end221_crit_edge: ; preds = %__update_runtime_status.exit352
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end221

if.then.i.i:                                      ; preds = %__update_runtime_status.exit352
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i354 = call i32 @hrtimer_try_to_cancel(ptr noundef %suspend_timer.i) #8
  %124 = ptrtoint ptr %timer_expires.i to i32
  call void @__asan_store8_noabort(i32 %124)
  store i64 0, ptr %timer_expires.i, align 8
  br label %if.end221

no_callback:                                      ; preds = %rpm_callback.exit.no_callback_crit_edge, %skip_parent.no_callback_crit_edge, %if.then122
  %parent.2 = phi ptr [ %parent.1, %skip_parent.no_callback_crit_edge ], [ %parent.1, %rpm_callback.exit.no_callback_crit_edge ], [ null, %if.then122 ]
  %retval1.5 = phi i32 [ 0, %skip_parent.no_callback_crit_edge ], [ 0, %rpm_callback.exit.no_callback_crit_edge ], [ 1, %if.then122 ]
  %125 = ptrtoint ptr %disable_depth to i32
  call void @__asan_load2_noabort(i32 %125)
  %bf.load.i.i356 = load i16, ptr %disable_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i.i356)
  %cmp.not.i.i357 = icmp ult i16 %bf.load.i.i356, 8192
  br i1 %cmp.not.i.i357, label %if.end.i.i361, label %no_callback.__update_runtime_status.exit371_crit_edge

no_callback.__update_runtime_status.exit371_crit_edge: ; preds = %no_callback
  call void @__sanitizer_cov_trace_pc() #10
  br label %__update_runtime_status.exit371

if.end.i.i361:                                    ; preds = %no_callback
  %accounting_timestamp.i.i358 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 25
  %126 = ptrtoint ptr %accounting_timestamp.i.i358 to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %accounting_timestamp.i.i358, align 8
  %call.i.i359 = call i64 @ktime_get_mono_fast_ns() #8
  %128 = ptrtoint ptr %accounting_timestamp.i.i358 to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 %call.i.i359, ptr %accounting_timestamp.i.i358, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i359, i64 %127)
  %cmp4.i.i360 = icmp ult i64 %call.i.i359, %127
  br i1 %cmp4.i.i360, label %if.end.i.i361.__update_runtime_status.exit371_crit_edge, label %if.end6.i.i369

if.end.i.i361.__update_runtime_status.exit371_crit_edge: ; preds = %if.end.i.i361
  call void @__sanitizer_cov_trace_pc() #10
  br label %__update_runtime_status.exit371

if.end6.i.i369:                                   ; preds = %if.end.i.i361
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i362 = sub i64 %call.i.i359, %127
  %129 = ptrtoint ptr %runtime_status24 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %runtime_status24, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %130)
  %cmp8.i.i364 = icmp eq i32 %130, 2
  %suspended_time.i.i365 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 24
  %active_time.i.i366 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 23
  %suspended_time.sink25.i.i367 = select i1 %cmp8.i.i364, ptr %suspended_time.i.i365, ptr %active_time.i.i366
  %131 = ptrtoint ptr %suspended_time.sink25.i.i367 to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %suspended_time.sink25.i.i367, align 8
  %add.i.i368 = add i64 %sub.i.i362, %132
  store i64 %add.i.i368, ptr %suspended_time.sink25.i.i367, align 8
  br label %__update_runtime_status.exit371

__update_runtime_status.exit371:                  ; preds = %if.end6.i.i369, %if.end.i.i361.__update_runtime_status.exit371_crit_edge, %no_callback.__update_runtime_status.exit371_crit_edge
  %133 = ptrtoint ptr %runtime_status24 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 0, ptr %runtime_status24, align 8
  %call.i372 = call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 22
  %134 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %134)
  store volatile i64 %call.i372, ptr %last_busy.i, align 8
  %tobool216.not = icmp eq ptr %parent.2, null
  br i1 %tobool216.not, label %__update_runtime_status.exit371.if.end221.thread_crit_edge, label %if.then217

__update_runtime_status.exit371.if.end221.thread_crit_edge: ; preds = %__update_runtime_status.exit371
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end221.thread

if.then217:                                       ; preds = %__update_runtime_status.exit371
  call void @__sanitizer_cov_trace_pc() #10
  %child_count219 = getelementptr inbounds %struct.device, ptr %parent.2, i32 0, i32 12, i32 14
  %call.i.i328 = call zeroext i1 @__kasan_check_write(ptr noundef %child_count219, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %child_count219, i32 1, i32 3, i32 1) #8
  %135 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %child_count219, ptr %child_count219, i32 1, ptr elementtype(i32) %child_count219) #8, !srcloc !118
  br label %if.end221.thread

if.end221.thread:                                 ; preds = %if.then217, %__update_runtime_status.exit371.if.end221.thread_crit_edge
  call void @__wake_up(ptr noundef %wait_queue, i32 noundef 3, i32 noundef 0, ptr noundef null) #8
  br label %if.then225

if.end221:                                        ; preds = %if.then.i.i, %__update_runtime_status.exit352.if.end221_crit_edge
  %136 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 0, ptr %request, align 4
  call void @dev_pm_enable_wake_irq_check(ptr noundef %dev, i1 noundef zeroext false) #8
  call void @__wake_up(ptr noundef %wait_queue, i32 noundef 3, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %spec.select.i)
  %cmp224 = icmp sgt i32 %spec.select.i, -1
  br i1 %cmp224, label %if.end221.if.then225_crit_edge, label %if.end221.out_crit_edge

if.end221.out_crit_edge:                          ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end221.if.then225_crit_edge:                   ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then225

if.then225:                                       ; preds = %if.end221.if.then225_crit_edge, %if.end221.thread
  %retval1.6394 = phi i32 [ %retval1.5, %if.end221.thread ], [ %retval1.0.i, %if.end221.if.then225_crit_edge ]
  %parent.3393 = phi ptr [ %parent.2, %if.end221.thread ], [ %parent.1, %if.end221.if.then225_crit_edge ]
  %call226 = call fastcc i32 @rpm_idle(ptr noundef %dev, i32 noundef 1)
  br label %out

out:                                              ; preds = %if.then225, %if.end221.out_crit_edge, %cleanup.out_crit_edge, %cleanup.thread, %if.end22.out_crit_edge, %if.else9, %land.lhs.true.out_crit_edge, %repeat.outer.out_crit_edge
  %parent.4 = phi ptr [ %parent.3393, %if.then225 ], [ %parent.1, %if.end221.out_crit_edge ], [ %parent.0.ph, %cleanup.thread ], [ %parent.0.ph, %if.else9 ], [ %parent.0.ph, %land.lhs.true.out_crit_edge ], [ %parent.0.ph, %cleanup.out_crit_edge ], [ %parent.0.ph, %if.end22.out_crit_edge ], [ %parent.0.ph, %repeat.outer.out_crit_edge ]
  %retval1.7 = phi i32 [ %retval1.6394, %if.then225 ], [ %spec.select.i, %if.end221.out_crit_edge ], [ %retval1.3.ph, %cleanup.thread ], [ -13, %if.else9 ], [ 1, %land.lhs.true.out_crit_edge ], [ 1, %if.end22.out_crit_edge ], [ -22, %cleanup.out_crit_edge ], [ -22, %repeat.outer.out_crit_edge ]
  %tobool228.not = icmp eq ptr %parent.4, null
  br i1 %tobool228.not, label %out.__here_crit_edge, label %out.land.lhs.true229_crit_edge

out.land.lhs.true229_crit_edge:                   ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true229

out.__here_crit_edge:                             ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

land.lhs.true229:                                 ; preds = %out.land.lhs.true229_crit_edge, %if.end193.land.lhs.true229_crit_edge
  %retval1.7399 = phi i32 [ %retval1.7, %out.land.lhs.true229_crit_edge ], [ %retval1.4, %if.end193.land.lhs.true229_crit_edge ]
  %parent.4398 = phi ptr [ %parent.4, %out.land.lhs.true229_crit_edge ], [ %57, %if.end193.land.lhs.true229_crit_edge ]
  %137 = ptrtoint ptr %disable_depth to i32
  call void @__asan_load2_noabort(i32 %137)
  %bf.load232 = load i16, ptr %disable_depth, align 4
  %138 = and i16 %bf.load232, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %138)
  %tobool236.not = icmp eq i16 %138, 0
  br i1 %tobool236.not, label %if.then237, label %land.lhs.true229.__here_crit_edge

land.lhs.true229.__here_crit_edge:                ; preds = %land.lhs.true229
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

if.then237:                                       ; preds = %land.lhs.true229
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  %usage_count.i380 = getelementptr inbounds %struct.device, ptr %parent.4398, i32 0, i32 12, i32 13
  %call.i.i.i381 = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i380, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !111
  call void @llvm.prefetch.p0(ptr %usage_count.i380, i32 1, i32 3, i32 1) #8
  %139 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i380, ptr %usage_count.i380, i32 1, ptr elementtype(i32) %usage_count.i380) #8, !srcloc !112
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %139, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !113
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.body.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.then237
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @trace_rpm_usage_rcuidle(ptr noundef nonnull %parent.4398, i32 noundef 5) #8
  br label %__pm_runtime_idle.exit

do.body.i:                                        ; preds = %if.then237
  call void @__sanitizer_cov_trace_pc() #10
  %lock.i = getelementptr inbounds %struct.device, ptr %parent.4398, i32 0, i32 12, i32 3
  %call20.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %call25.i = call fastcc i32 @rpm_idle(ptr noundef nonnull %parent.4398, i32 noundef 5) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call20.i) #8
  br label %__pm_runtime_idle.exit

__pm_runtime_idle.exit:                           ; preds = %do.body.i, %if.then2.i
  call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  br label %__here

__here:                                           ; preds = %__pm_runtime_idle.exit, %land.lhs.true229.__here_crit_edge, %out.__here_crit_edge, %if.then144, %if.then135.__here_crit_edge
  %retval1.7400 = phi i32 [ %retval1.7, %out.__here_crit_edge ], [ %retval1.7399, %land.lhs.true229.__here_crit_edge ], [ %retval1.7399, %__pm_runtime_idle.exit ], [ 0, %if.then144 ], [ 0, %if.then135.__here_crit_edge ]
  call fastcc void @trace_rpm_return_int_rcuidle(ptr noundef %dev, i32 noundef ptrtoint (ptr blockaddress(@rpm_resume, %__here) to i32), i32 noundef %retval1.7400)
  ret i32 %retval1.7400
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pm_runtime_get_if_active(ptr noundef %dev, i1 noundef zeroext %ign_usage_count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %disable_depth = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %0 = ptrtoint ptr %disable_depth to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %disable_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load)
  %cmp7.not = icmp ult i16 %bf.load, 8192
  br i1 %cmp7.not, label %if.else, label %entry.if.end22_crit_edge

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.else:                                          ; preds = %entry
  %runtime_status = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %1 = ptrtoint ptr %runtime_status to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %runtime_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp10.not = icmp eq i32 %2, 0
  br i1 %cmp10.not, label %if.else13, label %if.else.if.end22_crit_edge

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.else13:                                        ; preds = %if.else
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #8
  br i1 %ign_usage_count, label %if.then14, label %if.else16

if.then14:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #8
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 1, ptr elementtype(i32) %usage_count) #8, !srcloc !118
  br label %if.end22

if.else16:                                        ; preds = %if.else13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !106
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 1, ptr elementtype(i32) %usage_count) #8, !srcloc !107
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.else16.atomic_inc_not_zero.exit_crit_edge, label %do.end11.i.i.i.i

if.else16.atomic_inc_not_zero.exit_crit_edge:     ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #10
  br label %atomic_inc_not_zero.exit

do.end11.i.i.i.i:                                 ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !108
  br label %atomic_inc_not_zero.exit

atomic_inc_not_zero.exit:                         ; preds = %do.end11.i.i.i.i, %if.else16.atomic_inc_not_zero.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i.i.i = icmp ne i32 %asmresult.i.i.i.i, 0
  %conv20 = zext i1 %cmp.i.i.i to i32
  br label %if.end22

if.end22:                                         ; preds = %atomic_inc_not_zero.exit, %if.then14, %if.else.if.end22_crit_edge, %entry.if.end22_crit_edge
  %retval1.0 = phi i32 [ 1, %if.then14 ], [ %conv20, %atomic_inc_not_zero.exit ], [ -22, %entry.if.end22_crit_edge ], [ 0, %if.else.if.end22_crit_edge ]
  tail call fastcc void @trace_rpm_usage_rcuidle(ptr noundef %dev, i32 noundef 0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent1 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent1, align 8
  %2 = zext i32 %status to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %status, label %entry.cleanup_crit_edge [
    i32 0, label %entry.if.end_crit_edge
    i32 2, label %entry.if.end_crit_edge166
  ]

entry.if.end_crit_edge166:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge166
  %lock = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %runtime_error = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 20
  %3 = ptrtoint ptr %runtime_error to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %runtime_error, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

lor.lhs.false:                                    ; preds = %if.end
  %disable_depth = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %5 = ptrtoint ptr %disable_depth to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load = load i16, ptr %disable_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load)
  %tobool5.not = icmp ult i16 %bf.load, 8192
  br i1 %tobool5.not, label %if.end13, label %lor.lhs.false.if.end18_crit_edge

lor.lhs.false.if.end18_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.end13:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  br label %cleanup

if.end18:                                         ; preds = %lor.lhs.false.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %disable_depth8 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %6 = ptrtoint ptr %disable_depth8 to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load9 = load i16, ptr %disable_depth8, align 4
  %7 = add i16 %bf.load9, 8192
  store i16 %7, ptr %disable_depth8, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %cmp19 = icmp eq i32 %status, 0
  br i1 %cmp19, label %if.then20, label %if.end18.if.end25_crit_edge

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @device_links_read_lock() #8
  %call21 = tail call fastcc i32 @rpm_get_suppliers(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  %spec.select = select i1 %tobool22.not, i32 0, i32 2
  tail call void @device_links_read_unlock(i32 noundef %call) #8
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %if.end18.if.end25_crit_edge
  %status.addr.1 = phi i32 [ %spec.select, %if.then20 ], [ %status, %if.end18.if.end25_crit_edge ]
  %error.1 = phi i32 [ %call21, %if.then20 ], [ 0, %if.end18.if.end25_crit_edge ]
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %runtime_status = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %8 = ptrtoint ptr %runtime_status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %runtime_status, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %status.addr.1)
  %cmp29 = icmp eq i32 %9, %status.addr.1
  %tobool31.not = icmp eq ptr %1, null
  %or.cond = select i1 %cmp29, i1 true, i1 %tobool31.not
  br i1 %or.cond, label %if.end25.out_set_crit_edge, label %if.end33

if.end25.out_set_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_set

if.end33:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %status.addr.1)
  %cmp34 = icmp eq i32 %status.addr.1, 2
  br i1 %cmp34, label %if.then35, label %do.body

if.then35:                                        ; preds = %if.end33
  %child_count = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %child_count, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !106
  tail call void @llvm.prefetch.p0(ptr %child_count, i32 1, i32 3, i32 1) #8
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %child_count, ptr %child_count, i32 0, i32 -1, ptr elementtype(i32) %child_count) #8, !srcloc !107
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %if.then35.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

if.then35.atomic_add_unless.exit_crit_edge:       ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !108
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %if.then35.atomic_add_unless.exit_crit_edge
  %ignore_children = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 15
  %11 = ptrtoint ptr %ignore_children to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load39 = load i16, ptr %ignore_children, align 4
  %12 = and i16 %bf.load39, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %bf.cast42.not = icmp eq i16 %12, 0
  br label %out_set

do.body:                                          ; preds = %if.end33
  %lock45 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 3
  tail call void @_raw_spin_lock_nested(ptr noundef %lock45, i32 noundef 1) #8
  %disable_depth48 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 15
  %13 = ptrtoint ptr %disable_depth48 to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load49 = load i16, ptr %disable_depth48, align 4
  %14 = and i16 %bf.load49, -8064
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %land.lhs.true60, label %do.body.if.else70_crit_edge

do.body.if.else70_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else70

land.lhs.true60:                                  ; preds = %do.body
  %runtime_status62 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 18
  %16 = ptrtoint ptr %runtime_status62 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %runtime_status62, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp63.not = icmp eq i32 %17, 0
  br i1 %cmp63.not, label %land.lhs.true60.if.else70_crit_edge, label %do.end67

land.lhs.true60.if.else70_crit_edge:              ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else70

do.end67:                                         ; preds = %land.lhs.true60
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %18 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end67.dev_name.exit_crit_edge

do.end67.dev_name.exit_crit_edge:                 ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end67.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %21, %if.end.i ], [ %19, %do.end67.dev_name.exit_crit_edge ]
  %init_name.i144 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %init_name.i144 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_name.i144, align 8
  %tobool.not.i145 = icmp eq ptr %23, null
  br i1 %tobool.not.i145, label %if.end.i146, label %dev_name.exit.if.end78.thread_crit_edge

dev_name.exit.if.end78.thread_crit_edge:          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78.thread

if.end.i146:                                      ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  br label %if.end78.thread

if.end78.thread:                                  ; preds = %if.end.i146, %dev_name.exit.if.end78.thread_crit_edge
  %retval.0.i147 = phi ptr [ %25, %if.end.i146 ], [ %23, %dev_name.exit.if.end78.thread_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef %retval.0.i, ptr noundef %retval.0.i147) #11
  tail call void @_raw_spin_unlock(ptr noundef %lock45) #8
  br label %if.end95.thread

if.else70:                                        ; preds = %land.lhs.true60.if.else70_crit_edge, %do.body.if.else70_crit_edge
  %26 = ptrtoint ptr %runtime_status to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %runtime_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp73 = icmp eq i32 %27, 2
  br i1 %cmp73, label %if.then74, label %if.else70.if.end78_crit_edge

if.else70.if.end78_crit_edge:                     ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

if.then74:                                        ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #10
  %child_count76 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 14
  %call.i.i143 = tail call zeroext i1 @__kasan_check_write(ptr noundef %child_count76, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %child_count76, i32 1, i32 3, i32 1) #8
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %child_count76, ptr %child_count76, i32 1, ptr elementtype(i32) %child_count76) #8, !srcloc !118
  br label %if.end78

if.end78:                                         ; preds = %if.then74, %if.else70.if.end78_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock45) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.1)
  %tobool81.not = icmp eq i32 %error.1, 0
  br i1 %tobool81.not, label %if.end78.out_set_crit_edge, label %if.end78.if.end95.thread_crit_edge

if.end78.if.end95.thread_crit_edge:               ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95.thread

if.end78.out_set_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_set

out_set:                                          ; preds = %if.end78.out_set_crit_edge, %atomic_add_unless.exit, %if.end25.out_set_crit_edge
  %notify_parent.0.off0 = phi i1 [ false, %if.end25.out_set_crit_edge ], [ %bf.cast42.not, %atomic_add_unless.exit ], [ false, %if.end78.out_set_crit_edge ]
  %error.3 = phi i32 [ %error.1, %if.end25.out_set_crit_edge ], [ %error.1, %atomic_add_unless.exit ], [ 0, %if.end78.out_set_crit_edge ]
  %29 = ptrtoint ptr %disable_depth8 to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load.i.i = load i16, ptr %disable_depth8, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i.i)
  %cmp.not.i.i = icmp ult i16 %bf.load.i.i, 8192
  br i1 %cmp.not.i.i, label %if.end.i.i, label %out_set.__update_runtime_status.exit_crit_edge

out_set.__update_runtime_status.exit_crit_edge:   ; preds = %out_set
  call void @__sanitizer_cov_trace_pc() #10
  br label %__update_runtime_status.exit

if.end.i.i:                                       ; preds = %out_set
  %accounting_timestamp.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 25
  %30 = ptrtoint ptr %accounting_timestamp.i.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %accounting_timestamp.i.i, align 8
  %call.i.i149 = tail call i64 @ktime_get_mono_fast_ns() #8
  %32 = ptrtoint ptr %accounting_timestamp.i.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %call.i.i149, ptr %accounting_timestamp.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i149, i64 %31)
  %cmp4.i.i = icmp ult i64 %call.i.i149, %31
  br i1 %cmp4.i.i, label %if.end.i.i.__update_runtime_status.exit_crit_edge, label %if.end6.i.i

if.end.i.i.__update_runtime_status.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__update_runtime_status.exit

if.end6.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = sub i64 %call.i.i149, %31
  %33 = ptrtoint ptr %runtime_status to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %runtime_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp8.i.i = icmp eq i32 %34, 2
  %suspended_time.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 24
  %active_time.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 23
  %suspended_time.sink25.i.i = select i1 %cmp8.i.i, ptr %suspended_time.i.i, ptr %active_time.i.i
  %35 = ptrtoint ptr %suspended_time.sink25.i.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %suspended_time.sink25.i.i, align 8
  %add.i.i = add i64 %sub.i.i, %36
  store i64 %add.i.i, ptr %suspended_time.sink25.i.i, align 8
  br label %__update_runtime_status.exit

__update_runtime_status.exit:                     ; preds = %if.end6.i.i, %if.end.i.i.__update_runtime_status.exit_crit_edge, %out_set.__update_runtime_status.exit_crit_edge
  %37 = ptrtoint ptr %runtime_status to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %status.addr.1, ptr %runtime_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.3)
  %tobool85.not = icmp eq i32 %error.3, 0
  br i1 %tobool85.not, label %if.then86, label %out

if.then86:                                        ; preds = %__update_runtime_status.exit
  %38 = ptrtoint ptr %runtime_error to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %runtime_error, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  br i1 %notify_parent.0.off0, label %if.then86.if.then93_crit_edge, label %if.then86.if.end95_crit_edge

if.then86.if.end95_crit_edge:                     ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

if.then86.if.then93_crit_edge:                    ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then93

if.end95.thread:                                  ; preds = %if.end78.if.end95.thread_crit_edge, %if.end78.thread
  %error.4.ph = phi i32 [ -16, %if.end78.thread ], [ %error.1, %if.end78.if.end95.thread_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  br label %if.then97

out:                                              ; preds = %__update_runtime_status.exit
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  br i1 %notify_parent.0.off0, label %out.if.then93_crit_edge, label %out.if.end95_crit_edge

out.if.end95_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

out.if.then93_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then93

if.then93:                                        ; preds = %out.if.then93_crit_edge, %if.then86.if.then93_crit_edge
  %lock.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 3
  %call20.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #8
  %call25.i.i = tail call fastcc i32 @rpm_idle(ptr noundef %1, i32 noundef 1) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call20.i.i) #8
  br label %if.end95

if.end95:                                         ; preds = %if.then93, %out.if.end95_crit_edge, %if.then86.if.end95_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %status.addr.1)
  %cmp96 = icmp eq i32 %status.addr.1, 2
  br i1 %cmp96, label %if.end95.if.then97_crit_edge, label %if.end95.if.end100_crit_edge

if.end95.if.end100_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

if.end95.if.then97_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then97

if.then97:                                        ; preds = %if.end95.if.then97_crit_edge, %if.end95.thread
  %error.4158165 = phi i32 [ %error.4.ph, %if.end95.thread ], [ %error.3, %if.end95.if.then97_crit_edge ]
  %call99 = tail call i32 @device_links_read_lock() #8
  tail call fastcc void @__rpm_put_suppliers(ptr noundef %dev, i1 noundef zeroext true) #8
  tail call void @device_links_read_unlock(i32 noundef %call99) #8
  br label %if.end100

if.end100:                                        ; preds = %if.then97, %if.end95.if.end100_crit_edge
  %error.4158164 = phi i32 [ %error.4158165, %if.then97 ], [ %error.3, %if.end95.if.end100_crit_edge ]
  tail call void @pm_runtime_enable(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.end100, %if.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.4158164, %if.end100 ], [ -22, %entry.cleanup_crit_edge ], [ -11, %if.end13 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_links_read_lock() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rpm_get_suppliers(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @device_links_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true3, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true3.do.end_crit_edge, label %land.lhs.true6

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true6:                                   ; preds = %land.lhs.true3
  %.b43 = load i1, ptr @rpm_get_suppliers.__warned, align 1
  br i1 %.b43, label %land.lhs.true6.do.end_crit_edge, label %if.then

land.lhs.true6.do.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rpm_get_suppliers.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 291, ptr noundef nonnull @.str.16) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true6.do.end_crit_edge, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %links = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %links to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn50 = load volatile ptr, ptr %links, align 8
  %cmp.not52 = icmp eq ptr %.pn50, %links
  br i1 %cmp.not52, label %do.end.cleanup34_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.cleanup34_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup34

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn53 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn50, %do.end.for.body_crit_edge ]
  %link.054 = getelementptr i8, ptr %.pn53, i32 -16
  %flags = getelementptr i8, ptr %.pn53, i32 940
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %and = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %for.body.for.inc_crit_edge, label %if.end17

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end17:                                         ; preds = %for.body
  %3 = ptrtoint ptr %link.054 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %link.054, align 8
  %irq_safe.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 12, i32 15
  %5 = ptrtoint ptr %irq_safe.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load.i = load i16, ptr %irq_safe.i, align 4
  %6 = and i16 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool2.not.i = icmp eq i16 %6, 0
  br i1 %tobool2.not.i, label %land.lhs.true3.i, label %if.end17.__pm_runtime_resume.exit_crit_edge

if.end17.__pm_runtime_resume.exit_crit_edge:      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %__pm_runtime_resume.exit

land.lhs.true3.i:                                 ; preds = %if.end17
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 12, i32 18
  %7 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not.i = icmp eq i32 %8, 0
  br i1 %cmp.not.i, label %land.lhs.true3.i.__pm_runtime_resume.exit_crit_edge, label %do.body5.i

land.lhs.true3.i.__pm_runtime_resume.exit_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__pm_runtime_resume.exit

do.body5.i:                                       ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1127) #8
  br label %__pm_runtime_resume.exit

__pm_runtime_resume.exit:                         ; preds = %do.body5.i, %land.lhs.true3.i.__pm_runtime_resume.exit_crit_edge, %if.end17.__pm_runtime_resume.exit_crit_edge
  %usage_count.i44 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 12, i32 13
  %call.i.i.i45 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i44, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %usage_count.i44, i32 1, i32 3, i32 1) #8
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i44, ptr %usage_count.i44, i32 1, ptr elementtype(i32) %usage_count.i44) #8, !srcloc !118
  %lock.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 12, i32 3
  %call20.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %call25.i = tail call fastcc i32 @rpm_resume(ptr noundef %4, i32 noundef 4) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call20.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call25.i)
  %cmp19 = icmp sgt i32 %call25.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13, i32 %call25.i)
  %cmp21.not = icmp eq i32 %call25.i, -13
  %or.cond = or i1 %cmp19, %cmp21.not
  br i1 %or.cond, label %if.end24, label %if.then22

if.then22:                                        ; preds = %__pm_runtime_resume.exit
  %10 = ptrtoint ptr %link.054 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %link.054, align 8
  %usage_count.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !106
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !107
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then22.cleanup34_crit_edge, label %do.end11.i.i.i.i

if.then22.cleanup34_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup34

do.end11.i.i.i.i:                                 ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !108
  br label %cleanup34

if.end24:                                         ; preds = %__pm_runtime_resume.exit
  %rpm_active = getelementptr i8, ptr %.pn53, i32 944
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rpm_active, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %rpm_active, i32 1, i32 3, i32 1) #8
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rpm_active, ptr %rpm_active, i32 1, ptr elementtype(i32) %rpm_active) #8, !srcloc !121
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end24.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !122

if.end24.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end24
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %14 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %.not.i.i.i = icmp sgt i32 %14, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.for.inc_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !115

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.for.inc_crit_edge:                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end24.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end24.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %rpm_active, i32 noundef %.sink.i.i.i) #8
  br label %for.inc

for.inc:                                          ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %15 = ptrtoint ptr %.pn53 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load volatile ptr, ptr %.pn53, align 8
  %cmp.not = icmp eq ptr %.pn, %links
  br i1 %cmp.not, label %for.inc.cleanup34_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup34_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup34

cleanup34:                                        ; preds = %for.inc.cleanup34_crit_edge, %do.end11.i.i.i.i, %if.then22.cleanup34_crit_edge, %do.end.cleanup34_crit_edge
  %retval.2 = phi i32 [ %call25.i, %if.then22.cleanup34_crit_edge ], [ %call25.i, %do.end11.i.i.i.i ], [ 0, %do.end.cleanup34_crit_edge ], [ 0, %for.inc.cleanup34_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_links_read_unlock(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pm_runtime_enable(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %disable_depth = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %0 = ptrtoint ptr %disable_depth to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %disable_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load)
  %tobool.not = icmp ult i16 %bf.load, 8192
  br i1 %tobool.not, label %do.end8, label %if.end

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #11
  br label %out

if.end:                                           ; preds = %entry
  %bf.lshr = lshr i16 %bf.load, 13
  %dec = add nuw nsw i16 %bf.lshr, 7
  %bf.value = and i16 %dec, 7
  %bf.shl = shl i16 %dec, 13
  %bf.clear = and i16 %bf.load, 8191
  %bf.set = or i16 %bf.shl, %bf.clear
  %1 = ptrtoint ptr %disable_depth to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %bf.set, ptr %disable_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.value)
  %cmp15.not = icmp eq i16 %bf.value, 0
  br i1 %cmp15.not, label %if.end18, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end18:                                         ; preds = %if.end
  %last_status = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 19
  %2 = ptrtoint ptr %last_status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %last_status, align 4
  %call20 = tail call i64 @ktime_get_mono_fast_ns() #8
  %accounting_timestamp = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 25
  %3 = ptrtoint ptr %accounting_timestamp to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %call20, ptr %accounting_timestamp, align 8
  %runtime_status = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %4 = ptrtoint ptr %runtime_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %runtime_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp23 = icmp eq i32 %5, 2
  br i1 %cmp23, label %land.lhs.true, label %if.end18.out_crit_edge

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

land.lhs.true:                                    ; preds = %if.end18
  %6 = ptrtoint ptr %disable_depth to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load26 = load i16, ptr %disable_depth, align 4
  %7 = and i16 %bf.load26, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %bf.cast29.not = icmp eq i16 %7, 0
  br i1 %bf.cast29.not, label %land.lhs.true30, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

land.lhs.true30:                                  ; preds = %land.lhs.true
  %child_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 14
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %child_count, i32 noundef 4) #8
  %8 = ptrtoint ptr %child_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %child_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp33 = icmp sgt i32 %9, 0
  br i1 %cmp33, label %do.end38, label %land.lhs.true30.out_crit_edge

land.lhs.true30.out_crit_edge:                    ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end38:                                         ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.11) #11
  br label %out

out:                                              ; preds = %do.end38, %land.lhs.true30.out_crit_edge, %land.lhs.true.out_crit_edge, %if.end18.out_crit_edge, %if.end.out_crit_edge, %do.end8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pm_runtime_barrier(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %usage_count.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !118
  %lock = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %request_pending = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %1 = ptrtoint ptr %request_pending to i32
  call void @__asan_load2_noabort(i32 %1)
  %bf.load = load i16, ptr %request_pending, align 4
  %2 = and i16 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %request = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 17
  %3 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %request, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp = icmp eq i32 %4, 4
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call fastcc i32 @rpm_resume(ptr noundef %dev, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %retval1.0 = phi i32 [ 1, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  tail call fastcc void @__pm_runtime_barrier(ptr noundef %dev)
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  %call.i.i.i14 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !106
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !107
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.end.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

if.end.pm_runtime_put_noidle.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !108
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %if.end.pm_runtime_put_noidle.exit_crit_edge
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__pm_runtime_barrier(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %timer_expires.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 9
  %0 = ptrtoint ptr %timer_expires.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %timer_expires.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp.not.i = icmp eq i64 %1, 0
  br i1 %cmp.not.i, label %entry.pm_runtime_deactivate_timer.exit_crit_edge, label %if.then.i

entry.pm_runtime_deactivate_timer.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm_runtime_deactivate_timer.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %suspend_timer.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 8
  %call.i = tail call i32 @hrtimer_try_to_cancel(ptr noundef %suspend_timer.i) #8
  %2 = ptrtoint ptr %timer_expires.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %timer_expires.i, align 8
  br label %pm_runtime_deactivate_timer.exit

pm_runtime_deactivate_timer.exit:                 ; preds = %if.then.i, %entry.pm_runtime_deactivate_timer.exit_crit_edge
  %request_pending = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %3 = ptrtoint ptr %request_pending to i32
  call void @__asan_load2_noabort(i32 %3)
  %bf.load = load i16, ptr %request_pending, align 4
  %4 = and i16 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %pm_runtime_deactivate_timer.exit.if.end_crit_edge, label %if.then

pm_runtime_deactivate_timer.exit.if.end_crit_edge: ; preds = %pm_runtime_deactivate_timer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %pm_runtime_deactivate_timer.exit
  call void @__sanitizer_cov_trace_pc() #10
  %request = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 17
  %5 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %request, align 4
  %lock = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 3
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  %work = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 10
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #8
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %6 = ptrtoint ptr %request_pending to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load8 = load i16, ptr %request_pending, align 4
  %bf.clear9 = and i16 %bf.load8, -2049
  store i16 %bf.clear9, ptr %request_pending, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %pm_runtime_deactivate_timer.exit.if.end_crit_edge
  %runtime_status = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %7 = ptrtoint ptr %runtime_status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %runtime_status, align 8
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %8, label %lor.lhs.false14 [
    i32 3, label %if.end.if.then21_crit_edge
    i32 1, label %if.end.if.then21_crit_edge67
  ]

if.end.if.then21_crit_edge67:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21

if.end.if.then21_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21

lor.lhs.false14:                                  ; preds = %if.end
  %10 = ptrtoint ptr %request_pending to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load16 = load i16, ptr %request_pending, align 4
  %11 = and i16 %bf.load16, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool20.not = icmp eq i16 %11, 0
  br i1 %tobool20.not, label %lor.lhs.false14.if.end49_crit_edge, label %lor.lhs.false14.if.then21_crit_edge

lor.lhs.false14.if.then21_crit_edge:              ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21

lor.lhs.false14.if.end49_crit_edge:               ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then21:                                        ; preds = %lor.lhs.false14.if.then21_crit_edge, %if.end.if.then21_crit_edge, %if.end.if.then21_crit_edge67
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #8
  %12 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %13 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %14 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %15 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %wait, align 4
  %17 = tail call i32 @llvm.read_register.i32(metadata !96) #8
  %and.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task, align 8
  %21 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %12, align 4
  %22 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @autoremove_wake_function, ptr %13, align 4
  %23 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %14, ptr %14, align 4
  %24 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %14, ptr %15, align 4
  %wait_queue = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 11
  %lock44 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 3
  br label %for.cond

for.cond:                                         ; preds = %if.end42, %if.then21
  call void @prepare_to_wait(ptr noundef %wait_queue, ptr noundef nonnull %wait, i32 noundef 2) #8
  %25 = ptrtoint ptr %runtime_status to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %runtime_status, align 8
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %26, label %land.lhs.true33 [
    i32 3, label %for.cond.if.end42_crit_edge
    i32 1, label %for.cond.if.end42_crit_edge68
  ]

for.cond.if.end42_crit_edge68:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

for.cond.if.end42_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

land.lhs.true33:                                  ; preds = %for.cond
  %28 = ptrtoint ptr %request_pending to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load36 = load i16, ptr %request_pending, align 4
  %29 = and i16 %bf.load36, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool40.not = icmp eq i16 %29, 0
  br i1 %tobool40.not, label %for.end, label %land.lhs.true33.if.end42_crit_edge

land.lhs.true33.if.end42_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.end42:                                         ; preds = %land.lhs.true33.if.end42_crit_edge, %for.cond.if.end42_crit_edge, %for.cond.if.end42_crit_edge68
  call void @_raw_spin_unlock_irq(ptr noundef %lock44) #8
  call void @schedule() #8
  call void @_raw_spin_lock_irq(ptr noundef %lock44) #8
  br label %for.cond

for.end:                                          ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #10
  call void @finish_wait(ptr noundef %wait_queue, ptr noundef nonnull %wait) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #8
  br label %if.end49

if.end49:                                         ; preds = %for.end, %lor.lhs.false14.if.end49_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext %check_resume) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %disable_depth = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %0 = ptrtoint ptr %disable_depth to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %disable_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load)
  %cmp.not = icmp ult i16 %bf.load, 8192
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = add i16 %bf.load, 8192
  %2 = ptrtoint ptr %disable_depth to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %disable_depth, align 4
  br label %out

if.end:                                           ; preds = %entry
  %check_resume.not = xor i1 %check_resume, true
  %3 = and i16 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool13.not = icmp eq i16 %3, 0
  %or.cond = select i1 %check_resume.not, i1 true, i1 %tobool13.not
  br i1 %or.cond, label %if.end.if.end18_crit_edge, label %land.lhs.true14

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

land.lhs.true14:                                  ; preds = %if.end
  %request = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 17
  %4 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %request, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp16 = icmp eq i32 %5, 4
  br i1 %cmp16, label %if.then17, label %land.lhs.true14.if.end18_crit_edge

land.lhs.true14.if.end18_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then17:                                        ; preds = %land.lhs.true14
  %usage_count.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !118
  %call = tail call fastcc i32 @rpm_resume(ptr noundef %dev, i32 noundef 0)
  %call.i.i.i52 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !106
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !107
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then17.if.end18_crit_edge, label %do.end11.i.i.i.i

if.then17.if.end18_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

do.end11.i.i.i.i:                                 ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !108
  br label %if.end18

if.end18:                                         ; preds = %do.end11.i.i.i.i, %if.then17.if.end18_crit_edge, %land.lhs.true14.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %8 = ptrtoint ptr %disable_depth to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i = load i16, ptr %disable_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %cmp.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %cmp.not.i, label %if.end.i, label %update_pm_runtime_accounting.exit.thread

update_pm_runtime_accounting.exit.thread:         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %9 = add i16 %bf.load.i, 8192
  %10 = ptrtoint ptr %disable_depth to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %disable_depth, align 4
  br label %out

if.end.i:                                         ; preds = %if.end18
  %accounting_timestamp.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 25
  %11 = ptrtoint ptr %accounting_timestamp.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %accounting_timestamp.i, align 8
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #8
  %13 = ptrtoint ptr %accounting_timestamp.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %call.i, ptr %accounting_timestamp.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %12)
  %cmp4.i = icmp ult i64 %call.i, %12
  br i1 %cmp4.i, label %if.end.i.update_pm_runtime_accounting.exit_crit_edge, label %if.end6.i

if.end.i.update_pm_runtime_accounting.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %update_pm_runtime_accounting.exit

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = sub i64 %call.i, %12
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %14 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp8.i = icmp eq i32 %15, 2
  %suspended_time.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 24
  %active_time.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 23
  %suspended_time.sink25.i = select i1 %cmp8.i, ptr %suspended_time.i, ptr %active_time.i
  %16 = ptrtoint ptr %suspended_time.sink25.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %suspended_time.sink25.i, align 8
  %add.i = add i64 %sub.i, %17
  store i64 %add.i, ptr %suspended_time.sink25.i, align 8
  br label %update_pm_runtime_accounting.exit

update_pm_runtime_accounting.exit:                ; preds = %if.end6.i, %if.end.i.update_pm_runtime_accounting.exit_crit_edge
  %18 = ptrtoint ptr %disable_depth to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load21.pr = load i16, ptr %disable_depth, align 4
  %19 = add i16 %bf.load21.pr, 8192
  store i16 %19, ptr %disable_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load21.pr)
  %tobool31.not = icmp ult i16 %bf.load21.pr, 8192
  br i1 %tobool31.not, label %if.then32, label %update_pm_runtime_accounting.exit.out_crit_edge

update_pm_runtime_accounting.exit.out_crit_edge:  ; preds = %update_pm_runtime_accounting.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then32:                                        ; preds = %update_pm_runtime_accounting.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @__pm_runtime_barrier(ptr noundef %dev)
  %runtime_status = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %20 = ptrtoint ptr %runtime_status to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %runtime_status, align 8
  %last_status = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 19
  %22 = ptrtoint ptr %last_status to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %last_status, align 4
  br label %out

out:                                              ; preds = %if.then32, %update_pm_runtime_accounting.exit.out_crit_edge, %update_pm_runtime_accounting.exit.thread, %if.then
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @devm_pm_runtime_enable(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pm_runtime_enable(ptr noundef %dev)
  %call.i = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @pm_runtime_disable_action, ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.devm_add_action_or_reset.exit_crit_edge, label %if.then.i

entry.devm_add_action_or_reset.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %devm_add_action_or_reset.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  br label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.then.i, %entry.devm_add_action_or_reset.exit_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pm_runtime_disable_action(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__pm_runtime_disable(ptr noundef %data, i1 noundef zeroext true) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pm_runtime_forbid(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %runtime_auto = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %0 = ptrtoint ptr %runtime_auto to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %runtime_auto, align 4
  %1 = and i16 %bf.load, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bf.clear5 = and i16 %bf.load, -257
  %2 = ptrtoint ptr %runtime_auto to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %bf.clear5, ptr %runtime_auto, align 4
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #8
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 1, ptr elementtype(i32) %usage_count) #8, !srcloc !118
  %call = tail call fastcc i32 @rpm_resume(ptr noundef %dev, i32 noundef 0)
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pm_runtime_allow(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %runtime_auto = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %0 = ptrtoint ptr %runtime_auto to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %runtime_auto, align 4
  %1 = and i16 %bf.load, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %bf.set = or i16 %bf.load, 256
  %2 = ptrtoint ptr %runtime_auto to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %bf.set, ptr %runtime_auto, align 4
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #8
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 1, ptr elementtype(i32) %usage_count) #8, !srcloc !112
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !113
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call fastcc i32 @rpm_idle(ptr noundef %dev, i32 noundef 9)
  br label %out

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @trace_rpm_usage_rcuidle(ptr noundef %dev, i32 noundef 9)
  br label %out

out:                                              ; preds = %if.else, %if.then7, %entry.out_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pm_runtime_no_callbacks(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %no_callbacks = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %0 = ptrtoint ptr %no_callbacks to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %no_callbacks, align 4
  %bf.set = or i16 %bf.load, 64
  store i16 %bf.set, ptr %no_callbacks, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  %state_in_sysfs.i = getelementptr inbounds %struct.kobject, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %state_in_sysfs.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load.i = load i8, ptr %state_in_sysfs.i, align 4
  %2 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rpm_sysfs_remove(ptr noundef %dev) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpm_sysfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pm_runtime_irq_safe(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %irq_safe.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 15
  %2 = ptrtoint ptr %irq_safe.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i.i = load i16, ptr %irq_safe.i.i, align 4
  %3 = and i16 %bf.load.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool2.not.i.i = icmp eq i16 %3, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true3.i.i, label %if.then.pm_runtime_get_sync.exit_crit_edge

if.then.pm_runtime_get_sync.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm_runtime_get_sync.exit

land.lhs.true3.i.i:                               ; preds = %if.then
  %runtime_status.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 18
  %4 = ptrtoint ptr %runtime_status.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %runtime_status.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i.i = icmp eq i32 %5, 0
  br i1 %cmp.not.i.i, label %land.lhs.true3.i.i.pm_runtime_get_sync.exit_crit_edge, label %do.body5.i.i

land.lhs.true3.i.i.pm_runtime_get_sync.exit_crit_edge: ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm_runtime_get_sync.exit

do.body5.i.i:                                     ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1127) #8
  br label %pm_runtime_get_sync.exit

pm_runtime_get_sync.exit:                         ; preds = %do.body5.i.i, %land.lhs.true3.i.i.pm_runtime_get_sync.exit_crit_edge, %if.then.pm_runtime_get_sync.exit_crit_edge
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !118
  %lock.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 3
  %call20.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #8
  %call25.i.i = tail call fastcc i32 @rpm_resume(ptr noundef nonnull %1, i32 noundef 4) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call20.i.i) #8
  br label %if.end

if.end:                                           ; preds = %pm_runtime_get_sync.exit, %entry.if.end_crit_edge
  %lock = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %irq_safe = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %7 = ptrtoint ptr %irq_safe to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load = load i16, ptr %irq_safe, align 4
  %bf.set = or i16 %bf.load, 32
  store i16 %bf.set, ptr %irq_safe, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef %delay) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %autosuspend_delay = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 21
  %0 = ptrtoint ptr %autosuspend_delay to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %autosuspend_delay, align 4
  %use_autosuspend = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %2 = ptrtoint ptr %use_autosuspend to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %use_autosuspend, align 4
  %bf.lshr = lshr i16 %bf.load, 4
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  store i32 %delay, ptr %autosuspend_delay, align 4
  tail call fastcc void @update_autosuspend(ptr noundef %dev, i32 noundef %1, i32 noundef %bf.cast)
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_autosuspend(ptr noundef %dev, i32 noundef %old_delay, i32 noundef %old_use) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %use_autosuspend = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %0 = ptrtoint ptr %use_autosuspend to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %use_autosuspend, align 4
  %1 = and i16 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.if.else6_crit_edge, label %land.lhs.true

entry.if.else6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else6

land.lhs.true:                                    ; preds = %entry
  %autosuspend_delay = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 21
  %2 = ptrtoint ptr %autosuspend_delay to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %autosuspend_delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %land.lhs.true.if.else6_crit_edge

land.lhs.true.if.else6_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else6

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %old_use)
  %tobool2.not = icmp eq i32 %old_use, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %old_delay)
  %cmp3 = icmp sgt i32 %old_delay, -1
  %or.cond = or i1 %cmp3, %tobool2.not
  br i1 %or.cond, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 1, ptr elementtype(i32) %usage_count) #8, !srcloc !118
  %call = tail call fastcc i32 @rpm_resume(ptr noundef %dev, i32 noundef 0)
  br label %if.end15

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @trace_rpm_usage_rcuidle(ptr noundef %dev, i32 noundef 0)
  br label %if.end15

if.else6:                                         ; preds = %land.lhs.true.if.else6_crit_edge, %entry.if.else6_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %old_use)
  %tobool7.not = icmp ne i32 %old_use, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %old_delay)
  %cmp9 = icmp slt i32 %old_delay, 0
  %or.cond24 = and i1 %cmp9, %tobool7.not
  br i1 %or.cond24, label %if.then10, label %if.else6.if.end13_crit_edge

if.else6.if.end13_crit_edge:                      ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then10:                                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #10
  %usage_count12 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i25 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count12, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %usage_count12, i32 1, i32 3, i32 1) #8
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count12, ptr %usage_count12, i32 1, ptr elementtype(i32) %usage_count12) #8, !srcloc !123
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.else6.if.end13_crit_edge
  %call14 = tail call fastcc i32 @rpm_idle(ptr noundef %dev, i32 noundef 8)
  br label %if.end15

if.end15:                                         ; preds = %if.end13, %if.else, %if.then4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext %use) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %autosuspend_delay = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 21
  %0 = ptrtoint ptr %autosuspend_delay to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %autosuspend_delay, align 4
  %use_autosuspend = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %2 = ptrtoint ptr %use_autosuspend to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %use_autosuspend, align 4
  %bf.lshr = lshr i16 %bf.load, 4
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  %bf.shl = select i1 %use, i16 16, i16 0
  %bf.clear6 = and i16 %bf.load, -17
  %bf.set = or i16 %bf.clear6, %bf.shl
  store i16 %bf.set, ptr %use_autosuspend, align 4
  tail call fastcc void @update_autosuspend(ptr noundef %dev, i32 noundef %1, i32 noundef %bf.cast)
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pm_runtime_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime_status = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %0 = ptrtoint ptr %runtime_status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %runtime_status, align 8
  %last_status = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 19
  %1 = ptrtoint ptr %last_status to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %last_status, align 4
  %idle_notification = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %2 = ptrtoint ptr %idle_notification to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %idle_notification, align 4
  %bf.clear5 = and i16 %bf.load, 4095
  %bf.set6 = or i16 %bf.clear5, 8192
  store i16 %bf.set6, ptr %idle_notification, align 4
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #8
  %3 = ptrtoint ptr %usage_count to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 0, ptr %usage_count, align 4
  %runtime_error = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 20
  %4 = ptrtoint ptr %runtime_error to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %runtime_error, align 8
  %child_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 14
  %call.i.i65 = tail call zeroext i1 @__kasan_check_write(ptr noundef %child_count, i32 noundef 4) #8
  %5 = ptrtoint ptr %child_count to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 0, ptr %child_count, align 4
  %6 = ptrtoint ptr %idle_notification to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %idle_notification, align 4
  %request = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 17
  %7 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %request, align 4
  %bf.clear16 = and i16 %bf.load.i, -3969
  %bf.clear25 = or i16 %bf.clear16, 256
  store i16 %bf.clear25, ptr %idle_notification, align 4
  %work = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 10
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #8
  %8 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %work, align 8
  %lockdep_map = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 10, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.13, ptr noundef nonnull @pm_runtime_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry34 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 10, i32 1
  %9 = ptrtoint ptr %entry34 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry34, ptr %entry34, align 4
  %prev.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 10, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry34, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 10, i32 2
  %11 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @pm_runtime_work, ptr %func, align 4
  %timer_expires = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 9
  %12 = ptrtoint ptr %timer_expires to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %timer_expires, align 8
  %suspend_timer = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 8
  tail call void @hrtimer_init(ptr noundef %suspend_timer, i32 noundef 1, i32 noundef 0) #8
  %function = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 8, i32 2
  %13 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @pm_suspend_timer_fn, ptr %function, align 8
  %wait_queue = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 11
  tail call void @__init_waitqueue_head(ptr noundef %wait_queue, ptr noundef nonnull @.str.15, ptr noundef nonnull @pm_runtime_init.__key.14) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pm_runtime_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -568
  %lock = getelementptr i8, ptr %work, i32 -172
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %request_pending = getelementptr i8, ptr %work, i32 108
  %0 = ptrtoint ptr %request_pending to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %request_pending, align 4
  %1 = and i16 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %request = getelementptr i8, ptr %work, i32 116
  %2 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %request, align 4
  store i32 0, ptr %request, align 4
  %bf.clear8 = and i16 %bf.load, -2049
  %4 = ptrtoint ptr %request_pending to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %bf.clear8, ptr %request_pending, align 4
  %5 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %3, label %if.end.out_crit_edge [
    i32 4, label %sw.bb13
    i32 1, label %sw.bb
    i32 2, label %sw.bb9
    i32 3, label %sw.bb11
  ]

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call fastcc i32 @rpm_idle(ptr noundef %add.ptr, i32 noundef 2)
  br label %out

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call fastcc i32 @rpm_suspend(ptr noundef %add.ptr, i32 noundef 2)
  br label %out

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call12 = tail call fastcc i32 @rpm_suspend(ptr noundef %add.ptr, i32 noundef 10)
  br label %out

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call14 = tail call fastcc i32 @rpm_resume(ptr noundef %add.ptr, i32 noundef 2)
  br label %out

out:                                              ; preds = %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb, %if.end.out_crit_edge, %entry.out_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm_suspend_timer_fn(ptr noundef %timer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %timer, i32 -512
  %lock = getelementptr i8, ptr %timer, i32 -116
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %timer_expires = getelementptr i8, ptr %timer, i32 48
  %0 = ptrtoint ptr %timer_expires to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %timer_expires, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp7.not = icmp eq i64 %1, 0
  br i1 %cmp7.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call9 = tail call i64 @ktime_get_mono_fast_ns() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %call9)
  %cmp10 = icmp ult i64 %1, %call9
  br i1 %cmp10, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %timer_expires to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %timer_expires, align 8
  %timer_autosuspends = getelementptr i8, ptr %timer, i32 164
  %3 = ptrtoint ptr %timer_autosuspends to i32
  call void @__asan_load2_noabort(i32 %3)
  %bf.load = load i16, ptr %timer_autosuspends, align 4
  %4 = and i16 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  %cond = select i1 %tobool.not, i32 1, i32 9
  %call15 = tail call fastcc i32 @rpm_suspend(ptr noundef %add.ptr, i32 noundef %cond)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pm_runtime_reinit(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %0 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %entry.if.end18_crit_edge, label %if.then

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then:                                          ; preds = %entry
  %runtime_status = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %1 = ptrtoint ptr %runtime_status to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %runtime_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then1, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #8
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then.if.end_crit_edge
  %3 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %bf.load = load i16, ptr %disable_depth.i, align 4
  %4 = and i16 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %if.end.if.end18_crit_edge, label %if.then4

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then4:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %5 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load8 = load i16, ptr %disable_depth.i, align 4
  %bf.clear9 = and i16 %bf.load8, -33
  store i16 %bf.clear9, ptr %disable_depth.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %tobool12.not = icmp eq ptr %7, null
  br i1 %tobool12.not, label %if.then4.if.end18_crit_edge, label %if.then13

if.then4.if.end18_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then13:                                        ; preds = %if.then4
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !112
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !113
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %do.body.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @trace_rpm_usage_rcuidle(ptr noundef nonnull %7, i32 noundef 5) #8
  br label %if.end18

do.body.i.i:                                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %lock.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 3
  %call20.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #8
  %call25.i.i = tail call fastcc i32 @rpm_idle(ptr noundef nonnull %7, i32 noundef 5) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call20.i.i) #8
  br label %if.end18

if.end18:                                         ; preds = %do.body.i.i, %if.then2.i.i, %if.then4.if.end18_crit_edge, %if.end.if.end18_crit_edge, %entry.if.end18_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pm_runtime_remove(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext false)
  tail call void @pm_runtime_reinit(ptr noundef %dev)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pm_runtime_get_suppliers(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @device_links_read_lock() #8
  %call1 = tail call i32 @device_links_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true4, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true4.do.end_crit_edge, label %land.lhs.true7

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true7:                                   ; preds = %land.lhs.true4
  %.b34 = load i1, ptr @pm_runtime_get_suppliers.__warned, align 1
  br i1 %.b34, label %land.lhs.true7.do.end_crit_edge, label %if.then

land.lhs.true7.do.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @pm_runtime_get_suppliers.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1734, ptr noundef nonnull @.str.16) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true7.do.end_crit_edge, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %links = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %links to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn35 = load volatile ptr, ptr %links, align 8
  %cmp.not37 = icmp eq ptr %.pn35, %links
  br i1 %cmp.not37, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn38 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn35, %do.end.for.body_crit_edge ]
  %flags = getelementptr i8, ptr %.pn38, i32 940
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %and = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %for.body.for.inc_crit_edge, label %if.then16

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then16:                                        ; preds = %for.body
  %link.039 = getelementptr i8, ptr %.pn38, i32 -16
  %supplier_preactivated = getelementptr i8, ptr %.pn38, i32 996
  %3 = ptrtoint ptr %supplier_preactivated to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %supplier_preactivated, align 4
  %4 = ptrtoint ptr %link.039 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %link.039, align 8
  %irq_safe.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 15
  %6 = ptrtoint ptr %irq_safe.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i.i = load i16, ptr %irq_safe.i.i, align 4
  %7 = and i16 %bf.load.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool2.not.i.i = icmp eq i16 %7, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true3.i.i, label %if.then16.pm_runtime_get_sync.exit_crit_edge

if.then16.pm_runtime_get_sync.exit_crit_edge:     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm_runtime_get_sync.exit

land.lhs.true3.i.i:                               ; preds = %if.then16
  %runtime_status.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 18
  %8 = ptrtoint ptr %runtime_status.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %runtime_status.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i.i = icmp eq i32 %9, 0
  br i1 %cmp.not.i.i, label %land.lhs.true3.i.i.pm_runtime_get_sync.exit_crit_edge, label %do.body5.i.i

land.lhs.true3.i.i.pm_runtime_get_sync.exit_crit_edge: ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm_runtime_get_sync.exit

do.body5.i.i:                                     ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1127) #8
  br label %pm_runtime_get_sync.exit

pm_runtime_get_sync.exit:                         ; preds = %do.body5.i.i, %land.lhs.true3.i.i.pm_runtime_get_sync.exit_crit_edge, %if.then16.pm_runtime_get_sync.exit_crit_edge
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !118
  %lock.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 3
  %call20.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #8
  %call25.i.i = tail call fastcc i32 @rpm_resume(ptr noundef %5, i32 noundef 4) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call20.i.i) #8
  %rpm_active = getelementptr i8, ptr %.pn38, i32 944
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rpm_active, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %rpm_active, i32 1, i32 3, i32 1) #8
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rpm_active, ptr %rpm_active, i32 1, ptr elementtype(i32) %rpm_active) #8, !srcloc !121
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %pm_runtime_get_sync.exit.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !122

pm_runtime_get_sync.exit.if.end15.sink.split.i.i.i_crit_edge: ; preds = %pm_runtime_get_sync.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %pm_runtime_get_sync.exit
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %12 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %.not.i.i.i = icmp sgt i32 %12, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.for.inc_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !115

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.for.inc_crit_edge:                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %pm_runtime_get_sync.exit.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %pm_runtime_get_sync.exit.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %rpm_active, i32 noundef %.sink.i.i.i) #8
  br label %for.inc

for.inc:                                          ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %13 = ptrtoint ptr %.pn38 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn = load volatile ptr, ptr %.pn38, align 8
  %cmp.not = icmp eq ptr %.pn, %links
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  tail call void @device_links_read_unlock(i32 noundef %call) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_links_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pm_runtime_put_suppliers(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @device_links_read_lock() #8
  %call1 = tail call i32 @device_links_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true4, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true4.do.end_crit_edge, label %land.lhs.true7

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true7:                                   ; preds = %land.lhs.true4
  %.b45 = load i1, ptr @pm_runtime_put_suppliers.__warned, align 1
  br i1 %.b45, label %land.lhs.true7.do.end_crit_edge, label %if.then

land.lhs.true7.do.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @pm_runtime_put_suppliers.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 1756, ptr noundef nonnull @.str.16) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true7.do.end_crit_edge, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %links = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %links to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn46 = load volatile ptr, ptr %links, align 8
  %cmp.not48 = icmp eq ptr %.pn46, %links
  br i1 %cmp.not48, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %lock = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 3
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn49 = phi ptr [ %.pn46, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %link.050 = getelementptr i8, ptr %.pn49, i32 -16
  %supplier_preactivated = getelementptr i8, ptr %.pn49, i32 996
  %1 = ptrtoint ptr %supplier_preactivated to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %supplier_preactivated, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool15.not = icmp eq i8 %2, 0
  br i1 %tobool15.not, label %for.body.for.inc_crit_edge, label %if.then16

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then16:                                        ; preds = %for.body
  %3 = ptrtoint ptr %supplier_preactivated to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %supplier_preactivated, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %4 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i = icmp eq i32 %5, 2
  br i1 %cmp.i, label %land.rhs, label %if.end25.critedge

land.rhs:                                         ; preds = %if.then16
  %rpm_active = getelementptr i8, ptr %.pn49, i32 944
  %call19 = tail call zeroext i1 @refcount_dec_not_one(ptr noundef %rpm_active) #8
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  br i1 %call19, label %if.then23, label %land.rhs.for.inc_crit_edge

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then23:                                        ; preds = %land.rhs
  %6 = ptrtoint ptr %link.050 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %link.050, align 8
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !112
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !113
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %do.body.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @trace_rpm_usage_rcuidle(ptr noundef %7, i32 noundef 5) #8
  br label %for.inc

do.body.i.i:                                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  %lock.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 3
  %call20.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #8
  %call25.i.i = tail call fastcc i32 @rpm_idle(ptr noundef %7, i32 noundef 5) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call20.i.i) #8
  br label %for.inc

if.end25.critedge:                                ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  br label %for.inc

for.inc:                                          ; preds = %if.end25.critedge, %do.body.i.i, %if.then2.i.i, %land.rhs.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %9 = ptrtoint ptr %.pn49 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load volatile ptr, ptr %.pn49, align 8
  %cmp.not = icmp eq ptr %.pn, %links
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  tail call void @device_links_read_unlock(i32 noundef %call) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pm_runtime_new_link(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %links_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 16
  %0 = ptrtoint ptr %links_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %links_count, align 8
  %inc = add i32 %1, 1
  store i32 %inc, ptr %links_count, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pm_runtime_drop_link(ptr noundef %link) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.device_link, ptr %link, i32 0, i32 6
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %consumer = getelementptr inbounds %struct.device_link, ptr %link, i32 0, i32 2
  %2 = ptrtoint ptr %consumer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %consumer, align 4
  %lock.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #8
  %links_count.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 16
  %4 = ptrtoint ptr %links_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %links_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.pm_runtime_drop_link_count.exit_crit_edge, !prof !122

if.end.pm_runtime_drop_link_count.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm_runtime_drop_link_count.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1786, i32 noundef 9, ptr noundef null) #8
  br label %pm_runtime_drop_link_count.exit

pm_runtime_drop_link_count.exit:                  ; preds = %do.end.i, %if.end.pm_runtime_drop_link_count.exit_crit_edge
  %6 = ptrtoint ptr %links_count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %links_count.i, align 8
  %dec.i = add i32 %7, -1
  store i32 %dec.i, ptr %links_count.i, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #8
  tail call void @pm_runtime_release_supplier(ptr noundef %link, i1 noundef zeroext true)
  br label %return

return:                                           ; preds = %pm_runtime_drop_link_count.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pm_runtime_force_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %0 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %pm_domain.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 13
  %2 = ptrtoint ptr %pm_domain.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pm_domain.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.else.i, label %if.end.if.end34.i_crit_edge

if.end.if.end34.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

if.else.i:                                        ; preds = %if.end
  %type.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %type.i, align 4
  %tobool3.not.i = icmp eq ptr %5, null
  br i1 %tobool3.not.i, label %if.else.i.if.else9.i_crit_edge, label %land.lhs.true.i

if.else.i.if.else9.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else9.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %pm.i = getelementptr inbounds %struct.device_type, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %pm.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pm.i, align 4
  %tobool5.not.i = icmp eq ptr %7, null
  br i1 %tobool5.not.i, label %land.lhs.true.i.if.else9.i_crit_edge, label %land.lhs.true.i.if.end34.i_crit_edge

land.lhs.true.i.if.end34.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

land.lhs.true.i.if.else9.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else9.i

if.else9.i:                                       ; preds = %land.lhs.true.i.if.else9.i_crit_edge, %if.else.i.if.else9.i_crit_edge
  %class.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 33
  %8 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %class.i, align 4
  %tobool10.not.i = icmp eq ptr %9, null
  br i1 %tobool10.not.i, label %if.else9.i.if.else18.i_crit_edge, label %land.lhs.true11.i

if.else9.i.if.else18.i_crit_edge:                 ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else18.i

land.lhs.true11.i:                                ; preds = %if.else9.i
  %pm13.i = getelementptr inbounds %struct.class, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %pm13.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pm13.i, align 4
  %tobool14.not.i = icmp eq ptr %11, null
  br i1 %tobool14.not.i, label %land.lhs.true11.i.if.else18.i_crit_edge, label %land.lhs.true11.i.if.end34.i_crit_edge

land.lhs.true11.i.if.end34.i_crit_edge:           ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

land.lhs.true11.i.if.else18.i_crit_edge:          ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else18.i

if.else18.i:                                      ; preds = %land.lhs.true11.i.if.else18.i_crit_edge, %if.else9.i.if.else18.i_crit_edge
  %bus.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 5
  %12 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i, align 8
  %tobool19.not.i = icmp eq ptr %13, null
  br i1 %tobool19.not.i, label %if.else18.i.land.lhs.true36.i_crit_edge, label %land.lhs.true20.i

if.else18.i.land.lhs.true36.i_crit_edge:          ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true36.i

land.lhs.true20.i:                                ; preds = %if.else18.i
  %pm22.i = getelementptr inbounds %struct.bus_type, ptr %13, i32 0, i32 18
  %14 = ptrtoint ptr %pm22.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pm22.i, align 4
  %tobool23.not.i = icmp eq ptr %15, null
  br i1 %tobool23.not.i, label %land.lhs.true20.i.land.lhs.true36.i_crit_edge, label %land.lhs.true20.i.if.end34.i_crit_edge

land.lhs.true20.i.if.end34.i_crit_edge:           ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

land.lhs.true20.i.land.lhs.true36.i_crit_edge:    ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true36.i

if.end34.i:                                       ; preds = %land.lhs.true20.i.if.end34.i_crit_edge, %land.lhs.true11.i.if.end34.i_crit_edge, %land.lhs.true.i.if.end34.i_crit_edge, %if.end.if.end34.i_crit_edge
  %ops.0.ph.i = phi ptr [ %15, %land.lhs.true20.i.if.end34.i_crit_edge ], [ %11, %land.lhs.true11.i.if.end34.i_crit_edge ], [ %7, %land.lhs.true.i.if.end34.i_crit_edge ], [ %3, %if.end.if.end34.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %ops.0.ph.i, i32 80
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 4
  %tobool35.not.i = icmp eq ptr %17, null
  br i1 %tobool35.not.i, label %if.end34.i.land.lhs.true36.i_crit_edge, label %if.end34.i.cond.end_crit_edge

if.end34.i.cond.end_crit_edge:                    ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

if.end34.i.land.lhs.true36.i_crit_edge:           ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true36.i

land.lhs.true36.i:                                ; preds = %if.end34.i.land.lhs.true36.i_crit_edge, %land.lhs.true20.i.land.lhs.true36.i_crit_edge, %if.else18.i.land.lhs.true36.i_crit_edge
  %driver.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %18 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver.i, align 4
  %tobool37.not.i = icmp eq ptr %19, null
  br i1 %tobool37.not.i, label %land.lhs.true36.i.if.end5_crit_edge, label %land.lhs.true38.i

land.lhs.true36.i.if.end5_crit_edge:              ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

land.lhs.true38.i:                                ; preds = %land.lhs.true36.i
  %pm40.i = getelementptr inbounds %struct.device_driver, ptr %19, i32 0, i32 16
  %20 = ptrtoint ptr %pm40.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pm40.i, align 4
  %tobool41.not.i = icmp eq ptr %21, null
  br i1 %tobool41.not.i, label %land.lhs.true38.i.if.end5_crit_edge, label %__rpm_get_callback.exit

land.lhs.true38.i.if.end5_crit_edge:              ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

__rpm_get_callback.exit:                          ; preds = %land.lhs.true38.i
  %add.ptr45.i = getelementptr i8, ptr %21, i32 80
  %22 = ptrtoint ptr %add.ptr45.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr45.i, align 4
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %__rpm_get_callback.exit.if.end5_crit_edge, label %__rpm_get_callback.exit.cond.end_crit_edge

__rpm_get_callback.exit.cond.end_crit_edge:       ; preds = %__rpm_get_callback.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

__rpm_get_callback.exit.if.end5_crit_edge:        ; preds = %__rpm_get_callback.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

cond.end:                                         ; preds = %__rpm_get_callback.exit.cond.end_crit_edge, %if.end34.i.cond.end_crit_edge
  %cb.1.i28 = phi ptr [ %23, %__rpm_get_callback.exit.cond.end_crit_edge ], [ %17, %if.end34.i.cond.end_crit_edge ]
  %call2 = tail call i32 %cb.1.i28(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %cond.end.if.end5_crit_edge, label %err

cond.end.if.end5_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.end5:                                          ; preds = %cond.end.if.end5_crit_edge, %__rpm_get_callback.exit.if.end5_crit_edge, %land.lhs.true38.i.if.end5_crit_edge, %land.lhs.true36.i.if.end5_crit_edge
  %usage_count.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usage_count.i, i32 noundef 4) #8
  %24 = ptrtoint ptr %usage_count.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %usage_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp.i21 = icmp slt i32 %25, 2
  br i1 %cmp.i21, label %land.rhs.i, label %if.end5.if.else_crit_edge

if.end5.if.else_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.rhs.i:                                       ; preds = %if.end5
  %child_count.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 14
  %call.i.i7.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %child_count.i, i32 noundef 4) #8
  %26 = ptrtoint ptr %child_count.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %child_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp3.i = icmp eq i32 %27, 0
  br i1 %cmp3.i, label %land.rhs.i.if.then7_crit_edge, label %pm_runtime_need_not_resume.exit

land.rhs.i.if.then7_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

pm_runtime_need_not_resume.exit:                  ; preds = %land.rhs.i
  %ignore_children.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %28 = ptrtoint ptr %ignore_children.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load.i = load i16, ptr %ignore_children.i, align 4
  %29 = and i16 %bf.load.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %bf.cast.i.not = icmp eq i16 %29, 0
  br i1 %bf.cast.i.not, label %pm_runtime_need_not_resume.exit.if.else_crit_edge, label %pm_runtime_need_not_resume.exit.if.then7_crit_edge

pm_runtime_need_not_resume.exit.if.then7_crit_edge: ; preds = %pm_runtime_need_not_resume.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

pm_runtime_need_not_resume.exit.if.else_crit_edge: ; preds = %pm_runtime_need_not_resume.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then7:                                         ; preds = %pm_runtime_need_not_resume.exit.if.then7_crit_edge, %land.rhs.i.if.then7_crit_edge
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #8
  br label %cleanup

if.else:                                          ; preds = %pm_runtime_need_not_resume.exit.if.else_crit_edge, %if.end5.if.else_crit_edge
  %disable_depth.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %30 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i.i)
  %cmp.not.i.i = icmp ult i16 %bf.load.i.i, 8192
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.else.__update_runtime_status.exit_crit_edge

if.else.__update_runtime_status.exit_crit_edge:   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %__update_runtime_status.exit

if.end.i.i:                                       ; preds = %if.else
  %accounting_timestamp.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 25
  %31 = ptrtoint ptr %accounting_timestamp.i.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %accounting_timestamp.i.i, align 8
  %call.i.i = tail call i64 @ktime_get_mono_fast_ns() #8
  %33 = ptrtoint ptr %accounting_timestamp.i.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %call.i.i, ptr %accounting_timestamp.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i, i64 %32)
  %cmp4.i.i = icmp ult i64 %call.i.i, %32
  br i1 %cmp4.i.i, label %if.end.i.i.__update_runtime_status.exit_crit_edge, label %if.end6.i.i

if.end.i.i.__update_runtime_status.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__update_runtime_status.exit

if.end6.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = sub i64 %call.i.i, %32
  %34 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %cmp8.i.i = icmp eq i32 %35, 2
  %suspended_time.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 24
  %active_time.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 23
  %suspended_time.sink25.i.i = select i1 %cmp8.i.i, ptr %suspended_time.i.i, ptr %active_time.i.i
  %36 = ptrtoint ptr %suspended_time.sink25.i.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %suspended_time.sink25.i.i, align 8
  %add.i.i = add i64 %sub.i.i, %37
  store i64 %add.i.i, ptr %suspended_time.sink25.i.i, align 8
  br label %__update_runtime_status.exit

__update_runtime_status.exit:                     ; preds = %if.end6.i.i, %if.end.i.i.__update_runtime_status.exit_crit_edge, %if.else.__update_runtime_status.exit_crit_edge
  %38 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 2, ptr %runtime_status.i, align 8
  %39 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %bf.load = load i16, ptr %disable_depth.i.i, align 4
  %bf.set = or i16 %bf.load, 512
  store i16 %bf.set, ptr %disable_depth.i.i, align 4
  br label %cleanup

err:                                              ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pm_runtime_enable(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %err, %__update_runtime_status.exit, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %err ], [ 0, %entry.cleanup_crit_edge ], [ 0, %__update_runtime_status.exit ], [ 0, %if.then7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pm_runtime_force_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %0 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %lor.lhs.false, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %needs_force_resume = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %2 = ptrtoint ptr %needs_force_resume to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %needs_force_resume, align 4
  %3 = and i16 %bf.load, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %lor.lhs.false.out_crit_edge, label %if.end

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load)
  %cmp.not.i.i = icmp ult i16 %bf.load, 8192
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.end.__update_runtime_status.exit_crit_edge

if.end.__update_runtime_status.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %__update_runtime_status.exit

if.end.i.i:                                       ; preds = %if.end
  %accounting_timestamp.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 25
  %4 = ptrtoint ptr %accounting_timestamp.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %accounting_timestamp.i.i, align 8
  %call.i.i = tail call i64 @ktime_get_mono_fast_ns() #8
  %6 = ptrtoint ptr %accounting_timestamp.i.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %call.i.i, ptr %accounting_timestamp.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i.i, i64 %5)
  %cmp4.i.i = icmp ult i64 %call.i.i, %5
  br i1 %cmp4.i.i, label %if.end.i.i.__update_runtime_status.exit_crit_edge, label %if.end6.i.i

if.end.i.i.__update_runtime_status.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__update_runtime_status.exit

if.end6.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = sub i64 %call.i.i, %5
  %7 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp8.i.i = icmp eq i32 %8, 2
  %suspended_time.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 24
  %active_time.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 23
  %suspended_time.sink25.i.i = select i1 %cmp8.i.i, ptr %suspended_time.i.i, ptr %active_time.i.i
  %9 = ptrtoint ptr %suspended_time.sink25.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %suspended_time.sink25.i.i, align 8
  %add.i.i = add i64 %sub.i.i, %10
  store i64 %add.i.i, ptr %suspended_time.sink25.i.i, align 8
  br label %__update_runtime_status.exit

__update_runtime_status.exit:                     ; preds = %if.end6.i.i, %if.end.i.i.__update_runtime_status.exit_crit_edge, %if.end.__update_runtime_status.exit_crit_edge
  %11 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %runtime_status.i, align 8
  %pm_domain.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 13
  %12 = ptrtoint ptr %pm_domain.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pm_domain.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.else.i, label %__update_runtime_status.exit.if.end34.i_crit_edge

__update_runtime_status.exit.if.end34.i_crit_edge: ; preds = %__update_runtime_status.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

if.else.i:                                        ; preds = %__update_runtime_status.exit
  %type.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %14 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %type.i, align 4
  %tobool3.not.i = icmp eq ptr %15, null
  br i1 %tobool3.not.i, label %if.else.i.if.else9.i_crit_edge, label %land.lhs.true.i

if.else.i.if.else9.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else9.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %pm.i = getelementptr inbounds %struct.device_type, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %pm.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pm.i, align 4
  %tobool5.not.i = icmp eq ptr %17, null
  br i1 %tobool5.not.i, label %land.lhs.true.i.if.else9.i_crit_edge, label %land.lhs.true.i.if.end34.i_crit_edge

land.lhs.true.i.if.end34.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

land.lhs.true.i.if.else9.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else9.i

if.else9.i:                                       ; preds = %land.lhs.true.i.if.else9.i_crit_edge, %if.else.i.if.else9.i_crit_edge
  %class.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 33
  %18 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %class.i, align 4
  %tobool10.not.i = icmp eq ptr %19, null
  br i1 %tobool10.not.i, label %if.else9.i.if.else18.i_crit_edge, label %land.lhs.true11.i

if.else9.i.if.else18.i_crit_edge:                 ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else18.i

land.lhs.true11.i:                                ; preds = %if.else9.i
  %pm13.i = getelementptr inbounds %struct.class, ptr %19, i32 0, i32 13
  %20 = ptrtoint ptr %pm13.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pm13.i, align 4
  %tobool14.not.i = icmp eq ptr %21, null
  br i1 %tobool14.not.i, label %land.lhs.true11.i.if.else18.i_crit_edge, label %land.lhs.true11.i.if.end34.i_crit_edge

land.lhs.true11.i.if.end34.i_crit_edge:           ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

land.lhs.true11.i.if.else18.i_crit_edge:          ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else18.i

if.else18.i:                                      ; preds = %land.lhs.true11.i.if.else18.i_crit_edge, %if.else9.i.if.else18.i_crit_edge
  %bus.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 5
  %22 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus.i, align 8
  %tobool19.not.i = icmp eq ptr %23, null
  br i1 %tobool19.not.i, label %if.else18.i.land.lhs.true36.i_crit_edge, label %land.lhs.true20.i

if.else18.i.land.lhs.true36.i_crit_edge:          ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true36.i

land.lhs.true20.i:                                ; preds = %if.else18.i
  %pm22.i = getelementptr inbounds %struct.bus_type, ptr %23, i32 0, i32 18
  %24 = ptrtoint ptr %pm22.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pm22.i, align 4
  %tobool23.not.i = icmp eq ptr %25, null
  br i1 %tobool23.not.i, label %land.lhs.true20.i.land.lhs.true36.i_crit_edge, label %land.lhs.true20.i.if.end34.i_crit_edge

land.lhs.true20.i.if.end34.i_crit_edge:           ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

land.lhs.true20.i.land.lhs.true36.i_crit_edge:    ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true36.i

if.end34.i:                                       ; preds = %land.lhs.true20.i.if.end34.i_crit_edge, %land.lhs.true11.i.if.end34.i_crit_edge, %land.lhs.true.i.if.end34.i_crit_edge, %__update_runtime_status.exit.if.end34.i_crit_edge
  %ops.0.ph.i = phi ptr [ %25, %land.lhs.true20.i.if.end34.i_crit_edge ], [ %21, %land.lhs.true11.i.if.end34.i_crit_edge ], [ %17, %land.lhs.true.i.if.end34.i_crit_edge ], [ %13, %__update_runtime_status.exit.if.end34.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %ops.0.ph.i, i32 84
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i, align 4
  %tobool35.not.i = icmp eq ptr %27, null
  br i1 %tobool35.not.i, label %if.end34.i.land.lhs.true36.i_crit_edge, label %if.end34.i.cond.end_crit_edge

if.end34.i.cond.end_crit_edge:                    ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

if.end34.i.land.lhs.true36.i_crit_edge:           ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true36.i

land.lhs.true36.i:                                ; preds = %if.end34.i.land.lhs.true36.i_crit_edge, %land.lhs.true20.i.land.lhs.true36.i_crit_edge, %if.else18.i.land.lhs.true36.i_crit_edge
  %driver.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %28 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver.i, align 4
  %tobool37.not.i = icmp eq ptr %29, null
  br i1 %tobool37.not.i, label %land.lhs.true36.i.if.end7_crit_edge, label %land.lhs.true38.i

land.lhs.true36.i.if.end7_crit_edge:              ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

land.lhs.true38.i:                                ; preds = %land.lhs.true36.i
  %pm40.i = getelementptr inbounds %struct.device_driver, ptr %29, i32 0, i32 16
  %30 = ptrtoint ptr %pm40.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pm40.i, align 4
  %tobool41.not.i = icmp eq ptr %31, null
  br i1 %tobool41.not.i, label %land.lhs.true38.i.if.end7_crit_edge, label %__rpm_get_callback.exit

land.lhs.true38.i.if.end7_crit_edge:              ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

__rpm_get_callback.exit:                          ; preds = %land.lhs.true38.i
  %add.ptr45.i = getelementptr i8, ptr %31, i32 84
  %32 = ptrtoint ptr %add.ptr45.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr45.i, align 4
  %tobool2.not = icmp eq ptr %33, null
  br i1 %tobool2.not, label %__rpm_get_callback.exit.if.end7_crit_edge, label %__rpm_get_callback.exit.cond.end_crit_edge

__rpm_get_callback.exit.cond.end_crit_edge:       ; preds = %__rpm_get_callback.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

__rpm_get_callback.exit.if.end7_crit_edge:        ; preds = %__rpm_get_callback.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

cond.end:                                         ; preds = %__rpm_get_callback.exit.cond.end_crit_edge, %if.end34.i.cond.end_crit_edge
  %cb.1.i29 = phi ptr [ %33, %__rpm_get_callback.exit.cond.end_crit_edge ], [ %27, %if.end34.i.cond.end_crit_edge ]
  %call3 = tail call i32 %cb.1.i29(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cond.end.if.end7_crit_edge, label %if.then5

cond.end.if.end7_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then5:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #8
  br label %out

if.end7:                                          ; preds = %cond.end.if.end7_crit_edge, %__rpm_get_callback.exit.if.end7_crit_edge, %land.lhs.true38.i.if.end7_crit_edge, %land.lhs.true36.i.if.end7_crit_edge
  %call.i23 = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 22
  %34 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store volatile i64 %call.i23, ptr %last_busy.i, align 8
  br label %out

out:                                              ; preds = %if.end7, %if.then5, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call3, %if.then5 ], [ 0, %if.end7 ], [ 0, %lor.lhs.false.out_crit_edge ], [ 0, %entry.out_crit_edge ]
  %needs_force_resume9 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %35 = ptrtoint ptr %needs_force_resume9 to i32
  call void @__asan_load2_noabort(i32 %35)
  %bf.load10 = load i16, ptr %needs_force_resume9, align 4
  %bf.clear11 = and i16 %bf.load10, -513
  store i16 %bf.clear11, ptr %needs_force_resume9, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev)
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rpm_suspend_rcuidle(ptr noundef %dev, i32 noundef %flags) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpm_suspend, i32 0, i32 1), ptr blockaddress(@trace_rpm_suspend_rcuidle, %do.body)) #8
          to label %if.end53 [label %do.body], !srcloc !114

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !96) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !115

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i59 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i59
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end53_crit_edge, label %if.end

cpu_online.exit.if.end53_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.end:                                           ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !96) #8
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %12, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end35_crit_edge, label %land.rhs

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

land.rhs:                                         ; preds = %if.end
  %.b56 = load i1, ptr @trace_rpm_suspend_rcuidle.__already_done, align 1
  br i1 %.b56, label %land.rhs.if.end35_crit_edge, label %if.then12, !prof !115

land.rhs.if.end35_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then12:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_rpm_suspend_rcuidle.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 64, i32 noundef 9, ptr noundef null) #8
  br label %if.end35

if.end35:                                         ; preds = %if.then12, %land.rhs.if.end35_crit_edge, %if.end.if.end35_crit_edge
  %13 = tail call i32 @llvm.read_register.i32(metadata !96) #8
  %and.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %16, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !125
  %call.i = tail call i32 @__srcu_read_lock(ptr noundef nonnull @tracepoint_srcu) #8
  tail call void @rcu_irq_enter_irqson() #8
  %call47 = tail call i32 @__traceiter_rpm_suspend(ptr noundef null, ptr noundef %dev, i32 noundef %flags) #8
  tail call void @rcu_irq_exit_irqson() #8
  tail call void @__srcu_read_unlock(ptr noundef nonnull @tracepoint_srcu, i32 noundef %call.i) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !126
  %17 = tail call i32 @llvm.read_register.i32(metadata !96) #8
  %and.i.i.i57 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i57 to ptr
  %preempt_count.i.i58 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i58 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i58, align 4
  %sub.i = add i32 %20, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i58, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.end35, %cpu_online.exit.if.end53_crit_edge, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_enable_wake_irq_check(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_enable_wake_irq_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rpm_return_int_rcuidle(ptr noundef %dev, i32 noundef %ip, i32 noundef %ret) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpm_return_int, i32 0, i32 1), ptr blockaddress(@trace_rpm_return_int_rcuidle, %do.body)) #8
          to label %if.end53 [label %do.body], !srcloc !114

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !96) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !115

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i59 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i59
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end53_crit_edge, label %if.end

cpu_online.exit.if.end53_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.end:                                           ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !96) #8
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %12, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end35_crit_edge, label %land.rhs

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

land.rhs:                                         ; preds = %if.end
  %.b56 = load i1, ptr @trace_rpm_return_int_rcuidle.__already_done, align 1
  br i1 %.b56, label %land.rhs.if.end35_crit_edge, label %if.then12, !prof !115

land.rhs.if.end35_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then12:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_rpm_return_int_rcuidle.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 102, i32 noundef 9, ptr noundef null) #8
  br label %if.end35

if.end35:                                         ; preds = %if.then12, %land.rhs.if.end35_crit_edge, %if.end.if.end35_crit_edge
  %13 = tail call i32 @llvm.read_register.i32(metadata !96) #8
  %and.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %16, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !127
  %call.i = tail call i32 @__srcu_read_lock(ptr noundef nonnull @tracepoint_srcu) #8
  tail call void @rcu_irq_enter_irqson() #8
  %call47 = tail call i32 @__traceiter_rpm_return_int(ptr noundef null, ptr noundef %dev, i32 noundef %ip, i32 noundef %ret) #8
  tail call void @rcu_irq_exit_irqson() #8
  tail call void @__srcu_read_unlock(ptr noundef nonnull @tracepoint_srcu, i32 noundef %call.i) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !128
  %17 = tail call i32 @llvm.read_register.i32(metadata !96) #8
  %and.i.i.i57 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i57 to ptr
  %preempt_count.i.i58 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i58 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i58, align 4
  %sub.i = add i32 %20, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i58, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.end35, %cpu_online.exit.if.end53_crit_edge, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_disable_wake_irq_check(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_irq_enter_irqson() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpm_suspend(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_irq_exit_irqson() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__srcu_read_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__srcu_read_unlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__rpm_callback(ptr noundef readonly %cb, ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %links_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 16
  %0 = ptrtoint ptr %links_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %links_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  %irq_safe = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %2 = ptrtoint ptr %irq_safe to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %irq_safe, align 4
  %3 = and i16 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  %lock5 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 3
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %lock5) #8
  br label %if.end14

if.else:                                          ; preds = %entry
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock5) #8
  br i1 %cmp.not, label %if.else.if.end14_crit_edge, label %land.lhs.true

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

land.lhs.true:                                    ; preds = %if.else
  %runtime_status = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %4 = ptrtoint ptr %runtime_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %runtime_status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp8 = icmp eq i32 %5, 1
  br i1 %cmp8, label %if.then9, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then9:                                         ; preds = %land.lhs.true
  %call = tail call i32 @device_links_read_lock() #8
  %call10 = tail call fastcc i32 @rpm_get_suppliers(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end, label %if.then12

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @__rpm_put_suppliers(ptr noundef %dev, i1 noundef zeroext true) #8
  br label %fail

if.end:                                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @device_links_read_unlock(i32 noundef %call) #8
  br label %if.end14

if.end14:                                         ; preds = %if.end, %land.lhs.true.if.end14_crit_edge, %if.else.if.end14_crit_edge, %if.then
  %tobool15.not = icmp eq ptr %cb, null
  br i1 %tobool15.not, label %if.end14.if.end18_crit_edge, label %if.then16

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = tail call i32 %cb(ptr noundef %dev) #8
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end14.if.end18_crit_edge
  %retval1.1 = phi i32 [ %call17, %if.then16 ], [ 0, %if.end14.if.end18_crit_edge ]
  %6 = ptrtoint ptr %irq_safe to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load21 = load i16, ptr %irq_safe, align 4
  %7 = and i16 %bf.load21, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool25.not = icmp eq i16 %7, 0
  br i1 %tobool25.not, label %if.else29, label %if.then26

if.then26:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_lock(ptr noundef %lock5) #8
  br label %if.end47

if.else29:                                        ; preds = %if.end18
  br i1 %cmp.not, label %if.else29.if.end44_crit_edge, label %land.lhs.true31

if.else29.if.end44_crit_edge:                     ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

land.lhs.true31:                                  ; preds = %if.else29
  %runtime_status33 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %8 = ptrtoint ptr %runtime_status33 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %runtime_status33, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp34 = icmp eq i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.1)
  %tobool36.not = icmp eq i32 %retval1.1, 0
  %or.cond = select i1 %cmp34, i1 %tobool36.not, i1 false
  br i1 %or.cond, label %land.lhs.true31.if.then42_crit_edge, label %lor.lhs.false

land.lhs.true31.if.then42_crit_edge:              ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then42

lor.lhs.false:                                    ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp39 = icmp ne i32 %9, 1
  %brmerge = select i1 %cmp39, i1 true, i1 %tobool36.not
  %retval1.1.mux = select i1 %cmp39, i32 %retval1.1, i32 0
  br i1 %brmerge, label %lor.lhs.false.if.end44_crit_edge, label %lor.lhs.false.if.then42_crit_edge

lor.lhs.false.if.then42_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then42

lor.lhs.false.if.end44_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then42:                                        ; preds = %lor.lhs.false.if.then42_crit_edge, %land.lhs.true31.if.then42_crit_edge
  %call43 = tail call i32 @device_links_read_lock() #8
  %call.i = tail call i32 @device_links_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then42.do.end.i_crit_edge

if.then42.do.end.i_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.then42
  %call1.i = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true3.i, label %land.lhs.true.i.do.end.i_crit_edge

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %land.lhs.true6.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true3.i
  %.b27.i = load i1, ptr @__rpm_put_suppliers.__warned, align 1
  br i1 %.b27.i, label %land.lhs.true6.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true6.i.do.end.i_crit_edge:              ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @__rpm_put_suppliers.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 340, ptr noundef nonnull @.str.16) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true6.i.do.end.i_crit_edge, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.then42.do.end.i_crit_edge
  %links.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 11
  %10 = ptrtoint ptr %links.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn.i69 = load volatile ptr, ptr %links.i, align 8
  %cmp.not.i70 = icmp eq ptr %.pn.i69, %links.i
  br i1 %cmp.not.i70, label %do.end.i.fail_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.fail_crit_edge:                          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

for.body.i:                                       ; preds = %pm_runtime_release_supplier.exit.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %.pn.i71 = phi ptr [ %.pn.i, %pm_runtime_release_supplier.exit.for.body.i_crit_edge ], [ %.pn.i69, %do.end.i.for.body.i_crit_edge ]
  %link.0.i = getelementptr i8, ptr %.pn.i71, i32 -16
  %11 = ptrtoint ptr %link.0.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %link.0.i, align 8
  %usage_count.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 12, i32 13
  %rpm_active.i = getelementptr i8, ptr %.pn.i71, i32 944
  %call.i6768 = tail call zeroext i1 @refcount_dec_not_one(ptr noundef %rpm_active.i) #8
  br i1 %call.i6768, label %for.body.i.land.rhs.i_crit_edge, label %for.body.i.pm_runtime_release_supplier.exit_crit_edge

for.body.i.pm_runtime_release_supplier.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm_runtime_release_supplier.exit

for.body.i.land.rhs.i_crit_edge:                  ; preds = %for.body.i
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %pm_runtime_put_noidle.exit.i.land.rhs.i_crit_edge, %for.body.i.land.rhs.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usage_count.i, i32 noundef 4) #8
  %13 = ptrtoint ptr %usage_count.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %usage_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i = icmp sgt i32 %14, 0
  br i1 %cmp.i, label %while.body.i, label %land.rhs.i.pm_runtime_release_supplier.exit_crit_edge

land.rhs.i.pm_runtime_release_supplier.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm_runtime_release_supplier.exit

while.body.i:                                     ; preds = %land.rhs.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !106
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !107
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %while.body.i.pm_runtime_put_noidle.exit.i_crit_edge, label %do.end11.i.i.i.i.i

while.body.i.pm_runtime_put_noidle.exit.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm_runtime_put_noidle.exit.i

do.end11.i.i.i.i.i:                               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !108
  br label %pm_runtime_put_noidle.exit.i

pm_runtime_put_noidle.exit.i:                     ; preds = %do.end11.i.i.i.i.i, %while.body.i.pm_runtime_put_noidle.exit.i_crit_edge
  %call.i67 = tail call zeroext i1 @refcount_dec_not_one(ptr noundef %rpm_active.i) #8
  br i1 %call.i67, label %pm_runtime_put_noidle.exit.i.land.rhs.i_crit_edge, label %pm_runtime_put_noidle.exit.i.pm_runtime_release_supplier.exit_crit_edge

pm_runtime_put_noidle.exit.i.pm_runtime_release_supplier.exit_crit_edge: ; preds = %pm_runtime_put_noidle.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm_runtime_release_supplier.exit

pm_runtime_put_noidle.exit.i.land.rhs.i_crit_edge: ; preds = %pm_runtime_put_noidle.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

pm_runtime_release_supplier.exit:                 ; preds = %pm_runtime_put_noidle.exit.i.pm_runtime_release_supplier.exit_crit_edge, %land.rhs.i.pm_runtime_release_supplier.exit_crit_edge, %for.body.i.pm_runtime_release_supplier.exit_crit_edge
  %16 = ptrtoint ptr %.pn.i71 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn.i = load volatile ptr, ptr %.pn.i71, align 8
  %cmp.not.i = icmp eq ptr %.pn.i, %links.i
  br i1 %cmp.not.i, label %pm_runtime_release_supplier.exit.fail_crit_edge, label %pm_runtime_release_supplier.exit.for.body.i_crit_edge

pm_runtime_release_supplier.exit.for.body.i_crit_edge: ; preds = %pm_runtime_release_supplier.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

pm_runtime_release_supplier.exit.fail_crit_edge:  ; preds = %pm_runtime_release_supplier.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

fail:                                             ; preds = %pm_runtime_release_supplier.exit.fail_crit_edge, %do.end.i.fail_crit_edge, %if.then12
  %retval1.2 = phi i32 [ %call10, %if.then12 ], [ %retval1.1, %do.end.i.fail_crit_edge ], [ %retval1.1, %pm_runtime_release_supplier.exit.fail_crit_edge ]
  %idx.0 = phi i32 [ %call, %if.then12 ], [ %call43, %do.end.i.fail_crit_edge ], [ %call43, %pm_runtime_release_supplier.exit.fail_crit_edge ]
  tail call void @device_links_read_unlock(i32 noundef %idx.0) #8
  br label %if.end44

if.end44:                                         ; preds = %fail, %lor.lhs.false.if.end44_crit_edge, %if.else29.if.end44_crit_edge
  %retval1.3 = phi i32 [ %retval1.2, %fail ], [ %retval1.1.mux, %lor.lhs.false.if.end44_crit_edge ], [ %retval1.1, %if.else29.if.end44_crit_edge ]
  tail call void @_raw_spin_lock_irq(ptr noundef %lock5) #8
  br label %if.end47

if.end47:                                         ; preds = %if.end44, %if.then26
  %retval1.4 = phi i32 [ %retval1.1, %if.then26 ], [ %retval1.3, %if.end44 ]
  ret i32 %retval1.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__rpm_put_suppliers(ptr noundef %dev, i1 noundef zeroext %try_to_suspend) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @device_links_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true3, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true3.do.end_crit_edge, label %land.lhs.true6

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true6:                                   ; preds = %land.lhs.true3
  %.b27 = load i1, ptr @__rpm_put_suppliers.__warned, align 1
  br i1 %.b27, label %land.lhs.true6.do.end_crit_edge, label %if.then

land.lhs.true6.do.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @__rpm_put_suppliers.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 340, ptr noundef nonnull @.str.16) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true6.do.end_crit_edge, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %links = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %links to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn29 = load volatile ptr, ptr %links, align 8
  %cmp.not30 = icmp eq ptr %.pn29, %links
  br i1 %cmp.not30, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %pm_runtime_release_supplier.exit.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn31 = phi ptr [ %.pn, %pm_runtime_release_supplier.exit.for.body_crit_edge ], [ %.pn29, %do.end.for.body_crit_edge ]
  %link.0 = getelementptr i8, ptr %.pn31, i32 -16
  %1 = ptrtoint ptr %link.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %link.0, align 8
  %usage_count.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 12, i32 13
  %rpm_active.i = getelementptr i8, ptr %.pn31, i32 944
  %call.i28 = tail call zeroext i1 @refcount_dec_not_one(ptr noundef %rpm_active.i) #8
  br i1 %call.i28, label %for.body.land.rhs.i_crit_edge, label %for.body.while.end.i_crit_edge

for.body.while.end.i_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

for.body.land.rhs.i_crit_edge:                    ; preds = %for.body
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %pm_runtime_put_noidle.exit.i.land.rhs.i_crit_edge, %for.body.land.rhs.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usage_count.i, i32 noundef 4) #8
  %3 = ptrtoint ptr %usage_count.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %usage_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i = icmp sgt i32 %4, 0
  br i1 %cmp.i, label %while.body.i, label %land.rhs.i.while.end.i_crit_edge

land.rhs.i.while.end.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i:                                     ; preds = %land.rhs.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !106
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !107
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %while.body.i.pm_runtime_put_noidle.exit.i_crit_edge, label %do.end11.i.i.i.i.i

while.body.i.pm_runtime_put_noidle.exit.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm_runtime_put_noidle.exit.i

do.end11.i.i.i.i.i:                               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !108
  br label %pm_runtime_put_noidle.exit.i

pm_runtime_put_noidle.exit.i:                     ; preds = %do.end11.i.i.i.i.i, %while.body.i.pm_runtime_put_noidle.exit.i_crit_edge
  %call.i = tail call zeroext i1 @refcount_dec_not_one(ptr noundef %rpm_active.i) #8
  br i1 %call.i, label %pm_runtime_put_noidle.exit.i.land.rhs.i_crit_edge, label %pm_runtime_put_noidle.exit.i.while.end.i_crit_edge

pm_runtime_put_noidle.exit.i.while.end.i_crit_edge: ; preds = %pm_runtime_put_noidle.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

pm_runtime_put_noidle.exit.i.land.rhs.i_crit_edge: ; preds = %pm_runtime_put_noidle.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

while.end.i:                                      ; preds = %pm_runtime_put_noidle.exit.i.while.end.i_crit_edge, %land.rhs.i.while.end.i_crit_edge, %for.body.while.end.i_crit_edge
  br i1 %try_to_suspend, label %if.then.i, label %while.end.i.pm_runtime_release_supplier.exit_crit_edge

while.end.i.pm_runtime_release_supplier.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm_runtime_release_supplier.exit

if.then.i:                                        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %lock.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 12, i32 3
  %call20.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %call25.i = tail call fastcc i32 @rpm_idle(ptr noundef %2, i32 noundef 1) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call20.i) #8
  br label %pm_runtime_release_supplier.exit

pm_runtime_release_supplier.exit:                 ; preds = %if.then.i, %while.end.i.pm_runtime_release_supplier.exit_crit_edge
  %6 = ptrtoint ptr %.pn31 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load volatile ptr, ptr %.pn31, align 8
  %cmp.not = icmp eq ptr %.pn, %links
  br i1 %cmp.not, label %pm_runtime_release_supplier.exit.for.end_crit_edge, label %pm_runtime_release_supplier.exit.for.body_crit_edge

pm_runtime_release_supplier.exit.for.body_crit_edge: ; preds = %pm_runtime_release_supplier.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

pm_runtime_release_supplier.exit.for.end_crit_edge: ; preds = %pm_runtime_release_supplier.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %pm_runtime_release_supplier.exit.for.end_crit_edge, %do.end.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_try_to_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpm_return_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__dev_pm_qos_resume_latency(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpm_usage(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rpm_idle_rcuidle(ptr noundef %dev, i32 noundef %flags) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpm_idle, i32 0, i32 1), ptr blockaddress(@trace_rpm_idle_rcuidle, %do.body)) #8
          to label %if.end53 [label %do.body], !srcloc !114

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !96) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !115

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i59 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i59
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end53_crit_edge, label %if.end

cpu_online.exit.if.end53_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.end:                                           ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !96) #8
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %12, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end35_crit_edge, label %land.rhs

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

land.rhs:                                         ; preds = %if.end
  %.b56 = load i1, ptr @trace_rpm_idle_rcuidle.__already_done, align 1
  br i1 %.b56, label %land.rhs.if.end35_crit_edge, label %if.then12, !prof !115

land.rhs.if.end35_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then12:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_rpm_idle_rcuidle.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 76, i32 noundef 9, ptr noundef null) #8
  br label %if.end35

if.end35:                                         ; preds = %if.then12, %land.rhs.if.end35_crit_edge, %if.end.if.end35_crit_edge
  %13 = tail call i32 @llvm.read_register.i32(metadata !96) #8
  %and.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %16, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !129
  %call.i = tail call i32 @__srcu_read_lock(ptr noundef nonnull @tracepoint_srcu) #8
  tail call void @rcu_irq_enter_irqson() #8
  %call47 = tail call i32 @__traceiter_rpm_idle(ptr noundef null, ptr noundef %dev, i32 noundef %flags) #8
  tail call void @rcu_irq_exit_irqson() #8
  tail call void @__srcu_read_unlock(ptr noundef nonnull @tracepoint_srcu, i32 noundef %call.i) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !130
  %17 = tail call i32 @llvm.read_register.i32(metadata !96) #8
  %and.i.i.i57 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i57 to ptr
  %preempt_count.i.i58 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i58 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i58, align 4
  %sub.i = add i32 %20, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i58, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.end35, %cpu_online.exit.if.end53_crit_edge, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpm_idle(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_rpm_resume_rcuidle(ptr noundef %dev, i32 noundef %flags) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rpm_resume, i32 0, i32 1), ptr blockaddress(@trace_rpm_resume_rcuidle, %do.body)) #8
          to label %if.end53 [label %do.body], !srcloc !114

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !96) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !115

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i59 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i59
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end53_crit_edge, label %if.end

cpu_online.exit.if.end53_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.end:                                           ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !96) #8
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %12, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end35_crit_edge, label %land.rhs

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

land.rhs:                                         ; preds = %if.end
  %.b56 = load i1, ptr @trace_rpm_resume_rcuidle.__already_done, align 1
  br i1 %.b56, label %land.rhs.if.end35_crit_edge, label %if.then12, !prof !115

land.rhs.if.end35_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then12:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_rpm_resume_rcuidle.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 70, i32 noundef 9, ptr noundef null) #8
  br label %if.end35

if.end35:                                         ; preds = %if.then12, %land.rhs.if.end35_crit_edge, %if.end.if.end35_crit_edge
  %13 = tail call i32 @llvm.read_register.i32(metadata !96) #8
  %and.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %16, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !131
  %call.i = tail call i32 @__srcu_read_lock(ptr noundef nonnull @tracepoint_srcu) #8
  tail call void @rcu_irq_enter_irqson() #8
  %call47 = tail call i32 @__traceiter_rpm_resume(ptr noundef null, ptr noundef %dev, i32 noundef %flags) #8
  tail call void @rcu_irq_exit_irqson() #8
  tail call void @__srcu_read_unlock(ptr noundef nonnull @tracepoint_srcu, i32 noundef %call.i) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !132
  %17 = tail call i32 @llvm.read_register.i32(metadata !96) #8
  %and.i.i.i57 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i57 to ptr
  %preempt_count.i.i58 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i58 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i58, align 4
  %sub.i = add i32 %20, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i58, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.end35, %cpu_online.exit.if.end53_crit_edge, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_rpm_resume(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !31, !33, !35, !37, !38, !39, !40, !41, !43, !44, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !64, !66, !67, !69, !70, !72, !74, !76, !78, !79, !81, !82, !84, !86, !88, !90, !92, !94}
!llvm.named.register.sp = !{!96}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @__ksymtab_pm_runtime_suspended_time, !1, !"__ksymtab_pm_runtime_suspended_time", i1 false, i1 false}
!1 = !{!"../drivers/base/power/runtime.c", i32 123, i32 1}
!2 = !{ptr @__ksymtab_pm_runtime_autosuspend_expiration, !3, !"__ksymtab_pm_runtime_autosuspend_expiration", i1 false, i1 false}
!3 = !{!"../drivers/base/power/runtime.c", i32 182, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/base/power/runtime.c", i32 219, i32 9}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @pm_runtime_set_memalloc_noio.dev_hotplug_mutex, !5, !"dev_hotplug_mutex", i1 false, i1 false}
!8 = !{ptr @__ksymtab_pm_runtime_set_memalloc_noio, !9, !"__ksymtab_pm_runtime_set_memalloc_noio", i1 false, i1 false}
!9 = !{!"../drivers/base/power/runtime.c", i32 252, i32 1}
!10 = !{ptr @__ksymtab_pm_schedule_suspend, !11, !"__ksymtab_pm_schedule_suspend", i1 false, i1 false}
!11 = !{!"../drivers/base/power/runtime.c", i32 1040, i32 1}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/base/power/runtime.c", i32 1066, i32 2}
!14 = !{ptr @__ksymtab___pm_runtime_idle, !15, !"__ksymtab___pm_runtime_idle", i1 false, i1 false}
!15 = !{!"../drivers/base/power/runtime.c", i32 1074, i32 1}
!16 = !{ptr @__ksymtab___pm_runtime_suspend, !17, !"__ksymtab___pm_runtime_suspend", i1 false, i1 false}
!17 = !{!"../drivers/base/power/runtime.c", i32 1108, i32 1}
!18 = !{ptr @__ksymtab___pm_runtime_resume, !19, !"__ksymtab___pm_runtime_resume", i1 false, i1 false}
!19 = !{!"../drivers/base/power/runtime.c", i32 1138, i32 1}
!20 = !{ptr @__ksymtab_pm_runtime_get_if_active, !21, !"__ksymtab_pm_runtime_get_if_active", i1 false, i1 false}
!21 = !{!"../drivers/base/power/runtime.c", i32 1183, i32 1}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/base/power/runtime.c", i32 1269, i32 4}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @__pm_runtime_set_status._entry, !23, !"_entry", i1 false, i1 false}
!28 = !{ptr @__pm_runtime_set_status._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @__ksymtab___pm_runtime_set_status, !30, !"__ksymtab___pm_runtime_set_status", i1 false, i1 false}
!30 = !{!"../drivers/base/power/runtime.c", i32 1308, i32 1}
!31 = !{ptr @__ksymtab_pm_runtime_barrier, !32, !"__ksymtab_pm_runtime_barrier", i1 false, i1 false}
!32 = !{!"../drivers/base/power/runtime.c", i32 1390, i32 1}
!33 = !{ptr @__ksymtab___pm_runtime_disable, !34, !"__ksymtab___pm_runtime_disable", i1 false, i1 false}
!34 = !{!"../drivers/base/power/runtime.c", i32 1444, i32 1}
!35 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/base/power/runtime.c", i32 1457, i32 3}
!37 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @pm_runtime_enable._entry, !36, !"_entry", i1 false, i1 false}
!40 = !{ptr @pm_runtime_enable._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/base/power/runtime.c", i32 1470, i32 3}
!43 = !{ptr @pm_runtime_enable._entry.10, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @pm_runtime_enable._entry_ptr.12, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @__ksymtab_pm_runtime_enable, !46, !"__ksymtab_pm_runtime_enable", i1 false, i1 false}
!46 = !{!"../drivers/base/power/runtime.c", i32 1475, i32 1}
!47 = !{ptr @__ksymtab_devm_pm_runtime_enable, !48, !"__ksymtab_devm_pm_runtime_enable", i1 false, i1 false}
!48 = !{!"../drivers/base/power/runtime.c", i32 1492, i32 1}
!49 = !{ptr @__ksymtab_pm_runtime_forbid, !50, !"__ksymtab_pm_runtime_forbid", i1 false, i1 false}
!50 = !{!"../drivers/base/power/runtime.c", i32 1515, i32 1}
!51 = !{ptr @__ksymtab_pm_runtime_allow, !52, !"__ksymtab_pm_runtime_allow", i1 false, i1 false}
!52 = !{!"../drivers/base/power/runtime.c", i32 1538, i32 1}
!53 = !{ptr @__ksymtab_pm_runtime_no_callbacks, !54, !"__ksymtab_pm_runtime_no_callbacks", i1 false, i1 false}
!54 = !{!"../drivers/base/power/runtime.c", i32 1556, i32 1}
!55 = !{ptr @__ksymtab_pm_runtime_irq_safe, !56, !"__ksymtab_pm_runtime_irq_safe", i1 false, i1 false}
!56 = !{!"../drivers/base/power/runtime.c", i32 1577, i32 1}
!57 = !{ptr @__ksymtab_pm_runtime_set_autosuspend_delay, !58, !"__ksymtab_pm_runtime_set_autosuspend_delay", i1 false, i1 false}
!58 = !{!"../drivers/base/power/runtime.c", i32 1638, i32 1}
!59 = !{ptr @__ksymtab___pm_runtime_use_autosuspend, !60, !"__ksymtab___pm_runtime_use_autosuspend", i1 false, i1 false}
!60 = !{!"../drivers/base/power/runtime.c", i32 1659, i32 1}
!61 = !{ptr @pm_runtime_init.__key, !62, !"__key", i1 false, i1 false}
!62 = !{!"../drivers/base/power/runtime.c", i32 1684, i32 2}
!63 = !{ptr @.str.13, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @pm_runtime_init.__key.14, !65, !"__key", i1 false, i1 false}
!65 = !{!"../drivers/base/power/runtime.c", i32 1690, i32 2}
!66 = !{ptr @.str.15, !65, !"<string literal>", i1 false, i1 false}
!67 = distinct !{null, !68, !"__warned", i1 false, i1 false}
!68 = !{!"../drivers/base/power/runtime.c", i32 1733, i32 2}
!69 = !{ptr @.str.16, !68, !"<string literal>", i1 false, i1 false}
!70 = distinct !{null, !71, !"__warned", i1 false, i1 false}
!71 = !{!"../drivers/base/power/runtime.c", i32 1755, i32 2}
!72 = !{ptr @__ksymtab_pm_runtime_force_suspend, !73, !"__ksymtab_pm_runtime_force_suspend", i1 false, i1 false}
!73 = !{!"../drivers/base/power/runtime.c", i32 1866, i32 1}
!74 = !{ptr @__ksymtab_pm_runtime_force_resume, !75, !"__ksymtab_pm_runtime_force_resume", i1 false, i1 false}
!75 = !{!"../drivers/base/power/runtime.c", i32 1908, i32 1}
!76 = distinct !{null, !77, !"__already_done", i1 false, i1 false}
!77 = !{!"../include/trace/events/rpm.h", i32 59, i32 1}
!78 = !{ptr @.str.17, !77, !"<string literal>", i1 false, i1 false}
!79 = distinct !{null, !80, !"__already_done", i1 false, i1 false}
!80 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!81 = !{ptr @.str.18, !80, !"<string literal>", i1 false, i1 false}
!82 = distinct !{null, !83, !"__warned", i1 false, i1 false}
!83 = !{!"../drivers/base/power/runtime.c", i32 339, i32 2}
!84 = distinct !{null, !85, !"__warned", i1 false, i1 false}
!85 = !{!"../drivers/base/power/runtime.c", i32 354, i32 2}
!86 = distinct !{null, !87, !"__already_done", i1 false, i1 false}
!87 = !{!"../include/trace/events/rpm.h", i32 84, i32 1}
!88 = distinct !{null, !89, !"__already_done", i1 false, i1 false}
!89 = !{!"../include/trace/events/rpm.h", i32 77, i32 1}
!90 = distinct !{null, !91, !"__already_done", i1 false, i1 false}
!91 = !{!"../include/trace/events/rpm.h", i32 71, i32 1}
!92 = distinct !{null, !93, !"__already_done", i1 false, i1 false}
!93 = !{!"../include/trace/events/rpm.h", i32 65, i32 1}
!94 = distinct !{null, !95, !"__warned", i1 false, i1 false}
!95 = !{!"../drivers/base/power/runtime.c", i32 290, i32 2}
!96 = !{!"sp"}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{i64 2148273479}
!107 = !{i64 758302, i64 758327, i64 758349, i64 758365, i64 758377, i64 758397, i64 758421, i64 758437, i64 758449}
!108 = !{i64 2148273667}
!109 = !{i64 2152764908}
!110 = !{i64 2152764750}
!111 = !{i64 2148362512}
!112 = !{i64 2148277245, i64 2148277277, i64 2148277306, i64 2148277340, i64 2148277371, i64 2148277394}
!113 = !{i64 2148362741}
!114 = !{i64 2148755875, i64 2148755880, i64 2148755893, i64 2148755937, i64 2148755971, i64 2148755992}
!115 = !{!"branch_weights", i32 2000, i32 1}
!116 = !{i64 2152582775}
!117 = !{i64 2152582976}
!118 = !{i64 2148274060, i64 2148274086, i64 2148274115, i64 2148274149, i64 2148274180, i64 2148274203}
!119 = !{i64 2152766101}
!120 = !{i64 2152765943}
!121 = !{i64 2148275590, i64 2148275622, i64 2148275651, i64 2148275685, i64 2148275716, i64 2148275739}
!122 = !{!"branch_weights", i32 1, i32 2000}
!123 = !{i64 2148276525, i64 2148276551, i64 2148276580, i64 2148276614, i64 2148276645, i64 2148276668}
!124 = !{i8 0, i8 2}
!125 = !{i64 2152531577}
!126 = !{i64 2152531782}
!127 = !{i64 2152599174}
!128 = !{i64 2152599389}
!129 = !{i64 2152563020}
!130 = !{i64 2152563219}
!131 = !{i64 2152547385}
!132 = !{i64 2152547588}
