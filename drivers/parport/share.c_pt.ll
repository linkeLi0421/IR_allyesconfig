; ModuleID = '/llk/IR_all_yes/drivers/parport/share.c_pt.bc'
source_filename = "../drivers/parport/share.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+__parport_register_driver\22, \22a\22\09"
module asm "\09.weak\09__crc___parport_register_driver\09\09\09\09"
module asm "\09.long\09__crc___parport_register_driver\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___parport_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22__parport_register_driver\22\09\09\09\09\09"
module asm "__kstrtabns___parport_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+parport_unregister_driver\22, \22a\22\09"
module asm "\09.weak\09__crc_parport_unregister_driver\09\09\09\09"
module asm "\09.long\09__crc_parport_unregister_driver\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_parport_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22parport_unregister_driver\22\09\09\09\09\09"
module asm "__kstrtabns_parport_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+parport_get_port\22, \22a\22\09"
module asm "\09.weak\09__crc_parport_get_port\09\09\09\09"
module asm "\09.long\09__crc_parport_get_port\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_parport_get_port:\09\09\09\09\09"
module asm "\09.asciz \09\22parport_get_port\22\09\09\09\09\09"
module asm "__kstrtabns_parport_get_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+parport_del_port\22, \22a\22\09"
module asm "\09.weak\09__crc_parport_del_port\09\09\09\09"
module asm "\09.long\09__crc_parport_del_port\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_parport_del_port:\09\09\09\09\09"
module asm "\09.asciz \09\22parport_del_port\22\09\09\09\09\09"
module asm "__kstrtabns_parport_del_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+parport_put_port\22, \22a\22\09"
module asm "\09.weak\09__crc_parport_put_port\09\09\09\09"
module asm "\09.long\09__crc_parport_put_port\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_parport_put_port:\09\09\09\09\09"
module asm "\09.asciz \09\22parport_put_port\22\09\09\09\09\09"
module asm "__kstrtabns_parport_put_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+parport_register_port\22, \22a\22\09"
module asm "\09.weak\09__crc_parport_register_port\09\09\09\09"
module asm "\09.long\09__crc_parport_register_port\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_parport_register_port:\09\09\09\09\09"
module asm "\09.asciz \09\22parport_register_port\22\09\09\09\09\09"
module asm "__kstrtabns_parport_register_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+parport_announce_port\22, \22a\22\09"
module asm "\09.weak\09__crc_parport_announce_port\09\09\09\09"
module asm "\09.long\09__crc_parport_announce_port\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_parport_announce_port:\09\09\09\09\09"
module asm "\09.asciz \09\22parport_announce_port\22\09\09\09\09\09"
module asm "__kstrtabns_parport_announce_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+parport_remove_port\22, \22a\22\09"
module asm "\09.weak\09__crc_parport_remove_port\09\09\09\09"
module asm "\09.long\09__crc_parport_remove_port\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_parport_remove_port:\09\09\09\09\09"
module asm "\09.asciz \09\22parport_remove_port\22\09\09\09\09\09"
module asm "__kstrtabns_parport_remove_port:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+parport_register_dev_model\22, \22a\22\09"
module asm "\09.weak\09__crc_parport_register_dev_model\09\09\09\09"
module asm "\09.long\09__crc_parport_register_dev_model\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_parport_register_dev_model:\09\09\09\09\09"
module asm "\09.asciz \09\22parport_register_dev_model\22\09\09\09\09\09"
module asm "__kstrtabns_parport_register_dev_model:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+parport_unregister_device\22, \22a\22\09"
module asm "\09.weak\09__crc_parport_unregister_device\09\09\09\09"
module asm "\09.long\09__crc_parport_unregister_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_parport_unregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22parport_unregister_device\22\09\09\09\09\09"
module asm "__kstrtabns_parport_unregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+parport_find_number\22, \22a\22\09"
module asm "\09.weak\09__crc_parport_find_number\09\09\09\09"
module asm "\09.long\09__crc_parport_find_number\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_parport_find_number:\09\09\09\09\09"
module asm "\09.asciz \09\22parport_find_number\22\09\09\09\09\09"
module asm "__kstrtabns_parport_find_number:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+parport_find_base\22, \22a\22\09"
module asm "\09.weak\09__crc_parport_find_base\09\09\09\09"
module asm "\09.long\09__crc_parport_find_base\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_parport_find_base:\09\09\09\09\09"
module asm "\09.asciz \09\22parport_find_base\22\09\09\09\09\09"
module asm "__kstrtabns_parport_find_base:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+parport_claim\22, \22a\22\09"
module asm "\09.weak\09__crc_parport_claim\09\09\09\09"
module asm "\09.long\09__crc_parport_claim\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_parport_claim:\09\09\09\09\09"
module asm "\09.asciz \09\22parport_claim\22\09\09\09\09\09"
module asm "__kstrtabns_parport_claim:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+parport_claim_or_block\22, \22a\22\09"
module asm "\09.weak\09__crc_parport_claim_or_block\09\09\09\09"
module asm "\09.long\09__crc_parport_claim_or_block\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_parport_claim_or_block:\09\09\09\09\09"
module asm "\09.asciz \09\22parport_claim_or_block\22\09\09\09\09\09"
module asm "__kstrtabns_parport_claim_or_block:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+parport_release\22, \22a\22\09"
module asm "\09.weak\09__crc_parport_release\09\09\09\09"
module asm "\09.long\09__crc_parport_release\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_parport_release:\09\09\09\09\09"
module asm "\09.asciz \09\22parport_release\22\09\09\09\09\09"
module asm "__kstrtabns_parport_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+parport_irq_handler\22, \22a\22\09"
module asm "\09.weak\09__crc_parport_irq_handler\09\09\09\09"
module asm "\09.long\09__crc_parport_irq_handler\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_parport_irq_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22parport_irq_handler\22\09\09\09\09\09"
module asm "__kstrtabns_parport_irq_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.parport_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.parport_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, i8, %struct.list_head }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.parport = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, %struct.device, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, %struct.timer_list, i32, ptr, [5 x %struct.parport_device_info], %struct.ieee1284_info, ptr, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.rwlock_t, i32, %struct.atomic_t, i32, ptr, %struct.list_head, [3 x ptr] }
%struct.parport_device_info = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.ieee1284_info = type { i32, i32, %struct.semaphore }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.pardev_cb = type { ptr, ptr, ptr, ptr, i32 }
%struct.pardevice = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.device, i8, ptr, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.51, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.27 }
%struct.llist_node = type { ptr }
%union.anon.27 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.29 }
%union.anon.29 = type { %struct.anon.30 }
%struct.anon.30 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.51 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@parport_default_timeslice = dso_local global { i32, [28 x i8] } { i32 20, [28 x i8] zeroinitializer }, align 32
@parport_default_spintime = dso_local global { i32, [28 x i8] } { i32 500, [28 x i8] zeroinitializer }, align 32
@parport_bus_type = internal global { %struct.bus_type, [32 x i8] } { %struct.bus_type { ptr @.str.18, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @parport_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, [32 x i8] zeroinitializer }, align 32
@registration_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.34, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @registration_lock, i64 52), ptr getelementptr (i8, ptr @registration_lock, i64 52) }, ptr @registration_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.35, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@__kstrtab___parport_register_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns___parport_register_driver = external dso_local constant [0 x i8], align 1
@__ksymtab___parport_register_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__parport_register_driver to i32), ptr @__kstrtab___parport_register_driver, ptr @__kstrtabns___parport_register_driver }, section "___ksymtab+__parport_register_driver", align 4
@__kstrtab_parport_unregister_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_parport_unregister_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_parport_unregister_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @parport_unregister_driver to i32), ptr @__kstrtab_parport_unregister_driver, ptr @__kstrtabns_parport_unregister_driver }, section "___ksymtab+parport_unregister_driver", align 4
@__kstrtab_parport_get_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_parport_get_port = external dso_local constant [0 x i8], align 1
@__ksymtab_parport_get_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @parport_get_port to i32), ptr @__kstrtab_parport_get_port, ptr @__kstrtabns_parport_get_port }, section "___ksymtab+parport_get_port", align 4
@__kstrtab_parport_del_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_parport_del_port = external dso_local constant [0 x i8], align 1
@__ksymtab_parport_del_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @parport_del_port to i32), ptr @__kstrtab_parport_del_port, ptr @__kstrtabns_parport_del_port }, section "___ksymtab+parport_del_port", align 4
@__kstrtab_parport_put_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_parport_put_port = external dso_local constant [0 x i8], align 1
@__ksymtab_parport_put_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @parport_put_port to i32), ptr @__kstrtab_parport_put_port, ptr @__kstrtabns_parport_put_port }, section "___ksymtab+parport_put_port", align 4
@parport_register_port.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&tmp->cad_lock\00", [17 x i8] zeroinitializer }, align 32
@parport_register_port.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&tmp->waitlist_lock\00", [44 x i8] zeroinitializer }, align 32
@parport_register_port.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&tmp->pardevice_lock\00", [43 x i8] zeroinitializer }, align 32
@full_list_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.38, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@all_ports = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @all_ports, ptr @all_ports }, [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"parport%d\00", [22 x i8] zeroinitializer }, align 32
@parport_device_type = internal global { %struct.device_type, [40 x i8] } { %struct.device_type { ptr @.str.18, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@__kstrtab_parport_register_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_parport_register_port = external dso_local constant [0 x i8], align 1
@__ksymtab_parport_register_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @parport_register_port to i32), ptr @__kstrtab_parport_register_port, ptr @__kstrtabns_parport_register_port }, section "___ksymtab+parport_register_port", align 4
@parport_announce_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 536, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014%s: fix this legacy no-device port driver!\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"parport_announce_port\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/parport/share.c\00", [40 x i8] zeroinitializer }, align 32
@parport_announce_port._entry_ptr = internal global ptr @parport_announce_port._entry, section ".printk_index", align 4
@parportlist_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.39, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@portlist = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @portlist, ptr @portlist }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_parport_announce_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_parport_announce_port = external dso_local constant [0 x i8], align 1
@__ksymtab_parport_announce_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @parport_announce_port to i32), ptr @__kstrtab_parport_announce_port, ptr @__kstrtabns_parport_announce_port }, section "___ksymtab+parport_announce_port", align 4
@dead_ops = internal global { %struct.parport_operations, [32 x i8] } { %struct.parport_operations { ptr @dead_write_lines, ptr @dead_read_lines, ptr @dead_write_lines, ptr @dead_read_lines, ptr @dead_frob_lines, ptr @dead_read_lines, ptr @dead_onearg, ptr @dead_onearg, ptr @dead_onearg, ptr @dead_onearg, ptr @dead_initstate, ptr @dead_state, ptr @dead_state, ptr @dead_write, ptr @dead_read, ptr @dead_write, ptr @dead_read, ptr @dead_write, ptr @dead_read, ptr @dead_write, ptr @dead_write, ptr @dead_read, ptr @dead_read, ptr null }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_parport_remove_port = external dso_local constant [0 x i8], align 1
@__kstrtabns_parport_remove_port = external dso_local constant [0 x i8], align 1
@__ksymtab_parport_remove_port = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @parport_remove_port to i32), ptr @__kstrtab_parport_remove_port, ptr @__kstrtabns_parport_remove_port }, section "___ksymtab+parport_remove_port", align 4
@parport_register_dev_model._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.8, i32 702, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: no more devices allowed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"parport_register_dev_model\00", [37 x i8] zeroinitializer }, align 32
@parport_register_dev_model._entry_ptr = internal global ptr @parport_register_dev_model._entry, section ".printk_index", align 4
@parport_register_dev_model._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.8, i32 709, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016%s: refused to register lurking device (%s) without callbacks\0A\00", [63 x i8] zeroinitializer }, align 32
@parport_register_dev_model._entry_ptr.13 = internal global ptr @parport_register_dev_model._entry.11, section ".printk_index", align 4
@parport_register_dev_model._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.8, i32 723, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s: cannot grant exclusive access for device %s\0A\00", [45 x i8] zeroinitializer }, align 32
@parport_register_dev_model._entry_ptr.16 = internal global ptr @parport_register_dev_model._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s.%d\00", [26 x i8] zeroinitializer }, align 32
@parport_register_dev_model.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.10, ptr @.str.8, ptr @.str.19, i8 0, i8 -61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"parport\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: cannot grant exclusive access for device %s\0A\00", [47 x i8] zeroinitializer }, align 32
@parport_register_dev_model.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&par_dev->wait_q\00", [47 x i8] zeroinitializer }, align 32
@__kstrtab_parport_register_dev_model = external dso_local constant [0 x i8], align 1
@__kstrtabns_parport_register_dev_model = external dso_local constant [0 x i8], align 1
@__ksymtab_parport_register_dev_model = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @parport_register_dev_model to i32), ptr @__kstrtab_parport_register_dev_model, ptr @__kstrtabns_parport_register_dev_model }, section "___ksymtab+parport_register_dev_model", align 4
@parport_unregister_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.8, i32 861, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: %s forgot to release port\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"parport_unregister_device\00", [38 x i8] zeroinitializer }, align 32
@parport_unregister_device._entry_ptr = internal global ptr @parport_unregister_device._entry, section ".printk_index", align 4
@__kstrtab_parport_unregister_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_parport_unregister_device = external dso_local constant [0 x i8], align 1
@__ksymtab_parport_unregister_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @parport_unregister_device to i32), ptr @__kstrtab_parport_unregister_device, ptr @__kstrtabns_parport_unregister_device }, section "___ksymtab+parport_unregister_device", align 4
@__kstrtab_parport_find_number = external dso_local constant [0 x i8], align 1
@__kstrtabns_parport_find_number = external dso_local constant [0 x i8], align 1
@__ksymtab_parport_find_number = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @parport_find_number to i32), ptr @__kstrtab_parport_find_number, ptr @__kstrtabns_parport_find_number }, section "___ksymtab+parport_find_number", align 4
@__kstrtab_parport_find_base = external dso_local constant [0 x i8], align 1
@__kstrtabns_parport_find_base = external dso_local constant [0 x i8], align 1
@__ksymtab_parport_find_base = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @parport_find_base to i32), ptr @__kstrtab_parport_find_base, ptr @__kstrtabns_parport_find_base }, section "___ksymtab+parport_find_base", align 4
@parport_claim._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.8, i32 984, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016%s: %s already owner\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"parport_claim\00", [18 x i8] zeroinitializer }, align 32
@parport_claim._entry_ptr = internal global ptr @parport_claim._entry, section ".printk_index", align 4
@parport_claim._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.8, i32 1005, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014%s: %s released port when preempted!\0A\00", [56 x i8] zeroinitializer }, align 32
@parport_claim._entry_ptr.27 = internal global ptr @parport_claim._entry.25, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__kstrtab_parport_claim = external dso_local constant [0 x i8], align 1
@__kstrtabns_parport_claim = external dso_local constant [0 x i8], align 1
@__ksymtab_parport_claim = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @parport_claim to i32), ptr @__kstrtab_parport_claim, ptr @__kstrtabns_parport_claim }, section "___ksymtab+parport_claim", align 4
@__kstrtab_parport_claim_or_block = external dso_local constant [0 x i8], align 1
@__kstrtabns_parport_claim_or_block = external dso_local constant [0 x i8], align 1
@__ksymtab_parport_claim_or_block = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @parport_claim_or_block to i32), ptr @__kstrtab_parport_claim_or_block, ptr @__kstrtabns_parport_claim_or_block }, section "___ksymtab+parport_claim_or_block", align 4
@parport_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.8, i32 1167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014%s: %s tried to release parport when not owner\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"parport_release\00", [16 x i8] zeroinitializer }, align 32
@parport_release._entry_ptr = internal global ptr @parport_release._entry, section ".printk_index", align 4
@parport_release._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.8, i32 1208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: don't know how to wake %s\0A\00", [63 x i8] zeroinitializer }, align 32
@parport_release._entry_ptr.32 = internal global ptr @parport_release._entry.30, section ".printk_index", align 4
@__kstrtab_parport_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_parport_release = external dso_local constant [0 x i8], align 1
@__ksymtab_parport_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @parport_release to i32), ptr @__kstrtab_parport_release, ptr @__kstrtabns_parport_release }, section "___ksymtab+parport_release", align 4
@__kstrtab_parport_irq_handler = external dso_local constant [0 x i8], align 1
@__kstrtabns_parport_irq_handler = external dso_local constant [0 x i8], align 1
@__ksymtab_parport_irq_handler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @parport_irq_handler to i32), ptr @__kstrtab_parport_irq_handler, ptr @__kstrtabns_parport_irq_handler }, section "___ksymtab+parport_irq_handler", align 4
@__UNIQUE_ID_file228 = internal constant [37 x i8] c"parport.file=drivers/parport/parport\00", section ".modinfo", align 1
@__UNIQUE_ID_license229 = internal constant [20 x i8] c"parport.license=GPL\00", section ".modinfo", align 1
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"parport_lowlevel\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"registration_lock.wait_lock\00", [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"registration_lock\00", [46 x i8] zeroinitializer }, align 32
@sema_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(*sem).lock\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"semaphore->lock\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"full_list_lock\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"parportlist_lock\00", [47 x i8] zeroinitializer }, align 32
@drivers = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @drivers, ptr @drivers }, [24 x i8] zeroinitializer }, align 32
@___asan_gen_.40 = private unnamed_addr constant [26 x i8] c"parport_default_timeslice\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 42, i32 15 }
@___asan_gen_.43 = private unnamed_addr constant [25 x i8] c"parport_default_spintime\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 43, i32 5 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"parport_bus_type\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 133, i32 24 }
@___asan_gen_.49 = private unnamed_addr constant [18 x i8] c"registration_lock\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 460, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 461, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 462, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [15 x i8] c"full_list_lock\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [10 x i8] c"all_ports\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 49, i32 8 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 490, i32 16 }
@___asan_gen_.79 = private unnamed_addr constant [20 x i8] c"parport_device_type\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 104, i32 27 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 535, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"parportlist_lock\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [9 x i8] c"portlist\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 45, i32 8 }
@___asan_gen_.100 = private unnamed_addr constant [9 x i8] c"dead_ops\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 68, i32 34 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 702, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 708, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 722, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 758, i32 36 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 781, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 801, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 860, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 984, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 1004, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 1166, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 1207, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 214, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 54, i32 8 }
@___asan_gen_.187 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 33, i32 31 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 34, i32 28 }
@___asan_gen_.194 = private unnamed_addr constant [29 x i8] c"../include/linux/semaphore.h\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 35, i32 39 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 50, i32 8 }
@___asan_gen_.199 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 46, i32 8 }
@___asan_gen_.202 = private unnamed_addr constant [8 x i8] c"drivers\00", align 1
@___asan_gen_.203 = private constant [27 x i8] c"../drivers/parport/share.c\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 52, i32 8 }
@llvm.compiler.used = appending global [82 x ptr] [ptr @__UNIQUE_ID_file228, ptr @__UNIQUE_ID_license229, ptr @__ksymtab___parport_register_driver, ptr @__ksymtab_parport_announce_port, ptr @__ksymtab_parport_claim, ptr @__ksymtab_parport_claim_or_block, ptr @__ksymtab_parport_del_port, ptr @__ksymtab_parport_find_base, ptr @__ksymtab_parport_find_number, ptr @__ksymtab_parport_get_port, ptr @__ksymtab_parport_irq_handler, ptr @__ksymtab_parport_put_port, ptr @__ksymtab_parport_register_dev_model, ptr @__ksymtab_parport_register_port, ptr @__ksymtab_parport_release, ptr @__ksymtab_parport_remove_port, ptr @__ksymtab_parport_unregister_device, ptr @__ksymtab_parport_unregister_driver, ptr @parport_announce_port._entry, ptr @parport_announce_port._entry_ptr, ptr @parport_claim._entry, ptr @parport_claim._entry.25, ptr @parport_claim._entry_ptr, ptr @parport_claim._entry_ptr.27, ptr @parport_register_dev_model._entry, ptr @parport_register_dev_model._entry.11, ptr @parport_register_dev_model._entry.14, ptr @parport_register_dev_model._entry_ptr, ptr @parport_register_dev_model._entry_ptr.13, ptr @parport_register_dev_model._entry_ptr.16, ptr @parport_release._entry, ptr @parport_release._entry.30, ptr @parport_release._entry_ptr, ptr @parport_release._entry_ptr.32, ptr @parport_unregister_device._entry, ptr @parport_unregister_device._entry_ptr, ptr @parport_default_timeslice, ptr @parport_default_spintime, ptr @parport_bus_type, ptr @registration_lock, ptr @parport_register_port.__key, ptr @.str, ptr @parport_register_port.__key.1, ptr @.str.2, ptr @parport_register_port.__key.3, ptr @.str.4, ptr @full_list_lock, ptr @all_ports, ptr @.str.5, ptr @parport_device_type, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @parportlist_lock, ptr @portlist, ptr @dead_ops, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @parport_register_dev_model.__key, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @sema_init.__key, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @drivers], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_default_timeslice to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_default_spintime to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_bus_type to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @registration_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_register_port.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_register_port.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_register_port.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @full_list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @all_ports to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_device_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_announce_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parportlist_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @portlist to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dead_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_register_dev_model._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_register_dev_model._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_register_dev_model._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_register_dev_model.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_unregister_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_claim._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_claim._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parport_release._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sema_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drivers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @parport_bus_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bus_register(ptr noundef nonnull @parport_bus_type) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @parport_bus_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @bus_unregister(ptr noundef nonnull @parport_bus_type) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__parport_register_driver(ptr noundef %drv, ptr noundef %owner, ptr noundef %mod_name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv, align 4
  %driver = getelementptr inbounds %struct.parport_driver, ptr %drv, i32 0, i32 5
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %driver, align 4
  %bus = getelementptr inbounds %struct.parport_driver, ptr %drv, i32 0, i32 5, i32 1
  %3 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @parport_bus_type, ptr %bus, align 4
  %owner4 = getelementptr inbounds %struct.parport_driver, ptr %drv, i32 0, i32 5, i32 2
  %4 = ptrtoint ptr %owner4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %owner, ptr %owner4, align 4
  %mod_name6 = getelementptr inbounds %struct.parport_driver, ptr %drv, i32 0, i32 5, i32 3
  %5 = ptrtoint ptr %mod_name6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %mod_name, ptr %mod_name6, align 4
  %call = tail call i32 @driver_register(ptr noundef %driver) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call8 = tail call i32 @bus_for_each_dev(ptr noundef nonnull @parport_bus_type, ptr noundef null, ptr noundef null, ptr noundef nonnull @port_detect) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.33) #10
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end.if.end11_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @registration_lock, i32 noundef 0) #10
  %match_port = getelementptr inbounds %struct.parport_driver, ptr %drv, i32 0, i32 3
  %6 = ptrtoint ptr %match_port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %match_port, align 4
  %tobool12.not = icmp eq ptr %7, null
  br i1 %tobool12.not, label %if.end11.if.end15_crit_edge, label %if.then13

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %call14 = tail call i32 @bus_for_each_dev(ptr noundef nonnull @parport_bus_type, ptr noundef null, ptr noundef %drv, ptr noundef nonnull @port_check) #10
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end11.if.end15_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @registration_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_for_each_dev(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @port_detect(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %dev_drv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type.i, align 4
  %cmp.i.not = icmp eq ptr %1, @parport_device_type
  %. = zext i1 %cmp.i.not to i32
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @port_check(ptr noundef %dev, ptr nocapture noundef readonly %dev_drv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type.i, align 4
  %cmp.i.not = icmp eq ptr %1, @parport_device_type
  br i1 %cmp.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %match_port = getelementptr inbounds %struct.parport_driver, ptr %dev_drv, i32 0, i32 3
  %2 = ptrtoint ptr %match_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %match_port, align 4
  %add.ptr = getelementptr i8, ptr %dev, i32 -40
  tail call void %3(ptr noundef %add.ptr) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @parport_unregister_driver(ptr noundef %drv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @registration_lock, i32 noundef 0) #10
  %call = tail call i32 @bus_for_each_dev(ptr noundef nonnull @parport_bus_type, ptr noundef null, ptr noundef %drv, ptr noundef nonnull @port_detach) #10
  %driver = getelementptr inbounds %struct.parport_driver, ptr %drv, i32 0, i32 5
  tail call void @driver_unregister(ptr noundef %driver) #10
  tail call void @mutex_unlock(ptr noundef nonnull @registration_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @port_detach(ptr noundef %dev, ptr nocapture noundef readonly %_drv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type.i, align 4
  %cmp.i.not = icmp eq ptr %1, @parport_device_type
  br i1 %cmp.i.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %detach = getelementptr inbounds %struct.parport_driver, ptr %_drv, i32 0, i32 2
  %2 = ptrtoint ptr %detach to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %detach, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %dev, i32 -40
  tail call void %3(ptr noundef %add.ptr) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @parport_get_port(ptr noundef %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_dev = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 10
  %call = tail call ptr @get_device(ptr noundef %bus_dev) #10
  %add.ptr = getelementptr i8, ptr %call, i32 -40
  ret ptr %add.ptr
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @parport_del_port(ptr noundef %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_dev = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 10
  tail call void @device_unregister(ptr noundef %bus_dev) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @parport_put_port(ptr noundef %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_dev = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 10
  tail call void @put_device(ptr noundef %bus_dev) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @parport_register_port(i32 noundef %base, i32 noundef %irq, i32 noundef %dma, ptr noundef %ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1424) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup47_crit_edge, label %if.end

entry.cleanup47_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup47

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %base, ptr %call7.i.i, align 8
  %irq2 = getelementptr inbounds %struct.parport, ptr %call7.i.i, i32 0, i32 5
  %2 = ptrtoint ptr %irq2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %irq, ptr %irq2, align 4
  %dma3 = getelementptr inbounds %struct.parport, ptr %call7.i.i, i32 0, i32 6
  %3 = ptrtoint ptr %dma3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %dma, ptr %dma3, align 8
  %muxsel = getelementptr inbounds %struct.parport, ptr %call7.i.i, i32 0, i32 15
  %4 = ptrtoint ptr %muxsel to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %muxsel, align 8
  %daisy = getelementptr inbounds %struct.parport, ptr %call7.i.i, i32 0, i32 14
  %5 = ptrtoint ptr %daisy to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %daisy, align 4
  %muxport = getelementptr inbounds %struct.parport, ptr %call7.i.i, i32 0, i32 7
  %6 = ptrtoint ptr %muxport to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %muxport, align 4
  %modes = getelementptr inbounds %struct.parport, ptr %call7.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %modes to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %modes, align 8
  %list = getelementptr inbounds %struct.parport, ptr %call7.i.i, i32 0, i32 18
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.parport, ptr %call7.i.i, i32 0, i32 18, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %list, ptr %prev.i, align 8
  %cad = getelementptr inbounds %struct.parport, ptr %call7.i.i, i32 0, i32 13
  %10 = ptrtoint ptr %cad to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %cad, align 8
  %devices = getelementptr inbounds %struct.parport, ptr %call7.i.i, i32 0, i32 12
  %11 = ptrtoint ptr %devices to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %devices, align 4
  %flags = getelementptr inbounds %struct.parport, ptr %call7.i.i, i32 0, i32 20
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %flags, align 4
  %ops4 = getelementptr inbounds %struct.parport, ptr %call7.i.i, i32 0, i32 24
  %13 = ptrtoint ptr %ops4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %ops, ptr %ops4, align 4
  %physport = getelementptr inbounds %struct.parport, ptr %call7.i.i, i32 0, i32 11
  %14 = ptrtoint ptr %physport to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %physport, align 8
  %probe_info = getelementptr %struct.parport, ptr %call7.i.i, i32 0, i32 22
  %15 = call ptr @memset(ptr %probe_info, i32 0, i32 120)
  %cad_lock = getelementptr inbounds %struct.parport, ptr %call7.i.i, i32 0, i32 29
  tail call void @__rwlock_init(ptr noundef %cad_lock, ptr noundef nonnull @.str, ptr noundef nonnull @parport_register_port.__key) #10
  %waitlist_lock = getelementptr inbounds %struct.parport, ptr %call7.i.i, i32 0, i32 28
  tail call void @__raw_spin_lock_init(ptr noundef %waitlist_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @parport_register_port.__key.1, i16 noundef signext 3) #10
  %pardevice_lock = getelementptr inbounds %struct.parport, ptr %call7.i.i, i32 0, i32 27
  tail call void @__raw_spin_lock_init(ptr noundef %pardevice_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @parport_register_port.__key.3, i16 noundef signext 3) #10
  %ieee1284 = getelementptr inbounds %struct.parport, ptr %call7.i.i, i32 0, i32 23
  %16 = ptrtoint ptr %ieee1284 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 256, ptr %ieee1284, align 4
  %phase = getelementptr inbounds %struct.parport, ptr %call7.i.i, i32 0, i32 23, i32 1
  %17 = ptrtoint ptr %phase to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 1, ptr %phase, align 8
  %irq15 = getelementptr inbounds %struct.parport, ptr %call7.i.i, i32 0, i32 23, i32 2
  %wait_list1.i = getelementptr inbounds %struct.parport, ptr %call7.i.i, i32 0, i32 23, i32 2, i32 2
  %18 = ptrtoint ptr %irq15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %irq15, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds %struct.parport, ptr %call7.i.i, i32 0, i32 23, i32 2, i32 0, i32 1
  %19 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -559067475, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 8
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds %struct.parport, ptr %call7.i.i, i32 0, i32 23, i32 2, i32 0, i32 2
  %20 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i = getelementptr inbounds %struct.parport, ptr %call7.i.i, i32 0, i32 23, i32 2, i32 0, i32 3
  %21 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 -1 to ptr), ptr %.compoundliteral.sroa.4.0..sroa_idx.i, align 8
  %.compoundliteral.sroa.5.0..sroa_idx.i = getelementptr inbounds %struct.parport, ptr %call7.i.i, i32 0, i32 23, i32 2, i32 0, i32 4
  %22 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i, i32 0, i32 12)
  %.compoundliteral.sroa.6.0..sroa_idx.i = getelementptr inbounds %struct.parport, ptr %call7.i.i, i32 0, i32 23, i32 2, i32 0, i32 4, i32 2
  %23 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str.36, ptr %.compoundliteral.sroa.6.0..sroa_idx.i, align 8
  %.compoundliteral.sroa.7.0..sroa_idx.i = getelementptr inbounds %struct.parport, ptr %call7.i.i, i32 0, i32 23, i32 2, i32 0, i32 4, i32 3
  %24 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %.compoundliteral.sroa.7.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.75.0..sroa_idx.i = getelementptr inbounds %struct.parport, ptr %call7.i.i, i32 0, i32 23, i32 2, i32 0, i32 4, i32 4
  %25 = ptrtoint ptr %.compoundliteral.sroa.75.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 2, ptr %.compoundliteral.sroa.75.0..sroa_idx.i, align 1
  %.compoundliteral.sroa.8.0..sroa_idx.i = getelementptr inbounds %struct.parport, ptr %call7.i.i, i32 0, i32 23, i32 2, i32 0, i32 4, i32 5
  %26 = call ptr @memset(ptr %.compoundliteral.sroa.8.0..sroa_idx.i, i32 0, i32 14)
  %27 = ptrtoint ptr %wait_list1.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %wait_list1.i, ptr %wait_list1.i, align 4
  %.compoundliteral.sroa.10.0..sroa_idx.i = getelementptr inbounds %struct.parport, ptr %call7.i.i, i32 0, i32 23, i32 2, i32 2, i32 1
  %28 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %wait_list1.i, ptr %.compoundliteral.sroa.10.0..sroa_idx.i, align 8
  tail call void @lockdep_init_map_type(ptr noundef %.compoundliteral.sroa.5.0..sroa_idx.i, ptr noundef nonnull @.str.37, ptr noundef nonnull @sema_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %29 = load i32, ptr @parport_default_spintime, align 4
  %spintime = getelementptr inbounds %struct.parport, ptr %call7.i.i, i32 0, i32 30
  %30 = ptrtoint ptr %spintime to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %spintime, align 4
  %ref_count = getelementptr inbounds %struct.parport, ptr %call7.i.i, i32 0, i32 31
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count, i32 noundef 4) #10
  %31 = ptrtoint ptr %ref_count to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 1, ptr %ref_count, align 8
  %full_list = getelementptr inbounds %struct.parport, ptr %call7.i.i, i32 0, i32 34
  %32 = ptrtoint ptr %full_list to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %full_list, ptr %full_list, align 4
  %prev.i104 = getelementptr inbounds %struct.parport, ptr %call7.i.i, i32 0, i32 34, i32 1
  %33 = ptrtoint ptr %prev.i104 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %full_list, ptr %prev.i104, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %34 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3264, i32 noundef 15) #13
  %tobool17.not = icmp eq ptr %call7.i, null
  br i1 %tobool17.not, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup47

if.end19:                                         ; preds = %if.end
  tail call void @_raw_spin_lock(ptr noundef nonnull @full_list_lock) #10
  %l.0107 = load ptr, ptr @all_ports, align 4
  %cmp.not108 = icmp eq ptr %l.0107, @all_ports
  br i1 %cmp.not108, label %if.end19.for.end_crit_edge, label %if.end19.for.body_crit_edge

if.end19.for.body_crit_edge:                      ; preds = %if.end19
  br label %for.body

if.end19.for.end_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end19.for.body_crit_edge
  %l.0110 = phi ptr [ %l.0, %for.inc.for.body_crit_edge ], [ %l.0107, %if.end19.for.body_crit_edge ]
  %num.0109 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end19.for.body_crit_edge ]
  %number = getelementptr i8, ptr %l.0110, i32 -152
  %35 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %number, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %num.0109)
  %cmp21.not = icmp eq i32 %36, %num.0109
  br i1 %cmp21.not, label %for.inc, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add i32 %num.0109, 1
  %37 = ptrtoint ptr %l.0110 to i32
  call void @__asan_load4_noabort(i32 %37)
  %l.0 = load ptr, ptr %l.0110, align 4
  %cmp.not = icmp eq ptr %l.0, @all_ports
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end19.for.end_crit_edge
  %num.0.lcssa = phi i32 [ 0, %if.end19.for.end_crit_edge ], [ %num.0109, %for.body.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %l.0.lcssa = phi ptr [ @all_ports, %if.end19.for.end_crit_edge ], [ %l.0110, %for.body.for.end_crit_edge ], [ @all_ports, %for.inc.for.end_crit_edge ]
  %number24 = getelementptr inbounds %struct.parport, ptr %call7.i.i, i32 0, i32 26
  %38 = ptrtoint ptr %number24 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %num.0.lcssa, ptr %number24, align 4
  %portnum = getelementptr inbounds %struct.parport, ptr %call7.i.i, i32 0, i32 8
  %39 = ptrtoint ptr %portnum to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %num.0.lcssa, ptr %portnum, align 8
  %prev.i105 = getelementptr inbounds %struct.list_head, ptr %l.0.lcssa, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i105 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i105, align 4
  %call.i.i106 = tail call zeroext i1 @__list_add_valid(ptr noundef %full_list, ptr noundef %41, ptr noundef %l.0.lcssa) #10
  br i1 %call.i.i106, label %if.end.i.i, label %for.end.list_add_tail.exit_crit_edge

for.end.list_add_tail.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %prev.i105 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %full_list, ptr %prev.i105, align 4
  %43 = ptrtoint ptr %full_list to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %l.0.lcssa, ptr %full_list, align 4
  %44 = ptrtoint ptr %prev.i104 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev.i104, align 8
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %full_list, ptr %41, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.end.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @full_list_lock) #10
  %46 = ptrtoint ptr %number24 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %number24, align 4
  %48 = ptrtoint ptr %portnum to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %portnum, align 8
  %call28 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %call7.i, ptr noundef nonnull @.str.5, i32 noundef %47)
  %name29 = getelementptr inbounds %struct.parport, ptr %call7.i.i, i32 0, i32 3
  %49 = ptrtoint ptr %name29 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call7.i, ptr %name29, align 4
  %bus_dev = getelementptr inbounds %struct.parport, ptr %call7.i.i, i32 0, i32 10
  %bus = getelementptr inbounds %struct.parport, ptr %call7.i.i, i32 0, i32 10, i32 5
  %50 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @parport_bus_type, ptr %bus, align 8
  %release = getelementptr inbounds %struct.parport, ptr %call7.i.i, i32 0, i32 10, i32 35
  %51 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @free_port, ptr %release, align 4
  %call32 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %bus_dev, ptr noundef nonnull %call7.i) #10
  %type = getelementptr inbounds %struct.parport, ptr %call7.i.i, i32 0, i32 10, i32 4
  %52 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @parport_device_type, ptr %type, align 4
  %53 = ptrtoint ptr %probe_info to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %probe_info, align 4
  %arrayidx.1 = getelementptr %struct.parport, ptr %call7.i.i, i32 0, i32 22, i32 1
  %54 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %arrayidx.1, align 4
  %arrayidx.2 = getelementptr %struct.parport, ptr %call7.i.i, i32 0, i32 22, i32 2
  %55 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %arrayidx.2, align 4
  %arrayidx.3 = getelementptr %struct.parport, ptr %call7.i.i, i32 0, i32 22, i32 3
  %56 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %arrayidx.3, align 4
  %arrayidx.4 = getelementptr %struct.parport, ptr %call7.i.i, i32 0, i32 22, i32 4
  %57 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %arrayidx.4, align 4
  %waittail = getelementptr inbounds %struct.parport, ptr %call7.i.i, i32 0, i32 17
  %58 = ptrtoint ptr %waittail to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %waittail, align 8
  %waithead = getelementptr inbounds %struct.parport, ptr %call7.i.i, i32 0, i32 16
  %59 = ptrtoint ptr %waithead to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %waithead, align 4
  %call42 = tail call i32 @device_register(ptr noundef %bus_dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %list_add_tail.exit.cleanup47_crit_edge, label %if.then44

list_add_tail.exit.cleanup47_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup47

if.then44:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @put_device(ptr noundef %bus_dev) #10
  br label %cleanup47

cleanup47:                                        ; preds = %if.then44, %list_add_tail.exit.cleanup47_crit_edge, %if.then18, %entry.cleanup47_crit_edge
  %retval.0 = phi ptr [ null, %if.then44 ], [ null, %if.then18 ], [ null, %entry.cleanup47_crit_edge ], [ %call7.i.i, %list_add_tail.exit.cleanup47_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @free_port(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @full_list_lock) #10
  %full_list = getelementptr i8, ptr %dev, i32 1364
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %full_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr i8, ptr %dev, i32 1368
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %full_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %full_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %full_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %full_list, align 4
  %prev.i = getelementptr i8, ptr %dev, i32 1368
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @full_list_lock) #10
  %class_name = getelementptr i8, ptr %dev, i32 1024
  %8 = ptrtoint ptr %class_name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %class_name, align 4
  tail call void @kfree(ptr noundef %9) #10
  %mfr = getelementptr i8, ptr %dev, i32 1028
  %10 = ptrtoint ptr %mfr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mfr, align 4
  tail call void @kfree(ptr noundef %11) #10
  %model = getelementptr i8, ptr %dev, i32 1032
  %12 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %model, align 4
  tail call void @kfree(ptr noundef %13) #10
  %cmdset = getelementptr i8, ptr %dev, i32 1036
  %14 = ptrtoint ptr %cmdset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cmdset, align 4
  tail call void @kfree(ptr noundef %15) #10
  %description = getelementptr i8, ptr %dev, i32 1040
  %16 = ptrtoint ptr %description to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %description, align 4
  tail call void @kfree(ptr noundef %17) #10
  %class_name.1 = getelementptr i8, ptr %dev, i32 1048
  %18 = ptrtoint ptr %class_name.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %class_name.1, align 4
  tail call void @kfree(ptr noundef %19) #10
  %mfr.1 = getelementptr i8, ptr %dev, i32 1052
  %20 = ptrtoint ptr %mfr.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mfr.1, align 4
  tail call void @kfree(ptr noundef %21) #10
  %model.1 = getelementptr i8, ptr %dev, i32 1056
  %22 = ptrtoint ptr %model.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %model.1, align 4
  tail call void @kfree(ptr noundef %23) #10
  %cmdset.1 = getelementptr i8, ptr %dev, i32 1060
  %24 = ptrtoint ptr %cmdset.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cmdset.1, align 4
  tail call void @kfree(ptr noundef %25) #10
  %description.1 = getelementptr i8, ptr %dev, i32 1064
  %26 = ptrtoint ptr %description.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %description.1, align 4
  tail call void @kfree(ptr noundef %27) #10
  %class_name.2 = getelementptr i8, ptr %dev, i32 1072
  %28 = ptrtoint ptr %class_name.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %class_name.2, align 4
  tail call void @kfree(ptr noundef %29) #10
  %mfr.2 = getelementptr i8, ptr %dev, i32 1076
  %30 = ptrtoint ptr %mfr.2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mfr.2, align 4
  tail call void @kfree(ptr noundef %31) #10
  %model.2 = getelementptr i8, ptr %dev, i32 1080
  %32 = ptrtoint ptr %model.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %model.2, align 4
  tail call void @kfree(ptr noundef %33) #10
  %cmdset.2 = getelementptr i8, ptr %dev, i32 1084
  %34 = ptrtoint ptr %cmdset.2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cmdset.2, align 4
  tail call void @kfree(ptr noundef %35) #10
  %description.2 = getelementptr i8, ptr %dev, i32 1088
  %36 = ptrtoint ptr %description.2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %description.2, align 4
  tail call void @kfree(ptr noundef %37) #10
  %class_name.3 = getelementptr i8, ptr %dev, i32 1096
  %38 = ptrtoint ptr %class_name.3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %class_name.3, align 4
  tail call void @kfree(ptr noundef %39) #10
  %mfr.3 = getelementptr i8, ptr %dev, i32 1100
  %40 = ptrtoint ptr %mfr.3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mfr.3, align 4
  tail call void @kfree(ptr noundef %41) #10
  %model.3 = getelementptr i8, ptr %dev, i32 1104
  %42 = ptrtoint ptr %model.3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %model.3, align 4
  tail call void @kfree(ptr noundef %43) #10
  %cmdset.3 = getelementptr i8, ptr %dev, i32 1108
  %44 = ptrtoint ptr %cmdset.3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cmdset.3, align 4
  tail call void @kfree(ptr noundef %45) #10
  %description.3 = getelementptr i8, ptr %dev, i32 1112
  %46 = ptrtoint ptr %description.3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %description.3, align 4
  tail call void @kfree(ptr noundef %47) #10
  %class_name.4 = getelementptr i8, ptr %dev, i32 1120
  %48 = ptrtoint ptr %class_name.4 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %class_name.4, align 4
  tail call void @kfree(ptr noundef %49) #10
  %mfr.4 = getelementptr i8, ptr %dev, i32 1124
  %50 = ptrtoint ptr %mfr.4 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mfr.4, align 4
  tail call void @kfree(ptr noundef %51) #10
  %model.4 = getelementptr i8, ptr %dev, i32 1128
  %52 = ptrtoint ptr %model.4 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %model.4, align 4
  tail call void @kfree(ptr noundef %53) #10
  %cmdset.4 = getelementptr i8, ptr %dev, i32 1132
  %54 = ptrtoint ptr %cmdset.4 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cmdset.4, align 4
  tail call void @kfree(ptr noundef %55) #10
  %description.4 = getelementptr i8, ptr %dev, i32 1136
  %56 = ptrtoint ptr %description.4 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %description.4, align 4
  tail call void @kfree(ptr noundef %57) #10
  %add.ptr = getelementptr i8, ptr %dev, i32 -40
  %name = getelementptr i8, ptr %dev, i32 -28
  %58 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %name, align 4
  tail call void @kfree(ptr noundef %59) #10
  tail call void @kfree(ptr noundef %add.ptr) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @parport_announce_port(ptr noundef %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @parport_daisy_init(ptr noundef %port) #10
  %dev = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 9
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 3
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %3) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call2 = tail call i32 @parport_proc_register(ptr noundef %port) #10
  tail call void @mutex_lock_nested(ptr noundef nonnull @registration_lock, i32 noundef 0) #10
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @parportlist_lock) #10
  %list = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 18
  %4 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @portlist, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %4, ptr noundef nonnull @portlist) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  store ptr %list, ptr getelementptr inbounds (%struct.list_head, ptr @portlist, i32 0, i32 1), align 4
  %5 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @portlist, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 18, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %4, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %list, ptr %4, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  %arrayidx = getelementptr %struct.parport, ptr %port, i32 0, i32 35, i32 0
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %list_add_tail.exit.if.end6_crit_edge, label %if.then4

list_add_tail.exit.if.end6_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then4:                                         ; preds = %list_add_tail.exit
  %list5 = getelementptr inbounds %struct.parport, ptr %9, i32 0, i32 18
  %10 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @portlist, i32 0, i32 1), align 4
  %call.i.i35 = tail call zeroext i1 @__list_add_valid(ptr noundef %list5, ptr noundef %10, ptr noundef nonnull @portlist) #10
  br i1 %call.i.i35, label %if.end.i.i37, label %if.then4.if.end6_crit_edge

if.then4.if.end6_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.end.i.i37:                                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  store ptr %list5, ptr getelementptr inbounds (%struct.list_head, ptr @portlist, i32 0, i32 1), align 4
  %11 = ptrtoint ptr %list5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @portlist, ptr %list5, align 4
  %prev3.i.i36 = getelementptr inbounds %struct.parport, ptr %9, i32 0, i32 18, i32 1
  %12 = ptrtoint ptr %prev3.i.i36 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %10, ptr %prev3.i.i36, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %list5, ptr %10, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end.i.i37, %if.then4.if.end6_crit_edge, %list_add_tail.exit.if.end6_crit_edge
  %arrayidx.1 = getelementptr %struct.parport, ptr %port, i32 0, i32 35, i32 1
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.1, align 4
  %tobool3.not.1 = icmp eq ptr %15, null
  br i1 %tobool3.not.1, label %if.end6.if.end6.1_crit_edge, label %if.then4.1

if.end6.if.end6.1_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.1

if.then4.1:                                       ; preds = %if.end6
  %list5.1 = getelementptr inbounds %struct.parport, ptr %15, i32 0, i32 18
  %16 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @portlist, i32 0, i32 1), align 4
  %call.i.i35.1 = tail call zeroext i1 @__list_add_valid(ptr noundef %list5.1, ptr noundef %16, ptr noundef nonnull @portlist) #10
  br i1 %call.i.i35.1, label %if.end.i.i37.1, label %if.then4.1.if.end6.1_crit_edge

if.then4.1.if.end6.1_crit_edge:                   ; preds = %if.then4.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.1

if.end.i.i37.1:                                   ; preds = %if.then4.1
  call void @__sanitizer_cov_trace_pc() #12
  store ptr %list5.1, ptr getelementptr inbounds (%struct.list_head, ptr @portlist, i32 0, i32 1), align 4
  %17 = ptrtoint ptr %list5.1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @portlist, ptr %list5.1, align 4
  %prev3.i.i36.1 = getelementptr inbounds %struct.parport, ptr %15, i32 0, i32 18, i32 1
  %18 = ptrtoint ptr %prev3.i.i36.1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %16, ptr %prev3.i.i36.1, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %list5.1, ptr %16, align 4
  br label %if.end6.1

if.end6.1:                                        ; preds = %if.end.i.i37.1, %if.then4.1.if.end6.1_crit_edge, %if.end6.if.end6.1_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @parportlist_lock) #10
  %.pn8.i = load ptr, ptr @drivers, align 4
  %cmp.not9.i = icmp eq ptr %.pn8.i, @drivers
  br i1 %cmp.not9.i, label %if.end6.1.attach_driver_chain.exit_crit_edge, label %if.end6.1.for.body.i_crit_edge

if.end6.1.for.body.i_crit_edge:                   ; preds = %if.end6.1
  br label %for.body.i

if.end6.1.attach_driver_chain.exit_crit_edge:     ; preds = %if.end6.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %attach_driver_chain.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end6.1.for.body.i_crit_edge
  %.pn10.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn8.i, %if.end6.1.for.body.i_crit_edge ]
  %attach.i = getelementptr i8, ptr %.pn10.i, i32 -96
  %20 = ptrtoint ptr %attach.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %attach.i, align 4
  tail call void %21(ptr noundef %port) #10
  %22 = ptrtoint ptr %.pn10.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn.i = load ptr, ptr %.pn10.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @drivers
  br i1 %cmp.not.i, label %for.body.i.attach_driver_chain.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.attach_driver_chain.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %attach_driver_chain.exit

attach_driver_chain.exit:                         ; preds = %for.body.i.attach_driver_chain.exit_crit_edge, %if.end6.1.attach_driver_chain.exit_crit_edge
  %call.i = tail call i32 @bus_for_each_drv(ptr noundef nonnull @parport_bus_type, ptr noundef null, ptr noundef %port, ptr noundef nonnull @driver_check) #10
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  %tobool14.not = icmp eq ptr %24, null
  br i1 %tobool14.not, label %attach_driver_chain.exit.if.end16_crit_edge, label %if.then15

attach_driver_chain.exit.if.end16_crit_edge:      ; preds = %attach_driver_chain.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then15:                                        ; preds = %attach_driver_chain.exit
  %.pn8.i39 = load ptr, ptr @drivers, align 4
  %cmp.not9.i40 = icmp eq ptr %.pn8.i39, @drivers
  br i1 %cmp.not9.i40, label %if.then15.attach_driver_chain.exit47_crit_edge, label %if.then15.for.body.i45_crit_edge

if.then15.for.body.i45_crit_edge:                 ; preds = %if.then15
  br label %for.body.i45

if.then15.attach_driver_chain.exit47_crit_edge:   ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %attach_driver_chain.exit47

for.body.i45:                                     ; preds = %for.body.i45.for.body.i45_crit_edge, %if.then15.for.body.i45_crit_edge
  %.pn10.i41 = phi ptr [ %.pn.i43, %for.body.i45.for.body.i45_crit_edge ], [ %.pn8.i39, %if.then15.for.body.i45_crit_edge ]
  %attach.i42 = getelementptr i8, ptr %.pn10.i41, i32 -96
  %25 = ptrtoint ptr %attach.i42 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %attach.i42, align 4
  tail call void %26(ptr noundef nonnull %24) #10
  %27 = ptrtoint ptr %.pn10.i41 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn.i43 = load ptr, ptr %.pn10.i41, align 4
  %cmp.not.i44 = icmp eq ptr %.pn.i43, @drivers
  br i1 %cmp.not.i44, label %for.body.i45.attach_driver_chain.exit47_crit_edge, label %for.body.i45.for.body.i45_crit_edge

for.body.i45.for.body.i45_crit_edge:              ; preds = %for.body.i45
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i45

for.body.i45.attach_driver_chain.exit47_crit_edge: ; preds = %for.body.i45
  call void @__sanitizer_cov_trace_pc() #12
  br label %attach_driver_chain.exit47

attach_driver_chain.exit47:                       ; preds = %for.body.i45.attach_driver_chain.exit47_crit_edge, %if.then15.attach_driver_chain.exit47_crit_edge
  %call.i46 = tail call i32 @bus_for_each_drv(ptr noundef nonnull @parport_bus_type, ptr noundef null, ptr noundef nonnull %24, ptr noundef nonnull @driver_check) #10
  br label %if.end16

if.end16:                                         ; preds = %attach_driver_chain.exit47, %attach_driver_chain.exit.if.end16_crit_edge
  %28 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.1, align 4
  %tobool14.not.1 = icmp eq ptr %29, null
  br i1 %tobool14.not.1, label %if.end16.if.end16.1_crit_edge, label %if.then15.1

if.end16.if.end16.1_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.1

if.then15.1:                                      ; preds = %if.end16
  %.pn8.i39.1 = load ptr, ptr @drivers, align 4
  %cmp.not9.i40.1 = icmp eq ptr %.pn8.i39.1, @drivers
  br i1 %cmp.not9.i40.1, label %if.then15.1.attach_driver_chain.exit47.1_crit_edge, label %if.then15.1.for.body.i45.1_crit_edge

if.then15.1.for.body.i45.1_crit_edge:             ; preds = %if.then15.1
  br label %for.body.i45.1

if.then15.1.attach_driver_chain.exit47.1_crit_edge: ; preds = %if.then15.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %attach_driver_chain.exit47.1

for.body.i45.1:                                   ; preds = %for.body.i45.1.for.body.i45.1_crit_edge, %if.then15.1.for.body.i45.1_crit_edge
  %.pn10.i41.1 = phi ptr [ %.pn.i43.1, %for.body.i45.1.for.body.i45.1_crit_edge ], [ %.pn8.i39.1, %if.then15.1.for.body.i45.1_crit_edge ]
  %attach.i42.1 = getelementptr i8, ptr %.pn10.i41.1, i32 -96
  %30 = ptrtoint ptr %attach.i42.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %attach.i42.1, align 4
  tail call void %31(ptr noundef nonnull %29) #10
  %32 = ptrtoint ptr %.pn10.i41.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn.i43.1 = load ptr, ptr %.pn10.i41.1, align 4
  %cmp.not.i44.1 = icmp eq ptr %.pn.i43.1, @drivers
  br i1 %cmp.not.i44.1, label %for.body.i45.1.attach_driver_chain.exit47.1_crit_edge, label %for.body.i45.1.for.body.i45.1_crit_edge

for.body.i45.1.for.body.i45.1_crit_edge:          ; preds = %for.body.i45.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i45.1

for.body.i45.1.attach_driver_chain.exit47.1_crit_edge: ; preds = %for.body.i45.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %attach_driver_chain.exit47.1

attach_driver_chain.exit47.1:                     ; preds = %for.body.i45.1.attach_driver_chain.exit47.1_crit_edge, %if.then15.1.attach_driver_chain.exit47.1_crit_edge
  %call.i46.1 = tail call i32 @bus_for_each_drv(ptr noundef nonnull @parport_bus_type, ptr noundef null, ptr noundef nonnull %29, ptr noundef nonnull @driver_check) #10
  br label %if.end16.1

if.end16.1:                                       ; preds = %attach_driver_chain.exit47.1, %if.end16.if.end16.1_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @registration_lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parport_daisy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parport_proc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @parport_remove_port(ptr noundef %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @registration_lock, i32 noundef 0) #10
  %.pn8.i = load ptr, ptr @drivers, align 4
  %cmp.not9.i = icmp eq ptr %.pn8.i, @drivers
  br i1 %cmp.not9.i, label %entry.detach_driver_chain.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.detach_driver_chain.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %detach_driver_chain.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn10.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn8.i, %entry.for.body.i_crit_edge ]
  %detach.i = getelementptr i8, ptr %.pn10.i, i32 -92
  %0 = ptrtoint ptr %detach.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %detach.i, align 4
  tail call void %1(ptr noundef %port) #10
  %2 = ptrtoint ptr %.pn10.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn10.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @drivers
  br i1 %cmp.not.i, label %for.body.i.detach_driver_chain.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.detach_driver_chain.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %detach_driver_chain.exit

detach_driver_chain.exit:                         ; preds = %for.body.i.detach_driver_chain.exit_crit_edge, %entry.detach_driver_chain.exit_crit_edge
  %call.i = tail call i32 @bus_for_each_drv(ptr noundef nonnull @parport_bus_type, ptr noundef null, ptr noundef %port, ptr noundef nonnull @driver_detach) #10
  tail call void @parport_daisy_fini(ptr noundef %port) #10
  %arrayidx = getelementptr %struct.parport, ptr %port, i32 0, i32 35, i32 0
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %detach_driver_chain.exit.cleanup_crit_edge, label %if.end

detach_driver_chain.exit.cleanup_crit_edge:       ; preds = %detach_driver_chain.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %detach_driver_chain.exit
  %.pn8.i49 = load ptr, ptr @drivers, align 4
  %cmp.not9.i50 = icmp eq ptr %.pn8.i49, @drivers
  br i1 %cmp.not9.i50, label %if.end.detach_driver_chain.exit57_crit_edge, label %if.end.for.body.i55_crit_edge

if.end.for.body.i55_crit_edge:                    ; preds = %if.end
  br label %for.body.i55

if.end.detach_driver_chain.exit57_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %detach_driver_chain.exit57

for.body.i55:                                     ; preds = %for.body.i55.for.body.i55_crit_edge, %if.end.for.body.i55_crit_edge
  %.pn10.i51 = phi ptr [ %.pn.i53, %for.body.i55.for.body.i55_crit_edge ], [ %.pn8.i49, %if.end.for.body.i55_crit_edge ]
  %detach.i52 = getelementptr i8, ptr %.pn10.i51, i32 -92
  %5 = ptrtoint ptr %detach.i52 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %detach.i52, align 4
  tail call void %6(ptr noundef nonnull %4) #10
  %7 = ptrtoint ptr %.pn10.i51 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i53 = load ptr, ptr %.pn10.i51, align 4
  %cmp.not.i54 = icmp eq ptr %.pn.i53, @drivers
  br i1 %cmp.not.i54, label %for.body.i55.detach_driver_chain.exit57_crit_edge, label %for.body.i55.for.body.i55_crit_edge

for.body.i55.for.body.i55_crit_edge:              ; preds = %for.body.i55
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i55

for.body.i55.detach_driver_chain.exit57_crit_edge: ; preds = %for.body.i55
  call void @__sanitizer_cov_trace_pc() #12
  br label %detach_driver_chain.exit57

detach_driver_chain.exit57:                       ; preds = %for.body.i55.detach_driver_chain.exit57_crit_edge, %if.end.detach_driver_chain.exit57_crit_edge
  %call.i56 = tail call i32 @bus_for_each_drv(ptr noundef nonnull @parport_bus_type, ptr noundef null, ptr noundef nonnull %4, ptr noundef nonnull @driver_detach) #10
  tail call void @parport_daisy_fini(ptr noundef nonnull %4) #10
  br label %cleanup

cleanup:                                          ; preds = %detach_driver_chain.exit57, %detach_driver_chain.exit.cleanup_crit_edge
  %arrayidx.1 = getelementptr %struct.parport, ptr %port, i32 0, i32 35, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %9, null
  br i1 %tobool.not.1, label %cleanup.cleanup.1_crit_edge, label %if.end.1

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.1

if.end.1:                                         ; preds = %cleanup
  %.pn8.i49.1 = load ptr, ptr @drivers, align 4
  %cmp.not9.i50.1 = icmp eq ptr %.pn8.i49.1, @drivers
  br i1 %cmp.not9.i50.1, label %if.end.1.detach_driver_chain.exit57.1_crit_edge, label %if.end.1.for.body.i55.1_crit_edge

if.end.1.for.body.i55.1_crit_edge:                ; preds = %if.end.1
  br label %for.body.i55.1

if.end.1.detach_driver_chain.exit57.1_crit_edge:  ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %detach_driver_chain.exit57.1

for.body.i55.1:                                   ; preds = %for.body.i55.1.for.body.i55.1_crit_edge, %if.end.1.for.body.i55.1_crit_edge
  %.pn10.i51.1 = phi ptr [ %.pn.i53.1, %for.body.i55.1.for.body.i55.1_crit_edge ], [ %.pn8.i49.1, %if.end.1.for.body.i55.1_crit_edge ]
  %detach.i52.1 = getelementptr i8, ptr %.pn10.i51.1, i32 -92
  %10 = ptrtoint ptr %detach.i52.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %detach.i52.1, align 4
  tail call void %11(ptr noundef nonnull %9) #10
  %12 = ptrtoint ptr %.pn10.i51.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn.i53.1 = load ptr, ptr %.pn10.i51.1, align 4
  %cmp.not.i54.1 = icmp eq ptr %.pn.i53.1, @drivers
  br i1 %cmp.not.i54.1, label %for.body.i55.1.detach_driver_chain.exit57.1_crit_edge, label %for.body.i55.1.for.body.i55.1_crit_edge

for.body.i55.1.for.body.i55.1_crit_edge:          ; preds = %for.body.i55.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i55.1

for.body.i55.1.detach_driver_chain.exit57.1_crit_edge: ; preds = %for.body.i55.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %detach_driver_chain.exit57.1

detach_driver_chain.exit57.1:                     ; preds = %for.body.i55.1.detach_driver_chain.exit57.1_crit_edge, %if.end.1.detach_driver_chain.exit57.1_crit_edge
  %call.i56.1 = tail call i32 @bus_for_each_drv(ptr noundef nonnull @parport_bus_type, ptr noundef null, ptr noundef nonnull %9, ptr noundef nonnull @driver_detach) #10
  tail call void @parport_daisy_fini(ptr noundef nonnull %9) #10
  br label %cleanup.1

cleanup.1:                                        ; preds = %detach_driver_chain.exit57.1, %cleanup.cleanup.1_crit_edge
  %ops = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 24
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @dead_ops, ptr %ops, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @parportlist_lock) #10
  %list = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 18
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #10
  br i1 %call.i.i, label %if.end.i.i, label %cleanup.1.list_del_init.exit_crit_edge

cleanup.1.list_del_init.exit_crit_edge:           ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 18, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %cleanup.1.list_del_init.exit_crit_edge
  %20 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %list, ptr %list, align 4
  %prev.i3.i = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 18, i32 1
  %21 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %list, ptr %prev.i3.i, align 4
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %tobool8.not = icmp eq ptr %23, null
  br i1 %tobool8.not, label %list_del_init.exit.if.end11_crit_edge, label %if.then9

list_del_init.exit.if.end11_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then9:                                         ; preds = %list_del_init.exit
  %list10 = getelementptr inbounds %struct.parport, ptr %23, i32 0, i32 18
  %call.i.i58 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list10) #10
  br i1 %call.i.i58, label %if.end.i.i61, label %if.then9.list_del_init.exit63_crit_edge

if.then9.list_del_init.exit63_crit_edge:          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit63

if.end.i.i61:                                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i59 = getelementptr inbounds %struct.parport, ptr %23, i32 0, i32 18, i32 1
  %24 = ptrtoint ptr %prev.i.i59 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i59, align 4
  %26 = ptrtoint ptr %list10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %list10, align 4
  %prev1.i.i.i60 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i60 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i60, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del_init.exit63

list_del_init.exit63:                             ; preds = %if.end.i.i61, %if.then9.list_del_init.exit63_crit_edge
  %30 = ptrtoint ptr %list10 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %list10, ptr %list10, align 4
  %prev.i3.i62 = getelementptr inbounds %struct.parport, ptr %23, i32 0, i32 18, i32 1
  %31 = ptrtoint ptr %prev.i3.i62 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %list10, ptr %prev.i3.i62, align 4
  br label %if.end11

if.end11:                                         ; preds = %list_del_init.exit63, %list_del_init.exit.if.end11_crit_edge
  %32 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.1, align 4
  %tobool8.not.1 = icmp eq ptr %33, null
  br i1 %tobool8.not.1, label %if.end11.if.end11.1_crit_edge, label %if.then9.1

if.end11.if.end11.1_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.1

if.then9.1:                                       ; preds = %if.end11
  %list10.1 = getelementptr inbounds %struct.parport, ptr %33, i32 0, i32 18
  %call.i.i58.1 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list10.1) #10
  br i1 %call.i.i58.1, label %if.end.i.i61.1, label %if.then9.1.list_del_init.exit63.1_crit_edge

if.then9.1.list_del_init.exit63.1_crit_edge:      ; preds = %if.then9.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit63.1

if.end.i.i61.1:                                   ; preds = %if.then9.1
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i59.1 = getelementptr inbounds %struct.parport, ptr %33, i32 0, i32 18, i32 1
  %34 = ptrtoint ptr %prev.i.i59.1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i59.1, align 4
  %36 = ptrtoint ptr %list10.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %list10.1, align 4
  %prev1.i.i.i60.1 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i.i60.1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev1.i.i.i60.1, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %37, ptr %35, align 4
  br label %list_del_init.exit63.1

list_del_init.exit63.1:                           ; preds = %if.end.i.i61.1, %if.then9.1.list_del_init.exit63.1_crit_edge
  %40 = ptrtoint ptr %list10.1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %list10.1, ptr %list10.1, align 4
  %prev.i3.i62.1 = getelementptr inbounds %struct.parport, ptr %33, i32 0, i32 18, i32 1
  %41 = ptrtoint ptr %prev.i3.i62.1 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %list10.1, ptr %prev.i3.i62.1, align 4
  br label %if.end11.1

if.end11.1:                                       ; preds = %list_del_init.exit63.1, %if.end11.if.end11.1_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @parportlist_lock) #10
  tail call void @mutex_unlock(ptr noundef nonnull @registration_lock) #10
  %call = tail call i32 @parport_proc_unregister(ptr noundef %port) #10
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx, align 4
  %tobool22.not = icmp eq ptr %43, null
  br i1 %tobool22.not, label %if.end11.1.if.end24_crit_edge, label %if.then23

if.end11.1.if.end24_crit_edge:                    ; preds = %if.end11.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then23:                                        ; preds = %if.end11.1
  call void @__sanitizer_cov_trace_pc() #12
  %bus_dev.i = getelementptr inbounds %struct.parport, ptr %43, i32 0, i32 10
  tail call void @put_device(ptr noundef %bus_dev.i) #10
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end11.1.if.end24_crit_edge
  %44 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.1, align 4
  %tobool22.not.1 = icmp eq ptr %45, null
  br i1 %tobool22.not.1, label %if.end24.if.end24.1_crit_edge, label %if.then23.1

if.end24.if.end24.1_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.1

if.then23.1:                                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %bus_dev.i.1 = getelementptr inbounds %struct.parport, ptr %45, i32 0, i32 10
  tail call void @put_device(ptr noundef %bus_dev.i.1) #10
  br label %if.end24.1

if.end24.1:                                       ; preds = %if.then23.1, %if.end24.if.end24.1_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_daisy_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parport_proc_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @parport_register_dev_model(ptr noundef %port, ptr noundef %name, ptr nocapture noundef readonly %par_dev_cb, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %physport = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 11
  %0 = ptrtoint ptr %physport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %physport, align 8
  %flags = getelementptr inbounds %struct.parport, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name1 = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 3
  %4 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name1, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %5) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags2 = getelementptr inbounds %struct.pardev_cb, ptr %par_dev_cb, i32 0, i32 4
  %6 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags2, align 4
  %and3 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end16_crit_edge, label %if.then5

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then5:                                         ; preds = %if.end
  %8 = ptrtoint ptr %par_dev_cb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %par_dev_cb, align 4
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %if.then5.do.end11_crit_edge, label %lor.lhs.false

if.then5.do.end11_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11

lor.lhs.false:                                    ; preds = %if.then5
  %wakeup = getelementptr inbounds %struct.pardev_cb, ptr %par_dev_cb, i32 0, i32 1
  %10 = ptrtoint ptr %wakeup to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wakeup, align 4
  %tobool7.not = icmp eq ptr %11, null
  br i1 %tobool7.not, label %lor.lhs.false.do.end11_crit_edge, label %lor.lhs.false.if.end16_crit_edge

lor.lhs.false.if.end16_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

lor.lhs.false.do.end11_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11

do.end11:                                         ; preds = %lor.lhs.false.do.end11_crit_edge, %if.then5.do.end11_crit_edge
  %name13 = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 3
  %12 = ptrtoint ptr %name13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name13, align 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %13, ptr noundef %name) #14
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %and18 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end16.if.end31_crit_edge, label %if.then20

if.end16.if.end31_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then20:                                        ; preds = %if.end16
  %devices = getelementptr inbounds %struct.parport, ptr %1, i32 0, i32 12
  %14 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %devices, align 4
  %tobool22.not = icmp eq ptr %15, null
  br i1 %tobool22.not, label %if.then20.if.end31_crit_edge, label %do.end26

if.then20.if.end31_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

do.end26:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  %name28 = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 3
  %16 = ptrtoint ptr %name28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name28, align 4
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %17, ptr noundef %name) #14
  br label %cleanup

if.end31:                                         ; preds = %if.then20.if.end31_crit_edge, %if.end16.if.end31_crit_edge
  %ops = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 24
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops, align 4
  %owner = getelementptr inbounds %struct.parport_operations, ptr %19, i32 0, i32 23
  %20 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %owner, align 4
  %call32 = tail call zeroext i1 @try_module_get(ptr noundef %21) #10
  br i1 %call32, label %if.end34, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end34:                                         ; preds = %if.end31
  %bus_dev.i = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 10
  %call.i = tail call ptr @get_device(ptr noundef %bus_dev.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 1056) #13
  %tobool37.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool37.not, label %if.end34.err_put_port_crit_edge, label %if.end39

if.end34.err_put_port_crit_edge:                  ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_put_port

if.end39:                                         ; preds = %if.end34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i213 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 12) #13
  %state = getelementptr inbounds %struct.pardevice, ptr %call7.i.i, i32 0, i32 12
  %24 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i213, ptr %state, align 4
  %tobool42.not = icmp eq ptr %call7.i.i213, null
  br i1 %tobool42.not, label %if.end39.err_put_par_dev_crit_edge, label %if.end44

if.end39.err_put_par_dev_crit_edge:               ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_put_par_dev

if.end44:                                         ; preds = %if.end39
  %call45 = tail call noalias ptr @kstrdup(ptr noundef %name, i32 noundef 3264) #10
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %if.end44.err_free_par_dev_crit_edge, label %if.end48

if.end44.err_free_par_dev_crit_edge:              ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_par_dev

if.end48:                                         ; preds = %if.end44
  %25 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call45, ptr %call7.i.i, align 8
  %port50 = getelementptr inbounds %struct.pardevice, ptr %call7.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %port50 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %port, ptr %port50, align 4
  %daisy = getelementptr inbounds %struct.pardevice, ptr %call7.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %daisy to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %daisy, align 8
  %28 = ptrtoint ptr %par_dev_cb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %par_dev_cb, align 4
  %preempt52 = getelementptr inbounds %struct.pardevice, ptr %call7.i.i, i32 0, i32 3
  %30 = ptrtoint ptr %preempt52 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %preempt52, align 4
  %wakeup53 = getelementptr inbounds %struct.pardev_cb, ptr %par_dev_cb, i32 0, i32 1
  %31 = ptrtoint ptr %wakeup53 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wakeup53, align 4
  %wakeup54 = getelementptr inbounds %struct.pardevice, ptr %call7.i.i, i32 0, i32 4
  %33 = ptrtoint ptr %wakeup54 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %wakeup54, align 8
  %private = getelementptr inbounds %struct.pardev_cb, ptr %par_dev_cb, i32 0, i32 2
  %34 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %private, align 4
  %private55 = getelementptr inbounds %struct.pardevice, ptr %call7.i.i, i32 0, i32 5
  %36 = ptrtoint ptr %private55 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %private55, align 4
  %37 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags2, align 4
  %flags57 = getelementptr inbounds %struct.pardevice, ptr %call7.i.i, i32 0, i32 7
  %39 = ptrtoint ptr %flags57 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %flags57, align 4
  %irq_func = getelementptr inbounds %struct.pardev_cb, ptr %par_dev_cb, i32 0, i32 3
  %40 = ptrtoint ptr %irq_func to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %irq_func, align 4
  %irq_func58 = getelementptr inbounds %struct.pardevice, ptr %call7.i.i, i32 0, i32 6
  %42 = ptrtoint ptr %irq_func58 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %irq_func58, align 8
  %waiting = getelementptr inbounds %struct.pardevice, ptr %call7.i.i, i32 0, i32 17
  %43 = ptrtoint ptr %waiting to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %waiting, align 8
  %timeout = getelementptr inbounds %struct.pardevice, ptr %call7.i.i, i32 0, i32 16
  %44 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile i32 500, ptr %timeout, align 4
  %dev = getelementptr inbounds %struct.pardevice, ptr %call7.i.i, i32 0, i32 10
  %parent = getelementptr inbounds %struct.pardevice, ptr %call7.i.i, i32 0, i32 10, i32 1
  %45 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %bus_dev.i, ptr %parent, align 8
  %bus = getelementptr inbounds %struct.pardevice, ptr %call7.i.i, i32 0, i32 10, i32 5
  %46 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @parport_bus_type, ptr %bus, align 8
  %call61 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev, ptr noundef nonnull @.str.17, ptr noundef nonnull %call45, i32 noundef %id) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %err_free_devname

if.end64:                                         ; preds = %if.end48
  %release = getelementptr inbounds %struct.pardevice, ptr %call7.i.i, i32 0, i32 10, i32 35
  %47 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @free_pardevice, ptr %release, align 4
  %devmodel = getelementptr inbounds %struct.pardevice, ptr %call7.i.i, i32 0, i32 11
  %48 = ptrtoint ptr %devmodel to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %devmodel, align 8
  %call67 = tail call i32 @device_register(ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end72, label %if.then69

if.then69:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %state, align 4
  tail call void @kfree(ptr noundef %50) #10
  tail call void @put_device(ptr noundef %dev) #10
  br label %err_put_port

if.end72:                                         ; preds = %if.end64
  %prev = getelementptr inbounds %struct.pardevice, ptr %call7.i.i, i32 0, i32 9
  %51 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %prev, align 4
  %52 = ptrtoint ptr %physport to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %physport, align 8
  %pardevice_lock = getelementptr inbounds %struct.parport, ptr %53, i32 0, i32 27
  tail call void @_raw_spin_lock(ptr noundef %pardevice_lock) #10
  %54 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags2, align 4
  %and75 = and i32 %55, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.end72.if.end99_crit_edge, label %if.then77

if.end72.if.end99_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end99

if.then77:                                        ; preds = %if.end72
  %56 = ptrtoint ptr %physport to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %physport, align 8
  %devices79 = getelementptr inbounds %struct.parport, ptr %57, i32 0, i32 12
  %58 = ptrtoint ptr %devices79 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %devices79, align 4
  %tobool80.not = icmp eq ptr %59, null
  br i1 %tobool80.not, label %if.end97, label %if.then81

if.then81:                                        ; preds = %if.then77
  %pardevice_lock83 = getelementptr inbounds %struct.parport, ptr %57, i32 0, i32 27
  tail call void @_raw_spin_unlock(ptr noundef %pardevice_lock83) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @parport_register_dev_model.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@parport_register_dev_model, %if.then90)) #10
          to label %do.end94 [label %if.then90], !srcloc !141

if.then90:                                        ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #12
  %name91 = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 3
  %60 = ptrtoint ptr %name91 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %name91, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @parport_register_dev_model.__UNIQUE_ID_ddebug227, ptr noundef nonnull @.str.19, ptr noundef %61, ptr noundef %name) #10
  br label %do.end94

do.end94:                                         ; preds = %if.then90, %if.then81
  %62 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %state, align 4
  tail call void @kfree(ptr noundef %63) #10
  tail call void @device_unregister(ptr noundef %dev) #10
  br label %err_put_port

if.end97:                                         ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #12
  %flags98 = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 20
  %64 = ptrtoint ptr %flags98 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags98, align 4
  %or = or i32 %65, 2
  store i32 %or, ptr %flags98, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.end97, %if.end72.if.end99_crit_edge
  %66 = ptrtoint ptr %physport to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %physport, align 8
  %devices101 = getelementptr inbounds %struct.parport, ptr %67, i32 0, i32 12
  %68 = ptrtoint ptr %devices101 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %devices101, align 4
  %next = getelementptr inbounds %struct.pardevice, ptr %call7.i.i, i32 0, i32 8
  %70 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %69, ptr %next, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !142
  tail call void @arm_heavy_mb() #10
  %71 = ptrtoint ptr %physport to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %physport, align 8
  %devices106 = getelementptr inbounds %struct.parport, ptr %72, i32 0, i32 12
  %73 = ptrtoint ptr %devices106 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %devices106, align 4
  %tobool107.not = icmp eq ptr %74, null
  br i1 %tobool107.not, label %if.end99.if.end112_crit_edge, label %if.then108

if.end99.if.end112_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end112

if.then108:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  %prev111 = getelementptr inbounds %struct.pardevice, ptr %74, i32 0, i32 9
  %75 = ptrtoint ptr %prev111 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call7.i.i, ptr %prev111, align 4
  br label %if.end112

if.end112:                                        ; preds = %if.then108, %if.end99.if.end112_crit_edge
  %76 = ptrtoint ptr %physport to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %physport, align 8
  %devices114 = getelementptr inbounds %struct.parport, ptr %77, i32 0, i32 12
  %78 = ptrtoint ptr %devices114 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call7.i.i, ptr %devices114, align 4
  %79 = load ptr, ptr %physport, align 8
  %pardevice_lock116 = getelementptr inbounds %struct.parport, ptr %79, i32 0, i32 27
  tail call void @_raw_spin_unlock(ptr noundef %pardevice_lock116) #10
  %wait_q = getelementptr inbounds %struct.pardevice, ptr %call7.i.i, i32 0, i32 13
  tail call void @__init_waitqueue_head(ptr noundef %wait_q, ptr noundef nonnull @.str.20, ptr noundef nonnull @parport_register_dev_model.__key) #10
  %80 = load i32, ptr @parport_default_timeslice, align 4
  %timeslice = getelementptr inbounds %struct.pardevice, ptr %call7.i.i, i32 0, i32 15
  %81 = ptrtoint ptr %timeslice to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %timeslice, align 8
  %waitnext = getelementptr inbounds %struct.pardevice, ptr %call7.i.i, i32 0, i32 19
  %82 = ptrtoint ptr %waitnext to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %waitnext, align 8
  %waitprev = getelementptr inbounds %struct.pardevice, ptr %call7.i.i, i32 0, i32 18
  %83 = ptrtoint ptr %waitprev to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %waitprev, align 4
  %84 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ops, align 4
  %init_state = getelementptr inbounds %struct.parport_operations, ptr %85, i32 0, i32 10
  %86 = ptrtoint ptr %init_state to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %init_state, align 4
  %88 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %state, align 4
  tail call void %87(ptr noundef nonnull %call7.i.i, ptr noundef %89) #10
  %devflags = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 32
  %call122 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %devflags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.then124, label %if.end112.cleanup_crit_edge

if.end112.cleanup_crit_edge:                      ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then124:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #12
  %proc_device = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 33
  %90 = ptrtoint ptr %proc_device to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call7.i.i, ptr %proc_device, align 8
  %call125 = tail call i32 @parport_device_proc_register(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

err_free_devname:                                 ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call45) #10
  br label %err_free_par_dev

err_free_par_dev:                                 ; preds = %err_free_devname, %if.end44.err_free_par_dev_crit_edge
  %91 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %state, align 4
  tail call void @kfree(ptr noundef %92) #10
  br label %err_put_par_dev

err_put_par_dev:                                  ; preds = %err_free_par_dev, %if.end39.err_put_par_dev_crit_edge
  %devmodel128 = getelementptr inbounds %struct.pardevice, ptr %call7.i.i, i32 0, i32 11
  %93 = ptrtoint ptr %devmodel128 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %devmodel128, align 8, !range !143
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool129.not = icmp eq i8 %94, 0
  br i1 %tobool129.not, label %if.then130, label %err_put_par_dev.err_put_port_crit_edge

err_put_par_dev.err_put_port_crit_edge:           ; preds = %err_put_par_dev
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_put_port

if.then130:                                       ; preds = %err_put_par_dev
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %err_put_port

err_put_port:                                     ; preds = %if.then130, %err_put_par_dev.err_put_port_crit_edge, %do.end94, %if.then69, %if.end34.err_put_port_crit_edge
  tail call void @put_device(ptr noundef %bus_dev.i) #10
  %95 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ops, align 4
  %owner133 = getelementptr inbounds %struct.parport_operations, ptr %96, i32 0, i32 23
  %97 = ptrtoint ptr %owner133 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %owner133, align 4
  tail call void @module_put(ptr noundef %98) #10
  br label %cleanup

cleanup:                                          ; preds = %err_put_port, %if.then124, %if.end112.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %do.end26, %do.end11, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ null, %do.end26 ], [ null, %err_put_port ], [ null, %do.end11 ], [ null, %if.end31.cleanup_crit_edge ], [ %call7.i.i, %if.then124 ], [ %call7.i.i, %if.end112.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @free_pardevice(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -40
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  tail call void @kfree(ptr noundef %1) #10
  tail call void @kfree(ptr noundef %add.ptr) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parport_device_proc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @parport_unregister_device(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %port1 = getelementptr inbounds %struct.pardevice, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port1, align 4
  %physport = getelementptr inbounds %struct.parport, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %physport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %physport, align 8
  %proc_device = getelementptr inbounds %struct.parport, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %proc_device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %proc_device, align 8
  %cmp = icmp eq ptr %5, %dev
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %proc_device to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %proc_device, align 8
  %devflags = getelementptr inbounds %struct.parport, ptr %3, i32 0, i32 32
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %devflags) #10
  %call = tail call i32 @parport_device_proc_unregister(ptr noundef %dev) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cad = getelementptr inbounds %struct.parport, ptr %3, i32 0, i32 13
  %7 = ptrtoint ptr %cad to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cad, align 8
  %cmp3 = icmp eq ptr %8, %dev
  br i1 %cmp3, label %do.end, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.parport, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name, align 4
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %10, ptr noundef %12) #14
  tail call void @parport_release(ptr noundef %dev)
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.end.if.end7_crit_edge
  %pardevice_lock = getelementptr inbounds %struct.parport, ptr %3, i32 0, i32 27
  tail call void @_raw_spin_lock(ptr noundef %pardevice_lock) #10
  %next = getelementptr inbounds %struct.pardevice, ptr %dev, i32 0, i32 8
  %13 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %next, align 8
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %if.end7.if.end11_crit_edge, label %if.then8

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then8:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %prev = getelementptr inbounds %struct.pardevice, ptr %dev, i32 0, i32 9
  %15 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev, align 4
  %prev10 = getelementptr inbounds %struct.pardevice, ptr %14, i32 0, i32 9
  %17 = ptrtoint ptr %prev10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %prev10, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end7.if.end11_crit_edge
  %prev12 = getelementptr inbounds %struct.pardevice, ptr %dev, i32 0, i32 9
  %18 = ptrtoint ptr %prev12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev12, align 4
  %tobool13.not = icmp eq ptr %19, null
  %20 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %next, align 8
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %next17 = getelementptr inbounds %struct.pardevice, ptr %19, i32 0, i32 8
  %22 = ptrtoint ptr %next17 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %next17, align 8
  br label %if.end19

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %devices = getelementptr inbounds %struct.parport, ptr %3, i32 0, i32 12
  %23 = ptrtoint ptr %devices to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %21, ptr %devices, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then14
  %flags = getelementptr inbounds %struct.pardevice, ptr %dev, i32 0, i32 7
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags, align 4
  %and = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %if.end19.if.end24_crit_edge, label %if.then21

if.end19.if.end24_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %flags22 = getelementptr inbounds %struct.parport, ptr %3, i32 0, i32 20
  %26 = ptrtoint ptr %flags22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags22, align 4
  %and23 = and i32 %27, -3
  store i32 %and23, ptr %flags22, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end19.if.end24_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %pardevice_lock) #10
  %waitlist_lock = getelementptr inbounds %struct.parport, ptr %3, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %waitlist_lock) #10
  %waitprev = getelementptr inbounds %struct.pardevice, ptr %dev, i32 0, i32 18
  %28 = ptrtoint ptr %waitprev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %waitprev, align 4
  %tobool26.not = icmp eq ptr %29, null
  %waitnext = getelementptr inbounds %struct.pardevice, ptr %dev, i32 0, i32 19
  %30 = ptrtoint ptr %waitnext to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %waitnext, align 8
  br i1 %tobool26.not, label %lor.lhs.false, label %if.then33

lor.lhs.false:                                    ; preds = %if.end24
  %tobool27.not = icmp eq ptr %31, null
  br i1 %tobool27.not, label %lor.lhs.false28, label %lor.lhs.false.if.else37_crit_edge

lor.lhs.false.if.else37_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else37

lor.lhs.false28:                                  ; preds = %lor.lhs.false
  %waithead = getelementptr inbounds %struct.parport, ptr %3, i32 0, i32 16
  %32 = ptrtoint ptr %waithead to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %waithead, align 4
  %cmp29 = icmp eq ptr %33, %dev
  br i1 %cmp29, label %lor.lhs.false28.if.else37_crit_edge, label %lor.lhs.false28.if.end50_crit_edge

lor.lhs.false28.if.end50_crit_edge:               ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

lor.lhs.false28.if.else37_crit_edge:              ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else37

if.then33:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %waitnext36 = getelementptr inbounds %struct.pardevice, ptr %29, i32 0, i32 19
  %34 = ptrtoint ptr %waitnext36 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %waitnext36, align 8
  br label %if.end40

if.else37:                                        ; preds = %lor.lhs.false28.if.else37_crit_edge, %lor.lhs.false.if.else37_crit_edge
  %35 = ptrtoint ptr %waitnext to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %waitnext, align 8
  %waithead39 = getelementptr inbounds %struct.parport, ptr %3, i32 0, i32 16
  %37 = ptrtoint ptr %waithead39 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %waithead39, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.else37, %if.then33
  %waitnext41 = getelementptr inbounds %struct.pardevice, ptr %dev, i32 0, i32 19
  %38 = ptrtoint ptr %waitnext41 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %waitnext41, align 8
  %tobool42.not = icmp eq ptr %39, null
  %40 = ptrtoint ptr %waitprev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %waitprev, align 4
  br i1 %tobool42.not, label %if.else47, label %if.then43

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  %waitprev46 = getelementptr inbounds %struct.pardevice, ptr %39, i32 0, i32 18
  %42 = ptrtoint ptr %waitprev46 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %waitprev46, align 4
  br label %if.end50

if.else47:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  %waittail = getelementptr inbounds %struct.parport, ptr %3, i32 0, i32 17
  %43 = ptrtoint ptr %waittail to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %41, ptr %waittail, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.else47, %if.then43, %lor.lhs.false28.if.end50_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %waitlist_lock) #10
  %state = getelementptr inbounds %struct.pardevice, ptr %dev, i32 0, i32 12
  %44 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %state, align 4
  tail call void @kfree(ptr noundef %45) #10
  %dev52 = getelementptr inbounds %struct.pardevice, ptr %dev, i32 0, i32 10
  tail call void @device_unregister(ptr noundef %dev52) #10
  %ops = getelementptr inbounds %struct.parport, ptr %3, i32 0, i32 24
  %46 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ops, align 4
  %owner = getelementptr inbounds %struct.parport_operations, ptr %47, i32 0, i32 23
  %48 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %49) #10
  %bus_dev.i = getelementptr inbounds %struct.parport, ptr %3, i32 0, i32 10
  tail call void @put_device(ptr noundef %bus_dev.i) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parport_device_proc_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @parport_release(ptr noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %port1 = getelementptr inbounds %struct.pardevice, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port1, align 4
  %physport = getelementptr inbounds %struct.parport, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %physport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %physport, align 8
  %cad_lock = getelementptr inbounds %struct.parport, ptr %3, i32 0, i32 29
  %call = tail call i32 @_raw_write_lock_irqsave(ptr noundef %cad_lock) #10
  %cad = getelementptr inbounds %struct.parport, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %cad to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cad, align 8
  %cmp2.not = icmp eq ptr %5, %dev
  br i1 %cmp2.not, label %if.end, label %do.body4

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %cad_lock, i32 noundef %call) #10
  %name = getelementptr inbounds %struct.parport, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %7, ptr noundef %9) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port1, align 4
  %muxport = getelementptr inbounds %struct.parport, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %muxport to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %muxport, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp20 = icmp sgt i32 %13, -1
  br i1 %cmp20, label %if.then22, label %if.end.if.end23_crit_edge

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %muxsel = getelementptr inbounds %struct.parport, ptr %3, i32 0, i32 15
  %14 = ptrtoint ptr %muxsel to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %muxsel, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end.if.end23_crit_edge
  %daisy = getelementptr inbounds %struct.pardevice, ptr %dev, i32 0, i32 2
  %15 = ptrtoint ptr %daisy to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %daisy, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp24 = icmp sgt i32 %16, -1
  br i1 %cmp24, label %if.then26, label %if.end23.if.end28_crit_edge

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @parport_daisy_deselect_all(ptr noundef %3) #10
  %daisy27 = getelementptr inbounds %struct.parport, ptr %3, i32 0, i32 14
  %17 = ptrtoint ptr %daisy27 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %daisy27, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end23.if.end28_crit_edge
  %18 = ptrtoint ptr %cad to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %cad, align 8
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %cad_lock, i32 noundef %call) #10
  %ops = getelementptr inbounds %struct.parport, ptr %3, i32 0, i32 24
  %19 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops, align 4
  %save_state = getelementptr inbounds %struct.parport_operations, ptr %20, i32 0, i32 11
  %21 = ptrtoint ptr %save_state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %save_state, align 4
  %state = getelementptr inbounds %struct.pardevice, ptr %dev, i32 0, i32 12
  %23 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %state, align 4
  tail call void %22(ptr noundef %3, ptr noundef %24) #10
  %waithead = getelementptr inbounds %struct.parport, ptr %3, i32 0, i32 16
  %25 = ptrtoint ptr %waithead to i32
  call void @__asan_load4_noabort(i32 %25)
  %pd.0124 = load ptr, ptr %waithead, align 4
  %tobool.not125 = icmp eq ptr %pd.0124, null
  br i1 %tobool.not125, label %if.end28.for.end_crit_edge, label %for.body.lr.ph

if.end28.for.end_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end28
  %name60 = getelementptr inbounds %struct.parport, ptr %3, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %pd.0126 = phi ptr [ %pd.0124, %for.body.lr.ph ], [ %pd.0, %for.inc.for.body_crit_edge ]
  %waiting = getelementptr inbounds %struct.pardevice, ptr %pd.0126, i32 0, i32 17
  %26 = ptrtoint ptr %waiting to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %waiting, align 8
  %and = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool39.not = icmp eq i32 %and, 0
  br i1 %tobool39.not, label %if.else, label %if.then40

if.then40:                                        ; preds = %for.body
  %call41 = tail call i32 @parport_claim(ptr noundef nonnull %pd.0126)
  %head.i = getelementptr inbounds %struct.pardevice, ptr %pd.0126, i32 0, i32 13, i32 1
  %28 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %head.i, align 4
  %cmp.i.i.not = icmp eq ptr %29, %head.i
  br i1 %cmp.i.i.not, label %if.then40.cleanup_crit_edge, label %if.then44

if.then40.cleanup_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then44:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  %wait_q = getelementptr inbounds %struct.pardevice, ptr %pd.0126, i32 0, i32 13
  tail call void @__wake_up(ptr noundef %wait_q, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  br label %cleanup

if.else:                                          ; preds = %for.body
  %wakeup = getelementptr inbounds %struct.pardevice, ptr %pd.0126, i32 0, i32 4
  %30 = ptrtoint ptr %wakeup to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wakeup, align 8
  %tobool47.not = icmp eq ptr %31, null
  br i1 %tobool47.not, label %do.end58, label %if.then48

if.then48:                                        ; preds = %if.else
  %private = getelementptr inbounds %struct.pardevice, ptr %pd.0126, i32 0, i32 5
  %32 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %private, align 4
  tail call void %31(ptr noundef %33) #10
  %34 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %port1, align 4
  %cad51 = getelementptr inbounds %struct.parport, ptr %35, i32 0, i32 13
  %36 = ptrtoint ptr %cad51 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cad51, align 8
  %tobool52.not = icmp eq ptr %37, null
  br i1 %tobool52.not, label %if.then48.for.inc_crit_edge, label %if.then48.cleanup_crit_edge

if.then48.cleanup_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then48.for.inc_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.end58:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %name60 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %name60, align 4
  %40 = ptrtoint ptr %pd.0126 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pd.0126, align 8
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %39, ptr noundef %41) #14
  br label %for.inc

for.inc:                                          ; preds = %do.end58, %if.then48.for.inc_crit_edge
  %waitnext = getelementptr inbounds %struct.pardevice, ptr %pd.0126, i32 0, i32 19
  %42 = ptrtoint ptr %waitnext to i32
  call void @__asan_load4_noabort(i32 %42)
  %pd.0 = load ptr, ptr %waitnext, align 4
  %tobool.not = icmp eq ptr %pd.0, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end28.for.end_crit_edge
  %devices = getelementptr inbounds %struct.parport, ptr %3, i32 0, i32 12
  %43 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %43)
  %pd.1128 = load ptr, ptr %devices, align 4
  %44 = ptrtoint ptr %cad to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cad, align 8
  %tobool67.not129 = icmp ne ptr %45, null
  %tobool68.not130 = icmp eq ptr %pd.1128, null
  %or.cond131 = select i1 %tobool67.not129, i1 true, i1 %tobool68.not130
  br i1 %or.cond131, label %for.end.cleanup_crit_edge, label %for.end.for.body69_crit_edge

for.end.for.body69_crit_edge:                     ; preds = %for.end
  br label %for.body69

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body69:                                       ; preds = %for.inc78.for.body69_crit_edge, %for.end.for.body69_crit_edge
  %pd.1132 = phi ptr [ %pd.1, %for.inc78.for.body69_crit_edge ], [ %pd.1128, %for.end.for.body69_crit_edge ]
  %wakeup70 = getelementptr inbounds %struct.pardevice, ptr %pd.1132, i32 0, i32 4
  %46 = ptrtoint ptr %wakeup70 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %wakeup70, align 8
  %tobool71.not = icmp eq ptr %47, null
  %cmp72.not = icmp eq ptr %pd.1132, %dev
  %or.cond120 = select i1 %tobool71.not, i1 true, i1 %cmp72.not
  br i1 %or.cond120, label %for.body69.for.inc78_crit_edge, label %if.then74

for.body69.for.inc78_crit_edge:                   ; preds = %for.body69
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc78

if.then74:                                        ; preds = %for.body69
  call void @__sanitizer_cov_trace_pc() #12
  %private76 = getelementptr inbounds %struct.pardevice, ptr %pd.1132, i32 0, i32 5
  %48 = ptrtoint ptr %private76 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %private76, align 4
  tail call void %47(ptr noundef %49) #10
  br label %for.inc78

for.inc78:                                        ; preds = %if.then74, %for.body69.for.inc78_crit_edge
  %next = getelementptr inbounds %struct.pardevice, ptr %pd.1132, i32 0, i32 8
  %50 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %50)
  %pd.1 = load ptr, ptr %next, align 4
  %51 = ptrtoint ptr %cad to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cad, align 8
  %tobool67.not = icmp ne ptr %52, null
  %tobool68.not = icmp eq ptr %pd.1, null
  %or.cond = select i1 %tobool67.not, i1 true, i1 %tobool68.not
  br i1 %or.cond, label %for.inc78.cleanup_crit_edge, label %for.inc78.for.body69_crit_edge

for.inc78.for.body69_crit_edge:                   ; preds = %for.inc78
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body69

for.inc78.cleanup_crit_edge:                      ; preds = %for.inc78
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc78.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then48.cleanup_crit_edge, %if.then44, %if.then40.cleanup_crit_edge, %do.body4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @parport_find_number(i32 noundef %number) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr @portlist, align 4
  %cmp.i.not = icmp eq ptr %0, @portlist
  br i1 %cmp.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.33) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @parportlist_lock) #10
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %.pn.in = phi ptr [ @portlist, %if.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %1 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @portlist
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.cond
  %number1 = getelementptr i8, ptr %.pn, i32 256
  %2 = ptrtoint ptr %number1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %number1, align 4
  %cmp2 = icmp eq i32 %3, %number
  br i1 %cmp2, label %if.then3, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %bus_dev.i = getelementptr i8, ptr %.pn, i32 -956
  %call.i13 = tail call ptr @get_device(ptr noundef %bus_dev.i) #10
  %add.ptr.i = getelementptr i8, ptr %call.i13, i32 -40
  br label %for.end

for.end:                                          ; preds = %if.then3, %for.cond.for.end_crit_edge
  %result.0 = phi ptr [ %add.ptr.i, %if.then3 ], [ null, %for.cond.for.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @parportlist_lock) #10
  ret ptr %result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @parport_find_base(i32 noundef %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr @portlist, align 4
  %cmp.i.not = icmp eq ptr %0, @portlist
  br i1 %cmp.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.33) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @parportlist_lock) #10
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %.pn.in = phi ptr [ @portlist, %if.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %1 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @portlist
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.cond
  %port.0 = getelementptr i8, ptr %.pn, i32 -996
  %2 = ptrtoint ptr %port.0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port.0, align 8
  %cmp2 = icmp eq i32 %3, %base
  br i1 %cmp2, label %if.then3, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %bus_dev.i = getelementptr i8, ptr %.pn, i32 -956
  %call.i13 = tail call ptr @get_device(ptr noundef %bus_dev.i) #10
  %add.ptr.i = getelementptr i8, ptr %call.i13, i32 -40
  br label %for.end

for.end:                                          ; preds = %if.then3, %for.cond.for.end_crit_edge
  %result.0 = phi ptr [ %add.ptr.i, %if.then3 ], [ null, %for.cond.for.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @parportlist_lock) #10
  ret ptr %result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @parport_claim(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %port1 = getelementptr inbounds %struct.pardevice, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port1, align 4
  %physport = getelementptr inbounds %struct.parport, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %physport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %physport, align 8
  %cad = getelementptr inbounds %struct.parport, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %cad to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cad, align 8
  %cmp = icmp eq ptr %5, %dev
  br i1 %cmp, label %do.end, label %do.body4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.parport, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %7, ptr noundef %9) #14
  br label %cleanup

do.body4:                                         ; preds = %entry
  %cad_lock = getelementptr inbounds %struct.parport, ptr %3, i32 0, i32 29
  %call7 = tail call i32 @_raw_write_lock_irqsave(ptr noundef %cad_lock) #10
  %10 = ptrtoint ptr %cad to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cad, align 8
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %do.body4.if.end36_crit_edge, label %if.then11

do.body4.if.end36_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then11:                                        ; preds = %do.body4
  %preempt = getelementptr inbounds %struct.pardevice, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %preempt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %preempt, align 4
  %tobool12.not = icmp eq ptr %13, null
  br i1 %tobool12.not, label %if.then11.blocked_crit_edge, label %if.then13

if.then11.blocked_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %blocked

if.then13:                                        ; preds = %if.then11
  %private = getelementptr inbounds %struct.pardevice, ptr %11, i32 0, i32 5
  %14 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %private, align 4
  %call15 = tail call i32 %13(ptr noundef %15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.then13.blocked_crit_edge

if.then13.blocked_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %blocked

if.end18:                                         ; preds = %if.then13
  %ops = getelementptr inbounds %struct.parport, ptr %3, i32 0, i32 24
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops, align 4
  %save_state = getelementptr inbounds %struct.parport_operations, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %save_state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %save_state, align 4
  %state = getelementptr inbounds %struct.pardevice, ptr %dev, i32 0, i32 12
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %state, align 4
  tail call void %19(ptr noundef %3, ptr noundef %21) #10
  %22 = ptrtoint ptr %cad to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cad, align 8
  %cmp21.not = icmp eq ptr %23, %11
  br i1 %cmp21.not, label %if.end18.if.end36_crit_edge, label %do.end26

if.end18.if.end36_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

do.end26:                                         ; preds = %if.end18
  %name28 = getelementptr inbounds %struct.parport, ptr %3, i32 0, i32 3
  %24 = ptrtoint ptr %name28 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %name28, align 4
  %26 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %11, align 8
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %25, ptr noundef %27) #14
  %28 = ptrtoint ptr %cad to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cad, align 8
  %tobool32.not = icmp eq ptr %29, null
  br i1 %tobool32.not, label %do.end26.if.end36_crit_edge, label %do.end26.blocked_crit_edge

do.end26.blocked_crit_edge:                       ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %blocked

do.end26.if.end36_crit_edge:                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.end36:                                         ; preds = %do.end26.if.end36_crit_edge, %if.end18.if.end36_crit_edge, %do.body4.if.end36_crit_edge
  %waiting = getelementptr inbounds %struct.pardevice, ptr %dev, i32 0, i32 17
  %30 = ptrtoint ptr %waiting to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %waiting, align 8
  %and = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool37.not = icmp eq i32 %and, 0
  br i1 %tobool37.not, label %if.end36.if.end59_crit_edge, label %if.then38

if.end36.if.end59_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.then38:                                        ; preds = %if.end36
  %32 = ptrtoint ptr %waiting to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %waiting, align 8
  %waitlist_lock = getelementptr inbounds %struct.parport, ptr %3, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %waitlist_lock) #10
  %waitprev = getelementptr inbounds %struct.pardevice, ptr %dev, i32 0, i32 18
  %33 = ptrtoint ptr %waitprev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %waitprev, align 4
  %tobool40.not = icmp eq ptr %34, null
  %waitnext45 = getelementptr inbounds %struct.pardevice, ptr %dev, i32 0, i32 19
  %35 = ptrtoint ptr %waitnext45 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %waitnext45, align 8
  br i1 %tobool40.not, label %if.else44, label %if.then41

if.then41:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  %waitnext43 = getelementptr inbounds %struct.pardevice, ptr %34, i32 0, i32 19
  %37 = ptrtoint ptr %waitnext43 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %waitnext43, align 8
  br label %if.end46

if.else44:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  %waithead = getelementptr inbounds %struct.parport, ptr %3, i32 0, i32 16
  %38 = ptrtoint ptr %waithead to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %36, ptr %waithead, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.else44, %if.then41
  %waitnext47 = getelementptr inbounds %struct.pardevice, ptr %dev, i32 0, i32 19
  %39 = ptrtoint ptr %waitnext47 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %waitnext47, align 8
  %tobool48.not = icmp eq ptr %40, null
  %41 = ptrtoint ptr %waitprev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %waitprev, align 4
  br i1 %tobool48.not, label %if.else53, label %if.then49

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  %waitprev52 = getelementptr inbounds %struct.pardevice, ptr %40, i32 0, i32 18
  %43 = ptrtoint ptr %waitprev52 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %waitprev52, align 4
  br label %if.end55

if.else53:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  %waittail = getelementptr inbounds %struct.parport, ptr %3, i32 0, i32 17
  %44 = ptrtoint ptr %waittail to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %42, ptr %waittail, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.else53, %if.then49
  tail call void @_raw_spin_unlock_irq(ptr noundef %waitlist_lock) #10
  %45 = ptrtoint ptr %waitnext47 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %waitnext47, align 8
  %46 = ptrtoint ptr %waitprev to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %waitprev, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.end55, %if.end36.if.end59_crit_edge
  %47 = ptrtoint ptr %cad to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %dev, ptr %cad, align 8
  %48 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %port1, align 4
  %muxport = getelementptr inbounds %struct.parport, ptr %49, i32 0, i32 7
  %50 = ptrtoint ptr %muxport to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %muxport, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %51)
  %cmp62 = icmp sgt i32 %51, -1
  br i1 %cmp62, label %if.then64, label %if.end59.if.end67_crit_edge

if.end59.if.end67_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

if.then64:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  %muxsel = getelementptr inbounds %struct.parport, ptr %3, i32 0, i32 15
  %52 = ptrtoint ptr %muxsel to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %muxsel, align 8
  br label %if.end67

if.end67:                                         ; preds = %if.then64, %if.end59.if.end67_crit_edge
  %daisy = getelementptr inbounds %struct.pardevice, ptr %dev, i32 0, i32 2
  %53 = ptrtoint ptr %daisy to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %daisy, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %54)
  %cmp68 = icmp sgt i32 %54, -1
  br i1 %cmp68, label %if.then70, label %if.end67.if.end78_crit_edge

if.end67.if.end78_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

if.then70:                                        ; preds = %if.end67
  %call72 = tail call i32 @parport_daisy_select(ptr noundef %3, i32 noundef %54, i32 noundef 256) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.then74, label %if.then70.if.end78_crit_edge

if.then70.if.end78_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

if.then74:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %daisy to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %daisy, align 8
  %daisy76 = getelementptr inbounds %struct.parport, ptr %3, i32 0, i32 14
  %57 = ptrtoint ptr %daisy76 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %daisy76, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then74, %if.then70.if.end78_crit_edge, %if.end67.if.end78_crit_edge
  %ops79 = getelementptr inbounds %struct.parport, ptr %3, i32 0, i32 24
  %58 = ptrtoint ptr %ops79 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops79, align 4
  %restore_state = getelementptr inbounds %struct.parport_operations, ptr %59, i32 0, i32 12
  %60 = ptrtoint ptr %restore_state to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %restore_state, align 4
  %state80 = getelementptr inbounds %struct.pardevice, ptr %dev, i32 0, i32 12
  %62 = ptrtoint ptr %state80 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %state80, align 4
  tail call void %61(ptr noundef %3, ptr noundef %63) #10
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %cad_lock, i32 noundef %call7) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %64 = load volatile i32, ptr @jiffies, align 128
  %time = getelementptr inbounds %struct.pardevice, ptr %dev, i32 0, i32 14
  %65 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %time, align 4
  br label %cleanup

blocked:                                          ; preds = %do.end26.blocked_crit_edge, %if.then13.blocked_crit_edge, %if.then11.blocked_crit_edge
  %waiting90 = getelementptr inbounds %struct.pardevice, ptr %dev, i32 0, i32 17
  %66 = ptrtoint ptr %waiting90 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %waiting90, align 8
  %and91 = and i32 %67, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %lor.lhs.false, label %blocked.if.then94_crit_edge

blocked.if.then94_crit_edge:                      ; preds = %blocked
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then94

lor.lhs.false:                                    ; preds = %blocked
  %wakeup = getelementptr inbounds %struct.pardevice, ptr %dev, i32 0, i32 4
  %68 = ptrtoint ptr %wakeup to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %wakeup, align 8
  %tobool93.not = icmp eq ptr %69, null
  br i1 %tobool93.not, label %lor.lhs.false.do.body117_crit_edge, label %lor.lhs.false.if.then94_crit_edge

lor.lhs.false.if.then94_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then94

lor.lhs.false.do.body117_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body117

if.then94:                                        ; preds = %lor.lhs.false.if.then94_crit_edge, %blocked.if.then94_crit_edge
  %waitlist_lock95 = getelementptr inbounds %struct.parport, ptr %3, i32 0, i32 28
  tail call void @_raw_spin_lock(ptr noundef %waitlist_lock95) #10
  %call97 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %waiting90) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %cmp98 = icmp eq i32 %call97, 0
  br i1 %cmp98, label %if.then100, label %if.then94.if.end114_crit_edge

if.then94.if.end114_crit_edge:                    ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end114

if.then100:                                       ; preds = %if.then94
  %waitnext101 = getelementptr inbounds %struct.pardevice, ptr %dev, i32 0, i32 19
  %70 = ptrtoint ptr %waitnext101 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %waitnext101, align 8
  %waittail102 = getelementptr inbounds %struct.parport, ptr %3, i32 0, i32 17
  %71 = ptrtoint ptr %waittail102 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %waittail102, align 8
  %waitprev103 = getelementptr inbounds %struct.pardevice, ptr %dev, i32 0, i32 18
  %73 = ptrtoint ptr %waitprev103 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %72, ptr %waitprev103, align 4
  %74 = load ptr, ptr %waittail102, align 8
  %tobool105.not = icmp eq ptr %74, null
  br i1 %tobool105.not, label %if.else110, label %if.then106

if.then106:                                       ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #12
  %waitnext108 = getelementptr inbounds %struct.pardevice, ptr %74, i32 0, i32 19
  %75 = ptrtoint ptr %waitnext108 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %dev, ptr %waitnext108, align 8
  %76 = ptrtoint ptr %waittail102 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %dev, ptr %waittail102, align 8
  br label %if.end114

if.else110:                                       ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #12
  %77 = ptrtoint ptr %waittail102 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %dev, ptr %waittail102, align 8
  %waithead112 = getelementptr inbounds %struct.parport, ptr %3, i32 0, i32 16
  %78 = ptrtoint ptr %waithead112 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %dev, ptr %waithead112, align 4
  br label %if.end114

if.end114:                                        ; preds = %if.else110, %if.then106, %if.then94.if.end114_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %waitlist_lock95) #10
  br label %do.body117

do.body117:                                       ; preds = %if.end114, %lor.lhs.false.do.body117_crit_edge
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %cad_lock, i32 noundef %call7) #10
  br label %cleanup

cleanup:                                          ; preds = %do.body117, %if.end78, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ -11, %do.body117 ], [ 0, %if.end78 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_write_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parport_daisy_select(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @parport_claim_or_block(ptr noundef %dev) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %waiting = getelementptr inbounds %struct.pardevice, ptr %dev, i32 0, i32 17
  %0 = ptrtoint ptr %waiting to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %waiting, align 8
  %call = tail call i32 @parport_claim(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call)
  %cmp = icmp eq i32 %call, -11
  br i1 %cmp, label %if.then, label %entry.if.end26_crit_edge

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then:                                          ; preds = %entry
  %1 = ptrtoint ptr %waiting to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %waiting, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then.if.end26_crit_edge, label %if.then2

if.then.if.end26_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then2:                                         ; preds = %if.then
  tail call void @__might_sleep(ptr noundef nonnull @.str.8, i32 noundef 1123) #10
  %3 = ptrtoint ptr %waiting to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %waiting, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool7.not = icmp eq i32 %4, 0
  br i1 %tobool7.not, label %if.then2.if.end18_crit_edge, label %if.then8

if.then2.if.end18_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then8:                                         ; preds = %if.then2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %5 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %wait_q = getelementptr inbounds %struct.pardevice, ptr %dev, i32 0, i32 13
  %call1046 = call i32 @prepare_to_wait_event(ptr noundef %wait_q, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %6 = ptrtoint ptr %waiting to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %waiting, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool12.not47 = icmp eq i32 %7, 0
  br i1 %tobool12.not47, label %if.then8.for.end_crit_edge, label %if.then8.if.end_crit_edge

if.then8.if.end_crit_edge:                        ; preds = %if.then8
  br label %if.end

if.then8.for.end_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %if.then8.if.end_crit_edge
  %call1048 = phi i32 [ %call10, %cleanup.if.end_crit_edge ], [ %call1046, %if.then8.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1048)
  %tobool14.not = icmp eq i32 %call1048, 0
  br i1 %tobool14.not, label %cleanup, label %if.end.__out_crit_edge

if.end.__out_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %__out

cleanup:                                          ; preds = %if.end
  call void @schedule() #10
  %call10 = call i32 @prepare_to_wait_event(ptr noundef %wait_q, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %8 = ptrtoint ptr %waiting to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %waiting, align 8
  %tobool12.not = icmp eq i32 %9, 0
  br i1 %tobool12.not, label %cleanup.for.end_crit_edge, label %cleanup.if.end_crit_edge

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then8.for.end_crit_edge
  call void @finish_wait(ptr noundef %wait_q, ptr noundef nonnull %__wq_entry) #10
  br label %__out

__out:                                            ; preds = %for.end, %if.end.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %if.end18

if.end18:                                         ; preds = %__out, %if.then2.if.end18_crit_edge
  %10 = call i32 @llvm.read_register.i32(metadata !131) #10
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stack.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %15, align 4
  %18 = and i32 %17, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end18.cleanup28_crit_edge, !prof !144

if.end18.cleanup28_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup28

signal_pending.exit:                              ; preds = %if.end18
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %15, align 4
  %and1.i.i.i.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool22.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool22.not, label %signal_pending.exit.if.end26_crit_edge, label %signal_pending.exit.cleanup28_crit_edge

signal_pending.exit.cleanup28_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup28

signal_pending.exit.if.end26_crit_edge:           ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.end26:                                         ; preds = %signal_pending.exit.if.end26_crit_edge, %if.then.if.end26_crit_edge, %entry.if.end26_crit_edge
  %r.0 = phi i32 [ %call, %entry.if.end26_crit_edge ], [ 1, %signal_pending.exit.if.end26_crit_edge ], [ 0, %if.then.if.end26_crit_edge ]
  %21 = ptrtoint ptr %waiting to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %waiting, align 8
  br label %cleanup28

cleanup28:                                        ; preds = %if.end26, %signal_pending.exit.cleanup28_crit_edge, %if.end18.cleanup28_crit_edge
  %retval.0 = phi i32 [ %r.0, %if.end26 ], [ -4, %signal_pending.exit.cleanup28_crit_edge ], [ -4, %if.end18.cleanup28_crit_edge ]
  ret i32 %retval.0
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_daisy_deselect_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @parport_irq_handler(i32 %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @parport_ieee1284_interrupt(ptr noundef %dev_id) #10
  %cad_lock.i = getelementptr inbounds %struct.parport, ptr %dev_id, i32 0, i32 29
  tail call void @_raw_read_lock(ptr noundef %cad_lock.i) #10
  %cad.i = getelementptr inbounds %struct.parport, ptr %dev_id, i32 0, i32 13
  %0 = ptrtoint ptr %cad.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cad.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.parport_generic_irq.exit_crit_edge, label %land.lhs.true.i

entry.parport_generic_irq.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %parport_generic_irq.exit

land.lhs.true.i:                                  ; preds = %entry
  %irq_func.i = getelementptr inbounds %struct.pardevice, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %irq_func.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_func.i, align 8
  %tobool2.not.i = icmp eq ptr %3, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.parport_generic_irq.exit_crit_edge, label %if.then.i

land.lhs.true.i.parport_generic_irq.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %parport_generic_irq.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %private.i = getelementptr inbounds %struct.pardevice, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private.i, align 4
  tail call void %3(ptr noundef %5) #10
  br label %parport_generic_irq.exit

parport_generic_irq.exit:                         ; preds = %if.then.i, %land.lhs.true.i.parport_generic_irq.exit_crit_edge, %entry.parport_generic_irq.exit_crit_edge
  tail call void @_raw_read_unlock(ptr noundef %cad_lock.i) #10
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @parport_probe(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type.i, align 4
  %cmp.i.not = icmp eq ptr %1, @parport_device_type
  br i1 %cmp.i.not, label %entry.cleanup17_crit_edge, label %if.end

entry.cleanup17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup17

if.end:                                           ; preds = %entry
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 4
  %probe = getelementptr i8, ptr %3, i32 -4
  %4 = ptrtoint ptr %probe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %probe, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.then2, label %if.end11

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %3, i32 -20
  %add.ptr5 = getelementptr i8, ptr %dev, i32 -40
  %6 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr5, align 8
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  %call7 = tail call i32 @strcmp(ptr noundef %7, ptr noundef %9) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  %. = select i1 %tobool8.not, i32 0, i32 -19
  br label %cleanup17

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr15 = getelementptr i8, ptr %dev, i32 -40
  %call16 = tail call i32 %5(ptr noundef %add.ptr15) #10
  br label %cleanup17

cleanup17:                                        ; preds = %if.end11, %if.then2, %entry.cleanup17_crit_edge
  %retval.1 = phi i32 [ %call16, %if.end11 ], [ %., %if.then2 ], [ -19, %entry.cleanup17_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_for_each_drv(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @driver_check(ptr nocapture noundef readonly %dev_drv, ptr noundef %_port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %match_port = getelementptr i8, ptr %dev_drv, i32 -8
  %0 = ptrtoint ptr %match_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %match_port, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %1(ptr noundef %_port) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @driver_detach(ptr nocapture noundef readonly %_drv, ptr noundef %_port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %detach = getelementptr i8, ptr %_drv, i32 -12
  %0 = ptrtoint ptr %detach to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %detach, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %1(ptr noundef %_port) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dead_write_lines(ptr nocapture noundef %p, i8 noundef zeroext %b) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @dead_read_lines(ptr nocapture noundef readnone %p) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i8 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @dead_frob_lines(ptr nocapture noundef readnone %p, i8 noundef zeroext %b, i8 noundef zeroext %c) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i8 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dead_onearg(ptr nocapture noundef %p) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dead_initstate(ptr nocapture noundef %d, ptr nocapture noundef %s) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dead_state(ptr nocapture noundef %p, ptr nocapture noundef %s) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dead_write(ptr nocapture noundef readnone %p, ptr nocapture noundef readnone %b, i32 noundef %l, i32 noundef %f) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dead_read(ptr nocapture noundef readnone %p, ptr nocapture noundef readnone %b, i32 noundef %l, i32 noundef %f) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_ieee1284_interrupt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !20, !22, !23, !25, !27, !29, !30, !31, !32, !33, !35, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !54, !55, !56, !58, !59, !61, !63, !64, !65, !66, !68, !70, !72, !74, !75, !76, !77, !79, !80, !81, !83, !85, !87, !88, !89, !90, !92, !93, !94, !96, !98, !100, !101, !103, !105, !107, !108, !109, !111, !113, !115, !117, !118, !120, !122, !124, !125, !127, !129}
!llvm.named.register.sp = !{!131}
!llvm.module.flags = !{!132, !133, !134, !135, !136, !137, !138, !139}
!llvm.ident = !{!140}

!0 = !{ptr @parport_default_timeslice, !1, !"parport_default_timeslice", i1 false, i1 false}
!1 = !{!"../drivers/parport/share.c", i32 42, i32 15}
!2 = !{ptr @parport_default_spintime, !3, !"parport_default_spintime", i1 false, i1 false}
!3 = !{!"../drivers/parport/share.c", i32 43, i32 5}
!4 = !{ptr @__ksymtab___parport_register_driver, !5, !"__ksymtab___parport_register_driver", i1 false, i1 false}
!5 = !{!"../drivers/parport/share.c", i32 310, i32 1}
!6 = !{ptr @__ksymtab_parport_unregister_driver, !7, !"__ksymtab_parport_unregister_driver", i1 false, i1 false}
!7 = !{!"../drivers/parport/share.c", i32 346, i32 1}
!8 = !{ptr @__ksymtab_parport_get_port, !9, !"__ksymtab_parport_get_port", i1 false, i1 false}
!9 = !{!"../drivers/parport/share.c", i32 382, i32 1}
!10 = !{ptr @__ksymtab_parport_del_port, !11, !"__ksymtab_parport_del_port", i1 false, i1 false}
!11 = !{!"../drivers/parport/share.c", i32 388, i32 1}
!12 = !{ptr @__ksymtab_parport_put_port, !13, !"__ksymtab_parport_put_port", i1 false, i1 false}
!13 = !{!"../drivers/parport/share.c", i32 403, i32 1}
!14 = !{ptr @parport_register_port.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/parport/share.c", i32 460, i32 2}
!16 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @parport_register_port.__key.1, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/parport/share.c", i32 461, i32 2}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @parport_register_port.__key.3, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/parport/share.c", i32 462, i32 2}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/parport/share.c", i32 490, i32 16}
!25 = !{ptr @__ksymtab_parport_register_port, !26, !"__ksymtab_parport_register_port", i1 false, i1 false}
!26 = !{!"../drivers/parport/share.c", i32 511, i32 1}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/parport/share.c", i32 535, i32 3}
!29 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @parport_announce_port._entry, !28, !"_entry", i1 false, i1 false}
!32 = !{ptr @parport_announce_port._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @__ksymtab_parport_announce_port, !34, !"__ksymtab_parport_announce_port", i1 false, i1 false}
!34 = !{!"../drivers/parport/share.c", i32 558, i32 1}
!35 = !{ptr @__ksymtab_parport_remove_port, !36, !"__ksymtab_parport_remove_port", i1 false, i1 false}
!36 = !{!"../drivers/parport/share.c", i32 620, i32 1}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/parport/share.c", i32 702, i32 3}
!39 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @parport_register_dev_model._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @parport_register_dev_model._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/parport/share.c", i32 708, i32 4}
!44 = !{ptr @parport_register_dev_model._entry.11, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @parport_register_dev_model._entry_ptr.13, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/parport/share.c", i32 722, i32 4}
!48 = !{ptr @parport_register_dev_model._entry.14, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @parport_register_dev_model._entry_ptr.16, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/parport/share.c", i32 758, i32 36}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/parport/share.c", i32 781, i32 4}
!54 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @parport_register_dev_model.__UNIQUE_ID_ddebug227, !53, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!56 = !{ptr @parport_register_dev_model.__key, !57, !"__key", i1 false, i1 false}
!57 = !{!"../drivers/parport/share.c", i32 801, i32 2}
!58 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @__ksymtab_parport_register_dev_model, !60, !"__ksymtab_parport_register_dev_model", i1 false, i1 false}
!60 = !{!"../drivers/parport/share.c", i32 831, i32 1}
!61 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/parport/share.c", i32 860, i32 3}
!63 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @parport_unregister_device._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @parport_unregister_device._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @__ksymtab_parport_unregister_device, !67, !"__ksymtab_parport_unregister_device", i1 false, i1 false}
!67 = !{!"../drivers/parport/share.c", i32 901, i32 1}
!68 = !{ptr @__ksymtab_parport_find_number, !69, !"__ksymtab_parport_find_number", i1 false, i1 false}
!69 = !{!"../drivers/parport/share.c", i32 932, i32 1}
!70 = !{ptr @__ksymtab_parport_find_base, !71, !"__ksymtab_parport_find_base", i1 false, i1 false}
!71 = !{!"../drivers/parport/share.c", i32 963, i32 1}
!72 = !{ptr @.str.23, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/parport/share.c", i32 984, i32 3}
!74 = !{ptr @.str.24, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @parport_claim._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @parport_claim._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.26, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/parport/share.c", i32 1004, i32 4}
!79 = !{ptr @parport_claim._entry.25, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @parport_claim._entry_ptr.27, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @__ksymtab_parport_claim, !82, !"__ksymtab_parport_claim", i1 false, i1 false}
!82 = !{!"../drivers/parport/share.c", i32 1079, i32 1}
!83 = !{ptr @__ksymtab_parport_claim_or_block, !84, !"__ksymtab_parport_claim_or_block", i1 false, i1 false}
!84 = !{!"../drivers/parport/share.c", i32 1145, i32 1}
!85 = !{ptr @.str.28, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/parport/share.c", i32 1166, i32 3}
!87 = !{ptr @.str.29, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @parport_release._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @parport_release._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.31, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/parport/share.c", i32 1207, i32 4}
!92 = !{ptr @parport_release._entry.30, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @parport_release._entry_ptr.32, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @__ksymtab_parport_release, !95, !"__ksymtab_parport_release", i1 false, i1 false}
!95 = !{!"../drivers/parport/share.c", i32 1222, i32 1}
!96 = !{ptr @__ksymtab_parport_irq_handler, !97, !"__ksymtab_parport_irq_handler", i1 false, i1 false}
!97 = !{!"../drivers/parport/share.c", i32 1232, i32 1}
!98 = !{ptr @__UNIQUE_ID_file228, !99, !"__UNIQUE_ID_file228", i1 false, i1 false}
!99 = !{!"../drivers/parport/share.c", i32 1234, i32 1}
!100 = !{ptr @__UNIQUE_ID_license229, !99, !"__UNIQUE_ID_license229", i1 false, i1 false}
!101 = !{ptr @parport_bus_type, !102, !"parport_bus_type", i1 false, i1 false}
!102 = !{!"../drivers/parport/share.c", i32 133, i32 24}
!103 = !{ptr @.str.33, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/parport/share.c", i32 214, i32 2}
!105 = !{ptr @.str.34, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/parport/share.c", i32 54, i32 8}
!107 = !{ptr @.str.35, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @registration_lock, !106, !"registration_lock", i1 false, i1 false}
!109 = !{ptr @sema_init.__key, !110, !"__key", i1 false, i1 false}
!110 = !{!"../include/linux/semaphore.h", i32 33, i32 31}
!111 = !{ptr @.str.36, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../include/linux/semaphore.h", i32 34, i32 28}
!113 = !{ptr @.str.37, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../include/linux/semaphore.h", i32 35, i32 39}
!115 = !{ptr @.str.38, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/parport/share.c", i32 50, i32 8}
!117 = !{ptr @full_list_lock, !116, !"full_list_lock", i1 false, i1 false}
!118 = !{ptr @all_ports, !119, !"all_ports", i1 false, i1 false}
!119 = !{!"../drivers/parport/share.c", i32 49, i32 8}
!120 = !{ptr @parport_device_type, !121, !"parport_device_type", i1 false, i1 false}
!121 = !{!"../drivers/parport/share.c", i32 104, i32 27}
!122 = !{ptr @.str.39, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/parport/share.c", i32 46, i32 8}
!124 = !{ptr @parportlist_lock, !123, !"parportlist_lock", i1 false, i1 false}
!125 = !{ptr @portlist, !126, !"portlist", i1 false, i1 false}
!126 = !{!"../drivers/parport/share.c", i32 45, i32 8}
!127 = !{ptr @drivers, !128, !"drivers", i1 false, i1 false}
!128 = !{!"../drivers/parport/share.c", i32 52, i32 8}
!129 = !{ptr @dead_ops, !130, !"dead_ops", i1 false, i1 false}
!130 = !{!"../drivers/parport/share.c", i32 68, i32 34}
!131 = !{!"sp"}
!132 = !{i32 1, !"wchar_size", i32 2}
!133 = !{i32 1, !"min_enum_size", i32 4}
!134 = !{i32 8, !"branch-target-enforcement", i32 0}
!135 = !{i32 8, !"sign-return-address", i32 0}
!136 = !{i32 8, !"sign-return-address-all", i32 0}
!137 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!138 = !{i32 7, !"uwtable", i32 1}
!139 = !{i32 7, !"frame-pointer", i32 2}
!140 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!141 = !{i64 2148985754, i64 2148985759, i64 2148985772, i64 2148985816, i64 2148985850, i64 2148985871}
!142 = !{i64 2153814449}
!143 = !{i8 0, i8 2}
!144 = !{!"branch_weights", i32 2000, i32 1}
